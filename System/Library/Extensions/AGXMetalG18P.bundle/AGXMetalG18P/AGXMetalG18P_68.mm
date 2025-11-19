void sub_29CDE6728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4008));
  _Unwind_Resume(a1);
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v31 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v31;
    if (!v31)
    {
      break;
    }

    v19 = __clz(__rbit64(v31));
    v21 = v19 | 0x40;
    p_i = &v31;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= ~(1 << v25))
  {
    v25 = __clz(__rbit64(k));
    v16->i32[0] = v25 + 166;
    v16 = (v16 + 4);
    v26 = *(a1 + 3796);
    *(a1 + 3800 + 4 * v26) = v25;
    *(a1 + 3796) = v26 + 1;
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v28 = *(a1 + 1128);
  v29 = *(a1 + 1120);
  if (v28 == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v30 + (((v28 - v29) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

void AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4008));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  v5 = *(a1 + 3016);
  v6 = *(a2 + 52);
  if (v5 <= *(a2 + 48))
  {
    v5 = *(a2 + 48);
  }

  *(a1 + 3016) = v5;
  v7 = *(a1 + 3008);
  if (v7 <= *(a2 + 88) + v6)
  {
    v7 = *(a2 + 88) + v6;
  }

  *(a1 + 3008) = v7;
  v8 = *(a2 + 64);
  if (*(a1 + 3020) > v8)
  {
    v8 = *(a1 + 3020);
  }

  *(a1 + 3020) = v8;
  v9 = *(a1 + 2392);
  v10 = *(a1 + 3012);
  v11 = *(a1 + 3024);
  *(v9 + 140) = *(v9 + 140) & 0xFFFFF00000000000 | (((v7 + 3) >> 2) << 16) | (((((((v8 + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | ((v7 + 3) >> 2);
  *(v9 + 320) = (v10 + 3) >> 2;
  *(v9 + 324) = (((v11 + 3) >> 2) + 1) & 0x7FFFFFFE;
  if (*(v9 + 222) == 1)
  {
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v9 + 48), *(v9 + 312), *v9 + *(v9 + 316));
  }

  v12 = *(a1 + 3272);
  if (v12)
  {
    v13 = *(a1 + 3012);
    v14 = *(a1 + 3024);
    v15 = ((*(a1 + 3008) + 3) >> 2);
    *(v12 + 140) = *(v12 + 140) & 0xFFFFF00000000000 | (v15 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v15;
    *(v12 + 320) = (v13 + 3) >> 2;
    *(v12 + 324) = (((v14 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v12 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v12 + 48), *(v12 + 312), *v12 + *(v12 + 316));
    }

    v16 = *(a1 + 3272);
    v17 = *(a1 + 3224);
    memcpy(v17, *v16, *(v16 + 8) - *v16);
    if (*(v16 + 272) == 1)
    {
      *&v17[*(v16 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v17[*(v16 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v18 = *(a1 + 3272);
    v20 = *(v18 + 64);
    v19 = *(v18 + 80);
    *(a1 + 3280) = *(v18 + 48);
    *(a1 + 3296) = v20;
    *(a1 + 3312) = v19;
    v21 = *(v18 + 128);
    v22 = *(v18 + 144);
    v23 = *(v18 + 112);
    *(a1 + 3328) = *(v18 + 96);
    *(a1 + 3376) = v22;
    *(a1 + 3360) = v21;
    *(a1 + 3344) = v23;
    v25 = *(v18 + 176);
    v24 = *(v18 + 192);
    v26 = *(v18 + 208);
    *(a1 + 3392) = *(v18 + 160);
    *(a1 + 3440) = v26;
    *(a1 + 3424) = v24;
    *(a1 + 3408) = v25;
  }

  std::mutex::unlock((a1 + 4008));
}

void AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::MeshProgramVariant(unint64_t a1, uint64_t a2, const void **a3, const std::string *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = 0;
  v308 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v12;
  *(a1 + 176) = v12;
  *(a1 + 192) = v12;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 612) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F7910;
  *(a1 + 616) = a2;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v12;
  *(a1 + 1248) = v12;
  *(a1 + 1232) = v12;
  *(a1 + 1288) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1504) = 0;
  v294 = (a1 + 1504);
  *(a1 + 1512) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  v297 = (a1 + 1424);
  *(a1 + 1481) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  v290 = (a1 + 2031);
  *(a1 + 2031) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = *(a5 + 465);
  *(a1 + 2194) = 0;
  *(a1 + 2208) = 0u;
  v301 = a1 + 2208;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v11 = (v16 + *v16);
  }

  v17 = (v11 - *v11);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v302 = (v11 + v18 + *(v11 + v18));
  }

  else
  {
    v302 = 0;
  }

  v19 = 0;
  if (a3[58])
  {
    v20 = a3[59] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 58;
  if (v20)
  {
    v21 = 128;
    v22 = a3 + 128;
  }

  else
  {
    v22 = a3 + 58;
  }

  v23 = a3[v21];
  if (v23 && v22[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v26 = (v19 + v25 + *(v19 + v25));
  }

  else
  {
    v26 = 0;
  }

  v27 = *v26;
  v28 = -v27;
  v29 = (v26 - v27);
  v30 = *(v26 - v27);
  if (v30 < 0x25)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v29[18];
    if (v29[18])
    {
      LOBYTE(v31) = *(v26 + v31) != 0;
    }
  }

  *(a1 + 2193) = v31;
  v32 = (v302 - *v302);
  if (*v32 < 0x55u || (v33 = v32[42]) == 0 || !*(v302 + v33))
  {
LABEL_63:
    if (v30 < 7)
    {
      LODWORD(v47) = 0;
    }

    else
    {
      v47 = *(v26 + v28 + 6);
      if (*(v26 + v28 + 6))
      {
        LODWORD(v47) = *(v26 + v47);
      }
    }

    *(a1 + 1408) = v47;
    v48 = (v26 - *v26);
    if (*v48 >= 0x13u && (v49 = v48[9]) != 0)
    {
      v50 = v26 + v49 + *(v26 + v49) + 4;
    }

    else
    {
      v50 = "";
    }

    v295 = (a1 + 1472);
    v296 = (a1 + 1448);
    v291 = a1 + 2008;
    v292 = (a1 + 2224);
    MEMORY[0x29ED51E00](v297, v50);
    v51 = (v26 - *v26);
    if (*v51 >= 9u && (v52 = v51[4]) != 0)
    {
      v53 = v26 + v52 + *(v26 + v52) + 4;
    }

    else
    {
      v53 = "";
    }

    MEMORY[0x29ED51E00](v296, v53);
    v54 = (v26 - *v26);
    if (*v54 < 0x29u)
    {
      LOBYTE(v55) = 0;
    }

    else
    {
      v55 = v54[20];
      if (v55)
      {
        LOBYTE(v55) = *(v26 + v55) != 0;
      }
    }

    *(a1 + 1496) = v55;
    std::string::operator=(v295, a4);
    v56 = (v26 - *v26);
    if (*v56 >= 0x51u && (v57 = v56[40]) != 0)
    {
      v58 = v26 + v57 + *(v26 + v57) + 4;
    }

    else
    {
      v58 = "";
    }

    MEMORY[0x29ED51E00](v294, v58);
    v59 = (v26 - *v26);
    v300 = v26;
    if (*v59 >= 5u && v59[2] && *(a2 + 16608) == 1)
    {
      v60 = a3[1];
      if (v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_501;
      }

      v61 = *a3;
      if (v60 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v60)
      {
        memmove(__dst, v61, v60);
      }

      __dst[v60] = 0;
      if (*v290 < 0)
      {
        operator delete(*v291);
      }

      *v291 = *__dst;
      *(v291 + 16) = *&__dst[16];
      v62 = a3[3];
      if (a3[4])
      {
        v63 = v62 == 0;
      }

      else
      {
        v63 = 1;
      }

      if (v63)
      {
        v62 = a3[73];
      }

      *(a1 + 2032) = v62 - *a3;
    }

    v64 = a3 + 113;
    if (a3[43])
    {
      v65 = a3[44] == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = 43;
    if (v65)
    {
      v66 = 113;
    }

    else
    {
      v64 = a3 + 43;
    }

    v299 = a3;
    v67 = a3[v66];
    if (!v67 || !v64[1])
    {
LABEL_126:
      v80 = v299 + 138;
      if (v299[68])
      {
        v81 = v299[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = v299 + 68;
      }

      v83 = v299[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        v86 = 0;
        v87 = v302;
      }

      else
      {
        v88 = (v83 + *v83);
        v89 = (v88 - *v88);
        v87 = v302;
        if (*v89 >= 5u && (v90 = v89[2]) != 0)
        {
          v86 = *(v88 + v90);
        }

        else
        {
          v86 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2232) = (v86 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v91 = (v87 - *v87);
      if (*v91 < 5u)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[2];
        if (v92)
        {
          LODWORD(v92) = *(v87 + v92);
        }
      }

      *v292 = v92;
      v93 = (v87 - *v87);
      if (*v93 < 0x2Du)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[22];
        if (v94)
        {
          LODWORD(v94) = *(v87 + v94);
        }
      }

      *(a1 + 2228) = v94;
      v95 = (v87 - *v87);
      if (*v95 < 0x35u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[26];
        if (v96)
        {
          LODWORD(v96) = *(v87 + v96);
        }
      }

      *(a1 + 2268) = v96;
      v97 = (v87 - *v87);
      if (*v97 < 0x43u)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v97[33];
        if (v98)
        {
          LODWORD(v98) = *(v87 + v98);
        }
      }

      *(a1 + 2304) = v98;
      v99 = v299 + 108;
      if (v299[38])
      {
        v100 = v299[39] == 0;
      }

      else
      {
        v100 = 1;
      }

      v101 = 38;
      if (v100)
      {
        v101 = 108;
      }

      else
      {
        v99 = v299 + 38;
      }

      v102 = v299[v101];
      if (v102 && v99[1])
      {
        v103 = (v102 + *v102);
        v104 = (v103 - *v103);
        if (*v104 < 0xDu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[6];
          if (v105)
          {
            LODWORD(v105) = *(v103 + v105);
          }
        }

        *(a1 + 2228) = v105;
        v106 = (v103 - *v103);
        if (*v106 < 0xBu)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[5];
          if (v107)
          {
            LODWORD(v107) = *(v103 + v107);
          }
        }

        *(a1 + 2236) = v107;
        v108 = (v103 - *v103);
        if (*v108 < 0x11u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[8];
          if (v109)
          {
            LODWORD(v109) = *(v103 + v109);
          }
        }

        *(a1 + 2240) = v109;
        v110 = (v103 - *v103);
        if (*v110 < 0x13u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[9];
          if (v111)
          {
            LODWORD(v111) = *(v103 + v111);
          }
        }

        *(a1 + 2244) = v111;
        v112 = (v103 - *v103);
        if (*v112 < 0x17u)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[11];
          if (v113)
          {
            LODWORD(v113) = *(v103 + v113);
          }
        }

        *(a1 + 2248) = v113;
        v114 = (v103 - *v103);
        if (*v114 < 0x1Bu)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[13];
          if (v115)
          {
            LODWORD(v115) = *(v103 + v115);
          }
        }

        *(a1 + 2252) = v115;
        v116 = (v103 - *v103);
        if (*v116 < 0x15u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[10];
          if (v117)
          {
            LODWORD(v117) = *(v103 + v117);
          }
        }

        *(a1 + 2256) = v117;
        v118 = (v103 - *v103);
        if (*v118 < 0x19u)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[12];
          if (v119)
          {
            LODWORD(v119) = *(v103 + v119);
          }
        }

        *(a1 + 2260) = v119;
        v120 = (v103 - *v103);
        if (*v120 < 0x1Du)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[14];
          if (v121)
          {
            LODWORD(v121) = *(v103 + v121);
          }
        }

        *(a1 + 2264) = v121;
        v122 = (v103 - *v103);
        if (*v122 < 0xFu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[7];
          if (v123)
          {
            LODWORD(v123) = *(v103 + v123);
          }
        }

        *(a1 + 2268) = v123;
        v124 = (v103 - *v103);
        if (*v124 < 0x1Fu)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[15];
          if (v125)
          {
            LODWORD(v125) = *(v103 + v125);
          }
        }

        *(a1 + 2272) = v125;
        v126 = (v103 - *v103);
        if (*v126 < 0x21u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[16];
          if (v127)
          {
            LODWORD(v127) = *(v103 + v127);
          }
        }

        *(a1 + 2276) = v127;
        v128 = (v103 - *v103);
        if (*v128 < 0x23u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[17];
          if (v129)
          {
            LODWORD(v129) = *(v103 + v129);
          }
        }

        *(a1 + 2280) = v129;
        v130 = (v103 - *v103);
        if (*v130 < 0x25u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[18];
          if (v131)
          {
            LODWORD(v131) = *(v103 + v131);
          }
        }

        *(a1 + 2284) = v131;
        v132 = (v103 - *v103);
        if (*v132 < 0x27u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[19];
          if (v133)
          {
            LODWORD(v133) = *(v103 + v133);
          }
        }

        *(a1 + 2288) = v133;
        v134 = (v103 - *v103);
        if (*v134 < 0x29u)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[20];
          if (v135)
          {
            LODWORD(v135) = *(v103 + v135);
          }
        }

        *(a1 + 2292) = v135;
        v136 = (v103 - *v103);
        if (*v136 < 0x2Bu)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[21];
          if (v137)
          {
            LODWORD(v137) = *(v103 + v137);
          }
        }

        *(a1 + 2296) = v137;
        v138 = (v103 - *v103);
        if (*v138 < 7u)
        {
          LODWORD(v139) = 0;
        }

        else
        {
          v139 = v138[3];
          if (v139)
          {
            LODWORD(v139) = *(v103 + v139);
          }
        }

        *(a1 + 2300) = v139;
        v140 = (v103 - *v103);
        if (*v140 >= 5u && (v141 = v140[2]) != 0)
        {
          v142 = *(v103 + v141);
        }

        else
        {
          v142 = 0;
        }

        *(a1 + 2308) = v142;
      }

      if (v299[53])
      {
        v143 = v299[54];
        if (v143)
        {
          v144 = v299[53];
        }

        else
        {
          v144 = v299[123];
        }

        if (v143)
        {
          v145 = v299 + 53;
        }

        else
        {
          v145 = v299 + 123;
        }
      }

      else
      {
        v145 = v299 + 123;
        v144 = v299[123];
      }

      MEMORY[0x29ED51E10](a1 + 2368, v144, v145[1]);
      std::string::push_back((a1 + 2368), 0);
      v146 = *v87;
      v147 = v87 - v146;
      v148 = *(v87 - v146);
      if (v148 < 0x39)
      {
        goto LABEL_271;
      }

      v149 = -v146;
      v150 = *(v147 + 28);
      if (v150)
      {
        v151 = (v87 + v150 + *(v87 + v150));
        if (*v151)
        {
          *(a1 + 2112) = 1;
          v152 = (v151 + v151[1] + 4);
          v153 = (v152 - *v152);
          if (*v153 >= 9u && (v154 = v153[4]) != 0)
          {
            v155 = *(v152 + v154);
          }

          else
          {
            v155 = 0;
          }

          *(a1 + 2312) = v155;
          *(a1 + 2316) = 1;
          v156 = *v87;
          v149 = -v156;
          v148 = *(v87 - v156);
        }
      }

      if (v148 < 0x3B)
      {
        goto LABEL_271;
      }

      v157 = v87 + v149;
      if (*(v157 + 29))
      {
        v158 = (v87 + *(v157 + 29) + *(v87 + *(v157 + 29)));
        v159 = *v158;
        if (v159)
        {
          v160 = v158 + 1;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (!(v162 >> 20))
            {
              *(a1 + 2096 + 8 * (v161 > 0x3F)) |= 1 << v161;
            }

            --v159;
          }

          while (v159);
        }
      }

      if (v148 < 0x57)
      {
LABEL_271:
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v157 + 43);
        if (*(v157 + 43))
        {
          LODWORD(v163) = *(v87 + v163);
        }
      }

      *(a1 + 1300) = v163;
      v164 = (v87 - *v87);
      if (*v164 >= 0x21u && (v165 = v164[16]) != 0)
      {
        v166 = *(v87 + v165);
      }

      else
      {
        v166 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1304) = getAdditionalSpillBufferBytes(void)::extra + v166;
      v167 = (v87 - *v87);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v87 + v168);
        }
      }

      *(a1 + 1328) = v168;
      v169 = (v87 - *v87);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v87 + v170);
        }
      }

      *(a1 + 1332) = v170;
      v171 = (v87 - *v87);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v87 + v172);
        }
      }

      *(a1 + 1340) = v172;
      v173 = (v87 - *v87);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v87 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_300;
          }

          v175 = v173[19];
          goto LABEL_294;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v87 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_300;
          }

          if (v174 < 0x29)
          {
            goto LABEL_498;
          }

          if (v173[20] && *(v87 + v173[20]))
          {
LABEL_294:
            v176 = 1;
            goto LABEL_499;
          }

          if (v174 >= 0x71 && (v289 = v173[56]) != 0)
          {
            v176 = *(v87 + v289) != 0;
          }

          else
          {
LABEL_498:
            v176 = 0;
          }

LABEL_499:
          if (v175)
          {
            LOBYTE(v175) = *(v87 + v175) != 0;
          }

LABEL_300:
          *(a1 + 1350) = v175;
          v177 = (v300 - *v300);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v300 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v300 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v300 + v181);
                }

LABEL_312:
                *(a1 + 1392) = v179 | (v180 << 32);
                *(a1 + 1400) = v181;
                *(a1 + 1354) = (v176 | v175) & 1;
                v182 = *v87;
                v183 = (v87 - v182);
                v184 = *(v87 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v87 + v185) != 0;
                  }
                }

                *(a1 + 1349) = v185;
                v186 = (v300 - *v300);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v300 + v188) != 0;
                  }
                }

                *(a1 + 1355) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v87 + v189 + *(v87 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 1357) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 1351) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v300 + v194) != 0;
                  }

                  *(a1 + 1351) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v300 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 2193) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v87 + v197) != 0;
                  }
                }

                *(a1 + 1356) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 2195) = 1;
                  v199 = (v300 + v198 + *(v300 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_353;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_352:
                          v208 = *(v203 + v207);
                          goto LABEL_353;
                        }
                      }

                      v208 = 0;
LABEL_353:
                      v209 = v301;
LABEL_354:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_354;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = *(v209 + 8);
                        if (!v210)
                        {
                          goto LABEL_358;
                        }
                      }

                      v87 = v302;
                      *(v209 + 32) = v206;
                      if (v199 == v201)
                      {
                        v213 = *v302;
                        v196 = -v213;
                        if (*(v302 - v213) < 0x21u)
                        {
LABEL_368:
                          v212 = 0;
                          {
                            goto LABEL_369;
                          }

LABEL_504:
                          {
                            getAdditionalSpillBufferBytes(void)::extra = 0;
                          }

LABEL_369:
                          v214 = getAdditionalSpillBufferBytes(void)::extra + v212;
                          *(a1 + 1296) = getAdditionalSpillBufferBytes(void)::extra + v212;
                          v215 = (v87 - *v87);
                          if (*v215 < 0x43u)
                          {
                            LODWORD(v216) = 0;
                          }

                          else
                          {
                            v216 = v215[33];
                            if (v216)
                            {
                              LODWORD(v216) = *(v87 + v216);
                            }
                          }

                          *(a1 + 1308) = v216;
                          v217 = (v87 - *v87);
                          if (*v217 < 5u)
                          {
                            LODWORD(v218) = 0;
                          }

                          else
                          {
                            v218 = v217[2];
                            if (v218)
                            {
                              LODWORD(v218) = *(v87 + v218);
                            }
                          }

                          *(a1 + 1292) = v218;
                          v219 = (v87 - *v87);
                          if (*v219 < 0x51u)
                          {
                            LODWORD(v220) = 0;
                          }

                          else
                          {
                            v220 = v219[40];
                            if (v220)
                            {
                              LODWORD(v220) = *(v87 + v220);
                            }
                          }

                          *(a1 + 1324) = v220;
                          v221 = (v87 - *v87);
                          if (*v221 < 0x4Fu)
                          {
                            LODWORD(v222) = 0;
                          }

                          else
                          {
                            v222 = v221[39];
                            if (v222)
                            {
                              LODWORD(v222) = *(v87 + v222);
                            }
                          }

                          *(a1 + 1336) = v222;
                          *(a1 + 1344) = *(a5 + 468);
                          v223 = (v87 - *v87);
                          if ((*(v87 + v223[6] + *(v87 + v223[6])) | v214) != 0 || v176)
                          {
                            LOBYTE(v224) = 1;
                            v225 = v300;
                            goto LABEL_399;
                          }

                          v226 = *v223;
                          v225 = v300;
                          if (v226 < 0x21)
                          {
                            v227 = 0;
                          }

                          else if (v223[16])
                          {
                            v227 = *(v87 + v223[16]);
                            if (v226 >= 0x43)
                            {
LABEL_488:
                              if (v223[33])
                              {
                                v228 = *(v87 + v223[33]);
                                {
                                  goto LABEL_490;
                                }

                                goto LABEL_393;
                              }
                            }
                          }

                          else
                          {
                            v227 = 0;
                            if (v226 >= 0x43)
                            {
                              goto LABEL_488;
                            }
                          }

                          v228 = 0;
                          {
LABEL_490:
                            {
                              getAdditionalSpillBufferBytes(void)::extra = 0;
                            }
                          }

LABEL_393:
                          if (v228 + v227 + getAdditionalSpillBufferBytes(void)::extra)
                          {
                            LOBYTE(v224) = 1;
                          }

                          else
                          {
                            v229 = (v87 - *v87);
                            if (*v229 < 0x5Fu)
                            {
                              LOBYTE(v224) = 0;
                            }

                            else
                            {
                              v224 = v229[47];
                              if (v224)
                              {
                                LOBYTE(v224) = *(v87 + v224) != 0;
                              }
                            }
                          }

LABEL_399:
                          *(a1 + 1348) = v224;
                          v230 = (v225 - *v225);
                          if (*v230 < 0x11u)
                          {
                            LODWORD(v231) = 0;
                          }

                          else
                          {
                            v231 = v230[8];
                            if (v231)
                            {
                              LODWORD(v231) = *(v225 + v231);
                            }
                          }

                          v232 = (a1 + 1808);
                          *(a1 + 2000) = v231;
                          {
                          }

                          v233 = v299 + 3;
                          if (v299[4])
                          {
                            v234 = v299[3] == 0;
                          }

                          else
                          {
                            v234 = 1;
                          }

                          v235 = v299 + 73;
                          if (v234)
                          {
                            v236 = v299 + 73;
                          }

                          else
                          {
                            v236 = v299 + 3;
                          }

                          v237 = v236[1];
                          v238 = 168;
                          if (a8)
                          {
                            v238 = 504;
                          }

                          v239 = a2 + 6328;
                          v240 = a2 + 6328 + v238;
                          if (a8)
                          {
                            v241 = 0x1000000000;
                          }

                          else
                          {
                            v241 = 0;
                          }

                          AGX::Heap<true>::allocateImpl(__dst, v240, v237, (a1 + 2056));
                          *(a1 + 2088) += *&__dst[16];
                          v242 = *&__dst[16];
                          *v232 = *__dst;
                          *(a1 + 1824) = v242;
                          *(a1 + 1833) = *&__dst[25];
                          *(a1 + 1528) = *(a1 + 1808) + v241;
                          *(a1 + 1560) = v240;
                          v243 = *(a1 + 1824);
                          *(a1 + 1568) = *v232;
                          *(a1 + 1584) = v243;
                          *(a1 + 1593) = *(a1 + 1833);
                          if (*v233)
                          {
                            v244 = v299[4];
                            if (v244)
                            {
                              v245 = *v233;
                            }

                            else
                            {
                              v245 = v299[73];
                            }

                            if (v244)
                            {
                              v235 = v299 + 3;
                            }
                          }

                          else
                          {
                            v245 = *v235;
                          }

                          memcpy(*(a1 + 1816), v245, v235[1]);
                          v246 = *(a1 + 1816);
                          v247 = *(a1 + 1824);
                          *(a1 + 1536) = *(a1 + 1528);
                          *(a1 + 1544) = v246;
                          *(a1 + 1552) = v247;
                          v248 = v299 + 8;
                          if (v299[8])
                          {
                            if (v299[9])
                            {
                              v249 = v299 + 8;
                            }

                            else
                            {
                              v249 = v299 + 78;
                            }

                            v250 = v249[1];
                            if (!v250)
                            {
                              goto LABEL_439;
                            }
                          }

                          else
                          {
                            v250 = v299[79];
                            if (!v250)
                            {
                              goto LABEL_439;
                            }
                          }

                          AGX::Heap<true>::allocateImpl(__dst, v239, v250, (a1 + 2064));
                          *(a1 + 2088) += *&__dst[16];
                          v251 = *&__dst[16];
                          *(a1 + 1856) = *__dst;
                          *(a1 + 1872) = v251;
                          *(a1 + 1881) = *&__dst[25];
                          v252 = *(a1 + 1872);
                          *(a1 + 1616) = *(a1 + 1856);
                          *(a1 + 1632) = v252;
                          *(a1 + 1641) = *(a1 + 1881);
                          if (*v248)
                          {
                            v253 = v299[9];
                            if (v253)
                            {
                              v254 = *v248;
                            }

                            else
                            {
                              v254 = v299[78];
                            }

                            if (v253)
                            {
                              v255 = v299 + 8;
                            }

                            else
                            {
                              v255 = v299 + 78;
                            }
                          }

                          else
                          {
                            v255 = v299 + 78;
                            v254 = v299[78];
                          }

                          memcpy(*(a1 + 1864), v254, v255[1]);
LABEL_439:
                          v256 = v299 + 13;
                          if (v299[13])
                          {
                            if (v299[14])
                            {
                              v257 = v299 + 13;
                            }

                            else
                            {
                              v257 = v299 + 83;
                            }

                            v258 = v257[1];
                            if (!v258)
                            {
                              goto LABEL_455;
                            }
                          }

                          else
                          {
                            v258 = v299[84];
                            if (!v258)
                            {
                              goto LABEL_455;
                            }
                          }

                          AGX::Heap<true>::allocateImpl(__dst, v239, v258, (a1 + 2072));
                          *(a1 + 2088) += *&__dst[16];
                          v259 = *&__dst[16];
                          *(a1 + 1904) = *__dst;
                          *(a1 + 1920) = v259;
                          *(a1 + 1929) = *&__dst[25];
                          v260 = *(a1 + 1920);
                          *(a1 + 1664) = *(a1 + 1904);
                          *(a1 + 1680) = v260;
                          *(a1 + 1689) = *(a1 + 1929);
                          if (*v256)
                          {
                            v261 = v299[14];
                            if (v261)
                            {
                              v262 = *v256;
                            }

                            else
                            {
                              v262 = v299[83];
                            }

                            if (v261)
                            {
                              v263 = v299 + 13;
                            }

                            else
                            {
                              v263 = v299 + 83;
                            }
                          }

                          else
                          {
                            v263 = v299 + 83;
                            v262 = v299[83];
                          }

                          memcpy(*(a1 + 1912), v262, v263[1]);
                          v264 = *(a1 + 1920);
                          *(a1 + 1760) = *(a1 + 1904);
                          *(a1 + 1776) = v264;
LABEL_455:
                          v265 = v299 + 23;
                          if (v299[23])
                          {
                            if (!v299[24])
                            {
                              v265 = v299 + 93;
                            }

                            v266 = v265[1];
                            if (v266)
                            {
LABEL_459:
                              AGX::Heap<true>::allocateImpl(__dst, v239, v266, (a1 + 2080));
                              *(a1 + 2088) += *&__dst[16];
                              v267 = *&__dst[16];
                              *(a1 + 1952) = *__dst;
                              *(a1 + 1968) = v267;
                              *(a1 + 1977) = *&__dst[25];
                              v268 = *(a1 + 1968);
                              *(a1 + 1712) = *(a1 + 1952);
                              *(a1 + 1728) = v268;
                              *(a1 + 1737) = *(a1 + 1977);
                              v269 = *(a1 + 1968);
                              *(a1 + 1784) = *(a1 + 1952);
                              *(a1 + 1800) = v269;
                            }
                          }

                          else
                          {
                            v266 = v299[94];
                            if (v266)
                            {
                              goto LABEL_459;
                            }
                          }

                          if ((*(a1 + 1496) & 1) != 0 || *(*(a1 + 616) + 16945) == 1)
                          {
                            {
                              {
                                v271 = v297;
                                if (*(a1 + 1447) < 0)
                                {
                                  v271 = *v297;
                                }

                                v272 = v295;
                                if (*(a1 + 1495) < 0)
                                {
                                  v272 = v295->__r_.__value_.__r.__words[0];
                                }

                                v273 = v296;
                                if (*(a1 + 1471) < 0)
                                {
                                  v273 = *v296;
                                }

                                v274 = *(a1 + 1408);
                                v275 = *(a1 + 1416);
                                v276 = v294;
                                if (*(a1 + 1527) < 0)
                                {
                                  v276 = *v294;
                                }

                                v277 = *(a1 + 1528);
                                v278 = *(a1 + 1824);
                                *__dst = 136448002;
                                *&__dst[4] = v271;
                                *&__dst[12] = 2082;
                                *&__dst[14] = v272;
                                *&__dst[22] = 2082;
                                *&__dst[24] = v273;
                                *&__dst[32] = 1026;
                                *&__dst[34] = v274;
                                *&__dst[38] = 2050;
                                *&__dst[40] = v275;
                                *v305 = 2082;
                                *&v305[2] = v276;
                                *&v305[10] = 2050;
                                *&v305[12] = v277;
                                v306 = 2050;
                                v307 = v278;
                                _os_signpost_emit_with_name_impl(&dword_29CA13000, v270, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                              }
                            }

                            v279 = *(a1 + 616);
                            v280 = v297;
                            if (*(a1 + 1447) < 0)
                            {
                              v280 = *v297;
                            }

                            v281 = v295;
                            if (*(a1 + 1495) < 0)
                            {
                              v281 = v295->__r_.__value_.__r.__words[0];
                            }

                            v282 = v296;
                            if (*(a1 + 1471) < 0)
                            {
                              v282 = *v296;
                            }

                            v283 = v294;
                            if (*(a1 + 1527) < 0)
                            {
                              v283 = *v294;
                            }

                            v284 = *(a1 + 1408);
                            v285 = *(a1 + 1416);
                            v286 = *(a1 + 1528);
                            v287 = *(a1 + 1824);
                            v288 = *(a1 + 1496);
                            *__dst = v280;
                            *&__dst[8] = v281;
                            *&__dst[16] = v282;
                            *&__dst[24] = v283;
                            *&__dst[32] = v284;
                            *&__dst[40] = v285;
                            *v305 = v286;
                            *&v305[8] = v287;
                            v305[16] = v288;
                            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v279, a1, __dst);
                          }

                          operator new();
                        }

LABEL_364:
                        if (!*(v87 + v196 + 32))
                        {
                          goto LABEL_368;
                        }

                        v212 = *(v87 + *(v87 + v196 + 32));
                        {
                          goto LABEL_504;
                        }

                        goto LABEL_369;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2195) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_368;
                }

                goto LABEL_364;
              }
            }
          }

          v181 = 0;
          goto LABEL_312;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_300;
    }

    v68 = (v67 + *v67);
    v69 = (v68 - *v68);
    v70 = *v69;
    if (v69[2])
    {
      v71 = (v68 + v69[2] + *(v68 + v69[2]));
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v71 = 0;
      if (v70 < 7)
      {
        goto LABEL_115;
      }
    }

    v72 = v69[3];
    if (v72)
    {
      v73 = v68 + v72 + *(v68 + v72);
      if (!*v71)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v73 = 0;
    if (!*v71)
    {
      goto LABEL_126;
    }

LABEL_116:
    v74 = 0;
    v75 = v73 + 4;
    v76 = (v71 + 2);
    while (1)
    {
      v77 = *(v76 - 1);
      v78 = strlen(&v76[v77]);
      if (v78 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v79 = v78;
      if (v78 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v78;
      if (v78)
      {
        memmove(__dst, &v76[v77], v78);
      }

      __dst[v79] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2320, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v75[4 * v74];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2344, __dst);
      ++v74;
      v76 += 4;
      if (v74 >= *v71)
      {
        goto LABEL_126;
      }
    }

LABEL_501:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v30 < 0x45)
  {
    if (v30 < 0x3D)
    {
      LOWORD(v35) = 0;
      if (v30 < 0x3B)
      {
        LODWORD(v37) = 0;
        v38 = 0;
        LOWORD(v34) = 0;
        v36 = 0;
LABEL_56:
        *(a1 + 1168) = v37;
        v39 = v35 + v37 - 1;
        v40 = -v37;
        v41 = *(a1 + 1176);
        v42 = (v34 | ((v40 & v39) << 32) | (v36 << 48)) + v38 + (v41 & 0xFF000000);
        *(a1 + 1176) = v42;
        if (v42 != v41)
        {
          *(a1 + 1200) = 0uLL;
          *(a1 + 1216) = 0uLL;
          *(a1 + 1184) = 0uLL;
          *&v43 = -1;
          *(&v43 + 1) = -1;
          *(a1 + 1232) = v43;
          *(a1 + 1248) = v43;
          *(a1 + 1264) = v43;
          *(a1 + 1280) = -1;
        }

        v44 = (v26 - *v26);
        if (*v44 < 0x57u)
        {
          LODWORD(v45) = 0;
        }

        else
        {
          v45 = v44[43];
          if (v45)
          {
            LODWORD(v45) = *(v26 + v45);
          }
        }

        *(a1 + 1288) = v45;
        v46 = *v26;
        v28 = -v46;
        v30 = *(v26 - v46);
        goto LABEL_63;
      }

      LOWORD(v34) = 0;
      v36 = v29[29];
      if (!v29[29])
      {
LABEL_41:
        if (v30 < 0x3F)
        {
          LODWORD(v37) = 0;
          v38 = 0;
        }

        else
        {
          v37 = v29[31];
          if (v29[31])
          {
            v37 = *(v26 + v37);
          }

          if (v30 < 0x4B)
          {
            v38 = 0;
          }

          else
          {
            v38 = v29[37];
            if (v29[37])
            {
              v38 = *(v26 + v38) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v36 = *(v26 + v36);
      goto LABEL_41;
    }

    LOWORD(v34) = 0;
    v35 = v29[30];
    if (v29[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v34 = v29[34];
    if (v29[34])
    {
      LODWORD(v34) = *(v26 + v34);
    }

    v35 = v29[30];
    if (v29[30])
    {
LABEL_38:
      LODWORD(v35) = *(v26 + v35);
    }
  }

  v36 = v29[29];
  if (!v29[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDE9AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char *a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, AGX::FragmentProgramVaryings *a21, uint64_t a22, void **a23, void **a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29, void **a30, void **a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36)
{
  CompileStatistics::~CompileStatistics(a25);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a36);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v36 + 2168));
  v38 = *a23;
  if (*a23)
  {
    *(v36 + 2152) = v38;
    operator delete(v38);
  }

  v39 = *a24;
  if (*a24)
  {
    *(v36 + 2128) = v39;
    operator delete(v39);
  }

  if (*a14 < 0)
  {
    operator delete(*a15);
    if ((*(v36 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v36 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v36 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a29);
  if (*(v36 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a30);
    if ((*(v36 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v36 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v36 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a31);
  if ((*(v36 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v36 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v36 + 1016));
    v40 = *(v36 + 936);
    if (v40)
    {
      *(v36 + 944) = v40;
      operator delete(v40);
    }

    v41 = *(v36 + 912);
    if (v41)
    {
      *(v36 + 920) = v41;
      operator delete(v41);
    }

    v42 = (v36 + 864);
    v43 = *(v36 + 888);
    if (v43)
    {
      *(v36 + 896) = v43;
      operator delete(v43);
    }

    v44 = *v42;
    if (*v42)
    {
      *(v36 + 872) = v44;
      operator delete(v44);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v36 + 776);
    v45 = *a12;
    if (*a12)
    {
      *(v36 + 760) = v45;
      operator delete(v45);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a13);
    v46 = *(v36 + 592);
    if (v46)
    {
      *(v36 + 600) = v46;
      operator delete(v46);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a22);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a32);
  goto LABEL_11;
}

void AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4112));
  v2 = *(a1 + 584);
  if (!v2)
  {
    goto LABEL_224;
  }

  v3 = *(a1 + 576);
  v4 = *(v2 + 208);
  v6 = *(v2 + 144);
  v5 = *(v2 + 148);
  if (v4)
  {
    v7 = *(v2 + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 176);
  if (*(v2 + 176) == 0)
  {
    v6 = 0;
  }

  v9 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
  *(a1 + 656) = v7 + v5 + v6 + *(v2 + 152) + ((v9 + 3) & 0xFFFFFFFC);
  v10 = (a1 + 664);
  v11 = *(a1 + 664);
  v12 = (*(a1 + 672) - v11) >> 2;
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      *(a1 + 672) = v11 + 4 * v9;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 664), v9 - v12);
    v8 = *(v2 + 176);
    v5 = *(v2 + 148);
    v4 = *(v2 + 208);
  }

  if (v4)
  {
    v13 = *(v2 + 144);
  }

  else
  {
    v13 = 0;
  }

  if (v8 | *(v2 + 184))
  {
    v14 = *(v2 + 144);
  }

  else
  {
    v14 = 0;
  }

  v15 = (v5 + v13 + v14);
  v16 = *(a1 + 752);
  v17 = (*(a1 + 760) - v16) >> 2;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      *(a1 + 760) = v16 + 4 * v15;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 752), v15 - v17);
  }

  v18 = *v3;
  v19 = v3[1];
  if (*v3 != v19)
  {
    do
    {
      v20 = *v18;
      v21 = *(*v18 + 4);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = 4 * *(v20 + 8) - *(v2 + 120);
        v23 = *v20 == 6 ? 32 : 6;
        v24 = (v23 & 0xF800007F | ((v21 & 0xFFFFF) << 7)) >> 3;
        *(*v10 + 4 * v22) = v24 | 0x40000008;
        v24 += 1073741832;
        *(*v10 + 4 * (v22 + 1)) = v24 + 1;
        *(*v10 + 4 * (v22 + 2)) = v24 + 2;
        *(*v10 + 4 * (v22 + 3)) = v24 + 3;
        if (*(v20 + 12) == 1)
        {
          *(a1 + 1376 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
        }
      }

      ++v18;
    }

    while (v18 != v19);
  }

  if (*(a1 + 1350))
  {
    for (i = v3[9]; i != v3[10]; ++i)
    {
      if (**i == 93)
      {
        v26 = *(*i + 4);
        if ((v26 & 0x80000000) == 0 && (v26 & 0xFFF00000) != 0x400000)
        {
          *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
          break;
        }
      }
    }
  }

  v27 = v3[3];
  for (j = v3[4]; v27 != j; ++v27)
  {
    v29 = *(*v27 + 4);
    if ((v29 & 0x80000000) == 0)
    {
      v30 = *(a1 + 2192) ? 3 : 1;
      v31 = *(v2 + 124) + v30 * *(*v27 + 8) - (*(v2 + 120) + *(v2 + 128));
      v32 = 4 * (v29 & 0xFFFFF);
      *(*(a1 + 664) + 4 * v31) = v32 | 0x60000001;
      if (*(a1 + 2192) == 1)
      {
        v33 = v32 + 1610612737;
        *(*v10 + 4 * (v31 + 1)) = v33 + 1;
        *(*v10 + 4 * (v31 + 2)) = v33 + 2;
      }
    }
  }

  v157 = v3;
  v34 = v3[6];
  v35 = v3[7];
  v158 = v2;
  if (v34 != v35)
  {
    v36 = (a1 + 1152);
    do
    {
      v37 = *v34;
      v38 = *(*v34 + 4);
      if ((v38 & 0x80000000) == 0)
      {
        v39 = ((*(v37 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
        v40 = v38 & 0xFFFFF;
        v41 = v38 & 0xFFFFF | 0x20000000;
        if ((v38 & 0xFFFFFu) >= 0x1F)
        {
          v41 = ((v38 & 0xFFFFF) + 536870886) & 0x1FFFFFFF;
        }

        *(*v10 + 4 * v39) = v41;
        if (*(v37 + 12) == 1)
        {
          *(a1 + 1360 + 8 * (v40 > 0x3F)) |= 1 << v38;
        }

        if (*(a1 + 2195) == 1)
        {
          v42 = *(a1 + 2208);
          if (!v42)
          {
LABEL_232:
            abort();
          }

          v43 = 2 * v39;
          v44 = (2 * v39) | 1;
          while (1)
          {
            while (1)
            {
              v45 = *(v42 + 7);
              if (v40 >= v45)
              {
                break;
              }

              v42 = *v42;
              if (!v42)
              {
                goto LABEL_232;
              }
            }

            if (v45 >= v40)
            {
              break;
            }

            v42 = v42[1];
            if (!v42)
            {
              goto LABEL_232;
            }
          }

          v46 = *v36;
          if (!*v36)
          {
LABEL_69:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v47 = v46;
              v48 = *(v46 + 7);
              if (v44 >= v48)
              {
                break;
              }

              v46 = *v47;
              if (!*v47)
              {
                goto LABEL_69;
              }
            }

            if (v48 > v43)
            {
              break;
            }

            v46 = v47[1];
            if (!v46)
            {
              goto LABEL_69;
            }
          }

          v2 = v158;
          *(v47 + 8) = *(v42 + 8);
        }
      }

      ++v34;
    }

    while (v34 != v35);
  }

  *(a1 + 744) = 1;
  v49 = *(a1 + 672) - *(a1 + 664);
  *(a1 + 736) = v49 >> 2;
  if (*(a1 + 728) - *(a1 + 712) < v49)
  {
    if (!((v49 >> 2) >> 62))
    {
      operator new();
    }

    goto LABEL_233;
  }

  v50 = *(a1 + 664);
  v51 = *(a1 + 672);
  if (v50 != v51)
  {
    do
    {
      v52 = *v50;
      if (*v50 >> 29 == 7)
      {
        v53 = 85;
      }

      else
      {
        v53 = dword_29D2F5278[v52 >> 29];
      }

      LODWORD(m) = v53 + (v52 & 0x1FFFFFFF);
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
      ++v50;
    }

    while (v50 != v51);
    v50 = *(a1 + 664);
    if (*(a1 + 672) != v50)
    {
      operator new();
    }
  }

  *(a1 + 672) = v50;
  v55 = *(v158 + 120);
  v54 = *(v158 + 124);
  v56 = *(v158 + 128);
  v57 = *(v158 + 132);
  v58 = *(v158 + 136);
  v59 = *(v158 + 140);
  v60 = (v54 + v57 + v59 - (v55 + v56 + v58) + 3) & 0xFFFFFFFC;
  v61 = *(v158 + 160);
  v62 = *(v158 + 168);
  if (*(v158 + 160) != 0)
  {
    v63 = 0;
    v64 = *(v158 + 144);
    if (*(v158 + 208) == 1)
    {
      v65 = (a1 + 752);
      if (!v64)
      {
        goto LABEL_92;
      }

      v66 = 0;
      v159 = *(v158 + 168);
      m = v61;
      for (k = v61; ; k = m)
      {
        if (k)
        {
          v68 = __clz(__rbit64(k));
          v69 = &m;
          v70 = v68;
        }

        else
        {
          k = v159;
          if (!v159)
          {
            v58 = *(v158 + 136);
            v59 = *(v158 + 140);
            v56 = *(v158 + 128);
            v57 = *(v158 + 132);
            v55 = *(v158 + 120);
            v54 = *(v158 + 124);
            v64 = *(v158 + 144);
            v63 = v64;
            goto LABEL_92;
          }

          v68 = __clz(__rbit64(v159));
          v70 = v68 | 0x40;
          v69 = &v159;
        }

        *v69 = k & ~(1 << v68);
        *(*(a1 + 752) + 4 * v66) = vorrq_s8(vdupq_n_s32(16 * v70), xmmword_29D2F2010);
        v66 += 4;
      }
    }

    v65 = (a1 + 752);
LABEL_92:
    v71 = *(v158 + 176);
    if (*&v71 != 0 && v64 != 0)
    {
      v151 = v63 - v60 + ((v59 + v57 - (v58 + v56 + v55) + v54 + 3) & 0xFFFFFFFC);
      v159 = v62;
      m = v61;
      while (1)
      {
        if (v61)
        {
          v152 = __clz(__rbit64(v61));
          v153 = &m;
          v154 = v152;
        }

        else
        {
          v61 = v159;
          if (!v159)
          {
            break;
          }

          v152 = __clz(__rbit64(v159));
          v154 = v152 | 0x40;
          v153 = &v159;
        }

        v155 = *v65;
        *(*v65 + 4 * (v151 + 1)) = (16 * (v154 & 0x7F)) | 0xD;
        *(v155 + 4 * v151) = (16 * (v154 & 0x7F)) | 0xC;
        *v153 = v61 & ~(1 << v152);
        *(v155 + 4 * (v151 + 2)) = (16 * (v154 & 0x7F)) | 0xE;
        v156 = v151 + 3;
        v151 += 4;
        v61 = m;
        *(v155 + 4 * v156) = (16 * v154) | 0xF;
      }
    }

    *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v71);
  }

  if (*(v158 + 148))
  {
    v73 = *(v158 + 144);
    if (*(v158 + 208))
    {
      v74 = *(v158 + 144);
    }

    else
    {
      v74 = 0;
    }

    if (*(v158 + 176) == 0)
    {
      v73 = 0;
    }

    v75 = ((*(v158 + 124) + *(v158 + 132) + *(v158 + 140) - (*(v158 + 120) + *(v158 + 128) + *(v158 + 136)) + 3) & 0xFFFFFFFC) - v60 + v74 + v73;
    v76 = *(v158 + 192);
    v159 = *(v158 + 200);
    for (m = v76; ; v76 = m)
    {
      if (v76)
      {
        v77 = __clz(__rbit64(v76));
        p_m = &m;
        v79 = v77;
      }

      else
      {
        v76 = v159;
        if (!v159)
        {
          break;
        }

        v77 = __clz(__rbit64(v159));
        v79 = v77 | 0x40;
        p_m = &v159;
      }

      *p_m = v76 & ~(1 << v77);
      v80 = *(a1 + 752);
      *(v80 + 4 * v75) = (4 * (v79 & 0x7F)) | 1;
      if (*(a1 + 2192) == 1)
      {
        v81 = 4 * v79;
        *(v80 + 4 * (v75 + 1)) = v81 | 2;
        *(v80 + 4 * (v75 + 2)) = v81 | 3;
      }

      v75 += 4;
    }
  }

  v82 = (*(v157 + 24) + 3) >> 2;
  if (*(v158 + 467) == 1)
  {
    *(a1 + 1016) = v82;
  }

  *(a1 + 660) = v82;
  v83 = *(a1 + 776);
  v84 = (*(a1 + 784) - v83) >> 2;
  if (v82 <= v84)
  {
    if (v82 < v84)
    {
      *(a1 + 784) = v83 + 4 * v82;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 776), v82 - v84);
  }

  if (a1 + 864 != v158 + 216)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v158 + 216), *(v158 + 224), (*(v158 + 224) - *(v158 + 216)) >> 2);
  }

  if (a1 + 912 != v158 + 240)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v158 + 240), *(v158 + 248), (*(v158 + 248) - *(v158 + 240)) >> 2);
  }

  if (a1 + 888 != v158 + 320)
  {
    std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v158 + 320), *(v158 + 328), (*(v158 + 328) - *(v158 + 320)) >> 1);
  }

  if (a1 + 936 != v158 + 368)
  {
    std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v158 + 368), *(v158 + 376), (*(v158 + 376) - *(v158 + 368)) >> 1);
  }

  *(a1 + 960) = *(v158 + 416);
  *(a1 + 1352) = *(v158 + 160) != 0;
  *(a1 + 1353) = *(v158 + 148) != 0;
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v158);
  if ((*(a1 + 3703) & 1) == 0)
  {
    v85 = *(a1 + 2392);
    v86 = *(a1 + 3012);
    v87 = *(a1 + 3024);
    v88 = ((*(a1 + 3008) + 3) >> 2);
    *(v85 + 140) = *(v85 + 140) & 0xFFFFF00000000000 | (v88 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v88;
    *(v85 + 320) = (v86 + 3) >> 2;
    *(v85 + 324) = (((v87 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v85 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v85 + 48), *(v85 + 312), *v85 + *(v85 + 316));
    }
  }

  v89 = *(a1 + 3704);
  if (v89 != -1)
  {
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(a1 + 2392), v89, *(a1 + 3708), *(a1 + 3056), *(a1 + 3064), *(a1 + 3072), *(a1 + 3716));
  }

  v90 = *(a1 + 3272);
  if (v90)
  {
    v91 = *(a1 + 3012);
    v92 = *(a1 + 3024);
    v93 = ((*(a1 + 3008) + 3) >> 2);
    *(v90 + 140) = *(v90 + 140) & 0xFFFFF00000000000 | (v93 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v93;
    *(v90 + 320) = (v91 + 3) >> 2;
    *(v90 + 324) = (((v92 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v90 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v90 + 48), *(v90 + 312), *v90 + *(v90 + 316));
    }

    v94 = *(a1 + 3272);
    v95 = *(a1 + 3224);
    memcpy(v95, *v94, *(v94 + 8) - *v94);
    if (*(v94 + 272) == 1)
    {
      *&v95[*(v94 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v95[*(v94 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v96 = *(a1 + 3272);
    v98 = *(v96 + 64);
    v97 = *(v96 + 80);
    *(a1 + 3280) = *(v96 + 48);
    *(a1 + 3296) = v98;
    *(a1 + 3312) = v97;
    v99 = *(v96 + 128);
    v100 = *(v96 + 144);
    v101 = *(v96 + 112);
    *(a1 + 3328) = *(v96 + 96);
    *(a1 + 3376) = v100;
    *(a1 + 3360) = v99;
    *(a1 + 3344) = v101;
    v103 = *(v96 + 176);
    v102 = *(v96 + 192);
    v104 = *(v96 + 208);
    *(a1 + 3392) = *(v96 + 160);
    *(a1 + 3440) = v104;
    *(a1 + 3424) = v102;
    *(a1 + 3408) = v103;
  }

  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(a1 + 2392));
  v105 = *(a1 + 3720);
  v106 = *(a1 + 3812);
  v107 = v105[6];
  v108 = v105[5] + v105[3];
  if (v105[1])
  {
    LOBYTE(v108) = v108 + 1;
  }

  v109 = v105[3] | (v105[5] << 16) | (v108 << 8);
  v110 = v106 - 1;
  if (!v106)
  {
    v110 = 0;
  }

  v111 = ((v106 << 12) + 2093056) & 0x1F0000 | v110 & 0x1FF;
  v112 = v105[12];
  v113 = (*(a1 + 3800) >> 21) & 0x3FF800 | *(a1 + 3800) & 0x7FF | (*(a1 + 3808) << 22);
  v114 = v105[7];
  v115 = ((v105[9] << 10) + 15360) & 0xFFFC000 | ((v105[8] + v105[11] + 15) >> 4) & 0x3FFF;
  v116 = v107 * v106 + 3;
  v117 = v114 * v106 + 3;
  v118 = vand_s8(vshl_u32(*(*(a1 + 2392) + 320), 0x1000000003), 0xFFF0000001FFFF8);
  *(a1 + 3728) = v109;
  *(a1 + 3732) = v112 & 0x40 | ((((v116 >> 2) & 0x1FFF | v117 & 0x7FFC) != 0) << 7);
  *(a1 + 3736) = vrev64_s32(v118);
  *(a1 + 3744) = 0;
  *(a1 + 3748) = v111 & 0x3FFFFFFF | ((v112 >> 9) << 30);
  *(a1 + 3752) = v113;
  *(a1 + 3756) = (v117 << 14) & 0x1FFF0000 | (v116 >> 2) & 0x1FFF;
  *(a1 + 3760) = v115;
  if (*(v158 + 312) == 1)
  {
    *(a1 + 2608) = vorrq_s8(*(a1 + 2608), *(a1 + 2448));
    *(a1 + 2448) = 0u;
  }

  if (*(v158 + 313) == 1)
  {
    *(a1 + 2624) = vorrq_s8(*(a1 + 2624), *(a1 + 2464));
    *(a1 + 2464) = 0u;
  }

  if (*(v158 + 314) == 1)
  {
    *(a1 + 2592) = vorrq_s8(*(a1 + 2592), *(a1 + 2432));
    *(a1 + 2432) = 0u;
  }

  if (*(v158 + 315))
  {
    v119 = vorrq_s8(*(a1 + 2656), *(a1 + 2544));
    *(a1 + 2656) = v119;
    *(a1 + 2672) = vorrq_s8(*(a1 + 2672), *(a1 + 2560));
    v120 = vorrq_s8(*(a1 + 2640), *(a1 + 2528));
    *(a1 + 2640) = v120;
    *(a1 + 2688) = vorrq_s8(*(a1 + 2688), *(a1 + 2576));
    v121 = 0uLL;
    *(a1 + 2560) = 0u;
    *(a1 + 2576) = 0u;
    v122 = 0uLL;
    *(a1 + 2528) = 0u;
    *(a1 + 2544) = 0u;
  }

  else
  {
    v121 = *(a1 + 2528);
    v120 = *(a1 + 2640);
    v122 = *(a1 + 2544);
    v119 = *(a1 + 2656);
  }

  *(a1 + 2400) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2432), *(a1 + 2480)), vorrq_s8(v121, *(a1 + 2592))), v120);
  *(a1 + 2416) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2448), *(a1 + 2496)), vorrq_s8(v122, *(a1 + 2608))), v119);
  v123 = AGX::getDirtyArguments<AGX::HAL300::FragmentProgramVariantESLState>((a1 + 2392), -1, -1, -1, -1, -1, -1, -1, -1);
  if (v123)
  {
    *(a1 + 2720) |= 0x620000000uLL;
    if ((v123 & 0x10000) != 0)
    {
      goto LABEL_152;
    }
  }

  else if ((v123 & 0x10000) != 0)
  {
LABEL_152:
    *(a1 + 2720) |= 0x680000000uLL;
    v124 = *(a1 + 2720);
    if ((v123 & 0x1000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v124 = *(a1 + 2720);
  if ((v123 & 0x1000000) != 0)
  {
LABEL_156:
    v124 |= 0x640000000uLL;
    *(a1 + 2720) = v124;
  }

LABEL_157:
  *(a1 + 2720) = v124 | v123 & 0x100000000 | 0xE00000000;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(a1 + 2392);
  v125 = *(a1 + 3720);
  if (v125)
  {
    MEMORY[0x29ED520D0](v125, 0x1000C40C80DBBA6);
    *(a1 + 3720) = 0;
  }

  v126 = *(a1 + 576);
  v127 = *(v126 + 72);
  for (n = *(v126 + 80); v127 != n; ++v127)
  {
    v129 = *v127;
    v130 = **v127;
    v131 = v130 > 0x3E || ((1 << v130) & 0x4000000000033800) == 0;
    if (v131 && ((v130 - 93) <= 0x14 ? (v132 = ((1 << (v130 - 93)) & 0x100031) == 0) : (v132 = 1), v132))
    {
      v133 = v129[1];
    }

    else
    {
      v133 = v129[1];
      if (v133 < 0)
      {
        continue;
      }
    }

    v134 = (*(a1 + 776) + 4 * v129[2]);
    if (v130 <= 107)
    {
      switch(v130)
      {
        case '+':
          *v134 = 166;
          break;
        case '@':
          *v134 = 0x500000004;
          break;
        case 'T':
          *v134 = 167;
          break;
        default:
          goto LABEL_184;
      }
    }

    else if (v130 > 118)
    {
      if (v130 == 119)
      {
        *v134 = 0x900000008;
      }

      else if (v130 != 120)
      {
LABEL_184:
        v135 = v133 & 0xFFFFF;
        v136 = (v133 & 0xFFFFF) << 7;
        switch(v130)
        {
          case 11:
            *v134 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v136), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
            continue;
          case 12:
            LODWORD(v138) = (32 * v135) | 0x40000000;
            DWORD1(v138) = (32 * (v133 & 0xFFFFF)) | 0x40000001;
            *(&v138 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v136), 0xC00000008), 2uLL) | 0x4000000040000000;
            *v134 = v138;
            continue;
          case 13:
            v137 = (32 * v135) | 0x40000008;
            goto LABEL_204;
          case 16:
            v137 = 32 * v135 + 1073741833;
            goto LABEL_204;
          case 17:
            v137 = 32 * v135 + 1073741834;
            goto LABEL_204;
          case 62:
            v137 = 32 * v135 + 1073741835;
            goto LABEL_204;
          case 93:
            if ((v133 & 0xFFF00000) == 0x400000)
            {
              *v134 = 0;
            }

            else
            {
              v137 = 32 * v135 + 1073741836;
LABEL_204:
              *v134 = v137;
            }

            break;
          case 97:
            *v134 = vorr_s8(vdup_n_s32(32 * v135), 0x4000000F4000000ELL);
            continue;
          case 98:
            *v134 = vorr_s8(vdup_n_s32(8 * v135), 0x6000000160000000);
            continue;
          case 109:
            v137 = (2 * (v133 & 0xFFFFFFF)) | 0xC0000000;
            goto LABEL_204;
          case 110:
            v137 = (2 * (v133 & 0xFFFFFFF)) | 0xC0000001;
            goto LABEL_204;
          case 113:
            v137 = (8 * v135) | 0x60000000;
            goto LABEL_204;
          case 131:
            v137 = v133 & 0x1FFFFFFF | 0x80000000;
            goto LABEL_204;
          default:
            continue;
        }
      }
    }

    else if (v130 == 108)
    {
      *v134 = 168;
    }

    else
    {
      if (v130 != 118)
      {
        goto LABEL_184;
      }

      *v134 = 0x700000006;
    }
  }

  *(a1 + 856) = 1;
  v139 = *(a1 + 784) - *(a1 + 776);
  *(a1 + 848) = v139 >> 2;
  if (*(a1 + 840) - *(a1 + 824) < v139)
  {
    if (!((v139 >> 2) >> 62))
    {
      operator new();
    }

LABEL_233:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v140 = *(a1 + 776);
  v141 = *(a1 + 784);
  if (v140 != v141)
  {
    do
    {
      v142 = *v140;
      if (*v140 >> 29 == 7)
      {
        v143 = 170;
      }

      else
      {
        v143 = dword_29D2F51D0[v142 >> 29];
      }

      LODWORD(m) = v143 + (v142 & 0x1FFFFFFF);
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
      ++v140;
    }

    while (v140 != v141);
    v140 = *(a1 + 776);
    if (*(a1 + 784) != v140)
    {
      operator new();
    }
  }

  *(a1 + 784) = v140;
  if (*(v158 + 467) == 1)
  {
    v144 = *(a1 + 576);
    v145 = *(a1 + 1344);
    v146 = *(v144 + 136);
    if (*(a1 + 968) > v145)
    {
      v145 = *(a1 + 968);
    }

    *(a1 + 968) = v145;
    v147 = vorrq_s8(*(a1 + 992), *(v144 + 120));
    *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v144 + 104));
    *(a1 + 992) = v147;
    *(a1 + 1008) |= v146;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  }

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v158);
  v148 = *(a1 + 584);
  if (v148)
  {
    v149 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v148);
    MEMORY[0x29ED520D0](v149, 0x1030C40704B4075);
  }

  *(a1 + 584) = 0;
  v150 = *(a1 + 576);
  if (v150)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v150);
    MEMORY[0x29ED520D0]();
  }

  *(a1 + 576) = 0;
LABEL_224:

  std::mutex::unlock((a1 + 4112));
}

void sub_29CDEB55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4112));
  _Unwind_Resume(a1);
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v29 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v29;
    if (!v29)
    {
      break;
    }

    v19 = __clz(__rbit64(v29));
    v21 = v19 | 0x40;
    p_i = &v29;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= k - 1)
  {
    v16->i32[0] = 166;
    v16 = (v16 + 4);
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v26 = *(a1 + 1128);
  v27 = *(a1 + 1120);
  if (v26 == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v28 + (((v26 - v27) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

uint64_t AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::MeshProgramVariant(uint64_t a1, const AGCDeserializedReply *a2)
{
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v3;
  *(a1 + 176) = v3;
  *(a1 + 192) = v3;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v3;
  *(a1 + 1248) = v3;
  *(a1 + 1232) = v3;
  *(a1 + 1288) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1552) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1481) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  *(a1 + 2031) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2320) = 0u;
  *a1 = &unk_2A23F76B0;
  *(a1 + 2784) = 0;
  *(a1 + 2768) = 0u;
  *(a1 + 2904) = 0;
  *(a1 + 2888) = 0u;
  *(a1 + 3120) = 0;
  *(a1 + 3104) = 0u;
  *(a1 + 3088) = 0u;
  *(a1 + 3136) = 0;
  *(a1 + 3312) = 0u;
  *(a1 + 3296) = 0u;
  *(a1 + 3280) = 0u;
  *(a1 + 3264) = 0u;
  *(a1 + 3248) = 0u;
  *(a1 + 3232) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 2712) = 0;
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
  *(a1 + 2520) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2872) = 0;
  *(a1 + 2840) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0u;
  *(a1 + 2928) = 0u;
  *(a1 + 2944) = 0u;
  *(a1 + 2960) = 0u;
  *(a1 + 2976) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3140) = 0;
  *(a1 + 3148) = 0u;
  *(a1 + 3164) = 0;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3208) = 0;
  *(a1 + 3308) = 107;
  *(a1 + 3352) = 0u;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0;
  *(a1 + 3336) = 0u;
  *(a1 + 3368) = 3;
  *(a1 + 3364) = 166;
  *(a1 + 3416) = 0u;
  *(a1 + 3388) = 0u;
  *(a1 + 3404) = 0u;
  *(a1 + 3416) = 0x3000000A5;
  *(a1 + 3432) = 0u;
  *(a1 + 3312) = 0x300000003;
  *(a1 + 3328) = 1;
  *(a1 + 3516) = 0u;
  *(a1 + 3504) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3472) = 0u;
  *(a1 + 3568) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3536) = 0u;
  *(a1 + 3608) = 0x600000000;
  *(a1 + 3656) = 0;
  *(a1 + 3640) = 0u;
  *(a1 + 3672) = 0u;
  *(a1 + 3664) = a1 + 3672;
  *(a1 + 3688) = -1;
  *(a1 + 3704) = -1;
  *(a1 + 3716) = 0;
  *(a1 + 3708) = 0;
  *(a1 + 3800) = 0;
  *(a1 + 3808) = 0;
  *(a1 + 3832) = 0u;
  *(a1 + 3848) = 0u;
  *(a1 + 3864) = 1065353216;
  *(a1 + 3872) = 0;
  *(a1 + 3960) = 0;
  *(a1 + 3928) = 0u;
  *(a1 + 3944) = 0u;
  v4 = a1 + 3976;
  *(a1 + 3992) = 0u;
  *(a1 + 4008) = 0u;
  *(a1 + 3976) = 0u;
  *(a1 + 4080) = 0u;
  *(a1 + 4064) = 0u;
  *(a1 + 4096) = 1065353216;
  *(a1 + 4112) = 850045863;
  *(a1 + 4168) = 0;
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0u;
  *(a1 + 4120) = 0u;
  AGX::VertexProgramVaryings::VertexProgramVaryings(__p, a2);
  if (*(a1 + 3999) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *__p;
  *(v4 + 16) = v9;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;
  v5 = (a1 + 4000);
  if (*(a1 + 4023) < 0)
  {
    operator delete(*v5);
    v6 = SHIBYTE(v9);
    *v5 = v10;
    *(a1 + 4016) = v11;
    HIBYTE(v11) = 0;
    LOBYTE(v10) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v5 = v10;
    *(a1 + 4016) = v11;
  }

  *(a1 + 2004) = 0;
  *(a1 + 4104) = 0;
  return a1;
}

void sub_29CDEBF20(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4112));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 4064);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(v3);
  AGX::HAL300::MeshProgramVariantESLState::~MeshProgramVariantESLState(v2);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

void AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4112));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  v5 = *(a1 + 3016);
  v6 = *(a2 + 52);
  if (v5 <= *(a2 + 48))
  {
    v5 = *(a2 + 48);
  }

  *(a1 + 3016) = v5;
  v7 = *(a1 + 3008);
  if (v7 <= *(a2 + 88) + v6)
  {
    v7 = *(a2 + 88) + v6;
  }

  *(a1 + 3008) = v7;
  v8 = *(a2 + 64);
  if (*(a1 + 3020) > v8)
  {
    v8 = *(a1 + 3020);
  }

  *(a1 + 3020) = v8;
  v9 = *(a1 + 2392);
  v10 = *(a1 + 3012);
  v11 = *(a1 + 3024);
  *(v9 + 140) = *(v9 + 140) & 0xFFFFF00000000000 | (((v7 + 3) >> 2) << 16) | (((((((v8 + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | ((v7 + 3) >> 2);
  *(v9 + 320) = (v10 + 3) >> 2;
  *(v9 + 324) = (((v11 + 3) >> 2) + 1) & 0x7FFFFFFE;
  if (*(v9 + 222) == 1)
  {
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v9 + 48), *(v9 + 312), *v9 + *(v9 + 316));
  }

  v12 = *(a1 + 3272);
  if (v12)
  {
    v13 = *(a1 + 3012);
    v14 = *(a1 + 3024);
    v15 = ((*(a1 + 3008) + 3) >> 2);
    *(v12 + 140) = *(v12 + 140) & 0xFFFFF00000000000 | (v15 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v15;
    *(v12 + 320) = (v13 + 3) >> 2;
    *(v12 + 324) = (((v14 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v12 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v12 + 48), *(v12 + 312), *v12 + *(v12 + 316));
    }

    v16 = *(a1 + 3272);
    v17 = *(a1 + 3224);
    memcpy(v17, *v16, *(v16 + 8) - *v16);
    if (*(v16 + 272) == 1)
    {
      *&v17[*(v16 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v17[*(v16 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v18 = *(a1 + 3272);
    v20 = *(v18 + 64);
    v19 = *(v18 + 80);
    *(a1 + 3280) = *(v18 + 48);
    *(a1 + 3296) = v20;
    *(a1 + 3312) = v19;
    v21 = *(v18 + 128);
    v22 = *(v18 + 144);
    v23 = *(v18 + 112);
    *(a1 + 3328) = *(v18 + 96);
    *(a1 + 3376) = v22;
    *(a1 + 3360) = v21;
    *(a1 + 3344) = v23;
    v25 = *(v18 + 176);
    v24 = *(v18 + 192);
    v26 = *(v18 + 208);
    *(a1 + 3392) = *(v18 + 160);
    *(a1 + 3440) = v26;
    *(a1 + 3424) = v24;
    *(a1 + 3408) = v25;
  }

  std::mutex::unlock((a1 + 4112));
}

void AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::FragmentProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v311 = *MEMORY[0x29EDCA608];
  v296 = (*(*a6 + 40))(a6);
  v10 = 0;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v11;
  *(a1 + 176) = v11;
  *(a1 + 192) = v11;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 612) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F7930;
  *(a1 + 616) = a2;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v11;
  *(a1 + 1248) = v11;
  *(a1 + 1232) = v11;
  *(a1 + 1288) = 0;
  v303 = a2;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1504) = 0;
  v297 = (a1 + 1504);
  *(a1 + 1512) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  v300 = (a1 + 1424);
  *(a1 + 1481) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  *(a1 + 2031) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0;
  v301 = a5;
  *(a1 + 2192) = *(a5 + 465);
  *(a1 + 2194) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0;
  if (a3[28])
  {
    v12 = a3[29] == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 28;
  if (v12)
  {
    v13 = 98;
    v14 = a3 + 98;
  }

  else
  {
    v14 = a3 + 28;
  }

  v15 = a3[v13];
  if (v15 && v14[1])
  {
    v10 = (v15 + *v15);
  }

  v16 = (v10 - *v10);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v304 = (v10 + v17 + *(v10 + v17));
  }

  else
  {
    v304 = 0;
  }

  v18 = 0;
  if (a3[58])
  {
    v19 = a3[59] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = 58;
  if (v19)
  {
    v20 = 128;
    v21 = a3 + 128;
  }

  else
  {
    v21 = a3 + 58;
  }

  v22 = a3[v20];
  if (v22 && v21[1])
  {
    v18 = (v22 + *v22);
  }

  v23 = (v18 - *v18);
  if (*v23 >= 5u && (v24 = v23[2]) != 0)
  {
    v25 = (v18 + v24 + *(v18 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = *v25;
  v27 = -v26;
  v28 = (v25 - v26);
  v29 = *(v25 - v26);
  if (v29 < 0x25)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v28[18];
    if (v28[18])
    {
      LOBYTE(v30) = *(v25 + v30) != 0;
    }
  }

  *(a1 + 2193) = v30;
  v31 = (v304 - *v304);
  if (*v31 < 0x55u || (v32 = v31[42]) == 0 || !*(v304 + v32))
  {
LABEL_63:
    if (v29 < 7)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      v46 = *(v25 + v27 + 6);
      if (*(v25 + v27 + 6))
      {
        LODWORD(v46) = *(v25 + v46);
      }
    }

    *(a1 + 1408) = v46;
    v47 = (v25 - *v25);
    if (*v47 >= 0x13u && (v48 = v47[9]) != 0)
    {
      v49 = v25 + v48 + *(v25 + v48) + 4;
    }

    else
    {
      v49 = "";
    }

    v298 = (a1 + 1472);
    v299 = (a1 + 1448);
    v295 = (a1 + 2008);
    MEMORY[0x29ED51E00](v300, v49);
    v50 = (v25 - *v25);
    if (*v50 >= 9u && (v51 = v50[4]) != 0)
    {
      v52 = v25 + v51 + *(v25 + v51) + 4;
    }

    else
    {
      v52 = "";
    }

    MEMORY[0x29ED51E00](v299, v52);
    v53 = (v25 - *v25);
    if (*v53 < 0x29u)
    {
      LOBYTE(v54) = 0;
    }

    else
    {
      v54 = v53[20];
      if (v54)
      {
        LOBYTE(v54) = *(v25 + v54) != 0;
      }
    }

    *(a1 + 1496) = v54;
    std::string::operator=(v298, &__str);
    v55 = (v25 - *v25);
    if (*v55 >= 0x51u && (v56 = v55[40]) != 0)
    {
      v57 = v25 + v56 + *(v25 + v56) + 4;
    }

    else
    {
      v57 = "";
    }

    MEMORY[0x29ED51E00](v297, v57);
    v58 = (v25 - *v25);
    v305 = v25;
    if (*v58 >= 5u && v58[2] && *(a2 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_502;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*(a1 + 2031) < 0)
      {
        operator delete(*v295);
      }

      *v295 = *__dst;
      *(a1 + 2024) = *&__dst[16];
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 2032) = v61 - *a3;
    }

    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v302 = a3;
    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_126:
      v79 = v302 + 138;
      if (v302[68])
      {
        v80 = v302[69] == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = 68;
      if (v80)
      {
        v81 = 138;
      }

      else
      {
        v79 = v302 + 68;
      }

      v82 = v302[v81];
      v83 = v79[1];
      if (v82)
      {
        v84 = v83 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (v84)
      {
        v85 = 0;
        v86 = v304;
      }

      else
      {
        v87 = (v82 + *v82);
        v88 = (v87 - *v87);
        v86 = v304;
        if (*v88 >= 5u && (v89 = v88[2]) != 0)
        {
          v85 = *(v87 + v89);
        }

        else
        {
          v85 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2232) = (v85 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v90 = (v86 - *v86);
      if (*v90 < 5u)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[2];
        if (v91)
        {
          LODWORD(v91) = *(v86 + v91);
        }
      }

      *(a1 + 2224) = v91;
      v92 = (v86 - *v86);
      if (*v92 < 0x2Du)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[22];
        if (v93)
        {
          LODWORD(v93) = *(v86 + v93);
        }
      }

      *(a1 + 2228) = v93;
      v94 = (v86 - *v86);
      if (*v94 < 0x35u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[26];
        if (v95)
        {
          LODWORD(v95) = *(v86 + v95);
        }
      }

      *(a1 + 2268) = v95;
      v96 = (v86 - *v86);
      if (*v96 < 0x43u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[33];
        if (v97)
        {
          LODWORD(v97) = *(v86 + v97);
        }
      }

      *(a1 + 2304) = v97;
      v98 = v302 + 108;
      if (v302[38])
      {
        v99 = v302[39] == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = 38;
      if (v99)
      {
        v100 = 108;
      }

      else
      {
        v98 = v302 + 38;
      }

      v101 = v302[v100];
      if (v101 && v98[1])
      {
        v102 = (v101 + *v101);
        v103 = (v102 - *v102);
        if (*v103 < 0xDu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[6];
          if (v104)
          {
            LODWORD(v104) = *(v102 + v104);
          }
        }

        *(a1 + 2228) = v104;
        v105 = (v102 - *v102);
        if (*v105 < 0xBu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[5];
          if (v106)
          {
            LODWORD(v106) = *(v102 + v106);
          }
        }

        *(a1 + 2236) = v106;
        v107 = (v102 - *v102);
        if (*v107 < 0x11u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[8];
          if (v108)
          {
            LODWORD(v108) = *(v102 + v108);
          }
        }

        *(a1 + 2240) = v108;
        v109 = (v102 - *v102);
        if (*v109 < 0x13u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[9];
          if (v110)
          {
            LODWORD(v110) = *(v102 + v110);
          }
        }

        *(a1 + 2244) = v110;
        v111 = (v102 - *v102);
        if (*v111 < 0x17u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[11];
          if (v112)
          {
            LODWORD(v112) = *(v102 + v112);
          }
        }

        *(a1 + 2248) = v112;
        v113 = (v102 - *v102);
        if (*v113 < 0x1Bu)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[13];
          if (v114)
          {
            LODWORD(v114) = *(v102 + v114);
          }
        }

        *(a1 + 2252) = v114;
        v115 = (v102 - *v102);
        if (*v115 < 0x15u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[10];
          if (v116)
          {
            LODWORD(v116) = *(v102 + v116);
          }
        }

        *(a1 + 2256) = v116;
        v117 = (v102 - *v102);
        if (*v117 < 0x19u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[12];
          if (v118)
          {
            LODWORD(v118) = *(v102 + v118);
          }
        }

        *(a1 + 2260) = v118;
        v119 = (v102 - *v102);
        if (*v119 < 0x1Du)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[14];
          if (v120)
          {
            LODWORD(v120) = *(v102 + v120);
          }
        }

        *(a1 + 2264) = v120;
        v121 = (v102 - *v102);
        if (*v121 < 0xFu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[7];
          if (v122)
          {
            LODWORD(v122) = *(v102 + v122);
          }
        }

        *(a1 + 2268) = v122;
        v123 = (v102 - *v102);
        if (*v123 < 0x1Fu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[15];
          if (v124)
          {
            LODWORD(v124) = *(v102 + v124);
          }
        }

        *(a1 + 2272) = v124;
        v125 = (v102 - *v102);
        if (*v125 < 0x21u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[16];
          if (v126)
          {
            LODWORD(v126) = *(v102 + v126);
          }
        }

        *(a1 + 2276) = v126;
        v127 = (v102 - *v102);
        if (*v127 < 0x23u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[17];
          if (v128)
          {
            LODWORD(v128) = *(v102 + v128);
          }
        }

        *(a1 + 2280) = v128;
        v129 = (v102 - *v102);
        if (*v129 < 0x25u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[18];
          if (v130)
          {
            LODWORD(v130) = *(v102 + v130);
          }
        }

        *(a1 + 2284) = v130;
        v131 = (v102 - *v102);
        if (*v131 < 0x27u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[19];
          if (v132)
          {
            LODWORD(v132) = *(v102 + v132);
          }
        }

        *(a1 + 2288) = v132;
        v133 = (v102 - *v102);
        if (*v133 < 0x29u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[20];
          if (v134)
          {
            LODWORD(v134) = *(v102 + v134);
          }
        }

        *(a1 + 2292) = v134;
        v135 = (v102 - *v102);
        if (*v135 < 0x2Bu)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[21];
          if (v136)
          {
            LODWORD(v136) = *(v102 + v136);
          }
        }

        *(a1 + 2296) = v136;
        v137 = (v102 - *v102);
        if (*v137 < 7u)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[3];
          if (v138)
          {
            LODWORD(v138) = *(v102 + v138);
          }
        }

        *(a1 + 2300) = v138;
        v139 = (v102 - *v102);
        if (*v139 >= 5u && (v140 = v139[2]) != 0)
        {
          v141 = *(v102 + v140);
        }

        else
        {
          v141 = 0;
        }

        *(a1 + 2308) = v141;
      }

      if (v302[53])
      {
        v142 = v302[54];
        if (v142)
        {
          v143 = v302[53];
        }

        else
        {
          v143 = v302[123];
        }

        if (v142)
        {
          v144 = v302 + 53;
        }

        else
        {
          v144 = v302 + 123;
        }
      }

      else
      {
        v144 = v302 + 123;
        v143 = v302[123];
      }

      MEMORY[0x29ED51E10](a1 + 2368, v143, v144[1]);
      std::string::push_back((a1 + 2368), 0);
      v145 = *v86;
      v146 = v86 - v145;
      v147 = *(v86 - v145);
      if (v147 < 0x39)
      {
        goto LABEL_271;
      }

      v148 = -v145;
      v149 = *(v146 + 28);
      if (v149)
      {
        v150 = (v86 + v149 + *(v86 + v149));
        if (*v150)
        {
          *(a1 + 2112) = 1;
          v151 = (v150 + v150[1] + 4);
          v152 = (v151 - *v151);
          if (*v152 >= 9u && (v153 = v152[4]) != 0)
          {
            v154 = *(v151 + v153);
          }

          else
          {
            v154 = 0;
          }

          *(a1 + 2312) = v154;
          *(a1 + 2316) = 1;
          v155 = *v86;
          v148 = -v155;
          v147 = *(v86 - v155);
        }
      }

      if (v147 < 0x3B)
      {
        goto LABEL_271;
      }

      v156 = v86 + v148;
      if (*(v156 + 29))
      {
        v157 = (v86 + *(v156 + 29) + *(v86 + *(v156 + 29)));
        v158 = *v157;
        if (v158)
        {
          v159 = v157 + 1;
          do
          {
            v161 = *v159++;
            v160 = v161;
            if (!(v161 >> 20))
            {
              *(a1 + 2096 + 8 * (v160 > 0x3F)) |= 1 << v160;
            }

            --v158;
          }

          while (v158);
        }
      }

      if (v147 < 0x57)
      {
LABEL_271:
        LODWORD(v162) = 0;
      }

      else
      {
        v162 = *(v156 + 43);
        if (*(v156 + 43))
        {
          LODWORD(v162) = *(v86 + v162);
        }
      }

      *(a1 + 1300) = v162;
      v163 = (v86 - *v86);
      if (*v163 >= 0x21u && (v164 = v163[16]) != 0)
      {
        v165 = *(v86 + v164);
      }

      else
      {
        v165 = 0;
      }

      v166 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1304) = getAdditionalSpillBufferBytes(void)::extra + v165;
      v167 = (v86 - *v86);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v86 + v168);
        }
      }

      *(a1 + 1328) = v168;
      v169 = (v86 - *v86);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v86 + v170);
        }
      }

      *(a1 + 1332) = v170;
      v171 = (v86 - *v86);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v86 + v172);
        }
      }

      *(a1 + 1340) = v172;
      v173 = (v86 - *v86);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v86 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_300;
          }

          v175 = v173[19];
          goto LABEL_294;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v86 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_300;
          }

          if (v174 < 0x29)
          {
            goto LABEL_499;
          }

          if (v173[20] && *(v86 + v173[20]))
          {
LABEL_294:
            v176 = 1;
            goto LABEL_500;
          }

          if (v174 >= 0x71 && (v293 = v173[56]) != 0)
          {
            v176 = *(v86 + v293) != 0;
          }

          else
          {
LABEL_499:
            v176 = 0;
          }

LABEL_500:
          if (v175)
          {
            LOBYTE(v175) = *(v86 + v175) != 0;
          }

LABEL_300:
          *(a1 + 1350) = v175;
          v177 = (v25 - *v25);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v25 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v25 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v25 + v181);
                }

LABEL_312:
                *(a1 + 1392) = v179 | (v180 << 32);
                *(a1 + 1400) = v181;
                *(a1 + 1354) = (v176 | v175) & 1;
                v182 = *v86;
                v183 = (v86 - v182);
                v184 = *(v86 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v86 + v185) != 0;
                  }
                }

                *(a1 + 1349) = v185;
                v186 = (v25 - *v25);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v25 + v188) != 0;
                  }
                }

                *(a1 + 1355) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v86 + v189 + *(v86 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 1357) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 1351) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v25 + v194) != 0;
                  }

                  *(a1 + 1351) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v25 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 2193) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v86 + v197) != 0;
                  }
                }

                *(a1 + 1356) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 2195) = 1;
                  v199 = (v25 + v198 + *(v25 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_353;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_352:
                          v208 = *(v203 + v207);
                          goto LABEL_353;
                        }
                      }

                      v208 = 0;
LABEL_353:
                      v209 = (a1 + 2208);
LABEL_354:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_354;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = v209[1];
                        if (!v210)
                        {
                          goto LABEL_358;
                        }
                      }

                      v212 = v209;
                      v86 = v304;
                      *(v212 + 8) = v206;
                      if (v199 == v201)
                      {
                        v215 = *v304;
                        v196 = -v215;
                        v166 = &qword_2A17A1000;
                        if (*(v304 - v215) < 0x21u)
                        {
LABEL_368:
                          v214 = 0;
                          v213 = v305;
                          {
                            goto LABEL_505;
                          }

                          goto LABEL_371;
                        }

LABEL_364:
                        v213 = v305;
                        if (*(v86 + v196 + 32))
                        {
                          v214 = *(v86 + *(v86 + v196 + 32));
                          {
                            goto LABEL_371;
                          }
                        }

                        else
                        {
                          v214 = 0;
                          {
                            goto LABEL_371;
                          }
                        }

LABEL_505:
                        {
                          *(v166 + 402) = 0;
                        }

LABEL_371:
                        v216 = *(v166 + 402) + v214;
                        *(a1 + 1296) = v216;
                        v217 = (v86 - *v86);
                        if (*v217 < 0x43u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[33];
                          if (v218)
                          {
                            LODWORD(v218) = *(v86 + v218);
                          }
                        }

                        *(a1 + 1308) = v218;
                        v219 = (v86 - *v86);
                        if (*v219 < 5u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[2];
                          if (v220)
                          {
                            LODWORD(v220) = *(v86 + v220);
                          }
                        }

                        *(a1 + 1292) = v220;
                        v221 = (v86 - *v86);
                        if (*v221 < 0x51u)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[40];
                          if (v222)
                          {
                            LODWORD(v222) = *(v86 + v222);
                          }
                        }

                        *(a1 + 1324) = v222;
                        v223 = (v86 - *v86);
                        if (*v223 < 0x4Fu)
                        {
                          LODWORD(v224) = 0;
                        }

                        else
                        {
                          v224 = v223[39];
                          if (v224)
                          {
                            LODWORD(v224) = *(v86 + v224);
                          }
                        }

                        *(a1 + 1336) = v224;
                        *(a1 + 1344) = *(v301 + 468);
                        v225 = (v86 - *v86);
                        if ((*(v86 + v225[6] + *(v86 + v225[6])) | v216) != 0 || v176)
                        {
                          goto LABEL_398;
                        }

                        v226 = *v225;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v225[16])
                        {
                          v227 = *(v86 + v225[16]);
                          if (v226 >= 0x43)
                          {
LABEL_489:
                            if (v225[33])
                            {
                              v228 = *(v86 + v225[33]);
                              {
                                goto LABEL_491;
                              }

                              goto LABEL_394;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_489;
                          }
                        }

                        v228 = 0;
                        {
LABEL_491:
                          {
                            *(v166 + 402) = 0;
                          }
                        }

LABEL_394:
                        if (v228 + v227 + *(v166 + 402))
                        {
LABEL_398:
                          LOBYTE(v231) = 1;
                          v230 = v296;
                        }

                        else
                        {
                          v229 = (v86 - *v86);
                          v230 = v296;
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v231) = 0;
                          }

                          else
                          {
                            v231 = v229[47];
                            if (v231)
                            {
                              LOBYTE(v231) = *(v86 + v231) != 0;
                            }
                          }
                        }

                        *(a1 + 1348) = v231;
                        v232 = (v213 - *v213);
                        if (*v232 < 0x11u)
                        {
                          LODWORD(v233) = 0;
                        }

                        else
                        {
                          v233 = v232[8];
                          if (v233)
                          {
                            LODWORD(v233) = *(v213 + v233);
                          }
                        }

                        v234 = v303 + 6328;
                        v235 = (a1 + 2056);
                        v236 = (a1 + 1808);
                        *(a1 + 2000) = v233;
                        {
                          v235 = (a1 + 2056);
                          if (v294)
                          {
                            v235 = (a1 + 2056);
                          }
                        }

                        v237 = v302 + 3;
                        if (v302[4])
                        {
                          v238 = v302[3] == 0;
                        }

                        else
                        {
                          v238 = 1;
                        }

                        v239 = v302 + 73;
                        if (v238)
                        {
                          v240 = v302 + 73;
                        }

                        else
                        {
                          v240 = v302 + 3;
                        }

                        v241 = v240[1];
                        v242 = v230 == 0;
                        v243 = 168;
                        if (v230)
                        {
                          v243 = 504;
                        }

                        v244 = v234 + v243;
                        if (v242)
                        {
                          v245 = 0;
                        }

                        else
                        {
                          v245 = 0x1000000000;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v244, v241, v235);
                        *(a1 + 2088) += *&__dst[16];
                        v246 = *&__dst[16];
                        *v236 = *__dst;
                        *(a1 + 1824) = v246;
                        *(a1 + 1833) = *&__dst[25];
                        *(a1 + 1528) = *(a1 + 1808) + v245;
                        *(a1 + 1560) = v244;
                        v247 = *(a1 + 1824);
                        *(a1 + 1568) = *v236;
                        *(a1 + 1584) = v247;
                        *(a1 + 1593) = *(a1 + 1833);
                        if (*v237)
                        {
                          v248 = v302[4];
                          if (v248)
                          {
                            v249 = *v237;
                          }

                          else
                          {
                            v249 = v302[73];
                          }

                          if (v248)
                          {
                            v239 = v302 + 3;
                          }
                        }

                        else
                        {
                          v249 = *v239;
                        }

                        memcpy(*(a1 + 1816), v249, v239[1]);
                        v250 = *(a1 + 1816);
                        v251 = *(a1 + 1824);
                        *(a1 + 1536) = *(a1 + 1528);
                        *(a1 + 1544) = v250;
                        *(a1 + 1552) = v251;
                        v252 = v302 + 8;
                        if (v302[8])
                        {
                          if (v302[9])
                          {
                            v253 = v302 + 8;
                          }

                          else
                          {
                            v253 = v302 + 78;
                          }

                          v254 = v253[1];
                          if (!v254)
                          {
                            goto LABEL_439;
                          }
                        }

                        else
                        {
                          v254 = v302[79];
                          if (!v254)
                          {
                            goto LABEL_439;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v234, v254, (a1 + 2064));
                        *(a1 + 2088) += *&__dst[16];
                        v255 = *&__dst[16];
                        *(a1 + 1856) = *__dst;
                        *(a1 + 1872) = v255;
                        *(a1 + 1881) = *&__dst[25];
                        v256 = *(a1 + 1872);
                        *(a1 + 1616) = *(a1 + 1856);
                        *(a1 + 1632) = v256;
                        *(a1 + 1641) = *(a1 + 1881);
                        if (*v252)
                        {
                          v257 = v302[9];
                          if (v257)
                          {
                            v258 = *v252;
                          }

                          else
                          {
                            v258 = v302[78];
                          }

                          if (v257)
                          {
                            v259 = v302 + 8;
                          }

                          else
                          {
                            v259 = v302 + 78;
                          }
                        }

                        else
                        {
                          v259 = v302 + 78;
                          v258 = v302[78];
                        }

                        memcpy(*(a1 + 1864), v258, v259[1]);
LABEL_439:
                        v260 = v302 + 13;
                        if (v302[13])
                        {
                          if (v302[14])
                          {
                            v261 = v302 + 13;
                          }

                          else
                          {
                            v261 = v302 + 83;
                          }

                          v262 = v261[1];
                          if (!v262)
                          {
                            goto LABEL_455;
                          }
                        }

                        else
                        {
                          v262 = v302[84];
                          if (!v262)
                          {
                            goto LABEL_455;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v234, v262, (a1 + 2072));
                        *(a1 + 2088) += *&__dst[16];
                        v263 = *&__dst[16];
                        *(a1 + 1904) = *__dst;
                        *(a1 + 1920) = v263;
                        *(a1 + 1929) = *&__dst[25];
                        v264 = *(a1 + 1920);
                        *(a1 + 1664) = *(a1 + 1904);
                        *(a1 + 1680) = v264;
                        *(a1 + 1689) = *(a1 + 1929);
                        if (*v260)
                        {
                          v265 = v302[14];
                          if (v265)
                          {
                            v266 = *v260;
                          }

                          else
                          {
                            v266 = v302[83];
                          }

                          if (v265)
                          {
                            v267 = v302 + 13;
                          }

                          else
                          {
                            v267 = v302 + 83;
                          }
                        }

                        else
                        {
                          v267 = v302 + 83;
                          v266 = v302[83];
                        }

                        memcpy(*(a1 + 1912), v266, v267[1]);
                        v268 = *(a1 + 1920);
                        *(a1 + 1760) = *(a1 + 1904);
                        *(a1 + 1776) = v268;
LABEL_455:
                        v269 = v302 + 23;
                        if (v302[23])
                        {
                          if (!v302[24])
                          {
                            v269 = v302 + 93;
                          }

                          v270 = v269[1];
                          if (v270)
                          {
LABEL_459:
                            AGX::Heap<true>::allocateImpl(__dst, v234, v270, (a1 + 2080));
                            *(a1 + 2088) += *&__dst[16];
                            v271 = *&__dst[16];
                            *(a1 + 1952) = *__dst;
                            *(a1 + 1968) = v271;
                            *(a1 + 1977) = *&__dst[25];
                            v272 = *(a1 + 1968);
                            *(a1 + 1712) = *(a1 + 1952);
                            *(a1 + 1728) = v272;
                            *(a1 + 1737) = *(a1 + 1977);
                            v273 = *(a1 + 1968);
                            *(a1 + 1784) = *(a1 + 1952);
                            *(a1 + 1800) = v273;
                          }
                        }

                        else
                        {
                          v270 = v302[94];
                          if (v270)
                          {
                            goto LABEL_459;
                          }
                        }

                        if ((*(a1 + 1496) & 1) != 0 || *(*(a1 + 616) + 16945) == 1)
                        {
                          {
                            {
                              v275 = a1 + 1424;
                              if (*(a1 + 1447) < 0)
                              {
                                v275 = *v300;
                              }

                              v276 = a1 + 1472;
                              if (*(a1 + 1495) < 0)
                              {
                                v276 = v298->__r_.__value_.__r.__words[0];
                              }

                              v277 = a1 + 1448;
                              if (*(a1 + 1471) < 0)
                              {
                                v277 = *v299;
                              }

                              v278 = *(a1 + 1408);
                              v279 = *(a1 + 1416);
                              v280 = a1 + 1504;
                              if (*(a1 + 1527) < 0)
                              {
                                v280 = *v297;
                              }

                              v281 = *(a1 + 1528);
                              v282 = *(a1 + 1824);
                              *__dst = 136448002;
                              *&__dst[4] = v275;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v276;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v277;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v278;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v279;
                              *v308 = 2082;
                              *&v308[2] = v280;
                              *&v308[10] = 2050;
                              *&v308[12] = v281;
                              v309 = 2050;
                              v310 = v282;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v274, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v283 = *(a1 + 616);
                          v284 = a1 + 1424;
                          if (*(a1 + 1447) < 0)
                          {
                            v284 = *v300;
                          }

                          v285 = a1 + 1472;
                          if (*(a1 + 1495) < 0)
                          {
                            v285 = v298->__r_.__value_.__r.__words[0];
                          }

                          v286 = a1 + 1448;
                          if (*(a1 + 1471) < 0)
                          {
                            v286 = *v299;
                          }

                          v287 = a1 + 1504;
                          if (*(a1 + 1527) < 0)
                          {
                            v287 = *v297;
                          }

                          v288 = *(a1 + 1408);
                          v289 = *(a1 + 1416);
                          v290 = *(a1 + 1528);
                          v291 = *(a1 + 1824);
                          v292 = *(a1 + 1496);
                          *__dst = v284;
                          *&__dst[8] = v285;
                          *&__dst[16] = v286;
                          *&__dst[24] = v287;
                          *&__dst[32] = v288;
                          *&__dst[40] = v289;
                          *v308 = v290;
                          *&v308[8] = v291;
                          v308[16] = v292;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v283, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2195) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_368;
                }

                goto LABEL_364;
              }
            }
          }

          v181 = 0;
          goto LABEL_312;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_300;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_126;
    }

LABEL_116:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2320, __dst);
      v25 = v305;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2344, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_126;
      }
    }

LABEL_502:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v29 < 0x45)
  {
    if (v29 < 0x3D)
    {
      LOWORD(v34) = 0;
      if (v29 < 0x3B)
      {
        LODWORD(v36) = 0;
        v37 = 0;
        LOWORD(v33) = 0;
        v35 = 0;
LABEL_56:
        *(a1 + 1168) = v36;
        v38 = v34 + v36 - 1;
        v39 = -v36;
        v40 = *(a1 + 1176);
        v41 = (v33 | ((v39 & v38) << 32) | (v35 << 48)) + v37 + (v40 & 0xFF000000);
        *(a1 + 1176) = v41;
        if (v41 != v40)
        {
          *(a1 + 1200) = 0uLL;
          *(a1 + 1216) = 0uLL;
          *(a1 + 1184) = 0uLL;
          *&v42 = -1;
          *(&v42 + 1) = -1;
          *(a1 + 1232) = v42;
          *(a1 + 1248) = v42;
          *(a1 + 1264) = v42;
          *(a1 + 1280) = -1;
        }

        v43 = (v25 - *v25);
        if (*v43 < 0x57u)
        {
          LODWORD(v44) = 0;
        }

        else
        {
          v44 = v43[43];
          if (v44)
          {
            LODWORD(v44) = *(v25 + v44);
          }
        }

        *(a1 + 1288) = v44;
        v45 = *v25;
        v27 = -v45;
        v29 = *(v25 - v45);
        goto LABEL_63;
      }

      LOWORD(v33) = 0;
      v35 = v28[29];
      if (!v28[29])
      {
LABEL_41:
        if (v29 < 0x3F)
        {
          LODWORD(v36) = 0;
          v37 = 0;
        }

        else
        {
          v36 = v28[31];
          if (v28[31])
          {
            v36 = *(v25 + v36);
          }

          if (v29 < 0x4B)
          {
            v37 = 0;
          }

          else
          {
            v37 = v28[37];
            if (v28[37])
            {
              v37 = *(v25 + v37) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v35 = *(v25 + v35);
      goto LABEL_41;
    }

    LOWORD(v33) = 0;
    v34 = v28[30];
    if (v28[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v28[34];
    if (v28[34])
    {
      LODWORD(v33) = *(v25 + v33);
    }

    v34 = v28[30];
    if (v28[30])
    {
LABEL_38:
      LODWORD(v34) = *(v25 + v34);
    }
  }

  v35 = v28[29];
  if (!v28[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDEFA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, void **a22, void **a23, uint64_t a24, uint64_t a25, void **a26, void **a27, void **a28, void **a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37)
{
  CompileStatistics::~CompileStatistics(a22);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a35);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v37 + 2168));
  v40 = *a21;
  if (*a21)
  {
    *(v37 + 2152) = v40;
    operator delete(v40);
  }

  v41 = *a23;
  if (*a23)
  {
    *(v37 + 2128) = v41;
    operator delete(v41);
  }

  if (*a13 < 0)
  {
    operator delete(*a14);
    if ((*(v37 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v37 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  operator delete(*a26);
  if (*(v37 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a27);
    if ((*(v37 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((*(v37 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v37 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  operator delete(*a28);
  if ((*(v37 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v37 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v37 + 1016));
    v42 = *(v37 + 936);
    if (v42)
    {
      *(v37 + 944) = v42;
      operator delete(v42);
    }

    v43 = *(v37 + 912);
    if (v43)
    {
      *(v37 + 920) = v43;
      operator delete(v43);
    }

    v44 = (v37 + 864);
    v45 = *(v37 + 888);
    if (v45)
    {
      *(v37 + 896) = v45;
      operator delete(v45);
    }

    v46 = *v44;
    if (*v44)
    {
      *(v37 + 872) = v46;
      operator delete(v46);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v37 + 776);
    v47 = *a11;
    if (*a11)
    {
      *(v37 + 760) = v47;
      operator delete(v47);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a12);
    v48 = *(v37 + 592);
    if (v48)
    {
      *(v37 + 600) = v48;
      operator delete(v48);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a20);
    if (*(v38 - 193) < 0)
    {
      operator delete(*(v38 - 216));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a29);
  goto LABEL_11;
}

uint64_t _AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = (*(a1 + 16) + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  if (v3(v4, 0))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = (*(a1 + 16) + (v5 >> 1));
  if (v5)
  {
    v6 = *(*v7 + v6);
  }

  if (v6(v7, 1))
  {
    return 1;
  }

  v8 = *(a1 + 8);
  v9 = *a1;
  v10 = (*(a1 + 16) + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  if (v9(v10, 2))
  {
    return 1;
  }

  v11 = *(a1 + 8);
  v12 = *a1;
  v13 = (*(a1 + 16) + (v11 >> 1));
  if (v11)
  {
    v12 = *(*v13 + v12);
  }

  if (v12(v13, 3))
  {
    return 1;
  }

  v14 = *(a1 + 8);
  v15 = *a1;
  v16 = (*(a1 + 16) + (v14 >> 1));
  if (v14)
  {
    v15 = *(*v16 + v15);
  }

  if (v15(v16, 4))
  {
    return 1;
  }

  v17 = *(a1 + 8);
  v18 = *a1;
  v19 = (*(a1 + 16) + (v17 >> 1));
  if (v17)
  {
    v18 = *(*v19 + v18);
  }

  if (v18(v19, 5))
  {
    return 1;
  }

  v20 = *(a1 + 8);
  v21 = *a1;
  v22 = (*(a1 + 16) + (v20 >> 1));
  if (v20)
  {
    v21 = *(*v22 + v21);
  }

  if (v21(v22, 6))
  {
    return 1;
  }

  v24 = *(a1 + 8);
  v25 = *a1;
  v26 = (*(a1 + 16) + (v24 >> 1));
  if (v24)
  {
    v25 = *(*v26 + v25);
  }

  return v25(v26, 7);
}

void AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4104));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = *(a1 + 576);
    v4 = *(v2 + 208);
    v6 = *(v2 + 144);
    v5 = *(v2 + 148);
    if (v4)
    {
      v7 = *(v2 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v7 + v5 + v6 + *(v2 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (a1 + 664);
    v11 = *(a1 + 664);
    v12 = (*(a1 + 672) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(a1 + 672) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v9 - v12);
      v8 = *(v2 + 176);
      v5 = *(v2 + 148);
      v4 = *(v2 + 208);
    }

    if (v4)
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v2 + 184))
    {
      v14 = *(v2 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(a1 + 752);
    v17 = (*(a1 + 760) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(a1 + 760) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        v21 = *(*v18 + 4);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = 4 * *(v20 + 8) - *(v2 + 120);
          v23 = *v20 == 6 ? 32 : 6;
          v24 = (v23 & 0xF800007F | ((v21 & 0xFFFFF) << 7)) >> 3;
          *(*v10 + 4 * v22) = v24 | 0x40000008;
          v24 += 1073741832;
          *(*v10 + 4 * (v22 + 1)) = v24 + 1;
          *(*v10 + 4 * (v22 + 2)) = v24 + 2;
          *(*v10 + 4 * (v22 + 3)) = v24 + 3;
          if (*(v20 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(a1 + 1350))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v26 = *(*i + 4);
          if ((v26 & 0x80000000) == 0 && (v26 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v27 = v3[3];
    for (j = v3[4]; v27 != j; ++v27)
    {
      v29 = *(*v27 + 4);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *(a1 + 2192) ? 3 : 1;
        v31 = *(v2 + 124) + v30 * *(*v27 + 8) - (*(v2 + 120) + *(v2 + 128));
        v32 = 4 * (v29 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v31) = v32 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v33 = v32 + 1610612737;
          *(*v10 + 4 * (v31 + 1)) = v33 + 1;
          *(*v10 + 4 * (v31 + 2)) = v33 + 2;
        }
      }
    }

    v130 = v3;
    v34 = v3[6];
    v35 = v3[7];
    v131 = v2;
    if (v34 != v35)
    {
      v36 = (a1 + 1152);
      do
      {
        v37 = *v34;
        v38 = *(*v34 + 4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = ((*(v37 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v40 = v38 & 0xFFFFF;
          v41 = v38 & 0xFFFFF | 0x20000000;
          if ((v38 & 0xFFFFFu) >= 0x1F)
          {
            v41 = ((v38 & 0xFFFFF) + 536870887) & 0x1FFFFFFF;
          }

          *(*v10 + 4 * v39) = v41;
          if (*(v37 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v40 > 0x3F)) |= 1 << v38;
          }

          if (*(a1 + 2195) == 1)
          {
            v42 = *(a1 + 2208);
            if (!v42)
            {
LABEL_209:
              abort();
            }

            v43 = 2 * v39;
            v44 = (2 * v39) | 1;
            while (1)
            {
              while (1)
              {
                v45 = *(v42 + 7);
                if (v40 >= v45)
                {
                  break;
                }

                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_209;
                }
              }

              if (v45 >= v40)
              {
                break;
              }

              v42 = v42[1];
              if (!v42)
              {
                goto LABEL_209;
              }
            }

            v46 = *v36;
            if (!*v36)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v47 = v46;
                v48 = *(v46 + 7);
                if (v44 >= v48)
                {
                  break;
                }

                v46 = *v47;
                if (!*v47)
                {
                  goto LABEL_69;
                }
              }

              if (v48 > v43)
              {
                break;
              }

              v46 = v47[1];
              if (!v46)
              {
                goto LABEL_69;
              }
            }

            v2 = v131;
            *(v47 + 8) = *(v42 + 8);
          }
        }

        ++v34;
      }

      while (v34 != v35);
    }

    *(a1 + 744) = 1;
    v49 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v49 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v49)
    {
      if (!((v49 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_210;
    }

    v50 = *(a1 + 664);
    v51 = *(a1 + 672);
    if (v50 != v51)
    {
      do
      {
        v52 = *v50;
        if (*v50 >> 29 == 7)
        {
          v53 = 115;
        }

        else
        {
          v53 = dword_29D2F5294[v52 >> 29];
        }

        LODWORD(m) = v53 + (v52 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v50;
      }

      while (v50 != v51);
      v50 = *(a1 + 664);
      if (*(a1 + 672) != v50)
      {
        operator new();
      }
    }

    *(a1 + 672) = v50;
    v55 = *(v131 + 120);
    v54 = *(v131 + 124);
    v56 = *(v131 + 128);
    v57 = *(v131 + 132);
    v58 = *(v131 + 136);
    v59 = *(v131 + 140);
    v60 = (v54 + v57 + v59 - (v55 + v56 + v58) + 3) & 0xFFFFFFFC;
    v61 = *(v131 + 160);
    v62 = *(v131 + 168);
    if (*(v131 + 160) != 0)
    {
      v63 = 0;
      v64 = *(v131 + 144);
      if (*(v131 + 208) == 1)
      {
        v65 = (a1 + 752);
        if (!v64)
        {
          goto LABEL_92;
        }

        v66 = 0;
        v132 = *(v131 + 168);
        m = v61;
        for (k = v61; ; k = m)
        {
          if (k)
          {
            v68 = __clz(__rbit64(k));
            v69 = &m;
            v70 = v68;
          }

          else
          {
            k = v132;
            if (!v132)
            {
              v58 = *(v131 + 136);
              v59 = *(v131 + 140);
              v56 = *(v131 + 128);
              v57 = *(v131 + 132);
              v55 = *(v131 + 120);
              v54 = *(v131 + 124);
              v64 = *(v131 + 144);
              v63 = v64;
              goto LABEL_92;
            }

            v68 = __clz(__rbit64(v132));
            v70 = v68 | 0x40;
            v69 = &v132;
          }

          *v69 = k & ~(1 << v68);
          *(*(a1 + 752) + 4 * v66) = vorrq_s8(vdupq_n_s32(16 * v70), xmmword_29D2F2010);
          v66 += 4;
        }
      }

      v65 = (a1 + 752);
LABEL_92:
      v71 = *(v131 + 176);
      if (*&v71 != 0 && v64 != 0)
      {
        v124 = v63 - v60 + ((v59 + v57 - (v58 + v56 + v55) + v54 + 3) & 0xFFFFFFFC);
        v132 = v62;
        m = v61;
        while (1)
        {
          if (v61)
          {
            v125 = __clz(__rbit64(v61));
            v126 = &m;
            v127 = v125;
          }

          else
          {
            v61 = v132;
            if (!v132)
            {
              break;
            }

            v125 = __clz(__rbit64(v132));
            v127 = v125 | 0x40;
            v126 = &v132;
          }

          v128 = *v65;
          *(*v65 + 4 * (v124 + 1)) = (16 * (v127 & 0x7F)) | 0xD;
          *(v128 + 4 * v124) = (16 * (v127 & 0x7F)) | 0xC;
          *v126 = v61 & ~(1 << v125);
          *(v128 + 4 * (v124 + 2)) = (16 * (v127 & 0x7F)) | 0xE;
          v129 = v124 + 3;
          v124 += 4;
          v61 = m;
          *(v128 + 4 * v129) = (16 * v127) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v71);
    }

    if (*(v131 + 148))
    {
      v73 = *(v131 + 144);
      if (*(v131 + 208))
      {
        v74 = *(v131 + 144);
      }

      else
      {
        v74 = 0;
      }

      if (*(v131 + 176) == 0)
      {
        v73 = 0;
      }

      v75 = ((*(v131 + 124) + *(v131 + 132) + *(v131 + 140) - (*(v131 + 120) + *(v131 + 128) + *(v131 + 136)) + 3) & 0xFFFFFFFC) - v60 + v74 + v73;
      v76 = *(v131 + 192);
      v132 = *(v131 + 200);
      for (m = v76; ; v76 = m)
      {
        if (v76)
        {
          v77 = __clz(__rbit64(v76));
          p_m = &m;
          v79 = v77;
        }

        else
        {
          v76 = v132;
          if (!v132)
          {
            break;
          }

          v77 = __clz(__rbit64(v132));
          v79 = v77 | 0x40;
          p_m = &v132;
        }

        *p_m = v76 & ~(1 << v77);
        v80 = *(a1 + 752);
        *(v80 + 4 * v75) = (4 * (v79 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v81 = 4 * v79;
          *(v80 + 4 * (v75 + 1)) = v81 | 2;
          *(v80 + 4 * (v75 + 2)) = v81 | 3;
        }

        v75 += 4;
      }
    }

    v82 = (*(v130 + 24) + 3) >> 2;
    if (*(v131 + 467) == 1)
    {
      *(a1 + 1016) = v82;
    }

    *(a1 + 660) = v82;
    v83 = *(a1 + 776);
    v84 = (*(a1 + 784) - v83) >> 2;
    if (v82 <= v84)
    {
      if (v82 < v84)
      {
        *(a1 + 784) = v83 + 4 * v82;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v82 - v84);
    }

    if (a1 + 864 != v131 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v131 + 216), *(v131 + 224), (*(v131 + 224) - *(v131 + 216)) >> 2);
    }

    if (a1 + 912 != v131 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v131 + 240), *(v131 + 248), (*(v131 + 248) - *(v131 + 240)) >> 2);
    }

    if (a1 + 888 != v131 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v131 + 320), *(v131 + 328), (*(v131 + 328) - *(v131 + 320)) >> 1);
    }

    if (a1 + 936 != v131 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v131 + 368), *(v131 + 376), (*(v131 + 376) - *(v131 + 368)) >> 1);
    }

    *(a1 + 960) = *(v131 + 416);
    *(a1 + 1352) = *(v131 + 160) != 0;
    *(a1 + 1353) = *(v131 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v131);
    AGX::FragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(a1 + 2392, v131);
    v85 = *(a1 + 576);
    v86 = *(v85 + 72);
    v87 = *(v85 + 80);
    if (v86 != v87)
    {
      v88.i64[0] = 0x400000004;
      v88.i64[1] = 0x400000004;
      v89.i64[0] = 0x800000008;
      v89.i64[1] = 0x800000008;
      do
      {
        v90 = *v86;
        v91 = **v86;
        v92 = v91 > 0x3E || ((1 << v91) & 0x4000000000033800) == 0;
        if (v92 && (v91 - 93 <= 0x14 ? (v93 = ((1 << (v91 - 93)) & 0x100031) == 0) : (v93 = 1), v93))
        {
          v94 = v90[1];
        }

        else
        {
          v94 = v90[1];
          if ((v94 & 0x80000000) != 0)
          {
            goto LABEL_129;
          }
        }

        v95 = v90[2];
        v96 = *(a1 + 776);
        v97 = (v96 + 4 * v95);
        switch(v91)
        {
          case 0x18u:
            *v97 = 226;
            break;
          case 0x19u:
            *v97 = 225;
            break;
          case 0x1Bu:
            *v97 = xmmword_29D2F2040;
            break;
          case 0x1Cu:
            *v97 = 0xE0000000DFLL;
            break;
          case 0x2Bu:
            v98 = (v94 + 184) & 0x1FFFFFFF;
            goto LABEL_147;
          case 0x36u:
          case 0x37u:
          case 0x39u:
            break;
          case 0x38u:
            *v97 = 227;
            break;
          case 0x40u:
            *v97 = 0x500000004;
            break;
          case 0x4Bu:
            v101 = *(a1 + 3936);
            if (!*(a1 + 3936))
            {
              break;
            }

            v102 = 2 * v101;
            if (v101 <= 3)
            {
              v103 = 0;
              v104 = 168;
              goto LABEL_164;
            }

            v103 = v102 & 0x1F8;
            v105 = (v97 + 4);
            v106 = v103;
            v107 = xmmword_29D2F2030;
            do
            {
              *(v105 - 1) = *&v107 & __PAIR128__(0x1FFFFFFF1FFFFFFFLL, 0x1FFFFFFF1FFFFFFFLL);
              *v105 = *&vaddq_s32(v107, v88) & __PAIR128__(0x1FFFFFFF1FFFFFFFLL, 0x1FFFFFFF1FFFFFFFLL);
              v105 += 2;
              v107 = vaddq_s32(v107, v89);
              v106 -= 8;
            }

            while (v106);
            if (v103 != v102)
            {
              v104 = v103 + 168;
LABEL_164:
              v108 = v103 - v102;
              v109 = (v96 + 4 * v103 + 4 * v95);
              do
              {
                *v109++ = v104++ & 0x1FFFFFFF;
              }

              while (!__CFADD__(v108++, 1));
              break;
            }

            break;
          case 0x69u:
            *v97 = 0x700000006;
            break;
          case 0x6Au:
            *v97 = 8;
            break;
          case 0x6Bu:
            *v97 = 9;
            break;
          case 0x6Fu:
            *v97 = 228;
            break;
          case 0x70u:
            *v97 = 229;
            break;
          case 0x8Cu:
            *v97 = 10;
            break;
          default:
            v99 = v94 & 0xFFFFF;
            v100 = (v94 & 0xFFFFF) << 7;
            switch(v91)
            {
              case 0xBu:
                *v97 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v100), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
                goto LABEL_129;
              case 0xCu:
                LODWORD(v111) = (32 * v99) | 0x40000000;
                DWORD1(v111) = (32 * (v94 & 0xFFFFF)) | 0x40000001;
                *(&v111 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v100), 0xC00000008), 2uLL) | 0x4000000040000000;
                *v97 = v111;
                goto LABEL_129;
              case 0xDu:
                v98 = (32 * v99) | 0x40000008;
                break;
              case 0x10u:
                v98 = (32 * v99) | 0x40000009;
                break;
              case 0x11u:
                v98 = (32 * v99) | 0x4000000A;
                break;
              case 0x3Eu:
                v98 = (32 * v99) | 0x4000000B;
                break;
              case 0x5Du:
                if ((v94 & 0xFFF00000) == 0x400000)
                {
                  *v97 = 0;
                  goto LABEL_129;
                }

                v98 = (32 * v99) | 0x4000000C;
                break;
              case 0x61u:
                *v97 = vorr_s8(vdup_n_s32(32 * v99), 0x4000000F4000000ELL);
                goto LABEL_129;
              case 0x62u:
                *v97 = vorr_s8(vdup_n_s32(8 * v99), 0x6000000160000000);
                goto LABEL_129;
              case 0x6Du:
                v98 = (2 * (v94 & 0xFFFFFFF)) | 0xC0000000;
                break;
              case 0x6Eu:
                v98 = (2 * (v94 & 0xFFFFFFF)) | 0xC0000001;
                break;
              case 0x71u:
                v98 = (8 * v99) | 0x60000000;
                break;
              case 0x83u:
                v98 = v94 & 0x1FFFFFFF | 0x80000000;
                break;
              default:
                goto LABEL_129;
            }

LABEL_147:
            *v97 = v98;
            break;
        }

LABEL_129:
        ++v86;
      }

      while (v86 != v87);
    }

    *(a1 + 856) = 1;
    v112 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v112 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v112)
    {
      if (!((v112 >> 2) >> 62))
      {
        operator new();
      }

LABEL_210:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v113 = *(a1 + 776);
    v114 = *(a1 + 784);
    if (v113 != v114)
    {
      do
      {
        v115 = *v113;
        if (*v113 >> 29 == 7)
        {
          v116 = 230;
        }

        else
        {
          v116 = dword_29D2F51EC[v115 >> 29];
        }

        LODWORD(m) = v116 + (v115 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v113;
      }

      while (v113 != v114);
      v113 = *(a1 + 776);
      if (*(a1 + 784) != v113)
      {
        operator new();
      }
    }

    *(a1 + 784) = v113;
    if (*(v131 + 467) == 1)
    {
      v117 = *(a1 + 576);
      v118 = *(a1 + 1344);
      v119 = *(v117 + 136);
      if (*(a1 + 968) > v118)
      {
        v118 = *(a1 + 968);
      }

      *(a1 + 968) = v118;
      v120 = vorrq_s8(*(a1 + 992), *(v117 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v117 + 104));
      *(a1 + 992) = v120;
      *(a1 + 1008) |= v119;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v131);
    v121 = *(a1 + 584);
    if (v121)
    {
      v122 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v121);
      MEMORY[0x29ED520D0](v122, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v123 = *(a1 + 576);
    if (v123)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v123);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 4104));
}

void sub_29CDF12F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4104));
  _Unwind_Resume(a1);
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v30 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v30;
    if (!v30)
    {
      break;
    }

    v19 = __clz(__rbit64(v30));
    v21 = v19 | 0x40;
    p_i = &v30;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= ~(1 << v25))
  {
    v25 = __clz(__rbit64(k));
    v16->i32[0] = v25 + 184;
    v16 = (v16 + 4);
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v27 = *(a1 + 1128);
  v28 = *(a1 + 1120);
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v29 + (((v27 - v28) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::operator=(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x174uLL);
  if (a1 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 376), *(a2 + 376), *(a2 + 384), (*(a2 + 384) - *(a2 + 376)) >> 2);
  }

  v4 = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 400) = v4;
  std::string::operator=((a1 + 416), (a2 + 416));
  std::string::operator=((a1 + 440), (a2 + 440));
  std::string::operator=((a1 + 464), (a2 + 464));
  *(a1 + 488) = *(a2 + 488);
  std::string::operator=((a1 + 496), (a2 + 496));
  v6 = *(a2 + 536);
  v5 = *(a2 + 552);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 536) = v6;
  *(a1 + 552) = v5;
  v7 = *(a2 + 616);
  v9 = *(a2 + 568);
  v8 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 616) = v7;
  *(a1 + 568) = v9;
  *(a1 + 584) = v8;
  v10 = *(a2 + 680);
  v12 = *(a2 + 632);
  v11 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 680) = v10;
  *(a1 + 632) = v12;
  *(a1 + 648) = v11;
  v13 = *(a2 + 744);
  v15 = *(a2 + 696);
  v14 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v13;
  *(a1 + 696) = v15;
  *(a1 + 712) = v14;
  if (a1 == a2)
  {
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 816) = *(a2 + 816);
    memcpy((a1 + 824), (a2 + 824), 0x190uLL);
    v17 = *(a2 + 1240);
    *(a1 + 1224) = *(a2 + 1224);
    *(a1 + 1240) = v17;
  }

  else
  {
    std::vector<AGX::HAL300::IntersectionProgramVariantSet *>::__assign_with_size[abi:nn200100]<AGX::HAL300::IntersectionProgramVariantSet **,AGX::HAL300::IntersectionProgramVariantSet **>((a1 + 760), *(a2 + 760), *(a2 + 768), (*(a2 + 768) - *(a2 + 760)) >> 3);
    *(a1 + 784) = *(a2 + 784);
    std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::__assign_with_size[abi:nn200100]<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*,std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*>(a1 + 792, *(a2 + 792), *(a2 + 800), (*(a2 + 800) - *(a2 + 792)) >> 4);
    *(a1 + 816) = *(a2 + 816);
    memcpy((a1 + 824), (a2 + 824), 0x190uLL);
    v16 = *(a2 + 1240);
    *(a1 + 1224) = *(a2 + 1224);
    *(a1 + 1240) = v16;
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 1256), *(a2 + 1256), *(a2 + 1264), (*(a2 + 1264) - *(a2 + 1256)) >> 2);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>((a1 + 1280), *(a2 + 1280), (a2 + 1288));
  }

  *(a1 + 1304) = *(a2 + 1304);
  v18 = *(a2 + 1312);
  *(a1 + 1325) = *(a2 + 1325);
  *(a1 + 1312) = v18;
  return a1;
}

void AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4104));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  AGX::FragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState((a1 + 2392), a2);
  if (*(a2 + 224) == 1)
  {
    *(a1 + 3840) &= ~0x200000u;
  }

  std::mutex::unlock((a1 + 4104));
}

void AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 3896));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = *(a1 + 576);
    v4 = *(v2 + 208);
    v6 = *(v2 + 144);
    v5 = *(v2 + 148);
    if (v4)
    {
      v7 = *(v2 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v7 + v5 + v6 + *(v2 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (a1 + 664);
    v11 = *(a1 + 664);
    v12 = (*(a1 + 672) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(a1 + 672) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v9 - v12);
      v8 = *(v2 + 176);
      v5 = *(v2 + 148);
      v4 = *(v2 + 208);
    }

    if (v4)
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v2 + 184))
    {
      v14 = *(v2 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(a1 + 752);
    v17 = (*(a1 + 760) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(a1 + 760) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        v21 = *(*v18 + 4);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = 4 * *(v20 + 8) - *(v2 + 120);
          v23 = *v20 == 6 ? 32 : 6;
          v24 = (v23 & 0xF800007F | ((v21 & 0xFFFFF) << 7)) >> 3;
          *(*v10 + 4 * v22) = v24 | 0x40000008;
          v24 += 1073741832;
          *(*v10 + 4 * (v22 + 1)) = v24 + 1;
          *(*v10 + 4 * (v22 + 2)) = v24 + 2;
          *(*v10 + 4 * (v22 + 3)) = v24 + 3;
          if (*(v20 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(a1 + 1350))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v26 = *(*i + 4);
          if ((v26 & 0x80000000) == 0 && (v26 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v27 = v3[3];
    for (j = v3[4]; v27 != j; ++v27)
    {
      v29 = *(*v27 + 4);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *(a1 + 2192) ? 3 : 1;
        v31 = *(v2 + 124) + v30 * *(*v27 + 8) - (*(v2 + 120) + *(v2 + 128));
        v32 = 4 * (v29 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v31) = v32 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v33 = v32 + 1610612737;
          *(*v10 + 4 * (v31 + 1)) = v33 + 1;
          *(*v10 + 4 * (v31 + 2)) = v33 + 2;
        }
      }
    }

    v116 = v3;
    v34 = v3[6];
    v35 = v3[7];
    v117 = v2;
    if (v34 != v35)
    {
      v36 = (a1 + 1152);
      do
      {
        v37 = *v34;
        v38 = *(*v34 + 4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = ((*(v37 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v40 = v38 & 0xFFFFF;
          v41 = v38 & 0xFFFFF | 0x20000000;
          if ((v38 & 0xFFFFFu) >= 0x1F)
          {
            v41 = ((v38 & 0xFFFFF) + 536870887) & 0x1FFFFFFF;
          }

          *(*v10 + 4 * v39) = v41;
          if (*(v37 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v40 > 0x3F)) |= 1 << v38;
          }

          if (*(a1 + 2195) == 1)
          {
            v42 = *(a1 + 2208);
            if (!v42)
            {
LABEL_209:
              abort();
            }

            v43 = 2 * v39;
            v44 = (2 * v39) | 1;
            while (1)
            {
              while (1)
              {
                v45 = *(v42 + 7);
                if (v40 >= v45)
                {
                  break;
                }

                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_209;
                }
              }

              if (v45 >= v40)
              {
                break;
              }

              v42 = v42[1];
              if (!v42)
              {
                goto LABEL_209;
              }
            }

            v46 = *v36;
            if (!*v36)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v47 = v46;
                v48 = *(v46 + 7);
                if (v44 >= v48)
                {
                  break;
                }

                v46 = *v47;
                if (!*v47)
                {
                  goto LABEL_69;
                }
              }

              if (v48 > v43)
              {
                break;
              }

              v46 = v47[1];
              if (!v46)
              {
                goto LABEL_69;
              }
            }

            v2 = v117;
            *(v47 + 8) = *(v42 + 8);
          }
        }

        ++v34;
      }

      while (v34 != v35);
    }

    *(a1 + 744) = 1;
    v49 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v49 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v49)
    {
      if (!((v49 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_210;
    }

    v50 = *(a1 + 664);
    v51 = *(a1 + 672);
    if (v50 != v51)
    {
      do
      {
        v52 = *v50;
        if (*v50 >> 29 == 7)
        {
          v53 = 105;
        }

        else
        {
          v53 = dword_29D2F52B0[v52 >> 29];
        }

        LODWORD(m) = v53 + (v52 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v50;
      }

      while (v50 != v51);
      v50 = *(a1 + 664);
      if (*(a1 + 672) != v50)
      {
        operator new();
      }
    }

    *(a1 + 672) = v50;
    v55 = *(v117 + 120);
    v54 = *(v117 + 124);
    v56 = *(v117 + 128);
    v57 = *(v117 + 132);
    v58 = *(v117 + 136);
    v59 = *(v117 + 140);
    v60 = (v54 + v57 + v59 - (v55 + v56 + v58) + 3) & 0xFFFFFFFC;
    v61 = *(v117 + 160);
    v62 = *(v117 + 168);
    if (*(v117 + 160) != 0)
    {
      v63 = 0;
      v64 = *(v117 + 144);
      if (*(v117 + 208) == 1)
      {
        v65 = (a1 + 752);
        if (!v64)
        {
          goto LABEL_92;
        }

        v66 = 0;
        v118 = *(v117 + 168);
        m = v61;
        for (k = v61; ; k = m)
        {
          if (k)
          {
            v68 = __clz(__rbit64(k));
            v69 = &m;
            v70 = v68;
          }

          else
          {
            k = v118;
            if (!v118)
            {
              v58 = *(v117 + 136);
              v59 = *(v117 + 140);
              v56 = *(v117 + 128);
              v57 = *(v117 + 132);
              v55 = *(v117 + 120);
              v54 = *(v117 + 124);
              v64 = *(v117 + 144);
              v63 = v64;
              goto LABEL_92;
            }

            v68 = __clz(__rbit64(v118));
            v70 = v68 | 0x40;
            v69 = &v118;
          }

          *v69 = k & ~(1 << v68);
          *(*(a1 + 752) + 4 * v66) = vorrq_s8(vdupq_n_s32(16 * v70), xmmword_29D2F2010);
          v66 += 4;
        }
      }

      v65 = (a1 + 752);
LABEL_92:
      v71 = *(v117 + 176);
      if (*&v71 != 0 && v64 != 0)
      {
        v110 = v63 - v60 + ((v59 + v57 - (v58 + v56 + v55) + v54 + 3) & 0xFFFFFFFC);
        v118 = v62;
        m = v61;
        while (1)
        {
          if (v61)
          {
            v111 = __clz(__rbit64(v61));
            v112 = &m;
            v113 = v111;
          }

          else
          {
            v61 = v118;
            if (!v118)
            {
              break;
            }

            v111 = __clz(__rbit64(v118));
            v113 = v111 | 0x40;
            v112 = &v118;
          }

          v114 = *v65;
          *(*v65 + 4 * (v110 + 1)) = (16 * (v113 & 0x7F)) | 0xD;
          *(v114 + 4 * v110) = (16 * (v113 & 0x7F)) | 0xC;
          *v112 = v61 & ~(1 << v111);
          *(v114 + 4 * (v110 + 2)) = (16 * (v113 & 0x7F)) | 0xE;
          v115 = v110 + 3;
          v110 += 4;
          v61 = m;
          *(v114 + 4 * v115) = (16 * v113) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v71);
    }

    if (*(v117 + 148))
    {
      v73 = *(v117 + 144);
      if (*(v117 + 208))
      {
        v74 = *(v117 + 144);
      }

      else
      {
        v74 = 0;
      }

      if (*(v117 + 176) == 0)
      {
        v73 = 0;
      }

      v75 = ((*(v117 + 124) + *(v117 + 132) + *(v117 + 140) - (*(v117 + 120) + *(v117 + 128) + *(v117 + 136)) + 3) & 0xFFFFFFFC) - v60 + v74 + v73;
      v76 = *(v117 + 192);
      v118 = *(v117 + 200);
      for (m = v76; ; v76 = m)
      {
        if (v76)
        {
          v77 = __clz(__rbit64(v76));
          p_m = &m;
          v79 = v77;
        }

        else
        {
          v76 = v118;
          if (!v118)
          {
            break;
          }

          v77 = __clz(__rbit64(v118));
          v79 = v77 | 0x40;
          p_m = &v118;
        }

        *p_m = v76 & ~(1 << v77);
        v80 = *(a1 + 752);
        *(v80 + 4 * v75) = (4 * (v79 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v81 = 4 * v79;
          *(v80 + 4 * (v75 + 1)) = v81 | 2;
          *(v80 + 4 * (v75 + 2)) = v81 | 3;
        }

        v75 += 4;
      }
    }

    v82 = (*(v116 + 24) + 3) >> 2;
    if (*(v117 + 467) == 1)
    {
      *(a1 + 1016) = v82;
    }

    *(a1 + 660) = v82;
    v83 = *(a1 + 776);
    v84 = (*(a1 + 784) - v83) >> 2;
    if (v82 <= v84)
    {
      if (v82 < v84)
      {
        *(a1 + 784) = v83 + 4 * v82;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v82 - v84);
    }

    if (a1 + 864 != v117 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v117 + 216), *(v117 + 224), (*(v117 + 224) - *(v117 + 216)) >> 2);
    }

    if (a1 + 912 != v117 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v117 + 240), *(v117 + 248), (*(v117 + 248) - *(v117 + 240)) >> 2);
    }

    if (a1 + 888 != v117 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v117 + 320), *(v117 + 328), (*(v117 + 328) - *(v117 + 320)) >> 1);
    }

    if (a1 + 936 != v117 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v117 + 368), *(v117 + 376), (*(v117 + 376) - *(v117 + 368)) >> 1);
    }

    *(a1 + 960) = *(v117 + 416);
    *(a1 + 1352) = *(v117 + 160) != 0;
    *(a1 + 1353) = *(v117 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v117);
    AGX::FragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(a1 + 2392, v117);
    v85 = *(a1 + 576);
    v86 = *(v85 + 72);
    for (n = *(v85 + 80); v86 != n; ++v86)
    {
      v88 = *v86;
      v89 = **v86;
      v90 = v89 > 0x3E || ((1 << v89) & 0x4000000000033800) == 0;
      if (v90 && ((v89 - 93) <= 0x14 ? (v91 = ((1 << (v89 - 93)) & 0x100031) == 0) : (v91 = 1), v91))
      {
        v92 = v88[1];
      }

      else
      {
        v92 = v88[1];
        if (v92 < 0)
        {
          continue;
        }
      }

      v93 = (*(a1 + 776) + 4 * v88[2]);
      if (v89 <= 63)
      {
        if (v89 <= 54)
        {
          if (v89 == 43)
          {
            v94 = (v92 & 0xFFFFF) + 168;
LABEL_160:
            *v93 = v94;
            continue;
          }

          if (v89 != 54)
          {
            goto LABEL_166;
          }

          *v93 = 208;
        }

        else
        {
          switch(v89)
          {
            case '7':
              *v93 = 209;
              continue;
            case '8':
              *v93 = 206;
              break;
            case '9':
              *v93 = 207;
              break;
            default:
              goto LABEL_166;
          }
        }
      }

      else if (v89 > 106)
      {
        if (v89 == 107)
        {
          *v93 = 9;
          continue;
        }

        if (v89 == 111)
        {
          *v93 = 203;
          continue;
        }

        if (v89 != 140)
        {
          goto LABEL_166;
        }

        *v93 = 10;
      }

      else
      {
        if (v89 == 64)
        {
          *v93 = 0x500000004;
          continue;
        }

        if (v89 == 105)
        {
          *v93 = 0x700000006;
          continue;
        }

        if (v89 != 106)
        {
LABEL_166:
          v95 = v92 & 0xFFFFF;
          v96 = (v92 & 0xFFFFF) << 7;
          switch(v89)
          {
            case 11:
              *v93 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v96), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
              continue;
            case 12:
              LODWORD(v97) = (32 * v95) | 0x40000000;
              DWORD1(v97) = (32 * (v92 & 0xFFFFF)) | 0x40000001;
              *(&v97 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v96), 0xC00000008), 2uLL) | 0x4000000040000000;
              *v93 = v97;
              continue;
            case 13:
              v94 = (32 * v95) | 0x40000008;
              goto LABEL_160;
            case 16:
              v94 = (32 * v95) | 0x40000009;
              goto LABEL_160;
            case 17:
              v94 = (32 * v95) | 0x4000000A;
              goto LABEL_160;
            case 62:
              v94 = (32 * v95) | 0x4000000B;
              goto LABEL_160;
            case 93:
              if ((v92 & 0xFFF00000) == 0x400000)
              {
                *v93 = 0;
                continue;
              }

              v94 = (32 * v95) | 0x4000000C;
              break;
            case 97:
              *v93 = vorr_s8(vdup_n_s32(32 * v95), 0x4000000F4000000ELL);
              continue;
            case 98:
              *v93 = vorr_s8(vdup_n_s32(8 * v95), 0x6000000160000000);
              continue;
            case 109:
              v94 = (2 * (v92 & 0xFFFFFFF)) | 0xC0000000;
              goto LABEL_160;
            case 110:
              v94 = (2 * (v92 & 0xFFFFFFF)) | 0xC0000001;
              goto LABEL_160;
            case 113:
              v94 = (8 * v95) | 0x60000000;
              goto LABEL_160;
            case 131:
              v94 = v92 & 0x1FFFFFFF | 0x80000000;
              goto LABEL_160;
            default:
              continue;
          }

          goto LABEL_160;
        }

        *v93 = 8;
      }
    }

    *(a1 + 856) = 1;
    v98 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v98 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v98)
    {
      if (!((v98 >> 2) >> 62))
      {
        operator new();
      }

LABEL_210:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v99 = *(a1 + 776);
    v100 = *(a1 + 784);
    if (v99 != v100)
    {
      do
      {
        v101 = *v99;
        if (*v99 >> 29 == 7)
        {
          v102 = 210;
        }

        else
        {
          v102 = dword_29D2F5208[v101 >> 29];
        }

        LODWORD(m) = v102 + (v101 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v99;
      }

      while (v99 != v100);
      v99 = *(a1 + 776);
      if (*(a1 + 784) != v99)
      {
        operator new();
      }
    }

    *(a1 + 784) = v99;
    if (*(v117 + 467) == 1)
    {
      v103 = *(a1 + 576);
      v104 = *(a1 + 1344);
      v105 = *(v103 + 136);
      if (*(a1 + 968) > v104)
      {
        v104 = *(a1 + 968);
      }

      *(a1 + 968) = v104;
      v106 = vorrq_s8(*(a1 + 992), *(v103 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v103 + 104));
      *(a1 + 992) = v106;
      *(a1 + 1008) |= v105;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v117);
    v107 = *(a1 + 584);
    if (v107)
    {
      v108 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v107);
      MEMORY[0x29ED520D0](v108, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v109 = *(a1 + 576);
    if (v109)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v109);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 3896));
}

void sub_29CDF2FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 3896));
  _Unwind_Resume(a1);
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v30 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v30;
    if (!v30)
    {
      break;
    }

    v19 = __clz(__rbit64(v30));
    v21 = v19 | 0x40;
    p_i = &v30;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= ~(1 << v25))
  {
    v25 = __clz(__rbit64(k));
    v16->i32[0] = v25 + 168;
    v16 = (v16 + 4);
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v27 = *(a1 + 1128);
  v28 = *(a1 + 1120);
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v29 + (((v27 - v28) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

void AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 3896));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  AGX::FragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState((a1 + 2392), a2);

  std::mutex::unlock((a1 + 3896));
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ComputeProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = 0;
  v312 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v10;
  *(a1 + 176) = v10;
  *(a1 + 192) = v10;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 612) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F7970;
  *(a1 + 616) = a2;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v10;
  *(a1 + 1248) = v10;
  *(a1 + 1232) = v10;
  *(a1 + 1288) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1504) = 0;
  v297 = (a1 + 1504);
  *(a1 + 1512) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  v300 = (a1 + 1424);
  *(a1 + 1481) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  v293 = (a1 + 2031);
  *(a1 + 2031) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = *(a5 + 465);
  *(a1 + 2194) = 0;
  *(a1 + 2208) = 0u;
  v302 = a1 + 2208;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 28;
  if (v11)
  {
    v12 = 98;
    v13 = a3 + 98;
  }

  else
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v9 = (v14 + *v14);
  }

  v15 = (v9 - *v9);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v303 = (v9 + v16 + *(v9 + v16));
  }

  else
  {
    v303 = 0;
  }

  v17 = 0;
  if (a3[58])
  {
    v18 = a3[59] == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = 58;
  if (v18)
  {
    v19 = 128;
    v20 = a3 + 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v21 = a3[v19];
  if (v21 && v20[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = (v17 + v23 + *(v17 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v24;
  v26 = -v25;
  v27 = (v24 - v25);
  v28 = *(v24 - v25);
  if (v28 < 0x25)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v27[18];
    if (v27[18])
    {
      LOBYTE(v29) = *(v24 + v29) != 0;
    }
  }

  *(a1 + 2193) = v29;
  v30 = (v303 - *v303);
  if (*v30 < 0x55u || (v31 = v30[42]) == 0 || !*(v303 + v31))
  {
LABEL_63:
    if (v28 < 7)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = *(v24 + v26 + 6);
      if (*(v24 + v26 + 6))
      {
        LODWORD(v45) = *(v24 + v45);
      }
    }

    *(a1 + 1408) = v45;
    v46 = (v24 - *v24);
    if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
    {
      v48 = v24 + v47 + *(v24 + v47) + 4;
    }

    else
    {
      v48 = "";
    }

    v298 = (a1 + 1472);
    v299 = (a1 + 1448);
    v294 = a1 + 2008;
    v295 = (a1 + 2224);
    MEMORY[0x29ED51E00](v300, v48);
    v49 = (v24 - *v24);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = v24 + v50 + *(v24 + v50) + 4;
    }

    else
    {
      v51 = "";
    }

    MEMORY[0x29ED51E00](v299, v51);
    v52 = (v24 - *v24);
    if (*v52 < 0x29u)
    {
      LOBYTE(v53) = 0;
    }

    else
    {
      v53 = v52[20];
      if (v53)
      {
        LOBYTE(v53) = *(v24 + v53) != 0;
      }
    }

    *(a1 + 1496) = v53;
    std::string::operator=(v298, &__str);
    v54 = (v24 - *v24);
    if (*v54 >= 0x51u && (v55 = v54[40]) != 0)
    {
      v56 = v24 + v55 + *(v24 + v55) + 4;
    }

    else
    {
      v56 = "";
    }

    MEMORY[0x29ED51E00](v297, v56);
    v57 = (v24 - *v24);
    v305 = v24;
    if (*v57 >= 5u && v57[2] && *(a2 + 16608) == 1)
    {
      v58 = a3[1];
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_501;
      }

      v59 = *a3;
      if (v58 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v58)
      {
        memmove(__dst, v59, v58);
      }

      __dst[v58] = 0;
      if (*v293 < 0)
      {
        operator delete(*v294);
      }

      *v294 = *__dst;
      *(v294 + 16) = *&__dst[16];
      v60 = a3[3];
      if (a3[4])
      {
        v61 = v60 == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        v60 = a3[73];
      }

      *(a1 + 2032) = v60 - *a3;
    }

    v62 = a3 + 113;
    if (a3[43])
    {
      v63 = a3[44] == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = 43;
    if (v63)
    {
      v64 = 113;
    }

    else
    {
      v62 = a3 + 43;
    }

    v304 = a3;
    v65 = a3[v64];
    if (!v65 || !v62[1])
    {
LABEL_126:
      v78 = v304;
      v79 = v304 + 138;
      if (v304[68])
      {
        v80 = v304[69] == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = 68;
      if (v80)
      {
        v81 = 138;
      }

      else
      {
        v79 = v304 + 68;
      }

      v82 = v304[v81];
      v83 = v79[1];
      if (v82)
      {
        v84 = v83 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (v84 || (v85 = (v82 + *v82), v86 = (v85 - *v85), *v86 < 5u) || (v87 = v86[2]) == 0)
      {
        v88 = 0;
      }

      else
      {
        v88 = *(v85 + v87);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2232) = (v88 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v89 = (v303 - *v303);
      if (*v89 < 5u)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v89[2];
        if (v90)
        {
          LODWORD(v90) = *(v303 + v90);
        }
      }

      *v295 = v90;
      v91 = (v303 - *v303);
      if (*v91 < 0x2Du)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[22];
        if (v92)
        {
          LODWORD(v92) = *(v303 + v92);
        }
      }

      *(a1 + 2228) = v92;
      v93 = (v303 - *v303);
      if (*v93 < 0x35u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[26];
        if (v94)
        {
          LODWORD(v94) = *(v303 + v94);
        }
      }

      *(a1 + 2268) = v94;
      v95 = (v303 - *v303);
      if (*v95 < 0x43u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[33];
        if (v96)
        {
          LODWORD(v96) = *(v303 + v96);
        }
      }

      *(a1 + 2304) = v96;
      v97 = v304 + 108;
      if (v304[38])
      {
        v98 = v304[39] == 0;
      }

      else
      {
        v98 = 1;
      }

      v99 = 38;
      if (v98)
      {
        v99 = 108;
      }

      else
      {
        v97 = v304 + 38;
      }

      v100 = v304[v99];
      if (v100 && v97[1])
      {
        v101 = (v100 + *v100);
        v102 = (v101 - *v101);
        if (*v102 < 0xDu)
        {
          LODWORD(v103) = 0;
        }

        else
        {
          v103 = v102[6];
          if (v103)
          {
            LODWORD(v103) = *(v101 + v103);
          }
        }

        *(a1 + 2228) = v103;
        v104 = (v101 - *v101);
        if (*v104 < 0xBu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[5];
          if (v105)
          {
            LODWORD(v105) = *(v101 + v105);
          }
        }

        *(a1 + 2236) = v105;
        v106 = (v101 - *v101);
        if (*v106 < 0x11u)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[8];
          if (v107)
          {
            LODWORD(v107) = *(v101 + v107);
          }
        }

        *(a1 + 2240) = v107;
        v108 = (v101 - *v101);
        if (*v108 < 0x13u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[9];
          if (v109)
          {
            LODWORD(v109) = *(v101 + v109);
          }
        }

        *(a1 + 2244) = v109;
        v110 = (v101 - *v101);
        if (*v110 < 0x17u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[11];
          if (v111)
          {
            LODWORD(v111) = *(v101 + v111);
          }
        }

        *(a1 + 2248) = v111;
        v112 = (v101 - *v101);
        if (*v112 < 0x1Bu)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[13];
          if (v113)
          {
            LODWORD(v113) = *(v101 + v113);
          }
        }

        *(a1 + 2252) = v113;
        v114 = (v101 - *v101);
        if (*v114 < 0x15u)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[10];
          if (v115)
          {
            LODWORD(v115) = *(v101 + v115);
          }
        }

        *(a1 + 2256) = v115;
        v116 = (v101 - *v101);
        if (*v116 < 0x19u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[12];
          if (v117)
          {
            LODWORD(v117) = *(v101 + v117);
          }
        }

        *(a1 + 2260) = v117;
        v118 = (v101 - *v101);
        if (*v118 < 0x1Du)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[14];
          if (v119)
          {
            LODWORD(v119) = *(v101 + v119);
          }
        }

        *(a1 + 2264) = v119;
        v120 = (v101 - *v101);
        if (*v120 < 0xFu)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[7];
          if (v121)
          {
            LODWORD(v121) = *(v101 + v121);
          }
        }

        *(a1 + 2268) = v121;
        v122 = (v101 - *v101);
        if (*v122 < 0x1Fu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[15];
          if (v123)
          {
            LODWORD(v123) = *(v101 + v123);
          }
        }

        *(a1 + 2272) = v123;
        v124 = (v101 - *v101);
        if (*v124 < 0x21u)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[16];
          if (v125)
          {
            LODWORD(v125) = *(v101 + v125);
          }
        }

        *(a1 + 2276) = v125;
        v126 = (v101 - *v101);
        if (*v126 < 0x23u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[17];
          if (v127)
          {
            LODWORD(v127) = *(v101 + v127);
          }
        }

        *(a1 + 2280) = v127;
        v128 = (v101 - *v101);
        if (*v128 < 0x25u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[18];
          if (v129)
          {
            LODWORD(v129) = *(v101 + v129);
          }
        }

        *(a1 + 2284) = v129;
        v130 = (v101 - *v101);
        if (*v130 < 0x27u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[19];
          if (v131)
          {
            LODWORD(v131) = *(v101 + v131);
          }
        }

        *(a1 + 2288) = v131;
        v132 = (v101 - *v101);
        if (*v132 < 0x29u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[20];
          if (v133)
          {
            LODWORD(v133) = *(v101 + v133);
          }
        }

        *(a1 + 2292) = v133;
        v134 = (v101 - *v101);
        if (*v134 < 0x2Bu)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[21];
          if (v135)
          {
            LODWORD(v135) = *(v101 + v135);
          }
        }

        *(a1 + 2296) = v135;
        v136 = (v101 - *v101);
        if (*v136 < 7u)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[3];
          if (v137)
          {
            LODWORD(v137) = *(v101 + v137);
          }
        }

        *(a1 + 2300) = v137;
        v138 = (v101 - *v101);
        if (*v138 >= 5u && (v139 = v138[2]) != 0)
        {
          v140 = *(v101 + v139);
        }

        else
        {
          v140 = 0;
        }

        *(a1 + 2308) = v140;
      }

      if (v304[53])
      {
        v141 = v304[54];
        if (v141)
        {
          v142 = v304[53];
        }

        else
        {
          v142 = v304[123];
        }

        if (v141)
        {
          v143 = v304 + 53;
        }

        else
        {
          v143 = v304 + 123;
        }
      }

      else
      {
        v143 = v304 + 123;
        v142 = v304[123];
      }

      MEMORY[0x29ED51E10](a1 + 2368, v142, v143[1]);
      std::string::push_back((a1 + 2368), 0);
      v144 = *v303;
      v145 = v303 - v144;
      v146 = *(v303 - v144);
      if (v146 < 0x39)
      {
        goto LABEL_269;
      }

      v147 = -v144;
      v148 = *(v145 + 28);
      if (v148)
      {
        v149 = (v303 + v148 + *(v303 + v148));
        if (*v149)
        {
          *(a1 + 2112) = 1;
          v150 = (v149 + v149[1] + 4);
          v151 = (v150 - *v150);
          if (*v151 >= 9u && (v152 = v151[4]) != 0)
          {
            v153 = *(v150 + v152);
          }

          else
          {
            v153 = 0;
          }

          *(a1 + 2312) = v153;
          *(a1 + 2316) = 1;
          v154 = *v303;
          v147 = -v154;
          v146 = *(v303 - v154);
        }
      }

      if (v146 < 0x3B)
      {
        goto LABEL_269;
      }

      v155 = v303 + v147;
      if (*(v155 + 29))
      {
        v156 = (v303 + *(v155 + 29) + *(v303 + *(v155 + 29)));
        v157 = *v156;
        if (v157)
        {
          v158 = v156 + 1;
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (!(v160 >> 20))
            {
              *(a1 + 2096 + 8 * (v159 > 0x3F)) |= 1 << v159;
            }

            --v157;
          }

          while (v157);
        }
      }

      if (v146 < 0x57)
      {
LABEL_269:
        LODWORD(v161) = 0;
      }

      else
      {
        v161 = *(v155 + 43);
        if (*(v155 + 43))
        {
          LODWORD(v161) = *(v303 + v161);
        }
      }

      *(a1 + 1300) = v161;
      v162 = (v303 - *v303);
      if (*v162 >= 0x21u && (v163 = v162[16]) != 0)
      {
        v164 = *(v303 + v163);
      }

      else
      {
        v164 = 0;
      }

      v165 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1304) = getAdditionalSpillBufferBytes(void)::extra + v164;
      v166 = v303;
      v167 = (v303 - *v303);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v303 + v168);
        }
      }

      *(a1 + 1328) = v168;
      v169 = (v303 - *v303);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v303 + v170);
        }
      }

      *(a1 + 1332) = v170;
      v171 = (v303 - *v303);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v303 + v172);
        }
      }

      *(a1 + 1340) = v172;
      v173 = (v303 - *v303);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v303 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_298;
          }

          v175 = v173[19];
          goto LABEL_292;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v303 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_298;
          }

          if (v174 < 0x29)
          {
            goto LABEL_498;
          }

          if (v173[20] && *(v303 + v173[20]))
          {
LABEL_292:
            v176 = 1;
            goto LABEL_499;
          }

          if (v174 >= 0x71 && (v291 = v173[56]) != 0)
          {
            v176 = *(v303 + v291) != 0;
          }

          else
          {
LABEL_498:
            v176 = 0;
          }

LABEL_499:
          if (v175)
          {
            LOBYTE(v175) = *(v303 + v175) != 0;
          }

LABEL_298:
          *(a1 + 1350) = v175;
          v177 = (v305 - *v305);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v305 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v305 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v305 + v181);
                }

LABEL_310:
                *(a1 + 1392) = v179 | (v180 << 32);
                *(a1 + 1400) = v181;
                *(a1 + 1354) = (v176 | v175) & 1;
                v182 = *v303;
                v183 = (v303 - v182);
                v184 = *(v303 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v303 + v185) != 0;
                  }
                }

                *(a1 + 1349) = v185;
                v186 = (v305 - *v305);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v305 + v188) != 0;
                  }
                }

                *(a1 + 1355) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v303 + v189 + *(v303 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 1357) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 1351) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v305 + v194) != 0;
                  }

                  *(a1 + 1351) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v305 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 2193) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v303 + v197) != 0;
                  }
                }

                *(a1 + 1356) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 2195) = 1;
                  v199 = (v305 + v198 + *(v305 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_351;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_350:
                          v208 = *(v203 + v207);
                          goto LABEL_351;
                        }
                      }

                      v208 = 0;
LABEL_351:
                      v209 = v302;
LABEL_352:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_352;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = *(v209 + 8);
                        if (!v210)
                        {
                          goto LABEL_356;
                        }
                      }

                      v78 = v304;
                      *(v209 + 32) = v206;
                      if (v199 == v201)
                      {
                        v166 = v303;
                        v213 = *v303;
                        v196 = -v213;
                        v165 = &qword_2A17A1000;
                        if (*(v303 - v213) < 0x21u)
                        {
LABEL_366:
                          v212 = 0;
                          {
                            goto LABEL_504;
                          }

                          goto LABEL_369;
                        }

LABEL_362:
                        if (*(v166 + v196 + 32))
                        {
                          v212 = *(v166 + *(v166 + v196 + 32));
                          {
                            goto LABEL_369;
                          }
                        }

                        else
                        {
                          v212 = 0;
                          {
                            goto LABEL_369;
                          }
                        }

LABEL_504:
                        {
                          *(v165 + 402) = 0;
                        }

LABEL_369:
                        v214 = *(v165 + 402) + v212;
                        *(a1 + 1296) = v214;
                        v215 = (v303 - *v303);
                        if (*v215 < 0x43u)
                        {
                          LODWORD(v216) = 0;
                        }

                        else
                        {
                          v216 = v215[33];
                          if (v216)
                          {
                            LODWORD(v216) = *(v303 + v216);
                          }
                        }

                        *(a1 + 1308) = v216;
                        v217 = (v303 - *v303);
                        if (*v217 < 5u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[2];
                          if (v218)
                          {
                            LODWORD(v218) = *(v303 + v218);
                          }
                        }

                        *(a1 + 1292) = v218;
                        v219 = (v303 - *v303);
                        if (*v219 < 0x51u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[40];
                          if (v220)
                          {
                            LODWORD(v220) = *(v303 + v220);
                          }
                        }

                        *(a1 + 1324) = v220;
                        v221 = (v303 - *v303);
                        if (*v221 < 0x4Fu)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[39];
                          if (v222)
                          {
                            LODWORD(v222) = *(v303 + v222);
                          }
                        }

                        *(a1 + 1336) = v222;
                        *(a1 + 1344) = *(a5 + 468);
                        v223 = (v303 - *v303);
                        if ((*(v303 + v223[6] + *(v303 + v223[6])) | v214) != 0 || v176)
                        {
                          LOBYTE(v224) = 1;
                          v225 = v305;
                          goto LABEL_399;
                        }

                        v226 = *v223;
                        v225 = v305;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v223[16])
                        {
                          v227 = *(v303 + v223[16]);
                          if (v226 >= 0x43)
                          {
LABEL_488:
                            if (v223[33])
                            {
                              v228 = *(v303 + v223[33]);
                              {
                                goto LABEL_490;
                              }

                              goto LABEL_393;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_488;
                          }
                        }

                        v228 = 0;
                        {
LABEL_490:
                          {
                            *(v165 + 402) = 0;
                          }
                        }

LABEL_393:
                        if (v228 + v227 + *(v165 + 402))
                        {
                          LOBYTE(v224) = 1;
                        }

                        else
                        {
                          v229 = (v303 - *v303);
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v224) = 0;
                          }

                          else
                          {
                            v224 = v229[47];
                            if (v224)
                            {
                              LOBYTE(v224) = *(v303 + v224) != 0;
                            }
                          }
                        }

LABEL_399:
                        *(a1 + 1348) = v224;
                        v230 = (v225 - *v225);
                        if (*v230 < 0x11u)
                        {
                          LODWORD(v231) = 0;
                        }

                        else
                        {
                          v231 = v230[8];
                          if (v231)
                          {
                            LODWORD(v231) = *(v225 + v231);
                          }
                        }

                        v232 = a2 + 6328;
                        v233 = (a1 + 2056);
                        v234 = (a1 + 1808);
                        *(a1 + 2000) = v231;
                        {
                          v233 = (a1 + 2056);
                          if (v292)
                          {
                            v233 = (a1 + 2056);
                          }
                        }

                        v235 = (v78 + 3);
                        if (v78[4])
                        {
                          v236 = v78[3] == 0;
                        }

                        else
                        {
                          v236 = 1;
                        }

                        v237 = (v78 + 73);
                        if (v236)
                        {
                          v238 = v78 + 73;
                        }

                        else
                        {
                          v238 = v78 + 3;
                        }

                        v239 = v238[1];
                        v240 = 168;
                        if (a7)
                        {
                          v240 = 504;
                        }

                        v241 = v232 + v240;
                        v242 = v78;
                        if (a7)
                        {
                          v243 = 0x1000000000;
                        }

                        else
                        {
                          v243 = 0;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v241, v239, v233);
                        *(a1 + 2088) += *&__dst[16];
                        v244 = *&__dst[16];
                        *v234 = *__dst;
                        *(a1 + 1824) = v244;
                        *(a1 + 1833) = *&__dst[25];
                        *(a1 + 1528) = *(a1 + 1808) + v243;
                        *(a1 + 1560) = v241;
                        v245 = *(a1 + 1824);
                        *(a1 + 1568) = *v234;
                        *(a1 + 1584) = v245;
                        *(a1 + 1593) = *(a1 + 1833);
                        if (*v235)
                        {
                          v246 = v242[4];
                          if (v246)
                          {
                            v247 = *v235;
                          }

                          else
                          {
                            v247 = v242[73];
                          }

                          if (v246)
                          {
                            v237 = v235;
                          }
                        }

                        else
                        {
                          v247 = *v237;
                        }

                        memcpy(*(a1 + 1816), v247, v237[1]);
                        v248 = *(a1 + 1816);
                        v249 = *(a1 + 1824);
                        *(a1 + 1536) = *(a1 + 1528);
                        *(a1 + 1544) = v248;
                        *(a1 + 1552) = v249;
                        v250 = (v242 + 8);
                        if (v242[8])
                        {
                          if (v242[9])
                          {
                            v251 = v242 + 8;
                          }

                          else
                          {
                            v251 = v242 + 78;
                          }

                          v252 = v251[1];
                          if (!v252)
                          {
                            goto LABEL_439;
                          }
                        }

                        else
                        {
                          v252 = v242[79];
                          if (!v252)
                          {
                            goto LABEL_439;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v252, (a1 + 2064));
                        *(a1 + 2088) += *&__dst[16];
                        v253 = *&__dst[16];
                        *(a1 + 1856) = *__dst;
                        *(a1 + 1872) = v253;
                        *(a1 + 1881) = *&__dst[25];
                        v254 = *(a1 + 1872);
                        *(a1 + 1616) = *(a1 + 1856);
                        *(a1 + 1632) = v254;
                        *(a1 + 1641) = *(a1 + 1881);
                        if (*v250)
                        {
                          v255 = v242[9];
                          if (v255)
                          {
                            v256 = *v250;
                          }

                          else
                          {
                            v256 = v242[78];
                          }

                          if (v255)
                          {
                            v257 = v242 + 8;
                          }

                          else
                          {
                            v257 = v242 + 78;
                          }
                        }

                        else
                        {
                          v257 = v242 + 78;
                          v256 = v242[78];
                        }

                        memcpy(*(a1 + 1864), v256, v257[1]);
LABEL_439:
                        v258 = (v242 + 13);
                        if (v242[13])
                        {
                          if (v242[14])
                          {
                            v259 = v242 + 13;
                          }

                          else
                          {
                            v259 = v242 + 83;
                          }

                          v260 = v259[1];
                          if (!v260)
                          {
                            goto LABEL_455;
                          }
                        }

                        else
                        {
                          v260 = v242[84];
                          if (!v260)
                          {
                            goto LABEL_455;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v260, (a1 + 2072));
                        *(a1 + 2088) += *&__dst[16];
                        v261 = *&__dst[16];
                        *(a1 + 1904) = *__dst;
                        *(a1 + 1920) = v261;
                        *(a1 + 1929) = *&__dst[25];
                        v262 = *(a1 + 1920);
                        *(a1 + 1664) = *(a1 + 1904);
                        *(a1 + 1680) = v262;
                        *(a1 + 1689) = *(a1 + 1929);
                        if (*v258)
                        {
                          v263 = v242[14];
                          if (v263)
                          {
                            v264 = *v258;
                          }

                          else
                          {
                            v264 = v242[83];
                          }

                          if (v263)
                          {
                            v265 = v242 + 13;
                          }

                          else
                          {
                            v265 = v242 + 83;
                          }
                        }

                        else
                        {
                          v265 = v242 + 83;
                          v264 = v242[83];
                        }

                        memcpy(*(a1 + 1912), v264, v265[1]);
                        v266 = *(a1 + 1920);
                        *(a1 + 1760) = *(a1 + 1904);
                        *(a1 + 1776) = v266;
LABEL_455:
                        v267 = v242 + 23;
                        if (v242[23])
                        {
                          if (!v242[24])
                          {
                            v267 = v242 + 93;
                          }

                          v268 = v267[1];
                          if (v268)
                          {
LABEL_459:
                            AGX::Heap<true>::allocateImpl(__dst, v232, v268, (a1 + 2080));
                            *(a1 + 2088) += *&__dst[16];
                            v269 = *&__dst[16];
                            *(a1 + 1952) = *__dst;
                            *(a1 + 1968) = v269;
                            *(a1 + 1977) = *&__dst[25];
                            v270 = *(a1 + 1968);
                            *(a1 + 1712) = *(a1 + 1952);
                            *(a1 + 1728) = v270;
                            *(a1 + 1737) = *(a1 + 1977);
                            v271 = *(a1 + 1968);
                            *(a1 + 1784) = *(a1 + 1952);
                            *(a1 + 1800) = v271;
                          }
                        }

                        else
                        {
                          v268 = v242[94];
                          if (v268)
                          {
                            goto LABEL_459;
                          }
                        }

                        if ((*(a1 + 1496) & 1) != 0 || *(*(a1 + 616) + 16945) == 1)
                        {
                          {
                            {
                              v273 = v300;
                              if (*(a1 + 1447) < 0)
                              {
                                v273 = *v300;
                              }

                              v274 = v298;
                              if (*(a1 + 1495) < 0)
                              {
                                v274 = v298->__r_.__value_.__r.__words[0];
                              }

                              v275 = v299;
                              if (*(a1 + 1471) < 0)
                              {
                                v275 = *v299;
                              }

                              v276 = *(a1 + 1408);
                              v277 = *(a1 + 1416);
                              v278 = v297;
                              if (*(a1 + 1527) < 0)
                              {
                                v278 = *v297;
                              }

                              v279 = *(a1 + 1528);
                              v280 = *(a1 + 1824);
                              *__dst = 136448002;
                              *&__dst[4] = v273;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v274;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v275;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v276;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v277;
                              *v309 = 2082;
                              *&v309[2] = v278;
                              *&v309[10] = 2050;
                              *&v309[12] = v279;
                              v310 = 2050;
                              v311 = v280;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v272, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v281 = *(a1 + 616);
                          v282 = v300;
                          if (*(a1 + 1447) < 0)
                          {
                            v282 = *v300;
                          }

                          v283 = v298;
                          if (*(a1 + 1495) < 0)
                          {
                            v283 = v298->__r_.__value_.__r.__words[0];
                          }

                          v284 = v299;
                          if (*(a1 + 1471) < 0)
                          {
                            v284 = *v299;
                          }

                          v285 = v297;
                          if (*(a1 + 1527) < 0)
                          {
                            v285 = *v297;
                          }

                          v286 = *(a1 + 1408);
                          v287 = *(a1 + 1416);
                          v288 = *(a1 + 1528);
                          v289 = *(a1 + 1824);
                          v290 = *(a1 + 1496);
                          *__dst = v282;
                          *&__dst[8] = v283;
                          *&__dst[16] = v284;
                          *&__dst[24] = v285;
                          *&__dst[32] = v286;
                          *&__dst[40] = v287;
                          *v309 = v288;
                          *&v309[8] = v289;
                          v309[16] = v290;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v281, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2195) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_366;
                }

                goto LABEL_362;
              }
            }
          }

          v181 = 0;
          goto LABEL_310;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_298;
    }

    v66 = (v65 + *v65);
    v67 = (v66 - *v66);
    v68 = *v67;
    if (v67[2])
    {
      v69 = (v66 + v67[2] + *(v66 + v67[2]));
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v69 = 0;
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    v70 = v67[3];
    if (v70)
    {
      v71 = v66 + v70 + *(v66 + v70);
      if (!*v69)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v71 = 0;
    if (!*v69)
    {
      goto LABEL_126;
    }

LABEL_116:
    v72 = 0;
    v73 = v71 + 4;
    v74 = (v69 + 2);
    while (1)
    {
      v75 = *(v74 - 1);
      v76 = strlen(&v74[v75]);
      if (v76 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v77 = v76;
      if (v76 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v76;
      if (v76)
      {
        memmove(__dst, &v74[v75], v76);
      }

      __dst[v77] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2320, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v73[4 * v72];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2344, __dst);
      ++v72;
      v74 += 4;
      if (v72 >= *v69)
      {
        goto LABEL_126;
      }
    }

LABEL_501:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 < 0x45)
  {
    if (v28 < 0x3D)
    {
      LOWORD(v33) = 0;
      if (v28 < 0x3B)
      {
        LODWORD(v35) = 0;
        v36 = 0;
        LOWORD(v32) = 0;
        v34 = 0;
LABEL_56:
        *(a1 + 1168) = v35;
        v37 = v33 + v35 - 1;
        v38 = -v35;
        v39 = *(a1 + 1176);
        v40 = (v32 | ((v38 & v37) << 32) | (v34 << 48)) + v36 + (v39 & 0xFF000000);
        *(a1 + 1176) = v40;
        if (v40 != v39)
        {
          *(a1 + 1200) = 0uLL;
          *(a1 + 1216) = 0uLL;
          *(a1 + 1184) = 0uLL;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(a1 + 1232) = v41;
          *(a1 + 1248) = v41;
          *(a1 + 1264) = v41;
          *(a1 + 1280) = -1;
        }

        v42 = (v24 - *v24);
        if (*v42 < 0x57u)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          v43 = v42[43];
          if (v43)
          {
            LODWORD(v43) = *(v24 + v43);
          }
        }

        *(a1 + 1288) = v43;
        v44 = *v24;
        v26 = -v44;
        v28 = *(v24 - v44);
        goto LABEL_63;
      }

      LOWORD(v32) = 0;
      v34 = v27[29];
      if (!v27[29])
      {
LABEL_41:
        if (v28 < 0x3F)
        {
          LODWORD(v35) = 0;
          v36 = 0;
        }

        else
        {
          v35 = v27[31];
          if (v27[31])
          {
            v35 = *(v24 + v35);
          }

          if (v28 < 0x4B)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27[37];
            if (v27[37])
            {
              v36 = *(v24 + v36) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v34 = *(v24 + v34);
      goto LABEL_41;
    }

    LOWORD(v32) = 0;
    v33 = v27[30];
    if (v27[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v32 = v27[34];
    if (v27[34])
    {
      LODWORD(v32) = *(v24 + v32);
    }

    v33 = v27[30];
    if (v27[30])
    {
LABEL_38:
      LODWORD(v33) = *(v24 + v33);
    }
  }

  v34 = v27[29];
  if (!v27[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}