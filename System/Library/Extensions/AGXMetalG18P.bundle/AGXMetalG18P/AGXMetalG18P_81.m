uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkSpill(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  if (a2[949])
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = a2[751];
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 30104, a2[324], a2[327], a2[331], v10, 0, a4, a5, a6, a7, a8))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 30104, *(*(a1 + 8) + 30328) + 320, 1);
  }

  result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 30104, a3[324], a3[327], a3[331], a3[751], 0, v11, v12, v13, v14, v15);
  if (result)
  {
    v17 = *(a1 + 8);
    v18 = *(v17 + 30328) + 320;

    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v17 + 30104, v18, 1);
  }

  return result;
}

void sub_29CECDF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29CECE100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffers(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v9 = a2;
  v10 = result;
  v11 = (result + 78096);
  if (a5 && *(result + 1896))
  {
    v12 = a5;
    v13 = a2;
    do
    {
      if (*v13)
      {
        result = MTLResourceListAddResource();
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a5)
  {
    v14 = v10 + 6136;
    v15 = v10 + 6592;
    v16 = v10 + 6662;
    v17 = v10 + 6138;
    v18 = MEMORY[0x29EDC5638];
    result = a6;
    v19 = a4;
    v20 = a5;
    while (1)
    {
      if (a4 <= 0x22)
      {
        v10[a4 + 6732] = 0;
      }

      v21 = *v9;
      if (*v9)
      {
        break;
      }

      v17[v19] = 0;
      if (v19 >= 0x1F)
      {
        v50 = v10[6137] + 8 * (v19 - 31);
        *(v50 + 40) = 0;
        *(v50 + 352) = 0;
        v15[v19] = 0;
        v16[v19] = 0;
        if (a6)
        {
LABEL_33:
          v49 = *result;
          if (v19 > 0x1E)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v31 = *v14;
        v32 = v19;
        v33 = (*v14 + v32 * 8);
        *v33 = 0;
        v15[v32] = 0;
        v33[31] = 0;
        v16[v32] = 0;
        *(v31 + 4 * v19 + 17516) = 0;
        v33[2205] = 0;
        if (a6)
        {
          goto LABEL_33;
        }
      }

LABEL_36:
      v49 = 0;
      if (v19 > 0x1E)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(*v14 + 4 * v19 + 17392) = v49;
LABEL_10:
      ++v19;
      result += 8;
      ++a3;
      ++v9;
      if (!--v20)
      {
        goto LABEL_44;
      }
    }

    v22 = v21 + *v18;
    v23 = *(v22 + 8);
    v26 = v22 + 16;
    v24 = *(v22 + 16);
    v25 = *(v26 + 8);
    v27 = *a3;
    v28 = *a3 + v23;
    if (v19 > 0x1E)
    {
      v34 = v10[6137] + 8 * (v19 - 31);
      *(v34 + 40) = v28;
      v30 = (v34 + 352);
    }

    else
    {
      v29 = (*v14 + 8 * v19);
      *v29 = v28;
      v30 = v29 + 31;
    }

    *v30 = v25 + v27;
    v15[v19] = v23;
    v16[v19] = v25;
    if (a4 <= 0x1E)
    {
      v35 = *v14;
      *(*v14 + 4 * a4 + 17516) = v24;
      v36 = (v35 + 8 * a4 + 17640);
      *v36 = v24;
      v36[1] = v23 >> 8;
    }

    v17[v19] = v21 + *v18;
    v37 = v10[251];
    v38 = v37[2].i64[1];
    if (*(v38 + 480) == 1)
    {
      v39 = v37[3];
      v40 = v37[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v39), vceqzq_s64(v40))))))
      {
        v41 = v21 + *v18;
        if ((*(v41 + 23) & 0x10) != 0)
        {
          v41 = *v41;
        }

        v42 = *v41;
        if (!v42)
        {
          goto LABEL_31;
        }

        v43 = *(v42 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v42), vceqzq_s64(v43))))))
        {
          v44 = vandq_s8(v43, v40);
          v45 = v44.u64[1];
          if (v44.i64[1])
          {
            v46 = 3;
          }

          else
          {
            v45 = v44.i64[0];
            if (v44.i64[0])
            {
              v46 = 2;
            }

            else
            {
              v51 = vandq_s8(*v42, v39);
              v45 = v51.u64[1];
              if (v51.i64[1])
              {
                v46 = 1;
              }

              else
              {
                v46 = 0;
                v42 = 0;
                v47 = 0;
                v45 = v51.i64[0];
                if (!v51.i64[0])
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v52 = &v37->i8[8 * v46];
          v53 = __clz(v45) ^ 0x3F;
          v42 = (*(v52 + 10) >> v53) & 1;
          v47 = (*(v52 + 14) >> v53) & 1;
LABEL_32:
          v48 = (v38 + 8 * (v19 > 0x3F));
          *v48 = *v48 & ~(1 << v19) | (v42 << v19);
          v48[20] = v48[20] & ~(1 << v19) | (v47 << v19);
          v48[40] &= ~(1 << v19);
          if (a6)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }
    }

    v42 = 0;
LABEL_31:
    v47 = 0;
    goto LABEL_32;
  }

LABEL_44:
  v54 = a5 + a4;
  v55 = -1 << (a5 + a4);
  if (a5 + a4 == 128)
  {
    v56 = -1;
  }

  else
  {
    v56 = ~(-1 << (a5 + a4));
  }

  if (v54 < 0x40)
  {
    v57 = ~v55;
  }

  else
  {
    v57 = -1;
  }

  if (v54 < 0x40)
  {
    v56 = 0;
  }

  v58 = -1 << a4;
  if (a4 >= 0x40)
  {
    v58 = 0;
  }

  v59 = *v11 | v57 & v58;
  v60 = -1 << a4;
  if (a4 < 0x40)
  {
    v60 = -1;
  }

  v61 = v11[1] | v56 & v60;
  *v11 = v59;
  v11[1] = v61;
  if (v54 == 128)
  {
    v62 = -1;
  }

  else
  {
    v62 = ~(-1 << v54);
  }

  v63 = v54 >= 0x40;
  if (v54 < 0x40)
  {
    v64 = ~v55;
  }

  else
  {
    v64 = -1;
  }

  if (!v63)
  {
    v62 = 0;
  }

  v65 = v11[7] | v62 & v60;
  v11[6] |= v64 & v58;
  v11[7] = v65;
  v11[48] |= 0xC0uLL;
  return result;
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v7 = result;
  v8 = result + 6136;
  v9 = &result[a4];
  if (a4 <= 0x22)
  {
    v9[6732] = 0;
  }

  if (!a2)
  {
    v16 = a4;
    v9[6138] = 0;
    if (a4 >= 0x1F)
    {
      v36 = result[6137] + 8 * (a4 - 31);
      *(v36 + 40) = 0;
      *(v36 + 352) = 0;
      v37 = &result[a4];
      v37[6592] = 0;
      v37[6662] = 0;
      goto LABEL_25;
    }

    v20 = *v8;
    v21 = (*v8 + 8 * a4);
    *v21 = 0;
    v22 = &result[a4];
    v22[6592] = 0;
    v21[31] = 0;
    v22[6662] = 0;
    *(v20 + 4 * a4 + 17516) = 0;
    v21[2205] = 0;
    goto LABEL_23;
  }

  v10 = MEMORY[0x29EDC5638];
  v11 = a2 + *MEMORY[0x29EDC5638];
  v12 = *(v11 + 8);
  v15 = v11 + 16;
  v13 = *(v11 + 16);
  v14 = *(v15 + 8);
  v9[6592] = v12;
  v16 = a4;
  v9[6662] = v14;
  v17 = v12 + a3;
  if (a4 >= 0x1F)
  {
    v23 = result[6137] + 8 * (a4 - 31);
    *(v23 + 40) = v17;
    *(v23 + 352) = v14 + a3;
  }

  else
  {
    v18 = *v8;
    v19 = *v8 + 8 * a4;
    *v19 = v17;
    *(v18 + 4 * a4 + 17516) = v13;
    *(v19 + 248) = v14 + a3;
    *(v19 + 17640) = v13;
    *(v19 + 17644) = v12 >> 8;
  }

  result[a4 + 6138] = a2 + *v10;
  v24 = result[251];
  v25 = v24[2].i64[1];
  if (*(v25 + 480) != 1)
  {
    goto LABEL_17;
  }

  v26 = v24[3];
  v27 = v24[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v26), vceqzq_s64(v27))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v28 = a2 + *v10;
  if ((*(v28 + 23) & 0x10) != 0)
  {
    v28 = *v28;
  }

  v29 = *v28;
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = *(v29 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v29), vceqzq_s64(v30))))) & 1) == 0)
  {
LABEL_17:
    v29 = 0;
LABEL_18:
    v34 = 0;
    goto LABEL_19;
  }

  v31 = vandq_s8(v30, v27);
  v32 = v31.u64[1];
  if (v31.i64[1])
  {
    v33 = 3;
  }

  else
  {
    v32 = v31.i64[0];
    if (v31.i64[0])
    {
      v33 = 2;
    }

    else
    {
      v39 = vandq_s8(*v29, v26);
      v32 = v39.u64[1];
      if (v39.i64[1])
      {
        v33 = 1;
      }

      else
      {
        v33 = 0;
        v29 = 0;
        v34 = 0;
        v32 = v39.i64[0];
        if (!v39.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v40 = &v24->i8[8 * v33];
  v41 = __clz(v32) ^ 0x3F;
  v29 = (*(v40 + 10) >> v41) & 1;
  v34 = (*(v40 + 14) >> v41) & 1;
LABEL_19:
  v35 = (v25 + 8 * (a4 > 0x3F));
  *v35 = *v35 & ~(1 << a4) | (v29 << a4);
  v35[20] = v35[20] & ~(1 << a4) | (v34 << a4);
  v35[40] &= ~(1 << a4);
  result = result[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (a4 <= 0x1E)
  {
    v20 = *v8;
LABEL_23:
    *(v20 + 4 * v16 + 17392) = a5;
  }

LABEL_25:
  v38 = &v7[a4 > 0x3F];
  v38[9762] |= 1 << a4;
  v38[9768] |= 1 << a4;
  v7[9810] |= 0xC0uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setRenderPipelineStateCommon(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 30352);
  if (v2 == a2)
  {
    return;
  }

  v5 = (a1 + 26600);
  *(a1 + 30352) = a2;
  if (*(a1 + 28060) == 1)
  {
    *(a1 + 28064) = *(a1 + 28056) != *(a2 + 792);
  }

  v6 = (a1 + 78096);
  if (*(a2 + 796) == 1)
  {
    *(a1 + 28056) = *(a2 + 792);
    *(a1 + 28060) = 1;
  }

  v7 = (a1 + 73040);
  v8 = *a2;
  if (v2)
  {
    v9 = *(v2 + 3696);
    v11 = v9 && (v10 = *(a2 + 3696)) != 0 && memcmp((v9 + 256), (v10 + 256), 0x80uLL) != 0;
  }

  else
  {
    v11 = 1;
  }

  v362 = a1 + 49096;
  *(a1 + 79392) |= v11;
  v12 = MEMORY[0x29EDC56B0];
  if (*(a2 + 16))
  {
    v13 = *(a1 + 27960);
    if (!v13)
    {
      goto LABEL_75;
    }

    v14 = *(a2 + 32);
    if (!v14)
    {
      v13[4] = 0;
      v13[5] = 0;
      *(v13[1] + 78480) &= 0xFFFFFFF01C07FFCFLL;
      goto LABEL_75;
    }

    v15 = *(a2 + 24);
    v16 = v13[4];
    v17 = **MEMORY[0x29EDC56B0];
    if (v16 != v15)
    {
      v13[4] = v15;
      if (v15)
      {
        v18 = v13[1];
        v19 = v18 + 4864;
        v20 = v18[1895].i64[1];
        *(v20 + 578) |= v15[84].u8[10];
        *(v20 + 584) |= *(a2 + 908) != 0;
        v21 = v19[41].i64[0] & 0xFFFFFFFFFC06FFFFLL | v15[170].i64[0];
        v22 = v21 | 0x14;
        v19[41].i64[0] = v21 | 0x14;
        v23 = v15[150];
        v24 = v15[85];
        v25 = v15[151];
        v26 = v15[86];
        if (v16)
        {
          v23 = vbicq_s8(v23, v16[150]);
          v24 = vbicq_s8(v24, v16[85]);
          v25 = vbicq_s8(v25, v16[151]);
          v26 = vbicq_s8(v26, v16[86]);
        }

        v27 = vorrq_s8(v23, v24);
        v28 = vorrq_s8(v25, v26);
        v29 = vorrq_s8(v19[27], v28);
        v19[26] = vorrq_s8(vandq_s8(v19[26], xmmword_29D2F2540), v27);
        v19[27] = v29;
        v30 = vorrq_s8(vzip1q_s64(v27, v28), vzip2q_s64(v27, v28));
        v31 = vmovn_s64(vtstq_s64(v30, v30));
        if ((v31.i32[0] | v31.i32[1]))
        {
          v32 = v21 | 0x20014;
          if ((v31.i8[0] & 1) == 0)
          {
            v32 = v22;
          }

          if (v31.i8[4])
          {
            v32 |= 0x40000uLL;
          }

          v19[41].i64[0] = v32;
        }

        if (*(a2 + 790) == 1)
        {
          v33 = *(a2 + 1968);
          if (v33)
          {
            v34 = v12;
            AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBuffer(v13, v33, 0, 0x3Bu);
            v12 = v34;
          }
        }

        if (v17)
        {
          v226 = v12;
          if ((*(v13[4] + 2400) & *(v13[4] + 2432) & ~*(v13[4] + 2096)) != 0 && **v12)
          {
            IOGPUDeviceTraceEvent();
          }

          v12 = v226;
          if (*(a2 + 2056) + *(a2 + 2020) && **v226)
          {
            IOGPUDeviceTraceEvent();
            v12 = v226;
          }
        }
      }
    }

    v35 = v13[5];
    v36 = **v12;
    if (v35 != v14)
    {
      v37 = v13[1];
      if ((*(v37 + 78488) & 4) != 0 && *(*(v37 + 30352) + 744) >= 2u)
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexAmplificationCount(v37, 1u, (v37 + 78592));
        v12 = MEMORY[0x29EDC56B0];
        v37 = v13[1];
        *(v37 + 78488) &= ~4u;
        v35 = v13[5];
      }

      v13[5] = v14;
      *(*(v37 + 30328) + 578) |= v14[84].u8[10];
      v38 = v14[242].u64[1];
      v39 = v14[243].i32[0];
      v40 = HIDWORD(v38);
      LODWORD(v38) = *(v37 + 28688) & 0xF0E3FF00 | v38 & 0xF1C00FF;
      *(v37 + 28696) = *(v37 + 28696) & 0xFFFFFFF8 | (*(v37 + 30080) - 1) & 7;
      *(v37 + 28700) = v40;
      *(v37 + 28688) = v38;
      *(v37 + 28692) = v39;
      *(v37 + 78480) |= 4uLL;
      v41 = v13[5338];
      *(v41 + 664) = 4 * v14[251].i32[2];
      v42 = v13[1];
      v43 = v42[4905].i64[0] & 0xFFFFFFF01BFFFFFFLL | v14[170].i64[0];
      v44 = v43 | 0x24;
      v42[4905].i64[0] = v43 | 0x24;
      v45 = v14[150];
      v46 = v14[85];
      v47 = v14[151];
      v48 = v14[86];
      if (v35)
      {
        v45 = vbicq_s8(v45, v35[150]);
        v46 = vbicq_s8(v46, v35[85]);
        v47 = vbicq_s8(v47, v35[151]);
        v48 = vbicq_s8(v48, v35[86]);
      }

      v49 = vorrq_s8(v45, v46);
      v50 = vorrq_s8(v47, v48);
      v51 = vorrq_s8(v42[4897], v50);
      v42[4896] = vorrq_s8(vandq_s8(v42[4896], xmmword_29D2F2540), v49);
      v42[4897] = v51;
      v52 = vorrq_s8(vzip1q_s64(v49, v50), vzip2q_s64(v49, v50));
      v53 = vmovn_s64(vtstq_s64(v52, v52));
      if ((v53.i32[0] | v53.i32[1]))
      {
        v54 = v43 | 0x8000024;
        if ((v53.i8[0] & 1) == 0)
        {
          v54 = v44;
        }

        if (v53.i8[4])
        {
          v55 = v54 | 0x10000000;
        }

        else
        {
          v55 = v54;
        }

        v42[4905].i64[0] = v55;
      }

      if (*(a2 + 790) == 1)
      {
        v56 = *(a2 + 2280);
        if (v56)
        {
          v57 = *(v56 + 48);
          *(v41 + 264) = *(v56 + 56);
          v13[5398] = v57;
          v58 = *(v56 + 80);
          v42[4893].i64[0] |= v58 << 59;
          v42[4896].i64[0] |= 0x800000000000000uLL;
          v282 = (v58 & 1) == 0;
          v59 = 0x4000000;
          if (!v282)
          {
            v59 = 201326592;
          }

          v42[4905].i64[0] |= v59;
        }
      }

      if (v36)
      {
        v225 = v12;
        if ((*(v13[5] + 2400) & *(v13[5] + 2432) & ~*(v13[5] + 2096)) != 0 && **v12)
        {
          IOGPUDeviceTraceEvent();
        }

        v7 = (a1 + 73040);
        v12 = v225;
        if (*(a2 + 2368) + *(a2 + 2332) && **v225)
        {
          IOGPUDeviceTraceEvent();
          v12 = v225;
        }
      }
    }

    v60 = *(a2 + 3576);
    if (v60)
    {
      v215 = v12;
      v216 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v13[1] + 30104), v60);
      v12 = v215;
      v61 = v216;
      v62 = *(a2 + 3592);
      if (!v62)
      {
LABEL_50:
        if (v61)
        {
LABEL_51:
          v63 = v13[1];
          v64 = v12;
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v63 + 30104, *(v63 + 30328) + 320, 1);
          v12 = v64;
        }

LABEL_75:
        *(a1 + 30336) = 0u;
        v5[129].i32[1] = v5[129].i32[1] & 0x199FFFFF | 0x200000;
        v5[130].i32[0] &= 0xFFFE0000;
        *(a1 + 28672) |= 0xC0000000C00000uLL;
        v5[130].i32[2] &= 0xFF1EFFFF;
        v89 = *(a1 + 30352);
        v5->i32[0] = *(v89 + 728);
        v90 = *(v89 + 1708);
        v91 = *(v89 + 1744);
        v92 = *(a1 + 26656);
        v93 = *(a1 + 26664);
        v94 = *(v92[3].i64[1] + 7092);
        v92[3].i32[1] = 5;
        v95 = v93[1];
        v96 = v93[2];
        v97 = *(v89 + 72);
        v98 = *v93;
        v99.i64[0] = *(v89 + 88);
        v100 = *(v93 + 3);
        v101 = v93[5];
        v102 = v92[4].i32[2];
        v103 = v92[6].i32[0];
        v104 = v92[5].i32[0];
        v105 = v95 + *(v89 + 76);
        v106 = __OFSUB__(v105, v103);
        v107 = v105 - v103;
        if ((v107 < 0) ^ v106 | (v107 == 0))
        {
          v107 = 0;
        }

        v108.i64[0] = v100;
        v108.i64[1] = *(v89 + 88);
        v109 = vaddvq_s32(v108);
        v110 = ((v104 + v101 + (v107 + v95) * v102 + v109 + (*(v89 + 84) + *(v89 + 80) + v96) * v92[4].i32[3] + 64) * v94 + 7) & 0xFFFFFFF8;
        v111 = *v92;
        v99.i64[1] = v100;
        *v92 = vmaxq_s32(*v92, v99);
        v112.i64[0] = v92[1].i64[0];
        v113.i32[0] = v101;
        *v92[1].i8 = vmax_s32(*v112.i8, __PAIR64__(v110, v101));
        *(a1 + 78480) = *(a1 + 78480) & 0xFFFFE07FFFFF01F8 | 0x100000000004;
        v114 = *(a1 + 30328);
        *(a1 + 26616) = *(v89 + 16);
        *(a1 + 26592) = v89 + 96;
        *(a1 + 26624) = *(v89 + 1656);
        *(a1 + 26632) = *(v89 + 1672);
        *(a1 + 26640) = v89;
        v115 = v98 + v97;
        v116 = v115 - v103;
        if (v115 <= v103)
        {
          v116 = 0;
        }

        v117 = ((v109 + v116 * v102 + v104 + v101 + 64) * v94 + 7) & 0xFFFFFFF8;
        v118 = v92[1].i32[2];
        if (v118 <= v117)
        {
          v119 = v117;
        }

        else
        {
          v119 = v92[1].i32[2];
        }

        v120 = v92[2].i32[0];
        v112.i64[1] = __PAIR64__(v120, v118);
        v113.i32[1] = v110;
        v113.i64[1] = __PAIR64__(v115, v117);
        v92[1].i32[2] = v119;
        if (v120 <= v115)
        {
          v121 = v115;
        }

        else
        {
          v121 = v120;
        }

        v92[2].i32[0] = v121;
        if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v99, v111), vcgtq_s32(v113, v112)))))
        {
          v211 = v12;
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 26656), v114 + 1360, 0);
          v12 = v211;
        }

        v122 = *(*(a1 + 26640) + 3560);
        if (v122)
        {
          v212 = v12;
          v213 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(*(a1 + 26656), v122);
          v12 = v212;
          if (v213)
          {
            AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 26656), v114 + 1360, 0);
            v12 = v212;
          }
        }

        v123 = *(a1 + 26608);
        v124 = *(v89 + 1704);
        if (*(v123 + 232) > v124)
        {
          v124 = *(v123 + 232);
        }

        *(v123 + 232) = v124;
        if (**v12)
        {
          v214 = v91 + v90;
          if ((*(*(a1 + 26616) + 2400) & *(*(a1 + 26616) + 2432) & ~*(*(a1 + 26616) + 2096)) != 0 && **v12)
          {
            v342 = v12;
            IOGPUDeviceTraceEvent();
            v12 = v342;
          }

          if (v214 && **v12)
          {
            IOGPUDeviceTraceEvent();
          }
        }

        v125 = *(a1 + 30352);
        *(a1 + 78552) |= *(*(v125 + 16) + 1354);
        *(*(a1 + 30328) + 2060) |= *(v125 + 1881);
        goto LABEL_274;
      }
    }

    else
    {
      v61 = 0;
      v62 = *(a2 + 3592);
      if (!v62)
      {
        goto LABEL_50;
      }
    }

    v217 = v12;
    v218 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v13[1] + 30104), v62);
    v12 = v217;
    if (((v61 | v218) & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_51;
  }

  v360 = a1 + 73040;
  v361 = v8;
  v65 = *(a2 + 32);
  if (v65)
  {
    *(a1 + 30336) = 0;
    *(a1 + 78480) &= 0xFFFFFFFFFFFF01FELL;
    v66 = *(a1 + 27960);
    if (v66)
    {
      v67 = a2;
    }

    else
    {
      v219 = v11;
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(a1 + 27992));
      v66 = v220;
      *(a1 + 27960) = v220;
      v67 = *(a1 + 30352);
      v65 = *(v67 + 32);
      if (!v65)
      {
        v86 = 0;
        v220[4] = 0;
        v220[5] = 0;
        *(v220[1] + 78480) &= 0xFFFFFFF01C07FFCFLL;
        v12 = MEMORY[0x29EDC56B0];
        v141 = v361;
        v11 = v219;
        goto LABEL_168;
      }

      v12 = MEMORY[0x29EDC56B0];
      v11 = v219;
    }

    v68 = *(v67 + 24);
    v69 = v66[4];
    v70 = **v12;
    if (v69 == v68 || (v66[4] = v68) == 0)
    {
      v86 = 0;
    }

    else
    {
      v71 = v66[1];
      v72 = v71 + 4864;
      v73 = v71[1895].i64[1];
      *(v73 + 578) |= v68[84].u8[10];
      *(v73 + 584) |= *(v67 + 908) != 0;
      v74 = v72[41].i64[0] & 0xFFFFFFFFFC06FFFFLL | v68[170].i64[0];
      v75 = v74 | 0x14;
      v72[41].i64[0] = v74 | 0x14;
      v76 = v68[150];
      v77 = v68[85];
      v78 = v68[151];
      v79 = v68[86];
      if (v69)
      {
        v76 = vbicq_s8(v76, v69[150]);
        v77 = vbicq_s8(v77, v69[85]);
        v78 = vbicq_s8(v78, v69[151]);
        v79 = vbicq_s8(v79, v69[86]);
      }

      v80 = vorrq_s8(v76, v77);
      v81 = vorrq_s8(v78, v79);
      v82 = vorrq_s8(v72[27], v81);
      v72[26] = vorrq_s8(vandq_s8(v72[26], xmmword_29D2F2540), v80);
      v72[27] = v82;
      v83 = vorrq_s8(vzip1q_s64(v80, v81), vzip2q_s64(v80, v81));
      v84 = vmovn_s64(vtstq_s64(v83, v83));
      if ((v84.i32[0] | v84.i32[1]))
      {
        v85 = v74 | 0x20014;
        if ((v84.i8[0] & 1) == 0)
        {
          v85 = v75;
        }

        if (v84.i8[4])
        {
          v85 |= 0x40000uLL;
        }

        v72[41].i64[0] = v85;
      }

      v86 = *(v67 + 732);
      if (*(v67 + 790) == 1)
      {
        v87 = *(v67 + 1968);
        if (v87)
        {
          v350 = v11;
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBuffer(v66, v87, 0, 0x3Bu);
          v11 = v350;
          v12 = MEMORY[0x29EDC56B0];
        }
      }

      if (v70)
      {
        v351 = v11;
        v88 = v12;
        if ((*(v66[4] + 2400) & *(v66[4] + 2432) & ~*(v66[4] + 2096)) != 0 && **v12)
        {
          IOGPUDeviceTraceEvent();
        }

        if (*(v67 + 2056) + *(v67 + 2020) && **v88)
        {
          IOGPUDeviceTraceEvent();
        }

        v12 = v88;
        v11 = v351;
      }
    }

    v126 = v66[5];
    v127 = **v12;
    if (v126 == v65)
    {
      v141 = v361;
    }

    else
    {
      v128 = v66 + 5120;
      v129 = v66[1];
      if ((*(v129 + 78488) & 4) != 0 && *(*(v129 + 30352) + 744) >= 2u)
      {
        v354 = v11;
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexAmplificationCount(v129, 1u, (v129 + 78592));
        v128 = v66 + 5120;
        v11 = v354;
        v12 = MEMORY[0x29EDC56B0];
        v129 = v66[1];
        *(v129 + 78488) &= ~4u;
        v126 = v66[5];
      }

      v66[5] = v65;
      *(*(v129 + 30328) + 578) |= v65[84].u8[10];
      v130 = v65[242].u64[1];
      v131 = v65[243].i32[0];
      v132 = HIDWORD(v130);
      LODWORD(v130) = *(v129 + 28688) & 0xF0E3FF00 | v130 & 0xF1C00FF;
      *(v129 + 28696) = *(v129 + 28696) & 0xFFFFFFF8 | (*(v129 + 30080) - 1) & 7;
      *(v129 + 28700) = v132;
      *(v129 + 28688) = v130;
      *(v129 + 28692) = v131;
      *(v129 + 78480) |= 4uLL;
      v133 = v128[218];
      *(v133 + 664) = 4 * v65[251].i32[2];
      v134 = v66[1];
      v135 = v134[4905].i64[0] & 0xFFFFFFF01BFFFFFFLL | v65[170].i64[0];
      v136 = v135 | 0x24;
      v134[4905].i64[0] = v135 | 0x24;
      v137 = v65[150];
      v138 = v65[85];
      v139 = v65[151];
      v140 = v65[86];
      if (v126)
      {
        v137 = vbicq_s8(v137, v126[150]);
        v138 = vbicq_s8(v138, v126[85]);
        v139 = vbicq_s8(v139, v126[151]);
        v140 = vbicq_s8(v140, v126[86]);
      }

      v141 = v361;
      v142 = vorrq_s8(v137, v138);
      v143 = vorrq_s8(v139, v140);
      v144 = vorrq_s8(v134[4897], v143);
      v134[4896] = vorrq_s8(vandq_s8(v134[4896], xmmword_29D2F2540), v142);
      v134[4897] = v144;
      v145 = vorrq_s8(vzip1q_s64(v142, v143), vzip2q_s64(v142, v143));
      v146 = vmovn_s64(vtstq_s64(v145, v145));
      if ((v146.i32[0] | v146.i32[1]))
      {
        v147 = v135 | 0x8000024;
        if ((v146.i8[0] & 1) == 0)
        {
          v147 = v136;
        }

        if (v146.i8[4])
        {
          v148 = v147 | 0x10000000;
        }

        else
        {
          v148 = v147;
        }

        v134[4905].i64[0] = v148;
      }

      v86 |= *(v67 + 736);
      if (*(v67 + 790) == 1)
      {
        v149 = *(v67 + 2280);
        if (v149)
        {
          v150 = *(v149 + 48);
          *(v133 + 264) = *(v149 + 56);
          v128[278] = v150;
          v151 = *(v149 + 80);
          v134[4893].i64[0] |= v151 << 59;
          v134[4896].i64[0] |= 0x800000000000000uLL;
          v282 = (v151 & 1) == 0;
          v152 = 0x4000000;
          if (!v282)
          {
            v152 = 201326592;
          }

          v134[4905].i64[0] |= v152;
        }
      }

      if (v127)
      {
        v352 = v11;
        v153 = v12;
        if ((*(v66[5] + 2400) & *(v66[5] + 2432) & ~*(v66[5] + 2096)) != 0 && **v12)
        {
          IOGPUDeviceTraceEvent();
        }

        if (*(v67 + 2368) + *(v67 + 2332) && **v153)
        {
          IOGPUDeviceTraceEvent();
        }

        v12 = v153;
        v141 = v361;
        v11 = v352;
      }
    }

    v202 = *(v67 + 3576);
    if (v202)
    {
      v221 = v11;
      v203 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v66[1] + 30104), v202);
      v11 = v221;
      v12 = MEMORY[0x29EDC56B0];
      v204 = *(v67 + 3592);
      if (!v204)
      {
LABEL_166:
        if ((v203 & 1) == 0)
        {
LABEL_168:
          v208 = *(a1 + 30352);
          if (*(v208 + 2193))
          {
            v209 = 1;
LABEL_211:
            *(*(a1 + 30328) + 587) |= v209;
            goto LABEL_212;
          }

          v210 = (v208 + 2505);
LABEL_210:
          v209 = *v210;
          goto LABEL_211;
        }

LABEL_167:
        v205 = v66[1];
        v206 = v11;
        v207 = v12;
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v205 + 30104, *(v205 + 30328) + 320, 1);
        v11 = v206;
        v12 = v207;
        goto LABEL_168;
      }
    }

    else
    {
      v203 = 0;
      v204 = *(v67 + 3592);
      if (!v204)
      {
        goto LABEL_166;
      }
    }

    v353 = v203;
    v222 = v12;
    v223 = v11;
    v224 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v66[1] + 30104), v204);
    v11 = v223;
    v12 = v222;
    if (((v353 | v224) & 1) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  v154 = *(a1 + 27960);
  if (v154)
  {
    v154[4] = 0;
    v154[5] = 0;
    *(v154[1] + 78480) &= 0xFFFFFFF01C07FFCFLL;
  }

  v155 = *(a2 + 8);
  v141 = v8;
  if (v155 && v155[266].i32[2])
  {
    v156 = v11;
    v157 = v12;
    *(a1 + 78176) |= 0x20uLL;
    *(a1 + 78480) |= 0x40uLL;
    v158 = *(a1 + 27752);
    if (!v158)
    {
      v158 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(a1 + 27784));
      *(a1 + 27752) = v158;
    }

    (*(*v158 + 48))(v158, *(a1 + 30352));
    v12 = v157;
    v11 = v156;
  }

  v159 = *(a1 + 30336);
  v160 = **v12;
  if (v159 != v155)
  {
    if ((*(a1 + 78488) & 4) != 0 && *(*(a1 + 30352) + 744) >= 2u)
    {
      v358 = v11;
      v230 = v12;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexAmplificationCount(a1, 1u, (a1 + 78592));
      v11 = v358;
      v12 = v230;
      *(a1 + 78488) &= ~4u;
      v159 = *(a1 + 30336);
      *(a1 + 30336) = v155;
      if (v155)
      {
LABEL_129:
        v161 = *(a1 + 30328);
        *(v161 + 575) |= v155[84].u8[5];
        *(v161 + 578) |= v155[84].u8[10];
        v162 = v155[257].i64[0];
        LOBYTE(v161) = v5[217].i32[2];
        v5[130].i32[2] = v5[130].i32[2] & 0xF0E3FF00 | v162 & 0xF1C00FF;
        v5[131].i32[0] = v5[131].i32[0] & 0xFFFFFFF8 | (v161 - 1) & 7;
        v5[131].i32[1] = HIDWORD(v162);
        v5[130].i32[3] = 0;
        v163 = *(a1 + 78480) & 0xFFFFFFFFFFFF01BBLL | v155[170].i64[0];
        v164 = v163 | 5;
        *(a1 + 78480) = v163 | 5;
        v165 = v155[150];
        v166 = v155[85];
        v167 = v155[151];
        v168 = v155[86];
        if (v159)
        {
          v165 = vbicq_s8(v165, v159[150]);
          v166 = vbicq_s8(v166, v159[85]);
          v167 = vbicq_s8(v167, v159[151]);
          v168 = vbicq_s8(v168, v159[86]);
        }

        v169 = vorrq_s8(v165, v166);
        v170 = vorrq_s8(v167, v168);
        v171 = vorrq_s8(*(a1 + 78160), v170);
        *(a1 + 78144) = vorrq_s8(vandq_s8(*(a1 + 78144), xmmword_29D2F2540), v169);
        *(a1 + 78160) = v171;
        v172 = vorrq_s8(vzip1q_s64(v169, v170), vzip2q_s64(v169, v170));
        v173 = vmovn_s64(vtstq_s64(v172, v172));
        if ((v173.i32[0] | v173.i32[1]))
        {
          v174 = v163 | 0x85;
          if ((v173.i8[0] & 1) == 0)
          {
            v174 = v164;
          }

          if (v173.i8[4])
          {
            v175 = v174 | 0x100;
          }

          else
          {
            v175 = v174;
          }

          *(a1 + 78480) = v175;
        }

        v176 = *(a1 + 30352);
        v86 = *(v176 + 724);
        v177 = *(v176 + 1084);
        v178 = *(v176 + 1120);
        v5[222].i32[1] = 1;
        v179 = v5[219];
        v180.i64[0] = *(a1 + 30120);
        v181 = v5[220].i32[2];
        v182 = v5[221].i32[0];
        v183 = *(v176 + 40);
        v184 = v179.i32[0];
        if (v179.i32[0] <= v183)
        {
          v184 = *(v176 + 40);
        }

        v5[219].i32[0] = v184;
        v185 = *(v176 + 44);
        v186 = v179.i32[1];
        if (v179.i32[1] <= v185)
        {
          v186 = *(v176 + 44);
        }

        v5[219].i32[1] = v186;
        v187 = *(v176 + 48);
        v188 = v179.i32[2];
        if (v179.i32[2] <= v187)
        {
          v188 = *(v176 + 48);
        }

        v5[219].i32[2] = v188;
        v189 = *(v176 + 52);
        v190 = v179.i32[3];
        if (v179.i32[3] <= v189)
        {
          v190 = *(v176 + 52);
        }

        v5[219].i32[3] = v190;
        v191 = *(v176 + 56);
        v192 = v180.i32[0];
        if (v180.i32[0] <= v191)
        {
          v192 = *(v176 + 56);
        }

        v5[220].i32[0] = v192;
        v193 = *(v176 + 60);
        v194 = v180.i32[1];
        if (v180.i32[1] <= v193)
        {
          v194 = *(v176 + 60);
        }

        v5[220].i32[1] = v194;
        v195 = *(v176 + 64);
        v180.i64[1] = __PAIR64__(v182, v181);
        if (v181 <= v195)
        {
          v181 = *(v176 + 64);
        }

        v196.i64[0] = __PAIR64__(v185, v183);
        v196.i64[1] = __PAIR64__(v189, v187);
        v5[220].i32[2] = v181;
        v197.i64[0] = __PAIR64__(v193, v191);
        v198 = *(v176 + 68);
        v197.i64[1] = __PAIR64__(v198, v195);
        v199 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgtq_s32(v196, v179), vcgtq_s32(v197, v180)), xmmword_29D2F24C0));
        if (v182 <= v198)
        {
          v182 = *(v176 + 68);
        }

        v5[221].i32[0] = v182;
        v200 = *(v176 + 3528);
        if (v200)
        {
          v355 = v11;
          v348 = v177;
          v201 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(v5 + 219, v200);
          v177 = v348;
          v11 = v355;
          v12 = MEMORY[0x29EDC56B0];
          if (v199)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v201 = 0;
          if (v199)
          {
            goto LABEL_200;
          }
        }

        if (!v201)
        {
          if (!v160)
          {
            goto LABEL_158;
          }

          goto LABEL_201;
        }

LABEL_200:
        v356 = v11;
        v227 = v177;
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v5[219].i64, *(a1 + 30328) + 320, 1);
        v177 = v227;
        v11 = v356;
        v12 = MEMORY[0x29EDC56B0];
        *(a1 + 79464) |= 0x4000000000000uLL;
        if (!v160)
        {
LABEL_158:
          {
            v343 = v12;
            v344 = v11;
            v11 = v344;
            v12 = v343;
            if (v345)
            {
              AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::brk_handler_end_of_shader_alloc = 0;
              v11 = v344;
              v12 = v343;
            }
          }

          v141 = v361;
          if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::brk_handler_end_of_shader_alloc == 1)
          {
            {
              v346 = v11;
              v11 = v346;
              v12 = MEMORY[0x29EDC56B0];
              if (v347)
              {
                AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space = 0;
                v11 = v346;
                v12 = MEMORY[0x29EDC56B0];
              }
            }

            if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space)
            {
              *(*(a1 + 30328) + 160) = (v155[95].i64[1] - AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space + v155[114].i64[0] + 4095) & 0xFFFFFFFFFFFFF000;
            }
          }

          goto LABEL_209;
        }

LABEL_201:
        v357 = v11;
        v228 = v12;
        v229 = v178 + v177;
        if ((*(*(a1 + 30336) + 2400) & *(*(a1 + 30336) + 2432) & ~*(*(a1 + 30336) + 2096)) != 0 && **v12)
        {
          IOGPUDeviceTraceEvent();
        }

        v12 = v228;
        v11 = v357;
        if (v229 && **v228)
        {
          IOGPUDeviceTraceEvent();
          v11 = v357;
          v12 = v228;
        }

        goto LABEL_158;
      }
    }

    else
    {
      *(a1 + 30336) = v155;
      if (v155)
      {
        goto LABEL_129;
      }
    }

    v86 = 0;
LABEL_209:
    v210 = (*(a1 + 30352) + 1257);
    goto LABEL_210;
  }

  v86 = 0;
LABEL_212:
  v231 = *(a1 + 30344);
  v232 = v231 != v141 || v11;
  *(a1 + 79392) |= v232;
  v233 = **v12;
  if (v232 == 1)
  {
    *(a1 + 30344) = v141;
    if (v141)
    {
      v234 = *(a1 + 30328);
      *(v234 + 1608) |= *(v141 + 1349);
      *(a1 + 78552) |= *(v141 + 1354);
      *(v234 + 1616) |= *(v141 + 3924);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVirtualMapping(a1, 0, 1);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderISPState(a1, v141);
      v5[130].i32[2] = v5[130].i32[2] & 0xFF1EFFFF | *(v141 + 3848) & 0xE10000;
      v235 = *(a1 + 78480) & 0xFFFFF06FFFFFFFFBLL | *(v141 + 2720);
      v236 = v235 | 0x100000000006;
      *(a1 + 78480) = v235 | 0x100000000006;
      v237 = *(v141 + 2400);
      v238 = *(v141 + 1360);
      v239 = *(v141 + 2416);
      v240 = *(v141 + 1376);
      if (v231)
      {
        v237 = vbicq_s8(v237, v231[150]);
        v238 = vbicq_s8(v238, v231[85]);
        v239 = vbicq_s8(v239, v231[151]);
        v240 = vbicq_s8(v240, v231[86]);
      }

      v241 = vorrq_s8(v237, v238);
      v242 = vorrq_s8(v239, v240);
      v243 = vorrq_s8(*(a1 + 78448), v242);
      *(a1 + 78432) = vorrq_s8(vandq_s8(*(a1 + 78432), xmmword_29D2F2540), v241);
      *(a1 + 78448) = v243;
      v244 = vorrq_s8(vzip1q_s64(v241, v242), vzip2q_s64(v241, v242));
      v245 = vmovn_s64(vtstq_s64(v244, v244));
      if ((v245.i32[0] | v245.i32[1]))
      {
        v246 = v235 | 0x102000000006;
        if ((v245.i8[0] & 1) == 0)
        {
          v246 = v236;
        }

        if (v245.i8[4])
        {
          v246 |= 0x4000000000uLL;
        }

        *(a1 + 78480) = v246;
      }

      v247 = 0;
      v248 = *(a1 + 30352);
      v249 = *(v248 + 728);
      v250 = *(v248 + 1396);
      v251 = *(v248 + 1432);
      v252 = v5[230].i32[1];
      v253 = *(*(a1 + 30264) + 7092);
      v5[228].i32[3] = 2;
      v254 = *(v248 + 80);
      v255 = *(v248 + 84);
      v256 = *(a1 + 2404);
      v258 = *(v248 + 72);
      v257 = *(v248 + 76);
      v259.i64[0] = *(v248 + 88);
      v260 = *(a1 + 2420);
      v261 = v5[230].i32[0];
      v262 = v5[231].i32[2];
      v263 = v5[230].i32[2];
      v264 = v256 + v257;
      v106 = __OFSUB__(v264, v262);
      v265 = v264 - v262;
      if ((v265 < 0) ^ v106 | (v265 == 0))
      {
        v265 = 0;
      }

      v266 = v255 + v254 + *(a1 + 2408);
      v267.i64[0] = *(a1 + 2412);
      v267.i64[1] = v259.i64[0];
      v268 = vaddvq_s32(v267);
      v269 = ((v263 + v260 + (v265 + v256) * v261 + v268 + v266 * v252 + 64) * v253 + 7) & 0xFFFFFFF8;
      v270 = *(a1 + 30208);
      v259.i64[1] = *(a1 + 2412);
      *(a1 + 30208) = vmaxq_s32(v270, v259);
      v271.i32[0] = v260;
      v272.i64[0] = *(a1 + 30224);
      *(a1 + 30224) = vmax_s32(*v272.i8, __PAIR64__(v269, v260));
      v273 = *(a1 + 2400) + v258;
      v106 = __OFSUB__(v273, v262);
      v274 = v273 - v262;
      if ((v274 < 0) ^ v106 | (v274 == 0))
      {
        v274 = 0;
      }

      v275 = ((v268 + v274 * v261 + v263 + v260 + 64) * v253 + 7) & 0xFFFFFFF8;
      v276 = v5[227].i32[0];
      if (v276 <= v275)
      {
        v277 = v275;
      }

      else
      {
        v277 = v5[227].i32[0];
      }

      v5[227].i32[0] = v277;
      v278 = v5[227].i32[2];
      v272.i64[1] = __PAIR64__(v278, v276);
      v271.i32[1] = v269;
      v271.i64[1] = __PAIR64__(v273, v275);
      v279 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgtq_s32(v259, v270), vcgtq_s32(v271, v272)), xmmword_29D2F24C0));
      if (v278 <= v273)
      {
        v280 = v273;
      }

      else
      {
        v280 = v5[227].i32[2];
      }

      v5[227].i32[2] = v280;
      v281 = *(*(a1 + 30352) + 3544);
      if (v281)
      {
        v359 = v250;
        v349 = v251;
        v247 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 30208), v281);
        v251 = v349;
        v250 = v359;
      }

      if (v279)
      {
        v282 = 0;
      }

      else
      {
        v282 = v247 == 0;
      }

      if (!v282)
      {
        v340 = v250;
        v341 = v251;
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30208, *(a1 + 30328) + 1360, 0);
        v251 = v341;
        v250 = v340;
        *(a1 + 79464) |= 0x8000000000000uLL;
      }

      v283 = v361;
      v5[89].i8[9] |= *(v361 + 1360) != 0 || *(v361 + 1376) != 0;
      if (v233)
      {
        v335 = v251 + v250;
        v336 = *(a1 + 30344);
        v337 = v336[300] & v336[304] & ~v336[262];
        v338 = v336[301] & v336[305] & ~v336[263];
        v339 = *MEMORY[0x29EDC56B0];
        if (v337 | v338 && *v339)
        {
          IOGPUDeviceTraceEvent();
          v339 = *MEMORY[0x29EDC56B0];
        }

        if (v335 && *v339)
        {
          IOGPUDeviceTraceEvent();
          v339 = *MEMORY[0x29EDC56B0];
        }

        v283 = v361;
        if (*v339)
        {
          IOGPUDeviceTraceEvent();
        }
      }

      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::brk_handler_end_of_shader_alloc = 0;
      }

      v86 |= v249;
      if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::brk_handler_end_of_shader_alloc)
      {
        {
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space = 0;
        }

        v284 = *(a1 + 30328);
        if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space)
        {
          *(v284 + 1200) = (*(v283 + 1528) - AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space + *(v283 + 1824) + 4095) & 0xFFFFFFFFFFFFF000;
        }
      }

      else
      {
        v284 = *(a1 + 30328);
      }

      *(v284 + 1208) = v5[78].i32[2];
      *(v284 + 1216) = *(a1 + 27864);
    }

    else
    {
      v289 = *(a1 + 78480) & 0xFFFFE07FFFFFFFF9;
      v5[129].i32[1] = v5[129].i32[1] & 0x199FFFFF | 0x200000;
      v5[130].i32[0] &= 0xFFFE0000;
      *(a1 + 28672) |= 0xC0000000C00000uLL;
      v5[130].i32[2] &= 0xFF1EFFFF;
      *(a1 + 78480) = v289 | 0x100000000004;
      v284 = *(a1 + 30328);
    }

    v285 = *(a1 + 30352);
    *(v284 + 2060) |= *(v285 + 1569);
  }

  else
  {
    v285 = *(a1 + 30352);
    if (v5[91].i8[8] == 1)
    {
      v286 = v5[129].i32[2] & 0xF7200000;
      v287 = v5[129].i32[3] & 0xF7200000;
      v288 = *(v285 + 800);
      *(a1 + 28680) = *(v285 + 816);
      *(a1 + 28664) = v288;
      v5[129].i32[2] = v5[129].i32[2] & 0x8DFFFFF | v286;
      v5[129].i32[3] = v5[129].i32[3] & 0x8DFFFFF | v287;
      *(a1 + 78480) |= 0x100000000000uLL;
    }
  }

  if (v86)
  {
    do
    {
      v86 &= ~(1 << __clz(__rbit32(v86)));
      IOGPUResourceListAddResource();
    }

    while (v86);
    v285 = *(a1 + 30352);
  }

  v7 = (a1 + 73040);
  if (*(v285 + 3704))
  {
    IOGPUResourceListAddResource();
    v285 = *(a1 + 30352);
  }

  v290 = *(v285 + 748);
  v291 = *(v285 + 752);
  v292 = *v360;
  if (*(*v360 + 892) != v290 || *(v292 + 896) != v291)
  {
    *(v292 + 892) = v290;
    *(v292 + 896) = v291;
    if (v290 != 1.0 || v291 != -1)
    {
      *(a1 + 78480) |= 0x1000000000uLL;
      *(a1 + 78464) |= 2uLL;
    }
  }

  v294 = *(v285 + 760);
  if (!v2 || v5[216].u8[8] != v294 || *(v2 + 820) != *(v285 + 820) || *(v2 + 824) != *(v285 + 824) || *(v2 + 828) != *(v285 + 828))
  {
    v5[216].i8[8] = v294;
    *(a1 + 78480) |= 0x2000000000000uLL;
  }

LABEL_274:
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(a2);
  v295 = *(a1 + 30352);
  if (*(v295 + 790) == 1)
  {
    v296 = *(v295 + 1032);
    if (v296)
    {
      v297 = *(v296 + 48);
      *(*v362 + 264) = *(v296 + 56);
      *(a1 + 49576) = v297;
      v298 = *(v296 + 80);
      *(a1 + 78144) |= v298 << 59;
      *v6 |= 0x800000000000000uLL;
      v282 = (v298 & 1) == 0;
      v299 = 64;
      if (!v282)
      {
        v299 = 192;
      }

      *(a1 + 78480) |= v299;
    }

    v300 = *(v295 + 1344);
    if (v300)
    {
      v301 = *(v300 + 48);
      *(*v7 + 272) = *(v300 + 56);
      v7[60] = v301;
      v302 = *(v300 + 80);
      *(a1 + 78384) |= v302 << 59;
      *(a1 + 78432) |= 0x800000000000000uLL;
      v282 = (v302 & 1) == 0;
      v303 = 0x1000000000;
      if (!v282)
      {
        v303 = 0x3000000000;
      }

      *(a1 + 78480) |= v303;
    }

    v304 = *(v295 + 1048);
    if (v304)
    {
      v305 = *(v304 + 48);
      *(*v362 + 272) = *(v304 + 56);
      *(a1 + 49584) = v305;
      v306 = *(v304 + 80);
      *(a1 + 78144) |= v306 << 60;
      *v6 |= 0x1000000000000000uLL;
      v282 = (v306 & 1) == 0;
      v307 = 64;
      if (!v282)
      {
        v307 = 192;
      }

      *(a1 + 78480) |= v307;
    }

    v308 = *(v295 + 1360);
    if (v308)
    {
      v309 = *(v308 + 48);
      *(*v7 + 280) = *(v308 + 56);
      v7[61] = v309;
      v310 = *(v308 + 80);
      *(a1 + 78384) |= v310 << 60;
      *(a1 + 78432) |= 0x1000000000000000uLL;
      v282 = (v310 & 1) == 0;
      v311 = 0x1000000000;
      if (!v282)
      {
        v311 = 0x3000000000;
      }

      *(a1 + 78480) |= v311;
    }
  }

  v312 = *(v295 + 3656);
  if (v312)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 79096), (v295 + 3168));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 79216), (*(a1 + 30352) + 3288));
    v313 = *(a1 + 30352);
    if (v312)
    {
      v314 = v313[451];
      v315 = *(v314 + 48);
      *(*v362 + 312) = *(v314 + 56);
      *(a1 + 49624) = v315;
      v316 = *(v314 + 80);
      *(a1 + 78152) |= 2 * v316;
      *(a1 + 78104) |= 2uLL;
      v282 = v316 == 0;
      v317 = 64;
      if (!v282)
      {
        v317 = 192;
      }

      *(a1 + 78480) |= v317;
      if ((v312 & 2) == 0)
      {
LABEL_294:
        if ((v312 & 4) == 0)
        {
          goto LABEL_295;
        }

        goto LABEL_303;
      }
    }

    else if ((v312 & 2) == 0)
    {
      goto LABEL_294;
    }

    v318 = v313[452];
    v319 = *(v318 + 48);
    *(*v7 + 320) = *(v318 + 56);
    v7[66] = v319;
    v320 = *(v318 + 80);
    *(a1 + 78392) |= 2 * v320;
    *(a1 + 78440) |= 2uLL;
    v282 = v320 == 0;
    v321 = 0x1000000000;
    if (!v282)
    {
      v321 = 0x3000000000;
    }

    *(a1 + 78480) |= v321;
    if ((v312 & 4) == 0)
    {
LABEL_295:
      if (!v313[4])
      {
        return;
      }

LABEL_304:
      if ((v312 & 8) != 0)
      {
        v323 = *(a1 + 27960);
        if (!v323)
        {
          std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(a1 + 27992));
          *(a1 + 27960) = v323;
          v313 = *(a1 + 30352);
        }

        v324 = v313[454];
        v325 = *(v324 + 48);
        *(v323[2375] + 312) = *(v324 + 56);
        v326 = (v323[1] + 77824);
        v323[2441] = v325;
        v327 = *(v324 + 80);
        v326[47] |= 2 * v327;
        v326[53] |= 2uLL;
        v282 = v327 == 0;
        v328 = 0x10000;
        if (!v282)
        {
          v328 = 196608;
        }

        v326[82] |= v328;
      }

      if ((v312 & 0x10) != 0)
      {
        v329 = *(a1 + 27960);
        if (!v329)
        {
          std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(a1 + 27992));
          *(a1 + 27960) = v329;
          v313 = *(a1 + 30352);
        }

        v330 = v313[455];
        v331 = *(v330 + 48);
        *(v329[5338] + 312) = *(v330 + 56);
        v332 = (v329[1] + 77824);
        v329[5404] = v331;
        v333 = *(v330 + 80);
        v332[59] |= 2 * v333;
        v332[65] |= 2uLL;
        v282 = v333 == 0;
        v334 = 0x4000000;
        if (!v282)
        {
          v334 = 201326592;
        }

        v332[82] |= v334;
      }

      return;
    }

LABEL_303:
    v322 = *(v313[453] + 48);
    *(*(a1 + 21552) + 320) = *(v313[453] + 56);
    *(a1 + 22080) = v322;
    if (!v313[4])
    {
      return;
    }

    goto LABEL_304;
  }
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x23)
  {
    v5 = result[1] + 78096;
    v6 = *(a2 + 56) + a3;
    v4 = a4;
  }

  else
  {
    v4 = a4;
    result[a4 + 2830] = 0;
    v5 = result[1] + 78096;
    v6 = *(a2 + 56) + a3;
    if (a4 <= 0x1E)
    {
      v7 = (result[2374] + 8 * a4);
      goto LABEL_6;
    }
  }

  v7 = (result[2375] + 8 * (a4 - 31) + 40);
LABEL_6:
  *v7 = v6;
  result[v4 + 2376] = *(a2 + 48);
  v8 = *(a2 + 80);
  v9 = v5 + 8 * (a4 > 0x3F);
  *(v9 + 96) |= v8 << a4;
  *(v9 + 144) |= 1 << a4;
  v10 = v8 == 0;
  v11 = 0x10000;
  if (!v10)
  {
    v11 = 196608;
  }

  *(v5 + 384) |= v11;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x23)
  {
    v5 = result[1] + 78096;
    v6 = *(a2 + 56) + a3;
    v4 = a4;
  }

  else
  {
    v4 = a4;
    result[a4 + 5793] = 0;
    v5 = result[1] + 78096;
    v6 = *(a2 + 56) + a3;
    if (a4 <= 0x1E)
    {
      v7 = (result[5337] + 8 * a4);
      goto LABEL_6;
    }
  }

  v7 = (result[5338] + 8 * (a4 - 31) + 40);
LABEL_6:
  *v7 = v6;
  result[v4 + 5339] = *(a2 + 48);
  v8 = *(a2 + 80);
  v9 = v5 + 8 * (a4 > 0x3F);
  *(v9 + 192) |= v8 << a4;
  *(v9 + 240) |= 1 << a4;
  v10 = v8 == 0;
  v11 = 0x4000000;
  if (!v10)
  {
    v11 = 201326592;
  }

  *(v5 + 384) |= v11;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(uint64_t a1, char a2, uint64_t a3)
{
  {
    v19 = a3;
    v21 = a1;
    v12 = a2;
    a2 = v12;
    v14 = v13;
    LOBYTE(a3) = v19;
    a1 = v21;
    if (v14)
    {
      if ([*(v21 + 1872) supportsRenderMemoryBarrier])
      {
        v15 = 1;
      }

      else
      {
        v15 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isAfterFragmentMemoryBarrierSupported();
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment = v15;
      LOBYTE(a3) = v19;
      a1 = v21;
      a2 = v12;
    }
  }

  {
    v20 = a3;
    v22 = a1;
    v18 = a2;
    a2 = v18;
    LOBYTE(a3) = v20;
    v17 = v16;
    a1 = v22;
    if (v17)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh = 1;
      a2 = v18;
      LOBYTE(a3) = v20;
      a1 = v22;
    }
  }

  if (a3)
  {
    v3 = 1;
    v4 = a3 & 6;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = ((a3 & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
    v4 = a3 & 6;
    if (a2)
    {
LABEL_5:
      v5 = 1;
      goto LABEL_8;
    }
  }

  v5 = ((a2 & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
LABEL_8:
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  v7 = v5 ^ 1;
  if ((a2 & 6) != 0)
  {
    v7 = 0;
  }

  if (v7 & 1) == 0 && (v6)
  {
    if (a2 & 6) != 0 && (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment)
    {

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(a1, (a1 + 78480), 16, 0);
    }

    else
    {
      if ((a2 & 6) != 0)
      {
        v5 = 0;
      }

      if ((v5 & v3) == 1)
      {
        v8 = a1 + 77824;
        if (*(a1 + 27656))
        {
          v9 = a1;
          AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(a1 + 27600, *(a1 + 78728), *(a1 + 78736), (a1 + 78560));
          a1 = v9;
        }

        v10 = a1;
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(a1 + 24, 0);
        ++*(v8 + 736);
        v11 = *(v10 + 72);
        *v11 = 553650528;
        *(v10 + 72) = v11 + 1;
      }
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDepthCopy(uint64_t a1)
{
  v2 = a1 + 78504;
  v3 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1, 1368, 0);
  if ([*a1 skipRender])
  {
    v48 = *(a1 + 1968) - *(a1 + 1984);
    *(v48 + 140) = 1;
    if ((*(v48 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  *(v3 + 17) = 0;
  *(v3 + 37) = xmmword_29D2F1730;
  v4 = (v3 + 48);
  *(v3 + 41) = 0;
  *(v3 + 45) = 0;
  *(v3 + 43) = 0;
  v5 = *v2;
  if (*v2 && (v6 = *(v5 + 528)) != 0)
  {
    v7 = ((2 * v6 + 7) & 0xFFFFFFF8) + 16;
    v49.i32[0] = 0;
    v8 = AGX::SidebandBufferAllocator::allocate((a1 + 1880), v7, 1u, &v49);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 12) = v6;
    v9 = v49.i32[0];
    v3[34] = v7;
    v3[35] = v9;
    AGX::FenceList::copyFences(v5, (v8 + 16));
    *(v2 + 968) |= 0x20000uLL;
  }

  else
  {
    v3[34] = 0;
  }

  bzero(v3 + 48, 0x490uLL);
  v3[338] = 1;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastRenderCommand(*(a1 + 2088), (v3 + 48), a1 + 24);
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupResolveCommand(a1 + 2120, v3 + 24, *(a1 + 1912), (a1 + 24), *(a1 + 2392));
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v49, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7192));
  v13.i32[0] = *(a1 + 2368);
  v13.i32[1] = *(a1 + 2376);
  v10 = vshl_n_s32(*v13.i8, 5uLL);
  *v13.i8 = vshl_u32(vadd_s32(v10, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v11 = vshl_u32(vadd_s32(v10, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v12 = vadd_s32(*v13.i8, vrev64_s32(v11));
  v13.i32[1] = v11.i32[1];
  v14 = *(v54 + 7092);
  v15 = *(a1 + 2420);
  v16.i64[0] = *(a1 + 2412);
  v16.i64[1] = v13.i64[0];
  v17 = vaddvq_s32(v16);
  v18.i64[0] = *(a1 + 2400);
  v19 = vadd_s32(*v18.i8, vmla_s32(vext_s8(vmul_s32(v12, 0x6000000060), v12, 4uLL), v12, 0x10000000ALL));
  v20 = v19.i32[1] - v58;
  v21 = vcgt_s32(v19, vdup_n_s32(v58));
  if ((v21.i8[4] & 1) == 0)
  {
    v20 = 0;
  }

  v22 = ((v57 + v17 + (v12.i32[0] + *(a1 + 2408)) * v56 + v15 + (v20 + v18.i32[1]) * v55 + 64) * v14 + 7) & 0xFFFFFFF8;
  v23 = v21.i8[0];
  v24 = v49;
  v13.i64[1] = *(a1 + 2412);
  v49 = vmaxq_s32(v49, v13);
  *v25.i8 = v50;
  v18.i32[0] = v15;
  v50 = vmax_s32(v50, __PAIR64__(v22, v15));
  v53 = 2;
  v26 = v19.i32[0] - v58;
  if ((v23 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = ((v17 + v26 * v55 + v57 + v15 + 64) * v14 + 7) & 0xFFFFFFF8;
  if (v51 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v51;
  }

  v25.i64[1] = __PAIR64__(v52, v51);
  v18.i32[1] = v22;
  v18.i64[1] = __PAIR64__(v19.u32[0], v27);
  if (v52 <= v19.i32[0])
  {
    v29 = v19.i32[0];
  }

  else
  {
    v29 = v52;
  }

  v51 = v28;
  v52 = v29;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v13, v24), vcgtq_s32(v18, v25)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v49, (v3 + 208), 0);
  }

  v30 = *(a1 + 2392);
  v31 = *(v30 + 3568);
  *&v32 = *(v30 + 3572);
  v33 = *(v30 + 4940);
  *(&v32 + 1) = *(v30 + 3584);
  v34 = *(v30 + 3592);
  v35 = *(v30 + 3608);
  v36 = *(v30 + 3624);
  v37 = *(v30 + 3640);
  *(v3 + 157) = 0;
  v3[316] = v31;
  *(v3 + 317) = v32;
  *(v3 + 321) = v34;
  *(v3 + 325) = v35;
  *(v3 + 329) = v36;
  *(v3 + 333) = v37;
  v3[335] = v33;
  *(v3 + 168) = 0;
  *(v3 + 168) = *(v30 + 4932);
  if (!*(v2 + 64))
  {
    goto LABEL_26;
  }

  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

  IOGPUResourceListAddResource();
  v38 = *(v2 + 64);
  if (v38 && (v40 = *(v2 + 80), v39 = *(v2 + 84), (v40 & v39) != 0xFFFFFFFF))
  {
    *(v4 + 904) = [v38 resourceID];
    *(v4 + 908) = v40;
    *(v4 + 912) = v39;
  }

  else
  {
LABEL_26:
    *(v4 + 904) = -1;
    *(v4 + 912) = -1;
  }

  *(v2 + 80) = -1;
  *(v4 + 1020) = *(a1 + 1928);
  *(v4 + 1016) = *(a1 + 1924);
  *(v4 + 1024) = *(a1 + 1932);
  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignResolveRenderRegisters(*(a1 + 2392), v4);
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(*(a1 + 2392), *(a1 + 1896), *(a1 + 1904));
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v41, *(a1 + 1912), *(a1 + 2008), 63);
  *(v4 + 1008) = 0;
  if (!*(*(a1 + 1912) + 520))
  {
    v46 = *(a1 + 1968) - *(a1 + 1984);
    *(v46 + 140) = 1;
    if ((*(v46 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  return AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v42, v43, v44, v45);
}

void sub_29CED2A30(_Unwind_Exception *a1)
{
  v4 = v2[132];
  if (v4)
  {
    v2[133] = v4;
    operator delete(v4);
    v5 = v2[129];
    if (!v5)
    {
LABEL_3:
      v6 = v2[126];
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = v2[129];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v2[130] = v5;
  operator delete(v5);
  v6 = v2[126];
  if (!v6)
  {
LABEL_4:
    v7 = v2[123];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v2[127] = v6;
  operator delete(v6);
  v7 = v2[123];
  if (!v7)
  {
LABEL_6:

    v8 = *(v1 + 30312);
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    *(v1 + 30312) = 0;

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextA>::~PointerWithOnDemandObjectCreation((v1 + 27960));
    std::function<void ()(void *)>::~function(v1 + 27928);
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::~function(v1 + 27896);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextA>::~PointerWithOnDemandObjectCreation((v1 + 27752));
    std::function<void ()(void *)>::~function(v1 + 27720);
    std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::~function(v1 + 27688);
    *(v1 + 21544) = 0;
    AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader((v1 + 2120));
    AGX::HAL300::ContextCommon::~ContextCommon(v1);
    _Unwind_Resume(a1);
  }

LABEL_5:
  v2[124] = v7;
  operator delete(v7);
  goto LABEL_6;
}

uint64_t *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextA>::~PointerWithOnDemandObjectCreation(uint64_t *a1)
{
  if (*a1)
  {
    v7 = *a1;
    v2 = a1[8];
    if (!v2)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      std::function<void ()(void *)>::~function((a1 + 5));
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::~function((a1 + 1));
      _Unwind_Resume(v6);
    }

    (*(*v2 + 48))(v2, &v7);
  }

  v3 = a1[8];
  if (v3 == a1 + 5)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[4];
  if (v4 == a1 + 1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t std::function<void ()(void *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextA>::~PointerWithOnDemandObjectCreation(uint64_t *a1)
{
  if (*a1)
  {
    v7 = *a1;
    v2 = a1[8];
    if (!v2)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      std::function<void ()(void *)>::~function((a1 + 5));
      std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::~function((a1 + 1));
      _Unwind_Resume(v6);
    }

    (*(*v2 + 48))(v2, &v7);
  }

  v3 = a1[8];
  if (v3 == a1 + 5)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[4];
  if (v4 == a1 + 1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_29CED48C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13)
{
  v18 = v16[136];
  if (v18)
  {
    v16[137] = v18;
    operator delete(v18);
    v19 = v16[133];
    if (!v19)
    {
LABEL_3:
      v20 = v16[130];
      if (!v20)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v19 = v16[133];
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  v16[134] = v19;
  operator delete(v19);
  v20 = v16[130];
  if (!v20)
  {
LABEL_4:
    v21 = *v14;
    if (!*v14)
    {
LABEL_10:

      v22 = *(v13 + 30312);
      if (v22)
      {
        do
        {
          v23 = *v22;
          operator delete(v22);
          v22 = v23;
        }

        while (v23);
      }

      *(v13 + 30312) = 0;

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextA>::~PointerWithOnDemandObjectCreation((v13 + 27960));
      std::function<void ()(void *)>::~function(v15);
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::~function(a10);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextA>::~PointerWithOnDemandObjectCreation((v13 + 27752));
      std::function<void ()(void *)>::~function(a11);
      std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::~function(a12);
      *(v13 + 21544) = 0;
      AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(a13);
      AGX::HAL300::ContextCommon::~ContextCommon(v13);
      _Unwind_Resume(a1);
    }

LABEL_9:
    v16[128] = v21;
    operator delete(v21);
    goto LABEL_10;
  }

LABEL_8:
  v16[131] = v20;
  operator delete(v20);
  v21 = *v14;
  if (!*v14)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#2}>,void ()(void *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 8);
    (**v2)(*a2);
    v4 = *(*(v3 + 1872) + 848);
    os_unfair_lock_lock(v4 + 4047);
    os_unfair_lock_opaque = v4[4046]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 7)
    {
      os_unfair_lock_unlock(v4 + 4047);

      free(v2);
    }

    else
    {
      v4[4046]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
      *&v4[2 * os_unfair_lock_opaque + 4048]._os_unfair_lock_opaque = v2;

      os_unfair_lock_unlock(v4 + 4047);
    }
  }
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8A08;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(v1 + 1872) + 848);
  if (*(v2 + 16176) < 0xBA88uLL)
  {
    v5 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_lock((v2 + 16188));
  v3 = *(v2 + 16184);
  if (!v3)
  {
    os_unfair_lock_unlock((v2 + 16188));
    goto LABEL_6;
  }

  v4 = v3 - 1;
  *(v2 + 16184) = v4;
  v5 = *(v2 + 8 * v4 + 16192);
  os_unfair_lock_unlock((v2 + 16188));
  if (!v5)
  {
LABEL_6:
    v5 = malloc_type_calloc(*(v2 + 16176), 1uLL, 0x689CC946uLL);
    goto LABEL_7;
  }

  bzero(v5, *(v2 + 16176));
LABEL_7:
  *v5 = &unk_2A23F8588;
  v5[1] = v1;
  v6 = v5 + 5337;
  v5[2] = v1 + 2120;
  v5[3] = v1 + 24;
  *(v5 + 64) = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[4] = 0;
  *(v5 + 14) = 0;
  v5[9] = -1;
  *(v5 + 11) = xmmword_29D2F2500;
  *(v5 + 259) = 1;
  *(v5 + 1183) = 0u;
  *(v5 + 1184) = 0u;
  *(v5 + 1185) = 0u;
  v5[2375] = v5 + 11;
  *(v5 + 1415) = 0u;
  *(v5 + 1416) = 0u;
  *(v5 + 1417) = 0u;
  *(v5 + 1418) = 0u;
  *(v5 + 1419) = 0u;
  *(v5 + 1420) = 0u;
  *(v5 + 1421) = 0u;
  *(v5 + 1422) = 0u;
  *(v5 + 1423) = 0u;
  *(v5 + 1424) = 0u;
  *(v5 + 1425) = 0u;
  *(v5 + 1426) = 0u;
  *(v5 + 1427) = 0u;
  *(v5 + 1428) = 0u;
  *(v5 + 1429) = 0u;
  *(v5 + 1430) = 0u;
  *(v5 + 1431) = 0u;
  v5[2864] = 0;
  *(v5 + 24040) = 0;
  v5[2374] = v5 + 130;
  v5[3006] = -1;
  *(v5 + 1504) = xmmword_29D2F2500;
  *(v5 + 6183) = 1;
  *(v5 + 5329) = 0u;
  *(v5 + 5331) = 0u;
  *(v5 + 5333) = 0u;
  *(v5 + 5793) = 0u;
  *(v5 + 5795) = 0u;
  *(v5 + 5797) = 0u;
  *(v5 + 5799) = 0u;
  *(v5 + 5801) = 0u;
  *(v5 + 5803) = 0u;
  *(v5 + 5805) = 0u;
  *(v5 + 5807) = 0u;
  *(v5 + 5809) = 0u;
  *(v5 + 5811) = 0u;
  *(v5 + 5813) = 0u;
  *(v5 + 5815) = 0u;
  *(v5 + 5817) = 0u;
  *(v5 + 5819) = 0u;
  *(v5 + 5821) = 0u;
  *(v5 + 5823) = 0u;
  *(v5 + 5825) = 0u;
  v5[5827] = 0;
  *(v5 + 47744) = 0;
  v5[5337] = v5 + 3093;
  v5[5338] = v5 + 3008;
  v7 = *(*(v1 + 1872) + 848);
  v8 = *(v7 + 16480);
  v9 = *(v7 + 16496);
  for (i = 560; i != 16944; i += 128)
  {
    v11 = (v5[2374] + i);
    *v11 = v8;
    v11[1] = v9;
    v12 = (*v6 + i);
    *v12 = v8;
    v12[1] = v9;
  }

  v13 = *(*(v5[1] + 1872) + 848);
  v27 = *(v13 + 16512);
  v28 = *(v13 + 16528);
  for (j = 592; j != 16976; j += 128)
  {
    v15 = (v5[2374] + j);
    *v15 = v27;
    v15[1] = v28;
    v16 = (*v6 + j);
    *v16 = v27;
    v16[1] = v28;
  }

  v17 = v5[2375];
  *(v17 + 664) = v5[2374];
  *(v17 + 672) = v17;
  v18 = v5[5338];
  *(v18 + 664) = *v6;
  *(v18 + 672) = v18;
  v19 = v5[1];
  *(v18 + 672) = *(*(v19 + 2392) + 6328) > 1u;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAmplificationCount(v5, *(v19 + 30080), (v19 + 78656));
  v20 = v5[1];
  v21 = *(v20[6137] + 304);
  v22 = v20[6202];
  v23 = v5[2375];
  v23[38] = v21;
  v5[2440] = v22;
  v24 = v5[5338];
  v24[38] = v21;
  v5[5403] = v22;
  v25 = v20[9927];
  v24[30] = v25;
  v23[30] = v25;
  *v5 = &unk_2A23F8348;
  v23[21] = 0;
  v24[21] = 0;
  v23[22] = 0;
  v24[22] = 0;
  v23[25] = 0;
  v24[25] = 0;
  v23[26] = 0;
  v24[26] = 0;
  return v5;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitICBRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 384) |= 0x30uLL;
  *(a1 + 64) = 0;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(a1, *(a1 + 32), *(a1 + 40), *(*(a1 + 8) + 30344), *(a1 + 18992), *(a1 + 42696), *(*(a1 + 8) + 73032), a8, 0, 0, 0, 0, 0, 0, a2, 1);
  *(a1 + 64) = 0;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSamplersWithLODOverrides(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned int a6)
{
  if (a6)
  {
    v10 = result;
    v11 = *(result + 8);
    for (i = a6; i; --i)
    {
      if (*a2)
      {
        v15 = *a3;
        v16 = *a4;
        v17 = v11[234];
        v18 = *(v17 + 848);
        v19 = *a2 + 48;
        v21 = *(*a2 + 64);
        v20 = *(*a2 + 80);
        v26[0] = *v19;
        v26[1] = v21;
        v26[2] = v20;
        if (*(v19 + 71) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v19 + 48), *(v19 + 56));
        }

        else
        {
          v22 = *(v19 + 48);
          __p.__r_.__value_.__r.__words[2] = *(v19 + 64);
          *&__p.__r_.__value_.__l.__data_ = v22;
        }

        *(&v26[0] + 1) = __PAIR64__(v16, v15);
        Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v18, v26, v17, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        result = *(*(v10 + 8) + 1896);
        if (result)
        {
LABEL_16:
          result = MTLResourceListAddResource();
        }
      }

      else
      {
        Sampler = 0;
        result = v11[237];
        if (result)
        {
          goto LABEL_16;
        }
      }

      if (Sampler)
      {
        v24 = *&Sampler->_impl.desc.var1;
      }

      else
      {
        v24 = 0;
      }

      v25 = 32 * a5;
      *(*(v10 + 42696) + v25 + 16888) = v24;
      v13 = *(v10 + 42696);
      if ((~*(v13 + 16880 + v25 + 8) & 0x6000000000000000) == 0)
      {
        *(v13 + 16880 + 32 * a5 + 16) = *&Sampler->_impl.var0;
        v13 = *(v10 + 42696);
LABEL_4:
        p_impl = &Sampler->_impl;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }

        goto LABEL_6;
      }

      if (Sampler)
      {
        goto LABEL_4;
      }

      p_impl = 0;
LABEL_6:
      *(v13 + 32 * a5 + 16880) = p_impl;
      v11 = *(v10 + 8);
      v11[(a5 > 0x3F) + 9790] |= 1 << a5;
      v11[9810] |= 0x4000000uLL;
      ++a5;
      ++a4;
      ++a3;
      a2 += 8;
    }
  }

  return result;
}

void sub_29CED5478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSamplers(uint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = *(result + 8);
    v8 = a4;
    while (1)
    {
      v11 = *a2;
      result = *(v7 + 1896);
      if (result)
      {
        result = MTLResourceListAddResource();
      }

      v12 = v11 ? *(v11 + 120) : 0;
      v13 = 32 * a3;
      *(*(v6 + 42696) + v13 + 16888) = v12;
      v9 = *(v6 + 42696);
      if ((~*(v9 + 16880 + v13 + 8) & 0x6000000000000000) == 0)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_4;
      }

      v10 = 0;
LABEL_6:
      *(v9 + 32 * a3 + 16880) = v10;
      v7 = *(v6 + 8);
      *(v7 + 8 * (a3 > 0x3F) + 78320) |= 1 << a3;
      *(v7 + 78480) |= 0x4000000uLL;
      ++a3;
      ++a2;
      if (!--v8)
      {
        return result;
      }
    }

    *(v9 + 16880 + 32 * a3 + 16) = *(v11 + 128);
    v9 = *(v6 + 42696);
LABEL_4:
    v10 = v11 + 48;
    if (*(v11 + 144))
    {
      v10 = *(v11 + 144);
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSampler(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (a2)
  {
    v7 = *(a2 + 120);
  }

  else
  {
    v7 = 0;
  }

  v8 = 32 * a3;
  *(*(a1 + 42696) + v8 + 16888) = v7;
  v9 = *(a1 + 42696);
  if ((~*(v9 + 16880 + v8 + 8) & 0x6000000000000000) != 0)
  {
    if (!a2)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(v9 + 16880 + 32 * a3 + 16) = *(a2 + 128);
    v9 = *(a1 + 42696);
  }

  v10 = a2 + 48;
  if (*(a2 + 144))
  {
    v10 = *(a2 + 144);
  }

LABEL_11:
  *(v9 + 32 * a3 + 16880) = v10;
  v11 = *(a1 + 8);
  *(v11 + 8 * (a3 > 0x3F) + 78320) |= 1 << a3;
  *(v11 + 78480) |= 0x4000000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramTextures(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    v7 = a4;
    do
    {
      v8 = *a2++;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,true>(a1, v8, a3++, a1 + 24048);
      --v7;
    }

    while (v7);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramBuffers(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5)
  {
    v8 = result;
    v9 = a5;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v8, v10, v12, a4++, v8 + 24048);
      --v9;
    }

    while (v9);
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramBufferOffset(void *result, uint64_t a2, unsigned int a3)
{
  v3 = &result[a3];
  v4 = v3[5828];
  v5 = result[1];
  v6 = v3[5898];
  v7 = v4 + a2;
  if (a3 >= 0x1F)
  {
    v10 = result[5338] + 8 * (a3 - 31);
    *(v10 + 40) = v7;
    *(v10 + 352) = v6 + a2;
  }

  else
  {
    v8 = result[5337];
    v9 = v8 + 8 * a3;
    *v9 = v7;
    *(v9 + 248) = v6 + a2;
    *(v9 + 17640) = *(v8 + 4 * a3 + 17516);
  }

  *(v5 + 8 * (a3 > 0x3F) + 78288) |= 1 << a3;
  *(v5 + 78480) |= 0x4000000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramBufferView(void *result, uint64_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v5 = &result[a4];
  if (a4 <= 0x22)
  {
    v5[5793] = 0;
  }

  v6 = result[1];
  *(v6 + 8 * (a4 > 0x3F) + 78288) |= 1 << a4;
  *(v6 + 78480) |= 0x4000000uLL;
  v7 = *a2;
  if (a4 >= 0x1F)
  {
    *(result[5338] + 8 * (a4 - 31) + 40) = v7;
    v5[5339] = a5;
  }

  else
  {
    v8 = result[5337];
    v9 = a4;
    v10 = v8 + v9 * 8;
    *v10 = v7;
    result[v9 + 5339] = a5;
    *(v8 + 4 * a4 + 17516) = a3;
    v11 = *a2 >> 8;
    *(v10 + 17640) = a3;
    *(v10 + 17644) = v11;
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramBufferBytes(void *a1, const void *a2, size_t __n, unsigned int a4)
{
  v7 = __n + 15;
  v8 = a1[1];
  v9 = (__n + 15) | 0xF;
  v10 = v8[21] + v9;
  if (v10 <= v8[20])
  {
LABEL_2:
    v8[22] = v10;
    goto LABEL_3;
  }

  v24 = a2;
  v25 = AGX::DataBufferAllocator<44ul>::growNoInline(v8 + 3, 3, 0);
  a2 = v24;
  if (v25)
  {
    v10 = v8[21] + v9;
    if (v10 > v8[20])
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v11 = v7 & 0xFFFFFFFFFFFFFFF0;
  v12 = a1[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 184)];
  *(v12 + 168) = &v13[v11];
  result = memcpy(v13, a2, __n);
  v16 = a1[1];
  v17 = *(*(v16 + 48) + 224);
  v18 = *MEMORY[0x29EDC5638];
  v19 = &a1[a4];
  if (a4 <= 0x22)
  {
    v19[5793] = 0;
  }

  v20 = v17 + v18;
  *(v16 + 8 * (a4 > 0x3F) + 78288) |= 1 << a4;
  *(v16 + 78480) |= 0x4000000uLL;
  if (a4 >= 0x1F)
  {
    *(a1[5338] + 8 * (a4 - 31) + 40) = v14;
    v19[5339] = v20;
  }

  else
  {
    v21 = a1[5337];
    v22 = a4;
    v23 = v21 + v22 * 8;
    a1[v22 + 5339] = v20;
    *(v21 + 4 * a4 + 17516) = __n;
    *v23 = v14;
    *(v23 + 17640) = __n;
    *(v23 + 17644) = v14 >> 8;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSamplersWithLODOverrides(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned int a6)
{
  if (a6)
  {
    v10 = result;
    v11 = *(result + 8);
    for (i = a6; i; --i)
    {
      if (*a2)
      {
        v15 = *a3;
        v16 = *a4;
        v17 = v11[234];
        v18 = *(v17 + 848);
        v19 = *a2 + 48;
        v21 = *(*a2 + 64);
        v20 = *(*a2 + 80);
        v26[0] = *v19;
        v26[1] = v21;
        v26[2] = v20;
        if (*(v19 + 71) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v19 + 48), *(v19 + 56));
        }

        else
        {
          v22 = *(v19 + 48);
          __p.__r_.__value_.__r.__words[2] = *(v19 + 64);
          *&__p.__r_.__value_.__l.__data_ = v22;
        }

        *(&v26[0] + 1) = __PAIR64__(v16, v15);
        Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v18, v26, v17, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        result = *(*(v10 + 8) + 1896);
        if (result)
        {
LABEL_16:
          result = MTLResourceListAddResource();
        }
      }

      else
      {
        Sampler = 0;
        result = v11[237];
        if (result)
        {
          goto LABEL_16;
        }
      }

      if (Sampler)
      {
        v24 = *&Sampler->_impl.desc.var1;
      }

      else
      {
        v24 = 0;
      }

      v25 = 32 * a5;
      *(*(v10 + 18992) + v25 + 16888) = v24;
      v13 = *(v10 + 18992);
      if ((~*(v13 + 16880 + v25 + 8) & 0x6000000000000000) == 0)
      {
        *(v13 + 16880 + 32 * a5 + 16) = *&Sampler->_impl.var0;
        v13 = *(v10 + 18992);
LABEL_4:
        p_impl = &Sampler->_impl;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }

        goto LABEL_6;
      }

      if (Sampler)
      {
        goto LABEL_4;
      }

      p_impl = 0;
LABEL_6:
      *(v13 + 32 * a5 + 16880) = p_impl;
      v11 = *(v10 + 8);
      v11[(a5 > 0x3F) + 9778] |= 1 << a5;
      v11[9810] |= 0x10000uLL;
      ++a5;
      ++a4;
      ++a3;
      a2 += 8;
    }
  }

  return result;
}

void sub_29CED5D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSamplers(uint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = *(result + 8);
    v8 = a4;
    while (1)
    {
      v11 = *a2;
      result = *(v7 + 1896);
      if (result)
      {
        result = MTLResourceListAddResource();
      }

      v12 = v11 ? *(v11 + 120) : 0;
      v13 = 32 * a3;
      *(*(v6 + 18992) + v13 + 16888) = v12;
      v9 = *(v6 + 18992);
      if ((~*(v9 + 16880 + v13 + 8) & 0x6000000000000000) == 0)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_4;
      }

      v10 = 0;
LABEL_6:
      *(v9 + 32 * a3 + 16880) = v10;
      v7 = *(v6 + 8);
      *(v7 + 8 * (a3 > 0x3F) + 78224) |= 1 << a3;
      *(v7 + 78480) |= 0x10000uLL;
      ++a3;
      ++a2;
      if (!--v8)
      {
        return result;
      }
    }

    *(v9 + 16880 + 32 * a3 + 16) = *(v11 + 128);
    v9 = *(v6 + 18992);
LABEL_4:
    v10 = v11 + 48;
    if (*(v11 + 144))
    {
      v10 = *(v11 + 144);
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSampler(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (a2)
  {
    v7 = *(a2 + 120);
  }

  else
  {
    v7 = 0;
  }

  v8 = 32 * a3;
  *(*(a1 + 18992) + v8 + 16888) = v7;
  v9 = *(a1 + 18992);
  if ((~*(v9 + 16880 + v8 + 8) & 0x6000000000000000) != 0)
  {
    if (!a2)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(v9 + 16880 + 32 * a3 + 16) = *(a2 + 128);
    v9 = *(a1 + 18992);
  }

  v10 = a2 + 48;
  if (*(a2 + 144))
  {
    v10 = *(a2 + 144);
  }

LABEL_11:
  *(v9 + 32 * a3 + 16880) = v10;
  v11 = *(a1 + 8);
  *(v11 + 8 * (a3 > 0x3F) + 78224) |= 1 << a3;
  *(v11 + 78480) |= 0x10000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramTextures(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    v7 = a4;
    do
    {
      v8 = *a2++;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,true>(a1, v8, a3++, a1 + 72);
      --v7;
    }

    while (v7);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBuffers(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5)
  {
    v8 = result;
    v9 = a5;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v8, v10, v12, a4++, v8 + 72);
      --v9;
    }

    while (v9);
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBufferOffset(void *result, uint64_t a2, unsigned int a3)
{
  v3 = result[1];
  v4 = &result[a3];
  v5 = v4[2865];
  v6 = v4[2935];
  v7 = v5 + a2;
  if (a3 >= 0x1F)
  {
    v10 = result[2375] + 8 * (a3 - 31);
    *(v10 + 40) = v7;
    *(v10 + 352) = v6 + a2;
  }

  else
  {
    v8 = result[2374];
    v9 = v8 + 8 * a3;
    *v9 = v7;
    *(v9 + 248) = v6 + a2;
    *(v9 + 17640) = *(v8 + 4 * a3 + 17516);
  }

  *(v3 + 8 * (a3 > 0x3F) + 78192) |= 1 << a3;
  *(v3 + 78480) |= 0x10000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBufferView(void *result, uint64_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v5 = &result[a4];
  if (a4 <= 0x22)
  {
    v5[2830] = 0;
  }

  v6 = result[1];
  *(v6 + 8 * (a4 > 0x3F) + 78192) |= 1 << a4;
  *(v6 + 78480) |= 0x10000uLL;
  v7 = *a2;
  if (a4 >= 0x1F)
  {
    *(result[2375] + 8 * (a4 - 31) + 40) = v7;
    v5[2376] = a5;
  }

  else
  {
    v8 = result[2374];
    v9 = a4;
    v10 = v8 + v9 * 8;
    *v10 = v7;
    result[v9 + 2376] = a5;
    *(v8 + 4 * a4 + 17516) = a3;
    v11 = *a2 >> 8;
    *(v10 + 17640) = a3;
    *(v10 + 17644) = v11;
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramBufferBytes(void *a1, const void *a2, size_t __n, unsigned int a4)
{
  v7 = __n + 15;
  v8 = a1[1];
  v9 = (__n + 15) | 0xF;
  v10 = v8[21] + v9;
  if (v10 <= v8[20])
  {
LABEL_2:
    v8[22] = v10;
    goto LABEL_3;
  }

  v24 = a2;
  v25 = AGX::DataBufferAllocator<44ul>::growNoInline(v8 + 3, 3, 0);
  a2 = v24;
  if (v25)
  {
    v10 = v8[21] + v9;
    if (v10 > v8[20])
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v11 = v7 & 0xFFFFFFFFFFFFFFF0;
  v12 = a1[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 184)];
  *(v12 + 168) = &v13[v11];
  result = memcpy(v13, a2, __n);
  v16 = a1[1];
  v17 = *(*(v16 + 48) + 224);
  v18 = *MEMORY[0x29EDC5638];
  v19 = &a1[a4];
  if (a4 <= 0x22)
  {
    v19[2830] = 0;
  }

  v20 = v17 + v18;
  *(v16 + 8 * (a4 > 0x3F) + 78192) |= 1 << a4;
  *(v16 + 78480) |= 0x10000uLL;
  if (a4 >= 0x1F)
  {
    *(a1[2375] + 8 * (a4 - 31) + 40) = v14;
    v19[2376] = v20;
  }

  else
  {
    v21 = a1[2374];
    v22 = a4;
    v23 = v21 + v22 * 8;
    *v23 = v14;
    *(v21 + 4 * a4 + 17516) = __n;
    a1[v22 + 2376] = v20;
    *(v23 + 17640) = __n;
    *(v23 + 17644) = v14 >> 8;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramDispatchPrivateBuffer(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 + 67) > 0x1E)
  {
    v4 = *(result + 42704) + 8 * (a3 + 36);
    *(v4 + 40) = a2;
    *(v4 + 352) = 0;
  }

  else
  {
    v3 = (*(result + 42696) + 8 * (a3 + 67));
    *v3 = a2;
    v3[31] = 0;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramDispatchPrivateBuffer(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 + 67) > 0x1E)
  {
    v4 = *(result + 19000) + 8 * (a3 + 36);
    *(v4 + 40) = a2;
    *(v4 + 352) = 0;
  }

  else
  {
    v3 = (*(result + 18992) + 8 * (a3 + 67));
    *v3 = a2;
    v3[31] = 0;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setPerEncoderIndirectionTable(uint64_t result, uint64_t a2)
{
  *(*(result + 42704) + 240) = a2;
  *(*(result + 19000) + 240) = a2;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindScsParameters(void *result, uint64_t a2, uint64_t a3)
{
  *(result[2375] + 304) = a2;
  result[2440] = a3;
  *(result[5338] + 304) = a2;
  result[5403] = a3;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::exportsPointSize(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(v1 + 3882) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::beginRenderPass(uint64_t a1, char a2)
{
  v2 = *(a1 + 19000);
  v3 = *(a1 + 42704);
  if (a2)
  {
    v2[21] = 0;
    v3[21] = 0;
    v2[22] = 0;
    v3[22] = 0;
    v2[25] = 0;
    v3[25] = 0;
  }

  v2[26] = 0;
  v3[26] = 0;
  return 0;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setRenderPipelineState(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (!v4)
  {
    result[4] = 0;
    result[5] = 0;
    *(result[1] + 78480) &= 0xFFFFFFF01C07FFCFLL;
    return result;
  }

  v5 = *(a2 + 24);
  v6 = result[4];
  v7 = MEMORY[0x29EDC56B0];
  v8 = *MEMORY[0x29EDC56B0];
  v9 = **MEMORY[0x29EDC56B0];
  if (v6 != v5)
  {
    result[4] = v5;
    if (v5)
    {
      v10 = result[1];
      v11 = v10[1895].i64[1];
      *(v11 + 578) |= *(v5 + 1354);
      *(v11 + 584) |= *(a2 + 908) != 0;
      v12 = v10[4905].i64[0] & 0xFFFFFFFFFC06FFFFLL | *(v5 + 2720);
      v13 = v12 | 0x14;
      v10[4905].i64[0] = v12 | 0x14;
      v14 = *(v5 + 2400);
      v15 = *(v5 + 1360);
      v16 = *(v5 + 2416);
      v17 = *(v5 + 1376);
      if (v6)
      {
        v14 = vbicq_s8(v14, v6[150]);
        v15 = vbicq_s8(v15, v6[85]);
        v16 = vbicq_s8(v16, v6[151]);
        v17 = vbicq_s8(v17, v6[86]);
      }

      v18 = vorrq_s8(v14, v15);
      v19 = vorrq_s8(v16, v17);
      v20 = vorrq_s8(v10[4891], v19);
      v10[4890] = vorrq_s8(vandq_s8(v10[4890], xmmword_29D2F2540), v18);
      v10[4891] = v20;
      v21 = vorrq_s8(vzip1q_s64(v18, v19), vzip2q_s64(v18, v19));
      v22 = vmovn_s64(vtstq_s64(v21, v21));
      if ((v22.i32[0] | v22.i32[1]))
      {
        v23 = v12 | 0x20014;
        if ((v22.i8[0] & 1) == 0)
        {
          v23 = v13;
        }

        if (v22.i8[4])
        {
          v23 |= 0x40000uLL;
        }

        v10[4905].i64[0] = v23;
      }

      *a3 |= *(a2 + 732);
      if (*(a2 + 790) == 1)
      {
        v24 = *(a2 + 1968);
        if (v24)
        {
          v25 = *(v24 + 48);
          *(result[2375] + 264) = *(v24 + 56);
          result[2435] = v25;
          v26 = *(v24 + 80);
          v10[4887].i64[0] |= v26 << 59;
          v10[4890].i64[0] |= 0x800000000000000uLL;
          v27 = (v26 & 1) == 0;
          v28 = 0x10000;
          if (!v27)
          {
            v28 = 196608;
          }

          v10[4905].i64[0] |= v28;
        }
      }

      if (v9)
      {
        v65 = a2;
        v67 = a3;
        if ((*(v5 + 2400) & *(v5 + 2432) & ~*(v5 + 2096)) != 0 && *v8)
        {
          IOGPUDeviceTraceEvent();
          v8 = *v7;
        }

        a2 = v65;
        if (*(v65 + 2056) + *(v65 + 2020))
        {
          a3 = v67;
          if (*v8)
          {
            IOGPUDeviceTraceEvent();
            a2 = v65;
            a3 = v67;
            v8 = *v7;
          }
        }

        else
        {
          a3 = v67;
        }
      }
    }
  }

  v29 = v3[5];
  v30 = *v8;
  if (v29 != v4)
  {
    v31 = v3 + 5120;
    v32 = v3[1];
    if ((*(v32 + 78488) & 4) != 0 && *(*(v32 + 30352) + 744) >= 2u)
    {
      v66 = a2;
      v68 = a3;
      v64 = v30;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexAmplificationCount(v32, 1u, (v32 + 78592));
      v31 = v3 + 5120;
      v30 = v64;
      a2 = v66;
      a3 = v68;
      v32 = v3[1];
      *(v32 + 78488) &= ~4u;
      v29 = v3[5];
    }

    v3[5] = v4;
    *(*(v32 + 30328) + 578) |= v4[84].u8[10];
    v33 = v4[242].u64[1];
    v34 = v4[243].i32[0];
    v35 = HIDWORD(v33);
    LODWORD(v33) = *(v32 + 28688) & 0xF0E3FF00 | v33 & 0xF1C00FF;
    *(v32 + 28696) = *(v32 + 28696) & 0xFFFFFFF8 | (*(v32 + 30080) - 1) & 7;
    *(v32 + 28700) = v35;
    *(v32 + 28688) = v33;
    *(v32 + 28692) = v34;
    *(v32 + 78480) |= 4uLL;
    v36 = v31[218];
    *(v36 + 664) = 4 * v4[251].i32[2];
    v37 = v3[1];
    v38 = v37[4905].i64[0] & 0xFFFFFFF01BFFFFFFLL | v4[170].i64[0];
    v39 = v38 | 0x24;
    v37[4905].i64[0] = v38 | 0x24;
    v40 = v4[150];
    v41 = v4[85];
    v42 = v4[151];
    v43 = v4[86];
    if (v29)
    {
      v40 = vbicq_s8(v40, v29[150]);
      v41 = vbicq_s8(v41, v29[85]);
      v42 = vbicq_s8(v42, v29[151]);
      v43 = vbicq_s8(v43, v29[86]);
    }

    v44 = vorrq_s8(v40, v41);
    v45 = vorrq_s8(v42, v43);
    v46 = vorrq_s8(v37[4897], v45);
    v37[4896] = vorrq_s8(vandq_s8(v37[4896], xmmword_29D2F2540), v44);
    v37[4897] = v46;
    v47 = vorrq_s8(vzip1q_s64(v44, v45), vzip2q_s64(v44, v45));
    v48 = vmovn_s64(vtstq_s64(v47, v47));
    if ((v48.i32[0] | v48.i32[1]))
    {
      v49 = v38 | 0x8000024;
      if ((v48.i8[0] & 1) == 0)
      {
        v49 = v39;
      }

      if (v48.i8[4])
      {
        v50 = v49 | 0x10000000;
      }

      else
      {
        v50 = v49;
      }

      v37[4905].i64[0] = v50;
    }

    *a3 |= *(a2 + 736);
    if (*(a2 + 790) == 1)
    {
      v51 = *(a2 + 2280);
      if (v51)
      {
        v52 = *(v51 + 48);
        *(v36 + 264) = *(v51 + 56);
        v31[278] = v52;
        v53 = *(v51 + 80);
        v37[4893].i64[0] |= v53 << 59;
        v37[4896].i64[0] |= 0x800000000000000uLL;
        v27 = (v53 & 1) == 0;
        v54 = 0x4000000;
        if (!v27)
        {
          v54 = 201326592;
        }

        v37[4905].i64[0] |= v54;
      }
    }

    if (v30)
    {
      if ((*(v3[5] + 2400) & *(v3[5] + 2432) & ~*(v3[5] + 2096)) != 0 && **v7)
      {
        v62 = a2;
        IOGPUDeviceTraceEvent();
        a2 = v62;
      }

      if (*(a2 + 2368) + *(a2 + 2332) && **v7)
      {
        v63 = a2;
        IOGPUDeviceTraceEvent();
        a2 = v63;
      }
    }
  }

  if (!*(a2 + 3576))
  {
    v55 = 0;
    v56 = *(a2 + 3592);
    if (!v56)
    {
      goto LABEL_39;
    }

LABEL_46:
    result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v3[1] + 30104), v56);
    if (((v55 | result) & 1) == 0)
    {
      return result;
    }

    goto LABEL_40;
  }

  v59 = a2;
  v60 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v3[1] + 30104), *(a2 + 3576));
  v61 = v59;
  v55 = v60;
  v56 = *(v61 + 3592);
  if (v56)
  {
    goto LABEL_46;
  }

LABEL_39:
  result = 0;
  if ((v55 & 1) == 0)
  {
    return result;
  }

LABEL_40:
  v57 = v3[1];
  v58 = *(v57 + 30328) + 320;

  return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v57 + 30104, v58, 1);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBuffer(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v6 = *(a1[1] + 30352);
LABEL_6:
    v8 = *(v6 + 32);
    if (v8)
    {
      v8 = *(v8 + 4036);
    }

    if (*(a4 + 1) * *a4 * *(a4 + 2) <= v8)
    {
      v14 = v4;
      v15 = v5;
      a1[2900] = a2;
      a1[2970] = 0;
      v9 = a1[2375];
      *(v9 + 384) = 0;
      *(v9 + 72) = a2;
      a1[2411] = 0;
      v12 = *a3;
      v13 = *(a3 + 2);
      v10 = *a4;
      v11 = *(a4 + 2);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBufferCommon(a1, a2, &v12, &v10);
    }

    return;
  }

  v6 = *(a1[1] + 30352);
  v7 = *(v6 + 24);
  if (v7)
  {
    v7 = *(v7 + 3948);
  }

  if (*(a3 + 1) * *(a3 + 2) * *a3 <= v7)
  {
    goto LABEL_6;
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(void *a1, __int128 *a2)
{
  v2 = *(a1[1] + 30352);
  v3 = *(v2 + 872);
  v4 = *(v2 + 880);
  v5 = *(v2 + 884);
  v6 = *(v2 + 892);
  v9 = *a2;
  v10 = *(a2 + 2);
  v8[0] = v3;
  v8[1] = HIDWORD(v3);
  v8[2] = v4;
  v7[0] = v5;
  v7[1] = HIDWORD(v5);
  v7[2] = v6;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(a1, &v9, v8, v7);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::hasObjectStage(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 3946) ^ 1;
  }

  return v1 & 1;
}

void AGX::HAL300::HWGeometryPipelineContextA::~HWGeometryPipelineContextA(AGX::HAL300::HWGeometryPipelineContextA *this)
{
  *(this + 2374) = 0;
  *(this + 5337) = 0;
  *this = &unk_2A23F87C8;
  JUMPOUT(0x29ED520D0);
}

{
  *(this + 2374) = 0;
  *(this + 5337) = 0;
  *this = &unk_2A23F87C8;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::~HWGeometryPipelineContext(void *a1)
{
  a1[2374] = 0;
  a1[5337] = 0;
  *a1 = &unk_2A23F87C8;
  JUMPOUT(0x29ED520D0);
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::~HWGeometryPipelineContext(void *result)
{
  result[2374] = 0;
  result[5337] = 0;
  *result = &unk_2A23F87C8;
  return result;
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8300;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 8);
    (**v2)(*a2);
    v4 = *(*(v3 + 1872) + 848);
    os_unfair_lock_lock(v4 + 4067);
    os_unfair_lock_opaque = v4[4066]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 7)
    {
      os_unfair_lock_unlock(v4 + 4067);

      free(v2);
    }

    else
    {
      v4[4066]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
      *&v4[2 * os_unfair_lock_opaque + 4068]._os_unfair_lock_opaque = v2;

      os_unfair_lock_unlock(v4 + 4067);
    }
  }
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F82B8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(v1 + 1872) + 848);
  if (*(v2 + 16256) < 0x78uLL)
  {
    v5 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_lock((v2 + 16268));
  v3 = *(v2 + 16264);
  if (!v3)
  {
    os_unfair_lock_unlock((v2 + 16268));
    goto LABEL_6;
  }

  v4 = v3 - 1;
  *(v2 + 16264) = v4;
  v5 = *(v2 + 8 * v4 + 16272);
  os_unfair_lock_unlock((v2 + 16268));
  if (!v5)
  {
LABEL_6:
    v5 = malloc_type_calloc(*(v2 + 16256), 1uLL, 0x689CC946uLL);
    goto LABEL_7;
  }

  bzero(v5, *(v2 + 16256));
LABEL_7:
  v5[1] = v1;
  v5[2] = v1 + 2120;
  v5[3] = v1 + 24;
  v5[6] = 0x200000003;
  *(v5 + 14) = 4;
  *(v5 + 16) = 16;
  *v5 = &unk_2A23F8268;
  return v5;
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindAllResources(void *a1)
{
  v2 = a1[10];
  v3 = MEMORY[0x29EDC5638];
  v4 = *MEMORY[0x29EDC5638];
  v5 = v2 + v4;
  v6 = *(v2 + v4 + 16);
  if ((v6 & 0x7FFFFFFF80) != 0 && (v6 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v8 = *(a1[1] + 2008);
    if (*(v8[2].i64[1] + 480) == 1)
    {
      v9 = v8[3];
      v10 = v8[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v9), vceqzq_s64(v10))))))
      {
        v11 = (v2 + v4);
        if ((v6 & 0x1000000000000000) != 0)
        {
          v11 = *v5;
        }

        v12 = *v11;
        if (v12)
        {
          v13 = *v12;
          v14 = v12[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v12), vceqzq_s64(v14))))))
          {
            v15 = vandq_s8(v14, v10);
            v16 = v15.u64[1];
            if (v15.i64[1])
            {
              v17 = 3;
            }

            else
            {
              v16 = v15.i64[0];
              if (v15.i64[0])
              {
                v17 = 2;
              }

              else
              {
                v18 = vandq_s8(v13, v9);
                v16 = v18.u64[1];
                if (v18.i64[1])
                {
                  v17 = 1;
                }

                else
                {
                  v16 = v18.i64[0];
                  if (!v18.i64[0])
                  {
                    goto LABEL_24;
                  }

                  v17 = 0;
                }
              }
            }

            v19 = &v8->i8[8 * v17];
            v20 = *(v19 + 10);
            v21 = 1 << (__clz(v16) ^ 0x3Fu);
            v22 = (v21 & v20) != 0;
            if ((v21 & (*(v19 + 14) | v20)) != 0)
            {
              v23 = (*(v5 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
              v24 = (v2 + v4);
              if ((v6 & 0x1000000000000000) != 0)
              {
                v24 = *v5;
              }

              v49 = v24;
              v50 = v23;
              v51 = v6 >> 7;
              v52 = 1;
              v53 = v22;
              ResourceTracker<_ResourceGroupBinding>::addResource(v8, &v49, *(v5 + 48), 1);
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = IOGPUResourceListAddResource();
  v26 = a1[11];
  if (!v26)
  {
    return result;
  }

  v27 = a1[1];
  v28 = *v3;
  v29 = v26 + v28;
  v30 = *(v26 + v28 + 16);
  if ((v30 & 0x7FFFFFFF80) != 0 && (v30 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v32 = *(v27 + 2008);
    if (*(v32[2].i64[1] + 480) == 1)
    {
      v33 = v32[3];
      v34 = v32[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v33), vceqzq_s64(v34))))))
      {
        v35 = (v26 + v28);
        if ((v30 & 0x1000000000000000) != 0)
        {
          v35 = *v29;
        }

        v36 = *v35;
        if (v36)
        {
          v37 = *v36;
          v38 = v36[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v36), vceqzq_s64(v38))))))
          {
            v39 = vandq_s8(v38, v34);
            v40 = v39.u64[1];
            if (v39.i64[1])
            {
              v41 = 3;
              goto LABEL_45;
            }

            v40 = v39.i64[0];
            if (v39.i64[0])
            {
              v41 = 2;
              goto LABEL_45;
            }

            v42 = vandq_s8(v37, v33);
            v40 = v42.u64[1];
            if (v42.i64[1])
            {
              v41 = 1;
              goto LABEL_45;
            }

            v40 = v42.i64[0];
            if (v42.i64[0])
            {
              v41 = 0;
LABEL_45:
              v43 = &v32->i8[8 * v41];
              v44 = *(v43 + 10);
              v45 = 1 << (__clz(v40) ^ 0x3Fu);
              v46 = (v45 & v44) != 0;
              if ((v45 & (*(v43 + 14) | v44)) != 0)
              {
                v47 = (*(v29 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
                v48 = (v26 + v28);
                if ((v30 & 0x1000000000000000) != 0)
                {
                  v48 = *v29;
                }

                v49 = v48;
                v50 = v47;
                v51 = v30 >> 7;
                v52 = 65;
                v53 = v46;
                ResourceTracker<_ResourceGroupBinding>::addResource(v32, &v49, *(v29 + 48), 65);
              }
            }
          }
        }
      }
    }
  }

  return IOGPUResourceListAddResource();
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setRenderPipelineState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 104) != v2)
  {
    *(result + 104) = v2;
    *(result + 112) = 7;
  }

  v3 = *(a2 + 768);
  if (*(result + 48) != v3)
  {
    v4 = *(a2 + 764);
    goto LABEL_11;
  }

  v4 = *(a2 + 764);
  if (*(result + 52) != v4)
  {
    goto LABEL_11;
  }

  if (*(result + 64) != *(a2 + 784) || *(result + 68) != *(a2 + 788))
  {
    v4 = *(result + 52);
    goto LABEL_11;
  }

  v4 = *(result + 52);
  if (*(result + 96) != *(a2 + 760))
  {
LABEL_11:
    *(result + 48) = v3;
    *(result + 52) = v4;
    *(result + 64) = *(a2 + 784);
    *(result + 68) = *(a2 + 788);
    *(result + 96) = *(a2 + 760);
    *(result + 112) |= 1u;
  }

  v5 = *(a2 + 776);
  if (*(result + 56) != v5)
  {
    v6 = *(a2 + 780);
    goto LABEL_16;
  }

  v6 = *(a2 + 780);
  if (*(result + 100) != v6)
  {
LABEL_16:
    *(result + 56) = v5;
    *(result + 100) = v6;
    *(result + 112) |= 4u;
  }

  return result;
}

void AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawPatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffer(*(a1 + 8), a5, a6, 0x29u, 0);
  AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setPatchIndexBuffer(*(a1 + 8), a3, a4, *(a1 + 80));
  v13 = *(a1 + 8);
  v14 = (v13 + 49096);
  v15 = *(a1 + 104);
  v16 = *(a1 + 100);
  v17 = *(v15 + 4256);
  if (v17 == 1)
  {
    v18 = v16 == 0;
    v19 = 24;
    v20 = 12;
  }

  else
  {
    if (v17)
    {
      v19 = 0;
      goto LABEL_9;
    }

    v18 = v16 == 0;
    v19 = 16;
    v20 = 8;
  }

  if (v18)
  {
    v19 = v20;
  }

LABEL_9:
  v21 = *(v15 + 4260);
  v47 = v21 >= 2;
  v22 = v21 - 2;
  if (v47)
  {
    if (v22 > 1)
    {
      goto LABEL_14;
    }

    v23 = *(a1 + 44) / v19;
  }

  else
  {
    v23 = 0;
  }

  *(*v14 + 684) = v23;
LABEL_14:
  v24 = MEMORY[0x29EDC5638];
  if (((*(*(v13 + 30336) + 2480) | *(*(v13 + 30336) + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_21;
  }

  v25 = a7 + *MEMORY[0x29EDC5638];
  v26 = *(v25 + 8) + a8;
  *(v13 + 78096) |= 0x700000000000uLL;
  *(v13 + 78480) |= 0x40uLL;
  v27 = *v14;
  *(*v14 + 152) = v26 + 12;
  *(v13 + 49464) = v25;
  if (*(v13 + 29920) != 1)
  {
    v28 = *(v13 + 168);
    v29 = v28 + 1;
    if ((v28 + 1) > *(v13 + 160))
    {
      v90 = v13;
      v91 = AGX::DataBufferAllocator<44ul>::growNoInline(v13 + 24, 3, 0);
      v13 = v90;
      v28 = *(v90 + 168);
      if (!v91)
      {
        goto LABEL_19;
      }

      v29 = v28 + 1;
      if ((v28 + 1) > *(v90 + 160))
      {
        abort();
      }
    }

    *(v13 + 176) = v29;
LABEL_19:
    v30 = v28 + *(v13 + 184);
    *v28 = 0;
    *(v13 + 168) = v28 + 1;
    *(*v14 + 144) = v30;
    v25 = *(*(v13 + 48) + 224) + *v24;
    v13 = *(a1 + 8);
    goto LABEL_20;
  }

  *(v27 + 144) = v26 + 8;
LABEL_20:
  v14[45] = v25;
LABEL_21:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v13, 3);
  v31 = *(a1 + 8);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v31, v31[3792], v31[3793], v31[6136], v31[9129], (v31 + 9762), 0);
  v32 = *(a1 + 8);
  *(v32 + 1960) = 0;
  if (*(a1 + 112))
  {
    v33 = 1.0;
    if (*(a1 + 68) == 1)
    {
      v33 = *(a1 + 72);
    }

    v34 = *(a1 + 104);
    v35 = *(v34 + 4269);
    v36 = *(v34 + 4256);
    if (v35)
    {
      v37 = 0x10000;
    }

    else
    {
      v37 = 0;
    }

    v38 = (((((*(a1 + 64) - (*(a1 + 48) == 2)) << 23) + 528482304) & 0x1F800000 | (*(a1 + 48) << 30) | ((*(a1 + 52) & 1) << 29) | v37 & 0xFFE1FFFF | ((*(a1 + 56) & 3) << 17) & 0xFFE7FFFF | ((*(a1 + 100) & 1) << 19) & 0xFFEFFFFF | ((v36 & 1) << 20) | 0x200000) << 32) | 0x40000090;
    v39 = HIWORD(LODWORD(v33)) & 0x8000;
    v40 = fabsf(v33);
    if (v40 >= 65520.0)
    {
      LOWORD(v39) = v39 | 0x7C00;
    }

    else if (v40 > 0.000000029802)
    {
      if (v40 >= 0.000000089407)
      {
        if (v40 >= 2.351e-38)
        {
          v39 |= COERCE_UNSIGNED_INT(((v40 + COERCE_FLOAT(COERCE_UNSIGNED_INT(v33 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(v33 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13;
        }

        else
        {
          v39 |= vcvts_n_u32_f32(v40, 0x18uLL);
        }
      }

      else
      {
        LOWORD(v39) = v39 | 1;
      }
    }

    v41 = *(a1 + 24);
    v42 = *(v41 + 48);
    *v42 = v38;
    *(v42 + 8) = v39;
    *(v41 + 48) = v42 + 12;
    v32 = *(a1 + 8);
  }

  v43 = *v24;
  v44 = a7 + v43;
  v45 = *(a7 + v43 + 8);
  if (*(a1 + 88) != a7)
  {
    v46 = *(v44 + 16);
    v47 = (v46 & 0x7FFFFFFF80) != 0 && (v46 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
    if (!v47)
    {
      goto LABEL_60;
    }

    v48 = *(v32 + 2008);
    if (*(v48[2].i64[1] + 480) != 1)
    {
      goto LABEL_60;
    }

    v49 = v48[3];
    v50 = v48[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v49), vceqzq_s64(v50))))) & 1) == 0)
    {
      goto LABEL_60;
    }

    v51 = (a7 + v43);
    if ((v46 & 0x1000000000000000) != 0)
    {
      v51 = *v44;
    }

    v52 = *v51;
    if (!v52)
    {
      goto LABEL_60;
    }

    v53 = *v52;
    v54 = v52[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v54))))) & 1) == 0)
    {
      goto LABEL_60;
    }

    v55 = vandq_s8(v54, v50);
    v56 = v55.u64[1];
    if (v55.i64[1])
    {
      v57 = 3;
    }

    else
    {
      v56 = v55.i64[0];
      if (v55.i64[0])
      {
        v57 = 2;
      }

      else
      {
        v58 = vandq_s8(v53, v49);
        v56 = v58.u64[1];
        if (v58.i64[1])
        {
          v57 = 1;
        }

        else
        {
          v56 = v58.i64[0];
          if (!v58.i64[0])
          {
LABEL_60:
            IOGPUResourceListAddResource();
            v32 = *(a1 + 8);
            if (*(v32 + 1896))
            {
              MTLResourceListAddResource();
              v32 = *(a1 + 8);
            }

            *(a1 + 88) = a7;
            goto LABEL_63;
          }

          v57 = 0;
        }
      }
    }

    v59 = &v48->i8[8 * v57];
    v60 = *(v59 + 10);
    v61 = 1 << (__clz(v56) ^ 0x3Fu);
    v62 = (v61 & v60) != 0;
    if ((v61 & (*(v59 + 14) | v60)) != 0)
    {
      v63 = (a7 + v43);
      if ((v46 & 0x1000000000000000) != 0)
      {
        v63 = *v44;
      }

      v92 = v63;
      v93 = (v45 + 127) & 0xFFFFFFFFFFFFFF80;
      v94 = v46 >> 7;
      v95 = 65;
      v96 = v62;
      ResourceTracker<_ResourceGroupBinding>::addResource(v48, &v92, *(v44 + 48), 65);
    }

    goto LABEL_60;
  }

LABEL_63:
  if ((*(a1 + 112) & 2) != 0)
  {
    v64 = *(a1 + 80);
    v65 = *v24;
    v66 = v64 + v65;
    v67 = *(v64 + v65 + 16);
    if ((v67 & 0x7FFFFFFF80) == 0)
    {
      goto LABEL_84;
    }

    if ((v67 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_84;
    }

    v68 = *(v32 + 2008);
    if (*(v68[2].i64[1] + 480) != 1)
    {
      goto LABEL_84;
    }

    v69 = v68[3];
    v70 = v68[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v69), vceqzq_s64(v70))))) & 1) == 0)
    {
      goto LABEL_84;
    }

    v71 = (v64 + v65);
    if ((v67 & 0x1000000000000000) != 0)
    {
      v71 = *v66;
    }

    v72 = *v71;
    if (!v72)
    {
      goto LABEL_84;
    }

    v73 = *v72;
    v74 = v72[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v72), vceqzq_s64(v74))))) & 1) == 0)
    {
      goto LABEL_84;
    }

    v75 = vandq_s8(v74, v70);
    v76 = v75.u64[1];
    if (v75.i64[1])
    {
      v77 = 3;
    }

    else
    {
      v76 = v75.i64[0];
      if (v75.i64[0])
      {
        v77 = 2;
      }

      else
      {
        v78 = vandq_s8(v73, v69);
        v76 = v78.u64[1];
        if (v78.i64[1])
        {
          v77 = 1;
        }

        else
        {
          v76 = v78.i64[0];
          if (!v78.i64[0])
          {
LABEL_84:
            IOGPUResourceListAddResource();
            v32 = *(a1 + 8);
            goto LABEL_85;
          }

          v77 = 0;
        }
      }
    }

    v79 = &v68->i8[8 * v77];
    v80 = *(v79 + 10);
    v81 = 1 << (__clz(v76) ^ 0x3Fu);
    v82 = (v81 & v80) != 0;
    if ((v81 & (*(v79 + 14) | v80)) != 0)
    {
      v83 = (*(v66 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v84 = (v64 + v65);
      if ((v67 & 0x1000000000000000) != 0)
      {
        v84 = *v66;
      }

      v92 = v84;
      v93 = v83;
      v94 = v67 >> 7;
      v95 = 1;
      v96 = v82;
      ResourceTracker<_ResourceGroupBinding>::addResource(v68, &v92, *(v66 + 48), 1);
    }

    goto LABEL_84;
  }

LABEL_85:
  v86 = *(a1 + 24);
  v85 = *(a1 + 32);
  v87 = (*(a1 + 44) >> 2) & 0x7FFFF;
  v88 = *(a1 + 40) - 1;
  v89 = *(v86 + 48);
  *v89 = BYTE4(v85) | 0xB4300C00;
  v89[1] = v85;
  v89[2] = ((v45 + a8) >> 32);
  v89[3] = (v45 + a8) & 0xFFFFFFFC;
  v89[4] = v87;
  v89[5] = v88;
  v89[6] = BYTE5(v85);
  *(v86 + 48) = v89 + 7;
  ++*(v32 + 1940);
  *(a1 + 112) = 0;
}

void *AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setPatchIndexBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1 + 9762;
    v6 = (a2 + *MEMORY[0x29EDC5638]);
    v7 = v6->i64[1];
    v8 = v6[1].i64[1];
    a1[6631] = v7;
    a1[6701] = v8;
    v9 = v7 + a3;
    v10 = a1[6137];
    *(v10 + 104) = v9;
    *(v10 + 416) = v8 + a3;
    a1[6177] = v6;
    v11 = a1[251];
    v12 = v11[2].i64[1];
    if (*(v12 + 480) != 1)
    {
      goto LABEL_10;
    }

    v13 = v11[3];
    v14 = v11[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v14))))) & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((v6[1].i8[7] & 0x10) != 0)
    {
      v6 = v6->i64[0];
    }

    v15 = v6->i64[0];
    if (v15 && (v16 = *v15, v17 = v15[1], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v15), vceqzq_s64(v17))))) & 1) != 0))
    {
      v18 = vandq_s8(v17, v14);
      v19 = v18.u64[1];
      if (v18.i64[1])
      {
        v20 = 3;
LABEL_22:
        v25 = &v11->i8[8 * v20];
        v26 = __clz(v19) ^ 0x3F;
        v21 = ((*(v25 + 10) >> v26) & 1) << 39;
        v22 = ((*(v25 + 14) >> v26) & 1) << 39;
        goto LABEL_11;
      }

      v19 = v18.i64[0];
      if (v18.i64[0])
      {
        v20 = 2;
        goto LABEL_22;
      }

      v24 = vandq_s8(v16, v13);
      v19 = v24.u64[1];
      if (v24.i64[1])
      {
        v20 = 1;
        goto LABEL_22;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v19 = v24.i64[0];
      if (v24.i64[0])
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_10:
      v21 = 0;
      v22 = 0;
    }

LABEL_11:
    *v12 = *v12 & 0xFFFFFF7FFFFFFFFFLL | v21;
    *(v12 + 160) = *(v12 + 160) & 0xFFFFFF7FFFFFFFFFLL | v22;
    *(v12 + 320) &= ~0x8000000000uLL;
    result = a1[237];
    if (result)
    {
      result = MTLResourceListAddResource();
    }

    *v5 |= 0x8000000000uLL;
    v5[6] |= 0x8000000000uLL;
    v5[48] |= 0xC0uLL;
    return result;
  }

  return AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffer(a1, a4, 0, 0x27u, 0);
}

void AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawPatches(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffer(*(a1 + 8), a7, a8, 0x29u, 0);
  AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setPatchIndexBuffer(*(a1 + 8), a5, a6, *(a1 + 80));
  v15 = *(a1 + 8);
  v16 = *(a1 + 104);
  v17 = *(v16 + 4256);
  if (*(a1 + 100))
  {
    v18 = 24;
  }

  else
  {
    v18 = 12;
  }

  if (*(a1 + 100))
  {
    v19 = 16;
  }

  else
  {
    v19 = 8;
  }

  if (v17)
  {
    v19 = 0;
  }

  if (v17 != 1)
  {
    v18 = v19;
  }

  v20 = *(v16 + 4260);
  v46 = v20 >= 2;
  v21 = v20 - 2;
  if (v46)
  {
    if (v21 > 1)
    {
      goto LABEL_16;
    }

    v22 = *(a1 + 44) / v18;
  }

  else
  {
    v22 = 0;
  }

  *(v15[3068].i64[1] + 684) = v22;
LABEL_16:
  v23 = MEMORY[0x29EDC5638];
  if (((*(v15[1896].i64[0] + 2480) | *(v15[1896].i64[0] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_20;
  }

  v15[4881].i64[0] |= 0x700000000000uLL;
  v24 = v15[3068].i64[1];
  v15[4905].i64[0] |= 0x40uLL;
  *(v24 + 160) = a10;
  v25 = v15[10].i64[1];
  v26 = v25 + 2;
  if ((v25 + 2) > v15[10].i64[0])
  {
    v69 = v15;
    v70 = AGX::DataBufferAllocator<44ul>::growNoInline(&v15[1].u64[1], 3, 0);
    v15 = v69;
    v25 = v69[10].i64[1];
    if (!v70)
    {
      goto LABEL_19;
    }

    v26 = v25 + 2;
    if ((v25 + 2) > v69[10].i64[0])
    {
      abort();
    }
  }

  v15[11].i64[0] = v26;
LABEL_19:
  v27 = v25 + v15[11].i64[1];
  v15[10].i64[1] = (v25 + 2);
  v28 = v15[3068].i64[1];
  *(v28 + 144) = v27;
  *(v28 + 152) = v27 + 4;
  *v25 = 0;
  v25[1] = a10;
  v15[3091] = vdupq_n_s64(*(v15[3].i64[0] + 224) + *v23);
  v15 = *(a1 + 8);
LABEL_20:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v15, 3);
  v29 = *(a1 + 8);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v29, v29[3792], v29[3793], v29[6136], v29[9129], (v29 + 9762), 0);
  v30 = *(a1 + 8);
  *(v30 + 1960) = 0;
  v31 = *(a1 + 112);
  if ((v31 & 5) != 0)
  {
    v32 = 1.0;
    if (*(a1 + 68) == 1)
    {
      v32 = *(a1 + 72);
    }

    v33 = *(a1 + 104);
    v34 = *(v33 + 4269);
    v35 = *(v33 + 4256);
    if (v34)
    {
      v36 = 0x10000;
    }

    else
    {
      v36 = 0;
    }

    v37 = (((((*(a1 + 64) - (*(a1 + 48) == 2)) << 23) + 528482304) & 0x1F800000 | (*(a1 + 48) << 30) | ((*(a1 + 52) & 1) << 29) | v36 & 0xFFE1FFFF | ((*(a1 + 56) & 3) << 17) & 0xFFE7FFFF | ((*(a1 + 100) & 1) << 19) & 0xFFEFFFFF | ((v35 & 1) << 20) | 0x200000) << 32) | 0x40000090;
    v38 = HIWORD(LODWORD(v32)) & 0x8000;
    v39 = fabsf(v32);
    if (v39 >= 65520.0)
    {
      LOWORD(v38) = v38 | 0x7C00;
    }

    else if (v39 > 0.000000029802)
    {
      if (v39 >= 0.000000089407)
      {
        if (v39 >= 2.351e-38)
        {
          v38 |= COERCE_UNSIGNED_INT(((v39 + COERCE_FLOAT(COERCE_UNSIGNED_INT(v32 * 8192.0) & 0x7F800000)) - COERCE_FLOAT(COERCE_UNSIGNED_INT(v32 * 8192.0) & 0x7F800000)) * 1.9259e-34) >> 13;
        }

        else
        {
          v38 |= vcvts_n_u32_f32(v39, 0x18uLL);
        }
      }

      else
      {
        LOWORD(v38) = v38 | 1;
      }
    }

    v40 = *(a1 + 24);
    v41 = *(v40 + 48);
    *v41 = v37;
    *(v41 + 8) = v38;
    *(v40 + 48) = v41 + 12;
    v31 = *(a1 + 112);
    v30 = *(a1 + 8);
  }

  if ((v31 & 2) != 0)
  {
    v42 = *(a1 + 80);
    v43 = *v23;
    v44 = v42 + v43;
    v45 = *(v42 + v43 + 16);
    v46 = (v45 & 0x7FFFFFFF80) != 0 && (v45 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
    if (!v46)
    {
      goto LABEL_59;
    }

    v47 = *(v30 + 2008);
    if (*(v47[2].i64[1] + 480) != 1)
    {
      goto LABEL_59;
    }

    v48 = v47[3];
    v49 = v47[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v48), vceqzq_s64(v49))))) & 1) == 0)
    {
      goto LABEL_59;
    }

    v50 = (v42 + v43);
    if ((v45 & 0x1000000000000000) != 0)
    {
      v50 = *v44;
    }

    v51 = *v50;
    if (!v51)
    {
      goto LABEL_59;
    }

    v52 = *v51;
    v53 = v51[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v51), vceqzq_s64(v53))))) & 1) == 0)
    {
      goto LABEL_59;
    }

    v54 = vandq_s8(v53, v49);
    v55 = v54.u64[1];
    if (v54.i64[1])
    {
      v56 = 3;
    }

    else
    {
      v55 = v54.i64[0];
      if (v54.i64[0])
      {
        v56 = 2;
      }

      else
      {
        v57 = vandq_s8(v52, v48);
        v55 = v57.u64[1];
        if (v57.i64[1])
        {
          v56 = 1;
        }

        else
        {
          v55 = v57.i64[0];
          if (!v57.i64[0])
          {
LABEL_59:
            IOGPUResourceListAddResource();
            v30 = *(a1 + 8);
            goto LABEL_60;
          }

          v56 = 0;
        }
      }
    }

    v58 = &v47->i8[8 * v56];
    v59 = *(v58 + 10);
    v60 = 1 << (__clz(v55) ^ 0x3Fu);
    v61 = (v60 & v59) != 0;
    if ((v60 & (*(v58 + 14) | v59)) != 0)
    {
      v62 = (*(v44 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v63 = (v42 + v43);
      if ((v45 & 0x1000000000000000) != 0)
      {
        v63 = *v44;
      }

      v71[0] = v63;
      v71[1] = v62;
      v72 = v45 >> 7;
      v73 = 1;
      v74 = v61;
      ResourceTracker<_ResourceGroupBinding>::addResource(v47, v71, *(v44 + 48), 1);
    }

    goto LABEL_59;
  }

LABEL_60:
  v65 = *(a1 + 24);
  v64 = *(a1 + 32);
  v66 = (*(a1 + 44) >> 2) & 0x7FFFF;
  v67 = *(a1 + 40) - 1;
  v68 = *(v65 + 48);
  *v68 = BYTE4(v64) | 0xB2F00C00;
  v68[1] = v64;
  v68[2] = a4;
  v68[3] = a9;
  v68[4] = a3;
  v68[5] = a10;
  v68[6] = v66;
  v68[7] = v67;
  v68[8] = BYTE5(v64);
  *(v65 + 48) = v68 + 9;
  ++*(v30 + 1940);
  *(a1 + 112) = 0;
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTessellationFactorScale(uint64_t result, float a2)
{
  if (*(result + 72) != a2)
  {
    *(result + 72) = a2;
    *(result + 112) |= 1u;
  }

  return result;
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTessellationFactorBuffer(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = result;
  if (a2)
  {
    v7 = a2 + *MEMORY[0x29EDC5638];
    v8 = *(v7 + 16);
    v9 = *(v7 + 8) + a3;
    v10 = (v8 + 3) >> 2;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
  }

  if (*(result + 32) != v9 || *(result + 44) != a4)
  {
    *(result + 32) = v9;
    *(result + 40) = v10;
    result = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramBuffer(*(result + 8), a2, a3, 0x23u, 0);
    *(v6 + 44) = a4;
    if (*(v6 + 80) != a2)
    {
      *(v6 + 80) = a2;
      result = *(*(v6 + 8) + 1896);
      if (result)
      {
        result = MTLResourceListAddResource();
      }

      *(v6 + 112) |= 2u;
    }
  }

  return result;
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextA * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8220;
  a2[1] = v2;
  return result;
}

void sub_29CED9014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!v22)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(uint64_t result, void *a2, void *a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v9 = *v5;
      v10 = *(*v5 + v6);
      if (v10 > 0x14)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_29F3421D0[v10];
      }

      add = atomic_fetch_add((*(v5 + 16) + 17008), 1uLL);
      v13 = v9 + v6;
      [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v9 + v6 + 8), *(v9 + v6 + 24), add, v11)}];
      v14 = [a3 objectForKey:v11];
      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        [a3 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:*(v13 + 16) length:*(v13 + 24)];
      result = [v14 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB728]), "initWithBinary:uniqueIdentifier:debugIdentifier:", v8, add, *(v13 + 32))}];
      ++v7;
      v6 += 40;
    }

    while (v7 < *(v5 + 8));
  }

  return result;
}

uint64_t AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(v1 + 1872) + 848);
  v3 = *(*(result + 56) + 240);
  v4 = *(*(result + 56) + 248);
  v6 = *(*(result + 56) + 256);
  v5 = *(*(result + 56) + 264);
  v7 = *(*(result + 56) + 272);
  *(v1 + 78480) |= 0x3BuLL;
  if (*(result + 65) == 1)
  {
    AGX::cloneIFTs_impl<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>();
  }

  if (v6)
  {
    v8 = *(v2 + 16624);
    v9 = *(result + 24) + 24 * *(result + 36);
    *v9 = 3;
    v10 = *(*(result + 48) + 1924);
    if (v8 == 1)
    {
      *(v9 + 4) = v10;
      *v9 = (*(result + 40) << 8) | 3;
    }

    else
    {
      *v9 = (v10 << 8) | 3;
      *(v9 + 4) = *(result + 40);
    }

    v11 = *(v6 + 1528);
    *(v9 + 8) = v11;
    *(v9 + 16) = *(v6 + 1824) + v11;
    *(result + 36) = (*(result + 36) + 1) % *(result + 32);
  }

  if (v4)
  {
    v12 = *(v2 + 16624);
    v13 = *(result + 24) + 24 * *(result + 36);
    *v13 = 1;
    v14 = *(*(result + 48) + 1924);
    if (v12 == 1)
    {
      *(v13 + 4) = v14;
      *v13 = (*(result + 40) << 8) | 1;
    }

    else
    {
      *v13 = (v14 << 8) | 1;
      *(v13 + 4) = *(result + 40);
    }

    v15 = *(v4 + 1528);
    *(v13 + 8) = v15;
    *(v13 + 16) = *(v4 + 1824) + v15;
    *(result + 36) = (*(result + 36) + 1) % *(result + 32);
  }

  if (v5)
  {
    v16 = *(v2 + 16624);
    v17 = *(result + 24) + 24 * *(result + 36);
    *v17 = 8;
    v18 = *(*(result + 48) + 1924);
    if (v16 == 1)
    {
      *(v17 + 4) = v18;
      *v17 = (*(result + 40) << 8) | 8;
    }

    else
    {
      *v17 = (v18 << 8) | 8;
      *(v17 + 4) = *(result + 40);
    }

    v19 = *(v5 + 1528);
    *(v17 + 8) = v19;
    *(v17 + 16) = *(v5 + 1824) + v19;
    *(result + 36) = (*(result + 36) + 1) % *(result + 32);
  }

  if (v7)
  {
    v20 = *(v2 + 16624);
    v21 = *(result + 24) + 24 * *(result + 36);
    *v21 = 7;
    v22 = *(*(result + 48) + 1924);
    if (v20 == 1)
    {
      *(v21 + 4) = v22;
      *v21 = (*(result + 40) << 8) | 7;
    }

    else
    {
      *v21 = (v22 << 8) | 7;
      *(v21 + 4) = *(result + 40);
    }

    v23 = *(v7 + 1528);
    *(v21 + 8) = v23;
    *(v21 + 16) = *(v7 + 1824) + v23;
    *(result + 36) = (*(result + 36) + 1) % *(result + 32);
  }

  if (v3)
  {
    v24 = *(v2 + 16624);
    v25 = *(result + 24) + 24 * *(result + 36);
    *v25 = 2;
    v26 = *(*(result + 48) + 1924);
    if (v24 == 1)
    {
      *(v25 + 4) = v26;
      *v25 = (*(result + 40) << 8) | 2;
    }

    else
    {
      *v25 = (v26 << 8) | 2;
      *(v25 + 4) = *(result + 40);
    }

    v27 = *(v3 + 1528);
    *(v25 + 8) = v27;
    *(v25 + 16) = *(v3 + 1824) + v27;
    *(result + 36) = (*(result + 36) + 1) % *(result + 32);
  }

  ++*(result + 40);
  return result;
}

uint64_t AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawPatches(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(a1);
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 48);
  v9 = v8[6137];
  v8[9934] |= 0x8000uLL;
  *(v9 + 716) = a2;
  *(v9 + 680) = v7 != 0;
  v8[9772] |= 0x20uLL;
  v8[9810] |= 0x40uLL;
  v10 = v8[3469];
  if (!v10)
  {
    v10 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(v8[3473]);
    v6 = a2;
    v8[3469] = v10;
  }

  result = (*(*v10 + 40))(v10, v6);
  if (*(a1 + 64) == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v13 = *(a1 + 48);
    v14 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v13 + 30352), v12);
    v15 = *(v13 + 2120);
    if (v15)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v15, v12, v14);
      *(*(v13 + 2120) + 8) = 0;
    }

    v16 = *(a1 + 8);

    return [v16 addObject:v12];
  }

  return result;
}

uint64_t AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawPatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(a1);
  v15 = a5;
  v16 = *(a1 + 48);
  v16[9934] |= 0x8000uLL;
  v17 = v16[6137];
  v17[179] = a2;
  v17[170] = v15 != 0;
  v17[168] = a10;
  v16[9772] |= 0x20uLL;
  v16[9810] |= 0x40uLL;
  v18 = v16[3469];
  if (!v18)
  {
    v18 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(v16[3473]);
    v16[3469] = v18;
  }

  result = (*(*v18 + 32))(v18, a2, a3, a4);
  if (*(a1 + 64) == 1)
  {
    v20 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v21 = *(a1 + 48);
    v22 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v21 + 30352), v20);
    v23 = *(v21 + 2120);
    if (v23)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v23, v20, v22);
      *(*(v21 + 2120) + 8) = 0;
    }

    v24 = *(a1 + 8);

    return [v24 addObject:v20];
  }

  return result;
}

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawIndexedPrimitives(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(a1);
  v14 = *(a1 + 48);
  v15 = MEMORY[0x29EDC5638];
  v16 = *MEMORY[0x29EDC5638];
  v17 = a7 + v16;
  v18 = *(a7 + v16 + 8);
  v19 = *(a7 + v16 + 16);
  if (v14[1880].i64[1] == a7)
  {
    goto LABEL_28;
  }

  v58 = *(a7 + v16 + 8);
  if ((v19 & 0x7FFFFFFF80) != 0 && (v19 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v21 = v14[125].i64[1];
    if (*(v21[2].i64[1] + 480) == 1)
    {
      v22 = v21[3];
      v23 = v21[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))))
      {
        v24 = (a7 + v16);
        if ((v19 & 0x1000000000000000) != 0)
        {
          v24 = *v17;
        }

        v25 = *v24;
        if (v25)
        {
          v26 = *v25;
          v27 = v25[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v27))))))
          {
            v28 = vandq_s8(v27, v23);
            v29 = v28.u64[1];
            if (v28.i64[1])
            {
              v30 = 3;
              goto LABEL_21;
            }

            v29 = v28.i64[0];
            if (v28.i64[0])
            {
              v30 = 2;
              goto LABEL_21;
            }

            v31 = vandq_s8(v26, v22);
            v29 = v31.u64[1];
            if (v31.i64[1])
            {
              v30 = 1;
              goto LABEL_21;
            }

            v29 = v31.i64[0];
            if (v31.i64[0])
            {
              v30 = 0;
LABEL_21:
              v32 = &v21->i8[8 * v30];
              v33 = *(v32 + 10);
              v34 = 1 << (__clz(v29) ^ 0x3Fu);
              v35 = (v34 & v33) != 0;
              if ((v34 & (*(v32 + 14) | v33)) != 0)
              {
                v36 = (a7 + v16);
                if ((v19 & 0x1000000000000000) != 0)
                {
                  v36 = *v17;
                }

                v62[0] = v36;
                v62[1] = (v58 + 127) & 0xFFFFFFFFFFFFFF80;
                v63 = v19 >> 7;
                v64 = 1;
                v65 = v35;
                ResourceTracker<_ResourceGroupBinding>::addResource(v21, v62, *(v17 + 48), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (v14[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  v14[1880].i64[1] = a7;
  v18 = v58;
LABEL_28:
  if (((*(v14[1896].i64[0] + 2480) | *(v14[1896].i64[0] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_32;
  }

  v14[4881].i64[0] |= 0x700000000000uLL;
  v14[4905].i64[0] |= 0x40uLL;
  v37 = a4;
  *(v14[3068].i64[1] + 160) = a4;
  v38 = v14[10].i64[1];
  v39 = v38 + 2;
  if ((v38 + 2) > v14[10].i64[0])
  {
    v56 = v18;
    v57 = AGX::DataBufferAllocator<44ul>::growNoInline(&v14[1].u64[1], 3, 0);
    v38 = v14[10].i64[1];
    if (!v57)
    {
      v18 = v56;
      v37 = a4;
      goto LABEL_31;
    }

    v39 = v38 + 2;
    v18 = v56;
    v37 = a4;
    if ((v38 + 2) > v14[10].i64[0])
    {
      abort();
    }
  }

  v14[11].i64[0] = v39;
LABEL_31:
  v40 = v38 + v14[11].i64[1];
  v14[10].i64[1] = (v38 + 2);
  v41 = v14[3068].i64[1];
  *(v41 + 144) = v40;
  *(v41 + 152) = v40 + 4;
  *v38 = a9;
  v38[1] = v37;
  v14[3091] = vdupq_n_s64(*(v14[3].i64[0] + 224) + *v15);
LABEL_32:
  v42 = a8 & 0xFFFFFFFC;
  v43 = v18 + a8;
  if ((v14[1879].i8[1] & 1) == 0)
  {
    v14[1879].i8[1] = 1;
    v14[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v14, a2);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v14, v14[1896].i64[0], v14[1896].i64[1], v14[3068].i64[0], v14[4564].i64[1], v14[4881].i64, 0);
  if (*(v14[149].i64[1] + 4907) == 1)
  {
    v44 = 0x114u >> a2;
    if (a2 >= 9)
    {
      LOBYTE(v44) = 0;
    }
  }

  else
  {
    LOBYTE(v44) = v14[1879].i8[3];
  }

  LODWORD(v45) = v14[1879].i32[1];
  if (v45 >= 0xFFFF)
  {
    v46 = 0xFFFF;
  }

  else
  {
    v46 = v14[1879].u32[1];
  }

  if (a6 == 1)
  {
    v45 = v45;
  }

  else
  {
    v45 = v46;
  }

  v47 = v14[4].i64[1];
  *v47 = (v45 << 32) | 0x40000001;
  if (v44)
  {
    v48 = 0x10000;
  }

  else
  {
    v48 = 0;
  }

  v49 = BYTE4(v43) | v48 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a2] + (a6 << 17)) & 0xFFEEFF00 | 0x100000;
  if ((v19 & 0xFFFFFFFFFFFFFFLL) <= v42)
  {
    v50 = -1;
  }

  else
  {
    v50 = ((v19 - v42 + 3) >> 2) - 1;
  }

  *(v47 + 8) = v49;
  *(v47 + 12) = v43;
  *(v47 + 16) = a3;
  *(v47 + 20) = a5;
  *(v47 + 24) = a9;
  *(v47 + 28) = v50;
  *(v47 + 32) = BYTE5(v43);
  v14[4].i64[1] = v47 + 36;
  ++v14[121].i32[1];
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        a3 >>= 1;
      }

      else if (a2 == 2)
      {
        --a3;
      }

      goto LABEL_67;
    }

    if (a2 == 3)
    {
      a3 /= 3u;
      goto LABEL_67;
    }

    if (a2 != 4)
    {
      goto LABEL_67;
    }

LABEL_60:
    a3 -= 2;
    goto LABEL_67;
  }

  if (a2 <= 7)
  {
    if (a2 != 6)
    {
      a3 >>= 2;
      goto LABEL_67;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    a3 = ((a3 - 4) >> 1) + 1;
  }

  else if (a2 == 9)
  {
    a3 /= 3u;
  }

LABEL_67:
  v14[122].i32[1] += a3 * a5;
  if (*(a1 + 64) == 1)
  {
    v51 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v52 = *(a1 + 48);
    v53 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v52 + 30352), v51);
    v54 = *(v52 + 2120);
    if (v54)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v54, v51, v53);
      *(*(v52 + 2120) + 8) = 0;
    }

    v55 = *(a1 + 8);

    [v55 addObject:v51];
  }
}

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(a1);
  v8 = *(a1 + 48);
  v9 = *a2;
  v17 = a2[1].i64[0];
  v10 = a3[1];
  v15[0] = *a3;
  v15[1] = v10;
  v15[2] = a3[2];
  v16 = v9;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWarpedThreads(v8, &v16, v15, a4, 0);
  if (*(a1 + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = *(a1 + 48);
    v13 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 30352), v11);
    v14 = *(v12 + 2120);
    if (v14)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v14, v11, v13);
      *(*(v12 + 2120) + 8) = 0;
    }

    [*(a1 + 8) addObject:v11];
  }
}

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawPrimitives(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(a1);
  v11 = *(a1 + 48);
  if (v11[1870].i8[0])
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  if (((*(v11[1896].i64[0] + 2480) | *(v11[1896].i64[0] + 2432)) & 0x700000000000) != 0)
  {
    v11[4881].i64[0] |= 0x700000000000uLL;
    v11[4905].i64[0] |= 0x40uLL;
    *(v11[3068].i64[1] + 160) = a5;
    v13 = v11[10].i64[1];
    v14 = v13 + 2;
    if ((v13 + 2) > v11[10].i64[0])
    {
      v31 = AGX::DataBufferAllocator<44ul>::growNoInline(&v11[1].u64[1], 3, 0);
      v13 = v11[10].i64[1];
      if (!v31)
      {
        goto LABEL_7;
      }

      v14 = v13 + 2;
      if ((v13 + 2) > v11[10].i64[0])
      {
        abort();
      }
    }

    v11[11].i64[0] = v14;
LABEL_7:
    v15 = v13 + v11[11].i64[1];
    v11[10].i64[1] = (v13 + 2);
    v16 = v11[3068].i64[1];
    *(v16 + 144) = v15;
    *(v16 + 152) = v15 + 4;
    *v13 = v12;
    v13[1] = a5;
    v11[3091] = vdupq_n_s64(*(v11[3].i64[0] + 224) + *MEMORY[0x29EDC5638]);
  }

  if (v11[1879].i8[1] == 1)
  {
    v11[1879].i8[1] = 0;
    v11[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v11, a2);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v11, v11[1896].i64[0], v11[1896].i64[1], v11[3068].i64[0], v11[4564].i64[1], v11[4881].i64, 0);
  LODWORD(v17) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a2] & 0xFFFEFFFF;
  DWORD1(v17) = a4;
  *(&v17 + 1) = __PAIR64__(a3, a6);
  v18 = v11[4].i64[1];
  *v18 = v17;
  v11[4].i64[1] = (v18 + 1);
  ++v11[121].i32[1];
  v19 = a4 / 3;
  if (a2 == 9)
  {
    v20 = a4 / 3;
  }

  else
  {
    v20 = a4;
  }

  if (a2 == 8)
  {
    v21 = ((a4 - 4) >> 1) + 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = a4 - 2;
  v23 = a4 >> 2;
  if (a2 != 7)
  {
    v23 = a4;
  }

  if (a2 == 6)
  {
    v23 = a4 - 2;
  }

  if (a2 <= 7)
  {
    v21 = v23;
  }

  if (a2 != 4)
  {
    v22 = a4;
  }

  if (a2 != 3)
  {
    v19 = v22;
  }

  v24 = a4 >> 1;
  v25 = a4 - 1;
  if (a2 != 2)
  {
    v25 = a4;
  }

  if (a2 != 1)
  {
    v24 = v25;
  }

  if (a2 <= 2)
  {
    v19 = v24;
  }

  if (a2 <= 5)
  {
    v21 = v19;
  }

  v11[122].i32[1] += v21 * a6;
  if (*(a1 + 64) == 1)
  {
    v26 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v27 = *(a1 + 48);
    v28 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v27 + 30352), v26);
    v29 = *(v27 + 2120);
    if (v29)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v29, v26, v28);
      *(*(v27 + 2120) + 8) = 0;
    }

    v30 = *(a1 + 8);

    [v30 addObject:v26];
  }
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVirtualMapping(uint64_t a1, int a2, int a3)
{
  if (!a3 || (a2 & 1) != 0)
  {
    if (!a2)
    {
      return;
    }

LABEL_9:
    if (a3 && (v5 = *(a1 + 7688)) != 0 && (v6 = *(v5 + 3688)) != 0 && *(v6 + 64) == 1)
    {
      v7 = (v6 + 136);
    }

    else
    {
      v7 = (a1 + 11368);
    }

    v8 = *v7;
    v9 = HIWORD(v8);
    v10 = HIBYTE(v8);
    v11 = *(*(a1 + 2392) + 440);
    if ((v11 >> v8))
    {
      v12 = v8;
    }

    else
    {
      v12 = -1;
    }

    v13 = vdupq_n_s64(v8);
    LOBYTE(v39) = v12;
    v14 = vuzp1q_s32(vshlq_u64(v13, xmmword_29D2F24A0), vshlq_u64(v13, xmmword_29D2F2490));
    v15 = vmovn_s32(v14);
    v16.i64[0] = 0xFF000000FFLL;
    v16.i64[1] = 0xFF000000FFLL;
    v17 = vandq_s8(v14, v16);
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    *v17.i8 = vorr_s8(v15, vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(v11), vshlq_u32(v16, v17)))));
    *(&v39 + 1) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
    if ((v11 >> SBYTE5(v8)))
    {
      v18 = BYTE5(v8);
    }

    else
    {
      v18 = -1;
    }

    BYTE5(v39) = v18;
    if ((v11 >> v9))
    {
      v19 = v9;
    }

    else
    {
      v19 = -1;
    }

    BYTE6(v39) = v19;
    if ((v11 >> v10))
    {
      v20 = v10;
    }

    else
    {
      v20 = -1;
    }

    HIBYTE(v39) = v20;
    if (*(a1 + 11360) != v39)
    {
      *(a1 + 11385) = 257;
      *(a1 + 11360) = v39;
LABEL_29:
      v21 = *(a1 + 7688);
      if (v21 && a3)
      {
        v22 = *(v21 + 3140);
        if (*(v21 + 3136) == 1)
        {
          v23 = vshr_n_u32(v22, 8uLL);
          v24 = vshr_n_u32(v22, 0xCuLL);
          v25 = vshr_n_u32(v22, 0x10uLL);
          v26 = vshr_n_u32(v22, 0x14uLL);
          v27 = vshr_n_u32(v22, 0x18uLL);
          v28 = vshr_n_u32(v22, 0x1CuLL);
          v29.i32[0] = *(a1 + 11360);
          v29.i32[1] = *(a1 + 11361);
          v30.i32[1] = HIDWORD(*(v21 + 3140));
          v30.i32[0] = v22.i32[0] >> 4;
          v31 = vshl_n_s32(v29, 2uLL);
          v22.i32[1] = v22.i32[1] >> 4;
          v22 = vorr_s8(vorr_s8(vshl_u32(v28, vdup_n_s32(4 * *(a1 + 11367))), vorr_s8(vshl_u32(vand_s8(v26, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 11365))), vshl_u32(vand_s8(v22, 0xF0000000FLL), v31))), vorr_s8(vshl_u32((*&v27 & 0xFFFFFF0FFFFFFF0FLL), vdup_n_s32(4 * *(a1 + 11366))), vorr_s8(vshl_u32(vand_s8(v25, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 11364))), vorr_s8(vshl_u32(vand_s8(v24, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 11363))), vorr_s8(vshl_u32(vand_s8(v23, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 11362))), vshl_u32(vand_s8(v30, 0xF0000000FLL), vrev64_s32(v31)))))));
        }

        v32 = *(a1 + 11376) != v22.i32[0] || *(a1 + 11380) != v22.i32[1];
        *(a1 + 11386) = v32;
        *(a1 + 11376) = v22;
        if (*v21)
        {
          v36 = a1;
          v37 = a2;
          v38 = a3;
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderISPState(a1, *v21);
          a1 = v36;
          LOBYTE(a2) = v37;
          a3 = v38;
        }
      }

      goto LABEL_45;
    }

    if (*(a1 + 11384))
    {
      if (!a3 || (v33 = *(a1 + 7688)) == 0)
      {
        *(a1 + 11385) = 257;
        goto LABEL_29;
      }

      v34 = *(a1 + 11386) | *(v33 + 3136);
      *(a1 + 11386) = v34;
      v35 = *v33;
      if (v35)
      {
        *(a1 + 11385) |= *(v35 + 4065);
        if (v34)
        {
          goto LABEL_29;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }
    }

    else if (*(a1 + 11386))
    {
      goto LABEL_29;
    }

LABEL_45:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindStatelessPsoMetadataArgumentBuffer(a1, a2, a3);
    return;
  }

  v3 = *(a1 + 7688);
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      if (*(v4 + 4065) & 1) != 0 || (*(v4 + 4066))
      {
        goto LABEL_9;
      }
    }
  }
}

int8x8_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderISPState(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 0x2000;
  v5 = *(a1 + 7688);
  if (*(v5 + 3136) == 1)
  {
    if ((*(a1 + 11386) & 1) == 0 && *(a1 + 11384) != 1)
    {
      goto LABEL_37;
    }

    v33 = *(v5 + 804);
    v34 = *(v5 + 800);
    v35 = *(v5 + 808);
    v32 = *(v5 + 816);
    v6 = *(a1 + 2392);
    v7 = *(a1 + 11376);
    v8 = *(a1 + 11380);
    v9 = *(a2 + 3912);
    v10 = *(a2 + 4081);
    v11 = *(a2 + 4084);
    v37 = 0;
    v36 = 0;
    v38[0] = _AGCDrawBufferState::isRtFormatUnknown;
    v38[1] = 0;
    v38[2] = v6 + 408;
    v12 = _AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v38);
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      if (v9)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      agxsGetShaderPassInfo((17 - v14), (v6 + 408), v7, v8, &v36, &v37);
      v13 = (v36 << v14) & 0x1FFFF;
    }

    if ((v11 - 1) >= 2)
    {
      if (v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = v37;
      }
    }

    else if ((v37 | v10))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = (*(v6 + 440) & 0x300) != 0 && v15 == 3 || v15 == 2;
    if (*(a2 + 4088))
    {
      v23 = 0x400000;
    }

    else
    {
      v23 = 0;
    }

    if (*(a2 + 3919))
    {
      v24 = 0x2000000;
    }

    else
    {
      v24 = 0;
    }

    if ((v22 | *(a2 + 4090)))
    {
      v25 = 0x4000000;
    }

    else
    {
      v25 = 0;
    }

    v26 = v33 & 0x199FFFFF | v23 | v24 | v25 | (v15 << 29);
    v27 = *(a1 + 6008) & 0xF7200000;
    v28 = *(a1 + 6012) & 0xF7200000;
    *(a1 + 6000) = v34;
    *(a1 + 6004) = v26;
    *(a1 + 6008) = v35;
    *(a1 + 6016) = v32 & 0xFFFE0000 | v13;
    *(a1 + 6008) = v35 & 0x8DFFFFF | v27;
    v19 = *(a1 + 6012) & 0x8DFFFFF | v28;
  }

  else
  {
    v16 = *(a1 + 6008) & 0xF7200000;
    v17 = *(a1 + 6012) & 0xF7200000;
    v18 = *(v5 + 816);
    *(a1 + 6000) = *(v5 + 800);
    *(a1 + 6016) = v18;
    *(a1 + 6008) = *(a1 + 6008) & 0x8DFFFFF | v16;
    v19 = *(a1 + 6012) & 0x8DFFFFF | v17;
  }

  *(a1 + 6012) = v19;
LABEL_37:
  *(v4 + 3194) = 0;
  v29 = *(a2 + 3925);
  if ((v29 - 1) < 2 && (*(*(*(a1 + 1872) + 848) + 16456) & 0x8000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a2 + 3925);
  }

  if (*(a1 + 6008) >> 28)
  {
    LOBYTE(v29) = v30;
  }

  result = vorr_s8(vdup_n_s32((v29 & 3) << 22), (*(a1 + 6008) & 0xFF3FFFFFFF3FFFFFLL));
  *(a1 + 6008) = result;
  *(a1 + 10472) |= 0x100000000000uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindStatelessPsoMetadataArgumentBuffer(uint64_t a1, char a2, int a3)
{
  v3 = a2;
  if (!a3 || (a2 & 1) != 0)
  {
LABEL_6:
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 7688);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      v3 = *(v5 + 4065);
      a2 = *(v5 + 4066);
      goto LABEL_6;
    }
  }

  a2 = 0;
  v3 = 0;
LABEL_9:
  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_10:
  if (v3)
  {
    v6 = *(a1 + 2392) + 408;
    v7 = *(a1 + 11360);
    if (v7 > 7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v6 + 4 * v7);
      if ((~v8 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v9 = (v8 >> 12);
    }

    v17 = *(a1 + 11361);
    if (v17 > 7)
    {
      v16 = 0;
    }

    else
    {
      v18 = *(v6 + 4 * v17);
      if ((~v18 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v16 = (v18 >> 12);
    }

    v19 = *(a1 + 11362);
    if (v19 > 7)
    {
      v10 = 0;
    }

    else
    {
      v20 = *(v6 + 4 * v19);
      if ((~v20 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v10 = (v20 >> 12);
    }

    v21 = *(a1 + 11363);
    if (v21 > 7)
    {
      v11 = 0;
    }

    else
    {
      v22 = *(v6 + 4 * v21);
      if ((~v22 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v11 = (v22 >> 12);
    }

    v23 = *(a1 + 11364);
    if (v23 > 7)
    {
      v12 = 0;
    }

    else
    {
      v24 = *(v6 + 4 * v23);
      if ((~v24 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v12 = (v24 >> 12);
    }

    v25 = *(a1 + 11365);
    if (v25 > 7)
    {
      v13 = 0;
    }

    else
    {
      v26 = *(v6 + 4 * v25);
      if ((~v26 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v13 = (v26 >> 12);
    }

    v27 = *(a1 + 11366);
    if (v27 > 7)
    {
      v14 = 0;
    }

    else
    {
      v28 = *(v6 + 4 * v27);
      if ((~v28 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v14 = (v28 >> 12);
    }

    v29 = *(a1 + 11367);
    if (v29 > 7)
    {
      v15 = 0;
      *(a1 + 11384) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

    v30 = *(v6 + 4 * v29);
    if ((~v30 & 0xFF000) != 0)
    {
      v15 = (v30 >> 12);
      *(a1 + 11384) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_46:
      v37 = *(a1 + 9752);
      v33 = *(v37 + 876);
      v34 = *(v37 + 880);
      v35 = *(v37 + 884);
      v36 = *(v37 + 888);
      v31 = *(v37 + 24);
      v32 = *(v37 + 32);
      goto LABEL_47;
    }

LABEL_66:
    std::__throw_bad_optional_access[abi:nn200100]();
    [(AGXG18PFamilyRenderContext_mtlnext *)v38 writeTimestampWithGranularity:v39 afterStage:v40 intoHeap:v41 atIndex:v42, v43];
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = 0;
  *(a1 + 11384) = 0;
  if (a2)
  {
    goto LABEL_46;
  }

LABEL_44:
  v31 = 0;
  v32 = 0uLL;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
LABEL_47:
  if (*(a1 + 10081) != 1 || v9 != *(a1 + 11568) || v16 != *(a1 + 11570) || v10 != *(a1 + 11572) || v11 != *(a1 + 11574) || v12 != *(a1 + 11576) || v13 != *(a1 + 11578) || v14 != *(a1 + 11580) || v15 != *(a1 + 11582) || *(a1 + 11600) || v33 != *(a1 + 11584) || v34 != *(a1 + 11588) || v35 != *(a1 + 11592) || v36 != *(a1 + 11596) || v31 != *(a1 + 11624) || v32 != *(a1 + 11632) || *(&v32 + 4) != *(a1 + 11636))
  {
    *(a1 + 10080) = 1;
    *(a1 + 11568) = v9;
    *(a1 + 11570) = v16;
    *(a1 + 11572) = v10;
    *(a1 + 11574) = v11;
    *(a1 + 11576) = v12;
    *(a1 + 11578) = v13;
    *(a1 + 11580) = v14;
    *(a1 + 11582) = v15;
    *(a1 + 11584) = v33;
    *(a1 + 11588) = v34;
    *(a1 + 11592) = v35;
    *(a1 + 11596) = v36;
    *(a1 + 11600) = 0;
    *(a1 + 11616) = 0;
    *(a1 + 11608) = 0;
    *(a1 + 11624) = v31;
    *(a1 + 11632) = v32;
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(uint64_t a1, unint64_t *a2, char a3, int a4)
{
  v8 = *(*(a1 + 1912) + 520) == 0;
  v9 = *(a1 + 1872);
  v10 = *(v9 + 848);
  if (*(v10 + 6242) == 1)
  {
    os_unfair_lock_lock((v10 + 16824));
    LODWORD(v11) = *(v10 + 16864);
    os_unfair_lock_unlock((v10 + 16824));
    v9 = *(a1 + 1872);
  }

  else
  {
    v11 = (*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4;
  }

  if (v11 <= 0xFFFE)
  {
    v13 = *(v9 + 848);
    if (*(v13 + 6242) == 1)
    {
      os_unfair_lock_lock((v13 + 16824));
      v14 = *(v13 + 16864);
      os_unfair_lock_unlock((v13 + 16824));
      v15 = v14 > 0xFFFE;
      v9 = *(a1 + 1872);
    }

    else
    {
      v15 = *(a1 + 320) - *(a1 + 328) < 0x10uLL;
    }

    if (v15)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 2;
  }

  v16 = *(v9 + 848);
  if (*(v16 + 6241) == 1)
  {
    os_unfair_lock_lock((v16 + 16784));
    v17 = *(v16 + 16808);
    os_unfair_lock_unlock((v16 + 16784));
  }

  else
  {
    v18 = *(a1 + 296);
    if (!v18)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
      v18 = *(a1 + 296);
      if (!v18)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
        v18 = 0;
      }
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *(*(a1 + 48) + 472)) >> 2);
  }

  v19 = *(a1 + 1872);
  if (v17 <= 0xFFFE)
  {
    v21 = *(v19 + 848);
    if (*(v21 + 6241) == 1)
    {
      os_unfair_lock_lock((v21 + 16784));
      v22 = *(v21 + 16808);
      os_unfair_lock_unlock((v21 + 16784));
      v23 = v22 > 0xFFFE;
    }

    else
    {
      v24 = *(a1 + 296);
      if (!v24)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
        v24 = *(a1 + 296);
      }

      v23 = (*(a1 + 288) - v24) < 0xC;
    }

    if (v23)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v19 = *(a1 + 1872);
  }

  else
  {
    v20 = 4;
  }

  v25 = v8 | a3 | v12;
  v26 = v20 | v25;
  v27 = *(v19 + 848);
  v28 = *(v27 + 6242) != 1 || (v25 & 2) == 0;
  if (!v28)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(v27);
    v27 = *(*(a1 + 1872) + 848);
  }

  if (*(v27 + 6241) == 1 && (v26 & 4) != 0)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetDepthBiasBuffer(v27);
  }

  for (i = *(a1 + 7648); i; i = *i)
  {
    (*(i[1] + 16))();
  }

  v31 = *(a1 + 7664);
  v32 = *(v31 + 1800);
  v31[56] = *(v31 + 1784);
  v31[57] = v32;
  v31[58] = *(v31 + 1816);
  v33 = *(a1 + 7664);
  *(v33 + 2009) = 0;
  v34 = *(v33 + 1848);
  *(v33 + 720) = *(v33 + 1832);
  *(v33 + 736) = v34;
  v35 = *(v33 + 1944);
  *(v33 + 816) = *(v33 + 1928);
  *(v33 + 832) = v35;
  v36 = *(v33 + 1912);
  *(v33 + 784) = *(v33 + 1896);
  *(v33 + 800) = v36;
  v37 = *(v33 + 1880);
  *(v33 + 752) = *(v33 + 1864);
  *(v33 + 768) = v37;
  IOGPUResourceListAddResource();
  *(a1 + 2078) = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(a1, (*(a1 + 2077) & 1) == 0, 1, 1);
  *(a1 + 2078) = 0;
  *(a1 + 2076) = 1;
  ++*(a1 + 10548);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::beginRenderPass(a1);
  IOGPUResourceListAddResource();
  v39 = *(a1 + 7688);
  if (v39)
  {
    if (v39[180])
    {
      v40 = 0;
      v41 = v39 + 24;
      v42 = v39[181] | v39[182];
      do
      {
        if (((1 << v40) & v42) != 0)
        {
          IOGPUResourceListAddResource();
          v39 = *(a1 + 7688);
        }

        ++v40;
        v41 += 6;
      }

      while (v40 < v39[180]);
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(v39);
  }

  if (*(a1 + 7672))
  {
    v43 = *(a1 + 7688);
    *(a1 + 7492) = 1;
    v44 = *(a1 + 7440);
    v45.i64[0] = *(a1 + 7456);
    v46 = *(a1 + 7464);
    v47 = *(a1 + 7472);
    v48 = *(v43 + 40);
    v49 = v44.i32[0];
    if (v44.i32[0] <= v48)
    {
      v49 = *(v43 + 40);
    }

    *(a1 + 7440) = v49;
    v50 = *(v43 + 44);
    v51 = v44.i32[1];
    if (v44.i32[1] <= v50)
    {
      v51 = *(v43 + 44);
    }

    *(a1 + 7444) = v51;
    v52 = *(v43 + 48);
    v53 = v44.i32[2];
    if (v44.i32[2] <= v52)
    {
      v53 = *(v43 + 48);
    }

    *(a1 + 7448) = v53;
    v54 = *(v43 + 52);
    v55 = v44.i32[3];
    if (v44.i32[3] <= v54)
    {
      v55 = *(v43 + 52);
    }

    *(a1 + 7452) = v55;
    v56 = *(v43 + 56);
    v57 = v45.i32[0];
    if (v45.i32[0] <= v56)
    {
      v57 = *(v43 + 56);
    }

    *(a1 + 7456) = v57;
    v58 = *(v43 + 60);
    v59 = v45.i32[1];
    if (v45.i32[1] <= v58)
    {
      v59 = *(v43 + 60);
    }

    *(a1 + 7460) = v59;
    v60 = *(v43 + 64);
    if (v46 <= v60)
    {
      v61 = *(v43 + 64);
    }

    else
    {
      v61 = v46;
    }

    v45.i64[1] = __PAIR64__(v47, v46);
    *(a1 + 7464) = v61;
    v62.i64[0] = __PAIR64__(v50, v48);
    v63 = *(v43 + 68);
    v62.i64[1] = __PAIR64__(v54, v52);
    v64.i64[0] = __PAIR64__(v58, v56);
    v64.i64[1] = __PAIR64__(v63, v60);
    v38 = vandq_s8(vuzp1q_s16(vcgtq_s32(v62, v44), vcgtq_s32(v64, v45)), xmmword_29D2F24C0);
    v38.i16[0] = vaddvq_s16(v38);
    v65 = v38.u8[0];
    if (v47 <= v63)
    {
      v47 = *(v43 + 68);
    }

    *(a1 + 7472) = v47;
    v66 = *(v43 + 3528);
    if (v66)
    {
      v67 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 7440), v66);
    }

    else
    {
      v67 = 0;
    }

    if (v65)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67 == 0;
    }

    if (!v68)
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7440, *(a1 + 7664) + 320, 1);
    }

    v69 = *(a1 + 7672);
    v70 = *(v69 + 2400);
    v71 = *(v69 + 2408);
    v72 = *(a1 + 7688);
    if (*(v72 + 789) == 1)
    {
      v73 = *(v72 + 1032);
      v74 = *(v72 + 1048);
      v28 = *(v72 + 3608) == 0;
      v75 = -3;
      if (v28)
      {
        v75 = -1;
      }

      v76 = v73 == 0;
      v77 = 0xF7FFFFFFFFFFFFFFLL;
      if (v76)
      {
        v77 = -1;
      }

      v78 = 0xE7FFFFFFFFFFFFFFLL;
      if (v76)
      {
        v78 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v74)
      {
        v77 = v78;
      }
    }

    else
    {
      v77 = -1;
      v75 = -1;
    }

    v79 = v70 & v77 & 0xFFFFFFFF80000000;
    v206 = v71 & v75;
    for (j = v79; ; v79 = j)
    {
      if (v79)
      {
        v80 = __clz(__rbit64(v79));
        p_j = &j;
        v82 = v80;
      }

      else
      {
        v79 = v206;
        if (!v206)
        {
          v84 = *(a1 + 8472);
          v85 = *(v84 + 32);
          v86 = *(v84 + 40);
          v87 = *(a1 + 7672);
          v88 = *(v87 + 2416) & v85;
          v89 = *(v87 + 2424) & v86;
          *&v208 = v88;
          v205 = v89;
          while (1)
          {
            if (v88)
            {
              v90 = &v208;
            }

            else
            {
              v88 = v205;
              if (!v205)
              {
                v91 = *(a1 + 7664);
                *(v91 + 575) |= *(v87 + 1349);
                *(v91 + 578) |= *(v87 + 1354);
                goto LABEL_102;
              }

              v90 = &v205;
            }

            *v90 = v88 & (v88 - 1);
            v88 = v208;
          }
        }

        v80 = __clz(__rbit64(v206));
        v82 = v80 | 0x40;
        p_j = &v206;
      }

      *p_j = v79 & ~(1 << v80);
      v208 = *(*(a1 + 7672) + 1360);
      if ((*(&v208 | (8 * (v82 > 0x3F))) >> v82))
      {
        v83 = 3;
      }

      else
      {
        v83 = 1;
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindVertexBufferResource(a1, v82, v83, a4);
    }
  }

LABEL_102:
  result = *(a1 + 5296);
  if (result)
  {
    result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindAllResources(result, a4);
  }

  if (*(a1 + 7680))
  {
    result = 0;
    v93 = (a1 + 7544);
    v94 = *(a1 + 7688);
    v95 = *(a1 + 7620);
    v96 = *(*(a1 + 7600) + 7092);
    *(a1 + 7596) = 2;
    v97 = *(v94 + 80);
    v98 = *(v94 + 84);
    v99 = *(a1 + 2404);
    v101 = *(v94 + 72);
    v100 = *(v94 + 76);
    v102.i64[0] = *(v94 + 88);
    v103 = *(a1 + 2420);
    v104 = *(a1 + 7616);
    v105 = *(a1 + 7640);
    v106 = *(a1 + 7624);
    v107 = v99 + v100;
    v108 = __OFSUB__(v107, v105);
    v109 = v107 - v105;
    if ((v109 < 0) ^ v108 | (v109 == 0))
    {
      v109 = 0;
    }

    v110 = v98 + v97 + *(a1 + 2408);
    v111.i64[0] = *(a1 + 2412);
    v111.i64[1] = v102.i64[0];
    v112 = vaddvq_s32(v111);
    v113 = ((v106 + v103 + (v109 + v99) * v104 + v112 + v110 * v95 + 64) * v96 + 7) & 0xFFFFFFF8;
    v114 = *v93;
    v102.i64[1] = *(a1 + 2412);
    *v93 = vmaxq_s32(*v93, v102);
    v115.i64[0] = *(a1 + 7560);
    v116.i32[0] = v103;
    *(a1 + 7560) = vmax_s32(*v115.i8, __PAIR64__(v113, v103));
    v117 = *(a1 + 2400) + v101;
    v108 = __OFSUB__(v117, v105);
    v118 = v117 - v105;
    if ((v118 < 0) ^ v108 | (v118 == 0))
    {
      v118 = 0;
    }

    v119 = ((v112 + v118 * v104 + v106 + v103 + 64) * v96 + 7) & 0xFFFFFFF8;
    if (*(a1 + 7568) <= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = *(a1 + 7568);
    }

    v121 = *(a1 + 7576);
    v115.i32[2] = *(a1 + 7568);
    v115.i32[3] = v121;
    v116.i32[1] = v113;
    *(a1 + 7568) = v120;
    v116.i64[1] = __PAIR64__(v117, v119);
    v38 = vandq_s8(vuzp1q_s16(vcgtq_s32(v102, v114), vcgtq_s32(v116, v115)), xmmword_29D2F24C0);
    v38.i16[0] = vaddvq_s16(v38);
    v122 = v38.u8[0];
    if (v121 <= v117)
    {
      v123 = v117;
    }

    else
    {
      v123 = v121;
    }

    *(a1 + 7576) = v123;
    v124 = *(*(a1 + 7688) + 3544);
    if (v124)
    {
      result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 7544), v124);
    }

    if (v122)
    {
      v125 = 0;
    }

    else
    {
      v125 = result == 0;
    }

    if (!v125)
    {
      result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7544, *(a1 + 7664) + 1360, 0);
    }

    v126 = *(a1 + 7680);
    v127 = *(v126 + 2400);
    v128 = *(v126 + 2408);
    v129 = *(a1 + 7688);
    if (*(v129 + 789) == 1)
    {
      v130 = *(v129 + 1344);
      v131 = *(v129 + 1360);
      v28 = *(v129 + 3616) == 0;
      v132 = -3;
      if (v28)
      {
        v132 = -1;
      }

      v133 = v130 == 0;
      v134 = 0xF7FFFFFFFFFFFFFFLL;
      if (v133)
      {
        v134 = -1;
      }

      v135 = 0xE7FFFFFFFFFFFFFFLL;
      if (v133)
      {
        v135 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v131)
      {
        v134 = v135;
      }
    }

    else
    {
      v134 = -1;
      v132 = -1;
    }

    v136 = v127 & v134 & 0xFFFFFFFF80000000;
    v206 = v128 & v132;
    for (j = v136; ; v136 = j)
    {
      if (v136)
      {
        v137 = __clz(__rbit64(v136));
        v138 = &j;
        v139 = v137;
      }

      else
      {
        v136 = v206;
        if (!v206)
        {
          v140 = *(a1 + 9744);
          v141 = *(v140 + 32);
          v142 = *(v140 + 40);
          v143 = *(a1 + 7680);
          v144 = *(v143 + 2416) & v141;
          v145 = *(v143 + 2424) & v142;
          *&v208 = v144;
          v205 = v145;
          while (1)
          {
            if (v144)
            {
              v146 = &v208;
            }

            else
            {
              v144 = v205;
              if (!v205)
              {
                *(*(a1 + 7664) + 1608) |= *(v143 + 1349);
                *(a1 + 10544) |= *(v143 + 1354);
                goto LABEL_150;
              }

              v146 = &v205;
            }

            *v146 = v144 & (v144 - 1);
            v144 = v208;
          }
        }

        v137 = __clz(__rbit64(v206));
        v139 = v137 | 0x40;
        v138 = &v206;
      }

      *v138 = v136 & ~(1 << v137);
      v208 = *(*(a1 + 7680) + 1360);
      result = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(a1, v139, (*(&v208 | (8 * (v139 > 0x3F))) >> v139) & 1, a4);
    }
  }

LABEL_150:
  v147 = *(a1 + 7424);
  v148 = MEMORY[0x29EDC5638];
  if (v147)
  {
    v149 = *MEMORY[0x29EDC5638];
    v150 = v147 + v149;
    v151 = *(v147 + v149 + 16);
    if ((v151 & 0x7FFFFFFF80) == 0 || (v151 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_174;
    }

    v153 = *(a1 + 2008);
    if (*(v153[2].i64[1] + 480) != 1)
    {
      goto LABEL_174;
    }

    v154 = v153[3];
    v155 = v153[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v154), vceqzq_s64(v155))))) & 1) == 0)
    {
      goto LABEL_174;
    }

    v156 = (v147 + v149);
    if ((v151 & 0x1000000000000000) != 0)
    {
      v156 = *v150;
    }

    v157 = *v156;
    if (!v157)
    {
      goto LABEL_174;
    }

    v158 = *v157;
    v159 = v157[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v157), vceqzq_s64(v159))))) & 1) == 0)
    {
      goto LABEL_174;
    }

    v160 = vandq_s8(v159, v155);
    v161 = v160.u64[1];
    if (v160.i64[1])
    {
      v162 = 3;
    }

    else
    {
      v161 = v160.i64[0];
      if (v160.i64[0])
      {
        v162 = 2;
      }

      else
      {
        v163 = vandq_s8(v158, v154);
        v161 = v163.u64[1];
        if (v163.i64[1])
        {
          v162 = 1;
        }

        else
        {
          v161 = v163.i64[0];
          if (!v163.i64[0])
          {
LABEL_174:
            result = IOGPUResourceListAddResource();
            goto LABEL_175;
          }

          v162 = 0;
        }
      }
    }

    v164 = &v153->i8[8 * v162];
    v165 = *(v164 + 10);
    v166 = 1 << (__clz(v161) ^ 0x3Fu);
    v167 = (v166 & v165) != 0;
    if ((v166 & (*(v164 + 14) | v165)) != 0)
    {
      v168 = (*(v150 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v169 = (v147 + v149);
      if ((v151 & 0x1000000000000000) != 0)
      {
        v169 = *v150;
      }

      *&v208 = v169;
      *(&v208 + 1) = v168;
      v209 = v151 >> 7;
      v210 = 1;
      v211 = v167;
      ResourceTracker<_ResourceGroupBinding>::addResource(v153, &v208, *(v150 + 48), 1);
    }

    goto LABEL_174;
  }

LABEL_175:
  v170 = *(a1 + 7432);
  if (v170)
  {
    v171 = *v148;
    v172 = v170 + v171;
    v173 = *(v170 + v171 + 16);
    if ((v173 & 0x7FFFFFFF80) == 0 || (v173 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_199;
    }

    v175 = *(a1 + 2008);
    if (*(v175[2].i64[1] + 480) != 1)
    {
      goto LABEL_199;
    }

    v176 = v175[3];
    v177 = v175[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v176), vceqzq_s64(v177))))) & 1) == 0)
    {
      goto LABEL_199;
    }

    v178 = (v170 + v171);
    if ((v173 & 0x1000000000000000) != 0)
    {
      v178 = *v172;
    }

    v179 = *v178;
    if (!v179)
    {
      goto LABEL_199;
    }

    v180 = *v179;
    v181 = v179[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v179), vceqzq_s64(v181))))) & 1) == 0)
    {
      goto LABEL_199;
    }

    v182 = vandq_s8(v181, v177);
    v183 = v182.u64[1];
    if (v182.i64[1])
    {
      v184 = 3;
    }

    else
    {
      v183 = v182.i64[0];
      if (v182.i64[0])
      {
        v184 = 2;
      }

      else
      {
        v185 = vandq_s8(v180, v176);
        v183 = v185.u64[1];
        if (v185.i64[1])
        {
          v184 = 1;
        }

        else
        {
          v183 = v185.i64[0];
          if (!v185.i64[0])
          {
LABEL_199:
            result = IOGPUResourceListAddResource();
            goto LABEL_200;
          }

          v184 = 0;
        }
      }
    }

    v186 = &v175->i8[8 * v184];
    v187 = *(v186 + 10);
    v188 = 1 << (__clz(v183) ^ 0x3Fu);
    v189 = (v188 & v187) != 0;
    if ((v188 & (*(v186 + 14) | v187)) != 0)
    {
      v190 = (*(v172 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v191 = (v170 + v171);
      if ((v173 & 0x1000000000000000) != 0)
      {
        v191 = *v172;
      }

      *&v208 = v191;
      *(&v208 + 1) = v190;
      v209 = v173 >> 7;
      v210 = 65;
      v211 = v189;
      ResourceTracker<_ResourceGroupBinding>::addResource(v175, &v208, *(v172 + 48), 65);
    }

    goto LABEL_199;
  }

LABEL_200:
  v192 = *(a1 + 7688);
  if (v192)
  {
    v193 = *(v192 + 8);
    if (v193)
    {
      if (*(v193 + 4264))
      {
        v194 = *(a1 + 5088);
        if (!v194)
        {
          v194 = std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::operator()(*(a1 + 5120));
          *(a1 + 5088) = v194;
        }

        result = (*(*v194 + 56))(v194);
      }
    }
  }

  if (*(a1 + 7255) == 1 && (*(a1 + 10480) & 2) != 0)
  {
    result = AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v38, *(a1 + 1912), *(a1 + 2008), 64);
    *(a1 + 10480) &= ~2u;
  }

  v195 = 0xFFFFF0701C0701FELL;
  v196 = *(a1 + 5296);
  v197 = *(a1 + 7672);
  v198 = *(a1 + 7680);
  if (v196)
  {
    v199 = *(v196 + 32);
    if (v197)
    {
      v195 = *(v197 + 2720) | 0xFFFFF0701C0701FFLL;
    }

    v200 = *(v196 + 40);
    if (v198)
    {
      v201 = *(v198 + 2720) | v195;
      if (v199)
      {
        goto LABEL_214;
      }
    }

    else
    {
      v201 = v195 & 0xFFFFFFFFFFFFFFFDLL;
      if (v199)
      {
LABEL_214:
        v202 = *(v199 + 2720) | v201;
        if (v200)
        {
LABEL_215:
          v203 = *(v200 + 2720) | v202;
          goto LABEL_225;
        }

LABEL_222:
        v203 = v202 & 0xFFFFFFFFFFFFFFDFLL;
        goto LABEL_225;
      }
    }

    v202 = v201 & 0xFFFFFFFFFFFFFFEFLL;
    if (v200)
    {
      goto LABEL_215;
    }

    goto LABEL_222;
  }

  if (v197)
  {
    v195 = *(v197 + 2720) | 0xFFFFF0701C0701FFLL;
  }

  if (v198)
  {
    v204 = *(v198 + 2720) | v195;
  }

  else
  {
    v204 = v195 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v203 = v204 & 0xFFFFFFFFFFFFFFCFLL;
LABEL_225:
  *a2 = v203;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(uint64_t a1, int a2, int a3, int a4)
{
  v385 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 7248);
  if (v6 == 1)
  {
    v10 = *(a1 + 456);
    *v10 = 2 * *(a1 + 7252);
    *(a1 + 456) = v10 + 1;
    *(a1 + 7248) = 2;
    *(*(a1 + 7232) + 8) = 2;
    v9 = a1 + 1932;
    if (!a4)
    {
LABEL_9:
      isFastClearConversionAllowedForEmptyRender = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = *(a1 + 7224);
      if (v7)
      {
        v8 = *(a1 + 7240);
        *v7 = BYTE4(v8) | 0x80000000;
        v7[1] = v8;
        *(a1 + 7224) = 0;
        *(a1 + 7240) = 0;
        ++*(a1 + 1952);
      }
    }

    v9 = a1 + 1932;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 3469))
  {
    goto LABEL_9;
  }

  v12 = a2;
  v13 = v9;
  isFastClearConversionAllowedForEmptyRender = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearConversionAllowedForEmptyRender(*(a1 + 2392));
  v9 = v13;
  a2 = v12;
LABEL_11:
  if (*(*(a1 + 7656) + 132))
  {
    goto LABEL_446;
  }

  v358 = v9;
  if (!isFastClearConversionAllowedForEmptyRender)
  {
    v113 = a2;
    if (*(a1 + 4992))
    {
      v114 = v9;
      AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(a1 + 4936, *(a1 + 10720), *(a1 + 10728), (a1 + 10552));
      v9 = v114;
    }

    *(*(a1 + 7664) + 577) = *(v9 + 3436);
    if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(*(a1 + 2392)))
    {
      *(*(a1 + 7664) + 1613) = 1;
    }

    v115 = *(a1 + 2392) + 4096;
    if (*(*(a1 + 2392) + 4960) == 1)
    {
      *(*(a1 + 7664) + 1613) = 1;
    }

    if (*(v115 + 865) == 1)
    {
      *(*(a1 + 7664) + 1612) = 1;
    }

    {
    }

    if (*(a1 + 2077) == 1)
    {
      if ((*(a1 + 2074) & 1) == 0)
      {
LABEL_250:
        v239 = *(a1 + 2392);
        AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v239);
        if (*(a1 + 10544))
        {
          v240 = 0;
        }

        else
        {
          v240 = *(v239 + 4959);
        }

        if ((*(v239 + 5000) & 0xFFFFFFFFFF80) != 0)
        {
          *(v239 + 4976) = *(v239 + 4976) & 0xFFFFFFFFFFFFFFFELL | v240;
        }
      }
    }

    else
    {
      v176 = *(a1 + 7664);
      if (*(a1 + 2078))
      {
        goto LABEL_264;
      }

      if (*(a1 + 2074) != 1)
      {
        goto LABEL_250;
      }

      if ((*(a1 + 2073) & 1) == 0)
      {
LABEL_264:
        if (*(a1 + 2075))
        {
          goto LABEL_265;
        }

        if (*(a1 + 2076))
        {
          v241 = 0;
          if (*(a1 + 2077))
          {
            goto LABEL_276;
          }

          goto LABEL_272;
        }

        if (*(a1 + 2074) != 1)
        {
LABEL_265:
          v241 = 1;
          if (*(a1 + 2077))
          {
            goto LABEL_276;
          }
        }

        else
        {
          v241 = *(a1 + 2072);
          if (*(a1 + 2077))
          {
            goto LABEL_276;
          }
        }

LABEL_272:
        if (*(a1 + 2078))
        {
          v242 = 0;
LABEL_277:
          AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignRenderRegisters(*(a1 + 2392), v176, v176 + 720, v241 & 1, v242 & 1);
          if (*(a1 + 2075))
          {
            goto LABEL_278;
          }

          if (*(a1 + 2076))
          {
            v243 = 0;
            if (*(a1 + 2077))
            {
              goto LABEL_289;
            }

            goto LABEL_285;
          }

          if (*(a1 + 2074) != 1)
          {
LABEL_278:
            v243 = 1;
            if (*(a1 + 2077))
            {
              goto LABEL_289;
            }
          }

          else
          {
            v243 = *(a1 + 2072);
            if (*(a1 + 2077))
            {
              goto LABEL_289;
            }
          }

LABEL_285:
          if (*(a1 + 2078))
          {
            v244 = 0;
LABEL_290:
            AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignCommandFields(*(a1 + 2392), *(a1 + 7664), v243 & 1, v244 & 1, *(a1 + 7176));
            v245 = *(a1 + 2075);
            if ((v245 & 1) == 0 && ((*(a1 + 2076) & 1) != 0 || *(a1 + 2074) == 1 && *(a1 + 2072) != 1))
            {
              v247 = *(a1 + 7664);
              *(v247 + 2224) = 0;
              *(a1 + 7176) = *(a1 + 7178);
LABEL_307:
              *(v247 + 1605) = 1;
              if (**MEMORY[0x29EDC56B0])
              {
                IOGPUDeviceTraceEvent();
                v247 = *(a1 + 7664);
              }

LABEL_309:
              if ((*(a1 + 7255) & 1) == 0)
              {
                *(v247 + 1728) = 0;
              }

              *(a1 + 2656) = 0;
              if (*(a1 + 2075))
              {
                goto LABEL_312;
              }

              if (*(a1 + 2076))
              {
                v248 = 0;
              }

              else
              {
                if (*(a1 + 2074) != 1)
                {
LABEL_312:
                  v248 = 1;
                  goto LABEL_317;
                }

                v248 = *(a1 + 2072);
              }

LABEL_317:
              AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitDriverProgramArguments(a1 + 2120, v247, *(a1 + 2392), v248 & 1, *(v358 + 3464));
              if (a3)
              {
                v249 = *(a1 + 72);
                *(a1 + 72) = v249 + 1;
                *v249 = *(a1 + 5172);
              }

              if (*(a1 + 1956) <= 4u && *(a1 + 1960))
              {
                *(*(a1 + 7664) + 1168) |= 1uLL;
              }

              if (*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || (*(a1 + 2073)))
              {
                v250 = *(a1 + 10512);
                if (*(*(a1 + 2392) + 4956))
                {
                  v251 = 0;
LABEL_328:
                  if (FenceEncoder::encode((a1 + 1880), v113, *(a1 + 7656), *(a1 + 10504), *(a1 + 10488), v250, v251))
                  {
                    *(a1 + 11464) |= 0x20000uLL;
                  }

                  if (*(a1 + 5164) && !*(a1 + 5168))
                  {
                    v252 = 2;
                  }

                  else
                  {
                    v252 = 0;
                  }

                  v253 = *(a1 + 5160);
                  if (v253 >= 0)
                  {
                    v254 = v252;
                  }

                  else
                  {
                    v254 = *(a1 + 5160);
                  }

                  if ((v253 & 0x40000000) != 0)
                  {
                    v252 = BYTE1(*(a1 + 5160));
                  }

                  v255 = *(a1 + 7664);
                  *(v255 + 2081) = v254;
                  *(v255 + 2082) = v252;
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 11336), a1 + 11088);
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 11352), a1 + 11208);
                  v256 = 0;
                  v257 = 0;
                  *(a1 + 11344) = 0u;
                  *(a1 + 11328) = 0u;
                  v258 = 1;
                  v259 = 0x2A179C000uLL;
                  while (1)
                  {
                    v260 = v257;
                    v261 = 11088;
                    if ((v258 & 1) == 0)
                    {
                      v261 = 11208;
                    }

                    v262 = a1 + v261;
                    if (v258)
                    {
                      v263 = 7440;
                    }

                    else
                    {
                      v263 = 7544;
                    }

                    v264 = 1648;
                    if (v258)
                    {
                      v264 = 640;
                    }

                    v265 = *(a1 + 7664) + v264;
                    if (WORD2(*(v262 + 8)) | HIWORD(*(v262 + 8)))
                    {
                      v362 = v263;
                      v363 = v260;
                      v266 = *(*(a1 + 1872) + *(v259 + 1260));
                      block = MEMORY[0x29EDCA5F8];
                      v372[0] = 3221225472;
                      v372[1] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
                      v372[2] = &__block_descriptor_40_e5_v8__0l;
                      v372[3] = v266;
                      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
                      {
                        v332 = v259;
                        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
                        v259 = v332;
                      }

                      v267 = *(v266 + 6288);
                      v268 = 9752;
                      if (v258)
                      {
                        v268 = 8480;
                      }

                      v269 = 344;
                      if (v258)
                      {
                        v269 = 336;
                      }

                      v270 = 10056;
                      if (v258)
                      {
                        v270 = 8784;
                      }

                      v271 = a1 + v270;
                      v272 = (*(a1 + v268) + v269);
                      v273 = v259;
                      v274 = *(*(a1 + 1872) + *(v259 + 1260));
                      block = v272;
                      v372[0] = a1 + v270;
                      AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v274 + 3534, &block);
                      v275 = (*(*v271 + 16) >> 14) & 0x1FFFFFFLL;
                      *(v265 + 16) = *v272 & 0xFFFFFFFFFFC0;
                      *(v265 + 24) = v275;
                      v276 = ((*(v267 + 188) & 0x3FFFF) << 7) | 0xC0000000;
                      *v265 = (*v272 + (*(v267 + 184) << 7)) & 0xFFFFFFFFFFC0 | 0x8000000000000;
                      *(v265 + 8) = v276;
                      IOGPUResourceListAddResource();
                      *(v265 + 32) = *(v267 + 40);
                      *(v265 + 40) = *(v267 + 48);
                      if ((v256 & 1) == 0)
                      {
                        v277 = *(v267 + 16);
                        if (v277 != (v267 + 24))
                        {
                          do
                          {
                            IOGPUResourceListAddResource();
                            v278 = v277[1];
                            if (v278)
                            {
                              do
                              {
                                v279 = v278;
                                v278 = *v278;
                              }

                              while (v278);
                            }

                            else
                            {
                              do
                              {
                                v279 = v277[2];
                                v139 = *v279 == v277;
                                v277 = v279;
                              }

                              while (!v139);
                            }

                            v277 = v279;
                          }

                          while (v279 != (v267 + 24));
                        }
                      }

                      if (!*(v262 + 11))
                      {
                        v334 = *(a1 + 1968) - *(a1 + 1984);
                        *(v334 + 140) = 1;
                        if ((*(v334 + 136) & 4) != 0)
                        {
                          **(a1 + 8) = 1;
                        }

LABEL_423:
                        v335 = *(a1 + 7664);
                        if (*(v358 + 3464) == 1)
                        {
                          *(v335 + 576) = 1;
                          *(v335 + 2016) = 1;
                          v336 = 1179647;
                        }

                        else
                        {
                          v336 = 0x100000;
                        }

                        *(v335 + 1184) = v336;
                        goto LABEL_427;
                      }

                      SectionEnd = *(v262 + 36);
                      if (!SectionEnd)
                      {
                        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v262 + 8, 10);
                        *(v262 + 36) = SectionEnd;
                      }

                      *(v265 + 48) = SectionEnd;
                      v281 = *(v262 + 112);
                      if (v281 == -1)
                      {
                        v333 = *(v262 + 10);
                        if (v333 > 1)
                        {
                          ++v333;
                        }

                        v281 = 8 * v333;
                        *(v262 + 112) = v281;
                      }

                      *(v265 + 52) = v281;
                      *(v265 + 56) = *(v262 + 11);
                      *(v265 + 60) = *(v262 + 8);
                      *(v265 + 64) = *(v262 + 10);
                      v282 = *(v262 + 116);
                      if (v282 == -1)
                      {
                        v282 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v262 + 8, 12) + 0x1FFF) & 0xFFFFF000;
                        *(v262 + 116) = v282;
                      }

                      v283 = a1 + v362;
                      v284 = *(v267 + 72);
                      v286 = *(a1 + v362);
                      v285 = *(a1 + v362 + 16);
                      v287 = v286.i32[0];
                      if (v286.i32[0] <= v284)
                      {
                        v287 = *(v267 + 72);
                      }

                      *v283 = v287;
                      v288 = *(v267 + 76);
                      v289 = v286.i32[1];
                      if (v286.i32[1] <= v288)
                      {
                        v289 = *(v267 + 76);
                      }

                      *(v283 + 4) = v289;
                      v290 = *(v267 + 80);
                      v291 = v286.i32[2];
                      if (v286.i32[2] <= v290)
                      {
                        v291 = *(v267 + 80);
                      }

                      *(v283 + 8) = v291;
                      v292 = *(v267 + 84);
                      v293 = v286.i32[3];
                      if (v286.i32[3] <= v292)
                      {
                        v293 = *(v267 + 84);
                      }

                      *(v283 + 12) = v293;
                      v294 = *(v267 + 88);
                      v295 = v285.i32[0];
                      if (v285.i32[0] <= v294)
                      {
                        v295 = *(v267 + 88);
                      }

                      *(v283 + 16) = v295;
                      v296 = *(v267 + 92);
                      v297 = v285.i32[1];
                      if (v285.i32[1] <= v296)
                      {
                        v297 = *(v267 + 92);
                      }

                      *(v283 + 20) = v297;
                      v298 = *(v267 + 96);
                      v299 = v285.i32[2];
                      if (v285.i32[2] <= v298)
                      {
                        v299 = *(v267 + 96);
                      }

                      *(v283 + 24) = v299;
                      v300.i64[0] = __PAIR64__(v296, v294);
                      v300.i32[2] = v298;
                      v300.i32[3] = *(v267 + 100);
                      v301.i64[0] = __PAIR64__(v288, v284);
                      v301.i64[1] = __PAIR64__(v292, v290);
                      v302 = v285.i32[3];
                      if (v285.i32[3] <= v300.i32[3])
                      {
                        v302 = *(v267 + 100);
                      }

                      *(v283 + 28) = v302;
                      v303 = *(v267 + 104);
                      v304 = *(v283 + 32);
                      v305 = v304.i32[0];
                      if (v304.i32[0] <= v303)
                      {
                        v305 = *(v267 + 104);
                      }

                      *(v283 + 32) = v305;
                      v306 = v304.i32[1];
                      v307 = *(v267 + 108);
                      if (v304.i32[1] <= v307)
                      {
                        v306 = *(v267 + 108);
                      }

                      *(v283 + 36) = v306;
                      v308 = v304.i32[2];
                      v309 = *(v267 + 112);
                      if (v304.i32[2] <= v309)
                      {
                        v308 = *(v267 + 112);
                      }

                      *(v283 + 40) = v308;
                      v310.i64[0] = __PAIR64__(v307, v303);
                      v310.i32[2] = v309;
                      v310.i32[3] = *(v267 + 116);
                      v311 = v304.i32[3];
                      if (v304.i32[3] <= v310.i32[3])
                      {
                        v311 = *(v267 + 116);
                      }

                      *(v283 + 44) = v311;
                      v312 = *(v267 + 120);
                      v313 = *(v283 + 48);
                      v314 = v313 < v312;
                      if (v313 > v312)
                      {
                        v312 = *(v283 + 48);
                      }

                      v315 = (v282 + 4095) >> 12;
                      v316 = (4 * v315 + 1023) >> 10;
                      v317 = *v283;
                      v318 = *(v283 + 16);
                      *v283 = vmaxq_s32(*v283, 0);
                      *(v283 + 16) = vmaxq_s32(v318, 0);
                      v319 = *(v283 + 32);
                      v320 = v319.i32[3] < v315;
                      v321.i64[0] = 0;
                      v321.i32[2] = 0;
                      v321.i32[3] = v315;
                      *(v283 + 32) = vmaxq_s32(v319, v321);
                      if (v312 <= v316)
                      {
                        v322 = (4 * v315 + 1023) >> 10;
                      }

                      else
                      {
                        v322 = v312;
                      }

                      *(v283 + 48) = v322;
                      v323 = vorrq_s8(v318, v317);
                      *v323.i8 = vorr_s8(*v323.i8, *&vextq_s8(v323, v323, 8uLL));
                      v324 = v323.i32[0] | v323.i32[1];
                      *v323.i8 = vdup_laneq_s32(v319, 2);
                      v323.i32[0] = v324;
                      *v323.i8 = vorr_s8(*v323.i8, *v319.i8);
                      v325 = vorr_s8(*v323.i8, vdup_lane_s32(*v323.i8, 1)).u32[0];
                      v326 = v312 < v316 || v320;
                      if (v325 < 0)
                      {
                        v327 = 1;
                      }

                      else
                      {
                        v327 = v326;
                      }

                      v328 = vmovn_s16(vuzp1q_s16(vcgtq_s32(v301, v286), vcgtq_s32(v300, v285)));
                      v328.i8[0] = vmaxv_u8(v328);
                      v329 = v328.i32[0];
                      v330 = vmovn_s32(vcgtq_s32(v310, v304));
                      v330.i16[0] = vmaxv_u16(v330);
                      v331 = v329 | v330.i32[0] | v314 | v327;
                      if (v258 & v331)
                      {
                        v256 = 1;
                        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7440, *(a1 + 7664) + 320, 1);
                      }

                      else
                      {
                        if (v331)
                        {
                          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7544, *(a1 + 7664) + 1360, 0);
                        }

                        v256 = 1;
                      }

                      v259 = v273;
                      v260 = v363;
                    }

                    else
                    {
                      *(v265 + 60) = 8;
                    }

                    v258 = 0;
                    v257 = 1;
                    if (v260)
                    {
                      goto LABEL_423;
                    }
                  }
                }
              }

              else
              {
                v250 = *(a1 + 10512);
              }

              v251 = *(a1 + 10496);
              goto LABEL_328;
            }

            if (*(a1 + 2077))
            {
              goto LABEL_292;
            }

            if (*(a1 + 2078))
            {
              v246 = 0;
            }

            else
            {
              if (*(a1 + 2074) != 1)
              {
LABEL_292:
                v246 = 1;
                goto LABEL_302;
              }

              v246 = *(a1 + 2073);
            }

LABEL_302:
            v247 = *(a1 + 7664);
            *(v247 + 2224) = v246 & 1;
            *(a1 + 7176) = *(a1 + 7178);
            if ((v245 & 1) != 0 || (*(a1 + 2076) & 1) == 0 && ((*(a1 + 2074) & 1) == 0 || (*(a1 + 2072))) && (*(*(a1 + 2392) + 4897) & 1) == 0 && (*(v358 + 3437) & 1) == 0)
            {
              goto LABEL_309;
            }

            goto LABEL_307;
          }

          if (*(a1 + 2074) == 1)
          {
            v244 = *(a1 + 2073);
            goto LABEL_290;
          }

LABEL_289:
          v244 = 1;
          goto LABEL_290;
        }

        if (*(a1 + 2074) == 1)
        {
          v242 = *(a1 + 2073);
          goto LABEL_277;
        }

LABEL_276:
        v242 = 1;
        goto LABEL_277;
      }
    }

    if (a3)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitSWEndOfTileIfNeeded(a1);
    }

    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::traceFramebufferEvents(*(a1 + 2392));
    *(a1 + 11456) = vorrq_s8(*(a1 + 11456), *(*(a1 + 2392) + 6128));
    v176 = *(a1 + 7664);
    goto LABEL_264;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(*(a1 + 1872) + 976) == 1)
  {
    atomic_fetch_add((*(a1 + 1872) + 1128), 1uLL);
  }

  *(a1 + 2060) |= 0x10u;
  *(v358 + 3470) = 1;
  v383 = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v382[2] = v14;
  v382[3] = v14;
  v382[0] = v14;
  v382[1] = v14;
  v372[0] = &unk_2A23F8140;
  v372[17] = &unk_2A23F8140;
  v372[34] = &unk_2A23F8140;
  v372[51] = &unk_2A23F8140;
  v372[68] = &unk_2A23F8140;
  v372[85] = &unk_2A23F8140;
  v372[102] = &unk_2A23F8140;
  v372[119] = &unk_2A23F8140;
  v373[0] = &unk_2A23F8160;
  v374[0] = &unk_2A23F8180;
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateFastClearConfig(*(a1 + 2392), &block);
  v15 = block;
  if (block != -2)
  {
    v127 = 0;
    v128 = &v381 + 1;
    v129 = v372;
    while (1)
    {
      v130 = v372;
      if (v127 == v15 + 1)
      {
        v130 = v374;
      }

      v131 = v373;
      if (v127 != v15)
      {
        v131 = v130;
      }

      if (v127 >= v15)
      {
        v132 = v131;
      }

      else
      {
        v132 = v129;
      }

      v133 = *(v132 + 1);
      if (!v133)
      {
        goto LABEL_122;
      }

      v134 = *(*(v133 + 208) + (*(*v132 + 8))(v132, 0) + 88);
      isLargeMacroblock = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v133);
      LODWORD(v136) = 4 * v134;
      if (isLargeMacroblock)
      {
        v136 = v136;
      }

      else
      {
        v136 = v134;
      }

      v137 = *(v133 + 32);
      v138 = v137 & 0xFFFFFFFFFFFFFFFELL;
      v139 = (v137 - 631) < 2 || v138 == 638;
      if (v139 || v138 == 552 || v138 == 640 || (v137 - 633) < 5 || v137 == 630)
      {
        v136 = 5;
      }

      v384[v127] = *(v382 + v136);
      *(v382 + v136) = v127;
      (**v132)(v132, &v375);
      v144 = *(v132 + 1);
      if (v144)
      {
        break;
      }

LABEL_168:
      v159 = *(v132 + 7);
      if (v159)
      {
        IOGPUResourceListAddResource();
        v160 = *(v132 + 11);
        if (v160 && [v160 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v161 = *(v132 + 12);
        if (v161 && [v161 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v162 = *(a1 + 168);
        v163 = v162 + 48;
        if ((v162 + 48) <= *(a1 + 160))
        {
          goto LABEL_176;
        }

        v175 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v162 = *(a1 + 168);
        if (v175)
        {
          v163 = v162 + 48;
          if ((v162 + 48) > *(a1 + 160))
          {
            goto LABEL_249;
          }

LABEL_176:
          *(a1 + 176) = v163;
        }

        *(v128 - 3) = *(a1 + 184) + v162;
        *(a1 + 168) = v162 + 48;
        LODWORD(v364) = 0;
        v370 = 0;
        v164 = *(v159 + 584);
        if (v164)
        {
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v159 + 168), *(v159 + 176), *(v159 + 32), *(v159 + 208), *(v159 + 396), 0, *(v159 + 112), &v364, &v370);
          v165 = v364;
          LODWORD(v164) = v370;
        }

        else
        {
          v165 = 0;
          LODWORD(v364) = 0;
        }

        v166 = v132[17];
        v167 = *(v159 + 144) + v166;
        v168 = *(v159 + 132);
        v169 = *(v159 + 128) >> (*(v159 + 144) + v166);
        if (v169 <= 1)
        {
          v169 = 1;
        }

        v170 = (v165 + v169 - 1) / v165;
        v171 = v168 >> v167;
        if (v168 >> v167 <= 1)
        {
          v171 = 1;
        }

        v172 = (v164 + v171 - 1) / v164;
        *(v128 - 1) = ((v172 + 1) & 0x7FFFFFFE) * ((v170 + 1) & 0xFFFFFFFE);
        v173 = (*(*v132 + 8))(v132, 1);
        AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v162, v128, &v375, v159, v166, v173, 0, 0, v170, v172);
      }

      v15 = block;
LABEL_122:
      ++v127;
      v129 += 34;
      v128 += 4;
      if (v127 >= v15 + 2)
      {
        goto LABEL_18;
      }
    }

    IOGPUResourceListAddResource();
    v145 = *(v132 + 5);
    if (v145 && [v145 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v146 = *(v132 + 6);
    if (v146 && [v146 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v147 = *(a1 + 168);
    v148 = v147 + 48;
    if ((v147 + 48) > *(a1 + 160))
    {
      v174 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v147 = *(a1 + 168);
      if (!v174)
      {
        goto LABEL_160;
      }

      v148 = v147 + 48;
      if ((v147 + 48) > *(a1 + 160))
      {
        goto LABEL_249;
      }
    }

    *(a1 + 176) = v148;
LABEL_160:
    *(v128 - 35) = *(a1 + 184) + v147;
    *(a1 + 168) = v147 + 48;
    LODWORD(v364) = 0;
    v370 = 0;
    v149 = *(v144 + 584);
    if (v149)
    {
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v144 + 168), *(v144 + 176), *(v144 + 32), *(v144 + 208), *(v144 + 396), 0, *(v144 + 112), &v364, &v370);
      v150 = v364;
      LODWORD(v149) = v370;
    }

    else
    {
      v150 = 0;
      LODWORD(v364) = 0;
    }

    v151 = v132[5];
    v152 = *(v144 + 144) + v151;
    v153 = *(v144 + 132);
    v154 = *(v144 + 128) >> (*(v144 + 144) + v151);
    if (v154 <= 1)
    {
      v154 = 1;
    }

    v155 = (v150 + v154 - 1) / v150;
    v156 = v153 >> v152;
    if (v153 >> v152 <= 1)
    {
      v156 = 1;
    }

    v157 = (v149 + v156 - 1) / v149;
    *(v128 - 33) = ((v157 + 1) & 0x7FFFFFFE) * ((v155 + 1) & 0xFFFFFFFE);
    v158 = (*(*v132 + 8))(v132, 0);
    AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v147, v128 - 32, &v375, v144, v151, v158, 0, 0, v155, v157);
    goto LABEL_168;
  }

LABEL_18:
  v16 = *(a1 + 80);
  if ((v16 + 40) > *(a1 + 64))
  {
    v352 = *(a1 + 72);
    if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
    {
      v353 = *(a1 + 72) + v16 - v352 + 40;
      if (v353 > *(a1 + 64))
      {
        goto LABEL_249;
      }

      *(a1 + 80) = v353;
      *v352 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    *(a1 + 80) = v16 + 40;
  }

  v17 = *(a1 + 1032);
  v18 = *(a1 + 1040);
  v19 = v18 + 88;
  if ((v18 + 88) <= *(a1 + 1024))
  {
    v20 = *(a1 + 1032);
LABEL_22:
    *(a1 + 1040) = v19;
    goto LABEL_23;
  }

  v354 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 30, 0);
  v20 = *(a1 + 1032);
  if (v354)
  {
    v19 = v20 + v18 - v17 + 88;
    if (v19 > *(a1 + 1024))
    {
      goto LABEL_249;
    }

    goto LABEL_22;
  }

LABEL_23:
  v21 = *(a1 + 1048) + v20;
  *(a1 + 1032) = v20 + 20;
  *v20 = xmmword_29D2F1770;
  *(v20 + 16) = 0;
  v22 = *(a1 + 72);
  *v22 = __ROR8__(v21, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v22 + 1;
  v23 = *(a1 + 1032);
  v24 = *(a1 + 1048) + v23;
  *(a1 + 1032) = v23 + 28;
  *v23 = xmmword_29D2F1780;
  *(v23 + 16) = 0xE0000000E000000;
  *(v23 + 24) = 0;
  v25 = __ROR8__(v24, 32);
  v26 = *(a1 + 72);
  *v26 = v25 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v26 + 1;
  v27 = *(a1 + 1032);
  v28 = *(a1 + 1048) + v27;
  *(a1 + 1032) = v27 + 20;
  *v27 = 203948032;
  *(v27 + 12) = 0;
  *(v27 + 4) = 0;
  v29 = *(a1 + 72);
  *v29 = __ROR8__(v28, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v29 + 1;
  v30 = *(a1 + 1032);
  v31 = *(a1 + 1048) + v30;
  *(a1 + 1032) = v30 + 12;
  *v30 = 8650754;
  *(v30 + 8) = 131200;
  v32 = __ROR8__(v31, 32);
  v33 = *(a1 + 72);
  *v33 = v32 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v33 + 1;
  v34 = *(a1 + 1032);
  v35 = v34 + *(a1 + 1048);
  *(a1 + 1032) = v34 + 1;
  v36 = __ROR8__(v35, 32);
  *v34 = 0x48000800000;
  v37 = *(a1 + 72);
  *v37 = v36 & 0xFFFFFFFC000000FFLL | 0x200;
  *(a1 + 72) = v37 + 1;
  v365 = 95;
  v367 = 0;
  v368 = 0;
  __p = 0;
  v364 = &unk_2A23F81A0;
  v369 = 6;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v364);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v375, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
  v39 = v375;
  *v40.i8 = v376;
  v41 = *(BlitProgramVariant + 3144);
  v375 = vmaxq_s32(v375, v41);
  v42 = *(BlitProgramVariant + 3160);
  v43 = vmax_s32(v376, *v42.i8);
  v44 = v42.i32[3];
  v45 = *(BlitProgramVariant + 3168);
  if (v377 > v42.i32[2])
  {
    v45 = v377;
  }

  v40.i64[1] = __PAIR64__(v378, v377);
  v379 = 1;
  v376 = v43;
  if (v378 > v42.i32[3])
  {
    v44 = v378;
  }

  LODWORD(v377) = v45;
  LODWORD(v378) = v44;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v41, v39), vcgtq_s32(v42, v40)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v375, *(a1 + 7664) + 320, 0);
  }

  v46 = *(BlitProgramVariant + 2120);
  do
  {
    IOGPUResourceListAddResource();
    v46 &= ~(1 << __clz(__rbit32(v46)));
  }

  while (v46);
  v360 = BlitProgramVariant;
  v47 = block;
  if (block != -2)
  {
    v177 = 0;
    v178 = &v381;
    v179 = v372;
    while (1)
    {
      v185 = v179;
      if (v177 >= v47)
      {
        v186 = v372;
        if (v177 == v47 + 1)
        {
          v186 = v374;
        }

        if (v177 == v47)
        {
          v185 = v373;
        }

        else
        {
          v185 = v186;
        }
      }

      v187 = v185[1];
      v361 = v179;
      if (v187)
      {
        break;
      }

LABEL_224:
      v207 = v185[7];
      if (v207)
      {
        v377 = 0;
        v378 = 0;
        v375.i64[0] = *(v178 - 1);
        v208 = *(v207 + 584);
        v210 = *(v185 + 16);
        v209 = *(v185 + 17);
        v211 = *(v207 + 144);
        v212 = *(v185 + 18);
        v213 = (*(*v185 + 8))(v185, 1);
        v375.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v208 + 648 * v213, v210, v211 + v209, v212, 0);
        v214 = *(a1 + 80);
        if ((v214 + 44) > *(a1 + 64))
        {
          v231 = *(a1 + 72);
          v232 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
          v215 = v360;
          if (v232)
          {
            v233 = *(a1 + 72) + v214 - v231 + 44;
            if (v233 > *(a1 + 64))
            {
              goto LABEL_249;
            }

            *(a1 + 80) = v233;
            GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
            v215 = v360;
            *v231 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
          }
        }

        else
        {
          *(a1 + 80) = v214 + 44;
          v215 = v360;
        }

        v216 = *(v215 + 16) + 31;
        v217 = *(a1 + 176);
        v218 = v217 + v216;
        if ((v217 + v216) <= *(a1 + 160))
        {
          goto LABEL_228;
        }

        v235 = *(a1 + 168);
        v236 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v215 = v360;
        if (v236)
        {
          v218 = *(a1 + 168) + v217 - v235 + v216;
          if (v218 > *(a1 + 160))
          {
            goto LABEL_249;
          }

LABEL_228:
          *(a1 + 176) = v218;
        }

        v219 = (*(*(v215 + 1784) + 8) - **(v215 + 1784)) + 63;
        v220 = *(a1 + 240);
        v221 = v220 + v219;
        if ((v220 + v219) > *(a1 + 224))
        {
          v237 = *(a1 + 232);
          v238 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v215 = v360;
          if (v238)
          {
            v221 = *(a1 + 232) + v220 - v237 + v219;
            if (v221 > *(a1 + 224))
            {
              goto LABEL_249;
            }

            goto LABEL_230;
          }
        }

        else
        {
LABEL_230:
          *(a1 + 240) = v221;
        }

        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v215, &v375);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v207))
        {
          v180 = 2;
        }

        else
        {
          v180 = 0;
        }

        v181 = *v178 << v180;
        if (v181 <= 7)
        {
          v182 = 1;
        }

        else
        {
          v182 = v181 >> 2;
        }

        LODWORD(v183) = 1640235008;
        DWORD1(v183) = v182;
        *(&v183 + 1) = 1;
        v184 = *(a1 + 72);
        *v184 = v183;
        *(a1 + 72) = v184 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v182;
        v179 = v361;
      }

      ++v177;
      v47 = block;
      v179 += 17;
      v178 += 2;
      if (v177 >= (block + 2))
      {
        goto LABEL_32;
      }
    }

    v377 = 0;
    v378 = 0;
    v375.i64[0] = *(v178 - 17);
    v188 = *(v187 + 584);
    v189 = *(v185 + 4);
    v190 = *(v185 + 5);
    v191 = *(v187 + 144);
    v192 = *(v185 + 6);
    v193 = (*(*v185 + 8))(v185, 0);
    v375.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v188 + 648 * v193, v189, v191 + v190, v192, 0);
    v194 = *(a1 + 80);
    if ((v194 + 44) > *(a1 + 64))
    {
      v223 = *(a1 + 72);
      v224 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
      v195 = v360;
      if (v224)
      {
        v225 = *(a1 + 72) + v194 - v223 + 44;
        if (v225 > *(a1 + 64))
        {
          goto LABEL_249;
        }

        *(a1 + 80) = v225;
        v226 = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
        v195 = v360;
        *v223 = __ROR8__(v226, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v194 + 44;
      v195 = v360;
    }

    v196 = *(v195 + 16) + 31;
    v197 = *(a1 + 176);
    v198 = v197 + v196;
    if ((v197 + v196) > *(a1 + 160))
    {
      v227 = *(a1 + 168);
      v228 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v195 = v360;
      if (!v228)
      {
LABEL_215:
        v199 = (*(*(v195 + 1784) + 8) - **(v195 + 1784)) + 63;
        v200 = *(a1 + 240);
        v201 = v200 + v199;
        if ((v200 + v199) > *(a1 + 224))
        {
          v229 = *(a1 + 232);
          v230 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v195 = v360;
          if (!v230)
          {
            goto LABEL_217;
          }

          v201 = *(a1 + 232) + v200 - v229 + v199;
          if (v201 > *(a1 + 224))
          {
            goto LABEL_249;
          }
        }

        *(a1 + 240) = v201;
LABEL_217:
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v195, &v375);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v187))
        {
          v202 = 2;
        }

        else
        {
          v202 = 0;
        }

        v203 = *(v178 - 32) << v202;
        if (v203 <= 7)
        {
          v204 = 1;
        }

        else
        {
          v204 = v203 >> 2;
        }

        LODWORD(v205) = 1640235008;
        DWORD1(v205) = v204;
        *(&v205 + 1) = 1;
        v206 = *(a1 + 72);
        *v206 = v205;
        *(a1 + 72) = v206 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v204;
        v179 = v361;
        goto LABEL_224;
      }

      v198 = *(a1 + 168) + v197 - v227 + v196;
      if (v198 > *(a1 + 160))
      {
        goto LABEL_249;
      }
    }

    *(a1 + 176) = v198;
    goto LABEL_215;
  }

LABEL_32:
  v48 = 0;
  do
  {
    v359 = v48;
    v49 = *(v382 + *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v48));
    if (v49 != -1)
    {
      v369 = v369 & 0xFFFFF800 | (8 * *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v48)) | 2;
      v50 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v364);
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v375, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
      v51 = v375;
      *v52.i8 = v376;
      v53 = *(v50 + 3144);
      v54 = *(v50 + 3160);
      v55 = vmax_s32(v376, *v54.i8);
      v375 = vmaxq_s32(v375, v53);
      v56 = v54.i32[3];
      v57 = v54.i32[2];
      if (v377 > v54.i32[2])
      {
        v57 = v377;
      }

      v52.i64[1] = __PAIR64__(v378, v377);
      v379 = 1;
      v376 = v55;
      if (v378 > v54.i32[3])
      {
        v56 = v378;
      }

      LODWORD(v377) = v57;
      LODWORD(v378) = v56;
      if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v53, v51), vcgtq_s32(v54, v52)))))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v375, *(a1 + 7664) + 320, 0);
      }

      v58 = *(v50 + 2120);
      do
      {
        IOGPUResourceListAddResource();
        v58 &= ~(1 << __clz(__rbit32(v58)));
      }

      while (v58);
      while (1)
      {
        v59 = v374;
        if (block + 1 != v49)
        {
          v59 = v372;
        }

        v60 = v373;
        if (block != v49)
        {
          v60 = v59;
        }

        v61 = block > v49 ? &v372[17 * v49] : v60;
        v62 = v61[1];
        v63 = &v380[v49];
        if (v62)
        {
          break;
        }

LABEL_65:
        v82 = v61[7];
        if (v82)
        {
          v377 = 0;
          v378 = 0;
          v84 = *(v63 + 16);
          v83 = v63 + 8;
          v375.i64[0] = v84;
          v85 = *(v61 + 16);
          v86 = *(v61 + 17);
          v87 = *(v82 + 144);
          v88 = *(v61 + 18);
          v89 = (*(*v61 + 8))(v61, 1);
          v375.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v82, v85, v87 + v86, v88, v89);
          v90 = *(a1 + 80);
          if ((v90 + 44) > *(a1 + 64))
          {
            v108 = *(a1 + 72);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
            {
              v109 = *(a1 + 72);
              v110 = v109 + v90 - v108 + 44;
              if (v110 > *(a1 + 64))
              {
                goto LABEL_249;
              }

              *(a1 + 80) = v110;
              *v108 = __ROR8__(*(a1 + 88) + v109, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
            }
          }

          else
          {
            *(a1 + 80) = v90 + 44;
          }

          v91 = *(v50 + 16) + 31;
          v92 = *(a1 + 176);
          v93 = v92 + v91;
          if ((v92 + v91) <= *(a1 + 160))
          {
            goto LABEL_69;
          }

          v111 = *(a1 + 168);
          if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
          {
            v93 = *(a1 + 168) + v92 - v111 + v91;
            if (v93 > *(a1 + 160))
            {
              goto LABEL_249;
            }

LABEL_69:
            *(a1 + 176) = v93;
          }

          v94 = (*(*(v50 + 1784) + 8) - **(v50 + 1784)) + 63;
          v95 = *(a1 + 240);
          v96 = v95 + v94;
          if ((v95 + v94) > *(a1 + 224))
          {
            v112 = *(a1 + 232);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              v96 = *(a1 + 232) + v95 - v112 + v94;
              if (v96 > *(a1 + 224))
              {
                goto LABEL_249;
              }

              goto LABEL_71;
            }
          }

          else
          {
LABEL_71:
            *(a1 + 240) = v96;
          }

          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v50, &v375);
          v97 = *(v83 + 3);
          v98 = v97 * *(v83 + 2);
          if (v97 == 3)
          {
            v99 = 3;
          }

          else
          {
            v99 = 4;
          }

          v100 = v98 / v99;
          if (v100 <= 1)
          {
            v100 = 1;
          }

          LODWORD(v101) = 1640235008;
          DWORD1(v101) = v100;
          *(&v101 + 1) = 1;
          v102 = *(a1 + 72);
          *v102 = v101;
          *(a1 + 72) = v102 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v100;
        }

        v49 = v384[v49];
        if (v49 == -1)
        {
          goto LABEL_33;
        }
      }

      v377 = 0;
      v378 = 0;
      v375.i64[0] = *v63;
      v64 = *(v61 + 4);
      v65 = *(v61 + 5);
      v66 = *(v62 + 144);
      v67 = *(v61 + 6);
      v68 = (*(*v61 + 8))(v61, 0);
      v375.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v62, v64, v66 + v65, v67, v68);
      v69 = *(a1 + 80);
      if ((v69 + 44) > *(a1 + 64))
      {
        v103 = *(a1 + 72);
        if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
        {
          v104 = *(a1 + 72);
          v105 = v104 + v69 - v103 + 44;
          if (v105 > *(a1 + 64))
          {
            goto LABEL_249;
          }

          *(a1 + 80) = v105;
          *v103 = __ROR8__(*(a1 + 88) + v104, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        }
      }

      else
      {
        *(a1 + 80) = v69 + 44;
      }

      v70 = *(v50 + 16) + 31;
      v71 = *(a1 + 176);
      v72 = v71 + v70;
      if ((v71 + v70) > *(a1 + 160))
      {
        v106 = *(a1 + 168);
        if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
        {
LABEL_57:
          v73 = (*(*(v50 + 1784) + 8) - **(v50 + 1784)) + 63;
          v74 = *(a1 + 240);
          v75 = v74 + v73;
          if ((v74 + v73) > *(a1 + 224))
          {
            v107 = *(a1 + 232);
            if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              goto LABEL_59;
            }

            v75 = *(a1 + 232) + v74 - v107 + v73;
            if (v75 > *(a1 + 224))
            {
              goto LABEL_249;
            }
          }

          *(a1 + 240) = v75;
LABEL_59:
          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v50, &v375);
          v76 = *(v63 + 3);
          v77 = v76 * *(v63 + 2);
          if (v76 == 3)
          {
            v78 = 3;
          }

          else
          {
            v78 = 4;
          }

          v79 = v77 / v78;
          if (v79 <= 1)
          {
            v79 = 1;
          }

          LODWORD(v80) = 1640235008;
          DWORD1(v80) = v79;
          *(&v80 + 1) = 1;
          v81 = *(a1 + 72);
          *v81 = v80;
          *(a1 + 72) = v81 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v79;
          goto LABEL_65;
        }

        v72 = *(a1 + 168) + v71 - v106 + v70;
        if (v72 > *(a1 + 160))
        {
          goto LABEL_249;
        }
      }

      *(a1 + 176) = v72;
      goto LABEL_57;
    }

LABEL_33:
    v48 = v359 + 4;
  }

  while (v359 != 20);
  v116 = *(a1 + 72);
  v117 = *(a1 + 80);
  if ((v117 + 4) > *(a1 + 64))
  {
    v355 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
    v118 = *(a1 + 72);
    if (!v355)
    {
      goto LABEL_110;
    }

    v356 = v118 + v117 - v116 + 4;
    if (v356 <= *(a1 + 64))
    {
      *(a1 + 80) = v356;
      *v116 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v118 = *(a1 + 72);
      goto LABEL_110;
    }

LABEL_249:
    abort();
  }

  *(a1 + 80) = v117 + 4;
  v118 = v116;
LABEL_110:
  *v118 = 536871298;
  *(a1 + 72) = v118 + 4;
  if (!*(*(a1 + 1912) + 520))
  {
    v119 = *(a1 + 1968) - *(a1 + 1984);
    *(v119 + 140) = 1;
    if ((*(v119 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  v364 = &unk_2A23F81E0;
  if (__p)
  {
    v367 = __p;
    operator delete(__p);
  }

  v120 = *(a1 + 7664);
  *(v120 + 1606) = 1;
  *(v120 + 585) = 1;
  *(v120 + 581) = 1;
  *(v120 + 2224) = 1;
  *(v120 + 544) = 0;
  *(v120 + 528) = 0;
  *(v120 + 496) = 0u;
  *(v120 + 512) = 0u;
  *(v120 + 700) = 8;
  *(v120 + 1708) = 8;
  v121 = *(a1 + 72);
  *(a1 + 72) = v121 + 1;
  *v121 = *(a1 + 5172);
  v122 = *(a1 + 10488);
  v123 = *(a1 + 10504);
  v124 = *(a1 + 10496);
  if (!v122)
  {
    v125 = *(a1 + 10504);
    v122 = *(a1 + 10496);
    v126 = *(a1 + 10512);
    if (v123)
    {
      goto LABEL_118;
    }

    goto LABEL_253;
  }

  if (!v124)
  {
    v125 = *(a1 + 10504);
    v126 = *(a1 + 10512);
    if (v123)
    {
      goto LABEL_118;
    }

    goto LABEL_253;
  }

  AGX::FenceList::merge(*(a1 + 10488), v124);
  v125 = *(a1 + 10504);
  v126 = *(a1 + 10512);
  if (!v125)
  {
LABEL_253:
    v123 = v126;
    goto LABEL_254;
  }

LABEL_118:
  if (v126)
  {
    AGX::FenceList::merge(v125, v126);
  }

LABEL_254:
  if (FenceEncoder::encode((a1 + 1880), 1, *(a1 + 7656), v123, v122, 0, 0))
  {
    *(a1 + 11464) |= 0x20000uLL;
  }

LABEL_427:
  v337 = *(a1 + 7664);
  *(v337 + 564) = *(a1 + 10552);
  *(v337 + 583) = 0;
  v338 = *(a1 + 10560);
  if (!v338 || (v339 = *(a1 + 10572), v340 = *(a1 + 10568), (v340 & v339) == 0xFFFFFFFF))
  {
    *(v337 + 596) = -1;
    *(v337 + 588) = -1;
  }

  else
  {
    *(v337 + 588) = [v338 resourceID];
    *(v337 + 592) = v340;
    *(v337 + 596) = v339;
  }

  *(a1 + 10568) = -1;
  v341 = *(a1 + 10560);
  if (!v341 || (v342 = *(a1 + 10580), v343 = *(a1 + 10576), (v343 & v342) == 0xFFFFFFFF))
  {
    *(v337 + 1624) = -1;
    *(v337 + 1632) = -1;
  }

  else
  {
    *(v337 + 1624) = [v341 resourceID];
    *(v337 + 1628) = v343;
    *(v337 + 1632) = v342;
  }

  *(a1 + 10576) = -1;
  if (*(a1 + 11472) != *(a1 + 11480) || *(a1 + 11520) != *(a1 + 11528) || *(a1 + 11496) != *(a1 + 11504) || *(a1 + 11544) != *(a1 + 11552))
  {
    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(a1, *(a1 + 7656), (a1 + 11472), (a1 + 11496), (a1 + 11520), (a1 + 11544));
  }

  v344 = *(a1 + 7664);
  *(v344 + 2068) = *(a1 + 1928);
  *(v344 + 2064) = *(a1 + 1924);
  *(v344 + 2072) = *v358;
  *(v344 + 184) = 0x3A0012006B0003;
  *(v344 + 192) = 1;
  *(v344 + 1615) = 0;
  *(v344 + 582) = 0;
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType = 1;
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 7664) + 1620) = 0;
  }

  v9 = v358;
  {
    v9 = v358;
    if (v357)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType = 1;
      v9 = v358;
    }
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 7664) + 600) = 0;
  }

LABEL_446:
  *(v9 + 3436) = 0;
  v345 = *(a1 + 7664);
  if (*(a1 + 10736))
  {
    AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getAttachmentInfo(*(a1 + 2392), (a1 + 10752), (a1 + 10816), a1 + 10880, a1 + 10928, (a1 + 10976), (a1 + 10984), a1 + 10992, a1 + 10998, (a1 + 11004), (a1 + 11008), (a1 + 11012), v345 + 720);
    *(a1 + 11016) = *(v345 + 1168);
    *(a1 + 11032) = *(v345 + 968);
    *(a1 + 10736) = *(a1 + 10736) & 0xFFFFFEFF | ((*(v345 + 1728) != 0) << 8);
    v345 = *(a1 + 7664);
  }

  v346 = AGX::GtpContinueKeyGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::computeHash((a1 + 10736), (v345 + 607));
  v351 = *(a1 + 7664);
  *(v351 + 604) = v346;
  if (v346)
  {
    *(v351 + 583) = 0;
    *(v351 + 1168) &= ~1uLL;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v347, v348, v349, v350);
  *(a1 + 7656) = 0;
  *(a1 + 7664) = 0;
  if ((*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || *(a1 + 2073) == 1))
  {
    AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(*(a1 + 2008));
  }
}

void sub_29CEDFDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::beginRenderPass(uint64_t a1)
{
  v2 = a1 + 6824;
  v3 = a1 + 2412;
  v4 = *(*(a1 + 2392) + 4957);
  if (*(a1 + 5384) == 1)
  {
    *(a1 + 5384) = 0;
  }

  *(a1 + 10552) = 0;
  *(a1 + 1956) = 0;
  *(a1 + 1960) = 1;
  *(a1 + 2064) |= 0x10u;
  v5 = MEMORY[0x29EDC56B0];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v6 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1, 2712, 0);
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  *(v2 + 752) = 0u;
  *(v2 + 768) = 0;
  v7 = *(a1 + 1864) - 1;
  if (v7 > 6)
  {
    v8 = 31;
  }

  else
  {
    v8 = dword_29D2F750C[v7];
  }

  v9 = v8;
  if (((1 << v8) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v8 + 72) && (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v8, 0) & 1) == 0)
  {
LABEL_167:
    abort();
  }

  v10 = (a1 + 64 + 32 * v9);
  v11 = v10[1] + 95;
  if (v11 <= *v10)
  {
    goto LABEL_11;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v9, 0))
  {
    v11 = v10[1] + 95;
    if (v11 > *v10)
    {
      goto LABEL_167;
    }

LABEL_11:
    v10[2] = v11;
  }

  v12 = *(a1 + 1864) - 1;
  if (v12 > 6)
  {
    v13 = 31;
  }

  else
  {
    v13 = qword_29D2F74B8[v12];
  }

  v14 = a1 + 64 + 32 * v13;
  v15 = (*(v14 + 8) + 63) & 0xFFFFFFFFFFFFFFC0;
  v16 = *(v14 + 24);
  *(v14 + 8) = v15 | 0x20;
  v17 = *(a1 + 72);
  if ((v17 + 6) > *(a1 + 64))
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
    {
      v154 = *(a1 + 72) + 48;
      if (v154 > *(a1 + 64))
      {
        goto LABEL_167;
      }

      *(a1 + 80) = v154;
      *v17 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    *(a1 + 80) = v17 + 6;
  }

  v18 = *(a1 + 1032) + 1348;
  if (v18 <= *(a1 + 1024))
  {
LABEL_18:
    *(a1 + 1040) = v18;
    goto LABEL_19;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 30, 0))
  {
    v18 = *(a1 + 1032) + 1348;
    if (v18 > *(a1 + 1024))
    {
      goto LABEL_167;
    }

    goto LABEL_18;
  }

LABEL_19:
  *(v6 + 17) = 0;
  *(v6 + 37) = xmmword_29D2F1750;
  *(v6 + 41) = 0;
  *(v6 + 45) = 0;
  *(v6 + 43) = 0;
  *(a1 + 7656) = v6;
  v19 = v6 + 48;
  *(a1 + 7664) = v6 + 48;
  bzero(v6 + 48, 0x9D0uLL);
  v20 = *(a1 + 2392);
  *&v21 = *(v20 + 3572);
  v22 = *(v20 + 4940);
  v23 = *(v20 + 4908);
  *(&v21 + 1) = *(v20 + 3584);
  v24 = *(v20 + 3592);
  v25 = *(v20 + 3608);
  v26 = *(v20 + 3624);
  v27 = *(v20 + 3640);
  v6[576] = *(v20 + 3568);
  *(v6 + 577) = v21;
  *(v6 + 581) = v24;
  *(v6 + 585) = v25;
  *(v6 + 589) = v26;
  *(v6 + 593) = v27;
  v6[595] = v22;
  *(v6 + 298) = 0;
  v6[598] = v23;
  *(v6 + 599) = 0;
  *(v6 + 2404) = 0;
  *(v6 + 298) = *(v20 + 4932);
  v28 = *(v20 + 6332);
  if (v28)
  {
    v6[599] = v28;
    v6[600] = *(v20 + 6336);
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  *(v6 + 2404) = v29;
  v30 = *(a1 + 2392);
  v31.i32[0] = *(v30 + 5920);
  v31.i32[1] = *(v30 + 5928);
  v32 = vshl_n_s32(v31, 5uLL);
  *v35.i8 = vshl_u32(vadd_s32(v32, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v33 = vshl_u32(vadd_s32(v32, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v34 = vadd_s32(*v35.i8, vrev64_s32(v33));
  v35.i32[1] = v33.i32[1];
  v36 = *(*(a1 + 7600) + 7092);
  v37 = *(a1 + 2420);
  v38 = *(a1 + 7616);
  v39 = *(a1 + 7640);
  v40 = *(a1 + 7624);
  v41.i64[0] = *v3;
  v41.i64[1] = v35.i64[0];
  v42 = vaddvq_s32(v41);
  v43.i64[0] = *(a1 + 2400);
  v44 = vadd_s32(*v43.i8, vmla_s32(vext_s8(vmul_s32(v34, 0x6000000060), v34, 4uLL), v34, 0x10000000ALL));
  v45 = v44.i32[1] - v39;
  v46 = vcgt_s32(v44, vdup_n_s32(v39));
  if ((v46.i8[4] & 1) == 0)
  {
    v45 = 0;
  }

  v47 = ((v40 + v42 + (v34.i32[0] + *(a1 + 2408)) * *(a1 + 7620) + v37 + (v45 + v43.i32[1]) * v38 + 64) * v36 + 7) & 0xFFFFFFF8;
  v48 = v46.i8[0];
  v49 = v40 + v37;
  v50 = *(v2 + 720);
  v35.i64[1] = *v3;
  *(v2 + 720) = vmaxq_s32(v50, v35);
  v51.i64[0] = *(a1 + 7560);
  v43.i32[0] = v37;
  *(a1 + 7560) = vmax_s32(*v51.i8, __PAIR64__(v47, v37));
  *(a1 + 7596) = 2;
  v52 = v44.i32[0] - v39;
  if ((v48 & 1) == 0)
  {
    v52 = 0;
  }

  v53 = ((v42 + v52 * v38 + v49 + 64) * v36 + 7) & 0xFFFFFFF8;
  v54 = *(a1 + 7568);
  if (v54 <= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = *(a1 + 7568);
  }

  v56 = *(a1 + 7576);
  v51.i64[1] = __PAIR64__(v56, v54);
  v43.i32[1] = v47;
  v43.i64[1] = __PAIR64__(v44.u32[0], v53);
  *(a1 + 7568) = v55;
  if (v56 <= v44.i32[0])
  {
    v57 = v44.i32[0];
  }

  else
  {
    v57 = v56;
  }

  *(a1 + 7576) = v57;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v35, v50), vcgtq_s32(v43, v51)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v2 + 720, *(a1 + 7664) + 1360, 0);
  }

  v58 = *(a1 + 5296);
  v59 = *(a1 + 2075);
  if (v58)
  {
    if (*(a1 + 2075))
    {
LABEL_36:
      v60 = *(v58 + 1048);
      goto LABEL_37;
    }

    if (*(a1 + 2076) == 1)
    {
      v60 = *(v58 + 1048);
    }

    else
    {
      if ((*(a1 + 2074) & 1) == 0)
      {
        goto LABEL_36;
      }

      v60 = *(v58 + 1048);
      if (*(a1 + 2072))
      {
LABEL_37:
        v60[21] = 0;
        v61 = *(v58 + 2080);
        v61[21] = 0;
        v60[22] = 0;
        v61[22] = 0;
        v60[25] = 0;
        v61[25] = 0;
        v60[26] = 0;
        v61[26] = 0;
        if ((v59 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_47:
        v63 = *(a1 + 8480);
        v63[21] = 0;
        v64 = *(a1 + 9752);
        v64[22] = 0;
        v63[22] = 0;
        v64[23] = 0;
        v63[25] = 0;
        v64[26] = 0;
        goto LABEL_48;
      }
    }

    v62 = *(v58 + 2080);
    v60[26] = 0;
    *(v62 + 208) = 0;
    if (*(a1 + 2076))
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (*(a1 + 2075))
  {
    goto LABEL_47;
  }

LABEL_38:
  if ((*(a1 + 2076) & 1) == 0)
  {
LABEL_45:
    if (*(a1 + 2074) == 1 && *(a1 + 2072) != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_48:
  v65 = *(a1 + 8480);
  v65[26] = 0;
  v66 = *(a1 + 9752);
  v66[27] = 0;
  v65[28] = 0;
  v66[29] = 0;
  v65[40] = 0;
  v66[41] = 0;
  v65[29] = 0;
  v66[30] = 0;
  v65[42] = 0;
  v66[43] = 0;
  v65[31] = 0;
  v66[32] = 0;
  *v19 = *(a1 + 88) + *(a1 + 72);
  *(v6 + 93) = v15 + v16;
  v6[188] = 1;
  v67 = *(*(a1 + 1872) + 848);
  if (*(v67 + 6242) == 1)
  {
    ScissorBuffer = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getScissorBuffer(v67, *(a1 + 1904), *(a1 + 1912));
    v67 = *(*(a1 + 1872) + 848);
  }

  else
  {
    ScissorBuffer = *(a1 + 344) + *(a1 + 328);
  }

  *(v6 + 142) = ScissorBuffer;
  if (*(v67 + 6241) == 1)
  {
    DepthBiasBuffer = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getDepthBiasBuffer(v67, *(a1 + 1904), *(a1 + 1912));
  }

  else
  {
    v70 = *(a1 + 296);
    if (!v70)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
      v70 = *(a1 + 296);
    }

    DepthBiasBuffer = *(a1 + 312) + v70;
  }

  *(v6 + 143) = DepthBiasBuffer;
  *(v6 + 285) = 0;
  v71 = *(a1 + 2392);
  v72 = *(v71 + 4912);
  v73 = MEMORY[0x29EDC5638];
  if (v72)
  {
    *(v19 + 216) = *(v72 + *MEMORY[0x29EDC5638] + 8) & 0x7FFFFFFFFFFLL;
  }

  *(v19 + 579) = *(v71 + 4906);
  *(*(a1 + 7664) + 574) = 0;
  *(v19 + 576) = v4;
  *(v19 + 2016) = v4;
  if ([*a1 skipRender])
  {
    *(v19 + 572) = 1;
    *(v19 + 1606) = 1;
  }

  {
    AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso_defaults = 3;
  }

  {
    AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso_defaults;
  }

  v19[142] = (4 * (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso != 0)) | (8 * AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso);
  {
    AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso_defaults = 3;
  }

  {
    AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso = AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso_defaults;
  }

  v19[514] = (4 * (AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso != 0)) | (8 * AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso);
  v19[150] = 0;
  v19[405] = 0;
  v74 = *(a1 + 1032);
  v75 = *(a1 + 1048) + v74;
  *(a1 + 1032) = v74 + 24;
  *v74 = xmmword_29D2F1760;
  v76 = __ROR8__(v75, 32);
  *(v74 + 16) = 0x1FFFF00023020;
  v77 = *(a1 + 72);
  *v77 = v76 & 0xFFFFFFFC000000FFLL | 0x600;
  *(a1 + 72) = v77 + 1;
  v78 = *(a1 + 1032);
  v79 = *(a1 + 1048) + v78;
  *(a1 + 1032) = v78 + 132;
  *v78 = 332412770;
  *(v78 + 116) = 0u;
  *(v78 + 100) = 0u;
  *(v78 + 84) = 0u;
  *(v78 + 68) = 0u;
  *(v78 + 52) = 0u;
  *(v78 + 36) = 0u;
  *(v78 + 20) = 0u;
  *(v78 + 4) = 0u;
  v80 = *(a1 + 72);
  *v80 = __ROR8__(v79, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  *(a1 + 72) = v80 + 1;
  v81 = *(a1 + 1032);
  v82 = *(a1 + 1048) + v81;
  *(a1 + 1032) = v81 + 132;
  *v81 = 332412768;
  *(v81 + 4) = 0u;
  *(v81 + 20) = 0u;
  *(v81 + 36) = 0u;
  *(v81 + 52) = 0u;
  *(v81 + 68) = 0u;
  *(v81 + 84) = 0u;
  *(v81 + 100) = 0u;
  *(v81 + 116) = 0u;
  v83 = *(a1 + 72);
  *v83 = __ROR8__(v82, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  *(a1 + 72) = v83 + 1;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(a1 + 2088, v19, a1 + 24);
  v84 = 1;
  if ((*(a1 + 2075) & 1) == 0)
  {
    if (*(a1 + 2076))
    {
      v84 = 0;
    }

    else if (*(a1 + 2074) == 1)
    {
      v84 = *(a1 + 2072);
    }

    else
    {
      v84 = 1;
    }
  }

  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(a1 + 2120, v19, *(a1 + 1912), (a1 + 24), *(a1 + 2392), v84 & 1);
  v85 = (*(a1 + 7496) + 7092);
  v86 = (a1 + 7528);
  v87 = (a1 + 7536);
  v88 = vld1_dup_f32(v87);
  *v93.i8 = vld1_dup_f32(v86);
  v89.i32[0] = *(a1 + 7524);
  v89.i32[1] = v89.i32[0] + 64;
  v90 = vmla_s32(v89, vand_s8(vsub_s32(0x1EA00000006, v88), vcgt_s32(0x1EA00000006, v88)), *v93.i8);
  v88.i32[1] = 1;
  v88.i32[0] = *(a1 + 7532) + 65;
  *v93.i8 = vld1_dup_f32(v85);
  v91 = *&vmla_s32(0x700000007, vadd_s32(v90, v88), *v93.i8) & 0xFFFFFFF8FFFFFFF8;
  *(a1 + 7492) = 1;
  v92 = *(a1 + 7440);
  v93.i64[0] = *(a1 + 7456);
  v94 = *(a1 + 7464);
  v95 = *(a1 + 7472);
  *(a1 + 7440) = vmaxq_s32(v92, xmmword_29D2F1F10);
  v96 = HIDWORD(v91);
  *(a1 + 7456) = vmax_s32(*v93.i8, vzip1_s32(0, v91));
  if (v94 > SHIDWORD(v91))
  {
    v96 = v94;
  }

  *(a1 + 7464) = v96;
  v93.i64[1] = __PAIR64__(v95, v94);
  v97 = xmmword_29D2F24D0;
  *(v97.i64 + 4) = v91;
  if (v95 <= 490)
  {
    v98 = 490;
  }

  else
  {
    v98 = v95;
  }

  *(a1 + 7472) = v98;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(xmmword_29D2F1F10, v92), vcgtq_s32(v97, v93)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7440, *(a1 + 7664) + 320, 1);
  }

  if (*(v19 + 2015) == 1 && **v5)
  {
    IOGPUDeviceTraceEvent();
  }

  *&v99 = -1;
  *(&v99 + 1) = -1;
  *(a1 + 6568) = v99;
  *(a1 + 6584) = v99;
  *(a1 + 6600) = v99;
  *(a1 + 6616) = v99;
  *(a1 + 6632) = v99;
  *(a1 + 6648) = v99;
  *(a1 + 6664) = v99;
  *(a1 + 6680) = v99;
  *(a1 + 6696) = v99;
  *(a1 + 6712) = v99;
  *(a1 + 6728) = v99;
  *(a1 + 6744) = v99;
  *(a1 + 6760) = v99;
  *(a1 + 6776) = v99;
  *(a1 + 6792) = v99;
  *(a1 + 6808) = v99;
  *(a1 + 7004) = v99;
  *(a1 + 7020) = v99;
  *(a1 + 7036) = v99;
  *(a1 + 7052) = v99;
  *(a1 + 7068) = v99;
  *(a1 + 7084) = v99;
  *(a1 + 7100) = v99;
  *(a1 + 7116) = v99;
  v100 = *(v2 + 48);
  v101 = 1064960;
  if (!v100)
  {
    v101 = 1097728;
  }

  v102 = *v2;
  *(v19 + 146) = v101 | ((*(*(a1 + 2392) + 4924) != 0) << 18);
  if ((v100 & 1) == 0)
  {
    v103 = v102.u16[2] | (v102.u16[0] << 16);
    v104 = vand_s8(*&vextq_s8(v102, v102, 8uLL), 0xFFFF0000FFFFLL);
    v105.i64[0] = v104.u32[0];
    v105.i64[1] = v104.u32[1];
    v106 = vshlq_u64(v105, xmmword_29D2F24E0);
    *(v19 + 147) = v106.i64[0] | v103 | v106.i64[1];
  }

  v107 = *(*(a1 + 1872) + 848);
  if (*(v107 + 6242) == 1)
  {
    *&v159 = 0;
    v158 = 0;
    v108 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(v107, a1 + 6048, 1, *(*(a1 + 7664) + 944), &v159, &v158, &v157);
    if ((v158 & 1) == 0)
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(*(*(a1 + 1872) + 848));
      *(v19 + 118) = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getScissorBuffer(*(*(a1 + 1872) + 848), *(a1 + 1904), *(a1 + 1912));
      v108 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(a1 + 1872) + 848), a1 + 6048, 1, *(*(a1 + 7664) + 944), &v159, &v158, &v157);
    }

    *(a1 + 7164) = v108;
    *(a1 + 7168) = v159;
  }

  else
  {
    v110 = 16 * *(a1 + 6844);
    v111 = *(a1 + 328) + v110;
    if (v111 > *(a1 + 320))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 8, 1))
      {
        v156 = *(a1 + 328) + v110;
        if (v156 > *(a1 + 320))
        {
          goto LABEL_167;
        }

        *(a1 + 336) = v156;
        *(*(a1 + 7664) + 944) = *(*(a1 + 48) + 512) + *(*(a1 + 48) + 536) - *(*(a1 + 48) + 520);
      }
    }

    else
    {
      *(a1 + 336) = v111;
    }

    v112 = *(a1 + 328);
    *(a1 + 7168) = v112 + *(a1 + 344);
    *(a1 + 328) = v112 + 2;
    *(a1 + 7164) = (v112 - *(*(a1 + 48) + 536)) >> 4;
    v109 = *v2;
    v113 = vextq_s8(v109, v109, 4uLL).u64[0];
    v109.i32[1] = vextq_s8(v109, v109, 8uLL).i32[1];
    v109.i32[0] = vshl_n_s32(*v109.i8, 0x10uLL).u32[0];
    v109.i32[1] = v109.u16[2];
    v114 = vshl_n_s32(v113, 0x10uLL);
    v113.i16[1] = 0;
    v115 = *(v2 + 308);
    v113.i32[1] = v114.i32[1];
    *v109.i8 = vorr_s8(v113, *v109.i8);
    *v112 = v109.i64[0];
    v112[1] = v115;
  }

  *(a1 + 10472) |= 0x40200000000000uLL;
  v116 = *(a1 + 2392);
  if (*(v2 + 430) == 1 && *(v116 + 4912))
  {
    v117 = *(*(*(*(a1 + 1872) + 848) + 7000) + 2120);
    do
    {
      v117 &= ~(1 << __clz(__rbit32(v117)));
      IOGPUResourceListAddResource();
    }

    while (v117);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveVisibilityClearDatabufferSpace(a1);
    *v109.i64 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVisibilityClear(a1);
    v116 = *(a1 + 2392);
  }

  if (*(v116 + 4912))
  {
    *(a1 + 10480) |= 2u;
  }

  v118 = *(a1 + 10536);
  if (v118 && *(*(v118 + 64) + 49320) == 1)
  {
    v119 = *(*(*(*(*(a1 + 1872) + 848) + 17136) + 8) + 2728);
    do
    {
      v119 &= ~(1 << __clz(__rbit32(v119)));
      IOGPUResourceListAddResource();
    }

    while (v119);
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((a1 + 24), *(*(*(*(a1 + 1872) + 848) + 17136) + 8));
    *(a1 + 7328) = 0;
    *(a1 + 7312) = *(a1 + 72);
    *(a1 + 7320) = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(a1);
    *(a1 + 7336) = *(a1 + 88) + *(a1 + 72);
  }

  v120 = *(a1 + 1912);
  if (*(v3 + 2991) == 1)
  {
    v121 = *(*(a1 + 1872) + 848);
    v122 = *(v121 + 6320);
    v123 = *(v121 + 6832);
    if (v123)
    {
      do
      {
        IOGPUResourceListAddResource();
        v123 = *v123;
      }

      while (v123);
      v120 = *(a1 + 1912);
    }

    v124 = *(v121 + 6664);
    if (v124)
    {
      do
      {
        IOGPUResourceListAddResource();
        v124 = *v124;
      }

      while (v124);
      v120 = *(a1 + 1912);
    }

    *(a1 + 7268) = v122;
  }

  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v109, v120, *(a1 + 2008), 63);
  if (!*(*(a1 + 1912) + 520))
  {
    v125 = *(a1 + 1968) - *(a1 + 1984);
    *(v125 + 140) = 1;
    if ((*(v125 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  *(a1 + 5164) = 0;
  if (*(*(*(a1 + 1872) + 848) + 16472))
  {
    IOGPUResourceListAddResource();
  }

  *(a1 + 7260) = 0;
  *(v2 + 448) = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v159, a1, 3);
  v126 = *(a1 + 8480);
  *(a1 + 11328) = v159;
  v127 = v159;
  v128 = v160;
  *(v126 + 304) = v159;
  *(a1 + 8752) = v128;
  *(a1 + 10096) |= 1uLL;
  *(a1 + 10472) |= 0x40uLL;
  v129 = *(a1 + 5296);
  if (v129)
  {
    *(v129[131] + 304) = v127;
    v129[165] = v128;
    *(v129[260] + 304) = v127;
    v129[294] = v128;
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v159, a1, 4);
  v130 = *(a1 + 9752);
  *(a1 + 11344) = v159;
  v131 = v159;
  v132 = v160;
  *(v130 + 312) = v159;
  *(a1 + 10024) = v132;
  *(a1 + 10384) |= 1uLL;
  *(a1 + 10472) |= 0x1000000000uLL;
  *(*(a1 + 3600) + 312) = v131;
  *(a1 + 3872) = v132;
  v133 = *(a1 + 168);
  v134 = v133 + 103;
  if ((v133 + 103) <= *(a1 + 160))
  {
LABEL_122:
    *(a1 + 176) = v134;
    goto LABEL_123;
  }

  v155 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v133 = *(a1 + 168);
  if (v155)
  {
    v134 = v133 + 103;
    if ((v133 + 103) > *(a1 + 160))
    {
      goto LABEL_167;
    }

    goto LABEL_122;
  }

LABEL_123:
  v135 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  v136 = v135 + *(a1 + 184);
  *(a1 + 11408) = v136;
  *(a1 + 168) = v135 + 88;
  *(a1 + 11416) = v135;
  *(*(a1 + 8480) + 240) = v136;
  v137 = *(a1 + 11408);
  *(*(a1 + 9752) + 248) = v137;
  *(*(a1 + 3600) + 248) = v137;
  v138 = *(a1 + 5296);
  if (v138)
  {
    v139 = *(a1 + 11408);
    *(*(v138 + 2080) + 240) = v139;
    *(*(v138 + 1048) + 240) = v139;
  }

  v140 = *(a1 + 11392);
  if (v140)
  {
    *(v135 + 80) = *(a1 + 11400) + *(v140 + *v73 + 8);
    IOGPUResourceListAddResource();
    v135 = *(a1 + 11416);
  }

  v141 = *(a1 + 2392);
  v142 = *(v141 + 3576);
  if (v142)
  {
    v143 = v135 + 16;
    if (v142 < 4)
    {
      v144 = 0;
LABEL_133:
      v149 = v142 - v144;
      v150 = 2 * v144;
      v151 = (v141 + 8 * v144 + 3584);
      v152 = vdup_n_s32(0x3D800000u);
      do
      {
        v153 = *v151++;
        *(v143 + 4 * (v150 & 0xFFFFFFFE)) = vmul_f32(vcvt_f32_u32(v153), v152);
        v150 += 2;
        --v149;
      }

      while (v149);
      goto LABEL_135;
    }

    v145 = 0;
    v146 = (v141 + 3584);
    v144 = v142 & 0xFFFFFFFC;
    v147 = vdupq_n_s32(0x3D800000u);
    do
    {
      v162 = vld2q_f32(v146);
      v146 += 8;
      v163.val[0] = vmulq_f32(vcvtq_f32_u32(v162.val[0]), v147);
      v163.val[1] = vmulq_f32(vcvtq_f32_u32(v162.val[1]), v147);
      v148 = (v143 + 4 * (v145 & 0xFFFFFFF8));
      vst2q_f32(v148, v163);
      v145 += 8;
    }

    while (((2 * v142) & 0x1FFFFFFF8) != v145);
    if (v144 != v142)
    {
      goto LABEL_133;
    }
  }

LABEL_135:
  if (*(a1 + 10560))
  {
    if (*(a1 + 1896))
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }
}