void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveScissorSpace(void *result, uint64_t a2)
{
  if ((*(*(result[234] + 848) + 6242) & 1) == 0)
  {
    v2 = 16 * a2;
    v3 = result[41] + 16 * a2;
    if (v3 > result[40])
    {
      v5 = result;
      result = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 8, 1);
      if (result)
      {
        v4 = v5[41] + v2;
        if (v4 > v5[40])
        {
          abort();
        }

        v5[42] = v4;
        *(v5[958] + 944) = *(v5[6] + 512) + *(v5[6] + 536) - *(v5[6] + 520);
      }
    }

    else
    {
      result[42] = v3;
    }
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDepthBiasSpace(void *a1)
{
  if (*(*(a1[234] + 848) + 6241))
  {
    return;
  }

  v1 = a1[37];
  if (!v1)
  {
    v3 = a1;
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 7, 0))
    {
      goto LABEL_13;
    }

    a1 = v3;
    v1 = v3[37];
  }

  v2 = v1 + 12;
  if (v2 <= a1[36])
  {
    a1[38] = v2;
    return;
  }

  v7 = a1;
  v4 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 7, 1);
  v5 = v7;
  if (v4)
  {
    v6 = v7[37];
    if ((v6 + 12) <= v7[36])
    {
      v7[38] = v6 + 12;
      if (!v6)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow((v7 + 3), 7u);
        v5 = v7;
      }

      *(v5[958] + 952) = *(v5[6] + 448) + *(v5[6] + 472) - *(v5[6] + 456);
      return;
    }

LABEL_13:
    abort();
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::finalizeVisibilityClear(uint64_t result)
{
  v1 = *(result + 7248);
  if (v1 == 1)
  {
    v4 = *(result + 456);
    *v4 = 2 * *(result + 7252);
    *(result + 456) = v4 + 1;
    *(result + 7248) = 2;
    *(*(result + 7232) + 8) = 2;
  }

  else if (!v1)
  {
    v2 = *(result + 7224);
    if (v2)
    {
      v3 = *(result + 7240);
      *v2 = BYTE4(v3) | 0x80000000;
      v2[1] = v3;
      *(result + 7224) = 0;
      *(result + 7240) = 0;
      ++*(result + 1952);
    }
  }

  return result;
}

void sub_29CEF0048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexAmplificationCount(uint64_t a1, unsigned int a2, void *__src)
{
  v5 = (a1 + 10648);
  if (__src)
  {
    v6 = 8 * a2;
    memcpy((a1 + 10648), __src, v6);
  }

  else
  {
    v7 = *(a1 + 10600);
    *v5 = *(a1 + 10584);
    *(a1 + 10664) = v7;
    v8 = *(a1 + 10632);
    *(a1 + 10680) = *(a1 + 10616);
    *(a1 + 10696) = v8;
    v6 = 8 * a2;
  }

  v9 = (v6 + 15) | 0xF;
  v10 = *(a1 + 168);
  v11 = v10 + v9;
  if ((v10 + v9) <= *(a1 + 160))
  {
LABEL_5:
    *(a1 + 176) = v11;
    goto LABEL_6;
  }

  v38 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v10 = *(a1 + 168);
  if (v38)
  {
    v11 = v10 + v9;
    if ((v10 + v9) > *(a1 + 160))
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

LABEL_6:
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(a1 + 184)];
  *(a1 + 168) = &v12[(v6 + 15) & 0xFFFFFFFF0];
  result = memcpy(v12, v5, v6);
  v15 = MEMORY[0x29EDC5638];
  v16 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 10088) |= 0x400000000000000uLL;
  *(a1 + 10472) |= 0x40uLL;
  v17 = *(a1 + 8480);
  *(v17 + 256) = v13;
  *(a1 + 8704) = v16;
  *(a1 + 7416) = a2;
  *(v17 + 736) = a2;
  *(a1 + 10168) |= 0x80uLL;
  *(a1 + 10480) &= ~4u;
  v18 = *(a1 + 7672);
  if (v18)
  {
    v19 = *(v18 + 4112);
    *(a1 + 6024) = *(a1 + 6024) & 0xF0E3FF00 | v19 & 0xF1C00FF;
    *(a1 + 6032) = *(a1 + 6032) & 0xFFFFFFF8 | (a2 - 1) & 7;
    *(a1 + 6036) = HIDWORD(v19);
    *(a1 + 6028) = 0;
    *(a1 + 10472) |= 4uLL;
  }

  v20 = *(a1 + 5296);
  if (v20)
  {
    v21 = 8 * a2;
    v22 = v21 + 15;
    v23 = v20[1];
    v24 = (v21 + 15) | 0xF;
    v25 = v23[21] + v24;
    if (v25 <= v23[20])
    {
      goto LABEL_10;
    }

    v39 = AGX::DataBufferAllocator<44ul>::growNoInline(v23 + 3, 3, 0);
    v21 = 8 * a2;
    if (!v39)
    {
LABEL_11:
      v26 = v22 & 0xFFFFFFFF0;
      v27 = v20[1];
      v28 = ((*(v27 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *(v27 + 184);
      *(v27 + 168) = &v28[v26];
      result = memcpy(v28, v5, v21);
      v30 = v20[1];
      v31 = *(*(v30 + 48) + 224);
      v32 = *v15;
      *(v30 + 10280) |= 0x400000000000000uLL;
      *(v30 + 10472) |= 0x4000000uLL;
      v33 = v20[260];
      *(v33 + 256) = &v28[v29];
      v20[288] = v31 + v32;
      *(v20[131] + 948) = a2;
      *(v33 + 668) = a2;
      v34 = v20[5];
      if (v34)
      {
        v35 = *(v34 + 3880);
        v36 = *(v34 + 3888);
        v37 = *(v30 + 7416);
        *(v30 + 6024) = *(v30 + 6024) & 0xF0E3FF00 | v35 & 0xF1C00FF;
        *(v30 + 6032) = *(v30 + 6032) & 0xFFFFFFF8 | (v37 - 1) & 7;
        *(v30 + 6036) = HIDWORD(v35);
        *(v30 + 6028) = v36;
        *(v30 + 10472) |= 4uLL;
      }

      return result;
    }

    v25 = v23[21] + v24;
    if (v25 <= v23[20])
    {
LABEL_10:
      v23[22] = v25;
      goto LABEL_11;
    }

LABEL_19:
    abort();
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDepthCopy(uint64_t a1)
{
  v2 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1, 1368, 0);
  if ([*a1 skipRender])
  {
    v47 = *(a1 + 1968) - *(a1 + 1984);
    *(v47 + 140) = 1;
    if ((*(v47 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  *(v2 + 17) = 0;
  *(v2 + 37) = xmmword_29D2F1730;
  v3 = (v2 + 48);
  *(v2 + 41) = 0;
  *(v2 + 45) = 0;
  *(v2 + 43) = 0;
  v4 = *(a1 + 10496);
  if (v4 && (v5 = *(v4 + 528)) != 0)
  {
    v6 = ((2 * v5 + 7) & 0xFFFFFFF8) + 16;
    v48.i32[0] = 0;
    v7 = AGX::SidebandBufferAllocator::allocate((a1 + 1880), v6, 1u, &v48);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 12) = v5;
    v8 = v48.i32[0];
    v2[34] = v6;
    v2[35] = v8;
    AGX::FenceList::copyFences(v4, (v7 + 16));
    *(a1 + 11464) |= 0x20000uLL;
  }

  else
  {
    v2[34] = 0;
  }

  bzero(v2 + 48, 0x490uLL);
  v2[338] = 1;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastRenderCommand(*(a1 + 2088), (v2 + 48), a1 + 24);
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupResolveCommand(a1 + 2120, v2 + 24, *(a1 + 1912), (a1 + 24), *(a1 + 2392));
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v48, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7192));
  v12.i32[0] = *(a1 + 2368);
  v12.i32[1] = *(a1 + 2376);
  v9 = vshl_n_s32(*v12.i8, 5uLL);
  *v12.i8 = vshl_u32(vadd_s32(v9, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v10 = vshl_u32(vadd_s32(v9, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v11 = vadd_s32(*v12.i8, vrev64_s32(v10));
  v12.i32[1] = v10.i32[1];
  v13 = *(v53 + 7092);
  v14 = *(a1 + 2420);
  v15.i64[0] = *(a1 + 2412);
  v15.i64[1] = v12.i64[0];
  v16 = vaddvq_s32(v15);
  v17.i64[0] = *(a1 + 2400);
  v18 = vadd_s32(*v17.i8, vmla_s32(vext_s8(vmul_s32(v11, 0x6000000060), v11, 4uLL), v11, 0x10000000ALL));
  v19 = v18.i32[1] - v57;
  v20 = vcgt_s32(v18, vdup_n_s32(v57));
  if ((v20.i8[4] & 1) == 0)
  {
    v19 = 0;
  }

  v21 = ((v56 + v16 + (v11.i32[0] + *(a1 + 2408)) * v55 + v14 + (v19 + v17.i32[1]) * v54 + 64) * v13 + 7) & 0xFFFFFFF8;
  v22 = v20.i8[0];
  v23 = v48;
  v12.i64[1] = *(a1 + 2412);
  v48 = vmaxq_s32(v48, v12);
  *v24.i8 = v49;
  v17.i32[0] = v14;
  v49 = vmax_s32(v49, __PAIR64__(v21, v14));
  v52 = 2;
  v25 = v18.i32[0] - v57;
  if ((v22 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = ((v16 + v25 * v54 + v56 + v14 + 64) * v13 + 7) & 0xFFFFFFF8;
  if (v50 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v50;
  }

  v24.i64[1] = __PAIR64__(v51, v50);
  v17.i32[1] = v21;
  v17.i64[1] = __PAIR64__(v18.u32[0], v26);
  if (v51 <= v18.i32[0])
  {
    v28 = v18.i32[0];
  }

  else
  {
    v28 = v51;
  }

  v50 = v27;
  v51 = v28;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v12, v23), vcgtq_s32(v17, v24)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v48, (v2 + 208), 0);
  }

  v29 = *(a1 + 2392);
  v30 = *(v29 + 3568);
  *&v31 = *(v29 + 3572);
  v32 = *(v29 + 4940);
  *(&v31 + 1) = *(v29 + 3584);
  v33 = *(v29 + 3592);
  v34 = *(v29 + 3608);
  v35 = *(v29 + 3624);
  v36 = *(v29 + 3640);
  *(v2 + 157) = 0;
  v2[316] = v30;
  *(v2 + 317) = v31;
  *(v2 + 321) = v33;
  *(v2 + 325) = v34;
  *(v2 + 329) = v35;
  *(v2 + 333) = v36;
  v2[335] = v32;
  *(v2 + 168) = 0;
  *(v2 + 168) = *(v29 + 4932);
  if (!*(a1 + 10560))
  {
    goto LABEL_26;
  }

  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

  IOGPUResourceListAddResource();
  v37 = *(a1 + 10560);
  if (v37 && (v38 = *(a1 + 10580), v39 = *(a1 + 10576), (v39 & v38) != 0xFFFFFFFF))
  {
    *(v3 + 904) = [v37 resourceID];
    *(v3 + 908) = v39;
    *(v3 + 912) = v38;
  }

  else
  {
LABEL_26:
    *(v3 + 904) = -1;
    *(v3 + 912) = -1;
  }

  *(a1 + 10576) = -1;
  *(v3 + 1020) = *(a1 + 1928);
  *(v3 + 1016) = *(a1 + 1924);
  *(v3 + 1024) = *(a1 + 1932);
  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignResolveRenderRegisters(*(a1 + 2392), v3);
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(*(a1 + 2392), *(a1 + 1896), *(a1 + 1904));
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v40, *(a1 + 1912), *(a1 + 2008), 63);
  *(v3 + 1008) = 0;
  if (!*(*(a1 + 1912) + 520))
  {
    v45 = *(a1 + 1968) - *(a1 + 1984);
    *(v45 + 140) = 1;
    if ((*(v45 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  return AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v41, v42, v43, v44);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineStateCommon(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 7688);
  if (v2 == a2)
  {
    return;
  }

  v5 = a1 + 2412;
  *(a1 + 7688) = a2;
  if (*(a1 + 5396) == 1)
  {
    *(a1 + 5400) = *(a1 + 5392) != *(a2 + 792);
  }

  v6 = (a1 + 7400);
  if (*(a2 + 796) == 1)
  {
    *(a1 + 5392) = *(a2 + 792);
    *(a1 + 5396) = 1;
  }

  v7 = *a2;
  if (v2)
  {
    v8 = *(v2 + 3696);
    if (v8 && (v9 = *(a2 + 3696)) != 0)
    {
      v10 = *a2;
      v11 = memcmp((v8 + 256), (v9 + 256), 0x80uLL);
      v7 = v10;
      v12 = v11 != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v6[249].i8[0] |= v12;
  v13 = MEMORY[0x29EDC56B0];
  if (*(a2 + 16))
  {
    v14 = *(a1 + 5296);
    if (!v14)
    {
      goto LABEL_78;
    }

    v15 = *(a2 + 32);
    if (!v15)
    {
      v14[4] = 0;
      v14[5] = 0;
      *(v14[1] + 10472) &= 0xFFFFFFF01C07FFCFLL;
      goto LABEL_78;
    }

    v16 = *(a2 + 24);
    v17 = v14[4];
    v18 = **MEMORY[0x29EDC56B0];
    if (v17 != v16)
    {
      v14[4] = v16;
      if (v16)
      {
        v19 = v14[1];
        v20 = v19[479].i64[0];
        *(v20 + 578) |= *(v16 + 1354);
        *(v20 + 584) |= *(a2 + 908) != 0;
        v21 = v19[654].i64[1] & 0xFFFFFFFFFC06FFFFLL | *(v16 + 2720);
        v22 = v21 | 0x14;
        v19[654].i64[1] = v21 | 0x14;
        v23 = *(v16 + 2400);
        v24 = *(v16 + 1360);
        v25 = *(v16 + 2424);
        v26 = *(v16 + 2408);
        v27 = *(v16 + 1368);
        v28 = *(v16 + 1384);
        if (v17)
        {
          v23 &= ~*(v17 + 2400);
          v24 &= ~*(v17 + 1360);
          v25 &= ~*(v17 + 2424);
          v26 = vbicq_s8(v26, *(v17 + 2408));
          v27 = vbicq_s8(v27, *(v17 + 1368));
          v28 &= ~*(v17 + 1384);
        }

        v29 = vorrq_s8(v27, v26);
        v30 = (v24 | v23) & 0xFFFFFFFF80000000;
        v31 = v19[640].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
        v19[639].i64[1] = v19[639].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v30;
        v32 = v28 | v25;
        v33.i64[0] = v31;
        v33.i64[1] = v19[640].i64[1];
        v19[640] = vorrq_s8(v33, v29);
        v19[641].i64[0] |= v32;
        v34 = v30 | v29.i64[0];
        v35 = (v30 | v29.i64[0]) != 0;
        v36 = (v29.i64[1] | v32) != 0;
        if (v34 || v36)
        {
          v37 = v21 | 0x20014;
          if (!v35)
          {
            v37 = v22;
          }

          if (v36)
          {
            v37 |= 0x40000uLL;
          }

          v19[654].i64[1] = v37;
        }

        if (*(a2 + 790) == 1)
        {
          v38 = *(a2 + 1968);
          if (v38)
          {
            v39 = v13;
            AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBuffer(v14, v38, 0, 0x3Bu);
            v13 = v39;
          }
        }

        if (v18)
        {
          v245 = v13;
          if ((*(v14[4] + 2400) & *(v14[4] + 2432) & ~*(v14[4] + 2096)) != 0 && **v13)
          {
            IOGPUDeviceTraceEvent();
          }

          v13 = v245;
          if (*(a2 + 2056) + *(a2 + 2020) && **v245)
          {
            IOGPUDeviceTraceEvent();
            v13 = v245;
          }
        }
      }
    }

    v40 = v14[5];
    v41 = **v13;
    if (v40 != v15)
    {
      v42 = v14[1];
      if ((*(v42 + 10480) & 4) != 0 && *(*(v42 + 7688) + 744) >= 2u)
      {
        v246 = v13;
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexAmplificationCount(v42, 1u, (v42 + 10584));
        v13 = v246;
        v42 = v14[1];
        *(v42 + 10480) &= ~4u;
        v40 = v14[5];
      }

      v14[5] = v15;
      *(*(v42 + 7664) + 578) |= *(v15 + 1354);
      v43 = *(v15 + 3880);
      v44 = *(v15 + 3888);
      v45 = *(v42 + 7416);
      *(v42 + 6024) = *(v42 + 6024) & 0xF0E3FF00 | v43 & 0xF1C00FF;
      *(v42 + 6032) = *(v42 + 6032) & 0xFFFFFFF8 | (v45 - 1) & 7;
      *(v42 + 6036) = HIDWORD(v43);
      *(v42 + 6028) = v44;
      *(v42 + 10472) |= 4uLL;
      v46 = v14[260];
      *(v46 + 664) = 4 * *(v15 + 4024);
      v47 = v14[1];
      v48 = v47[654].i64[1] & 0xFFFFFFF01BFFFFFFLL | *(v15 + 2720);
      v49 = v48 | 0x24;
      v47[654].i64[1] = v48 | 0x24;
      v50 = *(v15 + 2400);
      v51 = *(v15 + 1360);
      v52 = *(v15 + 2424);
      v53 = *(v15 + 2408);
      v54 = *(v15 + 1368);
      v55 = *(v15 + 1384);
      if (v40)
      {
        v50 &= ~*(v40 + 2400);
        v51 &= ~*(v40 + 1360);
        v52 &= ~*(v40 + 2424);
        v53 = vbicq_s8(v53, *(v40 + 2408));
        v54 = vbicq_s8(v54, *(v40 + 1368));
        v55 &= ~*(v40 + 1384);
      }

      v56 = vorrq_s8(v53, v54);
      v57 = (v50 | v51) & 0xFFFFFFFF80000000;
      v58 = v47[646].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
      v47[645].i64[1] = v47[645].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v57;
      v59 = v52 | v55;
      v60.i64[0] = v58;
      v60.i64[1] = v47[646].i64[1];
      v47[646] = vorrq_s8(v60, v56);
      v47[647].i64[0] |= v59;
      if (v57 | v56.i64[0] || v56.i64[1] | v59)
      {
        v61 = v48 | 0x8000024;
        if (!(v57 | v56.i64[0]))
        {
          v61 = v49;
        }

        if (v56.i64[1] | v59)
        {
          v62 = v61 | 0x10000000;
        }

        else
        {
          v62 = v61;
        }

        v47[654].i64[1] = v62;
      }

      if (*(a2 + 790) == 1)
      {
        v63 = *(a2 + 2280);
        if (v63)
        {
          v64 = *(v63 + 48);
          *(v46 + 264) = *(v63 + 56);
          v14[289] = v64;
          v65 = *(v63 + 80);
          v47[642].i64[1] |= v65 << 59;
          v47[645].i64[1] |= 0x800000000000000uLL;
          v312 = (v65 & 1) == 0;
          v66 = 0x4000000;
          if (!v312)
          {
            v66 = 201326592;
          }

          v47[654].i64[1] |= v66;
        }
      }

      if (v41)
      {
        v234 = v13;
        if ((*(v14[5] + 2400) & *(v14[5] + 2432) & ~*(v14[5] + 2096)) != 0 && **v13)
        {
          IOGPUDeviceTraceEvent();
        }

        v13 = v234;
        if (*(a2 + 2368) + *(a2 + 2332) && **v234)
        {
          IOGPUDeviceTraceEvent();
          v13 = v234;
        }
      }
    }

    v67 = *(a2 + 3576);
    if (v67)
    {
      v228 = v13;
      v229 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v14[1] + 7440), v67);
      v13 = v228;
      v68 = v229;
      v69 = *(a2 + 3592);
      if (!v69)
      {
LABEL_52:
        if (v68)
        {
LABEL_53:
          v70 = v14[1];
          v71 = v13;
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v70 + 7440, *(v70 + 7664) + 320, 1);
          v13 = v71;
        }

LABEL_78:
        *(a1 + 7672) = 0u;
        *(a1 + 6004) = *(a1 + 6004) & 0x199FFFFF | 0x200000;
        *(a1 + 6016) &= 0xFFFE0000;
        *(a1 + 6008) |= 0xC0000000C00000uLL;
        *(a1 + 6024) &= 0xFF1EFFFF;
        v101 = *(a1 + 7688);
        *(a1 + 3936) = *(v101 + 728);
        v102 = *(v101 + 1708);
        v103 = *(v101 + 1744);
        v104 = *(a1 + 3992);
        v105 = *(a1 + 4000);
        v106 = *(v104[3].i64[1] + 7092);
        v104[3].i32[1] = 5;
        v107 = v105[1];
        v108 = v105[2];
        v109 = *(v101 + 72);
        v110 = *v105;
        v111.i64[0] = *(v101 + 88);
        v112 = *(v105 + 3);
        v113 = v105[5];
        v114 = v104[4].i32[2];
        v115 = v104[6].i32[0];
        v116 = v104[5].i32[0];
        v117 = v107 + *(v101 + 76);
        v118 = __OFSUB__(v117, v115);
        v119 = v117 - v115;
        if ((v119 < 0) ^ v118 | (v119 == 0))
        {
          v119 = 0;
        }

        v120.i64[0] = v112;
        v120.i64[1] = *(v101 + 88);
        v121 = vaddvq_s32(v120);
        v122 = ((v116 + v113 + (v119 + v107) * v114 + v121 + (*(v101 + 84) + *(v101 + 80) + v108) * v104[4].i32[3] + 64) * v106 + 7) & 0xFFFFFFF8;
        v123 = *v104;
        v111.i64[1] = v112;
        *v104 = vmaxq_s32(*v104, v111);
        v124.i64[0] = v104[1].i64[0];
        v125.i32[0] = v113;
        *v104[1].i8 = vmax_s32(*v124.i8, __PAIR64__(v122, v113));
        *(a1 + 10472) = *(a1 + 10472) & 0xFFFFE07FFFFF01F8 | 0x100000000004;
        v126 = *(a1 + 7664);
        *(a1 + 3952) = *(v101 + 16);
        *(a1 + 3928) = v101 + 96;
        *(a1 + 3960) = *(v101 + 1656);
        *(a1 + 3968) = *(v101 + 1672);
        *(a1 + 3976) = v101;
        v127 = v110 + v109;
        v128 = v127 - v115;
        if (v127 <= v115)
        {
          v128 = 0;
        }

        v129 = ((v121 + v128 * v114 + v116 + v113 + 64) * v106 + 7) & 0xFFFFFFF8;
        v130 = v104[1].i32[2];
        if (v130 <= v129)
        {
          v131 = v129;
        }

        else
        {
          v131 = v104[1].i32[2];
        }

        v132 = v104[2].i32[0];
        v124.i64[1] = __PAIR64__(v132, v130);
        v125.i32[1] = v122;
        v125.i64[1] = __PAIR64__(v127, v129);
        v104[1].i32[2] = v131;
        if (v132 <= v127)
        {
          v133 = v127;
        }

        else
        {
          v133 = v132;
        }

        v104[2].i32[0] = v133;
        if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v111, v123), vcgtq_s32(v125, v124)))))
        {
          v224 = v13;
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 3992), v126 + 1360, 0);
          v13 = v224;
        }

        v134 = *(*(a1 + 3976) + 3560);
        if (v134)
        {
          v225 = v13;
          v226 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(*(a1 + 3992), v134);
          v13 = v225;
          if (v226)
          {
            AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 3992), v126 + 1360, 0);
            v13 = v225;
          }
        }

        v135 = *(a1 + 3944);
        v136 = *(v101 + 1704);
        if (*(v135 + 232) > v136)
        {
          v136 = *(v135 + 232);
        }

        *(v135 + 232) = v136;
        if (**v13)
        {
          v227 = v103 + v102;
          if ((*(*(a1 + 3952) + 2400) & *(*(a1 + 3952) + 2432) & ~*(*(a1 + 3952) + 2096)) != 0 && **v13)
          {
            v371 = v13;
            IOGPUDeviceTraceEvent();
            v13 = v371;
          }

          if (v227 && **v13)
          {
            IOGPUDeviceTraceEvent();
          }
        }

        v137 = *(a1 + 7688);
        v6[196].i8[8] |= *(*(v137 + 16) + 1354);
        *(*(a1 + 7664) + 2060) |= *(v137 + 1881);
        goto LABEL_277;
      }
    }

    else
    {
      v68 = 0;
      v69 = *(a2 + 3592);
      if (!v69)
      {
        goto LABEL_52;
      }
    }

    v230 = v13;
    v231 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v14[1] + 7440), v69);
    v13 = v230;
    if (((v68 | v231) & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_53;
  }

  v72 = *(a2 + 32);
  if (v72)
  {
    *(a1 + 7672) = 0;
    *(a1 + 10472) &= 0xFFFFFFFFFFFF01FELL;
    v73 = *(a1 + 5296);
    if (v73)
    {
      v74 = a2;
    }

    else
    {
      v388 = v12;
      v232 = v7;
      v233 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(a1 + 5328));
      v73 = v233;
      *(a1 + 5296) = v233;
      v74 = *(a1 + 7688);
      v72 = *(v74 + 32);
      if (!v72)
      {
        v96 = 0;
        v233[4] = 0;
        v233[5] = 0;
        *(v233[1] + 10472) &= 0xFFFFFFF01C07FFCFLL;
        v13 = MEMORY[0x29EDC56B0];
        v7 = v232;
        v12 = v388;
        goto LABEL_120;
      }

      v13 = MEMORY[0x29EDC56B0];
      v7 = v232;
      v12 = v388;
    }

    v75 = *(v74 + 24);
    v76 = v73[4];
    v77 = **v13;
    if (v76 == v75 || (v73[4] = v75) == 0)
    {
      v96 = 0;
    }

    else
    {
      v78 = v73[1];
      v79 = v78[479].i64[0];
      *(v79 + 578) |= *(v75 + 1354);
      *(v79 + 584) |= *(v74 + 908) != 0;
      v80 = v78[654].i64[1] & 0xFFFFFFFFFC06FFFFLL | *(v75 + 2720);
      v81 = v80 | 0x14;
      v78[654].i64[1] = v80 | 0x14;
      v82 = *(v75 + 2400);
      v83 = *(v75 + 1360);
      v84 = *(v75 + 2424);
      v85 = *(v75 + 2408);
      v86 = *(v75 + 1368);
      v87 = *(v75 + 1384);
      if (v76)
      {
        v82 &= ~*(v76 + 2400);
        v83 &= ~*(v76 + 1360);
        v84 &= ~*(v76 + 2424);
        v85 = vbicq_s8(v85, *(v76 + 2408));
        v86 = vbicq_s8(v86, *(v76 + 1368));
        v87 &= ~*(v76 + 1384);
      }

      v88 = vorrq_s8(v85, v86);
      v89 = (v82 | v83) & 0xFFFFFFFF80000000;
      v90 = v78[640].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
      v78[639].i64[1] = v78[639].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v89;
      v91 = v84 | v87;
      v92.i64[0] = v90;
      v92.i64[1] = v78[640].i64[1];
      v78[640] = vorrq_s8(v92, v88);
      v78[641].i64[0] |= v91;
      v93 = v89 | v88.i64[0];
      v94 = (v88.i64[1] | v91) != 0;
      if (v93 || v94)
      {
        v95 = v80 | 0x20014;
        if (!v93)
        {
          v95 = v81;
        }

        if (v94)
        {
          v95 |= 0x40000uLL;
        }

        v78[654].i64[1] = v95;
      }

      v96 = *(v74 + 732);
      if (*(v74 + 790) == 1)
      {
        v97 = *(v74 + 1968);
        if (v97)
        {
          v386 = v12;
          v397 = v77;
          v380 = v6;
          v98 = v7;
          v99 = v13;
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBuffer(v73, v97, 0, 0x3Bu);
          v12 = v386;
          v77 = v397;
          v7 = v98;
          v6 = v380;
          v13 = v99;
        }
      }

      if (v77)
      {
        v387 = v12;
        v398 = v7;
        v100 = v13;
        if ((*(v73[4] + 2400) & *(v73[4] + 2432) & ~*(v73[4] + 2096)) != 0 && **v13)
        {
          IOGPUDeviceTraceEvent();
        }

        if (*(v74 + 2056) + *(v74 + 2020) && **v100)
        {
          IOGPUDeviceTraceEvent();
        }

        v13 = v100;
        v7 = v398;
        v12 = v387;
      }
    }

    v138 = v73[5];
    v139 = **v13;
    if (v138 == v72)
    {
      goto LABEL_116;
    }

    v140 = v73[1];
    if ((*(v140 + 10480) & 4) != 0 && *(*(v140 + 7688) + 744) >= 2u)
    {
      v390 = v12;
      v400 = **v13;
      v382 = v6;
      v247 = v7;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexAmplificationCount(v140, 1u, (v140 + 10584));
      v12 = v390;
      v139 = v400;
      v7 = v247;
      v6 = v382;
      v13 = MEMORY[0x29EDC56B0];
      v140 = v73[1];
      *(v140 + 10480) &= ~4u;
      v138 = v73[5];
    }

    v73[5] = v72;
    *(*(v140 + 7664) + 578) |= *(v72 + 1354);
    v141 = *(v72 + 3880);
    v142 = *(v72 + 3888);
    v143 = *(v140 + 7416);
    *(v140 + 6024) = *(v140 + 6024) & 0xF0E3FF00 | v141 & 0xF1C00FF;
    *(v140 + 6032) = *(v140 + 6032) & 0xFFFFFFF8 | (v143 - 1) & 7;
    *(v140 + 6036) = HIDWORD(v141);
    *(v140 + 6028) = v142;
    *(v140 + 10472) |= 4uLL;
    v144 = v73[260];
    *(v144 + 664) = 4 * *(v72 + 4024);
    v145 = v73[1];
    v146 = v145[654].i64[1] & 0xFFFFFFF01BFFFFFFLL | *(v72 + 2720);
    v147 = v146 | 0x24;
    v145[654].i64[1] = v146 | 0x24;
    v148 = *(v72 + 2400);
    v149 = *(v72 + 1360);
    v150 = *(v72 + 2424);
    v151 = *(v72 + 2408);
    v152 = *(v72 + 1368);
    v153 = *(v72 + 1384);
    if (v138)
    {
      v148 &= ~*(v138 + 2400);
      v149 &= ~*(v138 + 1360);
      v150 &= ~*(v138 + 2424);
      v151 = vbicq_s8(v151, *(v138 + 2408));
      v152 = vbicq_s8(v152, *(v138 + 1368));
      v153 &= ~*(v138 + 1384);
    }

    v154 = vorrq_s8(v151, v152);
    v155 = (v148 | v149) & 0xFFFFFFFF80000000;
    v156 = v145[646].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
    v145[645].i64[1] = v145[645].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v155;
    v157 = v150 | v153;
    v158.i64[0] = v156;
    v158.i64[1] = v145[646].i64[1];
    v145[646] = vorrq_s8(v158, v154);
    v145[647].i64[0] |= v157;
    if (v155 | v154.i64[0] || v154.i64[1] | v157)
    {
      v159 = v146 | 0x8000024;
      if (!(v155 | v154.i64[0]))
      {
        v159 = v147;
      }

      if (v154.i64[1] | v157)
      {
        v159 |= 0x10000000uLL;
      }

      v145[654].i64[1] = v159;
    }

    v96 |= *(v74 + 736);
    if (*(v74 + 790) == 1)
    {
      v160 = *(v74 + 2280);
      if (v160)
      {
        v161 = *(v160 + 48);
        *(v144 + 264) = *(v160 + 56);
        v73[289] = v161;
        v162 = *(v160 + 80);
        v145[642].i64[1] |= v162 << 59;
        v145[645].i64[1] |= 0x800000000000000uLL;
        v312 = (v162 & 1) == 0;
        v163 = 0x4000000;
        if (!v312)
        {
          v163 = 201326592;
        }

        v145[654].i64[1] |= v163;
      }
    }

    if (v139)
    {
      v389 = v12;
      v235 = v7;
      v236 = v13;
      if ((*(v73[5] + 2400) & *(v73[5] + 2432) & ~*(v73[5] + 2096)) != 0 && **v13)
      {
        IOGPUDeviceTraceEvent();
      }

      if (*(v74 + 2368) + *(v74 + 2332) && **v236)
      {
        IOGPUDeviceTraceEvent();
      }

      v13 = v236;
      v7 = v235;
      v12 = v389;
      v164 = *(v74 + 3576);
      if (!v164)
      {
LABEL_117:
        v165 = 0;
        v166 = *(v74 + 3592);
        if (!v166)
        {
          goto LABEL_118;
        }

        goto LABEL_192;
      }
    }

    else
    {
LABEL_116:
      v164 = *(v74 + 3576);
      if (!v164)
      {
        goto LABEL_117;
      }
    }

    v237 = v13;
    v381 = v6;
    v238 = v7;
    v239 = v12;
    v165 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v73[1] + 7440), v164);
    v12 = v239;
    v7 = v238;
    v6 = v381;
    v13 = v237;
    v166 = *(v74 + 3592);
    if (!v166)
    {
LABEL_118:
      if ((v165 & 1) == 0)
      {
LABEL_120:
        v171 = *(a1 + 7688);
        if (*(v171 + 2193))
        {
          v172 = 1;
LABEL_213:
          *(*(a1 + 7664) + 587) |= v172;
          goto LABEL_214;
        }

        v223 = (v171 + 2505);
LABEL_212:
        v172 = *v223;
        goto LABEL_213;
      }

LABEL_119:
      v167 = v73[1];
      v168 = v12;
      v169 = v13;
      v170 = v7;
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v167 + 7440, *(v167 + 7664) + 320, 1);
      v12 = v168;
      v7 = v170;
      v13 = v169;
      goto LABEL_120;
    }

LABEL_192:
    v399 = v165;
    v240 = v13;
    v241 = v6;
    v242 = v7;
    v243 = v12;
    v244 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v73[1] + 7440), v166);
    v12 = v243;
    v7 = v242;
    v6 = v241;
    v13 = v240;
    if (((v399 | v244) & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v173 = *(a1 + 5296);
  if (v173)
  {
    v173[4] = 0;
    v173[5] = 0;
    *(v173[1] + 10472) &= 0xFFFFFFF01C07FFCFLL;
  }

  v174 = *(a2 + 8);
  if (v174 && *(v174 + 4264))
  {
    v175 = v12;
    v176 = v7;
    v177 = v13;
    *(a1 + 10168) |= 0x20uLL;
    *(a1 + 10472) |= 0x40uLL;
    v178 = *(a1 + 5088);
    if (!v178)
    {
      v178 = std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::operator()(*(a1 + 5120));
      *(a1 + 5088) = v178;
    }

    (*(*v178 + 48))(v178, *(a1 + 7688));
    v13 = v177;
    v7 = v176;
    v12 = v175;
  }

  v179 = *(a1 + 7672);
  v180 = **v13;
  if (v179 != v174)
  {
    if ((*(a1 + 10480) & 4) != 0 && *(*(a1 + 7688) + 744) >= 2u)
    {
      v253 = v12;
      v254 = v13;
      v255 = v6;
      v256 = v7;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexAmplificationCount(a1, 1u, (a1 + 10584));
      v12 = v253;
      v7 = v256;
      v6 = v255;
      v13 = v254;
      *(a1 + 10480) &= ~4u;
      v179 = *(a1 + 7672);
      *(a1 + 7672) = v174;
      if (v174)
      {
LABEL_133:
        v181 = *(a1 + 7664);
        *(v181 + 575) |= *(v174 + 1349);
        *(v181 + 578) |= *(v174 + 1354);
        v182 = *(v174 + 4112);
        LOBYTE(v181) = *(a1 + 7416);
        *(a1 + 6024) = *(a1 + 6024) & 0xF0E3FF00 | v182 & 0xF1C00FF;
        *(a1 + 6032) = *(a1 + 6032) & 0xFFFFFFF8 | (v181 - 1) & 7;
        *(a1 + 6036) = HIDWORD(v182);
        *(a1 + 6028) = 0;
        v183 = *(a1 + 10472) & 0xFFFFFFFFFFFF01BBLL | *(v174 + 2720);
        v184 = v183 | 5;
        *(a1 + 10472) = v183 | 5;
        v185 = *(v174 + 2400);
        v186 = *(v174 + 1360);
        v187 = *(v174 + 2424);
        v188 = *(v174 + 2408);
        v189 = *(v174 + 1368);
        v190 = *(v174 + 1384);
        if (v179)
        {
          v185 &= ~*(v179 + 2400);
          v186 &= ~*(v179 + 1360);
          v187 &= ~*(v179 + 2424);
          v188 = vbicq_s8(v188, *(v179 + 2408));
          v189 = vbicq_s8(v189, *(v179 + 1368));
          v190 &= ~*(v179 + 1384);
        }

        v191 = vorrq_s8(v188, v189);
        v192 = (v185 | v186) & 0xFFFFFFFF80000000;
        v193 = *(a1 + 10144) & 0xFFFFFFFFFFFFFFFDLL;
        *(a1 + 10136) = *(a1 + 10136) & 0xE7FFFFFFFFFFFFFFLL | v192;
        v194 = v187 | v190;
        v195.i64[0] = v193;
        v195.i64[1] = *(a1 + 10152);
        *(a1 + 10144) = vorrq_s8(v195, v191);
        *(a1 + 10160) |= v194;
        if (v192 | v191.i64[0] || v191.i64[1] | v194)
        {
          v196 = v183 | 0x85;
          if (!(v192 | v191.i64[0]))
          {
            v196 = v184;
          }

          if (v191.i64[1] | v194)
          {
            v196 |= 0x100uLL;
          }

          *(a1 + 10472) = v196;
        }

        v197 = *(a1 + 7688);
        v96 = *(v197 + 724);
        v198 = *(v197 + 1084);
        v199 = *(v197 + 1120);
        *(a1 + 7492) = 1;
        v200 = *(a1 + 7440);
        v201.i64[0] = *(a1 + 7456);
        v202 = *(a1 + 7464);
        v203 = *(a1 + 7472);
        v204 = *(v197 + 40);
        v205 = v200.i32[0];
        if (v200.i32[0] <= v204)
        {
          v205 = *(v197 + 40);
        }

        *(a1 + 7440) = v205;
        v206 = *(v197 + 44);
        v207 = v200.i32[1];
        if (v200.i32[1] <= v206)
        {
          v207 = *(v197 + 44);
        }

        *(a1 + 7444) = v207;
        v208 = *(v197 + 48);
        v209 = v200.i32[2];
        if (v200.i32[2] <= v208)
        {
          v209 = *(v197 + 48);
        }

        *(a1 + 7448) = v209;
        v210 = *(v197 + 52);
        v211 = v200.i32[3];
        if (v200.i32[3] <= v210)
        {
          v211 = *(v197 + 52);
        }

        *(a1 + 7452) = v211;
        v212 = *(v197 + 56);
        v213 = v201.i32[0];
        if (v201.i32[0] <= v212)
        {
          v213 = *(v197 + 56);
        }

        *(a1 + 7456) = v213;
        v214 = *(v197 + 60);
        v215 = v201.i32[1];
        if (v201.i32[1] <= v214)
        {
          v215 = *(v197 + 60);
        }

        *(a1 + 7460) = v215;
        v216 = *(v197 + 64);
        v201.i64[1] = __PAIR64__(v203, v202);
        if (v202 <= v216)
        {
          v202 = *(v197 + 64);
        }

        v217.i64[0] = __PAIR64__(v206, v204);
        v217.i64[1] = __PAIR64__(v210, v208);
        *(a1 + 7464) = v202;
        v218.i64[0] = __PAIR64__(v214, v212);
        v219 = *(v197 + 68);
        v218.i64[1] = __PAIR64__(v219, v216);
        v220 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgtq_s32(v217, v200), vcgtq_s32(v218, v201)), xmmword_29D2F24C0));
        if (v203 <= v219)
        {
          v203 = *(v197 + 68);
        }

        *(a1 + 7472) = v203;
        v221 = *(v197 + 3528);
        if (v221)
        {
          v383 = v6;
          v401 = v7;
          v248 = v12;
          v391 = v198;
          v222 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 7440), v221);
          v198 = v391;
          v12 = v248;
          v7 = v401;
          v6 = v383;
          v13 = MEMORY[0x29EDC56B0];
          if (v220)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v222 = 0;
          if (v220)
          {
            goto LABEL_202;
          }
        }

        if (!v222)
        {
          if (!v180)
          {
            goto LABEL_162;
          }

          goto LABEL_203;
        }

LABEL_202:
        v392 = v12;
        v384 = v6;
        v249 = v7;
        v250 = v198;
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 7440, *(a1 + 7664) + 320, 1);
        v198 = v250;
        v12 = v392;
        v7 = v249;
        v6 = v384;
        v13 = MEMORY[0x29EDC56B0];
        *(a1 + 11456) |= 0x4000000000000uLL;
        if (!v180)
        {
LABEL_162:
          {
            v374 = v13;
            v375 = v7;
            v395 = v12;
            v12 = v395;
            v7 = v375;
            v13 = v374;
            if (v376)
            {
              AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::brk_handler_end_of_shader_alloc = 0;
              v12 = v395;
              v7 = v375;
              v13 = v374;
            }
          }

          if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::brk_handler_end_of_shader_alloc == 1)
          {
            {
              v377 = v13;
              v378 = v7;
              v396 = v12;
              v12 = v396;
              v7 = v378;
              v13 = v377;
              if (v379)
              {
                AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space = 0;
                v12 = v396;
                v7 = v378;
                v13 = v377;
              }
            }

            if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space)
            {
              *(*(a1 + 7664) + 160) = (*(v174 + 1528) - AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVertexShaderVariant(AGX::HAL300::VertexProgramVariant const*,unsigned int &)::per_shader_brk_space + *(v174 + 1824) + 4095) & 0xFFFFFFFFFFFFF000;
            }
          }

          goto LABEL_211;
        }

LABEL_203:
        v393 = v12;
        v402 = v7;
        v251 = v13;
        v252 = v199 + v198;
        if ((*(*(a1 + 7672) + 2400) & *(*(a1 + 7672) + 2432) & ~*(*(a1 + 7672) + 2096)) != 0 && **v13)
        {
          IOGPUDeviceTraceEvent();
        }

        v13 = v251;
        v7 = v402;
        v12 = v393;
        if (v252 && **v251)
        {
          IOGPUDeviceTraceEvent();
          v12 = v393;
          v7 = v402;
          v13 = v251;
        }

        goto LABEL_162;
      }
    }

    else
    {
      *(a1 + 7672) = v174;
      if (v174)
      {
        goto LABEL_133;
      }
    }

    v96 = 0;
LABEL_211:
    v223 = (*(a1 + 7688) + 1257);
    goto LABEL_212;
  }

  v96 = 0;
LABEL_214:
  v257 = *(a1 + 7680);
  v258 = v257 != v7 || v12;
  v6[249].i8[0] |= v258;
  v259 = **v13;
  if (v258 == 1)
  {
    *(a1 + 7680) = v7;
    if (v7)
    {
      v260 = (v7 + 1368);
      v261 = *(a1 + 7664);
      *(v261 + 1608) |= v7[1349];
      v6[196].i8[8] |= v7[1354];
      *(v261 + 1616) |= v7[3924];
      v403 = v7;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVirtualMapping(a1, 0, 1);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderISPState(a1, v403);
      v262 = v403;
      *(a1 + 6024) = *(a1 + 6024) & 0xFF1EFFFF | *(v403 + 3848) & 0xE10000;
      v263 = *(a1 + 10472) & 0xFFFFF06FFFFFFFFBLL | *(v403 + 2720);
      v264 = v263 | 0x100000000006;
      *(a1 + 10472) = v263 | 0x100000000006;
      v265 = *(v403 + 2400);
      v266 = *(v403 + 1360);
      v267 = *(v403 + 2424);
      v268 = v260[65];
      v269 = *v260;
      v270 = *(v403 + 1384);
      if (v257)
      {
        v265 &= ~*(v257 + 2400);
        v266 &= ~*(v257 + 1360);
        v267 &= ~*(v257 + 2424);
        v268 = vbicq_s8(v268, *(v257 + 2408));
        v269 = vbicq_s8(v269, *(v257 + 1368));
        v270 &= ~*(v257 + 1384);
      }

      v271 = vorrq_s8(v268, v269);
      v272 = (v265 | v266) & 0xFFFFFFFF80000000;
      v273 = *(a1 + 10432) & 0xFFFFFFFFFFFFFFFDLL;
      *(a1 + 10424) = *(a1 + 10424) & 0xE7FFFFFFFFFFFFFFLL | v272;
      v274 = v267 | v270;
      v275.i64[0] = v273;
      v275.i64[1] = *(a1 + 10440);
      *(a1 + 10432) = vorrq_s8(v275, v271);
      *(a1 + 10448) |= v274;
      v276 = v272 | v271.i64[0];
      v277 = (v271.i64[1] | v274) != 0;
      if (v276 || v277)
      {
        v278 = v263 | 0x102000000006;
        if (!v276)
        {
          v278 = v264;
        }

        if (v277)
        {
          v278 |= 0x4000000000uLL;
        }

        *(a1 + 10472) = v278;
      }

      v279 = 0;
      v280 = *(a1 + 7688);
      v281 = *(v280 + 728);
      v282 = *(v280 + 1396);
      v283 = *(v280 + 1432);
      v284 = v6[9];
      v285 = *(a1 + 7620);
      v286 = *(*(a1 + 7600) + 7092);
      *(a1 + 7596) = 2;
      v287 = *(v280 + 80);
      v288 = *(v280 + 84);
      v289 = *(a1 + 2404);
      v291 = *(v280 + 72);
      v290 = *(v280 + 76);
      v292.i64[0] = *(v280 + 88);
      v293 = *(a1 + 2420);
      v294 = *(a1 + 7616);
      v295 = *(a1 + 7640);
      v296 = *(a1 + 7624);
      v297 = v289 + v290;
      v118 = __OFSUB__(v297, v295);
      v298 = v297 - v295;
      if ((v298 < 0) ^ v118 | (v298 == 0))
      {
        v298 = 0;
      }

      v299 = v288 + v287 + *(a1 + 2408);
      v303.i64[0] = *v5;
      v303.i64[1] = v292.i64[0];
      v300 = vaddvq_s32(v303);
      v301 = ((v296 + v293 + (v298 + v289) * v294 + v300 + v299 * v285 + 64) * v286 + 7) & 0xFFFFFFF8;
      v292.i64[1] = *v5;
      v6[9] = vmaxq_s32(v284, v292);
      v302.i64[0] = *(a1 + 7560);
      v303.i32[0] = v293;
      *(a1 + 7560) = vmax_s32(*v302.i8, __PAIR64__(v301, v293));
      v304 = *(a1 + 2400) + v291;
      v118 = __OFSUB__(v304, v295);
      v305 = v304 - v295;
      if ((v305 < 0) ^ v118 | (v305 == 0))
      {
        v305 = 0;
      }

      v306 = ((v300 + v305 * v294 + v296 + v293 + 64) * v286 + 7) & 0xFFFFFFF8;
      v307 = *(a1 + 7568);
      if (v307 <= v306)
      {
        v308 = v306;
      }

      else
      {
        v308 = *(a1 + 7568);
      }

      *(a1 + 7568) = v308;
      v302.i32[2] = v307;
      v302.i32[3] = *(a1 + 7576);
      v303.i32[1] = v301;
      v303.i64[1] = __PAIR64__(v304, v306);
      v309 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgtq_s32(v292, v284), vcgtq_s32(v303, v302)), xmmword_29D2F24C0));
      if (v302.i32[3] <= v304)
      {
        v310 = v304;
      }

      else
      {
        v310 = *(a1 + 7576);
      }

      *(a1 + 7576) = v310;
      v311 = *(*(a1 + 7688) + 3544);
      if (v311)
      {
        v394 = v282;
        v385 = v283;
        v279 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(v6 + 9, v311);
        v283 = v385;
        v282 = v394;
        v262 = v403;
      }

      if (v309)
      {
        v312 = 0;
      }

      else
      {
        v312 = v279 == 0;
      }

      if (!v312)
      {
        v369 = v282;
        v370 = v283;
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v6[9].i64, *(a1 + 7664) + 1360, 0);
        v283 = v370;
        v282 = v369;
        v262 = v403;
        *(a1 + 11456) |= 0x8000000000000uLL;
      }

      *(v5 + 2957) |= *(v262 + 1360) != 0 || *(v262 + 1376) != 0;
      if (v259)
      {
        v364 = v283 + v282;
        v365 = *(a1 + 7680);
        v366 = v365[300] & v365[304] & ~v365[262];
        v367 = v365[301] & v365[305] & ~v365[263];
        v368 = *MEMORY[0x29EDC56B0];
        if (v366 | v367 && *v368)
        {
          IOGPUDeviceTraceEvent();
          v368 = *MEMORY[0x29EDC56B0];
        }

        if (v364 && *v368)
        {
          IOGPUDeviceTraceEvent();
          v368 = *MEMORY[0x29EDC56B0];
        }

        v262 = v403;
        if (*v368)
        {
          IOGPUDeviceTraceEvent();
          v262 = v403;
        }
      }

      {
        v262 = v403;
        if (v372)
        {
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::brk_handler_end_of_shader_alloc = 0;
          v262 = v403;
        }
      }

      v96 |= v281;
      if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::brk_handler_end_of_shader_alloc)
      {
        {
          v262 = v403;
          if (v373)
          {
            AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space = 0;
            v262 = v403;
          }
        }

        v313 = *(a1 + 7664);
        if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space)
        {
          *(v313 + 1200) = (*(v262 + 1528) - AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateFragmentShaderVariant(AGX::HAL300::FragmentProgramVariant const*,unsigned int &,BOOL)::per_shader_brk_space + *(v262 + 1824) + 4095) & 0xFFFFFFFFFFFFF000;
        }
      }

      else
      {
        v313 = *(a1 + 7664);
      }

      *(v313 + 1208) = *(a1 + 5192);
      *(v313 + 1216) = *(a1 + 5200);
    }

    else
    {
      v318 = *(a1 + 10472) & 0xFFFFE07FFFFFFFF9;
      *(a1 + 6004) = *(a1 + 6004) & 0x199FFFFF | 0x200000;
      *(a1 + 6016) &= 0xFFFE0000;
      *(a1 + 6008) |= 0xC0000000C00000uLL;
      *(a1 + 6024) &= 0xFF1EFFFF;
      *(a1 + 10472) = v318 | 0x100000000004;
      v313 = *(a1 + 7664);
    }

    v314 = *(a1 + 7688);
    *(v313 + 2060) |= *(v314 + 1569);
  }

  else
  {
    v314 = *(a1 + 7688);
    if (*(v5 + 2988) == 1)
    {
      v315 = *(a1 + 6008) & 0xF7200000;
      v316 = *(a1 + 6012) & 0xF7200000;
      v317 = *(v314 + 816);
      *(a1 + 6000) = *(v314 + 800);
      *(a1 + 6016) = v317;
      *(a1 + 6008) = *(a1 + 6008) & 0x8DFFFFF | v315;
      *(a1 + 6012) = *(a1 + 6012) & 0x8DFFFFF | v316;
      *(a1 + 10472) |= 0x100000000000uLL;
    }
  }

  if (v96)
  {
    do
    {
      v96 &= ~(1 << __clz(__rbit32(v96)));
      IOGPUResourceListAddResource();
    }

    while (v96);
    v314 = *(a1 + 7688);
  }

  if (*(v314 + 3704))
  {
    IOGPUResourceListAddResource();
    v314 = *(a1 + 7688);
  }

  v319 = *(v314 + 748);
  v320 = *(v314 + 752);
  v321 = *(a1 + 9752);
  if (*(v321 + 892) != v319 || *(v321 + 896) != v320)
  {
    *(v321 + 892) = v319;
    *(v321 + 896) = v320;
    if (v319 != 1.0 || v320 != -1)
    {
      *(a1 + 10472) |= 0x1000000000uLL;
      *(a1 + 10456) |= 2uLL;
    }
  }

  v323 = *(v314 + 760);
  if (!v2 || v6->u8[0] != v323 || *(v2 + 820) != *(v314 + 820) || *(v2 + 824) != *(v314 + 824) || *(v2 + 828) != *(v314 + 828))
  {
    v6->i8[0] = v323;
    *(a1 + 10472) |= 0x2000000000000uLL;
  }

LABEL_277:
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(a2);
  v324 = *(a1 + 7688);
  if (*(v324 + 790) == 1)
  {
    v325 = *(v324 + 1032);
    if (v325)
    {
      v326 = *(v325 + 48);
      *(*(a1 + 8480) + 264) = *(v325 + 56);
      *(a1 + 8712) = v326;
      v327 = *(v325 + 80);
      *(a1 + 10136) |= v327 << 59;
      *(a1 + 10088) |= 0x800000000000000uLL;
      v312 = (v327 & 1) == 0;
      v328 = 64;
      if (!v312)
      {
        v328 = 192;
      }

      *(a1 + 10472) |= v328;
    }

    v329 = *(v324 + 1344);
    if (v329)
    {
      v330 = *(v329 + 48);
      *(*(a1 + 9752) + 272) = *(v329 + 56);
      *(a1 + 9984) = v330;
      v331 = *(v329 + 80);
      *(a1 + 10376) |= v331 << 59;
      *(a1 + 10424) |= 0x800000000000000uLL;
      v312 = (v331 & 1) == 0;
      v332 = 0x1000000000;
      if (!v312)
      {
        v332 = 0x3000000000;
      }

      *(a1 + 10472) |= v332;
    }

    v333 = *(v324 + 1048);
    if (v333)
    {
      v334 = *(v333 + 48);
      *(*(a1 + 8480) + 272) = *(v333 + 56);
      *(a1 + 8720) = v334;
      v335 = *(v333 + 80);
      *(a1 + 10136) |= v335 << 60;
      *(a1 + 10088) |= 0x1000000000000000uLL;
      v312 = (v335 & 1) == 0;
      v336 = 64;
      if (!v312)
      {
        v336 = 192;
      }

      *(a1 + 10472) |= v336;
    }

    v337 = *(v324 + 1360);
    if (v337)
    {
      v338 = *(v337 + 48);
      *(*(a1 + 9752) + 280) = *(v337 + 56);
      *(a1 + 9992) = v338;
      v339 = *(v337 + 80);
      *(a1 + 10376) |= v339 << 60;
      *(a1 + 10424) |= 0x1000000000000000uLL;
      v312 = (v339 & 1) == 0;
      v340 = 0x1000000000;
      if (!v312)
      {
        v340 = 0x3000000000;
      }

      *(a1 + 10472) |= v340;
    }
  }

  v341 = *(v324 + 3656);
  if (v341)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 11088), (v324 + 3168));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 11208), (*(a1 + 7688) + 3288));
    v342 = *(a1 + 7688);
    if (v341)
    {
      v343 = v342[451];
      v344 = *(v343 + 48);
      *(*(a1 + 8480) + 312) = *(v343 + 56);
      *(a1 + 8760) = v344;
      v345 = *(v343 + 80);
      *(a1 + 10144) |= 2 * v345;
      *(a1 + 10096) |= 2uLL;
      v312 = v345 == 0;
      v346 = 64;
      if (!v312)
      {
        v346 = 192;
      }

      *(a1 + 10472) |= v346;
      if ((v341 & 2) == 0)
      {
LABEL_297:
        if ((v341 & 4) == 0)
        {
          goto LABEL_298;
        }

        goto LABEL_306;
      }
    }

    else if ((v341 & 2) == 0)
    {
      goto LABEL_297;
    }

    v347 = v342[452];
    v348 = *(v347 + 48);
    *(*(a1 + 9752) + 320) = *(v347 + 56);
    *(a1 + 10032) = v348;
    v349 = *(v347 + 80);
    *(a1 + 10384) |= 2 * v349;
    *(a1 + 10432) |= 2uLL;
    v312 = v349 == 0;
    v350 = 0x1000000000;
    if (!v312)
    {
      v350 = 0x3000000000;
    }

    *(a1 + 10472) |= v350;
    if ((v341 & 4) == 0)
    {
LABEL_298:
      if (!v342[4])
      {
        return;
      }

LABEL_307:
      if ((v341 & 8) != 0)
      {
        v352 = *(a1 + 5296);
        if (!v352)
        {
          v352 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(a1 + 5328));
          *(a1 + 5296) = v352;
          v342 = *(a1 + 7688);
        }

        v353 = v342[454];
        v354 = *(v353 + 48);
        *(v352[131] + 312) = *(v353 + 56);
        v355 = v352[1];
        v352[166] = v354;
        v356 = *(v353 + 80);
        v355[1274] |= 2 * v356;
        v355[1280] |= 2uLL;
        v312 = v356 == 0;
        v357 = 0x10000;
        if (!v312)
        {
          v357 = 196608;
        }

        v355[1309] |= v357;
      }

      if ((v341 & 0x10) != 0)
      {
        v358 = *(a1 + 5296);
        if (!v358)
        {
          v358 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(a1 + 5328));
          *(a1 + 5296) = v358;
          v342 = *(a1 + 7688);
        }

        v359 = v342[455];
        v360 = *(v359 + 48);
        *(v358[260] + 312) = *(v359 + 56);
        v361 = v358[1];
        v358[295] = v360;
        v362 = *(v359 + 80);
        v361[1286] |= 2 * v362;
        v361[1292] |= 2uLL;
        v312 = v362 == 0;
        v363 = 0x4000000;
        if (!v312)
        {
          v363 = 201326592;
        }

        v361[1309] |= v363;
      }

      return;
    }

LABEL_306:
    v351 = *(v342[453] + 48);
    *(*(a1 + 3600) + 320) = *(v342[453] + 56);
    *(a1 + 3880) = v351;
    if (!v342[4])
    {
      return;
    }

    goto LABEL_307;
  }
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result[1];
  if (a4 > 0x1E)
  {
    v6 = a4 - 31;
    v5 = (result[131] + 8 * v6 + 40);
  }

  else
  {
    v5 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a4);
    v6 = a4 - 31;
  }

  *v5 = *(a2 + 56) + a3;
  result[v6 + 132] = *(a2 + 48);
  v7 = *(a2 + 80);
  v8 = v4 + 8 * (a4 > 0x3F);
  *(v8 + 10184) |= v7 << a4;
  *(v8 + 10232) |= 1 << a4;
  v9 = v7 == 0;
  v10 = 0x10000;
  if (!v9)
  {
    v10 = 196608;
  }

  *(v4 + 10472) |= v10;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result[1];
  if (a4 > 0x1E)
  {
    v6 = a4 - 31;
    v5 = (result[260] + 8 * v6 + 40);
  }

  else
  {
    v5 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a4);
    v6 = a4 - 31;
  }

  *v5 = *(a2 + 56) + a3;
  result[v6 + 261] = *(a2 + 48);
  v7 = *(a2 + 80);
  v8 = v4 + 8 * (a4 > 0x3F);
  *(v8 + 10280) |= v7 << a4;
  *(v8 + 10328) |= 1 << a4;
  v9 = v7 == 0;
  v10 = 0x4000000;
  if (!v9)
  {
    v10 = 201326592;
  }

  *(v4 + 10472) |= v10;
  return result;
}

uint64_t std::unique_ptr<AGX::HAL300::Framebuffer,std::function<void ()(AGX::HAL300::Framebuffer*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (!v5)
  {
LABEL_4:
    v7 = a1[4];
    a1[4] = 0;
    if (v7 == a1 + 1)
    {
      (*(*v7 + 32))(v7);
      v8 = a2[4];
      if (v8)
      {
LABEL_8:
        if (v8 == a2 + 1)
        {
          a1[4] = (a1 + 1);
          (*(*a2[4] + 24))(a2[4], a1 + 1);
        }

        else
        {
          a1[4] = v8;
          a2[4] = 0;
        }

        return a1;
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v8 = a2[4];
      if (v8)
      {
        goto LABEL_8;
      }
    }

    a1[4] = 0;
    return a1;
  }

  v11 = v5;
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 48))(v6, &v11);
    goto LABEL_4;
  }

  v10 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<AGX::HAL300::RenderContextB,std::function<void ()(AGX::HAL300::RenderContextB*)>>::operator=[abi:nn200100](v10);
}

uint64_t std::unique_ptr<AGX::HAL300::RenderContextB,std::function<void ()(AGX::HAL300::RenderContextB*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (!v5)
  {
LABEL_4:
    v7 = a1[4];
    a1[4] = 0;
    if (v7 == a1 + 1)
    {
      (*(*v7 + 32))(v7);
      v8 = a2[4];
      if (v8)
      {
LABEL_8:
        if (v8 == a2 + 1)
        {
          a1[4] = (a1 + 1);
          (*(*a2[4] + 24))(a2[4], a1 + 1);
        }

        else
        {
          a1[4] = v8;
          a2[4] = 0;
        }

        return a1;
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v8 = a2[4];
      if (v8)
      {
        goto LABEL_8;
      }
    }

    a1[4] = 0;
    return a1;
  }

  v11 = v5;
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 48))(v6, &v11);
    goto LABEL_4;
  }

  v10 = std::__throw_bad_function_call[abi:nn200100]();
  return std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function(v10);
}

uint64_t std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function(uint64_t a1)
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

uint64_t std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::~function(uint64_t a1)
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

uint64_t *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextB>::~PointerWithOnDemandObjectCreation(uint64_t *a1)
{
  if (*a1)
  {
    v7 = *a1;
    v2 = a1[8];
    if (!v2)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      std::function<void ()(void *)>::~function((a1 + 5));
      std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::~function((a1 + 1));
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

uint64_t *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextB>::~PointerWithOnDemandObjectCreation(uint64_t *a1)
{
  if (*a1)
  {
    v7 = *a1;
    v2 = a1[8];
    if (!v2)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      std::function<void ()(void *)>::~function((a1 + 5));
      std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function((a1 + 1));
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

uint64_t (***std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#2}>,void ()(void *)>::operator()(uint64_t a1, uint64_t (****a2)(void)))(void)
{
  result = *a2;
  v4 = *(a1 + 8);
  if (*a2)
  {
    result = (**result)(result);
  }

  *(*(v4 + 2080) + 64) = 0;
  return result;
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 2080);
  *(v2 + 64) = 1;
  v3 = *(v2 + 56);
  bzero((v3 + 60), 0x92CuLL);
  *v3 = &unk_2A23F8DB8;
  *(v3 + 8) = v1;
  *(v3 + 16) = v1 + 2120;
  *(v3 + 24) = v1 + 24;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 72) = -1;
  *(v3 + 80) = 0u;
  *(v3 + 96) = -1;
  *(v3 + 1036) = 1;
  *(v3 + 1048) = v3 + 88;
  *(v3 + 1376) = -1;
  *(v3 + 1384) = 0u;
  *(v3 + 1400) = -1;
  *(v3 + 2080) = v3 + 1392;
  *(v3 + 752) = 0;
  *(v3 + 760) = v3 + 88;
  *(v3 + 2064) = v3 + 1392;
  *(v3 + 2064) = *(*(v1 + 2392) + 6328) > 1u;
  v4 = *(v1 + 7416);
  v5 = 8 * v4 + 15;
  v6 = *(v1 + 168) + (v5 | 0xF);
  if (v6 <= *(v1 + 160))
  {
LABEL_2:
    *(v1 + 176) = v6;
    goto LABEL_3;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 24, 3, 0))
  {
    v6 = *(v1 + 168) + (v5 | 0xF);
    if (v6 > *(v1 + 160))
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v7 = v5 & 0xFFFFFFFF0;
  v8 = *(v3 + 8);
  v9 = ((*(v8 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 184);
  *(v8 + 168) = &v9[v7];
  memcpy(v9, (v1 + 10648), 8 * v4);
  v11 = *(v3 + 8);
  v12 = *(*(v11 + 48) + 224);
  v13 = *MEMORY[0x29EDC5638];
  *(v11 + 10280) |= 0x400000000000000uLL;
  *(v11 + 10472) |= 0x4000000uLL;
  v14 = *(v3 + 2080);
  *(v14 + 256) = &v9[v10];
  *(v3 + 2304) = v12 + v13;
  v15 = *(v3 + 1048);
  *(v15 + 948) = v4;
  *(v14 + 668) = v4;
  v16 = *(v3 + 40);
  if (v16)
  {
    v17 = *(v16 + 3880);
    v18 = *(v16 + 3888);
    v19 = *(v11 + 7416);
    *(v11 + 6024) = *(v11 + 6024) & 0xF0E3FF00 | v17 & 0xF1C00FF;
    *(v11 + 6032) = *(v11 + 6032) & 0xFFFFFFF8 | (v19 - 1) & 7;
    *(v11 + 6036) = HIDWORD(v17);
    *(v11 + 6028) = v18;
    *(v11 + 10472) |= 4uLL;
    v11 = *(v3 + 8);
    v15 = *(v3 + 1048);
    v14 = *(v3 + 2080);
  }

  v20 = *(*(v11 + 8480) + 304);
  v21 = *(v11 + 8752);
  *(v15 + 304) = v20;
  *(v3 + 1320) = v21;
  *(v14 + 304) = v20;
  *(v3 + 2352) = v21;
  v22 = *(v11 + 11408);
  *(v14 + 240) = v22;
  *(v15 + 240) = v22;
  *v3 = &unk_2A23F8B78;
  *(v15 + 168) = 0;
  *(v14 + 168) = 0;
  *(v15 + 176) = 0;
  *(v14 + 176) = 0;
  *(v15 + 200) = 0;
  *(v14 + 200) = 0;
  *(v15 + 208) = 0;
  *(v14 + 208) = 0;
  return v3;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitICBRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 384) |= 0x30uLL;
  *(a1 + 64) = 0;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, *(a1 + 32), *(a1 + 40), *(*(a1 + 8) + 7680), *(a1 + 1040), *(a1 + 2072), *(*(a1 + 8) + 9744), a8, 0, 0, 0, 0, 0, 0, a2, 1);
  *(a1 + 64) = 0;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramVisibleFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result[1];
  if (a2)
  {
    if (a3 > 0x1E)
    {
      v6 = result[260];
      v7 = a3 - 31;
      v5 = (v6 + 8 * v7 + 40);
    }

    else
    {
      v5 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a3);
      v6 = result[260];
      v7 = a3 - 31;
    }

    *v5 = *(a2 + 376);
    v11 = MEMORY[0x29EDC5638];
    v12 = v7;
    *(v6 + v12 * 8 + 352) = *(a2 + *MEMORY[0x29EDC5638] + 24);
    result[v12 + 261] = a2 + *v11;
    v13 = v4[251];
    v14 = v13[2].i64[1];
    if (*(v14 + 480) == 1)
    {
      v15 = v13[3];
      v16 = v13[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))))
      {
        v17 = a2 + *v11;
        if ((*(v17 + 23) & 0x10) != 0)
        {
          v17 = *v17;
        }

        v18 = *v17;
        if (!v18)
        {
          goto LABEL_16;
        }

        v19 = *(v18 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))))
        {
          v20 = vandq_s8(v19, v16);
          v21 = v20.u64[1];
          if (v20.i64[1])
          {
            v22 = 3;
          }

          else
          {
            v21 = v20.i64[0];
            if (v20.i64[0])
            {
              v22 = 2;
            }

            else
            {
              v28 = vandq_s8(*v18, v15);
              v21 = v28.u64[1];
              if (v28.i64[1])
              {
                v22 = 1;
              }

              else
              {
                v22 = 0;
                v18 = 0;
                v23 = 0;
                v21 = v28.i64[0];
                if (!v28.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v29 = &v13->i8[8 * v22];
          v30 = __clz(v21) ^ 0x3F;
          v18 = (*(v29 + 10) >> v30) & 1;
          v23 = (*(v29 + 14) >> v30) & 1;
LABEL_17:
          v24 = (v14 + 8 * (a3 > 0x3F));
          v25 = 1 << a3;
          v24[14] = v24[14] & ~(1 << a3) | (v18 << a3);
          v24[34] = v24[34] & ~(1 << a3) | (v23 << a3);
          v24[54] &= ~(1 << a3);
          result = v4[237];
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v18 = 0;
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  if (a3 > 0x1E)
  {
    v9 = result[260];
    v10 = a3 - 31;
    v8 = (v9 + 8 * v10 + 40);
  }

  else
  {
    v8 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a3);
    v9 = result[260];
    v10 = a3 - 31;
  }

  *v8 = 0;
  v26 = v10;
  result[v26 + 261] = 0;
  *(v9 + v26 * 8 + 352) = 0;
  v25 = 1 << a3;
LABEL_21:
  v27 = &v4[a3 > 0x3F];
  v27[1285] |= v25;
  v27[1291] |= v25;
  v4[1309] |= 0xC000000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramIntersectionFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = result[1];
  if (!a2)
  {
    v10 = a3 - 31;
    result[v10 + 261] = 0;
    if (a3 > 0x1E)
    {
      v12 = result[260];
      v11 = (v12 + 8 * v10 + 40);
    }

    else
    {
      v11 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a3);
      v12 = result[260];
    }

    *v11 = 0;
    *(v12 + 8 * v10 + 352) = 0;
    v29 = 1 << a3;
    goto LABEL_26;
  }

  v6 = *(a2 + 312);
  if (a3 > 0x1E)
  {
    v8 = result[260];
    v9 = a3 - 31;
    v7 = (v8 + 8 * v9 + 40);
  }

  else
  {
    v7 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a3);
    v8 = result[260];
    v9 = a3 - 31;
  }

  *v7 = *(v6 + 112);
  v13 = v9;
  *(v8 + 8 * v9 + 352) = 0;
  v14 = [*(v6 + 8) backingResource];
  v15 = MEMORY[0x29EDC5638];
  v4[v13 + 261] = v14 + *MEMORY[0x29EDC5638];
  v16 = *(v4[1] + 2008);
  v17 = [*(v6 + 8) backingResource];
  v18 = v16[2].i64[1];
  if (*(v18 + 480) != 1)
  {
    goto LABEL_15;
  }

  v19 = v16[3];
  v20 = v16[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v17 + *v15;
  if ((*(v21 + 23) & 0x10) != 0)
  {
    v21 = *v21;
  }

  v22 = *v21;
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = *(v22 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v23))))) & 1) == 0)
  {
LABEL_15:
    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v24 = vandq_s8(v23, v20);
  v25 = v24.u64[1];
  if (v24.i64[1])
  {
    v26 = 3;
LABEL_32:
    v35 = &v16->i8[8 * v26];
    v36 = __clz(v25) ^ 0x3F;
    v22 = (*(v35 + 10) >> v36) & 1;
    v27 = (*(v35 + 14) >> v36) & 1;
    goto LABEL_17;
  }

  v25 = v24.i64[0];
  if (v24.i64[0])
  {
    v26 = 2;
    goto LABEL_32;
  }

  v34 = vandq_s8(*v22, v19);
  v25 = v34.u64[1];
  if (v34.i64[1])
  {
    v26 = 1;
    goto LABEL_32;
  }

  v26 = 0;
  v22 = 0;
  v27 = 0;
  v25 = v34.i64[0];
  if (v34.i64[0])
  {
    goto LABEL_32;
  }

LABEL_17:
  v28 = (v18 + 8 * (a3 > 0x3F));
  v29 = 1 << a3;
  v28[14] = v28[14] & ~(1 << a3) | (v22 << a3);
  v28[34] = v28[34] & ~(1 << a3) | (v27 << a3);
  v28[54] &= ~(1 << a3);
  v30 = v4[1];
  [*(v6 + 8) backingResource];
  result = *(v30 + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v32 = *(v6 + 64);
  for (i = *(v6 + 72); v32 != i; v32 += 2)
  {
    result = *v32;
    if (*v32)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_26:
  v33 = v5 + 8 * (a3 > 0x3F);
  *(v33 + 10280) |= v29;
  *(v33 + 10328) |= v29;
  *(v5 + 10472) |= 0xC000000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramAccelerationStructure(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1[1];
  if (!a2)
  {
    v13 = a3 - 31;
    a1[v13 + 261] = 0;
    if (a3 > 0x1E)
    {
      v15 = a1[260];
      v14 = (v15 + 8 * v13 + 40);
    }

    else
    {
      v14 = (*(a1[259] + 24) + *(a1[259] + 4) + 8 * a3);
      v15 = a1[260];
    }

    *v14 = 0;
    *(v15 + 8 * v13 + 352) = 0;
    goto LABEL_22;
  }

  [a2 buffer];
  v7 = [a2 buffer];
  v8 = MEMORY[0x29EDC5638];
  v9 = *(v7 + *MEMORY[0x29EDC5638] + 24);
  [a2 buffer];
  if (a3 > 0x1E)
  {
    v11 = a1[260];
    v12 = a3 - 31;
    v10 = (v11 + 8 * v12 + 40);
  }

  else
  {
    v10 = (*(a1[259] + 24) + *(a1[259] + 4) + 8 * a3);
    v11 = a1[260];
    v12 = a3 - 31;
  }

  *v10 = *(a2 + 336);
  *(v11 + 8 * v12 + 352) = v9;
  a1[v12 + 261] = [a2 buffer] + *v8;
  v16 = *(a1[1] + 2008);
  v17 = [a2 buffer];
  v18 = v16[2].i64[1];
  if (*(v18 + 480) != 1)
  {
    goto LABEL_15;
  }

  v19 = v16[3];
  v20 = v16[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v17 + *v8;
  if ((*(v21 + 23) & 0x10) != 0)
  {
    v21 = *v21;
  }

  v22 = *v21;
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = *(v22 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v23))))) & 1) == 0)
  {
LABEL_15:
    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v24 = vandq_s8(v23, v20);
  v25 = v24.u64[1];
  if (v24.i64[1])
  {
    v26 = 3;
LABEL_28:
    v33 = &v16->i8[8 * v26];
    v34 = __clz(v25) ^ 0x3F;
    v22 = (*(v33 + 10) >> v34) & 1;
    v27 = (*(v33 + 14) >> v34) & 1;
    goto LABEL_17;
  }

  v25 = v24.i64[0];
  if (v24.i64[0])
  {
    v26 = 2;
    goto LABEL_28;
  }

  v32 = vandq_s8(*v22, v19);
  v25 = v32.u64[1];
  if (v32.i64[1])
  {
    v26 = 1;
    goto LABEL_28;
  }

  v26 = 0;
  v22 = 0;
  v27 = 0;
  v25 = v32.i64[0];
  if (v32.i64[0])
  {
    goto LABEL_28;
  }

LABEL_17:
  v28 = (v18 + 8 * (a3 > 0x3F));
  v28[14] = v28[14] & ~(1 << a3) | (v22 << a3);
  v28[34] = v28[34] & ~(1 << a3) | (v27 << a3);
  v28[54] &= ~(1 << a3);
  if (*(a1[1] + 1896))
  {
    MTLResourceListAddResource();
  }

  v29 = a2 + 336;
  v30 = *(a2 + 344);
  os_unfair_lock_lock(v30 + 194);
  os_unfair_lock_assert_owner((*(v29 + 8) + 776));
  os_unfair_lock_unlock(v30 + 194);
LABEL_22:
  v31 = v5 + 8 * (a3 > 0x3F);
  *(v31 + 10280) |= 1 << a3;
  *(v31 + 10328) |= 1 << a3;
  *(v5 + 10472) |= 0xC000000uLL;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramAccelerationStructure(void *result, unsigned int *a2, unsigned int a3)
{
  v4 = result;
  v5 = result[1];
  if (a2)
  {
    [a2 buffer];
    v7 = [a2 buffer];
    v8 = MEMORY[0x29EDC5638];
    v9 = *(v7 + *MEMORY[0x29EDC5638] + 24);
    [a2 buffer];
    if (a3 > 0x1E)
    {
      v11 = v4[260];
      v12 = a3 - 31;
      v10 = (v11 + 8 * v12 + 40);
    }

    else
    {
      v10 = (*(v4[259] + 24) + *(v4[259] + 4) + 8 * a3);
      v11 = v4[260];
      v12 = a3 - 31;
    }

    *v10 = a2[90];
    *(v11 + 8 * v12 + 352) = v9;
    v4[v12 + 261] = [a2 buffer] + *v8;
    v16 = *(v4[1] + 2008);
    v17 = [a2 buffer];
    v18 = v16[2].i64[1];
    if (*(v18 + 480) == 1)
    {
      v19 = v16[3];
      v20 = v16[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
      {
        v21 = v17 + *v8;
        if ((*(v21 + 23) & 0x10) != 0)
        {
          v21 = *v21;
        }

        v22 = *v21;
        if (!v22)
        {
          goto LABEL_16;
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
              v30 = vandq_s8(*v22, v19);
              v25 = v30.u64[1];
              if (v30.i64[1])
              {
                v26 = 1;
              }

              else
              {
                v26 = 0;
                v22 = 0;
                v27 = 0;
                v25 = v30.i64[0];
                if (!v30.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v31 = &v16->i8[8 * v26];
          v32 = __clz(v25) ^ 0x3F;
          v22 = (*(v31 + 10) >> v32) & 1;
          v27 = (*(v31 + 14) >> v32) & 1;
LABEL_17:
          v28 = (v18 + 8 * (a3 > 0x3F));
          v28[14] = v28[14] & ~(1 << a3) | (v22 << a3);
          v28[34] = v28[34] & ~(1 << a3) | (v27 << a3);
          v28[54] &= ~(1 << a3);
          result = *(v4[1] + 1896);
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v13 = a3 - 31;
  result[v13 + 261] = 0;
  if (a3 > 0x1E)
  {
    v15 = result[260];
    v14 = (v15 + 8 * v13 + 40);
  }

  else
  {
    v14 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a3);
    v15 = result[260];
  }

  *v14 = 0;
  *(v15 + 8 * v13 + 352) = 0;
LABEL_21:
  v29 = v5 + 8 * (a3 > 0x3F);
  *(v29 + 10280) |= 1 << a3;
  *(v29 + 10328) |= 1 << a3;
  *(v5 + 10472) |= 0xC000000uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramBuffers(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::StageBindInfo<true>>(v8, v10, v12, a4++, v8 + 1376);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::StageBindInfo<true>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(result + 8);
  if (a2)
  {
    v7 = MEMORY[0x29EDC5638];
    v8 = a2 + *MEMORY[0x29EDC5638];
    v9 = *(v8 + 8);
    v10 = *(v8 + 24);
    v11 = v9 + a3;
    if (a4 > 0x1E)
    {
      v13 = *(a5 + 704);
      v14 = a4 - 31;
      v12 = (v13 + 8 * v14 + 40);
    }

    else
    {
      v12 = (*(*(a5 + 696) + 24) + *(*(a5 + 696) + 4) + 8 * a4);
      v13 = *(a5 + 704);
      v14 = a4 - 31;
    }

    *v12 = v11;
    *(v13 + 8 * v14 + 352) = v10 + a3;
    *(a5 + 8 * v14 + 712) = a2 + *v7;
    v18 = v6[251];
    v19 = v18[2].i64[1];
    if (*(v19 + 480) == 1)
    {
      v20 = v18[3];
      v21 = v18[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v21))))))
      {
        v22 = a2 + *v7;
        if ((*(v22 + 23) & 0x10) != 0)
        {
          v22 = *v22;
        }

        v23 = *v22;
        if (!v23)
        {
          goto LABEL_16;
        }

        v24 = *(v23 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v24))))))
        {
          v25 = vandq_s8(v24, v21);
          v26 = v25.u64[1];
          if (v25.i64[1])
          {
            v27 = 3;
          }

          else
          {
            v26 = v25.i64[0];
            if (v25.i64[0])
            {
              v27 = 2;
            }

            else
            {
              v32 = vandq_s8(*v23, v20);
              v26 = v32.u64[1];
              if (v32.i64[1])
              {
                v27 = 1;
              }

              else
              {
                v27 = 0;
                v23 = 0;
                v28 = 0;
                v26 = v32.i64[0];
                if (!v32.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v33 = &v18->i8[8 * v27];
          v34 = __clz(v26) ^ 0x3F;
          v23 = (*(v33 + 10) >> v34) & 1;
          v28 = (*(v33 + 14) >> v34) & 1;
LABEL_17:
          v29 = (v19 + 8 * (a4 > 0x3F));
          v30 = 1 << a4;
          v29[14] = v29[14] & ~(1 << a4) | (v23 << a4);
          v29[34] = v29[34] & ~(1 << a4) | (v28 << a4);
          v29[54] &= ~(1 << a4);
          result = v6[237];
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v23 = 0;
LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

  v15 = a4 - 31;
  *(a5 + 8 * v15 + 712) = 0;
  if (a4 > 0x1E)
  {
    v17 = *(a5 + 704);
    v16 = (v17 + 8 * v15 + 40);
  }

  else
  {
    v16 = (*(*(a5 + 696) + 24) + *(*(a5 + 696) + 4) + 8 * a4);
    v17 = *(a5 + 704);
  }

  *v16 = 0;
  *(v17 + 8 * v15 + 352) = 0;
  v30 = 1 << a4;
LABEL_21:
  v31 = &v6[a4 > 0x3F];
  v31[1285] |= v30;
  v31[1291] |= v30;
  v6[1309] |= 0xC000000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramBufferView(void *result, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = result[1];
  *(v5 + 8 * (a4 > 0x3F) + 10280) |= 1 << a4;
  *(v5 + 10472) |= 0x4000000uLL;
  if (a4 > 0x1E)
  {
    v7 = a4 - 31;
    v6 = (result[260] + 8 * v7 + 40);
  }

  else
  {
    v6 = (*(result[259] + 24) + *(result[259] + 4) + 8 * a4);
    v7 = a4 - 31;
  }

  *v6 = *a2;
  result[v7 + 261] = a5;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramVisibleFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result[1];
  if (a2)
  {
    if (a3 > 0x1E)
    {
      v6 = result[131];
      v7 = a3 - 31;
      v5 = (v6 + 8 * v7 + 40);
    }

    else
    {
      v5 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a3);
      v6 = result[131];
      v7 = a3 - 31;
    }

    *v5 = *(a2 + 376);
    v11 = MEMORY[0x29EDC5638];
    v12 = v7;
    *(v6 + v12 * 8 + 352) = *(a2 + *MEMORY[0x29EDC5638] + 24);
    result[v12 + 132] = a2 + *v11;
    v13 = v4[251];
    v14 = v13[2].i64[1];
    if (*(v14 + 480) == 1)
    {
      v15 = v13[3];
      v16 = v13[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))))
      {
        v17 = a2 + *v11;
        if ((*(v17 + 23) & 0x10) != 0)
        {
          v17 = *v17;
        }

        v18 = *v17;
        if (!v18)
        {
          goto LABEL_16;
        }

        v19 = *(v18 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))))
        {
          v20 = vandq_s8(v19, v16);
          v21 = v20.u64[1];
          if (v20.i64[1])
          {
            v22 = 3;
          }

          else
          {
            v21 = v20.i64[0];
            if (v20.i64[0])
            {
              v22 = 2;
            }

            else
            {
              v28 = vandq_s8(*v18, v15);
              v21 = v28.u64[1];
              if (v28.i64[1])
              {
                v22 = 1;
              }

              else
              {
                v22 = 0;
                v18 = 0;
                v23 = 0;
                v21 = v28.i64[0];
                if (!v28.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v29 = &v13->i8[8 * v22];
          v30 = __clz(v21) ^ 0x3F;
          v18 = (*(v29 + 10) >> v30) & 1;
          v23 = (*(v29 + 14) >> v30) & 1;
LABEL_17:
          v24 = (v14 + 8 * (a3 > 0x3F));
          v25 = 1 << a3;
          v24[12] = v24[12] & ~(1 << a3) | (v18 << a3);
          v24[32] = v24[32] & ~(1 << a3) | (v23 << a3);
          v24[52] &= ~(1 << a3);
          result = v4[237];
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v18 = 0;
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  if (a3 > 0x1E)
  {
    v9 = result[131];
    v10 = a3 - 31;
    v8 = (v9 + 8 * v10 + 40);
  }

  else
  {
    v8 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a3);
    v9 = result[131];
    v10 = a3 - 31;
  }

  *v8 = 0;
  v26 = v10;
  result[v26 + 132] = 0;
  *(v9 + v26 * 8 + 352) = 0;
  v25 = 1 << a3;
LABEL_21:
  v27 = &v4[a3 > 0x3F];
  v27[1273] |= v25;
  v27[1279] |= v25;
  v4[1309] |= 0x30000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramIntersectionFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = result[1];
  if (!a2)
  {
    v10 = a3 - 31;
    result[v10 + 132] = 0;
    if (a3 > 0x1E)
    {
      v12 = result[131];
      v11 = (v12 + 8 * v10 + 40);
    }

    else
    {
      v11 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a3);
      v12 = result[131];
    }

    *v11 = 0;
    *(v12 + 8 * v10 + 352) = 0;
    v29 = 1 << a3;
    goto LABEL_26;
  }

  v6 = *(a2 + 312);
  if (a3 > 0x1E)
  {
    v8 = result[131];
    v9 = a3 - 31;
    v7 = (v8 + 8 * v9 + 40);
  }

  else
  {
    v7 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a3);
    v8 = result[131];
    v9 = a3 - 31;
  }

  *v7 = *(v6 + 112);
  v13 = v9;
  *(v8 + 8 * v9 + 352) = 0;
  v14 = [*(v6 + 8) backingResource];
  v15 = MEMORY[0x29EDC5638];
  v4[v13 + 132] = v14 + *MEMORY[0x29EDC5638];
  v16 = *(v4[1] + 2008);
  v17 = [*(v6 + 8) backingResource];
  v18 = v16[2].i64[1];
  if (*(v18 + 480) != 1)
  {
    goto LABEL_15;
  }

  v19 = v16[3];
  v20 = v16[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v17 + *v15;
  if ((*(v21 + 23) & 0x10) != 0)
  {
    v21 = *v21;
  }

  v22 = *v21;
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = *(v22 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v23))))) & 1) == 0)
  {
LABEL_15:
    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v24 = vandq_s8(v23, v20);
  v25 = v24.u64[1];
  if (v24.i64[1])
  {
    v26 = 3;
LABEL_32:
    v35 = &v16->i8[8 * v26];
    v36 = __clz(v25) ^ 0x3F;
    v22 = (*(v35 + 10) >> v36) & 1;
    v27 = (*(v35 + 14) >> v36) & 1;
    goto LABEL_17;
  }

  v25 = v24.i64[0];
  if (v24.i64[0])
  {
    v26 = 2;
    goto LABEL_32;
  }

  v34 = vandq_s8(*v22, v19);
  v25 = v34.u64[1];
  if (v34.i64[1])
  {
    v26 = 1;
    goto LABEL_32;
  }

  v26 = 0;
  v22 = 0;
  v27 = 0;
  v25 = v34.i64[0];
  if (v34.i64[0])
  {
    goto LABEL_32;
  }

LABEL_17:
  v28 = (v18 + 8 * (a3 > 0x3F));
  v29 = 1 << a3;
  v28[12] = v28[12] & ~(1 << a3) | (v22 << a3);
  v28[32] = v28[32] & ~(1 << a3) | (v27 << a3);
  v28[52] &= ~(1 << a3);
  v30 = v4[1];
  [*(v6 + 8) backingResource];
  result = *(v30 + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v32 = *(v6 + 64);
  for (i = *(v6 + 72); v32 != i; v32 += 2)
  {
    result = *v32;
    if (*v32)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_26:
  v33 = v5 + 8 * (a3 > 0x3F);
  *(v33 + 10184) |= v29;
  *(v33 + 10232) |= v29;
  *(v5 + 10472) |= 0x30000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramAccelerationStructure(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1[1];
  if (!a2)
  {
    v13 = a3 - 31;
    a1[v13 + 132] = 0;
    if (a3 > 0x1E)
    {
      v15 = a1[131];
      v14 = (v15 + 8 * v13 + 40);
    }

    else
    {
      v14 = (*(a1[130] + 24) + *(a1[130] + 4) + 8 * a3);
      v15 = a1[131];
    }

    *v14 = 0;
    *(v15 + 8 * v13 + 352) = 0;
    goto LABEL_22;
  }

  [a2 buffer];
  v7 = [a2 buffer];
  v8 = MEMORY[0x29EDC5638];
  v9 = *(v7 + *MEMORY[0x29EDC5638] + 24);
  [a2 buffer];
  if (a3 > 0x1E)
  {
    v11 = a1[131];
    v12 = a3 - 31;
    v10 = (v11 + 8 * v12 + 40);
  }

  else
  {
    v10 = (*(a1[130] + 24) + *(a1[130] + 4) + 8 * a3);
    v11 = a1[131];
    v12 = a3 - 31;
  }

  *v10 = *(a2 + 336);
  *(v11 + 8 * v12 + 352) = v9;
  a1[v12 + 132] = [a2 buffer] + *v8;
  v16 = *(a1[1] + 2008);
  v17 = [a2 buffer];
  v18 = v16[2].i64[1];
  if (*(v18 + 480) != 1)
  {
    goto LABEL_15;
  }

  v19 = v16[3];
  v20 = v16[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v17 + *v8;
  if ((*(v21 + 23) & 0x10) != 0)
  {
    v21 = *v21;
  }

  v22 = *v21;
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = *(v22 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v23))))) & 1) == 0)
  {
LABEL_15:
    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v24 = vandq_s8(v23, v20);
  v25 = v24.u64[1];
  if (v24.i64[1])
  {
    v26 = 3;
LABEL_28:
    v33 = &v16->i8[8 * v26];
    v34 = __clz(v25) ^ 0x3F;
    v22 = (*(v33 + 10) >> v34) & 1;
    v27 = (*(v33 + 14) >> v34) & 1;
    goto LABEL_17;
  }

  v25 = v24.i64[0];
  if (v24.i64[0])
  {
    v26 = 2;
    goto LABEL_28;
  }

  v32 = vandq_s8(*v22, v19);
  v25 = v32.u64[1];
  if (v32.i64[1])
  {
    v26 = 1;
    goto LABEL_28;
  }

  v26 = 0;
  v22 = 0;
  v27 = 0;
  v25 = v32.i64[0];
  if (v32.i64[0])
  {
    goto LABEL_28;
  }

LABEL_17:
  v28 = (v18 + 8 * (a3 > 0x3F));
  v28[12] = v28[12] & ~(1 << a3) | (v22 << a3);
  v28[32] = v28[32] & ~(1 << a3) | (v27 << a3);
  v28[52] &= ~(1 << a3);
  if (*(a1[1] + 1896))
  {
    MTLResourceListAddResource();
  }

  v29 = a2 + 336;
  v30 = *(a2 + 344);
  os_unfair_lock_lock(v30 + 194);
  os_unfair_lock_assert_owner((*(v29 + 8) + 776));
  os_unfair_lock_unlock(v30 + 194);
LABEL_22:
  v31 = v5 + 8 * (a3 > 0x3F);
  *(v31 + 10184) |= 1 << a3;
  *(v31 + 10232) |= 1 << a3;
  *(v5 + 10472) |= 0x30000uLL;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramAccelerationStructure(void *result, unsigned int *a2, unsigned int a3)
{
  v4 = result;
  v5 = result[1];
  if (a2)
  {
    [a2 buffer];
    v7 = [a2 buffer];
    v8 = MEMORY[0x29EDC5638];
    v9 = *(v7 + *MEMORY[0x29EDC5638] + 24);
    [a2 buffer];
    if (a3 > 0x1E)
    {
      v11 = v4[131];
      v12 = a3 - 31;
      v10 = (v11 + 8 * v12 + 40);
    }

    else
    {
      v10 = (*(v4[130] + 24) + *(v4[130] + 4) + 8 * a3);
      v11 = v4[131];
      v12 = a3 - 31;
    }

    *v10 = a2[90];
    *(v11 + 8 * v12 + 352) = v9;
    v4[v12 + 132] = [a2 buffer] + *v8;
    v16 = *(v4[1] + 2008);
    v17 = [a2 buffer];
    v18 = v16[2].i64[1];
    if (*(v18 + 480) == 1)
    {
      v19 = v16[3];
      v20 = v16[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
      {
        v21 = v17 + *v8;
        if ((*(v21 + 23) & 0x10) != 0)
        {
          v21 = *v21;
        }

        v22 = *v21;
        if (!v22)
        {
          goto LABEL_16;
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
              v30 = vandq_s8(*v22, v19);
              v25 = v30.u64[1];
              if (v30.i64[1])
              {
                v26 = 1;
              }

              else
              {
                v26 = 0;
                v22 = 0;
                v27 = 0;
                v25 = v30.i64[0];
                if (!v30.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v31 = &v16->i8[8 * v26];
          v32 = __clz(v25) ^ 0x3F;
          v22 = (*(v31 + 10) >> v32) & 1;
          v27 = (*(v31 + 14) >> v32) & 1;
LABEL_17:
          v28 = (v18 + 8 * (a3 > 0x3F));
          v28[12] = v28[12] & ~(1 << a3) | (v22 << a3);
          v28[32] = v28[32] & ~(1 << a3) | (v27 << a3);
          v28[52] &= ~(1 << a3);
          result = *(v4[1] + 1896);
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v13 = a3 - 31;
  result[v13 + 132] = 0;
  if (a3 > 0x1E)
  {
    v15 = result[131];
    v14 = (v15 + 8 * v13 + 40);
  }

  else
  {
    v14 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a3);
    v15 = result[131];
  }

  *v14 = 0;
  *(v15 + 8 * v13 + 352) = 0;
LABEL_21:
  v29 = v5 + 8 * (a3 > 0x3F);
  *(v29 + 10184) |= 1 << a3;
  *(v29 + 10232) |= 1 << a3;
  *(v5 + 10472) |= 0x30000uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBuffers(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::StageBindInfo<false>>(v8, v10, v12, a4++, v8 + 72);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::StageBindInfo<false>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(result + 8);
  if (a2)
  {
    v7 = MEMORY[0x29EDC5638];
    v8 = a2 + *MEMORY[0x29EDC5638];
    v9 = *(v8 + 8);
    v10 = *(v8 + 24);
    v11 = v9 + a3;
    if (a4 > 0x1E)
    {
      v13 = *(a5 + 976);
      v14 = a4 - 31;
      v12 = (v13 + 8 * v14 + 40);
    }

    else
    {
      v12 = (*(*(a5 + 968) + 24) + *(*(a5 + 968) + 4) + 8 * a4);
      v13 = *(a5 + 976);
      v14 = a4 - 31;
    }

    *v12 = v11;
    *(v13 + 8 * v14 + 352) = v10 + a3;
    *(a5 + 8 * v14 + 984) = a2 + *v7;
    v18 = v6[251];
    v19 = v18[2].i64[1];
    if (*(v19 + 480) == 1)
    {
      v20 = v18[3];
      v21 = v18[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v21))))))
      {
        v22 = a2 + *v7;
        if ((*(v22 + 23) & 0x10) != 0)
        {
          v22 = *v22;
        }

        v23 = *v22;
        if (!v23)
        {
          goto LABEL_16;
        }

        v24 = *(v23 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v24))))))
        {
          v25 = vandq_s8(v24, v21);
          v26 = v25.u64[1];
          if (v25.i64[1])
          {
            v27 = 3;
          }

          else
          {
            v26 = v25.i64[0];
            if (v25.i64[0])
            {
              v27 = 2;
            }

            else
            {
              v32 = vandq_s8(*v23, v20);
              v26 = v32.u64[1];
              if (v32.i64[1])
              {
                v27 = 1;
              }

              else
              {
                v27 = 0;
                v23 = 0;
                v28 = 0;
                v26 = v32.i64[0];
                if (!v32.i64[0])
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v33 = &v18->i8[8 * v27];
          v34 = __clz(v26) ^ 0x3F;
          v23 = (*(v33 + 10) >> v34) & 1;
          v28 = (*(v33 + 14) >> v34) & 1;
LABEL_17:
          v29 = (v19 + 8 * (a4 > 0x3F));
          v30 = 1 << a4;
          v29[12] = v29[12] & ~(1 << a4) | (v23 << a4);
          v29[32] = v29[32] & ~(1 << a4) | (v28 << a4);
          v29[52] &= ~(1 << a4);
          result = v6[237];
          if (result)
          {
            result = MTLResourceListAddResource();
          }

          goto LABEL_21;
        }
      }
    }

    v23 = 0;
LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

  v15 = a4 - 31;
  *(a5 + 8 * v15 + 984) = 0;
  if (a4 > 0x1E)
  {
    v17 = *(a5 + 976);
    v16 = (v17 + 8 * v15 + 40);
  }

  else
  {
    v16 = (*(*(a5 + 968) + 24) + *(*(a5 + 968) + 4) + 8 * a4);
    v17 = *(a5 + 976);
  }

  *v16 = 0;
  *(v17 + 8 * v15 + 352) = 0;
  v30 = 1 << a4;
LABEL_21:
  v31 = &v6[a4 > 0x3F];
  v31[1273] |= v30;
  v31[1279] |= v30;
  v6[1309] |= 0x30000uLL;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBufferView(void *result, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = result[1];
  *(v5 + 8 * (a4 > 0x3F) + 10184) |= 1 << a4;
  *(v5 + 10472) |= 0x10000uLL;
  if (a4 > 0x1E)
  {
    v7 = a4 - 31;
    v6 = (result[131] + 8 * v7 + 40);
  }

  else
  {
    v6 = (*(result[130] + 24) + *(result[130] + 4) + 8 * a4);
    v7 = a4 - 31;
  }

  *v6 = *a2;
  result[v7 + 132] = a5;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramBufferBytes(void *a1, const void *a2, size_t a3, unsigned int a4)
{
  v6 = a3 + 15;
  v7 = a1[1];
  v8 = (a3 + 15) | 0xF;
  v9 = v7[21] + v8;
  if (v9 <= v7[20])
  {
LABEL_2:
    v7[22] = v9;
    goto LABEL_3;
  }

  v20 = a2;
  v21 = a3;
  v22 = AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 3, 3, 0);
  a2 = v20;
  a3 = v21;
  if (v22)
  {
    v9 = v7[21] + v8;
    if (v9 > v7[20])
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v10 = v6 & 0xFFFFFFFFFFFFFFF0;
  v11 = a1[1];
  v12 = ((*(v11 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v11 + 184);
  *(v11 + 168) = &v12[v10];
  result = memcpy(v12, a2, a3);
  v15 = a1[1];
  v16 = *(*(v15 + 48) + 224);
  v17 = *MEMORY[0x29EDC5638];
  *(v15 + 8 * (a4 > 0x3F) + 10184) |= 1 << a4;
  *(v15 + 10472) |= 0x10000uLL;
  if (a4 > 0x1E)
  {
    v19 = a4 - 31;
    v18 = (a1[131] + 8 * v19 + 40);
  }

  else
  {
    v18 = (*(a1[130] + 24) + *(a1[130] + 4) + 8 * a4);
    v19 = a4 - 31;
  }

  *v18 = &v12[v13];
  a1[v19 + 132] = v16 + v17;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramArgumentTable(void *a1, void *a2)
{
  if (a1[173] != a2)
  {
    v4 = a2;
    v5 = a1[173];
    if (v5 != v4)
    {
      v6 = v4;

      a1[173] = v6;
    }

    if (a2)
    {
      v7 = a2[4];
    }

    else
    {
      v7 = 0;
    }

    a1[259] = v7;
    a1[172] = -1;
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramArgumentTable(void *a1, void *a2)
{
  if (a1[10] != a2)
  {
    v4 = a2;
    v5 = a1[10];
    if (v5 != v4)
    {
      v6 = v4;

      a1[10] = v6;
    }

    if (a2)
    {
      v7 = a2[4];
    }

    else
    {
      v7 = 0;
    }

    a1[130] = v7;
    a1[9] = -1;
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramDispatchPrivateBuffer(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 + 67) > 0x1E)
  {
    v4 = *(result + 2080);
    v5 = (a3 + 36);
    v3 = (v4 + 8 * v5 + 40);
  }

  else
  {
    v3 = (*(*(result + 2072) + 24) + *(*(result + 2072) + 4) + 8 * (a3 + 67));
    v4 = *(result + 2080);
    v5 = (a3 + 36);
  }

  *v3 = a2;
  *(v4 + 8 * v5 + 352) = 0;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setObjectProgramDispatchPrivateBuffer(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 + 67) > 0x1E)
  {
    v4 = *(result + 1048);
    v5 = (a3 + 36);
    v3 = (v4 + 8 * v5 + 40);
  }

  else
  {
    v3 = (*(*(result + 1040) + 24) + *(*(result + 1040) + 4) + 8 * (a3 + 67));
    v4 = *(result + 1048);
    v5 = (a3 + 36);
  }

  *v3 = a2;
  *(v4 + 8 * v5 + 352) = 0;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setPerEncoderIndirectionTable(uint64_t result, uint64_t a2)
{
  *(*(result + 2080) + 240) = a2;
  *(*(result + 1048) + 240) = a2;
  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindScsParameters(void *result, uint64_t a2, uint64_t a3)
{
  *(result[131] + 304) = a2;
  result[165] = a3;
  *(result[260] + 304) = a2;
  result[294] = a3;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::exportsPointSize(uint64_t a1)
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

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setAmplificationCount(void *a1, unsigned int a2, const void *a3)
{
  v5 = a1[1];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5 + 1323;
  }

  v7 = 8 * a2;
  v8 = v7 + 15;
  v9 = (v7 + 15) | 0xF;
  v10 = v5[21] + v9;
  if (v10 <= v5[20])
  {
LABEL_5:
    v5[22] = v10;
    goto LABEL_6;
  }

  v24 = v6;
  v25 = AGX::DataBufferAllocator<44ul>::growNoInline(v5 + 3, 3, 0);
  v7 = 8 * a2;
  v6 = v24;
  if (v25)
  {
    v10 = v5[21] + v9;
    if (v10 > v5[20])
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v11 = v8 & 0xFFFFFFFF0;
  v12 = a1[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v12 + 184);
  *(v12 + 168) = &v13[v11];
  result = memcpy(v13, v6, v7);
  v16 = a1[1];
  v17 = *(*(v16 + 48) + 224);
  v18 = *MEMORY[0x29EDC5638];
  *(v16 + 10280) |= 0x400000000000000uLL;
  *(v16 + 10472) |= 0x4000000uLL;
  v19 = a1[260];
  *(v19 + 256) = &v13[v14];
  a1[288] = v17 + v18;
  *(a1[131] + 948) = a2;
  *(v19 + 668) = a2;
  v20 = a1[5];
  if (v20)
  {
    v21 = *(v20 + 3880);
    v22 = *(v20 + 3888);
    v23 = *(v16 + 7416);
    *(v16 + 6024) = *(v16 + 6024) & 0xF0E3FF00 | v21 & 0xF1C00FF;
    *(v16 + 6032) = *(v16 + 6032) & 0xFFFFFFF8 | (v23 - 1) & 7;
    *(v16 + 6036) = HIDWORD(v21);
    *(v16 + 6028) = v22;
    *(v16 + 10472) |= 4uLL;
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::beginRenderPass(uint64_t a1, char a2)
{
  v2 = *(a1 + 1048);
  if (a2)
  {
    v2[21] = 0;
    v3 = *(a1 + 2080);
    v3[21] = 0;
    v2[22] = 0;
    v3[22] = 0;
    v2[25] = 0;
    v3[25] = 0;
  }

  else
  {
    v3 = *(a1 + 2080);
  }

  v2[26] = 0;
  v3[26] = 0;
  return 0;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineState(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (!v4)
  {
    result[4] = 0;
    result[5] = 0;
    *(result[1] + 10472) &= 0xFFFFFFF01C07FFCFLL;
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
      v11 = v10[479].i64[0];
      *(v11 + 578) |= *(v5 + 1354);
      *(v11 + 584) |= *(a2 + 908) != 0;
      v12 = v10[654].i64[1] & 0xFFFFFFFFFC06FFFFLL | *(v5 + 2720);
      v13 = v12 | 0x14;
      v10[654].i64[1] = v12 | 0x14;
      v14 = *(v5 + 2400);
      v15 = *(v5 + 1360);
      v16 = *(v5 + 2424);
      v17 = *(v5 + 2408);
      v18 = *(v5 + 1368);
      v19 = *(v5 + 1384);
      if (v6)
      {
        v14 &= ~*(v6 + 2400);
        v15 &= ~*(v6 + 1360);
        v16 &= ~*(v6 + 2424);
        v17 = vbicq_s8(v17, *(v6 + 2408));
        v18 = vbicq_s8(v18, *(v6 + 1368));
        v19 &= ~*(v6 + 1384);
      }

      v20 = vorrq_s8(v17, v18);
      v21 = (v14 | v15) & 0xFFFFFFFF80000000;
      v22 = v10[640].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
      v10[639].i64[1] = v10[639].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v21;
      v23 = v16 | v19;
      v24.i64[0] = v22;
      v24.i64[1] = v10[640].i64[1];
      v10[640] = vorrq_s8(v24, v20);
      v10[641].i64[0] |= v23;
      v25 = v21 | v20.i64[0];
      v26 = (v21 | v20.i64[0]) != 0;
      v27 = (v20.i64[1] | v23) != 0;
      if (v25 || v27)
      {
        v28 = v12 | 0x20014;
        if (!v26)
        {
          v28 = v13;
        }

        if (v27)
        {
          v28 |= 0x40000uLL;
        }

        v10[654].i64[1] = v28;
      }

      *a3 |= *(a2 + 732);
      if (*(a2 + 790) == 1)
      {
        v29 = *(a2 + 1968);
        if (v29)
        {
          v30 = *(v29 + 48);
          *(v3[131] + 264) = *(v29 + 56);
          v3[160] = v30;
          v31 = *(v29 + 80);
          v10[636].i64[1] |= v31 << 59;
          v10[639].i64[1] |= 0x800000000000000uLL;
          v32 = (v31 & 1) == 0;
          v33 = 0x10000;
          if (!v32)
          {
            v33 = 196608;
          }

          v10[654].i64[1] |= v33;
        }
      }

      if (v9)
      {
        v71 = a2;
        v73 = a3;
        if ((*(v5 + 2400) & *(v5 + 2432) & ~*(v5 + 2096)) != 0 && *v8)
        {
          IOGPUDeviceTraceEvent();
          v8 = *v7;
        }

        a2 = v71;
        if (*(v71 + 2056) + *(v71 + 2020))
        {
          a3 = v73;
          if (*v8)
          {
            IOGPUDeviceTraceEvent();
            a2 = v71;
            a3 = v73;
            v8 = *v7;
          }
        }

        else
        {
          a3 = v73;
        }
      }
    }
  }

  v34 = v3[5];
  v35 = *v8;
  if (v34 != v4)
  {
    v36 = (v4 + 1368);
    v37 = v3[1];
    if ((*(v37 + 10480) & 4) != 0 && *(*(v37 + 7688) + 744) >= 2u)
    {
      v72 = a2;
      v74 = a3;
      v70 = v35;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexAmplificationCount(v37, 1u, (v37 + 10584));
      v36 = (v4 + 1368);
      v35 = v70;
      a2 = v72;
      a3 = v74;
      v37 = v3[1];
      *(v37 + 10480) &= ~4u;
      v34 = v3[5];
    }

    v3[5] = v4;
    *(*(v37 + 7664) + 578) |= *(v4 + 1354);
    v38 = *(v4 + 3880);
    v39 = *(v4 + 3888);
    v40 = *(v37 + 7416);
    *(v37 + 6024) = *(v37 + 6024) & 0xF0E3FF00 | v38 & 0xF1C00FF;
    *(v37 + 6032) = *(v37 + 6032) & 0xFFFFFFF8 | (v40 - 1) & 7;
    *(v37 + 6036) = HIDWORD(v38);
    *(v37 + 6028) = v39;
    *(v37 + 10472) |= 4uLL;
    v41 = v3[260];
    *(v41 + 664) = 4 * *(v4 + 4024);
    v42 = v3[1];
    v43 = v42[654].i64[1] & 0xFFFFFFF01BFFFFFFLL | *(v4 + 2720);
    v44 = v43 | 0x24;
    v42[654].i64[1] = v43 | 0x24;
    v45 = *(v4 + 2400);
    v46 = *(v4 + 1360);
    v47 = *(v4 + 2424);
    v48 = v36[65];
    v49 = *v36;
    v50 = *(v4 + 1384);
    if (v34)
    {
      v45 &= ~*(v34 + 2400);
      v46 &= ~*(v34 + 1360);
      v47 &= ~*(v34 + 2424);
      v48 = vbicq_s8(v48, *(v34 + 2408));
      v49 = vbicq_s8(v49, *(v34 + 1368));
      v50 &= ~*(v34 + 1384);
    }

    v51 = vorrq_s8(v48, v49);
    v52 = (v45 | v46) & 0xFFFFFFFF80000000;
    v53 = v42[646].i64[0] & 0xFFFFFFFFFFFFFFFDLL;
    v42[645].i64[1] = v42[645].i64[1] & 0xE7FFFFFFFFFFFFFFLL | v52;
    v54 = v47 | v50;
    v55.i64[0] = v53;
    v55.i64[1] = v42[646].i64[1];
    v42[646] = vorrq_s8(v55, v51);
    v42[647].i64[0] |= v54;
    if (v52 | v51.i64[0] || v51.i64[1] | v54)
    {
      v56 = v43 | 0x8000024;
      if (!(v52 | v51.i64[0]))
      {
        v56 = v44;
      }

      if (v51.i64[1] | v54)
      {
        v56 |= 0x10000000uLL;
      }

      v42[654].i64[1] = v56;
    }

    *a3 |= *(a2 + 736);
    if (*(a2 + 790) == 1)
    {
      v57 = *(a2 + 2280);
      if (v57)
      {
        v58 = *(v57 + 48);
        *(v41 + 264) = *(v57 + 56);
        v3[289] = v58;
        v59 = *(v57 + 80);
        v42[642].i64[1] |= v59 << 59;
        v42[645].i64[1] |= 0x800000000000000uLL;
        v32 = (v59 & 1) == 0;
        v60 = 0x4000000;
        if (!v32)
        {
          v60 = 201326592;
        }

        v42[654].i64[1] |= v60;
      }
    }

    if (v35)
    {
      if ((*(v3[5] + 2400) & *(v3[5] + 2432) & ~*(v3[5] + 2096)) != 0 && **v7)
      {
        v68 = a2;
        IOGPUDeviceTraceEvent();
        a2 = v68;
      }

      if (*(a2 + 2368) + *(a2 + 2332) && **v7)
      {
        v69 = a2;
        IOGPUDeviceTraceEvent();
        a2 = v69;
      }
    }
  }

  if (!*(a2 + 3576))
  {
    v61 = 0;
    v62 = *(a2 + 3592);
    if (!v62)
    {
      goto LABEL_40;
    }

LABEL_47:
    result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v3[1] + 7440), v62);
    if (((v61 | result) & 1) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

  v65 = a2;
  v66 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((v3[1] + 7440), *(a2 + 3576));
  v67 = v65;
  v61 = v66;
  v62 = *(v67 + 3592);
  if (v62)
  {
    goto LABEL_47;
  }

LABEL_40:
  result = 0;
  if ((v61 & 1) == 0)
  {
    return result;
  }

LABEL_41:
  v63 = v3[1];
  v64 = *(v63 + 7664) + 320;

  return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v63 + 7440, v64, 1);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBuffer(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v6 = *(a1[1] + 7688);
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
      v9 = a1[131];
      *(v9 + 384) = 0;
      *(v9 + 72) = a2;
      a1[136] = 0;
      v12 = *a3;
      v13 = *(a3 + 2);
      v10 = *a4;
      v11 = *(a4 + 2);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(a1, a2, &v12, &v10);
    }

    return;
  }

  v6 = *(a1[1] + 7688);
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

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBuffer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  if (*(*(a1 + 32) + 3946) == 1)
  {
    v8 = *(a1 + 8);
    v9 = v8[961];
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = v8[961];
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a4[1] * a4[2] * *a4 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a5 + 1) * *a5 * *(a5 + 2) <= v11)
  {
    if (*(*(a1 + 32) + 3946))
    {
      v12 = 0;
      a3 = a3;
LABEL_30:
      v31 = a1;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::StageBindInfo<false>>(a1, a2, a3, 0x23u, a1 + 72);
      IOGPUResourceListAddResource();
      v40 = *a4;
      v41 = a4[2];
      v38 = *a5;
      v39 = *(a5 + 2);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(v31, v12, &v40, &v38);
      return;
    }

    v13 = *MEMORY[0x29EDC5638];
    v14 = a2 + v13;
    v15 = *(a2 + v13 + 8);
    a3 = a3;
    v12 = v15 + a3;
    if (v8[929] == a2)
    {
      goto LABEL_30;
    }

    v16 = *(v14 + 16);
    v17 = (v16 & 0x7FFFFFFF80) != 0 && (v16 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
    if (v17 && (v18 = v8[251], *(v18[2].i64[1] + 480) == 1) && (v19 = v18[3], v20 = v18[4], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) != 0))
    {
      v21 = a3;
      v22 = (a2 + v13);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v22 = *v14;
      }

      v23 = *v22;
      if (v23)
      {
        v24 = *v23;
        v25 = v23[1];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v25))))))
        {
          v26 = vandq_s8(v25, v20);
          v27 = v26.u64[1];
          if (v26.i64[1])
          {
            v28 = a1;
            v29 = 3;
            goto LABEL_38;
          }

          v27 = v26.i64[0];
          if (v26.i64[0])
          {
            v28 = a1;
            v29 = 2;
            goto LABEL_38;
          }

          v32 = vandq_s8(v24, v19);
          v28 = a1;
          v27 = v32.u64[1];
          if (v32.i64[1])
          {
            v29 = 1;
            goto LABEL_38;
          }

          v27 = v32.i64[0];
          if (v32.i64[0])
          {
            v29 = 0;
LABEL_38:
            v33 = &v18->i8[8 * v29];
            v34 = *(v33 + 10);
            v35 = 1 << (__clz(v27) ^ 0x3Fu);
            if ((v35 & (*(v33 + 14) | v34)) != 0)
            {
              v36 = (v15 + 127) & 0xFFFFFFFFFFFFFF80;
              v37 = (a2 + v13);
              if ((v16 & 0x1000000000000000) != 0)
              {
                v37 = *v14;
              }

              *&v40 = v37;
              *(&v40 + 1) = v36;
              v41 = (v16 >> 7) | 0x4100000000;
              v42 = (v35 & v34) != 0;
              ResourceTracker<_ResourceGroupBinding>::addResource(v18, &v40, *(v14 + 48), 65);
            }
          }

LABEL_27:
          IOGPUResourceListAddResource();
          a1 = v28;
          v30 = *(v28 + 8);
          if (*(v30 + 1896))
          {
            MTLResourceListAddResource();
            a1 = v28;
            v30 = *(v28 + 8);
          }

          a3 = v21;
          *(v30 + 7432) = a2;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v21 = a3;
    }

    v28 = a1;
    goto LABEL_27;
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(void *a1, __int128 *a2)
{
  v2 = *(a1[1] + 7688);
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
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(a1, &v9, v8, v7);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::hasObjectStage(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 3946) ^ 1;
  }

  return v1 & 1;
}

void AGX::HAL300::HWGeometryPipelineContextB::~HWGeometryPipelineContextB(AGX::HAL300::HWGeometryPipelineContextB *this)
{
  *this = &unk_2A23F8DB8;
  *(this + 130) = 0;
  *(this + 259) = 0;

  *this = &unk_2A23F8FF8;

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F8DB8;
  *(this + 130) = 0;
  *(this + 259) = 0;

  *this = &unk_2A23F8FF8;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::~HWGeometryPipelineContext(uint64_t a1)
{
  *a1 = &unk_2A23F8DB8;
  *(a1 + 1040) = 0;
  *(a1 + 2072) = 0;

  *a1 = &unk_2A23F8FF8;

  JUMPOUT(0x29ED520D0);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::~HWGeometryPipelineContext(uint64_t a1)
{
  *a1 = &unk_2A23F8DB8;
  *(a1 + 1040) = 0;
  *(a1 + 2072) = 0;

  *a1 = &unk_2A23F8FF8;
  return a1;
}

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8B30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8AE8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextB * ()(void)>::operator()(uint64_t a1)
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
  *v5 = &unk_2A23F8A98;
  return v5;
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindAllResources(void *a1)
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

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineState(uint64_t result, uint64_t a2)
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

void AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawPatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexProgramBuffer(*(a1 + 8), a5, a6, 0x29u);
  AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setPatchIndexBuffer(*(a1 + 8), a3, a4, *(a1 + 80));
  v13 = *(a1 + 8);
  v14 = *(a1 + 104);
  v15 = *(a1 + 100);
  v16 = *(v14 + 4256);
  if (v16 == 1)
  {
    v17 = v15 == 0;
    v18 = 24;
    v19 = 12;
  }

  else
  {
    if (v16)
    {
      v18 = 0;
      goto LABEL_9;
    }

    v17 = v15 == 0;
    v18 = 16;
    v19 = 8;
  }

  if (v17)
  {
    v18 = v19;
  }

LABEL_9:
  v20 = *(v14 + 4260);
  v47 = v20 >= 2;
  v21 = v20 - 2;
  if (v47)
  {
    if (v21 > 1)
    {
      goto LABEL_14;
    }

    v22 = *(a1 + 44) / v18;
  }

  else
  {
    v22 = 0;
  }

  *(*(v13 + 8480) + 684) = v22;
LABEL_14:
  v23 = MEMORY[0x29EDC5638];
  if (((*(*(v13 + 7672) + 2480) | *(*(v13 + 7672) + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_21;
  }

  v24 = a7 + *MEMORY[0x29EDC5638];
  v25 = *(v24 + 8) + a8;
  *(v13 + 10088) |= 0x700000000000uLL;
  *(v13 + 10472) |= 0x40uLL;
  v26 = *(v13 + 8480);
  *(v26 + 152) = v25 + 12;
  *(v13 + 8600) = v24;
  if (*(v13 + 7256) != 1)
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
    *(*(v13 + 8480) + 144) = v30;
    v24 = *(*(v13 + 48) + 224) + *v23;
    v27 = *(a1 + 8);
    goto LABEL_20;
  }

  *(v26 + 144) = v25 + 8;
  v27 = v13;
LABEL_20:
  *(v13 + 8592) = v24;
  v13 = v27;
LABEL_21:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v13, 3);
  v31 = *(a1 + 8);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v31, *(v31 + 7672), *(v31 + 7680), *(v31 + 8472), *(v31 + 9744), v31 + 10088, 0);
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

  v43 = *v23;
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
    v65 = *v23;
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

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexProgramBuffer(void *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result;
  if (!a2)
  {
    v24 = a4 - 31;
    result[v24 + 1061] = 0;
    v25 = result[1060] + v24 * 8;
    *(v25 + 40) = 0;
    *(v25 + 352) = 0;
    v23 = 1 << a4;
    goto LABEL_15;
  }

  v5 = MEMORY[0x29EDC5638];
  v6 = a2 + *MEMORY[0x29EDC5638];
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  v9 = a4 - 31;
  v10 = result[1060] + v9 * 8;
  *(v10 + 40) = v7 + a3;
  *(v10 + 352) = v8 + a3;
  result[v9 + 1061] = a2 + *v5;
  v11 = result[251];
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

  v15 = a2 + *v5;
  if ((*(v15 + 23) & 0x10) != 0)
  {
    v15 = *v15;
  }

  v16 = *v15;
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *(v16 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v16), vceqzq_s64(v17))))) & 1) == 0)
  {
LABEL_10:
    v16 = 0;
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v18 = vandq_s8(v17, v14);
  v19 = v18.u64[1];
  if (v18.i64[1])
  {
    v20 = 3;
  }

  else
  {
    v19 = v18.i64[0];
    if (v18.i64[0])
    {
      v20 = 2;
    }

    else
    {
      v26 = vandq_s8(*v16, v13);
      v19 = v26.u64[1];
      if (v26.i64[1])
      {
        v20 = 1;
      }

      else
      {
        v20 = 0;
        v16 = 0;
        v21 = 0;
        v19 = v26.i64[0];
        if (!v26.i64[0])
        {
          goto LABEL_12;
        }
      }
    }
  }

  v27 = &v11->i8[8 * v20];
  v28 = __clz(v19) ^ 0x3F;
  v16 = (*(v27 + 10) >> v28) & 1;
  v21 = (*(v27 + 14) >> v28) & 1;
LABEL_12:
  v22 = (v12 + 8 * (a4 > 0x3F));
  v23 = 1 << a4;
  *v22 = *v22 & ~(1 << a4) | (v16 << a4);
  v22[20] = v22[20] & ~(1 << a4) | (v21 << a4);
  v22[40] &= ~(1 << a4);
  result = result[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_15:
  v4[1261] |= v23;
  v4[1267] |= v23;
  v4[1309] |= 0xC0uLL;
  return result;
}

void *AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setPatchIndexBuffer(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = (a2 + *MEMORY[0x29EDC5638]);
    v6 = v5[1].i64[1];
    v7 = result[1060];
    *(v7 + 104) = v5->i64[1] + a3;
    *(v7 + 416) = v6 + a3;
    result[1069] = v5;
    v8 = result[251];
    v9 = v8[2].i64[1];
    if (*(v9 + 480) != 1)
    {
      goto LABEL_10;
    }

    v10 = v8[3];
    v11 = v8[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v10), vceqzq_s64(v11))))) & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((v5[1].i8[7] & 0x10) != 0)
    {
      v5 = v5->i64[0];
    }

    v12 = v5->i64[0];
    if (v12 && (v13 = *v12, v14 = v12[1], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v12), vceqzq_s64(v14))))) & 1) != 0))
    {
      v15 = vandq_s8(v14, v11);
      v16 = v15.u64[1];
      if (v15.i64[1])
      {
        v17 = 3;
LABEL_22:
        v22 = &v8->i8[8 * v17];
        v23 = __clz(v16) ^ 0x3F;
        v18 = ((*(v22 + 10) >> v23) & 1) << 39;
        v19 = ((*(v22 + 14) >> v23) & 1) << 39;
        goto LABEL_11;
      }

      v16 = v15.i64[0];
      if (v15.i64[0])
      {
        v17 = 2;
        goto LABEL_22;
      }

      v21 = vandq_s8(v13, v10);
      v16 = v21.u64[1];
      if (v21.i64[1])
      {
        v17 = 1;
        goto LABEL_22;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v16 = v21.i64[0];
      if (v21.i64[0])
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_10:
      v18 = 0;
      v19 = 0;
    }

LABEL_11:
    *v9 = *v9 & 0xFFFFFF7FFFFFFFFFLL | v18;
    *(v9 + 160) = *(v9 + 160) & 0xFFFFFF7FFFFFFFFFLL | v19;
    *(v9 + 320) &= ~0x8000000000uLL;
    if (result[237])
    {
      v20 = result;
      MTLResourceListAddResource();
      result = v20;
    }

    result[1261] |= 0x8000000000uLL;
    result[1267] |= 0x8000000000uLL;
    result[1309] |= 0xC0uLL;
    return result;
  }

  return AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexProgramBuffer(result, a4, 0, 0x27u);
}

void AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawPatches(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexProgramBuffer(*(a1 + 8), a7, a8, 0x29u);
  AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setPatchIndexBuffer(*(a1 + 8), a5, a6, *(a1 + 80));
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

  *(v15[1060] + 684) = v22;
LABEL_16:
  v23 = MEMORY[0x29EDC5638];
  if (((*(v15[959] + 2480) | *(v15[959] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_20;
  }

  v15[1261] |= 0x700000000000uLL;
  v15[1309] |= 0x40uLL;
  *(v15[1060] + 160) = a10;
  v24 = v15[21];
  v25 = v24 + 2;
  if ((v24 + 2) > v15[20])
  {
    v69 = v15;
    v70 = AGX::DataBufferAllocator<44ul>::growNoInline(v15 + 3, 3, 0);
    v15 = v69;
    v24 = v69[21];
    if (!v70)
    {
      goto LABEL_19;
    }

    v25 = v24 + 2;
    if ((v24 + 2) > v69[20])
    {
      abort();
    }
  }

  v15[22] = v25;
LABEL_19:
  v26 = v24 + v15[23];
  v15[21] = v24 + 2;
  v27 = v15[1060];
  *(v27 + 144) = v26;
  *(v27 + 152) = v26 + 4;
  *v24 = 0;
  v24[1] = a10;
  v28 = *(v15[6] + 224) + *v23;
  v15[1075] = v28;
  v15[1074] = v28;
  v15 = *(a1 + 8);
LABEL_20:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v15, 3);
  v29 = *(a1 + 8);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v29, *(v29 + 7672), *(v29 + 7680), *(v29 + 8472), *(v29 + 9744), v29 + 10088, 0);
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

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setTessellationFactorScale(uint64_t result, float a2)
{
  if (*(result + 72) != a2)
  {
    *(result + 72) = a2;
    *(result + 112) |= 1u;
  }

  return result;
}

uint64_t AGX::HWTessellationContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setTessellationFactorBuffer(uint64_t result, uint64_t a2, uint64_t a3, int a4)
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
    result = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setVertexProgramBuffer(*(result + 8), a2, a3, 0x23u);
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

uint64_t std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextB * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F8A50;
  a2[1] = v2;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::~RenderContext(uint64_t a1)
{
  for (i = (a1 + 7648); ; _Block_release(i[1]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  *(a1 + 9744) = 0;
  *(a1 + 8472) = 0;
  v3 = *(a1 + 10504);
  if (v3)
  {
    for (j = *(v3 + 512); j; *(v3 + 512) = j)
    {
      v5 = *(v3 + 520);
      v6 = *(v3 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v5 + 16));
      *v6 = *v5;
      *v5 = v6;
      os_unfair_lock_unlock((v5 + 16));
      j = (*(v3 + 512) - 1) & *(v3 + 512);
    }

    MEMORY[0x29ED520D0](v3, 0x1020C40C758419CLL);
  }

  v7 = *(a1 + 10488);
  if (v7)
  {
    for (k = *(v7 + 512); k; *(v7 + 512) = k)
    {
      v9 = *(v7 + 520);
      v10 = *(v7 + 8 * __clz(__rbit64(k)));
      os_unfair_lock_lock((v9 + 16));
      *v10 = *v9;
      *v9 = v10;
      os_unfair_lock_unlock((v9 + 16));
      k = (*(v7 + 512) - 1) & *(v7 + 512);
    }

    MEMORY[0x29ED520D0](v7, 0x1020C40C758419CLL);
  }

  v11 = *(a1 + 10512);
  if (v11)
  {
    for (m = *(v11 + 512); m; *(v11 + 512) = m)
    {
      v13 = *(v11 + 520);
      v14 = *(v11 + 8 * __clz(__rbit64(m)));
      os_unfair_lock_lock((v13 + 16));
      *v14 = *v13;
      *v13 = v14;
      os_unfair_lock_unlock((v13 + 16));
      m = (*(v11 + 512) - 1) & *(v11 + 512);
    }

    MEMORY[0x29ED520D0](v11, 0x1020C40C758419CLL);
  }

  v15 = *(a1 + 10496);
  if (v15)
  {
    for (n = *(v15 + 512); n; *(v15 + 512) = n)
    {
      v17 = *(v15 + 520);
      v18 = *(v15 + 8 * __clz(__rbit64(n)));
      os_unfair_lock_lock((v17 + 16));
      *v18 = *v17;
      *v17 = v18;
      os_unfair_lock_unlock((v17 + 16));
      n = (*(v15 + 512) - 1) & *(v15 + 512);
    }

    MEMORY[0x29ED520D0](v15, 0x1020C40C758419CLL);
  }

  v19 = *(a1 + 11544);
  if (v19)
  {
    *(a1 + 11552) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 11520);
  if (v20)
  {
    *(a1 + 11528) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 11496);
  if (v21)
  {
    *(a1 + 11504) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 11472);
  if (v22)
  {
    *(a1 + 11480) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 7648);
  if (v23)
  {
    do
    {
      v24 = *v23;
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  *(a1 + 7648) = 0;

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextB>::~PointerWithOnDemandObjectCreation((a1 + 5296));
  v25 = *(a1 + 5288);
  if (v25 == a1 + 5264)
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))(v25);
  }

  v26 = *(a1 + 5256);
  if (v26 == a1 + 5232)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))(v26);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextB>::~PointerWithOnDemandObjectCreation((a1 + 5088));
  v27 = *(a1 + 5080);
  if (v27 == a1 + 5056)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  v28 = *(a1 + 5048);
  if (v28 == a1 + 5024)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))(v28);
  }

  *(a1 + 3592) = 0;

  v29 = *(a1 + 2120);
  if (v29)
  {
    free(*v29);
    MEMORY[0x29ED520D0](v29, 0x1020C4014030ADELL);
  }

  v30 = *(a1 + 1824);
  v31 = *(a1 + 1832);
  if (v30 != v31)
  {
    do
    {
      v32 = *v30++;
      free(v32);
    }

    while (v30 != v31);
    v30 = *(a1 + 1824);
  }

  if (v30)
  {
    *(a1 + 1832) = v30;
    operator delete(v30);
  }

  return a1;
}

void sub_29CEFAAD8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 11544);
  if (v3)
  {
    *(v1 + 11552) = v3;
    operator delete(v3);
    v4 = *(v1 + 11520);
    if (!v4)
    {
LABEL_3:
      v5 = *(v1 + 11496);
      if (!v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = *(v1 + 11520);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 11528) = v4;
  operator delete(v4);
  v5 = *(v1 + 11496);
  if (!v5)
  {
LABEL_4:
    v6 = *(v1 + 11472);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v1 + 11504) = v5;
  operator delete(v5);
  v6 = *(v1 + 11472);
  if (!v6)
  {
LABEL_6:

    v7 = *(v1 + 7648);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    *(v1 + 7648) = 0;

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextB>::~PointerWithOnDemandObjectCreation((v1 + 5296));
    std::function<void ()(void *)>::~function(v1 + 5264);
    std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::~function(v1 + 5232);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextB>::~PointerWithOnDemandObjectCreation((v1 + 5088));
    std::function<void ()(void *)>::~function(v1 + 5056);
    std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function(v1 + 5024);
    *(v1 + 3592) = 0;

    AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader((v1 + 2120));
    AGX::HAL300::ContextCommon::~ContextCommon(v1);
    _Unwind_Resume(a1);
  }

LABEL_5:
  *(v1 + 11480) = v6;
  operator delete(v6);
  goto LABEL_6;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::appendSubEncoderToChain(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = (*a2 + 10544);
  v6 = (*a2 + 5368);
  if (*a2 != a1)
  {
    v7 = *(a1 + 7248);
    if (v7 == 1)
    {
      v10 = *(a1 + 456);
      *v10 = 2 * *(a1 + 7252);
      *(a1 + 456) = v10 + 1;
      *(a1 + 7248) = 2;
      *(*(a1 + 7232) + 8) = 2;
    }

    else if (!v7)
    {
      v8 = *(a1 + 7224);
      if (v8)
      {
        v9 = *(a1 + 7240);
        *v8 = BYTE4(v9) | 0x80000000;
        v8[1] = v9;
        *(a1 + 7224) = 0;
        *(a1 + 7240) = 0;
        ++*(a1 + 1952);
      }
    }
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = v11 == a1;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = **(a1 + 7664);
    v14 = *(v11 + 72);
    *(v11 + 72) = v14 + 1;
    *v14 = __ROR8__(v13, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
  }

  v15 = *(a1 + 7440);
  v16 = *(a2 + 7);
  if (*(a2 + 6) > v15)
  {
    v15 = *(a2 + 6);
  }

  *(a2 + 6) = v15;
  v17 = *(a1 + 7444);
  if (v16 > v17)
  {
    v17 = v16;
  }

  *(a2 + 7) = v17;
  v18 = *(a1 + 7448);
  v19 = *(a2 + 9);
  if (*(a2 + 8) > v18)
  {
    v18 = *(a2 + 8);
  }

  *(a2 + 8) = v18;
  v20 = *(a1 + 7452);
  if (v19 > v20)
  {
    v20 = v19;
  }

  *(a2 + 9) = v20;
  v21 = *(a1 + 7456);
  v22 = *(a2 + 11);
  if (*(a2 + 10) > v21)
  {
    v21 = *(a2 + 10);
  }

  *(a2 + 10) = v21;
  v23 = *(a1 + 7460);
  if (v22 > v23)
  {
    v23 = v22;
  }

  *(a2 + 11) = v23;
  v24 = *(a1 + 7464);
  v25 = *(a2 + 13);
  if (*(a2 + 12) > v24)
  {
    v24 = *(a2 + 12);
  }

  *(a2 + 12) = v24;
  v26 = *(a1 + 7468);
  if (v25 > v26)
  {
    v26 = v25;
  }

  *(a2 + 13) = v26;
  v27 = *(a1 + 7472);
  v28 = *(a2 + 15);
  if (*(a2 + 14) > v27)
  {
    v27 = *(a2 + 14);
  }

  *(a2 + 14) = v27;
  v29 = *(a1 + 7476);
  if (v28 > v29)
  {
    v29 = v28;
  }

  *(a2 + 15) = v29;
  v30 = *(a1 + 7480);
  v31 = *(a2 + 17);
  if (*(a2 + 16) > v30)
  {
    v30 = *(a2 + 16);
  }

  *(a2 + 16) = v30;
  v32 = *(a1 + 7484);
  if (v31 > v32)
  {
    v32 = v31;
  }

  *(a2 + 17) = v32;
  v33 = *(a1 + 7488);
  if (*(a2 + 18) > v33)
  {
    v33 = *(a2 + 18);
  }

  *(a2 + 18) = v33;
  v34 = *(a1 + 7544);
  v35 = *(a2 + 33);
  if (*(a2 + 32) > v34)
  {
    v34 = *(a2 + 32);
  }

  *(a2 + 32) = v34;
  v36 = *(a1 + 7548);
  if (v35 > v36)
  {
    v36 = v35;
  }

  *(a2 + 33) = v36;
  v37 = *(a1 + 7552);
  v38 = *(a2 + 35);
  if (*(a2 + 34) > v37)
  {
    v37 = *(a2 + 34);
  }

  *(a2 + 34) = v37;
  v39 = *(a1 + 7556);
  if (v38 > v39)
  {
    v39 = v38;
  }

  *(a2 + 35) = v39;
  v40 = *(a1 + 7560);
  v41 = *(a2 + 37);
  if (*(a2 + 36) > v40)
  {
    v40 = *(a2 + 36);
  }

  *(a2 + 36) = v40;
  v42 = *(a1 + 7564);
  if (v41 > v42)
  {
    v42 = v41;
  }

  *(a2 + 37) = v42;
  v43 = *(a1 + 7568);
  v44 = *(a2 + 39);
  if (*(a2 + 38) > v43)
  {
    v43 = *(a2 + 38);
  }

  *(a2 + 38) = v43;
  v45 = *(a1 + 7572);
  if (v44 > v45)
  {
    v45 = v44;
  }

  *(a2 + 39) = v45;
  v46 = *(a1 + 7576);
  v47 = *(a2 + 41);
  if (*(a2 + 40) > v46)
  {
    v46 = *(a2 + 40);
  }

  *(a2 + 40) = v46;
  v48 = *(a1 + 7580);
  if (v47 > v48)
  {
    v48 = v47;
  }

  *(a2 + 41) = v48;
  v49 = *(a1 + 7584);
  v50 = *(a2 + 43);
  if (*(a2 + 42) > v49)
  {
    v49 = *(a2 + 42);
  }

  *(a2 + 42) = v49;
  v51 = *(a1 + 7588);
  if (v50 > v51)
  {
    v51 = v50;
  }

  *(a2 + 43) = v51;
  v52 = *(a1 + 7592);
  if (*(a2 + 44) > v52)
  {
    v52 = *(a2 + 44);
  }

  *(a2 + 44) = v52;
  v6[33] |= *(a1 + 5401);
  *v6 |= *(a1 + 5368);
  *(v4 + 7178) = *(a1 + 7178);
  *(v4 + 7176) |= *(a1 + 7176);
  v6[1887] |= *(a1 + 7255);
  *v5 |= *(a1 + 10544);
  if (v4 != a1)
  {
    *(v4 + 10552) += *(a1 + 10552);
    *(v4 + 1956) += *(a1 + 1956);
    *(v4 + 1960) &= *(a1 + 1960);
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v4 + 11088), (a1 + 11088));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v4 + 11208), (a1 + 11208));
    v53 = *(v4 + 7664);
    v54 = *(a1 + 7664);
    v55 = *(v54 + 1620);
    if (v55 == 2 || v55 == 1 && !*(v53 + 1620))
    {
      *(v53 + 1620) = v55;
    }

    v56 = *(v54 + 600);
    if (v56 == 2 || v56 == 1 && !*(v53 + 600))
    {
      *(v53 + 600) = v56;
    }

    *(v53 + 1612) |= *(v54 + 1612);
    *(v53 + 580) |= *(v54 + 580);
    *(v53 + 1613) |= *(v54 + 1613);
    *(v53 + 581) |= *(v54 + 581);
    *(v53 + 1616) |= *(v54 + 1616);
    *(v53 + 584) |= *(v54 + 584);
    *(v53 + 578) |= *(v54 + 578);
    *(v53 + 1168) |= *(v54 + 1168) & 0x10000;
  }

  v57 = *(v4 + 2656);
  if (v57 <= *(a1 + 2656))
  {
    v57 = *(a1 + 2656);
  }

  *(v4 + 2656) = v57;
  a2[1] = a1;
}

void sub_29CEFD1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
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

uint64_t AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(v1 + 1872) + 848);
  v3 = *(*(result + 56) + 240);
  v4 = *(*(result + 56) + 248);
  v6 = *(*(result + 56) + 256);
  v5 = *(*(result + 56) + 264);
  v7 = *(*(result + 56) + 272);
  *(v1 + 10472) |= 0x3BuLL;
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

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawIndexedPrimitives(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(a1);
  v17 = *(a1 + 48);
  if (((*(*(v17 + 7672) + 2480) | *(*(v17 + 7672) + 2432)) & 0x700000000000) != 0)
  {
    *(v17 + 10088) |= 0x700000000000uLL;
    *(v17 + 10472) |= 0x40uLL;
    *(*(v17 + 8480) + 160) = a4;
    v18 = *(v17 + 168);
    v19 = v18 + 2;
    if ((v18 + 2) > *(v17 + 160))
    {
      v34 = AGX::DataBufferAllocator<44ul>::growNoInline(v17 + 24, 3, 0);
      v18 = *(v17 + 168);
      if (!v34)
      {
        goto LABEL_4;
      }

      v19 = v18 + 2;
      if ((v18 + 2) > *(v17 + 160))
      {
        abort();
      }
    }

    *(v17 + 176) = v19;
LABEL_4:
    v20 = v18 + *(v17 + 184);
    *(v17 + 168) = v18 + 2;
    v21 = *(v17 + 8480);
    *(v21 + 144) = v20;
    *(v21 + 152) = v20 + 4;
    *v18 = a9;
    v18[1] = a4;
    v22 = *(*(v17 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v17 + 8600) = v22;
    *(v17 + 8592) = v22;
  }

  v23 = (a8 + 3) >> 2;
  if ((*(v17 + 7401) & 1) == 0)
  {
    *(v17 + 7401) = 1;
    *(v17 + 10472) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v17, a2);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v17, *(v17 + 7672), *(v17 + 7680), *(v17 + 8472), *(v17 + 9744), v17 + 10088, 0);
  if (*(*(v17 + 2392) + 4907) == 1)
  {
    v24 = 0x114u >> a2;
    if (a2 >= 9)
    {
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    LOBYTE(v24) = *(v17 + 7403);
  }

  LODWORD(v25) = *(v17 + 7404);
  if (v25 >= 0xFFFF)
  {
    v26 = 0xFFFF;
  }

  else
  {
    v26 = *(v17 + 7404);
  }

  if (a6 == 1)
  {
    v25 = v25;
  }

  else
  {
    v25 = v26;
  }

  v27 = *(v17 + 72);
  *v27 = (v25 << 32) | 0x40000001;
  if (v24)
  {
    v28 = 0x10000;
  }

  else
  {
    v28 = 0;
  }

  *(v27 + 8) = BYTE4(a7) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a2] + (a6 << 17)) & 0xFFEEFF00 | v28 | 0x100000;
  *(v27 + 12) = a7;
  *(v27 + 16) = a3;
  *(v27 + 20) = a5;
  *(v27 + 24) = a9;
  *(v27 + 28) = v23 - 1;
  *(v27 + 32) = BYTE5(a7);
  *(v17 + 72) = v27 + 36;
  ++*(v17 + 1940);
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

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      a3 /= 3u;
      goto LABEL_37;
    }

    if (a2 != 4)
    {
      goto LABEL_37;
    }

LABEL_30:
    a3 -= 2;
    goto LABEL_37;
  }

  if (a2 <= 7)
  {
    if (a2 != 6)
    {
      a3 >>= 2;
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  if (a2 == 8)
  {
    a3 = ((a3 - 4) >> 1) + 1;
  }

  else if (a2 == 9)
  {
    a3 /= 3u;
  }

LABEL_37:
  *(v17 + 1956) += a3 * a5;
  if (*(a1 + 64) == 1)
  {
    v29 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v30 = *(a1 + 48);
    v31 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v30 + 7688), v29);
    v32 = *(v30 + 2120);
    if (v32)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v32, v29, v31);
      *(*(v30 + 2120) + 8) = 0;
    }

    v33 = *(a1 + 8);

    [v33 addObject:v29];
  }
}

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(a1);
  v8 = *(a1 + 48);
  v9 = *a2;
  v17 = a2[1].i64[0];
  v10 = a3[1];
  v15[0] = *a3;
  v15[1] = v10;
  v15[2] = a3[2];
  v16 = v9;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(v8, &v16, v15, a4);
  if (*(a1 + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = *(a1 + 48);
    v13 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 7688), v11);
    v14 = *(v12 + 2120);
    if (v14)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v14, v11, v13);
      *(*(v12 + 2120) + 8) = 0;
    }

    [*(a1 + 8) addObject:v11];
  }
}

void AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawPrimitives(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(a1);
  v12 = *(a1 + 48);
  if (*(v12 + 7256))
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (((*(*(v12 + 7672) + 2480) | *(*(v12 + 7672) + 2432)) & 0x700000000000) != 0)
  {
    *(v12 + 10088) |= 0x700000000000uLL;
    *(v12 + 10472) |= 0x40uLL;
    *(*(v12 + 8480) + 160) = a5;
    v14 = *(v12 + 168);
    v15 = v14 + 2;
    if ((v14 + 2) > *(v12 + 160))
    {
      v33 = AGX::DataBufferAllocator<44ul>::growNoInline(v12 + 24, 3, 0);
      v14 = *(v12 + 168);
      if (!v33)
      {
        goto LABEL_7;
      }

      v15 = v14 + 2;
      if ((v14 + 2) > *(v12 + 160))
      {
        abort();
      }
    }

    *(v12 + 176) = v15;
LABEL_7:
    v16 = v14 + *(v12 + 184);
    *(v12 + 168) = v14 + 2;
    v17 = *(v12 + 8480);
    *(v17 + 144) = v16;
    *(v17 + 152) = v16 + 4;
    *v14 = v13;
    v14[1] = a5;
    v18 = *(*(v12 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v12 + 8600) = v18;
    *(v12 + 8592) = v18;
  }

  if (*(v12 + 7401) == 1)
  {
    *(v12 + 7401) = 0;
    *(v12 + 10472) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v12, a2);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v12, *(v12 + 7672), *(v12 + 7680), *(v12 + 8472), *(v12 + 9744), v12 + 10088, 0);
  LODWORD(v19) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a2] & 0xFFFEFFFF;
  DWORD1(v19) = a4;
  *(&v19 + 1) = __PAIR64__(a3, a6);
  v20 = *(v12 + 72);
  *v20 = v19;
  *(v12 + 72) = v20 + 1;
  ++*(v12 + 1940);
  v21 = a4 / 3;
  if (a2 == 9)
  {
    v22 = a4 / 3;
  }

  else
  {
    v22 = a4;
  }

  if (a2 == 8)
  {
    v23 = ((a4 - 4) >> 1) + 1;
  }

  else
  {
    v23 = v22;
  }

  v24 = a4 - 2;
  v25 = a4 >> 2;
  if (a2 != 7)
  {
    v25 = a4;
  }

  if (a2 == 6)
  {
    v25 = a4 - 2;
  }

  if (a2 <= 7)
  {
    v23 = v25;
  }

  if (a2 != 4)
  {
    v24 = a4;
  }

  if (a2 != 3)
  {
    v21 = v24;
  }

  v26 = a4 >> 1;
  v27 = a4 - 1;
  if (a2 != 2)
  {
    v27 = a4;
  }

  if (a2 != 1)
  {
    v26 = v27;
  }

  if (a2 <= 2)
  {
    v21 = v26;
  }

  if (a2 <= 5)
  {
    v23 = v21;
  }

  *(v12 + 1956) += v23 * a6;
  if (*(a1 + 64) == 1)
  {
    v28 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v29 = *(a1 + 48);
    v30 = *(a1 + 16);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v29 + 7688), v28);
    v31 = *(v29 + 2120);
    if (v31)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v31, v28, v30);
      *(*(v29 + 2120) + 8) = 0;
    }

    v32 = *(a1 + 8);

    [v32 addObject:v28];
  }
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::appendSubEncoderToChain(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 + 78552;
  v6 = *a2 + 28032;
  if (*a2 != a1)
  {
    v7 = *(a1 + 29912);
    if (v7 == 1)
    {
      v10 = *(a1 + 456);
      *v10 = 2 * *(a1 + 29916);
      *(a1 + 456) = v10 + 1;
      *(a1 + 29912) = 2;
      *(*(a1 + 29896) + 8) = 2;
    }

    else if (!v7)
    {
      v8 = *(a1 + 29888);
      if (v8)
      {
        v9 = *(a1 + 29904);
        *v8 = BYTE4(v9) | 0x80000000;
        v8[1] = v9;
        *(a1 + 29888) = 0;
        *(a1 + 29904) = 0;
        ++*(a1 + 1952);
      }
    }
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = v11 == a1;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = **(a1 + 30328);
    v14 = *(v11 + 72);
    *(v11 + 72) = v14 + 1;
    *v14 = __ROR8__(v13, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
  }

  v15 = *(a1 + 30104);
  v16 = *(a2 + 7);
  if (*(a2 + 6) > v15)
  {
    v15 = *(a2 + 6);
  }

  *(a2 + 6) = v15;
  v17 = *(a1 + 30108);
  if (v16 > v17)
  {
    v17 = v16;
  }

  *(a2 + 7) = v17;
  v18 = *(a1 + 30112);
  v19 = *(a2 + 9);
  if (*(a2 + 8) > v18)
  {
    v18 = *(a2 + 8);
  }

  *(a2 + 8) = v18;
  v20 = *(a1 + 30116);
  if (v19 > v20)
  {
    v20 = v19;
  }

  *(a2 + 9) = v20;
  v21 = *(a1 + 30120);
  v22 = *(a2 + 11);
  if (*(a2 + 10) > v21)
  {
    v21 = *(a2 + 10);
  }

  *(a2 + 10) = v21;
  v23 = *(a1 + 30124);
  if (v22 > v23)
  {
    v23 = v22;
  }

  *(a2 + 11) = v23;
  v24 = *(a1 + 30128);
  v25 = *(a2 + 13);
  if (*(a2 + 12) > v24)
  {
    v24 = *(a2 + 12);
  }

  *(a2 + 12) = v24;
  v26 = *(a1 + 30132);
  if (v25 > v26)
  {
    v26 = v25;
  }

  *(a2 + 13) = v26;
  v27 = *(a1 + 30136);
  v28 = *(a2 + 15);
  if (*(a2 + 14) > v27)
  {
    v27 = *(a2 + 14);
  }

  *(a2 + 14) = v27;
  v29 = *(a1 + 30140);
  if (v28 > v29)
  {
    v29 = v28;
  }

  *(a2 + 15) = v29;
  v30 = *(a1 + 30144);
  v31 = *(a2 + 17);
  if (*(a2 + 16) > v30)
  {
    v30 = *(a2 + 16);
  }

  *(a2 + 16) = v30;
  v32 = *(a1 + 30148);
  if (v31 > v32)
  {
    v32 = v31;
  }

  *(a2 + 17) = v32;
  v33 = *(a1 + 30152);
  if (*(a2 + 18) > v33)
  {
    v33 = *(a2 + 18);
  }

  *(a2 + 18) = v33;
  v34 = *(a1 + 30208);
  v35 = *(a2 + 33);
  if (*(a2 + 32) > v34)
  {
    v34 = *(a2 + 32);
  }

  *(a2 + 32) = v34;
  v36 = *(a1 + 30212);
  if (v35 > v36)
  {
    v36 = v35;
  }

  *(a2 + 33) = v36;
  v37 = *(a1 + 30216);
  v38 = *(a2 + 35);
  if (*(a2 + 34) > v37)
  {
    v37 = *(a2 + 34);
  }

  *(a2 + 34) = v37;
  v39 = *(a1 + 30220);
  if (v38 > v39)
  {
    v39 = v38;
  }

  *(a2 + 35) = v39;
  v40 = *(a1 + 30224);
  v41 = *(a2 + 37);
  if (*(a2 + 36) > v40)
  {
    v40 = *(a2 + 36);
  }

  *(a2 + 36) = v40;
  v42 = *(a1 + 30228);
  if (v41 > v42)
  {
    v42 = v41;
  }

  *(a2 + 37) = v42;
  v43 = *(a1 + 30232);
  v44 = *(a2 + 39);
  if (*(a2 + 38) > v43)
  {
    v43 = *(a2 + 38);
  }

  *(a2 + 38) = v43;
  v45 = *(a1 + 30236);
  if (v44 > v45)
  {
    v45 = v44;
  }

  *(a2 + 39) = v45;
  v46 = *(a1 + 30240);
  v47 = *(a2 + 41);
  if (*(a2 + 40) > v46)
  {
    v46 = *(a2 + 40);
  }

  *(a2 + 40) = v46;
  v48 = *(a1 + 30244);
  if (v47 > v48)
  {
    v48 = v47;
  }

  *(a2 + 41) = v48;
  v49 = *(a1 + 30248);
  v50 = *(a2 + 43);
  if (*(a2 + 42) > v49)
  {
    v49 = *(a2 + 42);
  }

  *(a2 + 42) = v49;
  v51 = *(a1 + 30252);
  if (v50 > v51)
  {
    v51 = v50;
  }

  *(a2 + 43) = v51;
  v52 = *(a1 + 30256);
  if (*(a2 + 44) > v52)
  {
    v52 = *(a2 + 44);
  }

  *(a2 + 44) = v52;
  *(v6 + 33) |= *(a1 + 28065);
  *v6 |= *(a1 + 28032);
  *(v6 + 1810) = *(a1 + 29842);
  *(v6 + 1808) |= *(a1 + 29840);
  *(v6 + 1887) |= *(a1 + 29919);
  *v5 |= *(a1 + 78552);
  if (v4 != a1)
  {
    *(v5 + 8) += *(a1 + 78560);
    *(v4 + 1956) += *(a1 + 1956);
    *(v4 + 1960) &= *(a1 + 1960);
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v4 + 79096), (a1 + 79096));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v4 + 79216), (a1 + 79216));
    v53 = *(v4 + 30328);
    v54 = *(a1 + 30328);
    v55 = *(v54 + 1620);
    if (v55 == 2 || v55 == 1 && !*(v53 + 1620))
    {
      *(v53 + 1620) = v55;
    }

    v56 = *(v54 + 600);
    if (v56 == 2 || v56 == 1 && !*(v53 + 600))
    {
      *(v53 + 600) = v56;
    }

    *(v53 + 1612) |= *(v54 + 1612);
    *(v53 + 580) |= *(v54 + 580);
    *(v53 + 1613) |= *(v54 + 1613);
    *(v53 + 581) |= *(v54 + 581);
    *(v53 + 1616) |= *(v54 + 1616);
    *(v53 + 584) |= *(v54 + 584);
    *(v53 + 578) |= *(v54 + 578);
    *(v53 + 1168) |= *(v54 + 1168) & 0x10000;
  }

  v57 = *(v4 + 2656);
  if (v57 <= *(a1 + 2656))
  {
    v57 = *(a1 + 2656);
  }

  *(v4 + 2656) = v57;
  a2[1] = a1;
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F9400;
  v13 = 20;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F9400;
  LODWORD(v7) = 20;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F9400, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F9400;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F9400;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CEFF350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F9440;
  v13 = 21;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F9440;
  LODWORD(v7) = 21;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F9440, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F9440;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F9440;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CEFF52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v8[0] = 0;
  v9 = 0;
  ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, v8, &v9);
  v8[7] = a4;
  v8[8] = v6;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 24);
  if (v8 && *(v8 + 120) == 1)
  {
    v9 = [objc_msgSend(a3 "binaryArchives")];
    v10 = 0x200000000000;
    if (!v9)
    {
      v10 = 1;
    }

    atomic_fetch_or(v8, v10);
    v11 = *(a1 + 24);
    v12 = [a3 destinationBinaryArchive];
    v13 = 0x400000000000;
    if (!v12)
    {
      v13 = 1;
    }

    atomic_fetch_or(v11, v13);
  }

  if ([a3 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [a3 setUseAIRNTInterfaces:0];
    }
  }

  v31 = 0;
  v32 = 0;
  (*(*a2 + 16))(a2, &v32, &v31);
  v14 = dispatch_data_create(v32, v31, 0, 0);
  [a3 setDriverKeyData:v14];
  if ([a3 airScript])
  {
    v29 = 0;
    v30 = 0;
    object = dispatch_data_create_map([a3 airScript], &v29, &v30);
    v15 = v29;
    v16 = *v29;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v15 + v16), &data, len, v17, v18))
    {
      v19 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v19);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v36;
    [a3 setVendorPluginFunctionId:&c];
  }

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v27[3] = &unk_29F3422D0;
  v27[4] = a3;
  v27[5] = a4;
  if ([a3 function])
  {
    v20 = mach_absolute_time();
    v21 = *a1;
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v25[3] = &unk_29F342320;
    v25[4] = v27;
    v25[5] = v20;
    [v21 compileFunctionRequest:a3 compilerTask:0 completionHandler:v25];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v26[3] = &unk_29F3422F8;
    v26[4] = v27;
    v22 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v23 = *a1;
    v24 = [a3 driverKeyData];
    if (v22)
    {
      [v23 compileRequest:v24 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v26}];
    }

    else
    {
      [v23 compileRequest:v24 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v26}];
    }
  }

  dispatch_release(v14);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CEFFE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[4] = &unk_2A23F9440;
  v1 = a1[6];
  if (v1)
  {
    a1[7] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 32) = &unk_2A23F9440;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v8[0] = 0;
  v9 = 0;
  ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, v8, &v9);
  v8[7] = a4;
  v8[8] = v6;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 24);
  if (v8 && *(v8 + 120) == 1)
  {
    v9 = [objc_msgSend(a3 "binaryArchives")];
    v10 = 0x200000000000;
    if (!v9)
    {
      v10 = 1;
    }

    atomic_fetch_or(v8, v10);
    v11 = *(a1 + 24);
    v12 = [a3 destinationBinaryArchive];
    v13 = 0x400000000000;
    if (!v12)
    {
      v13 = 1;
    }

    atomic_fetch_or(v11, v13);
  }

  if ([a3 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [a3 setUseAIRNTInterfaces:0];
    }
  }

  v31 = 0;
  v32 = 0;
  (*(*a2 + 16))(a2, &v32, &v31);
  v14 = dispatch_data_create(v32, v31, 0, 0);
  [a3 setDriverKeyData:v14];
  if ([a3 airScript])
  {
    v29 = 0;
    v30 = 0;
    object = dispatch_data_create_map([a3 airScript], &v29, &v30);
    v15 = v29;
    v16 = *v29;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v15 + v16), &data, len, v17, v18))
    {
      v19 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v19);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v36;
    [a3 setVendorPluginFunctionId:&c];
  }

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v27[3] = &unk_29F3422D0;
  v27[4] = a3;
  v27[5] = a4;
  if ([a3 function])
  {
    v20 = mach_absolute_time();
    v21 = *a1;
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v25[3] = &unk_29F342320;
    v25[4] = v27;
    v25[5] = v20;
    [v21 compileFunctionRequest:a3 compilerTask:0 completionHandler:v25];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v26[3] = &unk_29F3422F8;
    v26[4] = v27;
    v22 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v23 = *a1;
    v24 = [a3 driverKeyData];
    if (v22)
    {
      [v23 compileRequest:v24 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v26}];
    }

    else
    {
      [v23 compileRequest:v24 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v26}];
    }
  }

  dispatch_release(v14);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CF008F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[4] = &unk_2A23F9400;
  v1 = a1[6];
  if (v1)
  {
    a1[7] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 32) = &unk_2A23F9400;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(uint64_t a1, unint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(a1 + 48);
  if (v7)
  {
    *a2 = __ROR8__(v7, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(*(a1 + 24), 5u);
    v8 = *(a1 + 24);
    ++*a4;
    v9 = *(v8 + 112);
    *v9 = 553648480;
    *(v8 + 112) = v9 + 1;
    v10 = *(a1 + 24);
    v11 = *(v10 + 112);
    *v11 = __ROR8__(*(a1 + 56), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    *(v10 + 112) = v11 + 1;
    *(a1 + 48) = 0;
  }

  else
  {
    *a2 = __ROR8__(*(a1 + 56), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
  }

  result = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(*(a1 + 24), 3u);
  v13 = *(a1 + 24);
  ++*a4;
  v14 = *(v13 + 80);
  *v14 = 553650528;
  *(v13 + 80) = v14 + 1;
  v15 = *(a1 + 24);
  v16 = *(v15 + 80);
  *v16 = __ROR8__(a3, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
  *(v15 + 80) = v16 + 1;
  v17 = *(a1 + 72);
  if (v17)
  {
    *(v17 + 4) = *(a1 + 64);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F9400;
  v13 = 20;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F9400;
  LODWORD(v7) = 20;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken20ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F9400, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken20ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F9400;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F9400;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CF00D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F9440;
  v13 = 21;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F9440;
  LODWORD(v7) = 21;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken21ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F9440, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken21ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F9440;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F9440;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CF00F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v8[0] = 0;
  v9 = 0;
  ProgramKey<(_AGCStreamToken)21,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, v8, &v9);
  v8[7] = a4;
  v8[8] = v6;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v8[0] = 0;
  v9 = 0;
  ProgramKey<(_AGCStreamToken)20,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, v8, &v9);
  v8[7] = a4;
  v8[8] = v6;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::RenderPipeline(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 733) = 0;
  *(a1 + 744) = 0x3F80000000000001;
  *(a1 + 752) = 0x1FFFFFFFFLL;
  *(a1 + 760) = 1;
  *(a1 + 764) = xmmword_29D2F2570;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 780) = 0;
  *(a1 + 787) = 0;
  *(a1 + 800) = xmmword_29D2F2560;
  *(a1 + 816) = 0x84000200000000;
  *(a1 + 828) = 128;
  *(a1 + 824) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 924) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1116) = 0u;
  *(a1 + 1132) = 0xFFFFFFFF00000001;
  *(a1 + 1140) = 1610612736;
  *(a1 + 1164) = 0u;
  *(a1 + 1180) = 0u;
  *(a1 + 1148) = 0u;
  *(a1 + 1244) = -1;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *(a1 + 1212) = v1;
  *(a1 + 1228) = v1;
  *(a1 + 1196) = v1;
  *(a1 + 1260) = 0;
  *(a1 + 1252) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 1024;
  *(a1 + 1292) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1428) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1444) = 0xFFFFFFFF00000001;
  *(a1 + 1452) = 1610612736;
  *(a1 + 1476) = 0u;
  *(a1 + 1492) = 0u;
  *(a1 + 1460) = 0u;
  *(a1 + 1556) = -1;
  *(a1 + 1524) = v1;
  *(a1 + 1540) = v1;
  *(a1 + 1508) = v1;
  *(a1 + 1572) = 0;
  *(a1 + 1564) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1576) = 0u;
  *(a1 + 1600) = 1024;
  *(a1 + 1604) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1740) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1756) = 0xFFFFFFFF00000001;
  *(a1 + 1764) = 1610612736;
  *(a1 + 1788) = 0u;
  *(a1 + 1804) = 0u;
  *(a1 + 1772) = 0u;
  *(a1 + 1868) = -1;
  *(a1 + 1836) = v1;
  *(a1 + 1852) = v1;
  *(a1 + 1820) = v1;
  *(a1 + 1884) = 0;
  *(a1 + 1876) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1888) = 0u;
  *(a1 + 1912) = 1024;
  *(a1 + 1916) = 0;
  *(a1 + 1920) = 0;
  *(a1 + 2052) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 2068) = 0xFFFFFFFF00000001;
  *(a1 + 2076) = 1610612736;
  *(a1 + 2100) = 0u;
  *(a1 + 2116) = 0u;
  *(a1 + 2084) = 0u;
  *(a1 + 2180) = -1;
  *(a1 + 2148) = v1;
  *(a1 + 2164) = v1;
  *(a1 + 2132) = v1;
  *(a1 + 2196) = 0;
  *(a1 + 2188) = 0;
  *(a1 + 2216) = 0;
  *(a1 + 2200) = 0u;
  *(a1 + 2224) = 1024;
  *(a1 + 2228) = 0;
  *(a1 + 2232) = 0;
  *(a1 + 2364) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2380) = 0xFFFFFFFF00000001;
  *(a1 + 2388) = 1610612736;
  *(a1 + 2412) = 0u;
  *(a1 + 2428) = 0u;
  *(a1 + 2396) = 0u;
  *(a1 + 2492) = -1;
  *(a1 + 2460) = v1;
  *(a1 + 2476) = v1;
  *(a1 + 2444) = v1;
  *(a1 + 2508) = 0;
  *(a1 + 2500) = 0;
  *(a1 + 2528) = 0;
  *(a1 + 2512) = 0u;
  *(a1 + 2536) = 1024;
  *(a1 + 2540) = 0;
  *(a1 + 2544) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2744) = 1065353216;
  *(a1 + 2768) = 0u;
  *(a1 + 2752) = 0u;
  *(a1 + 2784) = 1065353216;
  *(a1 + 2792) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 1065353216;
  *(a1 + 2848) = 0u;
  *(a1 + 2832) = 0u;
  *(a1 + 2864) = 1065353216;
  *(a1 + 2872) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 1065353216;
  *(a1 + 2928) = 0u;
  *(a1 + 2912) = 0u;
  *(a1 + 2944) = 1065353216;
  *(a1 + 2952) = 0u;
  *(a1 + 2968) = 0u;
  *(a1 + 2984) = 1065353216;
  *(a1 + 3008) = 0u;
  *(a1 + 2992) = 0u;
  *(a1 + 3024) = 1065353216;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 1065353216;
  *(a1 + 3088) = 0u;
  *(a1 + 3072) = 0u;
  *(a1 + 3104) = 1065353216;
  operator new();
}

void sub_29CF018C8(_Unwind_Exception *a1)
{
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3112);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3072);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v6);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 2992);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v5);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 2912);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v4);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2832);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v3);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2752);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2712);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2688));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2664));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2640));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2616));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2592));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 2280));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1968));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1656));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1344));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1032));
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::~RangeAllocation(v2);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>>::~unique_ptr[abi:nn200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>::~SpecializableRenderPipelineLinkerState(v2);
    MEMORY[0x29ED520D0](v4, 0x1020C40A5277CF4);
    return v3;
  }

  return v1;
}

void *AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>::~SpecializableRenderPipelineLinkerState(void *a1)
{
  for (i = 0; i != 32; i += 2)
  {
    v3 = a1[i];
    v4 = a1[i + 1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v3);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return std::array<std::shared_ptr<AGX::HAL300::DynamicLibrary>,16ul>::~array(a1);
}

void *std::array<std::shared_ptr<AGX::HAL300::DynamicLibrary>,16ul>::~array(void *a1)
{
  v2 = a1[31];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[29];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[27];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[25];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[23];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[21];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[19];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[17];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = a1[15];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[13];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[11];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[9];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[7];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = a1[5];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[3];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = a1[1];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  return a1;
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~RenderPipeline(uint64_t a1)
{
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::destroy(a1);
  v2 = *(a1 + 3696);
  *(a1 + 3696) = 0;
  if (v2)
  {
    v3 = AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>::~SpecializableRenderPipelineLinkerState(v2);
    MEMORY[0x29ED520D0](v3, 0x1020C40A5277CF4);
  }

  v4 = *(a1 + 3688);
  *(a1 + 3688) = 0;
  if (v4)
  {
    MEMORY[0x29ED520D0](v4, 0x1000C4016825A26);
  }

  v5 = *(a1 + 3664);
  if (v5)
  {
    *(a1 + 3672) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 3640);
  *(a1 + 3640) = 0;
  if (v6)
  {
    if (*(v6 + 64) && *(v6 + 24))
    {
      v7 = *(v6 + 32);
      v8 = *(v7 + 16);
      v115 = MEMORY[0x29EDCA5F8];
      v116 = 3221225472;
      v117 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v118 = &__block_descriptor_48_e5_v8__0l;
      v119 = v7;
      v120 = v6;
      dispatch_sync(v8, &v115);
      *(v6 + 25) = 0u;
      *v6 = 0u;
      *(v6 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v6, 0x1070C4082A93E96);
  }

  v9 = *(a1 + 3632);
  *(a1 + 3632) = 0;
  if (v9)
  {
    if (*(v9 + 64) && *(v9 + 24))
    {
      v10 = *(v9 + 32);
      v11 = *(v10 + 16);
      v115 = MEMORY[0x29EDCA5F8];
      v116 = 3221225472;
      v117 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v118 = &__block_descriptor_48_e5_v8__0l;
      v119 = v10;
      v120 = v9;
      dispatch_sync(v11, &v115);
      *(v9 + 25) = 0u;
      *v9 = 0u;
      *(v9 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v9, 0x1070C4082A93E96);
  }

  v12 = *(a1 + 3624);
  *(a1 + 3624) = 0;
  if (v12)
  {
    if (*(v12 + 64) && *(v12 + 24))
    {
      v13 = *(v12 + 32);
      v14 = *(v13 + 16);
      v115 = MEMORY[0x29EDCA5F8];
      v116 = 3221225472;
      v117 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v118 = &__block_descriptor_48_e5_v8__0l;
      v119 = v13;
      v120 = v12;
      dispatch_sync(v14, &v115);
      *(v12 + 25) = 0u;
      *v12 = 0u;
      *(v12 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v12, 0x1070C4082A93E96);
  }

  v15 = *(a1 + 3616);
  *(a1 + 3616) = 0;
  if (v15)
  {
    if (*(v15 + 64) && *(v15 + 24))
    {
      v16 = *(v15 + 32);
      v17 = *(v16 + 16);
      v115 = MEMORY[0x29EDCA5F8];
      v116 = 3221225472;
      v117 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v118 = &__block_descriptor_48_e5_v8__0l;
      v119 = v16;
      v120 = v15;
      dispatch_sync(v17, &v115);
      *(v15 + 25) = 0u;
      *v15 = 0u;
      *(v15 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v15, 0x1070C4082A93E96);
  }

  v18 = *(a1 + 3608);
  *(a1 + 3608) = 0;
  if (v18)
  {
    if (*(v18 + 64) && *(v18 + 24))
    {
      v19 = *(v18 + 32);
      v20 = *(v19 + 16);
      v115 = MEMORY[0x29EDCA5F8];
      v116 = 3221225472;
      v117 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v118 = &__block_descriptor_48_e5_v8__0l;
      v119 = v19;
      v120 = v18;
      dispatch_sync(v20, &v115);
      *(v18 + 25) = 0u;
      *v18 = 0u;
      *(v18 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v18, 0x1070C4082A93E96);
  }

  v21 = *(a1 + 3600);
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(a1 + 3584);
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(a1 + 3568);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(a1 + 3552);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a1 + 3536);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(a1 + 3504);
  if (v26)
  {
    v27 = *(a1 + 3512);
    v28 = *(a1 + 3504);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a1 + 3504);
    }

    *(a1 + 3512) = v26;
    operator delete(v28);
  }

  v30 = *(a1 + 3480);
  if (v30)
  {
    v31 = *(a1 + 3488);
    v32 = *(a1 + 3480);
    if (v31 != v30)
    {
      do
      {
        v33 = *(v31 - 8);
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v31 -= 16;
      }

      while (v31 != v30);
      v32 = *(a1 + 3480);
    }

    *(a1 + 3488) = v30;
    operator delete(v32);
  }

  v34 = *(a1 + 3456);
  if (v34)
  {
    v35 = *(a1 + 3464);
    v36 = *(a1 + 3456);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 8);
        if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v35 -= 16;
      }

      while (v35 != v34);
      v36 = *(a1 + 3456);
    }

    *(a1 + 3464) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 3432);
  if (v38)
  {
    v39 = *(a1 + 3440);
    v40 = *(a1 + 3432);
    if (v39 != v38)
    {
      do
      {
        v41 = *(v39 - 8);
        if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
        }

        v39 -= 16;
      }

      while (v39 != v38);
      v40 = *(a1 + 3432);
    }

    *(a1 + 3440) = v38;
    operator delete(v40);
  }

  v42 = *(a1 + 3408);
  if (v42)
  {
    v43 = *(a1 + 3416);
    v44 = *(a1 + 3408);
    if (v43 != v42)
    {
      do
      {
        v45 = *(v43 - 8);
        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v45->__on_zero_shared)(v45);
          std::__shared_weak_count::__release_weak(v45);
        }

        v43 -= 16;
      }

      while (v43 != v42);
      v44 = *(a1 + 3408);
    }

    *(a1 + 3416) = v42;
    operator delete(v44);
  }

  v46 = *(a1 + 3160);
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(a1 + 3120);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = *(a1 + 3088);
  if (v48)
  {
    do
    {
      v76 = *v48;
      if (*(v48 + 39) < 0)
      {
        operator delete(v48[2]);
      }

      operator delete(v48);
      v48 = v76;
    }

    while (v76);
  }

  v49 = *(a1 + 3072);
  *(a1 + 3072) = 0;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = *(a1 + 3048);
  if (v50)
  {
    do
    {
      v77 = *v50;
      if (*(v50 + 39) < 0)
      {
        operator delete(v50[2]);
      }

      operator delete(v50);
      v50 = v77;
    }

    while (v77);
  }

  v51 = *(a1 + 3032);
  *(a1 + 3032) = 0;
  if (v51)
  {
    operator delete(v51);
  }

  v52 = *(a1 + 3008);
  if (v52)
  {
    do
    {
      v78 = *v52;
      if (*(v52 + 39) < 0)
      {
        operator delete(v52[2]);
      }

      operator delete(v52);
      v52 = v78;
    }

    while (v78);
  }

  v53 = *(a1 + 2992);
  *(a1 + 2992) = 0;
  if (v53)
  {
    operator delete(v53);
  }

  v54 = *(a1 + 2968);
  if (v54)
  {
    do
    {
      v79 = *v54;
      if (*(v54 + 39) < 0)
      {
        operator delete(v54[2]);
      }

      operator delete(v54);
      v54 = v79;
    }

    while (v79);
  }

  v55 = *(a1 + 2952);
  *(a1 + 2952) = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = *(a1 + 2928);
  if (v56)
  {
    do
    {
      v80 = *v56;
      if (*(v56 + 39) < 0)
      {
        operator delete(v56[2]);
      }

      operator delete(v56);
      v56 = v80;
    }

    while (v80);
  }

  v57 = *(a1 + 2912);
  *(a1 + 2912) = 0;
  if (v57)
  {
    operator delete(v57);
  }

  v58 = *(a1 + 2888);
  if (v58)
  {
    do
    {
      v59 = *v58;

      operator delete(v58);
      v58 = v59;
    }

    while (v59);
  }

  v60 = *(a1 + 2872);
  *(a1 + 2872) = 0;
  if (v60)
  {
    operator delete(v60);
  }

  v61 = *(a1 + 2848);
  if (v61)
  {
    do
    {
      v62 = *v61;

      operator delete(v61);
      v61 = v62;
    }

    while (v62);
  }

  v63 = *(a1 + 2832);
  *(a1 + 2832) = 0;
  if (v63)
  {
    operator delete(v63);
  }

  v64 = *(a1 + 2808);
  if (v64)
  {
    do
    {
      v65 = *v64;

      operator delete(v64);
      v64 = v65;
    }

    while (v65);
  }

  v66 = *(a1 + 2792);
  *(a1 + 2792) = 0;
  if (v66)
  {
    operator delete(v66);
  }

  v67 = *(a1 + 2768);
  if (v67)
  {
    do
    {
      v68 = *v67;

      operator delete(v67);
      v67 = v68;
    }

    while (v68);
  }

  v69 = *(a1 + 2752);
  *(a1 + 2752) = 0;
  if (v69)
  {
    operator delete(v69);
  }

  v70 = *(a1 + 2728);
  if (v70)
  {
    do
    {
      v71 = *v70;

      operator delete(v70);
      v70 = v71;
    }

    while (v71);
  }

  v72 = *(a1 + 2712);
  *(a1 + 2712) = 0;
  if (v72)
  {
    operator delete(v72);
  }

  v73 = *(a1 + 2688);
  if (v73)
  {
    v74 = *(a1 + 2696);
    v75 = *(a1 + 2688);
    if (v74 != v73)
    {
      do
      {
        v81 = *(v74 - 8);
        if (v81 && !atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v81->__on_zero_shared)(v81);
          std::__shared_weak_count::__release_weak(v81);
        }

        v74 -= 16;
      }

      while (v74 != v73);
      v75 = *(a1 + 2688);
    }

    *(a1 + 2696) = v73;
    operator delete(v75);
  }

  v82 = *(a1 + 2664);
  if (v82)
  {
    v83 = *(a1 + 2672);
    v84 = *(a1 + 2664);
    if (v83 != v82)
    {
      do
      {
        v85 = *(v83 - 8);
        if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v83 -= 16;
      }

      while (v83 != v82);
      v84 = *(a1 + 2664);
    }

    *(a1 + 2672) = v82;
    operator delete(v84);
  }

  v86 = *(a1 + 2640);
  if (v86)
  {
    v87 = *(a1 + 2648);
    v88 = *(a1 + 2640);
    if (v87 != v86)
    {
      do
      {
        v89 = *(v87 - 8);
        if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }

        v87 -= 16;
      }

      while (v87 != v86);
      v88 = *(a1 + 2640);
    }

    *(a1 + 2648) = v86;
    operator delete(v88);
  }

  v90 = *(a1 + 2616);
  if (v90)
  {
    v91 = *(a1 + 2624);
    v92 = *(a1 + 2616);
    if (v91 != v90)
    {
      do
      {
        v93 = *(v91 - 8);
        if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v93->__on_zero_shared)(v93);
          std::__shared_weak_count::__release_weak(v93);
        }

        v91 -= 16;
      }

      while (v91 != v90);
      v92 = *(a1 + 2616);
    }

    *(a1 + 2624) = v90;
    operator delete(v92);
  }

  v94 = *(a1 + 2592);
  if (v94)
  {
    v95 = *(a1 + 2600);
    v96 = *(a1 + 2592);
    if (v95 != v94)
    {
      do
      {
        v97 = *(v95 - 8);
        if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v95 -= 16;
      }

      while (v95 != v94);
      v96 = *(a1 + 2592);
    }

    *(a1 + 2600) = v94;
    operator delete(v96);
  }

  v98 = *(a1 + 2320);
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v98->__on_zero_shared)(v98);
    std::__shared_weak_count::__release_weak(v98);
  }

  v99 = *(a1 + 2304);
  if (v99 && !atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v99->__on_zero_shared)(v99);
    std::__shared_weak_count::__release_weak(v99);
  }

  v100 = *(a1 + 2288);
  if (v100 && !atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v100->__on_zero_shared)(v100);
    std::__shared_weak_count::__release_weak(v100);
  }

  v101 = *(a1 + 2008);
  if (v101 && !atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v101->__on_zero_shared)(v101);
    std::__shared_weak_count::__release_weak(v101);
  }

  v102 = *(a1 + 1992);
  if (v102 && !atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v102->__on_zero_shared)(v102);
    std::__shared_weak_count::__release_weak(v102);
  }

  v103 = *(a1 + 1976);
  if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v103->__on_zero_shared)(v103);
    std::__shared_weak_count::__release_weak(v103);
  }

  v104 = *(a1 + 1696);
  if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v104->__on_zero_shared)(v104);
    std::__shared_weak_count::__release_weak(v104);
  }

  v105 = *(a1 + 1680);
  if (v105 && !atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v105->__on_zero_shared)(v105);
    std::__shared_weak_count::__release_weak(v105);
  }

  v106 = *(a1 + 1664);
  if (v106 && !atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v106->__on_zero_shared)(v106);
    std::__shared_weak_count::__release_weak(v106);
  }

  v107 = *(a1 + 1384);
  if (v107 && !atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v107->__on_zero_shared)(v107);
    std::__shared_weak_count::__release_weak(v107);
  }

  v108 = *(a1 + 1368);
  if (v108 && !atomic_fetch_add(&v108->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v108->__on_zero_shared)(v108);
    std::__shared_weak_count::__release_weak(v108);
  }

  v109 = *(a1 + 1352);
  if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v109->__on_zero_shared)(v109);
    std::__shared_weak_count::__release_weak(v109);
  }

  v110 = *(a1 + 1072);
  if (v110 && !atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v110->__on_zero_shared)(v110);
    std::__shared_weak_count::__release_weak(v110);
  }

  v111 = *(a1 + 1056);
  if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
  }

  v112 = *(a1 + 1040);
  if (v112 && !atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v112->__on_zero_shared)(v112);
    std::__shared_weak_count::__release_weak(v112);
    if (!*(a1 + 1000))
    {
      return a1;
    }
  }

  else if (!*(a1 + 1000))
  {
    return a1;
  }

  if ((*(a1 + 1016) & 1) == 0)
  {
    v113 = *(a1 + 1008);
    os_unfair_lock_lock(v113 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(a1 + 1008) + 696, *(a1 + 1000), *(a1 + 1000) + *(a1 + 1004) - 1);
    os_unfair_lock_unlock(v113 + 188);
  }

  return a1;
}

void sub_29CF030D4(_Unwind_Exception *a1)
{
  std::unique_ptr<AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>>::~unique_ptr[abi:nn200100]((v1 + 3696));
  v3 = *(v1 + 3688);
  *(v1 + 3688) = 0;
  if (v3)
  {
    MEMORY[0x29ED520D0](v3, 0x1000C4016825A26);
  }

  v4 = *(v1 + 3664);
  if (v4)
  {
    *(v1 + 3672) = v4;
    operator delete(v4);
  }

  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100]((v1 + 3640));
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100]((v1 + 3632));
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100]((v1 + 3624));
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100]((v1 + 3616));
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100]((v1 + 3608));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3592);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3576);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3560);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3544);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3528);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 3504));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 3480));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 3456));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 3432));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 3408));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3152);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 3112);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3072);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3032);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 2992);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 2952);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 2912);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2872);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2832);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2792);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2752);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 2712);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2688));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2664));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2640));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2616));
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 2592));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 2280));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1968));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1656));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1344));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 1032));
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::~RangeAllocation(v1 + 1000);
  _Unwind_Resume(a1);
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::destroy(uint64_t *a1)
{
  if (*(a1 + 740) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[1];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (a1[122])
  {
    v7 = a1[123];
    v8 = *(v7 + 16);
    v54[0] = MEMORY[0x29EDCA5F8];
    v54[1] = 3221225472;
    v54[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54[3] = &__block_descriptor_48_e5_v8__0l;
    v54[4] = v7;
    v54[5] = a1 + 119;
    dispatch_sync(v8, v54);
    *(a1 + 977) = 0u;
    *(a1 + 119) = 0u;
    *(a1 + 121) = 0u;
  }

  v9 = a1[324];
  v10 = a1[325];
  while (v9 != v10)
  {
    v11 = *v9;
    v9 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v11);
  }

  v12 = a1[327];
  v13 = a1[328];
  while (v12 != v13)
  {
    v14 = *v12;
    v12 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v14);
  }

  v15 = a1[330];
  v16 = a1[331];
  while (v15 != v16)
  {
    v17 = *v15;
    v15 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v17);
  }

  v18 = a1[333];
  v19 = a1[334];
  while (v18 != v19)
  {
    v20 = *v18;
    v18 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v20);
  }

  v21 = a1[336];
  v22 = a1[337];
  while (v21 != v22)
  {
    v23 = *v21;
    v21 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v23);
  }

  v24 = a1[106];
  if (v24)
  {
    v25 = *(v24 + 3704);
    if (v25)
    {
      v26 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v25);
      MEMORY[0x29ED520D0](v26, 0x10F0C4099BF1763);
    }

    v27 = AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~RenderPipeline(v24);
    MEMORY[0x29ED520D0](v27, 0x10F0C402F755586);
  }

  v28 = a1[107];
  if (v28)
  {
    v29 = *(v28 + 3704);
    if (v29)
    {
      v30 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v29);
      MEMORY[0x29ED520D0](v30, 0x10F0C4099BF1763);
    }

    v31 = AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~RenderPipeline(v28);
    MEMORY[0x29ED520D0](v31, 0x10F0C402F755586);
  }

  v32 = a1[108];
  if (v32)
  {
    v33 = *(v32 + 3704);
    if (v33)
    {
      v34 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v33);
      MEMORY[0x29ED520D0](v34, 0x10F0C4099BF1763);
    }

    v35 = AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~RenderPipeline(v32);
    MEMORY[0x29ED520D0](v35, 0x10F0C402F755586);
  }

  if (a1[391])
  {
    AGX::FunctionTableSet<AGXG18PFamilyVisibleFunctionTable>::releaseAll(a1[389]);
    v36 = a1[391];
    if (v36)
    {
      v37 = AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v36);
      MEMORY[0x29ED520D0](v37, 0x10A0C407F467501);
    }
  }

  v38 = a1[427];
  for (i = a1[426]; v38 != i; v38 -= 16)
  {
    v40 = *(v38 - 8);
    if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }
  }

  a1[427] = i;
  v41 = a1[430];
  for (j = a1[429]; v41 != j; v41 -= 16)
  {
    v43 = *(v41 - 8);
    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }
  }

  a1[430] = j;
  v44 = a1[433];
  for (k = a1[432]; v44 != k; v44 -= 16)
  {
    v46 = *(v44 - 8);
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

  a1[433] = k;
  v47 = a1[436];
  for (m = a1[435]; v47 != m; v47 -= 16)
  {
    v49 = *(v47 - 8);
    if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
    }
  }

  a1[436] = m;
  v50 = a1[439];
  for (n = a1[438]; v50 != n; v50 -= 16)
  {
    v52 = *(v50 - 8);
    if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v52->__on_zero_shared)(v52);
      std::__shared_weak_count::__release_weak(v52);
    }
  }

  a1[439] = n;
  result = a1[461];
  a1[461] = 0;
  if (result)
  {

    JUMPOUT(0x29ED520D0);
  }

  return result;
}