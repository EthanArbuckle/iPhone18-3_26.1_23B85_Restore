void AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsWithIndirectParameters(uint64_t a1, int64x2_t *a2, _BYTE *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, int a11)
{
  AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindTilePipelineResources(a1, *(a1 + 23952), a5);
  v15 = *a2;
  *(*(a1 + 18888) + 832) = vmovn_s64(*a2);
  v16 = *(a1 + 23944);
  v17 = *(a1 + 23952);
  v18 = *(a1 + 18880);
  v19 = a2[1].i64[0];
  v20 = *(v16 + 96);
  v21 = *(v20 + 4932);
  v22 = *(v20 + 4936);
  v23 = v15.i64[0];
  v76 = v15;
  v24 = v15.u64[1];
  v26 = v15.i64[0] == v21 && v15.i64[1] == v22;
  *(v16 + 8) = v21;
  *(v16 + 12) = v22;
  if ((a8 & 0x100000000) != 0)
  {
    v27 = a8;
  }

  else
  {
    v27 = 0;
  }

  *(v16 + 64) = v27;
  v28 = *(v16 + 112);
  v29 = *(v28 + 1840) - 1;
  v77 = v18;
  v78 = v17;
  v75 = v19;
  if (v29 > 6)
  {
    v30 = 10;
  }

  else
  {
    v30 = dword_29D2F76D0[v29];
  }

  v31 = v30;
  v32 = v28 + 32 * v30;
  if (((1 << v30) & 0xFFF00000480) != 0 && !*(v32 + 48))
  {
    v72 = v15.u64[1];
    v73 = v15.i64[0];
    v71 = AGX::DataBufferAllocator<44ul>::growNoInline(v28, v30, 0);
    v24 = v72;
    v23 = v73;
    if ((v71 & 1) == 0)
    {
LABEL_42:
      abort();
    }
  }

  v34 = *(v32 + 40);
  v33 = *(v32 + 48);
  v35 = (v32 + 40);
  v36 = v33 + 48;
  if (v36 <= v34)
  {
    goto LABEL_16;
  }

  v66 = v28;
  v67 = v31;
  v68 = v23;
  v69 = v24;
  v70 = AGX::DataBufferAllocator<44ul>::growNoInline(v66, v67, 0);
  v24 = v69;
  v23 = v68;
  v37 = v26;
  if (v70)
  {
    v36 = v35[1] + 48;
    if (v36 > *v35)
    {
      goto LABEL_42;
    }

LABEL_16:
    v35[2] = v36;
    v37 = v26;
  }

  v38 = *(v16 + 112);
  v39 = *(v38 + 1840) - 1;
  if (v39 > 6)
  {
    v40 = 10;
  }

  else
  {
    v40 = qword_29D2F76F0[v39];
  }

  v41 = v38 + 32 * v40;
  v42 = *(v41 + 48);
  v43 = *(v41 + 64) + v42;
  *(v41 + 48) = v42 + 48;
  *a9 = v43;
  *a10 = v42;
  *(v16 + 16) = v43;
  if (a7)
  {
    v44 = -v21;
    v45 = -v22;
    v46 = v21 - 1;
    v47 = v22 - 1;
    v48 = (v42 + 24);
    v49 = 0;
    if (v37)
    {
      v50 = (a6 + 32);
      do
      {
        v51 = *(v50 - 4);
        v52 = *(v50 - 3);
        v53 = (v51 & v44) / v21;
        v54 = (v52 & v45) / v22;
        LODWORD(v51) = ((v46 + v51 + *(v50 - 1)) & v44) / v21 - v53;
        LODWORD(v52) = ((v47 + v52 + *v50) & v45) / v22 - v54;
        *(v48 - 6) = (v51 * v21);
        *(v48 - 2) = v51;
        *v48 = v52;
        v55 = v51 + 1 + (v51 + 1) * v52;
        *(v48 - 4) = (v52 * v22);
        *(v48 + 2) = v53;
        *(v48 + 4) = v54;
        if (v49 <= v55)
        {
          v49 = v55;
        }

        v50 += 6;
        ++v48;
        --a7;
      }

      while (a7);
    }

    else
    {
      v56 = v23;
      v57 = v24;
      v58 = (a6 + 32);
      do
      {
        v59 = *(v58 - 4);
        v60 = *(v58 - 3);
        v61 = (v59 & v44) / v21;
        v62 = (v60 & v45) / v22;
        LODWORD(v59) = ((v46 + v59 + *(v58 - 1)) & v44) / v21 - v61;
        LODWORD(v60) = ((v47 + v60 + *v58) & v45) / v22 - v62;
        *(v48 - 6) = v56;
        *(v48 - 4) = v57;
        *(v48 - 2) = v59;
        *v48 = v60;
        v63 = v59 + 1 + (v59 + 1) * v60;
        *(v48 + 2) = v61;
        *(v48 + 4) = v62;
        if (v49 <= v63)
        {
          v49 = v63;
        }

        v58 += 6;
        ++v48;
        --a7;
      }

      while (a7);
    }
  }

  else
  {
    v49 = 0;
  }

  v84 = 25;
  v86 = 0;
  v87 = 0;
  __p = 0;
  v83 = &unk_2A23F96B8;
  v88 = 0;
  if ((a8 & 0x100000000) != 0)
  {
    v64 = 6;
  }

  else
  {
    v64 = 2;
  }

  LOBYTE(v88) = v64;
  TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v16 + 80), &v83);
  v81 = v76;
  v82 = v75;
  AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(v16, v78, v77, a1 + 88, &v81, a3, a4, TileDispatchVertexProgram, v37, v49, a8, a11);
  v83 = &unk_2A23F96F8;
  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }
}

void sub_29CF2972C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTileProgramVisibleFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0x22)
  {
    result[a3 + 2816] = 0;
  }

  if (a2)
  {
    if (a3 > 0x1E)
    {
      v4 = (result[2361] + 8 * (a3 - 31) + 48);
      v3 = a3;
    }

    else
    {
      v3 = a3;
      v4 = (result[2360] + 8 * a3);
    }

    *v4 = *(a2 + 376);
    v9 = MEMORY[0x29EDC5638];
    v10 = (a2 + *MEMORY[0x29EDC5638]);
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    v14 = &result[v3];
    v14[2851] = v13;
    v14[2921] = v11;
    if (a3 >= 0x1F)
    {
      *(result[2361] + 8 * (a3 - 31) + 360) = v11;
    }

    else
    {
      v15 = result[2360];
      v16 = v15 + 8 * v3;
      *(v15 + 4 * v3 + 17516) = v12;
      *(v16 + 248) = v11;
      *(v16 + 17640) = v12;
      *(v16 + 17644) = v13 >> 8;
    }

    v14[2362] = a2 + *v9;
    v17 = result[3];
    v18 = v17[2].i64[1];
    if (*(v18 + 480) == 1)
    {
      v19 = v17[3];
      v20 = v17[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
      {
        v21 = a2 + *v9;
        if ((*(v21 + 23) & 0x10) != 0)
        {
          v21 = *v21;
        }

        v22 = *v21;
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = *(v22 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v23))))))
        {
          v24 = vandq_s8(v23, v20);
          v25 = v24.u64[1];
          if (v24.i64[1])
          {
            v26 = 3;
          }

          else
          {
            v25 = v24.i64[0];
            if (v24.i64[0])
            {
              v26 = 2;
            }

            else
            {
              v31 = vandq_s8(*v22, v19);
              v25 = v31.u64[1];
              if (v31.i64[1])
              {
                v26 = 1;
              }

              else
              {
                v26 = 0;
                v22 = 0;
                v27 = 0;
                v25 = v31.i64[0];
                if (!v31.i64[0])
                {
                  goto LABEL_22;
                }
              }
            }
          }

          v32 = &v17->i8[8 * v26];
          v33 = __clz(v25) ^ 0x3F;
          v22 = (*(v32 + 10) >> v33) & 1;
          v27 = (*(v32 + 14) >> v33) & 1;
LABEL_22:
          v28 = (v18 + 8 * (a3 > 0x3F));
          v28[4] = v28[4] & ~(1 << a3) | (v22 << a3);
          v28[24] = v28[24] & ~(1 << a3) | (v27 << a3);
          v28[44] &= ~(1 << a3);
          result = result[4];
          if (result)
          {
            return MTLResourceListAddResource();
          }

          return result;
        }
      }
    }

    v22 = 0;
LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  if (a3 >= 0x1F)
  {
    v29 = result[2361] + 8 * (a3 - 31);
    *(v29 + 48) = 0;
    *(v29 + 360) = 0;
    v30 = &result[a3];
    v30[2851] = 0;
    v30[2921] = 0;
  }

  else
  {
    v5 = result[2360];
    v6 = a3;
    v7 = (v5 + v6 * 8);
    *v7 = 0;
    v7[31] = 0;
    v8 = &result[v6];
    v8[2851] = 0;
    v8[2921] = 0;
    *(v5 + 4 * a3 + 17516) = 0;
    v7[2205] = 0;
  }

  return result;
}

uint64_t AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTileProgramIntersectionFunctionTable(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (!a2)
  {
    *(result + 8 * a3 + 22528) = 0;
    if (a3 >= 0x1F)
    {
      v33 = *(result + 18888) + 8 * (a3 - 31);
      *(v33 + 48) = 0;
      *(v33 + 360) = 0;
      v34 = result + 8 * a3;
      *(v34 + 22808) = 0;
      *(v34 + 23368) = 0;
    }

    else
    {
      v12 = *(result + 18880);
      v13 = (v12 + 8 * a3);
      *v13 = 0;
      v13[31] = 0;
      v14 = result + 8 * a3;
      *(v14 + 22808) = 0;
      *(v14 + 23368) = 0;
      *(v12 + 4 * a3 + 17516) = 0;
      v13[2205] = 0;
    }

    return result;
  }

  v5 = *(a2 + 312);
  v6 = *(v5 + 112);
  if (a3 >= 0x1F)
  {
    v15 = *(result + 18888) + 8 * (a3 - 31);
    *(v15 + 48) = v6;
    *(v15 + 360) = 0;
    v10 = a3;
    v16 = result + 8 * a3;
    *(v16 + 22808) = 0;
    *(v16 + 23368) = 0;
  }

  else
  {
    v7 = *(result + 18880);
    v8 = 8 * a3;
    v9 = (v7 + v8);
    *v9 = v6;
    v10 = a3;
    v9[31] = 0;
    v11 = result + v8;
    *(v11 + 22808) = 0;
    *(v11 + 23368) = 0;
    *(v7 + 4 * a3 + 17516) = 0;
    v9[2205] = 0;
  }

  v17 = [*(v5 + 8) backingResource];
  v18 = MEMORY[0x29EDC5638];
  *(v4 + 8 * v10 + 18896) = v17 + *MEMORY[0x29EDC5638];
  v19 = *(v4 + 24);
  v20 = v19[2].i64[1];
  if (*(v20 + 480) != 1)
  {
    goto LABEL_15;
  }

  v21 = v19[3];
  v22 = v19[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v21), vceqzq_s64(v22))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = v17 + *v18;
  if ((*(v23 + 23) & 0x10) != 0)
  {
    v23 = *v23;
  }

  v24 = *v23;
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = *(v24 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v24), vceqzq_s64(v25))))) & 1) == 0)
  {
LABEL_15:
    v24 = 0;
LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  v26 = vandq_s8(v25, v22);
  v27 = v26.u64[1];
  if (v26.i64[1])
  {
    v28 = 3;
LABEL_31:
    v36 = &v19->i8[8 * v28];
    v37 = __clz(v27) ^ 0x3F;
    v24 = (*(v36 + 10) >> v37) & 1;
    v29 = (*(v36 + 14) >> v37) & 1;
    goto LABEL_17;
  }

  v27 = v26.i64[0];
  if (v26.i64[0])
  {
    v28 = 2;
    goto LABEL_31;
  }

  v35 = vandq_s8(*v24, v21);
  v27 = v35.u64[1];
  if (v35.i64[1])
  {
    v28 = 1;
    goto LABEL_31;
  }

  v28 = 0;
  v24 = 0;
  v29 = 0;
  v27 = v35.i64[0];
  if (v35.i64[0])
  {
    goto LABEL_31;
  }

LABEL_17:
  v30 = (v20 + 8 * (a3 > 0x3F));
  v30[4] = v30[4] & ~(1 << a3) | (v24 << a3);
  v30[24] = v30[24] & ~(1 << a3) | (v29 << a3);
  v30[44] &= ~(1 << a3);
  [*(v5 + 8) backingResource];
  result = *(v4 + 32);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v31 = *(v5 + 64);
  for (i = *(v5 + 72); v31 != i; v31 += 2)
  {
    result = *v31;
    if (*v31)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

  return result;
}

void AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatch(uint64_t *a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v249 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(*a1 + 5872);
  if (!v5 || !(*(v5 + 2124) & (*(v5 + 2126) ^ 0xFFFF) | (*(v5 + 2126) & *(v4 + 1564))))
  {
    return;
  }

  v6 = *(v5 + 192);
  v8 = a1[4];
  if (v6 <= *(v5 + 200))
  {
    v6 = *(v5 + 200);
  }

  v9.i32[0] = v6;
  v9.i32[1] = *(v5 + 204);
  v10 = vshl_n_s32(v9, 5uLL);
  *v17.i8 = vshl_u32(vadd_s32(v10, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v11 = vshl_u32(vadd_s32(v10, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v12 = vadd_s32(*v17.i8, vrev64_s32(v11));
  v13 = vmul_s32(v12, 0x600000000ALL);
  v14 = v13.i32[1];
  v15 = v13.i32[0];
  v16 = v13.i32[0] + 32 * v12.i32[1];
  v17.i32[1] = v11.i32[1];
  v18 = (v4 + 6144);
  v19 = *(v4 + 6148);
  v20 = (v4 + 6152);
  if (v19)
  {
    v21 = v19 + 64;
  }

  else
  {
    v21 = 0;
  }

  v22 = v8[3].i64[1];
  if (*(v22 + 16999))
  {
    v23 = 11;
  }

  else
  {
    v23 = 6;
  }

  if (v23 >= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v22 + 7092);
  v8[3].i32[1] = 5;
  v27 = v8[4].i32[2];
  v26 = v8[4].i32[3];
  v28 = vld1_dup_f32(v20);
  v29.i32[0] = v21;
  v29.i32[1] = *v18;
  v30 = vshl_u32(vadd_s32(v29, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v33 = vrev64_s32(vshl_u32(vadd_s32(v29, 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
  v31 = vshl_u32(vadd_s32(v28, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v32 = vadd_s32(vadd_s32(v30, v31), v33);
  v33.i32[0] = v30.i32[1];
  v34 = v8[6].i32[0];
  *v35.i8 = v33;
  v35.i64[1] = v17.i64[0];
  v36 = v32.i32[1];
  v37 = v32.i32[0];
  v38 = vaddvq_s32(v35);
  v39 = v32.i32[1] + v32.i32[0];
  v40 = v32.i32[1] + v32.i32[0] + v16;
  v41 = __OFSUB__(v40, v34);
  v42 = v40 - v34;
  if ((v42 < 0) ^ v41 | (v42 == 0))
  {
    v42 = 0;
  }

  v43 = v8[5].i32[0];
  v44 = *v8;
  v45.i64[0] = v8[1].i64[0];
  v17.u64[1] = v33;
  *v8 = vmaxq_s32(*v8, v17);
  v46 = v24 * v36 + v23 * v37 + v15 + v14;
  v47 = ((v43 + v31.i32[1] + (v42 + v39) * v27 + v38 + (v15 + v36) * v26 + 64) * v25 + 7) & 0xFFFFFFF8;
  v48 = v46 - v34;
  if (v46 <= v34)
  {
    v48 = 0;
  }

  v49 = ((v38 + v48 * v27 + v43 + v31.i32[1] + 64) * v25 + 7) & 0xFFFFFFF8;
  v50.i32[0] = vdup_lane_s32(v31, 1).u32[0];
  v50.i32[1] = v47;
  *v8[1].i8 = vmax_s32(*v45.i8, *v50.i8);
  v51 = v8[1].i32[2];
  if (v51 <= v49)
  {
    v52 = v49;
  }

  else
  {
    v52 = v8[1].i32[2];
  }

  v53 = v8[2].i32[0];
  v45.i64[1] = __PAIR64__(v53, v51);
  v50.i64[1] = __PAIR64__(v46, v49);
  v8[1].i32[2] = v52;
  if (v53 > v46)
  {
    v46 = v53;
  }

  v8[2].i32[0] = v46;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v17, v44), vcgtq_s32(v50, v45)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1[4], a2 + 1360, 0);
  }

  v54 = *(*a1 + 3568);
  *&v55 = v54;
  *(&v55 + 1) = HIDWORD(v54);
  v56 = v55;
  v227 = a1;
  v57 = a1[112];
  v229 = *a1;
  v58 = *(*a1 + 4932);
  v59 = *(v57 + 96);
  v60 = *(v59 + 4932);
  v61 = *(v59 + 4936);
  v62 = v58;
  v63 = v58 == v60 && HIDWORD(v58) == v61;
  *(v57 + 8) = v60;
  v64 = v63;
  v223 = v64;
  *(v57 + 12) = v61;
  *(v57 + 64) = 0;
  v65 = ((v60 + v56 - 1) & -v60) / v60;
  v66 = ((v61 + DWORD2(v56) - 1) & -v61) / v61;
  if (v63)
  {
    v67 = (v65 * v60) + -0.00390625;
    v68 = (v66 * v61) + -0.00390625;
  }

  else
  {
    v67 = v58 + -0.0039062;
    v68 = HIDWORD(v58) + -0.0039062;
  }

  *(v57 + 16) = v67;
  *(v57 + 24) = v68;
  *(v57 + 32) = v65;
  *(v57 + 40) = v66;
  *(v57 + 48) = 0;
  *(v57 + 56) = 0;
  v233 = 25;
  v235 = 0;
  v236 = 0;
  __p = 0;
  v232 = &unk_2A23F96B8;
  v237 = 0;
  v222 = v66 * v65;
  TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v57 + 80), &v232);
  v69 = *(TileDispatchVertexProgram + 2120);
  do
  {
    IOGPUResourceListAddResource();
    v69 &= ~(1 << __clz(__rbit32(v69)));
  }

  while (v69);
  if ((HIDWORD(v62) * v62) <= *(v5 + 2120))
  {
    v70 = *(v57 + 112);
    v71 = v70[6];
    if ((v71 + 23) > v70[5])
    {
      v72 = TileDispatchVertexProgram;
      if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 0, 0))
      {
        v210 = v70[6] + 184;
        if (v210 > v70[5])
        {
          goto LABEL_189;
        }

        v70[7] = v210;
        v72 = TileDispatchVertexProgram;
        *v71 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v70, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      v70[7] = v71 + 23;
      v72 = TileDispatchVertexProgram;
    }

    v73 = *(v57 + 112);
    v74 = *(v72 + 16) + 667;
    v75 = *(v73 + 144) + v74;
    if (v75 > *(v73 + 136))
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 3, 0))
      {
LABEL_42:
        v76 = *(v73 + 1008) + 667;
        if (v76 > *(v73 + 1000))
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 30, 0))
          {
LABEL_44:
            v77 = (*(*(v72 + 1784) + 8) - **(v72 + 1784)) + 63;
            v78 = *(v73 + 208) + v77;
            if (v78 > *(v73 + 200))
            {
              if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 5, 0))
              {
LABEL_46:
                v79 = (*(*(v5 + 680) + 8) - **(v5 + 680)) + 63;
                v80 = *(v73 + 240) + v79;
                if (v80 > *(v73 + 232))
                {
                  if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 6, 0))
                  {
LABEL_48:
                    v81 = *(v5 + 232);
                    if (*(v73 + 1840))
                    {
                      v82 = 4;
                    }

                    else
                    {
                      v82 = 11;
                    }

                    v83 = (v73 + 40 + 32 * v82);
                    if (((1 << v82) & 0x480) != 0 && !v83[1])
                    {
                      v211 = v82;
                      v212 = AGX::DataBufferAllocator<44ul>::growNoInline(v73, v82, 0);
                      v82 = v211;
                      if ((v212 & 1) == 0)
                      {
LABEL_189:
                        abort();
                      }
                    }

                    v84 = v81 + 31;
                    v85 = v83[1] + v84;
                    if (v85 > *v83)
                    {
                      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, v82, 0))
                      {
LABEL_55:
                        v86 = *(v57 + 112);
                        v87 = v86[38] + 16;
                        if (v87 > v86[37])
                        {
                          if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 8, 0))
                          {
LABEL_57:
                            v88 = *(v57 + 112);
                            v89 = v88[42] + 20;
                            if (v89 > v88[41])
                            {
                              if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 9, 0))
                              {
LABEL_59:
                                *(v57 + 172) = 1;
                                v90 = *(v72 + 3144);
                                v91 = HIDWORD(*(v57 + 120));
                                v92 = *(v57 + 128);
                                v93 = HIDWORD(*(v57 + 120));
                                if (*(v57 + 120) > v90)
                                {
                                  v90 = *(v57 + 120);
                                }

                                v94 = *(v57 + 136);
                                *(v57 + 120) = v90;
                                v95 = *(v72 + 3148);
                                if (v91 > v95)
                                {
                                  v95 = v91;
                                }

                                v96 = *(v57 + 144);
                                *(v57 + 124) = v95;
                                v97 = *(v72 + 3152);
                                if (v92 > v97)
                                {
                                  v97 = v92;
                                }

                                *(v57 + 128) = v97;
                                v98 = *(v72 + 3156);
                                if (v93 > v98)
                                {
                                  v98 = v93;
                                }

                                *(v57 + 132) = v98;
                                v99 = *(v72 + 3160);
                                if (v94 > v99)
                                {
                                  v99 = v94;
                                }

                                v100 = *(v57 + 152);
                                *(v57 + 136) = v99;
                                v101 = *(v72 + 3164);
                                if (SHIDWORD(v94) > v101)
                                {
                                  v101 = HIDWORD(v94);
                                }

                                *(v57 + 140) = v101;
                                v102 = *(v72 + 3168);
                                if (v96 > v102)
                                {
                                  v102 = v96;
                                }

                                *(v57 + 144) = v102;
                                v103 = *(v72 + 3172);
                                if (v100 > v103)
                                {
                                  v103 = v100;
                                }

                                *(v57 + 152) = v103;
                                AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(*(v57 + 104), *(v57 + 112), v72, v57, v57 + 8);
                                v105 = *(v57 + 104);
                                v104 = *(v57 + 112);
                                v106 = *(v5 + 1016);
                                do
                                {
                                  IOGPUResourceListAddResource();
                                  v106 &= ~(1 << __clz(__rbit32(v106)));
                                }

                                while (v106);
                                v107 = v105;
                                v108 = *(v105 + 238);
                                v109 = *(v5 + 232);
                                v217 = *(v105 + 204);
                                v218 = *(v105 + 196);
                                v219 = *(v105 + 208);
                                v220 = *(v105 + 200);
                                v221 = *(v105 + 192);
                                if (v109)
                                {
                                  v110 = v104;
                                  v111 = *(v104 + 1840);
                                  v112 = 4;
                                  if (!v111)
                                  {
                                    v112 = 11;
                                  }

                                  v113 = 4;
                                  if (!v111)
                                  {
                                    v113 = 42;
                                  }

                                  v114 = 4;
                                  if (!v111)
                                  {
                                    v114 = 39;
                                  }

                                  v115 = 4;
                                  if (!v111)
                                  {
                                    v115 = 36;
                                  }

                                  if (v111 == 1)
                                  {
                                    v112 = v115;
                                  }

                                  if (v111 == 3)
                                  {
                                    v112 = v114;
                                  }

                                  if (v111 == 7)
                                  {
                                    v116 = v113;
                                  }

                                  else
                                  {
                                    v116 = v112;
                                  }

                                  v117 = v104 + 32 * v116;
                                  v118 = (*(v117 + 48) + 31) & 0xFFFFFFFFFFFFFFE0;
                                  v119 = v118 + *(v117 + 64);
                                  *(v117 + 48) = v118 + v109;
                                }

                                else
                                {
                                  v119 = 0;
                                  v118 = 0;
                                  v110 = v104;
                                }

                                v120 = ((v110[30] + 63) & 0xFFFFFFFFFFFFFFC0);
                                v224 = v110[32];
                                v110[30] = &v120[*(*(v5 + 680) + 8) - **(v5 + 680)];
                                v121 = TileDispatchVertexProgram;
                                if (!v109)
                                {
                                  goto LABEL_124;
                                }

                                v122 = *(v5 + 80);
                                v123 = *(v5 + 168);
                                v124 = *(v5 + 185);
                                if (*(v5 + 184) == 1)
                                {
                                  v229[111] = v119 + *(v5 + 224);
                                  v229[110] = v119 + *(v5 + 220);
                                  if (!v124)
                                  {
LABEL_98:
                                    if (v122)
                                    {
                                      goto LABEL_99;
                                    }

                                    goto LABEL_108;
                                  }
                                }

                                else if (!*(v5 + 185))
                                {
                                  goto LABEL_98;
                                }

                                v229[112] = v119 + *(v5 + 228);
                                if (v122)
                                {
LABEL_99:
                                  v213 = v122;
                                  v214 = v123;
                                  v239 = v229 + 56;
                                  v125 = &unk_2A23F99F8;
                                  *&v241 = &unk_2A23F99F8;
                                  *(&v241 + 1) = &v239;
                                  v243 = &v241;
                                  v126 = *(v5 + 8);
                                  if (((*(v5 + 16) - v126) & 0x3FFFFFFFCLL) != 0)
                                  {
                                    v215 = v119;
                                    v127 = v108;
                                    v128 = 0;
                                    do
                                    {
                                      v129 = *(v126 + 4 * v128);
                                      LODWORD(v238) = v129 >> 29;
                                      if (!v243)
                                      {
LABEL_190:
                                        std::__throw_bad_function_call[abi:nn200100]();
                                      }

                                      *(v118 + 8 * v128++) = *((*(*v243 + 48))(v243, &v238) + 8 * (v129 & 0x1FFFFFFF));
                                      v126 = *(v5 + 8);
                                    }

                                    while (v128 < ((*(v5 + 16) - v126) >> 2));
                                    v130 = v243;
                                    if (v243 != &v241)
                                    {
                                      v108 = v127;
                                      v121 = TileDispatchVertexProgram;
                                      v119 = v215;
                                      if (v243)
                                      {
                                        (*(*v243 + 40))();
                                      }

LABEL_113:
                                      v131 = 8 * (v213 & 0x1FFFFFFF);
                                      if (!v214)
                                      {
                                        goto LABEL_124;
                                      }

                                      goto LABEL_114;
                                    }

                                    v125 = *v243;
                                    v108 = v127;
                                    v121 = TileDispatchVertexProgram;
                                    v119 = v215;
                                  }

                                  else
                                  {
                                    v130 = &v241;
                                  }

                                  v125[4](v130);
                                  goto LABEL_113;
                                }

LABEL_108:
                                v131 = 0;
                                if (!v123)
                                {
                                  goto LABEL_124;
                                }

LABEL_114:
                                v229[57] = v119 + v131 + 8;
                                v238 = v229 + 56;
                                v239 = 0;
                                v132 = &unk_2A23F9C38;
                                *&v241 = &unk_2A23F9C38;
                                *(&v241 + 1) = &v238;
                                v242 = &v239;
                                v243 = &v241;
                                v133 = *(v5 + 96);
                                if (((*(v5 + 104) - v133) & 0x3FFFFFFFCLL) != 0)
                                {
                                  v216 = v119;
                                  v134 = v108;
                                  v135 = 0;
                                  v136 = v118 + v131;
                                  do
                                  {
                                    v137 = *(v133 + 4 * v135);
                                    v240 = v137 >> 29;
                                    if (!v243)
                                    {
                                      goto LABEL_190;
                                    }

                                    *(v136 + 4 * v135++) = *((*(*v243 + 48))(v243, &v240) + 4 * (v137 & 0x1FFFFFFF));
                                    v133 = *(v5 + 96);
                                  }

                                  while (v135 < ((*(v5 + 104) - v133) >> 2));
                                  v138 = v243;
                                  if (v243 != &v241)
                                  {
                                    v108 = v134;
                                    v121 = TileDispatchVertexProgram;
                                    v119 = v216;
                                    if (v243)
                                    {
                                      (*(*v243 + 40))();
                                    }

                                    goto LABEL_124;
                                  }

                                  v132 = *v243;
                                  v108 = v134;
                                  v121 = TileDispatchVertexProgram;
                                  v119 = v216;
                                }

                                else
                                {
                                  v138 = &v241;
                                }

                                v132[4](v138);
LABEL_124:
                                v139 = v119;
                                v140 = *(v5 + 680);
                                memcpy(v120, *v140, *(v140 + 8) - *v140);
                                if (*(v140 + 272) == 1)
                                {
                                  v141.i64[0] = v139;
                                  v141.i64[1] = v139 >> 5;
                                  *&v120[*(v140 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v120[*(v140 + 276)], vshlq_u8(vqtbl1q_s8(v141, xmmword_29D2F17A0), xmmword_29D2F17B0));
                                }

                                v142 = *(v140 + 248);
                                v143 = *(v140 + 256);
                                v144 = a4;
                                for (i = a3; v142 != v143; v142 += 3)
                                {
                                  v146.i64[0] = v229[v142[1] + 56] + *v142;
                                  v146.i64[1] = v146.i64[0] >> 5;
                                  *&v120[v142[2]] = vbslq_s8(xmmword_29D2F17C0, *&v120[v142[2]], vshlq_u8(vqtbl1q_s8(v146, xmmword_29D2F17A0), xmmword_29D2F17B0));
                                }

                                if (!*(v140 + 312))
                                {
                                  v147 = &v120[*(v140 + 316)];
                                  if (v221 & 1) != 0 && (v220 & 1) != 0 && (v219)
                                  {
                                    AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(&v241, v147 + 18);
                                    v144 = a4;
                                    i = a3;
                                    v148 = v244;
                                    v149 = v245 & 0xFFF;
                                    if (v244 <= (v218 + 3) >> 2)
                                    {
                                      v148 = (v218 + 3) >> 2;
                                    }

                                    if (v149 <= ((((v217 + 3) >> 2) + 1) & 0x7FFFFFFE))
                                    {
                                      v149 = (((v217 + 3) >> 2) + 1) & 0x7FFFFFFE;
                                    }

                                    v121 = TileDispatchVertexProgram;
                                    *(v147 + 9) = *(v147 + 9) & 0x1F | (32 * ((v149 >> 1) & 0x7FF));
                                    *(v147 + 12) = v148;
                                  }

                                  *v147 = v108;
                                }

                                v150 = &v120[v224];
                                v151 = *v107;
                                if (*v107)
                                {
                                  v153 = *v140;
                                  v152 = *(v140 + 8);
                                  v154 = *(v5 + 1088);
                                  v155 = *(v151 + 2);
                                  v156 = v155 + 1;
                                  if (*(v151 + 3) >= v155 + 1)
                                  {
                                    v159 = *v151;
                                  }

                                  else
                                  {
                                    v228 = v153;
                                    v230 = v152;
                                    v157 = -__clz(v155);
                                    v158 = malloc_type_malloc(40 << (v157 & 0x1F), 0x10800400D7C94D2uLL);
                                    v159 = v158;
                                    v160 = 1 << v157;
                                    v161 = *(v151 + 2);
                                    if (v161)
                                    {
                                      memcpy(v158, *v151, 40 * v161);
                                      free(*v151);
                                      v155 = *(v151 + 2);
                                    }

                                    else
                                    {
                                      v155 = 0;
                                    }

                                    v144 = a4;
                                    i = a3;
                                    LODWORD(v152) = v230;
                                    LODWORD(v153) = v228;
                                    *(v151 + 3) = v160;
                                    *v151 = v159;
                                  }

                                  v162 = &v159[40 * v155];
                                  *v162 = 11;
                                  *(v162 + 1) = v150;
                                  *(v162 + 2) = v120;
                                  *(v162 + 3) = (v152 - v153);
                                  *(v162 + 8) = v154;
                                  *(v151 + 2) = v156;
                                  v121 = TileDispatchVertexProgram;
                                }

                                v163 = *(v5 + 2040);
                                v164 = *(v5 + 2052);
                                v165 = *(v5 + 2064);
                                v166 = (v150 >> 16) & 0xFFC00000 | *(v5 + 2056) & 0x3FFFFF;
                                v167 = *(v5 + 2112);
                                v168.i32[0] = *(v167 + 36);
                                v168.i32[1] = *(v167 + 32);
                                v169 = vbsl_s8(0x3FFFF0000, *(v5 + 2044), v168);
                                v170 = v110[126];
                                v171 = v110[128] + v170;
                                v110[126] = v170 + 28;
                                *v170 = v163;
                                *(v170 + 4) = v169;
                                *(v170 + 12) = v164;
                                *(v170 + 16) = v166;
                                *(v170 + 20) = v150 >> 6;
                                *(v170 + 24) = v165;
                                v172 = v110[6];
                                *v172 = __ROR8__(v171, 32) & 0xFFFFFFFC000000FFLL | 0x700;
                                v110[6] = v172 + 1;
                                v173 = *(v121 + 3176);
                                v174 = *(v57 + 112);
                                v175 = v174[126];
                                v176 = v174[128] + v175;
                                v174[126] = v175 + 20;
                                *v175 = 203948032;
                                *(v175 + 4) = v173 & 0xF1C00FF;
                                *(v175 + 8) = 0;
                                *(v175 + 16) = HIDWORD(v173);
                                v177 = v174[6];
                                *v177 = __ROR8__(v176, 32) & 0xFFFFFFFC000000FFLL | 0x500;
                                v174[6] = v177 + 1;
                                v178 = *(v57 + 112);
                                v179 = v178[126];
                                v180 = v178[128] + v179;
                                v178[126] = v179 + 40;
                                *v179 = 0x380000000E1;
                                *(v179 + 8) = 613744640;
                                *(v179 + 12) = xmmword_29D2F25C0;
                                *(v179 + 28) = 0;
                                *(v179 + 36) = 0;
                                v181 = v178[6];
                                *v181 = __ROR8__(v180, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
                                v178[6] = v181 + 1;
                                v182 = *(v57 + 96);
                                LODWORD(v241) = 12288;
                                v246 = 0;
                                v183 = v182[446];
                                v184 = vmul_f32(vcvt_f32_u32(v183), 0x3F0000003F000000);
                                LODWORD(v247) = v184.i32[0];
                                *(&v247 + 4) = v184;
                                *(&v247 + 3) = -v184.f32[1];
                                v248 = 0x3F80000000000000;
                                *(&v241 + 4) = -COERCE_DOUBLE(0x8000000080000000);
                                if (v183.i32[0] && v183.i32[1])
                                {
                                  DWORD1(v241) = ((v183.i32[0] - 1) >> 5) & 0x3FF | 0x80000000;
                                  DWORD2(v241) = ((v183.i32[1] - 1) >> 5) & 0x3FF;
                                }

                                v185 = *(v57 + 112);
                                v186 = v185[126];
                                v187 = v185[128] + v186;
                                v185[126] = v186 + 40;
                                *v186 = 12288;
                                *(v186 + 4) = *(&v241 + 4);
                                *(v186 + 12) = 0;
                                *(v186 + 16) = v247;
                                *(v186 + 32) = v248;
                                v188 = v185[6];
                                *v188 = __ROR8__(v187, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
                                v185[6] = v188 + 1;
                                v189 = *(v57 + 112);
                                v190 = v189[126];
                                v191 = v189[128] + v190;
                                v189[126] = v190 + 20;
                                *v190 = 0x20000840001;
                                *(v190 + 8) = 0;
                                *(v190 + 12) = 192;
                                v192 = __ROR8__(v191, 32);
                                v193 = v189[6];
                                *v193 = v192 & 0xFFFFFFFC000000FFLL | 0x500;
                                v189[6] = v193 + 1;
                                *&v194 = vand_s8(vadd_s32(vadd_s32(*(*(v57 + 96) + 3568), *(*(v57 + 96) + 4932)), -1), vand_s8(vneg_s32(*(*(v57 + 96) + 4932)), 0xFFFF0000FFFFLL));
                                *(&v194 + 1) = 0x3F80000000000000;
                                v195 = *(v57 + 112);
                                v196 = *(v195 + 304);
                                v197 = v196 + *(v195 + 320);
                                *(v195 + 304) = v196 + 1;
                                *v196 = v194;
                                LODWORD(v195) = v197 & 0xFFFFFFFC;
                                v198 = (v197 >> 16) & 0xFFFF0000;
                                v199 = *(v57 + 112);
                                v200 = v199[42];
                                v201 = v200 + v199[44];
                                v199[42] = v200 + 5;
                                *v200 = 768;
                                v200[3] = v198;
                                v200[4] = v195;
                                v202 = v199[6];
                                *v202 = __ROR8__(v201, 32) & 0xFFFFFFFC000000FFLL | 0x500;
                                v199[6] = v202 + 1;
                                if (!*(*(v57 + 224) + 520) || (*i & 1) != 0)
                                {
                                  *i = 1;
                                }

                                else
                                {
                                  if (v223)
                                  {
                                    v203 = 3;
                                  }

                                  else
                                  {
                                    v203 = 3 * v222;
                                  }

                                  v204 = *(*(v57 + 96) + 4908);
                                  v205 = *(v57 + 112);
                                  LODWORD(v206) = 1640238336;
                                  DWORD1(v206) = v203;
                                  *(&v206 + 1) = v204;
                                  v207 = *(v205 + 48);
                                  *v207 = v206;
                                  *(v205 + 48) = v207 + 1;
                                  if (v144)
                                  {
                                    ++*v144;
                                  }

                                  *(*(v57 + 88) + 1956) += v204 * (v203 / 3);
                                }

                                goto LABEL_157;
                              }

                              v89 = v88[42] + 20;
                              if (v89 > v88[41])
                              {
                                goto LABEL_189;
                              }
                            }

                            v88[43] = v89;
                            goto LABEL_59;
                          }

                          v87 = v86[38] + 16;
                          if (v87 > v86[37])
                          {
                            goto LABEL_189;
                          }
                        }

                        v86[39] = v87;
                        goto LABEL_57;
                      }

                      v85 = v83[1] + v84;
                      if (v85 > *v83)
                      {
                        goto LABEL_189;
                      }
                    }

                    v83[2] = v85;
                    goto LABEL_55;
                  }

                  v80 = *(v73 + 240) + v79;
                  if (v80 > *(v73 + 232))
                  {
                    goto LABEL_189;
                  }
                }

                *(v73 + 248) = v80;
                goto LABEL_48;
              }

              v78 = *(v73 + 208) + v77;
              if (v78 > *(v73 + 200))
              {
                goto LABEL_189;
              }
            }

            *(v73 + 216) = v78;
            goto LABEL_46;
          }

          v76 = *(v73 + 1008) + 667;
          if (v76 > *(v73 + 1000))
          {
            goto LABEL_189;
          }
        }

        *(v73 + 1016) = v76;
        goto LABEL_44;
      }

      v75 = *(v73 + 144) + v74;
      if (v75 > *(v73 + 136))
      {
        goto LABEL_189;
      }
    }

    *(v73 + 152) = v75;
    goto LABEL_42;
  }

LABEL_157:
  v232 = &unk_2A23F96F8;
  if (__p)
  {
    v235 = __p;
    operator delete(__p);
  }

  v208 = v227[112];
  v209 = *(v5 + 216);
  if (*(v208 + 232) > v209)
  {
    v209 = *(v208 + 232);
  }

  *(v208 + 232) = v209;
}

void sub_29CF2AE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(uint64_t a1, unint64_t *a2, _BYTE *a3, _DWORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindTilePipelineResources(a1, *(a1 + 1288), a5);
  v16 = *(a1 + 936);
  v17 = *a2;
  v18 = a2[1];
  *(v16 + 832) = *a2;
  *(v16 + 836) = v18;
  v19 = *(a1 + 1288);
  if (!v19 || (v18 * v17) <= *(v19 + 3832))
  {
    v60 = a4;
    v20 = *(a1 + 1280);
    v58 = a2[2];
    v59 = *(a1 + 928);
    v21 = *(v20 + 96);
    v22 = *(v21 + 4932);
    v23 = *(v21 + 4936);
    v25 = v17 == v22 && v18 == v23;
    *(v20 + 8) = v22;
    *(v20 + 12) = v23;
    if ((a8 & 0x100000000) != 0)
    {
      v26 = a8;
    }

    else
    {
      v26 = 0;
    }

    *(v20 + 64) = v26;
    v57 = v25;
    if (a7)
    {
      v27 = -v22;
      v28 = -v23;
      v29 = v22 - 1;
      v30 = v23 - 1;
      v31 = (v20 + 32);
      v32 = 0;
      if (v25)
      {
        v33 = (a6 + 32);
        v34 = a7;
        do
        {
          v35 = *(v33 - 8);
          v36 = *(v33 - 6);
          v37 = (v35 & v27) / v22;
          v38 = (v36 & v28) / v23;
          v39 = ((v29 + v35 + *(v33 - 2)) & v27) / v22;
          v40 = *v33;
          v33 += 12;
          v41 = v39 - v37;
          v42 = ((v30 + v36 + v40) & v28) / v23 - v38;
          v43 = (v41 * v22) + -0.00390625;
          *(v31 - 4) = v43;
          v44 = (v42 * v23) + -0.00390625;
          *v31 = v41;
          *(v31 + 2) = v42;
          v45 = v42 * v41;
          *(v31 - 2) = v44;
          *(v31 + 4) = v37;
          *(v31 + 6) = v38;
          if (v32 <= v45)
          {
            v32 = v45;
          }

          ++v31;
          --v34;
        }

        while (v34);
      }

      else
      {
        v46 = (a6 + 32);
        v47 = a7;
        do
        {
          v48 = *(v46 - 8);
          v49 = (v48 & v27) / v22;
          v50 = *(v46 - 6);
          v51 = (v50 & v28) / v23;
          v52 = ((v29 + v48 + *(v46 - 2)) & v27) / v22 - v49;
          v53 = *v46;
          v46 += 12;
          v54 = ((v30 + v50 + v53) & v28) / v23 - v51;
          *(v31 - 4) = v17 + -0.0039062;
          *(v31 - 2) = v18 + -0.0039062;
          *v31 = v52;
          *(v31 + 2) = v54;
          v55 = v54 * v52;
          *(v31 + 4) = v49;
          *(v31 + 6) = v51;
          if (v32 <= v55)
          {
            v32 = v55;
          }

          ++v31;
          --v47;
        }

        while (v47);
      }
    }

    else
    {
      v32 = 0;
    }

    v64 = 25;
    v66 = 0;
    v67 = 0;
    __p = 0;
    v63 = &unk_2A23F96B8;
    v68 = ((a8 & 0x100000000uLL) >> 30) | (a7 > 1);
    TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v20 + 80), &v63);
    v62[0] = v17;
    v62[1] = v18;
    v62[2] = v58;
    AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>(v20, v19, v59, a1 + 88, v62, a3, v60, TileDispatchVertexProgram, v57, v32, a8);
    v63 = &unk_2A23F96F8;
    if (__p)
    {
      v66 = __p;
      operator delete(__p);
    }

    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 1280) + 120, a5 + 320, 1);
  }

  return result;
}

void sub_29CF2B200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindTilePipelineResources(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v6 = *(a1 + 1272);
  do
  {
    v6 &= ~(1 << __clz(__rbit32(v6)));
    IOGPUResourceListAddResource();
  }

  while (v6);
  v65 = 0;
  v7 = *(*(a1 + 1320) + 848);
  v8 = *(a1 + 936);
  v60.i64[0] = v8 + 176;
  v60.i64[1] = a1 + 1072;
  v61 = v8 + 184;
  v62 = a1 + 1080;
  v63 = v8 + 208;
  v64 = a1 + 1104;
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v7 + 7240, &v60, *(a1 + 48), &v65);
  v9 = *(*(a1 + 1320) + 848);
  v60.i64[0] = *(a1 + 936) + 216;
  v60.i64[1] = a1 + 1112;
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v9 + 2152, &v60);
  *(a3 + 2096) = *(*(a1 + 936) + 216);
  explicit = atomic_load_explicit((*(*(a1 + 1320) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v11 = explicit + 1;
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 2104) = v11;
  v12 = a2[150].u64[0];
  v58 = a2[150].u64[1];
  v13 = *(a1 + 1296);
  v14 = *(a1 + 936);
  if (v13)
  {
    v14[34] = *(v13 + 56);
    *(a1 + 1168) = *(v13 + 48);
  }

  else
  {
    v14[34] = 0;
    v14[73] = 0;
    v12 &= ~0x800000000000000uLL;
    k = v12;
  }

  v15 = *(a1 + 1304);
  v56 = a3;
  if (v15)
  {
    v16 = *(v15 + 56);
    *(a1 + 1176) = *(v15 + 48);
  }

  else
  {
    v16 = 0;
    v14[74] = 0;
  }

  v14[35] = v16;
  v17 = *(*(a1 + 1280) + 88);
  if (*(v17 + 5403) == 1)
  {
    v18 = *(*(v17 + 1872) + 848);
    v19 = *(v18 + 6320);
    v20 = *(*(a1 + 1280) + 88);
    if (*(v17 + 7268) != v19)
    {
      for (i = *(v18 + 6832); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      for (j = *(v18 + 6664); j; j = *j)
      {
        IOGPUResourceListAddResource();
      }

      *(v17 + 7268) = v19;
      v20 = *(*(a1 + 1280) + 88);
    }
  }

  else
  {
    v20 = *(*(a1 + 1280) + 88);
  }

  v23 = *(*(a1 + 1320) + 848);
  v60.i64[0] = v20 + 11424;
  v60.i64[1] = v20 + 11432;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v23 + 3146, &v60))
  {
    IOGPUResourceListAddResource();
  }

  **(v17 + 11416) = *(v17 + 11424);
  v24 = *(*(a1 + 1320) + 848);
  v25 = *(*(a1 + 1280) + 88);
  v60.i64[0] = v25 + 11440;
  v60.i64[1] = v25 + 11448;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v24 + 2952, &v60))
  {
    IOGPUResourceListAddResource();
  }

  *(*(v17 + 11416) + 8) = *(v17 + 11440);
  v26 = *(*(a1 + 1320) + 848);
  v60.i64[0] = *(a1 + 936) + 344;
  v60.i64[1] = a1 + 1240;
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v26 + 3534, &v60);
  IOGPUResourceListAddResource();
  v27 = *(a1 + 64);
  v60.i64[0] = *(a1 + 936) + 240;
  v60.i64[1] = a1 + 1136;
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v27, &v60);
  IOGPUResourceListAddResource();
  v60.i64[0] = *(a1 + 936) + 256;
  v60.i64[1] = a1 + 1152;
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(*(a1 + 56), &v60);
  IOGPUResourceListAddResource();
  v28 = *(*(a1 + 1320) + 848);
  v60.i64[0] = *(a1 + 936) + 232;
  v60.i64[1] = a1 + 1128;
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v28 + 2352, &v60);
  IOGPUResourceListAddResource();
  v29 = *(*(a1 + 1320) + 848);
  v60.i64[0] = *(a1 + 936) + 328;
  v60.i64[1] = a1 + 1224;
  AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v29 + 2752, &v60);
  result = IOGPUResourceListAddResource();
  v33 = *(a1 + 1312);
  v34.i64[0] = -1;
  v34.i64[1] = -1;
  if (*(v33 + 789) == 1)
  {
    v34.i64[0] = 0;
    v31.i64[0] = *(v33 + 1656);
    v32.i64[0] = *(v33 + 1672);
    v35 = vceqq_s64(v32, v34);
    v36 = vdupq_lane_s64(vbicq_s8(v35, vceqq_s64(v31, v34)).i64[0], 0);
    v37 = 0x1800000000000000;
    if (!*(v33 + 1656))
    {
      v37 = 0x1000000000000000;
    }

    v38 = vbicq_s8(v37, vdupq_lane_s64(v35.i64[0], 0));
    v39 = vorrq_s8(vandq_s8(v36, xmmword_29D2F25B0), v38);
    v38.i64[0] = *(v33 + 3624);
    v40 = vdupq_lane_s64(vceqq_s64(v38, v34).i64[0], 0);
    v38.i64[0] = v39.i64[0];
    v38.i64[1] = 2;
    v34 = vmvnq_s8(vbslq_s8(v40, v39, v38));
  }

  v41 = v12 & 0xFFFFFFFF80000000;
  v60 = vandq_s8(a2[85], v34);
  for (k = v12 & 0xFFFFFFFF80000000; ; v41 = k)
  {
    if (v41)
    {
      v42 = __clz(__rbit64(v41));
      p_k = &k;
      v44 = v42;
      goto LABEL_34;
    }

    v41 = v58;
    if (!v58)
    {
      break;
    }

    v42 = __clz(__rbit64(v58));
    v44 = v42 | 0x40;
    p_k = &v58;
LABEL_34:
    *p_k = v41 & ~(1 << v42);
    v45 = *(a1 + 944 + 8 * (v44 - 31));
    if (v45)
    {
      if ((*(&v60 | (8 * (v44 > 0x3F))) >> v44))
      {
        v46 = 12;
      }

      else
      {
        v46 = 4;
      }

      if (((v44 - 47 < 0x17) & (0x6C77B3u >> (v44 - 47))) != 0)
      {
        v47 = 128;
      }

      else
      {
        v47 = v46;
      }

      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 24), v45, 2u, v44, v47);
      result = IOGPUResourceListAddResource();
    }
  }

  v48 = *(a1 + 928);
  if (!v48)
  {
    goto LABEL_50;
  }

  v49 = a2[151].i64[0] & v48[4];
  v50 = a2[151].i64[1] & v48[5];
  v60.i64[0] = v49;
  v57 = v50;
  v51 = a2[86].i64[0];
  v52 = a2[86].i64[1];
  v53 = v48[6];
  v54 = v48[7];
  while (2)
  {
    if (v49)
    {
      v55 = &v60;
LABEL_45:
      v55->i64[0] = v49 & (v49 - 1);
      v49 = v60.i64[0];
      continue;
    }

    break;
  }

  v49 = v57;
  if (v57)
  {
    v55 = &v57;
    goto LABEL_45;
  }

  *(v56 + 1612) |= (v53 & v51 | v54 & v52) != 0;
LABEL_50:
  if (*(a1 + 1348) == 1)
  {
    result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 1328), v56 + 1360, 0);
    *(a1 + 1348) = 0;
  }

  return result;
}

void AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>(void *a1, uint64_t a2, size_t a3, uint64_t a4, _DWORD *a5, _BYTE *a6, _DWORD *a7, uint64_t a8, char a9, int a10, uint64_t a11)
{
  v16 = *(a8 + 2120);
  do
  {
    v16 &= ~(1 << __clz(__rbit32(v16)));
    IOGPUResourceListAddResource();
  }

  while (v16);
  if (a2)
  {
    if ((a5[2] * *a5) > *(a2 + 3832))
    {
      return;
    }

    v17 = a1;
    v18 = a2;
  }

  else
  {
    v17 = a1;
    v18 = 0;
  }

  AGX::RenderTileDispatchEncoder<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitTileState<AGX::HAL300::TileProgramVariant,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>(v17, v18, a3, a4, a8);
  if (!*(a1[28] + 520) || (*a6 & 1) != 0)
  {
    *a6 = 1;
  }

  else
  {
    v19 = 3 * a10;
    if (a9)
    {
      v19 = 3;
    }

    if ((a11 & 0x100000000) != 0)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1[12] + 4908);
    }

    v21 = a1[14];
    LODWORD(v22) = 1640238336;
    DWORD1(v22) = v19;
    *(&v22 + 1) = v20;
    v23 = *(v21 + 48);
    *v23 = v22;
    *(v21 + 48) = v23 + 1;
    if (a7)
    {
      ++*a7;
    }

    *(a1[11] + 1956) += v20 * (v19 / 3);
  }
}

void AGX::RenderTileDispatchEncoder<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitTileState<AGX::HAL300::TileProgramVariant,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v248 = *MEMORY[0x29EDCA608];
  if (!a2 || (*(a2 + 2407) & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 112);
  v11 = *(v10 + 1840) - 1;
  if (v11 > 6)
  {
    v12 = 11;
  }

  else
  {
    v12 = dword_29D2F7760[v11];
  }

  v13 = v12;
  v14 = v10 + 32 * v12;
  if (((1 << v12) & 0xFFF00000480) != 0 && !*(v14 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), v12, 0) & 1) == 0)
  {
LABEL_210:
    abort();
  }

  v16 = *(v14 + 40);
  v15 = *(v14 + 48);
  v17 = (v14 + 40);
  v18 = v15 + 27;
  if (v18 > v16)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v10, v13, 0))
    {
      goto LABEL_10;
    }

    v18 = v17[1] + 27;
    if (v18 > *v17)
    {
      goto LABEL_210;
    }
  }

  v17[2] = v18;
LABEL_10:
  v19 = *(a1 + 112);
  v20 = *(v19 + 1840) - 1;
  if (v20 > 6)
  {
    v21 = 11;
  }

  else
  {
    v21 = qword_29D2F7728[v20];
  }

  v22 = v19 + 32 * v21;
  v23 = (*(v22 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v22 + 64);
  *(v22 + 48) = v23 + 24;
  v25 = *(a4 + 816);
  *(v23 + 16) = *(a4 + 832);
  *v23 = v25;
  v26 = *(a1 + 88);
  v27 = *(a1 + 112);
  v28 = *(v27 + 1840) - 1;
  if (v28 > 6)
  {
    v29 = 11;
  }

  else
  {
    v29 = dword_29D2F7760[v28];
  }

  v30 = v23 + v24;
  v31 = v29;
  if (((0xFFF00000480uLL >> v29) & 1) != 0 && !*(v27 + 32 * v29 + 48))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(a1 + 112), v29);
  }

  v32 = *(*(v27 + 24) + (v31 << 6) + 32) + *MEMORY[0x29EDC5638];
  *(*(v26 + 3600) + 296) = v30;
  *(v26 + 3856) = v32;
LABEL_20:
  v33 = *(a1 + 112);
  v34 = v33[6];
  if ((v34 + 23) > v33[5])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 0, 0))
    {
      v212 = v33[6] + 184;
      if (v212 > v33[5])
      {
        goto LABEL_210;
      }

      v33[7] = v212;
      *v34 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v33, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v33[7] = v34 + 23;
  }

  v35 = *(a1 + 112);
  v36 = *(a5 + 16) + 31;
  v37 = *(v35 + 144) + v36;
  if (v37 <= *(v35 + 136))
  {
LABEL_23:
    *(v35 + 152) = v37;
    goto LABEL_24;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 3, 0))
  {
    v37 = *(v35 + 144) + v36;
    if (v37 > *(v35 + 136))
    {
      goto LABEL_210;
    }

    goto LABEL_23;
  }

LABEL_24:
  v38 = *(v35 + 1008) + 667;
  if (v38 <= *(v35 + 1000))
  {
LABEL_25:
    *(v35 + 1016) = v38;
    goto LABEL_26;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v35, 30, 0))
  {
    v38 = *(v35 + 1008) + 667;
    if (v38 > *(v35 + 1000))
    {
      goto LABEL_210;
    }

    goto LABEL_25;
  }

LABEL_26:
  v39 = (*(*(a5 + 1784) + 8) - **(a5 + 1784)) + 63;
  v40 = *(v35 + 208) + v39;
  if (v40 <= *(v35 + 200))
  {
LABEL_27:
    *(v35 + 216) = v40;
    goto LABEL_28;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v35, 5, 0))
  {
    v40 = *(v35 + 208) + v39;
    if (v40 > *(v35 + 200))
    {
      goto LABEL_210;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (!a2)
  {
    goto LABEL_38;
  }

  v41 = (*(*(a2 + 2392) + 8) - **(a2 + 2392)) + 63;
  v42 = *(v35 + 240) + v41;
  if (v42 <= *(v35 + 232))
  {
    goto LABEL_30;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v35, 6, 0))
  {
    v42 = *(v35 + 240) + v41;
    if (v42 > *(v35 + 232))
    {
      goto LABEL_210;
    }

LABEL_30:
    *(v35 + 248) = v42;
  }

  v43 = *(a2 + 624);
  if (*(v35 + 1840))
  {
    v44 = 4;
  }

  else
  {
    v44 = 11;
  }

  v45 = (v35 + 40 + 32 * v44);
  if (((1 << v44) & 0x480) != 0 && !v45[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v35, v44, 0) & 1) == 0)
  {
    goto LABEL_210;
  }

  v46 = v43 + 31;
  v47 = v45[1] + v46;
  if (v47 <= *v45)
  {
    goto LABEL_37;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v35, v44, 0))
  {
    v47 = v45[1] + v46;
    if (v47 > *v45)
    {
      goto LABEL_210;
    }

LABEL_37:
    v45[2] = v47;
  }

LABEL_38:
  v48 = *(a1 + 112);
  v49 = v48[38] + 16;
  if (v49 <= v48[37])
  {
LABEL_39:
    v48[39] = v49;
    goto LABEL_40;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 8, 0))
  {
    v49 = v48[38] + 16;
    if (v49 > v48[37])
    {
      goto LABEL_210;
    }

    goto LABEL_39;
  }

LABEL_40:
  v50 = *(a1 + 112);
  v51 = v50[42] + 20;
  if (v51 <= v50[41])
  {
LABEL_41:
    v50[43] = v51;
    goto LABEL_42;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 9, 0))
  {
    v51 = v50[42] + 20;
    if (v51 > v50[41])
    {
      goto LABEL_210;
    }

    goto LABEL_41;
  }

LABEL_42:
  *(a1 + 172) = 1;
  v52 = HIDWORD(*(a1 + 120));
  v53 = *(a1 + 128);
  v54 = HIDWORD(*(a1 + 120));
  v55 = *(a5 + 3144);
  if (*(a1 + 120) > v55)
  {
    v55 = *(a1 + 120);
  }

  v56 = *(a1 + 136);
  *(a1 + 120) = v55;
  if (v52 <= *(a5 + 3148))
  {
    v52 = *(a5 + 3148);
  }

  v57 = *(a1 + 144);
  *(a1 + 124) = v52;
  v58 = *(a5 + 3152);
  if (v53 > v58)
  {
    v58 = v53;
  }

  *(a1 + 128) = v58;
  v59 = *(a5 + 3156);
  if (v54 > v59)
  {
    v59 = v54;
  }

  *(a1 + 132) = v59;
  v60 = *(a5 + 3160);
  if (v56 > v60)
  {
    v60 = v56;
  }

  v61 = *(a1 + 152);
  *(a1 + 136) = v60;
  v62 = *(a5 + 3164);
  if (SHIDWORD(v56) > v62)
  {
    v62 = HIDWORD(v56);
  }

  *(a1 + 140) = v62;
  v63 = *(a5 + 3168);
  if (v57 > v63)
  {
    v63 = v57;
  }

  *(a1 + 144) = v63;
  v64 = *(a5 + 3172);
  if (v61 > v64)
  {
    v64 = v61;
  }

  *(a1 + 152) = v64;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(*(a1 + 104), *(a1 + 112), a5, a1, a1 + 8);
  if (a2)
  {
    v66 = *(a1 + 104);
    v65 = *(a1 + 112);
    v67 = *(v66 + 196);
    v68 = *(v66 + 228);
    v245 = *(v66 + 212);
    v246 = v68;
    v247 = *(v66 + 61);
    v243 = *(v66 + 180);
    v244 = v67;
    v69 = *(a2 + 624);
    if (v69)
    {
      v70 = *(v65 + 1840);
      v71 = 4;
      if (!v70)
      {
        v71 = 11;
      }

      switch(v70)
      {
        case 7:
          v71 = 4;
          break;
        case 3:
          v71 = 4;
          break;
        case 1:
          v71 = 4;
          break;
      }

      v74 = v65 + 32 * v71;
      v73 = (*(v74 + 48) + 31) & 0xFFFFFFFFFFFFFFE0;
      v72 = v73 + *(v74 + 64);
      *(v74 + 48) = v73 + v69;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v228 = v65;
    v229 = *(v65 + 256);
    __dst = ((*(v65 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
    *(v65 + 240) = &__dst[*(*(a2 + 2392) + 8) - **(a2 + 2392)];
    v75 = *(a2 + 1128);
    v76 = *(a2 + 1120);
    v78 = v75 - v76;
    v77 = v75 == v76;
    v79 = *(a2 + 1016);
    v80 = v79 & 1;
    if (v77)
    {
      v80 = 0;
    }

    if (!v69)
    {
      goto LABEL_165;
    }

    __n = a3;
    v81 = *(a2 + 1320);
    v82 = *(a2 + 656);
    v218 = *(a2 + 736);
    v226 = *(a2 + 660);
    v83 = *(a2 + 1024);
    v84 = *(a2 + 1028);
    v85 = v82 + ((*(a2 + 872) - *(a2 + 864)) >> 2);
    v224 = *(a2 + 1353);
    v217 = *(a2 + 1352);
    if (*(a2 + 1352))
    {
      *(a4 + 192) = vaddw_u32(vdupq_n_s64(v72), *(a2 + 628));
    }

    if (v224)
    {
      *(a4 + 224) = v72 + *(a2 + 648);
    }

    v223 = 8 * v85;
    v222 = v80 + v79;
    if (v84 + v83)
    {
      *(a4 + 288) = v223 + v72 + 4 * (v222 + ((v78 >> 1) & 0xFFFFFFFE));
    }

    v225 = a4;
    v221 = v78;
    v219 = v83;
    v220 = v84;
    if (v82 == v81)
    {
      v86 = 0;
      if (!v81)
      {
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v87 = v72;
    if (__n)
    {
      v232 = a4;
      v233 = __n;
      v88 = &unk_2A23FA028;
      *&v235 = &unk_2A23FA028;
      *(&v235 + 1) = &v232;
      *&v236 = &v233;
      *(&v236 + 1) = &v235;
      v89 = *(a2 + 688);
      v90 = *(a2 + 696);
      if (v89 != v90)
      {
        v215 = v66;
        v91 = 0;
        while (1)
        {
          v234 = *v89;
          if (!*(&v236 + 1))
          {
            break;
          }

          v93 = (*(**(&v236 + 1) + 48))(*(&v236 + 1), &v234);
          v94 = *(v89 + 1);
          v95 = *(v89 + 2);
          if (v94 == v95)
          {
            v92 = v91;
          }

          else
          {
            do
            {
              v96 = *v94++;
              v92 = (v91 + 1);
              *(v73 + 8 * v91) = *(v93 + 8 * v96);
              LODWORD(v91) = v91 + 1;
            }

            while (v94 != v95);
          }

          v89 += 8;
          v91 = v92;
          if (v89 == v90)
          {
            goto LABEL_99;
          }
        }

LABEL_215:
        std::__throw_bad_function_call[abi:nn200100]();
      }
    }

    else
    {
      v233 = a4;
      v88 = &unk_2A23F9BA8;
      *&v235 = &unk_2A23F9BA8;
      *(&v235 + 1) = &v233;
      *(&v236 + 1) = &v235;
      v97 = *(a2 + 688);
      v98 = *(a2 + 696);
      if (v97 != v98)
      {
        v215 = v66;
        v99 = 0;
        do
        {
          LODWORD(v232) = *v97;
          if (!*(&v236 + 1))
          {
            goto LABEL_215;
          }

          v101 = (*(**(&v236 + 1) + 48))(*(&v236 + 1), &v232);
          v102 = *(v97 + 8);
          v103 = *(v97 + 16);
          if (v102 == v103)
          {
            v100 = v99;
          }

          else
          {
            do
            {
              v104 = *v102++;
              v100 = (v99 + 1);
              *(v73 + 8 * v99) = *(v101 + 8 * v104);
              LODWORD(v99) = v99 + 1;
            }

            while (v102 != v103);
          }

          v97 += 32;
          v99 = v100;
        }

        while (v97 != v98);
LABEL_99:
        v105 = *(&v236 + 1);
        if (*(&v236 + 1) != &v235)
        {
          a4 = v225;
          v66 = v215;
          v72 = v87;
          v83 = v219;
          if (*(&v236 + 1))
          {
            (*(**(&v236 + 1) + 40))();
          }

LABEL_105:
          v78 = v221;
          v84 = v220;
          if (*(a2 + 1160))
          {
            v106 = *(a2 + 1144);
            if (v106 != (a2 + 1152))
            {
              do
              {
                *(v73 + 4 * *(v106 + 7)) |= *(v106 + 8);
                v116 = v106[1];
                if (v116)
                {
                  do
                  {
                    v117 = v116;
                    v116 = *v116;
                  }

                  while (v116);
                }

                else
                {
                  do
                  {
                    v117 = v106[2];
                    v77 = *v117 == v106;
                    v106 = v117;
                  }

                  while (!v77);
                }

                v106 = v117;
              }

              while (v117 != (a2 + 1152));
            }
          }

          v107 = (v218 + 3) & 0xFFFFFFFC;
          if (v217)
          {
            v108 = *(a2 + 1312);
            if (v108 >= 4)
            {
              v109 = *(__n + 24) + *(__n + 8);
              v110 = v108 >> 2;
              v111 = *(a2 + 752);
              v112 = (v73 + 8 * v107);
              do
              {
                v113 = *v111;
                v111 += 4;
                v114 = (v109 + 8 * v113);
                v115 = v114[1];
                *v112 = *v114;
                v112[1] = v115;
                v112 += 2;
                --v110;
              }

              while (v110);
            }

            v107 += v108;
          }

          else
          {
            v108 = 0;
          }

          if (v224)
          {
            v118 = *(a2 + 1316);
            v119 = (v73 + 8 * v107);
            v120 = *(__n + 24) + *(__n + 12);
            if (*(a2 + 2192) == 1)
            {
              if (v118)
              {
                v213 = (*(a2 + 752) + 4 * v108);
                do
                {
                  v214 = *v213++;
                  *v119++ = *(v120 + 8 * v214);
                  --v118;
                }

                while (v118);
              }
            }

            else if (v118 >= 4)
            {
              v121 = v118 >> 2;
              v122 = (*(a2 + 752) + 4 * v108);
              do
              {
                v123 = *v122;
                v122 += 4;
                *v119 = *(v120 + 8 * v123);
                v119 += 4;
                --v121;
              }

              while (v121);
            }
          }

          v86 = 8 * (v82 - v81);
          if (!v81)
          {
LABEL_130:
            a3 = __n;
            if (!v226)
            {
              goto LABEL_146;
            }

            v128 = v72;
            *(a4 + 16) = v72 + v86 + 8;
            v232 = a4;
            v233 = __n;
            v129 = &unk_2A23FA070;
            *&v235 = &unk_2A23FA070;
            *(&v235 + 1) = &v232;
            *&v236 = &v233;
            *(&v236 + 1) = &v235;
            v130 = *(a2 + 800);
            v131 = *(a2 + 808);
            if (v130 == v131)
            {
              v138 = &v235;
              a4 = v225;
              v72 = v128;
            }

            else
            {
              v216 = v66;
              v132 = 0;
              do
              {
                v234 = *v130;
                if (!*(&v236 + 1))
                {
                  goto LABEL_215;
                }

                v134 = (*(**(&v236 + 1) + 48))(*(&v236 + 1), &v234);
                v135 = *(v130 + 1);
                v136 = *(v130 + 2);
                if (v135 == v136)
                {
                  v133 = v132;
                }

                else
                {
                  do
                  {
                    v137 = *v135++;
                    v133 = (v132 + 1);
                    *(v73 + v86 + 4 * v132) = *(v134 + 4 * v137);
                    LODWORD(v132) = v132 + 1;
                  }

                  while (v135 != v136);
                }

                v130 += 8;
                v132 = v133;
              }

              while (v130 != v131);
              v138 = *(&v236 + 1);
              v66 = v216;
              if (*(&v236 + 1) != &v235)
              {
                a4 = v225;
                a3 = __n;
                v72 = v128;
                v83 = v219;
                if (*(&v236 + 1))
                {
                  (*(**(&v236 + 1) + 40))();
                }

                goto LABEL_145;
              }

              v129 = **(&v236 + 1);
              a4 = v225;
              a3 = __n;
              v72 = v128;
            }

            v129[4](v138);
            v83 = v219;
LABEL_145:
            v86 += 4 * v226;
            v78 = v221;
            v84 = v220;
LABEL_146:
            v139 = v78 >> 2;
            if ((v78 >> 2))
            {
              v140 = v223 + 4 * v222;
              v141 = (v73 + (v140 & 0xFFFFFFFC));
              v142 = *(a3 + 24) + *(a3 + 12);
              v143 = *(a2 + 1120);
              do
              {
                v144 = *v143++;
                *v141++ = *(v142 + 8 * v144);
                LODWORD(v139) = v139 - 1;
              }

              while (v139);
              v86 = v140 + 8 * (v78 >> 2);
            }

            if (v84 == -v83)
            {
              goto LABEL_165;
            }

            v227 = v72;
            v145 = v66;
            v146 = (v73 + v86);
            v147 = (a3 + 4 * *(a2 + 1020));
            v148 = a3;
            v149 = 4 * *(a2 + 1024);
            memcpy(v146, v147, v149);
            v232 = a4;
            v233 = v148;
            v150 = &unk_2A23FA0B8;
            *&v235 = &unk_2A23FA0B8;
            *(&v235 + 1) = &v232;
            *&v236 = &v233;
            *(&v236 + 1) = &v235;
            v151 = *(a2 + 1056);
            v152 = *(a2 + 1064);
            if (v151 == v152)
            {
              v160 = &v235;
              a4 = v225;
              a3 = __n;
            }

            else
            {
              v153 = 0;
              v154 = &v146[v149];
              a3 = __n;
              do
              {
                v234 = *v151;
                if (!*(&v236 + 1))
                {
                  goto LABEL_215;
                }

                v156 = (*(**(&v236 + 1) + 48))(*(&v236 + 1), &v234);
                v157 = *(v151 + 1);
                v158 = *(v151 + 2);
                if (v157 == v158)
                {
                  v155 = v153;
                }

                else
                {
                  do
                  {
                    v159 = *v157++;
                    v155 = (v153 + 1);
                    *&v154[4 * v153] = *(v156 + 4 * v159);
                    LODWORD(v153) = v153 + 1;
                  }

                  while (v157 != v158);
                }

                v151 += 8;
                v153 = v155;
              }

              while (v151 != v152);
              v160 = *(&v236 + 1);
              if (*(&v236 + 1) != &v235)
              {
                a4 = v225;
                v72 = v227;
                v66 = v145;
                if (*(&v236 + 1))
                {
                  (*(**(&v236 + 1) + 40))();
                }

                goto LABEL_165;
              }

              v150 = **(&v236 + 1);
              a4 = v225;
            }

            v66 = v145;
            v72 = v227;
            v150[4](v160);
LABEL_165:
            v233 = 0;
            if (a3)
            {
              v161 = *(a3 + 24) + *(a3 + 4);
            }

            else
            {
              v161 = 0;
            }

            v162 = &__dst[v229];
            v237 = v245;
            v238 = v246;
            v239 = v247;
            v235 = v243;
            v236 = v244;
            AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitUscStateLoad<LdShdrTransformFragment<AGX::HAL300::Encoders>>(*(a2 + 2392), __dst, &v233, v72, v161, a4, &v235);
            v163 = *v66;
            if (*v66)
            {
              v164 = v233;
              v165 = *(a2 + 2800);
              LODWORD(v166) = *(v163 + 2);
              v167 = v166 + 1;
              if (*(v163 + 3) >= (v166 + 1))
              {
                v170 = *v163;
              }

              else
              {
                v168 = -__clz(v166);
                v169 = malloc_type_malloc(40 << (v168 & 0x1F), 0x10800400D7C94D2uLL);
                v170 = v169;
                v171 = 1 << v168;
                v166 = *(v163 + 2);
                if (v166)
                {
                  memcpy(v169, *v163, 40 * v166);
                  free(*v163);
                  LODWORD(v166) = *(v163 + 2);
                }

                *(v163 + 3) = v171;
                *v163 = v170;
              }

              v172 = &v170[40 * v166];
              *v172 = 3;
              *(v172 + 1) = v162;
              *(v172 + 2) = __dst;
              *(v172 + 3) = (v164 - __dst);
              *(v172 + 8) = v165;
              *(v163 + 2) = v167;
            }

            v173 = *(a2 + 3752);
            v174 = *(a2 + 3764);
            v175 = *(a2 + 3776);
            v176 = (v162 >> 16) & 0xFFC00000 | *(a2 + 3768) & 0x3FFFFF;
            v177 = *(a2 + 3824);
            v178.i32[0] = *(v177 + 36);
            v178.i32[1] = *(v177 + 32);
            v179 = vbsl_s8(0x3FFFF0000, *(a2 + 3756), v178);
            v180 = v228[126];
            v181 = v228[128] + v180;
            v228[126] = v180 + 28;
            *v180 = v173;
            *(v180 + 4) = v179;
            *(v180 + 12) = v174;
            *(v180 + 16) = v176;
            *(v180 + 20) = v162 >> 6;
            *(v180 + 24) = v175;
            v182 = v228[6];
            *v182 = __ROR8__(v181, 32) & 0xFFFFFFFC000000FFLL | 0x700;
            v228[6] = v182 + 1;
            goto LABEL_176;
          }

LABEL_126:
          if (v81 >= 4)
          {
            v124 = *(a2 + 2920);
            v125 = v81 >> 2;
            v126 = (v73 + v86);
            do
            {
              v127 = *v124;
              v124 += 4;
              *v126 = v127;
              v126 += 4;
              --v125;
            }

            while (v125);
          }

          v86 += 8 * v81;
          goto LABEL_130;
        }

        v88 = **(&v236 + 1);
        a4 = v225;
        v66 = v215;
        v72 = v87;
LABEL_104:
        v88[4](v105);
        v83 = v219;
        goto LABEL_105;
      }
    }

    v105 = &v235;
    a4 = v225;
    v72 = v87;
    goto LABEL_104;
  }

LABEL_176:
  v183 = *(a5 + 3176);
  v184 = *(a1 + 112);
  v185 = v184[126];
  v186 = v184[128] + v185;
  v184[126] = v185 + 20;
  *v185 = 203948032;
  *(v185 + 4) = v183 & 0xF1C00FF;
  *(v185 + 8) = 0;
  *(v185 + 16) = HIDWORD(v183);
  v187 = v184[6];
  *v187 = __ROR8__(v186, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v184[6] = v187 + 1;
  v188 = *(a1 + 112);
  v189 = v188[126];
  v190 = v188[128] + v189;
  v188[126] = v189 + 40;
  *v189 = 0x380000000E1;
  *(v189 + 8) = 613744640;
  *(v189 + 12) = xmmword_29D2F25C0;
  *(v189 + 28) = 0;
  *(v189 + 36) = 0;
  v191 = v188[6];
  *v191 = __ROR8__(v190, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
  v188[6] = v191 + 1;
  v192 = *(a1 + 96);
  v240 = 0;
  v193 = v192[446];
  *(&v241 + 4) = vmul_f32(vcvt_f32_u32(v193), 0x3F0000003F000000);
  LODWORD(v241) = DWORD1(v241);
  *(&v241 + 3) = -*(&v241 + 2);
  v242 = 0x3F80000000000000;
  *(&v235 + 4) = -COERCE_DOUBLE(0x8000000080000000);
  if (v193.i32[0] && v193.i32[1])
  {
    DWORD1(v235) = ((v193.i32[0] - 1) >> 5) & 0x3FF | 0x80000000;
    DWORD2(v235) = ((v193.i32[1] - 1) >> 5) & 0x3FF;
  }

  v194 = *(a1 + 112);
  v195 = v194[126];
  v196 = v194[128];
  v194[126] = v195 + 40;
  *v195 = 12288;
  *(v195 + 4) = *(&v235 + 4);
  *(v195 + 12) = 0;
  *(v195 + 16) = v241;
  *(v195 + 32) = v242;
  v197 = v194[6];
  *v197 = __ROR8__(v196 + v195, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
  v194[6] = v197 + 1;
  v198 = *(a1 + 112);
  v199 = v198[126];
  v200 = v198[128] + v199;
  v198[126] = v199 + 20;
  *v199 = 0x20000840001;
  *(v199 + 8) = 0;
  *(v199 + 12) = 192;
  v201 = __ROR8__(v200, 32);
  v202 = v198[6];
  *v202 = v201 & 0xFFFFFFFC000000FFLL | 0x500;
  v198[6] = v202 + 1;
  *&v203 = vand_s8(vadd_s32(vadd_s32(*(*(a1 + 96) + 3568), *(*(a1 + 96) + 4932)), -1), vand_s8(vneg_s32(*(*(a1 + 96) + 4932)), 0xFFFF0000FFFFLL));
  *(&v203 + 1) = 0x3F80000000000000;
  v204 = *(a1 + 112);
  v205 = *(v204 + 304);
  v206 = v205 + *(v204 + 320);
  *(v204 + 304) = v205 + 1;
  *v205 = v203;
  LODWORD(v204) = v206 & 0xFFFFFFFC;
  v207 = (v206 >> 16) & 0xFFFF0000;
  v208 = *(a1 + 112);
  v209 = v208[42];
  v210 = v209 + v208[44];
  v208[42] = v209 + 5;
  *v209 = 768;
  v209[3] = v207;
  v209[4] = v204;
  v211 = v208[6];
  *v211 = __ROR8__(v210, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v208[6] = v211 + 1;
}

void AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsWithIndirectParameters(uint64_t a1, int64x2_t *a2, _BYTE *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindTilePipelineResources(a1, *(a1 + 1288), a5);
  v14 = *a2;
  *(*(a1 + 936) + 832) = vmovn_s64(*a2);
  v15 = *(a1 + 1280);
  v16 = *(a1 + 1288);
  v17 = *(a1 + 928);
  v18 = a2[1].i64[0];
  v19 = *(v15 + 96);
  v20 = *(v19 + 4932);
  v21 = *(v19 + 4936);
  v22 = v14.i64[0];
  v70 = v14;
  v23 = v14.u64[1];
  v25 = v14.i64[0] == v20 && v14.i64[1] == v21;
  v75 = v25;
  *(v15 + 8) = v20;
  *(v15 + 12) = v21;
  if ((a8 & 0x100000000) != 0)
  {
    v26 = a8;
  }

  else
  {
    v26 = 0;
  }

  *(v15 + 64) = v26;
  v27 = *(v15 + 112);
  v28 = *(v27 + 1840) - 1;
  v71 = v17;
  v72 = v16;
  v69 = v18;
  if (v28 > 6)
  {
    v29 = 10;
  }

  else
  {
    v29 = dword_29D2F76D0[v28];
  }

  v30 = v29;
  v31 = v27 + 32 * v29;
  if (((1 << v29) & 0xFFF00000480) != 0 && !*(v31 + 48))
  {
    v67 = v14.i64[0];
    v66 = AGX::DataBufferAllocator<44ul>::growNoInline(v27, v29, 0);
    v22 = v67;
    if ((v66 & 1) == 0)
    {
LABEL_42:
      abort();
    }
  }

  v33 = *(v31 + 40);
  v32 = *(v31 + 48);
  v34 = (v31 + 40);
  v35 = v32 + 48;
  if (v35 <= v33)
  {
    goto LABEL_16;
  }

  v63 = v30;
  v64 = v22;
  v65 = AGX::DataBufferAllocator<44ul>::growNoInline(v27, v63, 0);
  v22 = v64;
  if (v65)
  {
    v35 = v34[1] + 48;
    if (v35 > *v34)
    {
      goto LABEL_42;
    }

LABEL_16:
    v34[2] = v35;
  }

  v36 = *(v15 + 112);
  v37 = *(v36 + 1840) - 1;
  if (v37 > 6)
  {
    v38 = 10;
  }

  else
  {
    v38 = qword_29D2F76F0[v37];
  }

  v39 = v36 + 32 * v38;
  v40 = *(v39 + 48);
  v41 = *(v39 + 64) + v40;
  *(v39 + 48) = v40 + 48;
  *a9 = v41;
  *a10 = v40;
  *(v15 + 16) = v41;
  if (a7)
  {
    v42 = -v20;
    v43 = -v21;
    v44 = v20 - 1;
    v45 = v21 - 1;
    v46 = (v40 + 24);
    v47 = 0;
    if (v75)
    {
      v48 = (a6 + 32);
      do
      {
        v49 = *(v48 - 4);
        v50 = *(v48 - 3);
        v51 = (v49 & v42) / v20;
        v52 = (v50 & v43) / v21;
        LODWORD(v49) = ((v44 + v49 + *(v48 - 1)) & v42) / v20 - v51;
        LODWORD(v50) = ((v45 + v50 + *v48) & v43) / v21 - v52;
        *(v46 - 6) = (v49 * v20);
        *(v46 - 2) = v49;
        *v46 = v50;
        v53 = v49 + 1 + (v49 + 1) * v50;
        *(v46 - 4) = (v50 * v21);
        *(v46 + 2) = v51;
        *(v46 + 4) = v52;
        if (v47 <= v53)
        {
          v47 = v53;
        }

        v48 += 6;
        ++v46;
        --a7;
      }

      while (a7);
    }

    else
    {
      v54 = v22;
      v55 = (a6 + 32);
      do
      {
        v56 = *(v55 - 4);
        v57 = *(v55 - 3);
        v58 = (v56 & v42) / v20;
        v59 = (v57 & v43) / v21;
        LODWORD(v56) = ((v44 + v56 + *(v55 - 1)) & v42) / v20 - v58;
        LODWORD(v57) = ((v45 + v57 + *v55) & v43) / v21 - v59;
        *(v46 - 6) = v54;
        *(v46 - 4) = v23;
        *(v46 - 2) = v56;
        *v46 = v57;
        v60 = v56 + 1 + (v56 + 1) * v57;
        *(v46 + 2) = v58;
        *(v46 + 4) = v59;
        if (v47 <= v60)
        {
          v47 = v60;
        }

        v55 += 6;
        ++v46;
        --a7;
      }

      while (a7);
    }
  }

  else
  {
    v47 = 0;
  }

  v79 = 25;
  v81 = 0;
  v82 = 0;
  __p = 0;
  v78 = &unk_2A23F96B8;
  v83 = 0;
  if ((a8 & 0x100000000) != 0)
  {
    v61 = 6;
  }

  else
  {
    v61 = 2;
  }

  LOBYTE(v83) = v61;
  TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v15 + 80), &v78);
  v76 = v70;
  v77 = v69;
  AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>(v15, v72, v71, a1 + 88, &v76, a3, a4, TileDispatchVertexProgram, v75, v47, a8);
  v78 = &unk_2A23F96F8;
  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }
}

void sub_29CF2D05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatch(uint64_t *a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v249 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(*a1 + 5872);
  if (!v5 || !(*(v5 + 2124) & (*(v5 + 2126) ^ 0xFFFF) | (*(v5 + 2126) & *(v4 + 1564))))
  {
    return;
  }

  v6 = *(v5 + 192);
  v8 = a1[4];
  if (v6 <= *(v5 + 200))
  {
    v6 = *(v5 + 200);
  }

  v9.i32[0] = v6;
  v9.i32[1] = *(v5 + 204);
  v10 = vshl_n_s32(v9, 5uLL);
  *v17.i8 = vshl_u32(vadd_s32(v10, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v11 = vshl_u32(vadd_s32(v10, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v12 = vadd_s32(*v17.i8, vrev64_s32(v11));
  v13 = vmul_s32(v12, 0x600000000ALL);
  v14 = v13.i32[1];
  v15 = v13.i32[0];
  v16 = v13.i32[0] + 32 * v12.i32[1];
  v17.i32[1] = v11.i32[1];
  v18 = (v4 + 6144);
  v19 = *(v4 + 6148);
  v20 = (v4 + 6152);
  if (v19)
  {
    v21 = v19 + 64;
  }

  else
  {
    v21 = 0;
  }

  v22 = v8[3].i64[1];
  if (*(v22 + 16999))
  {
    v23 = 11;
  }

  else
  {
    v23 = 6;
  }

  if (v23 >= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v22 + 7092);
  v8[3].i32[1] = 5;
  v27 = v8[4].i32[2];
  v26 = v8[4].i32[3];
  v28 = vld1_dup_f32(v20);
  v29.i32[0] = v21;
  v29.i32[1] = *v18;
  v30 = vshl_u32(vadd_s32(v29, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v33 = vrev64_s32(vshl_u32(vadd_s32(v29, 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
  v31 = vshl_u32(vadd_s32(v28, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v32 = vadd_s32(vadd_s32(v30, v31), v33);
  v33.i32[0] = v30.i32[1];
  v34 = v8[6].i32[0];
  *v35.i8 = v33;
  v35.i64[1] = v17.i64[0];
  v36 = v32.i32[1];
  v37 = v32.i32[0];
  v38 = vaddvq_s32(v35);
  v39 = v32.i32[1] + v32.i32[0];
  v40 = v32.i32[1] + v32.i32[0] + v16;
  v41 = __OFSUB__(v40, v34);
  v42 = v40 - v34;
  if ((v42 < 0) ^ v41 | (v42 == 0))
  {
    v42 = 0;
  }

  v43 = v8[5].i32[0];
  v44 = *v8;
  v45.i64[0] = v8[1].i64[0];
  v17.u64[1] = v33;
  *v8 = vmaxq_s32(*v8, v17);
  v46 = v24 * v36 + v23 * v37 + v15 + v14;
  v47 = ((v43 + v31.i32[1] + (v42 + v39) * v27 + v38 + (v15 + v36) * v26 + 64) * v25 + 7) & 0xFFFFFFF8;
  v48 = v46 - v34;
  if (v46 <= v34)
  {
    v48 = 0;
  }

  v49 = ((v38 + v48 * v27 + v43 + v31.i32[1] + 64) * v25 + 7) & 0xFFFFFFF8;
  v50.i32[0] = vdup_lane_s32(v31, 1).u32[0];
  v50.i32[1] = v47;
  *v8[1].i8 = vmax_s32(*v45.i8, *v50.i8);
  v51 = v8[1].i32[2];
  if (v51 <= v49)
  {
    v52 = v49;
  }

  else
  {
    v52 = v8[1].i32[2];
  }

  v53 = v8[2].i32[0];
  v45.i64[1] = __PAIR64__(v53, v51);
  v50.i64[1] = __PAIR64__(v46, v49);
  v8[1].i32[2] = v52;
  if (v53 > v46)
  {
    v46 = v53;
  }

  v8[2].i32[0] = v46;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v17, v44), vcgtq_s32(v50, v45)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1[4], a2 + 1360, 0);
  }

  v54 = *(*a1 + 3568);
  *&v55 = v54;
  *(&v55 + 1) = HIDWORD(v54);
  v56 = v55;
  v227 = a1;
  v57 = a1[112];
  v229 = *a1;
  v58 = *(*a1 + 4932);
  v59 = *(v57 + 96);
  v60 = *(v59 + 4932);
  v61 = *(v59 + 4936);
  v62 = v58;
  v63 = v58 == v60 && HIDWORD(v58) == v61;
  *(v57 + 8) = v60;
  v64 = v63;
  v223 = v64;
  *(v57 + 12) = v61;
  *(v57 + 64) = 0;
  v65 = ((v60 + v56 - 1) & -v60) / v60;
  v66 = ((v61 + DWORD2(v56) - 1) & -v61) / v61;
  if (v63)
  {
    v67 = (v65 * v60) + -0.00390625;
    v68 = (v66 * v61) + -0.00390625;
  }

  else
  {
    v67 = v58 + -0.0039062;
    v68 = HIDWORD(v58) + -0.0039062;
  }

  *(v57 + 16) = v67;
  *(v57 + 24) = v68;
  *(v57 + 32) = v65;
  *(v57 + 40) = v66;
  *(v57 + 48) = 0;
  *(v57 + 56) = 0;
  v233 = 25;
  v235 = 0;
  v236 = 0;
  __p = 0;
  v232 = &unk_2A23F96B8;
  v237 = 0;
  v222 = v66 * v65;
  TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v57 + 80), &v232);
  v69 = *(TileDispatchVertexProgram + 2120);
  do
  {
    IOGPUResourceListAddResource();
    v69 &= ~(1 << __clz(__rbit32(v69)));
  }

  while (v69);
  if ((HIDWORD(v62) * v62) <= *(v5 + 2120))
  {
    v70 = *(v57 + 112);
    v71 = v70[6];
    if ((v71 + 23) > v70[5])
    {
      v72 = TileDispatchVertexProgram;
      if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 0, 0))
      {
        v210 = v70[6] + 184;
        if (v210 > v70[5])
        {
          goto LABEL_189;
        }

        v70[7] = v210;
        v72 = TileDispatchVertexProgram;
        *v71 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v70, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      v70[7] = v71 + 23;
      v72 = TileDispatchVertexProgram;
    }

    v73 = *(v57 + 112);
    v74 = *(v72 + 16) + 667;
    v75 = *(v73 + 144) + v74;
    if (v75 > *(v73 + 136))
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 3, 0))
      {
LABEL_42:
        v76 = *(v73 + 1008) + 667;
        if (v76 > *(v73 + 1000))
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 30, 0))
          {
LABEL_44:
            v77 = (*(*(v72 + 1784) + 8) - **(v72 + 1784)) + 63;
            v78 = *(v73 + 208) + v77;
            if (v78 > *(v73 + 200))
            {
              if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 5, 0))
              {
LABEL_46:
                v79 = (*(*(v5 + 680) + 8) - **(v5 + 680)) + 63;
                v80 = *(v73 + 240) + v79;
                if (v80 > *(v73 + 232))
                {
                  if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, 6, 0))
                  {
LABEL_48:
                    v81 = *(v5 + 232);
                    if (*(v73 + 1840))
                    {
                      v82 = 4;
                    }

                    else
                    {
                      v82 = 11;
                    }

                    v83 = (v73 + 40 + 32 * v82);
                    if (((1 << v82) & 0x480) != 0 && !v83[1])
                    {
                      v211 = v82;
                      v212 = AGX::DataBufferAllocator<44ul>::growNoInline(v73, v82, 0);
                      v82 = v211;
                      if ((v212 & 1) == 0)
                      {
LABEL_189:
                        abort();
                      }
                    }

                    v84 = v81 + 31;
                    v85 = v83[1] + v84;
                    if (v85 > *v83)
                    {
                      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v73, v82, 0))
                      {
LABEL_55:
                        v86 = *(v57 + 112);
                        v87 = v86[38] + 16;
                        if (v87 > v86[37])
                        {
                          if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 8, 0))
                          {
LABEL_57:
                            v88 = *(v57 + 112);
                            v89 = v88[42] + 20;
                            if (v89 > v88[41])
                            {
                              if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v57 + 112), 9, 0))
                              {
LABEL_59:
                                *(v57 + 172) = 1;
                                v90 = *(v72 + 3144);
                                v91 = HIDWORD(*(v57 + 120));
                                v92 = *(v57 + 128);
                                v93 = HIDWORD(*(v57 + 120));
                                if (*(v57 + 120) > v90)
                                {
                                  v90 = *(v57 + 120);
                                }

                                v94 = *(v57 + 136);
                                *(v57 + 120) = v90;
                                v95 = *(v72 + 3148);
                                if (v91 > v95)
                                {
                                  v95 = v91;
                                }

                                v96 = *(v57 + 144);
                                *(v57 + 124) = v95;
                                v97 = *(v72 + 3152);
                                if (v92 > v97)
                                {
                                  v97 = v92;
                                }

                                *(v57 + 128) = v97;
                                v98 = *(v72 + 3156);
                                if (v93 > v98)
                                {
                                  v98 = v93;
                                }

                                *(v57 + 132) = v98;
                                v99 = *(v72 + 3160);
                                if (v94 > v99)
                                {
                                  v99 = v94;
                                }

                                v100 = *(v57 + 152);
                                *(v57 + 136) = v99;
                                v101 = *(v72 + 3164);
                                if (SHIDWORD(v94) > v101)
                                {
                                  v101 = HIDWORD(v94);
                                }

                                *(v57 + 140) = v101;
                                v102 = *(v72 + 3168);
                                if (v96 > v102)
                                {
                                  v102 = v96;
                                }

                                *(v57 + 144) = v102;
                                v103 = *(v72 + 3172);
                                if (v100 > v103)
                                {
                                  v103 = v100;
                                }

                                *(v57 + 152) = v103;
                                AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(*(v57 + 104), *(v57 + 112), v72, v57, v57 + 8);
                                v105 = *(v57 + 104);
                                v104 = *(v57 + 112);
                                v106 = *(v5 + 1016);
                                do
                                {
                                  IOGPUResourceListAddResource();
                                  v106 &= ~(1 << __clz(__rbit32(v106)));
                                }

                                while (v106);
                                v107 = v105;
                                v108 = *(v105 + 238);
                                v109 = *(v5 + 232);
                                v217 = *(v105 + 204);
                                v218 = *(v105 + 196);
                                v219 = *(v105 + 208);
                                v220 = *(v105 + 200);
                                v221 = *(v105 + 192);
                                if (v109)
                                {
                                  v110 = v104;
                                  v111 = *(v104 + 1840);
                                  v112 = 4;
                                  if (!v111)
                                  {
                                    v112 = 11;
                                  }

                                  v113 = 4;
                                  if (!v111)
                                  {
                                    v113 = 42;
                                  }

                                  v114 = 4;
                                  if (!v111)
                                  {
                                    v114 = 39;
                                  }

                                  v115 = 4;
                                  if (!v111)
                                  {
                                    v115 = 36;
                                  }

                                  if (v111 == 1)
                                  {
                                    v112 = v115;
                                  }

                                  if (v111 == 3)
                                  {
                                    v112 = v114;
                                  }

                                  if (v111 == 7)
                                  {
                                    v116 = v113;
                                  }

                                  else
                                  {
                                    v116 = v112;
                                  }

                                  v117 = v104 + 32 * v116;
                                  v118 = (*(v117 + 48) + 31) & 0xFFFFFFFFFFFFFFE0;
                                  v119 = v118 + *(v117 + 64);
                                  *(v117 + 48) = v118 + v109;
                                }

                                else
                                {
                                  v119 = 0;
                                  v118 = 0;
                                  v110 = v104;
                                }

                                v120 = ((v110[30] + 63) & 0xFFFFFFFFFFFFFFC0);
                                v224 = v110[32];
                                v110[30] = &v120[*(*(v5 + 680) + 8) - **(v5 + 680)];
                                v121 = TileDispatchVertexProgram;
                                if (!v109)
                                {
                                  goto LABEL_124;
                                }

                                v122 = *(v5 + 80);
                                v123 = *(v5 + 168);
                                v124 = *(v5 + 185);
                                if (*(v5 + 184) == 1)
                                {
                                  v229[111] = v119 + *(v5 + 224);
                                  v229[110] = v119 + *(v5 + 220);
                                  if (!v124)
                                  {
LABEL_98:
                                    if (v122)
                                    {
                                      goto LABEL_99;
                                    }

                                    goto LABEL_108;
                                  }
                                }

                                else if (!*(v5 + 185))
                                {
                                  goto LABEL_98;
                                }

                                v229[112] = v119 + *(v5 + 228);
                                if (v122)
                                {
LABEL_99:
                                  v213 = v122;
                                  v214 = v123;
                                  v239 = v229 + 56;
                                  v125 = &unk_2A23F99F8;
                                  *&v241 = &unk_2A23F99F8;
                                  *(&v241 + 1) = &v239;
                                  v243 = &v241;
                                  v126 = *(v5 + 8);
                                  if (((*(v5 + 16) - v126) & 0x3FFFFFFFCLL) != 0)
                                  {
                                    v215 = v119;
                                    v127 = v108;
                                    v128 = 0;
                                    do
                                    {
                                      v129 = *(v126 + 4 * v128);
                                      LODWORD(v238) = v129 >> 29;
                                      if (!v243)
                                      {
LABEL_190:
                                        std::__throw_bad_function_call[abi:nn200100]();
                                      }

                                      *(v118 + 8 * v128++) = *((*(*v243 + 48))(v243, &v238) + 8 * (v129 & 0x1FFFFFFF));
                                      v126 = *(v5 + 8);
                                    }

                                    while (v128 < ((*(v5 + 16) - v126) >> 2));
                                    v130 = v243;
                                    if (v243 != &v241)
                                    {
                                      v108 = v127;
                                      v121 = TileDispatchVertexProgram;
                                      v119 = v215;
                                      if (v243)
                                      {
                                        (*(*v243 + 40))();
                                      }

LABEL_113:
                                      v131 = 8 * (v213 & 0x1FFFFFFF);
                                      if (!v214)
                                      {
                                        goto LABEL_124;
                                      }

                                      goto LABEL_114;
                                    }

                                    v125 = *v243;
                                    v108 = v127;
                                    v121 = TileDispatchVertexProgram;
                                    v119 = v215;
                                  }

                                  else
                                  {
                                    v130 = &v241;
                                  }

                                  v125[4](v130);
                                  goto LABEL_113;
                                }

LABEL_108:
                                v131 = 0;
                                if (!v123)
                                {
                                  goto LABEL_124;
                                }

LABEL_114:
                                v229[57] = v119 + v131 + 8;
                                v238 = v229 + 56;
                                v239 = 0;
                                v132 = &unk_2A23FA100;
                                *&v241 = &unk_2A23FA100;
                                *(&v241 + 1) = &v238;
                                v242 = &v239;
                                v243 = &v241;
                                v133 = *(v5 + 96);
                                if (((*(v5 + 104) - v133) & 0x3FFFFFFFCLL) != 0)
                                {
                                  v216 = v119;
                                  v134 = v108;
                                  v135 = 0;
                                  v136 = v118 + v131;
                                  do
                                  {
                                    v137 = *(v133 + 4 * v135);
                                    v240 = v137 >> 29;
                                    if (!v243)
                                    {
                                      goto LABEL_190;
                                    }

                                    *(v136 + 4 * v135++) = *((*(*v243 + 48))(v243, &v240) + 4 * (v137 & 0x1FFFFFFF));
                                    v133 = *(v5 + 96);
                                  }

                                  while (v135 < ((*(v5 + 104) - v133) >> 2));
                                  v138 = v243;
                                  if (v243 != &v241)
                                  {
                                    v108 = v134;
                                    v121 = TileDispatchVertexProgram;
                                    v119 = v216;
                                    if (v243)
                                    {
                                      (*(*v243 + 40))();
                                    }

                                    goto LABEL_124;
                                  }

                                  v132 = *v243;
                                  v108 = v134;
                                  v121 = TileDispatchVertexProgram;
                                  v119 = v216;
                                }

                                else
                                {
                                  v138 = &v241;
                                }

                                v132[4](v138);
LABEL_124:
                                v139 = v119;
                                v140 = *(v5 + 680);
                                memcpy(v120, *v140, *(v140 + 8) - *v140);
                                if (*(v140 + 272) == 1)
                                {
                                  v141.i64[0] = v139;
                                  v141.i64[1] = v139 >> 5;
                                  *&v120[*(v140 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v120[*(v140 + 276)], vshlq_u8(vqtbl1q_s8(v141, xmmword_29D2F17A0), xmmword_29D2F17B0));
                                }

                                v142 = *(v140 + 248);
                                v143 = *(v140 + 256);
                                v144 = a4;
                                for (i = a3; v142 != v143; v142 += 3)
                                {
                                  v146.i64[0] = v229[v142[1] + 56] + *v142;
                                  v146.i64[1] = v146.i64[0] >> 5;
                                  *&v120[v142[2]] = vbslq_s8(xmmword_29D2F17C0, *&v120[v142[2]], vshlq_u8(vqtbl1q_s8(v146, xmmword_29D2F17A0), xmmword_29D2F17B0));
                                }

                                if (!*(v140 + 312))
                                {
                                  v147 = &v120[*(v140 + 316)];
                                  if (v221 & 1) != 0 && (v220 & 1) != 0 && (v219)
                                  {
                                    AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(&v241, v147 + 18);
                                    v144 = a4;
                                    i = a3;
                                    v148 = v244;
                                    v149 = v245 & 0xFFF;
                                    if (v244 <= (v218 + 3) >> 2)
                                    {
                                      v148 = (v218 + 3) >> 2;
                                    }

                                    if (v149 <= ((((v217 + 3) >> 2) + 1) & 0x7FFFFFFE))
                                    {
                                      v149 = (((v217 + 3) >> 2) + 1) & 0x7FFFFFFE;
                                    }

                                    v121 = TileDispatchVertexProgram;
                                    *(v147 + 9) = *(v147 + 9) & 0x1F | (32 * ((v149 >> 1) & 0x7FF));
                                    *(v147 + 12) = v148;
                                  }

                                  *v147 = v108;
                                }

                                v150 = &v120[v224];
                                v151 = *v107;
                                if (*v107)
                                {
                                  v153 = *v140;
                                  v152 = *(v140 + 8);
                                  v154 = *(v5 + 1088);
                                  v155 = *(v151 + 2);
                                  v156 = v155 + 1;
                                  if (*(v151 + 3) >= v155 + 1)
                                  {
                                    v159 = *v151;
                                  }

                                  else
                                  {
                                    v228 = v153;
                                    v230 = v152;
                                    v157 = -__clz(v155);
                                    v158 = malloc_type_malloc(40 << (v157 & 0x1F), 0x10800400D7C94D2uLL);
                                    v159 = v158;
                                    v160 = 1 << v157;
                                    v161 = *(v151 + 2);
                                    if (v161)
                                    {
                                      memcpy(v158, *v151, 40 * v161);
                                      free(*v151);
                                      v155 = *(v151 + 2);
                                    }

                                    else
                                    {
                                      v155 = 0;
                                    }

                                    v144 = a4;
                                    i = a3;
                                    LODWORD(v152) = v230;
                                    LODWORD(v153) = v228;
                                    *(v151 + 3) = v160;
                                    *v151 = v159;
                                  }

                                  v162 = &v159[40 * v155];
                                  *v162 = 11;
                                  *(v162 + 1) = v150;
                                  *(v162 + 2) = v120;
                                  *(v162 + 3) = (v152 - v153);
                                  *(v162 + 8) = v154;
                                  *(v151 + 2) = v156;
                                  v121 = TileDispatchVertexProgram;
                                }

                                v163 = *(v5 + 2040);
                                v164 = *(v5 + 2052);
                                v165 = *(v5 + 2064);
                                v166 = (v150 >> 16) & 0xFFC00000 | *(v5 + 2056) & 0x3FFFFF;
                                v167 = *(v5 + 2112);
                                v168.i32[0] = *(v167 + 36);
                                v168.i32[1] = *(v167 + 32);
                                v169 = vbsl_s8(0x3FFFF0000, *(v5 + 2044), v168);
                                v170 = v110[126];
                                v171 = v110[128] + v170;
                                v110[126] = v170 + 28;
                                *v170 = v163;
                                *(v170 + 4) = v169;
                                *(v170 + 12) = v164;
                                *(v170 + 16) = v166;
                                *(v170 + 20) = v150 >> 6;
                                *(v170 + 24) = v165;
                                v172 = v110[6];
                                *v172 = __ROR8__(v171, 32) & 0xFFFFFFFC000000FFLL | 0x700;
                                v110[6] = v172 + 1;
                                v173 = *(v121 + 3176);
                                v174 = *(v57 + 112);
                                v175 = v174[126];
                                v176 = v174[128] + v175;
                                v174[126] = v175 + 20;
                                *v175 = 203948032;
                                *(v175 + 4) = v173 & 0xF1C00FF;
                                *(v175 + 8) = 0;
                                *(v175 + 16) = HIDWORD(v173);
                                v177 = v174[6];
                                *v177 = __ROR8__(v176, 32) & 0xFFFFFFFC000000FFLL | 0x500;
                                v174[6] = v177 + 1;
                                v178 = *(v57 + 112);
                                v179 = v178[126];
                                v180 = v178[128] + v179;
                                v178[126] = v179 + 40;
                                *v179 = 0x380000000E1;
                                *(v179 + 8) = 613744640;
                                *(v179 + 12) = xmmword_29D2F25C0;
                                *(v179 + 28) = 0;
                                *(v179 + 36) = 0;
                                v181 = v178[6];
                                *v181 = __ROR8__(v180, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
                                v178[6] = v181 + 1;
                                v182 = *(v57 + 96);
                                LODWORD(v241) = 12288;
                                v246 = 0;
                                v183 = v182[446];
                                v184 = vmul_f32(vcvt_f32_u32(v183), 0x3F0000003F000000);
                                LODWORD(v247) = v184.i32[0];
                                *(&v247 + 4) = v184;
                                *(&v247 + 3) = -v184.f32[1];
                                v248 = 0x3F80000000000000;
                                *(&v241 + 4) = -COERCE_DOUBLE(0x8000000080000000);
                                if (v183.i32[0] && v183.i32[1])
                                {
                                  DWORD1(v241) = ((v183.i32[0] - 1) >> 5) & 0x3FF | 0x80000000;
                                  DWORD2(v241) = ((v183.i32[1] - 1) >> 5) & 0x3FF;
                                }

                                v185 = *(v57 + 112);
                                v186 = v185[126];
                                v187 = v185[128] + v186;
                                v185[126] = v186 + 40;
                                *v186 = 12288;
                                *(v186 + 4) = *(&v241 + 4);
                                *(v186 + 12) = 0;
                                *(v186 + 16) = v247;
                                *(v186 + 32) = v248;
                                v188 = v185[6];
                                *v188 = __ROR8__(v187, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
                                v185[6] = v188 + 1;
                                v189 = *(v57 + 112);
                                v190 = v189[126];
                                v191 = v189[128] + v190;
                                v189[126] = v190 + 20;
                                *v190 = 0x20000840001;
                                *(v190 + 8) = 0;
                                *(v190 + 12) = 192;
                                v192 = __ROR8__(v191, 32);
                                v193 = v189[6];
                                *v193 = v192 & 0xFFFFFFFC000000FFLL | 0x500;
                                v189[6] = v193 + 1;
                                *&v194 = vand_s8(vadd_s32(vadd_s32(*(*(v57 + 96) + 3568), *(*(v57 + 96) + 4932)), -1), vand_s8(vneg_s32(*(*(v57 + 96) + 4932)), 0xFFFF0000FFFFLL));
                                *(&v194 + 1) = 0x3F80000000000000;
                                v195 = *(v57 + 112);
                                v196 = *(v195 + 304);
                                v197 = v196 + *(v195 + 320);
                                *(v195 + 304) = v196 + 1;
                                *v196 = v194;
                                LODWORD(v195) = v197 & 0xFFFFFFFC;
                                v198 = (v197 >> 16) & 0xFFFF0000;
                                v199 = *(v57 + 112);
                                v200 = v199[42];
                                v201 = v200 + v199[44];
                                v199[42] = v200 + 5;
                                *v200 = 768;
                                v200[3] = v198;
                                v200[4] = v195;
                                v202 = v199[6];
                                *v202 = __ROR8__(v201, 32) & 0xFFFFFFFC000000FFLL | 0x500;
                                v199[6] = v202 + 1;
                                if (!*(*(v57 + 224) + 520) || (*i & 1) != 0)
                                {
                                  *i = 1;
                                }

                                else
                                {
                                  if (v223)
                                  {
                                    v203 = 3;
                                  }

                                  else
                                  {
                                    v203 = 3 * v222;
                                  }

                                  v204 = *(*(v57 + 96) + 4908);
                                  v205 = *(v57 + 112);
                                  LODWORD(v206) = 1640238336;
                                  DWORD1(v206) = v203;
                                  *(&v206 + 1) = v204;
                                  v207 = *(v205 + 48);
                                  *v207 = v206;
                                  *(v205 + 48) = v207 + 1;
                                  if (v144)
                                  {
                                    ++*v144;
                                  }

                                  *(*(v57 + 88) + 1956) += v204 * (v203 / 3);
                                }

                                goto LABEL_157;
                              }

                              v89 = v88[42] + 20;
                              if (v89 > v88[41])
                              {
                                goto LABEL_189;
                              }
                            }

                            v88[43] = v89;
                            goto LABEL_59;
                          }

                          v87 = v86[38] + 16;
                          if (v87 > v86[37])
                          {
                            goto LABEL_189;
                          }
                        }

                        v86[39] = v87;
                        goto LABEL_57;
                      }

                      v85 = v83[1] + v84;
                      if (v85 > *v83)
                      {
                        goto LABEL_189;
                      }
                    }

                    v83[2] = v85;
                    goto LABEL_55;
                  }

                  v80 = *(v73 + 240) + v79;
                  if (v80 > *(v73 + 232))
                  {
                    goto LABEL_189;
                  }
                }

                *(v73 + 248) = v80;
                goto LABEL_48;
              }

              v78 = *(v73 + 208) + v77;
              if (v78 > *(v73 + 200))
              {
                goto LABEL_189;
              }
            }

            *(v73 + 216) = v78;
            goto LABEL_46;
          }

          v76 = *(v73 + 1008) + 667;
          if (v76 > *(v73 + 1000))
          {
            goto LABEL_189;
          }
        }

        *(v73 + 1016) = v76;
        goto LABEL_44;
      }

      v75 = *(v73 + 144) + v74;
      if (v75 > *(v73 + 136))
      {
        goto LABEL_189;
      }
    }

    *(v73 + 152) = v75;
    goto LABEL_42;
  }

LABEL_157:
  v232 = &unk_2A23F96F8;
  if (__p)
  {
    v235 = __p;
    operator delete(__p);
  }

  v208 = v227[112];
  v209 = *(v5 + 216);
  if (*(v208 + 232) > v209)
  {
    v209 = *(v208 + 232);
  }

  *(v208 + 232) = v209;
}

void sub_29CF2E278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitBackgroundObjectArguments(char ***a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v139 = *MEMORY[0x29EDCA608];
  v11 = *(a4 + 2120);
  do
  {
    v11 &= ~(1 << __clz(__rbit32(v11)));
    IOGPUResourceListAddResource();
  }

  while (v11);
  v12 = (*(*(a4 + 1784) + 8) - **(a4 + 1784)) + 63;
  v13 = a3[30] + v12;
  if (v13 <= a3[29])
  {
LABEL_4:
    a3[31] = v13;
    goto LABEL_5;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a3, 6, 0))
  {
    v13 = a3[30] + v12;
    if (v13 > a3[29])
    {
      goto LABEL_107;
    }

    goto LABEL_4;
  }

LABEL_5:
  v14 = *(a4 + 16) + 31;
  v15 = a3[22] + v14;
  if (v15 <= a3[21])
  {
LABEL_6:
    a3[23] = v15;
    goto LABEL_7;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a3, 4, 0))
  {
    v15 = a3[22] + v14;
    if (v15 <= a3[21])
    {
      goto LABEL_6;
    }

LABEL_107:
    abort();
  }

LABEL_7:
  v16 = *(a1 + 196);
  v17 = *(a1 + 228);
  v131 = *(a1 + 212);
  v132 = v17;
  v133 = *(a1 + 61);
  v129 = *(a1 + 180);
  v130 = v16;
  v18 = *(a4 + 16);
  if (v18)
  {
    v19 = (a3[22] + 31) & 0xFFFFFFFFFFFFFFE0;
    v20 = v19 + a3[24];
    a3[22] = v19 + v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = ((a3[30] + 63) & 0xFFFFFFFFFFFFFFC0);
  v125 = a3[32];
  a3[30] = &v21[*(*(a4 + 1784) + 8) - **(a4 + 1784)];
  v22 = *(a4 + 520);
  v23 = *(a4 + 512);
  v25 = v22 - v23;
  v24 = v22 == v23;
  v26 = *(a4 + 408) & 1;
  if (v24)
  {
    v26 = 0;
  }

  if (!v18)
  {
    goto LABEL_94;
  }

  v120 = v25;
  v116 = v26;
  v117 = *(a4 + 408);
  v27 = *(a4 + 712);
  v28 = *(a4 + 128);
  v114 = *(a4 + 256);
  v115 = *(a4 + 264);
  v29 = *(a4 + 48);
  v30 = *(a4 + 52);
  v119 = *(a4 + 416);
  v121 = *(a4 + 420);
  v31 = *(a4 + 744);
  v32 = *(a4 + 745);
  if (*(a4 + 744))
  {
    *(a5 + 792) = v20 + *(a4 + 20);
  }

  if (v32)
  {
    *(a5 + 800) = v20 + *(a4 + 40);
  }

  v33 = 0;
  v124 = v21;
  v122 = v30;
  v123 = v29;
  if (v29 != v27)
  {
    v112 = v28;
    v113 = v32;
    v118 = v20;
    v126 = a6;
    v127 = a5;
    v34 = &unk_2A23F9800;
    *&v134 = &unk_2A23F9800;
    *(&v134 + 1) = &v126;
    *&v135 = &v127;
    *(&v135 + 1) = &v134;
    v36 = *(a4 + 80);
    v35 = *(a4 + 88);
    if (v36 == v35)
    {
      v44 = &v134;
      v20 = v118;
    }

    else
    {
      v37 = a6;
      v38 = 0;
      do
      {
        v128 = *v36;
        if (!*(&v135 + 1))
        {
LABEL_112:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v40 = (*(**(&v135 + 1) + 48))(*(&v135 + 1), &v128);
        v41 = *(v36 + 1);
        v42 = *(v36 + 2);
        if (v41 == v42)
        {
          v39 = v38;
        }

        else
        {
          do
          {
            v43 = *v41++;
            v39 = (v38 + 1);
            *(v19 + 8 * v38) = *(v40 + 8 * v43);
            LODWORD(v38) = v38 + 1;
          }

          while (v41 != v42);
        }

        v36 += 8;
        v38 = v39;
      }

      while (v36 != v35);
      v44 = *(&v135 + 1);
      if (*(&v135 + 1) != &v134)
      {
        a6 = v37;
        v21 = v124;
        v20 = v118;
        if (*(&v135 + 1))
        {
          (*(**(&v135 + 1) + 40))(*(&v135 + 1));
        }

        goto LABEL_32;
      }

      v34 = **(&v135 + 1);
      a6 = v37;
      v21 = v124;
      v20 = v118;
    }

    v34[4](v44);
LABEL_32:
    v30 = v122;
    v29 = v123;
    if (*(a4 + 552))
    {
      v45 = *(a4 + 536);
      if (v45 != (a4 + 544))
      {
        do
        {
          *(v19 + 4 * *(v45 + 7)) |= *(v45 + 8);
          v54 = v45[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v45[2];
              v24 = *v55 == v45;
              v45 = v55;
            }

            while (!v24);
          }

          v45 = v55;
        }

        while (v55 != (a4 + 544));
      }
    }

    v46 = (v112 + 3) & 0xFFFFFFFC;
    if (v31)
    {
      v47 = *(a4 + 704);
      if (v47 >= 4)
      {
        v48 = v47 >> 2;
        v49 = *(a4 + 144);
        v50 = (v19 + 8 * v46);
        do
        {
          v51 = *v49;
          v49 += 4;
          v52 = (a5 + 8 * v51);
          v53 = v52[1];
          *v50 = *v52;
          v50[1] = v53;
          v50 += 2;
          --v48;
        }

        while (v48);
      }

      v46 += v47;
    }

    else
    {
      v47 = 0;
    }

    if (v113)
    {
      v56 = *(a4 + 708);
      v57 = (v19 + 8 * v46);
      if (*(a4 + 1584) == 1)
      {
        if (v56)
        {
          v110 = (*(a4 + 144) + 4 * v47);
          do
          {
            v111 = *v110++;
            *v57++ = *(a5 + 8 * v111);
            --v56;
          }

          while (v56);
        }
      }

      else if (v56 >= 4)
      {
        v58 = v56 >> 2;
        v59 = (*(a4 + 144) + 4 * v47);
        do
        {
          v60 = *v59;
          v59 += 4;
          *v57 = *(a5 + 8 * v60);
          v57 += 4;
          --v58;
        }

        while (v58);
      }
    }

    v33 = 8 * (v123 - v27);
  }

  if (v27)
  {
    if (v27 >= 4)
    {
      v61 = *(a4 + 2312);
      v62 = v27 >> 2;
      v63 = (v19 + v33);
      do
      {
        v64 = *v61;
        v61 += 4;
        *v63 = v64;
        v63 += 4;
        --v62;
      }

      while (v62);
    }

    v33 += 8 * v27;
  }

  if (!v30)
  {
    v76 = v121;
    v77 = v120;
    goto LABEL_75;
  }

  *(a6 + 328) = v20 + v33 + 8;
  v126 = a6;
  v127 = a5;
  v65 = a6;
  v66 = &unk_2A23F9848;
  *&v134 = &unk_2A23F9848;
  *(&v134 + 1) = &v126;
  *&v135 = &v127;
  *(&v135 + 1) = &v134;
  v67 = *(a4 + 192);
  v68 = *(a4 + 200);
  if (v67 == v68)
  {
    v75 = &v134;
    a6 = v65;
    v76 = v121;
    v77 = v120;
  }

  else
  {
    v69 = 0;
    do
    {
      v128 = *v67;
      if (!*(&v135 + 1))
      {
        goto LABEL_112;
      }

      v71 = (*(**(&v135 + 1) + 48))(*(&v135 + 1), &v128);
      v72 = *(v67 + 1);
      v73 = *(v67 + 2);
      if (v72 == v73)
      {
        v70 = v69;
      }

      else
      {
        do
        {
          v74 = *v72++;
          v70 = (v69 + 1);
          *(v19 + v33 + 4 * v69) = *(v71 + 4 * v74);
          LODWORD(v69) = v69 + 1;
        }

        while (v72 != v73);
      }

      v67 += 8;
      v69 = v70;
    }

    while (v67 != v68);
    v75 = *(&v135 + 1);
    if (*(&v135 + 1) != &v134)
    {
      a6 = v65;
      v21 = v124;
      v76 = v121;
      v77 = v120;
      if (*(&v135 + 1))
      {
        (*(**(&v135 + 1) + 40))(*(&v135 + 1));
      }

      goto LABEL_74;
    }

    v66 = **(&v135 + 1);
    a6 = v65;
    v76 = v121;
    v77 = v120;
  }

  v66[4](v75);
  v21 = v124;
LABEL_74:
  v29 = v123;
  v33 += 4 * v122;
LABEL_75:
  if ((v77 >> 2))
  {
    v78 = v29 + ((v115 - v114) >> 2);
    v79 = 4 * (v116 + v117);
    v80 = (v19 + (v79 + 8 * v78));
    v81 = *(a4 + 512);
    v82 = v77 >> 2;
    do
    {
      v83 = *v81++;
      *v80++ = *(a5 + 8 * v83);
      LODWORD(v82) = v82 - 1;
    }

    while (v82);
    v33 = v79 + 8 * (v78 + (v77 >> 2));
  }

  if (v76 != -v119)
  {
    v84 = v20;
    v85 = (v19 + v33);
    v86 = 4 * *(a4 + 416);
    memcpy(v85, (a5 + 4 * *(a4 + 412)), v86);
    v126 = a6;
    v127 = a5;
    v87 = &unk_2A23F9848;
    *&v134 = &unk_2A23F9848;
    *(&v134 + 1) = &v126;
    *&v135 = &v127;
    *(&v135 + 1) = &v134;
    v88 = *(a4 + 448);
    v89 = *(a4 + 456);
    if (v88 == v89)
    {
      v98 = &v134;
      v20 = v84;
    }

    else
    {
      v90 = a6;
      v91 = 0;
      v92 = &v85[v86];
      do
      {
        v128 = *v88;
        if (!*(&v135 + 1))
        {
          goto LABEL_112;
        }

        v94 = (*(**(&v135 + 1) + 48))(*(&v135 + 1), &v128);
        v95 = *(v88 + 1);
        v96 = *(v88 + 2);
        if (v95 == v96)
        {
          v93 = v91;
        }

        else
        {
          do
          {
            v97 = *v95++;
            v93 = (v91 + 1);
            *&v92[4 * v91] = *(v94 + 4 * v97);
            LODWORD(v91) = v91 + 1;
          }

          while (v95 != v96);
        }

        v88 += 8;
        v91 = v93;
      }

      while (v88 != v89);
      v98 = *(&v135 + 1);
      if (*(&v135 + 1) != &v134)
      {
        a6 = v90;
        v21 = v124;
        v20 = v84;
        if (*(&v135 + 1))
        {
          (*(**(&v135 + 1) + 40))(*(&v135 + 1));
        }

        goto LABEL_94;
      }

      v87 = **(&v135 + 1);
      a6 = v90;
      v21 = v124;
      v20 = v84;
    }

    v87[4](v98);
  }

LABEL_94:
  v127 = 0;
  v136 = v131;
  v137 = v132;
  v138 = v133;
  v134 = v129;
  v135 = v130;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitUscStateLoad<LdShdrTransformFragment<AGX::HAL300::Encoders>>(*(a4 + 1784), v21, &v127, v20, a5, a6, &v134);
  v99 = *a1;
  if (*a1)
  {
    v100 = v127;
    v101 = *(a4 + 2192);
    LODWORD(v102) = *(v99 + 2);
    v103 = v102 + 1;
    if (*(v99 + 3) >= (v102 + 1))
    {
      v106 = *v99;
    }

    else
    {
      v104 = -__clz(v102);
      v105 = malloc_type_malloc(40 << (v104 & 0x1F), 0x10800400D7C94D2uLL);
      v106 = v105;
      v107 = 1 << v104;
      v102 = *(v99 + 2);
      if (v102)
      {
        memcpy(v105, *v99, 40 * v102);
        free(*v99);
        LODWORD(v102) = *(v99 + 2);
      }

      *(v99 + 3) = v107;
      *v99 = v106;
    }

    v108 = &v106[40 * v102];
    *v108 = 9;
    *(v108 + 1) = &v21[v125];
    *(v108 + 2) = v21;
    *(v108 + 3) = (v100 - v21);
    *(v108 + 8) = v101;
    *(v99 + 2) = v103;
  }

  return &v21[v125];
}

double ___ZN3AGX20RenderUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfigNSt3__15arrayIjLm4EEE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 60);
  unk_2A17A0ED8 = 0u;
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  unk_2A17A0EF8 = 0uLL;
  v3 = *(*(a1 + 32) + 60);
  if (v3 <= 3)
  {
    v3 = 3;
  }

  unk_2A17A0F18 = 0uLL;
  unk_2A17A0F38 = 0uLL;
  xmmword_2A17A1098 = 0uLL;
  unk_2A17A0F58 = 0uLL;
  xmmword_2A17A0F78 = 0uLL;
  xmmword_2A17A0F98 = 0uLL;
  v4 = *(*(a1 + 32) + 60);
  if (v4 <= 3)
  {
    v4 = 3;
  }

  *&xmmword_2A17A0FB0 = 0x2000;
  *(&xmmword_2A17A0FB0 + 1) = (v4 << 8) | 0x80;
  qword_2A17A0FC0 = 0;
  dword_2A17A0FC8 = 1;
  xmmword_2A17A0FF0 = xmmword_29D2F1830;
  xmmword_2A17A1010 = xmmword_29D2F1830;
  xmmword_2A17A0FD0 = 0x2000uLL;
  dword_2A17A0FE8 = 4;
  xmmword_2A17A1050 = xmmword_29D2F1830;
  xmmword_2A17A10D8 = 0uLL;
  xmmword_2A17A1110 = xmmword_29D2F1830;
  xmmword_2A17A1150 = xmmword_29D2F1820;
  xmmword_2A17A1218 = 0uLL;
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  xmmword_2A17A11F8 = vextq_s8(v7, v7, 8uLL);
  xmmword_2A17A1170 = xmmword_29D2F1820;
  xmmword_2A17A1190 = xmmword_29D2F1820;
  xmmword_2A17A12E0 = *&qword_2A17A0FC0;
  xmmword_2A17A12D0 = xmmword_2A17A0FB0;
  xmmword_2A17A1340 = *&qword_2A17A0FC0;
  xmmword_2A17A1330 = xmmword_2A17A0FB0;
  xmmword_2A17A13A0 = *&qword_2A17A0FC0;
  xmmword_2A17A1390 = xmmword_2A17A0FB0;
  xmmword_2A17A1300 = unk_2A17A0FE0;
  qword_2A17A0E90 = 0x2000;
  unk_2A17A0E98 = (v2 << 8) | 0x80u;
  qword_2A17A0EA0 = 8;
  dword_2A17A0EA8 = 1;
  qword_2A17A0EB0 = 0x2000;
  unk_2A17A0EB8 = (v2 << 8) | 0x80u;
  qword_2A17A0EC0 = 8;
  dword_2A17A0EC8 = 1;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs = 0x2000;
  *algn_2A17A0E78 = (v2 << 8) | 0x80u;
  qword_2A17A0E80 = 8;
  dword_2A17A0E88 = 1;
  qword_2A17A0ED0 = 0x2000;
  dword_2A17A0EE8 = 1;
  qword_2A17A0EF0 = 0x2000;
  dword_2A17A0F08 = 4;
  qword_2A17A1230 = 0x2000;
  qword_2A17A1238 = (v3 << 8) | 0x80;
  qword_2A17A1240 = 0;
  dword_2A17A1248 = 1024;
  xmmword_2A17A1250 = __PAIR128__(qword_2A17A1238, 0x2000);
  qword_2A17A1260 = 0;
  dword_2A17A1268 = 1024;
  qword_2A17A0F10 = 0x2000;
  dword_2A17A0F28 = 1;
  qword_2A17A0F30 = 0x2000;
  dword_2A17A0F48 = 4;
  qword_2A17A1090 = 0x2000;
  dword_2A17A10A8 = 1;
  qword_2A17A0F50 = 0x2000;
  dword_2A17A0F68 = 4;
  qword_2A17A0F70 = 0x2000;
  dword_2A17A0F88 = 4;
  qword_2A17A0F90 = 0x2000;
  dword_2A17A0FA8 = 1;
  qword_2A17A1000 = 2;
  dword_2A17A1008 = 1;
  qword_2A17A1020 = 12;
  dword_2A17A1028 = 1;
  qword_2A17A1060 = 4;
  dword_2A17A1068 = 1;
  qword_2A17A10D0 = 0x2000;
  dword_2A17A10E8 = 1;
  qword_2A17A1120 = 4;
  dword_2A17A1128 = 1;
  qword_2A17A1160 = 28;
  dword_2A17A1168 = 1;
  qword_2A17A1210 = 0x2000;
  dword_2A17A1228 = 21;
  qword_2A17A11F0 = v5;
  dword_2A17A1208 = 1;
  qword_2A17A1180 = 28;
  dword_2A17A1188 = 1;
  qword_2A17A11A0 = 28;
  dword_2A17A11A8 = 1;
  xmmword_2A17A12F0 = 0x2000uLL;
  xmmword_2A17A1360 = unk_2A17A0FE0;
  xmmword_2A17A1350 = 0x2000uLL;
  xmmword_2A17A13C0 = unk_2A17A0FE0;
  xmmword_2A17A13B0 = 0x2000uLL;
  xmmword_2A17A1320 = *&qword_2A17A1260;
  xmmword_2A17A1310 = __PAIR128__(qword_2A17A1238, 0x2000);
  xmmword_2A17A1380 = *&qword_2A17A1260;
  result = 0.0;
  xmmword_2A17A1370 = __PAIR128__(qword_2A17A1238, 0x2000);
  xmmword_2A17A13E0 = *&qword_2A17A1260;
  xmmword_2A17A13D0 = __PAIR128__(qword_2A17A1238, 0x2000);
  return result;
}

void ***AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(void ***result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    free(*v1);
    MEMORY[0x29ED520D0](v1, 0x1020C4014030ADELL);
    return v2;
  }

  return result;
}

uint64_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::RenderUSCStateLoader(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a4)
  {
    operator new();
  }

  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 168) = 0;
  v7 = a3[1235];
  v8 = a3[895];
  v9 = a3[1233];
  v10 = a3[1234];
  v11 = a3[1536];
  LODWORD(v13) = 0;
  BYTE4(v13) = 0;
  *(&v13 + 1) = 0;
  v14 = 0;
  LdShdrTransformFragment<AGX::HAL300::Encoders>::LdShdrTransformFragment(a1 + 180, v7, v8, v9, v10, v11, &v13);
  *(a1 + 264) = *(a2 + 7152);
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return a1;
}

void AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupResolveCommand(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  BGOProgramVariant = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBGOProgramVariant(a5, 2);
  memcpy(__dst, a5 + 456, 0x328uLL);
  memcpy(v32, a5 + 557, sizeof(v32));
  v11 = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitBackgroundObjectArguments(a1, a3, a4, BGOProgramVariant, __dst, v32);
  if (*(BGOProgramVariant + 3152) == 1)
  {
    v12 = AGX::BackgroundObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::calculateBackgroundObjectBits(BGOProgramVariant + 1784, v11, 0, 0);
  }

  else
  {
    v12 = *(BGOProgramVariant + 3112) & 0x7FFFFFFFFFFFLL | (*(BGOProgramVariant + 3136) << 47);
    v13 = *(BGOProgramVariant + 3120) & 0xFFFF00000000003FLL | (((v11 >> 6) & 0x3FFFFFFFFFFLL) << 6);
  }

  a2[20] = v12;
  a2[21] = v13;
  v14 = *(BGOProgramVariant + 688);
  if (*(a1 + 248) > v14)
  {
    v14 = *(a1 + 248);
  }

  if (v14 <= *(BGOProgramVariant + 700))
  {
    v14 = *(BGOProgramVariant + 700);
  }

  *(a1 + 248) = v14;
  v15 = *(BGOProgramVariant + 716);
  if (*(a1 + 256) > v15)
  {
    v15 = *(a1 + 256);
  }

  if (v15 <= *(BGOProgramVariant + 728))
  {
    v15 = *(BGOProgramVariant + 728);
  }

  *(a1 + 256) = v15;
  *(a1 + 252) = *(BGOProgramVariant + 684);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  __dst[0] = xmmword_29D2F0D50;
  *&__dst[1] = 0xDEADBEEFBAADC0DELL;
  *(&__dst[102] + 8) = 0u;
  *(&__dst[103] + 8) = 0u;
  *(&__dst[104] + 8) = 0u;
  *(&__dst[105] + 8) = 0u;
  *(&__dst[106] + 8) = 0u;
  *(&__dst[107] + 8) = 0u;
  *(&__dst[108] + 8) = 0u;
  *(&__dst[109] + 8) = 0u;
  *(&__dst[110] + 8) = 0u;
  *(&__dst[111] + 8) = 0u;
  *(&__dst[112] + 8) = 0u;
  *(&__dst[113] + 8) = 0u;
  *(&__dst[114] + 8) = 0u;
  *(&__dst[115] + 8) = 0u;
  *(&__dst[116] + 8) = 0u;
  *(&__dst[117] + 8) = 0u;
  *(&__dst[118] + 8) = 0u;
  *(&__dst[119] + 8) = 0u;
  *(&__dst[120] + 8) = 0u;
  *(&__dst[121] + 8) = 0u;
  *(&__dst[122] + 8) = 0u;
  *(&__dst[123] + 8) = 0u;
  *(&__dst[124] + 8) = 0u;
  *(&__dst[125] + 8) = 0u;
  *(&__dst[126] + 8) = 0u;
  *(&__dst[127] + 8) = 0u;
  *(&__dst[128] + 8) = 0u;
  *(&__dst[129] + 8) = 0u;
  *(&__dst[130] + 8) = 0u;
  *(&__dst[131] + 8) = 0u;
  *(&__dst[132] + 8) = 0u;
  *(&__dst[133] + 8) = 0u;
  memset(&__dst[1] + 8, 0, 408);
  memset(&__dst[64] + 8, 0, 88);
  memset(&__dst[28] + 8, 0, 512);
  EOTProgramVariant = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEOTProgramVariant(a5, 2);
  v17 = *(a1 + 196);
  v18 = *(a1 + 228);
  *&v32[32] = *(a1 + 212);
  *&v32[48] = v18;
  *&v32[64] = *(a1 + 244);
  v19 = *(a1 + 180);
  *&v32[16] = v17;
  *v32 = v19;
  v20 = AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsEarly(a3, a4, EOTProgramVariant, v32, &v31, &v30, &v29, &v28, &v27);
  v22 = v21;
  v23 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEOTProgramVariant(a5, 2);
  AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsLate(v23, __dst, v31, v30, v29, v28, v27, *a1);
  a2[24] = v20;
  a2[25] = v22;
  a2[26] = v20;
  a2[27] = v22;
  v24 = EOTProgramVariant[48];
  if (*(a1 + 248) > v24)
  {
    v24 = *(a1 + 248);
  }

  if (v24 <= EOTProgramVariant[50])
  {
    v24 = EOTProgramVariant[50];
  }

  *(a1 + 248) = v24;
  v25 = EOTProgramVariant[51];
  if (*(a1 + 256) > v25)
  {
    v25 = *(a1 + 256);
  }

  if (v25 <= EOTProgramVariant[53])
  {
    v25 = EOTProgramVariant[53];
  }

  *(a1 + 256) = v25;
  *(a1 + 252) = EOTProgramVariant[54];
}

uint64_t AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsEarly(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char **a6, void *a7, unint64_t *a8, unint64_t *a9)
{
  v14 = *(a3 + 1016);
  do
  {
    v14 &= ~(1 << __clz(__rbit32(v14)));
    IOGPUResourceListAddResource();
  }

  while (v14);
  *(a4 + 57) = 1;
  v15 = (*(*(a3 + 680) + 8) - **(a3 + 680)) + 63;
  v16 = a2[30] + v15;
  if (v16 <= a2[29])
  {
LABEL_4:
    a2[31] = v16;
    goto LABEL_5;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a2, 6, 0))
  {
    v16 = a2[30] + v15;
    if (v16 > a2[29])
    {
      goto LABEL_28;
    }

    goto LABEL_4;
  }

LABEL_5:
  v17 = *(a3 + 232) + 31;
  v18 = a2[22] + v17;
  if (v18 <= a2[21])
  {
LABEL_6:
    a2[23] = v18;
    goto LABEL_7;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a2, 4, 0))
  {
    v18 = a2[22] + v17;
    if (v18 <= a2[21])
    {
      goto LABEL_6;
    }

LABEL_28:
    abort();
  }

LABEL_7:
  v40 = a7;
  v41 = a8;
  v19 = *(a3 + 232);
  if (v19)
  {
    v20 = (a2[22] + 31) & 0xFFFFFFFFFFFFFFE0;
    v21 = v20 + a2[24];
    a2[22] = v20 + v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = *(a3 + 680);
  v23 = *v22;
  v24 = *(v22 + 8) - *v22;
  v25 = ((a2[30] + 63) & 0xFFFFFFFFFFFFFFC0);
  v26 = a2[32];
  a2[30] = &v25[v24];
  v27 = *(a4 + 12);
  v28 = *(a4 + 20);
  v38 = *(a4 + 24);
  v39 = *(a4 + 16);
  v29 = *(a4 + 28);
  v30 = *(a4 + 58);
  memcpy(v25, v23, v24);
  if (*(v22 + 272) == 1)
  {
    v31.i64[0] = v21;
    v31.i64[1] = v21 >> 5;
    *&v25[*(v22 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v25[*(v22 + 276)], vshlq_u8(vqtbl1q_s8(v31, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (!*(v22 + 312))
  {
    v37 = v30;
    v32 = &v25[*(v22 + 316)];
    if (v27 & 1) != 0 && (v28 & 1) != 0 && (v29)
    {
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(v44, v32 + 18);
      v33 = v45;
      v34 = v46 & 0xFFF;
      if (v45 <= (v39 + 3) >> 2)
      {
        v33 = (v39 + 3) >> 2;
      }

      if (v34 <= ((((v38 + 3) >> 2) + 1) & 0x7FFFFFFE))
      {
        v34 = (((v38 + 3) >> 2) + 1) & 0x7FFFFFFE;
      }

      *(v32 + 9) = *(v32 + 9) & 0x1F | (32 * ((v34 >> 1) & 0x7FF));
      *(v32 + 12) = v33;
    }

    *v32 = v37;
  }

  v35 = &v25[*(v22 + 8) - *v22];
  result = *(a3 + 2008);
  *a5 = v25;
  *a6 = v35;
  *v40 = &v25[v26];
  *v41 = v20;
  *a9 = v21;
  return result;
}

void AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsLate(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v49 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 232))
  {
    goto LABEL_27;
  }

  v17 = *(a1 + 168);
  v18 = *(a1 + 80);
  if (*(a1 + 184) == 1)
  {
    a2[55] = *(a1 + 224) + a7;
    a2[54] = *(a1 + 220) + a7;
  }

  if (*(a1 + 185) == 1)
  {
    a2[56] = *(a1 + 228) + a7;
  }

  if (v18)
  {
    v44 = a2;
    v19 = &unk_2A23F99F8;
    v46 = &unk_2A23F99F8;
    v47 = &v44;
    v48 = &v46;
    v20 = *(a1 + 8);
    if (((*(a1 + 16) - v20) & 0x3FFFFFFFCLL) != 0)
    {
      v21 = 0;
      do
      {
        v22 = *(v20 + 4 * v21);
        v45 = v22 >> 29;
        if (!v48)
        {
LABEL_39:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        *(a6 + 8 * v21++) = *((*(*v48 + 6))(v48, &v45) + 8 * (v22 & 0x1FFFFFFF));
        v20 = *(a1 + 8);
      }

      while (v21 < ((*(a1 + 16) - v20) >> 2));
      v23 = v48;
      v9 = a5;
      if (v48 != &v46)
      {
        v10 = a4;
        if (v48)
        {
          (*(*v48 + 5))();
        }

LABEL_19:
        v24 = 8 * (v18 & 0x1FFFFFFF);
        v11 = a3;
        if (!v17)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v19 = *v48;
      v10 = a4;
    }

    else
    {
      v23 = &v46;
    }

    v19[4](v23);
    goto LABEL_19;
  }

  v24 = 0;
  v11 = a3;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_20:
  a2[1] = a7 + v24 + 8;
  v44 = a2;
  v25 = &unk_2A23F9A40;
  v46 = &unk_2A23F9A40;
  v47 = &v44;
  v48 = &v46;
  v26 = *(a1 + 96);
  if (((*(a1 + 104) - v26) & 0x3FFFFFFFCLL) == 0)
  {
    v31 = &v46;
    goto LABEL_37;
  }

  v27 = v10;
  v28 = 0;
  v29 = a6 + v24;
  do
  {
    v30 = *(v26 + 4 * v28);
    v45 = v30 >> 29;
    if (!v48)
    {
      goto LABEL_39;
    }

    *(v29 + 4 * v28++) = *((*(*v48 + 6))(v48, &v45) + 4 * (v30 & 0x1FFFFFFF));
    v26 = *(a1 + 96);
  }

  while (v28 < ((*(a1 + 104) - v26) >> 2));
  v31 = v48;
  if (v48 == &v46)
  {
    v25 = *v48;
    v10 = v27;
LABEL_37:
    v25[4](v31);
    if (!a8)
    {
      return;
    }

    goto LABEL_28;
  }

  v10 = v27;
  if (v48)
  {
    (*(*v48 + 5))();
  }

LABEL_27:
  if (!a8)
  {
    return;
  }

LABEL_28:
  v32 = *(a1 + 240);
  LODWORD(v33) = *(a8 + 2);
  v34 = v33 + 1;
  if (*(a8 + 3) >= (v33 + 1))
  {
    v39 = *a8;
  }

  else
  {
    v35 = v10;
    v36 = v9;
    v37 = -__clz(v33);
    v38 = malloc_type_malloc(40 << (v37 & 0x1F), 0x10800400D7C94D2uLL);
    v39 = v38;
    v40 = 1 << v37;
    v33 = *(a8 + 2);
    if (v33)
    {
      memcpy(v38, *a8, 40 * v33);
      free(*a8);
      LODWORD(v33) = *(a8 + 2);
    }

    v10 = v35;
    *(a8 + 3) = v40;
    *a8 = v39;
    v9 = v36;
  }

  v41 = &v39[40 * v33];
  *v41 = 10;
  *(v41 + 1) = v9;
  *(v41 + 2) = v11;
  *(v41 + 3) = (v10 - v11);
  *(v41 + 8) = v32;
  *(a8 + 2) = v34;
}

void sub_29CF2FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<char const* ()(DriverArgumentOffset::SectionType)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned int *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned int *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9A40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F99F8;
  a2[1] = v2;
  return result;
}

uint64_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(a5 + 5384))
  {
    v12 = *(a5 + 5384);
  }

  else
  {
    v12 = *(a5 + 5376);
  }

  memcpy(__dst, (a5 + 3648), sizeof(__dst));
  memcpy(v36, (a5 + 4456), sizeof(v36));
  *(a1 + 24) = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitBackgroundObjectArguments(a1, a3, a4, v12, __dst, v36);
  BGOProgramVariant = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBGOProgramVariant(a5, a6 ^ 1u);
  v14 = 5496;
  if (a6)
  {
    v14 = 5408;
  }

  v15 = a5 + v14;
  v17 = *(v15 + 40);
  v16 = v15 + 40;
  v18 = *(v16 + 40);
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v17, *(a5 + 5536)), vceqq_s32(*(v16 + 16), *(a5 + 5552)))))) & 1) != 0 || (*(v16 + 32) == *(a5 + 5568) ? (v19 = v18 == *(a5 + 5576)) : (v19 = 0), !v19))
  {
    if (*(BGOProgramVariant + 3152) == 1)
    {
      v20 = *(v16 + 16);
      *&v36[45] = *v16;
      *&v36[47] = v20;
      v36[49] = *(v16 + 32);
      v36[50] = v18;
    }

    *(a1 + 16) = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitBackgroundObjectArguments(a1, a3, a4, BGOProgramVariant, __dst, v36);
  }

  v21 = *(a5 + 5840);
  v22 = *(a1 + 196);
  v23 = *(a1 + 228);
  *&__dst[32] = *(a1 + 212);
  *&__dst[48] = v23;
  *&__dst[64] = *(a1 + 244);
  *__dst = *(a1 + 180);
  *&__dst[16] = v22;
  result = AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsEarly(a3, a4, v21, __dst, (a1 + 32), (a1 + 40), (a1 + 96), (a1 + 120), (a1 + 144));
  a2[225] = result;
  a2[226] = v25;
  a2[227] = result;
  a2[228] = v25;
  v26 = vorrq_s8(vorrq_s8(veorq_s8(*(a5 + 5752), *(a5 + 5624)), veorq_s8(*(a5 + 5784), *(a5 + 5656))), vorrq_s8(veorq_s8(*(a5 + 5768), *(a5 + 5640)), veorq_s8(*(a5 + 5800), *(a5 + 5672))));
  *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  if (*(a5 + 5824) ^ *(a5 + 5696) | (*(a5 + 5832) ^ *(a5 + 5704)) | (*(a5 + 5834) ^ *(a5 + 5706)) | (*(a5 + 5836) ^ *(a5 + 5708)) | v26.i32[0] | (*(a5 + 5816) ^ *(a5 + 5688)) | v26.i32[1])
  {
    v27 = *(a5 + 5848);
    v28 = *(a1 + 196);
    v29 = *(a1 + 228);
    *&__dst[32] = *(a1 + 212);
    *&__dst[48] = v29;
    *&__dst[64] = *(a1 + 244);
    *__dst = *(a1 + 180);
    *&__dst[16] = v28;
    result = AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsEarly(a3, a4, v27, __dst, (a1 + 48), (a1 + 56), (a1 + 104), (a1 + 128), (a1 + 152));
  }

  a2[114] = result;
  a2[115] = v25;
  {
    v34 = v25;
    v35 = result;
    v25 = v34;
    result = v35;
    if (v33)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA();
      v25 = v34;
      result = v35;
    }
  }

  if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear == 1)
  {
    v30 = *(a5 + 5880);
    v31 = *(a1 + 196);
    v32 = *(a1 + 228);
    *&__dst[32] = *(a1 + 212);
    *&__dst[48] = v32;
    *&__dst[64] = *(a1 + 244);
    *__dst = *(a1 + 180);
    *&__dst[16] = v31;
    result = AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsEarly(a3, a4, v30, __dst, (a1 + 80), (a1 + 88), (a1 + 112), (a1 + 136), (a1 + 160));
    a2[227] = result;
    a2[228] = v25;
  }

  a2[116] = result;
  a2[117] = v25;
  return result;
}

void AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitDriverProgramArguments(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (*(a3 + 5384))
  {
    v10 = *(a3 + 5384);
  }

  else
  {
    v10 = *(a3 + 5376);
  }

  BGOProgramVariant = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBGOProgramVariant(a3, a4 ^ 1u);
  if (a5)
  {
    v12 = 2;
  }

  else
  {
    v12 = *(a1 + 176);
  }

  if (*(v10 + 3152) == 1)
  {
    v13 = AGX::BackgroundObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::calculateBackgroundObjectBits(v10 + 1784, *(a1 + 24), v12, (a3 + 5496));
  }

  else
  {
    v13 = *(v10 + 3112) & 0x7FFFFFFFFFFFLL | (*(v10 + 4 * v12 + 3136) << 47);
    v14 = *(v10 + 3120) & 0xFFFF00000000003FLL | (((*(a1 + 24) >> 6) & 0x3FFFFFFFFFFLL) << 6);
  }

  *(a2 + 1768) = v13;
  *(a2 + 1776) = v14;
  v15 = 5496;
  if (a4)
  {
    v15 = 5408;
  }

  v16 = a3 + v15;
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(*(a3 + v15 + 40), *(a3 + 5536)), vceqq_s32(*(a3 + v15 + 56), *(a3 + 5552)))))) & 1) != 0 || *(v16 + 72) != *(a3 + 5568) || *(v16 + 80) != *(a3 + 5576))
  {
    if (a5)
    {
      v17 = 2;
    }

    else
    {
      v17 = *(a1 + 176);
    }

    if (*(BGOProgramVariant + 3152) == 1)
    {
      v13 = AGX::BackgroundObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::calculateBackgroundObjectBits(BGOProgramVariant + 1784, *(a1 + 16), v17, v16);
    }

    else
    {
      v13 = *(BGOProgramVariant + 3112) & 0x7FFFFFFFFFFFLL | (*(BGOProgramVariant + 4 * v17 + 3136) << 47);
      v14 = *(BGOProgramVariant + 3120) & 0xFFFF00000000003FLL | (((*(a1 + 16) >> 6) & 0x3FFFFFFFFFFLL) << 6);
    }
  }

  *(a2 + 880) = v13;
  *(a2 + 888) = v14;
  v18 = *(a3 + 5840);
  v19 = *(a3 + 5848);
  v51 = &unk_2A23F9778;
  v52 = *(a3 + 5592);
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v20 = *(a3 + 5600);
  v21 = *(a3 + 5608);
  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_64;
  }

  v22 = *(a3 + 5672);
  v58 = *(a3 + 5656);
  v59 = v22;
  v60 = *(a3 + 5688);
  v23 = *(a3 + 5640);
  v56 = *(a3 + 5624);
  v24 = *(a3 + 5704);
  v51 = &unk_2A23F9738;
  v61 = v24;
  v57 = v23;
  memcpy(__dst, (a3 + 448), sizeof(__dst));
  AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsLate(v18, __dst, *(a1 + 32), *(a1 + 40), *(a1 + 96), *(a1 + 120), *(a1 + 144), *a1);
  v25 = (a3 + 5752);
  v26 = vorrq_s8(vorrq_s8(veorq_s8(*(a3 + 5752), *(a3 + 5624)), veorq_s8(*(a3 + 5784), *(a3 + 5656))), vorrq_s8(veorq_s8(*(a3 + 5768), *(a3 + 5640)), veorq_s8(*(a3 + 5800), *(a3 + 5672))));
  *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  if (*(a3 + 5824) ^ *(a3 + 5696) | (*(a3 + 5832) ^ *(a3 + 5704)) | (*(a3 + 5834) ^ *(a3 + 5706)) | (*(a3 + 5836) ^ *(a3 + 5708)) | v26.i32[0] | (*(a3 + 5816) ^ *(a3 + 5688)) | v26.i32[1])
  {
    if (*(v19 + 2032) == 1)
    {
      v27 = *(a3 + 5728);
      v28 = *(a3 + 5736);
      if (v28 != v27)
      {
        if (((v28 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_64;
      }

      v46 = *(a3 + 5800);
      v48 = *(a3 + 5816);
      v42 = *v25;
      v44 = *(a3 + 5768);
      *&__dst[133] = *(a3 + 5784);
      *&__dst[135] = v46;
      *&__dst[137] = v48;
      *&__dst[129] = v42;
      *&__dst[131] = v44;
    }

    AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsLate(v19, __dst, *(a1 + 48), *(a1 + 56), *(a1 + 104), *(a1 + 128), *(a1 + 152), *a1);
  }

  if (a4 && AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(a3))
  {
    v29 = *(a3 + 5880);
    if (*(v29 + 2032) == 1)
    {
      v30 = *(a3 + 5728);
      v31 = *(a3 + 5736);
      if (v31 != v30)
      {
        if (((v31 - v30) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_64:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v47 = *(a3 + 5800);
      v49 = *(a3 + 5816);
      v43 = *v25;
      v45 = *(a3 + 5768);
      *&__dst[133] = *(a3 + 5784);
      *&__dst[135] = v47;
      *&__dst[137] = v49;
      *&__dst[129] = v43;
      *&__dst[131] = v45;
    }

    AGX::EndOfTileEmitter<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitEndOfTileArgumentsLate(v29, __dst, *(a1 + 80), *(a1 + 88), *(a1 + 112), *(a1 + 136), *(a1 + 160), *a1);
  }

  else
  {
    *(a2 + 928) = *(a2 + 912);
  }

  v51 = &unk_2A23F9778;
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  v32 = *(a3 + 3580);
  if (v32 == 1)
  {
    v33 = *(a1 + 168);
  }

  else
  {
    v34 = *(a3 + 4932);
    v35 = *(a3 + 4936);
    v36 = *(a3 + 4940) & 0xFFFFFFFC;
    switch(v32)
    {
      case 8:
        v38 = (v35 >> 2) * (v34 >> 3) * ((v36 + 31) >> 5);
        break;
      case 4:
        v38 = ((v35 >> 2) * (v34 >> 3) * ((v36 + 31) >> 5)) >> 1;
        break;
      case 2:
        v37 = (v35 >> 2) * (v34 >> 3) * ((v36 + 31) >> 5);
        if (v37 < 8)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37 >> 3;
        }

        break;
      default:
        v38 = 0;
        break;
    }

    v41 = v32 != 2 || v34 != 16 || v35 != 16;
    v33 = *(a1 + 168) & 0xFFFFFFFFFFE0FFFFLL | (((v38 >> v41) & 0x1F) << 16);
    *(a1 + 168) = v33;
  }

  *(a2 + 1160) = v33;
}

void sub_29CF30628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 216) = a10;
  v12 = *(v10 - 200);
  if (v12)
  {
    *(v10 - 192) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 384);
  if ((v4 & 0x40) == 0)
  {
    v5 = 0;
    if (!a3)
    {
      return v5;
    }

    goto LABEL_18;
  }

  v6 = *a4;
  v7 = *(a4 + 16);
  v8 = *(a4 + 32);
  v9 = *(a4 + 80);
  v10 = *(a2 + 2432);
  v11 = *(a2 + 2448);
  v12 = *(a2 + 2464);
  v47 = *(a2 + 2488);
  v45 = *(a2 + 2480);
  v46 = *(a2 + 2504);
  v42 = *(a2 + 2512);
  v43 = *(a2 + 2496);
  v44 = *(a2 + 2520);
  v13 = *(a2 + 2528);
  v14 = *(a2 + 2536);
  v15 = *(a2 + 2544);
  v16 = *(a2 + 2552);
  v17 = *(a2 + 2560);
  v18 = *(a2 + 2568);
  v19 = *(a2 + 2576);
  v20 = *(a2 + 2584);
  v21 = *(a2 + 2592);
  v22 = *(a2 + 2600);
  v23 = *(a2 + 2608);
  v24 = *(a2 + 2616);
  v25 = *(a2 + 2624);
  v26 = *(a2 + 2632);
  v27 = (*(a2 + 2656) & *&v7 | *(a2 + 2640) & *a4 | *(a2 + 2672) & *&v8 | *(a2 + 2688) & v9) == 0;
  v28 = v23 & v7.i64[0] | v21 & v6.i64[0] | v25 & v8.i64[0] | v24 & v7.i64[1] | v22 & v6.i64[1] | v26 & v8.i64[1];
  v29 = v15 & v7.i64[0] | v13 & v6.i64[0] | v17 & v8.i64[0] | v9 & v19 | v16 & v7.i64[1] | v14 & v6.i64[1] | v18 & v8.i64[1] | *(&v9 + 1) & v20;
  v30 = v43 & v7.i64[0] | v45 & v6.i64[0] | v42 & v8.i64[0] | v46 & v7.i64[1] | v47 & v6.i64[1] | v44 & v8.i64[1];
  v31 = vorrq_s8(vorrq_s8(vandq_s8(v7, v11), vandq_s8(*a4, v10)), vandq_s8(v8, v12));
  *v31.i8 = vmovn_s64(vtstq_s64(v31, v31));
  v32 = 25088;
  if (((v31.i8[0] | v31.i8[4]) & 1) == 0)
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = v32 | 0x6800;
  }

  else
  {
    v33 = v32;
  }

  if (v30)
  {
    v33 |= 0x6000uLL;
  }

  if (v28)
  {
    v34 = v33 | 0x6400;
  }

  else
  {
    v34 = v33;
  }

  if (v27)
  {
    v5 = v34;
  }

  else
  {
    v5 = v34 | 0x7000;
  }

  if (a3)
  {
LABEL_18:
    if ((v4 & 0x1000000000) != 0)
    {
      v35 = a3;
      v36 = a4;
      v37 = AGX::getDirtyArguments<AGX::HAL300::FragmentProgramVariantESLState>((a3 + 2392), *(a4 + 288), *(a4 + 296), *(a4 + 304), *(a4 + 312), *(a4 + 320), *(a4 + 328), *(a4 + 368), *(a4 + 376));
      a4 = v36;
      v38 = v5 | 0x88000000000;
      if ((v37 & 1) == 0)
      {
        v38 = v5;
      }

      v39 = (v37 & 0x100) << 35;
      if ((v37 & 0x10000) != 0)
      {
        v39 = 0xA0000000000;
      }

      v40 = v39 | v38;
      if ((v37 & 0x1000000) != 0)
      {
        v40 |= 0x90000000000uLL;
      }

      if (BYTE4(v37))
      {
        v5 = v40 | 0xC0000000000;
      }

      else
      {
        v5 = v40;
      }
    }

    else
    {
      v35 = a3;
    }

    if (*(a4 + 392))
    {
      *(a1 + 176) = *(v35 + 3912);
    }
  }

  return v5;
}

uint64_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a4;
  v5 = *(a5 + 384);
  if ((v5 & 0x10000) == 0)
  {
    v6 = 0;
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v7 = *(a5 + 96);
  v8 = *(a5 + 112);
  v9 = *(a5 + 128);
  v10 = *(a5 + 176);
  v11 = *(a2 + 2432);
  v12 = *(a2 + 2448);
  v13 = *(a2 + 2464);
  v82 = *(a2 + 2488);
  v78 = *(a2 + 2480);
  v80 = *(a2 + 2504);
  v72 = *(a2 + 2512);
  v74 = *(a2 + 2496);
  v76 = *(a2 + 2520);
  v14 = *(a2 + 2528);
  v15 = *(a2 + 2536);
  v16 = *(a2 + 2544);
  v17 = *(a2 + 2552);
  v18 = *(a2 + 2560);
  v19 = *(a2 + 2568);
  v20 = *(a2 + 2576);
  v21 = *(a2 + 2584);
  v22 = *(a2 + 2592);
  v23 = *(a2 + 2600);
  v24 = *(a2 + 2608);
  v25 = *(a2 + 2616);
  v26 = *(a2 + 2624);
  v27 = *(a2 + 2632);
  v28 = (*(a2 + 2656) & *&v8 | *(a2 + 2640) & *&v7 | *(a2 + 2672) & *&v9 | *(a2 + 2688) & v10) == 0;
  v29 = v24 & v8.i64[0] | v22 & v7.i64[0] | v26 & v9.i64[0] | v25 & v8.i64[1] | v23 & v7.i64[1] | v27 & v9.i64[1];
  v30 = v16 & v8.i64[0] | v14 & v7.i64[0] | v18 & v9.i64[0] | v10 & v20 | v17 & v8.i64[1] | v15 & v7.i64[1] | v19 & v9.i64[1] | *(&v10 + 1) & v21;
  v31 = v74 & v8.i64[0] | v78 & v7.i64[0] | v72 & v9.i64[0] | v80 & v8.i64[1] | v82 & v7.i64[1] | v76 & v9.i64[1];
  v32 = vorrq_s8(vorrq_s8(vandq_s8(v8, v12), vandq_s8(v7, v11)), vandq_s8(v9, v13));
  *v32.i8 = vmovn_s64(vtstq_s64(v32, v32));
  v33 = 25690112;
  if (((v32.i8[0] | v32.i8[4]) & 1) == 0)
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = v33 | 0x1A00000;
  }

  else
  {
    v34 = v33;
  }

  if (v31)
  {
    v34 |= 0x1800000uLL;
  }

  if (v29)
  {
    v35 = v34 | 0x1900000;
  }

  else
  {
    v35 = v34;
  }

  if (v28)
  {
    v6 = v35;
  }

  else
  {
    v6 = v35 | 0x1C00000;
  }

  a4 = v85;
  if ((v5 & 0x4000000) != 0)
  {
LABEL_18:
    v36 = *(a5 + 192);
    v37 = *(a5 + 208);
    v38 = *(a5 + 224);
    v39 = *(a5 + 272);
    v40 = *(a3 + 2432);
    v41 = *(a3 + 2448);
    v42 = *(a3 + 2464);
    v83 = *(a3 + 2488);
    v79 = *(a3 + 2480);
    v81 = *(a3 + 2504);
    v73 = *(a3 + 2512);
    v75 = *(a3 + 2496);
    v77 = *(a3 + 2520);
    v43 = *(a3 + 2528);
    v44 = *(a3 + 2536);
    v45 = *(a3 + 2544);
    v46 = *(a3 + 2552);
    v47 = *(a3 + 2560);
    v48 = *(a3 + 2568);
    v49 = *(a3 + 2576);
    v50 = *(a3 + 2584);
    v51 = *(a3 + 2592);
    v52 = *(a3 + 2600);
    v53 = *(a3 + 2608);
    v54 = *(a3 + 2616);
    v55 = *(a3 + 2624);
    v56 = *(a3 + 2632);
    v57 = (*(a3 + 2656) & *&v37 | *(a3 + 2640) & *&v36 | *(a3 + 2672) & *&v38 | *(a3 + 2688) & v39) == 0;
    v58 = v53 & v37.i64[0] | v51 & v36.i64[0] | v55 & v38.i64[0] | v54 & v37.i64[1] | v52 & v36.i64[1] | v56 & v38.i64[1];
    v59 = v45 & v37.i64[0] | v43 & v36.i64[0] | v47 & v38.i64[0] | v39 & v49 | v46 & v37.i64[1] | v44 & v36.i64[1] | v48 & v38.i64[1] | *(&v39 + 1) & v50;
    v60 = v75 & v37.i64[0] | v79 & v36.i64[0] | v73 & v38.i64[0] | v81 & v37.i64[1] | v83 & v36.i64[1] | v77 & v38.i64[1];
    v61 = vorrq_s8(vorrq_s8(vandq_s8(v37, v41), vandq_s8(v36, v40)), vandq_s8(v38, v42));
    *v61.i8 = vmovn_s64(vtstq_s64(v61, v61));
    if ((v61.i8[0] | v61.i8[4]))
    {
      v62 = v6 | 0x620000000;
    }

    else
    {
      v62 = v6;
    }

    if (v59)
    {
      v63 = v62 | 0x680000000;
    }

    else
    {
      v63 = v62;
    }

    if (v60)
    {
      v63 |= 0x600000000uLL;
    }

    if (v58)
    {
      v64 = v63 | 0x640000000;
    }

    else
    {
      v64 = v63;
    }

    if (v57)
    {
      v6 = v64;
    }

    else
    {
      v6 = v64 | 0x700000000;
    }

    a4 = v85;
  }

LABEL_33:
  if (a4)
  {
    if ((v5 & 0x1000000000) != 0)
    {
      v65 = a4;
      v66 = a5;
      v67 = AGX::getDirtyArguments<AGX::HAL300::FragmentProgramVariantESLState>((a4 + 2392), *(a5 + 288), *(a5 + 296), *(a5 + 304), *(a5 + 312), *(a5 + 320), *(a5 + 328), *(a5 + 368), *(a5 + 376));
      a5 = v66;
      v68 = v6 | 0x88000000000;
      if ((v67 & 1) == 0)
      {
        v68 = v6;
      }

      v69 = (v67 & 0x100) << 35;
      if ((v67 & 0x10000) != 0)
      {
        v69 = 0xA0000000000;
      }

      v70 = v69 | v68;
      if ((v67 & 0x1000000) != 0)
      {
        v70 |= 0x90000000000uLL;
      }

      if (BYTE4(v67))
      {
        v6 = v70 | 0xC0000000000;
      }

      else
      {
        v6 = v70;
      }
    }

    else
    {
      v65 = a4;
    }

    if (*(a5 + 392))
    {
      *(a1 + 176) = *(v65 + 3912);
    }
  }

  return v6;
}

void AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(char ***a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v131 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = (a2[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v120 = v9 + a2[20];
    a2[18] = v9 + v8;
  }

  else
  {
    v120 = 0;
    v9 = 0;
  }

  v10 = ((a2[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v121 = a2[28];
  a2[26] = &v10[*(*(a3 + 1784) + 8) - **(a3 + 1784)];
  v11 = *(a3 + 520);
  v12 = *(a3 + 512);
  v14 = v11 - v12;
  v13 = v11 == v12;
  v15 = *(a3 + 408) & 1;
  if (v13)
  {
    v15 = 0;
  }

  if (!v8)
  {
    goto LABEL_83;
  }

  v116 = v14;
  v113 = v15;
  v114 = *(a3 + 408);
  v16 = 0;
  v17 = *(a3 + 712);
  v111 = *(a3 + 256);
  v112 = *(a3 + 264);
  v18 = *(a3 + 52);
  v117 = *(a3 + 420);
  v115 = *(a3 + 416);
  v119 = *(a3 + 48);
  if (v119 != v17)
  {
    v19 = *(a3 + 52);
    v107 = *(a3 + 128);
    v108 = *(a3 + 744);
    v109 = *(a3 + 745);
    v124 = &v123;
    v125 = a4;
    v20 = &unk_2A23F9890;
    v127 = &unk_2A23F9890;
    v128 = &v124;
    v129 = &v125;
    v130 = &v127;
    v21 = *(a3 + 80);
    v22 = *(a3 + 88);
    if (v21 == v22)
    {
      v29 = &v127;
      v18 = v19;
    }

    else
    {
      v23 = 0;
      do
      {
        v126[0] = *v21;
        if (!v130)
        {
LABEL_102:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v25 = (*(*v130 + 6))(v130, v126);
        v26 = *(v21 + 8);
        v27 = *(v21 + 16);
        if (v26 == v27)
        {
          v24 = v23;
        }

        else
        {
          do
          {
            v28 = *v26++;
            v24 = (v23 + 1);
            *(v9 + 8 * v23) = *(v25 + 8 * v28);
            LODWORD(v23) = v23 + 1;
          }

          while (v26 != v27);
        }

        v21 += 32;
        v23 = v24;
      }

      while (v21 != v22);
      v29 = v130;
      if (v130 != &v127)
      {
        v7 = a1;
        v18 = v19;
        if (v130)
        {
          (*(*v130 + 5))(v130);
        }

        goto LABEL_22;
      }

      v20 = *v130;
      v7 = a1;
      v18 = v19;
    }

    v20[4](v29);
LABEL_22:
    if (*(a3 + 552))
    {
      v30 = *(a3 + 536);
      if (v30 != (a3 + 544))
      {
        do
        {
          *(v9 + 4 * *(v30 + 7)) |= *(v30 + 8);
          v39 = v30[1];
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = v30[2];
              v13 = *v40 == v30;
              v30 = v40;
            }

            while (!v13);
          }

          v30 = v40;
        }

        while (v40 != (a3 + 544));
      }
    }

    v31 = (v107 + 3) & 0xFFFFFFFC;
    if (v108)
    {
      v32 = *(a3 + 704);
      if (v32 >= 4)
      {
        v33 = v32 >> 2;
        v34 = *(a3 + 144);
        v35 = (v9 + 8 * v31);
        do
        {
          v36 = *v34;
          v34 += 4;
          v37 = (a4 + 8 * v36);
          v38 = v37[1];
          *v35 = *v37;
          v35[1] = v38;
          v35 += 2;
          --v33;
        }

        while (v33);
      }

      v31 += v32;
    }

    else
    {
      v32 = 0;
    }

    if (v109)
    {
      v41 = *(a3 + 708);
      v42 = (v9 + 8 * v31);
      if (*(a3 + 1584) == 1)
      {
        if (v41)
        {
          v105 = (*(a3 + 144) + 4 * v32);
          do
          {
            v106 = *v105++;
            *v42++ = *(a4 + 8 * v106);
            --v41;
          }

          while (v41);
        }
      }

      else if (v41 >= 4)
      {
        v43 = v41 >> 2;
        v44 = (*(a3 + 144) + 4 * v32);
        do
        {
          v45 = *v44;
          v44 += 4;
          *v42 = *(a4 + 8 * v45);
          v42 += 4;
          --v43;
        }

        while (v43);
      }
    }

    v16 = 8 * (v119 - v17);
  }

  if (v17)
  {
    if (v17 >= 4)
    {
      v46 = *(a3 + 2312);
      v47 = v17 >> 2;
      v48 = (v9 + v16);
      do
      {
        v49 = *v46;
        v46 += 4;
        *v48 = v49;
        v48 += 4;
        --v47;
      }

      while (v47);
    }

    v16 += 8 * v17;
  }

  if (v18)
  {
    v110 = v18;
    v125 = a4;
    v123 = v120 + v16 + 8;
    v124 = &v123;
    v50 = &unk_2A23F98D8;
    v127 = &unk_2A23F98D8;
    v128 = &v124;
    v129 = &v125;
    v130 = &v127;
    v51 = *(a3 + 192);
    v52 = *(a3 + 200);
    if (v51 == v52)
    {
      v59 = &v127;
      v60 = v110;
    }

    else
    {
      v53 = 0;
      do
      {
        v126[0] = *v51;
        if (!v130)
        {
          goto LABEL_102;
        }

        v55 = (*(*v130 + 6))(v130, v126);
        v56 = *(v51 + 8);
        v57 = *(v51 + 16);
        if (v56 == v57)
        {
          v54 = v53;
        }

        else
        {
          do
          {
            v58 = *v56++;
            v54 = (v53 + 1);
            *(v9 + v16 + 4 * v53) = *(v55 + 4 * v58);
            LODWORD(v53) = v53 + 1;
          }

          while (v56 != v57);
        }

        v51 += 32;
        v53 = v54;
      }

      while (v51 != v52);
      v59 = v130;
      v7 = a1;
      if (v130 != &v127)
      {
        v60 = v110;
        if (v130)
        {
          (*(*v130 + 5))(v130);
        }

        goto LABEL_63;
      }

      v50 = *v130;
      v60 = v110;
    }

    v50[4](v59);
LABEL_63:
    v16 += 4 * v60;
  }

  if ((v116 >> 2))
  {
    v61 = v119 + ((v112 - v111) >> 2);
    v62 = 4 * (v113 + v114);
    v63 = (v9 + (v62 + 8 * v61));
    v64 = *(a3 + 512);
    v65 = v116 >> 2;
    do
    {
      v66 = *v64++;
      *v63++ = *(a4 + 8 * v66);
      LODWORD(v65) = v65 - 1;
    }

    while (v65);
    v16 = v62 + 8 * (v61 + (v116 >> 2));
  }

  if (v117 != -v115)
  {
    v67 = (v9 + v16);
    v68 = 4 * *(a3 + 416);
    memcpy(v67, (a4 + 4 * *(a3 + 412)), v68);
    v124 = &v123;
    v125 = a4;
    v69 = &unk_2A23F98D8;
    v127 = &unk_2A23F98D8;
    v128 = &v124;
    v129 = &v125;
    v130 = &v127;
    v70 = *(a3 + 448);
    v71 = *(a3 + 456);
    if (v70 == v71)
    {
      v79 = &v127;
    }

    else
    {
      v72 = 0;
      v73 = &v67[v68];
      do
      {
        v126[0] = *v70;
        if (!v130)
        {
          goto LABEL_102;
        }

        v75 = (*(*v130 + 6))(v130, v126);
        v76 = *(v70 + 8);
        v77 = *(v70 + 16);
        if (v76 == v77)
        {
          v74 = v72;
        }

        else
        {
          do
          {
            v78 = *v76++;
            v74 = (v72 + 1);
            *&v73[4 * v72] = *(v75 + 4 * v78);
            LODWORD(v72) = v72 + 1;
          }

          while (v76 != v77);
        }

        v70 += 32;
        v72 = v74;
      }

      while (v70 != v71);
      v79 = v130;
      if (v130 != &v127)
      {
        v7 = a1;
        if (v130)
        {
          (*(*v130 + 5))(v130);
        }

        goto LABEL_83;
      }

      v69 = *v130;
      v7 = a1;
    }

    v69[4](v79);
  }

LABEL_83:
  v80 = *(a3 + 1784);
  memcpy(v10, *v80, *(v80 + 8) - *v80);
  if (*(v80 + 272) == 1)
  {
    v81.i64[0] = v120;
    v81.i64[1] = v120 >> 5;
    *&v10[*(v80 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v10[*(v80 + 276)], vshlq_u8(vqtbl1q_s8(v81, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v82 = *(v80 + 224);
  for (i = *(v80 + 232); v82 != i; v82 += 3)
  {
    v84.i64[0] = *(a4 + 8 * v82[1]) + *v82;
    v84.i64[1] = v84.i64[0] >> 5;
    *&v10[v82[2]] = vbslq_s8(xmmword_29D2F17C0, *&v10[v82[2]], vshlq_u8(vqtbl1q_s8(v84, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v85 = *(v80 + 248);
  v86 = *(v80 + 256);
  if (v85 != v86)
  {
    v87 = v123;
    do
    {
      v88.i64[0] = v87 + *v85;
      v88.i64[1] = v88.i64[0] >> 5;
      *&v10[v85[2]] = vbslq_s8(xmmword_29D2F17C0, *&v10[v85[2]], vshlq_u8(vqtbl1q_s8(v88, xmmword_29D2F17A0), xmmword_29D2F17B0));
      v85 += 3;
    }

    while (v85 != v86);
  }

  v89 = &v10[v121];
  v90 = *v7;
  if (*v7)
  {
    v92 = *v80;
    v91 = *(v80 + 8);
    v93 = *(a3 + 2192);
    LODWORD(v94) = *(v90 + 2);
    v95 = v94 + 1;
    if (*(v90 + 3) >= (v94 + 1))
    {
      v98 = *v90;
    }

    else
    {
      v122 = v6;
      v96 = -__clz(v94);
      v97 = malloc_type_malloc(40 << (v96 & 0x1F), 0x10800400D7C94D2uLL);
      v98 = v97;
      v99 = 1 << v96;
      v94 = *(v90 + 2);
      if (v94)
      {
        memcpy(v97, *v90, 40 * v94);
        free(*v90);
        LODWORD(v94) = *(v90 + 2);
      }

      *(v90 + 3) = v99;
      *v90 = v98;
      v6 = v122;
    }

    v100 = &v98[40 * v94];
    *v100 = 16;
    *(v100 + 1) = v89;
    *(v100 + 2) = v10;
    *(v100 + 3) = (v91 - v92);
    *(v100 + 8) = v93;
    *(v90 + 2) = v95;
  }

  v101 = *(a3 + 3136);
  v102 = *(a3 + 3128);
  v103 = (v89 >> 16) & 0xFFC00000 | *(a3 + 3120) & 0x3FFFFF;
  v104 = v6[6];
  *v104 = *(a3 + 3112);
  *(v104 + 8) = v103;
  *(v104 + 12) = v89 >> 6;
  *(v104 + 16) = v102;
  *(v104 + 24) = v101;
  v6[6] = v104 + 28;
}

{
  v6 = a2;
  v7 = a1;
  v124 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = (a2[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v114 = v9 + a2[20];
    a2[18] = v9 + v8;
  }

  else
  {
    v114 = 0;
    v9 = 0;
  }

  v10 = ((a2[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v115 = a2[28];
  a2[26] = &v10[*(*(a3 + 1784) + 8) - **(a3 + 1784)];
  v11 = *(a3 + 520);
  v12 = *(a3 + 512);
  v14 = v11 - v12;
  v13 = v11 == v12;
  v15 = *(a3 + 408) & 1;
  if (v13)
  {
    v15 = 0;
  }

  if (!v8)
  {
    goto LABEL_83;
  }

  v109 = v14;
  v106 = v15;
  v107 = *(a3 + 408);
  v16 = 0;
  v17 = *(a3 + 712);
  v104 = *(a3 + 256);
  v105 = *(a3 + 264);
  v18 = *(a3 + 52);
  v110 = *(a3 + 420);
  v108 = *(a3 + 416);
  v112 = v18;
  v113 = *(a3 + 48);
  if (v113 != v17)
  {
    v101 = *(a3 + 128);
    v102 = *(a3 + 744);
    v103 = *(a3 + 745);
    v118 = a4;
    v19 = &unk_2A23F97B8;
    v120 = &unk_2A23F97B8;
    v121 = &v118;
    v123 = &v120;
    v20 = *(a3 + 80);
    v21 = *(a3 + 88);
    if (v20 == v21)
    {
      v28 = &v120;
    }

    else
    {
      v22 = 0;
      do
      {
        LODWORD(v117) = *v20;
        if (!v123)
        {
LABEL_99:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v24 = (*(*v123 + 6))(v123, &v117);
        v25 = *(v20 + 8);
        v26 = *(v20 + 16);
        if (v25 == v26)
        {
          v23 = v22;
        }

        else
        {
          do
          {
            v27 = *v25++;
            v23 = (v22 + 1);
            *(v9 + 8 * v22) = *(v24 + 8 * v27);
            LODWORD(v22) = v22 + 1;
          }

          while (v25 != v26);
        }

        v20 += 32;
        v22 = v23;
      }

      while (v20 != v21);
      v28 = v123;
      if (v123 != &v120)
      {
        v7 = a1;
        if (v123)
        {
          (*(*v123 + 5))(v123);
        }

        goto LABEL_22;
      }

      v19 = *v123;
      v7 = a1;
    }

    v19[4](v28);
LABEL_22:
    v18 = v112;
    if (*(a3 + 552))
    {
      v29 = *(a3 + 536);
      if (v29 != (a3 + 544))
      {
        do
        {
          *(v9 + 4 * *(v29 + 7)) |= *(v29 + 8);
          v37 = v29[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v29[2];
              v13 = *v38 == v29;
              v29 = v38;
            }

            while (!v13);
          }

          v29 = v38;
        }

        while (v38 != (a3 + 544));
      }
    }

    v30 = (v101 + 3) & 0xFFFFFFFC;
    if (v102)
    {
      v31 = *(a3 + 704);
      if (v31 >= 4)
      {
        v32 = v31 >> 2;
        v33 = *(a3 + 144);
        v34 = (v9 + 8 * v30);
        do
        {
          v35 = *v33;
          v33 += 4;
          v36 = *(8 * v35 + 0x200);
          *v34 = *(8 * v35 + 0x1F0);
          v34[1] = v36;
          v34 += 2;
          --v32;
        }

        while (v32);
      }

      v30 += v31;
    }

    else
    {
      v31 = 0;
    }

    if (v103)
    {
      v39 = *(a3 + 708);
      v40 = (v9 + 8 * v30);
      if (*(a3 + 1584) == 1)
      {
        if (v39)
        {
          v99 = (*(a3 + 144) + 4 * v31);
          do
          {
            v100 = *v99++;
            *v40++ = *(8 * v100 + 0x41F0);
            --v39;
          }

          while (v39);
        }
      }

      else if (v39 >= 4)
      {
        v41 = v39 >> 2;
        v42 = (*(a3 + 144) + 4 * v31);
        do
        {
          v43 = *v42;
          v42 += 4;
          *v40 = *(8 * v43 + 0x41F0);
          v40 += 4;
          --v41;
        }

        while (v41);
      }
    }

    v16 = 8 * (v113 - v17);
  }

  if (v17)
  {
    if (v17 >= 4)
    {
      v44 = *(a3 + 2312);
      v45 = v17 >> 2;
      v46 = (v9 + v16);
      do
      {
        v47 = *v44;
        v44 += 4;
        *v46 = v47;
        v46 += 4;
        --v45;
      }

      while (v45);
    }

    v16 += 8 * v17;
  }

  if (v18)
  {
    *(a4 + 16) = v114 + v16 + 8;
    v117 = a4;
    v118 = 0;
    v48 = &unk_2A23F9920;
    v120 = &unk_2A23F9920;
    v121 = &v117;
    v122 = &v118;
    v123 = &v120;
    v49 = *(a3 + 192);
    v50 = *(a3 + 200);
    if (v49 == v50)
    {
      v57 = &v120;
      v58 = v112;
    }

    else
    {
      v51 = 0;
      do
      {
        v119[0] = *v49;
        if (!v123)
        {
          goto LABEL_99;
        }

        v53 = (*(*v123 + 6))(v123, v119);
        v54 = *(v49 + 8);
        v55 = *(v49 + 16);
        if (v54 == v55)
        {
          v52 = v51;
        }

        else
        {
          do
          {
            v56 = *v54++;
            v52 = (v51 + 1);
            *(v9 + v16 + 4 * v51) = *(v53 + 4 * v56);
            LODWORD(v51) = v51 + 1;
          }

          while (v54 != v55);
        }

        v49 += 32;
        v51 = v52;
      }

      while (v49 != v50);
      v57 = v123;
      v7 = a1;
      if (v123 != &v120)
      {
        v58 = v112;
        if (v123)
        {
          (*(*v123 + 5))(v123);
        }

        goto LABEL_63;
      }

      v48 = *v123;
      v58 = v112;
    }

    v48[4](v57);
LABEL_63:
    v16 += 4 * v58;
  }

  if ((v109 >> 2))
  {
    v59 = v113 + ((v105 - v104) >> 2);
    v60 = 4 * (v106 + v107);
    v61 = (v9 + (v60 + 8 * v59));
    v62 = *(a3 + 512);
    v63 = v109 >> 2;
    do
    {
      v64 = *v62++;
      *v61++ = *(8 * v64 + 0x41F0);
      LODWORD(v63) = v63 - 1;
    }

    while (v63);
    v16 = v60 + 8 * (v59 + (v109 >> 2));
  }

  if (v110 != -v108)
  {
    v65 = (v9 + v16);
    v66 = 4 * *(a3 + 416);
    memcpy(v65, (4 * *(a3 + 412)), v66);
    v117 = a4;
    v118 = 0;
    v67 = &unk_2A23F9920;
    v120 = &unk_2A23F9920;
    v121 = &v117;
    v122 = &v118;
    v123 = &v120;
    v68 = *(a3 + 448);
    v69 = *(a3 + 456);
    if (v68 == v69)
    {
      v77 = &v120;
    }

    else
    {
      v70 = 0;
      v71 = &v65[v66];
      do
      {
        v119[0] = *v68;
        if (!v123)
        {
          goto LABEL_99;
        }

        v73 = (*(*v123 + 6))(v123, v119);
        v74 = *(v68 + 8);
        v75 = *(v68 + 16);
        if (v74 == v75)
        {
          v72 = v70;
        }

        else
        {
          do
          {
            v76 = *v74++;
            v72 = (v70 + 1);
            *&v71[4 * v70] = *(v73 + 4 * v76);
            LODWORD(v70) = v70 + 1;
          }

          while (v74 != v75);
        }

        v68 += 32;
        v70 = v72;
      }

      while (v68 != v69);
      v77 = v123;
      if (v123 != &v120)
      {
        v7 = a1;
        if (v123)
        {
          (*(*v123 + 5))(v123);
        }

        goto LABEL_83;
      }

      v67 = *v123;
      v7 = a1;
    }

    v67[4](v77);
  }

LABEL_83:
  v78 = *(a3 + 1784);
  memcpy(v10, *v78, *(v78 + 8) - *v78);
  if (*(v78 + 272) == 1)
  {
    v79.i64[0] = v114;
    v79.i64[1] = v114 >> 5;
    *&v10[*(v78 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v10[*(v78 + 276)], vshlq_u8(vqtbl1q_s8(v79, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v80 = *(v78 + 248);
  for (i = *(v78 + 256); v80 != i; v80 += 3)
  {
    v82.i64[0] = *(a4 + 8 * v80[1]) + *v80;
    v82.i64[1] = v82.i64[0] >> 5;
    *&v10[v80[2]] = vbslq_s8(xmmword_29D2F17C0, *&v10[v80[2]], vshlq_u8(vqtbl1q_s8(v82, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v83 = &v10[v115];
  v84 = *v7;
  if (*v7)
  {
    v86 = *v78;
    v85 = *(v78 + 8);
    v87 = *(a3 + 2192);
    LODWORD(v88) = *(v84 + 2);
    v89 = v88 + 1;
    if (*(v84 + 3) >= (v88 + 1))
    {
      v92 = *v84;
    }

    else
    {
      v116 = v6;
      v90 = -__clz(v88);
      v91 = malloc_type_malloc(40 << (v90 & 0x1F), 0x10800400D7C94D2uLL);
      v92 = v91;
      v93 = 1 << v90;
      v88 = *(v84 + 2);
      if (v88)
      {
        memcpy(v91, *v84, 40 * v88);
        free(*v84);
        LODWORD(v88) = *(v84 + 2);
      }

      *(v84 + 3) = v93;
      *v84 = v92;
      v6 = v116;
    }

    v94 = &v92[40 * v88];
    *v94 = 17;
    *(v94 + 1) = v83;
    *(v94 + 2) = v10;
    *(v94 + 3) = (v85 - v86);
    *(v94 + 8) = v87;
    *(v84 + 2) = v89;
  }

  v95 = *(a3 + 3136);
  v96 = *(a3 + 3128);
  v97 = (v83 >> 16) & 0xFFC00000 | *(a3 + 3120) & 0x3FFFFF;
  v98 = v6[6];
  *v98 = *(a3 + 3112);
  *(v98 + 8) = v97;
  *(v98 + 12) = v83 >> 6;
  *(v98 + 16) = v96;
  *(v98 + 24) = v95;
  v6[6] = v98 + 28;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BlitFastClearVertexArgumentTable,AGX::BlitVertexFastClearDriverTable>(unsigned int *,AGX::HAL300::BlitFastClearVertexArgumentTable *,AGX::BlitVertexFastClearDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BlitFastClearVertexArgumentTable,AGX::BlitVertexFastClearDriverTable>(unsigned int *,AGX::HAL300::BlitFastClearVertexArgumentTable *,AGX::BlitVertexFastClearDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F98D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BlitFastClearVertexArgumentTable,AGX::BlitVertexFastClearDriverTable>(unsigned long long *,AGX::HAL300::BlitFastClearVertexArgumentTable *,AGX::BlitVertexFastClearDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BlitFastClearVertexArgumentTable,AGX::BlitVertexFastClearDriverTable>(unsigned long long *,AGX::HAL300::BlitFastClearVertexArgumentTable *,AGX::BlitVertexFastClearDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9890;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::HAL300::ClearVisibilityArgumentTable>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::HAL300::ClearVisibilityArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::HAL300::ClearVisibilityArgumentTable>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::HAL300::ClearVisibilityArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::HAL300::ClearVisibilityArgumentTable>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::HAL300::ClearVisibilityArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::HAL300::ClearVisibilityArgumentTable>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::HAL300::ClearVisibilityArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9920;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(char ***a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v130 = *MEMORY[0x29EDCA608];
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a2[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v119 = v10 + a2[20];
    a2[18] = v10 + v9;
  }

  else
  {
    v119 = 0;
    v10 = 0;
  }

  v11 = ((a2[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v121 = a2[28];
  a2[26] = &v11[*(*(a3 + 1784) + 8) - **(a3 + 1784)];
  v12 = *(a3 + 520);
  v13 = *(a3 + 512);
  v15 = v12 - v13;
  v14 = v12 == v13;
  v16 = *(a3 + 408) & 1;
  if (v14)
  {
    v16 = 0;
  }

  if (!v9)
  {
    goto LABEL_83;
  }

  v116 = v15;
  v113 = v16;
  v114 = *(a3 + 408);
  v17 = 0;
  v18 = *(a3 + 712);
  v111 = *(a3 + 256);
  v112 = *(a3 + 264);
  v19 = *(a3 + 52);
  v117 = *(a3 + 420);
  v118 = *(a3 + 48);
  v115 = *(a3 + 416);
  if (v118 != v18)
  {
    v20 = *(a3 + 52);
    v107 = *(a3 + 128);
    v108 = *(a3 + 744);
    v109 = *(a3 + 745);
    v123 = a5;
    v124 = a4;
    v21 = &unk_2A23F9968;
    v126 = &unk_2A23F9968;
    v127 = &v123;
    v128 = &v124;
    v129 = &v126;
    v22 = *(a3 + 80);
    v23 = *(a3 + 88);
    if (v22 == v23)
    {
      v30 = &v126;
      v19 = v20;
    }

    else
    {
      v24 = 0;
      do
      {
        v125[0] = *v22;
        if (!v129)
        {
LABEL_101:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v26 = (*(*v129 + 6))(v129, v125);
        v27 = *(v22 + 8);
        v28 = *(v22 + 16);
        if (v27 == v28)
        {
          v25 = v24;
        }

        else
        {
          do
          {
            v29 = *v27++;
            v25 = (v24 + 1);
            *(v10 + 8 * v24) = *(v26 + 8 * v29);
            LODWORD(v24) = v24 + 1;
          }

          while (v27 != v28);
        }

        v22 += 32;
        v24 = v25;
      }

      while (v22 != v23);
      v30 = v129;
      if (v129 != &v126)
      {
        v8 = a2;
        v19 = v20;
        if (v129)
        {
          (*(*v129 + 5))(v129);
        }

        goto LABEL_22;
      }

      v21 = *v129;
      v8 = a2;
      v19 = v20;
    }

    v21[4](v30);
LABEL_22:
    if (*(a3 + 552))
    {
      v31 = *(a3 + 536);
      if (v31 != (a3 + 544))
      {
        do
        {
          *(v10 + 4 * *(v31 + 7)) |= *(v31 + 8);
          v40 = v31[1];
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = v31[2];
              v14 = *v41 == v31;
              v31 = v41;
            }

            while (!v14);
          }

          v31 = v41;
        }

        while (v41 != (a3 + 544));
      }
    }

    v32 = (v107 + 3) & 0xFFFFFFFC;
    if (v108)
    {
      v33 = *(a3 + 704);
      if (v33 >= 4)
      {
        v34 = v33 >> 2;
        v35 = *(a3 + 144);
        v36 = (v10 + 8 * v32);
        do
        {
          v37 = *v35;
          v35 += 4;
          v38 = (a4 + 8 * v37);
          v39 = v38[1];
          *v36 = *v38;
          v36[1] = v39;
          v36 += 2;
          --v34;
        }

        while (v34);
      }

      v32 += v33;
    }

    else
    {
      v33 = 0;
    }

    if (v109)
    {
      v42 = *(a3 + 708);
      v43 = (v10 + 8 * v32);
      if (*(a3 + 1584) == 1)
      {
        if (v42)
        {
          v105 = (*(a3 + 144) + 4 * v33);
          do
          {
            v106 = *v105++;
            *v43++ = *(a4 + 8 * v106);
            --v42;
          }

          while (v42);
        }
      }

      else if (v42 >= 4)
      {
        v44 = v42 >> 2;
        v45 = (*(a3 + 144) + 4 * v33);
        do
        {
          v46 = *v45;
          v45 += 4;
          *v43 = *(a4 + 8 * v46);
          v43 += 4;
          --v44;
        }

        while (v44);
      }
    }

    v17 = 8 * (v118 - v18);
  }

  if (v18)
  {
    if (v18 >= 4)
    {
      v47 = *(a3 + 2312);
      v48 = v18 >> 2;
      v49 = (v10 + v17);
      do
      {
        v50 = *v47;
        v47 += 4;
        *v49 = v50;
        v49 += 4;
        --v48;
      }

      while (v48);
    }

    v17 += 8 * v18;
  }

  if (v19)
  {
    v110 = v19;
    *(a5 + 64) = v119 + v17 + 8;
    v123 = a5;
    v124 = a4;
    v51 = &unk_2A23F99B0;
    v126 = &unk_2A23F99B0;
    v127 = &v123;
    v128 = &v124;
    v129 = &v126;
    v52 = *(a3 + 192);
    v53 = *(a3 + 200);
    if (v52 == v53)
    {
      v60 = &v126;
      v61 = v110;
    }

    else
    {
      v54 = 0;
      do
      {
        v125[0] = *v52;
        if (!v129)
        {
          goto LABEL_101;
        }

        v56 = (*(*v129 + 6))(v129, v125);
        v57 = *(v52 + 8);
        v58 = *(v52 + 16);
        if (v57 == v58)
        {
          v55 = v54;
        }

        else
        {
          do
          {
            v59 = *v57++;
            v55 = (v54 + 1);
            *(v10 + v17 + 4 * v54) = *(v56 + 4 * v59);
            LODWORD(v54) = v54 + 1;
          }

          while (v57 != v58);
        }

        v52 += 32;
        v54 = v55;
      }

      while (v52 != v53);
      v60 = v129;
      v8 = a2;
      if (v129 != &v126)
      {
        v61 = v110;
        if (v129)
        {
          (*(*v129 + 5))(v129);
        }

        goto LABEL_63;
      }

      v51 = *v129;
      v61 = v110;
    }

    v51[4](v60);
LABEL_63:
    v17 += 4 * v61;
  }

  if ((v116 >> 2))
  {
    v62 = v118 + ((v112 - v111) >> 2);
    v63 = 4 * (v113 + v114);
    v64 = (v10 + (v63 + 8 * v62));
    v65 = *(a3 + 512);
    v66 = v116 >> 2;
    do
    {
      v67 = *v65++;
      *v64++ = *(a4 + 8 * v67);
      LODWORD(v66) = v66 - 1;
    }

    while (v66);
    v17 = v63 + 8 * (v62 + (v116 >> 2));
  }

  if (v117 != -v115)
  {
    v68 = (v10 + v17);
    v69 = 4 * *(a3 + 416);
    memcpy(v68, (a4 + 4 * *(a3 + 412)), v69);
    v123 = a5;
    v124 = a4;
    v70 = &unk_2A23F99B0;
    v126 = &unk_2A23F99B0;
    v127 = &v123;
    v128 = &v124;
    v129 = &v126;
    v71 = *(a3 + 448);
    v72 = *(a3 + 456);
    if (v71 == v72)
    {
      v80 = &v126;
    }

    else
    {
      v73 = 0;
      v74 = &v68[v69];
      do
      {
        v125[0] = *v71;
        if (!v129)
        {
          goto LABEL_101;
        }

        v76 = (*(*v129 + 6))(v129, v125);
        v77 = *(v71 + 8);
        v78 = *(v71 + 16);
        if (v77 == v78)
        {
          v75 = v73;
        }

        else
        {
          do
          {
            v79 = *v77++;
            v75 = (v73 + 1);
            *&v74[4 * v73] = *(v76 + 4 * v79);
            LODWORD(v73) = v73 + 1;
          }

          while (v77 != v78);
        }

        v71 += 32;
        v73 = v75;
      }

      while (v71 != v72);
      v80 = v129;
      if (v129 != &v126)
      {
        v8 = a2;
        if (v129)
        {
          (*(*v129 + 5))(v129);
        }

        goto LABEL_83;
      }

      v70 = *v129;
      v8 = a2;
    }

    v70[4](v80);
  }

LABEL_83:
  v81 = *(a3 + 1784);
  memcpy(v11, *v81, *(v81 + 8) - *v81);
  if (*(v81 + 272) == 1)
  {
    v82.i64[0] = v119;
    v82.i64[1] = v119 >> 5;
    *&v11[*(v81 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v11[*(v81 + 276)], vshlq_u8(vqtbl1q_s8(v82, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v83 = *(v81 + 224);
  for (i = *(v81 + 232); v83 != i; v83 += 3)
  {
    v85.i64[0] = *(a4 + 8 * v83[1]) + *v83;
    v85.i64[1] = v85.i64[0] >> 5;
    *&v11[v83[2]] = vbslq_s8(xmmword_29D2F17C0, *&v11[v83[2]], vshlq_u8(vqtbl1q_s8(v85, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v86 = *(v81 + 248);
  for (j = *(v81 + 256); v86 != j; v86 += 3)
  {
    v88.i64[0] = *(a5 + 8 * v86[1]) + *v86;
    v88.i64[1] = v88.i64[0] >> 5;
    *&v11[v86[2]] = vbslq_s8(xmmword_29D2F17C0, *&v11[v86[2]], vshlq_u8(vqtbl1q_s8(v88, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v89 = &v11[v121];
  v90 = *a1;
  if (*a1)
  {
    v92 = *v81;
    v91 = *(v81 + 8);
    v93 = *(a3 + 2192);
    LODWORD(v94) = *(v90 + 2);
    v95 = v94 + 1;
    if (*(v90 + 3) >= (v94 + 1))
    {
      v98 = *v90;
    }

    else
    {
      v96 = -__clz(v94);
      v97 = malloc_type_malloc(40 << (v96 & 0x1F), 0x10800400D7C94D2uLL);
      v98 = v97;
      v99 = 1 << v96;
      v94 = *(v90 + 2);
      if (v94)
      {
        memcpy(v97, *v90, 40 * v94);
        free(*v90);
        LODWORD(v94) = *(v90 + 2);
      }

      *(v90 + 3) = v99;
      *v90 = v98;
      v8 = a2;
    }

    v100 = &v98[40 * v94];
    *v100 = 2;
    *(v100 + 1) = v89;
    *(v100 + 2) = v11;
    *(v100 + 3) = (v91 - v92);
    *(v100 + 8) = v93;
    *(v90 + 2) = v95;
  }

  v101 = v8[6];
  *v101 = *(a3 + 3184);
  v8[6] = v101 + 8;
  v102 = *(a3 + 3128);
  v103 = *(a3 + 3136);
  v104 = (v89 >> 16) & 0xFFC00000 | *(a3 + 3120) & 0x3FFFFF;
  *(v101 + 8) = *(a3 + 3112);
  *(v101 + 16) = v104;
  *(v101 + 20) = v89 >> 6;
  *(v101 + 32) = v103;
  *(v101 + 24) = v102;
  v8[6] = v101 + 36;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::TileDispatchVertexArgumentTable,AGX::TileDispatchVertexDriverTable>(unsigned int *,AGX::TileDispatchVertexArgumentTable *,AGX::TileDispatchVertexDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::TileDispatchVertexArgumentTable,AGX::TileDispatchVertexDriverTable>(unsigned int *,AGX::TileDispatchVertexArgumentTable *,AGX::TileDispatchVertexDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F99B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::TileDispatchVertexArgumentTable,AGX::TileDispatchVertexDriverTable>(unsigned long long *,AGX::TileDispatchVertexArgumentTable *,AGX::TileDispatchVertexDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::TileDispatchVertexArgumentTable,AGX::TileDispatchVertexDriverTable>(unsigned long long *,AGX::TileDispatchVertexArgumentTable *,AGX::TileDispatchVertexDriverTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9968;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(uint64_t result, unsigned int a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = (a2 >> 1) & 2;
  }

  v3 = (result + 32 * v2);
  v4 = v3[6];
  if (a2)
  {
    v6 = v3[7];
    v5 = v6 - v4;
  }

  else
  {
    v5 = 0;
    v6 = v3[6];
  }

  v7 = v6 + 4;
  if (v7 > v3[5])
  {
    v8 = result;
    result = AGX::DataBufferAllocator<44ul>::growNoInline(result, v2, 0);
    if (result)
    {
      v9 = v3[6] + v5 + 4;
      if (v9 > v3[5])
      {
        abort();
      }

      v3[7] = v9;
      result = AGX::DataBufferAllocator<44ul>::getGPUAddress(v8, v2);
      *v4 = __ROR8__(result, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v3[7] = v7;
  }

  return result;
}

void *AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace(void *result, uint64_t a2)
{
  v2 = result[7];
  if ((v2 + 212) > result[5])
  {
    v11 = result[6];
    v12 = result;
    v13 = a2;
    v14 = AGX::DataBufferAllocator<44ul>::growNoInline(result, 0, 0);
    a2 = v13;
    v15 = v14;
    result = v12;
    if (v15)
    {
      v16 = v12[6] + v2 - v11 + 212;
      if (v16 > v12[5])
      {
        goto LABEL_21;
      }

      v12[7] = v16;
      GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(v12, 0);
      result = v12;
      *v11 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      a2 = v13;
    }
  }

  else
  {
    result[7] = v2 + 212;
  }

  v3 = *(a2 + 624) + 31;
  v4 = result[19];
  v5 = v4 + v3;
  if ((v4 + v3) <= result[17])
  {
LABEL_4:
    result[19] = v5;
    goto LABEL_5;
  }

  v18 = result[18];
  v19 = result;
  v20 = a2;
  v21 = AGX::DataBufferAllocator<44ul>::growNoInline(result, 3, 0);
  a2 = v20;
  v22 = v21;
  result = v19;
  if (v22)
  {
    v5 = v19[18] + v4 - v18 + v3;
    if (v5 > v19[17])
    {
      goto LABEL_21;
    }

    goto LABEL_4;
  }

LABEL_5:
  v6 = result[127];
  v7 = v6 + 636;
  if ((v6 + 636) <= result[125])
  {
LABEL_6:
    result[127] = v7;
    goto LABEL_7;
  }

  v23 = result[126];
  v24 = result;
  v25 = a2;
  v26 = AGX::DataBufferAllocator<44ul>::growNoInline(result, 30, 0);
  a2 = v25;
  v27 = v26;
  result = v24;
  if (v27)
  {
    v7 = v24[126] + v6 - v23 + 636;
    if (v7 > v24[125])
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = (*(*(a2 + 2392) + 8) - **(a2 + 2392)) + 63;
  v9 = result[27];
  v10 = v9 + v8;
  if ((v9 + v8) <= result[25])
  {
LABEL_8:
    result[27] = v10;
    return result;
  }

  v28 = result[26];
  v29 = result;
  result = AGX::DataBufferAllocator<44ul>::growNoInline(result, 5, 0);
  if (result)
  {
    result = v29;
    v10 = v29[26] + v9 - v28 + v8;
    if (v10 <= v29[25])
    {
      goto LABEL_8;
    }

LABEL_21:
    abort();
  }

  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9AD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9A88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9B60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9B18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9BA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9BF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)0,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::EndOfTileDriverArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _DWORD *a7)
{
  v151 = *MEMORY[0x29EDCA608];
  v11 = *(a3 + 624);
  if (v11)
  {
    v12 = (a2[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v13 = v12 + a2[20];
    a2[18] = v12 + v11;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v138 = (a3 + 628);
  v14 = ((a2[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v15 = a2[28];
  a2[26] = &v14[*(*(a3 + 2392) + 8) - **(a3 + 2392)];
  v16 = *(a3 + 1128);
  v17 = *(a3 + 1120);
  v19 = v16 - v17;
  v18 = v16 == v17;
  v20 = *(a3 + 1016);
  v21 = v20 & 1;
  if (v18)
  {
    v21 = 0;
  }

  if (!v11)
  {
    goto LABEL_99;
  }

  v22 = *(a3 + 1320);
  v23 = *(a3 + 656);
  v128 = *(a3 + 736);
  v137 = *(a3 + 660);
  v139 = *(a3 + 1024);
  v24 = *(a3 + 1028);
  v25 = v23 + ((*(a3 + 872) - *(a3 + 864)) >> 2);
  v135 = *(a3 + 1353);
  v127 = *(a3 + 1352);
  if (*(a3 + 1352))
  {
    *(a5 + 184) = vaddw_u32(vdupq_n_s64(v13), *v138);
  }

  if (v135)
  {
    *(a5 + 216) = v13 + *(a3 + 648);
  }

  v132 = 8 * v25;
  v131 = v21 + v20;
  if (v24 + v139)
  {
    *(a5 + 280) = v132 + v13 + 4 * (v131 + ((v19 >> 1) & 0xFFFFFFFE));
  }

  v133 = a1;
  v134 = v15;
  v136 = v13;
  v130 = v19;
  v129 = v24;
  if (v23 == v22)
  {
    v26 = 0;
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

  if (a4)
  {
    v144 = a5;
    v145 = a4;
    v27 = &unk_2A23F9CC8;
    v147 = &unk_2A23F9CC8;
    v148 = &v144;
    v149 = &v145;
    v150 = &v147;
    v28 = *(a3 + 688);
    v29 = *(a3 + 696);
    if (v28 != v29)
    {
      v30 = 0;
      while (1)
      {
        v146 = *v28;
        if (!v150)
        {
          break;
        }

        v32 = (*(*v150 + 6))(v150, &v146);
        v33 = *(v28 + 1);
        v34 = *(v28 + 2);
        if (v33 == v34)
        {
          v31 = v30;
        }

        else
        {
          do
          {
            v35 = *v33++;
            v31 = (v30 + 1);
            *(v12 + 8 * v30) = *(v32 + 8 * v35);
            LODWORD(v30) = v30 + 1;
          }

          while (v33 != v34);
        }

        v28 += 8;
        v30 = v31;
        if (v28 == v29)
        {
          goto LABEL_34;
        }
      }

LABEL_129:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    goto LABEL_37;
  }

  v145 = a5;
  v27 = &unk_2A23F9C80;
  v147 = &unk_2A23F9C80;
  v148 = &v145;
  v150 = &v147;
  v36 = *(a3 + 688);
  v37 = *(a3 + 696);
  if (v36 == v37)
  {
LABEL_37:
    v44 = &v147;
    v15 = v134;
    v13 = v136;
LABEL_39:
    v27[4](v44);
    goto LABEL_40;
  }

  v38 = 0;
  do
  {
    LODWORD(v144) = *v36;
    if (!v150)
    {
      goto LABEL_129;
    }

    v40 = (*(*v150 + 6))(v150, &v144);
    v41 = *(v36 + 8);
    v42 = *(v36 + 16);
    if (v41 == v42)
    {
      v39 = v38;
    }

    else
    {
      do
      {
        v43 = *v41++;
        v39 = (v38 + 1);
        *(v12 + 8 * v38) = *(v40 + 8 * v43);
        LODWORD(v38) = v38 + 1;
      }

      while (v41 != v42);
    }

    v36 += 32;
    v38 = v39;
  }

  while (v36 != v37);
LABEL_34:
  v44 = v150;
  if (v150 == &v147)
  {
    v27 = *v150;
    a1 = v133;
    v15 = v134;
    v13 = v136;
    goto LABEL_39;
  }

  a1 = v133;
  v15 = v134;
  v13 = v136;
  if (v150)
  {
    (*(*v150 + 5))(v150);
  }

LABEL_40:
  v19 = v130;
  v24 = v129;
  if (*(a3 + 1160))
  {
    v45 = *(a3 + 1144);
    if (v45 != (a3 + 1152))
    {
      do
      {
        *(v12 + 4 * *(v45 + 7)) |= *(v45 + 8);
        v54 = v45[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          do
          {
            v55 = v45[2];
            v18 = *v55 == v45;
            v45 = v55;
          }

          while (!v18);
        }

        v45 = v55;
      }

      while (v55 != (a3 + 1152));
    }
  }

  v46 = (v128 + 3) & 0xFFFFFFFC;
  if (v127)
  {
    v47 = *(a3 + 1312);
    if (v47 >= 4)
    {
      v48 = v47 >> 2;
      v49 = *(a3 + 752);
      v50 = (v12 + 8 * v46);
      do
      {
        v51 = *v49;
        v49 += 4;
        v52 = (a4 + 496 + 8 * v51);
        v53 = v52[1];
        *v50 = *v52;
        v50[1] = v53;
        v50 += 2;
        --v48;
      }

      while (v48);
    }

    v46 += v47;
  }

  else
  {
    v47 = 0;
  }

  if (v135)
  {
    v56 = *(a3 + 1316);
    v57 = (v12 + 8 * v46);
    v58 = a4 + 16880;
    if (*(a3 + 2192) == 1)
    {
      if (v56)
      {
        v125 = (*(a3 + 752) + 4 * v47);
        do
        {
          v126 = *v125++;
          *v57++ = *(v58 + 8 * v126);
          --v56;
        }

        while (v56);
      }
    }

    else if (v56 >= 4)
    {
      v59 = v56 >> 2;
      v60 = (*(a3 + 752) + 4 * v47);
      do
      {
        v61 = *v60;
        v60 += 4;
        *v57 = *(v58 + 8 * v61);
        v57 += 4;
        --v59;
      }

      while (v59);
    }
  }

  v26 = 8 * (v23 - v22);
  if (!v22)
  {
LABEL_15:
    if (!v137)
    {
      goto LABEL_80;
    }

LABEL_65:
    *(a5 + 16) = v13 + v26 + 8;
    v144 = a5;
    v145 = a4;
    v66 = &unk_2A23F9D10;
    v147 = &unk_2A23F9D10;
    v148 = &v144;
    v149 = &v145;
    v150 = &v147;
    v67 = *(a3 + 800);
    v68 = *(a3 + 808);
    if (v67 == v68)
    {
      v75 = &v147;
      a1 = v133;
      v13 = v136;
    }

    else
    {
      v69 = 0;
      do
      {
        v146 = *v67;
        if (!v150)
        {
          goto LABEL_129;
        }

        v71 = (*(*v150 + 6))(v150, &v146);
        v72 = *(v67 + 1);
        v73 = *(v67 + 2);
        if (v72 == v73)
        {
          v70 = v69;
        }

        else
        {
          do
          {
            v74 = *v72++;
            v70 = (v69 + 1);
            *(v12 + v26 + 4 * v69) = *(v71 + 4 * v74);
            LODWORD(v69) = v69 + 1;
          }

          while (v72 != v73);
        }

        v67 += 8;
        v69 = v70;
      }

      while (v67 != v68);
      v75 = v150;
      v15 = v134;
      if (v150 != &v147)
      {
        a1 = v133;
        v13 = v136;
        if (v150)
        {
          (*(*v150 + 5))();
        }

        goto LABEL_79;
      }

      v66 = *v150;
      a1 = v133;
      v13 = v136;
    }

    v66[4](v75);
LABEL_79:
    v26 += 4 * v137;
    v19 = v130;
    v24 = v129;
    goto LABEL_80;
  }

LABEL_61:
  if (v22 >= 4)
  {
    v62 = *(a3 + 2920);
    v63 = v22 >> 2;
    v64 = (v12 + v26);
    do
    {
      v65 = *v62;
      v62 += 4;
      *v64 = v65;
      v64 += 4;
      --v63;
    }

    while (v63);
  }

  v26 += 8 * v22;
  if (v137)
  {
    goto LABEL_65;
  }

LABEL_80:
  v76 = v19 >> 2;
  if ((v19 >> 2))
  {
    v77 = v132 + 4 * v131;
    v78 = (v12 + (v77 & 0xFFFFFFFC));
    v79 = *(a3 + 1120);
    do
    {
      v80 = *v79++;
      *v78++ = *(a4 + 16880 + 8 * v80);
      LODWORD(v76) = v76 - 1;
    }

    while (v76);
    v26 = v77 + 8 * (v19 >> 2);
  }

  if (v24 != -v139)
  {
    v81 = (v12 + v26);
    v82 = 4 * *(a3 + 1024);
    memcpy(v81, (a4 + 4 * *(a3 + 1020)), v82);
    v144 = a5;
    v145 = a4;
    v83 = &unk_2A23F9D58;
    v147 = &unk_2A23F9D58;
    v148 = &v144;
    v149 = &v145;
    v150 = &v147;
    v84 = *(a3 + 1056);
    v85 = *(a3 + 1064);
    if (v84 == v85)
    {
      v93 = &v147;
      v15 = v134;
      v13 = v136;
    }

    else
    {
      v86 = 0;
      v87 = &v81[v82];
      v15 = v134;
      do
      {
        v146 = *v84;
        if (!v150)
        {
          goto LABEL_129;
        }

        v89 = (*(*v150 + 6))(v150, &v146);
        v90 = *(v84 + 1);
        v91 = *(v84 + 2);
        if (v90 == v91)
        {
          v88 = v86;
        }

        else
        {
          do
          {
            v92 = *v90++;
            v88 = (v86 + 1);
            *&v87[4 * v86] = *(v89 + 4 * v92);
            LODWORD(v86) = v86 + 1;
          }

          while (v90 != v91);
        }

        v84 += 8;
        v86 = v88;
      }

      while (v84 != v85);
      v93 = v150;
      if (v150 != &v147)
      {
        a1 = v133;
        v13 = v136;
        if (v150)
        {
          (*(*v150 + 5))();
        }

        goto LABEL_99;
      }

      v83 = *v150;
      a1 = v133;
      v13 = v136;
    }

    v83[4](v93);
  }

LABEL_99:
  v94 = *(a3 + 2392);
  memcpy(v14, *v94, *(v94 + 8) - *v94);
  if (*(v94 + 272) == 1)
  {
    v95.i64[0] = v13;
    v95.i64[1] = v13 >> 5;
    *&v14[*(v94 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v14[*(v94 + 276)], vshlq_u8(vqtbl1q_s8(v95, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (a4)
  {
    v96 = *(v94 + 224);
    for (i = *(v94 + 232); v96 != i; v96 += 3)
    {
      v98.i64[0] = *(a4 + 8 * v96[1]) + *v96;
      v98.i64[1] = v98.i64[0] >> 5;
      *&v14[v96[2]] = vbslq_s8(xmmword_29D2F17C0, *&v14[v96[2]], vshlq_u8(vqtbl1q_s8(v98, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }
  }

  v99 = *(v94 + 248);
  for (j = *(v94 + 256); v99 != j; v99 += 3)
  {
    v101.i64[0] = *(a5 + 8 * v99[1]) + *v99;
    v101.i64[1] = v101.i64[0] >> 5;
    *&v14[v99[2]] = vbslq_s8(xmmword_29D2F17C0, *&v14[v99[2]], vshlq_u8(vqtbl1q_s8(v101, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v102 = &v14[v15];
  v103 = *a1;
  if (*a1)
  {
    v104 = *v94;
    v105 = *(v94 + 8);
    v106 = *(a3 + 2800);
    LODWORD(v107) = *(v103 + 2);
    v108 = v107 + 1;
    if (*(v103 + 3) >= (v107 + 1))
    {
      v111 = *v103;
    }

    else
    {
      v140 = *(a3 + 2800);
      v109 = -__clz(v107);
      v110 = malloc_type_malloc(40 << (v109 & 0x1F), 0x10800400D7C94D2uLL);
      v111 = v110;
      v112 = 1 << v109;
      v107 = *(v103 + 2);
      if (v107)
      {
        memcpy(v110, *v103, 40 * v107);
        free(*v103);
        LODWORD(v107) = *(v103 + 2);
      }

      v106 = v140;
      *(v103 + 3) = v112;
      *v103 = v111;
    }

    v113 = &v111[40 * v107];
    *v113 = 0;
    *(v113 + 1) = v102;
    *(v113 + 2) = v14;
    *(v113 + 3) = (v105 - v104);
    *(v113 + 8) = v106;
    *(v103 + 2) = v108;
  }

  v114 = a2 + 5;
  v115 = *(a5 + 736);
  v116 = *(a3 + 3736);
  v117 = *(a3 + 3744);
  if ((*(a3 + 3752) & 7) - 1 == v115)
  {
    v118 = *(a3 + 3752);
  }

  else
  {
    v118 = (v115 - 1) & 7;
  }

  if ((*a7 & 2) != 0)
  {
    v119 = 1;
  }

  else
  {
    v119 = (*a7 >> 1) & 2;
  }

  v120 = &v114[4 * v119];
  v121 = v120[1];
  *v121 = *(a3 + 3728);
  *(v121 + 8) = (v102 >> 16) & 0xFFC00000 | v116 & 0x3FFFFF;
  *(v121 + 12) = v102 >> 6;
  *(v121 + 16) = v117;
  *(v121 + 24) = v118;
  v120[1] = v121 + 28;
  if (a6)
  {
    if ((*a7 & 2) != 0)
    {
      v122 = 1;
    }

    else
    {
      v122 = (*a7 >> 1) & 2;
    }

    v123 = &v114[4 * v122];
    v124 = v123[1];
    *v124 = v138[439];
    v123[1] = v124 + 1;
  }
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9D58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9D10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9C80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9DA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int8x8_t AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(char ***a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64x2_t *a6, uint64_t a7, unsigned int a8, int8x8_t result, char a10)
{
  v160 = *MEMORY[0x29EDCA608];
  v10 = (a7 & 0xF8000000002) == 0 || a10 == 1;
  if (v10)
  {
    return result;
  }

  v11 = a8;
  v17 = *(a2 + 1840);
  v18 = *(a1 + 196);
  v19 = *(a1 + 228);
  v152 = *(a1 + 212);
  v153 = v19;
  v154 = *(a1 + 61);
  v150 = *(a1 + 180);
  v151 = v18;
  v20 = *(a3 + 624);
  if (v20)
  {
    v21 = 4;
    if (!v17)
    {
      v21 = 11;
    }

    v22 = 4;
    if (!v17)
    {
      v22 = 42;
    }

    v23 = 4;
    if (!v17)
    {
      v23 = 39;
    }

    v24 = 4;
    if (!v17)
    {
      v24 = 36;
    }

    if (v17 == 1)
    {
      v21 = v24;
    }

    if (v17 == 3)
    {
      v21 = v23;
    }

    if (v17 == 7)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

    v26 = a2 + 32 * v25;
    v27 = (*(v26 + 48) + 31) & 0xFFFFFFFFFFFFFFE0;
    v28 = v27 + *(v26 + 64);
    *(v26 + 48) = v27 + v20;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v29 = ((*(a2 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
  v30 = *(a2 + 256);
  *(a2 + 240) = &v29[*(*(a3 + 2392) + 8) - **(a3 + 2392)];
  v31 = *(a3 + 1128);
  v32 = *(a3 + 1120);
  v33 = v31 - v32;
  v10 = v31 == v32;
  v34 = *(a3 + 1016);
  v35 = v34 & 1;
  if (v10)
  {
    v35 = 0;
  }

  if (v20)
  {
    v36 = *(a3 + 1320);
    v37 = *(a3 + 656);
    v139 = *(a3 + 736);
    v141 = *(a3 + 660);
    v38 = *(a3 + 1024);
    v39 = *(a3 + 1028);
    v40 = v37 + ((*(a3 + 872) - *(a3 + 864)) >> 2);
    v146 = *(a3 + 1353);
    v138 = *(a3 + 1352);
    if (*(a3 + 1352))
    {
      a6[12] = vaddw_u32(vdupq_n_s64(v28), *(a3 + 628));
    }

    if (v146)
    {
      a6[14].i64[0] = v28 + *(a3 + 648);
    }

    v142 = 8 * v40;
    v41 = v35 + v34;
    if (v39 + v38)
    {
      a6[18].i64[0] = v142 + v28 + 4 * (v41 + ((v33 >> 1) & 0xFFFFFFFE));
    }

    v140 = v41;
    if (v37 == v36)
    {
      v42 = 0;
      v43 = v141;
      v44 = v33 >> 2;
      if (!v36)
      {
        goto LABEL_80;
      }

      goto LABEL_76;
    }

    if (a5)
    {
      v45 = *(a3 + 712);
      v46 = *(a3 + 720);
      if (v45 != v46)
      {
        v47 = v27;
        do
        {
          v48 = *v45++;
          *v47++ = a6->i64[v48];
        }

        while (v45 != v46);
      }

      if (!*(a3 + 1160))
      {
LABEL_57:
        v60 = (v139 + 3) & 0xFFFFFFFC;
        if (v138)
        {
          v61 = *(a3 + 1312);
          if (v61 >= 4)
          {
            v62 = v61 >> 2;
            v63 = *(a3 + 752);
            v64 = (v27 + 8 * v60);
            do
            {
              v65 = *v63;
              v63 += 4;
              v66 = (a5 + 496 + 8 * v65);
              v67 = v66[1];
              *v64 = *v66;
              v64[1] = v67;
              v64 += 2;
              --v62;
            }

            while (v62);
          }

          v60 += v61;
        }

        else
        {
          v61 = 0;
        }

        v43 = v141;
        if (v146)
        {
          v70 = *(a3 + 1316);
          v71 = (v27 + 8 * v60);
          v72 = a5 + 16880;
          if (*(a3 + 2192) == 1)
          {
            if (v70)
            {
              v125 = (*(a3 + 752) + 4 * v61);
              do
              {
                v126 = *v125++;
                *v71++ = *(v72 + 8 * v126);
                --v70;
              }

              while (v70);
            }
          }

          else if (v70 >= 4)
          {
            v73 = v70 >> 2;
            v74 = (*(a3 + 752) + 4 * v61);
            do
            {
              v75 = *v74;
              v74 += 4;
              *v71 = *(v72 + 8 * v75);
              v71 += 4;
              --v73;
            }

            while (v73);
          }
        }

        v42 = 8 * (v37 - v36);
        v44 = v33 >> 2;
        if (!v36)
        {
LABEL_80:
          if (v43)
          {
            a6[1].i64[0] = v28 + v42 + 8;
            v80 = *(a3 + 824);
            v81 = *(a3 + 832);
            if (v80 != v81)
            {
              v82 = (v27 + v42);
              do
              {
                v83 = *v80++;
                *v82++ = a6->i32[v83];
              }

              while (v80 != v81);
            }

            v42 += 4 * v43;
          }

          if (v44)
          {
            v84 = v142 + 4 * v140;
            v85 = (v27 + (v84 & 0xFFFFFFFC));
            v86 = *(a3 + 1120);
            do
            {
              v87 = *v86++;
              *v85++ = *(a5 + 16880 + 8 * v87);
              LODWORD(v44) = v44 - 1;
            }

            while (v44);
            v42 = v84 + 8 * (v33 >> 2);
          }

          if (v39 == -v38)
          {
            goto LABEL_105;
          }

          v134 = v30;
          v136 = v28;
          v144 = a4;
          v88 = (v27 + v42);
          v89 = 4 * *(a3 + 1024);
          v90 = a5;
          memcpy(v88, (a5 + 4 * *(a3 + 1020)), v89);
          v137 = v90;
          v147 = a6;
          v148 = v90;
          v91 = &unk_2A23F9E30;
          *&v155 = &unk_2A23F9E30;
          *(&v155 + 1) = &v147;
          *&v156 = &v148;
          *(&v156 + 1) = &v155;
          v92 = *(a3 + 1056);
          v93 = *(a3 + 1064);
          if (v92 == v93)
          {
            v101 = &v155;
            a4 = v144;
          }

          else
          {
            v132 = v29;
            v94 = 0;
            v95 = &v88[v89];
            do
            {
              v149 = *v92;
              if (!*(&v156 + 1))
              {
                goto LABEL_121;
              }

              v97 = (*(**(&v156 + 1) + 48))(*(&v156 + 1), &v149);
              v98 = *(v92 + 1);
              v99 = *(v92 + 2);
              if (v98 == v99)
              {
                v96 = v94;
              }

              else
              {
                do
                {
                  v100 = *v98++;
                  v96 = (v94 + 1);
                  *&v95[4 * v94] = *(v97 + 4 * v100);
                  LODWORD(v94) = v94 + 1;
                }

                while (v98 != v99);
              }

              v92 += 8;
              v94 = v96;
            }

            while (v92 != v93);
            v101 = *(&v156 + 1);
            if (*(&v156 + 1) != &v155)
            {
              a4 = v144;
              v29 = v132;
              if (*(&v156 + 1))
              {
                (*(**(&v156 + 1) + 40))();
              }

              goto LABEL_104;
            }

            v91 = **(&v156 + 1);
            a4 = v144;
            v29 = v132;
          }

          v91[4](v101);
LABEL_104:
          v28 = v136;
          a5 = v137;
          v30 = v134;
          goto LABEL_105;
        }

LABEL_76:
        if (v36 >= 4)
        {
          v76 = *(a3 + 2920);
          v77 = v36 >> 2;
          v78 = (v27 + v42);
          do
          {
            v79 = *v76;
            v76 += 4;
            *v78 = v79;
            v78 += 4;
            --v77;
          }

          while (v77);
        }

        v42 += 8 * v36;
        goto LABEL_80;
      }

LABEL_56:
      v59 = *(a3 + 1144);
      if (v59 != (a3 + 1152))
      {
        do
        {
          *(v27 + 4 * *(v59 + 7)) |= *(v59 + 8);
          v68 = v59[1];
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = v59[2];
              v10 = *v69 == v59;
              v59 = v69;
            }

            while (!v10);
          }

          v59 = v69;
        }

        while (v69 != (a3 + 1152));
      }

      goto LABEL_57;
    }

    v128 = v38;
    v129 = v39;
    v133 = v30;
    v135 = v28;
    v130 = v33;
    v131 = v29;
    v143 = a4;
    v148 = a6;
    v49 = &unk_2A23F9DE8;
    *&v155 = &unk_2A23F9DE8;
    *(&v155 + 1) = &v148;
    *(&v156 + 1) = &v155;
    v50 = *(a3 + 688);
    v51 = *(a3 + 696);
    if (v50 == v51)
    {
      v58 = &v155;
      a4 = v143;
      v29 = v131;
    }

    else
    {
      v52 = 0;
      do
      {
        LODWORD(v147) = *v50;
        if (!*(&v156 + 1))
        {
LABEL_121:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v54 = (*(**(&v156 + 1) + 48))(*(&v156 + 1), &v147);
        v55 = *(v50 + 8);
        v56 = *(v50 + 16);
        if (v55 == v56)
        {
          v53 = v52;
        }

        else
        {
          do
          {
            v57 = *v55++;
            v53 = (v52 + 1);
            *(v27 + 8 * v52) = *(v54 + 8 * v57);
            LODWORD(v52) = v52 + 1;
          }

          while (v55 != v56);
        }

        v50 += 32;
        v52 = v53;
      }

      while (v50 != v51);
      v58 = *(&v156 + 1);
      if (*(&v156 + 1) != &v155)
      {
        v11 = a8;
        a4 = v143;
        v29 = v131;
        if (*(&v156 + 1))
        {
          (*(**(&v156 + 1) + 40))(*(&v156 + 1));
        }

LABEL_55:
        v28 = v135;
        a5 = 0;
        v30 = v133;
        v33 = v130;
        v38 = v128;
        v39 = v129;
        if (!*(a3 + 1160))
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      v49 = **(&v156 + 1);
      v11 = a8;
      a4 = v143;
      v29 = v131;
    }

    v49[4](v58);
    goto LABEL_55;
  }

LABEL_105:
  v148 = 0;
  v102 = &v29[v30];
  v157 = v152;
  v158 = v153;
  v159 = v154;
  v155 = v150;
  v156 = v151;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitUscStateLoad<LdShdrTransformFragment<AGX::HAL300::Encoders>>(*(a3 + 2392), v29, &v148, v28, a5, a6, &v155);
  v103 = *a1;
  if (*a1)
  {
    v104 = v148;
    v105 = *(a3 + 2800);
    LODWORD(v106) = *(v103 + 2);
    v107 = v106 + 1;
    if (*(v103 + 3) >= (v106 + 1))
    {
      v111 = *v103;
    }

    else
    {
      v145 = a4;
      v108 = v11;
      v109 = -__clz(v106);
      v110 = malloc_type_malloc(40 << (v109 & 0x1F), 0x10800400D7C94D2uLL);
      v111 = v110;
      v112 = 1 << v109;
      v106 = *(v103 + 2);
      if (v106)
      {
        memcpy(v110, *v103, 40 * v106);
        free(*v103);
        LODWORD(v106) = *(v103 + 2);
      }

      *(v103 + 3) = v112;
      *v103 = v111;
      v11 = v108;
      a4 = v145;
    }

    v113 = &v111[40 * v106];
    *v113 = 1;
    *(v113 + 1) = v102;
    *(v113 + 2) = v29;
    *(v113 + 3) = (v104 - v29);
    *(v113 + 8) = v105;
    *(v103 + 2) = v107;
  }

  v114 = *(*a4 + 3752);
  v115 = *(*a4 + 3764);
  v116 = *(*a4 + 3776);
  v117 = (v102 >> 16) & 0xFFC00000 | *(*a4 + 3768) & 0x3FFFFF;
  v118 = vand_s8(*(*a4 + 3756), 0x3FFFF0000);
  v119 = a4[463];
  if (v119)
  {
    v120 = v119 + 8 * v11;
  }

  else
  {
    v120 = *(*a4 + 3824) + 8 * v11;
  }

  v121.i32[0] = *(v120 + 36);
  v121.i32[1] = *(v120 + 32);
  result = vorr_s8(v118, vand_s8(v121, 0xFFFFFFFC0000FFFFLL));
  v122 = *(a2 + 1008);
  v123 = *(a2 + 1024) + v122;
  *(a2 + 1008) = v122 + 28;
  *v122 = v114;
  *(v122 + 4) = result;
  *(v122 + 12) = v115;
  *(v122 + 16) = v117;
  *(v122 + 20) = v102 >> 6;
  *(v122 + 24) = v116;
  v124 = *(a2 + 48);
  *v124 = __ROR8__(v123, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  *(a2 + 48) = v124 + 1;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9E30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9FE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9F98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}