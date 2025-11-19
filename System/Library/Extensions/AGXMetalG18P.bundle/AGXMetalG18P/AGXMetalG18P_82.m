uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindVertexBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * (a2 - 31) + 8488))
  {
    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v6 = *(result + 8488 + 8 * (a2 - 31));
      if (v6)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v6, 0, a2, a3);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 0, a2, a3);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindAllResources(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 2400);
  v6 = *(v4 + 2408);
  v7 = *(*(result + 8) + 7688);
  if (*(v7 + 789) == 1)
  {
    v8 = *(v7 + 1968);
    v9 = *(v7 + 1984);
    v11 = *(v7 + 3632) == 0;
    v10 = -3;
    if (v11)
    {
      v10 = -1;
    }

    v11 = v8 == 0;
    v12 = 0xF7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = -1;
    }

    v13 = 0xE7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v13 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = -1;
    v10 = -1;
  }

  v14 = v5 & v12 & 0xFFFFFFFF80000000;
  v46 = v6 & v10;
  for (i = v14; ; v14 = i)
  {
    if (v14)
    {
      v15 = __clz(__rbit64(v14));
      p_i = &i;
      v17 = v15;
      goto LABEL_17;
    }

    v14 = v46;
    if (!v46)
    {
      break;
    }

    v15 = __clz(__rbit64(v46));
    v17 = v15 | 0x40;
    p_i = &v46;
LABEL_17:
    *p_i = v14 & ~(1 << v15);
    v45 = *(v3[4] + 1360);
    result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(v3, v17, (*(&v45 | (8 * (v17 > 0x3F))) >> v17) & 1, a2);
  }

  v18 = v3[130];
  v19 = v3[4];
  if (v18)
  {
    v20 = *(v18 + 40);
    v21 = *(v19 + 2416) & *(v18 + 32);
    v44 = *(v19 + 2424) & v20;
    *&v45 = v21;
    while (1)
    {
      if (v21)
      {
        v22 = &v45;
      }

      else
      {
        v21 = v44;
        if (!v44)
        {
          break;
        }

        v22 = &v44;
      }

      *v22 = v21 & (v21 - 1);
      v21 = v45;
    }
  }

  v23 = *(v3[1] + 7664);
  *(v23 + 575) |= *(v19 + 1349);
  *(v23 + 578) |= *(v19 + 1354);
LABEL_29:
  v24 = v3[5];
  if (!v24)
  {
    return result;
  }

  v25 = *(v24 + 2400);
  v26 = *(v24 + 2408);
  v27 = *(v3[1] + 7688);
  if (*(v27 + 789) == 1)
  {
    v28 = *(v27 + 2280);
    v29 = *(v27 + 2296);
    v11 = *(v27 + 3640) == 0;
    v30 = -3;
    if (v11)
    {
      v30 = -1;
    }

    v31 = v28 == 0;
    v32 = 0xF7FFFFFFFFFFFFFFLL;
    if (v31)
    {
      v32 = -1;
    }

    v33 = 0xE7FFFFFFFFFFFFFFLL;
    if (v31)
    {
      v33 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v32 = v33;
    }
  }

  else
  {
    v32 = -1;
    v30 = -1;
  }

  v34 = v25 & v32 & 0xFFFFFFFF80000000;
  v46 = v26 & v30;
  i = v34;
  while (2)
  {
    if (v34)
    {
      v35 = __clz(__rbit64(v34));
      v36 = &i;
      v37 = v35;
LABEL_45:
      *v36 = v34 & ~(1 << v35);
      v45 = *(v3[5] + 1360);
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(v3, v37, (*(&v45 | (8 * (v37 > 0x3F))) >> v37) & 1, a2);
      v34 = i;
      continue;
    }

    break;
  }

  v34 = v46;
  if (v46)
  {
    v35 = __clz(__rbit64(v46));
    v37 = v35 | 0x40;
    v36 = &v46;
    goto LABEL_45;
  }

  v38 = v3[259];
  v39 = v3[5];
  if (v38)
  {
    v40 = *(v38 + 40);
    v41 = *(v39 + 2416) & *(v38 + 32);
    v44 = *(v39 + 2424) & v40;
    *&v45 = v41;
    while (1)
    {
      if (v41)
      {
        v42 = &v45;
      }

      else
      {
        v41 = v44;
        if (!v44)
        {
          break;
        }

        v42 = &v44;
      }

      *v42 = v41 & (v41 - 1);
      v41 = v45;
    }
  }

  v43 = *(v3[1] + 7664);
  *(v43 + 575) |= *(v39 + 1349);
  *(v43 + 578) |= *(v39 + 1354);
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * (a2 - 31) + 9760))
  {
    if (a3)
    {
      v6 = 12;
    }

    else
    {
      v6 = 4;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 9760 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v7, 1u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 1u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(v4, v5, v6, v7);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * (a2 - 31) + 1056))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 1056 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 6u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 6u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * (a2 - 31) + 2088))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 2088 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 7u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 7u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

double AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVisibilityClear(uint64_t a1)
{
  *(a1 + 7248) = 0;
  *(a1 + 7224) = *(a1 + 72);
  v2 = *(*(*(a1 + 1872) + 848) + 7000);
  v3 = *(*(a1 + 2392) + 4912);
  if (v3)
  {
    v3 = *(v3 + *MEMORY[0x29EDC5638] + 8);
  }

  v25[0] = v3;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v2, v25);
  v4 = *(a1 + 1032);
  v5 = *(a1 + 1048) + v4;
  *(a1 + 1032) = v4 + 20;
  *v4 = xmmword_29D2F24F0;
  *(v4 + 16) = 0;
  v6 = *(a1 + 72);
  *v6 = __ROR8__(v5, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v6 + 1;
  v7 = *(a1 + 1032);
  v8 = *(a1 + 1048) + v7;
  *(a1 + 1032) = v7 + 28;
  *v7 = xmmword_29D2F1780;
  *(v7 + 16) = 0xE0000000E000000;
  v9 = __ROR8__(v8, 32);
  *(v7 + 24) = 0;
  v10 = *(a1 + 72);
  *v10 = v9 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v10 + 1;
  v11 = *(v2 + 3144);
  v12 = *(a1 + 1032);
  v13 = *(a1 + 1048) + v12;
  *(a1 + 1032) = v12 + 20;
  *v12 = 203948032;
  *(v12 + 4) = v11 & 0xF1C00FF;
  *(v12 + 8) = 0;
  *(v12 + 16) = HIDWORD(v11);
  v14 = *(a1 + 72);
  *v14 = __ROR8__(v13, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v14 + 1;
  v15 = *(*(a1 + 48) + 768) + *(*(a1 + 48) + 792) - *(*(a1 + 48) + 776);
  LODWORD(v10) = *(a1 + 7248);
  LODWORD(v14) = ((*(*(a1 + 24) + 384) + 3) >> 2) - 1;
  v16 = *(a1 + 1032);
  v17 = *(a1 + 1048) + v16;
  *(a1 + 1032) = v16 + 12;
  *v16 = 8650754;
  *(v16 + 8) = 131200;
  v18 = __ROR8__(v17, 32);
  v19 = *(a1 + 72);
  *v19 = v18 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v19 + 1;
  v20 = *(a1 + 1032);
  v21 = v20 + *(a1 + 1048);
  *(a1 + 1032) = v20 + 1;
  *v20 = 0x48000800000;
  v22 = __ROR8__(v21, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v23 = *(a1 + 72);
  *v23 = v22;
  *(v23 + 8) = 0xFFFF40000001;
  *(v23 + 20) = v15;
  *(v23 + 24) = v10;
  *&result = 1;
  *(v23 + 28) = 1;
  *(v23 + 36) = v14;
  *(v23 + 40) = BYTE5(v15);
  *(v23 + 16) = BYTE4(v15) | 0x61F30300;
  *(a1 + 72) = v23 + 44;
  ++*(a1 + 1940);
  *(a1 + 7232) = v23 + 16;
  *(a1 + 7240) = *(a1 + 88) + v23 + 44;
  *(a1 + 1956) = *(a1 + 7248) + *(a1 + 1956) - 1;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v32 = xmmword_29D2F2500;
  bzero(v33, 0x2A4uLL);
  *&v33[700] = 0u;
  v34 = 1065353216;
  v35 = 0x100000001;
  v7 = *(v6 + 176);
  v8 = v7 + 8;
  if ((v7 + 8) > *(v6 + 160))
  {
    v30 = *(v6 + 168);
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, 3, 0))
    {
      goto LABEL_3;
    }

    v8 = *(v6 + 168) + v7 - v30 + 8;
    if (v8 > *(v6 + 160))
    {
      abort();
    }
  }

  *(v6 + 176) = v8;
LABEL_3:
  v9 = *(*(v6 + 10536) + 64);
  v36[0] = v3;
  v36[1] = *(v9 + 49432);
  v31 = 0;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>((v6 + 2120), (v6 + 24), v5, v36, &v32, 1, &v31);
  v10 = *(v6 + 1032);
  v11 = *(v6 + 1048) + v10;
  *(v6 + 1032) = v10 + 20;
  *v10 = xmmword_29D2F2510;
  *(v10 + 16) = 0;
  v12 = *(v6 + 72);
  *v12 = __ROR8__(v11, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v12 + 1;
  v13 = *(v6 + 1032);
  v14 = *(v6 + 1048) + v13;
  *(v6 + 1032) = v13 + 28;
  *v13 = xmmword_29D2F1780;
  *(v13 + 16) = 0xE0000000E000000;
  *(v13 + 24) = 0;
  v15 = __ROR8__(v14, 32);
  v16 = *(v6 + 72);
  *v16 = v15 & 0xFFFFFFFC000000FFLL | 0x700;
  *(v6 + 72) = v16 + 1;
  v17 = *(v5 + 4112);
  v18 = *(v6 + 1032);
  v19 = *(v6 + 1048) + v18;
  *(v6 + 1032) = v18 + 20;
  *v18 = 203948032;
  *(v18 + 4) = v17 & 0xF1C00FF;
  *(v18 + 8) = 0;
  *(v18 + 16) = HIDWORD(v17);
  v20 = *(v6 + 72);
  *v20 = __ROR8__(v19, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v20 + 1;
  v21 = *(v6 + 1032);
  v22 = *(v6 + 1048) + v21;
  *(v6 + 1032) = v21 + 12;
  *v21 = 8650754;
  v23 = __ROR8__(v22, 32);
  *(v21 + 8) = 131200;
  v24 = *(v6 + 72);
  *v24 = v23 & 0xFFFFFFFC000000FFLL | 0x300;
  *(v6 + 72) = v24 + 1;
  v25 = *(v6 + 1032);
  v26 = v25 + *(v6 + 1048);
  *(v6 + 1032) = v25 + 1;
  *v25 = 0x48000800000;
  v27 = __ROR8__(v26, 32);
  v28 = *(v6 + 72);
  *v28 = v27 & 0xFFFFFFFC000000FFLL | 0x200;
  *(v28 + 8) = 0xFFFF40000001;
  *(v28 + 16) = xmmword_29D2F2520;
  result = v28 + 16;
  ++*(v6 + 1940);
  ++*(v6 + 10552);
  *(v28 + 32) = 536871264;
  *(v6 + 72) = v28 + 36;
  *(v6 + 10472) |= 0x5F500000000001uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitSWEndOfTileIfNeeded(uint64_t a1)
{
  v7 = 0;
  AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatch((a1 + 4032), *(a1 + 7664), &v7, (a1 + 1940));
  if (v7 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (*(a1 + 5396))
    {
      goto LABEL_10;
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, a1 + 10472, 0, 1);
    v7 = 0;
    v2 = *(a1 + 7248);
    if (v2 == 1)
    {
      v5 = *(a1 + 456);
      *v5 = 2 * *(a1 + 7252);
      *(a1 + 456) = v5 + 1;
      *(a1 + 7248) = 2;
      *(*(a1 + 7232) + 8) = 2;
    }

    else if (!v2)
    {
      v3 = *(a1 + 7224);
      if (v3)
      {
        v4 = *(a1 + 7240);
        *v3 = BYTE4(v4) | 0x80000000;
        v3[1] = v4;
        *(a1 + 7224) = 0;
        *(a1 + 7240) = 0;
        ++*(a1 + 1952);
      }
    }

    AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatch((a1 + 4032), *(a1 + 7664), &v7, (a1 + 1940));
    if (v7)
    {
LABEL_10:
      v6 = *(a1 + 1968) - *(a1 + 1984);
      *(v6 + 140) = 1;
      if ((*(v6 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  *(a1 + 10472) |= 0x5F700000000004uLL;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramBufferBytes(void *a1, const void *a2, size_t a3, unsigned int a4)
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
  *(v15 + 8 * (a4 > 0x3F) + 10280) |= 1 << a4;
  *(v15 + 10472) |= 0x4000000uLL;
  if (a4 > 0x1E)
  {
    v19 = a4 - 31;
    v18 = (a1[260] + 8 * v19 + 40);
  }

  else
  {
    v18 = (*(a1[259] + 24) + *(a1[259] + 4) + 8 * a4);
    v19 = a4 - 31;
  }

  *v18 = &v12[v13];
  a1[v19 + 261] = v16 + v17;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4)
{
  v4 = a4;
  v84[6] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 10536);
  if (!v5 || ((v6 = *(*(a1 + 2392) + 6328), v7 = *(v5 + 64), v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v80 = *a2;
    v81 = a2[1].i64[0];
    v9 = &v80;
    v10 = 1;
LABEL_8:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(a1, v9->i8, a3, v10, v4);
    return;
  }

  v11 = vcvt_f32_f64(vcvtq_f64_u64(*a3));
  v12 = vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(*(a3 + 24), *a3)));
  v13 = *(v7 + 16);
  v14 = v13 >= 2 && (a4 & 0x100000000) == 0;
  v15 = a1;
  if (!v14)
  {
    v16 = *(v7 + 49320);
    v17 = a3;
    if ((v16 & 1) == 0)
    {
      v24 = a2;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v26.i32[1] = v25;
      v70 = v26;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v11 = v70;
      a2 = v24;
      a1 = v15;
      v12 = __PAIR64__(v28, v27);
    }

    v29 = vrndm_f32(v11);
    v30 = vrndm_f32(v12);
    v81 = 0;
    v31 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v11, v29), 0x3F0000003F000000), v29, v11)));
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    v80 = v32;
    v82 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v12, v30), 0x3F0000003F000000), v30, v12))), v31);
    v83 = 0;
    v6 = 1;
    if (v16)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v18 = *(v7 + 49320);
  if (v18)
  {
    v19 = vcvt_u32_f32(v11);
    v20.i64[0] = v19.u32[0];
    v20.i64[1] = v19.u32[1];
    v21 = v20;
    v22 = vsubl_u32(vcvt_u32_f32(v12), v19);
    if (v6 < 2)
    {
      v23 = 0;
LABEL_29:
      v17 = a3;
      v46 = v6 - v23;
      v47 = &v82 + 3 * v23;
      do
      {
        *(v47 - 24) = v21;
        v47[-1].i64[1] = 0;
        *v47 = v22;
        v47[1].i64[0] = 0;
        v47 += 3;
        --v46;
      }

      while (v46);
      goto LABEL_31;
    }

    v23 = v6 & 0xFFFFFFFE;
    v44 = v84;
    v45 = v23;
    do
    {
      *(v44 - 3) = v21;
      *v44 = v21;
      *(v44 - 4) = 0;
      v44[2] = 0;
      *(v44 - 3) = v22;
      *(v44 + 3) = v22;
      *(v44 - 1) = 0;
      v44[5] = 0;
      v44 += 12;
      v45 -= 2;
    }

    while (v45);
    if (v23 != v6)
    {
      goto LABEL_29;
    }

    v17 = a3;
  }

  else
  {
    v17 = a3;
    v33 = a2;
    v34 = 0;
    v35 = &v82;
    do
    {
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v37.i32[1] = v36;
      v71 = v37;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v39.i32[1] = v38;
      v40 = vrndm_f32(v71);
      v41 = vrndm_f32(v39);
      v35[-1].i64[1] = 0;
      v42 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v71, v40), 0x3F0000003F000000), v40, v71)));
      v43.i64[0] = v42.u32[0];
      v43.i64[1] = v42.u32[1];
      *(v35 - 24) = v43;
      *v35 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v39, v41), 0x3F0000003F000000), v41, v39))), v42);
      v35[1].i64[0] = 0;
      ++v34;
      v35 += 3;
    }

    while (v6 != v34);
    a1 = v15;
    a2 = v33;
    if (!v18)
    {
LABEL_24:
      v77 = *a2;
      v78 = a2[1].i64[0];
      v9 = &v77;
      a3 = &v80;
      v10 = v6;
      goto LABEL_8;
    }
  }

LABEL_31:
  v76 = 0;
  v48 = *(a1 + 744) + 56;
  if (v48 > *(a1 + 736))
  {
    v72 = a2;
    v63 = AGX::DataBufferAllocator<44ul>::growNoInline(v15 + 24, 21, 0);
    a2 = v72;
    v64 = v63;
    a1 = v15;
    if (v64)
    {
      v65 = *(v15 + 744) + 56;
      if (v65 > *(v15 + 736))
      {
        abort();
      }

      *(v15 + 752) = v65;
      if (!*(v15 + 7328))
      {
        v66 = *(v15 + 7312);
        if (v66)
        {
          v67 = *(v15 + 7336);
          *v66 = BYTE4(v67) | 0x80000000;
          v66[1] = v67;
          *(v15 + 7312) = 0;
          *(v15 + 7336) = 0;
          ++*(v15 + 1952);
        }
      }

      v68 = *(*(*(*(*(v15 + 1872) + 848) + 17136) + 8) + 2728);
      do
      {
        v68 &= ~(1 << __clz(__rbit32(v68)));
        IOGPUResourceListAddResource();
      }

      while (v68);
      AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((v15 + 24), *(*(*(*(v15 + 1872) + 848) + 17136) + 8));
      *(v15 + 7328) = 0;
      *(v15 + 7312) = *(v15 + 72);
      v69 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(v15);
      a1 = v15;
      *(v15 + 7320) = v69;
      *(v15 + 7336) = *(v15 + 88) + *(v15 + 72);
      a2 = v72;
    }
  }

  else
  {
    *(a1 + 752) = v48;
  }

  v49 = a1 + 2060;
  v73 = *a2;
  v50 = a2;
  v74 = a2[1].i64[0];
  *(a1 + 5401) = 1;
  v79 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v51 = *(a1 + 3952);
  AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsWithIndirectParameters(v15 + 2664, &v73, &v79, (v15 + 1940), *(a1 + 7664), &v80, v6, v4, &v76, &v75);
  v52 = v15;
  if (v51 && *(*(v15 + 7688) + 1884))
  {
    *(*(v15 + 7664) + 1612) |= *(v49 + 3164) ^ 1;
  }

  if (v79 == 1)
  {
    if (*(*(v15 + 2392) + 4957) & 1) != 0 || (*(v49 + 3336) & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(v15, (v15 + 10472), 0, 1), v79 = 0, v77 = v73, v78 = v74, AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsWithIndirectParameters(v15 + 2664, &v77, &v79, (v15 + 1940), *(v15 + 7664), &v80, v6, v4, &v76, &v75), v52 = v15, (v79))
    {
      v53 = *(v52 + 1968) - *(v52 + 1984);
      *(v53 + 140) = 1;
      if ((*(v53 + 136) & 4) != 0)
      {
        **(v52 + 8) = 1;
      }
    }
  }

  *(v52 + 11464) |= 0x1000000uLL;
  *(v52 + 10472) |= 0x5F700000000004uLL;
  if ((v4 & 0x100000000) != 0)
  {
    v54 = 1;
  }

  else
  {
    v54 = *(v7 + 16);
    LODWORD(v4) = -1;
  }

  v55 = *(v52 + 2392);
  v56 = *v17;
  v57 = *(&v17[1] + 8);
  v58 = *(v52 + 744);
  *(v52 + 744) = v58 + 56;
  v58->i32[0] = 2;
  v59 = *(v55 + 4932);
  v60 = v76;
  v58->i32[1] = v54;
  v61 = vmovn_s64(*v50);
  v58->i64[1] = v60;
  *v58[1].i8 = v61;
  v58[1].i64[1] = v59;
  v58[2] = vuzp1q_s32(v56, v57);
  v58[3].i32[0] = v4;
  v62 = *(v52 + 7328) + 1;
  *(v52 + 7328) = v62;
  *(*(v52 + 7320) + 4) = v62;
  ++*(v52 + 1956);
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = a1 + 2060;
  *(a1 + 5401) = 1;
  v16 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v11 = *(a1 + 3952);
  v14 = *a2;
  v15 = *(a2 + 2);
  result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(a1 + 2664, &v14, &v16, (a1 + 1940), *(a1 + 7664), a3, a4, a5);
  if (v11 && *(*(a1 + 7688) + 1884))
  {
    *(*(a1 + 7664) + 1612) |= *(v10 + 3164) ^ 1;
  }

  if (v16 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (*(v10 + 3336) & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, (a1 + 10472), 0, 1), v16 = 0, v14 = *a2, v15 = *(a2 + 2), result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(a1 + 2664, &v14, &v16, (a1 + 1940), *(a1 + 7664), a3, a4, a5), (v16))
    {
      v13 = *(a1 + 1968) - *(a1 + 1984);
      *(v13 + 140) = 1;
      if ((*(v13 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  *(a1 + 11464) |= 0x1000000uLL;
  *(a1 + 10472) |= 0x5F700000000004uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(a1[5] + 3820);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(a1[1], v7);
  v10 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  v12 = a1[4];
  v13 = *(v12 + 3946);
  if (v13 == 1)
  {
    v14 = *(v12 + 3752);
    v32 = HIDWORD(v14);
    v33 = v14;
    v34 = *(v12 + 3760);
    v36 = v34;
  }

  else
  {
    v34 = 0;
    LODWORD(v32) = 0;
    v33 = 0;
    v14 = v10 | (v9 << 32);
    v36 = v11;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = a4[4];
  v18 = a1[1];
  v19 = v18[21] + 12;
  if (v19 <= v18[20])
  {
LABEL_5:
    v18[22] = v19;
    goto LABEL_6;
  }

  v31 = v17;
  v30 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 3, 3, 0);
  v17 = v31;
  if (v30)
  {
    v19 = v18[21] + 12;
    if (v19 > v18[20])
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v20 = a1[1];
  v21 = *(v20 + 168);
  v22 = *(v20 + 184);
  *(v20 + 168) = v21 + 3;
  *v21 = v10;
  v21[1] = v9;
  v21[2] = v11;
  v23 = a1[131];
  *(v23 + 80) = v21 + v22;
  *(v23 + 392) = v21;
  a1[137] = *(*(v20 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v20 + 10184) |= 0x1000000000uLL;
  *(v20 + 10232) |= 0x1000000000uLL;
  *(v20 + 10472) |= 0x30000uLL;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v20 + 7680), a1[130], a1[259], *(v20 + 9744), v8, v15 | (v16 << 32), v17, SHIDWORD(v17), v14, SHIDWORD(v14), v36, v20 + 10088, 0);
  v24 = a1[3];
  if (v13)
  {
    ++*(a1[1] + 1940);
    if (v7 == 1)
    {
      v25 = 1879048448;
    }

    else
    {
      v25 = 1879048192;
    }

    v26 = *(v24 + 48);
    if (v7 == 3)
    {
      v25 = 1879049728;
    }

    *v26 = v25;
    *(v26 + 4) = v33;
    *(v26 + 8) = v32;
    *(v26 + 12) = v34;
    *(v26 + 16) = v14;
    *(v26 + 24) = v36;
    v27 = v26 + 28;
  }

  else
  {
    if (v7 == 1)
    {
      v28 = 1912602880;
    }

    else
    {
      v28 = 1912602624;
    }

    ++*(a1[1] + 1940);
    v29 = *(v24 + 48);
    if (v7 == 3)
    {
      v28 = 1912604160;
    }

    *v29 = v28;
    *(v29 + 4) = WORD2(a2);
    *(v29 + 8) = a2 & 0xFFFFFFFC;
    *(v29 + 12) = v14;
    *(v29 + 20) = v36;
    v27 = v29 + 24;
  }

  *(v24 + 48) = v27;
  *(a1[1] + 1960) = 0;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    if (*(*(result + 7688) + 32))
    {
      v2 = *(result + 5296);
      if (v2)
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          if ((*(v3 + 3882) & 4) != 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    else if ((*(*(result + 7672) + 4114) & 4) != 0)
    {
LABEL_6:
      v4 = *(result + 10545);
      v5 = (result + 6008);
      v6 = *(result + 6008);
      *(result + 6004) &= ~0x800000u;
      goto LABEL_23;
    }

    if (*(result + 7400))
    {
      LODWORD(a2) = 0;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  v7 = *(result + 7376);
  v4 = *(result + 10545);
  v5 = (result + 6008);
  v6 = *(result + 6008);
  *(result + 6004) &= ~0x800000u;
  if (a2 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << a2) & 0x1D8) == 0)
  {
    if (((1 << a2) & 0x26) != 0)
    {
      v10.i32[0] = *v5 & 0xFFFFFFF | 0x10000000;
      v10.i32[1] = HIDWORD(*v5) & 0xFFFFFFF | 0x10000000;
      *v5 = v10;
      v9 = 1;
      if (v6 >> 28 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

LABEL_23:
    v11 = 4u >> v4;
    v10 = vorr_s8((*v5 & 0xFFFFFFF0FFFFFFFLL), vdup_n_s32(4u >> v4 << 28));
    *v5 = v10;
    v9 = 1;
    if (v11 == v6 >> 28)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 == 1;
  if (v7 == 1)
  {
    v8 = 5;
  }

  v10 = vorr_s8(vdup_n_s32(((v7 & 3) << 18) | (v8 << 28)), vand_s8(*v5, vdup_n_s32(0xFF3FFFFu)));
  *v5 = v10;
  if (v8 != v6 >> 28)
  {
LABEL_24:
    if (v10.i32[0] >> 28)
    {
      v12 = (v10.i32[0] >> 28) - 5 > 1;
    }

    else
    {
      v12 = 0;
    }

    *(*(result + 9752) + 904) = 0;
    v13 = *(result + 6040);
    *(result + 5980) = vbsl_s8(0xFFFFFF00FFFFFF00, *(result + 5980), *(result + 7216));
    *(result + 5988) = v13;
    v14 = *(result + 10472);
    if (v12)
    {
      v15 = *(result + 7200) & 3 | *(result + 5968) & 0xFFFEFFFC;
    }

    else
    {
      v15 = *(result + 7200) & 3 | ((*(result + 7208) & 1) << 16) | *(result + 5968) & 0xFFFEFFFC;
    }

    *(result + 5968) = v15;
    *(result + 10472) = v14 | 0x2100000000000;
    if (*(result + 7402) != v9)
    {
      *(result + 10472) = v14 | 0x2100000000000;
      *(result + 7402) = v9;
    }
  }

LABEL_32:
  if (*(result + 7184) == 0.0 && *(result + 7188) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v16 = *(result + 6008) >> 28;
    if (v16)
    {
      v17 = (v16 - 5) >= 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
  }

  if (*(result + 7196) != v18)
  {
    if (v18)
    {
      v19 = 0x20000;
    }

    else
    {
      v19 = 0;
    }

    *(result + 5976) = *(result + 5976) & 0xFFFDFFFF | v19;
    *(result + 10472) |= 0x100000000000uLL;
    *(result + 7196) = v18;
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64x2_t *a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, int a12, int a13, int a14, uint64_t a15, char a16)
{
  v660 = *MEMORY[0x29EDCA608];
  v18 = *(a1 + 8);
  *(v18 + 5401) = 1;
  if (*(a1 + 48) != a9 || *(a1 + 52) != __PAIR64__(a10, HIDWORD(a9)))
  {
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *(v18 + 10472) |= 0xFE0000000uLL;
  }

  if (a2)
  {
    v19 = 192;
  }

  else
  {
    v19 = 128;
  }

  *(v18 + 2060) |= v19;
  v651 = 0;
  v20 = *(*(v18 + 1872) + 848);
  v21 = *(a1 + 2080);
  *&v654 = v21 + 168;
  *(&v654 + 1) = a1 + 2216;
  v655 = (v21 + 176);
  *v656 = a1 + 2224;
  *&v656[8] = v21 + 200;
  *&v656[16] = a1 + 2248;
  if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v20 + 7240, &v654, *(v18 + 1904), &v651))
  {
    if (a16 && (v651 & 1) == 0)
    {
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
    }

    v22 = *(a1 + 8);
    v567 = v22[1219];
    v23 = *(a1 + 2080);
    v568 = v23[21];
    v569 = *(a1 + 1048);
    v569[21] = v568;
    v567[22] = v568;
    v570 = *(a1 + 2216);
    *(a1 + 1184) = v570;
    v22[1236] = v570;
    v22[1273] |= 0x800000000000uLL;
    v22[1279] |= 0x800000000000uLL;
    v22[1285] |= 0x800000000000uLL;
    v22[1291] |= 0x800000000000uLL;
    v22[1297] |= 0x800000000000uLL;
    v22[1303] |= 0x800000000000uLL;
    v571 = v23[22];
    v569[22] = v571;
    v567[23] = v571;
    v572 = *(a1 + 2224);
    *(a1 + 1192) = v572;
    v22[1237] = v572;
    v22[1273] |= 0x1000000000000uLL;
    v22[1279] |= 0x1000000000000uLL;
    v22[1285] |= 0x1000000000000uLL;
    v22[1291] |= 0x1000000000000uLL;
    v22[1297] |= 0x1000000000000uLL;
    v22[1303] |= 0x1000000000000uLL;
    v573 = v23[25];
    v569[25] = v573;
    v567[26] = v573;
    v574 = *(a1 + 2248);
    *(a1 + 1216) = v574;
    v22[1240] = v574;
    v22[1273] |= 0x8000000000000uLL;
    v22[1279] |= 0x8000000000000uLL;
    v22[1285] |= 0x8000000000000uLL;
    v22[1291] |= 0x8000000000000uLL;
    v22[1297] |= 0x8000000000000uLL;
    v22[1303] |= 0x8000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v22 = *(a1 + 8);
    v23 = *(a1 + 2080);
  }

  v24 = *(v22[234] + 848);
  *&v654 = v23 + 26;
  *(&v654 + 1) = a1 + 2256;
  v25 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v24 + 2152, &v654);
  v26 = *(a1 + 8);
  *(*(v26 + 7664) + 2096) = *(*(a1 + 2080) + 208);
  explicit = atomic_load_explicit((*(*(v26 + 1872) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v28 = explicit + 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 8);
  *(v29[958] + 2104) = v28;
  if (!v25)
  {
    v30 = a3;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a16)
  {
    IOGPUResourceListAddResource();
    v29 = *(a1 + 8);
  }

  v30 = a3;
  v575 = *(*(a1 + 2080) + 208);
  *(*(a1 + 1048) + 208) = v575;
  *(v29[1219] + 216) = v575;
  v576 = *(a1 + 2256);
  *(a1 + 1224) = v576;
  v29[1241] = v576;
  v29[1273] |= 0x10000000000000uLL;
  v29[1279] |= 0x10000000000000uLL;
  v29[1285] |= 0x10000000000000uLL;
  v29[1291] |= 0x10000000000000uLL;
  v29[1297] |= 0x10000000000000uLL;
  v29[1303] |= 0x10000000000000uLL;
  *(a15 + 384) |= 0x300C030000uLL;
  if (a3)
  {
LABEL_14:
    v31 = v29[958];
    if (!*(v31 + 600))
    {
      if (*(v30 + 2480) == 0)
      {
        v32 = *(v30 + 2112);
      }

      else
      {
        v32 = 1;
      }

      *(v31 + 600) = v32;
    }
  }

LABEL_19:
  if (a2)
  {
    v33 = v29[958];
    if (!*(v33 + 600))
    {
      if (*(a2 + 2480) == 0)
      {
        v34 = *(a2 + 2112);
      }

      else
      {
        v34 = 1;
      }

      *(v33 + 600) = v34;
    }
  }

  v35 = *(v29[234] + 848);
  *&v654 = v29 + 1428;
  *(&v654 + 1) = v29 + 1429;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v35 + 3146, &v654))
  {
    IOGPUResourceListAddResource();
  }

  v36 = *(a1 + 8);
  **(v36 + 11416) = *(v36 + 11424);
  v37 = *(*(v36 + 1872) + 848);
  *&v654 = v36 + 11440;
  *(&v654 + 1) = v36 + 11448;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v37 + 2952, &v654))
  {
    IOGPUResourceListAddResource();
  }

  v38 = *(a1 + 8);
  *(v38[1427] + 8) = v38[1430];
  v39 = *(v38[234] + 848);
  *&v654 = *(a1 + 2080) + 232;
  *(&v654 + 1) = a1 + 2280;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v39 + 3728, &v654))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v41 = *(a1 + 2080);
    v577 = *(v41 + 232);
    *(*(a1 + 1048) + 232) = v577;
    v40 = *(a1 + 8);
    *(v40[1219] + 240) = v577;
    v578 = *(a1 + 2280);
    *(a1 + 1248) = v578;
    v40[1244] = v578;
    v40[1273] |= 0x80000000000000uLL;
    v40[1279] |= 0x80000000000000uLL;
    v40[1285] |= 0x80000000000000uLL;
    v40[1291] |= 0x80000000000000uLL;
    v40[1297] |= 0x80000000000000uLL;
    v40[1303] |= 0x80000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v40 = *(a1 + 8);
    v41 = *(a1 + 2080);
  }

  v42 = *(v40[234] + 848);
  *&v654 = v41 + 248;
  *(&v654 + 1) = a1 + 2296;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v42 + 3340, &v654))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v44 = *(a1 + 2080);
    v579 = *(v44 + 248);
    *(*(a1 + 1048) + 248) = v579;
    v43 = *(a1 + 8);
    *(v43[1219] + 256) = v579;
    v580 = *(a1 + 2296);
    *(a1 + 1264) = v580;
    v43[1246] = v580;
    v43[1273] |= 0x200000000000000uLL;
    v43[1279] |= 0x200000000000000uLL;
    v43[1285] |= 0x200000000000000uLL;
    v43[1291] |= 0x200000000000000uLL;
    v43[1297] |= 0x200000000000000uLL;
    v43[1303] |= 0x200000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v43 = *(a1 + 8);
    v44 = *(a1 + 2080);
  }

  v45 = *(v43[234] + 848);
  *&v654 = v44 + 224;
  *(&v654 + 1) = a1 + 2272;
  if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v45 + 2352, &v654))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v47 = *(a1 + 2080);
    v581 = *(v47 + 224);
    *(*(a1 + 1048) + 224) = v581;
    v46 = *(a1 + 8);
    *(v46[1219] + 232) = v581;
    v582 = *(a1 + 2272);
    *(a1 + 1240) = v582;
    v46[1243] = v582;
    v46[1273] |= 0x40000000000000uLL;
    v46[1279] |= 0x40000000000000uLL;
    v46[1285] |= 0x40000000000000uLL;
    v46[1291] |= 0x40000000000000uLL;
    v46[1297] |= 0x40000000000000uLL;
    v46[1303] |= 0x40000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v46 = *(a1 + 8);
    v47 = *(a1 + 2080);
  }

  v48 = *(v46[234] + 848);
  *&v654 = v47 + 320;
  *(&v654 + 1) = a1 + 2368;
  v49 = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v48 + 2752, &v654);
  v50 = a3;
  if (v49)
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
      v50 = a3;
    }

    v583 = *(*(a1 + 2080) + 320);
    *(*(a1 + 1048) + 320) = v583;
    v584 = *(a1 + 8);
    *(v584[1219] + 328) = v583;
    v585 = *(a1 + 2368);
    *(a1 + 1336) = v585;
    v584[1255] = v585;
    v584[1274] |= 4uLL;
    v584[1280] |= 4uLL;
    v584[1286] |= 4uLL;
    v584[1292] |= 4uLL;
    v584[1298] |= 4uLL;
    v584[1304] |= 4uLL;
    *(a15 + 384) |= 0x300C030000uLL;
    if (a16)
    {
      goto LABEL_55;
    }
  }

  else if (a16)
  {
    goto LABEL_55;
  }

  if (a2 && *(a1 + 1372) == 1 && (*(a2 + 2407) & 0x40) != 0)
  {
    v51 = *(*(a1 + 1048) + 328);
    v52 = *(a1 + 8);
    v53 = v52[21] + 47;
    if (v53 > v52[20])
    {
      v599 = AGX::DataBufferAllocator<44ul>::growNoInline(v52 + 3, 3, 0);
      v50 = a3;
      if (!v599)
      {
        goto LABEL_42;
      }

      v53 = v52[21] + 47;
      if (v53 > v52[20])
      {
        goto LABEL_591;
      }
    }

    v52[22] = v53;
LABEL_42:
    v54 = *(a1 + 8);
    v55 = ((*(v54 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = *(v54 + 184);
    *(v54 + 168) = v55 + 4;
    *v55 = v51;
    v55[1] = 0;
    v55[2] = 0;
    v55[3] = 0;
    v57 = *(a1 + 8);
    v58 = *(v57[6] + 224);
    v59 = *MEMORY[0x29EDC5638];
    v57[1273] |= 0x4000000000000000uLL;
    v57[1309] |= 0x10000uLL;
    *(*(a1 + 1048) + 288) = v55 + v56;
    *(a1 + 1304) = v58 + v59;
    *(a1 + 1372) = 0;
  }

  if (v50 && *(a1 + 2404) == 1 && (*(v50 + 2407) & 0x40) != 0)
  {
    v60 = *(*(a1 + 2080) + 328);
    v61 = *(a1 + 8);
    v62 = v61[21] + 47;
    if (v62 > v61[20])
    {
      v600 = AGX::DataBufferAllocator<44ul>::growNoInline(v61 + 3, 3, 0);
      v50 = a3;
      if (!v600)
      {
        goto LABEL_48;
      }

      v62 = v61[21] + 47;
      if (v62 > v61[20])
      {
        goto LABEL_591;
      }
    }

    v61[22] = v62;
LABEL_48:
    v63 = *(a1 + 8);
    v64 = ((*(v63 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = *(v63 + 184);
    *(v63 + 168) = v64 + 4;
    *v64 = v60;
    v64[1] = 0;
    v64[2] = 0;
    v64[3] = 0;
    v66 = *(a1 + 8);
    v67 = *(v66[6] + 224);
    v68 = *MEMORY[0x29EDC5638];
    v66[1285] |= 0x4000000000000000uLL;
    v66[1309] |= 0x4000000uLL;
    *(*(a1 + 2080) + 288) = v64 + v65;
    *(a1 + 2336) = v67 + v68;
    *(a1 + 2404) = 0;
  }

  if (a4)
  {
    if ((*(a4 + 2407) & 0x40) != 0)
    {
      v69 = *(a1 + 8);
      if (*(v69 + 10076) == 1)
      {
        v70 = *(*(v69 + 9752) + 336);
        v71 = *(v69 + 200);
        v72 = v71 + 31;
        if ((v71 + 31) > *(v69 + 192))
        {
          v601 = AGX::DataBufferAllocator<44ul>::growNoInline(v69 + 24, 4, 0);
          v71 = *(v69 + 200);
          if (!v601)
          {
            v50 = a3;
            goto LABEL_54;
          }

          v72 = v71 + 31;
          v50 = a3;
          if ((v71 + 31) > *(v69 + 192))
          {
            goto LABEL_591;
          }
        }

        *(v69 + 208) = v72;
LABEL_54:
        v73 = ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = v73 + *(v69 + 216);
        *(v69 + 200) = v73 + 2;
        *v73 = v70;
        v75 = *(*(v69 + 48) + 288) + *MEMORY[0x29EDC5638];
        *(v69 + 10376) |= 0x4000000000000000uLL;
        *(v69 + 10472) |= 0x1000000000uLL;
        *(*(v69 + 9752) + 296) = v74;
        *(v69 + 10008) = v75;
        *(v69 + 10076) = 0;
      }
    }
  }

LABEL_55:
  v76 = *(a1 + 8);
  if (*(v76 + 10080) == 1)
  {
    v77 = *(v76 + 200);
    v78 = v77 + 95;
    if ((v77 + 95) > *(v76 + 192))
    {
      v592 = AGX::DataBufferAllocator<44ul>::growNoInline(v76 + 24, 4, 0);
      v77 = *(v76 + 200);
      if (!v592)
      {
        v50 = a3;
        goto LABEL_58;
      }

      v78 = v77 + 95;
      v50 = a3;
      if ((v77 + 95) > *(v76 + 192))
      {
        goto LABEL_591;
      }
    }

    *(v76 + 208) = v78;
LABEL_58:
    v79 = ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = v79 + *(v76 + 216);
    *(v76 + 200) = v79 + 5;
    v81 = *(v76 + 11584);
    v83 = *(v76 + 11616);
    v82 = *(v76 + 11632);
    v79[2] = *(v76 + 11600);
    v79[3] = v83;
    v79[1] = v81;
    *v79 = *(v76 + 11568);
    v79[4] = v82;
    v84 = *(*(v76 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(v76 + 10376) |= 0x8000000000000000;
    *(v76 + 10472) |= 0x1000000000uLL;
    *(*(v76 + 9752) + 304) = v80;
    *(v76 + 10016) = v84;
    *(v76 + 10080) = 256;
    v76 = *(a1 + 8);
  }

  if (*(v76 + 5403) == 1)
  {
    v85 = *(*(v76 + 1872) + 848);
    v86 = *(v85 + 6320);
    if (*(v76 + 7268) != v86)
    {
      for (i = *(v85 + 6832); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      for (j = *(v85 + 6664); j; j = *j)
      {
        IOGPUResourceListAddResource();
      }

      *(v76 + 7268) = v86;
      v76 = *(a1 + 8);
      v50 = a3;
    }
  }

  v89 = *(v76 + 7688);
  if (v89)
  {
    if (v89[1572])
    {
      *(*(v76 + 7664) + 1612) |= *(v76 + 5224) ^ 1;
    }

    if ((v89[2196] & 1) != 0 || v89[2508])
    {
      *(*(v76 + 7664) + 580) |= *(v76 + 5224) ^ 1;
    }
  }

  v90 = *(a1 + 1040);
  if (v90)
  {
    v91 = atomic_load_explicit((v90 + 80), memory_order_acquire);
    v92 = v91 != -1 && v91 == *(a1 + 72);
    if (!v92)
    {
      *(a1 + 72) = v91;
      atomic_store(1u, (v90 + 88));
      *(a15 + 384) |= 0x10000uLL;
      v93 = *(a1 + 1040);
      v94 = *v93;
      if (v94 == 128)
      {
        v95 = -1;
      }

      else
      {
        v95 = ~(-1 << *v93);
      }

      v96 = v94 >= 0x40;
      if (v94 < 0x40)
      {
        v97 = ~(-1 << v94);
      }

      else
      {
        v97 = -1;
      }

      if (v96)
      {
        v98 = v95;
      }

      else
      {
        v98 = 0;
      }

      v99 = *(a15 + 104);
      *(a15 + 96) |= v97;
      *(a15 + 104) = v99 | v98;
      v100 = v93[1];
      if (v100 == 128)
      {
        v101 = -1;
      }

      else
      {
        v101 = ~(-1 << v93[1]);
      }

      v102 = v100 >= 0x40;
      if (v100 < 0x40)
      {
        v103 = ~(-1 << v100);
      }

      else
      {
        v103 = -1;
      }

      v104 = *(a15 + 120);
      v105 = *(a15 + 112) | v103;
      if (v102)
      {
        v106 = v101;
      }

      else
      {
        v106 = 0;
      }

      *(a15 + 112) = v105;
      *(a15 + 120) = v104 | v106;
      v107 = v93[2];
      if (v107 == 128)
      {
        v108 = -1;
      }

      else
      {
        v108 = ~(-1 << v107);
      }

      v109 = v107 >= 0x40;
      if (v107 < 0x40)
      {
        v110 = ~(-1 << v107);
      }

      else
      {
        v110 = -1;
      }

      if (v109)
      {
        v111 = v108;
      }

      else
      {
        v111 = 0;
      }

      v112 = *(a15 + 136) | v111;
      *(a15 + 128) |= v110;
      *(a15 + 136) = v112;
    }
  }

  v113 = *(a1 + 2072);
  if (v113)
  {
    v114 = atomic_load_explicit((v113 + 80), memory_order_acquire);
    if (v114 == -1 || v114 != *(a1 + 1376))
    {
      *(a1 + 1376) = v114;
      atomic_store(1u, (v113 + 88));
      *(a15 + 384) |= 0x4000000uLL;
      v116 = *(a1 + 2072);
      v117 = *v116;
      if (v117 == 128)
      {
        v118 = -1;
      }

      else
      {
        v118 = ~(-1 << *v116);
      }

      v119 = v117 >= 0x40;
      if (v117 < 0x40)
      {
        v120 = ~(-1 << v117);
      }

      else
      {
        v120 = -1;
      }

      if (v119)
      {
        v121 = v118;
      }

      else
      {
        v121 = 0;
      }

      v122 = *(a15 + 200);
      *(a15 + 192) |= v120;
      *(a15 + 200) = v122 | v121;
      v123 = v116[1];
      if (v123 == 128)
      {
        v124 = -1;
      }

      else
      {
        v124 = ~(-1 << v116[1]);
      }

      v125 = v123 >= 0x40;
      if (v123 < 0x40)
      {
        v126 = ~(-1 << v123);
      }

      else
      {
        v126 = -1;
      }

      v127 = *(a15 + 216);
      v128 = *(a15 + 208) | v126;
      if (v125)
      {
        v129 = v124;
      }

      else
      {
        v129 = 0;
      }

      *(a15 + 208) = v128;
      *(a15 + 216) = v127 | v129;
      v130 = v116[2];
      if (v130 == 128)
      {
        v131 = -1;
      }

      else
      {
        v131 = ~(-1 << v130);
      }

      v132 = v130 >= 0x40;
      if (v130 < 0x40)
      {
        v133 = ~(-1 << v130);
      }

      else
      {
        v133 = -1;
      }

      if (v132)
      {
        v134 = v131;
      }

      else
      {
        v134 = 0;
      }

      v135 = *(a15 + 232) | v134;
      *(a15 + 224) |= v133;
      *(a15 + 232) = v135;
    }
  }

  v136 = *(a1 + 8);
  v137 = *(v136 + 9744);
  if (v137)
  {
    v138 = atomic_load_explicit((v137 + 80), memory_order_acquire);
    if (v138 == -1 || v138 != *(v136 + 8808))
    {
      *(v136 + 8808) = v138;
      atomic_store(1u, (v137 + 88));
      *(a15 + 384) |= 0x1000000000uLL;
      v140 = *(*(a1 + 8) + 9744);
      v141 = *v140;
      if (v141 == 128)
      {
        v142 = -1;
      }

      else
      {
        v142 = ~(-1 << *v140);
      }

      v143 = v141 >= 0x40;
      if (v141 < 0x40)
      {
        v144 = ~(-1 << v141);
      }

      else
      {
        v144 = -1;
      }

      if (v143)
      {
        v145 = v142;
      }

      else
      {
        v145 = 0;
      }

      v146 = *(a15 + 296);
      *(a15 + 288) |= v144;
      *(a15 + 296) = v146 | v145;
      v147 = v140[1];
      if (v147 == 128)
      {
        v148 = -1;
      }

      else
      {
        v148 = ~(-1 << v140[1]);
      }

      v149 = v147 >= 0x40;
      if (v147 < 0x40)
      {
        v150 = ~(-1 << v147);
      }

      else
      {
        v150 = -1;
      }

      v151 = *(a15 + 312);
      v152 = *(a15 + 304) | v150;
      if (v149)
      {
        v153 = v148;
      }

      else
      {
        v153 = 0;
      }

      *(a15 + 304) = v152;
      *(a15 + 312) = v151 | v153;
      v154 = v140[2];
      if (v154 == 128)
      {
        v155 = -1;
      }

      else
      {
        v155 = ~(-1 << v154);
      }

      v156 = v154 >= 0x40;
      if (v154 < 0x40)
      {
        v157 = ~(-1 << v154);
      }

      else
      {
        v157 = -1;
      }

      if (v156)
      {
        v158 = v155;
      }

      else
      {
        v158 = 0;
      }

      v159 = *(a15 + 328) | v158;
      *(a15 + 320) |= v157;
      *(a15 + 328) = v159;
    }
  }

  v160 = *(a15 + 384);
  if (a4)
  {
    v161 = v160 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, v50, a4, a15);
    v162 = *(a4 + 3916);
  }

  else
  {
    v163 = v160 & 0xFFFFFF8FFFFFFFFDLL;
    *(a15 + 384) = v163;
    ProgramVariantArgumentDirtyBits = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, v50, 0, a15);
    v162 = 0;
    v161 = v163 | ProgramVariantArgumentDirtyBits;
  }

  v650 = v161;
  if (a16 & 1) != 0 || (v162)
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(*(a1 + 8), v161);
  }

  if ((v161 & 0x20000) != 0 && (a16 & 1) == 0)
  {
    v165 = *(a15 + 144) & *(a2 + 2400);
    v166 = *(a15 + 152) & *(a2 + 2408);
    v658 = v165;
    v652 = v166;
    v654 = *(a2 + 1360);
    while (1)
    {
      if (v165)
      {
        v167 = __clz(__rbit64(v165));
        v168 = &v658;
        v169 = v167;
      }

      else
      {
        v165 = v652;
        if (!v652)
        {
          break;
        }

        v167 = __clz(__rbit64(v652));
        v169 = v167 | 0x40;
        v168 = &v652;
      }

      *v168 = v165 & ~(1 << v167);
      if (*(a1 + 1056 + 8 * (v169 - 31)))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(a1, v169, (*(&v654 | (8 * (v169 > 0x3F))) >> v169) & 1, 1);
      }

      v165 = v658;
    }
  }

  if ((v161 & 0x8000000) != 0 && (a16 & 1) == 0)
  {
    v170 = *(a15 + 240) & *(a3 + 2400);
    v171 = *(a15 + 248) & *(a3 + 2408);
    v658 = v170;
    v652 = v171;
    v654 = *(a3 + 1360);
    while (1)
    {
      if (v170)
      {
        v172 = __clz(__rbit64(v170));
        v173 = &v658;
        v174 = v172;
      }

      else
      {
        v170 = v652;
        if (!v652)
        {
          break;
        }

        v172 = __clz(__rbit64(v652));
        v174 = v172 | 0x40;
        v173 = &v652;
      }

      *v173 = v170 & ~(1 << v172);
      if (*(a1 + 2088 + 8 * (v174 - 31)))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(a1, v174, (*(&v654 | (8 * (v174 > 0x3F))) >> v174) & 1, 1);
      }

      v170 = v658;
    }
  }

  if ((v161 & 0x40000) != 0)
  {
    v175 = *(a1 + 1040);
    if (v175)
    {
      v176 = *(a2 + 2416) & *(a15 + 160) & v175[4];
      v177 = *(a2 + 2424) & *(a15 + 168) & v175[5];
      *&v654 = v176;
      v658 = v177;
      v178 = *(a2 + 1376);
      v179 = *(a2 + 1384);
      v180 = v175[6];
      v181 = v175[7];
      while (1)
      {
        if (v176)
        {
          v182 = &v654;
        }

        else
        {
          v176 = v658;
          if (!v658)
          {
            *(*(*(a1 + 8) + 7664) + 580) |= (v180 & v178 | v181 & v179) != 0;
            break;
          }

          v182 = &v658;
        }

        *v182 = v176 & (v176 - 1);
        v176 = v654;
      }
    }
  }

  if ((v161 & 0x10000000) != 0)
  {
    v183 = *(a1 + 2072);
    if (v183)
    {
      v184 = *(a3 + 2416) & *(a15 + 256) & v183[4];
      v185 = *(a3 + 2424) & *(a15 + 264) & v183[5];
      *&v654 = v184;
      v658 = v185;
      v186 = *(a3 + 1376);
      v187 = *(a3 + 1384);
      v188 = v183[6];
      v189 = v183[7];
      while (1)
      {
        if (v184)
        {
          v190 = &v654;
        }

        else
        {
          v184 = v658;
          if (!v658)
          {
            *(*(*(a1 + 8) + 7664) + 580) |= (v188 & v186 | v189 & v187) != 0;
            break;
          }

          v190 = &v658;
        }

        *v190 = v184 & (v184 - 1);
        v184 = v654;
      }
    }
  }

  if ((v161 & 0x2000000000) != 0 && (a16 & 1) == 0)
  {
    v191 = *(a15 + 336) & *(a4 + 2400);
    v192 = *(a15 + 344) & *(a4 + 2408);
    v658 = v191;
    v652 = v192;
    v654 = *(a4 + 1360);
    while (1)
    {
      if (v191)
      {
        v193 = __clz(__rbit64(v191));
        v194 = &v658;
        v195 = v193;
      }

      else
      {
        v191 = v652;
        if (!v652)
        {
          break;
        }

        v193 = __clz(__rbit64(v652));
        v195 = v193 | 0x40;
        v194 = &v652;
      }

      *v194 = v191 & ~(1 << v193);
      v196 = *(a1 + 8);
      if (*(v196 + 8 * (v195 - 31) + 9760))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(v196, v195, (*(&v654 | (8 * (v195 > 0x3F))) >> v195) & 1, 1);
      }

      v191 = v658;
    }
  }

  if ((v161 & 0x4000000000) != 0)
  {
    v197 = *(a1 + 8);
    v198 = *(v197 + 9744);
    if (v198)
    {
      v199 = *(a4 + 2416) & *(a15 + 352) & v198[4];
      v200 = *(a4 + 2424) & *(a15 + 360) & v198[5];
      *&v654 = v199;
      v658 = v200;
      v201 = *(a4 + 1376);
      v202 = *(a4 + 1384);
      v203 = v198[6];
      v204 = v198[7];
      while (1)
      {
        if (v199)
        {
          v205 = &v654;
        }

        else
        {
          v199 = v658;
          if (!v658)
          {
            *(*(v197 + 7664) + 1612) |= (v203 & v201 | v204 & v202) != 0;
            break;
          }

          v205 = &v658;
        }

        *v205 = v199 & (v199 - 1);
        v199 = v654;
      }
    }
  }

  v206 = *(a15 + 392);
  if ((v206 & 1) != 0 && *(*(a1 + 8) + 7400) == 1)
  {
    *(a15 + 392) = v206 & 0xFFFFFFFE;
  }

  *(a15 + 384) = 0;
  *(a15 + 352) = 0u;
  *(a15 + 368) = 0u;
  *(a15 + 320) = 0u;
  *(a15 + 336) = 0u;
  *(a15 + 288) = 0u;
  *(a15 + 304) = 0u;
  *(a15 + 256) = 0u;
  *(a15 + 272) = 0u;
  *(a15 + 224) = 0u;
  *(a15 + 240) = 0u;
  *(a15 + 192) = 0u;
  *(a15 + 208) = 0u;
  *(a15 + 160) = 0u;
  *(a15 + 176) = 0u;
  *(a15 + 128) = 0u;
  *(a15 + 144) = 0u;
  *(a15 + 96) = 0u;
  *(a15 + 112) = 0u;
  *(a15 + 64) = 0u;
  *(a15 + 80) = 0u;
  *(a15 + 32) = 0u;
  *(a15 + 48) = 0u;
  *a15 = 0u;
  *(a15 + 16) = 0u;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(a1, v161, a2, a3, a4);
  v209 = 0xDE876B1A5;
  v649 = 0;
  v648 = 4123088130;
  v210 = -1;
  v647 = -1;
  v646 = 0;
  v645 = 0;
  v211 = *(a1 + 8);
  v212 = *(*(v211 + 1872) + 848);
  if (*(v212 + 6241) == 1 && (v161 & 0x400000000000) != 0)
  {
    v207.i32[0] = *(v211 + 7184);
    v593 = *(v211 + 7188);
    v594 = *(v211 + 7192);
    v208.i32[0] = 931135616;
    v595.i64[0] = 0x8000000080000000;
    v595.i64[1] = 0x8000000080000000;
    LODWORD(v596) = vbslq_s8(v595, v208, v207).u32[0];
    if (*(*(v211 + 2392) + 4924))
    {
      *v207.i32 = v596 + (*v207.i32 * 0.000015259);
    }

    *&v654 = 0;
    LOBYTE(v658) = 0;
    LOBYTE(v652) = 0;
    v597 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v212, *(*(v211 + 7664) + 952), &v654, &v658, &v652, *v207.i32, v593, v594);
    if (v652)
    {
      if (v658)
      {
        v210 = v597;
        v209 = v654;
      }

      else
      {
        v649 = 1;
        v645 = 4;
      }
    }

    else
    {
      v649 = 1;
    }

    v211 = *(a1 + 8);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(v211, &v650, &v647, &v648, &v646, &v649, &v645);
  v213 = *(a1 + 8);
  v214 = v649 | (*(*(v213 + 1912) + 520) == 0);
  v649 = v214;
  v215 = *(*(v213 + 1872) + 848) + 4096;
  if ((*(*(*(v213 + 1872) + 848) + 6242) & 1) == 0)
  {
    v214 |= ((*(v213 + 328) - *(*(v213 + 48) + 536)) >> 4) > 0xFFFE;
    v649 = v214;
  }

  if (*(v215 + 2145))
  {
    if ((v214 & 1) == 0)
    {
LABEL_241:
      v216 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    v246 = *(v213 + 296);
    if (!v246)
    {
      v598 = v213;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v213 + 24, 7u);
      v213 = v598;
      v246 = *(v598 + 296);
      if (!v246)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v598 + 24, 7u);
        v246 = 0;
        v213 = v598;
      }
    }

    v649 = v214 | (-1431655765 * ((v246 - *(*(v213 + 48) + 472)) >> 2) > 0xFFFE);
    v213 = *(a1 + 8);
    if ((v649 & 1) == 0)
    {
      goto LABEL_241;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(v213, &v650, v645, 1);
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(a1, v650, a2, a3, a4);
  v213 = *(a1 + 8);
  v216 = 1;
  if (a16 && (v651 & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v213 = *(a1 + 8);
    v216 = 1;
  }

LABEL_242:
  if (!*(*(v213 + 1912) + 520))
  {
    v217 = *(v213 + 1968) - *(v213 + 1984);
    *(v217 + 140) = 1;
    if ((*(v217 + 136) & 4) != 0)
    {
      **(v213 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(v213, &v650, v647, v648, v646, v216);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(*(a1 + 8), &v650, v210, v209, v218, v219, v220, v221);
  v227 = v650;
  v228 = a3;
  if ((v650 & 0x800000000000) != 0)
  {
    v586 = *(a1 + 8);
    v587 = *(v586 + 5944);
    v588 = *(v586 + 200);
    v589 = v588 + 11;
    if ((v588 + 11) <= *(v586 + 192))
    {
      goto LABEL_586;
    }

    v606 = AGX::DataBufferAllocator<44ul>::growNoInline(v586 + 24, 4, 0);
    v588 = *(v586 + 200);
    if (!v606)
    {
      v228 = a3;
LABEL_587:
      v590 = ((v588 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v591 = v590 + *(v586 + 216);
      *v590 = v587;
      *(v586 + 200) = v590 + 1;
      *(v586 + 5960) = v591 & 0xFFFFFFFC;
      *(v586 + 5956) = (v591 >> 16) & 0xFFFF0000;
      v227 |= 0x8000000000000uLL;
      v650 = v227;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
      {
        *(v586 + 10472) |= 0x1000000000000uLL;
      }

      goto LABEL_246;
    }

    v589 = v588 + 11;
    v228 = a3;
    if ((v588 + 11) <= *(v586 + 192))
    {
LABEL_586:
      *(v586 + 208) = v589;
      goto LABEL_587;
    }

LABEL_591:
    abort();
  }

LABEL_246:
  v229 = *(a2 + 3004);
  *(a1 + 60) = v229;
  v230 = *(a1 + 1048);
  if (*(a2 + 3796))
  {
    v231 = 0;
    v232 = a2 + 3800;
    do
    {
      *(v230 + 664 + 4 * *(v232 + 4 * v231)) = v229 | 0x80000000;
      v229 = *(a1 + 60) + *(v230 + 804 + 4 * *(v232 + 4 * v231));
      *(a1 + 60) = v229;
      ++v231;
    }

    while (v231 < *(a2 + 3796));
  }

  *(v230 + 944) = v229;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 7440, *(a2 + 1296), *(a2 + 1308), *(a2 + 1324), v229, a14 * a12 * a13, v222, v223, v224, v225, v226))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 7440, *(v228 + 1296), *(v228 + 1308), *(v228 + 1324), *(v228 + 3004), a10 * a9 * HIDWORD(a9), v233, v234, v235, v236, v237))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  v239 = *(a1 + 24);
  if ((v227 & 0xFE3F80030) != 0)
  {
    v240 = *(a1 + 8);
    if ((*(v240 + 7412) & 1) == 0)
    {
      v638 = *(a1 + 16);
      v631 = *(v240 + 7688);
      v627 = *(a1 + 48);
      v628 = *(a1 + 56);
      v630 = *(v240 + 7400);
      v241 = *(a1 + 1032);
      v654 = 0uLL;
      *v656 = 0;
      v655 = 0;
      *&v656[4] = 0x3000000A5;
      v657 = 0;
      *&v656[20] = 0;
      v242 = ((v241 << 16) + 4128768) & 0xFFC00000;
      if (v241)
      {
        v243 = v242 + 1;
      }

      else
      {
        v243 = v242;
      }

      *&v656[12] = v243;
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v658, &v654);
      v244 = *(a2 + 624);
      v629 = v227;
      if (v244)
      {
        v245 = (v239[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v634 = v245 + v239[20];
        v239[18] = v245 + v244;
      }

      else
      {
        v634 = 0;
        v245 = 0;
      }

      v247 = a5;
      v623 = v658;
      v248 = ((v239[26] + 63) & 0xFFFFFFFFFFFFFFC0);
      v632 = v239[28];
      v637 = v239;
      v239[26] = &v248[*(*(a2 + 2392) + 8) - **(a2 + 2392)];
      v249 = *(a2 + 1128);
      v250 = *(a2 + 1120);
      v251 = v249 - v250;
      v92 = v249 == v250;
      v252 = *(a2 + 1016);
      v253 = v252 & 1;
      if (v92)
      {
        v253 = 0;
      }

      if (!v244)
      {
        goto LABEL_362;
      }

      v254 = *(a2 + 1320);
      v255 = *(a2 + 656);
      v611 = *(a2 + 736);
      v625 = *(a2 + 660);
      v256 = *(a2 + 1024);
      v257 = *(a2 + 1028);
      v258 = v255 + ((*(a2 + 872) - *(a2 + 864)) >> 2);
      v259 = *(a2 + 1353);
      v609 = *(a2 + 1352);
      if (*(a2 + 1352))
      {
        *(a1 + 272) = vaddw_u32(vdupq_n_s64(v634), *(a2 + 628));
      }

      if (v259)
      {
        *(a1 + 304) = v634 + *(a2 + 648);
      }

      v621 = 8 * v258;
      v619 = v253 + v252;
      if (v257 + v256)
      {
        *(a1 + 368) = v621 + v634 + 4 * (v619 + ((v251 >> 1) & 0xFFFFFFFE));
      }

      v613 = v251;
      v615 = v256;
      v617 = v257;
      if (v255 == v254)
      {
        v260 = 0;
        if (v254)
        {
          goto LABEL_277;
        }

        goto LABEL_326;
      }

      if (a5)
      {
        v658 = a5;
        v652 = a1 + 88;
        v265 = &unk_2A23F9E78;
        *&v654 = &unk_2A23F9E78;
        *(&v654 + 1) = &v652;
        v655 = &v658;
        *v656 = &v654;
        v266 = *(a2 + 688);
        v267 = *(a2 + 696);
        if (v266 != v267)
        {
          v607 = v259;
          v268 = 0;
          while (1)
          {
            v653 = *v266;
            if (!*v656)
            {
              break;
            }

            v270 = (*(**v656 + 48))(*v656, &v653);
            v271 = *(v266 + 1);
            v272 = *(v266 + 2);
            if (v271 == v272)
            {
              v269 = v268;
            }

            else
            {
              do
              {
                v273 = *v271++;
                v269 = (v268 + 1);
                *(v245 + 8 * v268) = *(v270 + 8 * v273);
                LODWORD(v268) = v268 + 1;
              }

              while (v271 != v272);
            }

            v266 += 8;
            v268 = v269;
            if (v266 == v267)
            {
              goto LABEL_299;
            }
          }

LABEL_619:
          std::__throw_bad_function_call[abi:nn200100]();
        }
      }

      else
      {
        v658 = a1 + 88;
        v265 = &unk_2A23F9A88;
        *&v654 = &unk_2A23F9A88;
        *(&v654 + 1) = &v658;
        *v656 = &v654;
        v274 = *(a2 + 688);
        v275 = *(a2 + 696);
        if (v274 != v275)
        {
          v607 = v259;
          v276 = 0;
          do
          {
            LODWORD(v652) = *v274;
            if (!*v656)
            {
              goto LABEL_619;
            }

            v278 = (*(**v656 + 48))(*v656, &v652);
            v279 = *(v274 + 8);
            v280 = *(v274 + 16);
            if (v279 == v280)
            {
              v277 = v276;
            }

            else
            {
              do
              {
                v281 = *v279++;
                v277 = (v276 + 1);
                *(v245 + 8 * v276) = *(v278 + 8 * v281);
                LODWORD(v276) = v276 + 1;
              }

              while (v279 != v280);
            }

            v274 += 32;
            v276 = v277;
          }

          while (v274 != v275);
LABEL_299:
          v282 = *v656;
          if (*v656 != &v654)
          {
            v256 = v615;
            v257 = v617;
            v259 = v607;
            if (*v656)
            {
              (*(**v656 + 40))();
            }

LABEL_305:
            v247 = a5;
            v251 = v613;
            if (*(a2 + 1160))
            {
              v283 = *(a2 + 1144);
              if (v283 != (a2 + 1152))
              {
                do
                {
                  *(v245 + 4 * *(v283 + 7)) |= *(v283 + 8);
                  v294 = v283[1];
                  if (v294)
                  {
                    do
                    {
                      v295 = v294;
                      v294 = *v294;
                    }

                    while (v294);
                  }

                  else
                  {
                    do
                    {
                      v295 = v283[2];
                      v92 = *v295 == v283;
                      v283 = v295;
                    }

                    while (!v92);
                  }

                  v283 = v295;
                }

                while (v295 != (a2 + 1152));
              }
            }

            v284 = (v611 + 3) & 0xFFFFFFFC;
            if (v609)
            {
              v285 = *(a2 + 1312);
              if (v285 >= 4)
              {
                v286 = *(a5 + 24) + *(a5 + 8);
                v287 = v285 >> 2;
                v288 = *(a2 + 752);
                v289 = (v245 + 8 * v284);
                do
                {
                  v290 = *v288;
                  v288 += 4;
                  v291 = (v286 + 8 * v290);
                  v292 = v291[1];
                  *v289 = *v291;
                  v289[1] = v292;
                  v289 += 2;
                  --v287;
                }

                while (v287);
              }

              v284 += v285;
              v293 = v255 - v254;
              if (!v259)
              {
LABEL_325:
                v260 = 8 * v293;
                if (v254)
                {
LABEL_277:
                  if (v254 >= 4)
                  {
                    v261 = *(a2 + 2920);
                    v262 = v254 >> 2;
                    v263 = (v245 + v260);
                    do
                    {
                      v264 = *v261;
                      v261 += 4;
                      *v263 = v264;
                      v263 += 4;
                      --v262;
                    }

                    while (v262);
                  }

                  v260 += 8 * v254;
                  if (!v625)
                  {
LABEL_342:
                    v312 = v251 >> 2;
                    if ((v251 >> 2))
                    {
                      v313 = v621 + 4 * v619;
                      v314 = (v245 + (v313 & 0xFFFFFFFC));
                      v315 = *(v247 + 24) + *(v247 + 12);
                      v316 = *(a2 + 1120);
                      do
                      {
                        v317 = *v316++;
                        *v314++ = *(v315 + 8 * v317);
                        LODWORD(v312) = v312 - 1;
                      }

                      while (v312);
                      v260 = v313 + 8 * (v251 >> 2);
                    }

                    if (v257 != -v256)
                    {
                      v318 = (v245 + v260);
                      v319 = 4 * *(a2 + 1024);
                      v320 = v247;
                      memcpy(v318, (v247 + 4 * *(a2 + 1020)), v319);
                      v658 = v320;
                      v652 = a1 + 88;
                      v321 = &unk_2A23F9F08;
                      *&v654 = &unk_2A23F9F08;
                      *(&v654 + 1) = &v652;
                      v655 = &v658;
                      *v656 = &v654;
                      v322 = *(a2 + 1056);
                      v323 = *(a2 + 1064);
                      if (v322 == v323)
                      {
                        v330 = &v654;
                      }

                      else
                      {
                        v324 = 0;
                        do
                        {
                          v653 = *v322;
                          if (!*v656)
                          {
                            goto LABEL_619;
                          }

                          v326 = (*(**v656 + 48))(*v656, &v653);
                          v327 = *(v322 + 1);
                          v328 = *(v322 + 2);
                          if (v327 == v328)
                          {
                            v325 = v324;
                          }

                          else
                          {
                            do
                            {
                              v329 = *v327++;
                              v325 = (v324 + 1);
                              *&v318[4 * v324 + v319] = *(v326 + 4 * v329);
                              LODWORD(v324) = v324 + 1;
                            }

                            while (v327 != v328);
                          }

                          v322 += 8;
                          v324 = v325;
                        }

                        while (v322 != v323);
                        v330 = *v656;
                        if (*v656 != &v654)
                        {
                          if (*v656)
                          {
                            (*(**v656 + 40))();
                          }

                          goto LABEL_361;
                        }

                        v321 = **v656;
                      }

                      v321[4](v330);
LABEL_361:
                      v247 = a5;
                    }

LABEL_362:
                    if (v247)
                    {
                      v331 = *(v247 + 24) + *(v247 + 4);
                    }

                    else
                    {
                      v331 = 0;
                    }

                    v332 = a3;
                    v333 = *(a2 + 2392);
                    memcpy(v248, *v333, *(v333 + 8) - *v333);
                    v334 = &xmmword_29D2F1000;
                    v335 = &xmmword_29D2F1000;
                    if (*(v333 + 272) == 1)
                    {
                      v336.i64[0] = v634;
                      v336.i64[1] = v634 >> 5;
                      *&v248[*(v333 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v248[*(v333 + 276)], vshlq_u8(vqtbl1q_s8(v336, xmmword_29D2F17A0), xmmword_29D2F17B0));
                    }

                    v337 = a6;
                    if (v331)
                    {
                      v338 = *(v333 + 224);
                      for (k = *(v333 + 232); v338 != k; v338 += 3)
                      {
                        v340.i64[0] = *(v331 + 8 * v338[1]) + *v338;
                        v340.i64[1] = v340.i64[0] >> 5;
                        *&v248[v338[2]] = vbslq_s8(xmmword_29D2F17C0, *&v248[v338[2]], vshlq_u8(vqtbl1q_s8(v340, xmmword_29D2F17A0), xmmword_29D2F17B0));
                      }
                    }

                    v341 = *(v333 + 248);
                    for (m = *(v333 + 256); v341 != m; v341 += 3)
                    {
                      v343.i64[0] = *(a1 + 88 + 8 * v341[1]) + *v341;
                      v343.i64[1] = v343.i64[0] >> 5;
                      *&v248[v341[2]] = vbslq_s8(xmmword_29D2F17C0, *&v248[v341[2]], vshlq_u8(vqtbl1q_s8(v343, xmmword_29D2F17A0), xmmword_29D2F17B0));
                    }

                    if (!*(v333 + 312))
                    {
                      *&v248[*(v333 + 316)] = v623;
                    }

                    v344 = &v248[v632];
                    v345 = *v638;
                    v640 = &v248[v632];
                    if (*v638)
                    {
                      v346 = *v333;
                      v347 = *(v333 + 8);
                      v348 = *(a2 + 2800);
                      LODWORD(v349) = *(v345 + 2);
                      v350 = v349 + 1;
                      if (*(v345 + 3) >= (v349 + 1))
                      {
                        v353 = *v345;
                      }

                      else
                      {
                        v351 = -__clz(v349);
                        v352 = malloc_type_malloc(40 << (v351 & 0x1F), 0x10800400D7C94D2uLL);
                        v353 = v352;
                        v354 = 1 << v351;
                        v349 = *(v345 + 2);
                        if (v349)
                        {
                          memcpy(v352, *v345, 40 * v349);
                          free(*v345);
                          LODWORD(v349) = *(v345 + 2);
                        }

                        v344 = &v248[v632];
                        v337 = a6;
                        *(v345 + 3) = v354;
                        *v345 = v353;
                      }

                      v355 = &v353[40 * v349];
                      *v355 = 4;
                      *(v355 + 1) = v344;
                      *(v355 + 2) = v248;
                      *(v355 + 3) = (v347 - v346);
                      *(v355 + 8) = v348;
                      *(v345 + 2) = v350;
                      v332 = a3;
                      v334 = &xmmword_29D2F1000;
                      v335 = &xmmword_29D2F1000;
                    }

                    v356 = *(v332 + 624);
                    if (v356)
                    {
                      v357 = v637;
                      v358 = (v637[18] + 31) & 0xFFFFFFFFFFFFFFE0;
                      v359 = v358 + v637[20];
                      v637[18] = v358 + v356;
                    }

                    else
                    {
                      v359 = 0;
                      v358 = 0;
                      v357 = v637;
                    }

                    v635 = (v332 + 628);
                    v360 = ((v357[26] + 63) & 0xFFFFFFFFFFFFFFC0);
                    v633 = v357[28];
                    v357[26] = &v360[*(*(v332 + 2392) + 8) - **(v332 + 2392)];
                    v361 = *(v332 + 1128);
                    v362 = *(v332 + 1120);
                    v363 = v361 - v362;
                    v92 = v361 == v362;
                    v364 = *(v332 + 1016);
                    v365 = v364 & 1;
                    if (v92)
                    {
                      v365 = 0;
                    }

                    if (!v356)
                    {
                      goto LABEL_480;
                    }

                    v366 = v332;
                    v367 = *(v332 + 1320);
                    v368 = *(v366 + 656);
                    v610 = *(v366 + 736);
                    v624 = *(v366 + 660);
                    v626 = *(v366 + 1024);
                    v369 = *(v366 + 1028);
                    v370 = v368 + ((*(v366 + 872) - *(v366 + 864)) >> 2);
                    v620 = *(v366 + 1353);
                    v608 = *(v366 + 1352);
                    if (*(v366 + 1352))
                    {
                      *(a1 + 1576) = vaddw_u32(vdupq_n_s64(v359), *v635);
                    }

                    if (v620)
                    {
                      *(a1 + 1608) = v359 + *(a3 + 648);
                    }

                    v618 = 8 * v370;
                    v616 = v365 + v364;
                    if (v369 + v626)
                    {
                      *(a1 + 1672) = v618 + v359 + 4 * (v616 + ((v363 >> 1) & 0xFFFFFFFE));
                    }

                    v622 = v359;
                    v614 = v363;
                    v612 = v369;
                    if (v368 == v367)
                    {
                      v371 = 0;
                      v335 = &xmmword_29D2F1000;
                      if (!v367)
                      {
                        goto LABEL_444;
                      }

                      goto LABEL_440;
                    }

                    if (v337)
                    {
                      v658 = v337;
                      v652 = a1 + 1392;
                      v372 = &unk_2A23F9F50;
                      *&v654 = &unk_2A23F9F50;
                      *(&v654 + 1) = &v652;
                      v655 = &v658;
                      *v656 = &v654;
                      v373 = *(a3 + 688);
                      v374 = *(a3 + 696);
                      if (v373 != v374)
                      {
                        v375 = 0;
                        while (1)
                        {
                          v653 = *v373;
                          if (!*v656)
                          {
                            goto LABEL_619;
                          }

                          v377 = (*(**v656 + 48))(*v656, &v653);
                          v378 = *(v373 + 1);
                          v379 = *(v373 + 2);
                          if (v378 == v379)
                          {
                            v376 = v375;
                          }

                          else
                          {
                            do
                            {
                              v380 = *v378++;
                              v376 = (v375 + 1);
                              *(v358 + 8 * v375) = *(v377 + 8 * v380);
                              LODWORD(v375) = v375 + 1;
                            }

                            while (v378 != v379);
                          }

                          v373 += 8;
                          v375 = v376;
                          if (v373 == v374)
                          {
                            goto LABEL_413;
                          }
                        }
                      }
                    }

                    else
                    {
                      v658 = a1 + 1392;
                      v372 = &unk_2A23F9AD0;
                      *&v654 = &unk_2A23F9AD0;
                      *(&v654 + 1) = &v658;
                      *v656 = &v654;
                      v381 = *(a3 + 688);
                      v382 = *(a3 + 696);
                      if (v381 != v382)
                      {
                        v383 = 0;
                        do
                        {
                          LODWORD(v652) = *v381;
                          if (!*v656)
                          {
                            goto LABEL_619;
                          }

                          v385 = (*(**v656 + 48))(*v656, &v652);
                          v386 = *(v381 + 8);
                          v387 = *(v381 + 16);
                          if (v386 == v387)
                          {
                            v384 = v383;
                          }

                          else
                          {
                            do
                            {
                              v388 = *v386++;
                              v384 = (v383 + 1);
                              *(v358 + 8 * v383) = *(v385 + 8 * v388);
                              LODWORD(v383) = v383 + 1;
                            }

                            while (v386 != v387);
                          }

                          v381 += 32;
                          v383 = v384;
                        }

                        while (v381 != v382);
LABEL_413:
                        v389 = *v656;
                        if (*v656 != &v654)
                        {
                          v334 = &xmmword_29D2F1000;
                          v359 = v622;
                          if (*v656)
                          {
                            (*(**v656 + 40))();
                          }

LABEL_419:
                          v337 = a6;
                          v363 = v614;
                          if (*(a3 + 1160))
                          {
                            v390 = *(a3 + 1144);
                            if (v390 != (a3 + 1152))
                            {
                              do
                              {
                                *(v358 + 4 * *(v390 + 7)) |= *(v390 + 8);
                                v400 = v390[1];
                                if (v400)
                                {
                                  do
                                  {
                                    v401 = v400;
                                    v400 = *v400;
                                  }

                                  while (v400);
                                }

                                else
                                {
                                  do
                                  {
                                    v401 = v390[2];
                                    v92 = *v401 == v390;
                                    v390 = v401;
                                  }

                                  while (!v92);
                                }

                                v390 = v401;
                              }

                              while (v401 != (a3 + 1152));
                            }
                          }

                          v391 = (v610 + 3) & 0xFFFFFFFC;
                          if (v608)
                          {
                            v392 = *(a3 + 1312);
                            if (v392 >= 4)
                            {
                              v393 = *(a6 + 24) + *(a6 + 8);
                              v394 = v392 >> 2;
                              v395 = *(a3 + 752);
                              v396 = (v358 + 8 * v391);
                              do
                              {
                                v397 = *v395;
                                v395 += 4;
                                v398 = (v393 + 8 * v397);
                                v399 = v398[1];
                                *v396 = *v398;
                                v396[1] = v399;
                                v396 += 2;
                                --v394;
                              }

                              while (v394);
                            }

                            v391 += v392;
                          }

                          else
                          {
                            v392 = 0;
                          }

                          v402 = v368 - v367;
                          v335 = &xmmword_29D2F1000;
                          if (v620)
                          {
                            v403 = *(a3 + 1316);
                            v404 = (v358 + 8 * v391);
                            v405 = *(a6 + 24) + *(a6 + 12);
                            if (*(a3 + 2192) == 1)
                            {
                              if (v403)
                              {
                                v604 = (*(a3 + 752) + 4 * v392);
                                do
                                {
                                  v605 = *v604++;
                                  *v404++ = *(v405 + 8 * v605);
                                  --v403;
                                }

                                while (v403);
                              }
                            }

                            else if (v403 >= 4)
                            {
                              v406 = v403 >> 2;
                              v407 = (*(a3 + 752) + 4 * v392);
                              do
                              {
                                v408 = *v407;
                                v407 += 4;
                                *v404 = *(v405 + 8 * v408);
                                v404 += 4;
                                --v406;
                              }

                              while (v406);
                            }
                          }

                          v371 = 8 * v402;
                          if (!v367)
                          {
LABEL_444:
                            v332 = a3;
                            if (!v624)
                            {
                              goto LABEL_460;
                            }

                            *(a1 + 1408) = v359 + v371 + 8;
                            v658 = v337;
                            v652 = a1 + 1392;
                            v413 = &unk_2A23F9F98;
                            *&v654 = &unk_2A23F9F98;
                            *(&v654 + 1) = &v652;
                            v655 = &v658;
                            *v656 = &v654;
                            v414 = *(a3 + 800);
                            v415 = *(a3 + 808);
                            if (v414 == v415)
                            {
                              v422 = &v654;
                              v334 = &xmmword_29D2F1000;
                              v359 = v622;
                            }

                            else
                            {
                              v416 = 0;
                              do
                              {
                                v653 = *v414;
                                if (!*v656)
                                {
                                  goto LABEL_619;
                                }

                                v418 = (*(**v656 + 48))(*v656, &v653);
                                v419 = *(v414 + 1);
                                v420 = *(v414 + 2);
                                if (v419 == v420)
                                {
                                  v417 = v416;
                                }

                                else
                                {
                                  do
                                  {
                                    v421 = *v419++;
                                    v417 = (v416 + 1);
                                    *(v358 + v371 + 4 * v416) = *(v418 + 4 * v421);
                                    LODWORD(v416) = v416 + 1;
                                  }

                                  while (v419 != v420);
                                }

                                v414 += 8;
                                v416 = v417;
                              }

                              while (v414 != v415);
                              v422 = *v656;
                              v335 = &xmmword_29D2F1000;
                              if (*v656 != &v654)
                              {
                                v332 = a3;
                                v334 = &xmmword_29D2F1000;
                                v359 = v622;
                                if (*v656)
                                {
                                  (*(**v656 + 40))();
                                }

                                goto LABEL_459;
                              }

                              v413 = **v656;
                              v332 = a3;
                              v334 = &xmmword_29D2F1000;
                              v359 = v622;
                            }

                            v413[4](v422);
LABEL_459:
                            v371 += 4 * v624;
                            v337 = a6;
                            v363 = v614;
LABEL_460:
                            v423 = v363 >> 2;
                            if ((v363 >> 2))
                            {
                              v424 = v618 + 4 * v616;
                              v425 = (v358 + (v424 & 0xFFFFFFFC));
                              v426 = *(v337 + 24) + *(v337 + 12);
                              v427 = *(v332 + 1120);
                              do
                              {
                                v428 = *v427++;
                                *v425++ = *(v426 + 8 * v428);
                                LODWORD(v423) = v423 - 1;
                              }

                              while (v423);
                              v371 = v424 + 8 * (v363 >> 2);
                            }

                            if (v612 == -v626)
                            {
                              goto LABEL_480;
                            }

                            v429 = (v358 + v371);
                            v430 = (v337 + 4 * *(v332 + 1020));
                            v431 = v332;
                            v432 = 4 * *(v332 + 1024);
                            v433 = v337;
                            memcpy(v429, v430, v432);
                            v658 = v433;
                            v652 = a1 + 1392;
                            v434 = &unk_2A23F9FE0;
                            *&v654 = &unk_2A23F9FE0;
                            *(&v654 + 1) = &v652;
                            v655 = &v658;
                            *v656 = &v654;
                            v435 = *(v431 + 1056);
                            v436 = *(v431 + 1064);
                            if (v435 == v436)
                            {
                              v444 = &v654;
                              v332 = a3;
                              v334 = &xmmword_29D2F1000;
                            }

                            else
                            {
                              v437 = 0;
                              v438 = &v429[v432];
                              v332 = a3;
                              do
                              {
                                v653 = *v435;
                                if (!*v656)
                                {
                                  goto LABEL_619;
                                }

                                v440 = (*(**v656 + 48))(*v656, &v653);
                                v441 = *(v435 + 1);
                                v442 = *(v435 + 2);
                                if (v441 == v442)
                                {
                                  v439 = v437;
                                }

                                else
                                {
                                  do
                                  {
                                    v443 = *v441++;
                                    v439 = (v437 + 1);
                                    *&v438[4 * v437] = *(v440 + 4 * v443);
                                    LODWORD(v437) = v437 + 1;
                                  }

                                  while (v441 != v442);
                                }

                                v435 += 8;
                                v437 = v439;
                              }

                              while (v435 != v436);
                              v444 = *v656;
                              if (*v656 != &v654)
                              {
                                v334 = &xmmword_29D2F1000;
                                v335 = &xmmword_29D2F1000;
                                v359 = v622;
                                if (*v656)
                                {
                                  (*(**v656 + 40))();
                                }

                                goto LABEL_479;
                              }

                              v434 = **v656;
                              v334 = &xmmword_29D2F1000;
                              v335 = &xmmword_29D2F1000;
                            }

                            v359 = v622;
                            v434[4](v444);
LABEL_479:
                            v337 = a6;
LABEL_480:
                            if (v337)
                            {
                              v445 = *(v337 + 24) + *(v337 + 4);
                            }

                            else
                            {
                              v445 = 0;
                            }

                            v446 = *(v332 + 2392);
                            memcpy(v360, *v446, *(v446 + 8) - *v446);
                            if (*(v446 + 272) == 1)
                            {
                              v447.i64[0] = v359;
                              v447.i64[1] = v359 >> 5;
                              *&v360[*(v446 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v360[*(v446 + 276)], vshlq_u8(vqtbl1q_s8(v447, v334[122]), v335[123]));
                            }

                            if (v445)
                            {
                              v448 = *(v446 + 224);
                              v449 = *(v446 + 232);
                              if (v448 != v449)
                              {
                                v450 = v334[122];
                                v451 = v335[123];
                                do
                                {
                                  v452.i64[0] = *(v445 + 8 * v448[1]) + *v448;
                                  v452.i64[1] = v452.i64[0] >> 5;
                                  *&v360[v448[2]] = vbslq_s8(xmmword_29D2F17C0, *&v360[v448[2]], vshlq_u8(vqtbl1q_s8(v452, v450), v451));
                                  v448 += 3;
                                }

                                while (v448 != v449);
                              }
                            }

                            v453 = *(v446 + 248);
                            v454 = *(v446 + 256);
                            if (v453 != v454)
                            {
                              v455 = v334[122];
                              v456 = v335[123];
                              do
                              {
                                v457.i64[0] = *(a1 + 1392 + 8 * v453[1]) + *v453;
                                v457.i64[1] = v457.i64[0] >> 5;
                                *&v360[v453[2]] = vbslq_s8(xmmword_29D2F17C0, *&v360[v453[2]], vshlq_u8(vqtbl1q_s8(v457, v455), v456));
                                v453 += 3;
                              }

                              while (v453 != v454);
                            }

                            v458 = &v360[v633];
                            v459 = *v638;
                            if (*v638)
                            {
                              v460 = *v446;
                              v461 = *(v446 + 8);
                              v462 = *(a3 + 2800);
                              LODWORD(v463) = *(v459 + 2);
                              v464 = v463 + 1;
                              if (*(v459 + 3) >= (v463 + 1))
                              {
                                v467 = *v459;
                              }

                              else
                              {
                                v642 = *(a3 + 2800);
                                v465 = -__clz(v463);
                                v466 = malloc_type_malloc(40 << (v465 & 0x1F), 0x10800400D7C94D2uLL);
                                v467 = v466;
                                v468 = 1 << v465;
                                v463 = *(v459 + 2);
                                if (v463)
                                {
                                  memcpy(v466, *v459, 40 * v463);
                                  free(*v459);
                                  LODWORD(v463) = *(v459 + 2);
                                }

                                v462 = v642;
                                *(v459 + 3) = v468;
                                *v459 = v467;
                              }

                              v469 = &v467[40 * v463];
                              *v469 = 6;
                              *(v469 + 1) = v458;
                              *(v469 + 2) = v360;
                              *(v469 + 3) = (v461 - v460);
                              *(v469 + 8) = v462;
                              *(v459 + 2) = v464;
                            }

                            v470 = *(a2 + 3732);
                            v471 = *(a2 + 3724);
                            v228 = a3;
                            v472 = *(a3 + 3728);
                            v473 = *(a3 + 3740);
                            v474 = *(a3 + 3748);
                            v238 = v635[391];
                            v475 = *(v631 + 908);
                            if (v630)
                            {
                              v476 = 0;
                            }

                            else
                            {
                              v476 = 32;
                            }

                            v477 = *(a3 + 3732) & 0xFFFFFFDF | v476;
                            v478 = *(a3 + 3736) & 0xFFF0000 | *(a2 + 3720) & 0xFFF;
                            if (v475)
                            {
                              v470 = v470 & 0xFFFFFF80 | ((v475 + 1023) >> 10) & 0x7F;
                            }

                            LOBYTE(v227) = v629;
                            v479 = *(a1 + 2060);
                            v480 = v637[6];
                            v480->i32[0] = 1073745196;
                            v480->i32[1] = v472;
                            v480[1].i32[0] = v477;
                            v480[1].i32[1] = (v479 - 1) & 7;
                            v480[2].i32[0] = v478;
                            v480[2].i32[1] = (v640 >> 16) & 0xFFC00000 | v471 & 0x3FFFFF;
                            v480[3].i32[0] = v640 >> 6;
                            v480[3].i32[1] = (v458 >> 16) & 0xFFC00000 | v473 & 0x3FFFFF;
                            v481 = v458 >> 6;
                            v239 = v637;
                            v480[4].i32[0] = v481;
                            v480[4].i32[1] = v470;
                            v480[5].i32[0] = v474;
                            v480[5].i32[1] = (v627 >> 21) & 0x3FF800 | v627 & 0x7FF | (v628 << 22);
                            v480[6] = v238;
                            v637[6] = v480 + 7;
                            goto LABEL_505;
                          }

LABEL_440:
                          if (v367 >= 4)
                          {
                            v409 = *(a3 + 2920);
                            v410 = v367 >> 2;
                            v411 = (v358 + v371);
                            do
                            {
                              v412 = *v409;
                              v409 += 4;
                              *v411 = v412;
                              v411 += 4;
                              --v410;
                            }

                            while (v410);
                          }

                          v371 += 8 * v367;
                          goto LABEL_444;
                        }

                        v372 = **v656;
                        v334 = &xmmword_29D2F1000;
                        v359 = v622;
LABEL_418:
                        v372[4](v389);
                        goto LABEL_419;
                      }
                    }

                    v389 = &v654;
                    v334 = &xmmword_29D2F1000;
                    v359 = v622;
                    goto LABEL_418;
                  }

LABEL_327:
                  *(a1 + 104) = v634 + v260 + 8;
                  v658 = v247;
                  v652 = a1 + 88;
                  v302 = &unk_2A23F9EC0;
                  *&v654 = &unk_2A23F9EC0;
                  *(&v654 + 1) = &v652;
                  v655 = &v658;
                  *v656 = &v654;
                  v303 = *(a2 + 800);
                  v304 = *(a2 + 808);
                  if (v303 == v304)
                  {
                    v311 = &v654;
                    v256 = v615;
                    v257 = v617;
                  }

                  else
                  {
                    v305 = 0;
                    do
                    {
                      v653 = *v303;
                      if (!*v656)
                      {
                        goto LABEL_619;
                      }

                      v307 = (*(**v656 + 48))(*v656, &v653);
                      v308 = *(v303 + 1);
                      v309 = *(v303 + 2);
                      if (v308 == v309)
                      {
                        v306 = v305;
                      }

                      else
                      {
                        do
                        {
                          v310 = *v308++;
                          v306 = (v305 + 1);
                          *(v245 + v260 + 4 * v305) = *(v307 + 4 * v310);
                          LODWORD(v305) = v305 + 1;
                        }

                        while (v308 != v309);
                      }

                      v303 += 8;
                      v305 = v306;
                    }

                    while (v303 != v304);
                    v311 = *v656;
                    if (*v656 != &v654)
                    {
                      v256 = v615;
                      v257 = v617;
                      if (*v656)
                      {
                        (*(**v656 + 40))();
                      }

                      goto LABEL_341;
                    }

                    v302 = **v656;
                    v256 = v615;
                    v257 = v617;
                  }

                  v302[4](v311);
LABEL_341:
                  v260 += 4 * v625;
                  v247 = a5;
                  v251 = v613;
                  goto LABEL_342;
                }

LABEL_326:
                if (!v625)
                {
                  goto LABEL_342;
                }

                goto LABEL_327;
              }
            }

            else
            {
              v285 = 0;
              v293 = v255 - v254;
              if (!v259)
              {
                goto LABEL_325;
              }
            }

            v296 = *(a2 + 1316);
            v297 = (v245 + 8 * v284);
            v298 = *(a5 + 24) + *(a5 + 12);
            if (*(a2 + 2192) == 1)
            {
              if (v296)
              {
                v602 = (*(a2 + 752) + 4 * v285);
                do
                {
                  v603 = *v602++;
                  *v297++ = *(v298 + 8 * v603);
                  --v296;
                }

                while (v296);
              }
            }

            else if (v296 >= 4)
            {
              v299 = v296 >> 2;
              v300 = (*(a2 + 752) + 4 * v285);
              do
              {
                v301 = *v300;
                v300 += 4;
                *v297 = *(v298 + 8 * v301);
                v297 += 4;
                --v299;
              }

              while (v299);
            }

            goto LABEL_325;
          }

          v265 = **v656;
          v256 = v615;
          v257 = v617;
          v259 = v607;
LABEL_304:
          v265[4](v282);
          goto LABEL_305;
        }
      }

      v282 = &v654;
      v256 = v615;
      v257 = v617;
      goto LABEL_304;
    }
  }

LABEL_505:
  if ((v227 & 0x20) != 0)
  {
    v482 = v239[6];
    *v482 = *(v228 + 3912);
    v239[6] = v482 + 1;
  }

  v483 = v650;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>(*(a1 + 16), *(a1 + 24), a4, *(*(a1 + 8) + 7688), a7, (*(a1 + 8) + 8824), v650, *(*(a1 + 8) + 7408), v238, *(*(a1 + 8) + 7412));
  if ((v483 & 4) != 0)
  {
    v490 = *(a1 + 8);
    v491 = *(a3 + 3880);
    v492 = *(a3 + 3888);
    v493 = *(v490 + 7416);
    *(v490 + 6024) = *(v490 + 6024) & 0xF0E3FF00 | v491 & 0xF1C00FF;
    *(v490 + 6032) = *(v490 + 6032) & 0xFFFFFFF8 | (v493 - 1) & 7;
    *(v490 + 6036) = HIDWORD(v491);
    *(v490 + 6028) = v492;
    *(v490 + 10472) |= 4uLL;
    v494 = *(a1 + 24);
    v495 = *(a1 + 8);
    v496 = *(v495 + 6020);
    LODWORD(v495) = *(v495 + 6036);
    v497 = v494[126];
    v498 = v494[128] + v497;
    v494[126] = v497 + 20;
    *v497 = v496;
    *(v497 + 16) = v495;
    v499 = v494[6];
    *v499 = __ROR8__(v498, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v494[6] = v499 + 1;
    if ((v483 & 0x100000000000) == 0)
    {
LABEL_509:
      if ((v483 & 0x1000000000000) == 0)
      {
        goto LABEL_510;
      }

      goto LABEL_544;
    }
  }

  else if ((v483 & 0x100000000000) == 0)
  {
    goto LABEL_509;
  }

  if (a16)
  {
    v500 = atomic_load((*(*(*(a1 + 8) + 1872) + 848) + 17017));
    if ((v500 & 1) == 0)
    {
      goto LABEL_523;
    }
  }

  else if (!a4 || *(a4 + 1354) != 1)
  {
    goto LABEL_523;
  }

  v501 = *(a1 + 8);
  if ((*(v501 + 5983) & 7) == 0)
  {
    *(*(v501 + 7664) + 1168) |= 0x10000uLL;
  }

LABEL_523:
  v502 = *(a1 + 8);
  v503 = vand_s8(*(v502 + 5980), vdup_n_s32(0xFFFC00FF));
  v504 = 7384;
  if (*(v502 + 7376) == 2)
  {
    v504 = 7388;
  }

  v505 = 256.0;
  if (*(v502 + 7376) == 2)
  {
    v505 = 1023.5;
  }

  v506 = *(v502 + v504) * 16.0;
  if (v506 <= v505)
  {
    v505 = *(v502 + v504) * 16.0;
  }

  v507 = v505;
  if (v506 < 0.0)
  {
    v507 = 0;
  }

  if (v507)
  {
    v508 = ((v507 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v508 = 0;
  }

  *(v502 + 5980) = vorr_s8(v503, vdup_n_s32(v508));
  v509 = *(a1 + 24);
  v510 = *(a1 + 8);
  v511 = *(v510 + 5972);
  v512 = *(v510 + 5976);
  v654 = *(v510 + 5980);
  LODWORD(v655) = *(v510 + 5996);
  v513 = *(v510 + 6000);
  v514 = *(v510 + 6004);
  v658 = *(v510 + 6008);
  v659 = *(v510 + 6016);
  v515 = *(v510 + 7402);
  if (a16)
  {
    v516 = 0x10000000;
  }

  else
  {
    v516 = 0;
  }

  v517 = v512 & 0xEBFFFFFF | v516;
  if (v515 & 1 | ((v512 & 0x4000000) != 0))
  {
    v518 = 0x4000000;
  }

  else
  {
    v518 = 0;
  }

  v519 = v518 | v517;
  v520 = v509[126];
  v521 = v509[128] + v520;
  v509[126] = v520 + 28;
  *v520 = v511;
  *(v520 + 4) = v519;
  *(v520 + 24) = v655;
  *(v520 + 8) = v654;
  v522 = v509[6];
  *v522 = __ROR8__(v521, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  v509[6] = v522 + 1;
  if ((v515 | ((v514 & 0x4000000u) >> 26)))
  {
    v523 = 0x4000000;
  }

  else
  {
    v523 = 0;
  }

  v524 = v509[126];
  v525 = v509[128] + v524;
  v509[126] = v524 + 20;
  *v524 = v513;
  *(v524 + 4) = v523 | v514 & 0xFBFFFFFF;
  *(v524 + 8) = v658;
  *(v524 + 16) = v659;
  v526 = v509[6];
  *v526 = __ROR8__(v525, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v509[6] = v526 + 1;
  v483 = v650;
  if ((v650 & 0x1000000000000) == 0)
  {
LABEL_510:
    if ((v483 & 0x2000000000000) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_556;
  }

LABEL_544:
  v527 = 0;
  v528 = *(a1 + 24);
  v529 = *(a1 + 8);
  v530 = ((*(v529 + 5404) >> 11) & 0x78) + 10;
  v531 = v528[126];
  v532 = v528[128];
  v528[126] = v531 + 4 * v530;
  v533 = *(v529 + 5404);
  v534 = (v533 >> 14) & 0xF;
  *v531 = v533;
  v535 = (v531 + 4);
  v536 = v534 + 1;
  if (v534 < 3 || (v531 - (v529 + 5404)) <= 0x1F)
  {
    goto LABEL_551;
  }

  v527 = v536 & 0x1C;
  v537 = *(v529 + 5424);
  v535 += v527;
  *(v531 + 4) = *(v529 + 5408);
  *(v531 + 20) = v537;
  if (v527 != 4)
  {
    v538 = *(v529 + 5456);
    *(v531 + 36) = *(v529 + 5440);
    *(v531 + 52) = v538;
    if (v527 != 8)
    {
      v539 = *(v529 + 5488);
      *(v531 + 68) = *(v529 + 5472);
      *(v531 + 84) = v539;
      if (v527 != 12)
      {
        v540 = *(v529 + 5520);
        *(v531 + 100) = *(v529 + 5504);
        *(v531 + 116) = v540;
      }
    }
  }

  if (v527 != v536)
  {
LABEL_551:
    v541 = ((v533 >> 14) & 0xF) - v527 + 1;
    v542 = (v529 + 8 * v527 + 5408);
    do
    {
      v543 = *v542++;
      *v535++ = v543;
      --v541;
    }

    while (v541);
  }

  v544 = v532 + v531;
  v545 = v535 + 4;
  *v535 = *(v529 + 5536);
  v546 = (v529 + 5540);
  do
  {
    v547 = *v546;
    *(v545 + 2) = *(v546 + 2);
    *v545 = v547;
    v545 += 24;
    v546 = (v546 + 24);
    --v536;
  }

  while (v536);
  v548 = v528[6];
  *v548 = BYTE4(v544) | (v530 << 8) | ((v544 >> 2) << 34);
  v528[6] = v548 + 1;
  if ((v483 & 0x2000000000000) == 0)
  {
LABEL_511:
    if ((v483 & 0x4000000000000) == 0)
    {
      goto LABEL_512;
    }

    goto LABEL_560;
  }

LABEL_556:
  v549 = *(a1 + 24);
  v550 = *(a1 + 8);
  v551 = *(v550 + 5964);
  v552 = *(v550 + 7688);
  if (v552)
  {
    v553 = *(v552 + 820);
    v554 = *(v552 + 828);
  }

  else
  {
    v553 = 8650754;
    v554 = 128;
  }

  v555 = v549[126];
  v556 = v549[128] + v555;
  v549[126] = v555 + 12;
  *v555 = v553;
  *(v555 + 8) = v554;
  v557 = v549[6];
  *v557 = __ROR8__(v556, 32) & 0xFFFFFFFC000000FFLL | 0x300;
  v549[6] = v557 + 1;
  v558 = v549[126];
  v559 = v558 + v549[128];
  v549[126] = v558 + 1;
  *v558 = v551;
  v560 = v549[6];
  *v560 = __ROR8__(v559, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v549[6] = v560 + 1;
  if ((v483 & 0x4000000000000) == 0)
  {
LABEL_512:
    if ((v483 & 0x8000000000000) == 0)
    {
      return;
    }

    goto LABEL_513;
  }

LABEL_560:
  v561 = *(a1 + 24);
  v562 = *(a1 + 8);
  v563 = *(v562 + 5924);
  LODWORD(v562) = *(v562 + 5940);
  v564 = v561[42];
  v565 = v561[44] + v564;
  v561[42] = v564 + 20;
  *v564 = v563;
  *(v564 + 16) = v562;
  v566 = v561[6];
  *v566 = __ROR8__(v565, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v561[6] = v566 + 1;
  if ((v483 & 0x8000000000000) != 0)
  {
LABEL_513:
    v484 = *(a1 + 24);
    v485 = *(a1 + 8);
    v486 = *(v485 + 5952);
    LODWORD(v485) = *(v485 + 5960);
    v487 = v484[126];
    v488 = v484[128] + v487;
    v484[126] = v487 + 12;
    *v487 = v486;
    *(v487 + 8) = v485;
    v489 = v484[6];
    *v489 = __ROR8__(v488, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    v484[6] = v489 + 1;
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000000000) == 0 && *(*(result + 9752) + 80))
  {
    return result;
  }

  v2 = *(result + 200);
  v3 = v2 + 132;
  if ((v2 + 132) > *(result + 192))
  {
    v81 = result;
    v80 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 4, 0);
    result = v81;
    v2 = *(v81 + 200);
    if (!v80)
    {
      goto LABEL_5;
    }

    v3 = v2 + 132;
    if ((v2 + 132) > *(v81 + 192))
    {
      abort();
    }
  }

  *(result + 208) = v3;
LABEL_5:
  v4 = *(result + 216) + v2;
  *(result + 200) = v2 + 132;
  *v2 = *(result + 6844);
  if (*(result + 7392))
  {
    v5 = 7132;
    v6 = 6876;
    if (!*(result + 6852))
    {
      v6 = 7132;
    }

    v7 = (result + v6);
    v8 = *v7;
    v9 = v7[1];
    if (*(result + 6852))
    {
      v10 = 6884;
    }

    else
    {
      v10 = 7132;
    }

    if (*(result + 6852))
    {
      v11 = 6892;
    }

    else
    {
      v11 = 7132;
    }

    if (*(result + 6852))
    {
      v12 = 6900;
    }

    else
    {
      v12 = 7132;
    }

    if (*(result + 6852))
    {
      v13 = 6908;
    }

    else
    {
      v13 = 7132;
    }

    if (*(result + 6852))
    {
      v14 = 6916;
    }

    else
    {
      v14 = 7132;
    }

    if (*(result + 6852))
    {
      v15 = 6924;
    }

    else
    {
      v15 = 7132;
    }

    if (*(result + 6852))
    {
      v16 = 6932;
    }

    else
    {
      v16 = 7132;
    }

    v17 = 6940;
    if (!*(result + 6852))
    {
      v17 = 7132;
    }

    if (v8 >= v9)
    {
      v18 = v8;
    }

    else
    {
      v18 = v9;
    }

    if (v8 >= v9)
    {
      v8 = v9;
    }

    *(v2 + 4) = v8;
    *(v2 + 8) = v18;
    v19 = (result + v10);
    v20 = *v19;
    v21 = v19[1];
    if (*v19 >= v21)
    {
      v22 = *v19;
    }

    else
    {
      v22 = v19[1];
    }

    if (*v19 >= v21)
    {
      v20 = v19[1];
    }

    *(v2 + 12) = v20;
    *(v2 + 16) = v22;
    v23 = *(result + v11);
    v24 = *(result + v11 + 4);
    if (v23 >= v24)
    {
      v25 = *(result + v11);
    }

    else
    {
      v25 = *(result + v11 + 4);
    }

    if (v23 >= v24)
    {
      v23 = *(result + v11 + 4);
    }

    *(v2 + 20) = v23;
    *(v2 + 24) = v25;
    v26 = *(result + v12);
    v27 = *(result + v12 + 4);
    if (v26 >= v27)
    {
      v28 = *(result + v12);
    }

    else
    {
      v28 = *(result + v12 + 4);
    }

    if (v26 >= v27)
    {
      v26 = *(result + v12 + 4);
    }

    *(v2 + 28) = v26;
    *(v2 + 32) = v28;
    v29 = *(result + v13);
    v30 = *(result + v13 + 4);
    if (v29 >= v30)
    {
      v31 = *(result + v13);
    }

    else
    {
      v31 = *(result + v13 + 4);
    }

    if (v29 >= v30)
    {
      v29 = *(result + v13 + 4);
    }

    *(v2 + 36) = v29;
    *(v2 + 40) = v31;
    v32 = *(result + v14);
    v33 = *(result + v14 + 4);
    if (v32 >= v33)
    {
      v34 = *(result + v14);
    }

    else
    {
      v34 = *(result + v14 + 4);
    }

    if (v32 >= v33)
    {
      v32 = *(result + v14 + 4);
    }

    *(v2 + 44) = v32;
    *(v2 + 48) = v34;
    v35 = *(result + v15);
    v36 = *(result + v15 + 4);
    if (v35 >= v36)
    {
      v37 = *(result + v15);
    }

    else
    {
      v37 = *(result + v15 + 4);
    }

    if (v35 >= v36)
    {
      v35 = *(result + v15 + 4);
    }

    *(v2 + 52) = v35;
    *(v2 + 56) = v37;
    v38 = *(result + v16);
    v39 = *(result + v16 + 4);
    if (v38 >= v39)
    {
      v40 = *(result + v16);
    }

    else
    {
      v40 = *(result + v16 + 4);
    }

    if (v38 >= v39)
    {
      v38 = *(result + v16 + 4);
    }

    *(v2 + 60) = v38;
    *(v2 + 64) = v40;
    v41 = (result + v17);
    v42 = *v41;
    v43 = v41[1];
    if (*v41 >= v43)
    {
      v44 = *v41;
    }

    else
    {
      v44 = v41[1];
    }

    if (*v41 >= v43)
    {
      v42 = v41[1];
    }

    v45 = *(result + 6852);
    *(v2 + 68) = v42;
    *(v2 + 72) = v44;
    v46 = v45 == 0;
    v47 = 6948;
    if (v46)
    {
      v47 = 7132;
    }

    v48 = (result + v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = 6956;
    if (v46)
    {
      v51 = 7132;
    }

    v52 = 6964;
    if (v46)
    {
      v52 = 7132;
    }

    v53 = 6972;
    if (v46)
    {
      v53 = 7132;
    }

    v54 = 6980;
    if (v46)
    {
      v54 = 7132;
    }

    v55 = 6988;
    if (v46)
    {
      v55 = 7132;
    }

    if (!v46)
    {
      v5 = 6996;
    }

    if (v49 >= v50)
    {
      v56 = v49;
    }

    else
    {
      v56 = v50;
    }

    if (v49 >= v50)
    {
      v49 = v50;
    }

    *(v2 + 76) = v49;
    *(v2 + 80) = v56;
    v57 = (result + v51);
    v58 = *v57;
    v59 = v57[1];
    if (*v57 >= v59)
    {
      v60 = *v57;
    }

    else
    {
      v60 = v57[1];
    }

    if (*v57 >= v59)
    {
      v58 = v57[1];
    }

    *(v2 + 84) = v58;
    *(v2 + 88) = v60;
    v61 = *(result + v52);
    v62 = *(result + v52 + 4);
    if (v61 >= v62)
    {
      v63 = *(result + v52);
    }

    else
    {
      v63 = *(result + v52 + 4);
    }

    if (v61 >= v62)
    {
      v61 = *(result + v52 + 4);
    }

    *(v2 + 92) = v61;
    *(v2 + 96) = v63;
    v64 = *(result + v53);
    v65 = *(result + v53 + 4);
    if (v64 >= v65)
    {
      v66 = *(result + v53);
    }

    else
    {
      v66 = *(result + v53 + 4);
    }

    if (v64 >= v65)
    {
      v64 = *(result + v53 + 4);
    }

    *(v2 + 100) = v64;
    *(v2 + 104) = v66;
    v67 = *(result + v54);
    v68 = *(result + v54 + 4);
    if (v67 >= v68)
    {
      v69 = *(result + v54);
    }

    else
    {
      v69 = *(result + v54 + 4);
    }

    if (v67 >= v68)
    {
      v67 = *(result + v54 + 4);
    }

    *(v2 + 108) = v67;
    *(v2 + 112) = v69;
    v70 = *(result + v55);
    v71 = *(result + v55 + 4);
    if (v70 >= v71)
    {
      v72 = *(result + v55);
    }

    else
    {
      v72 = *(result + v55 + 4);
    }

    if (v70 >= v71)
    {
      v70 = *(result + v55 + 4);
    }

    *(v2 + 116) = v70;
    *(v2 + 120) = v72;
    v73 = (result + v5);
    v74 = *v73;
    v75 = v73[1];
    if (*v73 >= v75)
    {
      v76 = *v73;
    }

    else
    {
      v76 = v73[1];
    }

    if (*v73 >= v75)
    {
      v74 = v73[1];
    }

    *(v2 + 124) = v74;
    *(v2 + 128) = v76;
  }

  else
  {
    *&v77 = -1;
    *(&v77 + 1) = -1;
    *(v2 + 100) = v77;
    *(v2 + 116) = v77;
    *(v2 + 68) = v77;
    *(v2 + 84) = v77;
    *(v2 + 36) = v77;
    *(v2 + 52) = v77;
    *(v2 + 4) = v77;
    *(v2 + 20) = v77;
  }

  v78 = *(*(result + 48) + 288) + *MEMORY[0x29EDC5638];
  v79 = *(result + 9752);
  *(v79 + 80) = v4;
  *(v79 + 392) = 0;
  *(result + 9792) = v78;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = v5[6];
  if (v6 + 180 > v5[5])
  {
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a5;
    v39 = a4;
    v40 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 0, 0);
    a3 = v37;
    a4 = v39;
    a2 = v36;
    a5 = v38;
    v41 = v40;
    a1 = v35;
    if (v41)
    {
      v42 = v5[6] + 180;
      if (v42 > v5[5])
      {
        goto LABEL_78;
      }

      v5[7] = v42;
      *v6 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v5, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      a1 = v35;
      a5 = v38;
      a2 = v36;
      a4 = v39;
      a3 = v37;
    }
  }

  else
  {
    v5[7] = v6 + 180;
  }

  v7 = *(a1 + 24);
  if (a3)
  {
    v8 = *(a3 + 624) + 31;
  }

  else
  {
    v8 = 31;
  }

  v9 = *(v7 + 144) + v8;
  if (v9 <= *(v7 + 136))
  {
LABEL_7:
    *(v7 + 152) = v9;
    goto LABEL_8;
  }

  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a5;
  v47 = a4;
  v48 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 3, 0);
  a3 = v45;
  a4 = v47;
  a2 = v44;
  a5 = v46;
  v49 = v48;
  a1 = v43;
  if (v49)
  {
    v9 = *(v7 + 144) + v8;
    if (v9 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    v10 = *(a4 + 624) + 31;
  }

  else
  {
    v10 = 31;
  }

  v11 = *(v7 + 152);
  v12 = v11 + v10;
  if ((v11 + v10) <= *(v7 + 136))
  {
LABEL_12:
    *(v7 + 152) = v12;
    goto LABEL_13;
  }

  v50 = *(v7 + 144);
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a5;
  v55 = a4;
  v56 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 3, 0);
  a3 = v53;
  a4 = v55;
  a2 = v52;
  a5 = v54;
  v57 = v56;
  a1 = v51;
  if (v57)
  {
    v12 = *(v7 + 144) + v10 + v11 - v50;
    if (v12 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *(v7 + 1008) + 636;
  if (v13 <= *(v7 + 1000))
  {
LABEL_14:
    *(v7 + 1016) = v13;
    goto LABEL_15;
  }

  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a5;
  v62 = a4;
  v63 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 30, 0);
  a3 = v60;
  a4 = v62;
  a2 = v59;
  a5 = v61;
  v64 = v63;
  a1 = v58;
  if (v64)
  {
    v13 = *(v7 + 1008) + 636;
    if (v13 > *(v7 + 1000))
    {
      goto LABEL_78;
    }

    goto LABEL_14;
  }

LABEL_15:
  if ((a2 & 0xFE3F80030) == 0)
  {
    goto LABEL_20;
  }

  v14 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  v17 = v16 + v14;
  if (v16 + v14 <= v15)
  {
    goto LABEL_17;
  }

  v67 = a4;
  v68 = a2;
  v69 = a5;
  v70 = a1;
  v71 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  if (v71)
  {
    v17 = v16 + v14;
    a1 = v70;
    a5 = v69;
    a2 = v68;
    a4 = v67;
    if (v16 + v14 > v15)
    {
      goto LABEL_78;
    }

LABEL_17:
    *(v7 + 216) = v17;
    goto LABEL_18;
  }

  v17 = *(v7 + 216);
  a1 = v70;
  a5 = v69;
  a2 = v68;
  a4 = v67;
LABEL_18:
  v18 = (*(*(a4 + 2392) + 8) - **(a4 + 2392)) + 63;
  v19 = v17 + v18;
  if (v17 + v18 <= v15)
  {
LABEL_19:
    *(v7 + 216) = v19;
    goto LABEL_20;
  }

  v72 = a1;
  v73 = a2;
  v74 = a5;
  v75 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  a2 = v73;
  a5 = v74;
  v76 = v75;
  a1 = v72;
  if (v76)
  {
    v19 = *(v7 + 208) + v18 + v17 - v16;
    if (v19 > *(v7 + 200))
    {
      goto LABEL_78;
    }

    goto LABEL_19;
  }

LABEL_20:
  if ((a2 & 0xF8000000002) == 0)
  {
    goto LABEL_30;
  }

  v20 = (*(*(a5 + 2392) + 8) - **(a5 + 2392)) + 63;
  v21 = *(v7 + 240) + v20;
  if (v21 <= *(v7 + 232))
  {
    goto LABEL_22;
  }

  v77 = a1;
  v78 = a5;
  v79 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 6, 0);
  a5 = v78;
  v80 = v79;
  a1 = v77;
  if (v80)
  {
    v21 = *(v7 + 240) + v20;
    if (v21 > *(v7 + 232))
    {
      goto LABEL_78;
    }

LABEL_22:
    *(v7 + 248) = v21;
  }

  v22 = *(a5 + 624);
  if (*(v7 + 1840))
  {
    v23 = 4;
  }

  else
  {
    v23 = 11;
  }

  v24 = (v7 + 40 + 32 * v23);
  if (((1 << v23) & 0x480) != 0 && !v24[1])
  {
    v87 = a1;
    v88 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
    a1 = v87;
    if ((v88 & 1) == 0)
    {
LABEL_78:
      abort();
    }
  }

  v25 = v22 + 31;
  v26 = v24[1] + v25;
  if (v26 <= *v24)
  {
    goto LABEL_29;
  }

  v81 = a1;
  v82 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
  a1 = v81;
  if (v82)
  {
    v26 = v24[1] + v25;
    if (v26 > *v24)
    {
      goto LABEL_78;
    }

LABEL_29:
    v24[2] = v26;
  }

LABEL_30:
  v27 = *(a1 + 24);
  v28 = v27[42] + 20;
  if (v28 <= v27[41])
  {
LABEL_31:
    v27[43] = v28;
    goto LABEL_32;
  }

  v65 = a1;
  v66 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 9, 0);
  a1 = v65;
  if (v66)
  {
    v28 = v27[42] + 20;
    if (v28 > v27[41])
    {
      goto LABEL_78;
    }

    goto LABEL_31;
  }

LABEL_32:
  v29 = *(a1 + 8);
  if ((*(*(*(v29 + 1872) + 848) + 6242) & 1) == 0)
  {
    v30 = 16 * *(v29 + 6844);
    v31 = *(v29 + 328) + v30;
    if (v31 > *(v29 + 320))
    {
      v83 = a1;
      v84 = AGX::DataBufferAllocator<44ul>::growNoInline(v29 + 24, 8, 1);
      a1 = v83;
      if (v84)
      {
        v85 = *(v29 + 328) + v30;
        if (v85 > *(v29 + 320))
        {
          goto LABEL_78;
        }

        *(v29 + 336) = v85;
        *(*(v29 + 7664) + 944) = *(*(v29 + 48) + 512) + *(*(v29 + 48) + 536) - *(*(v29 + 48) + 520);
      }
    }

    else
    {
      *(v29 + 336) = v31;
    }
  }

  v32 = *(a1 + 8);
  if ((*(*(v32[234] + 848) + 6241) & 1) == 0)
  {
    v33 = v32[37];
    if (!v33)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v32 + 3, 7, 0))
      {
        goto LABEL_78;
      }

      v33 = v32[37];
    }

    v34 = v33 + 12;
    if (v34 > v32[36])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v32 + 3, 7, 1))
      {
        v86 = v32[37];
        if ((v86 + 12) > v32[36])
        {
          goto LABEL_78;
        }

        v32[38] = v86 + 12;
        if (!v86)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow((v32 + 3), 7u);
        }

        *(v32[958] + 952) = *(v32[6] + 448) + *(v32[6] + 472) - *(v32[6] + 456);
      }
    }

    else
    {
      v32[38] = v34;
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(uint64_t result, unint64_t *a2, _DWORD *a3, uint64_t *a4, _BYTE *a5, _BYTE *a6, uint64_t *a7)
{
  *a3 = -1;
  *a4 = 4123088130;
  *a5 = 0;
  if (*(*(*(result + 1872) + 848) + 6242) == 1)
  {
    v7 = *a2;
    if ((*a2 & 0x200000000000) != 0)
    {
      v8 = result + 4096;
      v9 = *(result + 6872);
      v10 = result;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 6048, a2);
      *a5 = result;
      if ((*(v8 + 2746) & 1) == 0)
      {
        if (result | (v7 >> 54) & 1 & (v9 ^ 1u))
        {
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v10 + 6048);
          if ((result & 1) == 0)
          {
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v10 + 6048);
            if (result)
            {
              v19 = 0;
              v18 = 0;
              result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(v10 + 1872) + 848), v10 + 6048, 0, *(*(v10 + 7664) + 944), &v19, &v18 + 1, &v18);
              if (v18)
              {
                if ((v18 & 0x100) != 0)
                {
                  v12 = a4;
                  *a3 = result;
                  v13 = v19;
                }

                else
                {
                  v12 = a7;
                  *a6 = 1;
                  v13 = *a7 | 2;
                }

                *v12 = v13;
              }

              else
              {
                *a6 = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(uint64_t result, unint64_t *a2, int a3, uint64_t a4, char a5, int a6)
{
  v6 = *a2;
  if ((*a2 & 0x200000000000) == 0)
  {
    return result;
  }

  v7 = result + 4096;
  v8 = *(result + 6872);
  v9 = *(*(*(result + 1872) + 848) + 6242) == 1 && a6 == 0;
  v10 = result;
  if (!v9)
  {
    v13 = a2;
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 6048, a2);
    a2 = v13;
    a5 = result;
  }

  if (*(v7 + 2746))
  {
    v14 = *(v10 + 5976);
    *(v10 + 5976) = v14 & 0xFFFEFFFF;
    if ((v14 & 0x10000) == 0)
    {
      return result;
    }

LABEL_29:
    *a2 |= 0x100000000000uLL;
    return result;
  }

  v15 = v10;
  if (!(a5 & 1 | (v6 >> 54) & 1 & (v8 ^ 1u)))
  {
    v16 = *(v7 + 3064);
    goto LABEL_25;
  }

  v25 = a2;
  v28 = *(v10 + 7168);
  result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v10 + 6048);
  if (result)
  {
    *(v7 + 3064) = 0;
LABEL_14:
    v15 = v10;
    goto LABEL_23;
  }

  result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v10 + 6048);
  v15 = v10;
  if (result)
  {
    *(v7 + 3064) = 1;
    result = *(*(v10 + 1872) + 848);
    if (*(result + 6242) == 1)
    {
      if (a3 == -1)
      {
        v27 = 0;
        result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(result, v10 + 6048, 0, *(*(v10 + 7664) + 944), &v28, &v27, &v26);
      }

      else
      {
        v28 = a4;
      }

      goto LABEL_14;
    }

    v17 = *(v10 + 328);
    v28 = v17 + *(v10 + 344);
    v18 = v28;
    *(v10 + 328) = v17 + 2;
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(v10 + 6048, v10, 0, v17, v18);
    for (i = 1; ; ++i)
    {
      v15 = v10;
      if (i >= *(v10 + 6844))
      {
        break;
      }

      v20 = *(v10 + 328);
      v21 = *(v10 + 344);
      *(v10 + 328) = v20 + 2;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(v10 + 6048, v10, i, v20, v20 + v21);
    }
  }

LABEL_23:
  v16 = *(v7 + 3064);
  a2 = v25;
  if (v16 == 1)
  {
    v22 = v28;
    v15[1485] = v28 & 0xFFFFFFFC;
    v15[1484] = (v22 >> 16) & 0xFFFF0000;
    *v25 |= 0x4000000000000uLL;
  }

LABEL_25:
  v23 = v15[1494];
  if (v16)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0;
  }

  v15[1494] = v23 & 0xFFFEFFFF | v24;
  if ((v16 ^ ((v23 & 0x10000u) >> 16)))
  {
    goto LABEL_29;
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(uint64_t result, uint64_t a2, int a3, unint64_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8)
{
  if ((*(a2 + 5) & 0x40) != 0)
  {
    v23[3] = v8;
    v23[4] = v9;
    a5.i32[0] = *(result + 7184);
    v10 = *(result + 7188);
    v11 = *(result + 7192);
    a8.i32[0] = 931135616;
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    LODWORD(v13) = vbslq_s8(v12, a8, a5).u32[0];
    if (*(*(result + 2392) + 4924))
    {
      *a5.i32 = v13 + (*a5.i32 * 0.000015259);
    }

    v23[0] = 0;
    v14 = *(*(result + 1872) + 848);
    if (*(v14 + 6241) == 1)
    {
      if (a3 == -1)
      {
        v22 = 0;
        v17 = a2;
        v19 = result;
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v14, *(*(result + 7664) + 952), v23, &v22, &v21, *a5.i32, v10, v11);
        a2 = v17;
        result = v19;
        a4 = v23[0];
      }
    }

    else
    {
      *&a5.i32[1] = v10;
      v15 = *(result + 296);
      v16 = *(result + 312) + v15;
      *(result + 296) = v15 + 12;
      *v15 = a5.i64[0];
      *(v15 + 8) = v11;
      v18 = a2;
      v20 = result;
      AGX::DataBufferAllocator<44ul>::getBasePointer<AGX::IPFEncoderGen4<kAGXRevHAL300>::DepthBiasBits>(result + 24);
      a4 = v16;
      a2 = v18;
      result = v20;
    }

    *(result + 5932) = a4 & 0xFFFFFFFC;
    *(result + 5928) = (a4 >> 16) & 0xFFFF0000;
    *a2 |= 0x4000000000000uLL;
  }

  return result;
}

uint64_t AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(uint64_t result, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5)
{
  v5 = (result + 16 * a3 + 520);
  if (*(result + 804))
  {
    v6 = (result + 8 * a3 + 828);
  }

  else
  {
    v6 = (result + 1084);
  }

  v7 = *v6;
  v8 = vshrn_n_s64(*v5, 0x20uLL);
  *&v9 = vmovn_s64(*v5);
  *a4 = vsli_n_s32(v8, *&v9, 0x10uLL);
  a4[1] = v7;
  if (*(result + 824) == 1)
  {
    v10 = *(*(*(a2 + 10536) + 64) + 16);
    v11 = *(a2 + 744);
    *(a2 + 744) = v11 + 56;
    *v11 = 0;
    *(v11 + 4) = v10;
    *(v11 + 8) = a5;
    *(&v9 + 1) = v8;
    *(v11 + 16) = v9;
    *(v11 + 32) = a3;
    v12 = *(a2 + 7328) + 1;
    *(a2 + 7328) = v12;
    *(*(a2 + 7320) + 4) = v12;
    ++*(a2 + 1956);
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreads(void *a1, unint64_t a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v7 = a1[1];
    v8 = *(v7 + 7688);
  }

  else
  {
    v7 = a1[1];
    v8 = *(v7 + 7688);
    v9 = *(v8 + 24);
    if (v9)
    {
      v9 = *(v9 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v9)
    {
      return;
    }
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    v10 = *(v10 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v10)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, v12);
    v14 = *a4;
    v15 = *(a4 + 1);
    v16 = a4[4];
    v17 = a1[4];
    if (*(v17 + 3946) == 1)
    {
      v18 = *a2 / v14;
      v19 = *(a2 + 8) / v15;
      v20 = *(v17 + 3752);
      LODWORD(v21) = *(v17 + 3760);
      v49 = HIDWORD(v20);
      v22 = v20;
      v23 = v21;
      a2 = *(a2 + 16) / v16;
    }

    else
    {
      v22 = *a3 | (a3[1] << 32);
      v23 = *(a3 + 4);
      v20 = *a2;
      v19 = *(a2 + 8);
      v21 = *(a2 + 16);
      v18 = *a2;
      LODWORD(v49) = v19;
      LODWORD(a2) = v21;
    }

    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v46 = v16;
      v47 = v14;
      v45 = v23;
      v41 = AGX::DataBufferAllocator<44ul>::growNoInline(v24 + 3, 3, 0);
      v16 = v46;
      v14 = v47;
      v23 = v45;
      if (!v41)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v19;
    v27[2] = a2;
    v29 = a1[131];
    *(v29 + 72) = v27 + v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[136] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[1273] |= 0x800000000uLL;
    v26[1279] |= 0x800000000uLL;
    v26[1309] |= 0x30000uLL;
    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
      goto LABEL_15;
    }

    v42 = v16;
    v43 = v23;
    v48 = v14;
    v44 = AGX::DataBufferAllocator<44ul>::growNoInline(v26 + 3, 3, 0);
    v14 = v48;
    v23 = v43;
    v16 = v42;
    if (!v44)
    {
      goto LABEL_16;
    }

    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
LABEL_15:
      v26[22] = v31;
LABEL_16:
      v32 = a1[1];
      v33 = v14 | (v15 << 32);
      v34 = *(v32 + 168);
      v35 = *(v32 + 184);
      *(v32 + 168) = v34 + 12;
      *v34 = 0x100000001;
      *(v34 + 8) = 1;
      v36 = a1[131];
      *(v36 + 80) = v35 + v34;
      *(v36 + 392) = v34;
      a1[137] = *(*(v32 + 48) + 224) + *v30;
      *(v32 + 10184) |= 0x1000000000uLL;
      *(v32 + 10232) |= 0x1000000000uLL;
      *(v32 + 10472) |= 0x30000uLL;
      v37 = v23;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v32 + 7680), a1[130], a1[259], *(v32 + 9744), v13, v33, v16, SHIDWORD(v16), v22, SHIDWORD(v22), v23, v32 + 10088, 0);
      v38 = a1[1];
      if (v12 == 1)
      {
        v39 = 1879048448;
      }

      else
      {
        v39 = 1879048192;
      }

      if (v12 == 3)
      {
        v39 = 1879049728;
      }

      ++*(v38 + 1940);
      v40 = *(v38 + 72);
      *v40 = v39;
      *(v40 + 4) = v20;
      *(v40 + 8) = v49;
      *(v40 + 12) = v21;
      *(v40 + 16) = v22;
      *(v40 + 24) = v37;
      *(v38 + 72) = v40 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(void *a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v8 = a1[1];
    v9 = *(v8 + 7688);
  }

  else
  {
    v8 = a1[1];
    v9 = *(v8 + 7688);
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v11)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v8, v12);
    v14 = a1[4];
    if (*(v14 + 3946) == 1)
    {
      v15 = *(v14 + 3752);
      v16 = *(v14 + 3760);
      v50 = HIDWORD(v15);
      v18 = *a2;
      v17 = a2[1];
      v19 = a2[2];
      LODWORD(v51) = v15;
      v49 = v16;
    }

    else
    {
      v20 = a3[1];
      v16 = *(a3 + 4);
      v18 = *a2;
      v17 = a2[1];
      v51 = *a2 * *a3;
      v15 = *a3 | (v20 << 32);
      LODWORD(v50) = v17 * v20;
      v19 = a2[2];
      v49 = v19 * v16;
    }

    v21 = *a4;
    v22 = *(a4 + 1);
    v23 = a4[4];
    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v47 = v16;
      v46 = v23;
      v42 = AGX::DataBufferAllocator<44ul>::growNoInline(v24 + 3, 3, 0);
      v23 = v46;
      v16 = v47;
      if (!v42)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v17;
    v27[2] = v19;
    v29 = a1[131];
    *(v29 + 72) = v27 + v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[136] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[1273] |= 0x800000000uLL;
    v26[1279] |= 0x800000000uLL;
    v26[1309] |= 0x30000uLL;
    v31 = *a3;
    v32 = a3[2];
    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
      goto LABEL_15;
    }

    v43 = v16;
    v44 = v23;
    v48 = v31;
    v45 = AGX::DataBufferAllocator<44ul>::growNoInline(v26 + 3, 3, 0);
    v31 = v48;
    v23 = v44;
    v16 = v43;
    if (!v45)
    {
      goto LABEL_16;
    }

    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
LABEL_15:
      v26[22] = v33;
LABEL_16:
      v34 = a1[1];
      v35 = *(v34 + 168);
      v36 = *(v34 + 184);
      *(v34 + 168) = v35 + 12;
      *v35 = vmovn_s64(v31);
      v35[1].i32[0] = v32;
      v37 = a1[131];
      *(v37 + 80) = v35 + v36;
      *(v37 + 392) = v35;
      a1[137] = *(*(v34 + 48) + 224) + *v30;
      *(v34 + 10184) |= 0x1000000000uLL;
      *(v34 + 10232) |= 0x1000000000uLL;
      *(v34 + 10472) |= 0x30000uLL;
      v38 = v16;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v34 + 7680), a1[130], a1[259], *(v34 + 9744), v13, v21 | (v22 << 32), v23, SHIDWORD(v23), v15, SHIDWORD(v15), v16, v34 + 10088, 0);
      v39 = a1[1];
      if (v12 == 1)
      {
        v40 = 1879048448;
      }

      else
      {
        v40 = 1879048192;
      }

      if (v12 == 3)
      {
        v40 = 1879049728;
      }

      ++*(v39 + 1940);
      v41 = *(v39 + 72);
      *v41 = v40;
      *(v41 + 4) = v51;
      *(v41 + 8) = v50;
      *(v41 + 12) = v49;
      *(v41 + 16) = v15;
      *(v41 + 24) = v38;
      *(v39 + 72) = v41 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v642 = v4;
  if (*(*(v2 + 424) + 399) != 1)
  {
    return result;
  }

  v5 = v3;
  v6 = v2;
  v7 = result;
  v8 = (result + 7272);
  if ((*(result + 7272) & 1) == 0)
  {
    *v8 = 1;
    *(result + 7260) = 0;
    if ((*(result + 2075) & 1) != 0 || (*(result + 2076) & 1) == 0 && (*(result + 2074) != 1 || *(result + 2072) == 1))
    {
      v9 = *(result + 8480);
      v9[21] = 0;
      v10 = *(result + 9752);
      v10[22] = 0;
      v9[22] = 0;
      v10[23] = 0;
      v9[25] = 0;
      v10[26] = 0;
    }

    v11 = *(result + 8480);
    v11[26] = 0;
    v12 = *(result + 9752);
    v12[27] = 0;
    v11[28] = 0;
    v12[29] = 0;
    v11[40] = 0;
    v12[41] = 0;
    v11[29] = 0;
    v12[30] = 0;
    v11[42] = 0;
    v12[43] = 0;
    v11[31] = 0;
    v12[32] = 0;
  }

  if (*(result + 1896))
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, 3);
  if (*(*(v6 + 424) + 396) == 1)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(v7 + 7688));
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v14 = atomic_load((*(*(v7 + 1872) + 848) + 17016));
    v8[3272] |= v14 & 1;
  }

  if (*(*(v6 + 424) + 397))
  {
    v13 |= 2u;
  }

  v8[140] = v13;
  *(v7 + 1960) = 0;
  if (!*(v7 + 4992))
  {
    v15 = *(v7 + 64);
    v16 = *(v7 + 72);
    *(v7 + 10720) = v16;
    if ((v16 + 1) > v15)
    {
      v609 = AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 24, 0, 0);
      v17 = *(v7 + 72);
      if (v609)
      {
        v610 = v17 + 1;
        if (v610 > *(v7 + 64))
        {
          goto LABEL_597;
        }

        *(v7 + 80) = v610;
        *v16 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v7 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        v17 = *(v7 + 72);
      }
    }

    else
    {
      *(v7 + 80) = v16 + 1;
      v17 = v16;
    }

    *v17 = 0x80000000;
    v18 = v17 + 1;
    *(v7 + 72) = v18;
    *(v7 + 10728) = v18 + *(v7 + 88);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVirtualMapping(v7, 1, *(*(v6 + 424) + 396));
  v635 = *(v7 + 9752);
  v637 = *(v7 + 2392);
  v19 = *(v7 + 7688);
  v646 = *(v7 + 6000);
  v647 = *(v7 + 6016);
  v644 = v8;
  if (v19)
  {
    v20 = (*(v19 + 207) & 0x20000) == 0;
  }

  else
  {
    v20 = 1;
  }

  v632 = v20;
  v627 = (v7 + 2412);
  v21 = *(v6 + 424);
  v22 = *(*(*(v7 + 4968) + 8) + 2728);
  v23 = MEMORY[0x29EDC5638];
  do
  {
    v22 &= ~(1 << __clz(__rbit32(v22)));
    IOGPUResourceListAddResource();
  }

  while (v22);
  if (!*(v7 + 4992))
  {
    *(v7 + 4992) = *(*(v7 + 4960) + 96) + *(*(v7 + 4960) + 80);
  }

  v639 = v6;
  v641 = v5;
  if (v5)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(v7 + 4960);
    goto LABEL_71;
  }

  v28 = *(v7 + 5016);
  v29 = *(v7 + 4960);
  if (!v28)
  {
    *(v7 + 4984) = v29[16] + v29[14];
  }

  v30 = v29[74];
  if (!v30)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v29, 17, 0))
    {
      goto LABEL_597;
    }

    v30 = v29[74];
  }

  v31 = v30 + 32;
  v32 = v29[73];
  v33 = v31 > v32;
  if (v31 > v32)
  {
    v611 = AGX::DataBufferAllocator<44ul>::growNoInline(v29, 17, 0);
    v34 = 0;
    if (!v611)
    {
      goto LABEL_32;
    }

    v31 = v29[74] + 32;
    if (v31 > v29[73])
    {
      goto LABEL_597;
    }
  }

  v29[75] = v31;
  v34 = v33;
LABEL_32:
  if (v28 && !v34)
  {
    goto LABEL_60;
  }

  v35 = *(*(*(v7 + 4976) + 8) + 2728);
  do
  {
    v35 &= ~(1 << __clz(__rbit32(v35)));
    IOGPUResourceListAddResource();
  }

  while (v35);
  v36 = *(v7 + 5008);
  if (v36)
  {
    *(v36 + 4) = *(v7 + 5000);
  }

  v37 = *(v7 + 4960);
  v38 = v37[74];
  v39 = v37;
  if (!v38)
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(v7 + 4960), 0x11u);
    v38 = v37[74];
    v39 = *(v7 + 4960);
  }

  v40 = v37[76] + v38;
  *(v7 + 5000) = 0;
  *(v7 + 5008) = 0;
  *(v7 + 5016) = v40;
  v41 = *(*(v7 + 4976) + 8);
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v661 = v40;
  v669 = 0;
  v42 = v39[14];
  if ((v42 + 26) > v39[13])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v39, 2, 0))
    {
      v615 = v39[14] + 208;
      if (v615 > v39[13])
      {
        goto LABEL_597;
      }

      v39[15] = v615;
      *v42 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v39, 2), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v39[15] = v42 + 26;
  }

  v648 = xmmword_29D2F2500;
  bzero(v649, 0x2A4uLL);
  v658 = 0u;
  v659 = 1065353216;
  v660 = 0x100000001;
  v43 = *(v7 + 4960);
  if (v41)
  {
    v44 = *(v41 + 624) + 31;
  }

  else
  {
    v44 = 31;
  }

  v45 = *(v43 + 144) + v44;
  if (v45 <= *(v43 + 136))
  {
    goto LABEL_49;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v45 = *(v43 + 144) + v44;
    if (v45 > *(v43 + 136))
    {
      goto LABEL_597;
    }

LABEL_49:
    *(v43 + 152) = v45;
  }

  v46 = *(v43 + 1008) + 636;
  if (v46 <= *(v43 + 1000))
  {
LABEL_51:
    *(v43 + 1016) = v46;
    goto LABEL_52;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v43, 30, 0))
  {
    v46 = *(v43 + 1008) + 636;
    if (v46 > *(v43 + 1000))
    {
      goto LABEL_597;
    }

    goto LABEL_51;
  }

LABEL_52:
  if (*(v43 + 1840))
  {
    v47 = 30;
  }

  else
  {
    v47 = 31;
  }

  v48 = (v43 + 40 + 32 * v47);
  v49 = v48[1] + 520;
  if (v49 <= *v48)
  {
LABEL_56:
    v48[2] = v49;
    goto LABEL_57;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v43, v47, 0))
  {
    v49 = v48[1] + 520;
    if (v49 > *v48)
    {
      goto LABEL_597;
    }

    goto LABEL_56;
  }

LABEL_57:
  v50 = (*(*(v41 + 2392) + 8) - **(v41 + 2392)) + 63;
  v51 = *(v43 + 208) + v50;
  if (v51 > *(v43 + 200))
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v43, 5, 0))
    {
      goto LABEL_59;
    }

    v51 = *(v43 + 208) + v50;
    if (v51 > *(v43 + 200))
    {
      goto LABEL_597;
    }
  }

  *(v43 + 216) = v51;
LABEL_59:
  v52 = *(v7 + 4936);
  v53 = *(v7 + 4960);
  LODWORD(v674) = 4;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v52, v53, v41, &v661, &v648, 1, &v674);
  v54 = *(v7 + 4960);
  v55 = v54[126];
  v56 = v54[128] + v55;
  v54[126] = v55 + 20;
  *v55 = xmmword_29D2F2510;
  *(v55 + 16) = 0;
  v57 = v54[14];
  *v57 = __ROR8__(v56, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v54[14] = v57 + 1;
  v58 = v54[126];
  v59 = v54[128] + v58;
  v54[126] = v58 + 28;
  *v58 = xmmword_29D2F1780;
  *(v58 + 16) = 0xE0000000E000000;
  v60 = __ROR8__(v59, 32);
  *(v58 + 24) = 0;
  v61 = v54[14];
  *v61 = v60 & 0xFFFFFFFC000000FFLL | 0x700;
  v54[14] = v61 + 1;
  v62 = *(v41 + 4112);
  v63 = *(v7 + 4960);
  v64 = v63[126];
  v65 = v63[128] + v64;
  v63[126] = v64 + 20;
  *v64 = 203948032;
  *(v64 + 4) = v62 & 0xF1C00FF;
  *(v64 + 8) = 0;
  *(v64 + 16) = HIDWORD(v62);
  v66 = v63[14];
  *v66 = __ROR8__(v65, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v63[14] = v66 + 1;
  v67 = *(v7 + 4960);
  v68 = v67[126];
  v69 = v67[128] + v68;
  v67[126] = v68 + 12;
  *v68 = 8650754;
  *(v68 + 8) = 131200;
  v70 = __ROR8__(v69, 32);
  v71 = v67[14];
  *v71 = v70 & 0xFFFFFFFC000000FFLL | 0x300;
  v67[14] = v71 + 1;
  v72 = v67[126];
  v73 = v72 + v67[128];
  v67[126] = v72 + 1;
  v74 = __ROR8__(v73, 32);
  *v72 = 0x48000800000;
  v75 = v67[14];
  *v75 = v74 & 0xFFFFFFFC000000FFLL | 0x200;
  v67[14] = v75 + 1;
  v76 = *(v7 + 4960);
  v77 = *(v76 + 112);
  *v77 = 0xFFFF40000001;
  *(v76 + 112) = v77 + 1;
  v78 = *(v7 + 4960);
  v79 = *(v78 + 112);
  *v79 = xmmword_29D2F2520;
  *(v78 + 112) = v79 + 1;
  ++*(v7 + 1940);
  *(v7 + 5008) = v79;
LABEL_60:
  v80 = *(v7 + 4960);
  v81 = *(v80 + 1840) - 1;
  if (v81 > 6)
  {
    v82 = 31;
  }

  else
  {
    v82 = dword_29D2F750C[v81];
  }

  v83 = v82;
  v84 = v80 + 32 * v82;
  if (((1 << v82) & 0xFFF339E0480) != 0 && !*(v84 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), v82, 0) & 1) == 0)
  {
    goto LABEL_597;
  }

  v86 = *(v84 + 40);
  v85 = *(v84 + 48);
  v87 = (v84 + 40);
  v88 = v85 + 8;
  if (v88 > v86)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v80, v83, 0))
    {
      goto LABEL_67;
    }

    v88 = v87[1] + 8;
    if (v88 > *v87)
    {
      goto LABEL_597;
    }
  }

  v87[2] = v88;
LABEL_67:
  v27 = *(v7 + 4960);
  v89 = *(v27 + 1840) - 1;
  if (v89 > 6)
  {
    v91 = 1056;
    v90 = 1040;
  }

  else
  {
    v90 = qword_29D2F7528[v89];
    v91 = qword_29D2F7560[v89];
  }

  v25 = *(v27 + v90);
  v24 = v25 + *(v27 + v91);
  *(v27 + v90) = v25 + 2;
  v26 = *(v27 + 592);
  *(v27 + 592) = v26 + 4;
  *v26 = *(v6 + *v23 + 8);
  v26[1] = v642;
  v26[2] = 0;
  v26[3] = v24 + 0x1000000000;
  ++*(v7 + 5000);
LABEL_71:
  v92 = *(v7 + 11368);
  v93 = *(*(v7 + 4968) + 8);
  v94 = *(v27 + 176) + 1231;
  if (v94 <= *(v27 + 168))
  {
LABEL_72:
    *(v27 + 184) = v94;
    goto LABEL_73;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v27, 4, 0))
  {
    v94 = *(v27 + 176) + 1231;
    if (v94 > *(v27 + 168))
    {
      goto LABEL_597;
    }

    goto LABEL_72;
  }

LABEL_73:
  *v630 = v26;
  v95 = *(v7 + 4960);
  v96 = v95[24];
  v640 = ((v95[22] + 31) & 0xFFFFFFFFFFFFFFE0);
  v95[22] = v640 + 1200;
  v97 = v95[18] + 1063;
  if (v97 <= v95[17])
  {
LABEL_74:
    v95[19] = v97;
    goto LABEL_75;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v95, 3, 0))
  {
    v97 = v95[18] + 1063;
    if (v97 > v95[17])
    {
      goto LABEL_597;
    }

    goto LABEL_74;
  }

LABEL_75:
  v634 = v96;
  v625 = v24;
  v98 = 0;
  v99 = *(v7 + 4960);
  v100 = v99[20];
  __dst = ((v99[18] + 31) & 0xFFFFFFFFFFFFFFE0);
  v99[18] = __dst + 1032;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v101 = *(v6 + 416) + *MEMORY[0x29EDC5638];
  v102 = *(v101 + 8);
  v103 = *(v101 + 24);
  v626 = v100;
  if (v19)
  {
    v104 = 0;
    if (*(v21 + 396))
    {
      v98 = *v19;
      v104 = v19[1];
    }
  }

  else
  {
    v104 = 0;
  }

  v661 = v102;
  v669 = v103;
  v105 = (__dst + 1768);
  if ((__dst + 1768) <= v99[17])
  {
LABEL_80:
    v99[19] = v105;
    goto LABEL_81;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v99, 3, 0))
  {
    v105 = v99[18] + 736;
    if (v105 > v99[17])
    {
      goto LABEL_597;
    }

    goto LABEL_80;
  }

LABEL_81:
  v624 = v25;
  v106 = *(v7 + 4960);
  v107 = *(v106 + 144);
  v108 = *(v106 + 160) + v107;
  *(v106 + 144) = v107 + 736;
  v662 = v108;
  v670 = v107;
  if (*(v21 + 396))
  {
    v109 = 1;
  }

  else
  {
    v109 = 2;
  }

  *(v107 + 72) = v109;
  if (v19)
  {
    v110 = v19[4];
    if (v110)
    {
      v111 = v19[3];
      v112 = *(&v110[469] + 4);
      *(v107 + 252) = v110[468].i32[1];
      *(v107 + 256) = v112;
      *(v107 + 264) = 4 * v110[503].i32[0];
      *(v107 + 270) = v111[493].i8[2];
      v113 = v110[477].u32[1];
      v114 = v113 == 1;
      if (v113 == 3)
      {
        v114 = 6;
      }

      *(v107 + 268) = v114;
      if (v113 >= 4)
      {
        v115 = 0;
      }

      else
      {
        v115 = 0x104u >> (8 * v113);
      }

      *(v107 + 269) = v115;
      *(v107 + 272) = 4 * v111[474].i32[0];
    }
  }

  if (v104)
  {
    v116 = v104 + 28 * v632;
    v117 = *(v116 + 974);
    v118 = *(v116 + 975);
    v119 = *(v116 + 976) & 0x3FFFFF;
    v120 = *(v116 + 489);
    *&v674 = v120;
    *(v107 + 76) = v117 & 0xFFFFFFDF;
    *(v107 + 80) = v118;
    *(v107 + 84) = v119;
    *(v107 + 92) = v120;
    v121 = v104[408];
    v648 = 0u;
    *v649 = 0u;
    *&v649[20] = 1;
    *&v649[24] = *&v121 & 0xFFFFFFFFFFFFLL;
    *&v649[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v648, (v107 + 208));
  }

  if (v98)
  {
    v122 = (*v19)[476].i32[0];
    v123 = (*v19)[477].i32[1];
    v124 = (*v19)[476].i32[1] & 0x3FFFFF;
    v125 = vand_s8((*v19)[475], 0x3FFFF0000);
    v126 = v19[463];
    if (v126)
    {
      v127.i32[0] = v126[4].i32[1];
      v127.i32[1] = v126[4].i32[0];
    }

    else
    {
      v128 = (*v19)[478];
      v127.i32[0] = *(*&v128 + 36);
      v127.i32[1] = *(*&v128 + 32);
    }

    *(v107 + 100) = (*v19)[474].i32[1];
    *(v107 + 104) = vorr_s8(v125, vand_s8(v127, 0xFFFFFFFC0000FFFFLL));
    *(v107 + 112) = v122;
    *(v107 + 116) = v124;
    *(v107 + 120) = 0;
    *(v107 + 124) = v123;
    v129 = v98[409];
    v674 = 0u;
    *v675 = 0u;
    v676 = 1;
    v677 = *&v129 & 0xFFFFFFFFFFFFLL;
    *&v675[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v674, (v107 + 218));
    v130 = *v98[429].i8;
    v655 = *v98[427].i8;
    v656 = v130;
    v657 = v98[431];
    v131 = *v98[421].i8;
    v651 = *v98[419].i8;
    v652 = v131;
    v132 = *v98[425].i8;
    v653 = *v98[423].i8;
    v654 = v132;
    v133 = *v98[413].i8;
    v648 = *v98[411].i8;
    *v649 = v133;
    v134 = *v98[417].i8;
    *&v649[16] = *v98[415].i8;
    v650 = v134;
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(&v648, v107 + 176);
  }

  else if (!v19)
  {
    goto LABEL_103;
  }

  if (*(v21 + 396) == 1)
  {
    *(v107 + 128) = v646;
    *(v107 + 144) = v647;
  }

LABEL_103:
  *v107 = v641;
  *(v107 + 8) = v642;
  *(v107 + 40) = *(v21 + 397);
  *(v107 + 44) = 0;
  *(v107 + 48) = 0;
  *(v107 + 56) = 28;
  *(v107 + 64) = 0;
  *(v107 + 328) = v635[219];
  *(v107 + 332) = v635[220];
  *(v107 + 336) = v635[221];
  *(v107 + 340) = v635[222];
  v135 = *(v21 + 400);
  if (((v135 >> 9) & 1) != (v135 & 0x400) >> 10)
  {
    if ((v135 & 0x200) != 0)
    {
      v136 = (v7 + 6844);
      memcpy((v107 + 344), (v7 + 6056), 16 * *(v7 + 6844));
      v137 = 6876;
      v138 = 8 * *(v7 + 6844);
      v139 = (v107 + 600);
    }

    else
    {
      v137 = 6312;
      v136 = (v7 + 6848);
      v138 = 16 * *(v7 + 6848);
      v139 = (v107 + 344);
    }

    memcpy(v139, (v7 + v137), v138);
    *(v107 + 728) = *v136;
  }

  *(v107 + 276) = v92;
  v140 = *(v637 + 408);
  v141 = *(v637 + 424);
  *(v107 + 320) = *(v637 + 440);
  *(v107 + 288) = v140;
  *(v107 + 304) = v141;
  v142 = *(v7 + 4960);
  v143 = v142[10];
  if ((v143 + 26) > v142[9])
  {
    v144 = v644;
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 1, 0))
    {
      v607 = v142[10] + 208;
      if (v607 > v142[9])
      {
        goto LABEL_597;
      }

      v142[11] = v607;
      *v143 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v142, 1), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v142[11] = v143 + 26;
    v144 = v644;
  }

  v648 = xmmword_29D2F2500;
  bzero(v649, 0x2A4uLL);
  v658 = 0u;
  v659 = 1065353216;
  v660 = 0x100000001;
  v145 = *(v7 + 4960);
  if (v93)
  {
    v146 = *(v93 + 624) + 31;
  }

  else
  {
    v146 = 31;
  }

  v147 = *(v145 + 144) + v146;
  if (v147 <= *(v145 + 136))
  {
LABEL_114:
    *(v145 + 152) = v147;
    goto LABEL_115;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v147 = *(v145 + 144) + v146;
    if (v147 > *(v145 + 136))
    {
      goto LABEL_597;
    }

    goto LABEL_114;
  }

LABEL_115:
  v148 = *(v145 + 1008) + 636;
  if (v148 <= *(v145 + 1000))
  {
LABEL_116:
    *(v145 + 1016) = v148;
    goto LABEL_117;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, 30, 0))
  {
    v148 = *(v145 + 1008) + 636;
    if (v148 > *(v145 + 1000))
    {
      goto LABEL_597;
    }

    goto LABEL_116;
  }

LABEL_117:
  if (*(v145 + 1840))
  {
    v149 = 30;
  }

  else
  {
    v149 = 31;
  }

  v150 = (v145 + 40 + 32 * v149);
  v151 = v150[1] + 520;
  if (v151 <= *v150)
  {
LABEL_121:
    v150[2] = v151;
    goto LABEL_122;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, v149, 0))
  {
    v151 = v150[1] + 520;
    if (v151 > *v150)
    {
      goto LABEL_597;
    }

    goto LABEL_121;
  }

LABEL_122:
  v152 = (*(*(v93 + 2392) + 8) - **(v93 + 2392)) + 63;
  v153 = *(v145 + 208) + v152;
  if (v153 <= *(v145 + 200))
  {
LABEL_123:
    *(v145 + 216) = v153;
    goto LABEL_124;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, 5, 0))
  {
    v153 = *(v145 + 208) + v152;
    if (v153 > *(v145 + 200))
    {
      goto LABEL_597;
    }

    goto LABEL_123;
  }

LABEL_124:
  v154 = *(v7 + 4936);
  v155 = *(v7 + 4960);
  LODWORD(v674) = 2;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v154, v155, v93, &v661, &v648, 1, &v674);
  v160 = *(v7 + 4960);
  v161 = v160[126];
  v162 = v160[128] + v161;
  v160[126] = v161 + 20;
  *v161 = xmmword_29D2F2510;
  *(v161 + 16) = 0;
  v163 = v160[10];
  *v163 = __ROR8__(v162, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v160[10] = v163 + 1;
  v164 = v160[126];
  v165 = v160[128] + v164;
  v160[126] = v164 + 28;
  *v164 = xmmword_29D2F1780;
  *(v164 + 16) = 0xE0000000E000000;
  v166 = __ROR8__(v165, 32);
  *(v164 + 24) = 0;
  v167 = v160[10];
  *v167 = v166 & 0xFFFFFFFC000000FFLL | 0x700;
  v160[10] = v167 + 1;
  v168 = *(v93 + 4112);
  v169 = *(v7 + 4960);
  v170 = v169[126];
  v171 = v169[128] + v170;
  v169[126] = v170 + 20;
  *v170 = 203948032;
  *(v170 + 4) = v168 & 0xF1C00FF;
  *(v170 + 8) = 0;
  *(v170 + 16) = HIDWORD(v168);
  v172 = v169[10];
  *v172 = __ROR8__(v171, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v169[10] = v172 + 1;
  v173 = *(v7 + 4960);
  v174 = v173[126];
  v175 = v173[128] + v174;
  v173[126] = v174 + 12;
  *v174 = 8650754;
  *(v174 + 8) = 131200;
  v176 = __ROR8__(v175, 32);
  v177 = v173[10];
  *v177 = v176 & 0xFFFFFFFC000000FFLL | 0x300;
  v173[10] = v177 + 1;
  v178 = v173[126];
  v179 = v178 + v173[128];
  v173[126] = v178 + 1;
  *v178 = 0x48000800000;
  v180 = __ROR8__(v179, 32);
  v181 = v173[10];
  *v181 = v180 & 0xFFFFFFFC000000FFLL | 0x200;
  v173[10] = v181 + 1;
  v182 = *(v7 + 4960);
  v183 = *(v182 + 80);
  *v183 = 0xFFFF40000001;
  *(v182 + 80) = v183 + 1;
  if (v641 == 1)
  {
    LODWORD(v184) = 1640235008;
    DWORD1(v184) = HIDWORD(v642) - v642 + 1;
    *(&v184 + 1) = 1;
    v185 = *(v7 + 4960);
    v186 = *(v185 + 80);
    *v186 = v184;
    *(v185 + 80) = v186 + 1;
    goto LABEL_137;
  }

  v187 = *(v7 + 4960);
  v188 = *(v187 + 1840) - 1;
  if (v188 > 6)
  {
    v189 = 10;
  }

  else
  {
    v189 = dword_29D2F76D0[v188];
  }

  v190 = v189;
  v191 = v187 + 32 * v189;
  if (((1 << v189) & 0xFFF00000480) != 0 && !*(v191 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), v189, 0) & 1) == 0)
  {
    goto LABEL_597;
  }

  v193 = *(v191 + 40);
  v192 = *(v191 + 48);
  v194 = (v191 + 40);
  v195 = v192 + 16;
  if (v195 > v193)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v187, v190, 0))
    {
      goto LABEL_133;
    }

    v195 = v194[1] + 16;
    if (v195 > *v194)
    {
      goto LABEL_597;
    }
  }

  v194[2] = v195;
LABEL_133:
  v196 = *(v7 + 4960);
  v197 = *(v196 + 1840) - 1;
  if (v197 > 6)
  {
    v198 = 10;
  }

  else
  {
    v198 = qword_29D2F76F0[v197];
  }

  v199 = v196 + 32 * v198;
  v200 = *(v199 + 48);
  v201 = v200 + *(v199 + 64);
  *(*v630 + 16) = v201;
  *&v184 = 0x100000000;
  *v200 = xmmword_29D2F1B30;
  *(v199 + 48) = v200 + 1;
  v202 = v201 & 0xFFFF00000000 | 0x64040000;
  LODWORD(v200) = v201 & 0xFFFFFFFC;
  v203 = *(v196 + 80);
  *(v196 + 80) = v203 + 12;
  *v203 = v202;
  *(v203 + 8) = v200;
LABEL_137:
  ++*(v7 + 1940);
  *(v7 + 10472) = 0x5F700000000000;
  if (*(*(v6 + 424) + 396) == 1)
  {
    v204 = *(v7 + 7688);
    v205 = *(v204 + 32);
    if (v205)
    {
      v206 = *(v204 + 24);
      v207 = *(v206 + 1354) | *(v205 + 1354);
      *(*(v7 + 7664) + 584) |= *(v204 + 908) != 0;
      v208 = *(v7 + 5296);
      if (!v208)
      {
        v208 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
        *(v7 + 5296) = v208;
        v612 = *(v7 + 7688);
        v206 = *(v612 + 24);
        v205 = *(v612 + 32);
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(v208, v206, v205, *&v184, v156, v157, v158, v159);
      v204 = *(v7 + 7688);
      v209 = *(v204 + 8);
      if (v209)
      {
LABEL_142:
        v210 = *(v7 + 7664);
        *(v210 + 578) |= *(v209 + 1354);
        *(v210 + 600) = 2;
        *(v7 + 10472) |= 5uLL;
        *(v7 + 7492) = 1;
        v211 = *(v7 + 7440);
        v212.i64[0] = *(v7 + 7456);
        v213 = *(v7 + 7464);
        v214 = *(v7 + 7472);
        v215 = *(v204 + 40);
        v216 = v211.i32[0];
        if (v211.i32[0] <= v215)
        {
          v216 = *(v204 + 40);
        }

        *(v7 + 7440) = v216;
        v217 = v211.i32[1];
        v218 = *(v204 + 44);
        if (v211.i32[1] <= v218)
        {
          v217 = *(v204 + 44);
        }

        *(v7 + 7444) = v217;
        v219 = v211.i32[2];
        v220 = *(v204 + 48);
        if (v211.i32[2] <= v220)
        {
          v219 = *(v204 + 48);
        }

        *(v7 + 7448) = v219;
        v221 = v211.i32[3];
        v222 = *(v204 + 52);
        if (v211.i32[3] <= v222)
        {
          v221 = *(v204 + 52);
        }

        *(v7 + 7452) = v221;
        v223 = *(v204 + 56);
        v224 = v212.i32[0];
        if (v212.i32[0] <= v223)
        {
          v224 = *(v204 + 56);
        }

        *(v7 + 7456) = v224;
        v225 = *(v204 + 60);
        v226 = v212.i32[1];
        if (v212.i32[1] <= v225)
        {
          v226 = *(v204 + 60);
        }

        *(v7 + 7460) = v226;
        v227 = *(v204 + 64);
        if (v213 <= v227)
        {
          v228 = *(v204 + 64);
        }

        else
        {
          v228 = v213;
        }

        *(v7 + 7464) = v228;
        v212.i64[1] = __PAIR64__(v214, v213);
        v229.i64[0] = __PAIR64__(v218, v215);
        v229.i64[1] = __PAIR64__(v222, v220);
        v230 = *(v204 + 68);
        v231.i64[0] = __PAIR64__(v225, v223);
        v231.i64[1] = __PAIR64__(v230, v227);
        if (v214 <= v230)
        {
          v214 = *(v204 + 68);
        }

        *(v7 + 7472) = v214;
        v232 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v229, v211), vcgtq_s32(v231, v212)))) & 1;
        if (*v204)
        {
          goto LABEL_160;
        }

        goto LABEL_284;
      }
    }

    else
    {
      v207 = 0;
      v209 = *(v204 + 8);
      if (v209)
      {
        goto LABEL_142;
      }
    }

    v232 = 0;
    v376 = *(v7 + 7664);
    *(v376 + 578) |= v207 & 1;
    *(v376 + 600) = 2;
    if (*v204)
    {
LABEL_160:
      *(v7 + 10472) |= 6uLL;
      v233 = *(v7 + 7620);
      v234 = *(*(v7 + 7600) + 7092);
      *(v7 + 7596) = 2;
      v235 = *(v204 + 80);
      v236 = *(v204 + 84);
      v237 = *(v7 + 2404);
      v239 = *(v204 + 72);
      v238 = *(v204 + 76);
      v240.i64[0] = *(v204 + 88);
      v241 = *(v7 + 2420);
      v242 = *(v7 + 7616);
      v243 = *(v7 + 7640);
      v244 = *(v7 + 7624);
      v245 = v237 + v238;
      v246 = __OFSUB__(v245, v243);
      v247 = v245 - v243;
      if ((v247 < 0) ^ v246 | (v247 == 0))
      {
        v247 = 0;
      }

      v248 = v236 + v235 + *(v7 + 2408);
      v249.i64[0] = *v627;
      v249.i64[1] = v240.i64[0];
      v250 = vaddvq_s32(v249);
      v251 = ((v244 + v241 + (v247 + v237) * v242 + v250 + v248 * v233 + 64) * v234 + 7) & 0xFFFFFFF8;
      v252 = *(v144 + 17);
      v240.i64[1] = *v627;
      *(v144 + 17) = vmaxq_s32(v252, v240);
      v253.i64[0] = *(v7 + 7560);
      v254.i32[0] = v241;
      *(v7 + 7560) = vmax_s32(*v253.i8, __PAIR64__(v251, v241));
      v255 = *(v7 + 2400) + v239;
      v246 = __OFSUB__(v255, v243);
      v256 = v255 - v243;
      if ((v256 < 0) ^ v246 | (v256 == 0))
      {
        v256 = 0;
      }

      v257 = ((v250 + v256 * v242 + v244 + v241 + 64) * v234 + 7) & 0xFFFFFFF8;
      v258 = *(v7 + 7568);
      if (v258 <= v257)
      {
        v259 = v257;
      }

      else
      {
        v259 = *(v7 + 7568);
      }

      *(v7 + 7568) = v259;
      v260 = *(v7 + 7576);
      v253.i64[1] = __PAIR64__(v260, v258);
      v254.i32[1] = v251;
      v254.i64[1] = __PAIR64__(v255, v257);
      if (v260 <= v255)
      {
        v261 = v255;
      }

      else
      {
        v261 = *(v7 + 7576);
      }

      *(v7 + 7576) = v261;
      v262 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v240, v252), vcgtq_s32(v254, v253)))) & 1;
      goto LABEL_285;
    }

LABEL_284:
    v262 = 0;
    goto LABEL_285;
  }

  *(*(v7 + 7664) + 578) = 1;
  v263 = *(v6 + 424);
  if (*(v263 + 443) == 1)
  {
    v264 = atomic_load((*(*(v7 + 1872) + 848) + 17018));
    *(*(v7 + 7664) + 584) |= v264 & 1;
    v265 = atomic_load((*(*(v7 + 1872) + 848) + 17019));
    *(*(v7 + 7664) + 1616) |= v265 & 1;
    v266 = atomic_load((*(*(v7 + 1872) + 848) + 17023));
    *(*(v7 + 7664) + 587) |= v266 & 1;
    v263 = *(v6 + 424);
  }

  if (*(v263 + 444))
  {
    v232 = 0;
  }

  else
  {
    v267 = *(*(*(v7 + 1872) + 848) + 16560);
    v268 = *v267;
    v269 = *(v144 + 184);
    v270 = *(v144 + 168);
    v271 = v270.i32[0];
    if (v270.i32[0] <= *v267)
    {
      v271 = *v267;
    }

    *(v7 + 7440) = v271;
    v272 = v267[1];
    v273 = v270.i32[1];
    if (v270.i32[1] <= v272)
    {
      v273 = v267[1];
    }

    *(v7 + 7444) = v273;
    v274 = v267[2];
    v275 = v270.i32[2];
    if (v270.i32[2] <= v274)
    {
      v275 = v267[2];
    }

    *(v7 + 7448) = v275;
    v276 = v267[3];
    v277 = v270.i32[3];
    if (v270.i32[3] <= v276)
    {
      v277 = v267[3];
    }

    *(v7 + 7452) = v277;
    v278 = v267[4];
    v279 = v269.i32[0];
    if (v269.i32[0] <= v278)
    {
      v279 = v267[4];
    }

    *(v7 + 7456) = v279;
    v280 = v269.i32[1];
    v281 = v267[5];
    if (v269.i32[1] <= v281)
    {
      v280 = v267[5];
    }

    *(v7 + 7460) = v280;
    v282 = v269.i32[2];
    v283 = v267[6];
    if (v269.i32[2] <= v283)
    {
      v282 = v267[6];
    }

    *(v7 + 7464) = v282;
    v284 = v267[7];
    v285.i64[0] = __PAIR64__(v281, v278);
    v285.i64[1] = __PAIR64__(v284, v283);
    v286.i64[0] = __PAIR64__(v272, v268);
    v286.i64[1] = __PAIR64__(v276, v274);
    v287 = v269.i32[3];
    if (v269.i32[3] <= v284)
    {
      v287 = v267[7];
    }

    *(v7 + 7468) = v287;
    v288 = v267[8];
    v289 = *(v7 + 7472);
    v290 = v289.i32[0];
    if (v289.i32[0] <= v288)
    {
      v290 = v267[8];
    }

    *(v7 + 7472) = v290;
    v291 = v267[9];
    v292 = v289.i32[1];
    if (v289.i32[1] <= v291)
    {
      v292 = v267[9];
    }

    *(v7 + 7476) = v292;
    v293 = v267[10];
    v294 = v289.i32[2];
    if (v289.i32[2] <= v293)
    {
      v294 = v267[10];
    }

    *(v7 + 7480) = v294;
    v295 = v267[11];
    v296.i64[0] = __PAIR64__(v291, v288);
    v296.i64[1] = __PAIR64__(v295, v293);
    v297 = v289.i32[3];
    if (v289.i32[3] <= v295)
    {
      v297 = v267[11];
    }

    *(v7 + 7484) = v297;
    v298 = v267[12];
    v299 = *(v7 + 7488);
    v300 = v299 < v298;
    if (v299 > v298)
    {
      v298 = *(v7 + 7488);
    }

    *(v7 + 7488) = v298;
    v232 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v286, v270), vcgtq_s32(v285, v269)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v296, v289))) | v300;
    v263 = *(v6 + 424);
  }

  if (*(v263 + 443) == 1)
  {
    v301 = *(*(*(v7 + 1872) + 848) + 16584);
    v302 = *v301;
    v303 = *(v144 + 184);
    v304 = *(v144 + 168);
    v305 = v304.i32[0];
    if (v304.i32[0] <= *v301)
    {
      v305 = *v301;
    }

    *(v7 + 7440) = v305;
    v306 = v301[1];
    v307 = v304.i32[1];
    if (v304.i32[1] <= v306)
    {
      v307 = v301[1];
    }

    *(v7 + 7444) = v307;
    v308 = v301[2];
    v309 = v304.i32[2];
    if (v304.i32[2] <= v308)
    {
      v309 = v301[2];
    }

    *(v7 + 7448) = v309;
    v310 = v301[3];
    v311 = v304.i32[3];
    if (v304.i32[3] <= v310)
    {
      v311 = v301[3];
    }

    *(v7 + 7452) = v311;
    v312 = v301[4];
    v313 = v303.i32[0];
    if (v303.i32[0] <= v312)
    {
      v313 = v301[4];
    }

    *(v7 + 7456) = v313;
    v314 = v301[5];
    v315 = v303.i32[1];
    if (v303.i32[1] <= v314)
    {
      v315 = v301[5];
    }

    *(v7 + 7460) = v315;
    v316 = v301[6];
    v317 = v303.i32[2];
    if (v303.i32[2] <= v316)
    {
      v317 = v301[6];
    }

    *(v7 + 7464) = v317;
    v318.i64[0] = __PAIR64__(v314, v312);
    v318.i32[2] = v316;
    v318.i32[3] = v301[7];
    v319.i64[0] = __PAIR64__(v306, v302);
    v319.i64[1] = __PAIR64__(v310, v308);
    v320 = v303.i32[3];
    if (v303.i32[3] <= v318.i32[3])
    {
      v320 = v301[7];
    }

    *(v7 + 7468) = v320;
    v321 = v301[8];
    v322 = *(v7 + 7472);
    v323 = v322.i32[0];
    if (v322.i32[0] <= v321)
    {
      v323 = v301[8];
    }

    *(v7 + 7472) = v323;
    v324 = v322.i32[1];
    v325 = v301[9];
    if (v322.i32[1] <= v325)
    {
      v324 = v301[9];
    }

    *(v7 + 7476) = v324;
    v326 = v322.i32[2];
    v327 = v301[10];
    if (v322.i32[2] <= v327)
    {
      v326 = v301[10];
    }

    *(v7 + 7480) = v326;
    v328.i64[0] = __PAIR64__(v325, v321);
    v328.i32[2] = v327;
    v328.i32[3] = v301[11];
    v329 = v322.i32[3];
    if (v322.i32[3] <= v328.i32[3])
    {
      v329 = v301[11];
    }

    *(v7 + 7484) = v329;
    v330 = v301[12];
    v331 = *(v7 + 7488);
    v332 = v331 < v330;
    if (v331 > v330)
    {
      v330 = *(v7 + 7488);
    }

    *(v7 + 7488) = v330;
    v232 |= vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v319, v304), vcgtq_s32(v318, v303)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v328, v322))) | v332;
  }

  v333 = *(*(*(v7 + 1872) + 848) + 16568);
  v334 = *v333;
  v335 = *(v7 + 7544);
  v336 = v335 < *v333;
  if (v335 > *v333)
  {
    v334 = *(v7 + 7544);
  }

  *(v7 + 7544) = v334;
  v337 = v333[1];
  v338 = *(v7 + 7548);
  v339 = v338 < v337;
  if (v338 > v337)
  {
    v337 = *(v7 + 7548);
  }

  *(v7 + 7548) = v337;
  v340 = v333[2];
  v341 = *(v7 + 7552);
  if (v339)
  {
    v336 = 1;
  }

  v342 = v341 < v340;
  if (v341 > v340)
  {
    v340 = *(v7 + 7552);
  }

  *(v7 + 7552) = v340;
  v343 = v333[3];
  v344 = *(v7 + 7556);
  if (v342)
  {
    v336 = 1;
  }

  v345 = v344 < v343;
  if (v344 > v343)
  {
    v343 = *(v7 + 7556);
  }

  *(v7 + 7556) = v343;
  v346 = v333[4];
  v347 = *(v7 + 7560);
  if (v345)
  {
    v336 = 1;
  }

  v348 = v347 < v346;
  if (v347 > v346)
  {
    v346 = *(v7 + 7560);
  }

  *(v7 + 7560) = v346;
  v349 = v333[5];
  v350 = *(v7 + 7564);
  if (v348)
  {
    v336 = 1;
  }

  v351 = v350 < v349;
  if (v350 > v349)
  {
    v349 = *(v7 + 7564);
  }

  *(v7 + 7564) = v349;
  v352 = v333[6];
  v353 = *(v7 + 7568);
  if (v351)
  {
    v336 = 1;
  }

  v354 = v353 < v352;
  if (v353 > v352)
  {
    v352 = *(v7 + 7568);
  }

  *(v7 + 7568) = v352;
  v355 = v333[7];
  v356 = *(v7 + 7572);
  if (v354)
  {
    v336 = 1;
  }

  v357 = v356 < v355;
  if (v356 > v355)
  {
    v355 = *(v7 + 7572);
  }

  *(v7 + 7572) = v355;
  v358 = v333[8];
  v359 = *(v7 + 7576);
  v360 = v359 < v358;
  if (v359 > v358)
  {
    v358 = *(v7 + 7576);
  }

  *(v7 + 7576) = v358;
  v361 = v333[9];
  v362 = *(v7 + 7580);
  v363 = v362 < v361;
  if (v362 > v361)
  {
    v361 = *(v7 + 7580);
  }

  *(v7 + 7580) = v361;
  v364 = v333[10];
  v365 = *(v7 + 7584);
  v366 = v365 < v364;
  if (v365 > v364)
  {
    v364 = *(v7 + 7584);
  }

  *(v7 + 7584) = v364;
  v367 = v333[11];
  v368 = *(v7 + 7588);
  v369 = v368 < v367;
  if (v368 > v367)
  {
    v367 = *(v7 + 7588);
  }

  *(v7 + 7588) = v367;
  v370 = v333[12];
  v371 = *(v7 + 7592);
  v372 = v371 < v370;
  if (v371 > v370)
  {
    v370 = *(v7 + 7592);
  }

  *(v7 + 7592) = v370;
  v373 = v372 || v369;
  v262 = v336 | (v357 || v360 || v363 || v366) | v373;
  if (*(*(v6 + 424) + 398) == 1)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v7 + 11088), (*(*(*(v7 + 1872) + 848) + 7168) + 28));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v7 + 11208), (*(*(*(v7 + 1872) + 848) + 7168) + 148));
  }

  v374 = atomic_load((*(*(v7 + 1872) + 848) + 17022));
  *(*(v7 + 7664) + 587) |= v374 & 1;
  v375 = atomic_load((*(*(v7 + 1872) + 848) + 17021));
  *(*(v7 + 7664) + 2060) |= v375 & 1;
LABEL_285:
  {
  }

  if ((v232 & 1) == 0)
  {
    if ((v262 & 1) == 0)
    {
      goto LABEL_288;
    }

LABEL_503:
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v7 + 7544, *(v7 + 7664) + 1360, 0);
    if (*(v7 + 7688))
    {
      goto LABEL_290;
    }

    goto LABEL_289;
  }

  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v7 + 7440, *(v7 + 7664) + 320, 1);
  if (v262)
  {
    goto LABEL_503;
  }

LABEL_288:
  if (!*(v7 + 7688))
  {
LABEL_289:
    *(v7 + 8712) = 0;
    v377 = *(v7 + 8480);
    v377[33] = 0;
    v377[72] = 0;
    *(v7 + 10088) |= 0x800000000000000uLL;
    v378 = *(v7 + 10136);
    *(v7 + 10472) |= 0xC0uLL;
    *(v7 + 10136) = v378 & 0xF7FFFFFFFFFFFFFFLL;
    v379 = *(v7 + 9752);
    v379[34] = 0;
    v379[73] = 0;
    *(v7 + 10376) |= 0x800000000000000uLL;
    v380 = *(v7 + 10424);
    *(v7 + 10472) |= 0x3000000000uLL;
    *(v7 + 10424) = v380 & 0xF7FFFFFFFFFFFFFFLL;
    *(v7 + 8720) = 0;
    v377[34] = 0;
    v377[73] = 0;
    *(v7 + 10088) |= 0x1000000000000000uLL;
    *(v7 + 10136) |= 0x1000000000000000uLL;
    *(v7 + 10472) |= 0xC0uLL;
    *(v7 + 9984) = 0u;
    v379[35] = 0;
    v379[74] = 0;
    *(v7 + 10376) |= 0x1000000000000000uLL;
    *(v7 + 10424) |= 0x1000000000000000uLL;
    *(v7 + 10472) |= 0x3000000000uLL;
  }

LABEL_290:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, 3);
  if (*(*(v6 + 424) + 396) == 1 && *(*(v7 + 7688) + 32))
  {
    v382 = *(v7 + 5296);
    if (!v382)
    {
      v382 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
      *(v7 + 5296) = v382;
    }

    *(v7 + 10472) |= 0x30uLL;
    *(v382 + 64) = 0;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(v382, *(v382 + 32), *(v382 + 40), *(*(v382 + 8) + 7680), *(v382 + 1040), *(v382 + 2072), *(*(v382 + 8) + 9744), v381, 0, 0, 0, 0, 0, 0, v7 + 10088, 1);
    *(v382 + 64) = 0;
  }

  else
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v7, *(v7 + 7672), *(v7 + 7680), *(v7 + 8472), *(v7 + 9744), v7 + 10088, 1);
  }

  v144[140] = 0;
  if (*(v7 + 1896))
  {
    MTLResourceListAddResource();
  }

  v383 = *(v6 + 424);
  if (*(v383 + 443) == 1)
  {
    v384 = *(v7 + 5296);
    if (!v384)
    {
      v384 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
      *(v7 + 5296) = v384;
      v383 = *(v6 + 424);
    }

    v628 = v384[131];
    v629 = v384[260];
    v385 = v384[130];
    v386 = v384[259];
  }

  else
  {
    v628 = 0;
    v629 = 0;
    v385 = 0;
    v386 = 0;
  }

  v633 = *(v7 + 2392);
  v387 = *(v7 + 8472);
  v388 = *(v7 + 9744);
  v389 = *(v7 + 8480);
  v390 = *(v7 + 9752);
  v645 = *(v7 + 7688);
  memcpy(__dst, (v389 + 72), 0x118uLL);
  memcpy(__dst + 280, v389, 0x2F0uLL);
  memcpy(v640, (v390 + 80), 0x118uLL);
  v636 = v390;
  memcpy(v640 + 280, v390, 0x398uLL);
  if (*(v383 + 443) == 1)
  {
    v395 = *(v7 + 4960);
    v396 = v395[18] + 1263;
    if (v396 > v395[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
LABEL_306:
        v397 = *(v7 + 4960);
        v398 = v397[17];
        v399 = (v397[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v400 = v397[20];
        v397[18] = v399 + 1232;
        v401 = v399 + 2223;
        if (v399 + 2223 > v398)
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v397, 3, 0))
          {
            goto LABEL_308;
          }

          v401 = v397[18] + 991;
          if (v401 > v397[17])
          {
            goto LABEL_597;
          }
        }

        v397[19] = v401;
LABEL_308:
        v619 = v399 + v400;
        v402 = *(v7 + 4960);
        v403 = (*(v402 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
        *v620 = v403 + *(v402 + 160);
        *(v402 + 144) = v403 + 960;
        memcpy(v399, (v628 + 72), 0x118uLL);
        memcpy((v399 + 280), v628, 0x3B8uLL);
        memcpy(v403, (v629 + 72), 0x118uLL);
        memcpy((v403 + 280), v629, 0x2A8uLL);
        v6 = v639;
        goto LABEL_309;
      }

      v396 = v395[18] + 1263;
      if (v396 > v395[17])
      {
        goto LABEL_597;
      }
    }

    v395[19] = v396;
    goto LABEL_306;
  }

LABEL_309:
  if (*(v383 + 397) != 1)
  {
    v622 = 0;
    v623 = 0;
    v631 = 0;
    v416 = 0;
    v417 = 0;
    goto LABEL_338;
  }

  if (*(v383 + 443) != 1)
  {
    v414 = 0;
    v623 = 0;
    goto LABEL_322;
  }

  v404 = *(v7 + 4960);
  v405 = v404[18] + 311;
  if (v405 <= v404[17])
  {
    goto LABEL_312;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v405 = v404[18] + 311;
    if (v405 > v404[17])
    {
      goto LABEL_597;
    }

LABEL_312:
    v404[19] = v405;
  }

  v406 = *(v7 + 4960);
  v407 = (*(v406 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v408 = *(v406 + 160);
  *(v406 + 144) = v407 + 280;
  if (v385)
  {
    memcpy(v407, (*(v385 + 3) + *(v385 + 1)), 8 * *v385);
  }

  v409 = *(v628 + 40);
  *(v407 + 264) = *(v628 + 56);
  *(v407 + 248) = v409;
  v410 = *(v7 + 4960);
  v411 = v410[18] + 311;
  if (v411 > v410[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
    {
      goto LABEL_317;
    }

    v411 = v410[18] + 311;
    if (v411 > v410[17])
    {
      goto LABEL_597;
    }
  }

  v410[19] = v411;
LABEL_317:
  v623 = v407 + v408;
  v412 = *(v7 + 4960);
  v413 = (*(v412 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v414 = v413 + *(v412 + 160);
  *(v412 + 144) = v413 + 280;
  if (v386)
  {
    memcpy(v413, (*(v386 + 3) + *(v386 + 1)), 8 * *v386);
  }

  v415 = *(v629 + 40);
  *(v413 + 264) = *(v629 + 56);
  *(v413 + 248) = v415;
  v6 = v639;
LABEL_322:
  v418 = *(v7 + 4960);
  v419 = v418[18] + 311;
  if (v419 <= v418[17])
  {
LABEL_323:
    v418[19] = v419;
    goto LABEL_324;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v419 = v418[18] + 311;
    if (v419 > v418[17])
    {
      goto LABEL_597;
    }

    goto LABEL_323;
  }

LABEL_324:
  v420 = *(v7 + 4960);
  v421 = (*(v420 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v422 = *(v420 + 160);
  *(v420 + 144) = v421 + 280;
  if (v387)
  {
    memcpy(v421, (*(v387 + 3) + *(v387 + 1)), 8 * *v387);
  }

  v423 = *(v389 + 40);
  *(v421 + 264) = *(v389 + 56);
  *(v421 + 248) = v423;
  v424 = *(v7 + 4960);
  v425 = v424[22] + 311;
  if (v425 <= v424[21])
  {
LABEL_327:
    v424[23] = v425;
    goto LABEL_328;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 4, 0))
  {
    v425 = v424[22] + 311;
    if (v425 > v424[21])
    {
      goto LABEL_597;
    }

    goto LABEL_327;
  }

LABEL_328:
  v622 = v414;
  v416 = v421 + v422;
  v426 = *(v7 + 4960);
  v427 = (*(v426 + 176) + 31) & 0xFFFFFFFFFFFFFFE0;
  v631 = v427 + *(v426 + 192);
  *(v426 + 176) = v427 + 280;
  if (v388)
  {
    memcpy(v427, (*(v388 + 3) + *(v388 + 1)), 8 * *v388);
  }

  v391 = *(v636 + 48);
  v392 = *(v636 + 64);
  *(v427 + 264) = v392;
  *(v427 + 248) = v391;
  if (!v387)
  {
    v417 = 0;
    goto LABEL_338;
  }

  if (v387[3] == 1)
  {
    v428 = 4 * *v387;
  }

  else
  {
    v428 = 0;
  }

  v429 = *(v7 + 4960);
  v430 = v428 + 31;
  v431 = v429[18] + v428 + 31;
  if (v431 > v429[17])
  {
    v613 = v428;
    v614 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0);
    v428 = v613;
    if (!v614)
    {
      goto LABEL_337;
    }

    v431 = v429[18] + v430;
    if (v431 > v429[17])
    {
      goto LABEL_597;
    }
  }

  v429[19] = v431;
LABEL_337:
  v432 = *(v7 + 4960);
  v433 = ((*(v432 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v417 = &v433[*(v432 + 160)];
  *(v432 + 144) = &v433[v428];
  memcpy(v433, (*(v387 + 3) + *(v387 + 5)), v428);
LABEL_338:
  v434 = *(v383 + 396);
  if (*(v383 + 396))
  {
    v435 = 156;
  }

  else
  {
    v435 = 116;
  }

  v638 = *(v383 + 396);
  if (*(v383 + 440) == 1)
  {
    v436 = *(v7 + 4960);
    v437 = v436[26] + v435 + 63;
    if (v437 > v436[25])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
      {
        goto LABEL_344;
      }

      v437 = v436[26] + v435 + 63;
      if (v437 > v436[25])
      {
        goto LABEL_597;
      }
    }

    v436[27] = v437;
LABEL_344:
    v438 = *(v7 + 4960);
    v439 = ((*(v438 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
    v440 = *(v438 + 224);
    *(v438 + 208) = &v439[v435];
    if (*(v383 + 396) != 1 || v645[4])
    {
      v441 = 0;
      v442 = 0xFFFFFFFFLL;
LABEL_347:
      v621 = &v439[v440];
      v618 = v442;
      v434 = v638;
      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v638 ^ 1, v439, v416, 0, v441, &__dst[v626], 0, v417, *&v391, *&v392, v393, v394, 0, v618);
      v6 = v639;
      goto LABEL_349;
    }

    v442 = v645[1][408];
    v478 = *(v7 + 4960);
    v479 = v478[18] + 71;
    if (v479 > v478[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
        goto LABEL_369;
      }

      v479 = v478[18] + 71;
      if (v479 > v478[17])
      {
        goto LABEL_597;
      }
    }

    v478[19] = v479;
LABEL_369:
    v480 = *(v7 + 4960);
    v481 = ((*(v480 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v482 = *(v480 + 160);
    *v481 = *(v389 + 264);
    v441 = v481 + v482;
    *(v480 + 144) = v481 + 5;
    v481[1] = *(v389 + 272);
    v481[2] = *(v389 + 312);
    goto LABEL_347;
  }

  v621 = 0;
LABEL_349:
  v443 = *(v383 + 443);
  if (v443 != 1)
  {
    v457 = 0;
    v458 = 0;
    goto LABEL_372;
  }

  v444 = *(v7 + 4960);
  v445 = v435 + 63;
  v446 = v444[26] + v435 + 63;
  if (v446 > v444[25])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
    {
      goto LABEL_352;
    }

    v446 = v444[26] + v445;
    if (v446 > v444[25])
    {
      goto LABEL_597;
    }
  }

  v444[27] = v446;
LABEL_352:
  v447 = *(v7 + 4960);
  v448 = ((*(v447 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v449 = *(v447 + 224);
  *(v447 + 208) = &v448[v435];
  if (*(v383 + 396) == 1 && v645[4])
  {
    v450 = v645[3][408];
    v451 = *(v7 + 4960);
    v452 = v451[18] + 71;
    if (v452 > v451[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
        goto LABEL_356;
      }

      v452 = v451[18] + 71;
      if (v452 > v451[17])
      {
        goto LABEL_597;
      }
    }

    v451[19] = v452;
LABEL_356:
    v453 = *(v7 + 4960);
    v454 = ((*(v453 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v455 = *(v453 + 160);
    *v454 = *(v628 + 264);
    v456 = v454 + v455;
    *(v453 + 144) = v454 + 5;
    v454[1] = *(v628 + 272);
    v454[2] = *(v628 + 312);
    goto LABEL_359;
  }

  v456 = 0;
  v450 = 0xFFFFFFFFLL;
LABEL_359:
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v434 ^ 1, v448, v623, 0, v456, v619, 0, 0, *&v391, *&v392, v393, v394, 0, v450);
  v463 = *(v7 + 4960);
  v464 = v463[26] + v445;
  if (v464 <= v463[25])
  {
LABEL_360:
    v463[27] = v464;
    goto LABEL_361;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
  {
    v464 = v463[26] + v445;
    if (v464 > v463[25])
    {
      goto LABEL_597;
    }

    goto LABEL_360;
  }

LABEL_361:
  v465 = *(v7 + 4960);
  v466 = ((*(v465 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v467 = *(v465 + 224);
  *(v465 + 208) = &v466[v435];
  v468 = v449;
  if (*(v383 + 396) != 1)
  {
    v477 = 0;
    v471 = 0xFFFFFFFFLL;
    v470 = *v620;
    goto LABEL_371;
  }

  v469 = v645[4];
  v470 = *v620;
  if (!v469)
  {
    v477 = 0;
    v471 = 0xFFFFFFFFLL;
    goto LABEL_371;
  }

  v471 = v469[408];
  v472 = *(v7 + 4960);
  v473 = v472[18] + 71;
  if (v473 > v472[17])
  {
    v616 = v466;
    v617 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0);
    v470 = *v620;
    v466 = v616;
    v434 = v638;
    if (!v617)
    {
      goto LABEL_365;
    }

    v473 = v472[18] + 71;
    if (v473 > v472[17])
    {
      goto LABEL_597;
    }
  }

  v472[19] = v473;
LABEL_365:
  v474 = *(v7 + 4960);
  v475 = ((*(v474 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v476 = *(v474 + 160);
  *v475 = *(v629 + 264);
  v477 = v475 + v476;
  *(v474 + 144) = v475 + 5;
  v475[1] = *(v629 + 272);
  v475[2] = *(v629 + 312);
LABEL_371:
  v458 = &v448[v468];
  v457 = &v466[v467];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v434 ^ 1, v466, v622, 0, v477, v470, 0, 0, v459, v460, v461, v462, 0, v471);
  LOBYTE(v443) = *(v383 + 443);
  v6 = v639;
LABEL_372:
  if (*(v383 + 396))
  {
    if (*(v383 + 440))
    {
      v483 = 52;
    }

    else
    {
      v483 = 24;
    }

    if (v443)
    {
      v484 = v483 + 56;
    }

    else
    {
      v484 = v483;
    }

    v485 = v645[1];
    if (v485 && v485[533].i32[0])
    {
      v484 += 12;
    }
  }

  else
  {
    if (*(v383 + 440))
    {
      v486 = 36;
    }

    else
    {
      v486 = 24;
    }

    if (v443)
    {
      v487 = v486 + 20;
    }

    else
    {
      v487 = v486;
    }

    v484 = v487 + 8;
  }

  if (*(v383 + 332))
  {
    v488 = v484 + 8;
  }

  else
  {
    v488 = v484;
  }

  v489 = *(v7 + 4960);
  v490 = v489[6];
  if (v490 + v488 > v489[5])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 0, 0))
    {
      v608 = v489[6] + v488;
      if (v608 > v489[5])
      {
        goto LABEL_597;
      }

      v489[7] = v608;
      *v490 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v489, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v489[7] = v490 + v488;
  }

  v491 = *(v389 + 736);
  if (*(v383 + 396) == 1)
  {
    v492 = 0x2A179C000;
    if (*(v383 + 440) == 1 && !v645[4])
    {
      v493 = v645[1] + 28 * *(v645 + 760);
      v494 = *(v493 + 3912);
      v495 = *(v493 + 3920);
      v496 = *(v493 + 3904) & 0x3FFFFF;
      if ((v495 & 7) - 1 != v491)
      {
        v495 = (v491 - 1) & 7;
      }

      v497 = *(v7 + 4960);
      v498 = *(v497 + 48);
      *v498 = *(v493 + 3896);
      *(v498 + 8) = v496 | (v621 >> 16) & 0xFFC00000 | 4;
      *(v498 + 12) = v621 >> 6;
      *(v498 + 16) = v494;
      *(v498 + 24) = v495;
      *(v497 + 48) = v498 + 28;
    }

    if (*(v383 + 443) == 1)
    {
      v499 = v645[4];
      if (v499)
      {
        v500 = v645[3];
        v501 = v500[468].u32[1];
        v502 = v500[467].i32[1];
        v503 = v500[467].i32[0];
        v504 = v499[470].i32[1];
        v505 = v499[471].i32[0];
        v506 = v499[471].i32[1];
        v507 = v499[472].i32[0];
        v508 = v499[473].i32[0];
        v509 = v499[474];
        v510 = *(v645 + 227);
        if (*(v645 + 760))
        {
          v511 = 0;
        }

        else
        {
          v511 = 32;
        }

        v512 = v505 & 0xFFFFFFDF | v511;
        v513 = v506 & 0xFFF0000 | v503 & 0xFFF;
        if (v510)
        {
          v501 = v501 & 0xFFFFFF80 | ((v510 + 1023) >> 10) & 0x7F;
        }

        v514 = *(v7 + 4960);
        v515 = *(v514 + 48);
        v515->i32[0] = 1073745196;
        v515->i32[1] = v504;
        v515[1].i32[0] = v512;
        v515[1].i32[1] = (v491 - 1) & 7;
        v515[2].i32[0] = v513;
        v515[2].i32[1] = v502 & 0x3FFFFF | (v458 >> 16) & 0xFFC00000 | 4;
        v515[3].i32[0] = v458 >> 6;
        v515[3].i32[1] = v507 & 0x3FFFFF | (v457 >> 16) & 0xFFC00000 | 4;
        v515[4].i32[0] = v457 >> 6;
        v515[4].i32[1] = v501;
        v515[5].i32[0] = v508;
        v515[5].i32[1] = 0;
        v515[6] = v509;
        *(v514 + 48) = v515 + 7;
      }
    }
  }

  else
  {
    v516 = *(v7 + 4960);
    v517 = *(v516 + 48);
    *v517 = (((v491 - 1) & 7) << 32) | 0x40000020;
    *(v516 + 48) = v517 + 1;
    v492 = 0x2A179C000uLL;
    if (*(v383 + 440) == 1)
    {
      v518 = *(v7 + 4960);
      v519 = *(v518 + 48);
      *v519 = (((v621 >> 38) << 54) | 0x40000020) + 32;
      *(v519 + 8) = v621 >> 6;
      *(v518 + 48) = v519 + 12;
    }

    if (*(v383 + 443) == 1)
    {
      v520 = *(v7 + 4960);
      v521 = *(v520 + 48);
      *v521 = 1073742336;
      v521[1] = (v458 >> 16) & 0xFFC00000;
      v521[2] = v458 >> 6;
      v521[3] = (v457 >> 16) & 0xFFC00000;
      v521[4] = v457 >> 6;
      *(v520 + 48) = v521 + 5;
    }
  }

  v522 = *(v7 + 4960);
  v523 = v522[30] + v435 + 63;
  if (v523 <= v522[29])
  {
LABEL_413:
    v522[31] = v523;
    goto LABEL_414;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 6, 0))
  {
    v523 = v522[30] + v435 + 63;
    if (v523 > v522[29])
    {
      goto LABEL_597;
    }

    goto LABEL_413;
  }

LABEL_414:
  v524 = *(v7 + 4960);
  v525 = ((*(v524 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
  v526 = *(v524 + 256);
  *(v524 + 240) = &v525[v435];
  v662 = 0;
  v661 = 0;
  v664 = 0;
  v663 = 0;
  v527 = 0x3000000A5;
  v665 = 0x3000000A5;
  v668 = 0;
  v667 = 0;
  v528 = v633[1235] >> 2;
  v529 = v633[895];
  v530 = v633[1536];
  v531 = v633[1233];
  v532 = v633[1234];
  if (v529 <= 1)
  {
    v533 = 1;
  }

  else
  {
    v533 = v529;
  }

  v534 = 4 * v533 * v528;
  if (v534 * v531 * v532 && (v535 = 1 << -__clz(v531 - 1), v536 = -__clz(v532 - 1), (v535 << v536) * v534))
  {
    v667 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v528, v533, v535, 1 << (v536 & 0x1F));
    v668 = v537;
    v538 = 0x100000000;
  }

  else
  {
    v538 = 0;
  }

  if (v530)
  {
    ++v538;
  }

  v666 = v538 | ((v530 << 16) + 4128768) & 0xFFC00000;
  if (*(v383 + 396) != 1)
  {
    v540 = 0;
    v539 = 0xFFFFFFFFLL;
    goto LABEL_431;
  }

  if (*v645)
  {
    v539 = (*v645)[409];
  }

  else
  {
    v539 = 4294967294;
  }

  v541 = *(v7 + 4960);
  v542 = v541[18] + 71;
  if (v542 > v541[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
    {
      goto LABEL_430;
    }

    v542 = v541[18] + 71;
    if (v542 > v541[17])
    {
      goto LABEL_597;
    }
  }

  v541[19] = v542;
LABEL_430:
  v543 = *(v7 + 4960);
  v544 = ((*(v543 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v545 = *(v543 + 160);
  *v544 = *(v636 + 272);
  v540 = v544 + v545;
  *(v543 + 144) = v544 + 5;
  v544[1] = *(v636 + 280);
  v544[2] = *(v636 + 320);
LABEL_431:
  v546 = &v525[v526];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v638 ^ 1, v525, v631, 0, v540, &v640[v634], 0, 0, *&v527, *&v392, v393, v394, &v661, v539);
  if (*(v383 + 396) != 1)
  {
    v560 = *(v7 + 4960);
    v561 = v560[126] + 12;
    v550 = v641;
    v551 = MEMORY[0x29EDC5638];
    if (v561 > v560[125])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
      {
LABEL_439:
        v562 = *(v7 + 4960);
        v563 = v562[126];
        v564 = v562[128] + v563;
        v562[126] = v563 + 12;
        *v563 = ((v546 >> 38) << 54) | 0x400000;
        *(v563 + 8) = v546 >> 6;
        v565 = v562[6];
        *v565 = __ROR8__(v564, 32) & 0xFFFFFFFC000000FFLL | 0x300;
        v562[6] = v565 + 1;
        v566 = *(v7 + 4960);
        v567 = v566[126] + 8;
        if (v567 > v566[125])
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
          {
            goto LABEL_441;
          }

          v567 = v566[126] + 8;
          if (v567 > v566[125])
          {
            goto LABEL_597;
          }
        }

        v566[127] = v567;
LABEL_441:
        v552 = *(v7 + 4960);
        v568 = v552[126];
        v569 = v568 + v552[128];
        v552[126] = v568 + 1;
        *v568 = (((v491 - 1) & 7) << 32) | 0x4000000;
        v570 = 512;
LABEL_444:
        v573 = v552[6];
        *v573 = (BYTE4(v569) | v570) & 0x3FFFFFFFFLL | ((v569 >> 2) << 34);
        v552[6] = v573 + 1;
        goto LABEL_445;
      }

      v561 = v560[126] + 12;
      if (v561 > v560[125])
      {
        goto LABEL_597;
      }
    }

    v560[127] = v561;
    goto LABEL_439;
  }

  v547 = *v645;
  v548 = *(v7 + 4960);
  v549 = v548[126] + 28;
  v550 = v641;
  v551 = MEMORY[0x29EDC5638];
  if (v549 <= v548[125])
  {
LABEL_433:
    v548[127] = v549;
    goto LABEL_434;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
  {
    v549 = v548[126] + 28;
    if (v549 > v548[125])
    {
      goto LABEL_597;
    }

    goto LABEL_433;
  }

LABEL_434:
  if (v547)
  {
    v552 = *(v7 + 4960);
    v553 = (*v645)[474].i32[1];
    v554 = (*v645)[476].i32[0];
    v555 = (*v645)[477].i32[1];
    v556 = (v546 >> 16) & 0xFFC00000 | (*v645)[476].i32[1] & 0x3FFFFF;
    v557 = vand_s8((*v645)[475], 0x3FFFF0000);
    v558 = v645[463];
    if (v558)
    {
      v559.i32[0] = v558[4].i32[1];
      v559.i32[1] = v558[4].i32[0];
    }

    else
    {
      v571 = (*v645)[478];
      v559.i32[0] = *(*&v571 + 36);
      v559.i32[1] = *(*&v571 + 32);
    }

    v572 = v552[126];
    v569 = v552[128] + v572;
    v552[126] = v572 + 28;
    *v572 = v553;
    *(v572 + 4) = vorr_s8(v557, vand_s8(v559, 0xFFFFFFFC0000FFFFLL));
    *(v572 + 12) = v554;
    *(v572 + 16) = v556;
    *(v572 + 20) = v546 >> 6;
    *(v572 + 24) = v555;
    v570 = 1792;
    goto LABEL_444;
  }

LABEL_445:
  if (!*(v383 + 332))
  {
    goto LABEL_455;
  }

  v574 = *(v7 + 4960);
  v575 = v574[126] + 24;
  if (v575 > v574[125])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
    {
      goto LABEL_448;
    }

    v575 = v574[126] + 24;
    if (v575 > v574[125])
    {
LABEL_597:
      abort();
    }
  }

  v574[127] = v575;
LABEL_448:
  v576 = *(v7 + 4960);
  v577 = *(v383 + 332);
  v578 = (32 * ((v577 >> 2) & 1)) | (2 * ((v577 >> 1) & 1)) & 0xFFFFFFF7 | (8 * ((v577 >> 9) & 1)) | 0x7D4;
  v579 = (((v577 >> 9) & 1) << 16) & 0xFEF1FFFF | (((v577 >> 1) & 1) << 17) & 0xFEF3FFFF | (((v577 >> 2) & 1) << 24) | ((v577 & 1) << 19) | ((v577 & 1) << 18) | 0xE2E00000;
  if ((v577 & 0x20) != 0)
  {
    v580 = -255852289;
  }

  else
  {
    v580 = -255852544;
  }

  v581 = v580 & 0xFFDFFFFF | (v577 >> 7) & 0xC0000 | ((v577 & 1) << 21) | ((v577 << 31) >> 31) & 0x7000000;
  if ((v577 & 0x10) != 0)
  {
    v582 = 143395;
  }

  else
  {
    v582 = 143392;
  }

  v583 = v582 & 0xFFFEFFFF | (((v577 >> 6) & 1) << 16) | ((v577 << 12) >> 15) & 0xC00;
  v584 = v576[126];
  v585 = v584 + v576[128];
  v576[126] = v584 + 6;
  *v584 = 1;
  v584[1] = v578;
  v584[2] = v579;
  v584[3] = v581;
  v584[4] = v583;
  v584[5] = 0x1FFFF;
  v586 = v576[6];
  *v586 = __ROR8__(v585, 32) & 0xFFFFFFFC000000FFLL | 0x600;
  v576[6] = v586 + 1;
LABEL_455:
  if (*(v383 + 396) == 1)
  {
    v587 = v645[1];
    if (v587)
    {
      if (v587[533].i32[0])
      {
        v588 = v587[533].u8[5];
        v589 = v587[532].i32[0];
        if (v588)
        {
          v590 = 0x10000;
        }

        else
        {
          v590 = 0;
        }

        v591 = (((*(v645 + 196) - (*(v645 + 192) == 2)) << 23) + 528482304) & 0x1F800000 | (*(v645 + 192) << 30) | ((*(v645 + 191) & 1) << 29) | v590 & 0xFFE1FFFF | ((v645[97] & 3) << 17) & 0xFFE7FFFF | ((*(v645 + 195) & 1) << 19) & 0xFFEFFFFF | ((v589 & 1) << 20) | 0x200000;
        v592 = *(v7 + 4960);
        v593 = *(v592 + 48);
        *v593 = ((v591 << 32) | 0x40000020) + 112;
        *(v593 + 8) = 15360;
        *(v592 + 48) = v593 + 12;
      }
    }
  }

  if (v550 == 1)
  {
    v594 = *(v7 + 4960);
    v595 = *(v594 + 48);
    *v595 = __ROR8__(*(*(v6 + 416) + *v551 + 8) - 0x1000000000 + (*(v383 + 140) + *(v383 + 144) * v642), 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v594 + 48) = v595 + 1;
  }

  else
  {
    v596 = *(v7 + 4960);
    v597 = *(v596 + 48);
    *v597 = __ROR8__(v625, 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v596 + 48) = v597 + 1;
    *v624 = 671088640;
  }

  result = IOGPUResourceListAddResource();
  v598 = *(v7 + 7672);
  if (v598)
  {
    v599 = *(v598 + 2720) | 0x5F700000000003;
    v600 = *(v7 + 7680);
    if (!v600)
    {
      goto LABEL_468;
    }

    goto LABEL_467;
  }

  v599 = 0x5F700000000003;
  v600 = *(v7 + 7680);
  if (v600)
  {
LABEL_467:
    v599 |= *(v600 + 2720);
  }

LABEL_468:
  v601 = *(v7 + 7688);
  if (v601)
  {
    v602 = *(v601 + 32);
    if (v602)
    {
      v599 |= *(*(v601 + 24) + 2720) | *(v602 + 2720);
    }
  }

  *(v7 + 10472) |= v599;
  v603 = *(v492 + 1168);
  v604 = *(v6 + v603);
  if ((*(v604 + 396) & 1) == 0)
  {
    v605 = *(v7 + 5224) ^ 1;
    v606 = *(v7 + 7664);
    *(v606 + 1612) |= v605;
    *(v606 + 580) |= v605;
    v604 = *(v6 + v603);
  }

  if (*(v604 + 400))
  {
    *(v7 + 7178) = 15;
    *(v7 + 7176) |= 0xFu;
  }

  return result;
}

uint64_t std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(v4);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  if (a2[949])
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = a2[751];
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 7440, a2[324], a2[327], a2[331], v10, 0, a4, a5, a6, a7, a8))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 7440, a3[324], a3[327], a3[331], a3[751], 0, v11, v12, v13, v14, v15);
  if (result)
  {
    v17 = *(a1 + 8);
    v18 = *(v17 + 7664) + 320;

    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v17 + 7440, v18, 1);
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, int a7)
{
  v8 = a2;
  v473 = *MEMORY[0x29EDCA608];
  v10 = *(*(a1 + 1872) + 848);
  *(a1 + 5401) = 1;
  os_unfair_lock_opaque = v10[1804]._os_unfair_lock_opaque;
  v12 = *(a1 + 7260);
  v453 = a1 + 5224;
  v13 = *(a1 + 7272) | a7;
  *(a1 + 2060) |= 8u;
  v464[0] = 0;
  v451 = v10;
  if (v12 != os_unfair_lock_opaque)
  {
    *(a1 + 7260) = os_unfair_lock_opaque;
    v14 = *(a1 + 8480);
    *&v468 = v14 + 168;
    *(&v468 + 1) = a1 + 8616;
    v469 = (v14 + 176);
    v470 = (a1 + 8624);
    v471 = v14 + 200;
    v472 = a1 + 8648;
    v15 = AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(&v10[1810], &v468, *(a1 + 1904), v464);
    v16 = v451;
    if (v15)
    {
      if ((v13 & 1) != 0 && (v464[0] & 1) == 0)
      {
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        v16 = v451;
      }

      v388 = *(a1 + 8480);
      v389 = *(a1 + 9752);
      v389[22] = v388[21];
      *(a1 + 10088) |= 0x800000000000uLL;
      *(a1 + 10136) |= 0x800000000000uLL;
      *(a1 + 10376) |= 0x800000000000uLL;
      *(a1 + 10424) |= 0x800000000000uLL;
      v389[23] = v388[22];
      *(a1 + 9888) = *(v453 + 3392);
      *(a1 + 10088) |= 0x1000000000000uLL;
      *(a1 + 10136) |= 0x1000000000000uLL;
      *(a1 + 10376) |= 0x1000000000000uLL;
      *(a1 + 10424) |= 0x1000000000000uLL;
      v389[26] = v388[25];
      *(a1 + 9920) = *(a1 + 8648);
      *(a1 + 10088) |= 0x8000000000000uLL;
      *(a1 + 10136) |= 0x8000000000000uLL;
      *(a1 + 10376) |= 0x8000000000000uLL;
      *(a1 + 10424) |= 0x8000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    *&v468 = a1 + 11424;
    *(&v468 + 1) = a1 + 11432;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v16 + 3146, &v468))
    {
      IOGPUResourceListAddResource();
    }

    **(a1 + 11416) = *(a1 + 11424);
    *&v468 = a1 + 11440;
    *(&v468 + 1) = a1 + 11448;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v451 + 2952, &v468))
    {
      IOGPUResourceListAddResource();
    }

    *(*(a1 + 11416) + 8) = *(a1 + 11440);
    *&v468 = *(a1 + 8480) + 336;
    *(&v468 + 1) = a1 + 8784;
    if (AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v451 + 3534, &v468))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v17 = *(a1 + 8480);
      *(*(a1 + 9752) + 344) = *(v17 + 336);
      *(a1 + 10056) = *(a1 + 8784);
      *(a1 + 10096) |= 0x10uLL;
      *(a1 + 10144) |= 0x10uLL;
      *(a1 + 10384) |= 0x10uLL;
      *(a1 + 10432) |= 0x10uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v17 = *(a1 + 8480);
    }

    v18 = *(a1 + 10528);
    *&v468 = v17 + 232;
    *(&v468 + 1) = a1 + 8680;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v18, &v468))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v19 = *(a1 + 8480);
      *(*(a1 + 9752) + 240) = *(v19 + 232);
      *(a1 + 9952) = *(a1 + 8680);
      *(a1 + 10088) |= 0x80000000000000uLL;
      *(a1 + 10136) |= 0x80000000000000uLL;
      *(a1 + 10376) |= 0x80000000000000uLL;
      *(a1 + 10424) |= 0x80000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v19 = *(a1 + 8480);
    }

    v20 = *(a1 + 10520);
    *&v468 = v19 + 248;
    *(&v468 + 1) = a1 + 8696;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v20, &v468))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v21 = *(a1 + 8480);
      *(*(a1 + 9752) + 256) = *(v21 + 248);
      *(a1 + 9968) = *(a1 + 8696);
      *(a1 + 10088) |= 0x200000000000000uLL;
      *(a1 + 10136) |= 0x200000000000000uLL;
      *(a1 + 10376) |= 0x200000000000000uLL;
      *(a1 + 10424) |= 0x200000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v21 = *(a1 + 8480);
    }

    *&v468 = v21 + 224;
    *(&v468 + 1) = a1 + 8672;
    if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v451 + 2352, &v468))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v22 = *(a1 + 8480);
      *(*(a1 + 9752) + 232) = *(v22 + 224);
      *(a1 + 9944) = *(a1 + 8672);
      *(a1 + 10088) |= 0x40000000000000uLL;
      *(a1 + 10136) |= 0x40000000000000uLL;
      *(a1 + 10376) |= 0x40000000000000uLL;
      *(a1 + 10424) |= 0x40000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v22 = *(a1 + 8480);
    }

    *&v468 = v22 + 320;
    *(&v468 + 1) = a1 + 8768;
    v23 = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v451 + 2752, &v468);
    v10 = v451;
    v8 = a2;
    if (v23)
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
        v10 = v451;
        v8 = a2;
      }

      *(*(a1 + 9752) + 328) = *(*(a1 + 8480) + 320);
      *(a1 + 10040) = *(a1 + 8768);
      *(a1 + 10096) |= 4uLL;
      *(a1 + 10144) |= 4uLL;
      *(a1 + 10384) |= 4uLL;
      *(a1 + 10432) |= 4uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }
  }

  explicit = atomic_load_explicit(&v10[2347], memory_order_acquire);
  if (explicit)
  {
    v25 = explicit + 1;
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 7264) != v25)
  {
    *(a1 + 7264) = v25;
    *&v468 = *(a1 + 8480) + 208;
    *(&v468 + 1) = a1 + 8656;
    v26 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v10 + 2152, &v468);
    *(*(a1 + 7664) + 2096) = *(*(a1 + 8480) + 208);
    v27 = atomic_load_explicit((*(*(a1 + 1872) + 848) + 9388), memory_order_acquire);
    v28 = v27 ? v27 + 1 : 0;
    *(*(a1 + 7664) + 2104) = v28;
    v8 = a2;
    if (v26)
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
        v8 = a2;
      }

      *(*(a1 + 9752) + 216) = *(*(a1 + 8480) + 208);
      *(a1 + 9928) = *(a1 + 8656);
      *(a1 + 10088) |= 0x10000000000000uLL;
      *(a1 + 10136) |= 0x10000000000000uLL;
      *(a1 + 10376) |= 0x10000000000000uLL;
      *(a1 + 10424) |= 0x10000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }
  }

  v29 = (a1 + 10076);
  if (a7)
  {
    goto LABEL_37;
  }

  if (v8 && (*(v8 + 2407) & 0x40) != 0 && *(v453 + 3580) == 1)
  {
    v30 = *(*(a1 + 8480) + 328);
    v31 = *(a1 + 168);
    v32 = v31 + 31;
    if ((v31 + 31) > *(a1 + 160))
    {
      v421 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v31 = *(a1 + 168);
      if (!v421)
      {
        v8 = a2;
        goto LABEL_30;
      }

      v32 = v31 + 31;
      v8 = a2;
      if ((v31 + 31) > *(a1 + 160))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 176) = v32;
LABEL_30:
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v33 + *(a1 + 184);
    *(a1 + 168) = v33 + 2;
    *v33 = v30;
    v35 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(a1 + 10088) |= 0x4000000000000000uLL;
    *(a1 + 10472) |= 0x40uLL;
    *(*(a1 + 8480) + 288) = v34;
    *(a1 + 8736) = v35;
    *(v453 + 3580) = 0;
  }

  if (a3 && (*(a3 + 2407) & 0x40) != 0 && *v29 == 1)
  {
    v36 = *(*(a1 + 9752) + 336);
    v37 = *(a1 + 200);
    v38 = v37 + 31;
    if ((v37 + 31) > *(a1 + 192))
    {
      v422 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
      v37 = *(a1 + 200);
      if (!v422)
      {
        v8 = a2;
        goto LABEL_36;
      }

      v38 = v37 + 31;
      v8 = a2;
      if ((v37 + 31) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v38;
LABEL_36:
    v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v39 + *(a1 + 216);
    *(a1 + 200) = v39 + 2;
    *v39 = v36;
    v41 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(a1 + 10376) |= 0x4000000000000000uLL;
    *(a1 + 10472) |= 0x1000000000uLL;
    *(*(a1 + 9752) + 296) = v40;
    *(a1 + 10008) = v41;
    *v29 = 0;
  }

LABEL_37:
  if (*(a1 + 10080) == 1)
  {
    v42 = *(a1 + 200);
    v43 = v42 + 95;
    if ((v42 + 95) > *(a1 + 192))
    {
      v390 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
      v42 = *(a1 + 200);
      if (!v390)
      {
        v8 = a2;
        goto LABEL_40;
      }

      v43 = v42 + 95;
      v8 = a2;
      if ((v42 + 95) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v43;
LABEL_40:
    v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v44 + *(a1 + 216);
    *(a1 + 200) = v44 + 5;
    v46 = *(a1 + 11584);
    v48 = *(a1 + 11616);
    v47 = *(a1 + 11632);
    v44[2] = *(a1 + 11600);
    v44[3] = v48;
    v44[1] = v46;
    *v44 = *(a1 + 11568);
    v44[4] = v47;
    v49 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(a1 + 10376) |= 0x8000000000000000;
    *(a1 + 10472) |= 0x1000000000uLL;
    *(*(a1 + 9752) + 304) = v45;
    *(a1 + 10016) = v49;
    *(a1 + 10080) = 256;
  }

  if (*(v453 + 179) == 1)
  {
    v50 = *(*(a1 + 1872) + 848);
    v51 = *(v50 + 6320);
    if (*(a1 + 7268) != v51)
    {
      for (i = *(v50 + 6832); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      for (j = *(v50 + 6664); j; j = *j)
      {
        IOGPUResourceListAddResource();
      }

      *(a1 + 7268) = v51;
      v8 = a2;
    }
  }

  if (v8 && (v54 = *(a1 + 7664), !*(v54 + 600)))
  {
    if (*(v8 + 2480) == 0)
    {
      v58 = *(v8 + 2112);
    }

    else
    {
      v58 = 1;
    }

    *(v54 + 600) = v58;
    if (!a3)
    {
      goto LABEL_52;
    }
  }

  else if (!a3)
  {
    goto LABEL_52;
  }

  v55 = *(a1 + 7664);
  if (!*(v55 + 1620))
  {
    if (*(a3 + 2480) == 0)
    {
      v59 = *(a3 + 2112);
    }

    else
    {
      v59 = 1;
    }

    *(v55 + 1620) = v59;
    v56 = *(a1 + 10536);
    if (!v56)
    {
      goto LABEL_65;
    }

    goto LABEL_53;
  }

LABEL_52:
  v56 = *(a1 + 10536);
  if (!v56)
  {
    goto LABEL_65;
  }

LABEL_53:
  if (*(*(v56 + 64) + 49320) == 1)
  {
    v57 = *(a1 + 744) + 952;
    if (v57 > *(a1 + 736))
    {
      v8 = a2;
      if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 21, 0))
      {
        v402 = *(a1 + 744) + 952;
        if (v402 > *(a1 + 736))
        {
          goto LABEL_534;
        }

        *(a1 + 752) = v402;
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((a1 + 24), *(*(*(*(a1 + 1872) + 848) + 17136) + 8));
        if (!*(a1 + 7328))
        {
          v403 = *(a1 + 7312);
          if (v403)
          {
            v404 = *(a1 + 7336);
            *v403 = BYTE4(v404) | 0x80000000;
            v403[1] = v404;
            *(a1 + 7312) = 0;
            *(a1 + 7336) = 0;
            ++*(a1 + 1952);
          }
        }

        v405 = *(*(*(*(*(a1 + 1872) + 848) + 17136) + 8) + 2728);
        do
        {
          IOGPUResourceListAddResource();
          v405 &= ~(1 << __clz(__rbit32(v405)));
        }

        while (v405);
        *(a1 + 7328) = 0;
        *(a1 + 7312) = *(a1 + 72);
        *(a1 + 7320) = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(a1);
        *(a1 + 7336) = *(a1 + 88) + *(a1 + 72);
        v8 = a2;
      }
    }

    else
    {
      *(a1 + 752) = v57;
    }
  }

LABEL_65:
  v60 = *(a1 + 7688);
  if (v60)
  {
    if (*(v60 + 1572))
    {
      *(*(a1 + 7664) + 1612) |= *v453 ^ 1;
    }

    if (*(v60 + 1260))
    {
      *(*(a1 + 7664) + 580) |= *v453 ^ 1;
    }
  }

  v61 = *(a1 + 8472);
  if (v61)
  {
    v62 = atomic_load_explicit((v61 + 80), memory_order_acquire);
    v63 = v62 != -1 && v62 == *(a1 + 7704);
    if (!v63)
    {
      *(a1 + 7704) = v62;
      atomic_store(1u, (v61 + 88));
      *(a6 + 384) |= 0x40uLL;
      v64 = *(a1 + 8472);
      v65 = *v64;
      v66 = -1;
      if (v65 >= 0x40)
      {
        if (v65 == 128)
        {
          v67 = -1;
        }

        else
        {
          v67 = ~(-1 << v65);
        }

        v68 = -1;
      }

      else
      {
        v67 = 0;
        v68 = ~(-1 << v65);
      }

      v69 = *(a6 + 8) | v67;
      *a6 |= v68;
      *(a6 + 8) = v69;
      v70 = v64[1];
      if (v70 >= 0x40)
      {
        if (v70 == 128)
        {
          v71 = -1;
        }

        else
        {
          v71 = ~(-1 << v70);
        }
      }

      else
      {
        v71 = 0;
        v66 = ~(-1 << v70);
      }

      v72 = *(a6 + 24);
      *(a6 + 16) |= v66;
      *(a6 + 24) = v72 | v71;
      v73 = v64[2];
      v74 = -1;
      if (v73 >= 0x40)
      {
        if (v73 == 128)
        {
          v75 = -1;
        }

        else
        {
          v75 = ~(-1 << v73);
        }
      }

      else
      {
        v75 = 0;
        v74 = ~(-1 << v73);
      }

      v76 = *(a6 + 40) | v75;
      *(a6 + 32) |= v74;
      *(a6 + 40) = v76;
    }
  }

  v77 = *(a1 + 9744);
  if (v77)
  {
    v78 = atomic_load_explicit((v77 + 80), memory_order_acquire);
    if (v78 == -1 || v78 != *(a1 + 8808))
    {
      *(a1 + 8808) = v78;
      atomic_store(1u, (v77 + 88));
      *(a6 + 384) |= 0x1000000000uLL;
      v80 = *(a1 + 9744);
      v81 = *v80;
      v82 = -1;
      if (v81 >= 0x40)
      {
        if (v81 == 128)
        {
          v83 = -1;
        }

        else
        {
          v83 = ~(-1 << v81);
        }

        v84 = -1;
      }

      else
      {
        v83 = 0;
        v84 = ~(-1 << v81);
      }

      v85 = *(a6 + 296) | v83;
      *(a6 + 288) |= v84;
      *(a6 + 296) = v85;
      v86 = v80[1];
      if (v86 >= 0x40)
      {
        if (v86 == 128)
        {
          v87 = -1;
        }

        else
        {
          v87 = ~(-1 << v86);
        }
      }

      else
      {
        v87 = 0;
        v82 = ~(-1 << v86);
      }

      v88 = *(a6 + 312);
      *(a6 + 304) |= v82;
      *(a6 + 312) = v88 | v87;
      v89 = v80[2];
      v90 = -1;
      if (v89 >= 0x40)
      {
        if (v89 == 128)
        {
          v91 = -1;
        }

        else
        {
          v91 = ~(-1 << v89);
        }
      }

      else
      {
        v91 = 0;
        v90 = ~(-1 << v89);
      }

      v92 = *(a6 + 328) | v91;
      *(a6 + 320) |= v90;
      *(a6 + 328) = v92;
    }
  }

  v93 = *(a6 + 384);
  v94 = a3;
  if (a3)
  {
    if (v8)
    {
LABEL_116:
      v95 = a1 + 2120;
      v449 = (a1 + 2120);
      v96 = v8;
      goto LABEL_119;
    }
  }

  else
  {
    v93 &= 0xFFFFFF8FFFFFFFFDLL;
    v94 = 0;
    *(a6 + 384) = v93;
    if (v8)
    {
      goto LABEL_116;
    }
  }

  v93 &= 0xFFFFFFFFFFFFFE3ELL;
  *(a6 + 384) = v93;
  v95 = a1 + 2120;
  v449 = (a1 + 2120);
  v96 = 0;
LABEL_119:
  v97 = v93 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(v95, v96, v94, a6);
  v463 = v97;
  if (v94)
  {
    v99 = *(v94 + 3916);
    if (a7)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v99 = 0;
    if (a7)
    {
LABEL_124:
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(a1, v97);
      v8 = a2;
      goto LABEL_125;
    }
  }

  if (v99)
  {
    goto LABEL_124;
  }

LABEL_125:
  if ((v97 & 0x80) != 0 && (a7 & 1) == 0)
  {
    v100 = *(a6 + 48) & *(v8 + 2400);
    v465 = *(a6 + 56) & *(v8 + 2408);
    v466 = v100;
    v468 = *(v8 + 1360);
    while (1)
    {
      if (v100)
      {
        v101 = __clz(__rbit64(v100));
        v102 = &v466;
        v103 = v101;
      }

      else
      {
        v100 = v465;
        if (!v465)
        {
          break;
        }

        v101 = __clz(__rbit64(v465));
        v103 = v101 | 0x40;
        v102 = &v465;
      }

      *v102 = v100 & ~(1 << v101);
      if (*(a1 + 8488 + 8 * (v103 - 31)))
      {
        if ((*(&v468 | (8 * (v103 > 0x3F))) >> v103))
        {
          v104 = 3;
        }

        else
        {
          v104 = 1;
        }

        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindVertexBufferResource(a1, v103, v104, 1);
      }

      v100 = v466;
      v8 = a2;
    }
  }

  if ((v97 & 0x100) != 0)
  {
    v105 = *(a1 + 8472);
    if (v105)
    {
      v106 = *(v8 + 2416) & *(a6 + 64) & v105[4];
      v107 = *(v8 + 2424) & *(a6 + 72) & v105[5];
      *&v468 = v106;
      v466 = v107;
      v108 = *(v8 + 1376);
      v109 = *(v8 + 1384);
      v110 = v105[6];
      v111 = v105[7];
      while (1)
      {
        if (v106)
        {
          v112 = &v468;
        }

        else
        {
          v106 = v466;
          if (!v466)
          {
            *(*(a1 + 7664) + 580) |= (v110 & v108 | v111 & v109) != 0;
            break;
          }

          v112 = &v466;
        }

        *v112 = v106 & (v106 - 1);
        v106 = v468;
      }
    }
  }

  if ((v97 & 0x2000000000) != 0 && (a7 & 1) == 0)
  {
    v113 = *(a6 + 336) & *(a3 + 2400);
    v465 = *(a6 + 344) & *(a3 + 2408);
    v466 = v113;
    v468 = *(a3 + 1360);
    while (1)
    {
      if (v113)
      {
        v114 = __clz(__rbit64(v113));
        v115 = &v466;
        v116 = v114;
      }

      else
      {
        v113 = v465;
        if (!v465)
        {
          break;
        }

        v114 = __clz(__rbit64(v465));
        v116 = v114 | 0x40;
        v115 = &v465;
      }

      *v115 = v113 & ~(1 << v114);
      if (*(a1 + 9760 + 8 * (v116 - 31)))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(a1, v116, (*(&v468 | (8 * (v116 > 0x3F))) >> v116) & 1, 1);
        v8 = a2;
      }

      v113 = v466;
    }
  }

  if ((v97 & 0x4000000000) != 0)
  {
    v117 = *(a1 + 9744);
    if (v117)
    {
      v118 = *(a3 + 2416) & *(a6 + 352) & v117[4];
      v119 = *(a3 + 2424) & *(a6 + 360) & v117[5];
      *&v468 = v118;
      v466 = v119;
      v120 = *(a3 + 1376);
      v121 = *(a3 + 1384);
      v122 = v117[6];
      v123 = v117[7];
      while (1)
      {
        if (v118)
        {
          v124 = &v468;
        }

        else
        {
          v118 = v466;
          if (!v466)
          {
            *(*(a1 + 7664) + 1612) |= (v122 & v120 | v123 & v121) != 0;
            break;
          }

          v124 = &v466;
        }

        *v124 = v118 & (v118 - 1);
        v118 = v468;
      }
    }
  }

  v125 = *(a6 + 392);
  if ((v125 & 1) != 0 && *(v453 + 2176) == 1)
  {
    *(a6 + 392) = v125 & 0xFFFFFFFE;
  }

  *(a6 + 384) = 0;
  v126.i32[1] = 0;
  v126.i64[1] = 0;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v127 = a1 + 64;
  v447 = a1 + 64;
  v448 = a1 + 24;
  v128 = *(a1 + 72);
  if ((v128 + 23) > *(a1 + 64))
  {
    v374 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 0, 0);
    v8 = a2;
    v127 = a1 + 64;
    if (v374)
    {
      v375 = *(a1 + 72) + 184;
      if (v375 > *(a1 + 64))
      {
        goto LABEL_534;
      }

      *(a1 + 80) = v375;
      *v128 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v448, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v8 = a2;
      v127 = a1 + 64;
    }
  }

  else
  {
    *(a1 + 80) = v128 + 23;
  }

  if (v8)
  {
    v129 = *(v8 + 624) + 31;
  }

  else
  {
    v129 = 31;
  }

  v130 = *(a1 + 168) + v129;
  if (v130 <= *(a1 + 160))
  {
LABEL_173:
    *(a1 + 176) = v130;
    goto LABEL_174;
  }

  v376 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 3, 0);
  v8 = a2;
  v127 = a1 + 64;
  if (v376)
  {
    v130 = *(a1 + 168) + v129;
    if (v130 > *(a1 + 160))
    {
      goto LABEL_534;
    }

    goto LABEL_173;
  }

LABEL_174:
  v131 = *(a1 + 1032) + 636;
  if (v131 <= *(a1 + 1024))
  {
LABEL_175:
    *(a1 + 1040) = v131;
    goto LABEL_176;
  }

  v377 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 30, 0);
  v8 = a2;
  v127 = a1 + 64;
  if (v377)
  {
    v131 = *(a1 + 1032) + 636;
    if (v131 > *(a1 + 1024))
    {
      goto LABEL_534;
    }

    goto LABEL_175;
  }

LABEL_176:
  if (*(a1 + 1864))
  {
    v132 = 30;
  }

  else
  {
    v132 = 31;
  }

  v133 = (v127 + 32 * v132);
  v134 = v133[1] + 520;
  if (v134 <= *v133)
  {
LABEL_180:
    v133[2] = v134;
    goto LABEL_181;
  }

  v378 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, v132, 0);
  v8 = a2;
  v127 = a1 + 64;
  if (v378)
  {
    v134 = v133[1] + 520;
    if (v134 > *v133)
    {
      goto LABEL_534;
    }

    goto LABEL_180;
  }

LABEL_181:
  if ((v97 & 0xFE01) == 0)
  {
    goto LABEL_184;
  }

  v135 = (*(*(v8 + 2392) + 8) - **(v8 + 2392)) + 63;
  v136 = *(a1 + 232) + v135;
  if (v136 <= *(a1 + 224))
  {
    goto LABEL_183;
  }

  v384 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 5, 0);
  v127 = a1 + 64;
  if (v384)
  {
    v136 = *(a1 + 232) + v135;
    if (v136 > *(a1 + 224))
    {
      goto LABEL_534;
    }

LABEL_183:
    *(a1 + 240) = v136;
  }

LABEL_184:
  if ((v97 & 0xF8000000002) == 0)
  {
    goto LABEL_194;
  }

  v137 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v138 = *(a1 + 264) + v137;
  if (v138 <= *(a1 + 256))
  {
    goto LABEL_186;
  }

  v385 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 6, 0);
  v127 = a1 + 64;
  if (v385)
  {
    v138 = *(a1 + 264) + v137;
    if (v138 > *(a1 + 256))
    {
      goto LABEL_534;
    }

LABEL_186:
    *(a1 + 272) = v138;
  }

  v139 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v140 = 4;
  }

  else
  {
    v140 = 11;
  }

  v141 = (v127 + 32 * v140);
  if (((1 << v140) & 0x480) != 0 && !v141[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v448, v140, 0) & 1) == 0)
  {
LABEL_534:
    abort();
  }

  v142 = v139 + 31;
  v143 = v141[1] + v142;
  if (v143 <= *v141)
  {
    goto LABEL_193;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, v140, 0))
  {
    v143 = v141[1] + v142;
    if (v143 > *v141)
    {
      goto LABEL_534;
    }

LABEL_193:
    v141[2] = v143;
  }

LABEL_194:
  v144 = *(a1 + 360) + 20;
  if (v144 <= *(a1 + 352))
  {
LABEL_195:
    *(a1 + 368) = v144;
    goto LABEL_196;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 9, 0))
  {
    v144 = *(a1 + 360) + 20;
    if (v144 > *(a1 + 352))
    {
      goto LABEL_534;
    }

    goto LABEL_195;
  }

LABEL_196:
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v145 = 16 * *(a1 + 6844);
    v146 = *(a1 + 328) + v145;
    if (v146 > *(a1 + 320))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 8, 1))
      {
        v396 = *(a1 + 328) + v145;
        if (v396 > *(a1 + 320))
        {
          goto LABEL_534;
        }

        *(a1 + 336) = v396;
        *(*(a1 + 7664) + 944) = *(*(a1 + 48) + 512) + *(*(a1 + 48) + 536) - *(*(a1 + 48) + 520);
      }
    }

    else
    {
      *(a1 + 336) = v146;
    }
  }

  if ((*(*(*(a1 + 1872) + 848) + 6241) & 1) == 0)
  {
    v147 = *(a1 + 296);
    if (!v147)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v448, 7, 0))
      {
        goto LABEL_534;
      }

      v147 = *(a1 + 296);
    }

    v148 = v147 + 12;
    if (v148 > *(a1 + 288))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 7, 1))
      {
        v397 = *(a1 + 296);
        if ((v397 + 12) > *(a1 + 288))
        {
          goto LABEL_534;
        }

        *(a1 + 304) = v397 + 12;
        if (!v397)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v448, 7u);
        }

        *(*(a1 + 7664) + 952) = *(*(a1 + 48) + 448) + *(*(a1 + 48) + 472) - *(*(a1 + 48) + 456);
      }
    }

    else
    {
      *(a1 + 304) = v148;
    }
  }

  if (*(a1 + 5296))
  {
    v149 = *(a1 + 80);
    if ((v149 + 8) > *(a1 + 64))
    {
      v386 = *(a1 + 72);
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 0, 0))
      {
        v387 = *(a1 + 72) + v149 - v386 + 8;
        if (v387 > *(a1 + 64))
        {
          goto LABEL_534;
        }

        *(a1 + 80) = v387;
        *v386 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v448, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v149 + 8;
    }
  }

  v150 = 0xDE876B1A5;
  v462 = 0;
  v461 = 4123088130;
  v151 = -1;
  v460 = -1;
  v459 = 0;
  v458 = 0;
  v152 = *(*(a1 + 1872) + 848);
  if (*(v152 + 6241) == 1 && (v97 & 0x400000000000) != 0)
  {
    v126.i32[0] = *(a1 + 7184);
    v391 = *(a1 + 7188);
    v392 = *(a1 + 7192);
    v98.i32[0] = 931135616;
    v393.i64[0] = 0x8000000080000000;
    v393.i64[1] = 0x8000000080000000;
    LODWORD(v394) = vbslq_s8(v393, v98, v126).u32[0];
    if (*(*(a1 + 2392) + 4924))
    {
      *v126.i32 = v394 + (*v126.i32 * 0.000015259);
    }

    *&v468 = 0;
    LOBYTE(v466) = 0;
    LOBYTE(v465) = 0;
    v395 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v152, *(*(a1 + 7664) + 952), &v468, &v466, &v465, *v126.i32, v391, v392);
    if (v465)
    {
      if (v466)
      {
        v151 = v395;
        v150 = v468;
      }

      else
      {
        v462 = 1;
        v458 = 4;
      }
    }

    else
    {
      v462 = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(a1, &v463, &v460, &v461, &v459, &v462, &v458);
  v153 = v462 | (*(*(a1 + 1912) + 520) == 0);
  v462 = v153;
  v154 = *(*(a1 + 1872) + 848) + 4096;
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v153 |= ((*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4) > 0xFFFE;
    v462 = v153;
  }

  if (*(v154 + 2145))
  {
    if ((v153 & 1) == 0)
    {
LABEL_212:
      v155 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v168 = *(a1 + 296);
    if (!v168)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v448, 7u);
      v168 = *(a1 + 296);
      if (!v168)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v448, 7u);
        v168 = 0;
      }
    }

    v462 = v153 | (-1431655765 * ((v168 - *(*(a1 + 48) + 472)) >> 2) > 0xFFFE);
    if ((v462 & 1) == 0)
    {
      goto LABEL_212;
    }
  }

  if (*(a1 + 5296))
  {
    *(a1 + 5376) = v458;
    *(v453 + 160) = 1;
    return;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, &v463, v458, 1);
  v398 = v463;
  v399 = *(a1 + 72);
  if ((v399 + 23) <= *(a1 + 64))
  {
    *(a1 + 80) = v399 + 23;
LABEL_489:
    v400 = a2;
    goto LABEL_490;
  }

  v426 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 0, 0);
  v400 = a2;
  if (v426)
  {
    v427 = *(a1 + 72) + 184;
    if (v427 > *(a1 + 64))
    {
      goto LABEL_534;
    }

    *(a1 + 80) = v427;
    *v399 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v448, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    goto LABEL_489;
  }

LABEL_490:
  if (v400)
  {
    v401 = *(v400 + 624) + 31;
  }

  else
  {
    v401 = 31;
  }

  v406 = *(a1 + 168) + v401;
  if (v406 <= *(a1 + 160))
  {
LABEL_503:
    *(a1 + 176) = v406;
    goto LABEL_504;
  }

  v428 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 3, 0);
  v400 = a2;
  if (v428)
  {
    v406 = *(a1 + 168) + v401;
    if (v406 > *(a1 + 160))
    {
      goto LABEL_534;
    }

    goto LABEL_503;
  }

LABEL_504:
  v407 = *(a1 + 1032) + 636;
  if (v407 <= *(a1 + 1024))
  {
LABEL_505:
    *(a1 + 1040) = v407;
    goto LABEL_506;
  }

  v429 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 30, 0);
  v400 = a2;
  if (v429)
  {
    v407 = *(a1 + 1032) + 636;
    if (v407 > *(a1 + 1024))
    {
      goto LABEL_534;
    }

    goto LABEL_505;
  }

LABEL_506:
  if (*(a1 + 1864))
  {
    v408 = 30;
  }

  else
  {
    v408 = 31;
  }

  v409 = (v447 + 32 * v408);
  v410 = v409[1] + 520;
  if (v410 <= *v409)
  {
LABEL_510:
    v409[2] = v410;
    goto LABEL_511;
  }

  v430 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, v408, 0);
  v400 = a2;
  if (v430)
  {
    v410 = v409[1] + 520;
    if (v410 > *v409)
    {
      goto LABEL_534;
    }

    goto LABEL_510;
  }

LABEL_511:
  if ((v398 & 0xFE01) == 0)
  {
    goto LABEL_514;
  }

  v411 = (*(*(v400 + 2392) + 8) - **(v400 + 2392)) + 63;
  v412 = *(a1 + 232) + v411;
  if (v412 <= *(a1 + 224))
  {
    goto LABEL_513;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 5, 0))
  {
    v412 = *(a1 + 232) + v411;
    if (v412 > *(a1 + 224))
    {
      goto LABEL_534;
    }

LABEL_513:
    *(a1 + 240) = v412;
  }

LABEL_514:
  if ((v398 & 0xF8000000002) == 0)
  {
    goto LABEL_524;
  }

  v413 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v414 = *(a1 + 264) + v413;
  if (v414 <= *(a1 + 256))
  {
    goto LABEL_516;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, 6, 0))
  {
    v414 = *(a1 + 264) + v413;
    if (v414 > *(a1 + 256))
    {
      goto LABEL_534;
    }

LABEL_516:
    *(a1 + 272) = v414;
  }

  v415 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v416 = 4;
  }

  else
  {
    v416 = 11;
  }

  v417 = (v447 + 32 * v416);
  if (((1 << v416) & 0x480) != 0 && !v417[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v448, v416, 0) & 1) == 0)
  {
    goto LABEL_534;
  }

  v418 = v415 + 31;
  v419 = v417[1] + v418;
  if (v419 <= *v417)
  {
    goto LABEL_523;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v448, v416, 0))
  {
    v419 = v417[1] + v418;
    if (v419 > *v417)
    {
      goto LABEL_534;
    }

LABEL_523:
    v417[2] = v419;
  }

LABEL_524:
  v420 = *(a1 + 360) + 20;
  if (v420 > *(a1 + 352))
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v448, 9, 0))
    {
      goto LABEL_526;
    }

    v420 = *(a1 + 360) + 20;
    if (v420 > *(a1 + 352))
    {
      goto LABEL_534;
    }
  }

  *(a1 + 368) = v420;
LABEL_526:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveScissorSpace(a1, *(a1 + 6844));
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDepthBiasSpace(a1);
  v155 = 1;
  if (a7 && (v464[0] & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v155 = 1;
  }

LABEL_213:
  if (!*(*(a1 + 1912) + 520))
  {
    v156 = *(a1 + 1968) - *(a1 + 1984);
    *(v156 + 140) = 1;
    if ((*(v156 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(a1, &v463, v460, v461, v459, v155);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(a1, &v463, v151, v150, v157, v158, v159, v160);
  v162 = v463;
  v163 = a2;
  if ((v463 & 0x800000000000) != 0)
  {
    v379 = *(a1 + 5944);
    v380 = *(a1 + 200);
    v381 = v380 + 11;
    if ((v380 + 11) > *(a1 + 192))
    {
      v425 = AGX::DataBufferAllocator<44ul>::growNoInline(v448, 4, 0);
      v380 = *(a1 + 200);
      if (!v425)
      {
        v163 = a2;
LABEL_429:
        v382 = ((v380 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v383 = v382 + *(a1 + 216);
        *v382 = v379;
        *(a1 + 200) = v382 + 1;
        *(a1 + 5960) = v383 & 0xFFFFFFFC;
        *(a1 + 5956) = (v383 >> 16) & 0xFFFF0000;
        v162 |= 0x8000000000000uLL;
        v463 = v162;
        if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
        {
          *(a1 + 10472) |= 0x1000000000000uLL;
        }

        goto LABEL_217;
      }

      v381 = v380 + 11;
      v163 = a2;
      if ((v380 + 11) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v381;
    goto LABEL_429;
  }

LABEL_217:
  v164 = (v163 + 628);
  if (v162 & 0xFE01) == 0 || (*(v453 + 2188))
  {
    goto LABEL_343;
  }

  v444 = v162;
  v445 = (v163 + 628);
  v165 = *(v163 + 624);
  if (v165)
  {
    v166 = (*(a1 + 168) + 31) & 0xFFFFFFFFFFFFFFE0;
    v167 = v166 + *(a1 + 184);
    *(a1 + 168) = v166 + v165;
  }

  else
  {
    v167 = 0;
    v166 = 0;
  }

  v442 = *(a1 + 7408);
  v443 = *(v453 + 2176);
  v169 = ((*(a1 + 232) + 63) & 0xFFFFFFFFFFFFFFC0);
  v170 = *(a1 + 248);
  *(a1 + 232) = &v169[*(*(v163 + 2392) + 8) - **(v163 + 2392)];
  v171 = *(v163 + 1128);
  v172 = *(v163 + 1120);
  v173 = v171 - v172;
  v63 = v171 == v172;
  v174 = *(v163 + 1016);
  v175 = v174 & 1;
  if (v63)
  {
    v175 = 0;
  }

  if (!v165)
  {
    goto LABEL_321;
  }

  v176 = *(v163 + 1320);
  v177 = *(v163 + 656);
  v432 = *(v163 + 736);
  v441 = *(v163 + 660);
  v178 = *(v163 + 1024);
  v179 = *(v163 + 1028);
  v180 = v177 + ((*(v163 + 872) - *(v163 + 864)) >> 2);
  v439 = *(v163 + 1353);
  v431 = *(v163 + 1352);
  if (*(v163 + 1352))
  {
    *(a1 + 7904) = vaddw_u32(vdupq_n_s64(v167), *v445);
  }

  if (v439)
  {
    *(a1 + 7936) = v167 + *(v163 + 648);
  }

  v438 = 8 * v180;
  v181 = v175 + v174;
  if (v179 + v178)
  {
    *(a1 + 8000) = v438 + v167 + 4 * (v181 + ((v173 >> 1) & 0xFFFFFFFE));
  }

  v433 = v181;
  v182 = a4;
  v434 = v170;
  v440 = v167;
  v437 = v173;
  v435 = v178;
  v436 = v179;
  if (v177 == v176)
  {
    v183 = 0;
    if (v176)
    {
      goto LABEL_237;
    }

    goto LABEL_286;
  }

  if (a4)
  {
    v465 = a1 + 7720;
    v466 = a4;
    v188 = &unk_2A23FA148;
    *&v468 = &unk_2A23FA148;
    *(&v468 + 1) = &v465;
    v469 = &v466;
    v470 = &v468;
    v189 = *(v163 + 688);
    v190 = *(v163 + 696);
    if (v189 != v190)
    {
      v191 = 0;
      while (1)
      {
        v467 = *v189;
        if (!v470)
        {
          break;
        }

        v193 = (*(*v470 + 48))(v470, &v467);
        v194 = *(v189 + 1);
        v195 = *(v189 + 2);
        if (v194 == v195)
        {
          v192 = v191;
        }

        else
        {
          do
          {
            v196 = *v194++;
            v192 = (v191 + 1);
            *(v166 + 8 * v191) = *(v193 + 8 * v196);
            LODWORD(v191) = v191 + 1;
          }

          while (v194 != v195);
        }

        v189 += 8;
        v191 = v192;
        if (v189 == v190)
        {
          goto LABEL_259;
        }
      }

LABEL_541:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    goto LABEL_262;
  }

  v466 = a1 + 7720;
  v188 = &unk_2A23F9C80;
  *&v468 = &unk_2A23F9C80;
  *(&v468 + 1) = &v466;
  v470 = &v468;
  v197 = *(v163 + 688);
  v198 = *(v163 + 696);
  if (v197 == v198)
  {
LABEL_262:
    v205 = &v468;
    v167 = v440;
    v179 = v436;
LABEL_264:
    v188[4](v205);
    goto LABEL_265;
  }

  v199 = 0;
  do
  {
    LODWORD(v465) = *v197;
    if (!v470)
    {
      goto LABEL_541;
    }

    v201 = (*(*v470 + 48))(v470, &v465);
    v202 = *(v197 + 8);
    v203 = *(v197 + 16);
    if (v202 == v203)
    {
      v200 = v199;
    }

    else
    {
      do
      {
        v204 = *v202++;
        v200 = (v199 + 1);
        *(v166 + 8 * v199) = *(v201 + 8 * v204);
        LODWORD(v199) = v199 + 1;
      }

      while (v202 != v203);
    }

    v197 += 32;
    v199 = v200;
  }

  while (v197 != v198);
LABEL_259:
  v205 = v470;
  if (v470 == &v468)
  {
    v188 = *v470;
    v170 = v434;
    v167 = v440;
    v179 = v436;
    goto LABEL_264;
  }

  v170 = v434;
  v167 = v440;
  v179 = v436;
  if (v470)
  {
    (*(*v470 + 40))();
  }

LABEL_265:
  v173 = v437;
  v178 = v435;
  if (*(v163 + 1160))
  {
    v206 = *(v163 + 1144);
    if (v206 != (v163 + 1152))
    {
      do
      {
        *(v166 + 4 * *(v206 + 7)) |= *(v206 + 8);
        v216 = v206[1];
        if (v216)
        {
          do
          {
            v217 = v216;
            v216 = *v216;
          }

          while (v216);
        }

        else
        {
          do
          {
            v217 = v206[2];
            v63 = *v217 == v206;
            v206 = v217;
          }

          while (!v63);
        }

        v206 = v217;
      }

      while (v217 != (v163 + 1152));
    }
  }

  v207 = (v432 + 3) & 0xFFFFFFFC;
  if (v431)
  {
    v208 = *(v163 + 1312);
    if (v208 >= 4)
    {
      v209 = *(a4 + 24) + *(a4 + 8);
      v210 = v208 >> 2;
      v211 = *(v163 + 752);
      v212 = (v166 + 8 * v207);
      do
      {
        v213 = *v211;
        v211 += 4;
        v214 = (v209 + 8 * v213);
        v215 = v214[1];
        *v212 = *v214;
        v212[1] = v215;
        v212 += 2;
        --v210;
      }

      while (v210);
    }

    v207 += v208;
  }

  else
  {
    v208 = 0;
  }

  if (v439)
  {
    v218 = *(v163 + 1316);
    v219 = (v166 + 8 * v207);
    v220 = *(a4 + 24) + *(a4 + 12);
    if (*(v163 + 2192) == 1)
    {
      if (v218)
      {
        v423 = (*(v163 + 752) + 4 * v208);
        do
        {
          v424 = *v423++;
          *v219++ = *(v220 + 8 * v424);
          --v218;
        }

        while (v218);
      }
    }

    else if (v218 >= 4)
    {
      v221 = v218 >> 2;
      v222 = (*(v163 + 752) + 4 * v208);
      do
      {
        v223 = *v222;
        v222 += 4;
        *v219 = *(v220 + 8 * v223);
        v219 += 4;
        --v221;
      }

      while (v221);
    }
  }

  v183 = 8 * (v177 - v176);
  v182 = a4;
  if (v176)
  {
LABEL_237:
    if (v176 >= 4)
    {
      v184 = *(v163 + 2920);
      v185 = v176 >> 2;
      v186 = (v166 + v183);
      do
      {
        v187 = *v184;
        v184 += 4;
        *v186 = v187;
        v186 += 4;
        --v185;
      }

      while (v185);
    }

    v183 += 8 * v176;
    v182 = a4;
    if (!v441)
    {
      goto LABEL_302;
    }

LABEL_287:
    *(a1 + 7736) = v167 + v183 + 8;
    v465 = a1 + 7720;
    v466 = v182;
    v224 = &unk_2A23FA190;
    *&v468 = &unk_2A23FA190;
    *(&v468 + 1) = &v465;
    v469 = &v466;
    v470 = &v468;
    v225 = *(v163 + 800);
    v226 = *(v163 + 808);
    if (v225 == v226)
    {
      v233 = &v468;
      v167 = v440;
      v179 = v436;
    }

    else
    {
      v227 = 0;
      do
      {
        v467 = *v225;
        if (!v470)
        {
          goto LABEL_541;
        }

        v229 = (*(*v470 + 48))(v470, &v467);
        v230 = *(v225 + 1);
        v231 = *(v225 + 2);
        if (v230 == v231)
        {
          v228 = v227;
        }

        else
        {
          do
          {
            v232 = *v230++;
            v228 = (v227 + 1);
            *(v166 + v183 + 4 * v227) = *(v229 + 4 * v232);
            LODWORD(v227) = v227 + 1;
          }

          while (v230 != v231);
        }

        v225 += 8;
        v227 = v228;
      }

      while (v225 != v226);
      v233 = v470;
      v170 = v434;
      if (v470 != &v468)
      {
        v167 = v440;
        v179 = v436;
        if (v470)
        {
          (*(*v470 + 40))();
        }

        goto LABEL_301;
      }

      v224 = *v470;
      v167 = v440;
      v179 = v436;
    }

    v224[4](v233);
LABEL_301:
    v183 += 4 * v441;
    v173 = v437;
    v178 = v435;
    goto LABEL_302;
  }

LABEL_286:
  if (v441)
  {
    goto LABEL_287;
  }

LABEL_302:
  v234 = v173 >> 2;
  if ((v173 >> 2))
  {
    v235 = v438 + 4 * v433;
    v236 = (v166 + (v235 & 0xFFFFFFFC));
    v237 = *(a4 + 24) + *(a4 + 12);
    v238 = *(v163 + 1120);
    do
    {
      v239 = *v238++;
      *v236++ = *(v237 + 8 * v239);
      LODWORD(v234) = v234 - 1;
    }

    while (v234);
    v183 = v235 + 8 * (v173 >> 2);
  }

  if (v179 == -v178)
  {
    goto LABEL_321;
  }

  v240 = (v166 + v183);
  v241 = 4 * *(v163 + 1024);
  memcpy(v240, (a4 + 4 * *(v163 + 1020)), v241);
  v465 = a1 + 7720;
  v466 = a4;
  v242 = &unk_2A23FA1D8;
  *&v468 = &unk_2A23FA1D8;
  *(&v468 + 1) = &v465;
  v469 = &v466;
  v470 = &v468;
  v243 = *(v163 + 1056);
  v244 = *(v163 + 1064);
  if (v243 == v244)
  {
    v252 = &v468;
  }

  else
  {
    v245 = 0;
    v246 = &v240[v241];
    do
    {
      v467 = *v243;
      if (!v470)
      {
        goto LABEL_541;
      }

      v248 = (*(*v470 + 48))(v470, &v467);
      v249 = *(v243 + 1);
      v250 = *(v243 + 2);
      if (v249 == v250)
      {
        v247 = v245;
      }

      else
      {
        do
        {
          v251 = *v249++;
          v247 = (v245 + 1);
          *&v246[4 * v245] = *(v248 + 4 * v251);
          LODWORD(v245) = v245 + 1;
        }

        while (v249 != v250);
      }

      v243 += 8;
      v245 = v247;
    }

    while (v243 != v244);
    v252 = v470;
    if (v470 != &v468)
    {
      v170 = v434;
      v167 = v440;
      if (v470)
      {
        (*(*v470 + 40))();
      }

      goto LABEL_321;
    }

    v242 = *v470;
    v170 = v434;
  }

  v167 = v440;
  v242[4](v252);
LABEL_321:
  if (a4)
  {
    v253 = *(a4 + 24) + *(a4 + 4);
  }

  else
  {
    v253 = 0;
  }

  v254 = *(v163 + 2392);
  memcpy(v169, *v254, *(v254 + 8) - *v254);
  if (*(v254 + 272) == 1)
  {
    v255 = *(v254 + 276);
    v256.i64[0] = v167;
    v256.i64[1] = v167 >> 5;
    v161 = vbslq_s8(xmmword_29D2F17C0, *&v169[v255], vshlq_u8(vqtbl1q_s8(v256, xmmword_29D2F17A0), xmmword_29D2F17B0));
    *&v169[v255] = v161;
  }

  if (v253)
  {
    v257 = *(v254 + 224);
    v258 = *(v254 + 232);
    if (v257 != v258)
    {
      v161.i64[0] = 0xA09080803000000;
      do
      {
        v259.i64[0] = *(v253 + 8 * v257[1]) + *v257;
        v259.i64[1] = v259.i64[0] >> 5;
        *&v169[v257[2]] = vbslq_s8(xmmword_29D2F17C0, *&v169[v257[2]], vshlq_u8(vqtbl1q_s8(v259, xmmword_29D2F17A0), xmmword_29D2F17B0));
        v257 += 3;
      }

      while (v257 != v258);
    }
  }

  v260 = *(v254 + 248);
  v261 = *(v254 + 256);
  if (v260 != v261)
  {
    v161.i64[0] = 0xA09080803000000;
    do
    {
      v262.i64[0] = *(a1 + 7720 + 8 * v260[1]) + *v260;
      v262.i64[1] = v262.i64[0] >> 5;
      *&v169[v260[2]] = vbslq_s8(xmmword_29D2F17C0, *&v169[v260[2]], vshlq_u8(vqtbl1q_s8(v262, xmmword_29D2F17A0), xmmword_29D2F17B0));
      v260 += 3;
    }

    while (v260 != v261);
  }

  v263 = &v169[v170];
  v264 = *v449;
  if (*v449)
  {
    v266 = *v254;
    v265 = *(v254 + 8);
    v267 = *(v163 + 2800);
    LODWORD(v268) = *(v264 + 2);
    v269 = v268 + 1;
    if (*(v264 + 3) >= (v268 + 1))
    {
      v272 = *v264;
    }

    else
    {
      v270 = -__clz(v268);
      v271 = malloc_type_malloc(40 << (v270 & 0x1F), 0x10800400D7C94D2uLL);
      v272 = v271;
      v273 = 1 << v270;
      v268 = *(v264 + 2);
      if (v268)
      {
        memcpy(v271, *v264, 40 * v268);
        free(*v264);
        LODWORD(v268) = *(v264 + 2);
      }

      *(v264 + 3) = v273;
      *v264 = v272;
      v163 = a2;
    }

    v274 = &v272[40 * v268];
    *v274 = 0;
    *(v274 + 1) = v263;
    *(v274 + 2) = v169;
    *(v274 + 3) = (v265 - v266);
    *(v274 + 8) = v267;
    *(v264 + 2) = v269;
  }

  v275 = *(a1 + 8456);
  v276 = v163 + 28 * (v443 | (2 * v442));
  v277 = *(v276 + 3744);
  v278 = *(v276 + 3752);
  v279 = (v263 >> 16) & 0xFFC00000 | *(v276 + 3736) & 0x3FFFFF;
  v280 = v275 - 1;
  v63 = (v278 & 7) - 1 == v275;
  v281 = *(a1 + 72);
  v282 = *(v276 + 3728);
  if (!v63)
  {
    v278 = v280 & 7;
  }

  *v281 = v282;
  *(v281 + 8) = v279;
  *(v281 + 12) = v263 >> 6;
  *(v281 + 16) = v277;
  *(v281 + 24) = v278;
  *(a1 + 72) = v281 + 28;
  LOBYTE(v162) = v444;
  v164 = v445;
LABEL_343:
  if (v162)
  {
    v283 = v164[439];
    v284 = *(a1 + 72);
    *v284 = v283;
    *(a1 + 72) = v284 + 1;
  }

  v285 = v463;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>(v449, v448, a3, *(a1 + 7688), a5, (a1 + 8824), v463, *(a1 + 7408), *v161.i8, *(v453 + 2188));
  if ((v285 & 0x5F400000000000) != 0)
  {
    v286 = *(a1 + 1032);
    v287 = *(a1 + 1048) + v286;
    *(a1 + 1032) = v286 + 24;
    *v286 = xmmword_29D2F1760;
    *(v286 + 16) = 0x1FFFF00023020;
    v288 = __ROR8__(v287, 32) & 0xFFFFFFFC000000FFLL | 0x600;
    v289 = *(a1 + 72);
    *v289 = v288;
    *(a1 + 72) = v289 + 1;
  }

  if ((v285 & 4) != 0)
  {
    v291 = *(a1 + 1032);
    v292 = *(a1 + 1048) + v291;
    v293 = *(a1 + 6020);
    *(a1 + 1032) = v291 + 20;
    *(v291 + 16) = *(a1 + 6036);
    *v291 = v293;
    v294 = __ROR8__(v292, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v295 = *(a1 + 72);
    *v295 = v294;
    *(a1 + 72) = v295 + 1;
    v290 = v451;
    if ((v285 & 0x100000000000) == 0)
    {
LABEL_349:
      if ((v285 & 0x1000000000000) == 0)
      {
        goto LABEL_399;
      }

      goto LABEL_381;
    }
  }

  else
  {
    v290 = v451;
    if ((v285 & 0x100000000000) == 0)
    {
      goto LABEL_349;
    }
  }

  if (a7)
  {
    v296 = atomic_load(&v290[4254]._os_unfair_lock_opaque + 1);
    v297 = a1 + 5972;
    if ((v296 & 1) == 0)
    {
      goto LABEL_360;
    }
  }

  else
  {
    if (!a3)
    {
      v297 = a1 + 5972;
      goto LABEL_360;
    }

    v297 = a1 + 5972;
    if (*(a3 + 1354) != 1)
    {
      goto LABEL_360;
    }
  }

  if ((*(a1 + 5983) & 7) == 0)
  {
    *(*(a1 + 7664) + 1168) |= 0x10000uLL;
  }

LABEL_360:
  v298 = vand_s8(*(v453 + 756), vdup_n_s32(0xFFFC00FF));
  v299 = 7384;
  if (*(a1 + 7376) == 2)
  {
    v299 = 7388;
  }

  v300 = 256.0;
  if (*(a1 + 7376) == 2)
  {
    v300 = 1023.5;
  }

  v301 = *(a1 + v299) * 16.0;
  if (v301 <= v300)
  {
    v300 = *(a1 + v299) * 16.0;
  }

  v302 = v300;
  if (v301 < 0.0)
  {
    v302 = 0;
  }

  if (v302)
  {
    v303 = ((v302 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v303 = 0;
  }

  *(v453 + 756) = vorr_s8(v298, vdup_n_s32(v303));
  v304 = *(a1 + 5972);
  v305 = *(v297 + 4);
  v457 = *(v297 + 24);
  v456 = *(v297 + 8);
  v306 = *(a1 + 6000);
  v307 = *(a1 + 6004);
  *&v468 = *(a1 + 6008);
  DWORD2(v468) = *(a1 + 6016);
  v308 = *(v453 + 2178);
  if (a7)
  {
    v309 = 0x10000000;
  }

  else
  {
    v309 = 0;
  }

  v310 = v305 & 0xEBFFFFFF | v309;
  if (v308 & 1 | ((v305 & 0x4000000) != 0))
  {
    v311 = 0x4000000;
  }

  else
  {
    v311 = 0;
  }

  v312 = v311 | v310;
  v313 = *(a1 + 1032);
  v314 = *(a1 + 1048) + v313;
  *(a1 + 1032) = v313 + 28;
  *v313 = v304;
  *(v313 + 4) = v312;
  *(v313 + 24) = v457;
  *(v313 + 8) = v456;
  v315 = *(a1 + 72);
  *v315 = __ROR8__(v314, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v315 + 1;
  if ((v308 | ((v307 & 0x4000000u) >> 26)))
  {
    v316 = 0x4000000;
  }

  else
  {
    v316 = 0;
  }

  v317 = v316 | v307 & 0xFBFFFFFF;
  v318 = *(a1 + 1032);
  v319 = *(a1 + 1048) + v318;
  *(a1 + 1032) = v318 + 20;
  *v318 = v306;
  *(v318 + 4) = v317;
  *(v318 + 16) = DWORD2(v468);
  *(v318 + 8) = v468;
  v320 = *(a1 + 72);
  *v320 = __ROR8__(v319, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v320 + 1;
  v285 = v463;
  if ((v463 & 0x1000000000000) != 0)
  {
LABEL_381:
    v321 = 0;
    v322 = *(a1 + 5404);
    v323 = (v322 >> 14) & 0xF;
    v324 = ((v322 >> 11) & 0x78) + 10;
    v325 = 960;
    if (!*(a1 + 1864))
    {
      v325 = 992;
    }

    v326 = v447 + v325;
    v327 = *(v447 + v325 + 8);
    v328 = *(v326 + 24);
    *(v326 + 8) = &v327[v324];
    *v327 = v322;
    v329 = v327 + 1;
    v330 = v323 + 1;
    if (v323 < 3 || v327 - a1 - 5404 <= 0x1F)
    {
      goto LABEL_390;
    }

    v321 = v330 & 0x1C;
    v331 = *(a1 + 5424);
    v329 += v321;
    *(v327 + 1) = *(a1 + 5408);
    *(v327 + 5) = v331;
    if (v321 != 4)
    {
      v332 = *(a1 + 5456);
      *(v327 + 9) = *(a1 + 5440);
      *(v327 + 13) = v332;
      if (v321 != 8)
      {
        v333 = *(a1 + 5488);
        *(v327 + 17) = *(a1 + 5472);
        *(v327 + 21) = v333;
        if (v321 != 12)
        {
          v334 = *(a1 + 5520);
          *(v327 + 25) = *(a1 + 5504);
          *(v327 + 29) = v334;
        }
      }
    }

    if (v321 != v330)
    {
LABEL_390:
      v335 = ((v322 >> 14) & 0xF) - v321 + 1;
      v336 = (a1 + 8 * v321 + 5408);
      do
      {
        v337 = *v336++;
        *v329++ = v337;
        --v335;
      }

      while (v335);
    }

    v338 = v329 + 4;
    *v329 = *(a1 + 5536);
    v339 = a1 + 5540;
    do
    {
      v340 = *v339;
      *(v338 + 2) = *(v339 + 16);
      *v338 = v340;
      v338 += 24;
      v339 += 24;
      --v330;
    }

    while (v330);
    v341 = *(a1 + 72);
    *v341 = ((v327 + v328) >> 32) | (v324 << 8) | (((v327 + v328) >> 2) << 34);
    *(a1 + 72) = v341 + 1;
    if (*(v453 + 1648) == 1)
    {
      v342 = (v453 + 1088);
      v343 = v327 + v328 + 0x1000000004;
      v344 = v327 + 2;
      v345 = -1;
      do
      {
        if (*(v344 - 1))
        {
          v346 = *(*(*(a1 + 10536) + 64) + 16);
          v347 = *(a1 + 744);
          *(a1 + 744) = v347 + 7;
          v348 = *v342;
          v349 = v342[-16];
          v350 = vmovn_s64(*v342);
          v351 = vmovn_s64(v349);
          *v349.i8 = vshrn_n_s64(v349, 0x20uLL);
          v352 = vbsl_s8(vcgt_u32(v351, v350), v351, vmin_u32(v350, *v349.i8));
          v347->i32[0] = 1;
          v347->i32[1] = v346;
          v347[1] = v343;
          *v348.i8 = vshrn_n_s64(v348, 0x20uLL);
          v347[2] = v352;
          v347[3] = vbsl_s8(vcgt_u32(v352, *v348.i8), v352, vmin_u32(*v348.i8, *v349.i8));
          v347[4].i32[0] = v345 + 1;
          v353 = *(a1 + 7328) + 1;
          *(a1 + 7328) = v353;
          *(*(a1 + 7320) + 4) = v353;
          ++*(a1 + 1956);
        }

        ++v342;
        ++v345;
        v343 += 8;
        v344 += 2;
      }

      while (v345 < ((*v327 >> 14) & 0xF));
    }
  }

LABEL_399:
  if ((v285 & 0x2000000000000) != 0)
  {
    v359 = *(v453 + 740);
    v360 = *(a1 + 7688);
    if (v360)
    {
      v361 = *(v360 + 820);
      v362 = *(v360 + 828);
    }

    else
    {
      v361 = 8650754;
      v362 = 128;
    }

    v363 = *(a1 + 1032);
    v364 = *(a1 + 1048) + v363;
    *(a1 + 1032) = v363 + 12;
    *v363 = v361;
    *(v363 + 8) = v362;
    v365 = *(a1 + 72);
    *v365 = __ROR8__(v364, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v365 + 1;
    v366 = *(a1 + 1032);
    v367 = v366 + *(a1 + 1048);
    *(a1 + 1032) = v366 + 1;
    *v366 = v359;
    v368 = *(a1 + 72);
    *v368 = __ROR8__(v367, 32) & 0xFFFFFFFC000000FFLL | 0x200;
    *(a1 + 72) = v368 + 1;
    if ((v285 & 0x4000000000000) == 0)
    {
LABEL_401:
      if ((v285 & 0x8000000000000) == 0)
      {
        return;
      }

      goto LABEL_402;
    }
  }

  else if ((v285 & 0x4000000000000) == 0)
  {
    goto LABEL_401;
  }

  v369 = *(a1 + 360);
  v370 = *(a1 + 376) + v369;
  v371 = *(a1 + 5924);
  *(a1 + 360) = v369 + 20;
  *(v369 + 16) = *(a1 + 5940);
  *v369 = v371;
  v372 = __ROR8__(v370, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v373 = *(a1 + 72);
  *v373 = v372;
  *(a1 + 72) = v373 + 1;
  if ((v285 & 0x8000000000000) != 0)
  {
LABEL_402:
    v354 = *(a1 + 5952);
    v355 = *(a1 + 5960);
    v356 = *(a1 + 1032);
    v357 = *(a1 + 1048) + v356;
    *(a1 + 1032) = v356 + 12;
    *v356 = v354;
    *(v356 + 8) = v355;
    v358 = *(a1 + 72);
    *v358 = __ROR8__(v357, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v358 + 1;
  }
}