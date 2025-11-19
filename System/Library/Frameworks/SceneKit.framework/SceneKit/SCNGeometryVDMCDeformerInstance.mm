@interface SCNGeometryVDMCDeformerInstance
- (id)initWithNode:(uint64_t)a3 deformer:(uint64_t)a4 outputs:(uint64_t)a5 computeVertexCount:(void *)a6 context:;
- (unint64_t)updateWithContext:(id)a3;
- (void)dealloc;
@end

@implementation SCNGeometryVDMCDeformerInstance

- (id)initWithNode:(uint64_t)a3 deformer:(uint64_t)a4 outputs:(uint64_t)a5 computeVertexCount:(void *)a6 context:
{
  *(&v130[2] + 4) = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v126.receiver = a1;
  v126.super_class = SCNGeometryVDMCDeformerInstance;
  v68 = objc_msgSendSuper2(&v126, sel_init);
  if (!v68)
  {
    return 0;
  }

  Geometry = C3DNodeGetGeometry([a2 nodeRef]);
  Mesh = C3DGeometryGetMesh(Geometry);
  v8 = [a6 _currentResourceManager];
  if (!C3DEntityGetName(Mesh))
  {
    C3DEntityGetName(Geometry);
  }

  ElementsCount = C3DMeshGetElementsCount(Mesh);
  v61 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  *(v68 + 2) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  [SCNMTLResourceManager newBufferWithLength:v8 options:?];
  newValue = v9;
  memset(&v125, 0, sizeof(v125));
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v117 = 0;
  v116 = 0;
  v118 = 0;
  TotalTriangleCount = getTotalTriangleCount(Mesh);
  v11 = (logf(3000000.0 / TotalTriangleCount) / 1.38629436);
  v12 = exp2(v11 + v11);
  v60 = v11;
  printf("Original mesh has %d triangles, will reach a maximum of %d after %d levels of subdivision\n", TotalTriangleCount, (v12 * TotalTriangleCount), v11);
  if (ElementsCount >= 1)
  {
    v13 = 0;
    v65 = v11 + 1;
    do
    {
      v67 = v13;
      ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, v13, 1);
      Type = C3DMeshElementGetType(ElementAtIndex);
      if (C3DMeshElementTypeMapsToMTLPrimitiveType(Type))
      {
        if (C3DMeshElementGetType(ElementAtIndex))
        {
          v16 = scn_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVDMCDeformerInstance initWithNode:v127 deformer:&v128 outputs:v16 computeVertexCount:? context:?];
          }
        }

        v17 = [SCNMTLResourceManager renderResourceForMeshElement:v8];
        v18 = [(SCNMTLResourceManager *)v17 commandQueue];
        C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        std::vector<unsigned int>::reserve(&v125, v125.__end_ - v125.__begin_ + v18);
        if (![(SCNMTLMesh *)v17 elements])
        {
          v19 = [-[SCNMTLMeshElement indexBuffer](v17) buffer];
          [a6 currentBlitEncoder];
          v20 = newUInt32BufferFromUInt16Buffer(v19, v18, v8);
          v21 = objc_alloc_init(SCNMTLBuffer);
          [(SCNMTLMeshElement *)v17 setIndexBuffer:v21];
          [-[SCNMTLMeshElement indexBuffer](v17) setBuffer:v20];
        }

        v22 = [-[SCNMTLMeshElement indexBuffer](v17) contents];
        if (v18 >= 1)
        {
          v23 = v22;
          v24 = v18 & 0x7FFFFFFF;
          end = v125.__end_;
          do
          {
            if (end >= v125.__end_cap_.__value_)
            {
              begin = v125.__begin_;
              v27 = end - v125.__begin_;
              v28 = end - v125.__begin_;
              v29 = v28 + 1;
              if ((v28 + 1) >> 62)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v30 = v125.__end_cap_.__value_ - v125.__begin_;
              if ((v125.__end_cap_.__value_ - v125.__begin_) >> 1 > v29)
              {
                v29 = v30 >> 1;
              }

              v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
              v32 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v31)
              {
                v32 = v29;
              }

              if (v32)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v125, v32);
              }

              v33 = end - v125.__begin_;
              v34 = (4 * v28);
              v35 = (4 * v28 - 4 * v33);
              *v34 = *v23;
              end = v34 + 1;
              memcpy(v35, begin, v27);
              v36 = v125.__begin_;
              v125.__begin_ = v35;
              v125.__end_ = end;
              v125.__end_cap_.__value_ = 0;
              if (v36)
              {
                operator delete(v36);
              }
            }

            else
            {
              *end++ = *v23;
            }

            v125.__end_ = end;
            ++v23;
            --v24;
          }

          while (v24);
        }

        v37 = objc_alloc_init(SCNGeometryVDMCDeformerMeshElementData);
        v84 = 0;
        v85 = 0uLL;
        std::vector<float>::__vallocate[abi:nn200100](&v84, v65);
      }

      v38 = scn_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v129 deformer:v130 outputs:v38 computeVertexCount:? context:?];
      }

      v13 = v67 + 1;
    }

    while ((v67 + 1) != ElementsCount);
  }

  v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(Mesh)];
  v40 = [MEMORY[0x277CD7090] vertexDescriptor];
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x2020000000;
  v115[3] = 0;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __92__SCNGeometryVDMCDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke;
  v114[3] = &unk_278300A38;
  v114[4] = v115;
  v114[5] = &v122;
  v114[6] = &v119;
  v114[7] = &v116;
  C3DMeshApplySources(Mesh, 1, v114);
  LODWORD(v84) = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v113 = 0;
  v81 = 0;
  __dst = 0;
  v83 = 0;
  if (v125.__end_ != v125.__begin_)
  {
    std::vector<float>::__vallocate[abi:nn200100](&v81, v125.__end_ - v125.__begin_);
  }

  vmesh::DisplacedSubdivisionMesh::loadBaseMeshFromVectors(&v84, &v122, &v119, &v116, &v81);
  if (v81)
  {
    __dst = v81;
    operator delete(v81);
  }

  vmesh::DisplacedSubdivisionMesh::preprocessForSCN(&v84, v60);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (v87 != *(&v86 + 1))
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v78, (v87 - *(&v86 + 1)) >> 4);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (v90 != *(&v89 + 1))
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v75, (v90 - *(&v89 + 1)) >> 4);
  }

  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (*(&v88 + 1) != v88)
  {
    std::vector<double>::__vallocate[abi:nn200100](&v72, (*(&v88 + 1) - v88) >> 3);
  }

  v41 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v8, v78, v79 - v78, [a6 currentBlitEncoder]);
  v42 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v8, v75, v76 - v75, [a6 currentBlitEncoder]);
  v43 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v8, v72, v73 - v72, [a6 currentBlitEncoder]);
  v44 = [a6 currentBlitEncoder];
  v45 = [(SCNMTLResourceManager *)v8 newPrivateBufferWithBytes:v109 length:*(&v109 + 1) - v109 blitEncoder:v44];
  v46 = [a6 currentBlitEncoder];
  v47 = [(SCNMTLResourceManager *)v8 newPrivateBufferWithBytes:v112 length:*(&v112 + 1) - v112 blitEncoder:v46];
  v70 = (*(&v109 + 1) - v109) >> 2;
  v71 = (*(&v112 + 1) - v112) >> 3;
  v48 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v8, v69, 48, [a6 currentBlitEncoder]);
  [SCNMTLResourceManager _fillVertexDescriptor:v40 withSemantic:0 inputSet:0 bufferIndex:0 vertexFormat:30 offset:0 stride:16];
  [v39 addObject:v41];
  [SCNMTLResourceManager _fillVertexDescriptor:v40 withSemantic:1 inputSet:0 bufferIndex:1 vertexFormat:30 offset:0 stride:16];
  [v39 addObject:v42];
  [SCNMTLResourceManager _fillVertexDescriptor:v40 withSemantic:3 inputSet:0 bufferIndex:2 vertexFormat:29 offset:0 stride:8];
  [v39 addObject:v43];
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; i = (i + 1))
    {
      v50 = [*(v68 + 2) objectAtIndexedSubscript:i];
      if (v50)
      {
        objc_setProperty_nonatomic(v50, v51, v41, 24);
      }

      v52 = [*(v68 + 2) objectAtIndexedSubscript:i];
      if (v52)
      {
        objc_setProperty_nonatomic(v52, v53, v45, 56);
      }

      v54 = [*(v68 + 2) objectAtIndexedSubscript:i];
      if (v54)
      {
        objc_setProperty_nonatomic(v54, v55, v47, 64);
      }

      v56 = [*(v68 + 2) objectAtIndexedSubscript:i];
      if (v56)
      {
        objc_setProperty_nonatomic(v56, v57, v48, 80);
      }
    }
  }

  v58 = objc_alloc_init(SCNMTLMesh);
  *(v68 + 1) = v58;
  [(SCNMTLMesh *)v58 setVertexDescriptor:v40];
  [(SCNMTLMesh *)*(v68 + 1) setBuffers:v39];
  [(SCNMTLMesh *)*(v68 + 1) setElements:v61];

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(&v84);
  _Block_object_dispose(v115, 8);
  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v125.__begin_)
  {
    v125.__end_ = v125.__begin_;
    operator delete(v125.__begin_);
  }

  return v68;
}

void __92__SCNGeometryVDMCDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 <= 0)
  {
    if (C3DMeshSourceIsVolatile(a2))
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v7);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      C3DMeshSourceGetContent(a2, &v30);
      *(*(a1[4] + 8) + 24) = v31;
      if (a3)
      {
        if (a3 == 3)
        {
          if (*(*(a1[4] + 8) + 24))
          {
            LODWORD(v14) = 0;
            do
            {
              *v8.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v31), (v30 + v14 * BYTE6(v31)), v8, v9, v10);
              v15 = a1[6];
              v17 = *(v15 + 8);
              v16 = *(v15 + 16);
              if (v17 >= v16)
              {
                v19 = (v17 - *v15) >> 3;
                if ((v19 + 1) >> 61)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v20 = v16 - *v15;
                v21 = v20 >> 2;
                if (v20 >> 2 <= (v19 + 1))
                {
                  v21 = v19 + 1;
                }

                if (v20 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v22 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v22 = v21;
                }

                if (v22)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1[6], v22);
                }

                *(8 * v19) = v8.i64[0];
                v18 = 8 * v19 + 8;
                v23 = *(v15 + 8) - *v15;
                v24 = (8 * v19 - v23);
                memcpy(v24, *v15, v23);
                v25 = *v15;
                *v15 = v24;
                *(v15 + 8) = v18;
                *(v15 + 16) = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v17 = v8.i64[0];
                v18 = (v17 + 1);
              }

              *(v15 + 8) = v18;
              v14 = (v14 + 1);
            }

            while (*(*(a1[4] + 8) + 24) > v14);
          }
        }

        else if (a3 == 1 && *(*(a1[4] + 8) + 24))
        {
          LODWORD(v11) = 0;
          do
          {
            *&v12 = C3DConvertFloatingTypeToFloat4(BYTE4(v31), (v30 + v11 * BYTE6(v31)), v8, v9, v10);
            v13 = a1[7];
            v29 = v12;
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v13, &v29);
            v11 = (v11 + 1);
          }

          while (*(*(a1[4] + 8) + 24) > v11);
        }
      }

      else if (*(*(a1[4] + 8) + 24))
      {
        LODWORD(v26) = 0;
        do
        {
          *&v27 = C3DConvertFloatingTypeToFloat4(BYTE4(v31), (v30 + v26 * BYTE6(v31)), v8, v9, v10);
          v28 = a1[5];
          v29 = v27;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v28, &v29);
          v26 = (v26 + 1);
        }

        while (*(*(a1[4] + 8) + 24) > v26);
      }
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformerInstance;
  [(SCNGeometryVDMCDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = -[SCNMTLRenderContext resourceComputeEncoder]([a3 _currentRenderContext]);
  [(MTLComputeCommandEncoder *)v5->_encoder pushDebugGroup:@"VDMC deformer"];
  bzero(v57, 0xC0uLL);
  if (a3)
  {
    [a3 _currentTransforms];
    [a3 _currentFrustumInfo];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_15();
  }

  v55 = 1090519040;
  v7 = [(NSMutableArray *)self->_meshElementData objectAtIndexedSubscript:0, v6];
  if (v7)
  {
    v9 = v7[3];
  }

  else
  {
    v9 = 0;
  }

  if (v5->_buffers[0] == v9)
  {
    if (!v5->_offsets[0])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5->_buffers[0] = v9;
  }

  v5->_offsets[0] = 0;
  v5->_buffersToBind[0] |= 1uLL;
LABEL_10:
  if (v7)
  {
    v10 = v7[7];
  }

  else
  {
    v10 = 0;
  }

  if (v5->_buffers[1] == v10)
  {
    if (!v5->_offsets[1])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5->_buffers[1] = v10;
  }

  v5->_offsets[1] = 0;
  v5->_buffersToBind[0] |= 2uLL;
LABEL_16:
  if (v7)
  {
    v11 = v7[8];
  }

  else
  {
    v11 = 0;
  }

  if (v5->_buffers[2] == v11)
  {
    if (!v5->_offsets[2])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5->_buffers[2] = v11;
  }

  v5->_offsets[2] = 0;
  v5->_buffersToBind[0] |= 4uLL;
LABEL_22:
  if (v7)
  {
    v12 = v7[10];
  }

  else
  {
    v12 = 0;
  }

  if (v5->_buffers[15] != v12)
  {
    v5->_buffers[15] = v12;
LABEL_27:
    v5->_offsets[15] = 0;
    v5->_buffersToBind[0] |= 0x8000uLL;
    goto LABEL_28;
  }

  if (v5->_offsets[15])
  {
    goto LABEL_27;
  }

LABEL_28:
  meshElementData = self->_meshElementData;
  v14 = OUTLINED_FUNCTION_4_7(v7, v8);
  if (!v14)
  {
    goto LABEL_83;
  }

  v15 = v14;
  v16 = MEMORY[0];
  do
  {
    v17 = 0;
    do
    {
      if (MEMORY[0] != v16)
      {
        objc_enumerationMutation(meshElementData);
      }

      v18 = *(8 * v17);
      if (v18)
      {
        v19 = *(v18 + 72);
      }

      else
      {
        v19 = 0;
      }

      if (v5->_buffers[11] == v19)
      {
        if (!v5->_offsets[11])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5->_buffers[11] = v19;
      }

      OUTLINED_FUNCTION_3_4();
LABEL_39:
      SCNMTLComputeCommandEncoder::setBytes(v5, &v55, 4uLL, 0xAuLL);
      SCNMTLComputeCommandEncoder::setBytes(v5, v57, 0xC0uLL, 0xDuLL);
      v20 = SCNMTLComputeCommandEncoder::setBytes(v5, v56, 0x70uLL, 0xEuLL);
      *v53 = 0;
      if (v18)
      {
        v28 = *(v18 + 104);
        if (v28)
        {
          v22 = 0;
          do
          {
            v29 = [objc_msgSend(*(v18 + 88) objectAtIndex:{v22), "integerValue"}];
            v30 = [*(v18 + 40) objectAtIndex:*v53];
            if (v5->_buffers[3] == v30)
            {
              if (!v5->_offsets[3])
              {
                goto LABEL_46;
              }
            }

            else
            {
              v5->_buffers[3] = v30;
            }

            v5->_offsets[3] = 0;
            v5->_buffersToBind[0] |= 8uLL;
LABEL_46:
            v31 = [*(v18 + 40) objectAtIndex:(*v53 + 1)];
            if (v5->_buffers[4] == v31)
            {
              if (!v5->_offsets[4])
              {
                goto LABEL_50;
              }
            }

            else
            {
              v5->_buffers[4] = v31;
            }

            v5->_offsets[4] = 0;
            v5->_buffersToBind[0] |= 0x10uLL;
LABEL_50:
            v32 = [*(v18 + 48) objectAtIndex:*v53];
            if (v5->_buffers[6] == v32)
            {
              if (!v5->_offsets[6])
              {
                goto LABEL_54;
              }
            }

            else
            {
              v5->_buffers[6] = v32;
            }

            v5->_offsets[6] = 0;
            v5->_buffersToBind[0] |= 0x40uLL;
LABEL_54:
            v33 = [*(v18 + 48) objectAtIndex:(*v53 + 1)];
            if (v5->_buffers[7] != v33)
            {
              v5->_buffers[7] = v33;
LABEL_57:
              v5->_offsets[7] = 0;
              v5->_buffersToBind[0] |= 0x80uLL;
              goto LABEL_58;
            }

            if (v5->_offsets[7])
            {
              goto LABEL_57;
            }

LABEL_58:
            OUTLINED_FUNCTION_0_13(v33, v34, v35, v36, v37, v38, v39, v40, v51, v52, v53[0]);
            v41 = [(SCNMTLOpenSubdivComputeEvaluator *)*(v18 + 136) computeEvaluator];
            if (v5->_computePipelineState != v41)
            {
              v5->_computePipelineState = v41;
              [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:v41];
            }

            v20 = SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v29);
            *v53 = *v54 + 1;
            v22 = *v53;
            v28 = *(v18 + 104);
          }

          while (v28 > *v53);
        }

        OUTLINED_FUNCTION_0_13(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v28);
        v42 = *(v18 + 72);
      }

      else
      {
        OUTLINED_FUNCTION_0_13(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, 0);
        v42 = 0;
      }

      if (v5->_buffers[11] == v42)
      {
        if (!v5->_offsets[11])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5->_buffers[11] = v42;
      }

      OUTLINED_FUNCTION_3_4();
LABEL_66:
      if (v18)
      {
        v44 = *(v18 + 112);
        v43 = *(v18 + 120);
      }

      else
      {
        v44 = 0;
        v43 = 0;
      }

      if (v5->_buffers[9] == v44)
      {
        if (v5->_offsets[9] == v43)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v5->_buffers[9] = v44;
      }

      v5->_offsets[9] = v43;
      v5->_buffersToBind[0] |= 0x200uLL;
LABEL_72:
      if (v18)
      {
        v45 = *(v18 + 144);
      }

      else
      {
        v45 = 0;
      }

      v46 = [(SCNMTLOpenSubdivComputeEvaluator *)v45 computeEvaluator];
      if (v5->_computePipelineState != v46)
      {
        v5->_computePipelineState = v46;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:v46];
      }

      v47 = SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, 1uLL);
      ++v17;
    }

    while (v17 != v15);
    v49 = OUTLINED_FUNCTION_4_7(v47, v48);
    v15 = v49;
  }

  while (v49);
LABEL_83:
  [(MTLComputeCommandEncoder *)v5->_encoder popDebugGroup];
  return 1;
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshElementGetType(meshElement) == kC3DMeshElementTypeTrianglesArray";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. VDMC expects triangles", a1);
}

@end