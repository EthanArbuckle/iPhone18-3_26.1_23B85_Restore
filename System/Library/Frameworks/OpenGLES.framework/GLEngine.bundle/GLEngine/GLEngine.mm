uint64_t gliInitializeLibrary(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  gfxInitializeLibrary();
  result = ShInitializeLibrary();
  gle_io_data = a4;
  gle_lib_init = a5;
  return result;
}

uint64_t gliGetVersion(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = 2;
  *a2 = 3;
  *a3 = 0x20000;
  os_unfair_lock_lock(&gliGetVersion_gli_initialize_lock);
  if (gliGetVersion_gli_initialized)
  {
    v3 = 1;
  }

  else
  {
    glePreInitGlobals();
    cvmPreInit();
    if (gfxGetPlugins())
    {
      v3 = 1;
      gliGetVersion_gli_initialized = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&gliGetVersion_gli_initialize_lock);
  return v3;
}

__n128 glePreInitGlobals()
{
  v0 = 0;
  gle_globals_struct[0] = gleFeedbackPointsPtr;
  qword_28144D688 = gleFeedbackPointsPtr;
  qword_28144D650 = gleSelectPointsPtr;
  qword_28144D690 = gleSelectPointsPtr;
  qword_28144D658 = gleFeedbackLinesPtr;
  qword_28144D698 = gleFeedbackLinesPtr;
  qword_28144D660 = gleSelectLinesPtr;
  qword_28144D6A0 = gleSelectLinesPtr;
  qword_28144D668 = gleFeedbackPolygonPtr;
  qword_28144D6A8 = gleFeedbackPolygonPtr;
  qword_28144D670 = gleSelectPolygonPtr;
  qword_28144D6B0 = gleSelectPolygonPtr;
  qword_28144D678 = glePopMaterials;
  qword_28144D6B8 = glePopMaterials;
  qword_28144D680 = glePopAndCopyMaterials;
  qword_28144D6C0 = glePopAndCopyMaterials;
  v1 = xmmword_23A1036B0;
  v2 = vdupq_n_s32(0x3B808081u);
  v3.i64[0] = 0x400000004;
  v3.i64[1] = 0x400000004;
  do
  {
    *&gle_globals_struct[v0 + 16] = vmulq_f32(vcvtq_f32_u32(v1), v2);
    v1 = vaddq_s32(v1, v3);
    v0 += 2;
  }

  while (v0 != 128);
  qword_28144DAC8 = 0x101010403040304;
  result.n128_u64[0] = 0x404040404040404;
  result.n128_u64[1] = 0x404040404040404;
  unk_28144DAE0 = result;
  unk_28144DAD0 = result;
  qword_28144DAF0 = 0x101010101010101;
  byte_28144DAE9 = 4;
  return result;
}

uint64_t gliChoosePixelFormat(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 10014;
  }

  *a1 = 0;
  if (!a2)
  {
    return 10014;
  }

  Plugins = gfxGetPlugins();
  if (!Plugins)
  {
    return 10015;
  }

  v5 = Plugins;
  v13 = 0;
  v6 = a1;
  do
  {
    v7 = (*(v5 + 1128))(&v13, a2);
    v8 = v7;
    if (v13)
    {
      *v6 = v13;
      v6 = v13;
      for (i = *(v13 + 8); ; i = *(v10 + 8))
      {
        *(v6 + 2) = i | 0x20000;
        v10 = *v6;
        if (!*v6)
        {
          break;
        }

        v6 = *v6;
        v13 = v10;
      }
    }

    v5 = *v5;
    if (v5)
    {
      v11 = v7 == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  while (v11);
  if (v7 && *a1)
  {
    j__gliDestroyPixelFormat();
  }

  return v8;
}

uint64_t gliDestroyPixelFormat(uint64_t *a1)
{
  if (!a1)
  {
    return 10014;
  }

  v1 = a1;
  LODWORD(v2) = 0;
  do
  {
    v3 = v1;
    v4 = *(v1 + 2);
    do
    {
      v1 = *v1;
    }

    while (v1 && ((v4 ^ *(v1 + 2)) & 0xFF00) == 0);
    PluginWithDriverID = gfxGetPluginWithDriverID();
    if (PluginWithDriverID)
    {
      v6 = (*(PluginWithDriverID + 1136))(v3);
    }

    else
    {
      v6 = 10015;
    }

    if (v2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      v2 = v2;
    }

    else
    {
      v2 = v6;
    }
  }

  while (v1);
  return v2;
}

uint64_t gliCreateContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *(a3 + 29792) == 878944803)
  {
    j__gliCreateContextWithShared();
  }

  return 10009;
}

uint64_t gliCreateContextWithShared(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 10014;
  }

  *a1 = 0;
  if ((a6 & 0x20) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = (a6 >> 3) & 2;
  }

  if ((a6 & 0x40) != 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 10002;
  }

  SharedState = a3;
  v14 = 0;
  v15 = 0;
  memset(v81, 0, sizeof(v81));
  v16 = 255;
  v17 = a2;
  do
  {
    v18 = *(v17 + 2);
    if ((v18 & 0xFF0000) != 0x20000 || v14 > 0xB)
    {
      return 10002;
    }

    if ((*(v17 + 3) & 0x40) == 0)
    {
      v15 = 1;
    }

    if ((v17[1] & 0x7F00) == 0x400)
    {
      v16 = v14;
    }

    *(v81 + v14++) = v18;
    v17 = *v17;
  }

  while (v17);
  if ((a6 & 1) != 0 && v15)
  {
    if (v16 == 255)
    {
      if (v14 - 1 > 0xA)
      {
        return 10002;
      }

      *(v81 + v14) = *MEMORY[0x277CD93C8];
      LOBYTE(v16) = v14;
      LODWORD(v14) = v14 + 1;
    }
  }

  else
  {
    LOBYTE(v16) = -1;
  }

  if (!a3)
  {
    SharedState = gfxCreateSharedState();
    if (SharedState)
    {
      goto LABEL_30;
    }

    return 10002;
  }

  if (!gfxCompareSharedState())
  {
    return 10009;
  }

LABEL_30:
  v80 = a2;
  v71 = a1;
  gfxRetainSharedStateAndHash();
  v21 = malloc_type_calloc(1uLL, (1672 * v14 + 32512), 0x8B91BE10uLL);
  if (!v21)
  {
    abort();
  }

  v22 = v21;
  v23 = v21 + 28672;
  __CFSetLastAllocationEventName();
  *(v22 + 2272) = 65540;
  v76 = a6;
  v24 = a6 >> 26;
  if (a6 >> 26 >= v14)
  {
    v24 = 0;
  }

  v23[3826] = v24;
  v23[3825] = v16;
  v23[3827] = v24;
  v74 = v24;
  v75 = v23;
  v23[3828] = v24;
  v23[3824] = v14;
  *(v22 + 28976) = a4;
  *(v22 + 28984) = a5;
  v77 = SharedState;
  v25 = SharedState + 352;
  v26 = (v22 + 32512);
  v23[3829] = v10;
  v27 = 0;
  v78 = 1672 * v14;
  v79 = getpagesize();
  v28 = 1;
  v29 = v80;
  v30 = v80;
  v72 = v14;
  v73 = v25;
  while (1)
  {
    v31 = v30 ? v30 : v29;
    v32 = &v26[v27 / 8];
    *(v32 + 416) = *(v25 + 24);
    v33 = v22 + v27;
    v34 = *(v25 + 8);
    *(v33 + 34160) = v34;
    *(v33 + 32520) = *v25;
    *(v32 + 191) = 8;
    *(v32 + 159) = v10;
    *(v32 + 150) = 134283263;
    *(v32 + 648) = -113;
    *(v32 + 652) = -113;
    *(v33 + 32664) = 0x338000083F800000;
    *(v32 + 197) = 1;
    *(v32 + 536) = 1;
    *(v32 + 41) = BYTE1(v26[v27 / 8 + 5]) & 0x80;
    v32[82] = v79;
    v35 = (*(v34 + 1160))();
    if (v35)
    {
      break;
    }

    if ((v31[3] & 0x3FFFFFFC) != 0)
    {
      HIDWORD(v26[v27 / 8 + 8]) = 538976288;
    }

    v36 = &v26[v27 / 8];
    v37 = v26[v27 / 8 + 82];
    if (v37 >= 0x4000)
    {
      v37 = 0x4000;
    }

    v36[82] = v37;
    v29 = v80;
    if ((v10 - 2) < 2)
    {
      *(v36 + 20) = vmin_s32(*(v36 + 20), 0x100000001000);
      v38 = *(v36 + 88);
      if (v38 >= 0x1000)
      {
        LOWORD(v38) = 4096;
      }

      *(v36 + 88) = v38;
      v39 = *(v36 + 91);
      if (v39 >= 0x1000)
      {
        LOWORD(v39) = 4096;
      }

      *(v36 + 91) = v39;
      v40 = *(v36 + 92);
      if (v40 >= 0x1000)
      {
        LOWORD(v40) = 4096;
      }

      *(v36 + 92) = v40;
      v41 = *(v36 + 186);
      if (v41 >= 4)
      {
        LOBYTE(v41) = 4;
      }

      *(v36 + 186) = v41;
      v42 = *(v36 + 85);
      if (v42 >= 8)
      {
        LOWORD(v42) = 8;
      }

      *(v36 + 85) = v42;
      v43 = *(v36 + 191);
      if (v43 >= 8)
      {
        LOBYTE(v43) = 8;
      }

      *(v36 + 191) = v43;
      v44 = *(v36 + 86);
      if (v44 >= 8)
      {
        LOWORD(v44) = 8;
      }

      *(v36 + 86) = v44;
      v45 = *(v36 + 90);
      if (v45 >= 0x200)
      {
        v45 = 512;
      }

      *(v36 + 90) = v45;
      v46 = *(v36 + 116);
      if (v46 >= 0x20)
      {
        v46 = 32;
      }

      *(v36 + 116) = v46;
      v47 = *(v36 + 174);
      if (v47 >= 0x100)
      {
        LOWORD(v47) = 256;
      }

      *(v36 + 174) = v47;
      *(v36 + 38) = *(v36 + 38) != 0;
      *(v36 + 37) = *(v36 + 37) != 0;
    }

    else if (!v10)
    {
      v48 = 16;
      v49 = 16;
      v50 = &v26[v27 / 8];
      if (WORD1(v26[v27 / 8 + 21]) <= 0x10u)
      {
        v49 = WORD1(v26[v27 / 8 + 21]);
      }

      *(v50 + 85) = v49;
      v51 = *(v50 + 191);
      if (v51 > 0x10)
      {
        LOBYTE(v51) = 16;
      }

      *(v50 + 191) = v51;
      v52 = *(v50 + 86);
      if (v52 > 0x10)
      {
        LOWORD(v52) = 16;
      }

      *(v50 + 86) = v52;
      v53 = *(v50 + 93);
      if (v53 >= 0x10)
      {
        v53 = 16;
      }

      *(v50 + 93) = v53;
      v54 = *(v50 + 99);
      if (v54 >= 0x10)
      {
        v54 = 16;
      }

      *(v50 + 99) = v54;
      if (*(v50 + 105) < 0x10u)
      {
        v48 = *(v50 + 105);
      }

      *(v50 + 105) = v48;
    }

    v30 = *v31;
    ++v28;
    v27 += 1672;
    v25 += 32;
    if (v78 == v27)
    {
      goto LABEL_84;
    }
  }

  if (1672 * v72 == v27)
  {
LABEL_84:
    v56 = &v26[209 * v74];
    v57 = *v56;
    *(v22 + 29016) = *v56;
    v58 = *(v73 + 32 * v74);
    *(v22 + 29024) = v58;
    v59 = v56 + 2;
    *(v22 + 29032) = v56 + 2;
    v60 = v56[206] + 1056;
    *(v22 + 29448) = v60;
    v61 = v56[207] + 32;
    *(v22 + 29456) = v61;
    *(v22 + 29488) = v22 + 29040;
    *(v22 + 29464) = v57;
    *(v22 + 29472) = v58;
    *(v22 + 29480) = v59;
    *(v22 + 29496) = v60;
    *(v22 + 29504) = v61;
    *(v22 + 19296) = v77;
    gfxSetShaderDetachFunc();
    gleSetSharedFreeFuncs();
    os_unfair_lock_lock(&gl_list_lock);
    v62 = v75[3829];
    if (!gl_list[v62])
    {
      gleCreateEnableHashTable(v62);
    }

    *(v22 + 27648) = 0;
    *(v22 + 27744) = 0u;
    v20 = gleInitializeContext(v22);
    if (v20)
    {
      goto LABEL_87;
    }

    if ((v76 & 2) != 0 && gleCreateCmdBufMachine(v22))
    {
      gleTerminateContext(v22);
      v20 = 10019;
LABEL_87:
      if (v75[3824])
      {
        v63 = 0;
        do
        {
          (*(v26[206] + 1176))(*v26);
          ++v63;
          v26 += 209;
        }

        while (v63 < v75[3824]);
      }

      gfxReleaseSharedStateAndHash();
      v64 = v75[3829];
      if (!gl_list[v64])
      {
        gleDestroyEnableHashTable(v64);
      }

      free(v22);
      os_unfair_lock_unlock(&gl_list_lock);
      return v20;
    }

    v66 = v75[3829];
    *(v22 + 29512) = gl_list[v66];
    gl_list[v66] = v22;
    os_unfair_lock_unlock(&gl_list_lock);
    v67 = xmmword_23A102AE0;
    v68 = -208;
    v69 = vdupq_n_s64(0x19uLL);
    v70 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v69, v67)).u8[0])
      {
        *(v22 + v68 + 29248) = 8;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v67)).i32[1])
      {
        *(v22 + v68 + 29256) = 8;
      }

      v67 = vaddq_s64(v67, v70);
      v68 += 16;
    }

    while (v68);
    gliInitDispatchTable(v22);
    v20 = 0;
    *v71 = v22;
  }

  else
  {
    v20 = v35;
    if (v27)
    {
      v65 = (v33 + 30840);
      do
      {
        (*(v65[206] + 1176))(*v65);
        --v28;
        v65 -= 209;
      }

      while (v28 > 1);
    }

    gfxReleaseSharedStateAndHash();
    free(v22);
  }

  return v20;
}

void gleCreateEnableHashTable(int a1)
{
  os_unfair_lock_lock(&gle_enable_hash_table_lock);
  if (!gle_enable_hash_table[a1])
  {
    v2 = malloc_type_malloc(0x2000uLL, 0x746FBC94uLL);
    if (!v2)
    {
      abort();
    }

    v3 = v2;
    for (i = 0; i != 0x2000; i += 32)
    {
      v5 = &v2[i];
      *v5 = 0;
      *(v5 + 1) = gleSetEnable_Error;
      *(v5 + 2) = 0;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        gleFillEnableHashTableEntriesES2(v2);
      }

      else if (a1 == 4)
      {
        gleFillEnableHashTableEntriesES2(v2);
        gleAddEnableHashFunc(v3, 35977, gleSetEnable_RASTERIZER_DISCARD_EXT);
        v6 = gleSetEnable_PRIMITIVE_RESTART;
        v7 = v3;
        v8 = 36201;
LABEL_11:
        gleAddEnableHashFunc(v7, v8, v6);
      }

      gle_enable_hash_table[a1] = v3;
      goto LABEL_13;
    }

    gleAddEnableHashFunc(v2, 34913, gleSetEnable_POINT_SPRITE_ARB);
    gleAddEnableHashFunc(v3, 2912, gleSetEnable_FOG);
    gleAddEnableHashFunc(v3, 2896, gleSetEnable_LIGHTING);
    gleAddEnableHashFunc(v3, 3553, gleSetEnable_TEXTURE_2D);
    gleAddEnableHashFunc(v3, 2884, gleSetEnable_CULL_FACE);
    gleAddEnableHashFunc(v3, 3042, gleSetEnable_BLEND);
    gleAddEnableHashFunc(v3, 3058, gleSetEnable_COLOR_LOGIC_OP);
    gleAddEnableHashFunc(v3, 3024, gleSetEnable_DITHER);
    gleAddEnableHashFunc(v3, 2960, gleSetEnable_STENCIL_TEST);
    gleAddEnableHashFunc(v3, 2929, gleSetEnable_DEPTH_TEST);
    gleAddEnableHashFunc(v3, 12288, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 12289, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 12290, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 12291, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 12292, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 12293, gleSetEnable_CLIP_PLANE);
    gleAddEnableHashFunc(v3, 0x4000, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16385, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16386, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16387, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16388, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16389, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16390, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 16391, gleSetEnable_LIGHT);
    gleAddEnableHashFunc(v3, 2832, gleSetEnable_POINT_SMOOTH);
    gleAddEnableHashFunc(v3, 2848, gleSetEnable_LINE_SMOOTH);
    gleAddEnableHashFunc(v3, 3089, gleSetEnable_SCISSOR_TEST);
    gleAddEnableHashFunc(v3, 2903, gleSetEnable_COLOR_MATERIAL);
    gleAddEnableHashFunc(v3, 2977, gleSetEnable_NORMALIZE);
    gleAddEnableHashFunc(v3, 32826, gleSetEnable_RESCALE_NORMAL_EXT);
    gleAddEnableHashFunc(v3, 32823, gleSetEnable_POLYGON_OFFSET_FILL);
    gleAddEnableHashFunc(v3, 32925, gleSetEnable_MULTISAMPLE);
    gleAddEnableHashFunc(v3, 32926, gleSetEnable_SAMPLE_ALPHA_TO_COVERAGE);
    gleAddEnableHashFunc(v3, 32927, gleSetEnable_SAMPLE_ALPHA_TO_ONE);
    gleAddEnableHashFunc(v3, 32928, gleSetEnable_SAMPLE_COVERAGE);
    gleAddEnableHashFunc(v3, 34880, gleSetEnable_MATRIX_PALETTE_OES);
    v6 = gleSetEnable_ALPHA_TEST;
    v7 = v3;
    v8 = 3008;
    goto LABEL_11;
  }

LABEL_13:

  os_unfair_lock_unlock(&gle_enable_hash_table_lock);
}

char *gleAddEnableHashFunc(char *result, int a2, uint64_t a3)
{
  v5 = &result[32 * ((a2 + 7) ^ BYTE1(a2))];
  if (*v5)
  {
    result = malloc_type_malloc(0x20uLL, 0x746FBC94uLL);
    if (!result)
    {
      abort();
    }

    *result = *v5;
    *(result + 8) = *(v5 + 8);
    *v5 = a2;
    *(v5 + 1) = a3;
    *(v5 + 2) = result;
  }

  else
  {
    *v5 = a2;
    *(v5 + 1) = a3;
    *(v5 + 2) = 0;
  }

  return result;
}

uint64_t gleInitializeContext(uint64_t a1)
{
  *(a1 + 29632) = 0;
  *(a1 + 29008) = 0;
  v2 = a1 + 27792;
  *(a1 + 29828) = 0;
  v3 = a1 + 32470;
  *(a1 + 32483) = *(*(a1 + 29032) + 41);
  *(a1 + 19240) = gle_globals_struct;
  *(a1 + 29792) = 878944803;
  *(a1 + 19288) = 0;
  *(a1 + 26000) = 0;
  *(a1 + 19304) = 0;
  *(a1 + 24192) = 0;
  *(a1 + 1432) = 0u;
  *(a1 + 1424) = 0;
  *(a1 + 1456) = 0u;
  *(a1 + 24400) = 0u;
  *(a1 + 24416) = 0u;
  *(a1 + 24432) = 0u;
  *(a1 + 24448) = 0u;
  *(a1 + 24464) = 0u;
  *(a1 + 24480) = 0u;
  *(a1 + 24496) = 0u;
  *(a1 + 24512) = 0u;
  *(a1 + 24528) = 0u;
  *(a1 + 24544) = 0u;
  *(a1 + 24560) = 0u;
  *(a1 + 24576) = 0u;
  *(a1 + 24592) = 0;
  v4 = *(a1 + 32496);
  if (*(a1 + 32496))
  {
    v5 = a1 + 33504;
    v6 = *(a1 + 32496);
    do
    {
      *(v5 + 32) = 0;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      v5 += 1672;
      --v6;
    }

    while (v6);
  }

  *(a1 + 24176) = 0uLL;
  *(a1 + 24160) = 0uLL;
  *(a1 + 24144) = 0uLL;
  *(a1 + 24128) = 0uLL;
  *(a1 + 24112) = 0uLL;
  *(a1 + 24096) = 0uLL;
  *(a1 + 24080) = 0uLL;
  *(a1 + 24064) = 0uLL;
  *(a1 + 24048) = 0uLL;
  *(a1 + 24032) = 0uLL;
  *(a1 + 24016) = 0uLL;
  *(a1 + 24000) = 0uLL;
  *(a1 + 23984) = 0uLL;
  *(a1 + 23968) = 0uLL;
  *(a1 + 23952) = 0uLL;
  *(a1 + 23936) = 0uLL;
  *(a1 + 18696) = 0;
  *(a1 + 29536) = 0;
  *(a1 + 18712) = 0;
  *(a1 + 29552) = 0;
  *(a1 + 18728) = 0;
  *(a1 + 29568) = 0;
  *(a1 + 26304) = 0;
  bzero((a1 + 20776), 0xBB0uLL);
  *(a1 + 26384) = 0u;
  *(a1 + 28944) = 0u;
  *(a1 + 28960) = 0u;
  if (v4)
  {
    v7 = (a1 + 33592);
    do
    {
      *v7 = 0;
      v7[1] = 0;
      v7 += 209;
      --v4;
    }

    while (v4);
  }

  *(a1 + 28992) = 0;
  *(a1 + 18792) = 0;
  *(a1 + 18864) = 0;
  *(a1 + 18936) = 0;
  *(a1 + 19008) = 0;
  *(a1 + 24768) = 0u;
  *(a1 + 27872) = glgCreateProcessor();
  gleLLVMInit(a1);
  v8 = gleAllocVertexMachine(a1, 36);
  if (v8 || (v8 = gleAllocMaterials(a1), v8))
  {
    v9 = v8;
LABEL_10:
    gleTerminateContext(a1);
    return v9;
  }

  gleShareEnableHashTable(a1);
  *(a1 + 28840) = 0x20000000000000;
  *(a1 + 28912) = a1 + 28888;
  *(a1 + 28904) = a1 + 28888;
  *(a1 + 28896) = a1 + 28888;
  *(a1 + 28888) = a1 + 28888;
  *(a1 + 28920) = 0;
  *(a1 + 28936) = 0;
  *(a1 + 28928) = 0;
  *(a1 + 28848) = 0u;
  *(a1 + 28864) = 0u;
  *(a1 + 28880) = 0;
  gleInitConstants(a1);
  v11 = malloc_type_malloc(0x2F00uLL, 0x746FBC94uLL);
  if (!v11)
  {
    goto LABEL_24;
  }

  *(a1 + 19288) = v11;
  __CFSetLastAllocationEventName();
  if (!*(a1 + 19288))
  {
    v9 = 0;
    goto LABEL_10;
  }

  v12 = malloc_type_malloc(0x10uLL, 0x746FBC94uLL);
  if (!v12)
  {
LABEL_24:
    abort();
  }

  *(a1 + 29520) = v12;
  v12[2] = 0;
  *v12 = 0;
  *(v2 + 1924) = vdupq_n_s32(0xBFEFFBFE);
  *(v2 + 1940) = -1074791426;
  memset_pattern16((a1 + 29736), &unk_23A103730, 0x20uLL);
  *(v3 + 7) = 257;
  v13 = *(v3 + 26);
  if (*(v3 + 26))
  {
    v14 = 0;
    v15 = 0;
    v16 = v3 + 84;
    v17 = -1;
    do
    {
      v14 |= *(v16 + 75);
      v15 |= *v16;
      v17 &= *v16;
      v16 += 1672;
      --v13;
    }

    while (v13);
    *(v3 + 10) = v14;
    v18 = v17 & 0xFB10 | v15 & 0x4EFu;
  }

  else
  {
    LOWORD(v18) = -1264;
  }

  *(*(a1 + 19296) + 346) = v18;
  *(a1 + 18992) = a1 + 29640;
  *v2 = 0;
  *(v2 + 56) = 0;
  gleInitGLDState(a1 + 2272);
  *(a1 + 15196) = 1;
  *(a1 + 29836) = 0;
  *(a1 + 29844) = 0;
  if (*(v3 + 31) - 3 <= 1)
  {
    *(a1 + 15377) = 1;
  }

  gleInitGLIState(a1);
  *(a1 + 1536) = 0xE800000000000000;
  *(a1 + 1520) = 0u;
  *(a1 + 1544) = 0x7807000001000000;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0xFFFFFE00000000;
  *(a1 + 2216) = 0x89D8E67F00000000;
  *(v2 + 2008) = 0x20000000;
  gleSetBaseTCLState(a1);
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
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
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(v3 + 35) = 0;
  gleInitDerivedState(a1);
  gleInitTextureState(a1);
  gleInitShaderProgramState(a1);
  gleInitHashMachine((a1 + 26352));
  gleInitVertexArrayState(a1);
  gleInitPipelineProgramState(a1);
  gleInitBufferState(a1);
  gleInitHashMachine((a1 + 25872));
  gleInitQueryMachine(a1);
  gleInitTransformFeedback(a1);
  gleInitDrawCopyPixelsObject(a1);
  gleInitBitmapObject(a1);
  gleInitAccumObject(a1);
  gleUpdateState(a1);
  *(v2 + 1980) = 0;
  *(a1 + 29816) = 0;
  *(v2 + 2032) = 0;
  *(v3 + 33) = 0;
  *v3 = 0;
  *(v3 + 2) = 0;
  *(a1 + 19168) = 0u;
  *(a1 + 19184) = 0u;
  *(a1 + 19200) = 0u;
  *(v3 + 3) = *(v3 + 13) == 0;
  bzero((a1 + 26448), 0x368uLL);
  return 0;
}

uint64_t gleAllocVertexMachine(uint64_t a1, int a2)
{
  v5 = a2 + 12;
  v6 = v5 + a2;
  v7 = malloc_type_malloc(656 * v6 + 3840, 0x746FBC94uLL);
  if (!v7)
  {
    abort();
  }

  v8 = v7;
  __CFSetLastAllocationEventName();
  *(a1 + 26120) = a2;
  *(a1 + 26000) = v8 + 80;
  i64 = v8[40 * a2 + 80].i64;
  *(a1 + 26024) = i64;
  *(a1 + 26032) = &v8[40 * v5 + 80];
  v11 = v8[40 * v6 + 240].i64;
  *(a1 + 26088) = v11;
  *(a1 + 26096) = v11 + 8 * v6;
  *(a1 + 26008) = v8 + 80;
  *(a1 + 26016) = i64;
  *(a1 + 26104) = 0;
  *(a1 + 26112) = 0;
  *(a1 + 26056) = 0u;
  *(a1 + 26072) = 0u;
  v12 = &v8[40 * v6 + 80];
  if (v8 < v12)
  {
    v9.i64[0] = *(a1 + 288);
    v13 = vzip1q_s32(v9, v9);
    v13.i32[2] = v9.i32[0];
    do
    {
      v8[6] = v13;
      v8 += 40;
    }

    while (v8 < v12);
  }

  return 0;
}

uint64_t gleAllocMaterials(uint64_t a1)
{
  *(a1 + 1424) = a1 + 13824;
  *(a1 + 14324) = 0u;
  *(a1 + 14340) = 0;
  *(a1 + 1432) = a1 + 14352;
  *(a1 + 14852) = 0u;
  *(a1 + 14868) = 0;
  *(a1 + 1440) = 0;
  return 0;
}

uint64_t gleInitConstants(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v3) = info.numer;
  *(a1 + 432) = v2 / v3;
  *(a1 + 272) = xmmword_23A103680;
  *(a1 + 288) = xmmword_23A103690;
  *(a1 + 304) = xmmword_23A1036A0;
  *(a1 + 320) = vdupq_n_s32(0x3C010204u);
  *&v4 = 0x3000000030000000;
  *(&v4 + 1) = 0x3000000030000000;
  *(a1 + 336) = vdupq_n_s32(0x38000100u);
  *(a1 + 352) = v4;
  *(a1 + 368) = vdupq_n_s32(0x3B808081u);
  *(a1 + 384) = vdupq_n_s32(0x37800080u);
  *(a1 + 400) = v4;
  *(a1 + 416) = vdupq_n_s32(0x37800000u);
  *(a1 + 440) = gleFlushAndSubmit;
  *(a1 + 448) = gleNoop;
  result = glvmGetConstants();
  *(a1 + 456) = result;
  *(a1 + 464) = gleClipPoints;
  *(a1 + 624) = gleClipPoints;
  *(a1 + 472) = gleClipLines;
  *(a1 + 632) = gleClipLines;
  *(a1 + 480) = gleClipPoly;
  *(a1 + 640) = gleClipPoly;
  *(a1 + 488) = gleClipPointsPlane;
  *(a1 + 648) = gleClipPointsPlane;
  *(a1 + 496) = gleClipLinesPlane;
  *(a1 + 656) = gleClipLinesPlane;
  *(a1 + 504) = gleClipPolyPlane;
  *(a1 + 664) = gleClipPolyPlane;
  *(a1 + 512) = gleCullPolygonStack;
  *(a1 + 672) = gleCullPolygonStack;
  *(a1 + 520) = gleCullPolygonPtrStack;
  *(a1 + 680) = gleCullPolygonPtrStack;
  *(a1 + 528) = gleCullTriangle;
  *(a1 + 688) = gleCullTriangle;
  *(a1 + 536) = gleCullQuad;
  *(a1 + 696) = gleCullQuad;
  *(a1 + 544) = gleVPFlipColors;
  *(a1 + 704) = gleVPFlipColors;
  v6 = MEMORY[0x277D860C8];
  *(a1 + 560) = MEMORY[0x277D860C8];
  *(a1 + 720) = v6;
  v7 = MEMORY[0x277D85D60];
  *(a1 + 568) = MEMORY[0x277D85D60];
  *(a1 + 728) = v7;
  v8 = MEMORY[0x277D85DA8];
  *(a1 + 576) = MEMORY[0x277D85DA8];
  *(a1 + 736) = v8;
  v9 = MEMORY[0x277D85D78];
  *(a1 + 584) = MEMORY[0x277D85D78];
  *(a1 + 744) = v9;
  return result;
}

double gleInitGLDState(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 15408;
  v4 = a1 + 10244;
  *(a1 + 4) = 0;
  *(a1 + 15544) = 0;
  *(a1 + 6928) = 1065353216;
  *(a1 + 6932) = 393217;
  *(a1 + 6936) = 0;
  do
  {
    v5 = (a1 + 6160 + v2);
    v5[2] = xmmword_23A102B60;
    v5[3] = xmmword_23A102B60;
    *v5 = xmmword_23A102B60;
    v5[1] = xmmword_23A102B60;
    v2 += 64;
  }

  while (v2 != 256);
  *(a1 + 6184) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 6192) = _D0;
  *(a1 + 6200) = 1065353216;
  *(a1 + 6224) = 1065353216;
  *(a1 + 6236) = 0;
  *(a1 + 6256) = 1065353216;
  v11 = (a1 + 6432);
  v12 = 16;
  do
  {
    *(v11 - 1) = xmmword_23A102B60;
    *v11 = 0;
    v11[1] = 0;
    v11 += 4;
    --v12;
  }

  while (v12);
  *(a1 + 12734) = 0;
  *(a1 + 12732) = 519;
  *(a1 + 12728) = 0;
  *(a1 + 12736) = 0x100000001;
  *(a1 + 12832) = 0u;
  *(a1 + 12744) = -2147057658;
  v13 = a1 + 12758;
  v14 = 7;
  *(a1 + 12848) = 0;
  do
  {
    *(v13 - 10) = 0x100000001;
    *(v13 - 2) = -2147057658;
    v13 += 12;
    --v14;
  }

  while (v14);
  *(a1 + 12880) = 0u;
  *(a1 + 12864) = 0u;
  *(a1 + 12856) = 0x3FF0000000000000;
  *(a1 + 12896) = 0;
  *(a1 + 12928) = 513;
  *(a1 + 12932) = 0;
  *(a1 + 12934) = 0;
  *(a1 + 12936) = 0;
  *(a1 + 12944) = 0x3FF0000000000000;
  *(a1 + 12952) = 1;
  *(a1 + 12956) = 0u;
  *(a1 + 12972) = xmmword_23A103B10;
  *(a1 + 12988) = xmmword_23A103B20;
  *(a1 + 13004) = 0x855C84520800;
  *&v15 = 0x1100110011001100;
  *(&v15 + 1) = 0x1100110011001100;
  *(a1 + 13012) = v15;
  *(a1 + 13028) = 285217024;
  *(a1 + 13032) = 0x13F800000;
  *(a1 + 13040) = 0x15030000FFFFLL;
  *(a1 + 13048) = -1;
  *(a1 + 13056) = -1;
  *(a1 + 13064) = -1;
  *(a1 + 13068) = 1;
  *(a1 + 16168) = _D0;
  *(a1 + 16192) = 0;
  *(a1 + 16176) = 0u;
  *(a1 + 16200) = 0x400000000;
  *(a1 + 16208) = 0u;
  *(a1 + 16224) = 0u;
  *(a1 + 16288) = 0;
  *(a1 + 16240) = 4;
  *(a1 + 16248) = xmmword_23A103B30;
  *(a1 + 16264) = xmmword_23A103B30;
  *(a1 + 16280) = 0x3F80000000000000;
  *(a1 + 16888) = 0;
  *(a1 + 16296) = &gle_default_pix_map_i;
  *(a1 + 16368) = &gle_default_pix_map_i;
  *(a1 + 16304) = &gle_default_pix_map_f;
  *(a1 + 16312) = &gle_default_pix_map_f;
  *&v16 = 0x100000001;
  *(&v16 + 1) = 0x100000001;
  *(a1 + 16376) = v16;
  *(a1 + 16320) = &gle_default_pix_map_f;
  *(a1 + 16328) = &gle_default_pix_map_f;
  *(a1 + 16336) = &gle_default_pix_map_f;
  *(a1 + 16344) = &gle_default_pix_map_f;
  *(a1 + 16392) = v16;
  *(a1 + 16352) = &gle_default_pix_map_f;
  *(a1 + 16360) = &gle_default_pix_map_f;
  *(a1 + 16408) = 0x100000001;
  *(a1 + 16480) = xmmword_23A103B40;
  *(a1 + 16496) = xmmword_23A103B40;
  *(a1 + 16552) = xmmword_23A103B40;
  *(a1 + 16568) = xmmword_23A103B40;
  *(a1 + 16624) = xmmword_23A103B40;
  *(a1 + 16640) = xmmword_23A103B40;
  *(a1 + 16752) = xmmword_23A103B40;
  *(a1 + 16768) = xmmword_23A103B40;
  *(a1 + 16688) = xmmword_23A103B40;
  *(a1 + 16704) = xmmword_23A103B40;
  *(a1 + 16784) = xmmword_23A103B40;
  *(a1 + 16800) = xmmword_23A103B40;
  *(a1 + 16816) = xmmword_23A103B40;
  *(a1 + 16832) = xmmword_23A103B40;
  *(a1 + 16848) = xmmword_23A103B40;
  *(a1 + 16864) = xmmword_23A103B40;
  *(a1 + 16880) = 0;
  *(a1 + 16512) = -32746;
  *(a1 + 16584) = -32746;
  *(a1 + 16656) = -32746;
  *(a1 + 16464) = 0u;
  *(a1 + 16536) = 0u;
  *(a1 + 16608) = 0u;
  *(a1 + 16514) = 6408;
  *(a1 + 16586) = 6408;
  *(a1 + 16658) = 6408;
  *(a1 + 16528) = 0;
  *(a1 + 16600) = 0;
  *(a1 + 16672) = 0;
  *(a1 + 16744) = 0;
  *(a1 + 16748) = 6408;
  *(a1 + 16750) = 0;
  *(a1 + 16680) = a1 + 7216;
  v17 = *(a1 + 16720);
  __asm { FMOV            V3.4S, #1.0 }

  *v17 = _Q3;
  v17[1] = 0u;
  *(a1 + 16730) = 0;
  *(a1 + 16728) = 6408;
  *(a1 + 13104) = 0;
  *(a1 + 13072) = xmmword_23A103B10;
  *(a1 + 13088) = xmmword_23A103B50;
  *(a1 + 13105) = 0;
  *(a1 + 13112) = 0;
  *(a1 + 13108) = 36002;
  *(a1 + 13107) = 0;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *(a1 + 13116) = v19;
  *(a1 + 13132) = v19;
  *(a1 + 13148) = v19;
  *(a1 + 13164) = v19;
  *(a1 + 13180) = v19;
  *(a1 + 13196) = v19;
  *(a1 + 13212) = v19;
  *(a1 + 13228) = v19;
  *(a1 + 13244) = 0;
  *(a1 + 13252) = 0x40509011B021B02;
  *(a1 + 13266) = 1;
  *(a1 + 13260) = 0;
  *(a1 + 13264) = 0;
  *(a1 + 13268) = 0u;
  *(a1 + 13284) = 0;
  *(a1 + 13301) = 0;
  *(a1 + 13288) = 0u;
  *(a1 + 13320) = 7425;
  *(a1 + 15432) = 36430;
  v20 = (a1 + 13332);
  v21 = 3;
  do
  {
    *(v20 - 1) = 0xFFFFFFFFLL;
    *v20 = 0x1E001E001E000207;
    v20 += 2;
    --v21;
  }

  while (v21);
  *(a1 + 13372) = 0;
  *(a1 + 15400) = -3229614080;
  *v3 = 1;
  *(a1 + 15415) = 0;
  *(a1 + 15416) = 0;
  *(a1 + 15409) = 0;
  *(a1 + 15413) = 0;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  *(a1 + 12624) = v22;
  *(a1 + 12640) = v22;
  *(a1 + 12656) = v22;
  *(a1 + 12672) = v22;
  *(a1 + 12688) = v22;
  *(a1 + 12704) = v22;
  *(a1 + 12720) = 0;
  v23 = a1 + 13416;
  v24 = -608;
  *(a1 + 12724) = 0;
  do
  {
    v25 = (v23 + v24);
    *(v23 + v24 + 612) = xmmword_23A103B60;
    *(v23 + v24 + 628) = 0x302030203000300;
    v25[318] = 770;
    v25[319] = 770;
    v26 = a1 + v24;
    *(v26 + 14056) = _D0;
    v25[304] = 8448;
    *(v26 + 14020) = 0;
    *(v23 + v24 + 572) = 0uLL;
    v24 += 76;
  }

  while (v24);
  *(a1 + 14084) = 0u;
  *(a1 + 14100) = 0u;
  *(a1 + 14052) = 0u;
  *(a1 + 14068) = 0u;
  *(a1 + 14020) = 0u;
  *(a1 + 14036) = 0u;
  *(a1 + 13988) = 0u;
  *(a1 + 14004) = 0u;
  v27 = a1 + 14192;
  v28 = -1184;
  do
  {
    v29 = (v27 + v28);
    v29[554] = 9216;
    *(v27 + v28 + 1112) = xmmword_23A1037E0;
    *(v27 + v28 + 1128) = xmmword_23A1037E0;
    v29[626] = 0;
    v29[572] = 9216;
    *(v27 + v28 + 1148) = xmmword_23A1037C0;
    *(v27 + v28 + 1164) = xmmword_23A1037C0;
    v29[590] = 9216;
    v30 = a1 + v28;
    v29[627] = 0;
    *(v30 + 15376) = 0uLL;
    *(v30 + 15392) = 0uLL;
    v29[608] = 9216;
    v31 = (v27 + v28 + 1220);
    *v31 = 0uLL;
    v31[1] = 0uLL;
    v28 += 148;
  }

  while (v28);
  *(a1 + 15440) = 1;
  *v4 = 0;
  *(a1 + 10240) = 1065353216;
  *(a1 + 10246) = 0;
  *(a1 + 10248) = 0;
  gleMakeIdentityMatrix(a1 + 10160);
  v32 = a1 + 8624;
  v33 = 24;
  do
  {
    gleMakeIdentityMatrix(v32 - 1536);
    gleMakeIdentityMatrix(v32);
    v32 += 64;
    --v33;
  }

  while (v33);
  v34 = 0;
  *(a1 + 10224) = xmmword_23A103B70;
  *(a1 + 12608) = 0;
  *(a1 + 12618) = 0;
  *(a1 + 12622) = 0;
  *(a1 + 15396) = 0;
  *(a1 + 15300) = 0u;
  *(a1 + 15316) = 0u;
  *(a1 + 15332) = 0u;
  *(a1 + 15348) = 0u;
  *(a1 + 15364) = 0u;
  *(a1 + 15380) = 0u;
  *(v4 + 2368) = 369230856;
  *(v4 + 2372) = -32263;
  v35 = a1 + 10272;
  *(a1 + 10256) = xmmword_23A103B80;
  do
  {
    v36 = v35 + v34;
    *(v35 + v34) = xmmword_23A102B60;
    if (v34)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = a1 + v34;
    *(v38 + 10288) = v37;
    *(v38 + 10292) = v37;
    *(v38 + 10296) = v37;
    *(v38 + 10300) = 1065353216;
    *(v38 + 10304) = v37;
    *(v38 + 10308) = v37;
    *(v38 + 10312) = v37;
    *(v36 + 44) = xmmword_23A103B50;
    *(v36 + 60) = xmmword_23A103B90;
    *(v36 + 76) = xmmword_23A103BA0;
    *(v36 + 92) = xmmword_23A102B60;
    *(v36 + 108) = xmmword_23A103B90;
    *(a1 + 10412 + v34) = 0x433400003F800000;
    v34 += 160;
    *(v36 + 124) = xmmword_23A102B60;
  }

  while (v34 != 1280);
  *(a1 + 6944) = xmmword_23A103BB0;
  *(a1 + 6960) = xmmword_23A103BC0;
  *(a1 + 6976) = xmmword_23A103BB0;
  *(a1 + 6992) = xmmword_23A103BC0;
  *(a1 + 7024) = 0u;
  *(a1 + 7040) = 0u;
  *(a1 + 7008) = xmmword_23A103BD0;
  *(a1 + 7056) = xmmword_23A103BE0;
  *(a1 + 11552) = xmmword_23A103B80;
  *(a1 + 11568) = xmmword_23A103BF0;
  *(a1 + 11584) = xmmword_23A102B60;
  *(a1 + 11600) = xmmword_23A102B60;
  *(a1 + 11616) = xmmword_23A102B60;
  *(a1 + 12080) = xmmword_23A103B80;
  *(a1 + 12096) = xmmword_23A103BF0;
  *(a1 + 12112) = xmmword_23A102B60;
  *(a1 + 12128) = xmmword_23A102B60;
  *(a1 + 12144) = xmmword_23A102B60;
  *(v3 + 12) = 0;
  *(a1 + 15560) = a1 + 16;
  *(a1 + 15624) = a1 + 4112;
  *(a1 + 15608) = 0;
  *(a1 + 15424) = 0x101000000000001;
  *(v3 + 304) = 0;
  *(a1 + 15720) = 0u;
  *(a1 + 15736) = 0u;
  *(a1 + 15752) = 0u;
  *(a1 + 15768) = 0u;
  *(v3 + 306) = -1;
  *(a1 + 12908) = 0u;
  *(v4 + 2660) = 16842752;
  *(v4 + 2680) = 0;
  *(v3 + 28) = 0;
  *(v3 + 44) = 3;
  memset_pattern16((a1 + 15456), &unk_23A1037B0, 0x10uLL);
  memset_pattern16((a1 + 15472), &unk_23A1037B0, 8uLL);
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(v3 + 36) = 0;
  *(a1 + 15448) = -1;
  result = 0.0;
  *(a1 + 15632) = 0u;
  *(a1 + 15648) = 0u;
  *(a1 + 15664) = 0u;
  *(a1 + 15680) = 0u;
  *(a1 + 15696) = 0u;
  return result;
}

uint64_t gleMakeIdentityMatrix(uint64_t result)
{
  *result = 1065353216;
  *(result + 12) = 0;
  *(result + 4) = 0;
  *(result + 20) = 1065353216;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 1065353216;
  *(result + 52) = 0;
  *(result + 44) = 0;
  *(result + 60) = 1065353216;
  return result;
}

double gleInitGLIState(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 29596;
  *(a1 + 29596) = 1132494848;
  *(a1 + 2256) = 0;
  v4 = *(a1 + 26000);
  *(v4 - 1204) = 1065353216;
  *(a1 + 20768) = 0;
  *(a1 + 2264) = 0;
  do
  {
    v5 = (v4 - 1184 + v2);
    v5[2] = xmmword_23A102B60;
    v5[3] = xmmword_23A102B60;
    *v5 = xmmword_23A102B60;
    v5[1] = xmmword_23A102B60;
    v2 += 64;
  }

  while (v2 != 256);
  *(v4 - 1160) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(v4 - 1152) = _D0;
  *(v4 - 1144) = 1065353216;
  *(v4 - 1120) = 1065353216;
  *(v4 - 1108) = 0;
  *(v4 - 1232) = 1065353216;
  *(a1 + 29604) = xmmword_23A103C00;
  *(a1 + 29620) = vdup_n_s32(0x43808000u);
  *(a1 + 29768) = 1;
  *(a1 + 19960) = 0x60000000000;
  *(a1 + 1452) = 0;
  *(a1 + 1488) = gleAllocateMaterial;
  *(a1 + 1496) = gleAllocateMaterial;
  *(a1 + 1504) = gleUpdateLightRGBASums;
  *(a1 + 1512) = gleUpdateLightRGBASums;
  *(a1 + 20484) = 4;
  *(a1 + 20384) = 4352;
  *(a1 + 19992) = &gleESStackOffsets;
  *(a1 + 20080) = 0u;
  *(a1 + 20064) = 0u;
  *(a1 + 20048) = 0u;
  *(a1 + 20032) = 0u;
  *(a1 + 20016) = 0u;
  *(a1 + 20000) = 0u;
  *(a1 + 20495) = 0;
  *(a1 + 29830) = 7168;
  *(a1 + 19928) = 0;
  *(a1 + 19912) = a1 + 19400;
  *(a1 + 23768) = 0;
  *(a1 + 23784) = 0;
  *(a1 + 23772) = 0;
  *(a1 + 23808) = 0u;
  *(a1 + 23824) = 0u;
  *(a1 + 23840) = 0u;
  *(a1 + 23856) = 0u;
  *(a1 + 23872) = 0u;
  *(a1 + 23888) = 0u;
  *(a1 + 23904) = 0u;
  *(a1 + 23920) = 0u;
  *(a1 + 26336) = 0;
  *(a1 + 26340) = 0;
  *(a1 + 26296) = 0;
  *(a1 + 26328) = 0x140600000000;
  *(a1 + 29708) = 1;
  v11 = *(a1 + 32501) - 5;
  if (v11 >= 0xFFFFFFFE)
  {
    v12 = 0;
  }

  else
  {
    v12 = -30435;
  }

  *(a1 + 29710) = v12;
  *(a1 + 29712) = -30435;
  *(a1 + 29714) = 1;
  *(a1 + 29832) = 0;
  *(a1 + 29672) = 0uLL;
  *(a1 + 29688) = 0uLL;
  *(a1 + 29704) = 0;
  *(a1 + 29776) = 0x300000404;
  *(a1 + 19216) = 0uLL;
  *(a1 + 29592) = 0;
  *(a1 + 29576) = 0uLL;
  *(a1 + 19232) = 1;
  *(a1 + 19234) = 0;
  *(a1 + 32506) = 0;
  *(a1 + 29784) = 0;
  *(a1 + 29787) = 0;
  v13 = getenv("GL_FORCE_LLVM_IR_OUTPUT");
  if (v13 && *v13 == 49)
  {
    *(v3 + 192) = 1;
  }

  *(v3 + 2888) = v11 < 0xFFFFFFFE;
  *&result = 65793;
  *(v3 + 2889) = 65793;
  *(v3 + 2893) = 0;
  *(a1 + 29000) = 0;
  *(v3 + 2878) = -256;
  *(v3 + 2880) = -1;
  return result;
}

uint64_t gleInitDerivedState(uint64_t a1)
{
  v2 = a1 + 32481;
  v3 = a1 + 26124;
  v4 = a1 + 15178;
  v5 = (a1 + 809);
  *(a1 + 32482) = 0;
  v6 = *(*(a1 + 29032) + 101);
  *(a1 + 32481) = v6;
  if (v6)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  *(a1 + 29796) = v7;
  *(a1 + 27832) = 0u;
  *(a1 + 27856) = 0u;
  *(a1 + 20624) = a1 + 20496;
  *(a1 + 20760) = a1 + 20632;
  *(a1 + 28744) = 0;
  *(a1 + 32491) = 1;
  v8 = *(a1 + 26000);
  *(v8 - 1184) = xmmword_23A102B60;
  *(v8 - 1200) = xmmword_23A102B60;
  *(v8 - 1216) = 0;
  *(v8 - 1208) = 0;
  *(v8 - 1168) = 0;
  *(v8 - 1160) = 1065353216;
  *(v8 - 1100) = 1065353216;
  *(v8 - 1280) = 393472;
  *(a1 + 19968) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 19944) = 0u;
  *(*(a1 + 1424) + 496) = 63;
  *(*(a1 + 1432) + 496) = 63;
  v9 = 8;
  do
  {
    *(v5 - 25) = -1082130432;
    *(v5 - 5) = 1065353216;
    *v5 = 16842752;
    v5 += 20;
    --v9;
  }

  while (v9);
  *(a1 + 20488) = 18;
  *(a1 + 20494) = 0;
  *(a1 + 19976) = a1 + 9616;
  *(a1 + 19984) = a1 + 11152;
  *(a1 + 28748) = 1;
  *(a1 + 28750) = 2;
  *(a1 + 28664) = 0;
  *(a1 + 28668) = 0;
  *(a1 + 28648) = 0;
  *(a1 + 28656) = -1;
  *(a1 + 19920) = 0;
  *(a1 + 19936) = 0;
  *(a1 + 19932) = 0;
  *(a1 + 19384) = 0u;
  *(a1 + 23792) = 0u;
  *(a1 + 28676) = 0;
  *(a1 + 26152) = gleSetVertexSubmitFunc;
  *(a1 + 26160) = gleSetVertexSubmitFunc;
  *(a1 + 26168) = gleSetVertexConvertFunc;
  *(a1 + 26176) = gleSetVertexConvertFunc;
  *(a1 + 26184) = gleSetVertexArrayFunc;
  *(a1 + 26192) = gleSetVertexArrayFunc;
  *(a1 + 26200) = gleSetVertexElemFunc;
  *(a1 + 26208) = gleSetVertexElemFunc;
  v10 = *(a1 + 448);
  *(a1 + 26144) = v10;
  *(a1 + 26136) = v10;
  *v3 = 640;
  *(a1 + 26280) = 0u;
  *(a1 + 26048) = 0;
  *(a1 + 27880) = gleSetEyeInterpFunc;
  *(a1 + 27888) = gleSetEyeInterpFunc;
  *(a1 + 27896) = gleSetClipInterpFunc;
  *(a1 + 27904) = gleSetClipInterpFunc;
  *(a1 + 27912) = gleSetFlatCopyFunc;
  *(a1 + 27920) = gleSetFlatCopyFunc;
  *(a1 + 28696) = xmmword_23A103B40;
  *(a1 + 28712) = 1065353216;
  *(a1 + 32492) = 0;
  *(a1 + 28716) = 0u;
  *(a1 + 32493) = *(a1 + 32493) & 0x6F00 | 0x8000;
  *(a1 + 32495) = *(a1 + 32495) & 0xF4 | 1;
  v11 = getenv("GL_LLVM_IR_DISABLE_NORETURN_ON_DISCARD");
  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    if (!v11)
    {
      v13 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  result = os_variant_has_internal_diagnostics();
  v13 = 0;
  if (v11 && (result & 1) != 0)
  {
LABEL_11:
    v13 = 4 * (*v11 == 49);
  }

LABEL_12:
  *(v2 + 14) = *(v2 + 14) & 0xFB | v13;
  *(v2 + 12) &= 0xD8FFu;
  v14 = *(a1 + 29032);
  v15 = *(v14 + 64);
  if (v15 < *(v14 + 72))
  {
    v15 = *(v14 + 72);
  }

  *(a1 + 15352) = v15;
  *(v2 + 23) = 0;
  v16 = *(v14 + 43);
  *(v2 + 7) = v16;
  *(v2 + 8) = v16;
  LOBYTE(v16) = v16 == 0;
  *v4 = v16;
  *(v4 + 1) = v16;
  *(v2 + 21) = 0;
  *(v3 + 3680) = 2047;
  v17 = (v3 + 3684);
  v18 = *(a1 + 29480);
  if (*(v18 + 56))
  {
    v19 = 257;
  }

  else
  {
    v19 = 1;
  }

  *(v3 + 3684) = v19;
  if (*(v18 + 57))
  {
    *v17 = v19 | 0x600;
  }

  *(v3 + 3688) = 0;
  v20 = *(a1 + 28960);
  if (v20)
  {
    v17 = (v20 + 552);
  }

  *(v4 + 164) = *v17 & 0x7FF;
  v21 = *(v14 + 101) == 0;
  *(a1 + 2276) = v21;
  *(v3 + 3710) = v21;
  return result;
}

_DWORD *gleInitTextureState(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 32496);
  v4 = a1 + 20776;
  v5 = a1 + 23592;
  do
  {
    result = gleCreateTextureObject(*(a1 + 19296), v2 | 0x1000u, 0);
    if (v3[5] == 4)
    {
      *(result + 461) = 6403;
    }

    v7 = 0;
    *(v5 + 8 * v2) = result;
    do
    {
      *(v4 + v7) = result;
      v7 += 88;
    }

    while (v7 != 2816);
    result[5] += 32;
    ++v2;
    v4 += 8;
  }

  while (v2 != 11);
  v8 = 0;
  v9 = *v3;
  v10 = vdupq_n_s64(v9 - 1);
  v11 = v3 + 680;
  v12 = vdupq_n_s64(2uLL);
  do
  {
    if (v9)
    {
      v13 = (v9 + 1) & 0x1FE;
      v14 = v11;
      v15 = xmmword_23A102AE0;
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v10, v15));
        if (v16.i8[0])
        {
          *v14 = 0;
        }

        if (v16.i8[4])
        {
          *(v14 + 209) = 0;
        }

        v15 = vaddq_s64(v15, v12);
        v14 += 3344;
        v13 -= 2;
      }

      while (v13);
    }

    ++v8;
    v11 += 8;
  }

  while (v8 != 32);
  v17 = (a1 + 18688);
  v18 = 3;
  do
  {
    v17[1356] = 0;
    v17[1355] = 0x1401190800010000;
    v17[1] = 0;
    *v17 = 0x1401190800000000;
    v17 += 2;
    --v18;
  }

  while (v18);
  *(a1 + 23776) = 0;
  return result;
}

_DWORD *gleCreateTextureObject(uint64_t a1, __int16 a2, int a3)
{
  v5 = a2 & 0xF;
  if ((a2 & 0xF) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 6;
  }

  if ((v5 - 7) < 3 || v5 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 15;
  }

  v9 = malloc_type_malloc((32 * v6 * v8 + 1072), 0x746FBC94uLL);
  if (!v9)
  {
    abort();
  }

  v10 = v9;
  *v9 = 0;
  if ((a2 & 0x2000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v9[4] = a3;
  v9[5] = 1;
  *(v9 + 4) = 0;
  v9[6] = v11;
  v9[7] = 0;
  gfxInitializeGLTexture();
  if ((a2 & 0x2000) != 0)
  {
    *(v10 + 296) = -31298;
    *(v10 + 460) = -31298;
    v10[240] = -2127593169;
    *(v10 + 482) = -32465;
    v10[238] = 637543936;
    *(v10 + 597) = 1;
  }

  *(v10 + 811) |= 1u;
  gfxCreatePluginTexture();
  return v10;
}

uint64_t gleInitPipelineProgramState(uint64_t a1)
{
  v2 = malloc_type_malloc(0x600uLL, 0x746FBC94uLL);
  if (!v2)
  {
    abort();
  }

  v3 = 0;
  v4 = (a1 + 32496);
  *(a1 + 24192) = v2;
  *v2 = 0;
  *(a1 + 24744) = -1;
  *(a1 + 24748) = 0x10000;
  *(a1 + 24752) = 0;
  v5 = a1 + 19248;
  v6 = a1 + 24440;
  v7 = a1 + 24400;
  v8 = a1 + 24756;
  v9 = a1 + 24480;
  v10 = a1 + 24520;
  v11 = a1 + 24560;
  v35 = a1;
  v36 = (a1 + 32520);
  v12 = vdupq_n_s64(2uLL);
  v13 = (a1 + 33432);
  v41 = a1 + 24756;
  v42 = a1 + 24400;
  v39 = a1 + 24520;
  v40 = a1 + 24480;
  v38 = a1 + 24560;
  v37 = v12;
  do
  {
    if ((v3 & 3) != 0)
    {
      v14 = 0;
      *(v5 + 8 * v3) = 0;
    }

    else
    {
      PipelineProgramObject = gleCreatePipelineProgramObject(v3, 0);
      v14 = PipelineProgramObject;
      if (*v4)
      {
        v16 = 0;
        v17 = PipelineProgramObject + 40;
        v18 = PipelineProgramObject + 560;
        v19 = v36;
        do
        {
          (*(v19[205] + 1624))(*v19, v17, v14 + 464, v18);
          ++v16;
          v18 += 4;
          v17 += 8;
          v19 += 209;
        }

        while (v16 < *v4);
      }

      *(v5 + 8 * v3) = v14 + 608;
      ++*(v14 + 5);
      v8 = v41;
      v7 = v42;
      v10 = v39;
      v9 = v40;
      v11 = v38;
      v12 = v37;
    }

    *(v6 + 8 * v3) = v14;
    *(v7 + 8 * v3) = v14;
    *(v8 + v3) = 0;
    *(v9 + 8 * v3) = 0;
    *(v10 + 8 * v3) = 0;
    *(v11 + 8 * v3) = 0;
    v20 = *v4;
    if (*v4)
    {
      v21 = (v20 + 1) & 0x1FE;
      v22 = vdupq_n_s64(v20 - 1);
      v23 = v13;
      v24 = xmmword_23A102AE0;
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v22, v24));
        if (v25.i8[0])
        {
          *v23 = 0;
        }

        if (v25.i8[4])
        {
          v23[209] = 0;
        }

        v24 = vaddq_s64(v24, v12);
        v23 += 418;
        v21 -= 2;
      }

      while (v21);
    }

    ++v3;
    ++v13;
  }

  while (v3 != 5);
  v26 = 0;
  v27 = vdupq_n_s64(v20 - 1);
  v28 = vdupq_n_s64(2uLL);
  v29 = (v35 + 33472);
  do
  {
    *(v35 + 24600 + 8 * v26) = 0;
    *(v35 + 24632 + 8 * v26) = 0;
    if (v20)
    {
      v30 = (v20 + 1) & 0x1FE;
      v31 = v29;
      v32 = xmmword_23A102AE0;
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v27, v32));
        if (v33.i8[0])
        {
          *v31 = 0;
        }

        if (v33.i8[4])
        {
          v31[209] = 0;
        }

        v32 = vaddq_s64(v32, v28);
        v31 += 418;
        v30 -= 2;
      }

      while (v30);
    }

    ++v26;
    ++v29;
  }

  while (v26 != 4);
  *(v35 + 24200) = gleSetVPTransformFuncAll;
  *(v35 + 24208) = gleSetVPTransformFuncAll;
  *(v35 + 24216) = 0u;
  *(v35 + 24232) = 0u;
  *(v35 + 24352) = gleSetGPTransformFuncAll;
  *(v35 + 24360) = gleSetGPTransformFuncAll;
  *(v35 + 24368) = 0;
  *(v35 + 24384) = 0;
  *(v35 + 24376) = 0;
  gleReconfigurePipelineProgramState(v35);
  *(v35 + 24552) = cvmCreateHashMachine();
  *(v35 + 24512) = gleCreateStateProgram(v35, 4, 0, 0, 0, 0, 0, -1);

  return gleFPChanged(v35);
}

char *gleCreatePipelineProgramObject(int a1, int a2)
{
  v4 = 4416;
  if (a1 == 4)
  {
    v5 = 67109888;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 4)
  {
    v4 = 4432;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 67109888;
  }

  if (a1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4416;
  }

  v8 = malloc_type_malloc(v7, 0x746FBC94uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *(v8 + 4) = a2;
  *v8 = 0;
  *(v8 + 20) = 0x400000001;
  *(v8 + 457) = 0;
  *(v8 + 44) = 0u;
  *(v8 + 60) = 0u;
  *(v8 + 76) = 0u;
  *(v8 + 92) = 0u;
  *(v8 + 108) = 0u;
  *(v8 + 124) = 0u;
  *(v8 + 140) = 0u;
  *(v8 + 156) = 0u;
  *(v8 + 172) = 0u;
  *(v8 + 188) = 0u;
  *(v8 + 204) = 0u;
  *(v8 + 220) = 0u;
  *(v8 + 236) = 0u;
  *(v8 + 252) = 0u;
  *(v8 + 28) = 0u;
  *(v8 + 268) = 0u;
  *(v8 + 284) = 0u;
  *(v8 + 300) = 0u;
  *(v8 + 316) = 0u;
  *(v8 + 332) = 0u;
  *(v8 + 348) = 0u;
  *(v8 + 364) = 0u;
  *(v8 + 380) = 0u;
  *(v8 + 396) = 0u;
  *(v8 + 412) = 0u;
  *(v8 + 428) = 0u;
  *(v8 + 440) = 0u;
  __pattern4 = v6;
  memset_pattern4(v8 + 608, &__pattern4, 0xED8uLL);
  if (a1 == 4)
  {
    *(v9 + 2208) = 0;
    goto LABEL_17;
  }

  if (!a1)
  {
LABEL_17:
    *(v9 + 551) = 0;
  }

  *(v9 + 232) = 0;
  v9[466] = a1;
  v10 = v9[467] & 0xFC;
  if (!a2)
  {
    ++v10;
  }

  v9[467] = v10;
  *(v9 + 59) = 0;
  *(v9 + 60) = 0;
  *(v9 + 520) = 0u;
  *(v9 + 536) = 0u;
  *(v9 + 61) = -1;
  *(v9 + 62) = -1;
  *(v9 + 117) = 0;
  *(v9 + 63) = 0;
  *(v9 + 64) = 0;
  memset_pattern16(v9 + 560, &unk_23A103800, 0x30uLL);
  return v9;
}

double gleInitBufferState(uint64_t a1)
{
  *(a1 + 19376) = 0;
  result = 0.0;
  *(a1 + 19360) = 0u;
  *(a1 + 19344) = 0u;
  *(a1 + 19328) = 0u;
  *(a1 + 19312) = 0u;
  *(a1 + 26304) = 0u;
  return result;
}

char *gleInitVertexArrayState(uint64_t a1)
{
  v2 = (a1 + 32496);
  result = gleCreateVertexArrayHashObject(a1, 0);
  v4 = result;
  if (*v2)
  {
    v5 = 0;
    v6 = (result + 40);
    v7 = result + 1496;
    v8 = (a1 + 32520);
    v9 = result + 40;
    do
    {
      result = (*(v8[205] + 1680))(*v8, v9, v4 + 136, v7);
      ++v5;
      v10 = *v2;
      v7 += 280;
      v9 += 8;
      v8 += 209;
    }

    while (v5 < v10);
    *(a1 + 26392) = v4;
    *(a1 + 26384) = v4;
    if (v10)
    {
      v11 = v2 + 1048;
      do
      {
        v12 = *v6++;
        *v11 = v12;
        v11 += 209;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    *(a1 + 26392) = result;
    *(a1 + 26384) = result;
  }

  ++*(v4 + 5);
  return result;
}

uint64_t gleCreatePluginVertexArray(uint64_t result, uint64_t a2)
{
  if (*(result + 32496))
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 1456;
    v6 = (result + 32520);
    v7 = a2;
    do
    {
      result = (*(v6[205] + 1680))(*v6, v7, a2 + 96, v5);
      ++v4;
      v5 += 280;
      v7 += 8;
      v6 += 209;
    }

    while (v4 < *(v3 + 32496));
  }

  return result;
}

void gleInitQueryMachine(uint64_t a1)
{
  gleInitHashMachine((a1 + 25904));
  v2 = 0;
  *(a1 + 25980) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25936) = 0u;
  v3 = *(a1 + 32496);
  v4 = vdupq_n_s64(v3 - 1);
  v5 = (a1 + 33608);
  v6 = vdupq_n_s64(2uLL);
  do
  {
    if (v3)
    {
      v7 = (v3 + 1) & 0x1FE;
      v8 = v5;
      v9 = xmmword_23A102AE0;
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v4, v9));
        if (v10.i8[0])
        {
          *v8 = 0;
        }

        if (v10.i8[4])
        {
          v8[209] = 0;
        }

        v9 = vaddq_s64(v9, v6);
        v8 += 418;
        v7 -= 2;
      }

      while (v7);
    }

    ++v2;
    ++v5;
  }

  while (v2 != 12);
}

uint64_t gleUpdateState(int8x16_t *a1)
{
  v2 = &a1[1856].u16[6];
  v3 = &a1[1546].u8[14];
  v4 = &a1[930].u8[8];
  a1[1790].i32[3] = 0;
  a1[95] = vorrq_s8(a1[95], xmmword_23A103710);
  a1[96] = vorrq_s8(a1[96], xmmword_23A103720);
  a1[1862].i32[2] |= 0xDE3C0478;
  if (!a1[930].i8[10] || a1[1547].i8[4] || (a1[1554].i8[0] & 1) != 0)
  {
    v5 = a1[2031].i8[10];
  }

  else
  {
    v5 = *v4 == 33274;
  }

  a1[955].i8[3] = v5;
  gleUpdateViewScissorData(a1);
  gleUpdateLightColorChangeFunc(a1);
  v6 = 0;
  *(a1[89].i64[0] + 496) = 63;
  *(a1[89].i64[1] + 496) = 63;
  do
  {
    gleUpdateLightPosition(a1, v6);
    gleUpdateLightDirection(a1, v6);
    gleUpdateLightExponents(a1, v6);
    gleUpdateLightAttenuation(a1, v6++);
  }

  while (v6 != 8);
  gleUpdateLightModel(a1);
  gleUpdateClipPlane(a1);
  gleUpdateMatrixMode(a1);
  gleUpdateDepthRangeData(a1);
  gleUpdateTextureCoordGen(a1);
  for (i = 0; i != 8; ++i)
  {
    gleUpdateTextureParams(a1, i);
  }

  gleUpdateAnyDrawBuffersFloat(a1, v8, v9, v10);
  v14 = *v2;
  if (v14 == 35101)
  {
    LOBYTE(v14) = *(v2 + 2780) == 0;
  }

  *(v2 + 6) = v14;
  v15 = v2[1];
  if (v15 == 35101)
  {
    LOBYTE(v15) = *(v2 + 2780) == 0;
  }

  v4[290] = v15;
  v16 = v2[2];
  if (v16 == 35101)
  {
    LOBYTE(v16) = *(v2 + 2781) == 0;
  }

  v4[291] = v16;
  gleUpdateBufferColorClamping(a1, v11, v12, v13);
  gleUpdateFragmentColorClamping(a1);
  v17 = *(v3 + 114);
  if ((v17 & 8) != 0)
  {
    v20 = a1[1548].i64[0];
    if (!v20)
    {
      v20 = *(a1[1548].i64[1] + 64);
    }

    if (*(v20 + 2326))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v2 + 6);
    }

    if (!*(v20 + 2327))
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v17)
  {
    v21 = a1[1548].i64[0];
    if (!v21)
    {
      v21 = *(a1[1548].i64[1] + 40);
    }

    if (*(v21 + 214))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v2 + 6);
    }

    if (!*(v21 + 215))
    {
LABEL_32:
      v18 = *(v2 + 6);
      goto LABEL_33;
    }

LABEL_29:
    v18 = 0;
    goto LABEL_33;
  }

  v18 = *(v2 + 6);
  v19 = v18;
LABEL_33:
  if (v19 != v4[2814] || v18 != v4[2815])
  {
    v4[2814] = v19;
    v4[2815] = v18;
    a1[95].i32[1] |= 0x400000u;
    a1[1790].i32[3] = 0;
    a1[96].i32[3] |= 0x400u;
  }

  gleUpdatePointSmooth(a1);
  v22 = *(v3 + 114);
  if (v22)
  {
    gleSetColorMaterialEnable(a1);
    v23 = *(v3 + 114) & 9;
    if (v23 || v3[6])
    {
      v24 = v3[1];
    }

    else
    {
      v24 = v4[2];
      if (v4[2])
      {
        v24 = v4[4] != 0;
      }
    }

    if (v24 != v4[2813])
    {
      v4[2813] = v24;
      a1[95].i32[3] |= 0x40000000u;
      a1[1790].i32[3] = 0;
      v25 = a1[96].i32[3];
      a1[96].i32[3] = v25 | 0x10008400;
      if ((*(a1[1814].i64[1] + 25) & 0x7F) != 0)
      {
        a1[96].i32[3] = v25 | 0x10038400;
      }
    }

    if (v23 || v3[6])
    {
      v26 = *v3;
    }

    else if (v4[491])
    {
      v26 = 1;
    }

    else
    {
      v26 = v4[490] != 0;
    }

    if (v26 != v4[2812])
    {
      v4[2812] = v26;
      a1[95].i32[3] |= 0x40000000u;
      a1[1790].i32[3] = 0;
      a1[96].i32[3] |= 0x10000000u;
    }
  }

  else if (v3[6] || a1[1530].i64[0])
  {
    gleVPEnable(a1);
  }

  else
  {
    gleVPDisable(a1);
  }

  if ((v3[114] & 8) == 0)
  {
    gleGPDisable(a1);
    if ((v3[114] & 0x10) != 0)
    {
      result = gleUpdateFogData(a1);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  gleUpdateInvalidPrimitives(a1);
  v28 = *(v3 + 114);
  if ((v28 & 9) != 0 || v3[6])
  {
    v29 = v3[1];
  }

  else
  {
    v29 = v4[2];
    if (v4[2])
    {
      v29 = v4[4] != 0;
    }
  }

  if (v29 != v4[2813])
  {
    v4[2813] = v29;
    a1[95].i32[3] |= 0x40000000u;
    a1[1790].i32[3] = 0;
    v30 = a1[96].i32[3];
    a1[96].i32[3] = v30 | 0x10008400;
    if ((*(a1[1814].i64[1] + 25) & 0x7F) != 0)
    {
      a1[96].i32[3] = v30 | 0x10038400;
    }
  }

  if ((v28 & 9) != 0 || v3[6])
  {
    v31 = *v3;
  }

  else if (v4[491])
  {
    v31 = 1;
  }

  else
  {
    v31 = v4[490] != 0;
  }

  if (v31 != v4[2812])
  {
    v4[2812] = v31;
    a1[95].i32[3] |= 0x40000000u;
    a1[1790].i32[3] = 0;
    a1[96].i32[3] |= 0x10000000u;
  }

  if ((v28 & 0x10) == 0)
  {
LABEL_67:
    result = gleFPChanged(a1);
    goto LABEL_68;
  }

  result = gleUpdateFogData(a1);
  if (v22)
  {
    result = gleUpdateInverseNeeds(a1);
  }

LABEL_68:
  if (v4[3])
  {
    a1[1790].i32[3] = 0;
    v32 = a1[96].i32[2] | 0x2000000;
  }

  else
  {
    v32 = a1[96].i32[2] & 0xFDFFFFFF;
  }

  a1[96].i32[2] = v32;
  v33 = a1[96].i32[1];
  if ((v33 & 0x10000000) != 0 && *(v2 + 2776))
  {
    a1[96].i32[1] = v33 & 0xEFFFFFFF;
  }

  v34 = *(v2 + 23);
  if ((v34 & 0x10000000) != 0)
  {
    if (*(v2 + 2778))
    {
      v35 = a1[1810].i64[0];
      if (!v35 || *(v35 + 480) != 0xFFFF && !*(v35 + 88 * *(v2 + 2792) + 640))
      {
        v34 &= ~0x10000000u;
        *(v2 + 23) = v34;
      }
    }
  }

  if ((v34 & 0x2000000) != 0)
  {
    if (*(v2 + 2777))
    {
      v36 = a1[1810].i64[1];
      if (!v36 || *(v36 + 480) != 0xFFFF && !*(v36 + 88 * *(v2 + 2792) + 640))
      {
        *(v2 + 23) = v34 & 0xFDFFFFFF;
      }
    }
  }

  return result;
}

uint64_t gleUpdateLightColorChangeFunc(uint64_t result)
{
  v1 = result;
  v2 = *(result + 1456);
  v3 = *(result + 14884);
  v4 = *(result + 14886);
  if (v3 == 1029)
  {
    v5 = gleLightMaterialRGBAChange_B_E;
    if (*(result + 14886) > 0x1201u)
    {
      if (v4 == 4610)
      {
        v5 = gleLightMaterialRGBAChange_B_S;
        goto LABEL_30;
      }

      if (v4 == 5632)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v4 == 4608)
      {
        v5 = gleLightMaterialRGBAChange_B_A;
        goto LABEL_30;
      }

      if (v4 == 4609)
      {
        v5 = gleLightMaterialRGBAChange_B_D;
        goto LABEL_30;
      }
    }

    v5 = gleLightMaterialRGBAChange_B_AD;
    goto LABEL_30;
  }

  if (v3 != 1028)
  {
    v5 = gleLightMaterialRGBAChange_FB_E;
    if (*(result + 14886) > 0x1201u)
    {
      if (v4 == 4610)
      {
        v5 = gleLightMaterialRGBAChange_FB_S;
        goto LABEL_30;
      }

      if (v4 == 5632)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v4 == 4608)
      {
        v5 = gleLightMaterialRGBAChange_FB_A;
        goto LABEL_30;
      }

      if (v4 == 4609)
      {
        v5 = gleLightMaterialRGBAChange_FB_D;
        goto LABEL_30;
      }
    }

    v5 = gleLightMaterialRGBAChange_FB_AD;
    goto LABEL_30;
  }

  v5 = gleLightMaterialRGBAChange_F_E;
  if (*(result + 14886) > 0x1201u)
  {
    if (v4 != 4610)
    {
      if (v4 == 5632)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v5 = gleLightMaterialRGBAChange_F_S;
  }

  else
  {
    if (v4 != 4608)
    {
      if (v4 == 4609)
      {
        v5 = gleLightMaterialRGBAChange_F_D;
        goto LABEL_30;
      }

LABEL_17:
      v5 = gleLightMaterialRGBAChange_F_AD;
      goto LABEL_30;
    }

    v5 = gleLightMaterialRGBAChange_F_A;
  }

LABEL_30:
  v6 = v5;
  if (v2 != v5)
  {
    if (*(result + 14891) && !*(result + 1452))
    {
      result = v2(result, result + 8464);
    }

    if (*(v1 + 1452))
    {
      result = v6(v1, v1 + 8464);
    }
  }

  *(v1 + 1456) = v6;
  *(v1 + 1464) = v6;
  return result;
}

uint64_t gleSetColorMaterialEnable(uint64_t result)
{
  if (*(result + 32481))
  {
    goto LABEL_2;
  }

  v1 = *(result + 14891);
  if (*(result + 14891))
  {
    if (*(result + 24480) || *(result + 24756))
    {
LABEL_2:
      v1 = 0;
      goto LABEL_3;
    }

    v1 = (*(result + 24864) & 1) == 0;
  }

LABEL_3:
  if (*(result + 1452) != v1)
  {
    *(result + 1452) = v1;
    if (v1)
    {
      return (*(result + 1456))(result, result + 8464);
    }
  }

  return result;
}

void gleUpdateLightPosition(uint64_t a1, int a2)
{
  v4 = (a1 + 160 * a2);
  v6 = v4 + 1568;
  v7 = a1 + 784;
  v8 = v4 + 1580;
  v9 = v4[1574];
  v4[1580] = v9;
  v10 = v4[1575].f32[0];
  v4[1581].f32[0] = v10;
  v11 = v4[1575].f32[1];
  if (v11 == 0.0)
  {
    gleVectorNormalize(a1, v4 + 1580, v4 + 1584);
    *v8 = v6[16];
    v8[1].i32[0] = v6[17].i32[0];
    v12 = 1;
  }

  else
  {
    if (v11 != 1.0)
    {
      v13 = 1.0 / v11;
      v4[1580] = vmul_n_f32(v9, v13);
      v4[1581].f32[0] = v10 * v13;
    }

    gleVectorNormalize(a1, v4 + 1580, v4 + 1584);
    v12 = 0;
  }

  v6[17].f32[0] = v6[17].f32[0] + 1.0;
  gleVectorNormalize(a1, v6 + 16, v6 + 16);
  v14 = v7 + 80 * a2;
  v16 = *(v14 + 25);
  v15 = (v14 + 25);
  if (v16 != v12)
  {
    *v15 = v12;
    gleUpdateLightFast(a1, a2);
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10020u;
  }

  v17 = *(a1 + 19248);
  if (v17)
  {
    v18 = *(v17 + 20 * a2 + 2566);
    if (v18 <= 0x3FF)
    {
      *(a1 + ((v18 >> 3) & 0x1FFC) + 1552) |= 1 << v18;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x800000u;
    }
  }

  v19 = *(a1 + 19272);
  if (v19)
  {
    v20 = *(v19 + 20 * a2 + 2566);
    if (v20 <= 0x3FF)
    {
      *(a1 + ((v20 >> 3) & 0x1FFC) + 1936) |= 1 << v20;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x4000000u;
    }
  }

  v21 = *(a1 + 19280);
  if (v21)
  {
    v22 = *(v21 + 20 * a2 + 2566);
    if (v22 <= 0x3FF)
    {
      *(a1 + ((v22 >> 3) & 0x1FFC) + 2064) |= 1 << v22;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x8000000u;
    }
  }

  if (v17)
  {
    v23 = *(v17 + 20 * a2 + 2572);
    if (v23 <= 0x3FF)
    {
      *(a1 + ((v23 >> 3) & 0x1FFC) + 1552) |= 1 << v23;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x800000u;
    }
  }

  if (v19)
  {
    v24 = *(v19 + 20 * a2 + 2572);
    if (v24 <= 0x3FF)
    {
      *(a1 + ((v24 >> 3) & 0x1FFC) + 1936) |= 1 << v24;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x4000000u;
    }
  }

  if (v21)
  {
    v25 = *(v21 + 20 * a2 + 2572);
    if (v25 <= 0x3FF)
    {
      *(a1 + ((v25 >> 3) & 0x1FFC) + 2064) |= 1 << v25;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x8000000u;
    }
  }

  if (v17)
  {
    v26 = *(v17 + 20 * a2 + 2574);
    if (v26 <= 0x3FF)
    {
      *(a1 + ((v26 >> 3) & 0x1FFC) + 1552) |= 1 << v26;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x800000u;
    }
  }

  if (v19)
  {
    v27 = *(v19 + 20 * a2 + 2574);
    if (v27 <= 0x3FF)
    {
      *(a1 + ((v27 >> 3) & 0x1FFC) + 1936) |= 1 << v27;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x4000000u;
    }
  }

  if (v21)
  {
    v28 = *(v21 + 20 * a2 + 2574);
    if (v28 <= 0x3FF)
    {
      *(a1 + ((v28 >> 3) & 0x1FFC) + 2064) |= 1 << v28;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x8000000u;
    }
  }
}

uint64_t gleUpdateLightFast(uint64_t result, int a2)
{
  v2 = (result + 80 * a2);
  v3 = *(result + 1448);
  if (((*(result + 14880) >> a2) & 1) != 0 && (v2[810] || *(result + 14893) || !v2[809]))
  {
    v2[808] = 0;
    *(result + 1448) = v3 | (1 << a2);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    v2[808] = 1;
    v4 = v3 != 0;
    v5 = v3 & ~(1 << a2);
    *(result + 1448) = v5;
    if ((v4 ^ (v5 == 0)))
    {
      return result;
    }
  }

  *(result + 28652) = 0;
  *(result + 1548) |= 0x18000u;
  return result;
}

void gleUpdateLightDirection(uint64_t a1, int a2)
{
  gleVectorNormalize(a1, (a1 + 160 * a2 + 12608), (a1 + 160 * a2 + 12656));
  v4 = *(a1 + 19248);
  if (v4)
  {
    v5 = *(v4 + 20 * a2 + 2568);
    if (v5 <= 0x3FF)
    {
      *(a1 + ((v5 >> 3) & 0x1FFC) + 1552) |= 1 << v5;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x800000u;
    }
  }

  v6 = *(a1 + 19272);
  if (v6)
  {
    v7 = *(v6 + 20 * a2 + 2568);
    if (v7 <= 0x3FF)
    {
      *(a1 + ((v7 >> 3) & 0x1FFC) + 1936) |= 1 << v7;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x4000000u;
    }
  }

  v8 = *(a1 + 19280);
  if (v8)
  {
    v9 = *(v8 + 20 * a2 + 2568);
    if (v9 <= 0x3FF)
    {
      *(a1 + ((v9 >> 3) & 0x1FFC) + 2064) |= 1 << v9;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x8000000u;
    }
  }

  if (v4)
  {
    v10 = *(v4 + 20 * a2 + 2576);
    if (v10 <= 0x3FF)
    {
      *(a1 + ((v10 >> 3) & 0x1FFC) + 1552) |= 1 << v10;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x800000u;
    }
  }

  if (v6)
  {
    v11 = *(v6 + 20 * a2 + 2576);
    if (v11 <= 0x3FF)
    {
      *(a1 + ((v11 >> 3) & 0x1FFC) + 1936) |= 1 << v11;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x4000000u;
    }
  }

  if (v8)
  {
    v12 = *(v8 + 20 * a2 + 2576);
    if (v12 <= 0x3FF)
    {
      *(a1 + ((v12 >> 3) & 0x1FFC) + 2064) |= 1 << v12;
      *(a1 + 28652) = 0;
      *(a1 + 1532) |= 0x8000000u;
    }
  }
}

void gleUpdateLightExponents(uint64_t a1, int a2)
{
  v4 = a1 + 160 * a2;
  v5 = (a1 + 80 * a2 + 784);
  if (*(v4 + 12688) <= 90.0)
  {
    v7 = v4 + 12544;
    v8 = *(v4 + 12636);
    if (v5->f32[0] != v8)
    {
      v5->f32[0] = v8;
      if (v8 <= 0.000005)
      {
        __asm { FMOV            V0.4S, #1.0 }

        *(a1 + 80 * a2 + 788) = _Q0;
        memset_pattern16((a1 + 80 * a2 + 816), &unk_23A1037B0, 0x2CuLL);
      }

      else
      {
        *&v9 = expf(-5.5215 / v8);
        v5->i32[1] = v9;
        v10.f32[0] = 1.0 - *&v9;
        v18 = 1.0 - *&v9;
        v19 = v9;
        v10.i32[1] = v9;
        v5[1] = vdiv_f32(0x3B83126F41200000, v10);
        v11 = 0;
        v5[2].f32[0] = exp2f(v8) + -1.0;
        do
        {
          v5[4].f32[v11] = powf(*&v19, *(v7 + 92));
          v12 = v19;
          *&v12 = (v18 / 10.0) + *&v19;
          v19 = v12;
          ++v11;
        }

        while (v11 != 10);
        v5[9].i32[0] = 1065353216;
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v5[3].u8[2] != v6)
  {
    v5[3].i8[2] = v6;
    gleUpdateLightFast(a1, a2);
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10020u;
  }
}

uint64_t gleUpdateLightAttenuation(uint64_t result, int a2)
{
  v2 = result + 160 * a2;
  v3 = *(v2 + 12624);
  if (fabsf(v3) >= 0.000005)
  {
    v5 = v2 + 12544;
    if (*(v5 + 84) == 0.0 && *(v5 + 88) == 0.0)
    {
      *(result + 80 * a2 + 811) = 1;
      v4 = v3 == 1.0;
    }

    else
    {
      v4 = 0;
      *(result + 80 * a2 + 811) = 0;
    }

    *(result + 80 * a2 + 804) = 1.0 / v3;
  }

  else
  {
    v4 = 0;
    *(result + 80 * a2 + 811) = 0;
  }

  if (*(result + 80 * a2 + 812) != v4)
  {
    *(result + 80 * a2 + 812) = v4;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x10020u;
  }

  v6 = *(result + 19248);
  if (v6)
  {
    v7 = *(v6 + 20 * a2 + 2570);
    if (v7 <= 0x3FF)
    {
      *(result + ((v7 >> 3) & 0x1FFC) + 1552) |= 1 << v7;
      *(result + 28652) = 0;
      *(result + 1532) |= 0x800000u;
    }
  }

  v8 = *(result + 19272);
  if (v8)
  {
    v9 = *(v8 + 20 * a2 + 2570);
    if (v9 <= 0x3FF)
    {
      *(result + ((v9 >> 3) & 0x1FFC) + 1936) |= 1 << v9;
      *(result + 28652) = 0;
      *(result + 1532) |= 0x4000000u;
    }
  }

  v10 = *(result + 19280);
  if (v10)
  {
    v11 = *(v10 + 20 * a2 + 2570);
    if (v11 <= 0x3FF)
    {
      *(result + ((v11 >> 3) & 0x1FFC) + 2064) |= 1 << v11;
      *(result + 28652) = 0;
      *(result + 1532) |= 0x8000000u;
    }
  }

  return result;
}

uint64_t gleUpdateInverseNeeds(uint64_t result)
{
  v1 = *(result + 29032);
  v2 = v1[24];
  *(result + 2216) = 0x89D8E67F80000000;
  v3 = v1[101];
  if (v1[101])
  {
    v4 = -1073741824;
    *(result + 2216) = -1073741824;
  }

  else
  {
    v4 = 0x80000000;
  }

  v5 = (result + 28744);
  v6 = -1982011777;
  if ((v2 & 0x20) != 0)
  {
    *(result + 2220) = -1982011777;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = -1982273921;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }
  }

  if (v3 || *(result + 32505))
  {
    v6 |= 0x30000000u;
  }

  v6 |= 0x40000000u;
  *(result + 2220) = v6;
LABEL_12:
  v7 = *(result + 24864);
  if (v7)
  {
    v9 = *(result + 24768);
    if (!v9)
    {
      v9 = *(*(result + 24776) + 40);
    }

    v4 |= *(v9 + 224);
    goto LABEL_36;
  }

  if (*(result + 24756))
  {
    v8 = *(result + 24400);
    v4 |= *(v8 + 180);
    *(result + 2216) = v4;
    if (!v1[103] || !*v5 || !*(v8 + 457))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v10 = *(result + 14890);
  if (*(result + 14890) || *(result + 23800))
  {
    if (*(result + 17699))
    {
      v4 |= 0xFFE0u;
    }

    else if (*(result + 17697))
    {
      v4 |= 16 * (0xFFFFFFFF >> -*(result + 17696));
    }

    else
    {
      v4 |= 0x10u;
    }

    *(result + 2216) = v4;
  }

  if (v3 || *(result + 32505))
  {
    v6 |= 0x10000u;
    *(result + 2220) = v6;
    if (v10)
    {
      v4 |= 0x1000000u;
      *(result + 2216) = v4;
    }
  }

  if (v1[103] && *v5)
  {
LABEL_35:
    v4 |= 8u;
LABEL_36:
    *(result + 2216) = v4;
  }

LABEL_37:
  if ((v7 & 8) != 0)
  {
    v11 = *(result + 24768);
    if (!v11)
    {
      v11 = *(*(result + 24776) + 64);
    }

    v4 |= *(v11 + 2336);
    *(result + 2216) = v4;
  }

  if ((v7 & 0x10) != 0)
  {
    v13 = *(result + 24768);
    if (!v13)
    {
      v13 = *(*(result + 24776) + 72);
    }

    v12 = *(v13 + 3040);
    goto LABEL_47;
  }

  if (*(result + 24760))
  {
    v12 = *(*(result + 24432) + 180);
LABEL_47:
    *(result + 2216) = v4 | v12;
    return result;
  }

  *(result + 2220) = v6 | 0x20000;
  return result;
}

uint64_t gleUpdateLightModel(uint64_t a1)
{
  for (i = 0; i != 8; ++i)
  {
    result = gleUpdateLightFast(a1, i);
  }

  *(a1 + 28652) = 0;
  *(a1 + 1548) |= 0x10020u;
  return result;
}

uint64_t gleUpdateClipPlane(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 28744);
  *(result + 28744) = 0;
  do
  {
    if ((*(result + 17572) >> v1))
    {
      *(result + 28744) = 1;
      *(result + 28736 + v2++) = v1;
    }

    ++v1;
  }

  while (v1 != 8);
  *(result + 28732) = v2;
  if (v3 != *(result + 28744))
  {
    *(result + 28652) = 0;
    *(result + 1548) |= 0x18200u;
    if (*(*(result + 29032) + 103))
    {
      return gleUpdateInverseNeeds(result);
    }
  }

  return result;
}

uint64_t gleUpdateMatrixMode(uint64_t result)
{
  v1 = *(result + 20484);
  if (v1 <= 23)
  {
    v2 = result + (v1 << 6);
    *(result + 19976) = v2 + 9360;
    *(result + 19984) = v2 + 10896;
    if ((v1 - 3) >= 2)
    {
      v3 = 1 << v1;
    }

    else
    {
      v3 = (1 << v1) | 2;
    }

    *(result + 20488) = v3;
  }

  return result;
}

uint64_t gleUpdateTextureCoordGen(_DWORD *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1 + 5948;
  v8 = a1[5950];
  v9 = a1[5951];
  v10 = a1[5948];
  v11 = a1[5949];
  *(a1 + 2974) = 0;
  v12 = 16535;
  v13 = 4097;
  *(a1 + 2975) = 0;
  result = 0x10000;
  do
  {
    if (*(a1 + v12 - 3))
    {
      v15 = 1 << v6;
      v16 = LOWORD(a1[v13]);
      if (v16 <= 0x2401)
      {
        if (v16 == 9216)
        {
          v3 |= v15;
          v7[1] = v3;
        }

        else if (v16 == 9217)
        {
          v2 |= v15;
          *v7 = v2;
        }
      }

      else
      {
        if (v16 == 9218)
        {
          v5 |= v15;
          v4 |= v15;
          v7[2] = v5;
LABEL_16:
          v7[3] = v4;
          goto LABEL_19;
        }

        if (v16 != 34065)
        {
          if (v16 != 34066)
          {
            goto LABEL_19;
          }

          v4 |= v15;
          goto LABEL_16;
        }

        v5 |= v15;
        v7[2] = v5;
      }
    }

    else if (!*(a1 + v12 - 2) && !*(a1 + v12 - 1) && !*(a1 + v12))
    {
      goto LABEL_47;
    }

LABEL_19:
    if (*(a1 + v12 - 2))
    {
      v17 = 256 << v6;
      v18 = LOWORD(a1[v13 + 9]);
      if (v18 <= 0x2401)
      {
        if (v18 == 9216)
        {
          v3 |= v17;
          v7[1] = v3;
        }

        else if (v18 == 9217)
        {
          v2 |= v17;
          *v7 = v2;
        }

        goto LABEL_32;
      }

      switch(v18)
      {
        case 0x2402u:
          v5 |= v17;
          v4 |= v17;
          v7[2] = v5;
          goto LABEL_29;
        case 0x8511u:
          v5 |= v17;
          v7[2] = v5;
          break;
        case 0x8512u:
          v4 |= v17;
LABEL_29:
          v7[3] = v4;
          break;
      }
    }

LABEL_32:
    if (*(a1 + v12 - 1))
    {
      v19 = 0x10000 << v6;
      v20 = LOWORD(a1[v13 + 18]);
      if (v20 > 0x8510)
      {
        if (v20 == 34065)
        {
          v5 |= v19;
          v7[2] = v5;
        }

        else if (v20 == 34066)
        {
          v4 |= v19;
          v7[3] = v4;
        }
      }

      else if (v20 == 9216)
      {
        v3 |= v19;
        v7[1] = v3;
      }

      else if (v20 == 9217)
      {
        v2 |= v19;
        *v7 = v2;
      }
    }

    if (*(a1 + v12))
    {
      v21 = 0x1000000 << v6;
      v22 = LOWORD(a1[v13 + 27]);
      if (v22 == 9216)
      {
        v3 |= v21;
        v7[1] = v3;
      }

      else if (v22 == 9217)
      {
        v2 |= v21;
        *v7 = v2;
      }
    }

LABEL_47:
    ++v6;
    v12 += 148;
    v13 += 37;
  }

  while (v6 != 8);
  if (((v9 | v8) == 0) == ((v4 | v5) != 0))
  {
    result = gleUpdateInverseNeeds(a1);
    a1[7163] = 0;
    a1[387] |= 0x8002u;
    v2 = *v7;
    v3 = v7[1];
  }

  if (v2 != v10 || v3 != v11)
  {
    a1[7163] = 0;
    v23 = a1[387];
    a1[387] = v23 | 0x18008;
    if (((v3 | v2) ^ (v11 | v10)) >> 24)
    {
      a1[387] = v23 | 0x1C008;
    }
  }

  if (v7[3] != v9 || v7[2] != v8)
  {
    a1[7163] = 0;
    a1[387] |= 0x18010u;
  }

  return result;
}

_DWORD *gleUpdateTextureParams(_DWORD *result, int a2)
{
  v2 = result[5946];
  if (((result[19 * a2 + 3921] & 0x1F) != 0) != ((v2 >> a2) & 1))
  {
    v3 = v2 | (1 << a2);
    v4 = v2 & ~(1 << a2);
    if ((result[19 * a2 + 3921] & 0x1F) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    result[5946] = v5;
  }

  result[7163] = 0;
  result[387] |= 0x20000u;
  return result;
}

uint64_t gleUpdateFogData(uint64_t result)
{
  v1 = (result + 29592);
  v2 = (result + 24756);
  v3 = *(result + 24864);
  if (v3)
  {
    v5 = 0;
    v4 = 1;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *v2 != 0;
    if (*v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = -128;
    }

    if ((v3 & 0x10) != 0)
    {
      goto LABEL_9;
    }
  }

  if (*(result + 24760) || !*(result + 15282))
  {
    goto LABEL_9;
  }

  if (v4 && *(result + 32480) || *(result + 15292) == 4354 || !*(*(result + 29032) + 104))
  {
    v13 = 8;
  }

  else
  {
    v13 = 16;
  }

  v15 = *(result + 26000);
  v16 = v5 | v13;
  if (*(result + 15280) == 9474)
  {
    v17 = v16 | 4;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(result + 15276);
  if (v18 == 2048)
  {
    v5 = v17 | 2;
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v21 = *(v15 - 1104);
    if ((v17 & 4) != 0)
    {
      v22 = fmaxf(v21, *(result + 288));
    }

    else
    {
      v22 = fabsf(v21);
    }

    v20 = *(result + 292) / (*(result + 292) + (-(*(result + 292) - ((*(result + 308) + (-(*(result + 312) - (*(result + 316) * -(*(result + 15244) * v22))) * -(*(result + 15244) * v22))) * -(*(result + 15244) * v22))) * -(*(result + 15244) * v22)));
  }

  else if (v18 == 9729)
  {
    v5 = v17 | 1;
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v19 = *(v15 - 1104);
    if ((v17 & 4) == 0)
    {
      v19 = fabsf(v19);
    }

    v20 = fminf(fmaxf((*(result + 15252) - v19) * *(result + 15256), *(result + 288)), *(result + 292));
  }

  else
  {
    v5 = v17 | 3;
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v23 = *(v15 - 1104) * *(result + 15244);
    v20 = *(result + 292) / (*(result + 292) + (-(*(result + 292) - ((*(result + 308) + (-(*(result + 312) - (*(result + 316) * -(v23 * v23))) * -(v23 * v23))) * -(v23 * v23))) * -(v23 * v23)));
  }

  *(v15 - 1100) = v20;
LABEL_9:
  if (*(result + 15278) == 33873)
  {
    v6 = v5 & 0xFFFFFF9F | 0x20;
  }

  else
  {
    v7 = v5 & 0xFFFFFF9F;
    if (*(result + 15280) == 34139)
    {
      v6 = v7 | 0x40;
    }

    else
    {
      v6 = v7;
    }
  }

  v8 = *v1;
  if (v8 != v6)
  {
    v9 = (v6 >> 5) & 3;
    if (((v8 & 0x60) == 32) == (v9 != 1))
    {
      *(result + 28652) = 0;
      *(result + 1548) |= 0x8002u;
    }

    if (((v8 >> 5) & 3) != v9)
    {
      *(result + 28652) = 0;
      *(result + 1548) |= 0x10008u;
    }

    v10 = v8 ^ v6;
    if ((v10 & 0x18) != 0)
    {
      if ((v6 & 0x80u) != 0)
      {
        v11 = 65544;
      }

      else
      {
        v11 = 520;
      }

      v12 = *(result + 1548) | v11;
    }

    else
    {
      if ((v6 & 0x10) != 0 && (v10 & 7) != 0)
      {
        if ((v6 & 0x80u) != 0)
        {
          v14 = 65544;
        }

        else
        {
          v14 = 520;
        }

        *(result + 28652) = 0;
        *(result + 1548) |= v14;
      }

      if ((v6 & 8) == 0 || (v10 & 7) == 0)
      {
        goto LABEL_40;
      }

      v12 = *(result + 1548);
    }

    *(result + 28652) = 0;
    *(result + 1548) = v12 | 0x20000;
LABEL_40:
    if ((v10 & 3) != 0)
    {
      *(result + 28652) = 0;
      *(result + 1548) |= 0x30000000u;
    }

    *v1 = v6;
  }

  return result;
}

uint64_t gleSelectVertexSubmitFunc(uint64_t result)
{
  v1 = (result + 24756);
  *(result + 26152) = gleSetVertexSubmitFunc;
  *(result + 26160) = gleSetVertexSubmitFunc;
  *(result + 26168) = gleSetVertexConvertFunc;
  *(result + 26176) = gleSetVertexConvertFunc;
  *(result + 26184) = gleSetVertexArrayFunc;
  *(result + 26192) = gleSetVertexArrayFunc;
  *(result + 26200) = gleSetVertexElemFunc;
  *(result + 26208) = gleSetVertexElemFunc;
  v2 = *(result + 26280);
  if (v2)
  {
    v3 = *(result + 26288);
    v4 = 4 * *(v2 + 2);
    *(result + 26132) = v4;
    if (v3)
    {
      v4 = 4 * *(v3 + 2);
    }

    *(result + 26134) = v4;
  }

  if (*(result + 29830) != 7168 || !v2 || !*(result + 32481))
  {
    v5 = *(result + 24480);
    if (v5 || *v1 || (*(result + 24864) & 1) != 0)
    {
      if (*(result + 24864))
      {
        v7 = *(result + 24768);
        if (!v7)
        {
          v7 = *(*(result + 24776) + 40);
        }

        v6 = (v7 + 736);
      }

      else if (*v1)
      {
        v6 = (*(result + 24400) + 472);
      }

      else
      {
        v6 = (v5 + 432);
      }

      v8 = *v6;
      if (v8)
      {
        v9 = 16 * *(v8 + 48);
        *(result + 26016) = (*(result + 26120) * v9) + *(result + 26000);
        *(result + 26124) = v9;
      }
    }

    else
    {
      *(result + 26124) = 640;
      *(result + 26016) = *(result + 26024);
    }
  }

  return result;
}

uint64_t gliInitDispatchTable(uint64_t result)
{
  v1 = (result + 32492);
  v2 = *(result + 28976);
  v3 = *(result + 28984);
  v4 = 1036;
  v5 = v3;
  do
  {
    if (!*v5++)
    {
      v3 = v2;
    }

    *v3 = glInvalidFunction;
    ++v2;
    v3 = v5;
    --v4;
  }

  while (v4);
  v7 = *(result + 32501);
  if ((v7 - 3) >= 2)
  {
    if (v7 != 2)
    {
      goto LABEL_3098;
    }

    v323 = *(result + 28984);
    v324 = *(result + 28976);
    if (v323[1])
    {
      v325 = *(result + 28984);
    }

    else
    {
      v325 = *(result + 28976);
    }

    if (*(result + 27648))
    {
      *(v325 + 8) = glAlphaFunc_Comp;
      if (v323[968])
      {
        v326 = v323;
      }

      else
      {
        v326 = v324;
      }

      v326[968] = glAlphaFuncx_PackThread;
      if (v323[7])
      {
        v327 = v323;
      }

      else
      {
        v327 = v324;
      }

      v327[7] = glBlendFunc_Comp;
      if (v323[49])
      {
        v328 = v323;
      }

      else
      {
        v328 = v324;
      }

      v328[49] = glColorMask_Comp;
      if (v323[60])
      {
        v329 = v323;
      }

      else
      {
        v329 = v324;
      }

      v329[60] = glDepthFunc_Comp;
      if (v323[61])
      {
        v330 = v323;
      }

      else
      {
        v330 = v324;
      }

      v330[61] = glDepthMask_Comp;
      if (v323[161])
      {
        v331 = v323;
      }

      else
      {
        v331 = v324;
      }

      v331[161] = glLogicOp_Comp;
      if (v323[254])
      {
        v332 = v323;
      }

      else
      {
        v332 = v324;
      }

      v332[254] = glStencilFunc_Comp;
      if (v323[255])
      {
        v333 = v323;
      }

      else
      {
        v333 = v324;
      }

      v333[255] = glStencilMask_Comp;
      if (v323[256])
      {
        v334 = v323;
      }

      else
      {
        v334 = v324;
      }

      v334[256] = glStencilOp_Comp;
      if (v323[251])
      {
        v335 = v323;
      }

      else
      {
        v335 = v324;
      }

      v335[251] = glScissor_Comp;
      if (v323[10])
      {
        v336 = v323;
      }

      else
      {
        v336 = v324;
      }

      v336[10] = glClear_Comp;
      if (v323[12])
      {
        v337 = v323;
      }

      else
      {
        v337 = v324;
      }

      v337[12] = glClearColor_Comp;
      if (v323[969])
      {
        v338 = v323;
      }

      else
      {
        v338 = v324;
      }

      v338[969] = glClearColorx_PackThread;
      if (v323[15])
      {
        v339 = v323;
      }

      else
      {
        v339 = v324;
      }

      v339[15] = glClearStencil_Comp;
      if (v323[878])
      {
        v340 = v323;
      }

      else
      {
        v340 = v324;
      }

      v340[878] = glClearDepthf_PackThread;
      if (v323[970])
      {
        v341 = v323;
      }

      else
      {
        v341 = v324;
      }

      v341[970] = glClearDepthx_PackThread;
      if (v323[37])
      {
        v342 = v323;
      }

      else
      {
        v342 = v324;
      }

      v342[37] = glColor4f_Comp;
      if (v323[43])
      {
        v343 = v323;
      }

      else
      {
        v343 = v324;
      }

      v343[43] = glColor4ub_Comp;
      if (v323[973])
      {
        v344 = v323;
      }

      else
      {
        v344 = v324;
      }

      v344[973] = glColor4x_PackThread;
      if (v323[182])
      {
        v345 = v323;
      }

      else
      {
        v345 = v324;
      }

      v345[182] = glNormal3f_Comp;
      if (v323[995])
      {
        v346 = v323;
      }

      else
      {
        v346 = v324;
      }

      v346[995] = glNormal3x_PackThread;
      if (v323[369])
      {
        v347 = v323;
      }

      else
      {
        v347 = v324;
      }

      v347[369] = glMultiTexCoord4f_Comp;
      if (v323[1007])
      {
        v348 = v323;
      }

      else
      {
        v348 = v324;
      }

      v348[1007] = glMultiTexCoord4x_PackThread;
      if (v323[334])
      {
        v349 = v323;
      }

      else
      {
        v349 = v324;
      }

      v349[334] = glVertexPointer_PackThread;
      if (v323[51])
      {
        v350 = v323;
      }

      else
      {
        v350 = v324;
      }

      v350[51] = glColorPointer_PackThread;
      if (v323[188])
      {
        v351 = v323;
      }

      else
      {
        v351 = v324;
      }

      v351[188] = glNormalPointer_PackThread;
      if (v323[289])
      {
        v352 = v323;
      }

      else
      {
        v352 = v324;
      }

      v352[289] = glTexCoordPointer_PackThread;
      if (v323[341])
      {
        v353 = v323;
      }

      else
      {
        v353 = v324;
      }

      v353[341] = glClientActiveTexture_PackThread;
      if (v323[64])
      {
        v354 = v323;
      }

      else
      {
        v354 = v324;
      }

      v354[64] = glDisableClientState_PackThread;
      if (v323[73])
      {
        v355 = v323;
      }

      else
      {
        v355 = v324;
      }

      v355[73] = glEnableClientState_PackThread;
      if (v323[65])
      {
        v356 = v323;
      }

      else
      {
        v356 = v324;
      }

      v356[65] = glDrawArrays_PackThread;
      if (v323[67])
      {
        v357 = v323;
      }

      else
      {
        v357 = v324;
      }

      v357[67] = glDrawElements_PackThread;
      if (v323[98])
      {
        v358 = v323;
      }

      else
      {
        v358 = v324;
      }

      v358[98] = glGenTextures_ExecThread;
      if (v323[59])
      {
        v359 = v323;
      }

      else
      {
        v359 = v324;
      }

      v359[59] = glDeleteTextures_ExecThread;
      if (v323[5])
      {
        v360 = v323;
      }

      else
      {
        v360 = v324;
      }

      v360[5] = glBindTexture_Comp;
      if (v323[145])
      {
        v361 = v323;
      }

      else
      {
        v361 = v324;
      }

      v361[145] = glIsTexture_ExecThread;
      if (v323[342])
      {
        v362 = v323;
      }

      else
      {
        v362 = v324;
      }

      v362[342] = glActiveTexture_Comp;
      if (v323[54])
      {
        v363 = v323;
      }

      else
      {
        v363 = v324;
      }

      v363[54] = glCopyTexImage2D_Comp;
      if (v323[56])
      {
        v364 = v323;
      }

      else
      {
        v364 = v324;
      }

      v364[56] = glCopyTexSubImage2D_Comp;
      if (v323[301])
      {
        v365 = v323;
      }

      else
      {
        v365 = v324;
      }

      v365[301] = glTexImage2D_PackThread;
      if (v323[307])
      {
        v366 = v323;
      }

      else
      {
        v366 = v324;
      }

      v366[307] = glTexSubImage2D_PackThread;
      if (v323[380])
      {
        v367 = v323;
      }

      else
      {
        v367 = v324;
      }

      v367[380] = glCompressedTexImage2D_PackThread;
      if (v323[383])
      {
        v368 = v323;
      }

      else
      {
        v368 = v324;
      }

      v368[383] = glCompressedTexSubImage2D_PackThread;
      if (v323[302])
      {
        v369 = v323;
      }

      else
      {
        v369 = v324;
      }

      v369[302] = glTexParameterf_Comp;
      if (v323[303])
      {
        v370 = v323;
      }

      else
      {
        v370 = v324;
      }

      v370[303] = glTexParameterfv_Comp;
      if (v323[304])
      {
        v371 = v323;
      }

      else
      {
        v371 = v324;
      }

      v371[304] = glTexParameteri_Comp;
      if (v323[305])
      {
        v372 = v323;
      }

      else
      {
        v372 = v324;
      }

      v372[305] = glTexParameteriv_Comp;
      if (v323[1004])
      {
        v373 = v323;
      }

      else
      {
        v373 = v324;
      }

      v373[1004] = glTexParameterx_PackThread;
      if (v323[1005])
      {
        v374 = v323;
      }

      else
      {
        v374 = v324;
      }

      v374[1005] = glTexParameterxv_PackThread;
      if (v323[126])
      {
        v375 = v323;
      }

      else
      {
        v375 = v324;
      }

      v375[126] = glGetTexParameterfv_ExecThread;
      if (v323[127])
      {
        v376 = v323;
      }

      else
      {
        v376 = v324;
      }

      v376[127] = glGetTexParameteriv_ExecThread;
      if (v323[290])
      {
        v377 = v323;
      }

      else
      {
        v377 = v324;
      }

      v377[290] = glTexEnvf_Comp;
      if (v323[291])
      {
        v378 = v323;
      }

      else
      {
        v378 = v324;
      }

      v378[291] = glTexEnvfv_Comp;
      if (v323[292])
      {
        v379 = v323;
      }

      else
      {
        v379 = v324;
      }

      v379[292] = glTexEnvi_Comp;
      if (v323[293])
      {
        v380 = v323;
      }

      else
      {
        v380 = v324;
      }

      v380[293] = glTexEnviv_Comp;
      if (v323[1002])
      {
        v381 = v323;
      }

      else
      {
        v381 = v324;
      }

      v381[1002] = glTexEnvx_PackThread;
      if (v323[1003])
      {
        v382 = v323;
      }

      else
      {
        v382 = v324;
      }

      v382[1003] = glTexEnvxv_PackThread;
      if (v323[89])
      {
        v383 = v323;
      }

      else
      {
        v383 = v324;
      }

      v383[89] = glFinish_ExecThread;
      if (v323[90])
      {
        v384 = v323;
      }

      else
      {
        v384 = v324;
      }

      v384[90] = glFlush_ExecThread;
      if (v323[99])
      {
        v385 = v323;
      }

      else
      {
        v385 = v324;
      }

      v385[99] = glGetBooleanv_ExecThread;
      if (v323[102])
      {
        v386 = v323;
      }

      else
      {
        v386 = v324;
      }

      v386[102] = glGetError_ExecThread;
      if (v323[103])
      {
        v387 = v323;
      }

      else
      {
        v387 = v324;
      }

      v387[103] = glGetFloatv_ExecThread;
      if (v323[104])
      {
        v388 = v323;
      }

      else
      {
        v388 = v324;
      }

      v388[104] = glGetIntegerv_ExecThread;
      if (v323[105])
      {
        v389 = v323;
      }

      else
      {
        v389 = v324;
      }

      v389[105] = glGetLightfv_ExecThread;
      if (v323[110])
      {
        v390 = v323;
      }

      else
      {
        v390 = v324;
      }

      v390[110] = glGetMaterialfv_ExecThread;
      if (v323[115])
      {
        v391 = v323;
      }

      else
      {
        v391 = v324;
      }

      v391[115] = glGetPointerv_ExecThread;
      if (v323[117])
      {
        v392 = v323;
      }

      else
      {
        v392 = v324;
      }

      v392[117] = glGetString_ExecThread;
      if (v323[118])
      {
        v393 = v323;
      }

      else
      {
        v393 = v324;
      }

      v393[118] = glGetTexEnvfv_ExecThread;
      if (v323[119])
      {
        v394 = v323;
      }

      else
      {
        v394 = v324;
      }

      v394[119] = glGetTexEnviv_ExecThread;
      if (v323[979])
      {
        v395 = v323;
      }

      else
      {
        v395 = v324;
      }

      v395[979] = glGetClipPlanef_ExecThread;
      if (v323[980])
      {
        v396 = v323;
      }

      else
      {
        v396 = v324;
      }

      v396[980] = glGetClipPlanex_ExecThread;
      if (v323[981])
      {
        v397 = v323;
      }

      else
      {
        v397 = v324;
      }

      v397[981] = glGetFixedv_ExecThread;
      if (v323[982])
      {
        v398 = v323;
      }

      else
      {
        v398 = v324;
      }

      v398[982] = glGetLightxv_ExecThread;
      if (v323[983])
      {
        v399 = v323;
      }

      else
      {
        v399 = v324;
      }

      v399[983] = glGetMaterialxv_ExecThread;
      if (v323[984])
      {
        v400 = v323;
      }

      else
      {
        v400 = v324;
      }

      v400[984] = glGetTexEnvxv_ExecThread;
      if (v323[985])
      {
        v401 = v323;
      }

      else
      {
        v401 = v324;
      }

      v401[985] = glGetTexParameterxv_ExecThread;
      if (v323[72])
      {
        v402 = v323;
      }

      else
      {
        v402 = v324;
      }

      v402[72] = glEnable_Comp;
      if (v323[63])
      {
        v403 = v323;
      }

      else
      {
        v403 = v324;
      }

      v403[63] = glDisable_Comp;
      if (v323[143])
      {
        v404 = v323;
      }

      else
      {
        v404 = v324;
      }

      v404[143] = glIsEnabled_ExecThread;
      if (v323[642])
      {
        v405 = v323;
      }

      else
      {
        v405 = v324;
      }

      v405[642] = glBindBuffer_PackThread;
      if (v323[643])
      {
        v406 = v323;
      }

      else
      {
        v406 = v324;
      }

      v406[643] = glDeleteBuffers_ExecThread;
      if (v323[644])
      {
        v407 = v323;
      }

      else
      {
        v407 = v324;
      }

      v407[644] = glGenBuffers_ExecThread;
      if (v323[645])
      {
        v408 = v323;
      }

      else
      {
        v408 = v324;
      }

      v408[645] = glIsBuffer_ExecThread;
      if (v323[646])
      {
        v409 = v323;
      }

      else
      {
        v409 = v324;
      }

      v409[646] = glBufferData_PackThread;
      if (v323[647])
      {
        v410 = v323;
      }

      else
      {
        v410 = v324;
      }

      v410[647] = glBufferSubData_PackThread;
      if (v323[649])
      {
        v411 = v323;
      }

      else
      {
        v411 = v324;
      }

      v411[649] = glMapBuffer_PackThread;
      if (v323[650])
      {
        v412 = v323;
      }

      else
      {
        v412 = v324;
      }

      v412[650] = glUnmapBuffer_PackThread;
      if (v323[651])
      {
        v413 = v323;
      }

      else
      {
        v413 = v324;
      }

      v413[651] = glGetBufferParameteriv_ExecThread;
      if (v323[652])
      {
        v414 = v323;
      }

      else
      {
        v414 = v324;
      }

      v414[652] = glGetBufferPointerv_ExecThread;
      if (v323[795])
      {
        v415 = v323;
      }

      else
      {
        v415 = v324;
      }

      v415[795] = glMapBufferRange_ExecThread;
      if (v323[796])
      {
        v416 = v323;
      }

      else
      {
        v416 = v324;
      }

      v416[796] = glFlushMappedBufferRange_PackThread;
      if (v323[665])
      {
        v417 = v323;
      }

      else
      {
        v417 = v324;
      }

      v417[665] = glIsRenderbufferEXT_ExecThread;
      if (v323[666])
      {
        v418 = v323;
      }

      else
      {
        v418 = v324;
      }

      v418[666] = glBindRenderbufferEXT_PackThread;
      if (v323[667])
      {
        v419 = v323;
      }

      else
      {
        v419 = v324;
      }

      v419[667] = glDeleteRenderbuffersEXT_ExecThread;
      if (v323[668])
      {
        v420 = v323;
      }

      else
      {
        v420 = v324;
      }

      v420[668] = glGenRenderbuffersEXT_ExecThread;
      if (v323[669])
      {
        v421 = v323;
      }

      else
      {
        v421 = v324;
      }

      v421[669] = glRenderbufferStorageEXT_PackThread;
      if (v323[670])
      {
        v422 = v323;
      }

      else
      {
        v422 = v324;
      }

      v422[670] = glGetRenderbufferParameterivEXT_ExecThread;
      if (v323[671])
      {
        v423 = v323;
      }

      else
      {
        v423 = v324;
      }

      v423[671] = glIsFramebufferEXT_ExecThread;
      if (!v323[672])
      {
        v323 = v324;
      }

      v323[672] = glBindFramebufferEXT_PackThread;
      v424 = *(result + 28984);
      v425 = *(result + 28976);
      if (v424[673])
      {
        v426 = *(result + 28984);
      }

      else
      {
        v426 = *(result + 28976);
      }

      *(v426 + 5384) = glDeleteFramebuffersEXT_ExecThread;
      if (v424[674])
      {
        v427 = v424;
      }

      else
      {
        v427 = v425;
      }

      v427[674] = glGenFramebuffersEXT_ExecThread;
      if (v424[675])
      {
        v428 = v424;
      }

      else
      {
        v428 = v425;
      }

      v428[675] = glCheckFramebufferStatusEXT_ExecThread;
      if (v424[677])
      {
        v429 = v424;
      }

      else
      {
        v429 = v425;
      }

      v429[677] = glFramebufferTexture2DEXT_PackThread;
      if (v424[679])
      {
        v430 = v424;
      }

      else
      {
        v430 = v425;
      }

      v430[679] = glFramebufferRenderbufferEXT_PackThread;
      if (v424[680])
      {
        v431 = v424;
      }

      else
      {
        v431 = v425;
      }

      v431[680] = glGetFramebufferAttachmentParameterivEXT_ExecThread;
      if (v424[681])
      {
        v432 = v424;
      }

      else
      {
        v432 = v425;
      }

      v432[681] = glGenerateMipmapEXT_PackThread;
      if (v424[155])
      {
        v433 = v424;
      }

      else
      {
        v433 = v425;
      }

      v433[155] = glLineWidth_Comp;
      if (v424[990])
      {
        v434 = v424;
      }

      else
      {
        v434 = v425;
      }

      v434[990] = glLineWidthx_PackThread;
      if (v424[199])
      {
        v435 = v424;
      }

      else
      {
        v435 = v425;
      }

      v435[199] = glPointSize_Comp;
      if (v424[998])
      {
        v436 = v424;
      }

      else
      {
        v436 = v425;
      }

      v436[998] = glPointSizex_PackThread;
      if (v424[540])
      {
        v437 = v424;
      }

      else
      {
        v437 = v425;
      }

      v437[540] = glPointParameterf_Comp;
      if (v424[541])
      {
        v438 = v424;
      }

      else
      {
        v438 = v425;
      }

      v438[541] = glPointParameterfv_Comp;
      if (v424[1009])
      {
        v439 = v424;
      }

      else
      {
        v439 = v425;
      }

      v439[1009] = glPointParameterx_PackThread;
      if (v424[1010])
      {
        v440 = v424;
      }

      else
      {
        v440 = v425;
      }

      v440[1010] = glPointParameterxv_PackThread;
      if (v424[201])
      {
        v441 = v424;
      }

      else
      {
        v441 = v425;
      }

      v441[201] = glPolygonOffset_Comp;
      if (v424[999])
      {
        v442 = v424;
      }

      else
      {
        v442 = v425;
      }

      v442[999] = glPolygonOffsetx_PackThread;
      if (v424[57])
      {
        v443 = v424;
      }

      else
      {
        v443 = v425;
      }

      v443[57] = glCullFace_Comp;
      if (v424[95])
      {
        v444 = v424;
      }

      else
      {
        v444 = v425;
      }

      v444[95] = glFrontFace_Comp;
      if (v424[971])
      {
        v445 = v424;
      }

      else
      {
        v445 = v425;
      }

      v445[971] = glClipPlanef_PackThread;
      if (v424[972])
      {
        v446 = v424;
      }

      else
      {
        v446 = v425;
      }

      v446[972] = glClipPlanex_PackThread;
      if (v424[877])
      {
        v447 = v424;
      }

      else
      {
        v447 = v425;
      }

      v447[877] = glDepthRangef_PackThread;
      if (v424[974])
      {
        v448 = v424;
      }

      else
      {
        v448 = v425;
      }

      v448[974] = glDepthRangex_PackThread;
      if (v424[335])
      {
        v449 = v424;
      }

      else
      {
        v449 = v425;
      }

      v449[335] = glViewport_Comp;
      if (v424[91])
      {
        v450 = v424;
      }

      else
      {
        v450 = v425;
      }

      v450[91] = glFogf_Comp;
      if (v424[92])
      {
        v451 = v424;
      }

      else
      {
        v451 = v425;
      }

      v451[92] = glFogfv_Comp;
      if (v424[975])
      {
        v452 = v424;
      }

      else
      {
        v452 = v425;
      }

      v452[975] = glFogx_PackThread;
      if (v424[976])
      {
        v453 = v424;
      }

      else
      {
        v453 = v425;
      }

      v453[976] = glFogxv_PackThread;
      if (v424[174])
      {
        v454 = v424;
      }

      else
      {
        v454 = v425;
      }

      v454[174] = glMatrixMode_Comp;
      if (v424[157])
      {
        v455 = v424;
      }

      else
      {
        v455 = v425;
      }

      v455[157] = glLoadIdentity_Comp;
      if (v424[159])
      {
        v456 = v424;
      }

      else
      {
        v456 = v425;
      }

      v456[159] = glLoadMatrixf_Comp;
      if (v424[991])
      {
        v457 = v424;
      }

      else
      {
        v457 = v425;
      }

      v457[991] = glLoadMatrixx_PackThread;
      if (v424[176])
      {
        v458 = v424;
      }

      else
      {
        v458 = v425;
      }

      v458[176] = glMultMatrixf_Comp;
      if (v424[994])
      {
        v459 = v424;
      }

      else
      {
        v459 = v425;
      }

      v459[994] = glMultMatrixx_PackThread;
      if (v424[996])
      {
        v460 = v424;
      }

      else
      {
        v460 = v425;
      }

      v460[996] = glOrthof_PackThread;
      if (v424[997])
      {
        v461 = v424;
      }

      else
      {
        v461 = v425;
      }

      v461[997] = glOrthox_PackThread;
      if (v424[248])
      {
        v462 = v424;
      }

      else
      {
        v462 = v425;
      }

      v462[248] = glRotatef_Comp;
      if (v424[1000])
      {
        v463 = v424;
      }

      else
      {
        v463 = v425;
      }

      v463[1000] = glRotatex_PackThread;
      if (v424[250])
      {
        v464 = v424;
      }

      else
      {
        v464 = v425;
      }

      v464[250] = glScalef_Comp;
      if (v424[1001])
      {
        v465 = v424;
      }

      else
      {
        v465 = v425;
      }

      v465[1001] = glScalex_PackThread;
      if (v424[309])
      {
        v466 = v424;
      }

      else
      {
        v466 = v425;
      }

      v466[309] = glTranslatef_Comp;
      if (v424[1006])
      {
        v467 = v424;
      }

      else
      {
        v467 = v425;
      }

      v467[1006] = glTranslatex_PackThread;
      if (v424[977])
      {
        v468 = v424;
      }

      else
      {
        v468 = v425;
      }

      v468[977] = glFrustumf_PackThread;
      if (v424[978])
      {
        v469 = v424;
      }

      else
      {
        v469 = v425;
      }

      v469[978] = glFrustumx_PackThread;
      if (v424[205])
      {
        v470 = v424;
      }

      else
      {
        v470 = v425;
      }

      v470[205] = glPopMatrix_Comp;
      if (v424[210])
      {
        v471 = v424;
      }

      else
      {
        v471 = v425;
      }

      v471[210] = glPushMatrix_Comp;
      if (v424[146])
      {
        v472 = v424;
      }

      else
      {
        v472 = v425;
      }

      v472[146] = glLightModelf_Comp;
      if (v424[147])
      {
        v473 = v424;
      }

      else
      {
        v473 = v425;
      }

      v473[147] = glLightModelfv_Comp;
      if (v424[986])
      {
        v474 = v424;
      }

      else
      {
        v474 = v425;
      }

      v474[986] = glLightModelx_PackThread;
      if (v424[987])
      {
        v475 = v424;
      }

      else
      {
        v475 = v425;
      }

      v475[987] = glLightModelxv_PackThread;
      if (v424[150])
      {
        v476 = v424;
      }

      else
      {
        v476 = v425;
      }

      v476[150] = glLightf_Comp;
      if (v424[151])
      {
        v477 = v424;
      }

      else
      {
        v477 = v425;
      }

      v477[151] = glLightfv_Comp;
      if (v424[988])
      {
        v478 = v424;
      }

      else
      {
        v478 = v425;
      }

      v478[988] = glLightx_PackThread;
      if (v424[989])
      {
        v479 = v424;
      }

      else
      {
        v479 = v425;
      }

      v479[989] = glLightxv_PackThread;
      if (v424[170])
      {
        v480 = v424;
      }

      else
      {
        v480 = v425;
      }

      v480[170] = glMaterialf_Comp;
      if (v424[171])
      {
        v481 = v424;
      }

      else
      {
        v481 = v425;
      }

      v481[171] = glMaterialfv_Comp;
      if (v424[992])
      {
        v482 = v424;
      }

      else
      {
        v482 = v425;
      }

      v482[992] = glMaterialx_PackThread;
      if (v424[993])
      {
        v483 = v424;
      }

      else
      {
        v483 = v425;
      }

      v483[993] = glMaterialxv_PackThread;
      if (v424[459])
      {
        v484 = v424;
      }

      else
      {
        v484 = v425;
      }

      v484[459] = glSampleCoverage_Comp;
      if (v424[1008])
      {
        v485 = v424;
      }

      else
      {
        v485 = v425;
      }

      v485[1008] = glSampleCoveragex_PackThread;
      if (v424[195])
      {
        v486 = v424;
      }

      else
      {
        v486 = v425;
      }

      v486[195] = glPixelStorei_PackThread;
      if (v424[237])
      {
        v487 = v424;
      }

      else
      {
        v487 = v425;
      }

      v487[237] = glReadPixels_PackThread;
      if (v424[253])
      {
        v488 = v424;
      }

      else
      {
        v488 = v425;
      }

      v488[253] = glShadeModel_Comp;
      if (v424[128])
      {
        v489 = v424;
      }

      else
      {
        v489 = v425;
      }

      v489[128] = glHint_Comp;
      if (v424[772])
      {
        v490 = v424;
      }

      else
      {
        v490 = v425;
      }

      v490[772] = glPointSizePointer_PackThread;
      if (v424[1011])
      {
        v491 = v424;
      }

      else
      {
        v491 = v425;
      }

      v491[1011] = glCurrentPaletteMatrixOES_PackThread;
      if (v424[1012])
      {
        v492 = v424;
      }

      else
      {
        v492 = v425;
      }

      v492[1012] = glLoadPaletteFromModelViewMatrixOES_PackThread;
      if (v424[1013])
      {
        v493 = v424;
      }

      else
      {
        v493 = v425;
      }

      v493[1013] = glMatrixIndexPointerOES_PackThread;
      if (v424[1014])
      {
        v494 = v424;
      }

      else
      {
        v494 = v425;
      }

      v494[1014] = glWeightPointerARB_PackThread;
      if (v424[1015])
      {
        v495 = v424;
      }

      else
      {
        v495 = v425;
      }

      v495[1015] = glDrawTexsOES_ExecThread;
      if (v424[1016])
      {
        v496 = v424;
      }

      else
      {
        v496 = v425;
      }

      v496[1016] = glDrawTexiOES_ExecThread;
      if (v424[1017])
      {
        v497 = v424;
      }

      else
      {
        v497 = v425;
      }

      v497[1017] = glDrawTexxOES_ExecThread;
      if (v424[1018])
      {
        v498 = v424;
      }

      else
      {
        v498 = v425;
      }

      v498[1018] = glDrawTexsvOES_ExecThread;
      if (v424[1019])
      {
        v499 = v424;
      }

      else
      {
        v499 = v425;
      }

      v499[1019] = glDrawTexivOES_ExecThread;
      if (v424[1020])
      {
        v500 = v424;
      }

      else
      {
        v500 = v425;
      }

      v500[1020] = glDrawTexxvOES_ExecThread;
      if (v424[1021])
      {
        v501 = v424;
      }

      else
      {
        v501 = v425;
      }

      v501[1021] = glDrawTexfOES_ExecThread;
      if (v424[1022])
      {
        v502 = v424;
      }

      else
      {
        v502 = v425;
      }

      v502[1022] = glDrawTexfvOES_ExecThread;
      if (v424[338])
      {
        v503 = v424;
      }

      else
      {
        v503 = v425;
      }

      v503[338] = glBlendEquation_Comp;
      if (v424[336])
      {
        v504 = v424;
      }

      else
      {
        v504 = v425;
      }

      v504[336] = glBlendFuncSeparate_Comp;
      if (v424[458])
      {
        v505 = v424;
      }

      else
      {
        v505 = v425;
      }

      v505[458] = glBlendEquationSeparateEXT_Comp;
      if (v424[768])
      {
        v506 = v424;
      }

      else
      {
        v506 = v425;
      }

      v506[768] = glBindVertexArray_PackThread;
      if (v424[769])
      {
        v507 = v424;
      }

      else
      {
        v507 = v425;
      }

      v507[769] = glDeleteVertexArrays_ExecThread;
      if (v424[770])
      {
        v508 = v424;
      }

      else
      {
        v508 = v425;
      }

      v508[770] = glGenVertexArrays_ExecThread;
      if (v424[771])
      {
        v509 = v424;
      }

      else
      {
        v509 = v425;
      }

      v509[771] = glIsVertexArray_ExecThread;
      if (v424[463])
      {
        v510 = v424;
      }

      else
      {
        v510 = v425;
      }

      v510[463] = glGenFencesAPPLE_ExecThread;
      if (v424[464])
      {
        v511 = v424;
      }

      else
      {
        v511 = v425;
      }

      v511[464] = glDeleteFencesAPPLE_ExecThread;
      if (v424[466])
      {
        v512 = v424;
      }

      else
      {
        v512 = v425;
      }

      v512[466] = glIsFenceAPPLE_ExecThread;
      if (v424[465])
      {
        v513 = v424;
      }

      else
      {
        v513 = v425;
      }

      v513[465] = glSetFenceAPPLE_PackThread;
      if (v424[467])
      {
        v514 = v424;
      }

      else
      {
        v514 = v425;
      }

      v514[467] = glTestFenceAPPLE_ExecThread;
      if (v424[468])
      {
        v515 = v424;
      }

      else
      {
        v515 = v425;
      }

      v515[468] = glFinishFenceAPPLE_ExecThread;
      if (v424[469])
      {
        v516 = v424;
      }

      else
      {
        v516 = v425;
      }

      v516[469] = glTestObjectAPPLE_ExecThread;
      if (v424[470])
      {
        v517 = v424;
      }

      else
      {
        v517 = v425;
      }

      v517[470] = glFinishObjectAPPLE_ExecThread;
      if (v424[1024])
      {
        v518 = v424;
      }

      else
      {
        v518 = v425;
      }

      v518[1024] = glFramebufferParameterivAPPLE_PackThread;
      if (v424[1025])
      {
        v519 = v424;
      }

      else
      {
        v519 = v425;
      }

      v519[1025] = glGetFramebufferParameterivAPPLE_ExecThread;
      if (v424[756])
      {
        v520 = v424;
      }

      else
      {
        v520 = v425;
      }

      v520[756] = glRenderbufferStorageMultisampleEXT_PackThread;
      if (v424[1026])
      {
        v521 = v424;
      }

      else
      {
        v521 = v425;
      }

      v521[1026] = glResolveMultisampleFramebufferAPPLE_PackThread;
      if (v424[1027])
      {
        v522 = v424;
      }

      else
      {
        v522 = v425;
      }

      v522[1027] = glCopyTextureLevels_PackThread;
      if (v424[1023])
      {
        v523 = v424;
      }

      else
      {
        v523 = v425;
      }

      v523[1023] = glDiscardFramebufferEXT_PackThread;
      if (v424[814])
      {
        v524 = v424;
      }

      else
      {
        v524 = v425;
      }

      v524[814] = glLabelObjectEXT_ExecThread;
      if (!v424[815])
      {
        v424 = v425;
      }

      v424[815] = glGetObjectLabelEXT_ExecThread;
      v525 = *(result + 28984);
      v526 = *(result + 28976);
      if (v525[816])
      {
        v527 = *(result + 28984);
      }

      else
      {
        v527 = *(result + 28976);
      }

      *(v527 + 6528) = gliNoop;
      if (v525[817])
      {
        v528 = v525;
      }

      else
      {
        v528 = v526;
      }

      v528[817] = gliNoop;
      if (v525[818])
      {
        v529 = v525;
      }

      else
      {
        v529 = v526;
      }

      v529[818] = gliNoop;
      if (v525[1033])
      {
        v530 = v525;
      }

      else
      {
        v530 = v526;
      }

      v530[1033] = glLabelObjectWithResponsibleProcessAPPLE_ExecThread;
      if (!v525[1031])
      {
        v525 = v526;
      }

      v531 = glTexStorage2D_PackThread;
    }

    else
    {
      *(v325 + 8) = glAlphaFunc_Exec;
      if (v323[968])
      {
        v842 = v323;
      }

      else
      {
        v842 = v324;
      }

      v842[968] = glAlphaFuncx_Exec;
      if (v323[7])
      {
        v843 = v323;
      }

      else
      {
        v843 = v324;
      }

      v843[7] = glBlendFunc_Exec;
      if (v323[49])
      {
        v844 = v323;
      }

      else
      {
        v844 = v324;
      }

      v844[49] = glColorMask_Exec;
      if (v323[60])
      {
        v845 = v323;
      }

      else
      {
        v845 = v324;
      }

      v845[60] = glDepthFunc_Exec;
      if (v323[61])
      {
        v846 = v323;
      }

      else
      {
        v846 = v324;
      }

      v846[61] = glDepthMask_Exec;
      if (v323[161])
      {
        v847 = v323;
      }

      else
      {
        v847 = v324;
      }

      v847[161] = glLogicOp_Exec;
      if (v323[254])
      {
        v848 = v323;
      }

      else
      {
        v848 = v324;
      }

      v848[254] = glStencilFunc_Exec;
      if (v323[255])
      {
        v849 = v323;
      }

      else
      {
        v849 = v324;
      }

      v849[255] = glStencilMask_Exec;
      if (v323[256])
      {
        v850 = v323;
      }

      else
      {
        v850 = v324;
      }

      v850[256] = glStencilOp_Exec;
      if (v323[251])
      {
        v851 = v323;
      }

      else
      {
        v851 = v324;
      }

      v851[251] = glScissor_Exec;
      if (v323[10])
      {
        v852 = v323;
      }

      else
      {
        v852 = v324;
      }

      v852[10] = glClear_Exec;
      if (v323[12])
      {
        v853 = v323;
      }

      else
      {
        v853 = v324;
      }

      v853[12] = glClearColor_Exec;
      if (v323[969])
      {
        v854 = v323;
      }

      else
      {
        v854 = v324;
      }

      v854[969] = glClearColorx_Exec;
      if (v323[15])
      {
        v855 = v323;
      }

      else
      {
        v855 = v324;
      }

      v855[15] = glClearStencil_Exec;
      if (v323[878])
      {
        v856 = v323;
      }

      else
      {
        v856 = v324;
      }

      v856[878] = glClearDepthf_Exec;
      if (v323[970])
      {
        v857 = v323;
      }

      else
      {
        v857 = v324;
      }

      v857[970] = glClearDepthx_Exec;
      if (v323[37])
      {
        v858 = v323;
      }

      else
      {
        v858 = v324;
      }

      v858[37] = glColor4f_Exec;
      if (v323[43])
      {
        v859 = v323;
      }

      else
      {
        v859 = v324;
      }

      v859[43] = glColor4ub_Exec;
      if (v323[973])
      {
        v860 = v323;
      }

      else
      {
        v860 = v324;
      }

      v860[973] = glColor4x_Exec;
      if (v323[182])
      {
        v861 = v323;
      }

      else
      {
        v861 = v324;
      }

      v861[182] = glNormal3f_Exec;
      if (v323[995])
      {
        v862 = v323;
      }

      else
      {
        v862 = v324;
      }

      v862[995] = glNormal3x_Exec;
      if (v323[369])
      {
        v863 = v323;
      }

      else
      {
        v863 = v324;
      }

      v863[369] = glMultiTexCoord4f_Exec;
      if (v323[1007])
      {
        v864 = v323;
      }

      else
      {
        v864 = v324;
      }

      v864[1007] = glMultiTexCoord4x_Exec;
      if (v323[334])
      {
        v865 = v323;
      }

      else
      {
        v865 = v324;
      }

      v865[334] = glVertexPointer_Exec;
      if (v323[51])
      {
        v866 = v323;
      }

      else
      {
        v866 = v324;
      }

      v866[51] = glColorPointer_Exec;
      if (v323[188])
      {
        v867 = v323;
      }

      else
      {
        v867 = v324;
      }

      v867[188] = glNormalPointer_Exec;
      if (v323[289])
      {
        v868 = v323;
      }

      else
      {
        v868 = v324;
      }

      v868[289] = glTexCoordPointer_Exec;
      if (v323[341])
      {
        v869 = v323;
      }

      else
      {
        v869 = v324;
      }

      v869[341] = glClientActiveTexture_Exec;
      if (v323[64])
      {
        v870 = v323;
      }

      else
      {
        v870 = v324;
      }

      v870[64] = glDisableClientState_Exec;
      if (v323[73])
      {
        v871 = v323;
      }

      else
      {
        v871 = v324;
      }

      v871[73] = glEnableClientState_Exec;
      if (v323[65])
      {
        v872 = v323;
      }

      else
      {
        v872 = v324;
      }

      v872[65] = glDrawArrays_Exec;
      if (v323[67])
      {
        v873 = v323;
      }

      else
      {
        v873 = v324;
      }

      v873[67] = glDrawElements_Exec;
      if (v323[98])
      {
        v874 = v323;
      }

      else
      {
        v874 = v324;
      }

      v874[98] = glGenTextures_Exec;
      if (v323[59])
      {
        v875 = v323;
      }

      else
      {
        v875 = v324;
      }

      v875[59] = glDeleteTextures_Exec;
      if (v323[5])
      {
        v876 = v323;
      }

      else
      {
        v876 = v324;
      }

      v876[5] = glBindTexture_Exec;
      if (v323[145])
      {
        v877 = v323;
      }

      else
      {
        v877 = v324;
      }

      v877[145] = glIsTexture_Exec;
      if (v323[342])
      {
        v878 = v323;
      }

      else
      {
        v878 = v324;
      }

      v878[342] = glActiveTexture_Exec;
      if (v323[54])
      {
        v879 = v323;
      }

      else
      {
        v879 = v324;
      }

      v879[54] = glCopyTexImage2D_Exec;
      if (v323[56])
      {
        v880 = v323;
      }

      else
      {
        v880 = v324;
      }

      v880[56] = glCopyTexSubImage2D_Exec;
      if (v323[301])
      {
        v881 = v323;
      }

      else
      {
        v881 = v324;
      }

      v881[301] = glTexImage2D_Exec;
      if (v323[307])
      {
        v882 = v323;
      }

      else
      {
        v882 = v324;
      }

      v882[307] = glTexSubImage2D_Exec;
      if (v323[380])
      {
        v883 = v323;
      }

      else
      {
        v883 = v324;
      }

      v883[380] = glCompressedTexImage2D_Exec;
      if (v323[383])
      {
        v884 = v323;
      }

      else
      {
        v884 = v324;
      }

      v884[383] = glCompressedTexSubImage2D_Exec;
      if (v323[302])
      {
        v885 = v323;
      }

      else
      {
        v885 = v324;
      }

      v885[302] = glTexParameterf_Exec;
      if (v323[303])
      {
        v886 = v323;
      }

      else
      {
        v886 = v324;
      }

      v886[303] = glTexParameterfv_Exec;
      if (v323[304])
      {
        v887 = v323;
      }

      else
      {
        v887 = v324;
      }

      v887[304] = glTexParameteri_Exec;
      if (v323[305])
      {
        v888 = v323;
      }

      else
      {
        v888 = v324;
      }

      v888[305] = glTexParameteriv_Exec;
      if (v323[1004])
      {
        v889 = v323;
      }

      else
      {
        v889 = v324;
      }

      v889[1004] = glTexParameterx_Exec;
      if (v323[1005])
      {
        v890 = v323;
      }

      else
      {
        v890 = v324;
      }

      v890[1005] = glTexParameterxv_Exec;
      if (v323[126])
      {
        v891 = v323;
      }

      else
      {
        v891 = v324;
      }

      v891[126] = glGetTexParameterfv_Exec;
      if (v323[127])
      {
        v892 = v323;
      }

      else
      {
        v892 = v324;
      }

      v892[127] = glGetTexParameteriv_Exec;
      if (v323[290])
      {
        v893 = v323;
      }

      else
      {
        v893 = v324;
      }

      v893[290] = glTexEnvf_Exec;
      if (v323[291])
      {
        v894 = v323;
      }

      else
      {
        v894 = v324;
      }

      v894[291] = glTexEnvfv_Exec;
      if (v323[292])
      {
        v895 = v323;
      }

      else
      {
        v895 = v324;
      }

      v895[292] = glTexEnvi_Exec;
      if (v323[293])
      {
        v896 = v323;
      }

      else
      {
        v896 = v324;
      }

      v896[293] = glTexEnviv_Exec;
      if (v323[1002])
      {
        v897 = v323;
      }

      else
      {
        v897 = v324;
      }

      v897[1002] = glTexEnvx_Exec;
      if (v323[1003])
      {
        v898 = v323;
      }

      else
      {
        v898 = v324;
      }

      v898[1003] = glTexEnvxv_Exec;
      if (v323[89])
      {
        v899 = v323;
      }

      else
      {
        v899 = v324;
      }

      v899[89] = glFinish_Exec;
      if (v323[90])
      {
        v900 = v323;
      }

      else
      {
        v900 = v324;
      }

      v900[90] = glFlush_Exec;
      if (v323[99])
      {
        v901 = v323;
      }

      else
      {
        v901 = v324;
      }

      v901[99] = glGetBooleanv_Exec;
      if (v323[102])
      {
        v902 = v323;
      }

      else
      {
        v902 = v324;
      }

      v902[102] = glGetError_Exec;
      if (v323[103])
      {
        v903 = v323;
      }

      else
      {
        v903 = v324;
      }

      v903[103] = glGetFloatv_Exec;
      if (v323[104])
      {
        v904 = v323;
      }

      else
      {
        v904 = v324;
      }

      v904[104] = glGetIntegerv_Exec;
      if (v323[105])
      {
        v905 = v323;
      }

      else
      {
        v905 = v324;
      }

      v905[105] = glGetLightfv_Exec;
      if (v323[110])
      {
        v906 = v323;
      }

      else
      {
        v906 = v324;
      }

      v906[110] = glGetMaterialfv_Exec;
      if (v323[115])
      {
        v907 = v323;
      }

      else
      {
        v907 = v324;
      }

      v907[115] = glGetPointerv_Exec;
      if (v323[117])
      {
        v908 = v323;
      }

      else
      {
        v908 = v324;
      }

      v908[117] = glGetString_Exec;
      if (v323[118])
      {
        v909 = v323;
      }

      else
      {
        v909 = v324;
      }

      v909[118] = glGetTexEnvfv_Exec;
      if (v323[119])
      {
        v910 = v323;
      }

      else
      {
        v910 = v324;
      }

      v910[119] = glGetTexEnviv_Exec;
      if (v323[979])
      {
        v911 = v323;
      }

      else
      {
        v911 = v324;
      }

      v911[979] = glGetClipPlanef_Exec;
      if (v323[980])
      {
        v912 = v323;
      }

      else
      {
        v912 = v324;
      }

      v912[980] = glGetClipPlanex_Exec;
      if (v323[981])
      {
        v913 = v323;
      }

      else
      {
        v913 = v324;
      }

      v913[981] = glGetFixedv_Exec;
      if (v323[982])
      {
        v914 = v323;
      }

      else
      {
        v914 = v324;
      }

      v914[982] = glGetLightxv_Exec;
      if (v323[983])
      {
        v915 = v323;
      }

      else
      {
        v915 = v324;
      }

      v915[983] = glGetMaterialxv_Exec;
      if (v323[984])
      {
        v916 = v323;
      }

      else
      {
        v916 = v324;
      }

      v916[984] = glGetTexEnvxv_Exec;
      if (v323[985])
      {
        v917 = v323;
      }

      else
      {
        v917 = v324;
      }

      v917[985] = glGetTexParameterxv_Exec;
      if (v323[72])
      {
        v918 = v323;
      }

      else
      {
        v918 = v324;
      }

      v918[72] = glEnable_Exec;
      if (v323[63])
      {
        v919 = v323;
      }

      else
      {
        v919 = v324;
      }

      v919[63] = glDisable_Exec;
      if (v323[143])
      {
        v920 = v323;
      }

      else
      {
        v920 = v324;
      }

      v920[143] = glIsEnabled_Exec;
      if (v323[642])
      {
        v921 = v323;
      }

      else
      {
        v921 = v324;
      }

      v921[642] = glBindBuffer_Exec;
      if (v323[643])
      {
        v922 = v323;
      }

      else
      {
        v922 = v324;
      }

      v922[643] = glDeleteBuffers_Exec;
      if (v323[644])
      {
        v923 = v323;
      }

      else
      {
        v923 = v324;
      }

      v923[644] = glGenBuffers_Exec;
      if (v323[645])
      {
        v924 = v323;
      }

      else
      {
        v924 = v324;
      }

      v924[645] = glIsBuffer_Exec;
      if (v323[646])
      {
        v925 = v323;
      }

      else
      {
        v925 = v324;
      }

      v925[646] = glBufferData_Exec;
      if (v323[647])
      {
        v926 = v323;
      }

      else
      {
        v926 = v324;
      }

      v926[647] = glBufferSubData_Exec;
      if (v323[649])
      {
        v927 = v323;
      }

      else
      {
        v927 = v324;
      }

      v927[649] = glMapBuffer_Exec;
      if (v323[650])
      {
        v928 = v323;
      }

      else
      {
        v928 = v324;
      }

      v928[650] = glUnmapBuffer_Exec;
      if (v323[651])
      {
        v929 = v323;
      }

      else
      {
        v929 = v324;
      }

      v929[651] = glGetBufferParameteriv_Exec;
      if (v323[652])
      {
        v930 = v323;
      }

      else
      {
        v930 = v324;
      }

      v930[652] = glGetBufferPointerv_Exec;
      if (v323[795])
      {
        v931 = v323;
      }

      else
      {
        v931 = v324;
      }

      v931[795] = glMapBufferRange_Exec;
      if (v323[796])
      {
        v932 = v323;
      }

      else
      {
        v932 = v324;
      }

      v932[796] = glFlushMappedBufferRange_Exec;
      if (v323[665])
      {
        v933 = v323;
      }

      else
      {
        v933 = v324;
      }

      v933[665] = glIsRenderbufferEXT_Exec;
      if (v323[666])
      {
        v934 = v323;
      }

      else
      {
        v934 = v324;
      }

      v934[666] = glBindRenderbuffer_Exec;
      if (v323[667])
      {
        v935 = v323;
      }

      else
      {
        v935 = v324;
      }

      v935[667] = glDeleteRenderbuffersEXT_Exec;
      if (v323[668])
      {
        v936 = v323;
      }

      else
      {
        v936 = v324;
      }

      v936[668] = glGenRenderbuffersEXT_Exec;
      if (v323[669])
      {
        v937 = v323;
      }

      else
      {
        v937 = v324;
      }

      v937[669] = glRenderbufferStorageEXT_Exec;
      if (v323[670])
      {
        v938 = v323;
      }

      else
      {
        v938 = v324;
      }

      v938[670] = glGetRenderbufferParameterivEXT_Exec;
      if (v323[671])
      {
        v939 = v323;
      }

      else
      {
        v939 = v324;
      }

      v939[671] = glIsFramebufferEXT_Exec;
      if (!v323[672])
      {
        v323 = v324;
      }

      v323[672] = glBindFramebuffer_Exec;
      v940 = *(result + 28984);
      v941 = *(result + 28976);
      if (v940[673])
      {
        v942 = *(result + 28984);
      }

      else
      {
        v942 = *(result + 28976);
      }

      *(v942 + 5384) = glDeleteFramebuffersEXT_Exec;
      if (v940[674])
      {
        v943 = v940;
      }

      else
      {
        v943 = v941;
      }

      v943[674] = glGenFramebuffersEXT_Exec;
      if (v940[675])
      {
        v944 = v940;
      }

      else
      {
        v944 = v941;
      }

      v944[675] = glCheckFramebufferStatusEXT_Exec;
      if (v940[677])
      {
        v945 = v940;
      }

      else
      {
        v945 = v941;
      }

      v945[677] = glFramebufferTexture2DEXT_Exec;
      if (v940[679])
      {
        v946 = v940;
      }

      else
      {
        v946 = v941;
      }

      v946[679] = glFramebufferRenderbufferEXT_Exec;
      if (v940[680])
      {
        v947 = v940;
      }

      else
      {
        v947 = v941;
      }

      v947[680] = glGetFramebufferAttachmentParameterivEXT_Exec;
      if (v940[681])
      {
        v948 = v940;
      }

      else
      {
        v948 = v941;
      }

      v948[681] = glGenerateMipmapEXT_Exec;
      if (v940[155])
      {
        v949 = v940;
      }

      else
      {
        v949 = v941;
      }

      v949[155] = glLineWidth_Exec;
      if (v940[990])
      {
        v950 = v940;
      }

      else
      {
        v950 = v941;
      }

      v950[990] = glLineWidthx_Exec;
      if (v940[199])
      {
        v951 = v940;
      }

      else
      {
        v951 = v941;
      }

      v951[199] = glPointSize_Exec;
      if (v940[998])
      {
        v952 = v940;
      }

      else
      {
        v952 = v941;
      }

      v952[998] = glPointSizex_Exec;
      if (v940[540])
      {
        v953 = v940;
      }

      else
      {
        v953 = v941;
      }

      v953[540] = glPointParameterf_Exec;
      if (v940[541])
      {
        v954 = v940;
      }

      else
      {
        v954 = v941;
      }

      v954[541] = glPointParameterfv_Exec;
      if (v940[1009])
      {
        v955 = v940;
      }

      else
      {
        v955 = v941;
      }

      v955[1009] = glPointParameterx_Exec;
      if (v940[1010])
      {
        v956 = v940;
      }

      else
      {
        v956 = v941;
      }

      v956[1010] = glPointParameterxv_Exec;
      if (v940[201])
      {
        v957 = v940;
      }

      else
      {
        v957 = v941;
      }

      v957[201] = glPolygonOffset_Exec;
      if (v940[999])
      {
        v958 = v940;
      }

      else
      {
        v958 = v941;
      }

      v958[999] = glPolygonOffsetx_Exec;
      if (v940[57])
      {
        v959 = v940;
      }

      else
      {
        v959 = v941;
      }

      v959[57] = glCullFace_Exec;
      if (v940[95])
      {
        v960 = v940;
      }

      else
      {
        v960 = v941;
      }

      v960[95] = glFrontFace_Exec;
      if (v940[971])
      {
        v961 = v940;
      }

      else
      {
        v961 = v941;
      }

      v961[971] = glClipPlanef_Exec;
      if (v940[972])
      {
        v962 = v940;
      }

      else
      {
        v962 = v941;
      }

      v962[972] = glClipPlanex_Exec;
      if (v940[877])
      {
        v963 = v940;
      }

      else
      {
        v963 = v941;
      }

      v963[877] = glDepthRangef_Exec;
      if (v940[974])
      {
        v964 = v940;
      }

      else
      {
        v964 = v941;
      }

      v964[974] = glDepthRangex_Exec;
      if (v940[335])
      {
        v965 = v940;
      }

      else
      {
        v965 = v941;
      }

      v965[335] = glViewport_Exec;
      if (v940[91])
      {
        v966 = v940;
      }

      else
      {
        v966 = v941;
      }

      v966[91] = glFogf_Exec;
      if (v940[92])
      {
        v967 = v940;
      }

      else
      {
        v967 = v941;
      }

      v967[92] = glFogfv_Exec;
      if (v940[975])
      {
        v968 = v940;
      }

      else
      {
        v968 = v941;
      }

      v968[975] = glFogx_Exec;
      if (v940[976])
      {
        v969 = v940;
      }

      else
      {
        v969 = v941;
      }

      v969[976] = glFogxv_Exec;
      if (v940[174])
      {
        v970 = v940;
      }

      else
      {
        v970 = v941;
      }

      v970[174] = glMatrixMode_Exec;
      if (v940[157])
      {
        v971 = v940;
      }

      else
      {
        v971 = v941;
      }

      v971[157] = glLoadIdentity_Exec;
      if (v940[159])
      {
        v972 = v940;
      }

      else
      {
        v972 = v941;
      }

      v972[159] = glLoadMatrixf_Exec;
      if (v940[991])
      {
        v973 = v940;
      }

      else
      {
        v973 = v941;
      }

      v973[991] = glLoadMatrixx_Exec;
      if (v940[176])
      {
        v974 = v940;
      }

      else
      {
        v974 = v941;
      }

      v974[176] = glMultMatrixf_Exec;
      if (v940[994])
      {
        v975 = v940;
      }

      else
      {
        v975 = v941;
      }

      v975[994] = glMultMatrixx_Exec;
      if (v940[996])
      {
        v976 = v940;
      }

      else
      {
        v976 = v941;
      }

      v976[996] = glOrthof_Exec;
      if (v940[997])
      {
        v977 = v940;
      }

      else
      {
        v977 = v941;
      }

      v977[997] = glOrthox_Exec;
      if (v940[248])
      {
        v978 = v940;
      }

      else
      {
        v978 = v941;
      }

      v978[248] = glRotatef_Exec;
      if (v940[1000])
      {
        v979 = v940;
      }

      else
      {
        v979 = v941;
      }

      v979[1000] = glRotatex_Exec;
      if (v940[250])
      {
        v980 = v940;
      }

      else
      {
        v980 = v941;
      }

      v980[250] = glScalef_Exec;
      if (v940[1001])
      {
        v981 = v940;
      }

      else
      {
        v981 = v941;
      }

      v981[1001] = glScalex_Exec;
      if (v940[309])
      {
        v982 = v940;
      }

      else
      {
        v982 = v941;
      }

      v982[309] = glTranslatef_Exec;
      if (v940[1006])
      {
        v983 = v940;
      }

      else
      {
        v983 = v941;
      }

      v983[1006] = glTranslatex_Exec;
      if (v940[977])
      {
        v984 = v940;
      }

      else
      {
        v984 = v941;
      }

      v984[977] = glFrustumf_Exec;
      if (v940[978])
      {
        v985 = v940;
      }

      else
      {
        v985 = v941;
      }

      v985[978] = glFrustumx_Exec;
      if (v940[205])
      {
        v986 = v940;
      }

      else
      {
        v986 = v941;
      }

      v986[205] = glPopMatrix_Exec;
      if (v940[210])
      {
        v987 = v940;
      }

      else
      {
        v987 = v941;
      }

      v987[210] = glPushMatrix_Exec;
      if (v940[146])
      {
        v988 = v940;
      }

      else
      {
        v988 = v941;
      }

      v988[146] = glLightModelf_Exec;
      if (v940[147])
      {
        v989 = v940;
      }

      else
      {
        v989 = v941;
      }

      v989[147] = glLightModelfv_Exec;
      if (v940[986])
      {
        v990 = v940;
      }

      else
      {
        v990 = v941;
      }

      v990[986] = glLightModelx_Exec;
      if (v940[987])
      {
        v991 = v940;
      }

      else
      {
        v991 = v941;
      }

      v991[987] = glLightModelxv_Exec;
      if (v940[150])
      {
        v992 = v940;
      }

      else
      {
        v992 = v941;
      }

      v992[150] = glLightf_Exec;
      if (v940[151])
      {
        v993 = v940;
      }

      else
      {
        v993 = v941;
      }

      v993[151] = glLightfv_Exec;
      if (v940[988])
      {
        v994 = v940;
      }

      else
      {
        v994 = v941;
      }

      v994[988] = glLightx_Exec;
      if (v940[989])
      {
        v995 = v940;
      }

      else
      {
        v995 = v941;
      }

      v995[989] = glLightxv_Exec;
      if (v940[170])
      {
        v996 = v940;
      }

      else
      {
        v996 = v941;
      }

      v996[170] = glMaterialf_Exec;
      if (v940[171])
      {
        v997 = v940;
      }

      else
      {
        v997 = v941;
      }

      v997[171] = glMaterialfv_Exec;
      if (v940[992])
      {
        v998 = v940;
      }

      else
      {
        v998 = v941;
      }

      v998[992] = glMaterialx_Exec;
      if (v940[993])
      {
        v999 = v940;
      }

      else
      {
        v999 = v941;
      }

      v999[993] = glMaterialxv_Exec;
      if (v940[459])
      {
        v1000 = v940;
      }

      else
      {
        v1000 = v941;
      }

      v1000[459] = glSampleCoverage_Exec;
      if (v940[1008])
      {
        v1001 = v940;
      }

      else
      {
        v1001 = v941;
      }

      v1001[1008] = glSampleCoveragex_Exec;
      if (v940[195])
      {
        v1002 = v940;
      }

      else
      {
        v1002 = v941;
      }

      v1002[195] = glPixelStorei_Exec;
      if (v940[237])
      {
        v1003 = v940;
      }

      else
      {
        v1003 = v941;
      }

      v1003[237] = glReadPixels_Exec;
      if (v940[253])
      {
        v1004 = v940;
      }

      else
      {
        v1004 = v941;
      }

      v1004[253] = glShadeModel_Exec;
      if (v940[128])
      {
        v1005 = v940;
      }

      else
      {
        v1005 = v941;
      }

      v1005[128] = glHint_Exec;
      if (v940[772])
      {
        v1006 = v940;
      }

      else
      {
        v1006 = v941;
      }

      v1006[772] = glPointSizePointer_Exec;
      if (v940[1011])
      {
        v1007 = v940;
      }

      else
      {
        v1007 = v941;
      }

      v1007[1011] = glCurrentPaletteMatrixOES_Exec;
      if (v940[1012])
      {
        v1008 = v940;
      }

      else
      {
        v1008 = v941;
      }

      v1008[1012] = glLoadPaletteFromModelViewMatrixOES_Exec;
      if (v940[1013])
      {
        v1009 = v940;
      }

      else
      {
        v1009 = v941;
      }

      v1009[1013] = glMatrixIndexPointerOES_Exec;
      if (v940[1014])
      {
        v1010 = v940;
      }

      else
      {
        v1010 = v941;
      }

      v1010[1014] = glWeightPointerARB_Exec;
      if (v940[1015])
      {
        v1011 = v940;
      }

      else
      {
        v1011 = v941;
      }

      v1011[1015] = glDrawTexsOES_Exec;
      if (v940[1016])
      {
        v1012 = v940;
      }

      else
      {
        v1012 = v941;
      }

      v1012[1016] = glDrawTexiOES_Exec;
      if (v940[1017])
      {
        v1013 = v940;
      }

      else
      {
        v1013 = v941;
      }

      v1013[1017] = glDrawTexxOES_Exec;
      if (v940[1018])
      {
        v1014 = v940;
      }

      else
      {
        v1014 = v941;
      }

      v1014[1018] = glDrawTexsvOES_Exec;
      if (v940[1019])
      {
        v1015 = v940;
      }

      else
      {
        v1015 = v941;
      }

      v1015[1019] = glDrawTexivOES_Exec;
      if (v940[1020])
      {
        v1016 = v940;
      }

      else
      {
        v1016 = v941;
      }

      v1016[1020] = glDrawTexxvOES_Exec;
      if (v940[1021])
      {
        v1017 = v940;
      }

      else
      {
        v1017 = v941;
      }

      v1017[1021] = glDrawTexfOES_Exec;
      if (v940[1022])
      {
        v1018 = v940;
      }

      else
      {
        v1018 = v941;
      }

      v1018[1022] = glDrawTexfvOES_Exec;
      if (v940[338])
      {
        v1019 = v940;
      }

      else
      {
        v1019 = v941;
      }

      v1019[338] = glBlendEquation_Exec;
      if (v940[336])
      {
        v1020 = v940;
      }

      else
      {
        v1020 = v941;
      }

      v1020[336] = glBlendFuncSeparate_Exec;
      if (v940[458])
      {
        v1021 = v940;
      }

      else
      {
        v1021 = v941;
      }

      v1021[458] = glBlendEquationSeparateEXT_Exec;
      if (v940[768])
      {
        v1022 = v940;
      }

      else
      {
        v1022 = v941;
      }

      v1022[768] = glBindVertexArray_Exec;
      if (v940[769])
      {
        v1023 = v940;
      }

      else
      {
        v1023 = v941;
      }

      v1023[769] = glDeleteVertexArrays_Exec;
      if (v940[770])
      {
        v1024 = v940;
      }

      else
      {
        v1024 = v941;
      }

      v1024[770] = glGenVertexArrays_Exec;
      if (v940[771])
      {
        v1025 = v940;
      }

      else
      {
        v1025 = v941;
      }

      v1025[771] = glIsVertexArray_Exec;
      if (v940[463])
      {
        v1026 = v940;
      }

      else
      {
        v1026 = v941;
      }

      v1026[463] = glGenFencesAPPLE_Exec;
      if (v940[464])
      {
        v1027 = v940;
      }

      else
      {
        v1027 = v941;
      }

      v1027[464] = glDeleteFencesAPPLE_Exec;
      if (v940[466])
      {
        v1028 = v940;
      }

      else
      {
        v1028 = v941;
      }

      v1028[466] = glIsFenceAPPLE_Exec;
      if (v940[465])
      {
        v1029 = v940;
      }

      else
      {
        v1029 = v941;
      }

      v1029[465] = glSetFenceAPPLE_Exec;
      if (v940[467])
      {
        v1030 = v940;
      }

      else
      {
        v1030 = v941;
      }

      v1030[467] = glTestFenceAPPLE_Exec;
      if (v940[468])
      {
        v1031 = v940;
      }

      else
      {
        v1031 = v941;
      }

      v1031[468] = glFinishFenceAPPLE_Exec;
      if (v940[469])
      {
        v1032 = v940;
      }

      else
      {
        v1032 = v941;
      }

      v1032[469] = glTestObjectAPPLE_Exec;
      if (v940[470])
      {
        v1033 = v940;
      }

      else
      {
        v1033 = v941;
      }

      v1033[470] = glFinishObjectAPPLE_Exec;
      if (v940[1024])
      {
        v1034 = v940;
      }

      else
      {
        v1034 = v941;
      }

      v1034[1024] = glFramebufferParameterivAPPLE_Exec;
      if (v940[1025])
      {
        v1035 = v940;
      }

      else
      {
        v1035 = v941;
      }

      v1035[1025] = glGetFramebufferParameterivAPPLE_Exec;
      if (v940[756])
      {
        v1036 = v940;
      }

      else
      {
        v1036 = v941;
      }

      v1036[756] = glRenderbufferStorageMultisampleEXT_Exec;
      if (v940[1026])
      {
        v1037 = v940;
      }

      else
      {
        v1037 = v941;
      }

      v1037[1026] = glResolveMultisampleFramebufferAPPLE_Exec;
      if (v940[1027])
      {
        v1038 = v940;
      }

      else
      {
        v1038 = v941;
      }

      v1038[1027] = glCopyTextureLevels_Exec;
      if (v940[1023])
      {
        v1039 = v940;
      }

      else
      {
        v1039 = v941;
      }

      v1039[1023] = glDiscardFramebufferEXT_Exec;
      if (v940[814])
      {
        v1040 = v940;
      }

      else
      {
        v1040 = v941;
      }

      v1040[814] = glLabelObjectEXT_Exec;
      if (!v940[815])
      {
        v940 = v941;
      }

      v940[815] = glGetObjectLabelEXT_Exec;
      v525 = *(result + 28984);
      v1041 = *(result + 28976);
      if (v525[816])
      {
        v1042 = *(result + 28984);
      }

      else
      {
        v1042 = *(result + 28976);
      }

      *(v1042 + 6528) = gliNoop;
      if (v525[817])
      {
        v1043 = v525;
      }

      else
      {
        v1043 = v1041;
      }

      v1043[817] = gliNoop;
      if (v525[818])
      {
        v1044 = v525;
      }

      else
      {
        v1044 = v1041;
      }

      v1044[818] = gliNoop;
      if (v525[1033])
      {
        v1045 = v525;
      }

      else
      {
        v1045 = v1041;
      }

      v1045[1033] = glLabelObjectWithResponsibleProcessAPPLE_Exec;
      if (!v525[1031])
      {
        v525 = v1041;
      }

      v531 = glTexStorage2D_Exec;
    }

    v525[1031] = v531;
  }

  else
  {
    v8 = *(result + 28984);
    v9 = *(result + 28976);
    if (v8[251])
    {
      v10 = *(result + 28984);
    }

    else
    {
      v10 = *(result + 28976);
    }

    if (*(result + 27648))
    {
      *(v10 + 2008) = glScissor_Comp;
      if (v8[49])
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      v11[49] = glColorMask_Comp;
      if (v8[337])
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      v12[337] = glBlendColor_Comp;
      if (v8[338])
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      v13[338] = glBlendEquation_Comp;
      if (v8[458])
      {
        v14 = v8;
      }

      else
      {
        v14 = v9;
      }

      v14[458] = glBlendEquationSeparateEXT_Comp;
      if (v8[7])
      {
        v15 = v8;
      }

      else
      {
        v15 = v9;
      }

      v15[7] = glBlendFunc_Comp;
      if (v8[336])
      {
        v16 = v8;
      }

      else
      {
        v16 = v9;
      }

      v16[336] = glBlendFuncSeparate_Comp;
      if (v8[60])
      {
        v17 = v8;
      }

      else
      {
        v17 = v9;
      }

      v17[60] = glDepthFunc_Comp;
      if (v8[61])
      {
        v18 = v8;
      }

      else
      {
        v18 = v9;
      }

      v18[61] = glDepthMask_Comp;
      if (v8[254])
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      v19[254] = glStencilFunc_Comp;
      if (v8[661])
      {
        v20 = v8;
      }

      else
      {
        v20 = v9;
      }

      v20[661] = glStencilFuncSeparate_Comp;
      if (v8[256])
      {
        v21 = v8;
      }

      else
      {
        v21 = v9;
      }

      v21[256] = glStencilOp_Comp;
      if (v8[586])
      {
        v22 = v8;
      }

      else
      {
        v22 = v9;
      }

      v22[586] = glStencilOpSeparateATI_Comp;
      if (v8[255])
      {
        v23 = v8;
      }

      else
      {
        v23 = v9;
      }

      v23[255] = glStencilMask_Comp;
      if (v8[662])
      {
        v24 = v8;
      }

      else
      {
        v24 = v9;
      }

      v24[662] = glStencilMaskSeparate_Comp;
      if (v8[10])
      {
        v25 = v8;
      }

      else
      {
        v25 = v9;
      }

      v25[10] = glClear_Comp;
      if (v8[12])
      {
        v26 = v8;
      }

      else
      {
        v26 = v9;
      }

      v26[12] = glClearColor_Comp;
      if (v8[878])
      {
        v27 = v8;
      }

      else
      {
        v27 = v9;
      }

      v27[878] = glClearDepthf_PackThread;
      if (v8[15])
      {
        v28 = v8;
      }

      else
      {
        v28 = v9;
      }

      v28[15] = glClearStencil_Comp;
      if (v8[644])
      {
        v29 = v8;
      }

      else
      {
        v29 = v9;
      }

      v29[644] = glGenBuffers_ExecThread;
      if (v8[643])
      {
        v30 = v8;
      }

      else
      {
        v30 = v9;
      }

      v30[643] = glDeleteBuffers_ExecThread;
      if (v8[645])
      {
        v31 = v8;
      }

      else
      {
        v31 = v9;
      }

      v31[645] = glIsBuffer_ExecThread;
      if (v8[642])
      {
        v32 = v8;
      }

      else
      {
        v32 = v9;
      }

      v32[642] = glBindBuffer_PackThread;
      if (v8[646])
      {
        v33 = v8;
      }

      else
      {
        v33 = v9;
      }

      v33[646] = glBufferData_PackThread;
      if (v8[647])
      {
        v34 = v8;
      }

      else
      {
        v34 = v9;
      }

      v34[647] = glBufferSubData_PackThread;
      if (v8[651])
      {
        v35 = v8;
      }

      else
      {
        v35 = v9;
      }

      v35[651] = glGetBufferParameteriv_ExecThread;
      if (v7 != 4)
      {
        if (v8[649])
        {
          v36 = v8;
        }

        else
        {
          v36 = v9;
        }

        v36[649] = glMapBuffer_PackThread;
      }

      if (v8[650])
      {
        v37 = v8;
      }

      else
      {
        v37 = v9;
      }

      v37[650] = glUnmapBuffer_PackThread;
      if (v8[652])
      {
        v38 = v8;
      }

      else
      {
        v38 = v9;
      }

      v38[652] = glGetBufferPointerv_ExecThread;
      if (v8[795])
      {
        v39 = v8;
      }

      else
      {
        v39 = v9;
      }

      v39[795] = glMapBufferRange_ExecThread;
      if (v8[796])
      {
        v40 = v8;
      }

      else
      {
        v40 = v9;
      }

      v40[796] = glFlushMappedBufferRange_PackThread;
      if (v8[98])
      {
        v41 = v8;
      }

      else
      {
        v41 = v9;
      }

      v41[98] = glGenTextures_ExecThread;
      if (v8[59])
      {
        v42 = v8;
      }

      else
      {
        v42 = v9;
      }

      v42[59] = glDeleteTextures_ExecThread;
      if (v8[145])
      {
        v43 = v8;
      }

      else
      {
        v43 = v9;
      }

      v43[145] = glIsTexture_ExecThread;
      if (v8[5])
      {
        v44 = v8;
      }

      else
      {
        v44 = v9;
      }

      v44[5] = glBindTexture_Comp;
      if (v8[342])
      {
        v45 = v8;
      }

      else
      {
        v45 = v9;
      }

      v45[342] = glActiveTexture_Comp;
      if (v8[301])
      {
        v46 = v8;
      }

      else
      {
        v46 = v9;
      }

      v46[301] = glTexImage2D_PackThread;
      if (v8[307])
      {
        v47 = v8;
      }

      else
      {
        v47 = v9;
      }

      v47[307] = glTexSubImage2D_PackThread;
      if (v8[54])
      {
        v48 = v8;
      }

      else
      {
        v48 = v9;
      }

      v48[54] = glCopyTexImage2D_Comp;
      if (v8[56])
      {
        v49 = v8;
      }

      else
      {
        v49 = v9;
      }

      v49[56] = glCopyTexSubImage2D_Comp;
      if (v8[380])
      {
        v50 = v8;
      }

      else
      {
        v50 = v9;
      }

      v50[380] = glCompressedTexImage2D_PackThread;
      if (v8[383])
      {
        v51 = v8;
      }

      else
      {
        v51 = v9;
      }

      v51[383] = glCompressedTexSubImage2D_PackThread;
      if (v8[304])
      {
        v52 = v8;
      }

      else
      {
        v52 = v9;
      }

      v52[304] = glTexParameteri_Comp;
      if (v8[302])
      {
        v53 = v8;
      }

      else
      {
        v53 = v9;
      }

      v53[302] = glTexParameterf_Comp;
      if (v8[305])
      {
        v54 = v8;
      }

      else
      {
        v54 = v9;
      }

      v54[305] = glTexParameteriv_Comp;
      if (v8[303])
      {
        v55 = v8;
      }

      else
      {
        v55 = v9;
      }

      v55[303] = glTexParameterfv_Comp;
      if (v8[127])
      {
        v56 = v8;
      }

      else
      {
        v56 = v9;
      }

      v56[127] = glGetTexParameteriv_ExecThread;
      if (v8[126])
      {
        v57 = v8;
      }

      else
      {
        v57 = v9;
      }

      v57[126] = glGetTexParameterfv_ExecThread;
      if (v8[594])
      {
        v58 = v8;
      }

      else
      {
        v58 = v9;
      }

      v58[594] = glCreateShaderObjectARB_ExecThread;
      if (v8[591])
      {
        v59 = v8;
      }

      else
      {
        v59 = v9;
      }

      v59[591] = glDeleteObjectARB_ExecThread;
      if (v8[655])
      {
        v60 = v8;
      }

      else
      {
        v60 = v9;
      }

      v60[655] = glIsShader_ExecThread;
      if (v8[596])
      {
        v61 = v8;
      }

      else
      {
        v61 = v9;
      }

      v61[596] = glCompileShaderARB_PackThread;
      if (v8[657])
      {
        v62 = v8;
      }

      else
      {
        v62 = v9;
      }

      v62[657] = glGetShaderiv_ExecThread;
      if (v8[659])
      {
        v63 = v8;
      }

      else
      {
        v63 = v9;
      }

      v63[659] = glGetShaderInfoLog_ExecThread;
      if (v8[629])
      {
        v64 = v8;
      }

      else
      {
        v64 = v9;
      }

      v64[629] = glGetShaderSourceARB_ExecThread;
      if (v8[595])
      {
        v65 = v8;
      }

      else
      {
        v65 = v9;
      }

      v65[595] = glShaderSourceARB_ExecThread;
      if (v8[875])
      {
        v66 = v8;
      }

      else
      {
        v66 = v9;
      }

      v66[875] = glShaderBinaryOES_ExecThread;
      if (v8[876])
      {
        v67 = v8;
      }

      else
      {
        v67 = v9;
      }

      v67[876] = glGetShaderPrecisionFormatOES_ExecThread;
      if (v8[874])
      {
        v68 = v8;
      }

      else
      {
        v68 = v9;
      }

      v68[874] = glReleaseShaderCompilerOES_ExecThread;
      if (v8[597])
      {
        v69 = v8;
      }

      else
      {
        v69 = v9;
      }

      v69[597] = glCreateProgramObjectARB_ExecThread;
      if (v8[591])
      {
        v70 = v8;
      }

      else
      {
        v70 = v9;
      }

      v70[591] = glDeleteObjectARB_ExecThread;
      if (v8[656])
      {
        v71 = v8;
      }

      else
      {
        v71 = v9;
      }

      v71[656] = glIsProgram_ExecThread;
      if (v8[598])
      {
        v72 = v8;
      }

      else
      {
        v72 = v9;
      }

      v72[598] = glAttachObjectARB_PackThread;
      if (v8[593])
      {
        v73 = v8;
      }

      else
      {
        v73 = v9;
      }

      v73[593] = glDetachObjectARB_PackThread;
      if (v8[599])
      {
        v74 = v8;
      }

      else
      {
        v74 = v9;
      }

      v74[599] = glLinkProgramARB_PackThread;
      if (v8[601])
      {
        v75 = v8;
      }

      else
      {
        v75 = v9;
      }

      v75[601] = glValidateProgramARB_PackThread;
      if (v8[600])
      {
        v76 = v8;
      }

      else
      {
        v76 = v9;
      }

      v76[600] = glUseProgramObjectARB_Comp;
      if (v8[630])
      {
        v77 = v8;
      }

      else
      {
        v77 = v9;
      }

      v77[630] = glBindAttribLocationARB_PackThread;
      if (v8[626])
      {
        v78 = v8;
      }

      else
      {
        v78 = v9;
      }

      v78[626] = glGetActiveUniformARB_ExecThread;
      if (v8[631])
      {
        v79 = v8;
      }

      else
      {
        v79 = v9;
      }

      v79[631] = glGetActiveAttribARB_ExecThread;
      if (v8[658])
      {
        v80 = v8;
      }

      else
      {
        v80 = v9;
      }

      v80[658] = glGetProgramiv_ExecThread;
      if (v8[660])
      {
        v81 = v8;
      }

      else
      {
        v81 = v9;
      }

      v81[660] = glGetProgramInfoLog_ExecThread;
      if (v8[632])
      {
        v82 = v8;
      }

      else
      {
        v82 = v9;
      }

      v82[632] = glGetAttribLocationARB_ExecThread;
      if (v8[625])
      {
        v83 = v8;
      }

      else
      {
        v83 = v9;
      }

      v83[625] = glGetUniformLocationARB_ExecThread;
      v84 = *(result + 28984);
      v85 = *(result + 28976);
      if (v84[759])
      {
        v86 = *(result + 28984);
      }

      else
      {
        v86 = *(result + 28976);
      }

      *(v86 + 6072) = glGetAttachedShaders_ExecThread;
      if (v84[606])
      {
        v87 = v84;
      }

      else
      {
        v87 = v85;
      }

      v87[606] = glUniform1i_Comp;
      if (v84[607])
      {
        v88 = v84;
      }

      else
      {
        v88 = v85;
      }

      v88[607] = glUniform2i_Comp;
      if (v84[608])
      {
        v89 = v84;
      }

      else
      {
        v89 = v85;
      }

      v89[608] = glUniform3i_Comp;
      if (v84[609])
      {
        v90 = v84;
      }

      else
      {
        v90 = v85;
      }

      v90[609] = glUniform4i_Comp;
      if (v84[602])
      {
        v91 = v84;
      }

      else
      {
        v91 = v85;
      }

      v91[602] = glUniform1f_Comp;
      if (v84[603])
      {
        v92 = v84;
      }

      else
      {
        v92 = v85;
      }

      v92[603] = glUniform2f_Comp;
      if (v84[604])
      {
        v93 = v84;
      }

      else
      {
        v93 = v85;
      }

      v93[604] = glUniform3f_Comp;
      if (v84[605])
      {
        v94 = v84;
      }

      else
      {
        v94 = v85;
      }

      v94[605] = glUniform4f_Comp;
      if (v84[614])
      {
        v95 = v84;
      }

      else
      {
        v95 = v85;
      }

      v95[614] = glUniform1iv_Comp;
      if (v84[615])
      {
        v96 = v84;
      }

      else
      {
        v96 = v85;
      }

      v96[615] = glUniform2iv_Comp;
      if (v84[616])
      {
        v97 = v84;
      }

      else
      {
        v97 = v85;
      }

      v97[616] = glUniform3iv_Comp;
      if (v84[617])
      {
        v98 = v84;
      }

      else
      {
        v98 = v85;
      }

      v98[617] = glUniform4iv_Comp;
      if (v84[610])
      {
        v99 = v84;
      }

      else
      {
        v99 = v85;
      }

      v99[610] = glUniform1fv_Comp;
      if (v84[611])
      {
        v100 = v84;
      }

      else
      {
        v100 = v85;
      }

      v100[611] = glUniform2fv_Comp;
      if (v84[612])
      {
        v101 = v84;
      }

      else
      {
        v101 = v85;
      }

      v101[612] = glUniform3fv_Comp;
      if (v84[613])
      {
        v102 = v84;
      }

      else
      {
        v102 = v85;
      }

      v102[613] = glUniform4fv_Comp;
      if (v84[618])
      {
        v103 = v84;
      }

      else
      {
        v103 = v85;
      }

      v103[618] = glUniformMatrix2fv_Comp;
      if (v84[619])
      {
        v104 = v84;
      }

      else
      {
        v104 = v85;
      }

      v104[619] = glUniformMatrix3fv_Comp;
      if (v84[620])
      {
        v105 = v84;
      }

      else
      {
        v105 = v85;
      }

      v105[620] = glUniformMatrix4fv_Comp;
      if (v84[627])
      {
        v106 = v84;
      }

      else
      {
        v106 = v85;
      }

      v106[627] = glGetUniformfvARB_ExecThread;
      if (v84[628])
      {
        v107 = v84;
      }

      else
      {
        v107 = v85;
      }

      v107[628] = glGetUniformivARB_ExecThread;
      if (v84[57])
      {
        v108 = v84;
      }

      else
      {
        v108 = v85;
      }

      v108[57] = glCullFace_Comp;
      if (v84[95])
      {
        v109 = v84;
      }

      else
      {
        v109 = v85;
      }

      v109[95] = glFrontFace_Comp;
      if (v84[877])
      {
        v110 = v84;
      }

      else
      {
        v110 = v85;
      }

      v110[877] = glDepthRangef_PackThread;
      if (v84[335])
      {
        v111 = v84;
      }

      else
      {
        v111 = v85;
      }

      v111[335] = glViewport_Comp;
      if (v84[72])
      {
        v112 = v84;
      }

      else
      {
        v112 = v85;
      }

      v112[72] = glEnable_Comp;
      if (v84[63])
      {
        v113 = v84;
      }

      else
      {
        v113 = v85;
      }

      v113[63] = glDisable_Comp;
      if (v84[143])
      {
        v114 = v84;
      }

      else
      {
        v114 = v85;
      }

      v114[143] = glIsEnabled_ExecThread;
      if (v84[65])
      {
        v115 = v84;
      }

      else
      {
        v115 = v85;
      }

      v115[65] = glDrawArrays_PackThread;
      if (v84[67])
      {
        v116 = v84;
      }

      else
      {
        v116 = v85;
      }

      v116[67] = glDrawElements_PackThread;
      if (v84[511])
      {
        v117 = v84;
      }

      else
      {
        v117 = v85;
      }

      v117[511] = glVertexAttribPointerARB_PackThread;
      if (v84[517])
      {
        v118 = v84;
      }

      else
      {
        v118 = v85;
      }

      v118[517] = glGetVertexAttribPointervARB_ExecThread;
      if (v84[512])
      {
        v119 = v84;
      }

      else
      {
        v119 = v85;
      }

      v119[512] = glEnableVertexAttribArrayARB_PackThread;
      if (v84[513])
      {
        v120 = v84;
      }

      else
      {
        v120 = v85;
      }

      v120[513] = glDisableVertexAttribArrayARB_PackThread;
      if (v84[476])
      {
        v121 = v84;
      }

      else
      {
        v121 = v85;
      }

      v121[476] = glVertexAttrib1fARB_Comp;
      if (v84[479])
      {
        v122 = v84;
      }

      else
      {
        v122 = v85;
      }

      v122[479] = glVertexAttrib2fARB_Comp;
      if (v84[482])
      {
        v123 = v84;
      }

      else
      {
        v123 = v85;
      }

      v123[482] = glVertexAttrib3fARB_Comp;
      if (v84[485])
      {
        v124 = v84;
      }

      else
      {
        v124 = v85;
      }

      v124[485] = glVertexAttrib4fARB_Comp;
      if (v84[489])
      {
        v125 = v84;
      }

      else
      {
        v125 = v85;
      }

      v125[489] = glVertexAttrib1fvARB_Comp;
      if (v84[492])
      {
        v126 = v84;
      }

      else
      {
        v126 = v85;
      }

      v126[492] = glVertexAttrib2fvARB_Comp;
      if (v84[495])
      {
        v127 = v84;
      }

      else
      {
        v127 = v85;
      }

      v127[495] = glVertexAttrib3fvARB_Comp;
      if (v84[503])
      {
        v128 = v84;
      }

      else
      {
        v128 = v85;
      }

      v128[503] = glVertexAttrib4fvARB_Comp;
      if (v84[515])
      {
        v129 = v84;
      }

      else
      {
        v129 = v85;
      }

      v129[515] = glGetVertexAttribfvARB_ExecThread;
      if (v84[516])
      {
        v130 = v84;
      }

      else
      {
        v130 = v85;
      }

      v130[516] = glGetVertexAttribivARB_ExecThread;
      if (v84[761])
      {
        v131 = v84;
      }

      else
      {
        v131 = v85;
      }

      v131[761] = glVertexAttribDivisorARB_PackThread;
      if (v84[762])
      {
        v132 = v84;
      }

      else
      {
        v132 = v85;
      }

      v132[762] = glDrawArraysInstanced_PackThread;
      if (v84[763])
      {
        v133 = v84;
      }

      else
      {
        v133 = v85;
      }

      v133[763] = glDrawElementsInstanced_PackThread;
      if (v84[90])
      {
        v134 = v84;
      }

      else
      {
        v134 = v85;
      }

      v134[90] = glFlush_ExecThread;
      if (v84[89])
      {
        v135 = v84;
      }

      else
      {
        v135 = v85;
      }

      v135[89] = glFinish_ExecThread;
      if (v84[102])
      {
        v136 = v84;
      }

      else
      {
        v136 = v85;
      }

      v136[102] = glGetError_ExecThread;
      if (v84[99])
      {
        v137 = v84;
      }

      else
      {
        v137 = v85;
      }

      v137[99] = glGetBooleanv_ExecThread;
      if (v84[104])
      {
        v138 = v84;
      }

      else
      {
        v138 = v85;
      }

      v138[104] = glGetIntegerv_ExecThread;
      if (v84[103])
      {
        v139 = v84;
      }

      else
      {
        v139 = v85;
      }

      v139[103] = glGetFloatv_ExecThread;
      if (v84[117])
      {
        v140 = v84;
      }

      else
      {
        v140 = v85;
      }

      v140[117] = glGetString_ExecThread;
      if (v84[155])
      {
        v141 = v84;
      }

      else
      {
        v141 = v85;
      }

      v141[155] = glLineWidth_Comp;
      if (v84[201])
      {
        v142 = v84;
      }

      else
      {
        v142 = v85;
      }

      v142[201] = glPolygonOffset_Comp;
      if (v84[665])
      {
        v143 = v84;
      }

      else
      {
        v143 = v85;
      }

      v143[665] = glIsRenderbufferEXT_ExecThread;
      if (v84[666])
      {
        v144 = v84;
      }

      else
      {
        v144 = v85;
      }

      v144[666] = glBindRenderbufferEXT_PackThread;
      if (v84[667])
      {
        v145 = v84;
      }

      else
      {
        v145 = v85;
      }

      v145[667] = glDeleteRenderbuffersEXT_ExecThread;
      if (v84[668])
      {
        v146 = v84;
      }

      else
      {
        v146 = v85;
      }

      v146[668] = glGenRenderbuffersEXT_ExecThread;
      if (v84[669])
      {
        v147 = v84;
      }

      else
      {
        v147 = v85;
      }

      v147[669] = glRenderbufferStorageEXT_PackThread;
      if (v84[670])
      {
        v148 = v84;
      }

      else
      {
        v148 = v85;
      }

      v148[670] = glGetRenderbufferParameterivEXT_ExecThread;
      if (v84[671])
      {
        v149 = v84;
      }

      else
      {
        v149 = v85;
      }

      v149[671] = glIsFramebufferEXT_ExecThread;
      if (v84[672])
      {
        v150 = v84;
      }

      else
      {
        v150 = v85;
      }

      v150[672] = glBindFramebufferEXT_PackThread;
      if (v84[673])
      {
        v151 = v84;
      }

      else
      {
        v151 = v85;
      }

      v151[673] = glDeleteFramebuffersEXT_ExecThread;
      if (v84[674])
      {
        v152 = v84;
      }

      else
      {
        v152 = v85;
      }

      v152[674] = glGenFramebuffersEXT_ExecThread;
      if (v84[675])
      {
        v153 = v84;
      }

      else
      {
        v153 = v85;
      }

      v153[675] = glCheckFramebufferStatusEXT_ExecThread;
      if (v84[677])
      {
        v154 = v84;
      }

      else
      {
        v154 = v85;
      }

      v154[677] = glFramebufferTexture2DEXT_PackThread;
      if (v84[679])
      {
        v155 = v84;
      }

      else
      {
        v155 = v85;
      }

      v155[679] = glFramebufferRenderbufferEXT_PackThread;
      if (v84[680])
      {
        v156 = v84;
      }

      else
      {
        v156 = v85;
      }

      v156[680] = glGetFramebufferAttachmentParameterivEXT_ExecThread;
      if (v84[681])
      {
        v157 = v84;
      }

      else
      {
        v157 = v85;
      }

      v157[681] = glGenerateMipmapEXT_PackThread;
      if (v84[128])
      {
        v158 = v84;
      }

      else
      {
        v158 = v85;
      }

      v158[128] = glHint_Comp;
      if (v84[195])
      {
        v159 = v84;
      }

      else
      {
        v159 = v85;
      }

      v159[195] = glPixelStorei_PackThread;
      if (v84[237])
      {
        v160 = v84;
      }

      else
      {
        v160 = v85;
      }

      v160[237] = glReadPixels_PackThread;
      if (v84[459])
      {
        v161 = v84;
      }

      else
      {
        v161 = v85;
      }

      v161[459] = glSampleCoverage_Comp;
      if (v84[463])
      {
        v162 = v84;
      }

      else
      {
        v162 = v85;
      }

      v162[463] = glGenFencesAPPLE_ExecThread;
      if (v84[464])
      {
        v163 = v84;
      }

      else
      {
        v163 = v85;
      }

      v163[464] = glDeleteFencesAPPLE_ExecThread;
      if (v84[466])
      {
        v164 = v84;
      }

      else
      {
        v164 = v85;
      }

      v164[466] = glIsFenceAPPLE_ExecThread;
      if (v84[465])
      {
        v165 = v84;
      }

      else
      {
        v165 = v85;
      }

      v165[465] = glSetFenceAPPLE_PackThread;
      if (v84[467])
      {
        v166 = v84;
      }

      else
      {
        v166 = v85;
      }

      v166[467] = glTestFenceAPPLE_ExecThread;
      if (v84[468])
      {
        v167 = v84;
      }

      else
      {
        v167 = v85;
      }

      v167[468] = glFinishFenceAPPLE_ExecThread;
      if (v84[469])
      {
        v168 = v84;
      }

      else
      {
        v168 = v85;
      }

      v168[469] = glTestObjectAPPLE_ExecThread;
      if (v84[470])
      {
        v169 = v84;
      }

      else
      {
        v169 = v85;
      }

      v169[470] = glFinishObjectAPPLE_ExecThread;
      if (v84[1024])
      {
        v170 = v84;
      }

      else
      {
        v170 = v85;
      }

      v170[1024] = glFramebufferParameterivAPPLE_PackThread;
      if (v84[1025])
      {
        v171 = v84;
      }

      else
      {
        v171 = v85;
      }

      v171[1025] = glGetFramebufferParameterivAPPLE_ExecThread;
      if (v84[1023])
      {
        v172 = v84;
      }

      else
      {
        v172 = v85;
      }

      v172[1023] = glDiscardFramebufferEXT_PackThread;
      if (v84[756])
      {
        v173 = v84;
      }

      else
      {
        v173 = v85;
      }

      v173[756] = glRenderbufferStorageMultisampleEXT_PackThread;
      v174 = *(result + 32501);
      if (v174 != 4)
      {
        if (v84[1026])
        {
          v175 = v84;
        }

        else
        {
          v175 = v85;
        }

        v175[1026] = glResolveMultisampleFramebufferAPPLE_PackThread;
      }

      if (v84[1027])
      {
        v176 = v84;
      }

      else
      {
        v176 = v85;
      }

      v176[1027] = glCopyTextureLevels_PackThread;
      if (v84[768])
      {
        v177 = v84;
      }

      else
      {
        v177 = v85;
      }

      v177[768] = glBindVertexArray_PackThread;
      if (v84[769])
      {
        v178 = v84;
      }

      else
      {
        v178 = v85;
      }

      v178[769] = glDeleteVertexArrays_ExecThread;
      if (v84[770])
      {
        v179 = v84;
      }

      else
      {
        v179 = v85;
      }

      v179[770] = glGenVertexArrays_ExecThread;
      if (v84[771])
      {
        v180 = v84;
      }

      else
      {
        v180 = v85;
      }

      v180[771] = glIsVertexArray_ExecThread;
      if (v84[637])
      {
        v181 = v84;
      }

      else
      {
        v181 = v85;
      }

      v181[637] = glBeginQuery_PackThread;
      if (v84[638])
      {
        v182 = v84;
      }

      else
      {
        v182 = v85;
      }

      v182[638] = glEndQuery_PackThread;
      if (v84[634])
      {
        v183 = v84;
      }

      else
      {
        v183 = v85;
      }

      v183[634] = glGenQueries_ExecThread;
      if (v84[635])
      {
        v184 = v84;
      }

      else
      {
        v184 = v85;
      }

      v184[635] = glDeleteQueries_ExecThread;
      if (v84[636])
      {
        v185 = v84;
      }

      else
      {
        v185 = v85;
      }

      v185[636] = glIsQuery_ExecThread;
      if (v84[639])
      {
        v186 = v84;
      }

      else
      {
        v186 = v85;
      }

      v186[639] = glGetQueryiv_ExecThread;
      if (v84[641])
      {
        v187 = v84;
      }

      else
      {
        v187 = v85;
      }

      v187[641] = glGetQueryObjectuiv_ExecThread;
      if (*v1 <= 5u)
      {
        if (v84[640])
        {
          v188 = v84;
        }

        else
        {
          v188 = v85;
        }

        v188[640] = glGetQueryObjectiv_ExecThread;
      }

      if (v84[814])
      {
        v189 = v84;
      }

      else
      {
        v189 = v85;
      }

      v189[814] = glLabelObjectEXT_ExecThread;
      if (v84[815])
      {
        v190 = v84;
      }

      else
      {
        v190 = v85;
      }

      v190[815] = glGetObjectLabelEXT_ExecThread;
      if (v84[816])
      {
        v191 = v84;
      }

      else
      {
        v191 = v85;
      }

      v191[816] = gliNoop;
      if (v84[817])
      {
        v192 = v84;
      }

      else
      {
        v192 = v85;
      }

      v192[817] = gliNoop;
      if (v84[818])
      {
        v193 = v84;
      }

      else
      {
        v193 = v85;
      }

      v193[818] = gliNoop;
      if (v84[1033])
      {
        v194 = v84;
      }

      else
      {
        v194 = v85;
      }

      v194[1033] = glLabelObjectWithResponsibleProcessAPPLE_ExecThread;
      if (v84[819])
      {
        v195 = v84;
      }

      else
      {
        v195 = v85;
      }

      v195[819] = glUseProgramStages_PackThread;
      if (v84[820])
      {
        v196 = v84;
      }

      else
      {
        v196 = v85;
      }

      v196[820] = glActiveShaderProgram_PackThread;
      if (v84[821])
      {
        v197 = v84;
      }

      else
      {
        v197 = v85;
      }

      v197[821] = glCreateShaderProgramv_ExecThread;
      if (v84[822])
      {
        v198 = v84;
      }

      else
      {
        v198 = v85;
      }

      v198[822] = glBindProgramPipeline_PackThread;
      if (v84[823])
      {
        v199 = v84;
      }

      else
      {
        v199 = v85;
      }

      v199[823] = glDeleteProgramPipelines_ExecThread;
      if (v84[824])
      {
        v200 = v84;
      }

      else
      {
        v200 = v85;
      }

      v200[824] = glGenProgramPipelines_ExecThread;
      if (v84[825])
      {
        v201 = v84;
      }

      else
      {
        v201 = v85;
      }

      v201[825] = glIsProgramPipeline_ExecThread;
      if (v84[689])
      {
        v202 = v84;
      }

      else
      {
        v202 = v85;
      }

      v202[689] = glProgramParameteriEXT_PackThread;
      if (v84[826])
      {
        v203 = v84;
      }

      else
      {
        v203 = v85;
      }

      v203[826] = glGetProgramPipelineiv_ExecThread;
      if (v84[827])
      {
        v204 = v84;
      }

      else
      {
        v204 = v85;
      }

      v204[827] = glValidateProgramPipeline_PackThread;
      if (v84[828])
      {
        v205 = v84;
      }

      else
      {
        v205 = v85;
      }

      v205[828] = glGetProgramPipelineInfoLog_ExecThread;
      if (v84[829])
      {
        v206 = v84;
      }

      else
      {
        v206 = v85;
      }

      v206[829] = glProgramUniform1i_Comp;
      if (v84[830])
      {
        v207 = v84;
      }

      else
      {
        v207 = v85;
      }

      v207[830] = glProgramUniform2i_Comp;
      if (v84[831])
      {
        v208 = v84;
      }

      else
      {
        v208 = v85;
      }

      v208[831] = glProgramUniform3i_Comp;
      if (v84[832])
      {
        v209 = v84;
      }

      else
      {
        v209 = v85;
      }

      v209[832] = glProgramUniform4i_Comp;
      if (v84[833])
      {
        v210 = v84;
      }

      else
      {
        v210 = v85;
      }

      v210[833] = glProgramUniform1f_Comp;
      if (v84[834])
      {
        v211 = v84;
      }

      else
      {
        v211 = v85;
      }

      v211[834] = glProgramUniform2f_Comp;
      if (v84[835])
      {
        v212 = v84;
      }

      else
      {
        v212 = v85;
      }

      v212[835] = glProgramUniform3f_Comp;
      if (v84[836])
      {
        v213 = v84;
      }

      else
      {
        v213 = v85;
      }

      v213[836] = glProgramUniform4f_Comp;
      if (v84[837])
      {
        v214 = v84;
      }

      else
      {
        v214 = v85;
      }

      v214[837] = glProgramUniform1iv_Comp;
      if (v84[838])
      {
        v215 = v84;
      }

      else
      {
        v215 = v85;
      }

      v215[838] = glProgramUniform2iv_Comp;
      if (v84[839])
      {
        v216 = v84;
      }

      else
      {
        v216 = v85;
      }

      v216[839] = glProgramUniform3iv_Comp;
      if (v84[840])
      {
        v217 = v84;
      }

      else
      {
        v217 = v85;
      }

      v217[840] = glProgramUniform4iv_Comp;
      if (v84[841])
      {
        v218 = v84;
      }

      else
      {
        v218 = v85;
      }

      v218[841] = glProgramUniform1fv_Comp;
      if (v84[842])
      {
        v219 = v84;
      }

      else
      {
        v219 = v85;
      }

      v219[842] = glProgramUniform2fv_Comp;
      if (v84[843])
      {
        v220 = v84;
      }

      else
      {
        v220 = v85;
      }

      v220[843] = glProgramUniform3fv_Comp;
      if (v84[844])
      {
        v221 = v84;
      }

      else
      {
        v221 = v85;
      }

      v221[844] = glProgramUniform4fv_Comp;
      if (v84[845])
      {
        v222 = v84;
      }

      else
      {
        v222 = v85;
      }

      v222[845] = glProgramUniformMatrix2fv_Comp;
      if (v84[846])
      {
        v223 = v84;
      }

      else
      {
        v223 = v85;
      }

      v223[846] = glProgramUniformMatrix3fv_Comp;
      if (v84[847])
      {
        v224 = v84;
      }

      else
      {
        v224 = v85;
      }

      v224[847] = glProgramUniformMatrix4fv_Comp;
      if (v84[1031])
      {
        v225 = v84;
      }

      else
      {
        v225 = v85;
      }

      v225[1031] = glTexStorage2D_PackThread;
      if (v84[779])
      {
        v226 = v84;
      }

      else
      {
        v226 = v85;
      }

      v226[779] = glFenceSync_ExecThread;
      if (v84[780])
      {
        v227 = v84;
      }

      else
      {
        v227 = v85;
      }

      v227[780] = glIsSync_ExecThread;
      if (v84[781])
      {
        v228 = v84;
      }

      else
      {
        v228 = v85;
      }

      v228[781] = glDeleteSync_ExecThread;
      if (v84[782])
      {
        v229 = v84;
      }

      else
      {
        v229 = v85;
      }

      v229[782] = glClientWaitSync_ExecThread;
      if (v84[783])
      {
        v230 = v84;
      }

      else
      {
        v230 = v85;
      }

      v230[783] = glWaitSync_Comp;
      if (v84[784])
      {
        v231 = v84;
      }

      else
      {
        v231 = v85;
      }

      v231[784] = glGetInteger64v_ExecThread;
      if (v84[785])
      {
        v232 = v84;
      }

      else
      {
        v232 = v85;
      }

      v232[785] = glGetSynciv_ExecThread;
      if (v84[442])
      {
        v233 = v84;
      }

      else
      {
        v233 = v85;
      }

      v233[442] = glGetActiveUniformsiv_ExecThread;
      if (v174 != 4)
      {
        goto LABEL_3097;
      }

      if (v84[236])
      {
        v234 = v84;
      }

      else
      {
        v234 = v85;
      }

      v234[236] = glReadBuffer_Comp;
      if (v84[438])
      {
        v235 = v84;
      }

      else
      {
        v235 = v85;
      }

      v235[438] = glTexImage3D_PackThread;
      if (v84[439])
      {
        v236 = v84;
      }

      else
      {
        v236 = v85;
      }

      v236[439] = glTexSubImage3D_PackThread;
      if (v84[440])
      {
        v237 = v84;
      }

      else
      {
        v237 = v85;
      }

      v237[440] = glCopyTexSubImage3D_Comp;
      if (v84[379])
      {
        v238 = v84;
      }

      else
      {
        v238 = v85;
      }

      v238[379] = glCompressedTexImage3D_PackThread;
      if (v84[382])
      {
        v239 = v84;
      }

      else
      {
        v239 = v85;
      }

      v239[382] = glCompressedTexSubImage3D_PackThread;
      if (v84[654])
      {
        v240 = v84;
      }

      else
      {
        v240 = v85;
      }

      v240[654] = glDrawBuffersARB_Comp;
      if (v84[749])
      {
        v241 = v84;
      }

      else
      {
        v241 = v85;
      }

      v241[749] = glUniformMatrix2x3fv_Comp;
      if (v84[750])
      {
        v242 = v84;
      }

      else
      {
        v242 = v85;
      }

      v242[750] = glUniformMatrix3x2fv_Comp;
      if (v84[751])
      {
        v243 = v84;
      }

      else
      {
        v243 = v85;
      }

      v243[751] = glUniformMatrix2x4fv_Comp;
      if (v84[752])
      {
        v244 = v84;
      }

      else
      {
        v244 = v85;
      }

      v244[752] = glUniformMatrix4x2fv_Comp;
      if (v84[753])
      {
        v245 = v84;
      }

      else
      {
        v245 = v85;
      }

      v245[753] = glUniformMatrix3x4fv_Comp;
      if (v84[754])
      {
        v246 = v84;
      }

      else
      {
        v246 = v85;
      }

      v246[754] = glUniformMatrix4x3fv_Comp;
      if (v84[755])
      {
        v247 = v84;
      }

      else
      {
        v247 = v85;
      }

      v247[755] = glBlitFramebufferEXT_Comp;
      if (v84[691])
      {
        v248 = v84;
      }

      else
      {
        v248 = v85;
      }

      v248[691] = glFramebufferTextureLayerEXT_PackThread;
      if (v84[700])
      {
        v249 = v84;
      }

      else
      {
        v249 = v85;
      }

      v249[700] = glGetIntegerIndexedv_ExecThread;
      if (v84[696])
      {
        v250 = v84;
      }

      else
      {
        v250 = v85;
      }

      v250[696] = glBeginTransformFeedback_PackThread;
      if (v84[697])
      {
        v251 = v84;
      }

      else
      {
        v251 = v85;
      }

      v251[697] = glEndTransformFeedback_PackThread;
      if (v84[693])
      {
        v252 = v84;
      }

      else
      {
        v252 = v85;
      }

      v252[693] = glBindBufferRange_PackThread;
      if (v84[695])
      {
        v253 = v84;
      }

      else
      {
        v253 = v85;
      }

      v253[695] = glBindBufferBase_PackThread;
      if (v84[698])
      {
        v254 = v84;
      }

      else
      {
        v254 = v85;
      }

      v254[698] = glTransformFeedbackVaryingsEXT_ExecThread;
      if (v84[699])
      {
        v255 = v84;
      }

      else
      {
        v255 = v85;
      }

      v255[699] = glGetTransformFeedbackVaryingEXT_ExecThread;
      if (v84[731])
      {
        v256 = v84;
      }

      else
      {
        v256 = v85;
      }

      v256[731] = glVertexAttribIPointerEXT_PackThread;
      if (v84[732])
      {
        v257 = v84;
      }

      else
      {
        v257 = v85;
      }

      v257[732] = glGetVertexAttribIivEXT_ExecThread;
      if (v84[733])
      {
        v258 = v84;
      }

      else
      {
        v258 = v85;
      }

      v258[733] = glGetVertexAttribIuivEXT_ExecThread;
      if (v84[714])
      {
        v259 = v84;
      }

      else
      {
        v259 = v85;
      }

      v259[714] = glVertexAttribI4iEXT_Comp;
      if (v84[718])
      {
        v260 = v84;
      }

      else
      {
        v260 = v85;
      }

      v260[718] = glVertexAttribI4uiEXT_Comp;
      if (v84[722])
      {
        v261 = v84;
      }

      else
      {
        v261 = v85;
      }

      v261[722] = glVertexAttribI4ivEXT_Comp;
      if (v84[726])
      {
        v262 = v84;
      }

      else
      {
        v262 = v85;
      }

      v262[726] = glVertexAttribI4uivEXT_Comp;
      if (!v84[742])
      {
        v84 = v85;
      }

      v84[742] = glGetUniformuivEXT_ExecThread;
      v263 = *(result + 28984);
      v264 = *(result + 28976);
      if (v263[744])
      {
        v265 = *(result + 28984);
      }

      else
      {
        v265 = *(result + 28976);
      }

      *(v265 + 5952) = glGetFragDataLocationEXT_ExecThread;
      if (v263[734])
      {
        v266 = v263;
      }

      else
      {
        v266 = v264;
      }

      v266[734] = glUniform1ui_Comp;
      if (v263[735])
      {
        v267 = v263;
      }

      else
      {
        v267 = v264;
      }

      v267[735] = glUniform2ui_Comp;
      if (v263[736])
      {
        v268 = v263;
      }

      else
      {
        v268 = v264;
      }

      v268[736] = glUniform3ui_Comp;
      if (v263[737])
      {
        v269 = v263;
      }

      else
      {
        v269 = v264;
      }

      v269[737] = glUniform4ui_Comp;
      if (v263[738])
      {
        v270 = v263;
      }

      else
      {
        v270 = v264;
      }

      v270[738] = glUniform1uiv_Comp;
      if (v263[739])
      {
        v271 = v263;
      }

      else
      {
        v271 = v264;
      }

      v271[739] = glUniform2uiv_Comp;
      if (v263[740])
      {
        v272 = v263;
      }

      else
      {
        v272 = v264;
      }

      v272[740] = glUniform3uiv_Comp;
      if (v263[741])
      {
        v273 = v263;
      }

      else
      {
        v273 = v264;
      }

      v273[741] = glUniform4uiv_Comp;
      if (v263[774])
      {
        v274 = v263;
      }

      else
      {
        v274 = v264;
      }

      v274[774] = glClearBufferiv_PackThread;
      if (v263[775])
      {
        v275 = v263;
      }

      else
      {
        v275 = v264;
      }

      v275[775] = glClearBufferuiv_PackThread;
      if (v263[776])
      {
        v276 = v263;
      }

      else
      {
        v276 = v264;
      }

      v276[776] = glClearBufferfv_PackThread;
      if (v263[777])
      {
        v277 = v263;
      }

      else
      {
        v277 = v264;
      }

      v277[777] = glClearBufferfi_PackThread;
      if (v263[778])
      {
        v278 = v263;
      }

      else
      {
        v278 = v264;
      }

      v278[778] = glGetStringi_ExecThread;
      if (v263[791])
      {
        v279 = v263;
      }

      else
      {
        v279 = v264;
      }

      v279[791] = glCopyBufferSubData_PackThread;
      if (v263[441])
      {
        v280 = v263;
      }

      else
      {
        v280 = v264;
      }

      v280[441] = glGetUniformIndices_ExecThread;
      if (v263[444])
      {
        v281 = v263;
      }

      else
      {
        v281 = v264;
      }

      v281[444] = glGetUniformBlockIndex_ExecThread;
      if (v263[445])
      {
        v282 = v263;
      }

      else
      {
        v282 = v264;
      }

      v282[445] = glGetActiveUniformBlockiv_ExecThread;
      if (v263[446])
      {
        v283 = v263;
      }

      else
      {
        v283 = v264;
      }

      v283[446] = glGetActiveUniformBlockName_ExecThread;
      if (v263[447])
      {
        v284 = v263;
      }

      else
      {
        v284 = v264;
      }

      v284[447] = glUniformBlockBinding_PackThread;
      if (v263[405])
      {
        v285 = v263;
      }

      else
      {
        v285 = v264;
      }

      v285[405] = glDrawRangeElements_PackThread;
      if (v263[798])
      {
        v286 = v263;
      }

      else
      {
        v286 = v264;
      }

      v286[798] = glGetInteger64i_v_ExecThread;
      if (v263[799])
      {
        v287 = v263;
      }

      else
      {
        v287 = v264;
      }

      v287[799] = glGetBufferParameteri64v_ExecThread;
      if (v263[800])
      {
        v288 = v263;
      }

      else
      {
        v288 = v264;
      }

      v288[800] = glGenSamplers_ExecThread;
      if (v263[801])
      {
        v289 = v263;
      }

      else
      {
        v289 = v264;
      }

      v289[801] = glDeleteSamplers_ExecThread;
      if (v263[802])
      {
        v290 = v263;
      }

      else
      {
        v290 = v264;
      }

      v290[802] = glIsSampler_ExecThread;
      if (v263[803])
      {
        v291 = v263;
      }

      else
      {
        v291 = v264;
      }

      v291[803] = glBindSampler_PackThread;
      if (v263[804])
      {
        v292 = v263;
      }

      else
      {
        v292 = v264;
      }

      v292[804] = glSamplerParameteri_PackThread;
      if (v263[805])
      {
        v293 = v263;
      }

      else
      {
        v293 = v264;
      }

      v293[805] = glSamplerParameteriv_PackThread;
      if (v263[806])
      {
        v294 = v263;
      }

      else
      {
        v294 = v264;
      }

      v294[806] = glSamplerParameterf_PackThread;
      if (v263[807])
      {
        v295 = v263;
      }

      else
      {
        v295 = v264;
      }

      v295[807] = glSamplerParameterfv_PackThread;
      if (v263[810])
      {
        v296 = v263;
      }

      else
      {
        v296 = v264;
      }

      v296[810] = glGetSamplerParameteriv_ExecThread;
      if (v263[811])
      {
        v297 = v263;
      }

      else
      {
        v297 = v264;
      }

      v297[811] = glGetSamplerParameterfv_ExecThread;
      if (v263[904])
      {
        v298 = v263;
      }

      else
      {
        v298 = v264;
      }

      v298[904] = glBindTransformFeedback_PackThread;
      if (v263[905])
      {
        v299 = v263;
      }

      else
      {
        v299 = v264;
      }

      v299[905] = glGenTransformFeedbacks_ExecThread;
      if (v263[906])
      {
        v300 = v263;
      }

      else
      {
        v300 = v264;
      }

      v300[906] = glDeleteTransformFeedbacks_ExecThread;
      if (v263[907])
      {
        v301 = v263;
      }

      else
      {
        v301 = v264;
      }

      v301[907] = glPauseTransformFeedback_PackThread;
      if (v263[908])
      {
        v302 = v263;
      }

      else
      {
        v302 = v264;
      }

      v302[908] = glResumeTransformFeedback_PackThread;
      if (v263[909])
      {
        v303 = v263;
      }

      else
      {
        v303 = v264;
      }

      v303[909] = glIsTransformFeedback_ExecThread;
      if (v263[887])
      {
        v304 = v263;
      }

      else
      {
        v304 = v264;
      }

      v304[887] = glGetProgramBinary_ExecThread;
      if (v263[888])
      {
        v305 = v263;
      }

      else
      {
        v305 = v264;
      }

      v305[888] = glProgramBinary_ExecThread;
      if (v263[1028])
      {
        v306 = v263;
      }

      else
      {
        v306 = v264;
      }

      v306[1028] = glInvalidateSubFramebuffer_PackThread;
      if (v263[1029])
      {
        v307 = v263;
      }

      else
      {
        v307 = v264;
      }

      v307[1029] = glGetInternalformativ_ExecThread;
      if (v263[1032])
      {
        v308 = v263;
      }

      else
      {
        v308 = v264;
      }

      v308[1032] = glTexStorage3D_PackThread;
      if (v263[848])
      {
        v309 = v263;
      }

      else
      {
        v309 = v264;
      }

      v309[848] = glProgramUniform1ui_Comp;
      if (v263[849])
      {
        v310 = v263;
      }

      else
      {
        v310 = v264;
      }

      v310[849] = glProgramUniform2ui_Comp;
      if (v263[850])
      {
        v311 = v263;
      }

      else
      {
        v311 = v264;
      }

      v311[850] = glProgramUniform3ui_Comp;
      if (v263[851])
      {
        v312 = v263;
      }

      else
      {
        v312 = v264;
      }

      v312[851] = glProgramUniform4ui_Comp;
      if (v263[852])
      {
        v313 = v263;
      }

      else
      {
        v313 = v264;
      }

      v313[852] = glProgramUniform1uiv_Comp;
      if (v263[853])
      {
        v314 = v263;
      }

      else
      {
        v314 = v264;
      }

      v314[853] = glProgramUniform2uiv_Comp;
      if (v263[854])
      {
        v315 = v263;
      }

      else
      {
        v315 = v264;
      }

      v315[854] = glProgramUniform3uiv_Comp;
      if (v263[855])
      {
        v316 = v263;
      }

      else
      {
        v316 = v264;
      }

      v316[855] = glProgramUniform4uiv_Comp;
      if (v263[856])
      {
        v317 = v263;
      }

      else
      {
        v317 = v264;
      }

      v317[856] = glProgramUniformMatrix2x3fv_Comp;
      if (v263[857])
      {
        v318 = v263;
      }

      else
      {
        v318 = v264;
      }

      v318[857] = glProgramUniformMatrix3x2fv_Comp;
      if (v263[858])
      {
        v319 = v263;
      }

      else
      {
        v319 = v264;
      }

      v319[858] = glProgramUniformMatrix2x4fv_Comp;
      if (v263[859])
      {
        v320 = v263;
      }

      else
      {
        v320 = v264;
      }

      v320[859] = glProgramUniformMatrix4x2fv_Comp;
      if (v263[860])
      {
        v321 = v263;
      }

      else
      {
        v321 = v264;
      }

      v321[860] = glProgramUniformMatrix3x4fv_Comp;
      if (!v263[861])
      {
        v263 = v264;
      }

      v322 = glProgramUniformMatrix4x3fv_Comp;
    }

    else
    {
      *(v10 + 2008) = glScissor_Exec;
      if (v8[49])
      {
        v532 = v8;
      }

      else
      {
        v532 = v9;
      }

      v532[49] = glColorMask_Exec;
      if (v8[337])
      {
        v533 = v8;
      }

      else
      {
        v533 = v9;
      }

      v533[337] = glBlendColor_Exec;
      if (v8[338])
      {
        v534 = v8;
      }

      else
      {
        v534 = v9;
      }

      v534[338] = glBlendEquation_Exec;
      if (v8[458])
      {
        v535 = v8;
      }

      else
      {
        v535 = v9;
      }

      v535[458] = glBlendEquationSeparateEXT_Exec;
      if (v8[7])
      {
        v536 = v8;
      }

      else
      {
        v536 = v9;
      }

      v536[7] = glBlendFunc_Exec;
      if (v8[336])
      {
        v537 = v8;
      }

      else
      {
        v537 = v9;
      }

      v537[336] = glBlendFuncSeparate_Exec;
      if (v8[60])
      {
        v538 = v8;
      }

      else
      {
        v538 = v9;
      }

      v538[60] = glDepthFunc_Exec;
      if (v8[61])
      {
        v539 = v8;
      }

      else
      {
        v539 = v9;
      }

      v539[61] = glDepthMask_Exec;
      if (v8[254])
      {
        v540 = v8;
      }

      else
      {
        v540 = v9;
      }

      v540[254] = glStencilFunc_Exec;
      if (v8[661])
      {
        v541 = v8;
      }

      else
      {
        v541 = v9;
      }

      v541[661] = glStencilFuncSeparate_Exec;
      if (v8[256])
      {
        v542 = v8;
      }

      else
      {
        v542 = v9;
      }

      v542[256] = glStencilOp_Exec;
      if (v8[586])
      {
        v543 = v8;
      }

      else
      {
        v543 = v9;
      }

      v543[586] = glStencilOpSeparateATI_Exec;
      if (v8[255])
      {
        v544 = v8;
      }

      else
      {
        v544 = v9;
      }

      v544[255] = glStencilMask_Exec;
      if (v8[662])
      {
        v545 = v8;
      }

      else
      {
        v545 = v9;
      }

      v545[662] = glStencilMaskSeparate_Exec;
      if (v8[10])
      {
        v546 = v8;
      }

      else
      {
        v546 = v9;
      }

      v546[10] = glClear_Exec;
      if (v8[12])
      {
        v547 = v8;
      }

      else
      {
        v547 = v9;
      }

      v547[12] = glClearColor_Exec;
      if (v8[878])
      {
        v548 = v8;
      }

      else
      {
        v548 = v9;
      }

      v548[878] = glClearDepthf_Exec;
      if (v8[15])
      {
        v549 = v8;
      }

      else
      {
        v549 = v9;
      }

      v549[15] = glClearStencil_Exec;
      if (v8[644])
      {
        v550 = v8;
      }

      else
      {
        v550 = v9;
      }

      v550[644] = glGenBuffers_Exec;
      if (v8[643])
      {
        v551 = v8;
      }

      else
      {
        v551 = v9;
      }

      v551[643] = glDeleteBuffers_Exec;
      if (v8[645])
      {
        v552 = v8;
      }

      else
      {
        v552 = v9;
      }

      v552[645] = glIsBuffer_Exec;
      if (v8[642])
      {
        v553 = v8;
      }

      else
      {
        v553 = v9;
      }

      v553[642] = glBindBuffer_Exec;
      if (v8[646])
      {
        v554 = v8;
      }

      else
      {
        v554 = v9;
      }

      v554[646] = glBufferData_Exec;
      if (v8[647])
      {
        v555 = v8;
      }

      else
      {
        v555 = v9;
      }

      v555[647] = glBufferSubData_Exec;
      if (v8[651])
      {
        v556 = v8;
      }

      else
      {
        v556 = v9;
      }

      v556[651] = glGetBufferParameteriv_Exec;
      if (v7 != 4)
      {
        if (v8[649])
        {
          v557 = v8;
        }

        else
        {
          v557 = v9;
        }

        v557[649] = glMapBuffer_Exec;
      }

      if (v8[650])
      {
        v558 = v8;
      }

      else
      {
        v558 = v9;
      }

      v558[650] = glUnmapBuffer_Exec;
      if (v8[652])
      {
        v559 = v8;
      }

      else
      {
        v559 = v9;
      }

      v559[652] = glGetBufferPointerv_Exec;
      if (v8[795])
      {
        v560 = v8;
      }

      else
      {
        v560 = v9;
      }

      v560[795] = glMapBufferRange_Exec;
      if (v8[796])
      {
        v561 = v8;
      }

      else
      {
        v561 = v9;
      }

      v561[796] = glFlushMappedBufferRange_Exec;
      if (v8[98])
      {
        v562 = v8;
      }

      else
      {
        v562 = v9;
      }

      v562[98] = glGenTextures_Exec;
      if (v8[59])
      {
        v563 = v8;
      }

      else
      {
        v563 = v9;
      }

      v563[59] = glDeleteTextures_Exec;
      if (v8[145])
      {
        v564 = v8;
      }

      else
      {
        v564 = v9;
      }

      v564[145] = glIsTexture_Exec;
      if (v8[5])
      {
        v565 = v8;
      }

      else
      {
        v565 = v9;
      }

      v565[5] = glBindTexture_Exec;
      if (v8[342])
      {
        v566 = v8;
      }

      else
      {
        v566 = v9;
      }

      v566[342] = glActiveTexture_Exec;
      if (v8[301])
      {
        v567 = v8;
      }

      else
      {
        v567 = v9;
      }

      v567[301] = glTexImage2D_Exec;
      if (v8[307])
      {
        v568 = v8;
      }

      else
      {
        v568 = v9;
      }

      v568[307] = glTexSubImage2D_Exec;
      if (v8[54])
      {
        v569 = v8;
      }

      else
      {
        v569 = v9;
      }

      v569[54] = glCopyTexImage2D_Exec;
      if (v8[56])
      {
        v570 = v8;
      }

      else
      {
        v570 = v9;
      }

      v570[56] = glCopyTexSubImage2D_Exec;
      if (v8[380])
      {
        v571 = v8;
      }

      else
      {
        v571 = v9;
      }

      v571[380] = glCompressedTexImage2D_Exec;
      if (v8[383])
      {
        v572 = v8;
      }

      else
      {
        v572 = v9;
      }

      v572[383] = glCompressedTexSubImage2D_Exec;
      if (v8[304])
      {
        v573 = v8;
      }

      else
      {
        v573 = v9;
      }

      v573[304] = glTexParameteri_Exec;
      if (v8[302])
      {
        v574 = v8;
      }

      else
      {
        v574 = v9;
      }

      v574[302] = glTexParameterf_Exec;
      if (v8[305])
      {
        v575 = v8;
      }

      else
      {
        v575 = v9;
      }

      v575[305] = glTexParameteriv_Exec;
      if (v8[303])
      {
        v576 = v8;
      }

      else
      {
        v576 = v9;
      }

      v576[303] = glTexParameterfv_Exec;
      if (v8[127])
      {
        v577 = v8;
      }

      else
      {
        v577 = v9;
      }

      v577[127] = glGetTexParameteriv_Exec;
      if (v8[126])
      {
        v578 = v8;
      }

      else
      {
        v578 = v9;
      }

      v578[126] = glGetTexParameterfv_Exec;
      if (v8[594])
      {
        v579 = v8;
      }

      else
      {
        v579 = v9;
      }

      v579[594] = glCreateShaderObjectARB_Exec;
      if (v8[591])
      {
        v580 = v8;
      }

      else
      {
        v580 = v9;
      }

      v580[591] = glDeleteObjectARB_Exec;
      if (v8[655])
      {
        v581 = v8;
      }

      else
      {
        v581 = v9;
      }

      v581[655] = glIsShader_Exec;
      if (v8[596])
      {
        v582 = v8;
      }

      else
      {
        v582 = v9;
      }

      v582[596] = glCompileShaderARB_Exec;
      if (v8[657])
      {
        v583 = v8;
      }

      else
      {
        v583 = v9;
      }

      v583[657] = glGetShaderiv_Exec;
      if (v8[659])
      {
        v584 = v8;
      }

      else
      {
        v584 = v9;
      }

      v584[659] = glGetShaderInfoLog_Exec;
      if (v8[629])
      {
        v585 = v8;
      }

      else
      {
        v585 = v9;
      }

      v585[629] = glGetShaderSourceARB_Exec;
      if (v8[595])
      {
        v586 = v8;
      }

      else
      {
        v586 = v9;
      }

      v586[595] = glShaderSourceARB_Exec;
      if (v8[875])
      {
        v587 = v8;
      }

      else
      {
        v587 = v9;
      }

      v587[875] = glShaderBinaryOES_Exec;
      if (v8[876])
      {
        v588 = v8;
      }

      else
      {
        v588 = v9;
      }

      v588[876] = glGetShaderPrecisionFormatOES_Exec;
      if (v8[874])
      {
        v589 = v8;
      }

      else
      {
        v589 = v9;
      }

      v589[874] = glReleaseShaderCompilerOES_Exec;
      if (v8[597])
      {
        v590 = v8;
      }

      else
      {
        v590 = v9;
      }

      v590[597] = glCreateProgramObjectARB_Exec;
      if (v8[591])
      {
        v591 = v8;
      }

      else
      {
        v591 = v9;
      }

      v591[591] = glDeleteObjectARB_Exec;
      if (v8[656])
      {
        v592 = v8;
      }

      else
      {
        v592 = v9;
      }

      v592[656] = glIsProgram_Exec;
      if (v8[598])
      {
        v593 = v8;
      }

      else
      {
        v593 = v9;
      }

      v593[598] = glAttachObjectARB_Exec;
      if (v8[593])
      {
        v594 = v8;
      }

      else
      {
        v594 = v9;
      }

      v594[593] = glDetachObjectARB_Exec;
      if (v8[599])
      {
        v595 = v8;
      }

      else
      {
        v595 = v9;
      }

      v595[599] = glLinkProgramARB_Exec;
      if (v8[601])
      {
        v596 = v8;
      }

      else
      {
        v596 = v9;
      }

      v596[601] = glValidateProgramARB_Exec;
      if (v8[600])
      {
        v597 = v8;
      }

      else
      {
        v597 = v9;
      }

      v597[600] = glUseProgramObjectARB_Exec;
      if (v8[630])
      {
        v598 = v8;
      }

      else
      {
        v598 = v9;
      }

      v598[630] = glBindAttribLocationARB_Exec;
      if (v8[626])
      {
        v599 = v8;
      }

      else
      {
        v599 = v9;
      }

      v599[626] = glGetActiveUniformARB_Exec;
      if (v8[631])
      {
        v600 = v8;
      }

      else
      {
        v600 = v9;
      }

      v600[631] = glGetActiveAttribARB_Exec;
      if (v8[658])
      {
        v601 = v8;
      }

      else
      {
        v601 = v9;
      }

      v601[658] = glGetProgramiv_Exec;
      if (v8[660])
      {
        v602 = v8;
      }

      else
      {
        v602 = v9;
      }

      v602[660] = glGetProgramInfoLog_Exec;
      if (v8[632])
      {
        v603 = v8;
      }

      else
      {
        v603 = v9;
      }

      v603[632] = glGetAttribLocationARB_Exec;
      if (v8[625])
      {
        v604 = v8;
      }

      else
      {
        v604 = v9;
      }

      v604[625] = glGetUniformLocationARB_Exec;
      v605 = *(result + 28984);
      v606 = *(result + 28976);
      if (v605[759])
      {
        v607 = *(result + 28984);
      }

      else
      {
        v607 = *(result + 28976);
      }

      *(v607 + 6072) = glGetAttachedShaders_Exec;
      if (v605[606])
      {
        v608 = v605;
      }

      else
      {
        v608 = v606;
      }

      v608[606] = glUniform1i_Exec;
      if (v605[607])
      {
        v609 = v605;
      }

      else
      {
        v609 = v606;
      }

      v609[607] = glUniform2i_Exec;
      if (v605[608])
      {
        v610 = v605;
      }

      else
      {
        v610 = v606;
      }

      v610[608] = glUniform3i_Exec;
      if (v605[609])
      {
        v611 = v605;
      }

      else
      {
        v611 = v606;
      }

      v611[609] = glUniform4i_Exec;
      if (v605[602])
      {
        v612 = v605;
      }

      else
      {
        v612 = v606;
      }

      v612[602] = glUniform1f_Exec;
      if (v605[603])
      {
        v613 = v605;
      }

      else
      {
        v613 = v606;
      }

      v613[603] = glUniform2f_Exec;
      if (v605[604])
      {
        v614 = v605;
      }

      else
      {
        v614 = v606;
      }

      v614[604] = glUniform3f_Exec;
      if (v605[605])
      {
        v615 = v605;
      }

      else
      {
        v615 = v606;
      }

      v615[605] = glUniform4f_Exec;
      if (v605[614])
      {
        v616 = v605;
      }

      else
      {
        v616 = v606;
      }

      v616[614] = glUniform1iv_Exec;
      if (v605[615])
      {
        v617 = v605;
      }

      else
      {
        v617 = v606;
      }

      v617[615] = glUniform2iv_Exec;
      if (v605[616])
      {
        v618 = v605;
      }

      else
      {
        v618 = v606;
      }

      v618[616] = glUniform3iv_Exec;
      if (v605[617])
      {
        v619 = v605;
      }

      else
      {
        v619 = v606;
      }

      v619[617] = glUniform4iv_Exec;
      if (v605[610])
      {
        v620 = v605;
      }

      else
      {
        v620 = v606;
      }

      v620[610] = glUniform1fv_Exec;
      if (v605[611])
      {
        v621 = v605;
      }

      else
      {
        v621 = v606;
      }

      v621[611] = glUniform2fv_Exec;
      if (v605[612])
      {
        v622 = v605;
      }

      else
      {
        v622 = v606;
      }

      v622[612] = glUniform3fv_Exec;
      if (v605[613])
      {
        v623 = v605;
      }

      else
      {
        v623 = v606;
      }

      v623[613] = glUniform4fv_Exec;
      if (v605[618])
      {
        v624 = v605;
      }

      else
      {
        v624 = v606;
      }

      v624[618] = glUniformMatrix2fv_Exec;
      if (v605[619])
      {
        v625 = v605;
      }

      else
      {
        v625 = v606;
      }

      v625[619] = glUniformMatrix3fv_Exec;
      if (v605[620])
      {
        v626 = v605;
      }

      else
      {
        v626 = v606;
      }

      v626[620] = glUniformMatrix4fv_Exec;
      if (v605[627])
      {
        v627 = v605;
      }

      else
      {
        v627 = v606;
      }

      v627[627] = glGetUniformfvARB_Exec;
      if (v605[628])
      {
        v628 = v605;
      }

      else
      {
        v628 = v606;
      }

      v628[628] = glGetUniformivARB_Exec;
      if (v605[57])
      {
        v629 = v605;
      }

      else
      {
        v629 = v606;
      }

      v629[57] = glCullFace_Exec;
      if (v605[95])
      {
        v630 = v605;
      }

      else
      {
        v630 = v606;
      }

      v630[95] = glFrontFace_Exec;
      if (v605[877])
      {
        v631 = v605;
      }

      else
      {
        v631 = v606;
      }

      v631[877] = glDepthRangef_Exec;
      if (v605[335])
      {
        v632 = v605;
      }

      else
      {
        v632 = v606;
      }

      v632[335] = glViewport_Exec;
      if (v605[72])
      {
        v633 = v605;
      }

      else
      {
        v633 = v606;
      }

      v633[72] = glEnable_Exec;
      if (v605[63])
      {
        v634 = v605;
      }

      else
      {
        v634 = v606;
      }

      v634[63] = glDisable_Exec;
      if (v605[143])
      {
        v635 = v605;
      }

      else
      {
        v635 = v606;
      }

      v635[143] = glIsEnabled_Exec;
      if (v605[65])
      {
        v636 = v605;
      }

      else
      {
        v636 = v606;
      }

      v636[65] = glDrawArrays_ES2Exec;
      if (v605[67])
      {
        v637 = v605;
      }

      else
      {
        v637 = v606;
      }

      v637[67] = glDrawElements_ES2Exec;
      if (v605[511])
      {
        v638 = v605;
      }

      else
      {
        v638 = v606;
      }

      v638[511] = glVertexAttribPointerARB_Exec;
      if (v605[517])
      {
        v639 = v605;
      }

      else
      {
        v639 = v606;
      }

      v639[517] = glGetVertexAttribPointervARB_Exec;
      if (v605[512])
      {
        v640 = v605;
      }

      else
      {
        v640 = v606;
      }

      v640[512] = glEnableVertexAttribArrayARB_Exec;
      if (v605[513])
      {
        v641 = v605;
      }

      else
      {
        v641 = v606;
      }

      v641[513] = glDisableVertexAttribArrayARB_Exec;
      if (v605[476])
      {
        v642 = v605;
      }

      else
      {
        v642 = v606;
      }

      v642[476] = glVertexAttrib1fARB_Exec;
      if (v605[479])
      {
        v643 = v605;
      }

      else
      {
        v643 = v606;
      }

      v643[479] = glVertexAttrib2fARB_Exec;
      if (v605[482])
      {
        v644 = v605;
      }

      else
      {
        v644 = v606;
      }

      v644[482] = glVertexAttrib3fARB_Exec;
      if (v605[485])
      {
        v645 = v605;
      }

      else
      {
        v645 = v606;
      }

      v645[485] = glVertexAttrib4fARB_Exec;
      if (v605[489])
      {
        v646 = v605;
      }

      else
      {
        v646 = v606;
      }

      v646[489] = glVertexAttrib1fvARB_Exec;
      if (v605[492])
      {
        v647 = v605;
      }

      else
      {
        v647 = v606;
      }

      v647[492] = glVertexAttrib2fvARB_Exec;
      if (v605[495])
      {
        v648 = v605;
      }

      else
      {
        v648 = v606;
      }

      v648[495] = glVertexAttrib3fvARB_Exec;
      if (v605[503])
      {
        v649 = v605;
      }

      else
      {
        v649 = v606;
      }

      v649[503] = glVertexAttrib4fvARB_Exec;
      if (v605[515])
      {
        v650 = v605;
      }

      else
      {
        v650 = v606;
      }

      v650[515] = glGetVertexAttribfvARB_Exec;
      if (v605[516])
      {
        v651 = v605;
      }

      else
      {
        v651 = v606;
      }

      v651[516] = glGetVertexAttribivARB_Exec;
      if (v605[761])
      {
        v652 = v605;
      }

      else
      {
        v652 = v606;
      }

      v652[761] = glVertexAttribDivisorARB_Exec;
      if (v605[762])
      {
        v653 = v605;
      }

      else
      {
        v653 = v606;
      }

      v653[762] = glDrawArraysInstanced_ES2Exec;
      if (v605[763])
      {
        v654 = v605;
      }

      else
      {
        v654 = v606;
      }

      v654[763] = glDrawElementsInstanced_ES2Exec;
      if (v605[90])
      {
        v655 = v605;
      }

      else
      {
        v655 = v606;
      }

      v655[90] = glFlush_Exec;
      if (v605[89])
      {
        v656 = v605;
      }

      else
      {
        v656 = v606;
      }

      v656[89] = glFinish_Exec;
      if (v605[102])
      {
        v657 = v605;
      }

      else
      {
        v657 = v606;
      }

      v657[102] = glGetError_Exec;
      if (v605[99])
      {
        v658 = v605;
      }

      else
      {
        v658 = v606;
      }

      v658[99] = glGetBooleanv_Exec;
      if (v605[104])
      {
        v659 = v605;
      }

      else
      {
        v659 = v606;
      }

      v659[104] = glGetIntegerv_Exec;
      if (v605[103])
      {
        v660 = v605;
      }

      else
      {
        v660 = v606;
      }

      v660[103] = glGetFloatv_Exec;
      if (v605[117])
      {
        v661 = v605;
      }

      else
      {
        v661 = v606;
      }

      v661[117] = glGetString_Exec;
      if (v605[155])
      {
        v662 = v605;
      }

      else
      {
        v662 = v606;
      }

      v662[155] = glLineWidth_Exec;
      if (v605[201])
      {
        v663 = v605;
      }

      else
      {
        v663 = v606;
      }

      v663[201] = glPolygonOffset_Exec;
      if (v605[665])
      {
        v664 = v605;
      }

      else
      {
        v664 = v606;
      }

      v664[665] = glIsRenderbufferEXT_Exec;
      if (v605[666])
      {
        v665 = v605;
      }

      else
      {
        v665 = v606;
      }

      v665[666] = glBindRenderbuffer_Exec;
      if (v605[667])
      {
        v666 = v605;
      }

      else
      {
        v666 = v606;
      }

      v666[667] = glDeleteRenderbuffersEXT_Exec;
      if (v605[668])
      {
        v667 = v605;
      }

      else
      {
        v667 = v606;
      }

      v667[668] = glGenRenderbuffersEXT_Exec;
      if (v605[669])
      {
        v668 = v605;
      }

      else
      {
        v668 = v606;
      }

      v668[669] = glRenderbufferStorageEXT_Exec;
      if (v605[670])
      {
        v669 = v605;
      }

      else
      {
        v669 = v606;
      }

      v669[670] = glGetRenderbufferParameterivEXT_Exec;
      if (v605[671])
      {
        v670 = v605;
      }

      else
      {
        v670 = v606;
      }

      v670[671] = glIsFramebufferEXT_Exec;
      if (v605[672])
      {
        v671 = v605;
      }

      else
      {
        v671 = v606;
      }

      v671[672] = glBindFramebuffer_Exec;
      if (v605[673])
      {
        v672 = v605;
      }

      else
      {
        v672 = v606;
      }

      v672[673] = glDeleteFramebuffersEXT_Exec;
      if (v605[674])
      {
        v673 = v605;
      }

      else
      {
        v673 = v606;
      }

      v673[674] = glGenFramebuffersEXT_Exec;
      if (v605[675])
      {
        v674 = v605;
      }

      else
      {
        v674 = v606;
      }

      v674[675] = glCheckFramebufferStatusEXT_Exec;
      if (v605[677])
      {
        v675 = v605;
      }

      else
      {
        v675 = v606;
      }

      v675[677] = glFramebufferTexture2DEXT_Exec;
      if (v605[679])
      {
        v676 = v605;
      }

      else
      {
        v676 = v606;
      }

      v676[679] = glFramebufferRenderbufferEXT_Exec;
      if (v605[680])
      {
        v677 = v605;
      }

      else
      {
        v677 = v606;
      }

      v677[680] = glGetFramebufferAttachmentParameterivEXT_Exec;
      if (v605[681])
      {
        v678 = v605;
      }

      else
      {
        v678 = v606;
      }

      v678[681] = glGenerateMipmapEXT_Exec;
      if (v605[128])
      {
        v679 = v605;
      }

      else
      {
        v679 = v606;
      }

      v679[128] = glHint_Exec;
      if (v605[195])
      {
        v680 = v605;
      }

      else
      {
        v680 = v606;
      }

      v680[195] = glPixelStorei_Exec;
      if (v605[237])
      {
        v681 = v605;
      }

      else
      {
        v681 = v606;
      }

      v681[237] = glReadPixels_Exec;
      if (v605[459])
      {
        v682 = v605;
      }

      else
      {
        v682 = v606;
      }

      v682[459] = glSampleCoverage_Exec;
      if (v605[463])
      {
        v683 = v605;
      }

      else
      {
        v683 = v606;
      }

      v683[463] = glGenFencesAPPLE_Exec;
      if (v605[464])
      {
        v684 = v605;
      }

      else
      {
        v684 = v606;
      }

      v684[464] = glDeleteFencesAPPLE_Exec;
      if (v605[466])
      {
        v685 = v605;
      }

      else
      {
        v685 = v606;
      }

      v685[466] = glIsFenceAPPLE_Exec;
      if (v605[465])
      {
        v686 = v605;
      }

      else
      {
        v686 = v606;
      }

      v686[465] = glSetFenceAPPLE_Exec;
      if (v605[467])
      {
        v687 = v605;
      }

      else
      {
        v687 = v606;
      }

      v687[467] = glTestFenceAPPLE_Exec;
      if (v605[468])
      {
        v688 = v605;
      }

      else
      {
        v688 = v606;
      }

      v688[468] = glFinishFenceAPPLE_Exec;
      if (v605[469])
      {
        v689 = v605;
      }

      else
      {
        v689 = v606;
      }

      v689[469] = glTestObjectAPPLE_Exec;
      if (v605[470])
      {
        v690 = v605;
      }

      else
      {
        v690 = v606;
      }

      v690[470] = glFinishObjectAPPLE_Exec;
      if (v605[1024])
      {
        v691 = v605;
      }

      else
      {
        v691 = v606;
      }

      v691[1024] = glFramebufferParameterivAPPLE_Exec;
      if (v605[1025])
      {
        v692 = v605;
      }

      else
      {
        v692 = v606;
      }

      v692[1025] = glGetFramebufferParameterivAPPLE_Exec;
      if (v605[1023])
      {
        v693 = v605;
      }

      else
      {
        v693 = v606;
      }

      v693[1023] = glDiscardFramebufferEXT_Exec;
      if (v605[756])
      {
        v694 = v605;
      }

      else
      {
        v694 = v606;
      }

      v694[756] = glRenderbufferStorageMultisampleEXT_Exec;
      v695 = *(result + 32501);
      if (v695 != 4)
      {
        if (v605[1026])
        {
          v696 = v605;
        }

        else
        {
          v696 = v606;
        }

        v696[1026] = glResolveMultisampleFramebufferAPPLE_Exec;
      }

      if (v605[1027])
      {
        v697 = v605;
      }

      else
      {
        v697 = v606;
      }

      v697[1027] = glCopyTextureLevels_Exec;
      if (v605[768])
      {
        v698 = v605;
      }

      else
      {
        v698 = v606;
      }

      v698[768] = glBindVertexArray_Exec;
      if (v605[769])
      {
        v699 = v605;
      }

      else
      {
        v699 = v606;
      }

      v699[769] = glDeleteVertexArrays_Exec;
      if (v605[770])
      {
        v700 = v605;
      }

      else
      {
        v700 = v606;
      }

      v700[770] = glGenVertexArrays_Exec;
      if (v605[771])
      {
        v701 = v605;
      }

      else
      {
        v701 = v606;
      }

      v701[771] = glIsVertexArray_Exec;
      if (v605[637])
      {
        v702 = v605;
      }

      else
      {
        v702 = v606;
      }

      v702[637] = glBeginQuery_Exec;
      if (v605[638])
      {
        v703 = v605;
      }

      else
      {
        v703 = v606;
      }

      v703[638] = glEndQuery_Exec;
      if (v605[634])
      {
        v704 = v605;
      }

      else
      {
        v704 = v606;
      }

      v704[634] = glGenQueries_Exec;
      if (v605[635])
      {
        v705 = v605;
      }

      else
      {
        v705 = v606;
      }

      v705[635] = glDeleteQueries_Exec;
      if (v605[636])
      {
        v706 = v605;
      }

      else
      {
        v706 = v606;
      }

      v706[636] = glIsQuery_Exec;
      if (v605[639])
      {
        v707 = v605;
      }

      else
      {
        v707 = v606;
      }

      v707[639] = glGetQueryiv_Exec;
      if (v605[641])
      {
        v708 = v605;
      }

      else
      {
        v708 = v606;
      }

      v708[641] = glGetQueryObjectuiv_Exec;
      if (*v1 <= 5u)
      {
        if (v605[640])
        {
          v709 = v605;
        }

        else
        {
          v709 = v606;
        }

        v709[640] = glGetQueryObjectiv_Exec;
      }

      if (v605[814])
      {
        v710 = v605;
      }

      else
      {
        v710 = v606;
      }

      v710[814] = glLabelObjectEXT_Exec;
      if (v605[815])
      {
        v711 = v605;
      }

      else
      {
        v711 = v606;
      }

      v711[815] = glGetObjectLabelEXT_Exec;
      if (v605[816])
      {
        v712 = v605;
      }

      else
      {
        v712 = v606;
      }

      v712[816] = gliNoop;
      if (v605[817])
      {
        v713 = v605;
      }

      else
      {
        v713 = v606;
      }

      v713[817] = gliNoop;
      if (v605[818])
      {
        v714 = v605;
      }

      else
      {
        v714 = v606;
      }

      v714[818] = gliNoop;
      if (v605[1033])
      {
        v715 = v605;
      }

      else
      {
        v715 = v606;
      }

      v715[1033] = glLabelObjectWithResponsibleProcessAPPLE_Exec;
      if (v605[819])
      {
        v716 = v605;
      }

      else
      {
        v716 = v606;
      }

      v716[819] = glUseProgramStages_Exec;
      if (v605[820])
      {
        v717 = v605;
      }

      else
      {
        v717 = v606;
      }

      v717[820] = glActiveShaderProgram_Exec;
      if (v605[821])
      {
        v718 = v605;
      }

      else
      {
        v718 = v606;
      }

      v718[821] = glCreateShaderProgramv_Exec;
      if (v605[822])
      {
        v719 = v605;
      }

      else
      {
        v719 = v606;
      }

      v719[822] = glBindProgramPipeline_Exec;
      if (v605[823])
      {
        v720 = v605;
      }

      else
      {
        v720 = v606;
      }

      v720[823] = glDeleteProgramPipelines_Exec;
      if (v605[824])
      {
        v721 = v605;
      }

      else
      {
        v721 = v606;
      }

      v721[824] = glGenProgramPipelines_Exec;
      if (v605[825])
      {
        v722 = v605;
      }

      else
      {
        v722 = v606;
      }

      v722[825] = glIsProgramPipeline_Exec;
      if (v605[689])
      {
        v723 = v605;
      }

      else
      {
        v723 = v606;
      }

      v723[689] = glProgramParameteriEXT_Exec;
      if (v605[826])
      {
        v724 = v605;
      }

      else
      {
        v724 = v606;
      }

      v724[826] = glGetProgramPipelineiv_Exec;
      if (v605[827])
      {
        v725 = v605;
      }

      else
      {
        v725 = v606;
      }

      v725[827] = glValidateProgramPipeline_Exec;
      if (v605[828])
      {
        v726 = v605;
      }

      else
      {
        v726 = v606;
      }

      v726[828] = glGetProgramPipelineInfoLog_Exec;
      if (v605[829])
      {
        v727 = v605;
      }

      else
      {
        v727 = v606;
      }

      v727[829] = glProgramUniform1i_Exec;
      if (v605[830])
      {
        v728 = v605;
      }

      else
      {
        v728 = v606;
      }

      v728[830] = glProgramUniform2i_Exec;
      if (v605[831])
      {
        v729 = v605;
      }

      else
      {
        v729 = v606;
      }

      v729[831] = glProgramUniform3i_Exec;
      if (v605[832])
      {
        v730 = v605;
      }

      else
      {
        v730 = v606;
      }

      v730[832] = glProgramUniform4i_Exec;
      if (v605[833])
      {
        v731 = v605;
      }

      else
      {
        v731 = v606;
      }

      v731[833] = glProgramUniform1f_Exec;
      if (v605[834])
      {
        v732 = v605;
      }

      else
      {
        v732 = v606;
      }

      v732[834] = glProgramUniform2f_Exec;
      if (v605[835])
      {
        v733 = v605;
      }

      else
      {
        v733 = v606;
      }

      v733[835] = glProgramUniform3f_Exec;
      if (v605[836])
      {
        v734 = v605;
      }

      else
      {
        v734 = v606;
      }

      v734[836] = glProgramUniform4f_Exec;
      if (v605[837])
      {
        v735 = v605;
      }

      else
      {
        v735 = v606;
      }

      v735[837] = glProgramUniform1iv_Exec;
      if (v605[838])
      {
        v736 = v605;
      }

      else
      {
        v736 = v606;
      }

      v736[838] = glProgramUniform2iv_Exec;
      if (v605[839])
      {
        v737 = v605;
      }

      else
      {
        v737 = v606;
      }

      v737[839] = glProgramUniform3iv_Exec;
      if (v605[840])
      {
        v738 = v605;
      }

      else
      {
        v738 = v606;
      }

      v738[840] = glProgramUniform4iv_Exec;
      if (v605[841])
      {
        v739 = v605;
      }

      else
      {
        v739 = v606;
      }

      v739[841] = glProgramUniform1fv_Exec;
      if (v605[842])
      {
        v740 = v605;
      }

      else
      {
        v740 = v606;
      }

      v740[842] = glProgramUniform2fv_Exec;
      if (v605[843])
      {
        v741 = v605;
      }

      else
      {
        v741 = v606;
      }

      v741[843] = glProgramUniform3fv_Exec;
      if (v605[844])
      {
        v742 = v605;
      }

      else
      {
        v742 = v606;
      }

      v742[844] = glProgramUniform4fv_Exec;
      if (v605[845])
      {
        v743 = v605;
      }

      else
      {
        v743 = v606;
      }

      v743[845] = glProgramUniformMatrix2fv_Exec;
      if (v605[846])
      {
        v744 = v605;
      }

      else
      {
        v744 = v606;
      }

      v744[846] = glProgramUniformMatrix3fv_Exec;
      if (v605[847])
      {
        v745 = v605;
      }

      else
      {
        v745 = v606;
      }

      v745[847] = glProgramUniformMatrix4fv_Exec;
      if (v605[1031])
      {
        v746 = v605;
      }

      else
      {
        v746 = v606;
      }

      v746[1031] = glTexStorage2D_Exec;
      if (v605[779])
      {
        v747 = v605;
      }

      else
      {
        v747 = v606;
      }

      v747[779] = glFenceSync_Exec;
      if (v605[780])
      {
        v748 = v605;
      }

      else
      {
        v748 = v606;
      }

      v748[780] = glIsSync_Exec;
      if (v605[781])
      {
        v749 = v605;
      }

      else
      {
        v749 = v606;
      }

      v749[781] = glDeleteSync_Exec;
      if (v605[782])
      {
        v750 = v605;
      }

      else
      {
        v750 = v606;
      }

      v750[782] = glClientWaitSync_Exec;
      if (v605[783])
      {
        v751 = v605;
      }

      else
      {
        v751 = v606;
      }

      v751[783] = glWaitSync_Exec;
      if (v605[784])
      {
        v752 = v605;
      }

      else
      {
        v752 = v606;
      }

      v752[784] = glGetInteger64v_Exec;
      if (v605[785])
      {
        v753 = v605;
      }

      else
      {
        v753 = v606;
      }

      v753[785] = glGetSynciv_Exec;
      if (v605[442])
      {
        v754 = v605;
      }

      else
      {
        v754 = v606;
      }

      v754[442] = glGetActiveUniformsiv_Exec;
      if (v695 != 4)
      {
        goto LABEL_3097;
      }

      if (v605[236])
      {
        v755 = v605;
      }

      else
      {
        v755 = v606;
      }

      v755[236] = glReadBuffer_Exec;
      if (v605[438])
      {
        v756 = v605;
      }

      else
      {
        v756 = v606;
      }

      v756[438] = glTexImage3D_Exec;
      if (v605[439])
      {
        v757 = v605;
      }

      else
      {
        v757 = v606;
      }

      v757[439] = glTexSubImage3D_Exec;
      if (v605[440])
      {
        v758 = v605;
      }

      else
      {
        v758 = v606;
      }

      v758[440] = glCopyTexSubImage3D_Exec;
      if (v605[379])
      {
        v759 = v605;
      }

      else
      {
        v759 = v606;
      }

      v759[379] = glCompressedTexImage3D_Exec;
      if (v605[382])
      {
        v760 = v605;
      }

      else
      {
        v760 = v606;
      }

      v760[382] = glCompressedTexSubImage3D_Exec;
      if (v605[654])
      {
        v761 = v605;
      }

      else
      {
        v761 = v606;
      }

      v761[654] = glDrawBuffersARB_Exec;
      if (v605[749])
      {
        v762 = v605;
      }

      else
      {
        v762 = v606;
      }

      v762[749] = glUniformMatrix2x3fv_Exec;
      if (v605[750])
      {
        v763 = v605;
      }

      else
      {
        v763 = v606;
      }

      v763[750] = glUniformMatrix3x2fv_Exec;
      if (v605[751])
      {
        v764 = v605;
      }

      else
      {
        v764 = v606;
      }

      v764[751] = glUniformMatrix2x4fv_Exec;
      if (v605[752])
      {
        v765 = v605;
      }

      else
      {
        v765 = v606;
      }

      v765[752] = glUniformMatrix4x2fv_Exec;
      if (v605[753])
      {
        v766 = v605;
      }

      else
      {
        v766 = v606;
      }

      v766[753] = glUniformMatrix3x4fv_Exec;
      if (v605[754])
      {
        v767 = v605;
      }

      else
      {
        v767 = v606;
      }

      v767[754] = glUniformMatrix4x3fv_Exec;
      if (v605[755])
      {
        v768 = v605;
      }

      else
      {
        v768 = v606;
      }

      v768[755] = glBlitFramebufferEXT_Exec;
      if (v605[691])
      {
        v769 = v605;
      }

      else
      {
        v769 = v606;
      }

      v769[691] = glFramebufferTextureLayerEXT_Exec;
      if (v605[700])
      {
        v770 = v605;
      }

      else
      {
        v770 = v606;
      }

      v770[700] = glGetIntegerIndexedv_Exec;
      if (v605[696])
      {
        v771 = v605;
      }

      else
      {
        v771 = v606;
      }

      v771[696] = glBeginTransformFeedback_Exec;
      if (v605[697])
      {
        v772 = v605;
      }

      else
      {
        v772 = v606;
      }

      v772[697] = glEndTransformFeedback_Exec;
      if (v605[693])
      {
        v773 = v605;
      }

      else
      {
        v773 = v606;
      }

      v773[693] = glBindBufferRange_Exec;
      if (v605[695])
      {
        v774 = v605;
      }

      else
      {
        v774 = v606;
      }

      v774[695] = glBindBufferBase_Exec;
      if (v605[698])
      {
        v775 = v605;
      }

      else
      {
        v775 = v606;
      }

      v775[698] = glTransformFeedbackVaryingsEXT_Exec;
      if (v605[699])
      {
        v776 = v605;
      }

      else
      {
        v776 = v606;
      }

      v776[699] = glGetTransformFeedbackVaryingEXT_Exec;
      if (v605[731])
      {
        v777 = v605;
      }

      else
      {
        v777 = v606;
      }

      v777[731] = glVertexAttribIPointerEXT_Exec;
      if (v605[732])
      {
        v778 = v605;
      }

      else
      {
        v778 = v606;
      }

      v778[732] = glGetVertexAttribIivEXT_Exec;
      if (v605[733])
      {
        v779 = v605;
      }

      else
      {
        v779 = v606;
      }

      v779[733] = glGetVertexAttribIuivEXT_Exec;
      if (v605[714])
      {
        v780 = v605;
      }

      else
      {
        v780 = v606;
      }

      v780[714] = glVertexAttribI4iEXT_Exec;
      if (v605[718])
      {
        v781 = v605;
      }

      else
      {
        v781 = v606;
      }

      v781[718] = glVertexAttribI4uiEXT_Exec;
      if (v605[722])
      {
        v782 = v605;
      }

      else
      {
        v782 = v606;
      }

      v782[722] = glVertexAttribI4ivEXT_Exec;
      if (v605[726])
      {
        v783 = v605;
      }

      else
      {
        v783 = v606;
      }

      v783[726] = glVertexAttribI4uivEXT_Exec;
      if (!v605[742])
      {
        v605 = v606;
      }

      v605[742] = glGetUniformuivEXT_Exec;
      v263 = *(result + 28984);
      v784 = *(result + 28976);
      if (v263[744])
      {
        v785 = *(result + 28984);
      }

      else
      {
        v785 = *(result + 28976);
      }

      *(v785 + 5952) = glGetFragDataLocationEXT_Exec;
      if (v263[734])
      {
        v786 = v263;
      }

      else
      {
        v786 = v784;
      }

      v786[734] = glUniform1ui_Exec;
      if (v263[735])
      {
        v787 = v263;
      }

      else
      {
        v787 = v784;
      }

      v787[735] = glUniform2ui_Exec;
      if (v263[736])
      {
        v788 = v263;
      }

      else
      {
        v788 = v784;
      }

      v788[736] = glUniform3ui_Exec;
      if (v263[737])
      {
        v789 = v263;
      }

      else
      {
        v789 = v784;
      }

      v789[737] = glUniform4ui_Exec;
      if (v263[738])
      {
        v790 = v263;
      }

      else
      {
        v790 = v784;
      }

      v790[738] = glUniform1uiv_Exec;
      if (v263[739])
      {
        v791 = v263;
      }

      else
      {
        v791 = v784;
      }

      v791[739] = glUniform2uiv_Exec;
      if (v263[740])
      {
        v792 = v263;
      }

      else
      {
        v792 = v784;
      }

      v792[740] = glUniform3uiv_Exec;
      if (v263[741])
      {
        v793 = v263;
      }

      else
      {
        v793 = v784;
      }

      v793[741] = glUniform4uiv_Exec;
      if (v263[774])
      {
        v794 = v263;
      }

      else
      {
        v794 = v784;
      }

      v794[774] = glClearBufferiv_Exec;
      if (v263[775])
      {
        v795 = v263;
      }

      else
      {
        v795 = v784;
      }

      v795[775] = glClearBufferuiv_Exec;
      if (v263[776])
      {
        v796 = v263;
      }

      else
      {
        v796 = v784;
      }

      v796[776] = glClearBufferfv_Exec;
      if (v263[777])
      {
        v797 = v263;
      }

      else
      {
        v797 = v784;
      }

      v797[777] = glClearBufferfi_Exec;
      if (v263[778])
      {
        v798 = v263;
      }

      else
      {
        v798 = v784;
      }

      v798[778] = glGetStringi_Exec;
      if (v263[791])
      {
        v799 = v263;
      }

      else
      {
        v799 = v784;
      }

      v799[791] = glCopyBufferSubData_Exec;
      if (v263[441])
      {
        v800 = v263;
      }

      else
      {
        v800 = v784;
      }

      v800[441] = glGetUniformIndices_Exec;
      if (v263[444])
      {
        v801 = v263;
      }

      else
      {
        v801 = v784;
      }

      v801[444] = glGetUniformBlockIndex_Exec;
      if (v263[445])
      {
        v802 = v263;
      }

      else
      {
        v802 = v784;
      }

      v802[445] = glGetActiveUniformBlockiv_Exec;
      if (v263[446])
      {
        v803 = v263;
      }

      else
      {
        v803 = v784;
      }

      v803[446] = glGetActiveUniformBlockName_Exec;
      if (v263[447])
      {
        v804 = v263;
      }

      else
      {
        v804 = v784;
      }

      v804[447] = glUniformBlockBinding_Exec;
      if (v263[405])
      {
        v805 = v263;
      }

      else
      {
        v805 = v784;
      }

      v805[405] = glDrawRangeElements_ES2Exec;
      if (v263[798])
      {
        v806 = v263;
      }

      else
      {
        v806 = v784;
      }

      v806[798] = glGetInteger64i_v_Exec;
      if (v263[799])
      {
        v807 = v263;
      }

      else
      {
        v807 = v784;
      }

      v807[799] = glGetBufferParameteri64v_Exec;
      if (v263[800])
      {
        v808 = v263;
      }

      else
      {
        v808 = v784;
      }

      v808[800] = glGenSamplers_Exec;
      if (v263[801])
      {
        v809 = v263;
      }

      else
      {
        v809 = v784;
      }

      v809[801] = glDeleteSamplers_Exec;
      if (v263[802])
      {
        v810 = v263;
      }

      else
      {
        v810 = v784;
      }

      v810[802] = glIsSampler_Exec;
      if (v263[803])
      {
        v811 = v263;
      }

      else
      {
        v811 = v784;
      }

      v811[803] = glBindSampler_Exec;
      if (v263[804])
      {
        v812 = v263;
      }

      else
      {
        v812 = v784;
      }

      v812[804] = glSamplerParameteri_Exec;
      if (v263[805])
      {
        v813 = v263;
      }

      else
      {
        v813 = v784;
      }

      v813[805] = glSamplerParameteriv_Exec;
      if (v263[806])
      {
        v814 = v263;
      }

      else
      {
        v814 = v784;
      }

      v814[806] = glSamplerParameterf_Exec;
      if (v263[807])
      {
        v815 = v263;
      }

      else
      {
        v815 = v784;
      }

      v815[807] = glSamplerParameterfv_Exec;
      if (v263[810])
      {
        v816 = v263;
      }

      else
      {
        v816 = v784;
      }

      v816[810] = glGetSamplerParameteriv_Exec;
      if (v263[811])
      {
        v817 = v263;
      }

      else
      {
        v817 = v784;
      }

      v817[811] = glGetSamplerParameterfv_Exec;
      if (v263[904])
      {
        v818 = v263;
      }

      else
      {
        v818 = v784;
      }

      v818[904] = glBindTransformFeedback_GL3Exec;
      if (v263[905])
      {
        v819 = v263;
      }

      else
      {
        v819 = v784;
      }

      v819[905] = glGenTransformFeedbacks_GL3Exec;
      if (v263[906])
      {
        v820 = v263;
      }

      else
      {
        v820 = v784;
      }

      v820[906] = glDeleteTransformFeedbacks_GL3Exec;
      if (v263[907])
      {
        v821 = v263;
      }

      else
      {
        v821 = v784;
      }

      v821[907] = glPauseTransformFeedback_GL3Exec;
      if (v263[908])
      {
        v822 = v263;
      }

      else
      {
        v822 = v784;
      }

      v822[908] = glResumeTransformFeedback_GL3Exec;
      if (v263[909])
      {
        v823 = v263;
      }

      else
      {
        v823 = v784;
      }

      v823[909] = glIsTransformFeedback_GL3Exec;
      if (v263[887])
      {
        v824 = v263;
      }

      else
      {
        v824 = v784;
      }

      v824[887] = glGetProgramBinary_Exec;
      if (v263[888])
      {
        v825 = v263;
      }

      else
      {
        v825 = v784;
      }

      v825[888] = glProgramBinary_Exec;
      if (v263[1028])
      {
        v826 = v263;
      }

      else
      {
        v826 = v784;
      }

      v826[1028] = glInvalidateSubFramebuffer_Exec;
      if (v263[1029])
      {
        v827 = v263;
      }

      else
      {
        v827 = v784;
      }

      v827[1029] = glGetInternalformativ_Exec;
      if (v263[1032])
      {
        v828 = v263;
      }

      else
      {
        v828 = v784;
      }

      v828[1032] = glTexStorage3D_Exec;
      if (v263[848])
      {
        v829 = v263;
      }

      else
      {
        v829 = v784;
      }

      v829[848] = glProgramUniform1ui_Exec;
      if (v263[849])
      {
        v830 = v263;
      }

      else
      {
        v830 = v784;
      }

      v830[849] = glProgramUniform2ui_Exec;
      if (v263[850])
      {
        v831 = v263;
      }

      else
      {
        v831 = v784;
      }

      v831[850] = glProgramUniform3ui_Exec;
      if (v263[851])
      {
        v832 = v263;
      }

      else
      {
        v832 = v784;
      }

      v832[851] = glProgramUniform4ui_Exec;
      if (v263[852])
      {
        v833 = v263;
      }

      else
      {
        v833 = v784;
      }

      v833[852] = glProgramUniform1uiv_Exec;
      if (v263[853])
      {
        v834 = v263;
      }

      else
      {
        v834 = v784;
      }

      v834[853] = glProgramUniform2uiv_Exec;
      if (v263[854])
      {
        v835 = v263;
      }

      else
      {
        v835 = v784;
      }

      v835[854] = glProgramUniform3uiv_Exec;
      if (v263[855])
      {
        v836 = v263;
      }

      else
      {
        v836 = v784;
      }

      v836[855] = glProgramUniform4uiv_Exec;
      if (v263[856])
      {
        v837 = v263;
      }

      else
      {
        v837 = v784;
      }

      v837[856] = glProgramUniformMatrix2x3fv_Exec;
      if (v263[857])
      {
        v838 = v263;
      }

      else
      {
        v838 = v784;
      }

      v838[857] = glProgramUniformMatrix3x2fv_Exec;
      if (v263[858])
      {
        v839 = v263;
      }

      else
      {
        v839 = v784;
      }

      v839[858] = glProgramUniformMatrix2x4fv_Exec;
      if (v263[859])
      {
        v840 = v263;
      }

      else
      {
        v840 = v784;
      }

      v840[859] = glProgramUniformMatrix4x2fv_Exec;
      if (v263[860])
      {
        v841 = v263;
      }

      else
      {
        v841 = v784;
      }

      v841[860] = glProgramUniformMatrix3x4fv_Exec;
      if (!v263[861])
      {
        v263 = v784;
      }

      v322 = glProgramUniformMatrix4x3fv_Exec;
    }

    v263[861] = v322;
  }

LABEL_3097:
  *(result + 26340) = 0;
LABEL_3098:
  v1046 = *(result + 27648);
  v1047 = v1046 == 0;
  if (v1046)
  {
    v1048 = glGetTexImage_PackThread;
  }

  else
  {
    v1048 = glGetTexImage_Exec;
  }

  if (v1047)
  {
    v1049 = glGetTexLevelParameteriv_Exec;
  }

  else
  {
    v1049 = glGetTexLevelParameteriv_ExecThread;
  }

  v1050 = glGetCompressedTexImage_ExecThread;
  if (v1047)
  {
    v1050 = glGetCompressedTexImage_Exec;
  }

  v1051 = *(result + 28984);
  v1052 = *(result + 28976);
  if (v1051[123])
  {
    v1053 = *(result + 28984);
  }

  else
  {
    v1053 = *(result + 28976);
  }

  *(v1053 + 984) = v1048;
  if (v1051[125])
  {
    v1054 = v1051;
  }

  else
  {
    v1054 = v1052;
  }

  v1054[125] = v1049;
  if (v1051[385])
  {
    v1055 = v1051;
  }

  else
  {
    v1055 = v1052;
  }

  v1055[385] = v1050;
  return result;
}