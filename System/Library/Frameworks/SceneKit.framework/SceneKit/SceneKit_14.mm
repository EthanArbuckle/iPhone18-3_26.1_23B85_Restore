void sub_21BFF3B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a45, MEMORY[0x277D82818]);
  MEMORY[0x21CF075C0](&a61);
  _Unwind_Resume(a1);
}

uint64_t C3DPatchTypeToOsdPatchType(int a1)
{
  if ((a1 - 1) >= 6)
  {
    C3DPatchTypeToOsdPatchType();
  }

  return dword_21C2A1CF0[(a1 - 1)];
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchDescriptor *this)
{
  v1 = *this - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_21C2A1D08[v1];
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 3), 24);
  return a1;
}

void sub_21BFF3F88(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](v1);
  _Unwind_Resume(a1);
}

uint64_t C3DSubdivisionOsdGPUContextInvalidateIfNeeded(__C3DGeometry *a1)
{
  var6 = a1->var10.var6;
  if (!var6)
  {
    return 0;
  }

  v5 = 0uLL;
  v6 = 0;
  C3DGeometryGetTessellator(a1, &v5);
  if ((v6 & 0x100) != 0)
  {
    var3 = a1->var10.var3;
    if (var3)
    {
      LODWORD(var3) = a1->var10.var4 != 0;
    }
  }

  else
  {
    LODWORD(var3) = 0;
  }

  if (*(var6 + 3) && var6[4] == ((BYTE1(v6) >> 1) & 1) && var6[2] == a1->var10.var1 && var3 == var6[3] && *var6 == a1->var10.var0 && var6[7] == a1->var10.var2.var1 && var6[8] == a1->var10.var2.var2 && *(var6 + 2) == (a1->var10.var4 ^ a1->var10.var3))
  {
    return 0;
  }

  C3DSubdivisionOsdGPUContextDestroy(a1);
  return 1;
}

void C3DSubdivisionOsdGPUContextDestroy(__C3DGeometry *a1)
{
  var6 = a1->var10.var6;
  if (var6)
  {
    v3 = var6[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(var6);
    a1->var10.var6 = 0;
  }
}

char *C3DGeometryOpenSubdivGetGPUContext(uint64_t a1, int a2, uint64_t a3)
{
  C3DSubdivInitializeIfNeeded();
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    if (!v6)
    {
      return v6;
    }

    v37 = a3;
    v8 = *(v6 + 3) == 0;
  }

  else
  {
    if (!*(a1 + 136))
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        C3DGeometryOpenSubdivGetGPUContext_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v39 = 0uLL;
    v40 = 0;
    C3DGeometryGetTessellator(a1, &v39);
    v17 = (v40 & 0x100) != 0 && *(a1 + 144) && *(a1 + 152) != 0;
    v18 = *(a1 + 136);
    v19 = *(a1 + 137);
    v20 = (BYTE1(v40) >> 1) & 1;
    v37 = a3;
    HasFeatures = C3DEngineContextHasFeatures(a3, 64);
    v22 = *(a1 + 139);
    v23 = *(a1 + 152) ^ *(a1 + 144);
    v6 = malloc_type_malloc(0x20uLL, 0x10200404C916D5DuLL);
    *(a1 + 168) = v6;
    *v6 = v18;
    v6[1] = 0;
    v6[2] = v19;
    v6[3] = v17;
    v6[4] = v20;
    v6[5] = HasFeatures;
    v6[6] = 0;
    *(v6 + 7) = v22;
    *(v6 + 3) = 0;
    *(v6 + 9) = 0;
    v8 = 1;
    *(v6 + 2) = v23;
    *(v6 + 3) = 0;
  }

  if (v8 && a2 != 0)
  {
    if (!v37)
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextGetStats_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    RenderContext = C3DEngineContextGetRenderContext(v37);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __C3DGeometryOpenSubdivGetGPUContext_block_invoke;
    v38[3] = &unk_2782FDEE8;
    v38[4] = RenderContext;
    v38[5] = a1;
    v38[6] = v6;
    v34 = [(SCNMTLRenderContext *)RenderContext resourceManager];
    v35 = [(SCNMTLRenderContext *)RenderContext commandQueue];
    *(v6 + 3) = C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(a1, v37, v6, v34, v35, v38);
  }

  return v6;
}

void __C3DGeometryOpenSubdivGetGPUContext_block_invoke(uint64_t a1, uint64_t a2)
{
  [-[SCNMTLRenderContext commandBufferStatusMonitor](*(a1 + 32)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __C3DGeometryOpenSubdivGetGPUContext_block_invoke_cold_1(a1);
  }

  v4 = *(*(a1 + 48) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 48) + 24) = 0;
  }
}

uint64_t C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(uint64_t a1, uint64_t a2, _BYTE *a3, SCNMTLResourceManager *a4, void *a5, uint64_t a6)
{
  v39[5] = *MEMORY[0x277D85DE8];
  C3DEntityGetName(a1);
  if (!a2 || (RenderCallbacks = C3DEngineContextGetRenderCallbacks(a2), !*(RenderCallbacks + 24)) || (v9 = RenderCallbacks, Hash = C3DSubdivisionOsdGPURuntimeDataGetHash(a1), (v11 = (*(v9 + 24))(a2, Hash)) == 0) || (v13 = C3DSubdivisionOsdGPURuntimeDataCreateWithData(v11, v12, a3, a4, a5, a6)) == 0)
  {
    if (C3DGeometryInitSubdivTopologyInfoIfNeeded(a1))
    {
      if (!a5)
      {
        v14 = scn_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivisionOsdGPURuntimeDataCreateWithData(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }

      os_variant_has_internal_diagnostics();
      v22 = [a5 commandBuffer];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke;
      v39[3] = &unk_2782FDF80;
      v39[4] = a6;
      [v22 addCompletedHandler:v39];
      v23 = [v22 computeCommandEncoder];
      v38.var0 = [a5 device];
      v38.var1 = a5;
      v38.var2 = v22;
      v38.var3 = v23;
      Mesh = C3DGeometryGetMesh(a1);
      C3DGeometrySubdivTopologyInfoInitCreasesAndCorners((a1 + 136), Mesh);
      C3DSubdivGetGPUPrimvarDataTypeHash(a1 + 136, Mesh);
      v32 = 0u;
      v31 = 0u;
      *&v30[8] = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      C3DSubdivInitGPUPrimvarDescriptor(v30, a1 + 136, Mesh);
      C3DSubdivCreateRefiner(a1 + 136);
    }

    return 0;
  }

  return v13;
}

void sub_21BFF5318(_Unwind_Exception *a1)
{
  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh((v1 + 304));
  C3DSubdivGPUPrimvarDescriptor::~C3DSubdivGPUPrimvarDescriptor((v1 + 416));
  _Unwind_Resume(a1);
}

uint64_t C3DGeometryOpenSubdivGetGPUPrimvarDataTypeHash(uint64_t a1)
{
  v1 = *(*(a1 + 168) + 24);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int32 a4)
{
  v4 = *(result + 24);
  if (v4)
  {
    v5 = v4[1].n128_u32[0];
    if (!v5 || v5 != a4)
    {
      v9 = result;
      v4[1].n128_u32[0] = a4;
      v31 = v4[1].n128_u32[3];
      if (!v4[22].n128_u64[1])
      {
        v10 = scn_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
        }
      }

      v18 = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](v4[22].n128_i64[1]) threadExecutionWidth];
      v19 = [(SCNMTLRenderContext *)a3 commandQueue];
      v20 = [(SCNMTLRenderContext *)a3 resourceComputeEncoder];
      bzero(v20, 0x678uLL);
      v21 = v20[207];
      [v21 setComputePipelineState:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](v4[22].n128_i64[1])];
      IsVarying = C3DGeometryOsdGetColorIsVarying(v4[1].n128_u32[2]);
      VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(v4[1].n128_u32[2]);
      if (IsVarying)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v30 = ((v24 + 2 * VaryingTextureCoordinatesCount) & 0xFE) + 3;
      [v21 setBuffer:a2 offset:0 atIndex:0];
      [v21 setBuffer:v4[4].n128_u64[0] offset:0 atIndex:1];
      [v21 setBuffer:v4[22].n128_u64[0] offset:0 atIndex:2];
      [v21 setBytes:&v30 length:4 atIndex:3];
      [v21 setBytes:&v31 length:4 atIndex:4];
      if (*(v9 + 5) == 1)
      {
        v25 = v31;
        v26 = vdupq_n_s64(1uLL);
        v28 = v18;
        v29 = v26;
        [v21 dispatchThreads:&v25 threadsPerThreadgroup:&v28];
      }

      else
      {
        v25 = (v18 + v31 - 1) / v18;
        v26 = vdupq_n_s64(1uLL);
        v28 = v18;
        v29 = v26;
        [v21 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v28];
      }

      v25 = [v19 device];
      v26 = v19;
      v27 = v21;
      return __C3DSubdivisionOsdGPURefine(v4 + 9, &v25);
    }
  }

  return result;
}

BOOL C3DSubdivisionOsdGPURequiresTessellationFactorsInitialization(uint64_t a1)
{
  result = 0;
  if (*(a1 + 2) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (!*(v1 + 20))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t C3DSubdivisionOsdGPUComputeTessellationFactors(uint64_t result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  if (*(result + 2) == 1)
  {
    v47 = v5;
    v48 = v6;
    v7 = result;
    v8 = *(result + 24);
    if (v8)
    {
      v9 = *(v8 + 20);
      if (!v9 || v9 != a4)
      {
        *(v8 + 20) = a4;
        LOBYTE(a5) = *(result + 1);
        v46 = LODWORD(a5);
        v12 = [(SCNMTLRenderContext *)a2 resourceComputeEncoder];
        bzero(v12, 0x678uLL);
        v13 = v12[207];
        [v13 setBuffer:*(v8 + 64) offset:*(v8 + 72) atIndex:5];
        [v13 setBuffer:*(v8 + 48) offset:0 atIndex:6];
        [v13 setBuffer:*(v8 + 56) offset:0 atIndex:8];
        [v13 setBuffer:*(v8 + 264) offset:0 atIndex:11];
        [v13 setBuffer:*(v8 + 232) offset:0 atIndex:19];
        [v13 setBytes:&v46 length:4 atIndex:13];
        result = [v13 setBytes:a3 length:192 atIndex:22];
        if (*(v7 + 6) == 2)
        {
          [v13 setBuffer:*(v8 + 104) offset:0 atIndex:10];
          result = [v13 setBuffer:*(v8 + 96) offset:0 atIndex:9];
        }

        if (*(v8 + 32))
        {
          v14 = 0;
          v15 = 0;
          v33 = v8 + 272;
          v32 = vdupq_n_s64(1uLL);
          v34 = v8;
          do
          {
            v16 = (*(v8 + 40) + v14);
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[2];
            v20 = v16[3];
            v45 = v17;
            if ((v17 - 6) <= 2)
            {
              [v13 setBuffer:*(v8 + 248) offset:0 atIndex:7];
            }

            NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v45);
            v22 = NumControlVertices;
            if (v17 == 9)
            {
              v23 = 4;
            }

            else
            {
              v23 = NumControlVertices;
            }

            v24 = v23 >> 5;
            if (v24 <= 1)
            {
              v24 = 1;
            }

            v35 = v24;
            [v13 setBufferOffset:12 * v20 atIndex:{8, *&v32}];
            [v13 setBufferOffset:4 * v19 atIndex:6];
            [v13 setComputePipelineState:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](*(v33 + 8 * v17))];
            v25 = 0;
            if (v17 > 4)
            {
              if (v17 <= 6)
              {
                if (v17 != 5)
                {
                  v25 = v18 * v22;
                  [v13 setBufferOffset:*(v34 + 240) atIndex:19];
                  v27 = *(v34 + 256);
                  v28 = v13;
                  v29 = 7;
                  goto LABEL_36;
                }

LABEL_30:
                v30 = scn_default_log();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v43, v44);
                }

LABEL_32:
                v25 = 0;
                goto LABEL_37;
              }

              switch(v17)
              {
                case 7:
                  v25 = 4 * v18;
                  [v13 setBufferOffset:*(v34 + 242) atIndex:19];
                  [v13 setBufferOffset:*(v34 + 258) atIndex:7];
                  v31 = *(v34 + 112);
LABEL_35:
                  v27 = 4 * v31;
                  v28 = v13;
                  v29 = 10;
                  goto LABEL_36;
                case 8:
                  v25 = 4 * v18;
                  [v13 setBufferOffset:*(v34 + 244) atIndex:19];
                  [v13 setBufferOffset:*(v34 + 260) atIndex:7];
                  v31 = *(v34 + 116);
                  goto LABEL_35;
                case 9:
                  v25 = 4 * v18;
                  v27 = *(v34 + 246);
                  v28 = v13;
                  v29 = 19;
LABEL_36:
                  [v28 setBufferOffset:v27 atIndex:v29];
                  break;
              }
            }

            else
            {
              if (v17 < 3)
              {
                goto LABEL_30;
              }

              if ((v17 - 3) < 2)
              {
                v26 = scn_default_log();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v41, v42);
                }

                goto LABEL_32;
              }
            }

LABEL_37:
            v40 = v25;
            [v13 setBytes:&v40 length:4 atIndex:12];
            if (*(v7 + 5) == 1)
            {
              v38 = v18 * v23;
              v39 = v32;
              v36 = xmmword_21C2A1CE0;
              v37 = 1;
              result = [v13 dispatchThreads:&v38 threadsPerThreadgroup:&v36];
            }

            else
            {
              v38 = ((v18 * v23 / v35) + 31) >> 5;
              v39 = vdupq_n_s64(1uLL);
              v36 = xmmword_21C2A1CE0;
              v37 = 1;
              result = [v13 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
            }

            v8 = v34;
            ++v15;
            v14 += 16;
          }

          while (v15 < *(v34 + 32));
        }
      }
    }
  }

  return result;
}

void C3DSubdivisionOsdGPUDraw(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return;
  }

  if (!__C3DSubdivisionOsdGPUHasPatchOfType(*(a1 + 24), a3))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPUDraw_cold_1(v11);
    }
  }

  v12 = C3DPatchTypeToOsdPatchType(a3);
  v13 = v5[11];
  v57 = v13;
  if (v13)
  {
    v14 = -1227133513 * ((v13[1] - *v13) >> 3);
  }

  else
  {
    v14 = 0;
  }

  v56 = v14;
  v68 = v14;
  v15 = [(SCNMTLRenderContext *)a2 renderEncoder];
  LODWORD(v16) = 1.0;
  [*(v15 + 3392) setTessellationFactorScale:v16];
  v18 = v5[8];
  v19 = v5[6];
  if (!v18)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPUDraw_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v54 = v12 - 5;
  LOBYTE(v17) = *(a1 + 1);
  v67 = v17;
  SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v18, 0, 5);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v19, 0, 6);
  SCNMTLRenderCommandEncoder::setVertexBytes(v15, &v67, 4uLL, 13);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[33], 0, 11);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[7], 0, 8);
  v28 = v57;
  if (v57)
  {
    if (v56 >= 2)
    {
      SCNMTLRenderCommandEncoder::setVertexBytes(v15, &v68, 4uLL, 14);
      SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[16], 0, 15);
      v29 = v5 + 17;
LABEL_17:
      SCNMTLRenderCommandEncoder::setVertexBuffer(v15, *v29, 0, 16);
      goto LABEL_18;
    }

    v30 = v5[11];
    v31 = *v30;
    if (v30[1] == *v30)
    {
LABEL_71:
      std::string::__throw_length_error[abi:nn200100]();
    }

    SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v31[4], v31[5], 14);
    SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v31[2], 0, 15);
    if (v54 <= 4)
    {
      v29 = v31 + 3;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (*(a1 + 6) == 2)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[13], 0, 10);
    SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[12], 0, 9);
  }

  v66 = 0;
  v32 = v5[4];
  if (v32)
  {
    LODWORD(v33) = 0;
    v34 = 0;
    v35 = v12 - 6;
    v55 = a4;
    while (1)
    {
      v36 = (v5[5] + 16 * v34);
      v65 = *v36;
      if (v65 == v12)
      {
        break;
      }

LABEL_61:
      v33 = (v33 + 1);
      v66 = v33;
      v34 = v33;
      if (v32 <= v33)
      {
        return;
      }
    }

    if (v35 <= 2)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v15, v5[31], 0, 7);
    }

    *(v15 + 216) = 12 * v36[3];
    [*(v15 + 3392) setVertexBufferOffset:? atIndex:?];
    *(v15 + 184) = 4 * v36[2];
    [*(v15 + 3392) setVertexBufferOffset:? atIndex:?];
    if (v28)
    {
      if (v56 >= 2)
      {
        v37 = &v66;
        v38 = v15;
        v39 = 4;
LABEL_31:
        SCNMTLRenderCommandEncoder::setVertexBytes(v38, v37, v39, 17);
        goto LABEL_32;
      }

      v40 = *v5[11];
      if (*(v5[11] + 8) == v40)
      {
        goto LABEL_71;
      }

      v41 = *(v40 + 8) + 16 * v66;
      *(v15 + 328) = 4 * *(v41 + 8);
      [*(v15 + 3392) setVertexBufferOffset:? atIndex:?];
      if (v54 <= 4)
      {
        *(v15 + 344) = 12 * *(v41 + 12);
        [*(v15 + 3392) setVertexBufferOffset:? atIndex:?];
        v38 = v15;
        v37 = v41;
        v39 = 16;
        goto LABEL_31;
      }
    }

LABEL_32:
    if (v12 > 9)
    {
      goto LABEL_40;
    }

    if (((1 << v12) & 0x27) != 0)
    {
      v42 = scn_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v63, v64);
      }
    }

    else
    {
      if (((1 << v12) & 0x1C0) != 0)
      {
        *(v15 + 200) = *(v5 + v35 + 128);
        [*(v15 + 3392) setVertexBufferOffset:? atIndex:?];
      }

      else if (v12 != 9)
      {
        goto LABEL_40;
      }

      [*(v15 + 3392) setTessellationFactorBuffer:v5[29] offset:*(v5 + v35 + 120) instanceStride:0];
    }

LABEL_40:
    NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v65);
    v44 = v5[15];
    if (!v44)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      operator new();
    }

    v45 = *v44;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v5[15] + 8) - v45) >> 3) <= v55)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v46 = *(v45 + 24 * v55);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v45 + 24 * v55 + 8) - v46) >> 3) <= v66)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    std::vector<CFRange>::vector[abi:nn200100](&v60, (v46 + 24 * v66));
    if (v12 > 4)
    {
      if ((v12 - 6) < 4)
      {
        v47 = v60;
        v49 = v61;
        if (v60 == v61)
        {
          goto LABEL_58;
        }

        do
        {
          v50 = *v47;
          v51 = v47[1];
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v15);
          SCNMTLRenderCommandEncoder::applyChangedStates(v15);
          [*(v15 + 3392) drawPatches:NumControlVertices patchStart:v50 patchCount:v51 patchIndexBuffer:0 patchIndexBufferOffset:0 instanceCount:*(v15 + 64) * a5 baseInstance:0];
          v47 += 2;
        }

        while (v47 != v49);
LABEL_57:
        v47 = v60;
        v28 = v57;
LABEL_58:
        if (!v47)
        {
LABEL_60:
          LODWORD(v33) = v66;
          v32 = v5[4];
          goto LABEL_61;
        }

LABEL_59:
        v61 = v47;
        operator delete(v47);
        goto LABEL_60;
      }
    }

    else if (v12 >= 3)
    {
      if (v12 == 3)
      {
        v47 = v60;
        v48 = v61;
        if (v60 != v61)
        {
          do
          {
            SCNMTLRenderCommandEncoder::drawPrimitives(v15, MTLPrimitiveTypeTriangle, 6 * *v47, 6 * v47[1], a5, 0);
            v47 += 2;
          }

          while (v47 != v48);
          goto LABEL_57;
        }
      }

      else
      {
        v47 = v60;
        v53 = v61;
        if (v60 != v61)
        {
          do
          {
            SCNMTLRenderCommandEncoder::drawPrimitives(v15, MTLPrimitiveTypeTriangle, 3 * *v47, 3 * v47[1], a5, 0);
            v47 += 2;
          }

          while (v47 != v53);
          goto LABEL_57;
        }
      }

      v28 = v57;
      if (!v47)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v52 = scn_default_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v58, v59);
    }

    goto LABEL_57;
  }
}

void sub_21BFF60E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData(__C3DGeometry *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1->var10.var6 + 3);
  EdgeCreasesSource = C3DGeometryOsdGetEdgeCreasesSource(a1);
  result = C3DGeometryOsdGetEdgeCreasesElement(a1);
  if (!EdgeCreasesSource || !result)
  {
    return result;
  }

  result = [(SCNMTLMesh *)a2 bufferForAttribute:?];
  v11 = result;
  if (*(v8 + 392))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v39 = result;
    Mesh = C3DGeometryGetMesh(a1);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    *(v8 + 368) = 0;
    ElementsCount = C3DMeshGetElementsCount(Mesh);
    if (ElementsCount >= 1)
    {
      v15 = ElementsCount;
      for (i = 0; i != v15; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v44);
        v43[0] = v44;
        v43[1] = v45;
        v43[2] = v46;
        v43[3] = v47;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke;
        v42[3] = &__block_descriptor_40_e19_v32__0I8_I12I20_B24l;
        v42[4] = v8;
        C3DIndicesContentEnumeratePrimitives(v43, v42, v46);
      }
    }

    v18 = *(v8 + 368) << 6;
    v19 = malloc_type_malloc(v18, 0x1000040E0EAB150uLL);
    if (C3DGeometryGetEffectiveDataKindForRendering(a1))
    {
      C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_2();
    }

    v20 = 8 * *(v8 + 368);
    v21 = malloc_type_malloc(v20, 0x100004052888210uLL);
    *&v44 = 0;
    *(&v44 + 1) = &v44;
    *&v45 = 0x2020000000;
    DWORD2(v45) = 0;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke_2;
    v41[3] = &unk_2782FDF30;
    v41[4] = &v44;
    v41[5] = v19;
    v41[6] = v21;
    C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(a1, v41);
    if (*(v8 + 368) != *(*(&v44 + 1) + 24))
    {
      __assert_rtn("C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData", "C3DGeometryOpenSubdivSupport_Metal.mm", 3656, "currentEdgeIndex == osdRuntimeData->authoringData.creaseData.edgeCount");
    }

    v22 = [v39 device];
    *(v8 + 376) = [v22 newBufferWithBytes:v19 length:v18 options:0];
    *(v8 + 384) = [v22 newBufferWithBytes:v21 length:v20 options:0];
    free(v19);
    free(v21);
    v23 = objc_alloc_init(MEMORY[0x277CD7090]);
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "attributes")];
    [objc_msgSend(objc_msgSend(v23 "layouts")];
    [objc_msgSend(objc_msgSend(v23 "layouts")];
    [objc_msgSend(objc_msgSend(v23 "layouts")];
    [objc_msgSend(objc_msgSend(v23 "layouts")];
    *(v8 + 392) = v23;
    _Block_object_dispose(&v44, 8);
    v11 = v39;
  }

  v24 = [objc_msgSend(-[SCNMTLResourceManager commandQueue](a2) "attributes")];
  v25 = [objc_msgSend(*(v8 + 392) "attributes")];
  v26 = [v24 format] - 26;
  if (v26 < 6 && ((0x33u >> v26) & 1) != 0)
  {
    v27 = qword_21C2A1D20[v26];
  }

  else
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_1(v24);
    }

    v27 = 0;
  }

  if (!*(v8 + 400))
  {
    LODWORD(v44) = v27;
    v29 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v29 setConstantValue:&v44 type:33 withName:@"src_type_size"];
    v30 = [(SCNMTLRenderContext *)a3 resourceManager];
    v31 = [v30 computePipelineStateForKernel:@"scn_osd_synchronize_coarse_positions_authoring" constants:v29 constantsHash:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", v44)}];

    *(v8 + 400) = v31;
  }

  v32 = [v24 offset];
  LODWORD(v44) = [objc_msgSend(objc_msgSend(-[SCNMTLResourceManager commandQueue](a2) "layouts")] / v27;
  v33 = [v25 offset];
  LODWORD(v43[0]) = 8;
  v40 = 2 * *(v8 + 368);
  v34 = [(SCNMTLRenderContext *)a3 resourceComputeEncoder];
  bzero(v34, 0x678uLL);
  if (v11)
  {
    v34->_buffers[0] = v11;
  }

  else if (!v32)
  {
    goto LABEL_24;
  }

  v34->_offsets[0] = v32;
  v34->_buffersToBind[0] |= 1uLL;
LABEL_24:
  v35 = *(v8 + 376);
  if (v35)
  {
    v34->_buffers[1] = v35;
LABEL_27:
    v34->_offsets[1] = v33;
    v34->_buffersToBind[0] |= 2uLL;
    goto LABEL_28;
  }

  if (v33)
  {
    goto LABEL_27;
  }

LABEL_28:
  v36 = *(v8 + 384);
  if (v36)
  {
    v34->_buffers[2] = v36;
    v34->_offsets[2] = 0;
    v34->_buffersToBind[0] |= 4uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(v34, &v44, 4uLL, 3uLL);
  SCNMTLComputeCommandEncoder::setBytes(v34, v43, 4uLL, 4uLL);
  SCNMTLComputeCommandEncoder::setBytes(v34, &v40, 4uLL, 5uLL);
  v37 = [(SCNMTLOpenSubdivComputeEvaluator *)*(v8 + 400) computeEvaluator];
  v38 = v40;
  if (v34->_computePipelineState != v37)
  {
    v34->_computePipelineState = v37;
    [(MTLComputeCommandEncoder *)v34->_encoder setComputePipelineState:v37];
  }

  return SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v34, v38);
}

unint64_t __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke_2(void *a1, int a2, int a3, float a4)
{
  result = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a4);
  v8 = a1[5] + 32 * (2 * *(*(a1[4] + 8) + 24));
  *(v8 + 16) = result;
  *(v8 + 24) = v9;
  v10 = a1[5] + 32 * ((2 * *(*(a1[4] + 8) + 24)) | 1u);
  *(v10 + 16) = result;
  *(v10 + 24) = v9;
  v11 = a1[6];
  *(v11 + 4 * (2 * *(*(a1[4] + 8) + 24))) = a2;
  *(v11 + 4 * ((2 * (*(*(a1[4] + 8) + 24))++) | 1u)) = a3;
  return result;
}

void C3DGeometryOpenSubdivGPUDrawAuthoringEnvironment(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = *(*(a2 + 168) + 24);
  v7 = *(v6 + 392);
  if (v7)
  {
    v9 = v6 + 368;
    v8 = *(v6 + 368);
    v11[0] = *(v9 + 8);
    v11[1] = v11[0];
    v10 = 0u;
    C3DAuthoringEnvironmentDrawPrimitives(a1, 1, 2 * v8, v11, &v10, 18, 2, v7, a3, a4, a5, a6, 0, 0);
  }
}

__CFString *C3DGetPatchTypeDescription(int a1)
{
  v1 = a1 - 3;
  if ((a1 - 3) >= 7 || ((0x7Bu >> v1) & 1) == 0)
  {
    C3DGetPatchTypeDescription();
  }

  return off_2782FE038[v1];
}

void ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*a2 length];
  v5 = [*(a2 + 8) length];
  v6 = [*(a2 + 16) length];
  v7 = [*(a2 + 24) length];
  v8 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v5 + v4 + v6 + v7;
  CFStringAppendFormat(v8, 0, @"\n  - Vertex stencil table (%d stencils)", *(a2 + 32));
  v9 = *(a1 + 40);
  v10 = *a2;
  v11 = C3DGetByteCountDescriptionFromSize(v4);
  CFStringAppendFormat(v9, 0, @"\n    - Sizes buffer: %p (%@)", v10, v11);
  v12 = *(a1 + 40);
  v13 = *(a2 + 8);
  v14 = C3DGetByteCountDescriptionFromSize(v5);
  CFStringAppendFormat(v12, 0, @"\n    - Offsets buffer: %p (%@)", v13, v14);
  v15 = *(a1 + 40);
  v16 = *(a2 + 16);
  v17 = C3DGetByteCountDescriptionFromSize(v6);
  CFStringAppendFormat(v15, 0, @"\n    - Indices buffer: %p (%@)", v16, v17);
  v18 = *(a1 + 40);
  v19 = *(a2 + 24);
  v20 = C3DGetByteCountDescriptionFromSize(v7);
  CFStringAppendFormat(v18, 0, @"\n    - Weights buffer: %p (%@)", v19, v20);
  v21 = [*(a2 + 40) length];
  v22 = [*(a2 + 40) length];
  v23 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v22 + v21;
  CFStringAppend(v23, @"\n  - Vertex evalutor input");
  v24 = *(a1 + 40);
  v25 = *(a2 + 40);
  v26 = *(a2 + 56);
  v27 = *(a2 + 60);
  v28 = *(a2 + 64);
  v29 = C3DGetByteCountDescriptionFromSize(v21);
  CFStringAppendFormat(v24, 0, @"\n    - Src buffer: [offset:%d length:%d stride:%d] %p (%@)", v26, v27, v28, v25, v29);
  v30 = *(a1 + 40);
  v31 = *(a2 + 48);
  v32 = *(a2 + 68);
  v33 = *(a2 + 72);
  v34 = *(a2 + 76);
  v35 = C3DGetByteCountDescriptionFromSize(v22);
  CFStringAppendFormat(v30, 0, @"\n    - Dst buffer: [offset:%d length:%d stride:%d] %p (%@)", v32, v33, v34, v31, v35);
}

void *std::vector<std::vector<CFRange>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<std::vector<std::vector<CFRange>>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

uint64_t std::vector<std::vector<CFRange>>::__init_with_size[abi:nn200100]<std::vector<CFRange>*,std::vector<CFRange>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<CFRange>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<CFRange>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::vector<C3DSubdivisionOsdGPURefiner>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<C3DSubdivisionOsdGPURefiner>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<C3DSubdivisionOsdGPURefiner>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPURefiner>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPURefiner>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

unint64_t C3DPatchTypeFromOsdPatchType(int a1)
{
  v1 = a1 - 3;
  if ((a1 - 3) >= 7 || ((0x7Bu >> v1) & 1) == 0)
  {
    C3DPatchTypeFromOsdPatchType();
  }

  return (0x6050403010201uLL >> (8 * v1)) & 7;
}

id ___ZL42__C3DSubdivisionGetOpenSubdivComputeSourceP21SCNMTLResourceManager_block_invoke()
{
  __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv_compute.metal");
  v0 = [__C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource stringByReplacingOccurrencesOfString:@"#import scn_metal" withString:C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal")];
  __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource = v0;

  return v0;
}

void __C3DSubdivisionOsdGPURefinerDestroy(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void __C3DSubdivisionOsdGPUPatchTableDestroy(uint64_t a1)
{
  free(*(a1 + 8));

  v2 = *(a1 + 32);
}

void std::vector<std::vector<std::vector<CFRange>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void ___ZL48C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quadsv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(3);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL52C3DSubdivisionOsdGPUGetPerPatchTypeSources_Trianglesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(4);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF71E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL50C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regularv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(6);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL50C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregoryv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(7);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF730C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundaryv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(8);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF73A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL55C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasisv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(9);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t C3DSubdivisionOsdGPURuntimeDataGetHash(__C3DGeometry *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&c);
  Mesh = C3DGeometryGetMesh(a1);
  v3 = Mesh;
  if (Mesh)
  {
    ElementsCount = C3DMeshGetElementsCount(Mesh);
    if (ElementsCount >= 1)
    {
      v5 = ElementsCount;
      for (i = 0; i != v5; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v3, i, 0);
        Type = C3DMeshElementGetType(ElementAtIndex);
        if (C3DMeshElementTypeDefinesSurface(Type))
        {
          v28[0] = 0;
          Indexes = C3DMeshElementGetIndexes(ElementAtIndex, v28);
          if (Indexes)
          {
            v10 = Indexes;
            BytePtr = CFDataGetBytePtr(Indexes);
            Length = CFDataGetLength(v10);
            CC_SHA256_Update(&c, BytePtr, Length);
          }

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke;
          v26[3] = &__block_descriptor_40_e13_v24__0___qq_8l;
          v26[4] = &c;
          C3DMeshElementEnumeratePrimitiveRanges(ElementAtIndex, v26);
        }
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke_2;
  v25[3] = &__block_descriptor_40_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
  v25[4] = &c;
  C3DMeshApplySources(v3, 0, v25);
  CC_SHA256_Final(md, &c);
  v13 = 0;
  v14 = v28;
  v15.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v15.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v16.i64[0] = 0x3737373737373737;
  v16.i64[1] = 0x3737373737373737;
  v17.i64[0] = 0x3030303030303030;
  v17.i64[1] = 0x3030303030303030;
  v18.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v18.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v19.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v19.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v20 = *&md[v13];
    v21.i64[0] = 0x3737373737373737;
    v21.i64[1] = 0x3737373737373737;
    v22.i64[0] = 0x3030303030303030;
    v22.i64[1] = 0x3030303030303030;
    v32.val[0] = vbslq_s8(vcgtq_u8(v15, v20), vsraq_n_u8(v22, v20, 4uLL), vsraq_n_u8(v21, v20, 4uLL));
    v23 = vandq_s8(v20, v18);
    v32.val[1] = vbslq_s8(vcgtq_u8(v19, v23), vorrq_s8(v23, v17), vaddq_s8(v23, v16));
    vst2q_s8(v14, v32);
    v14 += 32;
    v13 += 16;
  }

  while (v13 != 32);
  v29 = 0;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", C3DGeometryGetName(a1), v28];
}

uint64_t ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 status];
  if (result != 4)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_cold_1(a2);
    }

    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a2, 0);
    }
  }

  return result;
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

CFTypeRef ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537(void *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[9];
  v67 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:0];
  if (!v2)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v63 = a1;
  v62 = v4;
  v69 = 0;
  v70 = &v69;
  v71 = 0x5012000000;
  v72 = __Block_byref_object_copy__5;
  v73 = __Block_byref_object_dispose__5;
  v74 = "c";
  v75 = 0u;
  v76 = 0u;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = ___ZL51__C3DSubdivisionOsdGPURuntimeDataCreateArchivedDataP33__C3DSubdivisionOsdGPURuntimeDataPK39C3DSubdivisionOsdGPUSetupAdditionalDataPU26objcproto15MTLCommandQueue11objc_objectPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v68[3] = &unk_2782FDFF0;
  v68[4] = v2;
  v68[5] = &v69;
  [v67 encodeInt32:3 forKey:@"version"];
  [v67 encodeBytes:v3 + 24 length:4 forKey:@"primvarDataTypeHash"];
  [v67 encodeInt32:*(v3 + 28) forKey:@"coarseVertexCount"];
  __C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(v67, @"vertexPatchTable", v3 + 32, v68);
  v13 = *(v3 + 88);
  if (v13)
  {
    v14 = (v13[1] - *v13) >> 3;
    v15 = 0x6DB6DB6DB6DB6DB7 * v14;
    if (-1227133513 * v14)
    {
      [v67 encodeInt32:v15 forKey:{objc_msgSend(@"fvarPatchTables", "stringByAppendingString:", @".count"}];
      v16 = 0;
      v17 = 0;
      do
      {
        if (0x6DB6DB6DB6DB6DB7 * ((v13[1] - *v13) >> 3) <= v17)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        __C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(v67, [@"fvarPatchTables" stringByAppendingFormat:@".[%d]", v17++], *v13 + v16, v68);
        v16 += 56;
      }

      while (v15 != v17);
    }
  }

  if (*(v3 + 96) && *(v3 + 104))
  {
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v67, [@"legacyGregoryPatchTable" stringByAppendingString:@".vertexValenceBuffer"], *(v3 + 96), v68, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v67, [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBuffer"], *(v3 + 104), v68, 0);
    [v67 encodeInt32:*(v3 + 112) forKey:{objc_msgSend(@"legacyGregoryPatchTable", "stringByAppendingString:", @".quadOffsetsBaseGregory"}];
    [v67 encodeInt32:*(v3 + 116) forKey:{objc_msgSend(@"legacyGregoryPatchTable", "stringByAppendingString:", @".quadOffsetsBaseGregoryBoundary"}];
  }

  v18 = *(v3 + 120);
  if (v18)
  {
    v20 = *v18;
    v19 = v18[1];
    v22 = **v18;
    v21 = (*v18)[1];
    [@"patchRangesTable" stringByAppendingString:@".elementCount"];
    v65 = -1431655765 * ((v19 - v20) >> 3);
    [v67 encodeInt32:? forKey:?];
    [@"patchRangesTable" stringByAppendingString:@".patchArrayCount"];
    v64 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
    [v67 encodeInt32:? forKey:?];
    if (v65)
    {
      v23 = 0;
      for (i = 0; i < v65; v23 = ++i)
      {
        if (v64)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * (v18[1] - *v18) <= i)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v27 = &(*v18)[3 * i];
            v26 = *v27;
            if (0xAAAAAAAAAAAAAAABLL * ((v27[1] - *v27) >> 3) <= v25)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            [v67 encodeBytes:*(v26 + v24) length:*(v26 + v24 + 8) - *(v26 + v24) forKey:{objc_msgSend(@"patchRangesTable", "stringByAppendingFormat:", @".[%d][%d]", v23, v25++)}];
            v24 += 24;
          }

          while (v64 != v25);
        }
      }
    }
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(v67, @"vertexRefiner", v3 + 144, v68);
  v28 = v63[6];
  if (v28)
  {
    v29 = (v28[1] - *v28) >> 3;
    v30 = 0x2E8BA2E8BA2E8BA3 * v29;
    if (-1171354717 * v29)
    {
      [v67 encodeInt32:v30 forKey:{objc_msgSend(@"fvarRefiners", "stringByAppendingString:", @".count"}];
      v31 = 0;
      v32 = 0;
      do
      {
        if (0x2E8BA2E8BA2E8BA3 * ((v28[1] - *v28) >> 3) <= v32)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        __C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(v67, [@"fvarRefiners" stringByAppendingFormat:@".[%d]", v32++], *v28 + v31, v68);
        v31 += 88;
      }

      while (v30 != v32);
    }
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v67, @"skinMorphSubdivIndexToMetalIndexBuffer", *(v3 + 352), v68, 0);
  v33 = *(v3 + 360);
  if (v33)
  {
    [v67 encodeObject:objc_msgSend(-[SCNMTLResourceManager commandQueue](v33) forKey:{"name"), @"synchronizeCoarsePositionsPipeline.functionName"}];
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v67, @"fvarChannelDescriptorsBuffer", *(v3 + 128), v68, 0);
  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v67, @"fvarChannelsPackedDataBuffer", *(v3 + 136), v68, 0);
  if (!v70[6])
  {
    goto LABEL_37;
  }

  if (!v70[9])
  {
    v34 = scn_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_2(v34, v35, v36, v37, v38, v39, v40, v41);
    }
  }

  if (!v70[8])
  {
    v42 = scn_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_3(v42, v43, v44, v45, v46, v47, v48, v49);
    }
  }

  [v70[9] endEncoding];
  [v70[8] commit];
  [v70[8] waitUntilCompleted];
  if ([v62 status] != 4)
  {
    v51 = scn_default_log();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v52 = [v62 status];
    v53 = [v62 error];
    v54 = [v62 logs];
    *buf = 67109634;
    v78 = v52;
    v79 = 2112;
    v80 = v53;
    v81 = 2112;
    v82 = v54;
    v55 = "Error: OpenSubdiv archiver dependency command buffer execution failed with status %d, error: %@\n%@";
    v56 = v51;
LABEL_46:
    _os_log_error_impl(&dword_21BEF7000, v56, OS_LOG_TYPE_ERROR, v55, buf, 0x1Cu);
    goto LABEL_41;
  }

  if ([v70[8] status] == 4)
  {
LABEL_37:
    v50 = [v67 encodedData];
    goto LABEL_42;
  }

  v57 = scn_default_log();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v59 = [v70[8] status];
    v60 = [v70[8] error];
    v61 = [v70[8] logs];
    *buf = 67109634;
    v78 = v59;
    v79 = 2112;
    v80 = v60;
    v81 = 2112;
    v82 = v61;
    v55 = "Error: OpenSubdiv archiver command buffer execution failed with status %d, error: %@\n%@";
    v56 = v57;
    goto LABEL_46;
  }

LABEL_41:
  v50 = 0;
LABEL_42:

  _Block_object_dispose(&v69, 8);
  if (v50)
  {
    return CFAutorelease(v50);
  }

  else
  {
    return 0;
  }
}

void sub_21BFF8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return CC_SHA256_Update(*(a1 + 32), v4, 0x10u);
}

const __CFData *___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = C3DSubdivSourceSemanticCanBePrimvar(a3, a4, 0);
  if (result)
  {
    result = C3DMeshSourceGetData(a2);
    if (result)
    {
      v7 = result;
      BytePtr = CFDataGetBytePtr(result);
      Length = CFDataGetLength(v7);
      v10 = *(a1 + 32);

      return CC_SHA256_Update(v10, BytePtr, Length);
    }
  }

  return result;
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Mesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_282DC4D78;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  *(a1 + 104) = a8;
  if (a2)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    if (a6)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(a2, (16 * a6) & 0x300 | a5 & 0xF | (((a6 >> 3) & 1) << 10) | 0xF0, a3, a4, a5, a6, a7, a8, v13);
    }

    else
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineUniform(a2, a5 & 0xF | (32 * (((*(**(a2 + 40) + 464) - *(**(a2 + 40) + 456)) >> 3) > 0)), a3, a4, a5, a6, a7, a8, v13);
    }

    OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext(a1, v11, v10, v9, a6);
  }

  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Mesh();
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext(uint64_t a1, int a2, int a3, char a4, unint64_t a5)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = ~(16 * *(v6 + 8)) & 0x10;
    if (a2 >= 1)
    {
      OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(v6, v7 | 0x2A4);
    }

    if (a3 >= 1)
    {
      OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(*(a1 + 8), v7 | 0x2A5);
    }

    if ((a5 & 0x180) == 0x100)
    {
      v8 = -4294956032;
    }

    else
    {
      v8 = -4294956288;
    }

    if ((a5 & 0x40) != 0)
    {
      v8 = -4294956544;
    }

    OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(*(a1 + 8), ((a5 << 10) & 0x3000 | (16 * (a4 & 0xF)) | (a5 >> 2) & 0xC) ^ v8, 0);
  }

  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext();
}

uint64_t OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeVertexBuffers(uint64_t result, int a2, OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, MTLContext *a4)
{
  if (this)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::Create(this, a2, *(result + 104), a4);
  }

  if (a4)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::Create(a4, a2, *(result + 104), a4);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(void *a1)
{
  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(a1);

  JUMPOUT(0x21CF07610);
}

BOOL OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Refine(uint64_t a1)
{
  v2 = *(**(*(a1 + 8) + 88) + 8);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v10.var0 += v10.var2 * v2;
  v3 = OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(*(a1 + 88), &v11, &v10, *(a1 + 104));
  result = OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(*(a1 + 32), &v11, *(a1 + 32), &v10, *(a1 + 72), v3, *(a1 + 104));
  if (*(a1 + 64) >= 1)
  {
    v8 = *(a1 + 60);
    v9 = *(a1 + 68);
    v7 = *(a1 + 60);
    v7.var0 += v7.var2 * v2;
    v5 = OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(*(a1 + 88), &v8, &v7, *(a1 + 104));
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(a1 + 32);
    }

    return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(v6, &v8, v6, &v7, *(a1 + 80), v5, *(a1 + 104));
  }

  return result;
}

uint64_t *OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(uint64_t *result, OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator *a2, BufferDescriptor *a3, BufferDescriptor *a4)
{
  if (result)
  {
    *&v5.var0 = 0;
    v5.var2 = 0;
    *&v4.var0 = 0;
    v4.var2 = 0;
    return OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLContext>(result, a2, a3, &v5, &v4, a4);
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(uint64_t a1, OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator *this, uint64_t a3, BufferDescriptor *a4, __n128 *a5, uint64_t a6, BufferDescriptor *a7)
{
  if (!a6)
  {
    *&v9.var0 = 0;
    v9.var2 = 0;
    *&v8.var0 = 0;
    v8.var2 = 0;
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(this, a4, &v9, &v8, a7, 0);
  }

  return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(a6, a1, this, a3, &a4->var0, a5, a7);
}

uint64_t OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLContext>(uint64_t *a1, OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator *this, BufferDescriptor *a3, BufferDescriptor *a4, BufferDescriptor *a5, BufferDescriptor *a6)
{
  v10 = *a1;
  v11 = a1[1];
  if (*a1 == v11)
  {
LABEL_43:
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(this, a3, a4, a5, a6, a6);
  }

  v13 = *(this + 1);
  v12 = *(this + 2);
  v14 = *this;
  var1 = a3->var1;
  var2 = a3->var2;
  var0 = a3->var0;
  v18 = a4->var1;
  v19 = a4->var2;
  v20 = a4->var0;
  v22 = a5->var1;
  v21 = a5->var2;
  v23 = a5->var0;
  while (1)
  {
    v24 = v12 ? v14 % v12 : 0;
    v25 = *(v10 + 8);
    v26 = v25 ? *v10 % v25 : 0;
    if (v24 == v26 && v12 == v25 && v13 == *(v10 + 4))
    {
      v28 = var2 ? var0 % var2 : 0;
      v29 = *(v10 + 20);
      v30 = v29 ? *(v10 + 12) % v29 : 0;
      if (v28 == v30 && var2 == v29 && var1 == *(v10 + 16))
      {
        v31 = v19 ? v20 % v19 : 0;
        v32 = *(v10 + 32);
        v33 = v32 ? *(v10 + 24) % v32 : 0;
        if (v31 == v33 && v19 == v32 && v18 == *(v10 + 28))
        {
          v34 = v21 ? v23 % v21 : 0;
          v35 = *(v10 + 44);
          v36 = v35 ? *(v10 + 36) % v35 : 0;
          if (v34 == v36 && v21 == v35 && v22 == *(v10 + 40))
          {
            return *(v10 + 48);
          }
        }
      }
    }

    v10 += 56;
    if (v10 == v11)
    {
      goto LABEL_43;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::Entry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, __n128 *a6, void *a7)
{
  Node = C3DRendererElementGetNode(a2);
  v14 = C3DRendererElementGetNode(a4);
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils(a1, Node, a3, v14, a5, 0, &v19, 0, *a6, v15, &v17, a6->n128_u64[0], a6->n128_i64[1], a6[1].n128_i64[0], a6[1].n128_i64[1], 0, 0, 0, a6[3].n128_i32[0], a7);
}

__n128 ___ZL51__C3DSubdivisionOsdGPURuntimeDataCreateArchivedDataP33__C3DSubdivisionOsdGPURuntimeDataPK39C3DSubdivisionOsdGPUSetupAdditionalDataPU26objcproto15MTLCommandQueue11objc_objectPU27objcproto16MTLCommandBuffer11objc_object_block_invoke@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 40) + 8);
  if (!*(v3 + 48))
  {
    *(*(*(a1 + 40) + 8) + 48) = [*(a1 + 32) device];
    *(*(*(a1 + 40) + 8) + 56) = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 64) = [*(*(*(a1 + 40) + 8) + 56) commandBuffer];
    *(*(*(a1 + 40) + 8) + 72) = [*(*(*(a1 + 40) + 8) + 64) blitCommandEncoder];
    v3 = *(*(a1 + 40) + 8);
  }

  result = *(v3 + 48);
  v6 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

void *__C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    [result encodeBytes:*(a3 + 8) length:16 * *a3 forKey:{objc_msgSend(a2, "stringByAppendingString:", @".patchArrays"}];
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".patchIndexBuffer"], *(a3 + 16), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".patchParamBuffer"], *(a3 + 24), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".dataBuffer"], *(a3 + 32), a4, *(a3 + 48));
    [v7 encodeInt32:*(a3 + 40) forKey:{objc_msgSend(a2, "stringByAppendingString:", @".dataBufferOffset"}];
    [v7 encodeInt32:*(a3 + 48) forKey:{objc_msgSend(a2, "stringByAppendingString:", @".dataBufferCoarseDataSize"}];
    v8 = [*(a3 + 32) length];
    v9 = [a2 stringByAppendingString:@".dataBufferFullDataSize"];

    return [v7 encodeInt32:v8 forKey:v9];
  }

  return result;
}

uint64_t __C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = [a2 stringByAppendingString:@".stencilTable"];
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".sizesBuffer"], *a3, a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".offsetsBuffer"], *(a3 + 8), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".indicesBuffer"], *(a3 + 16), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".weightsBuffer"], *(a3 + 24), a4, 0);
    [v7 encodeInt32:*(a3 + 32) forKey:{objc_msgSend(v8, "stringByAppendingString:", @".numStencils"}];
    v9 = [a2 stringByAppendingString:@".evaluatorInput"];
    [v7 encodeBytes:a3 + 56 length:12 forKey:{objc_msgSend(v9, "stringByAppendingString:", @".srcDesc"}];
    v10 = [v9 stringByAppendingString:@".dstDesc"];

    return [v7 encodeBytes:a3 + 68 length:12 forKey:v10];
  }

  return result;
}

void __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v5 = a5;
    if (!a5)
    {
      v5 = [a3 length];
    }

    if (v5 > [a3 length])
    {
      __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer();
    }

    if ([a3 storageMode] == 2)
    {
      v10 = [objc_msgSend(a3 "device")];
      (*(a4 + 16))(v13, a4);
      [v13[3] copyFromBuffer:a3 sourceOffset:0 toBuffer:v10 destinationOffset:0 size:v5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = ___ZL48__C3DSubdivisionOsdGPURuntimeDataEncodeMTLBufferP15NSKeyedArchiverP8NSStringPU19objcproto9MTLBuffer11objc_objectU13block_pointerFN10OpenSubdiv6v3_1_13Osd10MTLContextEvEm_block_invoke;
      v12[3] = &unk_2782FE018;
      v12[4] = a1;
      v12[5] = v10;
      v12[6] = a2;
      v12[7] = v5;
      [v13[2] addCompletedHandler:v12];
    }

    else
    {
      v11 = [a3 contents];

      [a1 encodeBytes:v11 length:v5 forKey:a2];
    }
  }
}

uint64_t ___ZL48__C3DSubdivisionOsdGPURuntimeDataEncodeMTLBufferP15NSKeyedArchiverP8NSStringPU19objcproto9MTLBuffer11objc_objectU13block_pointerFN10OpenSubdiv6v3_1_13Osd10MTLContextEvEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contents];
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 encodeBytes:v3 length:v4 forKey:v5];
}

void *OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(void *a1)
{
  *a1 = &unk_282DC4D78;
  v2 = a1[1];
  if (v2)
  {
    OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(v2);
    MEMORY[0x21CF07610]();
  }

  v3 = a1[2];
  if (v3)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(v3);
    MEMORY[0x21CF07610]();
  }

  v4 = a1[4];
  if (v4)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::~CPUMTLVertexBuffer(v4);
    MEMORY[0x21CF07610]();
  }

  v5 = a1[5];
  if (v5)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::~CPUMTLVertexBuffer(v5);
    MEMORY[0x21CF07610]();
  }

  v6 = a1[9];
  if (v6)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::~MTLStencilTable(v6);
    MEMORY[0x21CF07610]();
  }

  v7 = a1[10];
  if (v7)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::~MTLStencilTable(v7);
    MEMORY[0x21CF07610]();
  }

  v8 = a1[12];
  if (v8)
  {
    OpenSubdiv::v3_1_1::Osd::MTLPatchTable::~MTLPatchTable(v8);
    MEMORY[0x21CF07610]();
  }

  return a1;
}

void C3DSubdivGPUPrimvarDescriptor::~C3DSubdivGPUPrimvarDescriptor(C3DSubdivGPUPrimvarDescriptor *this)
{
  v6 = (this + 112);
  std::vector<C3DSubdivGPUFVarPrimvarData>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void std::vector<C3DSubdivGPUFVarPrimvarData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

void *std::vector<C3DSubdivisionOsdGPUPatchTable>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<C3DSubdivisionOsdGPUPatchTable>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<C3DSubdivisionOsdGPUPatchTable>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPUPatchTable>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPUPatchTable>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21CF07580](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_21BFF9744(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::vector<CFRange>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(result, (v2 - *a2) >> 4);
  }

  return result;
}

uint64_t SCNActionHasKey(void *a1, void *a2)
{
  v3 = *([a1 caction] + 96);

  return [a2 isEqualToString:v3];
}

uint64_t SCNActionApply(void *a1, id *a2, double a3)
{
  v5 = [a1 caction];
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);
  if (!ObjCWrapper)
  {
    return C3DIsRunningInEditor() ^ 1;
  }

  v7 = ObjCWrapper;
  if (!v5->var11)
  {
    SCNCAction::willStartWithTargetAtTime(v5, ObjCWrapper, a3);
  }

  if (v5->var4)
  {
    (*(v5->var0 + 7))(v5, v7, a3);
  }

  else
  {
    SCNCAction::updateWithTargetForTime(v5, v7, a3);
    if (!v5->var4)
    {
      var10 = [v5->var3 finished];
      return (C3DIsRunningInEditor() ^ 1) & var10;
    }
  }

  var10 = v5->var10;
  return (C3DIsRunningInEditor() ^ 1) & var10;
}

uint64_t SCNActionWasAddedToTargetAtTime(void *a1, SCNNode *a2)
{
  v4 = [a1 caction];
  C3DTransactionGetAtomicTime();
  SCNCAction::wasAddedToTargetAtTime(v4, a2, v5);
  result = [(SCNNode *)a2 isPausedOrPausedByInheritance];
  if (result)
  {
    v7 = [a1 caction];
    C3DTransactionGetAtomicTime();

    return SCNCAction::wasPausedWithTargetAtTime(v7, a2, v8);
  }

  return result;
}

uint64_t SCNActionWasPausedAtTime(void *a1, SCNNode *a2, double a3)
{
  v5 = [a1 caction];

  return SCNCAction::wasPausedWithTargetAtTime(v5, a2, a3);
}

uint64_t SCNActionWillResumeAtTime(void *a1, SCNNode *a2, double a3)
{
  v5 = [a1 caction];

  return SCNCAction::willResumeWithTargetAtTime(v5, a2, a3);
}

SCNNode *SCNActionWasRemovedFromTargetAtTime(void *a1, id *a2, double a3)
{
  v5 = [a1 caction];
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {

    return SCNCAction::wasRemovedFromTargetAtTime(v5, result, a3);
  }

  return result;
}

id *SCNActionDidFinish(void *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {
    v4 = result;
    v5 = *([a1 caction] + 96);

    return [v4 _removeAction:a1 forKey:v5];
  }

  return result;
}

void SCNActionReleaseCachedState(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];

  objc_setAssociatedObject(v1, @"SCNActionCacheKey", 0, 0x301);
}

uint64_t SCNActionsReset(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) caction];
        (*(*v6 + 120))(v6);
        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id SCNActionRestoreState(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];
  result = objc_getAssociatedObject(v1, @"SCNActionCacheKey");
  if (result)
  {
    v3 = result;
    [result position];
    [(SCNNode *)v1 setPosition:?];
    [v3 scale];
    [(SCNNode *)v1 setScale:?];
    if ([v3 usesEuler])
    {
      [v3 euler];
      [(SCNNode *)v1 setEulerAngles:?];
    }

    else
    {
      [v3 rotation];
      [(SCNNode *)v1 setRotation:?];
    }

    [v3 opacity];
    v5 = v4;

    return [(SCNNode *)v1 setOpacity:v5];
  }

  return result;
}

void SCNActionSaveStateIfNeeded(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];
  if (!objc_getAssociatedObject(v1, @"SCNActionCacheKey"))
  {
    v3 = objc_alloc_init(SCNActionTargetState);
    objc_setAssociatedObject(v1, @"SCNActionCacheKey", v3, 0x301);
    [(SCNNode *)v1 opacity];
    *&v2 = v2;
    [(SCNActionTargetState *)v3 setOpacity:v2];
    [(SCNNode *)v1 position];
    [(SCNActionTargetState *)v3 setPosition:?];
    [(SCNNode *)v1 scale];
    [(SCNActionTargetState *)v3 setScale:?];
    if ([(SCNNode *)v1 rotationRepresentation])
    {
      [(SCNNode *)v1 rotation];
      [(SCNActionTargetState *)v3 setRotation:?];
    }

    else
    {
      [(SCNActionTargetState *)v3 setUsesEuler:1];
      [(SCNNode *)v1 eulerAngles];
      [(SCNActionTargetState *)v3 setEuler:?];
    }
  }
}

void std::vector<UITouch *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t C3DMeshSourceCreateMutable(CFDataRef theData, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    return 0;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableCopy = CFDataCreateMutableCopy(0, Length, theData);
  }

  else
  {
    v13 = a4 * a3 * C3DSizeOfBaseType(a5);
    MutableCopy = CFDataCreateMutable(0, 0);
    CFDataSetLength(MutableCopy, v13);
  }

  v14 = C3DSizeOfBaseType(a5);
  MutableWithMutableData = C3DMeshSourceCreateMutableWithMutableData(a2, MutableCopy, a5, a4, a3, v14 * a4, 0);
  CFRelease(MutableCopy);
  return MutableWithMutableData;
}

uint64_t _C3DMeshSourceSetupNonInitializedComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  result = C3DSourceAccessorGetComponentsCountPerValue(v8);
  v10 = result - a4;
  if (result > a4)
  {
    v11 = C3DMeshSourceGetSemantic(a1) - 1;
    v12 = 1.0;
    v13 = 1.0;
    if (v11 <= 5)
    {
      v12 = flt_21C2A1D50[v11];
      v13 = flt_21C2A1D68[v11];
    }

    result = C3DSceneSourceGetLibrary(v8);
    if (a3 >= 1)
    {
      v14 = result;
      v15 = 0;
      v16 = a2 + a4;
      v17 = a2 + 8 * a4;
      v18 = a2 + 4 * a4;
      do
      {
        v19 = 0;
        do
        {
          if (v10 - 1 == v19)
          {
            v20 = v12;
          }

          else
          {
            v20 = v13;
          }

          result = C3DSourceAccessorGetComponentsValueType(v8);
          if (result > 5u)
          {
            if (result != 6)
            {
              if (result != 16)
              {
                goto LABEL_19;
              }

LABEL_16:
              *(v16 + v19) = v20;
              goto LABEL_19;
            }

            *(v17 + 8 * v19) = v20;
          }

          else if (result == 1)
          {
            *(v18 + 4 * v19) = v20;
          }

          else if (result == 4)
          {
            goto LABEL_16;
          }

LABEL_19:
          ++v19;
        }

        while (v10 != v19);
        ++v15;
        v16 += v14;
        v17 += v14;
        v18 += v14;
      }

      while (v15 != a3);
    }
  }

  return result;
}

void C3DMeshSourceSetValueAtIndexAsVector3(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(v13, a2);
  v15 = a3;
  v15.n128_u32[3] = 0;
  v18 = v15;
  VectorType = C3DSourceAccessorGetVectorType(v13);
  C3DConvertFloatingTypeFromFloat4(VectorType, MutableValuePtrAtIndex, v18);
}

void C3DMeshSourceSetValueAtIndexAsVector4(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(v13, a2);
  VectorType = C3DSourceAccessorGetVectorType(v13);
  C3DConvertFloatingTypeFromFloat4(VectorType, MutableValuePtrAtIndex, a3);
}

__CFData *C3DMeshSourcePrepareAppend(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  Data = C3DSourceAccessorGetData(v12);
  Library = C3DSceneSourceGetLibrary(v12);
  if (!Data)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  Length = CFDataGetLength(Data);
  if (Length != C3DSourceAccessorGetCount(v12) * Library)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourcePrepareAppend_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v32 = CFDataGetLength(Data);
  CFDataSetLength(Data, v32 + Library * a2);
  Count = C3DSourceAccessorGetCount(v12);
  C3DSourceAccessorSetCount(v12, Count + a2);
  return C3DSourceAccessorGetMutableValuePtrAtIndex(v12, Count);
}

uint64_t C3DMeshSourceAppendVector3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 64);
  v15 = C3DMeshSourcePrepareAppend(a1, a3);
  Library = C3DSceneSourceGetLibrary(v14);
  if (a3 >= 1)
  {
    v17 = Library;
    v18 = (v15 + 8);
    v19 = (a2 + 4);
    for (i = a3; i; --i)
    {
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v14);
      if (ComponentsValueType > 5)
      {
        if (ComponentsValueType == 6)
        {
          *(v18 - 1) = *(v19 - 1);
          *v18 = *v19;
          v18[1] = v19[1];
          goto LABEL_16;
        }

        if (ComponentsValueType != 16)
        {
LABEL_9:
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            C3DMeshSourceAppendVector3_cold_2(&v24, v25);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (ComponentsValueType == 1)
        {
          *(v18 - 2) = *(v19 - 1);
          *(v18 - 1) = *v19;
          *v18 = v19[1];
          goto LABEL_16;
        }

        if (ComponentsValueType != 4)
        {
          goto LABEL_9;
        }
      }

      *(v18 - 8) = *(v19 - 1);
      *(v18 - 7) = *v19;
      *(v18 - 6) = v19[1];
LABEL_16:
      v18 = (v18 + v17);
      v19 += 4;
    }
  }

  return _C3DMeshSourceSetupNonInitializedComponents(a1, v15, a3, 3);
}

uint64_t C3DMeshSourceAppendVector2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 64);
  v15 = C3DMeshSourcePrepareAppend(a1, a3);
  Library = C3DSceneSourceGetLibrary(v14);
  if (a3 >= 1)
  {
    v17 = Library;
    v18 = (a2 + 4);
    v19 = v15;
    for (i = a3; i; --i)
    {
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v14);
      if (ComponentsValueType > 5)
      {
        if (ComponentsValueType == 6)
        {
          *v19 = COERCE_FLOAT(*(v18 - 1));
          *(v19 + 1) = *v18;
          goto LABEL_16;
        }

        if (ComponentsValueType != 16)
        {
LABEL_9:
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            C3DMeshSourceAppendVector2_cold_2(&v24, v25);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (ComponentsValueType == 1)
        {
          *v19 = *(v18 - 1);
          *(v19 + 1) = *v18;
          goto LABEL_16;
        }

        if (ComponentsValueType != 4)
        {
          goto LABEL_9;
        }
      }

      *v19 = COERCE_FLOAT(*(v18 - 1));
      *(v19 + 1) = *v18;
LABEL_16:
      v18 += 2;
      v19 = (v19 + v17);
    }
  }

  return _C3DMeshSourceSetupNonInitializedComponents(a1, v15, a3, 2);
}

uint64_t C3DMeshSourceCreateVolatile(__int16 a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0x15 && ((1 << a3) & 0x210052) != 0)
  {
    v6 = C3DSizeOfBaseType(a3);
    v7 = C3DSourceAccessorCreate(a3, a2, 0, v6 * a2, 0);
    if (!v7)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateVolatile_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = C3DMeshSourceCreateWithAccessor(v7, a1);
    if (!v16)
    {
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateWithAccessor_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    C3DSourceAccessorSetSource(v7, v16);
    CFRelease(v7);
    *(v16 + 88) |= 4u;
  }

  else
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreateVolatile_cold_3(v26);
    }

    return 0;
  }

  return v16;
}

void C3DMeshSourceSetVolatileData(uint64_t a1, uint64_t a2)
{
  if ((C3DGenericSourceIsVolatile(a1) & 1) == 0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceSetVolatileData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DGenericSourceSetVolatileData(a1, a2);
}

uint64_t C3DMeshSourceGetInstancingDivisor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 98);
}

void C3DMeshSourceSetInstancingDivisor(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 98) = a2;
}

void _C3DEdgeArrayCFFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    free(v1);
  }
}

uint64_t __C3DEdgeArrayGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEdgeArrayGetTypeID_typeID = result;
  return result;
}

void *C3DEdgeArrayCreateFromMeshElement(uint64_t a1, CFIndex a2)
{
  if (C3DEdgeArrayGetTypeID_onceToken != -1)
  {
    C3DEdgeArrayCreateFromMeshElement_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEdgeArrayGetTypeID_typeID, 24);
  if (!Instance)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  Instance[3] = 0;
  Instance[2] = 0;
  v41 = Instance + 2;
  ElementAtIndex = C3DMeshGetElementAtIndex(a1, a2, 1);
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
  PositionSource = C3DMeshGetPositionSource(a1, 1);
  Count = C3DMeshSourceGetCount(PositionSource);
  v17 = (Count * Count);
  v18 = malloc_type_calloc(1uLL, v17, 0x97483270uLL);
  if (PrimitiveCount < 1)
  {
    Instance[3] = 0;
  }

  else
  {
    v39 = Instance + 3;
    v40 = Instance;
    v19 = 0;
    v20 = 0;
    do
    {
      Index = C3DMeshElementGetIndex(ElementAtIndex, v19, 0, 0);
      v22 = C3DMeshElementGetIndex(ElementAtIndex, v19, 1, 0);
      v23 = C3DMeshElementGetIndex(ElementAtIndex, v19, 2, 0);
      if (Index >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = Index;
      }

      if (Index <= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = Index;
      }

      v26 = &v18[v24 * Count];
      if ((v26[v25] & 1) == 0)
      {
        v26[v25] = 1;
        ++v20;
      }

      if (v22 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v22;
      }

      if (v22 <= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = v22;
      }

      v29 = &v18[v27 * Count];
      if ((v29[v28] & 1) == 0)
      {
        v29[v28] = 1;
        ++v20;
      }

      if (v23 >= Index)
      {
        v30 = Index;
      }

      else
      {
        v30 = v23;
      }

      if (v23 <= Index)
      {
        v31 = Index;
      }

      else
      {
        v31 = v23;
      }

      v32 = &v18[v30 * Count];
      if ((v32[v31] & 1) == 0)
      {
        v32[v31] = 1;
        ++v20;
      }

      ++v19;
    }

    while (PrimitiveCount != v19);
    Instance = v40;
    *v39 = v20;
    if (v20)
    {
      v33 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
      *v41 = v33;
      if (v17 < 1)
      {
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        do
        {
          if (v18[v34] == 1)
          {
            v36 = &v33[16 * v35];
            *v36 = v34 / Count;
            v36[1] = v34 + -Count * (v34 / Count);
            ++v35;
          }

          ++v34;
        }

        while (v17 != v34);
      }

      if (v35 != *v39)
      {
        v37 = scn_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          C3DEdgeArrayCreateFromMeshElement_cold_3(v39, v35, v37);
        }
      }
    }
  }

  free(v18);
  Instance[4] = Instance[3];
  return Instance;
}

uint64_t C3DEdgeArrayGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DEdgeArrayGetEdgeAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 24) <= a2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayGetEdgeAtIndex_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 16) + 16 * a2;
}

void _C3DTriangulationInfoCFFinalize(void *a1)
{
  v2 = a1[6];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1[3] + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(a1[3] + 8 * i) = 0;
        v2 = a1[6];
      }
    }
  }

  v5 = a1[5];
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(a1[2] + 8 * j);
      if (v7)
      {
        CFRelease(v7);
        *(a1[2] + 8 * j) = 0;
        v5 = a1[5];
      }
    }
  }

  v8 = a1[3];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[4];
  if (v10)
  {

    free(v10);
  }
}

uint64_t __C3DTriangulationInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTriangulationInfoGetTypeID_typeID = result;
  return result;
}

void *C3DTriangulationInfoCreateFromMeshElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Count = C3DMeshSourceGetCount(a2);
  if (a3)
  {
    v23 = *(a3 + 24);
  }

  else
  {
    v23 = 0;
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a1);
  if (!Count)
  {
    return 0;
  }

  v25 = PrimitiveCount;
  if (C3DTriangulationInfoGetTypeID_onceToken != -1)
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_3();
  }

  Instance = C3DTypeCreateInstance_(C3DTriangulationInfoGetTypeID_typeID, 48);
  Instance[2] = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
  Instance[5] = Count;
  Instance[7] = v25;
  if (v25 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        Index = C3DMeshElementGetIndex(a1, i, j, 0);
        v31 = *(Instance[2] + 8 * Index);
        if (!v31)
        {
          *(Instance[2] + 8 * Index) = C3DIndexSetCreateMutable();
          v31 = *(Instance[2] + 8 * Index);
        }

        C3DIndexSetAddIndex(v31, i, v30);
      }
    }
  }

  if (v23)
  {
    Instance[3] = malloc_type_calloc(8uLL, v23, 0x2004093837F09uLL);
    Instance[6] = v23;
    Instance[4] = malloc_type_calloc(0x18uLL, v25, 0x4935EED9uLL);
    v32 = malloc_type_calloc(1uLL, v25, 0x100004077774924uLL);
    if (v23 >= 1)
    {
      for (k = 0; k != v23; ++k)
      {
        EdgeAtIndex = C3DEdgeArrayGetEdgeAtIndex(a3, k);
        IntersectionOfIndexSets = C3DIndexSetCreateIntersectionOfIndexSets(*(Instance[2] + 8 * *EdgeAtIndex), *(Instance[2] + 8 * EdgeAtIndex[1]));
        *(Instance[3] + 8 * k) = IntersectionOfIndexSets;
        FirstIndex = C3DIndexSetGetFirstIndex(IntersectionOfIndexSets);
        if (FirstIndex != -1)
        {
          for (m = FirstIndex; m != -1; m = C3DIndexSetGetIndexGreaterThanIndex(IntersectionOfIndexSets, m))
          {
            if (v32[m] >= 3u)
            {
              v38 = scn_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                C3DTriangulationInfoCreateFromMeshElement_cold_4(v42, v43, v38);
              }
            }

            v39 = v32[m];
            v40 = Instance[4] + 24 * m;
            v32[m] = v39 + 1;
            *(v40 + 8 * v39) = k;
          }
        }
      }
    }

    free(v32);
  }

  return Instance;
}

uint64_t C3DTriangulationInfoGetEdgesAtFaceIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTriangulationInfoGetEdgesAtFaceIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 32) + 24 * a2;
}

unint64_t SCNMTLRenderPipelineApplyRenderPassDescriptor(uint64_t a1, void *a2)
{
  for (i = 0; i != 8; ++i)
  {
    *(a1 + 8 * i) = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "colorAttachments")];
  }

  *(a1 + 64) = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  *(a1 + 72) = [objc_msgSend(objc_msgSend(a2 "stencilAttachment")];
  *(a1 + 80) = 1;
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "colorAttachments")];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  *(a1 + 80) = v6;
  v7 = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  *(a1 + 80) = v6;
  result = [objc_msgSend(objc_msgSend(a2 "stencilAttachment")];
  v9 = v6;
  if (v6 <= result)
  {
    v9 = result;
  }

  *(a1 + 80) = v9;
  return result;
}

id SCNMTLRenderPipelineDescRetain(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 304);
  v7 = *(a1 + 216);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a1 + 296);
  v9 = *(a1 + 312);
  v10 = *(a1 + 320);
  v11 = *(a1 + 344);

  return v11;
}

void SCNMTLRenderPipelineDescRelease(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 344);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

void _C3DMeshElementEditorCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t __C3DMeshElementEditorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DMeshElementEditorGetTypeID_typeID = result;
  return result;
}

uint64_t C3DMeshElementEditorCreate()
{
  if (C3DMeshElementEditorGetTypeID_onceToken != -1)
  {
    C3DMeshElementEditorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshElementEditorGetTypeID_typeID, 40);
  if (!Instance)
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementEditorCreate_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  return Instance;
}

uint64_t C3DMeshElementEditorCreateWithMeshElementAndCapacity(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTriangulationInfoCreateFromMeshElement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DMeshElementGetType(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementEditorCreateWithMeshElementAndCapacity_cold_2();
    }

    return 0;
  }

  else
  {
    v13 = C3DMeshElementEditorCreate();
    Indexes = C3DMeshElementGetIndexes(a1, (v13 + 40));
    *(v13 + 16) = CFRetain(a1);
    *(v13 + 48) = C3DMeshElementGetPrimitiveCount(a1);
    *(v13 + 32) = CFDataCreateMutableCopy(0, 3 * a2 * *(v13 + 40), Indexes);
  }

  return v13;
}

void _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded(uint64_t a1, unsigned int a2)
{
  v3 = 1;
  if (a2 > 0xFF)
  {
    v3 = 2;
  }

  if (HIWORD(a2))
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (v4 > *(a1 + 40))
  {
    v6 = CFDataGetLength(*(a1 + 32)) / *(a1 + 40);
    v7 = 2;
    if (!HIWORD(a2))
    {
      v7 = a2 > 0xFF;
    }

    v8 = v6 << v7;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v8);
    v10 = *(a1 + 40);
    switch(v10)
    {
      case 4:
        CFDataGetBytePtr(*(a1 + 32));
        v18 = scn_default_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 2:
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        if (a2 >= 0x10000)
        {
          v15 = BytePtr;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v17 = *v15;
              v15 += 2;
              *MutableBytePtr = v17;
              MutableBytePtr += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v20 = scn_default_log();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 1:
        v11 = CFDataGetBytePtr(*(a1 + 32));
        if (v4 == 4)
        {
          v21 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v22 = *v11++;
              *v21 = v22;
              v21 += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        if (v4 == 2)
        {
          v12 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v13 = *v11++;
              *v12 = v13;
              v12 += 2;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v23 = scn_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_32:
        v24 = *(a1 + 32);
        if (v24)
        {
          CFRelease(v24);
        }

        *(a1 + 40) = v4;
        *(a1 + 32) = Mutable;
        return;
      default:
        v19 = scn_default_log();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
    }

    _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded_cold_1();
    goto LABEL_32;
  }
}

uint64_t C3DMeshElementEditorGetIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v7 = *(a1 + 40);
  v8 = (3 * a2 + a3) * v7;
  if (v7 > 3)
  {
    if (v7 == 4 || v7 == 8)
    {
      return *&MutableBytePtr[v8];
    }
  }

  else
  {
    if (v7 == 1)
    {
      return MutableBytePtr[v8];
    }

    if (v7 == 2)
    {
      return *&MutableBytePtr[v8];
    }
  }

  v10 = scn_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementEditorGetIndex_cold_1();
  }

  return -1;
}

void _C3DMeshElementEditorSetIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded(a1, a4);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = (3 * a2 + a3) * v9;
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }

    if (v9 == 8)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }
  }

  else
  {
    if (v9 == 1)
    {
      MutableBytePtr[v10] = a4;
      return;
    }

    if (v9 == 2)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }
  }

  v11 = scn_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementEditorGetIndex_cold_1();
  }
}

void C3DMeshElementEditorSubdivideTriangleAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 48) >= a2)
  {
    Index = C3DMeshElementEditorGetIndex(a1, a2, 1);
    v21 = C3DMeshElementEditorGetIndex(a1, a2, 2);
    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    Length = CFDataGetLength(v23);
    CFDataSetLength(v23, Length + (9 * *(a1 + 40)));
    _C3DMeshElementEditorSetIndex(a1, a2, 1, a4);
    _C3DMeshElementEditorSetIndex(a1, a2, 2, a3);
    _C3DMeshElementEditorSetIndex(a1, v22, 0, a3);
    _C3DMeshElementEditorSetIndex(a1, v22, 1, a5);
    _C3DMeshElementEditorSetIndex(a1, v22, 2, v21);
    _C3DMeshElementEditorSetIndex(a1, v22 + 1, 0, a3);
    _C3DMeshElementEditorSetIndex(a1, v22 + 1, 1, a4);
    _C3DMeshElementEditorSetIndex(a1, v22 + 1, 2, a5);
    _C3DMeshElementEditorSetIndex(a1, v22 + 2, 0, a4);
    _C3DMeshElementEditorSetIndex(a1, v22 + 2, 1, Index);
    _C3DMeshElementEditorSetIndex(a1, v22 + 2, 2, a5);
    *(a1 + 48) += 3;
  }

  else
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_2();
    }
  }
}

uint64_t C3DMeshElementEditorGenerateMeshElement(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v10 = C3DMeshElementCreate();
    DoubleSided = C3DMeshElementGetDoubleSided(*(a1 + 16));
    C3DMeshElementSetDoubleSided(v10, DoubleSided);
    Copy = CFDataCreateCopy(0, *(a1 + 32));
    C3DMeshElementInit(v10, 0, *(a1 + 48), Copy, *(a1 + 40));
    CFRelease(Copy);
    *(a1 + 24) = v10;
  }

  return v10;
}

void SCNCJavaScriptAction::SCNCJavaScriptAction(SCNCJavaScriptAction *this, SCNCAction *a2, NSString *a3)
{
  SCNCAction::SCNCAction(this);
  *v6 = &unk_282DC4E60;
  *(v6 + 24) = a2->var3;
  *(v6 + 56) = a2->var7;
  *(v6 + 40) = *&a2->var5;
  *(v6 + 80) = *&a2->var10;
  *(v6 + 64) = a2->var8;
  *(v6 + 104) = a2->var14;
  *(v6 + 32) = 1;
  if (SCNCJavaScriptAction::SCNCJavaScriptAction(SCNCAction *,NSString *)::onceToken != -1)
  {
    SCNCJavaScriptAction::SCNCJavaScriptAction();
  }

  *(this + 18) = [(NSString *)a3 copy];
}

void ___ZN20SCNCJavaScriptActionC2EP10SCNCActionP8NSString_block_invoke()
{
  v0 = NSClassFromString(&cfstr_Jscontext.isa);
  if (v0)
  {
    v1 = objc_alloc_init(v0);
    _context = v1;

    SCNExportJavaScriptModule(v1);
  }
}

void SCNCJavaScriptAction::~SCNCJavaScriptAction(SCNCAction *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCJavaScriptAction::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v7 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if (this[1].var0)
  {
    v8 = _context == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7 * this->var1;
    v10 = [_context globalObject];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v9), @"elapsedTime"}];
    [v10 setObject:a2 forKeyedSubscript:@"node"];
    [_context setException:0];
    v11 = [_context evaluateScript:this[1].var0];
    if ([_context exception])
    {
      NSLog(&stru_282DCBC18.isa, [v11 toString]);
    }
  }

  v12 = v7;
  if ((COERCE_UNSIGNED_INT(v12 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

BOOL C3DGaussianSolve(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  v8 = a3;
  bzero(a4, 4 * a3);
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 1);
    v14 = 4 * a2;
    v15 = 4 * (a2 - 1) * a2;
    v16 = v15 + 4;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = v19 * a2;
      v22 = v19;
      if (v19 + 1 < a2)
      {
        v23 = v17;
        v22 = v19;
        do
        {
          if (fabsf(*(a1 + 4 * v10 + 4 * v23)) > fabsf(*(a1 + 4 * v21 + 4 * v22)))
          {
            v22 = v23;
          }

          ++v23;
        }

        while (a2 != v23);
      }

      if (v19 != v22 && v19 <= v8)
      {
        v24 = v18 + 4 * v22;
        v25 = v13;
        v26 = a1;
        do
        {
          v27 = *(v26 + v9);
          *(v26 + v9) = *(v26 + v24);
          *(v26 + v24) = v27;
          v26 += v14;
          --v25;
        }

        while (v25);
      }

      v28 = v19 + v12 * a2;
      if (fabsf(*(a1 + 4 * v28)) >= 0.000001)
      {
        if (v20 < a2)
        {
          v29 = a1 + 4 * v21;
          v30 = v16;
          v31 = v17;
          do
          {
            v32 = a1;
            v33 = a2;
            do
            {
              --v33;
              *(v32 + v30) = *(v32 + v30) - ((*(v32 + v15) * *(v29 + 4 * v31)) / *(a1 + 4 * v28));
              v32 -= 4 * a2;
            }

            while (v33 > v19);
            ++v31;
            v30 += 4;
          }

          while (v31 != a2);
        }
      }

      else if (v19 < v8)
      {
        return v11;
      }

      ++v12;
      --v13;
      ++v17;
      v10 += a2;
      v18 += v14;
      v9 += v14 + 4;
      v16 += 4;
      v15 += 4;
      ++v19;
      v11 = v20 >= a2;
    }

    while (v20 != a2);
  }

  if (a3 >= 1)
  {
    v34 = 0;
    v35 = 4 * a2;
    v36 = a1 + (v35 + 4) * v8 - 4;
    v37 = v8;
    do
    {
      v38 = 0.0;
      if (v37 < v8)
      {
        v39 = v36;
        v40 = v34;
        do
        {
          v38 = v38 + (*v39 * *(a4 + v8 + v40));
          v39 = (v39 + v35);
          ++v40;
        }

        while (v40);
      }

      *(a4 + v37 - 1) = (*(a1 + 4 * (a3 * a2) + 4 * (v37 - 1)) - v38) / *(a1 + 4 * ((a2 + 1) * (v37 - 1)));
      --v34;
      v36 += v35 ^ 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v37-- > 1);
  }

  return 1;
}

void C3D::CubeBlurPass::CubeBlurPass(C3D::CubeBlurPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC4F18;
  v6 = *&a4->var0;
  *(v5 + 116) = *&a4->var8;
  *(v5 + 108) = v6;
}

void C3D::CubeBlurPass::setup(C3D::CubeBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 2u);
}

uint64_t C3D::CubeBlurPass::compile(C3D::CubeBlurPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::CubeBlurPass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v5 = C3D::Pass::outputTextureAtIndex(a1, 1u);
  v6 = 0;
  v7 = 1;
  do
  {
    v20 = v7;
    if (v6)
    {
      v8 = C3D::Pass::outputTextureAtIndex(a1, 0);
      v4 = v5;
    }

    else
    {
      v8 = v5;
    }

    result = [v4 textureType];
    v22 = result;
    v10 = *(a1 + 112);
    if (v10 < *(a1 + 116) + v10)
    {
      if (result == 5)
      {
        v11 = 6;
      }

      else
      {
        v11 = 1;
      }

      if (v6)
      {
        v12 = 64;
      }

      else
      {
        v12 = 16;
      }

      v21 = v4;
      do
      {
        v13 = [v4 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:5 slices:v10, 1, 0, 6];
        v14 = 0;
        v23 = 0;
        if (v10)
        {
          v15 = 1;
        }

        else
        {
          v15 = v22 == 5;
        }

        v16 = v15;
        v17 = v8;
        do
        {
          v18 = [(SCNMTLOpenSubdivComputeEvaluator *)*(*(a1 + 120) + v12 + 8 * v14) computeEvaluator];
          if (v3->_computePipelineState != v18)
          {
            v3->_computePipelineState = v18;
            [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v18];
          }

          if (v16)
          {
            v19 = [(MTLTexture *)v8 pixelFormat];
            v17 = [(MTLTexture *)v8 newTextureViewWithPixelFormat:v19 textureType:2 levels:v10 slices:1, v23, 1];
          }

          SCNMTLComputeCommandEncoder::setBytes(v3, &v23, 2uLL, 0);
          if (v3->_textures[0] != v17)
          {
            v3->_textures[0] = v17;
            v3->_texturesToBind[0] |= 1uLL;
          }

          if (v3->_textures[1] != v13)
          {
            v3->_textures[1] = v13;
            v3->_texturesToBind[0] |= 2uLL;
          }

          result = SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v17 width], [(MTLTexture *)v17 height]);
          v14 = v23 + 1;
          v23 = v14;
        }

        while (v11 > v14);
        ++v10;
        v4 = v21;
      }

      while (v10 < (*(a1 + 116) + *(a1 + 112)));
    }

    v7 = 0;
    v6 = 1;
    v5 = v8;
  }

  while ((v20 & 1) != 0);
  return result;
}

void C3D::CubeBlurPass::Resource::~Resource(C3D::CubeBlurPass::Resource *this)
{
  *this = &unk_282DC4F88;
  for (i = 104; i != 56; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {
    }
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
    }

    i -= 8;
  }

  while (i != 8);
}

{
  *this = &unk_282DC4F88;
  v2 = 104;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
    }

    v2 -= 8;
    if (v2 == 56)
    {
      while (1)
      {
        v4 = *(this + v2);
        if (v4)
        {
        }

        v2 -= 8;
        if (v2 == 8)
        {

          JUMPOUT(0x21CF07610);
        }
      }
    }
  }
}

double __sortOmniLightsOnZAxis(uint64_t a1, __n128 *a2, void *a3, void *a4, __n128 *a5, int a6, double result)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v12 = MEMORY[0x28223BE20](a1);
    v16 = v35 - v15;
    if (v17 >= 1)
    {
      v18.i64[0] = 0x8000000080000000;
      v18.i64[1] = 0x8000000080000000;
      v19 = v13;
      v20 = a2;
      v21 = v16;
      do
      {
        v22 = *v20++;
        v23 = v22;
        v24 = vmulq_f32(v14, v22);
        *v24.i32 = v14.f32[3] + (*&v24.i32[2] + vaddv_f32(*v24.i8));
        *v23.i32 = fmaxf(fabsf(*v24.i32) - v22.f32[3], 0.0);
        *v21++ = vbslq_s8(v18, v23, v24).u32[0];
        --v19;
      }

      while (v19);
    }

    MEMORY[0x28223BE20](v12);
    v27 = (v35 - v26);
    v28 = 0;
    v29 = (v35 + 2 * a6 - v26);
    v30 = vdupq_n_s64((a6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v31 = (&v35[1] - v26);
    do
    {
      v32 = vdupq_n_s64(v28);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v33, *v30.i8), *v30.i8).u8[0])
      {
        *(v31 - 4) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(v33, *&v30), *&v30).i8[1])
      {
        *(v31 - 3) = v28 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C27F630)))), *&v30).i8[2])
      {
        *(v31 - 2) = v28 | 2;
        *(v31 - 1) = v28 | 3;
      }

      v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i32[1])
      {
        *v31 = v28 | 4;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i8[5])
      {
        v31[1] = v28 | 5;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C2A1A00))))).i8[6])
      {
        v31[2] = v28 | 6;
        v31[3] = v28 | 7;
      }

      v28 += 8;
      v31 += 8;
    }

    while (((a6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a6 - 1) & 7) + 8 != v28);
    v35[0] = v25;
    std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v27, v29, v35, 126 - 2 * __clz(a6), 1);
    reorder<__C3DNode *>(a3, v27, a6);
    reorder<__C3DNode *>(a4, v27, a6);
    reorder<scn_sphere>(a2, v27, a6);
    *&result = reorder<scn_sphere>(a5, v27, a6).n128_u64[0];
  }

  return result;
}

void *reorder<__C3DNode *>(void *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v9 = v13 - v8;
  if (v7 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v7;
  }

  bzero(v13 - v8, v10);
  result = memcpy(v9, v5, 8 * a3);
  if (a3 >= 1)
  {
    do
    {
      v12 = *a2++;
      *v5++ = *&v9[8 * v12];
      --v6;
    }

    while (v6);
  }

  return result;
}

__n128 reorder<scn_sphere>(__n128 *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v7 = &v10[-2 * v6];
  memcpy(v7, v5, 16 * a3);
  if (a3 >= 1)
  {
    do
    {
      v9 = *a2++;
      result = *&v7[2 * v9];
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

double __sortSpotLightsOnZAxis(uint64_t a1, float32x4_t *a2, void *a3, void *a4, int a5, double result)
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = MEMORY[0x28223BE20](a1);
    v15 = (v52 - v14);
    if (v16 >= 1)
    {
      v17 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v18 = vnegq_f32(v12);
      v19 = vdup_laneq_s32(v12, 3);
      v20 = a2 + 2;
      v21 = v11;
      v22 = v15;
      do
      {
        v23 = v20[-2];
        v24 = v20[-1];
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v26 = vmlaq_f32(vmulq_f32(v25, v18), v24, v17);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = v20->f32[0];
        v13.i32[0] = v20->i32[1];
        v20 += 3;
        v29 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v27)), v24, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
        v30 = vmulq_f32(v12, v23);
        v31 = vuzp1q_s32(v29, v29);
        v32 = vmulq_f32(v29, v29);
        v33 = vextq_s8(v31, v29, 0xCuLL);
        *v31.i32 = v32.f32[1] + (v32.f32[2] + v32.f32[0]);
        v34 = vdupq_lane_s32(*v31.i8, 0);
        v35 = vrsqrteq_f32(v34);
        v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
        v37 = *v31.i32 != 0.0;
        v38 = vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)));
        v39 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37)), 0x1FuLL));
        v39.i32[3] = 0;
        v40 = vmulq_f32(v12, vmlsq_lane_f32(vmlaq_n_f32(v23, v24, v28), vbslq_s8(vcltzq_s32(v39), vmulq_f32(v38, v33), v33), v13, 0));
        *v40.i8 = vadd_f32(v19, vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v40, v40, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v40.i8), vzip2_s32(*v30.i8, *v40.i8))));
        v33.f32[0] = vmuls_lane_f32(*v40.i32, *v40.i8, 1);
        v41 = fminf(*v40.i32, *&v40.i32[1]);
        if (v33.f32[0] < 0.0)
        {
          v41 = 0.0;
        }

        *v22++ = v41;
        --v21;
      }

      while (v21);
    }

    MEMORY[0x28223BE20](v10);
    v44 = (v52 - v43);
    v45 = 0;
    v46 = (v52 + 2 * a5 - v43);
    v47 = vdupq_n_s64((a5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v48 = (&v52[1] - v43);
    do
    {
      v49 = vdupq_n_s64(v45);
      v50 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v50, *v47.i8), *v47.i8).u8[0])
      {
        *(v48 - 4) = v45;
      }

      if (vuzp1_s8(vuzp1_s16(v50, *&v47), *&v47).i8[1])
      {
        *(v48 - 3) = v45 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C27F630)))), *&v47).i8[2])
      {
        *(v48 - 2) = v45 | 2;
        *(v48 - 1) = v45 | 3;
      }

      v51 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i32[1])
      {
        *v48 = v45 | 4;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i8[5])
      {
        v48[1] = v45 | 5;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C2A1A00))))).i8[6])
      {
        v48[2] = v45 | 6;
        v48[3] = v45 | 7;
      }

      v45 += 8;
      v48 += 8;
    }

    while (((a5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a5 - 1) & 7) + 8 != v45);
    v52[0] = v42;
    std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v44, v46, v52, 126 - 2 * __clz(a5), 1);
    reorder<__C3DNode *>(a3, v44, a5);
    reorder<__C3DNode *>(a4, v44, a5);
    *&result = reorder<scn_cone>(a2, v44, a5).n128_u64[0];
  }

  return result;
}

__n128 reorder<scn_cone>(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 48 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[6 * v11];
      v13 = *(v12 + 1);
      *v5 = *v12;
      v5[1] = v13;
      result = *(v12 + 2);
      v5[2] = result;
      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

double __sortProbesByVolume(float32x4_t *a1, void *a2, void *a3, int a4, double result)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = MEMORY[0x28223BE20](a1);
    v12 = (v28 - v11);
    if (v13 >= 1)
    {
      v14 = a1 + 4;
      v15 = v10;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 5;
        *v16++ = vmuls_lane_f32(vmuls_lane_f32(v17.f32[0], *v17.f32, 1), v17, 2) * 8.0;
        --v15;
      }

      while (v15);
    }

    MEMORY[0x28223BE20](v9);
    v20 = (v28 - v19);
    v21 = 0;
    v22 = (v28 + 2 * a4 - v19);
    v23 = vdupq_n_s64((a4 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v24 = (&v28[1] - v19);
    do
    {
      v25 = vdupq_n_s64(v21);
      v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v26, *v23.i8), *v23.i8).u8[0])
      {
        *(v24 - 4) = v21;
      }

      if (vuzp1_s8(vuzp1_s16(v26, *&v23), *&v23).i8[1])
      {
        *(v24 - 3) = v21 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C27F630)))), *&v23).i8[2])
      {
        *(v24 - 2) = v21 | 2;
        *(v24 - 1) = v21 | 3;
      }

      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i32[1])
      {
        *v24 = v21 | 4;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i8[5])
      {
        v24[1] = v21 | 5;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C2A1A00))))).i8[6])
      {
        v24[2] = v21 | 6;
        v24[3] = v21 | 7;
      }

      v21 += 8;
      v24 += 8;
    }

    while (((a4 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((a4 - 1) & 7) + 8 != v21);
    v28[0] = v18;
    std::__introsort<std::_ClassicAlgPolicy,__VolumeComp &,short *,false>(v20, v22, v28, 126 - 2 * __clz(a4), 1);
    reorder<__C3DNode *>(a2, v20, a4);
    reorder<__C3DNode *>(a3, v20, a4);
    *&result = reorder<scn_obb>(a1, v20, a4).n128_u64[0];
  }

  return result;
}

__n128 reorder<scn_obb>(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 80 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[10 * v11];
      v13 = *(v12 + 3);
      v5[2] = *(v12 + 2);
      v5[3] = v13;
      v5[4] = *(v12 + 4);
      result = *(v12 + 1);
      *v5 = *v12;
      v5[1] = result;
      v5 += 5;
      --v6;
    }

    while (v6);
  }

  return result;
}

void _addLightsInFrustum(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v243 = v1;
  v3 = v2;
  v5 = v4;
  v331 = *MEMORY[0x277D85DE8];
  v7 = v6[1];
  v249 = *v6;
  v8 = v6[2];
  v205 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  Scene = C3DEngineContextGetScene(v7);
  memset(v330, 0, 512);
  memset(v329, 0, 512);
  v308 = 0;
  v309 = &v308;
  v310 = 0x2020000000;
  v311 = 0;
  v307[0] = MEMORY[0x277D85DD0];
  v307[1] = 3221225472;
  v307[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke;
  v307[3] = &unk_2782FE0D8;
  v307[4] = &v308;
  v307[5] = v329;
  v307[6] = v330;
  v214 = v7;
  C3DLightingSystemEnumerateGlobalLights(v8, v7, v307);
  v12 = *(v309 + 6);
  v295[0] = MEMORY[0x277D85DD0];
  v295[1] = 3221225472;
  v295[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_2;
  v295[3] = &unk_2782FE100;
  v13 = v5[3];
  v298 = v5[2];
  v299 = v13;
  v14 = v5[5];
  v300 = v5[4];
  v301 = v14;
  v15 = v5[1];
  v296 = *v5;
  v297 = v15;
  v302 = &v308;
  v216 = v9;
  v303 = v9;
  v306 = v12;
  v304 = v329;
  v305 = v330;
  C3DLightingSystemEnumerateLocalOmnis(v8, v295);
  v217 = v8;
  if (Scene)
  {
    ParticleManager = C3DSceneGetParticleManager(Scene, 0);
    if (ParticleManager)
    {
      v282[0] = MEMORY[0x277D85DD0];
      v282[1] = 3221225472;
      v282[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_3;
      v282[3] = &unk_2782FE128;
      v17 = v5[3];
      v285 = v5[2];
      v286 = v17;
      v18 = v5[5];
      v287 = v5[4];
      v288 = v18;
      v19 = v5[1];
      v283 = *v5;
      v284 = v19;
      v289 = &v308;
      v290 = v9;
      v294 = v12;
      v291 = v328;
      v292 = v329;
      v293 = v330;
      C3DParticleManagerEnumerateInstancesWithLightEmission(ParticleManager, v282);
    }
  }

  LODWORD(v20) = v12;
  HIDWORD(v20) = *(v309 + 6) - v12;
  v243[5].i64[1] = v20;
  C3DEngineContextGetAuthoringEnvironment(v214, 0);
  v21 = v5[3];
  v324 = v5[2];
  v325 = v21;
  v22 = v5[5];
  v326 = v5[4];
  v327 = v22;
  v23 = v5[1];
  v322 = *v5;
  v323 = v23;
  __sortOmniLightsOnZAxis(&v322, v9, v330 + v12, v329 + v12, &v328[v12], v243[5].i16[6], *&v322);
  v24 = *(v309 + 6);
  v270[0] = MEMORY[0x277D85DD0];
  v270[1] = 3221225472;
  v270[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_4;
  v270[3] = &unk_2782FE150;
  v25 = v5[3];
  v273 = v5[2];
  v274 = v25;
  v26 = v5[5];
  v275 = v5[4];
  v276 = v26;
  v27 = v5[1];
  v271 = *v5;
  v272 = v27;
  v277 = &v308;
  v278 = v10;
  v281 = v24;
  v279 = v329;
  v280 = v330;
  C3DLightingSystemEnumerateSpots(v8, v270);
  v28 = *(v309 + 6) - v24;
  v243[6].i64[0] = __PAIR64__(v28, v24);
  v29 = v5[3];
  v324 = v5[2];
  v325 = v29;
  v30 = v5[5];
  v326 = v5[4];
  v327 = v30;
  v31 = v5[1];
  v322 = *v5;
  v323 = v31;
  __sortSpotLightsOnZAxis(&v322, v10, v330 + v24, v329 + v24, v28, *&v322);
  v32 = *(v309 + 6);
  v258[0] = MEMORY[0x277D85DD0];
  v258[1] = 3221225472;
  v258[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5;
  v258[3] = &unk_2782FE178;
  v33 = v5[3];
  v261 = v5[2];
  v262 = v33;
  v34 = v5[5];
  v263 = v5[4];
  v264 = v34;
  v35 = v5[1];
  v259 = *v5;
  v260 = v35;
  v266 = v11;
  v265 = &v308;
  v269 = v32;
  v267 = v329;
  v268 = v330;
  C3DLightingSystemEnumerateRadianceProbes(v8, v258);
  v36 = *(v309 + 6) - v32;
  v243[6].i64[1] = __PAIR64__(v36, v32);
  __sortProbesByVolume(v11, v330 + v32, v329 + v32, v36, COERCE_DOUBLE(__PAIR64__(v36, v32)));
  RenderContext = C3DEngineContextGetRenderContext(v214);
  v213 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v210 = RenderContext;
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v214);
  v246 = v3;
  if (v3)
  {
    v38 = v249 + 193;
    v39 = v321;
    v40 = &v322;
    v41 = v320;
    v42 = v3;
    do
    {
      v43 = v38[1];
      *v40 = *v38;
      v40[1] = v43;
      v44 = v38[3];
      v40[2] = v38[2];
      v40[3] = v44;
      v332 = *v40->i8;
      v244 = v332.columns[1];
      v247 = v332.columns[2];
      v250 = *v40;
      v333 = __invert_f4(*v40->f32);
      v45 = v244;
      v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v247, v247), v247, 0xCuLL), vnegq_f32(v244)), v247, vextq_s8(vuzp1q_s32(v45, v45), v244, 0xCuLL));
      v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
      v48 = vmulq_f32(v250, v250);
      v49 = vmulq_f32(v45, v45);
      v50 = vmulq_f32(v250, v47);
      v51 = vadd_f32(vzip1_s32(*v48.i8, *v49.i8), vzip2_s32(*v48.i8, *v49.i8));
      v52 = vextq_s8(v48, v48, 8uLL);
      *v52.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v52.f32, *&vextq_s8(v49, v49, 8uLL)), v51));
      _NF = (v50.f32[2] + vaddv_f32(*v50.f32)) < 0.0;
      v54 = vmulq_f32(v247, v247);
      v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
      if (_NF)
      {
        v56 = -1.0;
      }

      else
      {
        v56 = 1.0;
      }

      v52.f32[2] = v55;
      v57 = vabsq_f32(vmulq_n_f32(v52, v56));
      *v41++ = fmaxf(fmaxf(v57.f32[0], v57.f32[2]), v57.f32[1]);
      *(v39 - 32) = v333;
      v39 += 64;
      v38 += 4;
      v40 += 4;
      --v42;
    }

    while (v42);
  }

  v58 = *(v309 + 6);
  if (v58 <= 1)
  {
    v58 = 1;
  }

  v243[8].i32[2] = v58;
  SCNMTLBufferPool::allocate(v205, (v3 * v58) << 8, v256);
  v243[7] = v256[0].columns[0];
  v243[8].i64[0] = v256[0].columns[1].i64[0];
  v59 = v309;
  if (!*(v309 + 6))
  {
    goto LABEL_116;
  }

  v60 = 0;
  v61 = 0;
  v211 = v243 + 17;
  v212 = v243 + 13;
  v242 = v243[7].i64[0];
  __asm { FMOV            V0.4S, #1.0 }

  v215 = DWORD2(_Q0);
  v207 = v12;
  v206 = v3;
  do
  {
    if (!v3)
    {
      goto LABEL_115;
    }

    v65 = 0;
    v245 = v61 * v246;
    v248 = v61;
    v218 = v61 - v12;
    v208 = v60;
    do
    {
      v66 = *(v329 + v248);
      v251 = *(v330 + v248);
      v67 = v242 + ((v245 + v65) << 8);
      v68 = v243[6].i64[1];
      if (v248 >= v68 && v248 < (v68 + HIDWORD(v243[6].i64[1])))
      {
        *(v67 + 52) = 4;
        if (v66)
        {
          if (C3DLightGetType(v66) != 4)
          {
            v99 = scn_default_log();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
            {
              _addLightsInFrustum(v318, &v319, v99);
            }
          }

          ProbeEnvironment = C3DLightGetProbeEnvironment(v66, 0);
          if (ProbeEnvironment)
          {
            Intensity = C3DEffectSlotGetIntensity(ProbeEnvironment);
          }

          else
          {
            Intensity = 1.0;
          }

          *v67 = (Intensity * C3DLightGetIntensity(v66)) / 1000.0;
          RadianceProbeIndex = C3DLightGetRadianceProbeIndex(v66);
          *(v67 + 128) = RadianceProbeIndex;
          if (RadianceProbeIndex < 0)
          {
            v105 = scn_default_log();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
            {
              _addLightsInFrustum(v316, &v317, v105);
            }
          }

          *(v67 + 64) = C3DLightGetProbeOffset(v66);
          ProbeExtents = C3DLightGetProbeExtents(v66);
          v107.i64[0] = 0x3F0000003F000000;
          v107.i64[1] = 0x3F0000003F000000;
          v240 = vmulq_f32(ProbeExtents, v107);
          v108 = v240;
          v108.f32[3] = fmaxf(fmaxf(v240.f32[0], v240.f32[2]), v240.f32[1]) * 0.1;
          *(v67 + 80) = v108;
          *(v67 + 132) = C3DLightGetParallaxCorrectionEnabled(v66);
          v109 = vmulq_f32(v240, C3DLightGetParallaxCenterOffset(v66));
          *(v67 + 104) = v109.i32[2];
          *(v67 + 96) = v109.i64[0];
          v110 = vmulq_f32(v240, C3DLightGetParallaxExtentsFactor(v66));
          *(v67 + 120) = v110.i32[2];
          *(v67 + 112) = v110.i64[0];
          WorldMatrix = C3DNodeGetWorldMatrix(v251);
          v234 = WorldMatrix[1];
          v237 = *WorldMatrix;
          v230 = WorldMatrix[3];
          v232 = WorldMatrix[2];
          *(v67 + 16) = v230;
          v112 = (&v322 + 4 * v65);
          v252 = *v112;
          v239 = v112[2];
          v241 = v112[1];
          v238 = v112[3];
          v113 = C3DSceneComputeWorldToCubemapMatrix(Scene);
          v220 = v115;
          v222 = v114;
          v225 = v116;
          v229 = v113;
          v117 = 0;
          v313.columns[0] = v237;
          v313.columns[1] = v234;
          v313.columns[2] = v232;
          v313.columns[3] = v230;
          do
          {
            v256[0].columns[v117] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v252, COERCE_FLOAT(*&v313.columns[v117])), v241, *v313.columns[v117].f32, 1), v239, v313.columns[v117], 2), v238, v313.columns[v117], 3);
            ++v117;
          }

          while (v117 != 4);
          v334 = __invert_f4(v256[0]);
          v118 = 0;
          v313 = v334;
          do
          {
            v256[0].columns[v118] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v229, COERCE_FLOAT(*&v313.columns[v118])), v225, *v313.columns[v118].f32, 1), v222, v313.columns[v118], 2), v220, v313.columns[v118], 3);
            ++v118;
          }

          while (v118 != 4);
          v236 = v256[0];
        }

        *(v67 + 192) = v236.columns[0];
        *(v67 + 208) = v236.columns[1];
        *(v67 + 224) = v236.columns[2];
        *(v67 + 240) = v236.columns[3];
        goto LABEL_113;
      }

      if (!v66)
      {
        *v67 = v328[v248];
        v102 = v216[v218];
        *(v67 + 16) = vaddq_f32(*(&v325 + 4 * v65), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(&v322 + 4 * v65), v102.f32[0]), *(&v322 + 4 * v65 + 1), *v102.f32, 1), *(&v324 + 4 * v65), v102, 2));
        v102.i32[0] = v102.i32[3];
        if (v102.f32[3] <= 0.01)
        {
          v102.f32[0] = INFINITY;
        }

        DWORD2(v103) = v215;
        *&v103 = -1.0 / v102.f32[3];
        *(&v103 + 1) = ((-1.0 / v102.f32[3]) * -0.0) + 1.0;
        *(&v103 + 3) = 1.0 / (v102.f32[0] * v102.f32[0]);
        *(v67 + 64) = v103;
        goto LABEL_113;
      }

      Type = C3DLightGetType(v66);
      C3DLightGetColorModulatedByIntensity(v66, v71, v72, v73, v74, v75, v76, v77);
      *&v79 = v78;
      DWORD2(v79) = v80;
      HIDWORD(v79) = *(v67 + 12);
      *v67 = v79;
      C3DLightGetShadowColor(v66);
      v82 = *v67;
      HIDWORD(v82) = vdupq_n_s64(v81).i32[3];
      *v67 = v82;
      v83 = C3DNodeGetWorldMatrix(v251);
      v84 = 0;
      v85 = v83[1];
      v86 = v83[2];
      v87 = v83[3];
      v88 = (&v322 + 4 * v65);
      v89 = *v88;
      v90 = v88[1];
      v91 = v88[2];
      v92 = v88[3];
      v93 = v242 + 128 + (v60 << 8);
      v313.columns[0] = *v83;
      v313.columns[1] = v85;
      v313.columns[2] = v86;
      v313.columns[3] = v87;
      do
      {
        v256[0].columns[v84] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*&v313.columns[v84])), v90, *v313.columns[v84].f32, 1), v91, v313.columns[v84], 2), v92, v313.columns[v84], 3);
        ++v84;
      }

      while (v84 != 4);
      v228 = v256[0];
      v94 = vmulq_f32(v256[0].columns[2], v256[0].columns[2]);
      *&v95 = v94.f32[2] + vaddv_f32(*v94.f32);
      *v94.f32 = vrsqrte_f32(v95);
      *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32)));
      v96 = vmulq_n_f32(v256[0].columns[2], vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
      *(v67 + 16) = v256[0].columns[3];
      *(v67 + 32) = v96;
      *&v97 = C3DLightComputeDistanceAttenuations(v66, 1, *&v320[v65]);
      *(v67 + 64) = v97;
      if (Type != 6)
      {
        if (Type == 3)
        {
          C3DLightComputeSpotAttenuations(v66);
          *(v67 + 80) = v98;
        }

        goto LABEL_57;
      }

      v119 = *(v66 + 256);
      if (v119 > 1)
      {
        if (v119 != 2)
        {
          if (v119 == 3)
          {
            *(v67 + 64) = *(v66 + 272);
          }

          else if (v119 == 4)
          {
            *(v67 + 68) = (*(v66 + 240) & 1);
            *(v67 + 64) = *(v66 + 272);
          }

          goto LABEL_56;
        }

LABEL_53:
        *(v67 + 72) = (*(v66 + 240) & 1);
        *(v67 + 64) = *(v66 + 272);
        goto LABEL_56;
      }

      if (!*(v66 + 256))
      {
        *(v67 + 64) = *(v66 + 272);
        goto LABEL_56;
      }

      if (v119 == 1)
      {
        goto LABEL_53;
      }

LABEL_56:
      *(v67 + 192) = v228;
LABEL_57:
      *(v67 + 52) = Type;
      *(v67 + 53) = C3DLightGetDistanceAttenuationType(v66);
      *(v67 + 54) = C3DLightGetEffectiveShadowSampleCount(v66);
      if (v248 > 7)
      {
        goto LABEL_113;
      }

      if (C3DLightGetCastsShadow(v66) && C3DLightTypeSupportsShadow(v66))
      {
        v120 = C3DLightGetUsesDeferredShadows(v66) ^ 1;
      }

      else
      {
        v120 = 0;
      }

      HasValidGobo = C3DLightHasValidGobo(v66);
      HasValidIES = C3DLightHasValidIES(v66);
      if (v120)
      {
        ShadowMapNameForNode = C3DLightingSystemGetShadowMapNameForNode(v217, v251);
        if (!ShadowMapNameForNode)
        {
          v122 = scn_default_log();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
          {
            _addLightsInFrustum(v314, &v315, v122);
          }
        }

        v243[9].i64[v248] = C3DEngineContextGetTextureWithName(v214, ShadowMapNameForNode);
        ActiveShadowCasterIndex = C3DLightingSystemGetActiveShadowCasterIndex(v217, v251);
        if (ActiveShadowCasterIndex)
        {
          ActiveShadowCasterData = C3DLightingSystemGetActiveShadowCasterData(v217, ActiveShadowCasterIndex);
          v132 = ActiveShadowCasterData;
          v133 = *(ActiveShadowCasterData + 64);
          v134 = *(ActiveShadowCasterData + 80);
          v135 = *(ActiveShadowCasterData + 96);
          v136 = *(ActiveShadowCasterData + 112);
          if (Type == 2)
          {
            v137 = 0;
            v138 = &v320[16 * v65 + 6];
            v139 = v138[1];
            v140 = v138[2];
            v141 = v138[3];
            v313.columns[0] = *v138;
            v313.columns[1] = v139;
            v313.columns[2] = v140;
            v313.columns[3] = v141;
            do
            {
              v256[0].columns[v137] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*&v313.columns[v137])), v134, *v313.columns[v137].f32, 1), v135, v313.columns[v137], 2), v136, v313.columns[v137], 3);
              ++v137;
            }

            while (v137 != 4);
            v142 = 0;
            v143 = v256[0].columns[0];
            v144 = v256[0].columns[1];
            v145 = v256[0].columns[2];
            v146 = v256[0].columns[3];
            *(v67 + 192) = v256[0].columns[0];
            *(v67 + 208) = v144;
            *(v67 + 224) = v145;
            *(v67 + 240) = v146;
            v313.columns[0] = v143;
            v313.columns[1] = v144;
            v313.columns[2] = v145;
            v313.columns[3] = v146;
            do
            {
              v256[0].columns[v142] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*&v313.columns[v142])), xmmword_21C27F8C0, *v313.columns[v142].f32, 1), xmmword_21C27F900, v313.columns[v142], 2), xmmword_21C27F610, v313.columns[v142], 3);
              ++v142;
            }

            while (v142 != 4);
            v147 = v256[0].columns[1];
            v148 = v256[0].columns[2];
            v149 = v256[0].columns[3];
            *(v67 + 192) = v256[0].columns[0];
            *(v67 + 208) = v147;
            *(v67 + 224) = v148;
            *(v67 + 240) = v149;
            *(v67 + 80) = *(ActiveShadowCasterData + 192);
          }

          else
          {
            *&v150 = _computeShadowMatrix(CoordinatesSystemOptions, v133, v134, v135, v136, *(ActiveShadowCasterData + 128), *(ActiveShadowCasterData + 144), *(ActiveShadowCasterData + 160), *(ActiveShadowCasterData + 176), v125, v126, v127, v128, v129, v130, v131, *&v320[16 * v65 + 6], *&v320[16 * v65 + 10], *&v320[16 * v65 + 14], *&v321[64 * v65 + 16]);
            *(v67 + 192) = v150;
            *(v67 + 208) = v151;
            *(v67 + 224) = v152;
            *(v67 + 240) = v153;
            if (Type == 1)
            {
              ShadowCascadeCount = C3DLightGetShadowCascadeCount(v66);
              if (ShadowCascadeCount)
              {
                v155 = ShadowCascadeCount;
                v156 = (v132 + 208);
                do
                {
                  v157 = *(v156 - 1);
                  HIDWORD(v157) = *(v93 - 52);
                  *(v93 - 64) = v157;
                  v158 = *v156;
                  HIDWORD(v158) = *(v93 + 12);
                  *v93 = v158;
                  v93 += 16;
                  v156 += 24;
                  --v155;
                }

                while (v155);
              }
            }
          }
        }

        if (*(v67 + 54) >= 2u)
        {
          RealShadowMapSize = C3DLightGetRealShadowMapSize(v66);
          ShadowRadius = C3DLightGetShadowRadius(v66);
          v160 = RealShadowMapSize.i32[1];
          if (*RealShadowMapSize.i32 >= *&RealShadowMapSize.i32[1])
          {
            v160 = RealShadowMapSize.i32[0];
          }

          *(v67 + 48) = ShadowRadius / fmaxf(*&v160, 1.0);
        }

        ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(v66);
        if (ShadowCascadeDebugFactor != 0.0)
        {
          *(v67 + 12) = ShadowCascadeDebugFactor;
        }
      }

      if (HasValidIES)
      {
        *v162.i32 = (180.0 / C3DLightGetIESSpotAngle(v66)) * 0.5;
        *(v67 + 80) = vdup_lane_s32(v162, 0);
        v164 = __invert_f4(v228);
        v163 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v164.columns[2], v164.columns[2]), v164.columns[2], 0xCuLL), vnegq_f32(v164.columns[1])), v164.columns[2], vextq_s8(vuzp1q_s32(v164.columns[1], v164.columns[1]), v164.columns[1], 0xCuLL));
        v164.columns[3] = vmulq_f32(v164.columns[0], vextq_s8(vuzp1q_s32(v163, v163), v163, 0xCuLL));
        *v163.i32 = vaddv_f32(*v164.columns[3].f32);
        v164.columns[3].i32[0] = 1.0;
        if ((v164.columns[3].f32[2] + *v163.i32) < 0.0)
        {
          v164.columns[3].f32[0] = -1.0;
        }

        v165 = vmulq_f32(v164.columns[0], v164.columns[0]);
        v166 = vmulq_f32(v164.columns[1], v164.columns[1]);
        v167 = vadd_f32(vzip1_s32(*v165.i8, *v166.i8), vzip2_s32(*v165.i8, *v166.i8));
        v168 = vextq_s8(v165, v165, 8uLL);
        *v168.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v168.f32, *&vextq_s8(v166, v166, 8uLL)), v167));
        v169 = vmulq_f32(v164.columns[2], v164.columns[2]);
        v168.i32[2] = sqrtf(v169.f32[2] + vaddv_f32(*v169.f32));
        v170 = vmulq_n_f32(v168, v164.columns[3].f32[0]);
        v171 = vceqzq_f32(v170);
        v171.i32[3] = v171.i32[2];
        if ((vmaxvq_u32(v171) & 0x80000000) != 0 || (v172 = vmvnq_s8(vorrq_s8(vcltzq_f32(v170), vcgezq_f32(v170))), v172.i32[3] = v172.i32[2], (vmaxvq_u32(v172) & 0x80000000) != 0))
        {
          v164.columns[0] = *(MEMORY[0x277D860B8] + 48);
        }

        else
        {
          v164.columns[3] = vdivq_f32(v164.columns[0], vdupq_lane_s32(*v170.f32, 0));
          v164.columns[0] = vdivq_f32(v164.columns[1], vdupq_lane_s32(*v170.f32, 1));
          v164.columns[1] = vdivq_f32(v164.columns[2], vdupq_laneq_s32(v170, 2));
          v173 = v164.columns[1].f32[2] + (v164.columns[3].f32[0] + v164.columns[0].f32[1]);
          if (v173 > 0.0)
          {
            *v164.columns[1].f32 = vsub_f32(*&vzip2q_s32(v164.columns[0], vuzp1q_s32(v164.columns[0], v164.columns[1])), *&vtrn2q_s32(v164.columns[1], vzip2q_s32(v164.columns[1], v164.columns[3])));
            v164.columns[1].f32[2] = v164.columns[3].f32[1] - v164.columns[0].f32[0];
            v164.columns[2].f32[0] = v173 + 1.0;
            v164.columns[1].f32[3] = v173 + 1.0;
            goto LABEL_111;
          }

          if (v164.columns[3].f32[0] > v164.columns[0].f32[1] && v164.columns[3].f32[0] > v164.columns[1].f32[2])
          {
            v164.columns[2].f32[0] = ((v164.columns[3].f32[0] + 1.0) - v164.columns[0].f32[1]) - v164.columns[1].f32[2];
            *&v196 = v164.columns[0].f32[0] + v164.columns[3].f32[1];
            v164.columns[3].f32[0] = v164.columns[1].f32[0] + v164.columns[3].f32[2];
            v164.columns[0].f32[0] = v164.columns[0].f32[2] - v164.columns[1].f32[1];
            v164.columns[1].i64[0] = __PAIR64__(v196, v164.columns[2].u32[0]);
            v164.columns[1].i32[2] = v164.columns[3].i32[0];
            goto LABEL_110;
          }

          if (v164.columns[0].f32[1] <= v164.columns[1].f32[2])
          {
            *v164.columns[1].f32 = vadd_f32(*v164.columns[1].f32, *&vzip2q_s32(v164.columns[3], v164.columns[0]));
            v164.columns[2].f32[0] = ((v164.columns[1].f32[2] + 1.0) - v164.columns[3].f32[0]) - v164.columns[0].f32[1];
            v164.columns[1].f32[2] = v164.columns[2].f32[0];
            v164.columns[0].f32[0] = v164.columns[3].f32[1] - v164.columns[0].f32[0];
LABEL_110:
            v164.columns[1].i32[3] = v164.columns[0].i32[0];
          }

          else
          {
            v195 = v164.columns[0];
            v195.f32[1] = (v164.columns[0].f32[1] + 1.0) - v164.columns[3].f32[0];
            v195.i32[3] = v164.columns[1].i32[0];
            v164.columns[1] = vzip2q_s32(vzip1q_s32(v164.columns[3], v164.columns[1]), vtrn1q_s32(v164.columns[1], v164.columns[3]));
            v164.columns[2] = vsubq_f32(v195, v164.columns[1]);
            v164.columns[0] = vrev64q_s32(vaddq_f32(v164.columns[0], v164.columns[1]));
            v164.columns[1] = vtrn2q_s32(v164.columns[0], v164.columns[2]);
            v164.columns[2].i32[0] = v164.columns[2].i32[1];
          }

LABEL_111:
          v164.columns[0].i32[0] = 0;
          v164.columns[1] = vmulq_n_f32(v164.columns[1], 0.5 / sqrtf(v164.columns[2].f32[0]));
          v164.columns[2] = vmvnq_s8(vceqq_f32(v164.columns[1], v164.columns[1]));
          v164.columns[2].i32[0] = vmaxvq_u32(v164.columns[2]);
          v164.columns[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v164.columns[0], v164.columns[2]), 0), *(MEMORY[0x277D860B8] + 48), v164.columns[1]);
        }

        *(v67 + 96) = v164.columns[0];
        v212->i64[v248] = [v213 iesTextureForProfile:C3DLightGetIESProfileURL(v66) renderContext:v210];
        v211->i64[v248] = 0;
        goto LABEL_113;
      }

      if (HasValidGobo)
      {
        v257 = 0;
        v212->i64[v248] = C3DEngineContextGetTextureForEffectSlot(v214, *(v66 + 200), &v257);
        v211->i64[v248] = [SCNMTLResourceManager renderResourceForSampler:v213];
        C3DLightGetProjectionInfo(v66, v256);
        Matrix = C3DProjectionInfosGetMatrix(v256, 0, CoordinatesSystemOptions);
        v254 = *(Matrix + 1);
        v224 = *(Matrix + 2);
        v227 = *Matrix;
        v221 = *(Matrix + 3);
        v335 = __invert_f4(v228);
        v175 = 0;
        v312 = v335;
        do
        {
          v313.columns[v175] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v227, COERCE_FLOAT(*&v312.columns[v175])), v254, *v312.columns[v175].f32, 1), v224, v312.columns[v175], 2), v221, v312.columns[v175], 3);
          ++v175;
        }

        while (v175 != 4);
        v255 = v313.columns[0];
        v233 = v313.columns[2];
        v235 = v313.columns[1];
        v231 = v313.columns[3];
        if (C3DKeyframeControllerHasInterpolationModesPerKey(*(v66 + 200)))
        {
          ImageTransform = C3DEffectSlotGetImageTransform(*(v66 + 200));
          v177 = 0;
          v178 = *ImageTransform;
          v179 = ImageTransform[1];
          v180 = ImageTransform[2];
          v181 = ImageTransform[3];
          v312.columns[0] = v255;
          v312.columns[1] = v235;
          v312.columns[2] = v233;
          v312.columns[3] = v231;
          do
          {
            v313.columns[v177] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v178, COERCE_FLOAT(*&v312.columns[v177])), v179, *v312.columns[v177].f32, 1), v180, v312.columns[v177], 2), v181, v312.columns[v177], 3);
            ++v177;
          }

          while (v177 != 4);
          v182 = v313.columns[0];
          v183 = v313.columns[1];
          v184 = v313.columns[2];
          v185 = v313.columns[3];
        }

        else
        {
          v182 = v255;
          v184 = v233;
          v183 = v235;
          v185 = v231;
        }

        v186 = 0;
        v187 = *MEMORY[0x277D860B8];
        v188 = *(MEMORY[0x277D860B8] + 16);
        v187.i32[0] = 0.5;
        v189 = *(MEMORY[0x277D860B8] + 32);
        v188.i32[1] = -0.5;
        v189.i32[2] = 1.0;
        v190.i64[0] = 0x3F0000003F000000;
        v190.i64[1] = *(MEMORY[0x277D860B8] + 56);
        v312.columns[0] = v182;
        v312.columns[1] = v183;
        v312.columns[2] = v184;
        v312.columns[3] = v185;
        do
        {
          v313.columns[v186] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*&v312.columns[v186])), v188, *v312.columns[v186].f32, 1), v189, v312.columns[v186], 2), v190, v312.columns[v186], 3);
          ++v186;
        }

        while (v186 != 4);
        v191 = v313.columns[1];
        v192 = v313.columns[2];
        v193 = v313.columns[3];
        *(v67 + 192) = v313.columns[0];
        *(v67 + 208) = v191;
        *(v67 + 224) = v192;
        *(v67 + 240) = v193;
        *(v67 + 12) = C3DEffectSlotGetIntensity(*(v66 + 200));
      }

LABEL_113:
      ++v65;
      ++v60;
    }

    while (v65 != v246);
    v59 = v309;
    v12 = v207;
    v3 = v206;
    v60 = v208;
    v61 = v248;
LABEL_115:
    ++v61;
    v60 += v3;
  }

  while (v61 < *(v59 + 6));
  if (!v12)
  {
    goto LABEL_129;
  }

LABEL_116:
  v197 = 0;
  v198 = v329;
  v199 = v12;
  do
  {
    v200 = *v198;
    if (C3DLightGetType(*v198) == 6 && *(v200 + 256) == 4)
    {
      v197 += 8 * *(v200 + 272);
    }

    ++v198;
    --v199;
  }

  while (v199);
  if (v197)
  {
    memset(v256, 0, 24);
    SCNMTLBufferPool::allocate(v205, v197, v256);
    v201 = v243 + 22;
    v202 = v329;
    do
    {
      v203 = *v202;
      if (C3DLightGetType(*v202) == 6 && *(v203 + 256) == 4)
      {
        memcpy((v256[0].columns[0].i64[0] + v201->i64[0]), *(v203 + 280), 8 * *(v203 + 272));
      }

      ++v202;
      v201 = (v201 + 8);
      --v12;
    }

    while (v12);
    v204 = v256[0].columns[1].i64[0];
    v243[21].i64[0] = v256[0].columns[0].i64[1];
    v243[21].i64[1] = v204;
  }

  else
  {
LABEL_129:
    v243[21].i64[0] = 0;
  }

  _Block_object_dispose(&v308, 8);
}

void *___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke(void *result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v5 = *(*(result[4] + 8) + 24);
      if (v5 > 0xFF)
      {
        break;
      }

      v6 = *a4++;
      *(result[5] + 8 * v5) = v6;
      v7 = *a3++;
      v8 = result[6];
      v9 = *(result[4] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      *(v8 + 8 * v10) = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v6 = 0;
      v7 = *(a5 + 16 * i);
      v8 = *(a5 + 16 * i + 8);
      v9 = *(result + 80);
      v20[2] = *(result + 64);
      v20[3] = v9;
      v10 = *(result + 112);
      v20[4] = *(result + 96);
      v20[5] = v10;
      v11 = *(result + 48);
      v20[0] = *(result + 32);
      v20[1] = v11;
      v12.i64[0] = v7;
      v12.i64[1] = v8;
      while (1)
      {
        v13 = vmulq_f32(v20[v6], v12);
        if ((COERCE_FLOAT(HIDWORD(v20[v6])) + (v13.f32[2] + vaddv_f32(*v13.f32))) < -*(&v8 + 1))
        {
          break;
        }

        if (++v6 == 6)
        {
          v14 = *(*(*(result + 128) + 8) + 24);
          if (v14 > 0xFF)
          {
            return result;
          }

          v15 = (*(result + 136) + 16 * (v14 - *(result + 160)));
          *v15 = v7;
          v15[1] = v8;
          *(*(result + 144) + 8 * *(*(*(result + 128) + 8) + 24)) = *(a4 + 8 * i);
          v16 = *(a3 + 8 * i);
          v17 = *(result + 152);
          v18 = *(*(result + 128) + 8);
          v19 = *(v18 + 24);
          *(v18 + 24) = v19 + 1;
          *(v17 + 8 * v19) = v16;
          break;
        }
      }
    }
  }

  return result;
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_3(uint64_t a1, uint64_t *a2)
{
  ParticlesCount = C3DParticleSystemInstanceGetParticlesCount(a2);
  v5 = a2[63];
  v6 = a2[71];
  v26 = *C3DParticleSystemGetParticleColor(a2[6]);
  ParticleIntensity = C3DParticleSystemGetParticleIntensity(a2[6]);
  ParticleSize = C3DParticleSystemGetParticleSize(a2[6]);
  v8 = a2[70];
  LightEmissionRadiusFactor = C3DParticleSystemGetLightEmissionRadiusFactor(a2[6]);
  if (ParticlesCount)
  {
    v10 = 0;
    v11 = vmulq_n_f32(v26, ParticleIntensity);
    v12 = vdupq_n_s32(0x3A83126Fu);
    do
    {
      if (v8)
      {
        ParticleSize = *(v8 + 4 * v10);
      }

      v13 = 0;
      v14 = *(v5 + 16 * v10);
      v15 = v14;
      v16 = *(a1 + 80);
      v27[2] = *(a1 + 64);
      v27[3] = v16;
      v17 = *(a1 + 112);
      v27[4] = *(a1 + 96);
      v27[5] = v17;
      v18 = *(a1 + 48);
      v27[0] = *(a1 + 32);
      v27[1] = v18;
      while (1)
      {
        v19 = vmulq_f32(v14, v27[v13]);
        if ((COERCE_FLOAT(HIDWORD(v27[v13])) + (v19.f32[2] + vaddv_f32(*v19.f32))) < -(LightEmissionRadiusFactor * ParticleSize))
        {
          break;
        }

        if (++v13 == 6)
        {
          v20 = *(*(*(a1 + 128) + 8) + 24);
          if (v20 > 0xFF)
          {
            return;
          }

          v15.f32[3] = LightEmissionRadiusFactor * ParticleSize;
          *(*(a1 + 136) + 16 * (v20 - *(a1 + 168))) = v15;
          v21 = v11;
          if (v6)
          {
            v21 = *(v6 + 16 * v10);
          }

          *(*(a1 + 144) + 16 * *(*(*(a1 + 128) + 8) + 24)) = vmulq_f32(v21, v12);
          *(*(a1 + 152) + 8 * *(*(*(a1 + 128) + 8) + 24)) = 0;
          v22 = *(a1 + 160);
          v23 = *(*(a1 + 128) + 8);
          v24 = *(v23 + 24);
          *(v23 + 24) = v24 + 1;
          *(v22 + 8 * v24) = 0;
          break;
        }
      }

      ++v10;
    }

    while (v10 != ParticlesCount);
  }
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if ((C3DLightGetCastsShadow(*(a4 + 8 * v9)) & 1) == 0 && (C3DLightHasValidGobo(*(a4 + 8 * v9)) & 1) == 0 && C3DLightGetAttenuationEndDistance(*(a4 + 8 * v9)) > 0.0)
      {
        v11 = 0;
        v12 = a5 + 48 * v9;
        v13 = *v12;
        v14 = *(v12 + 16);
        v15 = *(v12 + 32);
        v16 = *(v12 + 40);
        v17 = *(a1 + 80);
        v42[2] = *(a1 + 64);
        v42[3] = v17;
        v18 = *(a1 + 112);
        v42[4] = *(a1 + 96);
        v42[5] = v18;
        v19 = *(a1 + 48);
        v42[0] = *(a1 + 32);
        v42[1] = v19;
        v20 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v21 = vdupq_lane_s32(v15, 1);
        v22 = vmlaq_n_f32(v13, v14, *v15.i32);
        while (1)
        {
          v23 = v42[v11];
          v24 = vmulq_f32(v13, v23);
          v25 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v23)), v14, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v26)), v14, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          v29.f32[0] = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          v30 = vdupq_lane_s32(*v29.f32, 0);
          v31 = vrsqrteq_f32(v30);
          v32 = vmulq_f32(v31, vrsqrtsq_f32(v30, vmulq_f32(v31, v31)));
          v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v29.f32[0] != 0.0)), 0x1FuLL));
          v33.i32[3] = 0;
          v34 = vmulq_f32(v23, vmlsq_f32(v22, v21, vbslq_s8(vcltzq_s32(v33), vmulq_f32(vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32))), v28), v28)));
          v35 = vadd_f32(vdup_laneq_s32(v23, 3), vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v34.i8), vzip2_s32(*v24.i8, *v34.i8))));
          if (vmuls_lane_f32(v35.f32[0], v35, 1) >= 0.0 && fminf(v35.f32[0], v35.f32[1]) < 0.0)
          {
            break;
          }

          if (++v11 == 6)
          {
            v36 = *(*(*(a1 + 128) + 8) + 24);
            if (v36 > 0xFF)
            {
              return;
            }

            v37 = *(a1 + 136) + 48 * (v36 - *(a1 + 160));
            *v37 = v13;
            *(v37 + 16) = v14;
            *(v37 + 32) = v15;
            *(v37 + 40) = v16;
            *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
            v38 = *(a3 + 8 * v9);
            v39 = *(a1 + 152);
            v40 = *(*(a1 + 128) + 8);
            v41 = *(v40 + 24);
            *(v40 + 24) = v41 + 1;
            *(v39 + 8 * v41) = v38;
            break;
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if (C3DLightGetProbeType(*(a4 + 8 * v9)) != 1)
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5_cold_1(v42, v43, v11);
        }
      }

      if (C3DLightGetIntensity(*(a4 + 8 * v9)) > 0.0)
      {
        ProbeEnvironment = C3DLightGetProbeEnvironment(*(a4 + 8 * v9), 0);
        if (!ProbeEnvironment || C3DEffectSlotGetIntensity(ProbeEnvironment) > 0.0)
        {
          v14 = 0;
          v15 = (a5 + 80 * v9);
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          v19 = v15[3];
          v20 = v15[4];
          *v13.i32 = fmaxf(fmaxf(v20.f32[0], COERCE_FLOAT(v15[4].i64[1])), COERCE_FLOAT(HIDWORD(v15[4].i64[0]))) * 0.1;
          v21 = vaddq_f32(v20, vdupq_lane_s32(v13, 0));
          v21.i32[3] = v20.i32[3];
          v22 = *(a1 + 80);
          v41[2] = *(a1 + 64);
          v41[3] = v22;
          v23 = *(a1 + 112);
          v41[4] = *(a1 + 96);
          v41[5] = v23;
          v24 = *(a1 + 48);
          v41[0] = *(a1 + 32);
          v41[1] = v24;
          while (1)
          {
            v25 = v41[v14];
            v26 = vmulq_f32(v17, v25);
            v27 = vmulq_f32(v18, v25);
            v28 = vmulq_f32(v19, v25);
            v29 = vmulq_f32(v16, v25);
            v30 = vzip1q_s32(v26, v28);
            v31 = vzip2q_s32(v26, v28);
            v32 = vzip1q_s32(v27, v29);
            v33 = vzip2q_s32(v27, v29);
            v34 = vaddq_f32(vzip2q_s32(v31, v33), vaddq_f32(vzip1q_s32(v31, v33), vaddq_f32(vzip1q_s32(v30, v32), vzip2q_s32(v30, v32))));
            v35 = vabsq_f32(vmulq_f32(v21, v34));
            if (v34.f32[3] <= -(v35.f32[2] + vaddv_f32(*v35.f32)))
            {
              break;
            }

            if (++v14 == 6)
            {
              v36 = (*(a1 + 136) + 80 * (*(*(*(a1 + 128) + 8) + 24) - *(a1 + 160)));
              *v36 = v16;
              v36[1] = v17;
              v36[2] = v18;
              v36[3] = v19;
              v36[4] = v21;
              *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
              v37 = *(a3 + 8 * v9);
              v38 = *(a1 + 152);
              v39 = *(*(a1 + 128) + 8);
              v40 = *(v39 + 24);
              *(v39 + 24) = v40 + 1;
              *(v38 + 8 * v40) = v37;
              if (*(*(*(a1 + 128) + 8) + 24) > 0xFFu)
              {
                return;
              }

              break;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

float32x4_t __computeFrustumExtrema(float32x4_t *a1, unsigned int a2, unsigned int a3, unsigned __int32 a4, float32x4_t *a5, uint32x4_t a6)
{
  a6.i64[0] = __PAIR64__(a3, a2);
  a6.i32[2] = a4;
  v6 = a1[1];
  v7 = vmulq_f32(v6, vcvtq_f32_u32(a6));
  result = vaddq_f32(v6, v7);
  v9 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), v7, 2);
  v10 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), v7, 2);
  v11 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), v7, 2), v9);
  v12 = vmlaq_lane_f32(v9, v11, *v7.f32, 1);
  v13 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), v7, 2), v10);
  v14 = vmlaq_lane_f32(v9, v11, *result.f32, 1);
  v15 = vsubq_f32(vmlaq_lane_f32(v10, v13, *v7.f32, 1), v12);
  *a5 = vmlaq_n_f32(v12, v15, v7.f32[0]);
  a5[1] = vmlaq_n_f32(v12, v15, result.f32[0]);
  v16 = vsubq_f32(vmlaq_lane_f32(v10, v13, *result.f32, 1), v14);
  a5[2] = vmlaq_n_f32(v14, v16, v7.f32[0]);
  a5[3] = vmlaq_n_f32(v14, v16, result.f32[0]);
  v17 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), result, 2);
  v18 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), result, 2);
  v19 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), result, 2), v17);
  v20 = vmlaq_lane_f32(v17, v19, *v7.f32, 1);
  v21 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), result, 2), v18);
  v22 = vmlaq_lane_f32(v17, v19, *result.f32, 1);
  v23 = vsubq_f32(vmlaq_lane_f32(v18, v21, *v7.f32, 1), v20);
  a5[4] = vmlaq_n_f32(v20, v23, v7.f32[0]);
  a5[5] = vmlaq_n_f32(v20, v23, result.f32[0]);
  v24 = vsubq_f32(vmlaq_lane_f32(v18, v21, *result.f32, 1), v22);
  a5[6] = vmlaq_n_f32(v22, v24, v7.f32[0]);
  a5[7] = vmlaq_n_f32(v22, v24, result.f32[0]);
  return result;
}

uint64_t __append(uint64_t a1, void *__src, size_t __n)
{
  v3 = __n;
  *&v35[5] = *MEMORY[0x277D85DE8];
  v6 = __n;
  v7 = *(a1 + 512);
  v8 = v7 + __n;
  v9 = *(a1 + 516);
  v10 = v7;
  if (v8 >= v9)
  {
    if (v9)
    {
      v11 = *(a1 + 516);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v8);
    *(a1 + 504) = C3DStackAllocatorReallocate(*(a1 + 2784), *(a1 + 504), v9, v12, 16);
    *(a1 + 656) = C3DStackAllocatorReallocate(*(a1 + 2784), *(a1 + 656), 4 * *(a1 + 516), 4 * v12, 16);
    *(a1 + 516) = v12;
    v10 = *(a1 + 512);
  }

  memcpy((*(a1 + 504) + v10), __src, v6);
  v13 = *(a1 + 512);
  if (v13 < v8)
  {
    v14 = a1 + 664;
    v15 = a1 + 1688;
    v16 = v7 + v3 - v13;
    do
    {
      v17 = *(a1 + 504);
      v18 = *(v17 + v13);
      v19 = *(v14 + 4 * *(v17 + v13));
      if (v19)
      {
        if (*(v17 + (v19 - 1)) != v18)
        {
          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            __append(v34, v35, v20);
          }
        }

        v21 = *(v15 + 4 * v18);
        if (!v21)
        {
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            __append(v32, &v33, v22);
          }
        }

        v23 = v21 - 1;
        if (*(*(a1 + 504) + v23) != v18)
        {
          v24 = scn_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            __append(v30, &v31, v24);
          }
        }

        v25 = *(a1 + 656);
        *(v25 + 4 * v23) = v13 + 1;
        *(v25 + 4 * v13) = 0;
        *(v15 + 4 * v18) = v13 + 1;
        if (*(v25 + 4 * v13) > v8)
        {
          v26 = scn_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            __append(v28, &v29, v26);
          }
        }
      }

      else
      {
        *(v14 + 4 * *(v17 + v13)) = v13 + 1;
        *(v15 + 4 * v18) = v13 + 1;
        *(*(a1 + 656) + 4 * v13) = 0;
      }

      ++v13;
      --v16;
    }

    while (v16);
    LODWORD(v13) = *(a1 + 512);
  }

  *(a1 + 512) = v8;
  return v13;
}

uint64_t __addFroxelLightIndicesInBuffer(uint64_t a1, unsigned __int8 *__src, size_t __n)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4 * *__src + 664);
  if (v6)
  {
    v7 = *(a1 + 512);
    v8 = __n;
    while (1)
    {
      v9 = v6 - 1;
      if (__n < 2)
      {
        v11 = 1;
      }

      else
      {
        v10 = v6 <= v7 ? v7 : v6;
        v11 = v10 - v6 + 1;
        v12 = 1;
        while (v10 != v6)
        {
          if (*(*(a1 + 504) + v6) != __src[v12])
          {
            v11 = v12;
            break;
          }

          ++v12;
          ++v6;
          if (v8 == v12)
          {
            return v9;
          }
        }
      }

      if (v11 == __n)
      {
        break;
      }

      if (*(*(a1 + 656) + 4 * v9) > v7)
      {
        v13 = scn_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          __addFroxelLightIndicesInBuffer(v15, v16, v13);
        }
      }

      v6 = *(*(a1 + 656) + 4 * v9);
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    LOWORD(v9) = __append(a1, __src, __n);
  }

  return v9;
}

uint64_t __appendUnoptimized(uint64_t a1, char **a2, void *__src, size_t __n)
{
  v4 = __n;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = v8 + __n;
  if (v8 + __n >= v7)
  {
    if (v7)
    {
      v11 = *(a2 + 3);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v9);
    v10 = C3DStackAllocatorReallocate(a1, *a2, v7, v12, 16);
    *a2 = v10;
    *(a2 + 3) = v12;
    v8 = *(a2 + 2);
  }

  else
  {
    v10 = *a2;
  }

  memcpy(&v10[v8], __src, v4);
  result = *(a2 + 4);
  *(a2 + 2) = v9;
  return result;
}

_DWORD *__radixSortDecreasingNonZero(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  bzero(v19, 0x400uLL);
  v7 = 0;
  if (v6)
  {
    v8 = v6;
    v9 = a2;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        ++v7;
      }

      ++v19[v10];
      --v8;
    }

    while (v8);
  }

  bzero(v18, 0x400uLL);
  v12 = 0;
  v13 = 0;
  do
  {
    v13 += v19[v12];
    v18[++v12] = v13;
  }

  while (v12 != 255);
  result = C3DStackAllocatorAllocate(a1, 4 * v7);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v16 = a2[i];
      if (v16)
      {
        v17 = v18[v16];
        v18[v16] = v17 + 1;
        result[(v6 + ~v17)] = i;
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t __compactLightIndices(uint64_t a1, uint64_t a2, int a3)
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *a1 * HIDWORD(*a1);
  v8 = (v7 * v6);
  v24 = v7 * v6;
  v9 = C3DStackAllocatorAllocate(*(a1 + 2784), 4 * v8);
  v10 = v9;
  if (v8)
  {
    if (a3 != 8 && a3 != 4)
    {
      __compactLightIndices();
    }

    v11 = (a2 + 2);
    v12 = (a2 + 4);
    v13 = v9;
    do
    {
      if (a3 == 8)
      {
        v14 = HIBYTE(*(v12 - 1)) + *(v12 - 1) + *v12;
      }

      else
      {
        v14 = HIBYTE(*v11) + *v11;
      }

      *v13++ = v14;
      v11 += 2;
      v12 += 8;
      --v8;
    }

    while (v8);
  }

  result = __radixSortDecreasingNonZero(*(a1 + 2784), v9, &v24);
  v16 = v24;
  if (v24)
  {
    v17 = result;
    do
    {
      v19 = *v17++;
      v18 = v19;
      v20 = v10[v19];
      if (!v20)
      {
        v21 = scn_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __compactLightIndices(v25, v26, v21);
        }
      }

      if (a3 == 8)
      {
        v22 = 8 * v18;
        v23 = (*(a1 + 488) + *(a2 + 8 * v18));
      }

      else
      {
        if (a3 != 4)
        {
          __compactLightIndices();
        }

        v22 = 4 * v18;
        v23 = (*(a1 + 488) + *(a2 + 4 * v18));
      }

      result = __addFroxelLightIndicesInBuffer(a1, v23, v20);
      *(a2 + v22) = result;
      --v16;
    }

    while (v16);
  }

  return result;
}

float32x4_t *__computeLightsFlagsForAxis(float32x4_t *result, int a2)
{
  v3 = &result->i32[a2 & 3];
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 4);
    v8 = vld1q_dup_f32(v7);
    v53 = v8;
    v54 = result[((2 * a2) | 1u) + 2];
    v9 = 0uLL;
    v52 = vsubq_f32(vnegq_f32(result[(2 * a2) + 2]), v54);
    v10 = vmlaq_f32(v54, 0, v52);
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v8.u32[0]);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32)));
    v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v13 = result + 171;
    v14 = result[9].i64[0] + 32;
    do
    {
      v15 = v13->i64[a2];
      v16 = v5[173].i32[2];
      v57 = v12;
      v58 = vaddq_f32(v53, v9);
      v17 = vmlaq_f32(v54, v52, v58);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v55 = vnegq_f32(v20);
      v56 = v20;
      v60[0] = vdupq_lane_s32(*v12.i8, 0);
      v60[1] = vdupq_lane_s32(*v12.i8, 1);
      v60[2] = vdupq_laneq_s32(v12, 2);
      v60[3] = vdupq_laneq_s32(v12, 3);
      v21 = (v15 + 4 * (v16 * v6));
      v59[0] = vdupq_lane_s32(*v55.f32, 0);
      v59[1] = vdupq_lane_s32(*v55.f32, 1);
      v59[2] = vdupq_laneq_s32(v55, 2);
      v59[3] = vdupq_laneq_s32(v55, 3);
      bzero(v21, (4 * v16));
      scn_sphere_x4_filter(v5[9].i64[1], v5[10].i32[0], v60, v59, v5[10].i64[1]);
      memcpy(&v21[4 * v5[169].i64[1]], v5[10].i64[1], v5[11].u32[0]);
      scn_cone_x4_filter(v5[11].i64[1], v5[12].i32[0], v60, v59, v5[12].i64[1]);
      result = memcpy(&v21[4 * v5[170].i64[0]], v5[12].i64[1], v5[13].u32[0]);
      v22 = v5[170].u32[3];
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v14;
        do
        {
          v25 = v24[-2];
          v26 = v24[-1];
          v27 = v24[1];
          v28 = v24[2];
          v29 = vmulq_f32(v57, v26);
          v30 = vmulq_f32(v57, *v24);
          v31 = vmulq_f32(v57, v27);
          v32 = vmulq_f32(v57, v25);
          v33 = vzip1q_s32(v29, v31);
          v34 = vzip2q_s32(v29, v31);
          v35 = vzip1q_s32(v30, v32);
          v36 = vzip2q_s32(v30, v32);
          v37 = vaddq_f32(vzip2q_s32(v34, v36), vaddq_f32(vzip1q_s32(v34, v36), vaddq_f32(vzip1q_s32(v33, v35), vzip2q_s32(v33, v35))));
          v38 = vabsq_f32(vmulq_f32(v28, v37));
          v50 = v37.f32[3] > -(v38.f32[2] + vaddv_f32(*v38.f32));
          v39 = vmulq_f32(v26, v55);
          v40 = vmulq_f32(*v24, v55);
          v41 = vmulq_f32(v27, v55);
          v42 = vmulq_f32(v25, v55);
          v43 = vzip1q_s32(v39, v41);
          v44 = vzip2q_s32(v39, v41);
          v45 = vzip1q_s32(v40, v42);
          v46 = vzip2q_s32(v40, v42);
          v47 = vaddq_f32(vzip2q_s32(v44, v46), vaddq_f32(vzip1q_s32(v44, v46), vaddq_f32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45))));
          v48 = vabsq_f32(vmulq_f32(v28, v47));
          v49 = -(v48.f32[2] + vaddv_f32(*v48.f32));
          v50 = v50 && v47.f32[3] > v49;
          if (v50)
          {
            v51 = &v21[4 * v5[170].i64[1]];
            v51[v23 >> 3] |= 1 << (v23 & 7);
          }

          ++v23;
          v24 += 5;
        }

        while (v22 != v23);
      }

      ++v6;
      v12 = v56;
      v9 = v58;
    }

    while (v6 != v4);
  }

  return result;
}

void SCNMTLClusterSystem::~SCNMTLClusterSystem(SCNMTLClusterSystem *this)
{
  for (i = 0; i != 56; i += 8)
  {
    v3 = this + i;
    v4 = *(this + i + 72);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 9) = 0;
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 16) = 0;
    }
  }
}

uint64_t SCNMTLClusterSystem::compute(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v198 = v12;
  v13 = v1;
  v15 = v14;
  *(&v305[2] + 4) = *MEMORY[0x277D85DE8];
  v14[24] = 0u;
  v14[25] = 0u;
  v14[22] = 0u;
  v14[23] = 0u;
  v14[20] = 0u;
  v14[21] = 0u;
  v14[18] = 0u;
  v14[19] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  v16 = *(v8 + 592);
  v17 = *(v8 + 266);
  v18 = *(v8 + 267);
  v19 = *(v8 + 268);
  v20 = *(v8 + 269);
  v21 = *(v8 + 270);
  v22 = *(v8 + 271);
  v23 = *(v9 + 272);
  v24 = *(v9 + 273);
  v25 = *(v9 + 274);
  v26 = *(v9 + 275);
  v27 = *(v9 + 276);
  v28 = *(v9 + 277);
  v225 = v9;
  v226 = v16;
  v227 = v7;
  v228 = v2;
  v229 = v299;
  v230 = v298;
  v231 = v297;
  v29 = v18;
  v248.i64[1] = v18;
  v204 = v20;
  v208 = v17;
  v248.i64[0] = v17;
  v249.i64[1] = v20;
  v212 = v19;
  v214 = v26;
  v249.i64[0] = v19;
  v202 = v22;
  v251 = v22;
  v218 = v23;
  v220 = v21;
  v250 = v21;
  v222 = v24;
  v253 = v24;
  v252 = v23;
  v255 = v26;
  v216 = v25;
  v254 = v25;
  v30 = v28;
  v257 = v28;
  v31 = v27;
  v256 = v27;
  _addLightsInFrustum(v21);
  result = C3DLightingSystemHasLocalLights(v7);
  if (result)
  {
    StackAllocator = C3DEngineContextGetStackAllocator(v16);
    C3DStackAllocatorPushFrame(StackAllocator);
    v34 = vcvtq_f32_u32(*v13);
    v35 = v13[1].i64[0];
    if (v35)
    {
      v36 = v35 * v11;
      v15[5].f32[0] = v36;
      v38.i32[1] = v198.i32[1];
      v37.f32[0] = v198.u32[0] / v36;
      v37.i32[1] = v34.i32[1];
      v37.i64[1] = v34.i64[1];
      v38.i32[0] = (v36 * ceilf(v37.f32[0]));
      v34 = v37;
    }

    else
    {
      v38 = v198;
    }

    v39 = v5;
    if (HIDWORD(v35))
    {
      v40 = HIDWORD(v35) * v11;
      v41.i32[0] = v34.i32[0];
      v41.f32[1] = v38.u32[1] / v40;
      v15[5].f32[1] = v40;
      v41.i64[1] = v34.i64[1];
      v38.i32[1] = (v40 * ceilf(v41.f32[1]));
      v34 = v41;
    }

    *v33.f32 = vcvt_u32_f32(vrndp_f32(*v34.f32));
    v42 = v33;
    v42.i32[2] = v34.f32[2];
    v172 = v42;
    __asm { FMOV            V1.4S, #1.0 }

    v199 = vdivq_f32(_Q1, v34);
    _Q1.f32[0] = v9[593];
    v48 = v9[594];
    *v49.f32 = vcvt_f32_u32(*v33.f32);
    *v50.f32 = vcvt_f32_u32(v38);
    v49.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(_Q1.f32[0], v34, 2)), vextq_s8(v34, v34, 8uLL).u32[0]);
    v50.f32[2] = _Q1.f32[0] - v48;
    v50.f32[3] = _Q1.f32[0] - v48;
    v15[3] = v199;
    v15[4] = vdivq_f32(v49, v50);
    v171 = v34.f32[2];
    v176 = v33.i32[1];
    v192 = v33;
    v51 = v33.i32[0];
    v179 = v15[6].i32[3];
    if (v179)
    {
      v52 = 8;
    }

    else
    {
      v52 = 4;
    }

    v167 = v52;
    if (v179)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v54 = (v33.i32[1] * v34.f32[2] * v33.i32[0]) << v53;
    SCNMTLBufferPool::allocate(v3, v54, v15);
    v178 = v15->i64[0];
    bzero(v15->i64[0], v54);
    bzero(&v264, 0xA60uLL);
    v248 = v172;
    v249 = v199;
    v251 = v29;
    v250 = v208;
    v253 = v204;
    v252 = v212;
    v255 = v202;
    v254 = v220;
    v257 = v222;
    v256 = v218;
    v259 = v214;
    v258 = v216;
    v261 = v30;
    v260 = v31;
    v262 = v299;
    v263 = v298;
    v264 = v297;
    *v296 = StackAllocator;
    v55 = v15[5].i64[1];
    v200 = v55;
    v56 = HIDWORD(v55);
    v266 = (HIDWORD(v55) + 3) >> 2;
    if ((HIDWORD(v55) + 3) >= 4)
    {
      Aligned = C3DStackAllocatorAllocateAligned(StackAllocator, ((HIDWORD(v55) + 3) >> 2) << 6, 16, 0);
      scn_sphere_x4_fill(Aligned, v262, v56);
      v268 = (v266 + 1) >> 1;
      v267 = C3DStackAllocatorAllocateAligned(StackAllocator, v268, 16, 0);
    }

    v168 = v39;
    v57 = v15[6].i64[0];
    v196 = v57;
    v58 = HIDWORD(v57);
    v270 = (HIDWORD(v57) + 3) >> 2;
    if ((HIDWORD(v57) + 3) >= 4)
    {
      v269 = C3DStackAllocatorAllocateAligned(StackAllocator, ((HIDWORD(v57) + 3) >> 2) << 7, 16, 0);
      scn_cone_x4_fill(v269, v298, v58);
      v272 = (v270 + 1) >> 1;
      v271 = C3DStackAllocatorAllocateAligned(StackAllocator, v272, 16, 0);
    }

    v59 = 0;
    HIDWORD(v61) = HIDWORD(v196);
    HIDWORD(v60) = HIDWORD(v200);
    LODWORD(v60) = 0;
    LODWORD(v61) = (v56 + 31) >> 5;
    v288 = v60;
    v289 = v61;
    v62 = v15[6].i64[1];
    v190 = v62;
    LODWORD(v62) = ((v58 + 31) >> 5) + v61;
    v290 = v62;
    v295 = v62 + ((HIDWORD(v62) + 31) >> 5);
    v63 = 4 * v295;
    do
    {
      v224 = v172;
      v291[v59] = C3DStackAllocatorAllocateZero(StackAllocator, (*(&v224 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) * v63));
      v293 = C3DStackAllocatorAllocate(StackAllocator, v63);
      v294 = C3DStackAllocatorAllocate(StackAllocator, v63);
      __computeLightsFlagsForAxis(&v248, v59++);
    }

    while (v59 != 3);
    scn_plane_intersect_3_planes(v31, v30, v220, v202, v212, v204, &v280);
    scn_plane_intersect_3_planes(v31, v30, v208, v29, v220, v202, &v281);
    scn_plane_intersect_3_planes(v31, v30, v212, v204, v218, v222, &v282);
    scn_plane_intersect_3_planes(v31, v30, v218, v222, v208, v29, &v283);
    scn_plane_intersect_3_planes(v216, v214, v220, v202, v212, v204, &v284);
    scn_plane_intersect_3_planes(v216, v214, v208, v29, v220, v202, &v285);
    scn_plane_intersect_3_planes(v216, v214, v212, v204, v218, v222, &v286);
    scn_plane_intersect_3_planes(v216, v214, v218, v222, v208, v29, v287);
    if (v171)
    {
      v177 = 0;
      v64.i64[1] = v192.i64[1];
      *v64.f32 = vceqz_s32(*v192.f32);
      v215 = v190;
      v213 = v15[7].i64[0];
      v219 = v200;
      v217 = v196;
      v170 = v64.i8[4];
      v175 = v64.i8[0];
      v195 = v51;
      do
      {
        if (v295)
        {
          if (*(v292 + 4 * v295 * v177))
          {
            goto LABEL_27;
          }

          v65 = 1;
          do
          {
            v66 = v65;
            if (v295 == v65)
            {
              break;
            }
          }

          while (!*(v292 + 4 * v295 * v177 + 4 * v65++));
          if (v66 < v295)
          {
LABEL_27:
            v64 = __computeFrustumExtrema(&v248, 0, 0, v177, &v240, v64);
            if ((v170 & 1) == 0)
            {
              v194 = 0;
              v188 = v240;
              v189 = v241;
              v186 = v245;
              v187 = vsubq_f32(v241, v240);
              v183 = v242;
              v184 = vsubq_f32(v245, v244);
              v180 = v247;
              v185 = v244;
              v181 = v246;
              v182 = v243;
              v64 = vsubq_f32(v246, v244);
              v173 = v64;
              v174 = vsubq_f32(v242, v240);
              do
              {
                v68 = v295;
                if (v295)
                {
                  v69 = 0;
                  v70 = v294;
                  v71 = (v292 + 4 * v177 * v295);
                  v72 = (v291[1] + 4 * v295 * v194);
                  do
                  {
                    v74 = *v72++;
                    v73 = v74;
                    v75 = *v71++;
                    v76 = v75 & v73;
                    *v70++ = v76;
                    v69 |= v76;
                    --v68;
                  }

                  while (v68);
                  if (v69 && (v175 & 1) == 0)
                  {
                    v77 = 0;
                    v64 = vmulq_n_f32(v173, v194);
                    v191 = v64;
                    v193 = vmulq_n_f32(v174, v194);
                    v78 = (v194 + v177 * v176) * v51;
                    do
                    {
                      v79 = v295;
                      if (v295)
                      {
                        v80 = 0;
                        v81 = v293;
                        v82 = v294;
                        v83 = (v291[0] + 4 * v295 * v77);
                        v84 = v293;
                        do
                        {
                          v86 = *v82++;
                          v85 = v86;
                          v87 = *v83++;
                          v88 = v87 & v85;
                          *v84++ = v88;
                          v80 |= v88;
                          --v79;
                        }

                        while (v79);
                        if (v80)
                        {
                          v197 = v78;
                          v201 = v77;
                          v89 = vmlaq_n_f32(v193, v187, v77);
                          v90 = vmlaq_n_f32(v191, v184, v77);
                          v91 = vaddq_f32(v188, v89);
                          v232 = v91;
                          v233 = vaddq_f32(v189, v89);
                          v234 = vaddq_f32(v183, v89);
                          v235 = vaddq_f32(v89, v182);
                          v236 = vaddq_f32(v185, v90);
                          v237 = vaddq_f32(v186, v90);
                          v238 = vaddq_f32(v181, v90);
                          v239 = vaddq_f32(v90, v180);
                          v91.i32[3] = 0;
                          v92 = 16;
                          v93 = v91;
                          do
                          {
                            v94 = *(&v232 + v92);
                            v94.i32[3] = 0;
                            v91 = vminq_f32(v91, v94);
                            v93 = vmaxq_f32(v93, v94);
                            v92 += 16;
                          }

                          while (v92 != 128);
                          v95.i64[0] = 0x3F0000003F000000;
                          v95.i64[1] = 0x3F0000003F000000;
                          v99 = vmulq_f32(vaddq_f32(v93, v91), v95);
                          v96 = vmulq_f32(vsubq_f32(v93, v91), v95);
                          v97 = vmulq_f32(v96, v96);
                          v98 = sqrtf(v97.f32[2] + vaddv_f32(*v97.f32));
                          *&v99.i32[3] = v98;
                          v221 = v98;
                          v223 = v99;
                          v277 = 0;
                          v100 = HIDWORD(v290);
                          if ((HIDWORD(v290) + 31) >= 0x20)
                          {
                            v105 = 0;
                            v203 = (HIDWORD(v290) + 31) >> 5;
                            v205 = &v81[v290];
                            v106 = v98 * v98;
                            v209 = vdupq_laneq_s32(v99, 3);
                            while (1)
                            {
                              v107 = v205[v105];
                              if (v107)
                              {
                                break;
                              }

LABEL_54:
                              if (++v105 == v203)
                              {
                                goto LABEL_42;
                              }
                            }

                            v108 = 32 * v105;
                            while (1)
                            {
                              v109 = __clz(__rbit32(v107));
                              v110 = v109 | v108;
                              if ((v109 | v108) >= v100)
                              {
                                v111 = scn_default_log();
                                if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
                                {
                                  SCNMTLClusterSystem::compute(v300, &v301, v111);
                                }
                              }

                              v112 = &v297[5 * v110];
                              v113 = v112[4];
                              v114 = vsubq_f32(v223, *v112);
                              v115 = vmulq_f32(v112[1], v114);
                              v116 = vmulq_f32(v114, v112[2]);
                              v117 = vmulq_f32(v114, v112[3]);
                              v118 = vzip2q_s32(v115, v117);
                              v119 = vzip1q_s32(vzip1q_s32(v115, v117), v116);
                              v120 = vtrn2q_s32(v115, v116);
                              v120.i32[2] = v117.i32[1];
                              v121 = vabsq_f32(vaddq_f32(vzip1q_s32(v118, vdupq_laneq_s32(v116, 2)), vaddq_f32(v119, v120)));
                              v122 = vsubq_f32(v121, v113);
                              v122.i32[3] = 0;
                              v123 = vmaxnmq_f32(v122, 0);
                              v124 = vmulq_f32(v123, v123);
                              if ((v124.f32[2] + vaddv_f32(*v124.f32)) <= v106)
                              {
                                v125 = v277++;
                                v273[v125] = v110 + v215;
                                if (*(v213 + ((v110 + v215) << 8)) >= 1.0)
                                {
                                  v124.f32[0] = fmaxf(fmaxf(v113.f32[0], v113.f32[2]), v113.f32[1]) * 0.090909;
                                  v126 = vcgeq_f32(vsubq_f32(vsubq_f32(v113, vdupq_lane_s32(*v124.f32, 0)), v121), v209);
                                  v126.i32[3] = v126.i32[2];
                                  if ((vminvq_u32(v126) & 0x80000000) != 0)
                                  {
                                    break;
                                  }
                                }
                              }

                              v107 &= ~(1 << v109);
                              if (!v107)
                              {
                                goto LABEL_54;
                              }
                            }
                          }

LABEL_42:
                          v101 = &v273[v277];
                          v275 = 0;
                          v102 = v293;
                          v103 = HIDWORD(v288);
                          if ((HIDWORD(v288) + 31) >= 0x20)
                          {
                            v127 = 0;
                            v206 = (HIDWORD(v288) + 31) >> 5;
                            v210 = &v293[v288];
                            do
                            {
                              v128 = *&v210[4 * v127];
                              if (v128)
                              {
                                v129 = 32 * v127;
                                do
                                {
                                  v130 = __clz(__rbit32(v128));
                                  v131 = v130 | v129;
                                  if ((v130 | v129) >= v103)
                                  {
                                    v132 = scn_default_log();
                                    if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
                                    {
                                      SCNMTLClusterSystem::compute(v302, &v303, v132);
                                    }
                                  }

                                  v133 = v221 + COERCE_FLOAT(HIDWORD(v299[v131]));
                                  v134 = vsubq_f32(v299[v131], v223);
                                  v135 = vmulq_f32(v134, v134);
                                  if ((v135.f32[2] + vaddv_f32(*v135.f32)) <= (v133 * v133))
                                  {
                                    v136 = v275++;
                                    v101[v136] = v219 + v131;
                                  }

                                  v128 &= ~(1 << v130);
                                }

                                while (v128);
                              }

                              ++v127;
                            }

                            while (v127 != v206);
                            v104 = v275;
                            v102 = v293;
                            v51 = v195;
                          }

                          else
                          {
                            v104 = 0;
                            v51 = v195;
                          }

                          v276 = 0;
                          v137 = HIDWORD(v289);
                          if ((HIDWORD(v289) + 31) >= 0x20)
                          {
                            v139 = 0;
                            v140 = &v101[v104];
                            v207 = &v102[v289];
                            v211 = (HIDWORD(v289) + 31) >> 5;
                            do
                            {
                              v141 = v207[v139];
                              if (v141)
                              {
                                v142 = 32 * v139;
                                do
                                {
                                  v143 = __clz(__rbit32(v141));
                                  v144 = v143 | v142;
                                  if ((v143 | v142) >= v137)
                                  {
                                    v145 = scn_default_log();
                                    if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
                                    {
                                      SCNMTLClusterSystem::compute(v304, v305, v145);
                                    }
                                  }

                                  v146 = &v298[3 * v144];
                                  v147 = v146[2].f32[0];
                                  v148 = vsubq_f32(v223, *v146);
                                  v149 = vmulq_f32(v148, v148);
                                  v150 = v149.f32[2] + vaddv_f32(*v149.f32);
                                  if (v150 <= ((v221 + v147) * (v221 + v147)))
                                  {
                                    v151 = v146[2].f32[2];
                                    v152 = vmulq_f32(v148, v146[1]);
                                    v153 = v152.f32[2] + vaddv_f32(*v152.f32);
                                    v154 = sqrtf(v150 - (v153 * v153));
                                    v155 = v146[2].f32[3] * v151;
                                    v156 = (v155 * v153) - (v151 * v154);
                                    if (v156 >= 0.0 || (v157 = ((v151 * v153) + (v155 * v154)) - fminf(fmaxf((v151 * v153) + (v155 * v154), 0.0), v147), ((v156 * v156) + (v157 * v157)) <= (v221 * v221)))
                                    {
                                      v158 = v276++;
                                      v140[v158] = v144 + v217;
                                    }
                                  }

                                  v141 &= ~(1 << v143);
                                }

                                while (v141);
                              }

                              ++v139;
                            }

                            while (v139 != v211);
                            v138 = v276;
                            v104 = v275;
                            v51 = v195;
                          }

                          else
                          {
                            v138 = 0;
                          }

                          v77 = v201;
                          v78 = v197;
                          if (v277 + v138 + v104)
                          {
                            appended = __appendUnoptimized(*v296, v278, v273, v277 + v138 + v104);
                            v64.i32[3] = 0;
                            v64.i16[0] = appended;
                            v64.i16[1] = v275 | (v276 << 8);
                            *(v64.i64 + 4) = v277;
                          }

                          else
                          {
                            v64 = 0uLL;
                          }

                          if (v179)
                          {
                            *(v178 + 8 * v197) = v64.i64[0];
                          }

                          else
                          {
                            v64 = vmovl_u16(*v64.f32);
                            v160 = (v178 + 4 * v197);
                            v160[1] = v64.i16[2];
                            *v160 = v64.i16[0];
                          }
                        }
                      }

                      ++v77;
                      ++v78;
                    }

                    while (v77 != v51);
                  }
                }

                ++v194;
              }

              while (v194 != v176);
            }
          }
        }

        ++v177;
      }

      while (v177 != v171);
    }

    __compactLightIndices(&v248, v178, v167);
    v161 = v279;
    if (v279 <= 1)
    {
      v162 = 1;
    }

    else
    {
      v162 = v279;
    }

    v163 = (v162 - 1) | ((v162 - 1) >> 1) | (((v162 - 1) | ((v162 - 1) >> 1)) >> 2);
    v164 = v163 | (v163 >> 4) | ((v163 | (v163 >> 4)) >> 8);
    v240.i16[0] = (v164 | HIWORD(v164)) + 1;
    *(v240.i32 + 2) = 0;
    *(&v240.i32[1] + 1) = 0;
    v240.i8[9] = 0;
    *(&v240.i32[2] + 2) = 851969;
    v240.i16[7] = 0;
    v241.i32[0] = 0;
    v165 = SCNMTLTexturePool::allocate(v168, &v240, 0, 1);
    v15[2].i64[0] = v165;
    if (v161)
    {
      v240 = 0uLL;
      v241.i64[0] = 0;
      v241.i64[1] = v161;
      v242 = vdupq_n_s64(1uLL);
      [v165 replaceRegion:&v240 mipmapLevel:0 withBytes:v278[2] bytesPerRow:v279];
    }

    v232.i16[1] = v172.i16[2];
    v232.i16[0] = v172.i16[0];
    v232.i16[2] = v172.i16[4];
    if (v179)
    {
      v166 = 113;
    }

    else
    {
      v166 = 63;
    }

    v232.i16[3] = 0;
    v232.i32[2] = 66055;
    v232.i32[3] = v166;
    v233.i32[0] = 0;
    v240 = *v15;
    v241.i64[0] = v15[1].i64[0];
    v15[1].i64[1] = SCNMTLTexturePool::allocateWithStagingBuffer(v168, &v232, &v240, 1);
    return C3DStackAllocatorPopFrame(StackAllocator);
  }

  return result;
}

void SCNMTLClusterSystem::displayInfoDebug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t *a5)
{
  v93 = *MEMORY[0x277D85DE8];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a3, 0);
  if (!AuthoringEnvironment || !a5[1].i64[1])
  {
    return;
  }

  v69 = a4;
  v70 = a3;
  RenderContext = C3DEngineContextGetRenderContext(a3);
  v75 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v10 = [a5[1].i64[1] width];
  v79 = [a5[1].i64[1] height];
  v11 = [a5[1].i64[1] depth];
  v12 = 0;
  v68 = a5[3];
  v71 = v11;
  v72 = a5 + 6;
  v13 = &a5[5].i64[1];
  v14 = (a1 + 128);
  v73 = &a5[5].i64[1];
  v74 = a5;
  do
  {
    v15 = v13;
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        goto LABEL_23;
      }

      v15 = v72;
    }

    v77 = *v15;
    v76 = WORD2(*v15);
    if (v76 >= 1)
    {
      if (!*v14)
      {
        if (v12 == 2)
        {
          Sphere = C3DMeshCreateSphere(0, 12, 1, 1.0, 1.0);
        }

        else
        {
          Sphere = C3DMeshCreateCone(0, 12, 1, 0.0, 1.0, 1.0);
        }

        *v14 = Sphere;
      }

      v17 = RenderContext;
      if (!*(v14 - 7))
      {
        if (v12 == 2)
        {
          v18 = @"debug_omni_vert";
        }

        else
        {
          v18 = @"debug_spot_vert";
        }

        *(v14 - 7) = C3DFXMetalProgramCreateFromDefaultLibrary(v18, @"debug_light_frag");
      }

      v19 = [(SCNMTLResourceManager *)v75 renderResourceForMesh:1 dataKind:?];
      v20 = *(v14 - 7);
      v21 = C3DBlendStatesDefaultOver();
      v22 = [(SCNMTLResourceManager *)v19 commandQueue];
      v23 = [(SCNMTLMesh *)v19 vertexDescriptorHash];
      *(__src + 8) = 0u;
      *(&__src[1] + 8) = 0u;
      __src[0].i64[0] = v20;
      __src[2].i64[1] = v21;
      __src[3].i64[0] = 0;
      __src[3].i64[1] = 16777231;
      __src[4].i64[0] = v22;
      __src[4].i64[1] = v23;
      memset(&__src[5], 0, 40);
      RenderContext = v17;
      v24 = [objc_msgSend(v75 renderResourceForProgramDesc:__src renderPassDescriptor:{-[SCNMTLRenderContext currentRenderPassDescriptor](v17)), "state"}];
      if (*(a2 + 3376) != v24)
      {
        *(a2 + 3376) = v24;
        [*(a2 + 3392) setRenderPipelineState:v24];
      }

      [(SCNMTLRenderContext *)v17 _setSceneBufferAtVertexIndex:-1 fragmentIndex:?];
      a5 = v74;
      SCNMTLRenderCommandEncoder::setVertexBuffer(a2, v74[7].i64[1], v74[8].i64[0] + (v77 << 8), 1);
      MeshElements = C3DMeshGetMeshElements(*v14, 1);
      v13 = v73;
      if (MeshElements && CFArrayGetValueAtIndex(MeshElements, 0))
      {
        v26 = [SCNMTLResourceManager renderResourceForMeshElement:v75];
        [SCNMTLRenderContext _setMeshBuffers:?];
        [(SCNMTLRenderContext *)RenderContext _drawMeshElement:v26 instanceCount:v76];
      }
    }

LABEL_23:
    ++v12;
    ++v14;
  }

  while (v12 != 7);
  PointOfCulling = C3DEngineContextGetPointOfCulling(v70);
  if (!PointOfCulling || PointOfCulling == C3DEngineContextGetPointOfView(v70))
  {
    v49 = a2;
    v50 = *(a1 + 48);
    if (!v50 || (v51 = a1, ([v50 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)] & 1) == 0))
    {
      v52 = [-[SCNMTLResourceManager libraryManager](v75) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v52;
      __src[13].i64[1] = C3DBlendStatesDefaultOver();
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_vertex";
      __src[20].i64[0] = @"debug_cluster_frag";
      v53 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v53);

      memcpy(__dst, __src, 0x168uLL);
      v51 = a1;
      *(a1 + 48) = [v75 newRenderPipelineStateWithDesc:__dst];
    }

    v54 = *(v51 + 56);
    if (!v54 || ([v54 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)] & 1) == 0)
    {
      v55 = [-[SCNMTLResourceManager libraryManager](v75) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v55;
      __src[13].i64[1] = C3DBlendStatesDefaultOver();
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_VR_pos_vertex";
      __src[20].i64[0] = @"debug_light_indices_8_buffer_frag";
      v56 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v56);

      memcpy(__dst, __src, 0x168uLL);
      *(v51 + 56) = [v75 newRenderPipelineStateWithDesc:__dst];
    }

    [*(v49 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v75)];
    v57 = *(v51 + 64);
    if (!v57 || (v58 = [v57 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)], v59 = a1, (v58 & 1) == 0))
    {
      v60 = [-[SCNMTLResourceManager libraryManager](v75) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v60;
      __src[13].i64[1] = C3DBlendStatesDefaultOver();
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_VR_pos_vertex";
      __src[20].i64[0] = @"debug_cluster_slices_frag";
      v61 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v61);

      memcpy(__dst, __src, 0x168uLL);
      v62 = [v75 newRenderPipelineStateWithDesc:__dst];
      v59 = a1;
      *(a1 + 64) = v62;
    }

    v63 = v59;
    if ([*(v59 + 48) state])
    {
      v64 = [*(v63 + 48) state];
      if (*(v49 + 3376) != v64)
      {
        *(v49 + 3376) = v64;
        [*(v49 + 3392) setRenderPipelineState:v64];
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(v49, a5[1].i64[1], 0);
      [(SCNMTLRenderContext *)RenderContext _setSceneBufferAtVertexIndex:0 fragmentIndex:?];
      SCNMTLRenderCommandEncoder::setFragmentBytes(v49, &a5[5], 8uLL, 1);
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v49);
      SCNMTLRenderCommandEncoder::applyChangedStates(v49);
      [*(v49 + 3392) drawPrimitives:4 vertexStart:0 vertexCount:4];
      v63 = a1;
    }

    if ([*(v63 + 64) state])
    {
      v65 = [*(a1 + 64) state];
      if (*(v49 + 3376) != v65)
      {
        *(v49 + 3376) = v65;
        [*(v49 + 3392) setRenderPipelineState:v65];
      }

      v66 = [a5[1].i64[1] depth];
      v67.i32[0] = 0.5;
      v67.f32[1] = 0.5 / v66;
      v67.i32[2] = 0;
      v67.f32[3] = 1.0 - v67.f32[1];
      __src[0] = v67;
      SCNMTLRenderCommandEncoder::setVertexBytes(v49, __src, 0x10uLL, 0);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v49, a5[1].i64[1], 0);
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v49);
      SCNMTLRenderCommandEncoder::applyChangedStates(v49);
      [*(v49 + 3392) drawPrimitives:4 vertexStart:0 vertexCount:4];
    }
  }

  else
  {
    __dst[6] = xmmword_21C2A1E10;
    __dst[7] = *"fff?333?";
    __dst[8] = xmmword_21C2A1E30;
    __dst[2] = xmmword_21C2A1DD0;
    __dst[3] = unk_21C2A1DE0;
    __dst[5] = unk_21C2A1E00;
    __dst[4] = xmmword_21C2A1DF0;
    __dst[1] = unk_21C2A1DC0;
    __dst[0] = *"333?333?333?";
    v28 = v69;
    scn_plane_intersect_3_planes(v69[10], v69[11], v69[4], v69[5], v69[2], v69[3], &v84);
    scn_plane_intersect_3_planes(v28[10], v28[11], *v28, v28[1], v28[4], v28[5], &v85);
    scn_plane_intersect_3_planes(v28[10], v28[11], v28[2], v28[3], v28[6], v28[7], &v86);
    scn_plane_intersect_3_planes(v28[10], v28[11], v28[6], v28[7], *v28, v28[1], &v87);
    scn_plane_intersect_3_planes(v28[8], v28[9], v28[4], v28[5], v28[2], v28[3], &v88);
    scn_plane_intersect_3_planes(v28[8], v28[9], *v28, v28[1], v28[4], v28[5], &v89);
    scn_plane_intersect_3_planes(v28[8], v28[9], v28[2], v28[3], v28[6], v28[7], &v90);
    scn_plane_intersect_3_planes(v28[8], v28[9], v28[6], v28[7], *v28, v28[1], v91);
    v29 = v68;
    __src[1] = v68;
    v30 = a1;
    v31 = v79;
    v32 = v71;
    if (v71)
    {
      v78 = 0;
      v33 = 0;
      v34 = a5[6].i32[3];
      v35 = a5->i64[0];
      do
      {
        v36 = v30[10];
        if ((v36 == v33 || v36 >= v32) && v31 != 0)
        {
          v39 = 0;
          v40 = v78;
          do
          {
            v41 = v30[9];
            if ((v41 == v39 || v41 >= v31) && v10 != 0)
            {
              v44 = 0;
              do
              {
                v45 = v30[8];
                if (v45 >= v10 || v44 == v45)
                {
                  v47 = v40 + v44;
                  v29 = __computeFrustumExtrema(__src, v44, v39, v33, v82, v29);
                  if (v34)
                  {
                    v29.i64[0] = *(v35 + 8 * v47);
                  }

                  else
                  {
                    v29.i64[0] = *(v35 + 4 * v47);
                  }

                  v48 = v29.u8[3];
                  if (v29.u8[2] > ((v29.i16[1] & 0xFF00) >> 8))
                  {
                    v48 = v29.u8[2];
                  }

                  if (v48)
                  {
                    if (v48 >= 8)
                    {
                      v48 = 8;
                    }

                    C3DAuthoringEnvironmentAppendDebugAsymetricBox(AuthoringEnvironment, v82, 0, &__dst[v48]);
                  }

                  v30 = a1;
                }

                ++v44;
              }

              while (v10 != v44);
            }

            ++v39;
            v40 += v10;
            v31 = v79;
          }

          while (v39 != v79);
        }

        ++v33;
        v78 += v79 * v10;
        v32 = v71;
      }

      while (v33 != v71);
    }
  }
}

__int16 *std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(__int16 *result, __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 4 * v70) > *(*a3 + 4 * v71))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = v9[1];
      v77 = *v9;
      v78 = *v9;
      v79 = *a3;
      v80 = *(*a3 + 4 * v73);
      v81 = *(*a3 + 4 * v77);
      v82 = v9[2];
      v83 = *(*a3 + 4 * v75);
      if (v80 <= v81)
      {
        if (v83 > v80)
        {
          *v72 = v82;
          *v74 = v76;
          v84 = v9;
          result = v9 + 1;
          v77 = v73;
          v75 = v73;
          if (v83 > v81)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v79 + 4 * v88) > *(v79 + 4 * v75))
          {
            *v74 = v88;
            *(a2 - 1) = v76;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v79 + 4 * v89);
            if (v91 > *(v79 + 4 * v90))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 > *(v79 + 4 * v92))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v83 > v80)
        {
          v84 = v9;
          result = v9 + 2;
          v76 = *v9;
          goto LABEL_104;
        }

        *v9 = v76;
        v9[1] = v78;
        v84 = v9 + 1;
        result = v9 + 2;
        v76 = v78;
        if (v83 > v81)
        {
LABEL_104:
          *v84 = v82;
          *result = v78;
          v75 = v77;
          goto LABEL_106;
        }
      }

      v76 = v82;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,short *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * v19);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) > *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) > v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = v9[1];
      v33 = *(v15 + 4 * *(v13 - 1));
      v34 = *(v15 + 4 * v32);
      v35 = *(v13 - 1);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v33 <= v34)
      {
        if (v37 > v33)
        {
          *v31 = v36;
          *(a2 - 2) = v35;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) > *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v33)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v35;
        *v31 = v32;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) > v34)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v43 = v13[1];
      v42 = v13 + 1;
      v44 = v9[2];
      v45 = *(v15 + 4 * v43);
      v46 = *(v15 + 4 * v44);
      v47 = v43;
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v45 <= v46)
      {
        if (v49 > v45)
        {
          *v42 = v48;
          *(a2 - 3) = v47;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) > *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v45)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v47;
        *v42 = v44;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) > v46)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v44;
        }
      }

      v53 = *v14;
      v54 = *(v15 + 4 * *v14);
      v55 = *(v15 + 4 * *v31);
      v56 = *v31;
      v57 = *v42;
      v58 = *(v15 + 4 * *v42);
      if (v54 <= v55)
      {
        if (v58 > v54)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          v53 = v56;
          if (v58 > v55)
          {
            goto LABEL_59;
          }

          v53 = v57;
        }
      }

      else
      {
        if (v58 <= v54)
        {
          *v31 = v53;
          *v14 = v56;
          v31 = v14;
          v53 = v57;
          if (v58 <= v55)
          {
            v53 = v56;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v56;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * v23);
    if (v24 > v25)
    {
      if (v17 > v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) > v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 <= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) <= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) <= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = *a3;
  v65 = *(*a3 + 4 * v9[1]);
  v66 = *(*a3 + 4 * v63);
  v67 = v9[1];
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v65 <= v66)
  {
    if (v69 > v65)
    {
      v9[1] = v68;
      *(a2 - 1) = v67;
      v85 = v9[1];
      v86 = *v9;
      if (*(v64 + 4 * v85) > *(v64 + 4 * v86))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 <= v65)
    {
      *v9 = v67;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v64 + 4 * v87) <= v66)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

__int16 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * v6);
  v10 = *(*a6 + 4 * v7);
  v11 = *a2;
  v12 = *a3;
  v13 = *(*a6 + 4 * *a3);
  if (v9 <= v10)
  {
    if (v13 <= v9)
    {
      v7 = *a3;
      v11 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
      v14 = *a2;
      v15 = *result;
      v7 = v6;
      if (*(v8 + 4 * v14) > *(v8 + 4 * v15))
      {
        *result = v14;
        *a2 = v15;
        v7 = *a3;
        v11 = *a3;
      }
    }
  }

  else
  {
    if (v13 <= v9)
    {
      *result = v11;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 4 * *a3) <= v10)
      {
        v7 = *a3;
        goto LABEL_12;
      }

      *a2 = v11;
    }

    else
    {
      *result = v12;
    }

    *a3 = v7;
    v11 = v7;
  }

LABEL_12:
  v16 = *a4;
  if (*(v8 + 4 * v16) > *(v8 + 4 * v7))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) > *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) > *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) > *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) > *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) > *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) > *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

__int16 *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 > *(v5 + 4 * v8))
        {
          v10 = v7;
          v11 = v8;
          v12 = v4;
          while (1)
          {
            *(result + v12 + 2) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(result + v12 - 2);
            v12 -= 2;
            if (v9 <= *(v5 + 4 * v11))
            {
              v13 = (result + v12 + 2);
              goto LABEL_10;
            }
          }

          v13 = result;
LABEL_10:
          *v13 = v10;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int16 *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 > *(v4 + 4 * v6))
        {
          v8 = v5;
          v9 = v6;
          v10 = result;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            --v10;
          }

          while (v7 > *(v4 + 4 * v9));
          *v10 = v8;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

__int16 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 <= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 <= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 <= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 > *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 <= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 > *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

__int16 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) > v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) <= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) <= v6);
  }

  if (v8 < a2)
  {
    v12 = v7;
    v13 = *a2;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v12;
      do
      {
        v16 = v14[1];
        ++v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) > v6);
      do
      {
        v17 = *--v15;
        v13 = v17;
      }

      while (*(v5 + 4 * v17) <= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * a1[1]);
      v9 = *(*a3 + 4 * v6);
      v10 = a1[1];
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v8 <= v9)
      {
        if (v12 > v8)
        {
          a1[1] = v11;
          *(a2 - 1) = v10;
          v37 = a1[1];
          v38 = *a1;
          if (*(v7 + 4 * v37) > *(v7 + 4 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v12 <= v8)
      {
        *a1 = v10;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v7 + 4 * v51) <= v9)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = a1[1];
    v28 = *a1;
    v29 = *a1;
    v30 = *a3;
    v31 = *(*a3 + 4 * v24);
    v32 = *(*a3 + 4 * v28);
    v33 = a1[2];
    v34 = *(*a3 + 4 * v26);
    if (v31 <= v32)
    {
      if (v34 > v31)
      {
        *v23 = v33;
        *v25 = v27;
        v35 = a1;
        v36 = a1 + 1;
        v28 = v24;
        v26 = v24;
        if (v34 <= v32)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 > v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v27 = *a1;
LABEL_44:
        *v35 = v33;
        *v36 = v29;
        v26 = v28;
LABEL_46:
        v52 = *(a2 - 1);
        if (*(v30 + 4 * v52) > *(v30 + 4 * v26))
        {
          *v25 = v52;
          *(a2 - 1) = v27;
          v53 = *v25;
          v54 = *v23;
          v55 = *(v30 + 4 * v53);
          if (v55 > *(v30 + 4 * v54))
          {
            a1[1] = v53;
            a1[2] = v54;
            v56 = *a1;
            if (v55 > *(v30 + 4 * v56))
            {
              *a1 = v53;
              a1[1] = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v27 = v29;
      if (v34 > v32)
      {
        goto LABEL_44;
      }
    }

    v27 = v33;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 4 * v14);
  v18 = *(*a3 + 4 * *a1);
  v19 = a1[2];
  v20 = *(*a3 + 4 * v19);
  if (v17 > v18)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v19;
    *v22 = v15;
    goto LABEL_26;
  }

  if (v20 > v17)
  {
    a1[1] = v19;
    *v13 = v14;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 6; ; i += 2)
  {
    v42 = *v13;
    v43 = *(v16 + 4 * *v39);
    if (v43 > *(v16 + 4 * v42))
    {
      v44 = *v39;
      v45 = v42;
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 2;
        if (v46 == 2)
        {
          break;
        }

        v48 = *(a1 + v46 - 4);
        v45 = v48;
        v49 = *(v16 + 4 * v48);
        v46 = v47;
        if (v43 <= v49)
        {
          v50 = (a1 + v47);
          goto LABEL_34;
        }
      }

      v50 = a1;
LABEL_34:
      *v50 = v44;
      if (++v40 == 8)
      {
        break;
      }
    }

    v13 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__int16 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,short *>(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) > *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) > *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(uint64_t result, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *a4;
      v11 = *(v9 + 4 * v10);
      if (*(v9 + 4 * *v7) <= v11)
      {
        v12 = *v7;
        do
        {
          v13 = v7;
          *a4 = v12;
          if (v5 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 2 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v12 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * *v7) <= v11);
        *v13 = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 2 * v4);
    v6 = *v5;
    v9 = *(a2 - 2);
    v7 = (a2 - 2);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 2 * v4);
        LOWORD(v6) = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * *v5) > v11);
      *v12 = v8;
    }
  }

  return result;
}

__int16 *std::__introsort<std::_ClassicAlgPolicy,__VolumeComp &,short *,false>(__int16 *result, __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 4 * v70) < *(*a3 + 4 * v71))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = v9[1];
      v77 = *v9;
      v78 = *v9;
      v79 = *a3;
      v80 = *(*a3 + 4 * v73);
      v81 = *(*a3 + 4 * v77);
      v82 = v9[2];
      v83 = *(*a3 + 4 * v75);
      if (v80 >= v81)
      {
        if (v83 < v80)
        {
          *v72 = v82;
          *v74 = v76;
          v84 = v9;
          result = v9 + 1;
          v77 = v73;
          v75 = v73;
          if (v83 < v81)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v79 + 4 * v88) < *(v79 + 4 * v75))
          {
            *v74 = v88;
            *(a2 - 1) = v76;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v79 + 4 * v89);
            if (v91 < *(v79 + 4 * v90))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 < *(v79 + 4 * v92))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v83 < v80)
        {
          v84 = v9;
          result = v9 + 2;
          v76 = *v9;
          goto LABEL_104;
        }

        *v9 = v76;
        v9[1] = v78;
        v84 = v9 + 1;
        result = v9 + 2;
        v76 = v78;
        if (v83 < v81)
        {
LABEL_104:
          *v84 = v82;
          *result = v78;
          v75 = v77;
          goto LABEL_106;
        }
      }

      v76 = v82;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *,short *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = v9[1];
      v33 = *(v15 + 4 * *(v13 - 1));
      v34 = *(v15 + 4 * v32);
      v35 = *(v13 - 1);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v33 >= v34)
      {
        if (v37 < v33)
        {
          *v31 = v36;
          *(a2 - 2) = v35;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v33)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v35;
        *v31 = v32;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v34)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v43 = v13[1];
      v42 = v13 + 1;
      v44 = v9[2];
      v45 = *(v15 + 4 * v43);
      v46 = *(v15 + 4 * v44);
      v47 = v43;
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v45 >= v46)
      {
        if (v49 < v45)
        {
          *v42 = v48;
          *(a2 - 3) = v47;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v45)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v47;
        *v42 = v44;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v46)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v44;
        }
      }

      v53 = *v14;
      v54 = *(v15 + 4 * *v14);
      v55 = *(v15 + 4 * *v31);
      v56 = *v31;
      v57 = *v42;
      v58 = *(v15 + 4 * *v42);
      if (v54 >= v55)
      {
        if (v58 < v54)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          v53 = v56;
          if (v58 < v55)
          {
            goto LABEL_59;
          }

          v53 = v57;
        }
      }

      else
      {
        if (v58 >= v54)
        {
          *v31 = v53;
          *v14 = v56;
          v31 = v14;
          v53 = v57;
          if (v58 >= v55)
          {
            v53 = v56;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v56;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * v23);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) >= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__VolumeComp &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__VolumeComp &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,__VolumeComp &,short *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = *a3;
  v65 = *(*a3 + 4 * v9[1]);
  v66 = *(*a3 + 4 * v63);
  v67 = v9[1];
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v65 >= v66)
  {
    if (v69 < v65)
    {
      v9[1] = v68;
      *(a2 - 1) = v67;
      v85 = v9[1];
      v86 = *v9;
      if (*(v64 + 4 * v85) < *(v64 + 4 * v86))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 >= v65)
    {
      *v9 = v67;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v64 + 4 * v87) >= v66)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

__int16 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *,0>(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * v6);
  v10 = *(*a6 + 4 * v7);
  v11 = *a2;
  v12 = *a3;
  v13 = *(*a6 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v13 >= v9)
    {
      v7 = *a3;
      v11 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
      v14 = *a2;
      v15 = *result;
      v7 = v6;
      if (*(v8 + 4 * v14) < *(v8 + 4 * v15))
      {
        *result = v14;
        *a2 = v15;
        v7 = *a3;
        v11 = *a3;
      }
    }
  }

  else
  {
    if (v13 >= v9)
    {
      *result = v11;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 4 * *a3) >= v10)
      {
        v7 = *a3;
        goto LABEL_12;
      }

      *a2 = v11;
    }

    else
    {
      *result = v12;
    }

    *a3 = v7;
    v11 = v7;
  }

LABEL_12:
  v16 = *a4;
  if (*(v8 + 4 * v16) < *(v8 + 4 * v7))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) < *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

__int16 *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v7;
          v11 = v8;
          v12 = v4;
          while (1)
          {
            *(result + v12 + 2) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(result + v12 - 2);
            v12 -= 2;
            if (v9 >= *(v5 + 4 * v11))
            {
              v13 = (result + v12 + 2);
              goto LABEL_10;
            }
          }

          v13 = result;
LABEL_10:
          *v13 = v10;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}