void *RIPDataCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_block_invoke_once_4772 != -1)
  {
    dispatch_once(&_block_invoke_once_4772, &__block_literal_global_4_4773);
  }

  result = CGTypeCreateInstance(RIPDataGetTypeID_data_type_id, 32, a3, a4, a5, a6, a7, a8);
  result[2] = result + 2;
  result[3] = result + 2;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void *RIPCacheEntryCreate(int a1, uint64_t a2)
{
  RIPLockCacheState();
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 16) <= *(RIPGetCacheState_cache_state + 24) || (v4 = *(RIPGetCacheState_cache_state + 8), v5 = *v4, *v4 == v4))
  {
    RIPUnlockCacheState();
  }

  else
  {
    v6 = v5 - 2;
    RIPCacheEntryRemove(v5 - 2);
    RIPUnlockCacheState();
    RIPCacheEntryRelease(v6);
  }

  result = malloc_type_malloc(0xA8uLL, 0x10E20404CCF93ECuLL);
  if (result)
  {
    *result = result;
    result[1] = result;
    result[2] = result + 2;
    result[3] = result + 2;
    result[4] = a2;
    result[5] = 0;
    *(result + 13) = 0;
    *(result + 14) = 0;
    *(result + 12) = a1;
  }

  return result;
}

void ripc_AddEntry(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = a1;
  ++*(a1 + 16);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v3 = *(RIPGetCacheState_cache_state + 8);
  ++*(RIPGetCacheState_cache_state + 16);
  v4 = *(v3 + 8);
  v6 = *(a2 + 16);
  v5 = (a2 + 16);
  *(v3 + 8) = v5;
  *v5 = v3;
  *v4 = v6;
  *(v6 + 8) = v4;
}

void shading_finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 24));
  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 192);
      if (!v4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v3 == 2)
    {
      v4 = *(a1 + 208);
      if (!v4)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v4);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 != 4)
    {
LABEL_12:
      v5 = *(a1 + 120);
      if (v5)
      {
        v5(*(a1 + 80));
      }

      goto LABEL_16;
    }

    v4 = *(a1 + 160);
    if (v4)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v6 = *(a1 + 32);

  free(v6);
}

void function_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  CGPropertiesRelease(*(a1 + 104));
  v3 = *(a1 + 80);
  if (v3)
  {
    v3(*(a1 + 24));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    free(v5);
  }
}

void *_ripdata_finalize(uint64_t a1)
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v2 = RIPGetCacheState_cache_state;
  RIPLockCacheState();
  v3 = (a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != (a1 + 16))
  {
    v5 = *(v2 + 16);
    do
    {
      v7 = v4[2];
      v8 = v4[3];
      v6 = v4 + 2;
      *(v7 + 8) = v8;
      *v8 = v7;
      *v6 = v6;
      v6[1] = v6;
      --*(v6[3] + 16);
      --v5;
      v4 = *(v6 - 1);
    }

    while (v4 != v3);
    *(v2 + 16) = v5;
  }

  RIPUnlockCacheState();
  result = *(a1 + 24);
  if (result != v3)
  {
    do
    {
      v10 = result[1];
      RIPCacheEntryRelease(result);
      result = v10;
    }

    while (v10 != v3);
  }

  return result;
}

void RIPCacheEntryRelease(void *a1)
{
  v2 = *(a1 + 12);
  if (v2 == 2 || v2 == 1)
  {
    v3 = *(a1 + 20);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else if (!v2)
  {
    free(*(a1 + 16));
    free(*(a1 + 17));
  }

  free(a1);
}

void gradient_release_info(CFTypeRef *a1)
{
  CFRelease(*a1);

  free(a1);
}

uint64_t __CGGradientGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGGradientGetTypeID_runtime_class);
  CGGradientGetTypeID_gradient_type_id = result;
  return result;
}

uint64_t __CGFunctionGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGFunctionGetTypeID_runtime_class);
  CGFunctionGetTypeID_function_type_id = result;
  return result;
}

uint64_t __CGShadingGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGShadingGetTypeID_class);
  CGShadingGetTypeID_shading_type_id = result;
  return result;
}

uint64_t __RIPDataGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(kRIPDataClass);
  RIPDataGetTypeID_data_type_id = result;
  return result;
}

void *CGBitmapContextCreateWithDataAndDictionary(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CGColorSpaceRef space, int a8, double a9, double a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13)
{
  result = CGBitmapContextInfoCreate(a1, 0, 0, a2, a3, a4, a5, a6, a9, a10, space, a8, 0, a11, a12);
  if (result)
  {

    return bitmap_context_create(result, a13, "CGBitmapContextCreateWithDataAndDictionary", v14, v15, v16, v17, v18);
  }

  return result;
}

void rip_auto_context_release_buffer_provider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 272);
  if (v8)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 100);
      v12 = *(a1 + 116);
      v13 = *(a1 + 104);
      v14 = *(v10 + 16);
      v15 = *(a1 + 108);
      v19[0] = 1;
      v19[1] = v11;
      v19[2] = v12;
      v19[3] = v13;
      v19[4] = v15;
      v16 = *(a1 + 240);
      v18[2] = *(a1 + 224);
      v18[3] = v16;
      v18[4] = *(a1 + 256);
      v17 = *(a1 + 208);
      v18[0] = *(a1 + 192);
      v18[1] = v17;
      v14(v10, v8, v19, v18, a5, a6, a7, a8);
    }

    else
    {
      CFRelease(v8);
    }

    *(a1 + 272) = 0;
  }
}

void sub_183F11E30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void argb32_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v343 = a3;
  v350 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v337 = v4;
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a2 + 184);
  v348 = *(a1 + 136);
  v349 = v7;
  v10 = *(a2 + 96);
  v346 = *(a2 + 104);
  v347 = v10;
  v12 = *(a1 + 24);
  v11 = *(a1 + 28);
  v13 = *(a1 + 20);
  v344 = *(a1 + 16);
  v14 = *(a1 + 12);
  v345 = *(a1 + 8);
  v342 = a2;
  v15 = *(a2 + 16);
  v16 = (v15 + 6) * v5;
  if (v16 > 65439)
  {
    v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
    v18 = v19;
    v21 = v19;
    v22 = v342;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v18 = &v332 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    v21 = 0;
    v22 = v342;
  }

  v334 = v21;
  v23 = a1;
  v24 = ((v9 * 255.0) + 0.5);
  v333 = v8 + (v12 - 1) * v11 + 4 * v13;
  v25 = v11 >> 2;
  v26 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v26 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v28 = 4 * v5;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27 + v28;
  v22[18] = v26;
  v22[19] = v27 + v28;
  v22[20] = v27;
  v30 = v8 + 4 * v25 * v344 + 4 * v14;
  v31 = v337;
  v332 = v11 >> 2;
  v341 = v25 - v337;
  v32 = *(v23 + 104);
  v33 = *(v23 + 108);
  v339 = v23;
  v34 = *(v23 + 2);
  if (v34 == 6 || v34 == 1)
  {
    v36 = v346;
    v35 = v347;
    if (!v348)
    {
      goto LABEL_619;
    }

    v37 = 0;
    v38 = 0;
    v39 = *(v339 + 124);
    v40 = v348 + v39 * v33 + v32;
    v31 = v337;
    v340 = v39 - v337;
    v41 = v342;
  }

  else if (v348)
  {
    shape_enum_clip_alloc(v19, v20, v348, 1, 1, 1, v32, v33, v4, v345);
    if (!v42)
    {
      goto LABEL_619;
    }

    v37 = v42;
    v38 = 0;
    v43 = ((v15 * v5 + 15) & 0xFFFFFFF0);
    if (!v15)
    {
      v43 = 4 * v5;
    }

    v340 = -v337;
    v40 = (v29 + v43 + 16);
    v41 = v342;
    v36 = v346;
    v35 = v347;
    while (1)
    {
LABEL_17:
      while (1)
      {
        v44 = *(v40 - 4);
        v45 = v44 - v38;
        if (v44 <= v38)
        {
          break;
        }

        v345 -= v45;
        if (v345 < 1)
        {
          goto LABEL_618;
        }

        v35 += v41[16] * v45;
        v36 += v41[17] * v45;
        v30 += 4 * v332 * v45;
        v38 = v44;
      }

      if (v38 < *(v40 - 3) + v44)
      {
        break;
      }

      if (!shape_enum_clip_scan(v37, v40 - 4))
      {
LABEL_618:
        free(v37);
        goto LABEL_619;
      }
    }

    v31 = v337;
  }

  else
  {
    v40 = 0;
    v37 = 0;
    v340 = 0;
    v38 = 0;
    v41 = v342;
    v36 = v346;
    v35 = v347;
  }

  v336 = (v4 - 1);
  v335 = -v31;
  v338 = v333 - 4;
  v46 = v37;
  while (2)
  {
    LODWORD(v344) = v38;
    v37 = v46;
    v47 = *v41;
    v346 = v36;
    v347 = v35;
    v47(v41, v35, v36, v4);
    v48 = v41[20];
    v49 = v41[18];
    v51 = *(v41 + 2);
    v50 = *(v41 + 3);
    v348 = v37;
    if (v51 == v50)
    {
      if (v24 != 255)
      {
        v52 = v4;
        v53 = v49;
        v54 = v343;
        do
        {
          if (*v53)
          {
            *v48 = PDM_15068(*v48, v24);
          }

          ++v53;
          v48 += 4;
          --v52;
        }

        while (v52);
        v48 += 4 * v335;
        v49 += v336 + v335 + 1;
LABEL_33:
        v37 = v348;
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v55 = v41[19];
    if (v51 == 134755160)
    {
      if (v24 == 255)
      {
        v69 = 0;
        do
        {
          if (v49[v69])
          {
            *(v48 + 4 * v69) = BYTE2(*(v55 + 4 * v69)) | *(v55 + 4 * v69) & 0xFF00FF00 | (*(v55 + 4 * v69) << 16);
          }

          ++v69;
        }

        while (v4 != v69);
      }

      else
      {
        v56 = 0;
        do
        {
          if (v49[v56])
          {
            *(v48 + 4 * v56) = PDM_15068(BYTE2(*(v55 + 4 * v56)) | *(v55 + 4 * v56) & 0xFF00FF00 | (*(v55 + 4 * v56) << 16), v24);
          }

          ++v56;
        }

        while (v4 != v56);
      }

      v37 = v348;
LABEL_72:
      v54 = v343;
      goto LABEL_73;
    }

    v57 = HIWORD(v51) & 0x3F;
    if (v57 == 16)
    {
      v54 = v343;
      if (v50 == 134755208)
      {
        if (v24 == 255)
        {
          v318 = 0;
          do
          {
            if (v49[v318])
            {
              *(v48 + 4 * v318) = HIDWORD(*(v55 + 8 * v318)) & 0xFF000000 | BYTE1(*(v55 + 8 * v318)) | (*(v55 + 8 * v318) >> 24) & 0xFF0000 | (BYTE3(*(v55 + 8 * v318)) << 8);
            }

            ++v318;
          }

          while (v4 != v318);
        }

        else
        {
          v75 = 0;
          do
          {
            if (v49[v75])
            {
              *(v48 + 4 * v75) = PDM_15068(HIDWORD(*(v55 + 8 * v75)) & 0xFF000000 | BYTE1(*(v55 + 8 * v75)) | (*(v55 + 8 * v75) >> 24) & 0xFF0000 | (BYTE3(*(v55 + 8 * v75)) << 8), v24);
            }

            ++v75;
          }

          while (v4 != v75);
        }
      }

      else if (v24 == 255)
      {
        v319 = 0;
        do
        {
          if (v49[v319])
          {
            *(v48 + 4 * v319) = (WORD2(*(v55 + 8 * v319)) >> 8) | HIDWORD(*(v55 + 8 * v319)) & 0xFF000000 | (BYTE1(*(v55 + 8 * v319)) << 16) | (BYTE3(*(v55 + 8 * v319)) << 8);
          }

          ++v319;
        }

        while (v4 != v319);
      }

      else
      {
        v88 = 0;
        do
        {
          if (v49[v88])
          {
            *(v48 + 4 * v88) = PDM_15068((WORD2(*(v55 + 8 * v88)) >> 8) | HIDWORD(*(v55 + 8 * v88)) & 0xFF000000 | (BYTE1(*(v55 + 8 * v88)) << 16) | (BYTE3(*(v55 + 8 * v88)) << 8), v24);
          }

          ++v88;
        }

        while (v4 != v88);
      }

      goto LABEL_33;
    }

    v54 = v343;
    if (v57 != 32)
    {
      if (v50 == 134755208)
      {
        if (v24 == 255)
        {
          v320 = 0;
          do
          {
            if (v49[v320])
            {
              *(v48 + 4 * v320) = bswap32(*(v55 + 4 * v320));
            }

            ++v320;
          }

          while (v4 != v320);
        }

        else
        {
          v76 = 0;
          do
          {
            if (v49[v76])
            {
              *(v48 + 4 * v76) = PDM_15068(bswap32(*(v55 + 4 * v76)), v24);
            }

            ++v76;
          }

          while (v4 != v76);
        }
      }

      else if (v24 == 255)
      {
        v321 = 0;
        do
        {
          if (v49[v321])
          {
            HIDWORD(v322) = *(v55 + 4 * v321);
            LODWORD(v322) = HIDWORD(v322);
            *(v48 + 4 * v321) = v322 >> 8;
          }

          ++v321;
        }

        while (v4 != v321);
      }

      else
      {
        v89 = 0;
        do
        {
          if (v49[v89])
          {
            HIDWORD(v90) = *(v55 + 4 * v89);
            LODWORD(v90) = HIDWORD(v90);
            *(v48 + 4 * v89) = PDM_15068(v90 >> 8, v24);
          }

          ++v89;
        }

        while (v4 != v89);
      }

      goto LABEL_33;
    }

    if (v50 == 134755208)
    {
      if (v24 != 255)
      {
        v58 = 0;
        v59 = (v55 + 8);
        do
        {
          if (v49[v58])
          {
            v60 = v59[1];
            if (v60 <= 0.0)
            {
              v68 = 0;
            }

            else
            {
              v61 = *(v59 - 2);
              v62 = *(v59 - 1);
              v63 = *v59;
              v64 = ((v60 * 255.0) + 0.5);
              if (v60 > 1.0)
              {
                v64 = 255;
                v60 = 1.0;
              }

              v65 = ((v61 * 255.0) + 0.5);
              if (v61 < 0.0)
              {
                v65 = 0;
              }

              if (v61 > v60)
              {
                v65 = v64;
              }

              v66 = ((v62 * 255.0) + 0.5);
              if (v62 < 0.0)
              {
                v66 = 0;
              }

              if (v62 > v60)
              {
                v66 = v64;
              }

              v67 = ((v63 * 255.0) + 0.5);
              if (v63 < 0.0)
              {
                v67 = 0;
              }

              if (v63 > v60)
              {
                v67 = v64;
              }

              v68 = PDM_15068(v65 | (v64 << 24) | (v66 << 8) | (v67 << 16), v24);
            }

            *(v48 + 4 * v58) = v68;
          }

          ++v58;
          v59 += 4;
        }

        while (v4 != v58);
        goto LABEL_33;
      }

      v296 = 0;
      v297 = (v55 + 8);
      v37 = v348;
      do
      {
        if (v49[v296])
        {
          v298 = v297[1];
          if (v298 <= 0.0)
          {
            v306 = 0;
          }

          else
          {
            v299 = *(v297 - 2);
            v300 = *(v297 - 1);
            v301 = *v297;
            v302 = ((v298 * 255.0) + 0.5);
            if (v298 > 1.0)
            {
              v302 = 255;
              v298 = 1.0;
            }

            v303 = ((v299 * 255.0) + 0.5);
            if (v299 < 0.0)
            {
              v303 = 0;
            }

            if (v299 > v298)
            {
              v303 = v302;
            }

            v304 = ((v300 * 255.0) + 0.5);
            if (v300 < 0.0)
            {
              v304 = 0;
            }

            if (v300 > v298)
            {
              v304 = v302;
            }

            v305 = ((v301 * 255.0) + 0.5);
            if (v301 < 0.0)
            {
              v305 = 0;
            }

            if (v301 > v298)
            {
              v305 = v302;
            }

            v306 = v303 | (v302 << 24) | (v304 << 8) | (v305 << 16);
          }

          *(v48 + 4 * v296) = v306;
        }

        ++v296;
        v297 += 4;
      }

      while (v4 != v296);
    }

    else
    {
      if (v24 != 255)
      {
        v77 = 0;
        v78 = (v55 + 8);
        do
        {
          if (v49[v77])
          {
            v79 = v78[1];
            if (v79 <= 0.0)
            {
              v87 = 0;
            }

            else
            {
              v80 = *(v78 - 2);
              v81 = *(v78 - 1);
              v82 = *v78;
              v83 = ((v79 * 255.0) + 0.5);
              if (v79 > 1.0)
              {
                v83 = 255;
                v79 = 1.0;
              }

              v84 = ((v80 * 255.0) + 0.5);
              if (v80 < 0.0)
              {
                v84 = 0;
              }

              if (v80 > v79)
              {
                v84 = v83;
              }

              v85 = ((v81 * 255.0) + 0.5);
              if (v81 < 0.0)
              {
                v85 = 0;
              }

              if (v81 > v79)
              {
                v85 = v83;
              }

              v86 = ((v82 * 255.0) + 0.5);
              if (v82 < 0.0)
              {
                v86 = 0;
              }

              if (v82 > v79)
              {
                v86 = v83;
              }

              v87 = PDM_15068((v84 << 16) | (v83 << 24) | (v85 << 8) | v86, v24);
            }

            *(v48 + 4 * v77) = v87;
          }

          ++v77;
          v78 += 4;
        }

        while (v4 != v77);
        goto LABEL_33;
      }

      v307 = 0;
      v308 = (v55 + 8);
      v37 = v348;
      do
      {
        if (v49[v307])
        {
          v309 = v308[1];
          if (v309 <= 0.0)
          {
            v317 = 0;
          }

          else
          {
            v310 = *(v308 - 2);
            v311 = *(v308 - 1);
            v312 = *v308;
            v313 = ((v309 * 255.0) + 0.5);
            if (v309 > 1.0)
            {
              v313 = 255;
              v309 = 1.0;
            }

            v314 = ((v310 * 255.0) + 0.5);
            if (v310 < 0.0)
            {
              v314 = 0;
            }

            if (v310 > v309)
            {
              v314 = v313;
            }

            v315 = ((v311 * 255.0) + 0.5);
            if (v311 < 0.0)
            {
              v315 = 0;
            }

            if (v311 > v309)
            {
              v315 = v313;
            }

            v316 = ((v312 * 255.0) + 0.5);
            if (v312 < 0.0)
            {
              v316 = 0;
            }

            if (v312 > v309)
            {
              v316 = v313;
            }

            v317 = (v314 << 16) | (v313 << 24) | (v315 << 8) | v316;
          }

          *(v48 + 4 * v307) = v317;
        }

        ++v307;
        v308 += 4;
      }

      while (v4 != v307);
    }

LABEL_73:
    switch(v54)
    {
      case 0:
        v70 = v4;
        v71 = v40;
        do
        {
          v72 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v72 = (*v71 * v72 + ((*v71 * v72) >> 8) + 1) >> 8;
            }

            if (v72)
            {
              if (v72 == 255)
              {
                v73 = 0;
              }

              else
              {
                v73 = PDM_15068(*v30, ~v72);
              }

              *v30 = v73;
            }
          }

          ++v49;
          v71 += v40 != 0;
          v30 += 4;
          --v70;
        }

        while (v70);
        v74 = v341;
        v40 = &v71[v340];
        goto LABEL_522;
      case 1:
        v173 = *v49;
        v174 = v49 + 1;
        if (v40)
        {
          v175 = v4;
          do
          {
            if (v173)
            {
              v176 = *v40 * v173 + ((*v40 * v173) >> 8) + 1;
              v177 = v338;
              if (v338 >= v30)
              {
                v177 = v30;
              }

              if (v177 >= *(v339 + 40))
              {
                v178 = v177;
              }

              else
              {
                v178 = *(v339 + 40);
              }

              if (BYTE1(v176))
              {
                if (BYTE1(v176) == 255)
                {
                  *v178 = *v48;
                }

                else
                {
                  DMplusDM_15069(v178, *v48, BYTE1(v176), *v178, ~(v176 >> 8));
                }
              }
            }

            else
            {
              v178 = v30;
            }

            v179 = *v174++;
            v173 = v179;
            v48 += 4;
            ++v40;
            v30 = (v178 + 1);
            --v175;
          }

          while (v175);
          v40 += v340;
          v37 = v348;
        }

        else
        {
          v329 = v4;
          do
          {
            v330 = v338;
            if (v338 >= v30)
            {
              v330 = v30;
            }

            if (v330 >= *(v339 + 40))
            {
              v178 = v330;
            }

            else
            {
              v178 = *(v339 + 40);
            }

            if (v173)
            {
              if (v173 == 255)
              {
                *v178 = *v48;
              }

              else
              {
                DMplusDM_15069(v178, *v48, v173, *v178, ~v173);
              }
            }

            v331 = *v174++;
            v173 = v331;
            v48 += 4;
            v30 = (v178 + 1);
            --v329;
          }

          while (v329);
          v40 = 0;
        }

        v30 = &v178[v341 + 1];
        goto LABEL_616;
      case 2:
        v151 = *v49;
        if (v40)
        {
          v152 = v49 + 1;
          v153 = v4;
          while (1)
          {
            v154 = v30;
            if (!v151)
            {
              goto LABEL_251;
            }

            v155 = *v40 * v151 + ((*v40 * v151) >> 8) + 1;
            if (!BYTE1(v155))
            {
              goto LABEL_251;
            }

            if (BYTE1(v155) == 255)
            {
              v156 = *v48;
              v157 = HIBYTE(*v48);
              if (v157)
              {
                if (v157 != 255)
                {
                  goto LABEL_250;
                }

                *v30 = v156;
              }
            }

            else
            {
              v158 = PDM_15068(*v48, BYTE1(v155));
              if (HIBYTE(v158))
              {
                v156 = v158;
LABEL_250:
                DplusDM_15070(v30, v156, *v30, ~v156 >> 24);
              }
            }

LABEL_251:
            v159 = *v152++;
            v151 = v159;
            v48 += 4;
            ++v40;
            v30 += 4;
            if (!--v153)
            {
              v40 += v340;
              v41 = v342;
              goto LABEL_602;
            }
          }
        }

        v323 = v49 + 1;
        v324 = v4;
        do
        {
          if (!v151)
          {
            goto LABEL_600;
          }

          if (v151 == 255)
          {
            v325 = *v48;
            v326 = HIBYTE(*v48);
            if (!v326)
            {
              goto LABEL_600;
            }

            if (v326 == 255)
            {
              *v30 = v325;
              goto LABEL_600;
            }
          }

          else
          {
            v327 = PDM_15068(*v48, v151);
            if (!HIBYTE(v327))
            {
              goto LABEL_600;
            }

            v325 = v327;
          }

          DplusDM_15070(v30, v325, *v30, ~v325 >> 24);
LABEL_600:
          v328 = *v323++;
          v151 = v328;
          v48 += 4;
          v30 += 4;
          --v324;
        }

        while (v324);
        v40 = 0;
        v154 = v30 - 4;
LABEL_602:
        v30 = v154 + 4 * v341 + 4;
LABEL_523:
        v295 = v346;
        v294 = v347;
        v37 = v348;
LABEL_524:
        if (--v345)
        {
          v46 = 0;
          v38 = v344 + 1;
          v35 = v41[16] + v294;
          v36 = v41[17] + v295;
          if (v37)
          {
            goto LABEL_17;
          }

          continue;
        }

        if (v37)
        {
          goto LABEL_618;
        }

LABEL_619:
        if (v334)
        {
          free(v334);
        }

        return;
      case 3:
        v168 = v4;
        v117 = v40;
        do
        {
          v169 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v169 = (*v117 * v169 + ((*v117 * v169) >> 8) + 1) >> 8;
            }

            if (v169)
            {
              if (v169 == 255)
              {
                *v30 = PDM_15068(*v48, *(v30 + 3));
              }

              else
              {
                DMplusDM_15069(v30, *v48, (HIBYTE(*v30) * v169 + 128 + ((HIBYTE(*v30) * v169 + 128) >> 8)) >> 8, *v30, ~v169);
              }
            }
          }

          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          --v168;
        }

        while (v168);
        goto LABEL_506;
      case 4:
        v122 = v4;
        v117 = v40;
        do
        {
          v123 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v123 = (*v117 * v123 + ((*v117 * v123) >> 8) + 1) >> 8;
            }

            if (v123)
            {
              if (v123 == 255)
              {
                *v30 = PDM_15068(*v48, *(v30 + 3) ^ 0xFFu);
              }

              else
              {
                v124 = (~*v30 >> 24) * v123 + 128;
                DMplusDM_15069(v30, *v48, (v124 + (v124 >> 8)) >> 8, *v30, ~v123);
              }
            }
          }

          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          --v122;
        }

        while (v122);
        goto LABEL_506;
      case 5:
        v204 = v4;
        v117 = v40;
        while (1)
        {
          v205 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_349;
            }

            v206 = *v117 * v205 + ((*v117 * v205) >> 8) + 1;
            if (v206 >= 0x100)
            {
              break;
            }
          }

LABEL_350:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v204)
          {
            goto LABEL_506;
          }
        }

        v205 = v206 >> 8;
LABEL_349:
        v207 = PDM_15068(*v48, v205);
        DMplusDM_15069(v30, v207, HIBYTE(*v30), *v30, ~v207 >> 24);
        goto LABEL_350;
      case 6:
        v224 = v4;
        v117 = v40;
        while (1)
        {
          v225 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_385;
            }

            v226 = *v117 * v225 + ((*v117 * v225) >> 8) + 1;
            if (v226 >= 0x100)
            {
              break;
            }
          }

LABEL_389:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v224)
          {
            goto LABEL_506;
          }
        }

        v225 = v226 >> 8;
LABEL_385:
        if (~HIBYTE(*v30))
        {
          if (~HIBYTE(*v30) == 255)
          {
            *v30 = PDM_15068(*v48, v225);
          }

          else
          {
            DplusDM_15070(v30, *v30, *v48, (~HIBYTE(*v30) * v225 + 128 + ((~HIBYTE(*v30) * v225 + 128) >> 8)) >> 8);
          }
        }

        goto LABEL_389;
      case 7:
        v170 = v4;
        v117 = v40;
        do
        {
          v171 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v171 = (*v117 * v171 + ((*v117 * v171) >> 8) + 1) >> 8;
            }

            if (v171)
            {
              if (v171 == 255)
              {
                *v30 = PDM_15068(*v30, *(v48 + 3));
              }

              else
              {
                v172 = *(v48 + 3) * v171 + 128;
                DMplusDM_15069(v30, *v30, (v172 + (v172 >> 8)) >> 8, *v30, ~v171);
              }
            }
          }

          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          --v170;
        }

        while (v170);
        goto LABEL_506;
      case 8:
        v239 = v4;
        v117 = v40;
        do
        {
          v240 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v240 = (*v117 * v240 + ((*v117 * v240) >> 8) + 1) >> 8;
            }

            if (v240)
            {
              if (v240 == 255)
              {
                *v30 = PDM_15068(*v30, *(v48 + 3) ^ 0xFFu);
              }

              else
              {
                v241 = (~*v48 >> 24) * v240 + 128;
                DMplusDM_15069(v30, *v30, (v241 + (v241 >> 8)) >> 8, *v30, ~v240);
              }
            }
          }

          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          --v239;
        }

        while (v239);
        goto LABEL_506;
      case 9:
        v131 = v4;
        v117 = v40;
        while (1)
        {
          v132 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_209;
            }

            v133 = *v117 * v132 + ((*v117 * v132) >> 8) + 1;
            if (v133 >= 0x100)
            {
              break;
            }
          }

LABEL_210:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v131)
          {
            goto LABEL_506;
          }
        }

        v132 = v133 >> 8;
LABEL_209:
        v134 = PDM_15068(*v48, v132);
        DMplusDM_15069(v30, v134, ~*v30 >> 24, *v30, (~v132 + HIBYTE(v134)));
        goto LABEL_210;
      case 10:
        v235 = v4;
        v117 = v40;
        while (1)
        {
          v236 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_410;
            }

            v237 = *v117 * v236 + ((*v117 * v236) >> 8) + 1;
            if (v237 >= 0x100)
            {
              break;
            }
          }

LABEL_411:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v235)
          {
            goto LABEL_506;
          }
        }

        v236 = v237 >> 8;
LABEL_410:
        v238 = PDM_15068(*v48, v236);
        DMplusDM_15069(v30, v238, ~*v30 >> 24, *v30, ~v238 >> 24);
        goto LABEL_411;
      case 11:
        v116 = v4;
        v117 = v40;
        while (1)
        {
          v118 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_181;
            }

            v119 = *v117 * v118 + ((*v117 * v118) >> 8) + 1;
            if (v119 >= 0x100)
            {
              break;
            }
          }

LABEL_184:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v116)
          {
            goto LABEL_506;
          }
        }

        v118 = v119 >> 8;
LABEL_181:
        v120 = PDM_15068(*v48, v118);
        v121 = HIBYTE(*v30);
        if (!v349)
        {
          LOBYTE(v121) = -1;
        }

        DAplusdDA_15071(v30, *v30, v121, v120, HIBYTE(v120));
        goto LABEL_184;
      case 12:
        v125 = v4;
        v126 = v40;
        while (1)
        {
          v127 = *v49;
          if (*v49)
          {
            if (!v40)
            {
              goto LABEL_201;
            }

            v128 = *v126 * v127 + ((*v126 * v127) >> 8) + 1;
            if (v128 >= 0x100)
            {
              break;
            }
          }

LABEL_202:
          ++v49;
          v48 += 4;
          v126 += v40 != 0;
          v30 += 4;
          if (!--v125)
          {
            v40 = &v126[v340];
            goto LABEL_521;
          }
        }

        v127 = v128 >> 8;
LABEL_201:
        v129 = PDM_15068(*v48, v127);
        v130 = ((*v30 >> 8) & 0xFF00FF) + ((v129 >> 8) & 0xFF00FF);
        *v30 = (v130 << 8) & 0xFF00FF00 | ((*v30 & 0xFF00FF) + (v129 & 0xFF00FF)) & 0xFF00FF | (15 * (v130 & 0x1000100 | (((*v30 & 0xFF00FF) + (v129 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v130 & 0x1000100 | (((*v30 & 0xFF00FF) + (v129 & 0xFF00FF)) >> 8) & 0x10001));
        goto LABEL_202;
      case 13:
        v216 = v4;
        v92 = v40;
        while (1)
        {
          v217 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v218 = *v92 * v217 + ((*v92 * v217) >> 8) + 1;
              if (v218 < 0x100)
              {
                goto LABEL_378;
              }

              v217 = v218 >> 8;
            }

            v219 = PDM_15068(*v48, v217);
            v220 = HIBYTE(v219);
            if (HIBYTE(v219))
            {
              v221 = v219;
              v222 = *v30;
              if (v349)
              {
                v223 = HIBYTE(v222);
                if (!HIBYTE(v222))
                {
                  goto LABEL_377;
                }
              }

              else
              {
                v223 = 255;
              }

              v221 = PDAmultiplyPDA_15072(v222, v223, v221, v220);
LABEL_377:
              *v30 = v221;
            }
          }

LABEL_378:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v216)
          {
            goto LABEL_520;
          }
        }

      case 14:
        v108 = v4;
        v92 = v40;
        while (1)
        {
          v109 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v110 = *v92 * v109 + ((*v92 * v109) >> 8) + 1;
              if (v110 < 0x100)
              {
                goto LABEL_174;
              }

              v109 = v110 >> 8;
            }

            v111 = PDM_15068(*v48, v109);
            v112 = HIBYTE(v111);
            if (HIBYTE(v111))
            {
              v113 = v111;
              v114 = *v30;
              if (v349)
              {
                v115 = HIBYTE(v114);
                if (!HIBYTE(v114))
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v115 = 255;
              }

              v113 = PDAscreenPDA_15073(v114, v115, v113, v112);
LABEL_173:
              *v30 = v113;
            }
          }

LABEL_174:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v108)
          {
            goto LABEL_520;
          }
        }

      case 15:
        v160 = v4;
        v92 = v40;
        while (1)
        {
          v161 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v162 = *v92 * v161 + ((*v92 * v161) >> 8) + 1;
              if (v162 < 0x100)
              {
                goto LABEL_265;
              }

              v161 = v162 >> 8;
            }

            v163 = PDM_15068(*v48, v161);
            v164 = HIBYTE(v163);
            if (HIBYTE(v163))
            {
              v165 = v163;
              v166 = *v30;
              if (v349)
              {
                v167 = HIBYTE(v166);
                if (!HIBYTE(v166))
                {
                  goto LABEL_264;
                }
              }

              else
              {
                v167 = 255;
              }

              v165 = PDAoverlayPDA_15074(v166, v167, v165, v164);
LABEL_264:
              *v30 = v165;
            }
          }

LABEL_265:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v160)
          {
            goto LABEL_520;
          }
        }

      case 16:
        v100 = v4;
        v92 = v40;
        while (1)
        {
          v101 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v102 = *v92 * v101 + ((*v92 * v101) >> 8) + 1;
              if (v102 < 0x100)
              {
                goto LABEL_160;
              }

              v101 = v102 >> 8;
            }

            v103 = PDM_15068(*v48, v101);
            v104 = HIBYTE(v103);
            if (HIBYTE(v103))
            {
              v105 = v103;
              v106 = *v30;
              if (v349)
              {
                v107 = HIBYTE(v106);
                if (!HIBYTE(v106))
                {
                  goto LABEL_159;
                }
              }

              else
              {
                v107 = 255;
              }

              v105 = PDAdarkenPDA_15076(v106, v107, v105, v104);
LABEL_159:
              *v30 = v105;
            }
          }

LABEL_160:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v100)
          {
            goto LABEL_520;
          }
        }

      case 17:
        v188 = v4;
        v92 = v40;
        while (1)
        {
          v189 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v190 = *v92 * v189 + ((*v92 * v189) >> 8) + 1;
              if (v190 < 0x100)
              {
                goto LABEL_328;
              }

              v189 = v190 >> 8;
            }

            v191 = PDM_15068(*v48, v189);
            v192 = HIBYTE(v191);
            if (HIBYTE(v191))
            {
              v193 = v191;
              v194 = *v30;
              if (v349)
              {
                v195 = HIBYTE(v194);
                if (!HIBYTE(v194))
                {
                  goto LABEL_327;
                }
              }

              else
              {
                v195 = 255;
              }

              v193 = PDAlightenPDA_15075(v194, v195, v193, v192);
LABEL_327:
              *v30 = v193;
            }
          }

LABEL_328:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v188)
          {
            goto LABEL_520;
          }
        }

      case 18:
        v227 = v4;
        v92 = v40;
        while (1)
        {
          v228 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v229 = *v92 * v228 + ((*v92 * v228) >> 8) + 1;
              if (v229 < 0x100)
              {
                goto LABEL_403;
              }

              v228 = v229 >> 8;
            }

            v230 = PDM_15068(*v48, v228);
            v231 = HIBYTE(v230);
            if (HIBYTE(v230))
            {
              v232 = v230;
              v233 = *v30;
              if (v349)
              {
                v234 = HIBYTE(v233);
                if (!HIBYTE(v233))
                {
                  goto LABEL_402;
                }
              }

              else
              {
                v234 = 255;
              }

              v232 = PDAcolordodgePDA_15077(v233, v234, v232, v231);
LABEL_402:
              *v30 = v232;
            }
          }

LABEL_403:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v227)
          {
            goto LABEL_520;
          }
        }

      case 19:
        v256 = v4;
        v92 = v40;
        while (1)
        {
          v257 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v258 = *v92 * v257 + ((*v92 * v257) >> 8) + 1;
              if (v258 < 0x100)
              {
                goto LABEL_463;
              }

              v257 = v258 >> 8;
            }

            v259 = PDM_15068(*v48, v257);
            v260 = HIBYTE(v259);
            if (HIBYTE(v259))
            {
              v261 = v259;
              v262 = *v30;
              if (v349)
              {
                v263 = HIBYTE(v262);
                if (!HIBYTE(v262))
                {
                  goto LABEL_462;
                }
              }

              else
              {
                v263 = 255;
              }

              v261 = PDAcolorburnPDA_15078(v262, v263, v261, v260);
LABEL_462:
              *v30 = v261;
            }
          }

LABEL_463:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v256)
          {
            goto LABEL_520;
          }
        }

      case 20:
        v196 = v4;
        v92 = v40;
        while (1)
        {
          v197 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v198 = *v92 * v197 + ((*v92 * v197) >> 8) + 1;
              if (v198 < 0x100)
              {
                goto LABEL_342;
              }

              v197 = v198 >> 8;
            }

            v199 = PDM_15068(*v48, v197);
            v200 = HIBYTE(v199);
            if (HIBYTE(v199))
            {
              v201 = v199;
              v202 = *v30;
              if (v349)
              {
                v203 = HIBYTE(v202);
                if (!HIBYTE(v202))
                {
                  goto LABEL_341;
                }
              }

              else
              {
                v203 = 255;
              }

              v201 = PDAsoftlightPDA_15080(v202, v203, v201, v200);
LABEL_341:
              *v30 = v201;
            }
          }

LABEL_342:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v196)
          {
            goto LABEL_520;
          }
        }

      case 21:
        v208 = v4;
        v92 = v40;
        while (1)
        {
          v209 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v210 = *v92 * v209 + ((*v92 * v209) >> 8) + 1;
              if (v210 < 0x100)
              {
                goto LABEL_364;
              }

              v209 = v210 >> 8;
            }

            v211 = PDM_15068(*v48, v209);
            v212 = HIBYTE(v211);
            if (HIBYTE(v211))
            {
              v213 = v211;
              v214 = *v30;
              if (v349)
              {
                v215 = HIBYTE(v214);
                if (!HIBYTE(v214))
                {
                  goto LABEL_363;
                }
              }

              else
              {
                v215 = 255;
              }

              v213 = PDAhardlightPDA_15079(v214, v215, v213, v212);
LABEL_363:
              *v30 = v213;
            }
          }

LABEL_364:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v208)
          {
            goto LABEL_520;
          }
        }

      case 22:
        v248 = v4;
        v92 = v40;
        while (1)
        {
          v249 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v250 = *v92 * v249 + ((*v92 * v249) >> 8) + 1;
              if (v250 < 0x100)
              {
                goto LABEL_449;
              }

              v249 = v250 >> 8;
            }

            v251 = PDM_15068(*v48, v249);
            v252 = HIBYTE(v251);
            if (HIBYTE(v251))
            {
              v253 = v251;
              v254 = *v30;
              if (v349)
              {
                v255 = HIBYTE(v254);
                if (!HIBYTE(v254))
                {
                  goto LABEL_448;
                }
              }

              else
              {
                v255 = 255;
              }

              v253 = PDAdifferencePDA_15081(v254, v255, v253, v252);
LABEL_448:
              *v30 = v253;
            }
          }

LABEL_449:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v248)
          {
            goto LABEL_520;
          }
        }

      case 23:
        v264 = v4;
        v92 = v40;
        while (1)
        {
          v265 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v266 = *v92 * v265 + ((*v92 * v265) >> 8) + 1;
              if (v266 < 0x100)
              {
                goto LABEL_477;
              }

              v265 = v266 >> 8;
            }

            v267 = PDM_15068(*v48, v265);
            v268 = HIBYTE(v267);
            if (HIBYTE(v267))
            {
              v269 = v267;
              v270 = *v30;
              if (v349)
              {
                v271 = HIBYTE(v270);
                if (!HIBYTE(v270))
                {
                  goto LABEL_476;
                }
              }

              else
              {
                v271 = 255;
              }

              v269 = PDAexclusionPDA_15082(v270, v271, v269, v268);
LABEL_476:
              *v30 = v269;
            }
          }

LABEL_477:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v264)
          {
            goto LABEL_520;
          }
        }

      case 24:
        v143 = v4;
        v92 = v40;
        while (1)
        {
          v144 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v145 = *v92 * v144 + ((*v92 * v144) >> 8) + 1;
              if (v145 < 0x100)
              {
                goto LABEL_238;
              }

              v144 = v145 >> 8;
            }

            v146 = PDM_15068(*v48, v144);
            v147 = HIBYTE(v146);
            if (HIBYTE(v146))
            {
              v148 = v146;
              v149 = *v30;
              if (v349)
              {
                v150 = HIBYTE(v149);
                if (!HIBYTE(v149))
                {
                  goto LABEL_237;
                }
              }

              else
              {
                v150 = 255;
              }

              v148 = PDAhuePDA_15083(v149, v150, v148, v147);
LABEL_237:
              *v30 = v148;
            }
          }

LABEL_238:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v143)
          {
            goto LABEL_520;
          }
        }

      case 25:
        v135 = v4;
        v92 = v40;
        while (1)
        {
          v136 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v137 = *v92 * v136 + ((*v92 * v136) >> 8) + 1;
              if (v137 < 0x100)
              {
                goto LABEL_224;
              }

              v136 = v137 >> 8;
            }

            v138 = PDM_15068(*v48, v136);
            v139 = HIBYTE(v138);
            if (HIBYTE(v138))
            {
              v140 = v138;
              v141 = *v30;
              if (v349)
              {
                v142 = HIBYTE(v141);
                if (!HIBYTE(v141))
                {
                  goto LABEL_223;
                }
              }

              else
              {
                v142 = 255;
              }

              v140 = PDAsaturationPDA_15084(v141, v142, v140, v139);
LABEL_223:
              *v30 = v140;
            }
          }

LABEL_224:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v135)
          {
            goto LABEL_520;
          }
        }

      case 26:
        v288 = v4;
        v92 = v40;
        while (1)
        {
          v289 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v290 = *v92 * v289 + ((*v92 * v289) >> 8) + 1;
              if (v290 < 0x100)
              {
                goto LABEL_519;
              }

              v289 = v290 >> 8;
            }

            v291 = PDM_15068(*v48, v289);
            if (HIBYTE(v291))
            {
              v292 = *v30;
              if (v349)
              {
                v293 = HIBYTE(v292);
                if (!HIBYTE(v292))
                {
                  goto LABEL_518;
                }
              }

              else
              {
                v293 = 255;
              }

              v291 = PDAluminosityPDA_15085(v291, HIBYTE(v291), v292, v293);
LABEL_518:
              *v30 = v291;
            }
          }

LABEL_519:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v288)
          {
            goto LABEL_520;
          }
        }

      case 27:
        v91 = v4;
        v92 = v40;
        while (1)
        {
          v93 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v94 = *v92 * v93 + ((*v92 * v93) >> 8) + 1;
              if (v94 < 0x100)
              {
                goto LABEL_146;
              }

              v93 = v94 >> 8;
            }

            v95 = PDM_15068(*v48, v93);
            v96 = HIBYTE(v95);
            if (HIBYTE(v95))
            {
              v97 = v95;
              v98 = *v30;
              if (v349)
              {
                v99 = HIBYTE(v98);
                if (!HIBYTE(v98))
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v99 = 255;
              }

              v97 = PDAluminosityPDA_15085(v98, v99, v97, v96);
LABEL_145:
              *v30 = v97;
            }
          }

LABEL_146:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v91)
          {
            goto LABEL_520;
          }
        }

      case 28:
        v272 = v4;
        v92 = v40;
        while (1)
        {
          v273 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v274 = *v92 * v273 + ((*v92 * v273) >> 8) + 1;
              if (v274 < 0x100)
              {
                goto LABEL_491;
              }

              v273 = v274 >> 8;
            }

            v275 = PDM_15068(*v48, v273);
            v276 = HIBYTE(v275);
            if (HIBYTE(v275))
            {
              v277 = v275;
              v278 = *v30;
              if (v349)
              {
                v279 = HIBYTE(v278);
                if (!HIBYTE(v278))
                {
                  goto LABEL_490;
                }
              }

              else
              {
                v279 = 255;
              }

              v277 = PDAtranspose_huePDA_15086(v278, v279, v277, v276);
LABEL_490:
              *v30 = v277;
            }
          }

LABEL_491:
          ++v49;
          v48 += 4;
          v92 += v40 != 0;
          v30 += 4;
          if (!--v272)
          {
LABEL_520:
            v40 = &v92[v340];
LABEL_521:
            v74 = v341;
            v41 = v342;
LABEL_522:
            v30 += 4 * v74;
            goto LABEL_523;
          }
        }

      case 29:
        v117 = v40;
        v280 = v4;
        while (1)
        {
          v281 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v282 = *v117 * v281 + ((*v117 * v281) >> 8) + 1;
              if (v282 < 0x100)
              {
                goto LABEL_505;
              }

              v281 = v282 >> 8;
            }

            v283 = PDM_15068(*v48, v281);
            v284 = HIBYTE(v283);
            if (HIBYTE(v283))
            {
              v285 = v283;
              v286 = *v30;
              if (v349)
              {
                v287 = HIBYTE(v286);
                if (!HIBYTE(v286))
                {
                  goto LABEL_504;
                }
              }

              else
              {
                v287 = 255;
              }

              v285 = PDAtranspose_saturationPDA_15087(v286, v287, v285, v284);
LABEL_504:
              *v30 = v285;
            }
          }

LABEL_505:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v280)
          {
            goto LABEL_506;
          }
        }

      case 30:
        v117 = v40;
        v242 = v4;
        while (1)
        {
          v243 = *v49;
          if (*v49)
          {
            if (v40)
            {
              v244 = *v117 * v243 + ((*v117 * v243) >> 8) + 1;
              if (v244 < 0x100)
              {
                goto LABEL_435;
              }

              v243 = v244 >> 8;
            }

            v245 = PDM_15068(*v48, v243);
            if (HIBYTE(v245))
            {
              v246 = *v30;
              if (v349)
              {
                v247 = HIBYTE(v246);
                if (!HIBYTE(v246))
                {
                  goto LABEL_434;
                }
              }

              else
              {
                v247 = 255;
              }

              v245 = PDAtranspose_luminosityPDA_15088(v245, HIBYTE(v245), v246, v247);
LABEL_434:
              *v30 = v245;
            }
          }

LABEL_435:
          ++v49;
          v48 += 4;
          v117 += v40 != 0;
          v30 += 4;
          if (!--v242)
          {
            goto LABEL_506;
          }
        }

      case 31:
        v117 = v40;
        v180 = v4;
        break;
      default:
LABEL_616:
        v295 = v346;
        v294 = v347;
        goto LABEL_524;
    }

    break;
  }

  while (1)
  {
    v181 = *v49;
    if (*v49)
    {
      if (v40)
      {
        v182 = *v117 * v181 + ((*v117 * v181) >> 8) + 1;
        if (v182 < 0x100)
        {
          goto LABEL_314;
        }

        v181 = v182 >> 8;
      }

      v183 = PDM_15068(*v48, v181);
      v184 = HIBYTE(v183);
      if (HIBYTE(v183))
      {
        v185 = v183;
        v186 = *v30;
        if (v349)
        {
          v187 = HIBYTE(v186);
          if (!HIBYTE(v186))
          {
            goto LABEL_313;
          }
        }

        else
        {
          v187 = 255;
        }

        v185 = PDAtranspose_luminosityPDA_15088(v186, v187, v185, v184);
LABEL_313:
        *v30 = v185;
      }
    }

LABEL_314:
    ++v49;
    v48 += 4;
    v117 += v40 != 0;
    v30 += 4;
    if (!--v180)
    {
LABEL_506:
      v40 = &v117[v340];
      goto LABEL_521;
    }
  }
}

void RGBA32_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 += 4;
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    *v28 = (v40 + v39[1]) & 0xFF00 | ((v40 + *v39) >> 8) | (((v40 + v39[2]) >> 8) << 16) & 0xFFFFFF | (((v40 + v39[3]) >> 8) << 24);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v30 = v41;
    }

    v42 = *v30;
    v43 = v30[1];
    v44 = v30[2];
    v45 = v30[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v46, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v47, v52), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v49, v52), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v50, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v46, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v47, v54), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v49, v54), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v50, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *(v28 + 8) = *&a12;
        *v27++ = -1;
        v28 += 16;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32(v43 & 0xFF00 | (v42 >> 8) | (BYTE1(v44) << 16) & 0xFFFFFF | (BYTE1(v45) << 24));
      v56 = a4 + 4;
      do
      {
        *v28 = v55;
        v28 += 16;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t CGPixelComponentMax(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 0xA)
  {
    _CGHandleAssert("sort_weight", 280, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "(int)type >= 0 && (int)type <= (int)kCGPixelComponentTypeMax", "invalid pixel component type %d", a6, a7, a8, result);
  }

  if (a2 >= 0xA)
  {
    _CGHandleAssert("sort_weight", 280, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "(int)type >= 0 && (int)type <= (int)kCGPixelComponentTypeMax", "invalid pixel component type %d", a6, a7, a8, a2);
  }

  if (sort_weight_weight[result] <= sort_weight_weight[a2])
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t rip_auto_context_contains_transparency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (v8)
  {
    if (*(v8 + 16) == 1129601108 && *(v8 + 24) == 4)
    {
      return (*(*(v8 + 32) + 40) & 0x1F) != 0;
    }

    else
    {
      handle_invalid_context("CGBitmapContextGetBitmapInfo", v8, a3, a4, a5, a6, a7, a8);
      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 72);
    if (!v10)
    {
      _CGHandleAssert("rip_auto_context_contains_transparency", 401, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "data->dl != NULL", "display list is missing", a6, a7, a8, vars0);
    }

    return CG::DisplayList::containsTransparentContent((v10 + 16), 0);
  }
}

uint64_t CG::DisplayList::containsTransparentContent(CG::DisplayList *this, const CGRect *a2)
{
  if ((*(this + 65) & 0x10) == 0)
  {
    return 0;
  }

  v12[3] = v2;
  v12[4] = v3;
  v5 = *(this + 13);
  if (!*v5)
  {
    return 1;
  }

  if (*(v5 + 48))
  {
    if (*(v5 + 16) == INFINITY || *(v5 + 24) == INFINITY)
    {
      return 0;
    }

    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    Shape = CG::DisplayListShape::getShape(*(this + 13), a2);
    if (!Shape)
    {
      return 1;
    }

    v11 = 0;
    v12[0] = 0;
    if (!shape_bounds(Shape, v12 + 1, v12, &v11 + 1, &v11))
    {
      return 1;
    }

    v7 = SLODWORD(v12[0]);
    v8 = (HIDWORD(v11) - HIDWORD(v12[0]));
    v9 = (v11 - LODWORD(v12[0]));
    *(v5 + 16) = SHIDWORD(v12[0]);
    *(v5 + 24) = v7;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 48) |= 1u;
  }

  result = 0;
  if (v8 != 0.0 && v9 != 0.0)
  {
    return 1;
  }

  return result;
}

uint64_t *CG::DisplayListShape::getShape(CG::DisplayListShape *this, const CGRect *a2)
{
  std::mutex::lock((this + 56));
  v3 = *(this + 1);
  if (v3 || (v3 = shape_accum_shape(*this), (*(this + 1) = v3) != 0))
  {
    if (v3 == &the_empty_shape)
    {
      v3 = 0;
    }
  }

  else
  {
    *(this + 1) = &the_empty_shape;
  }

  std::mutex::unlock((this + 56));
  return v3;
}

uint64_t *shape_accum_shape(int *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return &the_empty_shape;
  }

  v1 = &the_empty_shape;
  if (*a1 < 3)
  {
    return v1;
  }

  v1 = 0;
  v2 = *(a1 + 2);
  v3 = v2 + 4 * (4 * *a1);
  v4 = (v2 + 12);
  do
  {
    v6 = *(v4 - 3);
    v5 = *(v4 - 2);
    v7 = v4 - 3;
    if (v6 < v5)
    {
      v8 = *(v4 - 1) <= -2147483647 ? -2147483647 : *(v4 - 1);
      v9 = *v4 >= 2147483646 ? 2147483646 : *v4;
      if (v8 < v9)
      {
        if (v1)
        {
          v15 = 0x280000000;
          v16 = v8;
          v17 = 4;
          v18 = v6;
          v19 = v5;
          v20 = v9;
          v21 = 0x7FFFFFFF00000002;
          a1 = shape_union(a1, v1, &v15);
          v10 = a1;
          if (v1 != &v22 && v1 != &the_empty_shape)
          {
            free(v1);
          }

          v1 = v10;
        }

        else
        {
          v22 = 0x280000000;
          v23 = v8;
          v24 = 4;
          v25 = v6;
          v26 = v5;
          v27 = v9;
          v1 = &v22;
          v28 = 0x7FFFFFFF00000002;
        }
      }
    }

    v4 += 4;
  }

  while ((v7 + 4) < v3);
  if (!v1)
  {
    return &the_empty_shape;
  }

  if (v1 == &v22)
  {
    v11 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
    if (v11)
    {
      v12 = *v1;
      v13 = *(v1 + 1);
      v11[8] = *(v1 + 8);
      *v11 = v12;
      *(v11 + 1) = v13;
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t shape_bounds(uint64_t a1, int *a2, _DWORD *a3, signed int *a4, _DWORD *a5)
{
  if (*a1 == 0x80000000 && *(a1 + 4) == 4 && *(a1 + 16) == 0x7FFFFFFF)
  {
    v5 = 0;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    *a4 = v6;
    *a2 = v6;
    *a5 = v7;
    *a3 = v7;
  }

  else
  {
    if (a1 == &the_empty_shape)
    {
      goto LABEL_8;
    }

    v8 = (a1 + 4 * *(a1 + 4));
    v9 = *v8;
    if (*v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }

    v10 = v8[1];
    v11 = &v8[v10];
    v12 = *v11;
    if (*v11 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }

    v14 = 0x80000000;
    v15 = 0x7FFFFFFF;
    do
    {
      v16 = v11;
      v17 = v12;
      if (v10 >= 4)
      {
        v18 = v8[2];
        v19 = v8[v10 - 1];
        if (v18 < v15)
        {
          v15 = v18;
        }

        if (v19 > v14)
        {
          v14 = v19;
        }
      }

      v10 = v16[1];
      v11 = &v16[v10];
      v12 = *v11;
      v8 = v16;
    }

    while (*v11 != 0x7FFFFFFF);
    if (v15 >= v14 || v9 >= v17)
    {
LABEL_8:
      v5 = 0;
      *a5 = 0;
      *a3 = 0;
      *a4 = 0;
      *a2 = 0;
    }

    else
    {
      *a2 = v15;
      *a3 = v9;
      *a4 = v14;
      *a5 = v17;
      return ((v16 - a1) >> 2) + 3;
    }
  }

  return v5;
}

uint64_t rip_adaptive_bitmap_context_get_content_type_from_color_space(CGColorSpace *a1)
{
  while (1)
  {
    ProcessColorModel = CGColorSpaceGetProcessColorModel(a1);
    if (ProcessColorModel <= 1)
    {
      if (!ProcessColorModel)
      {
        return 1;
      }

      if (ProcessColorModel == 1)
      {
        return 2;
      }
    }

    else
    {
      switch(ProcessColorModel)
      {
        case 2:
          return 4;
        case 3:
          return 8;
        case 4:
          return 16;
      }
    }

    if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelPattern)
    {
      break;
    }

    result = CGColorSpaceGetBaseColorSpace(a1);
    a1 = result;
    if (!result)
    {
      return result;
    }
  }

  return 0;
}

CGImageRef rip_auto_context_create_image(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 288);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_lock((v4 + 120));
  v5 = *(v4 + 112);
  v6 = *(a3 + 120);
  if (*(v6 + 48) >= v5)
  {
    v5 = *(v6 + 48);
  }

  *(v4 + 112) = v5;
  v7 = rip_auto_context_rasterization_loop(v4);
  Image = CGBitmapContextCreateImage(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  pthread_mutex_unlock((v4 + 120));
  return Image;
}

uint64_t rip_auto_context_rasterization_loop(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRetain(v2);
    return 0;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0;
  }

  CFRelease(v4);
  *(a1 + 80) = 0;
  v5 = *(a1 + 100);
  v6 = *(a1 + 116);
  v7 = *(a1 + 105);
  v165 = *(a1 + 104);
  if (v165)
  {
    v8 = 1;
  }

  else
  {
    if (v5 == 1 && v6 == 1)
    {
      v9 = *(a1 + 96);
      v10 = *(a1 + 112);
      v11 = *(a1 + 105);
      v12 = *a1;
      v168 = *(a1 + 8);
LABEL_17:
      if (v11 == 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v14 = &kCGColorSpaceGenericGrayGamma2_2;
      goto LABEL_28;
    }

    if (v5 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  if (*(a1 + 105))
  {
    v11 = v8;
  }

  else
  {
    v11 = 5;
  }

  v9 = *(a1 + 96);
  v10 = *(a1 + 112);
  v12 = *a1;
  v168 = *(a1 + 8);
  if (v6 == 1)
  {
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    v13 = 3;
  }

  else if (v11 == 2)
  {
    v13 = 7;
  }

  else
  {
    v13 = 5;
  }

  v14 = &kCGColorSpaceSRGB;
  if (*(a1 + 104))
  {
    v14 = &kCGColorSpaceExtendedSRGB;
  }

LABEL_28:
  v15 = *(a1 + 108);
  v16 = CGColorSpaceCreateWithName(*v14);
  if (CGColorSpaceIsWideGamutRGB(v16))
  {
    v20 = v9;
  }

  else
  {
    v20 = 1;
  }

  v21 = (v11 - 1) < 2;
  v23 = v13 == 7 || v20 != 1;
  if (v16)
  {
    v24 = *(*(v16 + 3) + 48);
  }

  else
  {
    v24 = 0;
  }

  v163 = v6;
  v164 = v5;
  v162 = v7;
  switch(v20)
  {
    case 1:
      v25 = v20;
      break;
    case 4:
      v25 = 4;
      break;
    case 5:
      v25 = 2;
      break;
    default:
      _CGHandleAssert("rip_auto_context_get_aligned_bytes_per_row_for_info", 1036, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "component_size != 0", "component type not supported (%u)", v17, v18, v19, v20);
  }

  v166 = v13;
  if (v13 != 1)
  {
    ++v24;
  }

  v26 = v25 * v24;
  v27 = (v25 * v24 * v12 + 31) & 0xFFFFFFFFFFFFFFE0;
  if (v10 == 0.0)
  {
    v10 = v15;
  }

  v29 = *(a1 + 192);
  v28 = *(a1 + 200);
  v30 = a1 + 192;
  v31 = *(a1 + 208);
  v32 = *(a1 + 216);
  v33 = *(a1 + 224);
  v34 = *(a1 + 232);
  v35 = *(a1 + 248);
  v36 = *(a1 + 256);
  v37 = *(a1 + 260);
  v38 = *(a1 + 264);
  v39 = *(a1 + 268);
  v160 = v21;
  v40 = v36 == v21;
  v161 = v12;
  if (v12 == v28 && ((v41.i32[2] = 0, v41.i64[0] = __PAIR64__(v166, v20), v41.i32[3] = *(a1 + 260), v42 = *(a1 + 232), v42.i32[3] = v23, (~vaddvq_s32(vandq_s8(vceqq_s32(v41, v42), xmmword_18439C7E0)) & 0xF) == 0) ? (v43 = v168 != v31) : (v43 = 1), !v43 ? (v44 = v26 != v32) : (v44 = 1), !v44 ? (v45 = v27 == v33) : (v45 = 0), v45 ? (v46 = !v40) : (v46 = 1), !v46 ? (v47 = v10 == v38) : (v47 = 0), v47 && (v48 = v16, v158 = v25 * v24, v154 = (v25 * v24 * v12 + 31) & 0xFFFFFFFFFFFFFFE0, v49 = v23, v50 = *(a1 + 192), v155 = v20, space = v16, v20 = *(a1 + 248), v157 = *(a1 + 232), v51 = *(a1 + 200), v52 = *(a1 + 208), v53 = *(a1 + 224), v153 = *(a1 + 256), v54 = CGColorSpaceEqualToColorSpace(v48, v35), LOBYTE(v36) = v153, v33 = v53, v31 = v52, v28 = v51, v34 = v157, v35 = v20, v30 = a1 + 192, LODWORD(v20) = v155, v16 = space, v29 = v50, v23 = v49, v27 = v154, v26 = v158, v54) && *(a1 + 40)))
  {
    CGColorSpaceRelease(space);
    v61 = 0;
  }

  else
  {
    v62 = *(a1 + 48);
    v159 = v23;
    if (v62)
    {
      v63 = *(a1 + 272);
      if (v63)
      {
        v64 = *(v62 + 16);
        LODWORD(v170) = 1;
        *(&v170 + 4) = __PAIR64__(v163, v164);
        BYTE12(v170) = v165;
        BYTE13(v170) = v162;
        HIWORD(v170) = 0;
        *&v171 = v15;
        *&v174 = v29;
        *(&v174 + 1) = v28;
        *&v175 = v31;
        *(&v175 + 1) = v32;
        *v176 = v33;
        *&v176[8] = v34;
        *&v176[24] = v35;
        LOBYTE(v177) = v36;
        *(&v177 + 1) = *(v30 + 65);
        BYTE3(v177) = *(v30 + 67);
        *(&v177 + 4) = __PAIR64__(LODWORD(v38), v37);
        HIDWORD(v177) = v39;
        v64(v62, v63, &v170, &v174);
        *(a1 + 272) = 0;
        v35 = *(a1 + 248);
      }
    }

    CGColorSpaceRelease(v35);
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *v30 = 0u;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 192) = 0;
    *(a1 + 200) = v161;
    *(a1 + 208) = v168;
    *(a1 + 216) = v26;
    *(a1 + 224) = v27;
    *(a1 + 232) = v20;
    *(a1 + 236) = v166;
    *(a1 + 240) = 0;
    *(a1 + 248) = v16;
    *(a1 + 256) = v160;
    *(v30 + 65) = 0;
    *(v30 + 67) = 0;
    *(a1 + 260) = v159;
    *(a1 + 264) = v10;
    *(a1 + 268) = 0;
    v61 = 1;
    v65 = *(a1 + 32);
    if (v65)
    {
      v66 = *(v30 + 48);
      *v176 = *(v30 + 32);
      *&v176[16] = v66;
      v177 = *(v30 + 64);
      v67 = *(v30 + 16);
      v174 = *v30;
      v175 = v67;
      v68 = *(v65 + 16);
      LODWORD(v170) = 1;
      *(&v170 + 4) = __PAIR64__(v163, v164);
      BYTE12(v170) = v165;
      BYTE13(v170) = v162;
      HIWORD(v170) = 0;
      *&v171 = v15;
      if ((v68(v65, &v170, &v174) & 1) == 0)
      {
        CGColorSpaceRelease(*(a1 + 248));
        v69 = *&v176[24];
        v173 = *&v176[16];
        *(v30 + 48) = 0u;
        *(v30 + 64) = 0u;
        *(v30 + 16) = 0u;
        *(v30 + 32) = 0u;
        *v30 = 0u;
        v170 = v174;
        v171 = v175;
        v172 = *v176;
        *keys = v177;
        if (v69)
        {
          CFRetain(v69);
        }

        v70 = v171;
        *v30 = v170;
        *(v30 + 16) = v70;
        *(v30 + 32) = v172;
        *(v30 + 48) = v173;
        *(a1 + 248) = v69;
        *(a1 + 256) = *keys;
      }

      v61 = 1;
    }
  }

  v71 = *(a1 + 200);
  v72 = *(a1 + 208);
  v73 = *(a1 + 224);
  v74 = *(a1 + 232);
  v75 = *(a1 + 236);
  v76 = *(a1 + 248);
  v77 = *(a1 + 256);
  v78 = *(a1 + 264);
  v79 = *(a1 + 16);
  v80 = *(a1 + 24);
  v81 = *(a1 + 64);
  if (v75 <= 4)
  {
    if (v75 > 1)
    {
      if (v75 == 2)
      {
        v82 = 1;
      }

      else if (v75 == 3)
      {
        if (*(a1 + 256))
        {
          v82 = 1;
        }

        else
        {
          v82 = 3;
        }
      }

      else if (*(a1 + 256))
      {
        v82 = 2;
      }

      else
      {
        v82 = 4;
      }

      goto LABEL_113;
    }

    if (!v75)
    {
      v82 = 7;
      goto LABEL_113;
    }

    if (v75 != 1)
    {
LABEL_164:
      _CGHandleAssert("rip_auto_context_get_alpha_info_from_bitmap_context_info", 457, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "0", "unhandled context model %d", v58, v59, v60, *(a1 + 236));
    }

LABEL_112:
    v82 = 0;
    goto LABEL_113;
  }

  if (v75 > 6)
  {
    switch(v75)
    {
      case 7:
        if (v74 != 1)
        {
          goto LABEL_112;
        }

        v83 = (v77 & 1) == 0;
        v84 = 8194;
        break;
      case 8:
        if (v74 != 1)
        {
          goto LABEL_112;
        }

        v83 = (v77 & 1) == 0;
        v84 = 8193;
        break;
      case 9:
        goto LABEL_112;
      default:
        goto LABEL_164;
    }

    if (v83)
    {
      v82 = 0;
    }

    else
    {
      v82 = v84;
    }

    goto LABEL_120;
  }

  if (*(a1 + 256))
  {
    v82 = 0;
  }

  else
  {
    v82 = *(a1 + 236);
  }

LABEL_113:
  v85 = @"Provided CGBitmapContextInfo results in bits_per_component equal zero";
  v86 = -1;
  if (v74 > 3)
  {
    if (v74 == 4)
    {
      v87 = 32;
      goto LABEL_122;
    }

    if (v74 != 5)
    {
      goto LABEL_151;
    }

    goto LABEL_119;
  }

  if (v74 == 1)
  {
LABEL_120:
    v87 = 8;
    goto LABEL_122;
  }

  if (v74 != 2)
  {
    goto LABEL_151;
  }

LABEL_119:
  v87 = 16;
LABEL_122:
  v169 = v61;
  if (v76)
  {
    v88 = *(*(v76 + 3) + 48);
  }

  else
  {
    v88 = 0;
  }

  v89 = v82;
  if (v82)
  {
    v90 = v88 + 1;
  }

  else
  {
    v90 = v88;
  }

  if (CGColorSpaceUsesExtendedRange(v76))
  {
    v94 = 4352;
  }

  else
  {
    v94 = 0;
  }

  v95 = *(a1 + 40);
  if (v95)
  {
    v96 = *(a1 + 272);
    v167 = v94;
    if (v169)
    {
      if (v96)
      {
        _CGHandleAssert("rip_auto_context_create_bitmap_context", 522, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "data->current_provider == NULL", "buffer provider is missing", v91, v92, v93, v152);
      }

      v97 = *(a1 + 100);
      v98 = *(a1 + 116);
      v99 = *(a1 + 104);
      v100 = *(v95 + 2);
      v101 = *(a1 + 108);
      LODWORD(v170) = 1;
      *(&v170 + 4) = __PAIR64__(v98, v97);
      HIDWORD(v170) = v99;
      LODWORD(v171) = v101;
      v102 = *(v30 + 48);
      *v176 = *(v30 + 32);
      *&v176[16] = v102;
      v177 = *(v30 + 64);
      v103 = *(v30 + 16);
      v174 = *v30;
      v175 = v103;
      v104 = v100(v95, &v170, &v174);
      if (!v104)
      {
        v85 = @"allocate callback returned NULL CGBufferProviderRef";
        v86 = -3;
        goto LABEL_151;
      }

      v96 = v104;
      *(a1 + 272) = v104;
    }

    else if (!v96)
    {
      _CGHandleAssert("rip_auto_context_create_bitmap_context", 540, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "buffer_provider != NULL", "buffer provider is missing2", v91, v92, v93, v152);
    }

    v95 = CGBufferLockBytePtr(v96);
    v105 = rip_auto_context_release_bitmap_context_data;
    if (!v95)
    {
      _CGHandleAssert("rip_auto_context_handle_error", 166, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "0", "unhandled error code %d", v110, v111, v112, -4);
    }

    v106 = a1;
    v107 = v73;
    v108 = v71;
    v109 = v72;
    v94 = v167;
  }

  else
  {
    v105 = 0;
    v106 = 0;
    v107 = v73;
    v108 = v71;
    v109 = v72;
  }

  v113 = CGBitmapContextCreateWithDataAndDictionary(v95, v108, v109, v87, v90 * v87, v107, v76, v94 | v89, v79, v80, v105, v106, v81);
  if (v113)
  {
    v3 = v113;
    if (CGColorSpaceUsesITUR_2100TF(v76) || CGColorSpaceUsesExtendedRange(v76))
    {
      CGContextSetEDRTargetHeadroom(v3, v114, v55, v56, v57, v58, v59, v60, v78);
    }

    if (v169)
    {
      Count = CFArrayGetCount(*(a1 + 184));
      if (Count)
      {
        v116 = Count;
        for (i = 0; i != v116; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 184), i);
          CGDisplayListDrawInContext(ValueAtIndex, v3, v119, v120, v121, v122, v123, v124);
        }
      }
    }

    goto LABEL_155;
  }

  v85 = @"Failed to create bitmap context when using provided CGBitmapContextInfo";
  v86 = -2;
LABEL_151:
  if (!*(a1 + 56))
  {
    v3 = 0;
LABEL_155:
    CGDisplayListDrawInContext(*(a1 + 72), v3, v55, v56, v57, v58, v59, v60);
    goto LABEL_156;
  }

  keys[0] = *MEMORY[0x1E695E620];
  values[0] = v85;
  v125 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v126 = CFErrorCreate(0, @"CGBitmapContextWithCallbacksDomain", v86, v125);
  CFRelease(v125);
  v127 = *(a1 + 100);
  v128 = *(a1 + 116);
  v129 = *(a1 + 104);
  v130 = *(a1 + 108);
  v131 = *(*(a1 + 56) + 16);
  LODWORD(v170) = 1;
  *(&v170 + 4) = __PAIR64__(v128, v127);
  HIDWORD(v170) = v129;
  LODWORD(v171) = v130;
  v132 = *(v30 + 48);
  *v176 = *(v30 + 32);
  *&v176[16] = v132;
  v177 = *(v30 + 64);
  v133 = *(v30 + 16);
  v174 = *v30;
  v175 = v133;
  v131();
  CFRelease(v126);
  v3 = 0;
  if (!*(a1 + 56))
  {
    goto LABEL_155;
  }

LABEL_156:
  CFArrayAppendValue(*(a1 + 184), *(a1 + 72));
  v140 = *(a1 + 72);
  if (v140)
  {
    CFRelease(v140);
  }

  v141 = *a1;
  v142 = *(a1 + 8);
  v174 = 0uLL;
  *&v175 = v141;
  *(&v175 + 1) = v142;
  CGDisplayList = CG::DisplayList::createCGDisplayList(0, &v174, v134, v135, v136, v137, v138, v139);
  *(a1 + 72) = CGDisplayList;
  *(a1 + 80) = CGDisplayListContextCreate(CGDisplayList, v144, v145, v146, v147, v148, v149, v150);
  return v3;
}

uint64_t (*__object_md5_creator_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null;
  }

  object_md5_creator_f = v1;
  return result;
}

void *create_default_color_space(const __CFDictionary *a1, const void *a2, int a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v6 == CGColorSpaceGetTypeID_type_id && CGColorSpaceGetModel(v5) == a3)
    {
      CFRetain(v5);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ripc_Operation(uint64_t a1, uint64_t a2, int a3, __CFString *cf1, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(a1 + 288);
    if (a5)
    {
      return 1006;
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      return 1006;
    }
  }

  if (cf1 == @"kCGContextFlush")
  {
LABEL_13:
    result = *(v10 + 48);
    if (!result)
    {
      return result;
    }

    v12 = *(*result + 64);
    goto LABEL_18;
  }

  if (cf1 == @"kCGContextSynchronize")
  {
LABEL_16:
    result = *(v10 + 48);
    if (!result)
    {
      return result;
    }

    v12 = *(*result + 64);
    goto LABEL_18;
  }

  if (cf1 == @"kCGContextClear")
  {
    goto LABEL_22;
  }

  if (cf1 == @"kCGContextErase")
  {
    goto LABEL_25;
  }

  if (cf1 == @"kCGContextWait")
  {
    goto LABEL_38;
  }

  if (cf1 == @"kCGContextLog")
  {
LABEL_41:
    RIPPrint();
    return 0;
  }

  if (CFEqual(cf1, @"kCGContextFlush"))
  {
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"kCGContextSynchronize"))
  {
    goto LABEL_16;
  }

  if (CFEqual(cf1, @"kCGContextClear"))
  {
LABEL_22:
    result = *(v10 + 48);
    if (result)
    {
      *(v10 + 104) = 0;
      v13 = v10 + 104;
      *(v13 + 48) = 0x3FF0000000000000;
      *(v13 + 8) = 0;
      *(v13 + 4) = *(a2 + 82);
      RIPLayerBltShape(result, 0, 0, 0, 0, 0, v13, a8);
      return 0;
    }

    return result;
  }

  if (CFEqual(cf1, @"kCGContextErase"))
  {
LABEL_25:
    if (*(v10 + 48))
    {
      ripc_InitializeColorTransform(v10);
      Cache = CGColorTransformGetCache(*(v10 + 120));
      if (Cache)
      {
        v15 = Cache[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
      v16[1] = 0;
      v16[2] = 0;
      *v16 = &ripc_class;
      Model = CGColorSpaceGetModel(v15);
      *(v16 + 6) = Model;
      if (Model == kCGColorSpaceModelCMYK)
      {
        *(v16 + 36) = 0;
        *(v16 + 28) = 0;
      }

      else if (Model == kCGColorSpaceModelRGB)
      {
        *(v16 + 9) = 1065353216;
        __asm { FMOV            V0.2S, #1.0 }

        *(v16 + 28) = _D0;
      }

      else if (Model)
      {
        *(v16 + 6) = -1;
      }

      else
      {
        *(v16 + 7) = 1065353216;
      }

      *(v16 + 39) = 1065353216;
      *(v10 + 104) = 1;
      *(v10 + 152) = 0x3FF0000000000000;
      *(v10 + 112) = 0;
      *(v10 + 108) = *(a2 + 82);
      RIPLayerBltShape(*(v10 + 48), 0, 0, 0, v16, 0, v10 + 104, v18);
      free(v16);
    }

    return 0;
  }

  if (!CFEqual(cf1, @"kCGContextWait"))
  {
    if (CFEqual(cf1, @"kCGContextLog"))
    {
      goto LABEL_41;
    }

    return 1006;
  }

LABEL_38:
  result = *(v10 + 48);
  if (result)
  {
    v12 = *(*result + 64);
LABEL_18:
    v12();
    return 0;
  }

  return result;
}

uint64_t rip_auto_context_operation(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1)
  {
    v6 = *(a1 + 288);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_lock((v6 + 120));
  if (CFEqual(a4, @"kCGContextFlush"))
  {
    v7 = rip_auto_context_rasterization_loop(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_21;
  }

  if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
  {
    *(v6 + 104) = 0;
    *(v6 + 105) = CFEqual(a4, @"kCGContextClear") != 0;
    *(v6 + 100) = CFEqual(a4, @"kCGContextClear") == 0;
    CGColorSpaceRelease(*(v6 + 248));
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 116) = 1;
    rip_auto_context_release_buffer_provider(v6, v8, v9, v10, v11, v12, v13, v14);
    CFArrayRemoveAllValues(*(v6 + 184));
  }

  else if (!v6)
  {
LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v15 = *(v6 + 88);
  if (!v15)
  {
    v15 = *(v6 + 80);
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(v16 + 168);
  if (!v17)
  {
    v18 = 1006;
    goto LABEL_22;
  }

  v18 = v17();
  if (!v18)
  {
LABEL_28:
    if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
    {
      v19 = CGGStateCreate();
      ConstantColor = CGColorGetConstantColor(@"kCGColorWhite");
      CGGStateSetFillColor(v19, ConstantColor);
      v21 = CFEqual(a4, @"kCGContextClear") == 0;
      CGGStateSetCompositeOperation(v19, v21);
      v22 = *(v15 + 40);
      if (v22)
      {
        v23 = *(v22 + 64);
        if (v23)
        {
          v23(v22, a2, v19, 0);
        }
      }

      CGGStateRelease(v19);
    }

    goto LABEL_21;
  }

LABEL_22:
  pthread_mutex_unlock((v6 + 120));
  return v18;
}

void CGContextClear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;
LABEL_7:
    handle_invalid_context("CGContextClear", v10, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;
    goto LABEL_7;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 168);
    if (v9)
    {
      v9();
    }
  }
}

_DWORD *RGBA32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15092(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8 & 0xFF00FF00 | (v8 << 16) | BYTE2(v8);
    *(a2 + 2) = 1;
    if (HIBYTE(v8) == 255)
    {
      v9 = 0;
    }

    else
    {
      v9 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

void rip_auto_context_finalize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    if (v1)
    {
      v2 = *(v1 + 88);
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = *(v1 + 72);
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v1 + 80);
      if (v4)
      {
        CFRelease(v4);
      }

      CGColorSpaceRelease(*(v1 + 248));
      *(v1 + 240) = 0u;
      *(v1 + 256) = 0u;
      *(v1 + 208) = 0u;
      *(v1 + 224) = 0u;
      *(v1 + 192) = 0u;
      v5 = *(v1 + 184);
      if (v5)
      {
        CFRelease(v5);
      }

      pthread_mutex_destroy((v1 + 120));
      rip_auto_context_release_buffer_provider(v1, v6, v7, v8, v9, v10, v11, v12);
      v13 = *(v1 + 280);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(v1 + 304);
      if (v14)
      {
        CFRelease(v14);
      }

      free(v1);
    }
  }
}

void automatic_bitmap_context_context_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      automatic_bitmap_context_info_release(*(a1 + 32), a1, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      handle_invalid_context("automatic_bitmap_context_context_finalize", a1, a3, a4, a5, a6, a7, a8);
    }
  }
}

void automatic_bitmap_context_info_release(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("automatic_bitmap_context_info_release", 22, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGAutomaticBitmapContext.c", "info", "info is NULL", a6, a7, a8, v10);
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));
  _Block_release(*(a1 + 56));
  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  free(a1);
}

CGColorConversionInfoRef CGColorConversionInfoCreateFromListWithArguments(CFDictionaryRef options, CGColorSpaceRef a2, CGColorConversionInfoTransformType a3, CGColorRenderingIntent a4, va_list a5)
{
  v10 = *a5;
  if (!*a5)
  {
    goto LABEL_22;
  }

  v11 = *(a5 + 2);
  v12 = CFGetTypeID(v10);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v12 != CGColorSpaceGetTypeID_type_id || (CGColorSpaceSupportsHDR(a2) & 1) == 0 && !CGColorSpaceSupportsHDR(v10) || !options || a3 || v11 != 1)
  {
LABEL_22:
    if (!options)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v13 = CFGetTypeID(options);
  if (v13 != CFDictionaryGetTypeID() || CFDictionaryContainsKey(options, @"kCGContentToneMappingInfo") != 1 || (v28 = 0.0, Float = CGCFDictionaryGetFloat(options, @"kCGTargetHeadroom", &v28), v15 = v28, v28 = 0.0, v16 = CGCFDictionaryGetFloat(options, @"kCGSourceHeadroom", &v28), !Float) || (v17 = v15, v17 <= 0.0) || !v16 || (v18 = v28, v18 <= 0.0))
  {
LABEL_23:
    v26 = CFGetTypeID(options);
    if (v26 == CFDictionaryGetTypeID())
    {
      v27 = CFDictionaryGetValue(options, @"kCGColorTransformBlackPointCompensation") == *MEMORY[0x1E695E4D0];
      return create_from_argument_list(options, v27, a2, a3, a4, a5);
    }

LABEL_25:
    v27 = 0;
    return create_from_argument_list(options, v27, a2, a3, a4, a5);
  }

  v19 = *a5;
  v28 = 0.0;
  v20 = 0.0;
  if (CGCFDictionaryGetFloat(options, @"kCGTargetHeadroom", &v28))
  {
    v21 = v28;
  }

  else
  {
    v21 = 0.0;
  }

  v28 = 0.0;
  if (CGCFDictionaryGetFloat(options, @"kCGSourceHeadroom", &v28))
  {
    v20 = v28;
  }

  Value = CFDictionaryGetValue(options, @"kCGContentToneMappingInfo");
  v23 = CGContentToneMappingInfoCreateFromDictionary(Value);
  return CGColorConversionInfoCreateForToneMapping(a2, v19, v23, v24, 0, v20, v21);
}

uint64_t CGColorTRCPureGammaOriginal(uint64_t a1)
{
  if (CGColorTRCPureGammaOriginal_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCPureGammaOriginal_cglibrarypredicate, &__block_literal_global_12);
  }

  v2 = CGColorTRCPureGammaOriginal_f;

  return v2(a1);
}

uint64_t CGImageGetComponentType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 > 15)
    {
      if (v1 == 16)
      {
        if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
        {
          return 5;
        }

        else
        {
          return 2;
        }
      }

      else if (v1 == 32)
      {
        if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
        {
          return 4;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (v1 == 10)
      {
        v2 = 6;
      }

      else
      {
        v2 = 0;
      }

      if (v1 == 8)
      {
        return 1;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

int CGFontGetUnitsPerEm(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[2];
  }

  return font_info;
}

__n128 CGColorSpaceGetCalibratedRGBData@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 24);
  if (*(v5 + 24) != 4)
  {
    _CGHandleAssert("CGColorSpaceGetCalibratedRGBData", 161, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_CalRGB.c", "space->state->type == kCGColorSpaceCalibratedRGB", "Colorspace %p not RGB based. Type = %d", a2, a3, a4, a1);
  }

  v6 = *(v5 + 96);
  v7 = *(v6 + 112);
  *(a5 + 96) = *(v6 + 96);
  *(a5 + 112) = v7;
  *(a5 + 128) = *(v6 + 128);
  v8 = *(v6 + 48);
  *(a5 + 32) = *(v6 + 32);
  *(a5 + 48) = v8;
  v9 = *(v6 + 80);
  *(a5 + 64) = *(v6 + 64);
  *(a5 + 80) = v9;
  result = *(v6 + 16);
  *a5 = *v6;
  *(a5 + 16) = result;
  return result;
}

uint64_t CGCMSUtilsCreateProfileForCalRGB(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  valuePtr = vcvt_f32_f64(*a1);
  v1 = *(a1 + 16);
  v74 = v1;
  v2 = vcvt_f32_f64(*(a1 + 24));
  v3 = *(a1 + 40);
  v72 = v3;
  v69 = *(a1 + 48);
  v70 = *(a1 + 64);
  v71 = v2;
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 104)), *(a1 + 120));
  v66 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 72)), *(a1 + 88));
  v67 = v4;
  v5 = *(a1 + 136);
  v68[0] = v5;
  v63 = xmmword_1E6E05E20;
  v64 = *&off_1E6E05E30;
  v65 = xmmword_1E6E05E40;
  *keys = xmmword_1E6E05DE0;
  v60 = *&off_1E6E05DF0;
  v61 = xmmword_1E6E05E00;
  v62 = *&off_1E6E05E10;
  v58 = 0;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v74);
  v6 = *MEMORY[0x1E695E480];
  v35 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 24; i += 8)
  {
    v8 = *(&values + i);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v71);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v71 + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v72);
  v34 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (j = 0; j != 24; j += 8)
  {
    v10 = *(&values + j);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v66);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v66.i32[1]);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v66.u32[2]);
  v33 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (k = 0; k != 24; k += 8)
  {
    v12 = *(&values + k);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, (&v66 | 0xC));
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v67);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v67.i32[1]);
  v32 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (m = 0; m != 24; m += 8)
  {
    v14 = *(&values + m);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v67.u32[2]);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v67.u64[1] + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, v68);
  v15 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (n = 0; n != 24; n += 8)
  {
    v17 = *(&values + n);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  values = CFNumberCreate(0, kCFNumberSInt16Type, &CGCMSUtilsCreateProfileForCalRGB_iccDate);
  v51 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48A);
  v52 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48C);
  *&v53 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48E);
  *(&v53 + 1) = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E490);
  *&v54 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E492);
  v18 = CFArrayCreate(v6, &values, 6, MEMORY[0x1E695E9C0]);
  for (ii = 0; ii != 48; ii += 8)
  {
    v20 = *(&values + ii);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  v21 = 0;
  v48 = 0uLL;
  v49 = 0;
  v22 = MEMORY[0x1E695E9C0];
  do
  {
    v23 = *(&v69 + v21);
    v43 = 0;
    v42 = v23;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    v44[0] = CFNumberCreate(0, kCFNumberSInt16Type, &v43);
    v44[1] = CFNumberCreate(0, kCFNumberDoubleType, &v42);
    *&v45 = CFNumberCreate(0, kCFNumberDoubleType, &v41);
    *(&v45 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v40);
    *&v46 = CFNumberCreate(0, kCFNumberDoubleType, &v39);
    *(&v46 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v38);
    *&v47 = CFNumberCreate(0, kCFNumberDoubleType, &v37);
    *(&v47 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v36);
    v24 = 0;
    *(&v48 + v21) = CFArrayCreate(0, v44, 8, v22);
    do
    {
      v25 = v44[v24];
      if (v25)
      {
        CFRelease(v25);
      }

      ++v24;
    }

    while (v24 != 8);
    ++v21;
  }

  while (v21 != 3);
  values = v35;
  v51 = v34;
  v52 = v33;
  *&v53 = v32;
  v54 = v48;
  *(&v53 + 1) = v15;
  *&v55 = v49;
  *(&v55 + 1) = @"CG Cal RGB";
  *&v56 = @"calRGB";
  v26 = *MEMORY[0x1E695E4D0];
  *(&v56 + 1) = @"4.0";
  *&v57 = v26;
  *(&v57 + 1) = v18;
  v58 = v26;
  v27 = CFDictionaryCreate(v6, keys, &values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (jj = 0; jj != 64; jj += 8)
  {
    v29 = *(&values + jj);
    if (v29)
    {
      CFRelease(v29);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (CGCMSUtilsCreateProfileForCalRGB_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsCreateProfileForCalRGB_cglibrarypredicate, &__block_literal_global_130);
  }

  ProfileForCalRGB_f = CGCMSUtilsCreateProfileForCalRGB_f(v27);
  if (v27)
  {
    CFRelease(v27);
  }

  return ProfileForCalRGB_f;
}

atomic_uint *color_space_state_register(_BYTE *a1)
{
  os_unfair_lock_lock(&colorspace_state_lock);
  if (get_states_cache_predicate != -1)
  {
    dispatch_once(&get_states_cache_predicate, &__block_literal_global_7716);
  }

  v2 = get_states_cache_states;
  Value = CFSetGetValue(get_states_cache_states, a1);
  if (Value)
  {
    v4 = Value;
    atomic_fetch_add_explicit(Value, 1u, memory_order_relaxed);
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CFSetSetValue(v2, a1);
    a1[11] = 1;
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    v4 = a1;
  }

  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(a1);
  }

LABEL_9:
  os_unfair_lock_unlock(&colorspace_state_lock);
  return v4;
}

int8x8_t *cf_color_space_state_hash(int8x8_t *result)
{
  if (result)
  {
    v1 = veor_s8(result[8], *&vextq_s8(*result[8].i8, *result[8].i8, 8uLL));
    return (v1.i32[0] ^ v1.i32[1]);
  }

  return result;
}

CGColorSpaceRef CGColorSpaceCreateCalibratedRGB(const CGFloat *whitePoint, const CGFloat *blackPoint, const CGFloat *gamma, const CGFloat *matrix)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!whitePoint)
  {
    goto LABEL_39;
  }

  v12 = 1;
  v13 = malloc_type_calloc(0x78uLL, 1uLL, 0x10E00406C354554uLL);
  v14 = v13;
  *v13 = 1;
  *(v13 + 4) = 0;
  if (matrix)
  {
    v12 = matrix[2] * -(matrix[6] * matrix[4]) + *matrix * matrix[4] * matrix[8] + matrix[2] * matrix[3] * matrix[7] + -(matrix[3] * matrix[1]) * matrix[8] + matrix[1] * matrix[5] * matrix[6] + -(*matrix * matrix[5]) * matrix[7] != 0.0;
  }

  *(v13 + 6) = 4;
  v13[10] = v12;
  *(v13 + 11) = 256;
  *(v13 + 7) = 256;
  *(v13 + 14) = &color_space_state_create_calibrated_rgb_calibrated_rgb_vtable;
  *(v13 + 28) = 0x100000001;
  *(v13 + 10) = 0;
  *(v13 + 11) = 0;
  *(v13 + 5) = &calibrated_rgb_get_default_color_components_default_rgb;
  *(v13 + 6) = 3;
  v15 = malloc_type_calloc(0x90uLL, 1uLL, 0x1CA9FDB9uLL);
  *(v14 + 96) = v15;
  if (!v15)
  {
    free(v14);
LABEL_39:
    v41 = CGColorSpaceCreateWithState(0, blackPoint, gamma, matrix, v4, v5, v6, v7);
    goto LABEL_40;
  }

  for (i = 0; i != 3; ++i)
  {
    *&v15[i * 8] = whitePoint[i];
  }

  v17 = 0;
  v18 = &default_black_point_19329;
  if (blackPoint)
  {
    v18 = blackPoint;
  }

  do
  {
    *&v15[v17 * 8 + 24] = v18[v17];
    ++v17;
  }

  while (v17 != 3);
  v19 = 0;
  v20 = &xmmword_184565908;
  if (gamma)
  {
    v20 = gamma;
  }

  do
  {
    *&v15[v19 * 8 + 48] = v20[v19];
    ++v19;
  }

  while (v19 != 3);
  v21 = 0;
  v22 = &color_space_state_create_calibrated_rgb_default_matrix;
  if (matrix)
  {
    v22 = matrix;
  }

  do
  {
    *&v15[v21 * 8 + 72] = v22[v21];
    ++v21;
  }

  while (v21 != 9);
  memset(md, 0, 16);
  v23 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v23);
  if (v23)
  {
    CC_MD5_Update(v23, (v14 + 24), 4u);
  }

  v24 = *(v14 + 96);
  v25 = 3;
  v26 = v24;
  do
  {
    if (v23)
    {
      CC_MD5_Update(v23, v26, 8u);
    }

    v26 += 8;
    --v25;
  }

  while (v25);
  v27 = v24 + 24;
  v28 = 3;
  do
  {
    if (v23)
    {
      CC_MD5_Update(v23, v27, 8u);
    }

    v27 += 8;
    --v28;
  }

  while (v28);
  v29 = v24 + 48;
  v30 = 3;
  do
  {
    if (v23)
    {
      CC_MD5_Update(v23, v29, 8u);
    }

    v29 += 8;
    --v30;
  }

  while (v30);
  v31 = 0;
  v32 = v24 + 72;
  do
  {
    while (v23)
    {
      CC_MD5_Update(v23, &v32[8 * v31++], 8u);
      if (v31 == 9)
      {
        CC_MD5_Final(md, v23);
        v33 = *md;
        goto LABEL_36;
      }
    }

    ++v31;
  }

  while (v31 != 9);
  v33 = 0uLL;
LABEL_36:
  v43 = v33;
  free(v23);
  *(v14 + 64) = v43;
  v41 = CGColorSpaceCreateWithState(v14, v34, v35, v36, v37, v38, v39, v40);
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v14);
  }

LABEL_40:
  if (v41)
  {
    *(v41 + 3) = color_space_state_register(*(v41 + 3));
  }

  return v41;
}

CFMutableSetRef __get_states_cache_block_invoke()
{
  result = CFSetCreateMutable(0, 0, &get_states_cache_callbacks);
  get_states_cache_states = result;
  return result;
}

BOOL cf_color_space_state_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v5 = *(a1 + 64);
      v4 = *(a1 + 72);
      return v5 == *(a2 + 64) && v4 == *(a2 + 72);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGColorSpaceCreateWithID(int a1)
{
  if (creator_for_ID_predicate != -1)
  {
    dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
  }

  if ((a1 - 1) > 0x1F)
  {
    return 0;
  }

  v2 = creator_for_ID_creators[a1];
  if (!v2)
  {
    return 0;
  }

  return v2();
}

BOOL CGFontGetGlyphBBoxes(CGFontRef font, const CGGlyph *glyphs, size_t count, CGRect *bboxes)
{
  if (font)
  {
    v7 = font;
    font_info = get_font_info(font);
    if (font_info)
    {
      v9 = font_info[104] ^ 1u;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(*(v7 + 2) + 320);
    v11 = *(v7 + 14);

    LOBYTE(font) = v10(v11, 0, v9, glyphs, count, bboxes);
  }

  return font;
}

uint64_t get_glyph_bboxes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (a1 && a6)
  {
    v9 = a5;
    v10 = a4;
    if (a4 || !a5)
    {
      if (a5)
      {
        if (a3)
        {
          if (a2)
          {
            FPFontGetUnitsPerEm();
          }

          v16 = a6 + 16;
          do
          {
            v10 += 2;
            FPFontGetGlyphIdealBounds();
            v18 = CGRectApplyAffineTransform(v17, &CGAffineTransformIdentity);
            *(v16 - 16) = CGRectIntegral(v18);
            v16 += 32;
            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = (a6 + 16);
          do
          {
            v10 += 2;
            FPFontGetGlyphDeviceBounds();
            *(v11 - 2) = v12;
            *(v11 - 1) = v13;
            *v11 = v14;
            v11[1] = v15;
            v11 += 4;
            --v9;
          }

          while (v9);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGContextSetTextDrawingMode(CGContextRef c, CGTextDrawingMode mode)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetTextDrawingMode(*(c + 12), mode);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetTextDrawingMode", v8, v2, v3, v4, v5, v6, v7);
}

void CGContextShowGlyphsAtPositions(CGContextRef c, const CGGlyph *glyphs, const CGPoint *Lpositions, size_t count)
{
  if (!c)
  {
    v14 = 0;
LABEL_13:

    handle_invalid_context("CGContextShowGlyphsAtPositions", v14, Lpositions, count, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v14 = c;
    goto LABEL_13;
  }

  if (glyphs)
  {
    if (Lpositions)
    {
      if (count)
      {
        v12 = *(*(c + 12) + 136);
        if (*(v12 + 8))
        {
          if (*(v12 + 16) != 0.0)
          {
            v13 = *(v12 + 1);
            if (v13 < 4)
            {

              draw_glyphs_19159(c, glyphs, Lpositions, count);
            }

            else
            {
              if (v13 - 4 >= 3)
              {
                if (v13 != 7)
                {
                  return;
                }
              }

              else
              {
                draw_glyphs_19159(c, glyphs, Lpositions, count);
              }

              clip_to_glyphs(c, glyphs, Lpositions, count);
            }
          }
        }
      }
    }
  }
}

BOOL CGClipStackIsInfinite(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 120))
  {
    return 0;
  }

  v2.origin.x = -8.98846567e307;
  v2.size.width = 1.79769313e308;
  v2.origin.y = -8.98846567e307;
  v2.size.height = 1.79769313e308;
  return CGRectEqualToRect(*(a1 + 16), v2);
}

void CGContextSetShouldDrawBitmapRuns(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldDrawBitmapRuns(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldDrawBitmapRuns", v8, a3, a4, a5, a6, a7, a8);
}

void CGContextSetRGBFillColor(CGContextRef c, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v20[0] = red;
      v20[1] = green;
      v20[2] = blue;
      v20[3] = alpha;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      set_fill_color_with_components(c, DeviceRGB, v20, v13, v14, v15, v16, v17, v19);
      CGColorSpaceRelease(DeviceRGB);
      return;
    }

    v18 = c;
  }

  else
  {
    v18 = 0;
  }

  handle_invalid_context("CGContextSetRGBFillColor", v18, v5, v6, v7, v8, v9, v10);
}

void CGContextClipToRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        CGGStateClipToRect(*(c + 12), rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        v14 = *(c + 21);
        if (v14)
        {
          CFRelease(v14);
          *(c + 21) = 0;
        }
      }

      return;
    }

    v15 = c;
  }

  else
  {
    v15 = 0;
  }

  handle_invalid_context("CGContextClipToRect", v15, v2, v3, v4, v5, v6, v7);
}

void get_glyph_bounding_box(CGFont *a1, float64x2_t *a2)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    v5 = font_info[2];
  }

  else
  {
    v5 = 0;
  }

  FontBBox = CGFontGetFontBBox(a1);
  v10.origin.x = -v5;
  v10.origin.y = v10.origin.x;
  v10.size.width = (2 * v5);
  v10.size.height = v10.size.width;
  v11 = CGRectUnion(v10, FontBBox);
  v9.tx = 0.0;
  v9.ty = 0.0;
  v6 = vdupq_lane_s64(COERCE__INT64(v5), 0);
  v7 = vdivq_f64(*a2, v6);
  v8 = vdivq_f64(a2[1], v6);
  *&v9.a = v7;
  *&v9.c = v8;
  CGRectApplyAffineTransform(v11, &v9);
}

uint64_t ripr_path_stroke(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v11 = *v2;
        if (result)
        {
          return (*(result + 24))(*(result + 8), 1, &v11, *(result + 48));
        }
      }
    }

    else
    {
      v11 = *v2;
      if (result)
      {
        return (*(result + 24))(*(result + 8), 0, &v11, *(result + 48));
      }
    }
  }

  else if (v3 == 2)
  {
    if (result)
    {
      v8 = v2[1];
      v11 = *v2;
      v12 = v8;
      return (*(result + 24))(*(result + 8), 2, &v11, *(result + 48));
    }
  }

  else if (v3 == 3)
  {
    if (result)
    {
      v9 = v2[1];
      v10 = v2[2];
      v11 = *v2;
      v12 = v9;
      v13 = v10;
      return (*(result + 24))(*(result + 8), 3, &v11, *(result + 48));
    }
  }

  else if (v3 == 4 && result != 0)
  {
    v5 = *(result + 24);
    v6 = *(result + 48);
    v7 = *(result + 8);

    return v5(v7, 4, 0, v6);
  }

  return result;
}

CGAffineTransform *__cdecl CGAffineTransformMakeTranslation(CGAffineTransform *__return_ptr retstr, CGFloat tx, CGFloat ty)
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = tx;
  retstr->ty = ty;
  return result;
}

void CGContextSetShouldSmoothFonts(CGContextRef c, BOOL shouldSmoothFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSmoothFonts(*(c + 12), shouldSmoothFonts);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldSmoothFonts", v8, v2, v3, v4, v5, v6, v7);
}

CGPathRef CGPathCreateCopyByStrokingPath(CGPathRef path, const CGAffineTransform *transform, CGFloat lineWidth, CGLineCap lineCap, CGLineJoin lineJoin, CGFloat miterLimit)
{
  if (!path)
  {
    return 0;
  }

  v11 = *&lineJoin;
  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v16 = CFGetTypeID(path);
    if (v16 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v18, v19, v20, v21, v22, v23);
  v28 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (path + 16), lineWidth, lineCap, v11, miterLimit, 0.0, 0, v25, v26, v27);
    if (transform)
    {
      CG::Path::apply_transform((v28 + 16), transform, v29, v30, v31, v32, v33, v34);
    }
  }

  return v28;
}

CG::Path *CG::Path::Path(CG::Path *this, const CG::Path *a2, double a3, CGLineCap a4, uint64_t a5, double a6, double a7, const CGAffineTransform *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *this = 8;
  if ((*a2 - 10) > 0xFFFFFFF6)
  {
    operator new();
  }

  CG::Path::append(this, a2, a8, a5, a8, a9, a10, a11);
  return this;
}

void CG::Path::apply_iterator(CG::Path *this, path_iterator *a2)
{
  if (a2)
  {
    v4 = *(a2 + 2);
    if (v4)
    {
      v4(*(a2 + 1), 0, *(a2 + 6));
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK2CG4Path14apply_iteratorEP13path_iterator_block_invoke;
  v6[3] = &__block_descriptor_tmp_13981;
  v6[4] = a2;
  CG::Path::apply(this, v6);
  if (a2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      v5(*(a2 + 1), *(a2 + 6));
    }
  }
}

uint64_t anonymous namespace::begin(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      return v3(v2[1], a2, v2[6]);
    }
  }

  return result;
}

uint64_t ___ZNK2CG4Path14apply_iteratorEP13path_iterator_block_invoke(uint64_t result, int a2, __int128 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_20;
      }

      v7 = *(result + 32);
      v13 = *a3;
      if (v7)
      {
        return (*(v7 + 24))(*(v7 + 8), 1, &v13, *(v7 + 48));
      }
    }

    else
    {
      v12 = *(result + 32);
      v13 = *a3;
      if (v12)
      {
        return (*(v12 + 24))(*(v12 + 8), 0, &v13, *(v12 + 48));
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v8 = *(result + 32);
        if (v8)
        {
          v9 = a3[1];
          v13 = *a3;
          v14 = v9;
          return (*(v8 + 24))(*(v8 + 8), 2, &v13, *(v8 + 48));
        }

        break;
      case 3:
        v10 = *(result + 32);
        if (v10)
        {
          v11 = a3[1];
          v13 = *a3;
          v14 = v11;
          v15 = a3[2];
          return (*(v10 + 24))(*(v10 + 8), 3, &v13, *(v10 + 48));
        }

        break;
      case 4:
        v3 = *(result + 32);
        if (v3)
        {
          v4 = v3[3];
          v5 = v3[1];
          v6 = v3[6];

          return v4(v5, 4, 0, v6);
        }

        return result;
      default:
LABEL_20:
        abort();
    }
  }

  return result;
}

__n128 anonymous namespace::iterate(_anonymous_namespace_ *this, void *a2, float64x2_t *a3, const CGPoint *a4, path_iterator *a5, double a6, double a7, double a8, double a9, double a10, double a11, float64x2_t a12, float64x2_t a13)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_35;
      }

      v19 = *(this + 20);
      if (v19)
      {
        if (v19 == 1)
        {
          *(this + 20) = 2;
        }

        *(this + 184) = *a3;
        v20 = (this + 184);
        if (CG::stroker::add_line_segment(this, (this + 136), this + 46))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if ((*(this + 20) - 3) <= 1)
      {
        CG::stroker::end_contour(this);
      }

      *(this + 20) = 2;
      *(this + 184) = *a3;
      result = *(this + 184);
      *(this + 136) = result;
      *(this + 88) = result;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v22 = *(this + 20);
        if (v22)
        {
          if (v22 == 1)
          {
            *(this + 20) = 2;
          }

          v23 = *a3;
          v24 = a3[1];
          *(this + 184) = v24;
          v25 = (this + 184);
          __asm { FMOV            V3.2D, #3.0 }

          v31 = vsubq_f64(v23, vdivq_f64(vsubq_f64(v23, *(this + 136)), _Q3));
          v32 = vaddq_f64(v23, vdivq_f64(vsubq_f64(v24, v23), _Q3));
          v51 = *(this + 136);
          v52 = v31;
          v33 = *(this + 184);
          v53 = v32;
          v54 = v33;
          v34 = v33.f64[0];
          v35 = vsubq_f64(v31, v51);
          v36 = vsubq_f64(v32, v31);
          v55 = vmulq_f64(v35, _Q3);
          v56 = vmulq_f64(vsubq_f64(v36, v35), _Q3);
          v37 = vaddq_f64(v36, v36);
          v57 = vaddq_f64(v35, vsubq_f64(vsubq_f64(v54, v32), v37));
          CG::stroker::add_cubic_segment(this, &v51, v57.f64[0], v35.f64[0], v37.f64[0], v55.f64[0], v34, v56.f64[0], a12, a13);
          if (v38)
          {
            result = *v25;
            *(this + 136) = *v25;
          }
        }

        break;
      case 3:
        v39 = *(this + 20);
        if (v39)
        {
          if (v39 == 1)
          {
            *(this + 20) = 2;
          }

          v40 = *a3;
          v41 = a3[1];
          *(this + 184) = a3[2];
          v20 = (this + 184);
          v51 = *(this + 136);
          v52 = v40;
          v42 = *(this + 184);
          v53 = v41;
          v54 = v42;
          v43 = v42.f64[0];
          v44 = vsubq_f64(v40, v51);
          __asm { FMOV            V4.2D, #3.0 }

          v46 = vsubq_f64(v41, v40);
          v55 = vmulq_f64(v44, _Q4);
          v56 = vmulq_f64(vsubq_f64(v46, v44), _Q4);
          v47 = vsubq_f64(v54, v41);
          v57 = vaddq_f64(v44, vsubq_f64(v47, vaddq_f64(v46, v46)));
          CG::stroker::add_cubic_segment(this, &v51, v57.f64[0], v47.f64[0], v44.f64[0], v43, v55.f64[0], v56.f64[0], a12, a13);
          if (v48)
          {
LABEL_28:
            result = *v20;
            *(this + 136) = *v20;
          }
        }

        break;
      case 4:
        v15 = *(this + 20);
        if (v15 >= 2)
        {
          if (v15 == 4)
          {
            CG::stroker::add_line_segment(this, (this + 136), this + 22);
            *(this + 136) = *(this + 88);
            CG::stroker::add_join(this, (this + 88), this + 13, this + 15);
            v16 = *(this + 9);
            if (v16)
            {
              (*(v16 + 24))(*(v16 + 8), 4, 0, *(v16 + 48));
              v17 = *(this + 9);
              v51 = *(this + 200);
              if (v17)
              {
                (*(v17 + 24))(*(v17 + 8), 0, &v51, *(v17 + 48));
              }
            }

            CG::stroker::unroll_path(this);
            v18 = *(this + 9);
            if (v18)
            {
              (*(v18 + 24))(*(v18 + 8), 4, 0, *(v18 + 48));
            }
          }

          else
          {
            v49 = (this + 88);
            v50 = vsubq_f64(*(this + 184), *(this + 88));
            CG::stroker::add_point(this, this + 11, v50.f64[0], v50.f64[1]);
            *(this + 136) = *v49;
          }

          *(this + 20) = 1;
          result = *(this + 88);
          *(this + 184) = result;
        }

        return result;
      default:
LABEL_35:
        abort();
    }
  }

  return result;
}

void CG::stroker::add_cubic_segment(CG::stroker *this, float64x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9, float64x2_t a10)
{
  v10 = a2;
  v12 = a2 + 1;
  v13 = a2[1].f64[0];
  v14 = a2[1].f64[1];
  if ((v14 - a2->f64[1]) * (v14 - a2->f64[1]) + (v13 - a2->f64[0]) * (v13 - a2->f64[0]) <= 0.00000001)
  {
    v15 = a2[2].f64[0];
    v16 = a2[2].f64[1];
    if ((v16 - v14) * (v16 - v14) + (v15 - v13) * (v15 - v13) <= 0.00000001 && (a2[3].f64[1] - v16) * (a2[3].f64[1] - v16) + (a2[3].f64[0] - v15) * (a2[3].f64[0] - v15) <= 0.00000001)
    {
      if (*(this + 20) == 2)
      {
        *(this + 20) = 3;
      }

      return;
    }
  }

  v17 = *a2;
  v18 = vsubq_f64(a2[1], *a2);
  if (COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]) + v18.f64[0] * v18.f64[0] <= 0.00000001)
  {
    v18 = vsubq_f64(a2[2], v17);
    if (COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]) + v18.f64[0] * v18.f64[0] <= 0.00000001)
    {
      v18 = vsubq_f64(a2[3], v17);
    }
  }

  v89 = v18;
  v19 = *this;
  v20 = *(this + 1);
  v21 = -*(this + 1);
  a9.f64[0] = v21 * v20.f64[0] + *this * *(this + 3);
  a10.f64[0] = 0.0;
  v22 = vextq_s8(v20, *this, 8uLL);
  v23 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(a10, a9).i64[0], 0), vnegq_f64(v22), v22);
  if (a9.f64[0] >= 0.0)
  {
    v24 = -v20.f64[0];
  }

  else
  {
    v21 = *(this + 1);
    v24 = *(this + 2);
  }

  v25 = vmuld_lane_f64(v24, v18, 1) + v18.f64[0] * v23.f64[0];
  v26 = COERCE_DOUBLE(*&vmulq_f64(v18, v23).f64[1]) + v18.f64[0] * v21;
  if (v25 != 0.0 || v26 != 0.0)
  {
    v27 = sqrt(v26 * v26 + v25 * v25);
    v25 = v25 / v27;
    v26 = v26 / v27;
  }

  *&v88 = v25;
  *(&v88 + 1) = v26;
  if (*(this + 20) == 4)
  {
    v74 = v17;
    CG::stroker::add_join(this, &v74, v89.f64, &v88);
  }

  else
  {
    *(this + 20) = 4;
    v28 = v88;
    *(this + 104) = v89;
    *(this + 120) = v28;
    v29 = *(this + 9);
    v74 = vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v20, v25), v19, v26, 0), *a2);
    if (v29)
    {
      (*(v29 + 24))(*(v29 + 8), 0, &v74, *(v29 + 48));
    }
  }

  v30 = v10[3];
  v31 = vsubq_f64(v30, v10[2]);
  if (COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0] <= 0.00000001)
  {
    v31 = vsubq_f64(v30, *v12);
    if (COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0] <= 0.00000001)
    {
      v31 = vsubq_f64(v30, *v10);
    }
  }

  *(this + 152) = v31;
  v32 = *this;
  v33 = *(this + 1);
  v35 = *(this + 2);
  v34 = *(this + 3);
  if (*this * v34 - v33 * v35 >= 0.0)
  {
    v33 = -v33;
    v35 = -v35;
  }

  else
  {
    v34 = -v34;
    v32 = -v32;
  }

  v36 = v35 * v31.f64[1] + v31.f64[0] * v34;
  v37 = v32 * v31.f64[1] + v31.f64[0] * v33;
  if (v36 != 0.0 || v37 != 0.0)
  {
    v38 = sqrt(v37 * v37 + v36 * v36);
    v36 = v36 / v38;
    v37 = v37 / v38;
  }

  *(this + 21) = v36;
  *(this + 22) = v37;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v12);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10[2].f64);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10[3].f64);
  v39 = v85;
  if (((v86 - v85) >> 4) <= 1 || v86 - v85 == 32 || ((v86 - v85) >> 4) <= 3)
  {
    __break(1u);
    return;
  }

  v40 = v85[2];
  if (((v40 - *v85) * (v85[5] - v85[3]) - (v85[3] - v85[1]) * (v85[4] - v40)) * ((v85[4] - v40) * (v85[7] - v85[5]) - (v85[5] - v85[3]) * (v85[6] - v85[4])) > 0.0)
  {
    goto LABEL_55;
  }

  v41 = v10[6].f64[0];
  v42 = -1.0;
  if (v41 == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v43 = v10[5].f64[0];
    v44 = v41 * 3.0;
    v45 = -v43;
    if (v43 < 0.0 && v44 > v45 || (v46 = 0, v43 > 0.0) && v44 < v45)
    {
      v46 = 1;
      v42 = v45 / v44;
    }
  }

  v47 = v10[6].f64[1];
  if (v47 != 0.0)
  {
    if ((v48 = v10[5].f64[1], v49 = v47 * 3.0, v50 = -v48, v48 < 0.0) && v49 > v50 || v48 > 0.0 && v49 < v50)
    {
      v51 = v50 / v49;
      if (v46)
      {
        v52 = -1.0;
        if (vabdd_f64(v42, v51) >= 0.000001)
        {
          v52 = v42 >= v51 ? v42 : v51;
          if (v42 >= v51)
          {
            v42 = v51;
          }
        }

        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  v51 = -1.0;
  v52 = -1.0;
  if ((v46 & 1) == 0)
  {
LABEL_52:
    v52 = -1.0;
    v42 = v51;
  }

LABEL_53:
  if (v42 == -1.0 && v52 == -1.0 || (CG::Cubic::split(&v74, v42, v10), (v76 - v74.f64[1]) * (v76 - v74.f64[1]) + (v75 - v74.f64[0]) * (v75 - v74.f64[0]) <= 0.00000001) && (v78 - v76) * (v78 - v76) + (v77 - v75) * (v77 - v75) <= 0.00000001 && (v80 - v78) * (v80 - v78) + (v79 - v77) * (v79 - v77) <= 0.00000001 || (v82.f64[1] - v81.f64[1]) * (v82.f64[1] - v81.f64[1]) + (v82.f64[0] - v81.f64[0]) * (v82.f64[0] - v81.f64[0]) <= 0.00000001 && (v83.f64[1] - v82.f64[1]) * (v83.f64[1] - v82.f64[1]) + (v83.f64[0] - v82.f64[0]) * (v83.f64[0] - v82.f64[0]) <= 0.00000001 && (v84.f64[1] - v83.f64[1]) * (v84.f64[1] - v83.f64[1]) + (v84.f64[0] - v83.f64[0]) * (v84.f64[0] - v83.f64[0]) <= 0.00000001 || (CG::stroker::path_stroke_round_cube(this, &v74), v10 = &v81, v52 == -1.0))
  {
LABEL_55:
    CG::stroker::path_stroke_round_cube(this, v10);
LABEL_74:
    v86 = v39;
    operator delete(v39);
    return;
  }

  v53 = (v52 - v42) / (1.0 - v42);
  v54 = vaddq_f64(v81, vmulq_n_f64(vsubq_f64(v82, v81), v53));
  v55 = vaddq_f64(v82, vmulq_n_f64(vsubq_f64(v83, v82), v53));
  v56 = vaddq_f64(v54, vmulq_n_f64(vsubq_f64(v55, v54), v53));
  v72[0] = v81;
  v72[1] = v54;
  v57 = vaddq_f64(v83, vmulq_n_f64(vsubq_f64(v84, v83), v53));
  v58 = vaddq_f64(v55, vmulq_n_f64(vsubq_f64(v57, v55), v53));
  v59 = vaddq_f64(v56, vmulq_n_f64(vsubq_f64(v58, v56), v53));
  v72[2] = v56;
  v72[3] = v59;
  v60 = vsubq_f64(v54, v81);
  __asm { FMOV            V3.2D, #3.0 }

  v66 = vsubq_f64(v56, v54);
  v72[4] = vmulq_f64(v60, _Q3);
  v72[5] = vmulq_f64(vsubq_f64(v66, v60), _Q3);
  v67 = vsubq_f64(v59, v56);
  v72[6] = vaddq_f64(v60, vsubq_f64(v67, vaddq_f64(v66, v66)));
  v73[0] = v59;
  v73[1] = v58;
  v73[2] = v57;
  v68 = vsubq_f64(v58, v59);
  v73[3] = v84;
  v73[4] = vmulq_f64(v68, _Q3);
  v69 = vsubq_f64(v57, v58);
  v70 = vmulq_f64(vsubq_f64(v69, v68), _Q3);
  v71 = vsubq_f64(v84, v57);
  v73[5] = v70;
  v73[6] = vaddq_f64(vsubq_f64(v71, vaddq_f64(v69, v69)), v68);
  if ((COERCE_DOUBLE(*&vmulq_f64(v60, v60).f64[1]) + v60.f64[0] * v60.f64[0] > 0.00000001 || (v56.f64[1] - v54.f64[1]) * (v56.f64[1] - v54.f64[1]) + v66.f64[0] * v66.f64[0] > 0.00000001 || (v59.f64[1] - v56.f64[1]) * (v59.f64[1] - v56.f64[1]) + v67.f64[0] * v67.f64[0] > 0.00000001) && ((v58.f64[1] - v59.f64[1]) * (v58.f64[1] - v59.f64[1]) + v68.f64[0] * v68.f64[0] > 0.00000001 || (v57.f64[1] - v58.f64[1]) * (v57.f64[1] - v58.f64[1]) + v69.f64[0] * v69.f64[0] > 0.00000001 || COERCE_DOUBLE(*&vmulq_f64(v71, v71).f64[1]) + v71.f64[0] * v71.f64[0] > 0.00000001))
  {
    CG::stroker::path_stroke_round_cube(this, v72);
    v10 = v73;
  }

  CG::stroker::path_stroke_round_cube(this, v10);
  v39 = v85;
  if (v85)
  {
    goto LABEL_74;
  }
}

void sub_183F184A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double anonymous namespace::add_element_to_path(_anonymous_namespace_ *this, void *a2, float64x2_t *a3, const CGAffineTransform *a4, const CGAffineTransform *a5)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v13 = *a3;

        *&result = *&CG::Path::add_quad_curve_to_point(this, a3 + 1, 0, a4, v13);
        break;
      case 3:
        v9 = a3 + 1;
        v11 = *a3;
        v10 = a3 + 2;
        v12 = v11;

        *&result = *&CG::Path::add_curve_to_point(this, v9, v10, 0, a5, v12);
        break;
      case 4:

        CG::Path::close_subpath(this);
        break;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 == -3)
    {
      v16.origin.x = a3->f64[0];
      v16.origin.y = a3->f64[1];
      v16.size.width = a3[1].f64[0] - a3->f64[0];
      v16.size.height = a3[1].f64[1] - v16.origin.y;
      v14 = CGRectStandardize(v16);
      CG::Path::append_rect(this, &v14, 0);
      return result;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *a3;

        *&result = *&CG::Path::add_line_to_point(this, 0, a3, v6);
        return result;
      }

LABEL_24:
      abort();
    }

    v8 = *a3;

    CG::Path::move_to_point(this, 0, a3, v8);
  }

  return result;
}

uint64_t CG::stroker::add_point(uint64_t result, double *a2, double a3, double a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(result + 40);
  if (!v4)
  {
    return result;
  }

  v6 = a3 == 0.0;
  v7 = a4 == 0.0;
  if (v6 && v7)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = a3;
  }

  if (v6 && v7)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = a4;
  }

  v10 = *result;
  v11 = *(result + 8);
  v13 = *(result + 16);
  v12 = *(result + 24);
  if (*result * v12 - v11 * v13 >= 0.0)
  {
    v16 = -v11;
    v17 = -v13;
    v14 = *(result + 24);
    v15 = *result;
  }

  else
  {
    v14 = -v12;
    v15 = -v10;
    v16 = *(result + 8);
    v17 = *(result + 16);
  }

  v18 = v9 * v17 + v8 * v14;
  v19 = v9 * v15 + v8 * v16;
  if (v18 != 0.0 || v19 != 0.0)
  {
    v20 = sqrt(v19 * v19 + v18 * v18);
    v18 = v18 / v20;
    v19 = v19 / v20;
  }

  v21 = v13 * v18 - v19 * v10;
  v22 = v12 * v18 - v19 * v11;
  v23 = v13 * v19 + v18 * v10;
  v24 = v12 * v19 + v18 * v11;
  if (v4 == 2)
  {
    v44 = *a2;
    v45 = a2[1];
    v46 = v21 + *a2;
    v27 = (result + 72);
    v47 = *(result + 72);
    v56 = v46 - v23;
    v57 = v22 + v45 - v24;
    if (v47)
    {
      result = (v47[3])(v47[1], 0, &v56, v47[6]);
      v44 = *a2;
      v45 = a2[1];
      v47 = *v27;
      v56 = v23 + v21 + *a2;
      v57 = v24 + v22 + v45;
      if (v47)
      {
        result = (v47[3])(v47[1], 1, &v56, v47[6]);
        v44 = *a2;
        v45 = a2[1];
        v47 = *v27;
      }
    }

    else
    {
      v56 = v23 + v46;
      v57 = v24 + v22 + v45;
    }

    v48 = v44 - v21;
    v49 = v45 - v22;
    v56 = v23 + v48;
    v57 = v24 + v49;
    if (v47)
    {
      result = (v47[3])(v47[1], 1, &v56, v47[6]);
      v50 = *v27;
      v51 = a2[1] - v22 - v24;
      v56 = *a2 - v21 - v23;
      v57 = v51;
      if (v50)
      {
        result = (v50[3])(v50[1], 1, &v56, v50[6]);
      }
    }

    else
    {
      v56 = v48 - v23;
      v57 = v49 - v24;
    }

    goto LABEL_30;
  }

  if (v4 != 1)
  {
    abort();
  }

  v25 = v22 + a2[1];
  v27 = (result + 72);
  v26 = *(result + 72);
  v56 = v21 + *a2;
  v57 = v25;
  if (v26)
  {
    result = (*(v26 + 24))(*(v26 + 8), 0, &v56, *(v26 + 48));
    v28 = *v27;
    if (*v27)
    {
      v29 = v23 * 0.55228475;
      v30 = v24 * 0.55228475;
      v31 = v21 * 0.55228475;
      v32 = v22 * 0.55228475;
      v33 = a2[1];
      v34 = v23 + *a2;
      v56 = v23 * 0.55228475 + v21 + *a2;
      v57 = v24 * 0.55228475 + v22 + v33;
      v58 = v21 * 0.55228475 + v34;
      v59 = v22 * 0.55228475 + v24 + v33;
      v60 = v34;
      v61 = v24 + v33;
      result = (v28[3])(v28[1], 3, &v56, v28[6]);
      v35 = *v27;
      if (*v27)
      {
        v36 = a2[1];
        v37 = *a2 - v21;
        v56 = v23 + *a2 - v31;
        v57 = v24 + v36 - v32;
        v58 = v29 + v37;
        v59 = v30 + v36 - v22;
        v60 = v37;
        v61 = v36 - v22;
        result = (v35[3])(v35[1], 3, &v56, v35[6]);
        v38 = *v27;
        if (*v27)
        {
          v39 = a2[1];
          v40 = *a2 - v23;
          v56 = *a2 - v21 - v29;
          v57 = v39 - v22 - v30;
          v58 = v40 - v31;
          v59 = v39 - v24 - v32;
          v60 = v40;
          v61 = v39 - v24;
          result = (v38[3])(v38[1], 3, &v56, v38[6]);
          v41 = *v27;
          if (*v27)
          {
            v42 = a2[1];
            v43 = v21 + *a2;
            v56 = v31 + *a2 - v23;
            v57 = v32 + v42 - v24;
            v58 = v43 - v29;
            v59 = v22 + v42 - v30;
            v60 = v43;
            v61 = v22 + v42;
            result = (v41[3])(v41[1], 3, &v56, v41[6]);
LABEL_30:
            v52 = *v27;
            if (*v27)
            {
              v53 = v52[3];
              v54 = v52[1];
              v55 = v52[6];

              return v53(v54, 4, 0, v55);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::end(uint64_t this, void *a2, path_iterator *a3)
{
  v3 = this;
  if ((*(this + 80) - 3) <= 1)
  {
    this = CG::stroker::end_contour(this);
  }

  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = v4[4];
    if (v5)
    {
      v6 = v4[1];
      v7 = v4[6];

      return v5(v6, v7);
    }
  }

  return this;
}

uint64_t path_iterator::release(uint64_t this)
{
  if (atomic_fetch_add_explicit(this, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = this;
    v2 = *(this + 40);
    if (v2)
    {
      v2(*(this + 8));
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      path_iterator::release(v3);
    }

    JUMPOUT(0x1865EE610);
  }

  return this;
}

uint64_t anonymous namespace::release_data(uint64_t this, void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 72);
    if (v3)
    {
      path_iterator::release(v3);
    }

    v4 = *(v2 + 216);
    if (v4)
    {
      *(v2 + 224) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1865EE610);
  }

  return this;
}

uint64_t rips_s_BltShape(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 12);
  if ((v15 & 0x10) != 0)
  {
    v21[0] = 0;
    v21[1] = 0;
    rips_s_BltShapeShadow(a1, a2, a3, a5, a6, a7, a8, a8);
    if (!a3 || (a4 ? (v19 = a4) : (v19 = (a5 + 12)), CGSBoundsIntersection((a3 + 12), v19, v21)))
    {
      if ((*(a1 + 13) & 0x10) == 0)
      {
        if (a3)
        {
          v20 = v21;
        }

        else
        {
          v20 = a4;
        }

        RIPLayerBltShape(a2, a3, v20, a5, a6, a7, a8, v18);
      }
    }

    return 1;
  }

  if ((v15 & 0x1000) != 0)
  {
    return 1;
  }

  return RIPLayerBltShape(a2, a3, a4, a5, a6, a7, a8, a8);
}

uint64_t A8_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v32 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v16, v28) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v5 + 3) & 0xF;
  if (v12 <= 4 && ((1 << v12) & 0x1A) != 0)
  {
    if (*(v5 + 16))
    {
      v13 = A8_shade_radial_A;
    }

    else if (*(v5 + 24))
    {
      v13 = A8_shade_conic_A;
    }

    else if (v22 < 2)
    {
      v13 = A8_shade_axial_A;
    }

    else
    {
      v13 = A8_shade_custom_A;
    }

    v16 = v13;
    if (v26)
    {
      v25 = v31;
      _blt_shade_samples_16(v31, 2, 0, v26, v27, 1uLL);
    }

    v14 = v22 * v21;
    if (v22 * v21 <= 1920)
    {
      v15 = v29;
      v23 = v29;
LABEL_28:
      _blt_shade_samples_16(v15, 2, 0, v19, v20, v14);
      if (*(v5 + 1))
      {
        v24 = &_blt_shade_samples_noise;
      }

      goto LABEL_30;
    }

    v15 = malloc_type_malloc(2 * v14 + 32, 0x880464B6uLL);
    if (v15)
    {
      v23 = v15;
      v14 = v22 * v21;
      goto LABEL_28;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_30:
  v17 = *v7;
  v18 = v17;
  A8_image_mark(v6, &v16, v9, v11);
  if (v23 && (v23 < v29 || &v30 < v23))
  {
    free(v23);
  }

  return 1;
}

void A8_shade_axial_A(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v15 = a1 + 144;
  v13 = *(a1 + 144);
  v14 = *(v15 + 8);
  v17 = *(a1 + 368);
  v16 = *(a1 + 376);
  v18 = a1 + 368;
  v19 = *(a1 + 360);
  v20 = (a3 >> 4) & 0xF0;
  v21 = v17 + v20;
  LODWORD(v22) = (a2 >> 8) & 0xF;
  if (v17)
  {
    v23 = v17 + v20;
  }

  else
  {
    v23 = v18;
  }

  if (v17)
  {
    v24 = 15;
  }

  else
  {
    v24 = 0;
  }

  if (v5 != 0.0)
  {
    if (v17)
    {
      v29 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    while (1)
    {
      v30 = v11;
      if (v6 >= v9)
      {
        v30 = v12;
        if (v6 <= v10)
        {
          v30 = (v8 * (v6 - v7));
        }
      }

      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      v31 = v16;
      if (v16)
      {
        goto LABEL_35;
      }

LABEL_36:
      LOBYTE(v29) = (v29 + 1) & v24;
      v6 = v5 + v6;
      ++v14;
      *v13 = v31;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v31 = (v19 + 2 * v30);
LABEL_35:
    *v14 = (*(v23 + v29) + *v31) >> 8;
    LOBYTE(v31) = -1;
    goto LABEL_36;
  }

  if (v17)
  {
    v25 = v21;
  }

  else
  {
    v25 = v18;
  }

  if (v17)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v17)
  {
    v27 = 15;
  }

  else
  {
    LODWORD(v22) = 0;
    v27 = 0;
  }

  if (v6 >= v9)
  {
    v11 = v12;
    if (v6 <= v10)
    {
      v11 = (v8 * (v6 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v16)
  {
    v32 = (v19 + 2 * v11);
    if (v11 < 0)
    {
      v33 = v16;
    }

    else
    {
      v33 = v32;
    }

    v34 = *v33;
    if (v17)
    {
      v35 = a4 + 4;
      do
      {
        v36 = *(v25 + v26) + v34;
        *v14 = (*(v25 + v22) + v34) >> 8;
        v22 = (v22 + 1) & v27;
        v14[1] = HIBYTE(v36);
        v26 = (v26 + 1) & v27;
        v37 = *(v25 + v26) + v34;
        v14[2] = (*(v25 + v22) + v34) >> 8;
        v14[3] = HIBYTE(v37);
        *v13++ = -1;
        v14 += 4;
        v35 -= 4;
      }

      while (v35 > 4);
    }

    else
    {
      v38 = a4 + 4;
      v39 = 16843009 * (v34 >> 8);
      do
      {
        *v14 = v39;
        v14 += 4;
        *v13++ = -1;
        v38 -= 4;
      }

      while (v38 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = a4;
    }

    bzero(v13, ((a4 - v28 + 3) & 0xFFFFFFFC) + 4);
  }
}

void std::vector<CG::Point>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void CG::stroker::path_stroke_round_cube(CG::stroker *this, const CG::Cubic *a2)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 1);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 2);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 3);
  v4 = v43;
  if (((v44 - v43) >> 4) <= 1 || v44 - v43 == 32 || ((v44 - v43) >> 4) <= 3)
  {
    __break(1u);
  }

  else
  {
    v5 = v43[2];
    v6 = v43[3];
    v7 = v5 - *v43;
    v8 = v6 - v43[1];
    v9 = v43[4];
    v10 = v43[5];
    v11 = v9 - v5;
    v12 = v10 - v6;
    if (v8 * v12 + v7 * v11 >= 0.0 && v12 * (v43[7] - v10) + v11 * (v43[6] - v9) >= 0.0)
    {
      CG::stroker::path_stroke_round_cube_offset(this, a2, 4, 1);
      v19 = *(a2 + 2);
      v35 = *(a2 + 3);
      v36 = v19;
      v20 = *a2;
      v37 = *(a2 + 1);
      v38 = v20;
      v21 = vsubq_f64(v36, v35);
      __asm { FMOV            V2.2D, #3.0 }

      v27 = vsubq_f64(v37, v36);
      v39 = vmulq_f64(v21, _Q2);
      v40 = vmulq_f64(vsubq_f64(v27, v21), _Q2);
      v41 = vaddq_f64(v21, vsubq_f64(vsubq_f64(v38, v37), vaddq_f64(v27, v27)));
      CG::stroker::path_stroke_round_cube_offset(this, &v35, 4, -1);
    }

    else
    {
      v14 = *(a2 + 2);
      v13 = *(a2 + 3);
      v16 = *a2;
      v15 = *(a2 + 1);
      if ((v13 - v15) * (v13 - v15) + (v14 - *a2) * (v14 - *a2) <= 0.00000001 && (v17 = *(a2 + 4), v18 = *(a2 + 5), (v18 - v13) * (v18 - v13) + (v17 - v14) * (v17 - v14) <= 0.00000001) && (*(a2 + 7) - v18) * (*(a2 + 7) - v18) + (*(a2 + 6) - v17) * (*(a2 + 6) - v17) <= 0.00000001)
      {
        v35.f64[0] = v16 - CG::stroker::offset_normal(this, a2, 0, 0.0);
        v35.f64[1] = v15 - v28;
        CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v35);
        v29 = *(a2 + 6);
        v30 = *(a2 + 7);
        v31 = CG::stroker::offset_normal(this, a2, 0, 1.0);
        v33 = v32;
        v34 = *(this + 9);
        v35.f64[0] = v29 + v31;
        v35.f64[1] = v30 + v32;
        if (v34)
        {
          (*(v34 + 24))(*(v34 + 8), 1, &v35, *(v34 + 48));
        }

        *(this + 25) = v29 - v31;
        *(this + 26) = v30 - v33;
      }

      else
      {
        CG::Cubic::split(&v35, 0.5, a2);
        if (v16 != v35.f64[0] || v15 != v35.f64[1] || v14 != v36.f64[0] || v13 != v36.f64[1] || *(a2 + 4) != v37.f64[0] || *(a2 + 5) != v37.f64[1] || *(a2 + 6) != v38.f64[0] || *(a2 + 7) != v38.f64[1])
        {
          CG::stroker::path_stroke_round_cube(this, &v35);
          if (*a2 != v42[0] || *(a2 + 1) != v42[1] || *(a2 + 2) != v42[2] || *(a2 + 3) != v42[3] || *(a2 + 4) != v42[4] || *(a2 + 5) != v42[5] || *(a2 + 6) != v42[6] || *(a2 + 7) != v42[7])
          {
            CG::stroker::path_stroke_round_cube(this, v42);
          }
        }
      }
    }

    operator delete(v4);
  }
}

void CG::stroker::path_stroke_round_cube_offset(CG::stroker *this, float64x2_t *a2, int a3, int a4)
{
  v136[14] = *MEMORY[0x1E69E9840];
  v8 = a2[3].f64[0];
  v7 = a2[3].f64[1];
  v9 = a2->f64[0];
  v10 = a2->f64[1];
  if ((v7 - v10) * (v7 - v10) + (v8 - a2->f64[0]) * (v8 - a2->f64[0]) <= 0.00000001)
  {
    v37 = v8 + CG::stroker::offset_normal(this, a2, 0, 1.0);
    v39 = v7 + v38;
    *&v127[0].v = v37;
    v128.f64[0] = v39;
    if (a4 < 0)
    {
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v127);
      v101 = a2->f64[0];
      v102 = a2->f64[1];
      *(this + 25) = v101 + CG::stroker::offset_normal(this, a2, 0, 0.0);
      *(this + 26) = v102 + v103;
    }

    else
    {
      v40 = *(this + 9);
      v135[0].f64[0] = v37;
      v135[0].f64[1] = v39;
      if (v40)
      {
        (*(v40 + 24))(*(v40 + 8), 1, v135, *(v40 + 48));
      }
    }

    return;
  }

  v134 = 0uLL;
  v12.f64[0] = v9 + CG::stroker::offset_normal(this, a2, v134.f64, 0.0);
  *&v14 = v10 + v13;
  v113 = v14;
  v114 = v12.f64[0];
  *&v12.f64[1] = v14;
  v108 = v12;
  v133 = 0uLL;
  v15 = v8 + CG::stroker::offset_normal(this, a2, v133.f64, 1.0);
  v17 = v7 + v16;
  __asm { FMOV            V1.2D, #0.5 }

  v22 = a2[4];
  v23 = vaddq_f64(vmulq_f64(a2[6], _Q1), a2[5]);
  *&v132[0].v = v15;
  *&v132[2].v = v17;
  v130 = 0.0;
  v131 = 0.0;
  v120 = vaddq_f64(*a2, vmulq_f64(vaddq_f64(vmulq_f64(v23, _Q1), v22), _Q1));
  v24 = CG::stroker::offset_normal(this, a2, &v130, 0.5);
  *(&v25 + 1) = *(&v113 + 1);
  v26 = v120.f64[0] + v24;
  v28 = v120.f64[1] + v27;
  v29 = v120.f64[0] + v24 + ((v120.f64[0] + v24 - v114) * 0.5 + (v120.f64[0] + v24 - v15) * 0.5) / 3.0;
  v30 = v28 + ((v28 - *&v113) * 0.5 + (v28 - v17) * 0.5) / 3.0;
  v129[0] = v29;
  v129[1] = v30;
  _V0.D[1] = v134.f64[1];
  _D4 = v130;
  v33 = -v131;
  __asm { FMLA            D6, D4, V0.D[1] }

  v35 = &v128;
  if (fabs(_D6) >= 0.0001)
  {
    *(&v25 + 1) = *&v108.f64[1];
    v128 = vaddq_f64(v108, vmulq_n_f64(v134, ((v29 - v114) * v33 + v130 * (v30 - *&v113)) / _D6));
    v36 = 1;
  }

  else
  {
    v36 = 0;
    v128 = 0uLL;
  }

  LOBYTE(v127[0].v) = v36;
  if (!v36)
  {
    v35 = v129;
  }

  *&v126[0].v = *v35;
  _V6.D[1] = v133.f64[1];
  __asm { FMLA            D7, D4, V6.D[1] }

  v43 = &v125;
  if (fabs(_D7) < 0.0001)
  {
    v44 = 0;
    v125 = 0uLL;
  }

  else
  {
    v125 = vaddq_f64(*&v132[0].v, vmulq_n_f64(v133, ((v29 - *&v132[0].v) * v33 + v130 * (v30 - *&v132[2].v)) / _D7));
    v44 = 1;
  }

  v124 = v44;
  if (!v44)
  {
    v43 = v129;
  }

  *&v123[0].v = *v43;
  _VF = __OFSUB__(a3, 1);
  v45 = a3 - 1;
  if (v45 < 0 != _VF)
  {
LABEL_84:
    if (a4 < 0)
    {
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v126);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v123);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v132);
      *(this + 200) = v108;
    }

    else
    {
      v100 = *(this + 9);
      if (v100)
      {
        v135[0] = *&v126[0].v;
        v135[1] = *&v123[0].v;
        v135[2] = *&v132[0].v;
        (*(v100 + 24))(*(v100 + 8), 3, v135, *(v100 + 48));
      }
    }

    return;
  }

  v46 = 0;
  v47 = vsubq_f64(*&v126[0].v, v108);
  __asm { FMOV            V5.2D, #3.0 }

  v49 = vmulq_f64(v47, _Q5);
  v50 = vsubq_f64(*&v123[0].v, *&v126[0].v);
  v51 = vmulq_f64(vsubq_f64(v50, v47), _Q5);
  v52 = vaddq_f64(v47, vsubq_f64(vsubq_f64(*&v132[0].v, *&v123[0].v), vaddq_f64(v50, v50)));
  v53 = v51.f64[1];
  v54 = (*&v114 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v113 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v55 = v52.f64[1];
  v111 = (v49.f64[1] + (v51.f64[1] + vmuld_lane_f64(0.0, v52, 1)) * 0.0) * 0.0;
  v112 = (v49.f64[0] + (v51.f64[0] + 0.0 * v52.f64[0]) * 0.0) * 0.0;
  v116 = v52.f64[0];
  v117 = v51.f64[0];
  v118 = v49.f64[0];
  *&v110 = *&vaddq_f64(v49, vaddq_f64(v51, v52));
  v64 = !v54 || (*&v126[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v126[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v123[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v123[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v132[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v132[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v49.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v51.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v115 = v49.f64[1];
  v109 = v49.f64[1] + v51.f64[1] + v52.f64[1];
  while (1)
  {
    *&v25 = CG::stroker::path_stroke_round_cube_offset(CG::Cubic const&,int,int)::samples[v46];
    v65 = v28;
    v66 = v26;
    if (v46)
    {
      v119 = vaddq_f64(*a2, vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(a2[6], *&v25), a2[5]), *&v25), a2[4]), *&v25));
      v121 = v25;
      v67 = CG::stroker::offset_normal(this, a2, 0, *&v25);
      v25 = v121;
      v66 = v119.f64[0] + v67;
      v65 = v119.f64[1] + v68;
    }

    if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v69 = 1;
    }

    else
    {
      v69 = v64;
    }

    if ((v69 & 1) != 0 || (*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_60;
    }

    v70 = *(this + 8) * *(this + 8);
    v71 = v114 - v66;
    v72 = *&v113 - v65;
    v73 = (v72 + v111) * (v72 + v111) + (v114 - v66 + v112) * (v114 - v66 + v112);
    v74 = (v72 + v109) * (v72 + v109) + (v114 - v66 + v110) * (v114 - v66 + v110);
    if (v73 < v70 || v74 < v70)
    {
      goto LABEL_60;
    }

    v76 = v71 + (v118 + (v117 + v116 * *&v25) * *&v25) * *&v25;
    v77 = v72 + (v115 + (v53 + v55 * *&v25) * *&v25) * *&v25;
    v78 = v77 * v77 + v76 * v76;
    if (v78 < v70)
    {
      goto LABEL_60;
    }

    if (v78 >= v73 || v78 >= v74)
    {
      goto LABEL_89;
    }

    {
      v122 = v25;
      v25 = v122;
      if (v99)
      {
        CG::Cubic::is_near(CG::Point const&,double,double)const::G = 0x3FE3C6EF372FE950;
        v25 = v122;
      }
    }

    v80 = 1.0 - *&CG::Cubic::is_near(CG::Point const&,double,double)const::G;
    if (v46 != 2 && v46 != 4)
    {
      break;
    }

    v81 = *&v25 - v80 * *&v25;
    v82 = v71 + v81 * (v118 + v81 * (v117 + v116 * v81));
    v83 = v72 + v81 * (v115 + v81 * (v53 + v55 * v81));
    v84 = v83 * v83 + v82 * v82;
    if (v84 >= v70)
    {
      goto LABEL_74;
    }

LABEL_60:
    if (++v46 == 5)
    {
      goto LABEL_84;
    }
  }

  v81 = *&v25;
  v85 = *&v25 + v80 * (1.0 - *&v25);
  v86 = v71 + v85 * (v118 + v85 * (v117 + v116 * v85));
  v87 = v72 + v85 * (v115 + v85 * (v53 + v55 * v85));
  v88 = v87 * v87;
  v84 = v78;
  v78 = v88 + v86 * v86;
  *&v25 = v85;
  if (v78 < v70)
  {
    goto LABEL_60;
  }

LABEL_74:
  v89 = 1.0;
  if ((v81 + *&v25) * 0.00000003 < 1.0)
  {
    v90 = 0.0;
    do
    {
      if (v78 >= v84)
      {
        v89 = *&v25;
        v93 = v90 * v80 + *&CG::Cubic::is_near(CG::Point const&,double,double)const::G * v81;
        v94 = v71 + v93 * (v118 + v93 * (v117 + v116 * v93));
        v95 = v72 + v93 * (v115 + v93 * (v53 + v55 * v93));
        v78 = v95 * v95 + v94 * v94;
        *&v25 = v93;
        if (v78 <= v70)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v90 = v81;
        v81 = v89 * v80 + *&CG::Cubic::is_near(CG::Point const&,double,double)const::G * *&v25;
        v91 = v71 + v81 * (v118 + v81 * (v117 + v116 * v81));
        v92 = v72 + v81 * (v115 + v81 * (v53 + v55 * v81));
        v84 = v92 * v92 + v91 * v91;
        if (v84 <= v70)
        {
          goto LABEL_60;
        }
      }

      v96 = v78;
      v97 = *&v25;
      v98 = (*&v25 + v81) * 0.00000003;
      v78 = v84;
      v84 = v96;
      *&v25 = v81;
      v81 = v97;
    }

    while (v89 - v90 > v98);
  }

LABEL_89:
  CG::Cubic::split(v135, 0.5, a2);
  if (a4 < 0)
  {
    CG::stroker::path_stroke_round_cube_offset(this, v136, v45, -1);
    v104 = v135;
    v105 = this;
    v106 = v45;
    v107 = -1;
  }

  else
  {
    CG::stroker::path_stroke_round_cube_offset(this, v135, v45, a4);
    v104 = v136;
    v105 = this;
    v106 = v45;
    v107 = a4;
  }

  CG::stroker::path_stroke_round_cube_offset(v105, v104, v106, v107);
}

double CG::stroker::offset_normal(double *a1, float64x2_t *this, double *a3, double a4)
{
  *&v6 = *&CG::Cubic::derivative(this, a4);
  if (a3)
  {
    *a3 = v6;
    a3[1] = v7;
  }

  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  if (*a1 * v10 - v9 * v11 >= 0.0)
  {
    v14 = -v9;
    v15 = -v11;
    v12 = a1[3];
    v13 = *a1;
  }

  else
  {
    v12 = -v10;
    v13 = -v8;
    v14 = a1[1];
    v15 = a1[2];
  }

  v16 = v7 * v15 + v6 * v12;
  v17 = v7 * v13 + v6 * v14;
  v18 = -v17;
  if (v17 != 0.0 || v16 != 0.0)
  {
    v19 = sqrt(v16 * v16 + v17 * v17);
    v18 = v18 / v19;
    v16 = v16 / v19;
  }

  return v11 * v16 + v18 * v8;
}

float64x2_t CG::Cubic::derivative(float64x2_t *this, double a2)
{
  if (a2 == 0.0)
  {
    v2 = *this;
    result = vsubq_f64(this[1], *this);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      result = vsubq_f64(this[2], v2);
      if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
      {
        return vsubq_f64(this[3], v2);
      }
    }
  }

  else if (a2 == 1.0)
  {
    v4 = this[3];
    result = vsubq_f64(v4, this[2]);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      result = vsubq_f64(v4, this[1]);
      if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
      {
        return vsubq_f64(v4, *this);
      }
    }
  }

  else
  {
    __asm { FMOV            V2.2D, #3.0 }

    return vaddq_f64(this[4], vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_f64(this[6], _Q2), a2), vaddq_f64(this[5], this[5])), a2));
  }

  return result;
}

void CG::stroker::push_opposite_element(CG::stroker *this, CGPathElementType a2, const Point *a3)
{
  *&v15[4] = *&a3->v;
  v5 = *(this + 28);
  v4 = *(this + 29);
  if (v5 >= v4)
  {
    v7 = *(this + 27);
    v8 = v5 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v13 = 24 * v9;
    *v13 = a2;
    *(v13 + 4) = *v15;
    *(v13 + 20) = *&v15[16];
    v6 = 24 * v9 + 24;
    v14 = v13 - v8;
    memcpy((v13 - v8), v7, v8);
    *(this + 27) = v14;
    *(this + 28) = v6;
    *(this + 29) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 4) = *v15;
    *(v5 + 20) = *&v15[16];
    v6 = v5 + 24;
  }

  *(this + 28) = v6;
}

void CG::stroker::add_join(CG::stroker *this, float64x2_t *a2, double *a3, double *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = *(this + 11);
  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        abort();
      }

      goto LABEL_10;
    }

    v9 = *(this + 21);
    v10 = *(this + 22);
    v11 = *(this + 2);
    v12 = *(this + 3);
    v14 = *this;
    v13 = *(this + 1);
    v15 = v9 * v11 - v10 * *this;
    v16 = v9 * v12 - v10 * v13;
    v17 = a4[1];
    v18 = v11 * *a4 - v17 * *this;
    v19 = v12 * *a4 - v17 * v13;
    if ((v16 - v19) * (v16 - v19) + (v15 - v18) * (v15 - v18) >= 0.05)
    {
      v20 = -v10;
      v21 = a2->f64[1] - v19;
      *(this + 25) = a2->f64[0] - v18;
      *(this + 26) = v21;
      v22 = *a4;
      v23 = a4[1];
      v24 = v9 + *a4;
      v25 = v10 + v23;
      v26 = sqrt(v25 * v25 + v24 * v24);
      if (v26 >= 0.001)
      {
        v37 = 2.66666667 / v26;
        if (vabdd_f64(v10, v23) <= vabdd_f64(v9, v22))
        {
          v27 = -(v25 * -1.33333333 + v37 * v25) / (v9 - v22);
        }

        else
        {
          v27 = (v24 * -1.33333333 + v37 * v24) / (v10 - v23);
        }
      }

      else
      {
        v27 = -1.33333333;
      }

      v52 = v9 + v10 * v27;
      v53 = v10 - v9 * v27;
      v54 = v11 * v52 - v53 * v14;
      v55 = v12 * v52 - v53 * v13;
      v56 = v22 * v27;
      v57 = v22 - v23 * v27;
      v58 = v23 + v56;
      v59 = v11 * v57 - v58 * v14;
      v60 = v12 * v57 - v58 * v13;
      if (v22 * v20 + v9 * v23 < 0.0 && v26 >= 0.001)
      {
        v61 = a2->f64[1] - v16;
        *v78 = a2->f64[0] - v15;
        *&v78[8] = v61;
        CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v78);
        if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v16 * v16 + v15 * v15) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
        {
          CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
        }

        v62 = *(this + 9);
        if (v62)
        {
          v63 = a2->f64[1];
          v64 = v18 + a2->f64[0];
          v65 = v59 + a2->f64[0];
          *v78 = v54 + a2->f64[0];
          *&v78[8] = v55 + v63;
          *&v78[16] = v65;
          v79 = v60 + v63;
          v80 = v64;
          v81 = v19 + v63;
          (*(v62 + 24))(*(v62 + 8), 3, v78, *(v62 + 48));
        }

        return;
      }

      v66 = a2->f64[1] - v60;
      *v78 = a2->f64[0] - v59;
      *&v78[8] = v66;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      v67 = a2->f64[1] - v55;
      *v78 = a2->f64[0] - v54;
      *&v78[8] = v67;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      v68 = a2->f64[1] - v16;
      *v78 = a2->f64[0] - v15;
      *&v78[8] = v68;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v16 * v16 + v15 * v15) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
      {
        v51 = *(this + 9);
        v50 = *a2;
LABEL_32:
        *v78 = v50;
        if (v51)
        {
          (*(v51 + 24))(*(v51 + 8), 1, v78, *(v51 + 48));
        }

        goto LABEL_40;
      }

      goto LABEL_40;
    }

LABEL_10:

    CG::stroker::add_bevel_join(this, a2->f64, a3, a4);
    return;
  }

  v29 = *(this + 21);
  v28 = *(this + 22);
  v30 = *(this + 2);
  v31 = *(this + 3);
  v32 = *(this + 1);
  v33 = v29 * v30 - v28 * *this;
  v34 = v29 * v31 - v28 * v32;
  v35 = a4[1];
  v18 = v30 * *a4 - v35 * *this;
  v19 = v31 * *a4 - v35 * v32;
  if ((v34 - v19) * (v34 - v19) + (v33 - v18) * (v33 - v18) < 0.05)
  {
    goto LABEL_10;
  }

  v36 = a2->f64[1] - v19;
  *(this + 25) = a2->f64[0] - v18;
  *(this + 26) = v36;
  if (*(this + 6) * *(this + 6) * (v28 * a4[1] + v29 * *a4 + 1.0) < 2.0)
  {
    goto LABEL_10;
  }

  v38 = a2->f64[1] - v34;
  *v78 = a2->f64[0] - v33;
  *&v78[8] = v38;
  CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v78);
  if (*(this + 21) * a4[1] - *(this + 22) * *a4 >= 0.0)
  {
    _Q0 = *(this + 152);
    _D1 = *a3;
    __asm { FMLA            D3, D1, V0.D[1] }

    if (fabs(_D3) >= 0.0001)
    {
      v72 = a2->f64[1];
      v73.f64[0] = a2->f64[0] - v33;
      v73.f64[1] = v72 - v34;
      *&v78[8] = vaddq_f64(v73, vmulq_n_f64(_Q0, ((a2->f64[0] - v18 - v73.f64[0]) * -a3[1] + _D1 * (v72 - v19 - (v72 - v34))) / _D3));
      v78[0] = 1;
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v78[8]);
      _Q0 = *(this + 152);
    }

    if (sqrt(COERCE_DOUBLE(*&vmulq_f64(_Q0, _Q0).f64[1]) + _Q0.f64[0] * _Q0.f64[0]) < sqrt(v34 * v34 + v33 * v33) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
    {
      v74 = *(this + 9);
      v77 = *a2;
      if (v74)
      {
        (*(v74 + 24))(*(v74 + 8), 1, &v77, *(v74 + 48));
      }
    }

    goto LABEL_40;
  }

  if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v34 * v34 + v33 * v33) || (_D0 = *a3, v40 = a3[1], sqrt(v40 * v40 + _D0 * _D0) < sqrt(v19 * v19 + v18 * v18)))
  {
    CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
    _D0 = *a3;
    v40 = a3[1];
  }

  _Q1 = *(this + 152);
  v42 = -v40;
  __asm { FMLA            D3, D0, V1.D[1] }

  if (fabs(_D3) >= 0.0001)
  {
    v48 = a2->f64[1];
    v49.f64[0] = v33 + a2->f64[0];
    v49.f64[1] = v34 + v48;
    v50 = vaddq_f64(v49, vmulq_n_f64(_Q1, ((v18 + a2->f64[0] - v49.f64[0]) * v42 + _D0 * (v19 + v48 - (v34 + v48))) / _D3));
    v51 = *(this + 9);
    goto LABEL_32;
  }

LABEL_40:
  v75 = v19 + a2->f64[1];
  v76 = *(this + 9);
  *v78 = v18 + a2->f64[0];
  *&v78[8] = v75;
  if (v76)
  {
    (*(v76 + 24))(*(v76 + 8), 1, v78, *(v76 + 48));
  }
}

void CG::stroker::add_bevel_join(uint64_t a1, double *a2, double *a3, double *a4)
{
  v5 = *(a1 + 168);
  v4 = *(a1 + 176);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v5 * v6 - v4 * *a1;
  v10 = v5 * v7 - v4 * v8;
  v11 = a4[1];
  v12 = v6 * *a4 - v11 * *a1;
  v13 = v7 * *a4 - v11 * v8;
  if ((v10 - v13) * (v10 - v13) + (v9 - v12) * (v9 - v12) >= *(a1 + 64) * *(a1 + 64))
  {
    v18 = a2[1] - v13;
    *(a1 + 200) = *a2 - v12;
    *(a1 + 208) = v18;
    v19 = a2[1] - v10;
    *&v23 = *a2 - v9;
    *(&v23 + 1) = v19;
    CG::stroker::push_opposite_element(a1, kCGPathElementAddLineToPoint, &v23);
    if (sqrt(*(a1 + 160) * *(a1 + 160) + *(a1 + 152) * *(a1 + 152)) < sqrt(v10 * v10 + v9 * v9) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v13 * v13 + v12 * v12))
    {
      if (*(a1 + 168) * a4[1] - *(a1 + 176) * *a4 >= 0.0)
      {
        v20 = *(a1 + 72);
        v23 = *a2;
        if (v20)
        {
          (*(v20 + 24))(*(v20 + 8), 1, &v23, *(v20 + 48));
        }
      }

      else
      {
        CG::stroker::push_opposite_element(a1, kCGPathElementAddLineToPoint, a2);
      }
    }

    v21 = v13 + a2[1];
    v22 = *(a1 + 72);
    *&v23 = v12 + *a2;
    *(&v23 + 1) = v21;
    if (v22)
    {
      (*(v22 + 24))(*(v22 + 8), 1, &v23, *(v22 + 48));
    }
  }
}

BOOL CG::stroker::add_line_segment(CG::stroker *this, float64x2_t *a2, const Point *a3)
{
  v4 = vsubq_f64(*&a3->v, *a2);
  v31 = v4;
  v5 = vmuld_lane_f64(v4.f64[1], v4, 1) + v4.f64[0] * v4.f64[0];
  if (v5 <= 0.00000001)
  {
    if (*(this + 20) == 2)
    {
      *(this + 20) = 3;
    }
  }

  else
  {
    v8 = *this;
    v9 = *(this + 1);
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (*this * v10 - v9 * v11 >= 0.0)
    {
      v14 = -v9;
      v15 = -v11;
      v12 = *(this + 3);
      v13 = *this;
    }

    else
    {
      v12 = -v10;
      v13 = -v8;
      v14 = *(this + 1);
      v15 = *(this + 2);
    }

    v16 = v4.f64[1] * v15 + v4.f64[0] * v12;
    v17 = v4.f64[1] * v13 + v4.f64[0] * v14;
    if (v16 != 0.0 || v17 != 0.0)
    {
      v18 = sqrt(v17 * v17 + v16 * v16);
      v16 = v16 / v18;
      v17 = v17 / v18;
    }

    *&v30 = v16;
    *(&v30 + 1) = v17;
    v19 = v11 * v16 - v17 * v8;
    v20 = v10 * v16 - v17 * v9;
    if (*(this + 20) == 4)
    {
      CG::stroker::add_join(this, a2, v31.f64, &v30);
      v21 = v30;
      *(this + 152) = v31;
      *(this + 168) = v21;
    }

    else
    {
      *(this + 20) = 4;
      v22 = v30;
      v23 = v31;
      *(this + 152) = v31;
      *(this + 104) = v23;
      *(this + 168) = v22;
      *(this + 120) = v22;
      v23.f64[0] = v20 + a2->f64[1];
      v24 = *(this + 9);
      *&v32[0].v = v19 + a2->f64[0];
      v33 = v23.f64[0];
      if (v24)
      {
        (*(v24 + 24))(*(v24 + 8), 0, v32, *(v24 + 48));
      }
    }

    v25 = a2->f64[1] - v20;
    *&v32[0].v = a2->f64[0] - v19;
    v33 = v25;
    CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v32);
    v26 = *&a3->v;
    v27 = *&a3[2].v;
    v28 = *(this + 9);
    *&v32[0].v = v19 + *&a3->v;
    v33 = v20 + v27;
    if (v28)
    {
      (*(v28 + 24))(*(v28 + 8), 1, v32, *(v28 + 48));
      v26 = *&a3->v;
      v27 = *&a3[2].v;
    }

    *(this + 25) = v26 - v19;
    *(this + 26) = v27 - v20;
  }

  return v5 > 0.00000001;
}

void *CG::stroker::unroll_path(void *this)
{
  v1 = this;
  v10 = *MEMORY[0x1E69E9840];
  v2 = this[27];
  for (i = this[28]; i != v2; i -= 24)
  {
    v4 = *(i - 24);
    if (v4 == 3)
    {
      v6 = v1[9];
      if (v6)
      {
        v7 = *(i - 40);
        v8 = *(i - 16);
        v9[0] = *(i - 64);
        v9[1] = v7;
        v9[2] = v8;
        this = (*(v6 + 24))(*(v6 + 8), 3, v9, *(v6 + 48));
      }

      i -= 48;
    }

    else if (v4 == 1)
    {
      v5 = v1[9];
      v9[0] = *(i - 16);
      if (v5)
      {
        this = (*(v5 + 24))(*(v5 + 8), 1, v9, *(v5 + 48));
      }
    }

    v2 = v1[27];
  }

  v1[28] = v2;
  return this;
}

void CGContextStrokeRect(CGContextRef c, CGRect rect)
{
  if (!c)
  {
    v22 = 0;
LABEL_31:

    handle_invalid_context("CGContextStrokeRect", v22, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v22 = c;
    goto LABEL_31;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    v18 = *(c + 21);
    if (v18)
    {
      CFRelease(v18);
      *(c + 21) = 0;
    }

    v19 = *(*(*(c + 12) + 128) + 8);
    if (v19 > 0.0 || v19 == -1.0905473e16)
    {
      v20 = *(c + 5);
      if (v20)
      {
        v21 = *(v20 + 64);
        if (v21)
        {
          if (v21() != 1006)
          {
            return;
          }

          x = rect.origin.x;
          y = rect.origin.y;
          width = rect.size.width;
          height = rect.size.height;
        }

        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        CGContextAddRect(c, v25);
        CGContextDrawPath(c, kCGPathStroke);
      }
    }
  }
}

void ripc_GetRenderStroke(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v10[2] = a3[2];
  *(a2 + 48) = CGGStateGetAdjustedLineWidth(a1, v10);
  v8 = *(a1 + 128);
  *(a2 + 56) = *(v8 + 2);
  *(a2 + 60) = *(v8 + 3);
  *(a2 + 64) = *(v8 + 16);
  v9 = *(v8 + 32);
  if (v9)
  {
    *(a2 + 80) = *(v9 + 8);
    *(a2 + 88) = *(v9 + 16);
    v9 += 24;
  }

  *(a2 + 72) = v9;
}

void ripr_stroke_acquire(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7)
{
  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = (a2 + 24);
    v8 = *(a1 + 52);
    if (v8 == 1.0)
    {
      *v7 = *(a1 + 80);
      v10 = *(a1 + 96);
    }

    else
    {
      v9 = 1.0 / v8;
      *v7 = vmulq_n_f64(*(a1 + 80), v9);
      v10 = vmulq_n_f64(*(a1 + 96), v9);
    }

    *(a2 + 40) = v10;
  }

  *(a2 + 16) = v7;
  v11 = *(a1 + 32);
  if (!v11)
  {
    *(a1 + 112) = 0;
    goto LABEL_32;
  }

  v12 = *(a3 + 48);
  if (v12 >= 0.0)
  {
    v14 = *(a3 + 16);
    v15 = vcvt_hight_f32_f64(vcvt_f32_f64(*a3), v14);
    v14.i32[0] = *(a1 + 52);
    a7.i32[0] = 1.0;
    _Q2 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v14, a7)), 0), vmulq_n_f32(v15, v14.f32[0]), v15);
    *v14.f32 = vceqz_f32(vext_s8(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL), 4uLL));
    if (v14.i32[0] & v14.i32[1])
    {
      v17 = fabsf(*_Q2.i32);
      v18 = fabsf(*&_Q2.i32[3]);
    }

    else
    {
      if (*_Q2.i32 != 0.0 || *&_Q2.i32[3] != 0.0)
      {
        v19 = (*&_Q2.i32[1] * *&_Q2.i32[1]) + (*_Q2.i32 * *_Q2.i32);
        _S6 = _Q2.i32[2];
        __asm
        {
          FMLA            S4, S6, V2.S[2]
          FMLA            S3, S2, V2.S[2]
        }

        if (v19 < (_S4 * 1.002) && (_S3 * _S3) < ((v19 * _S4) * 0.0001))
        {
          v13 = v19 > (_S4 * 0.998);
          v27 = sqrtf(v19) * v12;
          if (v19 > (_S4 * 0.998))
          {
            v12 = v27;
          }
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_25;
      }

      v17 = fabsf(*&_Q2.i32[1]);
      v18 = fabsf(*&_Q2.i32[2]);
    }

    if (v17 == v18)
    {
      v12 = v17 * v12;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
    v12 = 1.0;
  }

LABEL_25:
  if (v12 > 1.0)
  {
    v13 = 0;
  }

  *(a1 + 112) = v13;
  if (v13)
  {
    v28 = *(a3 + 56);
    *(v11 + 236) = v12;
    *(v11 + 240) = 0;
    if (v28 == 1)
    {
      v29 = 2;
    }

    else
    {
      v29 = v28 == 2;
    }

    *(v11 + 244) = v29;
    operator new();
  }

LABEL_32:
  operator new();
}

void ripr_stroke_iterate(uint64_t a1, int a2, double *a3, double a4, double a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v22 = *a3;
        *&v22 = *a3;
        v23 = a3[1];
        a6.f64[0] = a3[2];
        *a6.f64 = a6.f64[0];
        v24 = a3[3];

        aa_quadto(a1, *&v22, v23, a6, v24);
        break;
      case 3:
        v13 = *a3;
        v13.f32[0] = *a3;
        v14 = a3[1];
        v15 = a3[2];
        a7.f64[0] = a3[3];
        *&v15 = v15;
        *a7.f64 = a7.f64[0];
        v16 = a3[4];
        *&v16 = v16;
        v17 = a3[5];

        aa_cubeto(a1, v13, v14, *&v15, a7, *&v16, v17);
        break;
      case 4:

        aa_close(a1);
        break;
      default:
        goto LABEL_26;
    }
  }

  else if (a2 == -3)
  {
    v18 = *a3;
    v18.f32[0] = *a3;
    v19 = a3[1];
    v20 = a3[2];
    v21 = a3[3];

    aa_rectat(a1, v18, v19, v20, v21, a8);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *a3;
        v9.f32[0] = *a3;
        v10 = a3[1];

        aa_lineto(a1, v9, v10);
        return;
      }

LABEL_26:
      abort();
    }

    v11 = *a3;
    v12 = a3[1];

    aa_moveto(a1, v11, v12);
  }
}

double CGGStateGetAdjustedLineWidth(uint64_t a1, double *a2)
{
  v2 = *(a1 + 128);
  v3 = *(v2 + 24);
  if (v3 == 0.0)
  {
    return *(v2 + 8);
  }

  v5 = a2[1] * a2[1] + *a2 * *a2;
  result = *(v2 + 8);
  if (v5 <= a2[3] * a2[3] + a2[2] * a2[2])
  {
    v5 = a2[3] * a2[3] + a2[2] * a2[2];
  }

  if (result * result * v5 < v3 * v3)
  {
    return v3 / sqrt(v5);
  }

  return result;
}

uint64_t CGStyleCreateShadowWithColor(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  components[4] = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  style_with_type = create_style_with_type(1, a2, a3, a4, a5, a6, a7, a8);
  *(style_with_type + 32) = 0;
  v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(style_with_type + 40) = vmaxnmq_f64(vminnmq_f64(*(a1 + 8), v12), vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL));
  v13 = vmaxnmq_f64(vminnmq_f64(*(a1 + 24), xmmword_18439CE00), 0);
  *(style_with_type + 56) = v13;
  *(style_with_type + 72) = vmaxnmq_f64(vminnmq_f64(*(a1 + 40), v12), 0);
  if (a2)
  {
    CFRetain(a2);
    *(style_with_type + 24) = a2;
    if ((a2 & 0x8000000000000000) != 0)
    {
      Alpha = CGTaggedColorGetAlpha(a2, v14, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      Alpha = *(a2 + 8 * *(a2 + 56) + 64);
    }

    *(style_with_type + 56) = 1.0 - Alpha;
  }

  else
  {
    memset(components, 0, 24);
    components[3] = 1.0 - v13.f64[0];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *(style_with_type + 24) = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
  }

  return style_with_type;
}

uint64_t create_style_with_type(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 1) > 3)
  {
    v9 = 184;
  }

  else
  {
    v9 = qword_1844F1C18[a1 - 1];
  }

  if (kCGContextStyleContentEnd_block_invoke_once != -1)
  {
    dispatch_once(&kCGContextStyleContentEnd_block_invoke_once, &__block_literal_global_25_16445);
  }

  result = CGTypeCreateInstance(CGStyleGetTypeID_style_type_id, v9, a3, a4, a5, a6, a7, a8);
  *(result + 16) = atomic_fetch_add_explicit(identifier_16446, 1u, memory_order_relaxed) + 1;
  *(result + 20) = a1;
  return result;
}

uint64_t rips_Create(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a1.n128_u64[0];
  v4 = *(a3 + 20);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (RIPStyleGaussianBlur_predicate != -1)
      {
        dispatch_once(&RIPStyleGaussianBlur_predicate, &__block_literal_global_19457);
      }

      v5 = &RIPStyleGaussianBlur_rips_gb_cls;
      goto LABEL_20;
    }

    if (v4 == 4)
    {
      if (RIPStyleColorMatrix_predicate != -1)
      {
        dispatch_once(&RIPStyleColorMatrix_predicate, &__block_literal_global_18543);
      }

      v5 = &RIPStyleColorMatrix_rips_cm_cls;
      goto LABEL_20;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (RIPStyleShadow_predicate != -1)
    {
      dispatch_once(&RIPStyleShadow_predicate, &__block_literal_global_8365);
    }

    v5 = &RIPStyleShadow_rips_s_cls;
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    return 0;
  }

  if (RIPStyleFocusRing_predicate != -1)
  {
    dispatch_once(&RIPStyleFocusRing_predicate, &__block_literal_global_10277);
  }

  v5 = &RIPStyleFocusRing_rips_f_cls;
LABEL_20:
  v7 = *(v5 + 4);
  a1.n128_u64[0] = v3;

  return v7(a1);
}

double __RIPStyleShadow_block_invoke()
{
  rips_s_cs = CGColorSpaceCreateDeviceGray();
  if (rips_s_cs)
  {
    *algn_1ED4E17F8 = *&off_1EF238420;
    result = *&xmmword_1EF238450;
    *&qword_1ED4E1838 = *off_1EF238460;
    *&RIPStyleShadow_rips_s_cls = rips_s_super;
    *(&RIPStyleShadow_rips_s_cls + 1) = rips_s_size;
    qword_1ED4E1800 = rips_s_release;
    *&xmmword_1ED4E1808 = rips_s_Create;
    *(&xmmword_1ED4E1808 + 1) = rips_s_Growth;
    qword_1ED4E1818 = rips_s_ColorSpace;
    qword_1ED4E1820 = rips_s_BltShape;
    *&xmmword_1ED4E1828 = rips_s_BltGlyph;
    *(&xmmword_1ED4E1828 + 1) = rips_s_BltImage;
    qword_1ED4E1838 = rips_s_BltShade;
  }

  return result;
}

float *rips_s_Create(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v8 = (*(a1 + 8))();
  v9 = malloc_type_calloc(1uLL, v8, 0x2EACA75AuLL);
  v10 = v9;
  if (v9)
  {
    *v9 = a1;
    *(v9 + 1) = 1;
    *(v9 + 10) = CGGStateCreateCopy(a4);
    if (a2)
    {
      v11 = (a2 + 32);
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = *(a2 + 24);
      if (v12)
      {
        if (v12 < 1 || !*(v12 + 32))
        {
          CFRetain(v12);
          *(v10 + 11) = v12;
        }
      }
    }

    v13 = v11[3];
    v14 = 1.0;
    v15 = 1.0 - v13;
    v10[30] = v15;
    v10[32] = 0.0;
    v16 = v11[6];
    v10[33] = v16;
    if (a3)
    {
      v14 = sqrt(fabs(a3->f64[0] * a3[1].f64[1] - a3->f64[1] * a3[1].f64[0]));
    }

    else
    {
      a3 = &CGAffineTransformIdentity;
    }

    v17 = v14 * v11[5];
    if (v17 <= 4194300.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 4194300.0;
    }

    v10[31] = v18;
    if (v13 <= 0.99609375)
    {
      v19 = v11[2] * 3.14159265 / 180.0;
      v20 = v11[1] * 3.14159265 / 180.0;
      v21 = 0.0;
      if (v20 <= 1.569051)
      {
        if (v20 >= 0.00174532925)
        {
          v22 = v11[4];
          v21 = v22 / tan(v20);
        }

        else
        {
          v21 = 1.79769313e308;
        }
      }

      v23 = __sincos_stret(v19);
      *(v10 + 3) = 1777;
      v24 = vmlaq_n_f64(vmulq_n_f64(a3[1], -(v21 * v23.__sinval)), *a3, -(v21 * v23.__cosval));
      v25 = vdupq_n_s64(0xC1CFFFFFFF800000);
      v26 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
      *&v24.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vbslq_s8(vcgtq_f64(v25, v24), v25, vbslq_s8(vcgtq_f64(v24, v26), v26, v24)))));
      *(v10 + 12) = *&v24.f64[0];
      *&v24.f64[0] = vadd_s32(vdup_n_s32(vcvtms_s32_f32(v18 + 0.5) + 1), vabs_s32(*&v24.f64[0]));
      *(v10 + 13) = vneg_s32(*&v24.f64[0]);
      *(v10 + 14) = vadd_s32(*&v24.f64[0], *&v24.f64[0]);
    }
  }

  return v10;
}

BOOL rips_s_Growth(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    *a2 = *(a1 + 104);
  }

  return v2 != 0;
}

uint64_t rips_s_BltShapeShadow(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = result;
  v77 = *MEMORY[0x1E69E9840];
  v71 = 0uLL;
  v70[0] = 0;
  v70[1] = 0;
  v15 = *(a7 + 48);
  v16 = *(result + 120) * v15;
  if (a3)
  {
    v71 = vaddq_s32(*(result + 104), *(a4 + 12));
    result = CGSBoundsIntersection((a3 + 12), v71.i32, v70);
    if (!result)
    {
      return result;
    }
  }

  if (v16 <= 0.0039062)
  {
    return result;
  }

  if (a5)
  {
    v17 = *a5;
    if (*a5)
    {
      while (v17 != RIPLayer_ripl_class)
      {
        if (*v17)
        {
          v17 = (*v17)();
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      if (*(a5 + 64))
      {
        v18 = *(a7 + 16);
        v72 = *a7;
        v73 = v18;
        v19 = *(a7 + 48);
        v74 = *(a7 + 32);
        v75 = v19;
        v20 = *(a7 + 64);
        LODWORD(v72) = 1;
        v76 = v20;
        *&v75 = 0x3FF0000000000000;
        v21 = RIPLayerCreate(*a4, a4 + 12, 0, 0, *(a2 + 52), a6, a7, a8);
        if (v21)
        {
          v22 = v21;
          v23 = RIPLayerConvertLayer(*a4, *(a5 + 28) & 8, a5, *(a2 + 52));
          if (v23)
          {
            v25 = v23;
            if (RIPLayerBltShape(v22, 0, 0, a4, v23, a6, &v72, v24))
            {
              v26 = *(v14 + 124);
              (*(*v25 + 24))(v25);
              if (v26 < 0.5)
              {
                v15 = 0.0039062;
                goto LABEL_23;
              }

              v66 = RIPLayerGaussianBlur(v22, *(a2 + 52), v27, v28, v29, v30, v31, v32, *(v14 + 124));
              (*(*v22 + 24))(v22);
              v15 = 0.0039062;
              v22 = v66;
              if (v66)
              {
LABEL_23:
                v34 = v22 + 3;
                v35 = v22[3];
                v36 = *(v14 + 96);
                if (v35 < 0)
                {
                  if ((0x80000000 - v35) > v36)
                  {
                    return (*(*v22 + 24))(v22, v34);
                  }
                }

                else if ((v35 ^ 0x7FFFFFFF) < v36)
                {
                  return (*(*v22 + 24))(v22, v34);
                }

                v37 = v22[4];
                v38 = *(v14 + 100);
                if ((v37 & 0x80000000) == 0)
                {
                  if ((v37 ^ 0x7FFFFFFF) < v38)
                  {
                    return (*(*v22 + 24))(v22, v34);
                  }

LABEL_31:
                  v22[3] = v36 + v35;
                  v22[4] = v38 + v37;
                  if (a3)
                  {
                    v39 = (a3 + 12);
                  }

                  else
                  {
                    v39 = v22 + 3;
                  }

                  if (!CGSBoundsIntersection(v39, v34, &v71))
                  {
                    return (*(*v22 + 24))(v22, v34);
                  }

                  v76 = 0;
                  v74 = 0u;
                  v75 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  if (*(v14 + 128) != 0.0 || *(v14 + 132) != 1.0)
                  {
                    RIPLayerResample(v22, (v14 + 128), v40, v41, v42, v43, v44, v45);
                  }

                  if (v15 >= 0.99609 && (*(v14 + 13) & 0x10) == 0 && *a7 <= 2 && (!a3 || !*(a3 + 56)))
                  {
                    RIPLayerMask(v22, a4, v40, v41, v42, v43, v44, v45);
                  }

                  v46 = *(v14 + 88);
                  if (!v46)
                  {
                    if (default_shadow_color_predicate != -1)
                    {
                      dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
                    }

                    v46 = default_shadow_color_shadow_color;
                  }

                  Cache = CGColorTransformGetCache(*(a7 + 16));
                  if (Cache)
                  {
                    v49 = Cache[2];
                    if (v49)
                    {
                      v50 = *(*(v49 + 24) + 48);
                      if (v50 >> 61)
                      {
                        v69 = &v68;
                        MEMORY[0x1EEE9AC00](Cache, v48);
                        v51 = &v67;
                        v52 = 0;
LABEL_59:
                        v55 = (*(*v14 + 88))(v14);
                        if (RIPColorConvertColorComponents(*(a7 + 16), v52, v46, v55))
                        {
                          RIPColorCreateWithColor(*(a7 + 24), v52, v50, 1.0);
                          v63 = v62;
                        }

                        else
                        {
                          v63 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
                          *v63 = &ripc_class;
                          v63[1] = 0;
                          v63[2] = 0;
                          v63[3] = 0;
                          *(v63 + 39) = 1065353216;
                        }

                        if (v52 != v51)
                        {
                          free(v52);
                        }

                        v64 = *(a7 + 48);
                        v74 = *(a7 + 32);
                        v75 = v64;
                        v76 = *(a7 + 64);
                        v65 = *(a7 + 16);
                        v72 = *a7;
                        v73 = v65;
                        *&v75 = v16;
                        if ((*(v14 + 13) & 0x10) != 0)
                        {
                          RIPLayerDefine(a2, &v71, v56, v57, v58, v59, v60, v61);
                        }

                        RIPLayerBltShape(a2, a3, v71.i32, v22, v63, a6, &v72, v61);
                        free(v63);
                        return (*(*v22 + 24))(v22, v34);
                      }

                      Cache = (8 * v50);
                    }

                    else
                    {
                      v50 = 0;
                      Cache = 0;
                    }
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v69 = &v68;
                  v53 = MEMORY[0x1EEE9AC00](Cache, v48);
                  v51 = (&v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
                  if (v50 <= 0x1FFFFFFFFFFFFFFELL)
                  {
                    v52 = (&v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (v50 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
                  {
                    v52 = malloc_type_malloc(v53, 0xC305E833uLL);
                  }

                  goto LABEL_59;
                }

                if ((0x80000000 - v37) <= v38)
                {
                  goto LABEL_31;
                }

                return (*(*v22 + 24))(v22, v34);
              }

              goto LABEL_19;
            }

            (*(*v25 + 24))(v25);
          }

          (*(*v22 + 24))(v22);
        }

        v15 = 0.0039062;
      }
    }
  }

LABEL_19:
  v33 = *(v14 + 124);
  if (v33 >= 0.5)
  {
    result = RIPLayerGaussianBlur(a4, *(a2 + 52), a3, a4, a5, a6, a7, a8, v33);
  }

  else
  {
    result = RIPLayerCreateWithLayer(*a4, (a4 + 12), a4, *(a2 + 52));
  }

  v22 = result;
  if (result)
  {
    goto LABEL_23;
  }

  return result;
}

char *RIPLayerGaussianBlur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  LODWORD(v9) = vcvtpd_s64_f64(fabs(a9));
  if (!*a1 || v9 > 0x7FFFFFF)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = (*v12 >> 8) & 0xF;
  if (v13 != 3 && v13 != 0)
  {
    return 0;
  }

  v15 = HIWORD(*v12) & 0x3F;
  if (v15 != 32 && v15 != 8)
  {
    return 0;
  }

  v21 = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
  v39 = *(a1 + 12);
  *&v39 = (v39 - v9) | ((DWORD1(v39) - v9) << 32);
  *(&v39 + 1) = (DWORD2(v39) + 2 * v9) | ((HIDWORD(v39) + 2 * v9) << 32);
  if (v12 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 17;
  }

  if (v12 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 32);
  }

  v24 = RIPLayerCreate(*a1, &v39, v22, v23, a2, v18, v19, v20);
  if (v24)
  {
    if (v9 < 9)
    {
      v26 = v40;
      if ((v9 & 0x80000000) != 0)
      {
LABEL_35:
        if ((RIPLayerSymmetricConvolve(v24, a1, v26, v9) & 1) == 0)
        {
          (*(*v24 + 24))(v24);
          v24 = 0;
        }

        if (v26 != v40)
        {
          free(v26);
        }

        return v24;
      }
    }

    else
    {
      v26 = malloc_type_malloc(8 * (v9 + 1), 0x100004000313F17uLL);
    }

    v27 = 0;
    v28 = vcvtd_n_f64_u32(v9, 1uLL);
    v29 = 1.0 / (v28 * 2.50662827);
    v30 = v28 * (v28 + v28);
    v31 = xmmword_18439C670;
    v34 = vdupq_n_s64(v9);
    v35 = vdupq_n_s64(2uLL);
    do
    {
      v38 = v31;
      v37 = vmovn_s64(vcgeq_u64(v34, v31));
      v36 = exp(-(v27 * v27) / v30);
      v32 = exp(-((v27 + 1) * (v27 + 1)) / v30);
      v33.f64[0] = v36;
      v33.f64[1] = v32;
      if (v37.i8[0])
      {
        v26[v27] = v29 * v36;
      }

      if (v37.i8[4])
      {
        v26[v27 + 1] = vmuld_lane_f64(v29, v33, 1);
      }

      v27 += 2;
      v31 = vaddq_s64(v38, v35);
    }

    while ((v9 & 0xFFFFFFFE) + 2 != v27);
    goto LABEL_35;
  }

  return v24;
}

uint64_t symmetric_convolve(unsigned int a1, unsigned int a2, void *a3, unsigned int a4, uint64_t a5, int a6, double *a7, unsigned int a8, __n128 a9, unsigned int a10)
{
  v87 = a5;
  v90 = a4;
  v89 = a3;
  v99 = *MEMORY[0x1E69E9840];
  if (a10 <= 7)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v85 = (2 * a8) | 1;
  v16 = MEMORY[0x1EEE9AC00](v85 << v15, a9);
  v18 = (&v79 - v17);
  v19 = (&v79 - v17);
  if (v16 >= 0x201)
  {
    v19 = malloc_type_malloc(v16, 0xE835ED42uLL);
  }

  v20 = 2 * a8;
  v21 = *a7;
  v91 = a8;
  v86 = a6;
  if (a10 > 4)
  {
    v34 = v21;
    v19[a8] = v34;
    if (a8)
    {
      v35 = a8 + 1;
      if (a8 + 1 > 2)
      {
        v36 = a8 + 1;
      }

      else
      {
        v36 = 2;
      }

      v37 = v36 - 1;
      v38 = a8 - 1;
      v39 = a7 + 1;
      do
      {
        v40 = *v39++;
        v41 = v40;
        v19[v35++] = v41;
        v19[v38--] = v41;
        --v37;
      }

      while (v37);
    }

    v92 = 0;
    v93 = v19;
  }

  else if (a8)
  {
    v22 = a8 + 1;
    if (a8 + 1 > 2)
    {
      v23 = a8 + 1;
    }

    else
    {
      v23 = 2;
    }

    v24 = v23 - 1;
    v25 = a7 + 1;
    v26 = v24;
    v27 = v21;
    do
    {
      v28 = *v25++;
      v27 = v27 + v28 * 2.0;
      --v26;
    }

    while (v26);
    v29 = 16384.0 / v27;
    *(v19 + a8) = (v21 * v29);
    v30 = a8 - 1;
    v31 = a7 + 1;
    do
    {
      v32 = *v31++;
      v33 = (v29 * v32);
      *(v19 + v22) = v33;
      *(v19 + v30--) = v33;
      ++v22;
      --v24;
    }

    while (v24);
    v92 = v19;
    v93 = 0;
  }

  else
  {
    v92 = v19;
    v93 = 0;
    *v19 = (v21 * (16384.0 / v21));
  }

  v88 = a2;
  v42 = v20 + a2;
  v83 = 2 * a8;
  v84 = a1;
  v43 = v20 + a1;
  v44 = (v43 + v20);
  v45 = malloc_type_calloc(1uLL, (v44 * a10 + 15) & 0xFFFFFFF0, 0xDAFE1B2uLL);
  v46 = malloc_type_malloc((v43 * a10 * v42 + 15) & 0xFFFFFFF0, 0xF1EF6ABEuLL);
  v47 = v46;
  if (v45)
  {
    v48 = v46 == 0;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    if (v45)
    {
      free(v45);
    }

    if (v47)
    {
      free(v47);
    }

    return 0;
  }

  else
  {
    v82 = v18;
    v80 = v44 * a10;
    v50 = v91;
    v51 = v45;
    v52 = a10 * v91 * v43;
    bzero(v46, v52);
    v79 = v42;
    bzero(&v47[v43 * a10 * (v42 - v50)], v52);
    v95 = v51;
    src.data = v51;
    src.height = 1;
    src.width = v44;
    src.rowBytes = v80;
    v80 = v47;
    dest.data = &v47[v52];
    dest.height = 1;
    dest.width = v43;
    dest.rowBytes = v43 * a10;
    v81 = a10;
    v96 = v43;
    rowBytes = dest.rowBytes;
    if (a10 == 1)
    {
      v53 = v85;
      v54 = v86;
      v55 = v87;
      v56 = v92;
      if (v88)
      {
        v57 = 0;
        v58 = &v95[v83];
        v59 = v84;
        v60 = v91;
        v61 = v88;
        do
        {
          memcpy(v58, (v55 + v57), v59);
          vImageConvolve_Planar8(&src, &dest, 0, v60, 0, v56, 1u, v53, 0x4000, 0, 0x14u);
          dest.data = dest.data + v96;
          v57 += v54;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      v62 = v87;
      v53 = v85;
      if (a10 == 4)
      {
        v69 = v86;
        v70 = v92;
        if (v88)
        {
          v71 = 0;
          v72 = 8 * v91;
          v73 = 4 * v84;
          v74 = v91;
          v75 = v88;
          do
          {
            memcpy(&v95[v72], (v62 + v71), v73);
            vImageConvolve_ARGB8888(&src, &dest, 0, v74, 0, v70, 1u, v53, 0x4000, 0, 0x14u);
            dest.data = dest.data + rowBytes;
            v71 += v69;
            --v75;
          }

          while (v75);
        }
      }

      else
      {
        v63 = v86;
        if (a10 == 16 && v88)
        {
          v64 = 0;
          v65 = 32 * v91;
          v66 = 16 * v84;
          v67 = v91;
          v68 = v88;
          do
          {
            memcpy(&v95[v65], (v62 + v64), v66);
            vImageConvolve_ARGBFFFF(&src, &dest, 0, v67, 0, v93, 1u, v53, 0, 0x14u);
            dest.data = dest.data + rowBytes;
            v64 += v63;
            --v68;
          }

          while (v68);
        }
      }
    }

    v76 = v80;
    src.data = v80;
    src.height = v79;
    src.width = v96;
    src.rowBytes = rowBytes;
    dest.data = v89;
    dest.height = v79;
    dest.width = v96;
    dest.rowBytes = v90;
    if (v81 == 1)
    {
      vImageConvolve_Planar8(&src, &dest, 0, 0, 0, v92, v53, 1u, 0x4000, 0, 4u);
      v77 = v82;
      v78 = v95;
    }

    else
    {
      v77 = v82;
      v78 = v95;
      if (v81 == 16)
      {
        vImageConvolve_ARGBFFFF(&src, &dest, 0, 0, 0, v93, v53, 1u, 0, 4u);
      }

      else if (v81 == 4)
      {
        vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, v92, v53, 1u, 0x4000, 0, 4u);
      }
    }

    free(v78);
    free(v76);
    if (v19 != v77)
    {
      free(v19);
    }

    return 1;
  }
}

void *RIPLayerMask(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    if (*a2 && result != 0)
    {
      if (*result)
      {
        v11 = result[4];
        if (v11 == a2[4])
        {
          result = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
          if (v11 == result)
          {

            return ripl_Combine(v9, a2, -2);
          }
        }
      }
    }
  }

  return result;
}

void A8_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v133 = *(a1 + 4);
  v125 = *(a1 + 28);
  v8 = *(a1 + 40);
  v9 = *(a2 + 184);
  v10 = *(a1 + 136);
  v128 = a1;
  v129 = v10;
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v13 = *(a1 + 12);
  v14 = *(a1 + 16);
  v15 = *(a1 + 8);
  v130 = *(a2 + 16);
  v131 = v8;
  v16 = (v130 + 3) * v5;
  if (v16 > 65439)
  {
    v19 = malloc_type_calloc(1uLL, v16 + 96, 0xB43A8E49uLL);
    v18 = v19;
    v21 = v19;
    v22 = v128;
    v23 = v133;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    v21 = 0;
    v22 = v128;
    v23 = v133;
  }

  v123 = v21;
  LODWORD(v127) = a3;
  v132 = ((v9 * 255.0) + 0.5);
  v24 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v24 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v130)
  {
    v26 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v26 = 0;
  }

  v27 = v4;
  v28 = v25 + v26;
  *(a2 + 144) = v24;
  *(a2 + 152) = v25 + v26;
  *(a2 + 160) = v25;
  v29 = (v131 + v14 * v125 + v13);
  v124 = v27;
  v131 = v125 - v27;
  v30 = *(v22 + 104);
  v31 = *(v22 + 108);
  v32 = *(v22 + 2);
  if (v32 != 6 && v32 != 1)
  {
    if (!v129)
    {
      v129 = 0;
      v33 = 0;
      v36 = 0;
      v34 = 0;
      v38 = v127;
      goto LABEL_18;
    }

    shape_enum_clip_alloc(v19, v20, v129, 1, 1, 1, v30, v31, v23, v15);
    if (v39)
    {
      v33 = v39;
      v34 = 0;
      v40 = ((v130 * v5 + 15) & 0xFFFFFFF0);
      if (!v130)
      {
        v40 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      v129 = -v124;
      v36 = (v28 + v40 + 16);
      v38 = v127;
      goto LABEL_184;
    }

    goto LABEL_193;
  }

  if (!v129)
  {
    goto LABEL_193;
  }

  v33 = 0;
  v34 = 0;
  v35 = *(v22 + 124);
  v36 = v129 + v35 * v31 + v30;
  v37 = v124;
  v129 = (v35 - v124);
  v38 = v127;
  while (2)
  {
    v41 = v132 ^ 0xFF;
    v127 = (v23 - 1);
    v126 = -v37;
    v42 = v33;
    v130 = v38;
LABEL_20:
    v33 = v42;
    (*a2)(a2, v11, v12);
    if (*(a2 + 8) != *(a2 + 12))
    {
      _CGHandleAssert("A8_image_pixel", 3658, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_alpha/blt_alpha.cc", "", "Unimplemented", v43, v44, v45, v123);
    }

    v46 = *(a2 + 144);
    v47 = *(a2 + 160);
    if (v132 == 255)
    {
      v48 = v133;
    }

    else
    {
      v48 = v133;
      v49 = v133;
      v50 = *(a2 + 144);
      do
      {
        if (*v50)
        {
          *v47 -= (*v47 * v41 + ((*v47 * v41) >> 8) + 1) >> 8;
        }

        ++v50;
        ++v47;
        --v49;
      }

      while (v49);
      v47 += v126;
      v46 += v127 + v126 + 1;
    }

    switch(v38)
    {
      case 0u:
        v102 = v48;
        v103 = v36;
        do
        {
          v104 = *v46;
          if (*v46)
          {
            if (v36)
            {
              v104 = ((*v103 * v104 + ((*v103 * v104) >> 8) + 1) >> 8);
            }

            if (v104)
            {
              if (v104 == 255)
              {
                LOBYTE(v105) = 0;
              }

              else
              {
                v105 = *v29 - ((*v29 * v104 + ((*v29 * v104) >> 8) + 1) >> 8);
              }

              *v29 = v105;
            }
          }

          ++v46;
          v103 += v36 != 0;
          ++v29;
          --v102;
        }

        while (v102);
        v36 = v129 + v103;
        goto LABEL_181;
      case 1u:
        goto LABEL_54;
      case 2u:
        goto LABEL_30;
      case 3u:
        v93 = v48;
        v79 = v36;
        do
        {
          v94 = *v46;
          if (*v46)
          {
            if (v36)
            {
              v94 = ((*v79 * v94 + ((*v79 * v94) >> 8) + 1) >> 8);
            }

            if (v94)
            {
              if (v94 == 255)
              {
                v95 = *v47 - (((*v29 ^ 0xFF) * *v47 + (((*v29 ^ 0xFF) * *v47) >> 8) + 1) >> 8);
              }

              else
              {
                v96 = *v29;
                v97 = (v96 * v94 + ((v96 * v94) >> 8) + 1) >> 8;
                v95 = (v96 * (v94 ^ 0xFF) + v97 * *v47 + ((v96 * (v94 ^ 0xFF) + v97 * *v47) >> 8) + 1) >> 8;
              }

              *v29 = v95;
            }
          }

          ++v46;
          ++v47;
          v79 += v36 != 0;
          ++v29;
          --v93;
        }

        while (v93);
        goto LABEL_180;
      case 4u:
        v78 = v48;
        v79 = v36;
        do
        {
          v80 = *v46;
          if (*v46)
          {
            if (v36)
            {
              v80 = ((*v79 * v80 + ((*v79 * v80) >> 8) + 1) >> 8);
            }

            if (v80)
            {
              if (v80 == 255)
              {
                v81 = *v47 - ((*v29 * *v47 + ((*v29 * *v47) >> 8) + 1) >> 8);
              }

              else
              {
                v82 = *v29;
                v83 = ((v82 ^ 0xFF) * v80 + (((v82 ^ 0xFFu) * v80) >> 8) + 1) >> 8;
                v81 = (v82 * (v80 ^ 0xFF) + v83 * *v47 + ((v82 * (v80 ^ 0xFF) + v83 * *v47) >> 8) + 1) >> 8;
              }

              *v29 = v81;
            }
          }

          ++v46;
          ++v47;
          v79 += v36 != 0;
          ++v29;
          --v78;
        }

        while (v78);
        goto LABEL_180;
      case 5u:
        v73 = v36;
        v106 = v48;
        do
        {
          if (*v46 && (!v36 || *v73 * *v46 + ((*v73 * *v46) >> 8) + 1 >= 0x100))
          {
            *v29 = (255 * *v29 + ((255 * *v29) >> 8) + 1) >> 8;
          }

          ++v46;
          ++v47;
          v73 += v36 != 0;
          ++v29;
          --v106;
        }

        while (v106);
        goto LABEL_169;
      case 6u:
        v107 = v48;
        v79 = v36;
        do
        {
          v108 = *v46;
          if (!*v46)
          {
            goto LABEL_160;
          }

          if (v36)
          {
            v109 = *v79 * v108 + ((*v79 * v108) >> 8) + 1;
            if (v109 < 0x100)
            {
              goto LABEL_160;
            }

            v108 = BYTE1(v109);
          }

          v110 = *v29;
          if (v110 != 0xFF)
          {
            if (~v110 == 255)
            {
              v111 = *v47 - ((*v47 * (v108 ^ 0xFF) + ((*v47 * (v108 ^ 0xFFu)) >> 8) + 1) >> 8);
            }

            else
            {
              v112 = ((~v110 * v108 + ((~v110 * v108) >> 8) + 1) >> 8) * *v47;
              v111 = v110 + ((v112 + (v112 >> 8) + 1) >> 8);
            }

            *v29 = v111;
          }

LABEL_160:
          ++v46;
          ++v47;
          v79 += v36 != 0;
          ++v29;
          --v107;
        }

        while (v107);
LABEL_180:
        v36 = v129 + v79;
LABEL_181:
        v29 += v131;
LABEL_182:
        if (--v15)
        {
          v42 = 0;
          ++v34;
          v11 += *(a2 + 128);
          v12 += *(a2 + 136);
          if (v33)
          {
LABEL_184:
            v121 = (v36 - 16);
            while (1)
            {
              while (1)
              {
                v122 = *v121 - v34;
                if (*v121 <= v34)
                {
                  break;
                }

                v15 -= v122;
                if (v15 < 1)
                {
                  goto LABEL_192;
                }

                v11 += *(a2 + 128) * v122;
                v12 += *(a2 + 136) * v122;
                v29 += v125 * v122;
                v34 = *v121;
              }

              if (v34 < *(v36 - 3) + *v121)
              {
                break;
              }

              if (!shape_enum_clip_scan(v33, v36 - 4))
              {
                goto LABEL_192;
              }
            }

            v23 = v133;
LABEL_18:
            v37 = v124;
            continue;
          }

          goto LABEL_20;
        }

        if (v33)
        {
LABEL_192:
          free(v33);
        }

LABEL_193:
        if (v123)
        {
          free(v123);
        }

        return;
      case 7u:
        v98 = v48;
        v79 = v36;
        do
        {
          v99 = *v46;
          if (*v46)
          {
            if (v36)
            {
              v99 = ((*v79 * v99 + ((*v79 * v99) >> 8) + 1) >> 8);
            }

            if (v99)
            {
              if (v99 == 255)
              {
                v100 = *v29 - (((*v47 ^ 0xFF) * *v29 + (((*v47 ^ 0xFF) * *v29) >> 8) + 1) >> 8);
              }

              else
              {
                v101 = *v47 * v99 + ((*v47 * v99) >> 8) + 1;
                v100 = (((v99 ^ 0xFF) + (v101 >> 8)) * *v29 + ((((v99 ^ 0xFF) + (v101 >> 8)) * *v29) >> 8) + 1) >> 8;
              }

              *v29 = v100;
            }
          }

          ++v46;
          ++v47;
          v79 += v36 != 0;
          ++v29;
          --v98;
        }

        while (v98);
        goto LABEL_180;
      case 8u:
        v117 = v48;
        v79 = v36;
        do
        {
          v118 = *v46;
          if (*v46)
          {
            if (v36)
            {
              v118 = ((*v79 * v118 + ((*v79 * v118) >> 8) + 1) >> 8);
            }

            if (v118)
            {
              if (v118 == 255)
              {
                v119 = *v29 - ((*v47 * *v29 + ((*v47 * *v29) >> 8) + 1) >> 8);
              }

              else
              {
                v120 = (*v47 ^ 0xFF) * v118 + (((*v47 ^ 0xFFu) * v118) >> 8) + 1;
                v119 = (((v118 ^ 0xFF) + (v120 >> 8)) * *v29 + ((((v118 ^ 0xFF) + (v120 >> 8)) * *v29) >> 8) + 1) >> 8;
              }

              *v29 = v119;
            }
          }

          ++v46;
          ++v47;
          v79 += v36 != 0;
          ++v29;
          --v117;
        }

        while (v117);
        goto LABEL_180;
      case 9u:
        v73 = v36;
        v88 = v48;
        while (1)
        {
          v89 = *v46;
          if (*v46)
          {
            if (!v36)
            {
              goto LABEL_107;
            }

            v90 = *v73 * v89 + ((*v73 * v89) >> 8) + 1;
            if (v90 >= 0x100)
            {
              break;
            }
          }

LABEL_108:
          ++v46;
          ++v47;
          v73 += v36 != 0;
          ++v29;
          if (!--v88)
          {
            goto LABEL_169;
          }
        }

        v89 = v90 >> 8;
LABEL_107:
        v91 = ~v89;
        v92 = *v47 - ((*v47 * ~v89 + ((*v47 * ~v89) >> 8) + 1) >> 8);
        *v29 = (v92 * (*v29 ^ 0xFF) + (v92 + v91) * *v29 + ((v92 * (*v29 ^ 0xFF) + (v92 + v91) * *v29) >> 8) + 1) >> 8;
        goto LABEL_108;
      case 0xAu:
        v73 = v36;
        v113 = v48;
        while (1)
        {
          v114 = *v46;
          if (*v46)
          {
            if (!v36)
            {
              goto LABEL_167;
            }

            v115 = *v73 * v114 + ((*v73 * v114) >> 8) + 1;
            if (v115 >= 0x100)
            {
              break;
            }
          }

LABEL_168:
          ++v46;
          ++v47;
          v73 += v36 != 0;
          ++v29;
          if (!--v113)
          {
            goto LABEL_169;
          }
        }

        v114 = BYTE1(v115);
LABEL_167:
        v116 = *v47 - ((*v47 * (v114 ^ 0xFF) + ((*v47 * (v114 ^ 0xFFu)) >> 8) + 1) >> 8);
        *v29 = (v116 * (*v29 ^ 0xFF) + ~v116 * *v29 + ((v116 * (*v29 ^ 0xFF) + ~v116 * *v29) >> 8) + 1) >> 8;
        goto LABEL_168;
      case 0xBu:
        v73 = v36;
        v74 = v48;
        while (1)
        {
          v75 = *v46;
          if (*v46)
          {
            if (!v36)
            {
              goto LABEL_76;
            }

            v76 = *v73 * v75 + ((*v73 * v75) >> 8) + 1;
            if (v76 >= 0x100)
            {
              break;
            }
          }

LABEL_79:
          ++v46;
          ++v47;
          v73 += v36 != 0;
          ++v29;
          if (!--v74)
          {
            goto LABEL_169;
          }
        }

        v75 = BYTE1(v76);
LABEL_76:
        v77 = *v29 + (*v47 - ((*v47 * (v75 ^ 0xFF) + ((*v47 * (v75 ^ 0xFFu)) >> 8) + 1) >> 8));
        if (v77 >= 0xFF)
        {
          LOBYTE(v77) = -1;
        }

        *v29 = v77;
        goto LABEL_79;
      case 0xCu:
        v73 = v36;
        v84 = v48;
        while (1)
        {
          v85 = *v46;
          if (*v46)
          {
            if (!v36)
            {
              goto LABEL_97;
            }

            v86 = *v73 * v85 + ((*v73 * v85) >> 8) + 1;
            if (v86 >= 0x100)
            {
              break;
            }
          }

LABEL_100:
          ++v46;
          ++v47;
          v73 += v36 != 0;
          ++v29;
          if (!--v84)
          {
LABEL_169:
            v36 = v129 + v73;
            goto LABEL_181;
          }
        }

        v85 = BYTE1(v86);
LABEL_97:
        v87 = *v29 + (*v47 - ((*v47 * (v85 ^ 0xFF) + ((*v47 * (v85 ^ 0xFFu)) >> 8) + 1) >> 8));
        if (v87 >= 0xFF)
        {
          LOBYTE(v87) = -1;
        }

        *v29 = v87;
        goto LABEL_100;
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
        if (!*(v128 + 96))
        {
LABEL_54:
          v65 = *v46;
          v66 = v46 + 1;
          v53 = v29 - 1;
          v67 = v48;
          if (v36)
          {
            do
            {
              if (v65)
              {
                v68 = *v36 * v65 + ((*v36 * v65) >> 8) + 1;
                if (BYTE1(v68))
                {
                  if (BYTE1(v68) == 255)
                  {
                    LOBYTE(v69) = *v47;
                  }

                  else
                  {
                    v69 = ((v68 >> 8) * *v47 + ((v68 >> 8) ^ 0xFF) * v53[1] + (((v68 >> 8) * *v47 + ((v68 >> 8) ^ 0xFF) * v53[1]) >> 8) + 1) >> 8;
                  }

                  v53[1] = v69;
                }
              }

              v70 = *v66++;
              v65 = v70;
              ++v47;
              ++v36;
              ++v53;
              --v67;
            }

            while (v67);
LABEL_62:
            v36 = v129 + v36;
            goto LABEL_70;
          }

          do
          {
            if (v65)
            {
              if (v65 == 255)
              {
                LOBYTE(v71) = *v47;
              }

              else
              {
                v71 = (*v47 * v65 + v53[1] * (v65 ^ 0xFF) + ((*v47 * v65 + v53[1] * (v65 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              v53[1] = v71;
            }

            v72 = *v66++;
            v65 = v72;
            ++v47;
            ++v53;
            --v67;
          }

          while (v67);
LABEL_69:
          v36 = 0;
LABEL_70:
          v29 = &v53[v131 + 1];
          goto LABEL_182;
        }

LABEL_30:
        v51 = *v46;
        v52 = v46 + 1;
        v53 = v29 - 1;
        v54 = v48;
        if (v36)
        {
          while (1)
          {
            if (!v51)
            {
              goto LABEL_41;
            }

            v55 = *v36 * v51 + ((*v36 * v51) >> 8) + 1;
            if (!BYTE1(v55))
            {
              goto LABEL_41;
            }

            if (BYTE1(v55) == 255)
            {
              v56 = *v47;
              if (*v47)
              {
                if (v56 != 255)
                {
LABEL_39:
                  v56 += (v53[1] * ~v56 + ((v53[1] * ~v56) >> 8) + 1) >> 8;
                }

                v53[1] = v56;
              }
            }

            else
            {
              v57 = v55 >> 8;
              v58 = *v47;
              v59 = (v57 ^ 0xFF) * v58 + (((v57 ^ 0xFF) * v58) >> 8) + 1;
              if (v58 != BYTE1(v59))
              {
                v56 = v58 - (v59 >> 8);
                goto LABEL_39;
              }
            }

LABEL_41:
            v60 = *v52++;
            v51 = v60;
            ++v47;
            ++v36;
            ++v53;
            if (!--v54)
            {
              goto LABEL_62;
            }
          }
        }

        break;
      default:
        goto LABEL_182;
    }

    break;
  }

  while (1)
  {
    if (v51)
    {
      if (v51 == 255)
      {
        v61 = *v47;
        if (*v47)
        {
          if (v61 != 255)
          {
LABEL_50:
            v61 += (v53[1] * ~v61 + ((v53[1] * ~v61) >> 8) + 1) >> 8;
          }

          v53[1] = v61;
        }
      }

      else
      {
        v62 = *v47;
        v63 = v62 * (v51 ^ 0xFF) + ((v62 * (v51 ^ 0xFFu)) >> 8) + 1;
        if (v62 != BYTE1(v63))
        {
          v61 = v62 - (v63 >> 8);
          goto LABEL_50;
        }
      }
    }

    v64 = *v52++;
    v51 = v64;
    ++v47;
    ++v53;
    if (!--v54)
    {
      goto LABEL_69;
    }
  }
}