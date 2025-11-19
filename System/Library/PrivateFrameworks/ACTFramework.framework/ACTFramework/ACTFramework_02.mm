uint64_t projectionRowsFromIntegralImage(int a1, uint64_t a2, signed int a3, int a4, signed int a5, signed int a6, void *a7)
{
  if (a3 < 0)
  {
    v8 = 436;
    goto LABEL_15;
  }

  v8 = 436;
  v9 = a4 - a3;
  if (a4 < a3 || *a2 <= a4 || a4 < 0 || *a2 <= a3)
  {
    goto LABEL_15;
  }

  if (a5 < 0)
  {
    v8 = 440;
    goto LABEL_15;
  }

  v8 = 440;
  if (a6 < a5)
  {
    goto LABEL_15;
  }

  v13 = *(a2 + 4);
  if (v13 <= a6 || a6 < 0 || v13 <= a5)
  {
    goto LABEL_15;
  }

  if (a5 > 0xF0)
  {
    v8 = 444;
LABEL_15:
    v14 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", v8);
    return v14;
  }

  v18 = *(a2 + 232);
  v19 = a5 == 240;
  v20 = a6 / 0xF0u;
  bzero(a7, 4 * v9 + 4);
  if (v20 < v19)
  {
    return 0;
  }

  v21 = 0;
  v22 = a5 == 240;
  v23 = v18 != 1;
  if (a1)
  {
    v23 = v18;
  }

  v24 = v23;
  v25 = *(a2 + 96);
  v26 = 2 * a3;
  do
  {
    v27 = a5 - v21;
    if (a5 - v21 >= 240)
    {
      v27 = 240;
    }

    v28 = v27 & ~(v27 >> 31);
    v29 = a6 - v21;
    if (a6 - v21 >= 239)
    {
      v29 = 239;
    }

    v30 = *(a2 + 168 + 32 * v24 + 8 * v22) + v26;
    v31 = (v30 + v25 * v28);
    v32 = (v30 + v25 * (v29 + 1));
    v33 = (v9 + 1);
    v34 = a7;
    do
    {
      v36 = *v32++;
      v35 = v36;
      v37 = *v31++;
      *v34 = *v34 + (v35 - v37);
      ++v34;
      --v33;
    }

    while (v33);
    v14 = 0;
    v21 += *(a2 + 32 + 4 * v22++);
  }

  while (v22 != v20 + 1);
  return v14;
}

uint64_t smoothSignature(uint64_t a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v4) = -a3;
  if (-a3 < a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 - a3;
    v4 = v4;
    do
    {
      v9 = v8 + v5;
      if (v8 + v5 < 0 || v5 >= a2)
      {
        if (v5 < a2)
        {
          v7 = (*(a1 + 4 * v5) + v7);
          ++v6;
        }

        v11 = v7;
        if ((v4 & 0x8000000000000000) == 0)
        {
          *(a4 + 4 * v4) = v11 / v6;
        }

        if ((v9 & 0x80000000) == 0)
        {
          v7 = (v11 - *(a1 + 4 * v9));
          --v6;
        }
      }

      else
      {
        v10 = (*(a1 + 4 * v5) + v7);
        *(a4 + 4 * v4) = v10 / (v6 + 1);
        v7 = (v10 - *(a1 + 4 * v9));
      }

      ++v4;
      ++v5;
    }

    while (a3 + a2 != v5);
  }

  return 0;
}

uint64_t signatureDerivative(const float *__B, int a2, float *a3)
{
  if (a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = __B[1] - *__B;
  *a3 = v7;
  if (a2 == 3)
  {
    result = 0;
    a3[1] = -(*__B - (__B[2] * 0.5));
    a3[2] = __B[2] - __B[1];
  }

  else
  {
    v8 = (a2 - 2);
    if (a2 == 2)
    {
      result = 0;
      a3[1] = v7;
    }

    else
    {
      v10 = v3;
      v11 = v4;
      a3[a2 - 1] = __B[a2 - 1] - __B[v8];
      v9 = 0.5;
      vDSP_vsbsm(__B + 2, 1, __B, 1, &v9, a3 + 1, 1, v8);
      return 0;
    }
  }

  return result;
}

uint64_t signatureLineRegressionQuality()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v20 = *MEMORY[0x277D85DE8];
  __SumOfSquares = 0;
  v17 = 0.0;
  v4 = 1;
  if (v1 >= 2)
  {
    v6 = v1;
    v7 = v0;
    v8 = v1 - 1;
    v9 = 1.0 / v1;
    __B = 1.0;
    __A = 0.0;
    v10 = v1;
    vDSP_vramp(&__A, &__B, __C, 1, v1);
    v11 = 715827883 * (((2 * v8) | 1) * v8 * v6);
    v12 = v9 * (HIDWORD(v11) + (v11 >> 63));
    vDSP_sve_svesq(v7, 1, &__SumOfSquares + 1, &__SumOfSquares, v10);
    *&__SumOfSquares = v9 * *&__SumOfSquares;
    *(&__SumOfSquares + 1) = v9 * *(&__SumOfSquares + 1);
    vDSP_dotpr(v7, 1, __C, 1, &v17, v10);
    v17 = v9 * v17;
    *&v13 = (*&__SumOfSquares - (*(&__SumOfSquares + 1) * *(&__SumOfSquares + 1))) + ((-(v17 + (-(v9 * ((v8 * v6) >> 1)) * *(&__SumOfSquares + 1))) / (v12 - ((v9 * ((v8 * v6) >> 1)) * (v9 * ((v8 * v6) >> 1))))) * (v17 - ((v9 * ((v8 * v6) >> 1)) * *(&__SumOfSquares + 1))));
    v4 = 0;
    v5 = *fastSqrtf(v13).i32 / 300.0;
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  *v3 = v5;
  return v4;
}

void *RobustPano_createProcessor(uint64_t a1)
{
  v2 = [PanoramaProcessor alloc];
  v3 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v3;
  v14 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v7 = objc_msgSend_init_(v2, v5, v13, v6);
  objc_msgSend_setDoParallaxCorrection_(v7, v8, 1, v9);
  objc_msgSend_prepareToProcess_(v7, v10, 0, v11);
  fig_note_initialize_category_with_default_work();
  return v7;
}

uint64_t RobustPano_invalidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  dword_2810D7488 = 0;
  v5 = objc_msgSend_resetState(a1, a2, a3, a4);

  return v5;
}

uint64_t RobustPano_setDirection(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    objc_msgSend_setDirection_(a1, a2, 2, a4);
  }

  else
  {
    objc_msgSend_setDirection_(a1, a2, 1, a4);
  }

  return 0;
}

uint64_t RobustPano_copyProperty(void *a1, CFTypeRef cf1, uint64_t a3, uint64_t *a4)
{
  if (!CFEqual(cf1, @"HighResPanorama"))
  {
    return 4294954512;
  }

  objc_msgSend_finishProcessing(a1, v6, v7, v8);
  *a4 = objc_msgSend_encodedFinalAsset(a1, v9, v10, v11);
  RobustPano_stopCapture(a1);
  return 0;
}

uint64_t RobustPano_stopCapture(void *a1)
{
  v2 = ACT_getHostTime() - *&qword_27E1F6598;
  v6 = objc_msgSend_nbFramesReceived(a1, v3, v4, v5);
  v10 = objc_msgSend_nbFramesSkipped(a1, v7, v8, v9);
  v14 = v2 / (v6 - (v10 + objc_msgSend_nbFramesDropped(a1, v11, v12, v13)));
  HostTime = ACT_getHostTime();
  v16 = dword_2810D7488;
  v20 = objc_msgSend_nbFramesReceived(a1, v17, v18, v19);
  v24 = objc_msgSend_nbFramesSkipped(a1, v21, v22, v23);
  v28 = objc_msgSend_nbFramesDropped(a1, v25, v26, v27);
  panoLog(32, "Capture stopped at %.2f\nCapture stats: %d frames received by RobustPano, %zu frames received by PanoIBP, %zu frames skipped, %zu frames dropped, total time spent %.4f sec, processing time per frames %.3f ms\n", HostTime, v16, v20, v24, v28, v2, v14 * 1000.0);

  return panoCloseLogFile();
}

uint64_t RobustPano_startCapture(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = panoOpenLogFile(a3);
  qword_27E1F6598 = ACT_getHostTime();
  panoLog(32, "Capture started at %.2f\n", *&qword_27E1F6598);
  return v3;
}

uint64_t TUGetTiming(int *a1, uint64_t a2)
{
  if (*a1 < 16)
  {
    mach_absolute_time();
    result = FigHostTimeToNanoseconds();
    v5 = *a1;
    v6 = &a1[2 * v5];
    *(v6 + 17) = result / 1000;
    *(v6 + 1) = a2;
    *a1 = v5 + 1;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t TUPrintTiming(int *a1)
{
  if (*a1 <= 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*a1 >= 2)
    {
      v4 = 0;
      do
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = v4 + 2;
        ++v4;
      }

      while (v6 < *a1);
    }

    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(a1 + 32) = 0;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

void *Stitcher_constructor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (v6)
  {
    v7 = Stitcher_SceneCut_constructor(a1, a2, a3);
    *v6 = v7;
    if (!v7)
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

void Stitcher_destructor(void **a1)
{
  if (a1)
  {
    Stitcher_SceneCut_destructor(*a1);

    free(a1);
  }
}

uint64_t *Stitcher_storeIOSurfaceIDs(uint64_t *result, int a2, int a3)
{
  v3 = *result;
  *(v3 + 360) = a2;
  *(v3 + 364) = a3;
  return result;
}

unint64_t *Stitcher_Alpha_constructor()
{
  v0 = malloc_type_malloc(0x30uLL, 0x1010040CCA46FA7uLL);
  v1 = v0;
  if (!v0)
  {
    return v1;
  }

  v0[3] = 32;
  *v0 = 32;
  v2 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  v1[1] = v2;
  if (!v2)
  {
LABEL_9:
    free(v1);
    return 0;
  }

  v3 = malloc_type_malloc(*v1, 0x100004077774924uLL);
  v1[2] = v3;
  if (!v3)
  {
    free(v1[1]);
    goto LABEL_9;
  }

  if (*v1)
  {
    v4 = 0;
    do
    {
      *(v1[1] + v4) = v4 + 1;
      *(v1[2] + v4) = *v1 - *(v1[1] + v4);
      ++v4;
    }

    while (*v1 > v4);
  }

  return v1;
}

void Stitcher_Alpha_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void *Stitcher_Alpha_pasteImageToReference(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a12;
  v37 = *MEMORY[0x277D85DE8];
  v17 = *result - 1;
  if (v17 >= a10 - 1)
  {
    v17 = a10 - 1;
  }

  v18 = v17;
  if (v17 != 6)
  {
    v19 = *(result + 2);
    v20 = (v17 - 7) & 0xFFFFFFFFFFFFFFF8;
    memcpy(__dst, *(result + 1), v20 + 8);
    result = memcpy(v35, v19, v20 + 8);
    v16 = a12;
  }

  if (v16)
  {
    v21 = 0;
    v22 = ~v18 + a10;
    v32 = (v18 - 7) >> 3;
    do
    {
      if (v18 != 6)
      {
        v23 = 0;
        do
        {
          *(a2 + 8 * v23) = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a2 + 8 * v23), v35[v23]), *(a6 + 8 * v23), __dst[v23]), 5uLL);
          ++v23;
        }

        while (v32 + 1 != v23);
      }

      if (v22)
      {
        result = memcpy((a2 + v18 + 1), (a6 + v18 + 1), v22);
        v16 = a12;
      }

      a2 += a4;
      a6 += a8;
      ++v21;
    }

    while (v21 != v16);
    if (v16 != 1)
    {
      v24 = 0;
      v25 = v16 >> 1;
      do
      {
        if (v18 != 6)
        {
          v26 = 0;
          v27 = v32 + 1;
          do
          {
            v28 = (a7 + v26 * 8);
            v29 = (a3 + v26 * 8);
            v30 = __dst[v26];
            v38 = vld2_s8(v28);
            v39 = vld2_s8(v29);
            v31 = v35[v26];
            v40.val[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(v39.val[0], v31), v38.val[0], v30), 5uLL);
            v40.val[1] = vrshrn_n_s16(vmlal_u8(vmull_u8(v39.val[1], v31), v38.val[1], v30), 5uLL);
            vst2_s8(v29, v40);
            ++v26;
            --v27;
          }

          while (v27);
        }

        if (v22)
        {
          result = memcpy((a3 + v18 + 1), (a7 + v18 + 1), v22);
        }

        a3 += a4;
        a7 += a8;
        ++v24;
      }

      while (v24 != v25);
    }
  }

  return result;
}

void *Stitcher_SceneCut_findVerticalSeam_orig(void *result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  result[6] = a3;
  if (a2)
  {
    v6 = result[11];
    v7 = result[2];
    v8 = a2;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  v10 = a3 - 1;
  if (a3 <= 1)
  {
    v14 = a2 - 1;
  }

  else
  {
    v48 = a3 - 1;
    v11 = result[7];
    v12 = (*result + v11);
    v13 = (result[11] + v11);
    v14 = a2 - 1;
    v15 = a2 - 2;
    for (i = 1; i != a3; ++i)
    {
      v17 = v5[1];
      v18 = v5[2];
      v19 = *v18;
      v20 = v18[1];
      v21 = v20 < *v18;
      if (v20 >= *v18)
      {
        v22 = *v18;
      }

      else
      {
        v22 = v18[1];
      }

      v23 = v13 + 1;
      *v17 = v22 + *v13;
      v24 = v17 + 1;
      *v12 = v21;
      v25 = v12 + 1;
      if (v14 >= 2)
      {
        v26 = 0;
        v27 = 0;
        v28 = v18 + 2;
        do
        {
          v29 = v19;
          v19 = v20;
          v30 = v27 + 1;
          v20 = v28[v27];
          v31 = v27;
          if (v29 >= v19)
          {
            v29 = v19;
            v31 = v27 + 1;
          }

          v32 = v20 >= v29;
          if (v20 < v29)
          {
            v29 = v28[v27];
          }

          v24[v27] = v29 + v23[v27];
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = v27 + 2;
          }

          v25[v27] = v33;
          v26 -= 4;
          ++v27;
        }

        while (v15 != v30);
        if (v19 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v19;
        }

        v23 += v30;
        v24 = (v24 - v26);
        v25 += v30;
      }

      if (v19 >= v20)
      {
        v34 = a2 - 1;
      }

      else
      {
        v34 = a2 - 2;
      }

      *v24 = v22 + *v23;
      *v25 = v34;
      result = memcpy(v5[2], v5[1], 4 * a2);
      v35 = v5[7];
      v13 += v35;
      v12 += v35;
    }

    v10 = v48;
  }

  v36 = 0;
  v37 = v5[1];
  v38 = a2 >> 1;
  v39 = *(v37 + 4 * (a2 >> 1));
  v40 = v39;
  do
  {
    if (*(v37 + 4 * v36) < v40)
    {
      LOBYTE(v39) = *(v37 + 4 * v36);
      v40 = *(v37 + 4 * v36);
      v38 = v36;
    }

    ++v36;
  }

  while (v36 <= v14);
  v41 = v5[4];
  *(v5[3] + 8 * v10) = v38;
  *(v41 + v10) = v39;
  if (a3 >= 2)
  {
    v42 = (a3 - 2);
    v43 = v5[7] * v10;
    v44 = v5[11] + v43;
    v45 = *v5 + v43;
    do
    {
      v38 = *(v45 + v38);
      v46 = v5[4];
      *(v5[3] + 8 * v42) = v38;
      *(v46 + v42) = *(v44 + v38);
      v47 = v5[7];
      v45 -= v47;
      v44 -= v47;
      --v42;
    }

    while (v42 != -1);
  }

  return result;
}

unint64_t minInRange(unsigned int *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = *(a2 + 4 * a5);
  *a1 = v5;
  while (a3 <= a4)
  {
    v6 = *(a2 + 4 * a3);
    if (v6 < v5)
    {
      *a1 = v6;
      v5 = v6;
      a5 = a3;
    }

    ++a3;
  }

  return a5;
}

uint64_t Stitcher_SceneCut_findVerticalSeam_NEON(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v28[10] = *MEMORY[0x277D85DE8];
  a1[6] = a3;
  v6 = a1[11];
  v7 = a1[1];
  if (a2)
  {
    v8 = a2;
    v9 = a1[11];
    v10 = a1[1];
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  v27 = 0x706050403020100;
  v12 = a1[7];
  v28[0] = *a1 + v12;
  v28[1] = v6 + v12;
  v13 = a3 - 1;
  v28[2] = a2;
  v28[3] = a3 - 1;
  v28[4] = v7;
  v28[5] = &v27;
  v28[6] = v12;
  memset(&v28[7], 0, 24);
  result = sub_23C441600(v28);
  v15 = 0;
  v16 = a1[1];
  v17 = a2 >> 1;
  v18 = *(v16 + 4 * (a2 >> 1));
  v19 = v18;
  do
  {
    if (*(v16 + 4 * v15) < v19)
    {
      v18 = *(v16 + 4 * v15);
      v19 = v18;
      v17 = v15;
    }

    ++v15;
  }

  while (v15 <= a2 - 1);
  v20 = a1[4];
  *(a1[3] + 8 * v13) = v17;
  *(v20 + v13) = v18;
  if (v3 >= 2)
  {
    v21 = (v3 - 2);
    v22 = a1[7] * v13;
    v23 = a1[11] + v22;
    v24 = *a1 + v22;
    do
    {
      v17 = *(v24 + v17);
      v25 = a1[4];
      *(a1[3] + 8 * v21) = v17;
      *(v25 + v21) = *(v23 + v17);
      v26 = a1[7];
      v24 -= v26;
      v23 -= v26;
      --v21;
    }

    while (v21 != -1);
  }

  return result;
}

void Stitcher_SceneCut_calculateCostImage_Yuv(void *a1, unsigned __int8 *a2, const char *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, const char *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v17 = a1[11];
  v19 = a1[16];
  v18 = a1[17];
  v83 = a1[39];
  Stitcher_SceneCut_calculateSpatialBiasLut(a1, a10);
  if (a11)
  {
    v20 = 0;
    v21 = v83;
    if (!*(a1[42] + 4))
    {
      v21 = 0;
    }

    do
    {
      _X14 = v19;
      _X13 = a6;
      _X12 = a2;
      if (a10 >= 0x10)
      {
        v25 = 0;
        v26 = a10 >> 4;
        do
        {
          _X13 = &a2[v25];
          _X15 = &a6[v25];
          _X16 = &v19[v25];
          __asm
          {
            PRFM            #1, [X13]
            PRFM            #1, [X15]
            PRFM            #0x11, [X16]
          }

          *_X16 = vshrq_n_u8(vabdq_u8(*&a6[v25], *&a2[v25]), 1uLL);
          v25 += 16;
          --v26;
        }

        while (v26);
        _X12 = &a2[v25];
        _X13 = &a6[v25];
        _X14 = &v19[v25];
      }

      v37 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X12]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v42 = *_X12++;
          v41 = v42;
          v43 = *_X13++;
          v44 = v43 - v41;
          if (v44 < 0)
          {
            v44 = -v44;
          }

          *_X14++ = v44 >> 1;
          --v37;
        }

        while (v37);
      }

      if (!v20 || (v20 & 1) != 0)
      {
        _X12 = v18;
        _X13 = a7;
        _X14 = a3;
        v48 = a10 >> 4;
        if (a10 >= 0x10)
        {
          do
          {
            __asm
            {
              PRFM            #1, [X14]
              PRFM            #1, [X13]
              PRFM            #0x11, [X12]
            }

            v85 = vld2_s8(_X14);
            _X14 += 16;
            v87 = vld2_s8(_X13);
            _X13 += 16;
            v85.val[0] = vhadd_u8(vabd_u8(v87.val[1], v85.val[1]), vabd_u8(v87.val[0], v85.val[0]));
            v85.val[1] = v85.val[0];
            vst2_s8(_X12, v85);
            _X12 += 16;
            --v48;
          }

          while (v48);
        }

        a3 += a4;
        a7 += a8;
        if ((a10 & 0xF) != 0)
        {
          v52 = 0;
          do
          {
            _X16 = &_X14[v52];
            _X17 = &_X13[v52];
            _X0 = &_X12[v52];
            __asm
            {
              PRFM            #1, [X16]
              PRFM            #1, [X17]
              PRFM            #0x11, [X0]
            }

            v59 = _X13[v52] - _X14[v52];
            if (v59 < 0)
            {
              v59 = _X14[v52] - _X13[v52];
            }

            v60 = *(_X17 + 1) - *(_X16 + 1);
            if (v60 < 0)
            {
              v60 = -v60;
            }

            v61 = (v60 + v59) >> 1;
            *_X0 = v61;
            _X0[1] = v61;
            v52 += 2;
          }

          while ((a10 & 0xF) > v52);
        }
      }

      v62 = a1[7];
      _X13 = a1[15];
      if (*(a1[42] + 4))
      {
        if (*v21++)
        {
          _X13 = a1[38];
        }
      }

      _X14 = v17;
      _X15 = v19;
      _X16 = v18;
      v68 = a10 >> 4;
      if (a10 >= 0x10)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X15]
            PRFM            #1, [X16]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v86 = vld2_s8(_X15);
          _X15 += 16;
          v88 = vld2_s8(_X16);
          _X16 += 16;
          v89 = vld2_s8(_X13);
          _X13 += 16;
          v73 = vhadd_u8(*v86.i8, v88.val[0]);
          v86 = vmull_u8(v89.val[1], vhadd_u8(v86.u64[1], v88.val[1]));
          v86.u64[1] = vqshrn_n_u16(vmull_u8(v89.val[0], v73), 8uLL);
          v88.val[0] = vqshrn_n_u16(v86, 8uLL);
          vst2_s8(_X14, *(&v86 + 8));
          _X14 += 16;
          --v68;
        }

        while (v68);
      }

      v74 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X15]
            PRFM            #1, [X16]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v80 = *_X15++;
          v79 = v80;
          v81 = *_X16++;
          v82 = v81 + v79;
          LOWORD(v81) = *_X13++;
          *_X14++ = ((v82 >> 1) * v81) >> 8;
          --v74;
        }

        while (v74);
      }

      a2 += a4;
      a6 += a8;
      v17 += v62;
      ++v20;
    }

    while (v20 != a11);
  }
}

void Stitcher_SceneCut_calculateSpatialBiasLut(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = a2 * 4.0;
    v5 = 0;
    v6 = (1.0 / (1.1 - expf(-((a2 / v4) * (a2 / v4))))) * 255.0;
    do
    {
      *(*(a1 + 120) + v5) = (v6 * (1.1 - expf(-((v5 / v4) * (v5 / v4)))));
      ++v5;
    }

    while (a2 != v5);
  }
}

uint64_t Stitcher_SceneCut_setStraightVerticalSeam(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a7 + a12);
    v15 = (a3 + a12);
    do
    {
      v16 = *(a6 + a12) - *(a2 + a12);
      if (v16 < 0)
      {
        v16 = *(a2 + a12) - *(a6 + a12);
      }

      if (!v13 || (v13 & 1) != 0)
      {
        v17 = *v15;
        v15 += a4;
        v18 = *v14;
        v14 += a8;
        v12 = v18 - v17;
        if (v12 < 0)
        {
          v12 = -v12;
        }

        v12 = v12;
      }

      a2 += a4;
      *(*(result + 32) + v13) = ((v16 >> 1) + v12) >> 1;
      a6 += a8;
      *(*(result + 24) + 8 * v13++) = a12;
    }

    while (a11 != v13);
  }

  return result;
}

void Stitcher_SceneCut_calculateCostImage_Y(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  Stitcher_SceneCut_calculateSpatialBiasLut(a1, a10);
  if (a11)
  {
    v16 = 0;
    v17 = a1[16];
    v18 = a1[11];
    do
    {
      v19 = a1[7];
      v20 = v17;
      v21 = a6;
      v22 = a2;
      if (a10 >= 0x10)
      {
        v23 = 0;
        v24 = a10 >> 4;
        do
        {
          *&v17[v23] = vshrq_n_u8(vabdq_u8(*&a6[v23], *&a2[v23]), 1uLL);
          v23 += 16;
          --v24;
        }

        while (v24);
        v22 = &a2[v23];
        v21 = &a6[v23];
        v20 = &v17[v23];
      }

      v25 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          v27 = *v22++;
          v26 = v27;
          v28 = *v21++;
          v29 = v28 - v26;
          if (v29 < 0)
          {
            v29 = -v29;
          }

          *v20++ = v29 >> 1;
          --v25;
        }

        while (v25);
      }

      v30 = a1[15];
      v31 = v17;
      v32 = v18;
      v33 = a10 >> 4;
      if (a10 >= 0x10)
      {
        do
        {
          v39 = vld2_s8(v31);
          v31 += 16;
          v40 = vld2_s8(v30);
          v30 += 16;
          v34 = vmull_u8(v40.val[0], *v39.i8);
          v39 = vmull_u8(v40.val[1], v39.u64[1]);
          v39.u64[1] = vqshrn_n_u16(v34, 8uLL);
          v40.val[0] = vqshrn_n_u16(v39, 8uLL);
          vst2_s8(v32, *(&v39 + 8));
          v32 += 16;
          --v33;
        }

        while (v33);
      }

      v35 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          v37 = *v31++;
          v36 = v37;
          v38 = *v30++;
          *v32++ = (v38 * v36) >> 8;
          --v35;
        }

        while (v35);
      }

      a2 += a4;
      a6 += a8;
      v18 += v19;
      ++v16;
    }

    while (v16 != a11);
  }
}

void Stitcher_SceneCut_calculateFlarePerRow(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  _X23 = a2;
  v12 = *(a1 + 312);
  Stitcher_SceneCut_calculateSpatialBiasLutFlare(a1, a6);
  if (a7)
  {
    v13 = 0;
    _X24 = a3;
    do
    {
      if ((v13 == 0) | v13 & 1)
      {
        _X24 = a3;
      }

      v15 = *(v12 + v13);
      if ((v13 == 0) | v13 & 1)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      a3 += v16;
      __asm
      {
        PRFM            #1, [X23]
        PRFM            #1, [X24]
      }

      v23 = FlareDetector_avgFlareProbability(_X23, _X24, a6);
      v24 = v15 > 1;
      if (v23)
      {
        v24 = 2;
      }

      *(v12 + v13++) = v24;
      _X23 += a4;
    }

    while (a7 != v13);
  }
}

void Stitcher_SceneCut_calculateSpatialBiasLutFlare(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = a2 * 0.01;
    v5 = 0;
    v6 = (1.0 / (1.1 - expf(-((a2 / v4) * (a2 / v4))))) * 255.0;
    do
    {
      *(*(a1 + 304) + v5) = (v6 * (1.1 - expf(-((v5 / v4) * (v5 / v4)))));
      ++v5;
    }

    while (a2 != v5);
  }
}

float *Stitcher_SceneCut_blendToReferencePoisson_NoExposureDifference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, vDSP_Length a19, uint64_t a20)
{
  v20 = a13;
  v22 = *(a1 + 216);
  v23 = *(a1 + 224);
  v24 = v22[1];
  v110 = *v22;
  v25 = *v23;
  v116 = *(v23 + 1);
  v117 = v25;
  v26 = vld2q_s16(v22->i16);
  v104 = v26;
  v27 = vld2q_s16(v23);
  v103 = v27;
  v28 = *(a1 + 264);
  if (a19)
  {
    v29 = 0;
    v31 = *(a1 + 32);
    v30 = *(a1 + 40);
    v33 = *(a1 + 272);
    v32 = *(a1 + 280);
    v34 = a2;
    v35 = a13;
    v36 = a3;
    v37 = a14;
    v38 = *(a1 + 24);
    do
    {
      LOBYTE(a9) = *(v31 + v29);
      v39 = LODWORD(a9);
      v40 = (*(v38 + 8 * v29) + a20) & 0xFFFFFFFFFFFFFFFELL;
      v41 = (*(a1 + 320) * v39) + -5.0;
      if (v41 < 0.0)
      {
        v41 = 0.0;
      }

      *(v30 + 4 * v29) = v41;
      LOBYTE(v41) = *(v34 + v40);
      LOBYTE(v39) = *(v35 + v40);
      v42 = (LODWORD(v41) - LODWORD(v39)) * 0.5;
      a9 = *(a1 + 320);
      v43 = a9 * v42;
      v28[v29] = v43;
      if ((v29 & 1) == 0)
      {
        v44 = (v36 + v40);
        v36 += a4;
        v45 = (v37 + v40);
        v37 += a15;
        LOBYTE(v43) = *v44;
        LOBYTE(a9) = *v45;
        v46 = (LODWORD(v43) - LODWORD(a9)) * 0.5;
        v47 = *(a1 + 320);
        v48 = v47 * v46;
        LOBYTE(a10) = v44[1];
        LOBYTE(a11) = v45[1];
        a11 = LODWORD(a11);
        a10 = (LODWORD(a10) - a11) * 0.5;
        a9 = v47 * a10;
        *v33++ = v48;
        *v32++ = a9;
      }

      v34 += a4;
      v35 += a15;
      ++v29;
    }

    while (a19 != v29);
  }

  v49 = a1;
  v108 = v24;
  FIR1DFilter_execute(*(a1 + 256), v28, a19);
  FIR1DFilter_execute(*(v49 + 256), *(v49 + 272), a19 >> 1);
  v52 = a4;
  FIR1DFilter_execute(*(v49 + 256), *(v49 + 280), a19 >> 1);
  result = FIR1DFilter_execute(*(v49 + 256), *(v49 + 40), a19);
  v54 = v108;
  v55 = a19;
  v56 = a15;
  if (a19)
  {
    v57 = a3;
    v58 = a14;
    v59 = 0;
    result = *(a1 + 40);
    v106 = *(a1 + 272);
    v107 = *(a1 + 280);
    v60 = *(a1 + 264);
    v61 = *(a1 + 24);
    do
    {
      v62 = (*v61 + a20) & 0xFFFFFFFFFFFFFFFELL;
      v63 = v62 - 16;
      v64 = a17 - v62 - 16;
      v65 = vcvtd_n_s64_f64(fmin(((*result * 0.1) * *(a1 + 328)), 1.0), 8uLL);
      v66 = 256 - v65;
      if (*v60 <= 0.0)
      {
        v67 = -0.5;
      }

      else
      {
        v67 = 0.5;
      }

      v68 = *v60 + v67;
      v69 = -v68;
      v70 = vdupq_n_s16(v65);
      v71 = vdupq_n_s16(v66 * v68);
      v72 = vdupq_n_s16(v66 * v69);
      v73 = &v117;
      v74 = 1;
      v75 = (*v61 + a20) & 0xFFFFFFFFFFFFFFFELL;
      v76 = v110;
      do
      {
        v77 = (a2 + v75);
        *v77 = vqmovun_s16(vsraq_n_s16(vmovl_u8(*(v20 + v75)), vmulq_s16(vshrq_n_s16(vmlaq_s16(v71, vshrq_n_s16(vsubl_u8(*(a2 + v75), *(v20 + v75)), 1uLL), v70), 8uLL), v76), 4uLL));
        v78 = v74;
        v77[-2] = vqmovun_s16(vsraq_n_s16(vmovl_u8(*(a2 + v75 - 16)), vmulq_s16(vshrq_n_s16(vmlaq_s16(v72, vshrq_n_s16(vsubl_u8(*(v20 + v75 - 16), *(a2 + v75 - 16)), 1uLL), v70), 8uLL), *v73), 4uLL));
        v75 += 8;
        v73 = &v116;
        v76 = v54;
        v74 = 0;
      }

      while ((v78 & 1) != 0);
      v79 = v62 + 15;
      if (v64 > 0)
      {
        v112 = v60;
        v113 = result;
        v111 = v59;
        v80 = v57;
        v81 = v61;
        v114 = v70;
        memcpy((a2 + v79 + 1), (v20 + v79 + 1), v64);
        v64 = a17 - v62 - 16;
        v63 = v62 - 16;
        v70 = v114;
        v61 = v81;
        v59 = v111;
        v60 = v112;
        result = v113;
        v54 = v108;
        v57 = v80;
        v52 = a4;
        v55 = a19;
        v56 = a15;
      }

      if ((v59 & 1) == 0)
      {
        v82 = (v57 + v62);
        v84 = (v57 + v63);
        v85 = *v106++;
        if (v85 <= 0.0)
        {
          v86 = -0.5;
        }

        else
        {
          v86 = 0.5;
        }

        v87 = v85 + v86;
        v88 = *v107++;
        if (v88 <= 0.0)
        {
          v89 = -0.5;
        }

        else
        {
          v89 = 0.5;
        }

        v90 = v88 + v89;
        v91 = -v87;
        v92 = -v90;
        v93 = (v58 + v63);
        v83 = (v58 + v62);
        v119 = vld2_s8(v83);
        v120 = vld2_s8(v82);
        v119.val[0] = vqmovun_s16(vsraq_n_s16(vmovl_u8(v119.val[0]), vmulq_s16(vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v66 * v87), vshrq_n_s16(vsubl_u8(v120.val[0], v119.val[0]), 1uLL), v70), 8uLL), v104), 4uLL));
        v119.val[1] = vqmovun_s16(vsraq_n_s16(vmovl_u8(v119.val[1]), vmulq_s16(vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v66 * v90), vshrq_n_s16(vsubl_u8(v120.val[1], v119.val[1]), 1uLL), v70), 8uLL), v104), 4uLL));
        vst2_s8(v82, v119);
        v118 = vld2_s8(v93);
        *(&v119 + 8) = vld2_s8(v84);
        v94 = vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v66 * v91), vshrq_n_s16(vsubl_u8(v119.val[1], *v118.i8), 1uLL), v70), 8uLL);
        v118 = vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v66 * v92), vshrq_n_s16(vsubl_u8(v95, v118.u64[1]), 1uLL), v70), 8uLL);
        v118.u64[1] = vqmovun_s16(vsraq_n_s16(vmovl_u8(v119.val[1]), vmulq_s16(v94, v103), 4uLL));
        *v94.i8 = vqmovun_s16(vsraq_n_s16(vmovl_u8(v95), vmulq_s16(v118, v103), 4uLL));
        vst2_s8(v84, *(&v118 + 8));
        if (v64 >= 1)
        {
          v96 = result;
          v97 = (v57 + v79 + 1);
          v98 = v60;
          v99 = (v58 + v79 + 1);
          v100 = v58;
          v101 = v57;
          v102 = v61;
          memcpy(v97, v99, v64);
          v61 = v102;
          v60 = v98;
          result = v96;
          v54 = v108;
          v57 = v101;
          v58 = v100;
          v56 = a15;
        }

        v57 += v52;
        v58 += v56;
      }

      ++v61;
      ++result;
      ++v60;
      a2 += v52;
      v20 += v56;
      ++v59;
    }

    while (v59 != v55);
  }

  return result;
}

float *Stitcher_SceneCut_blendToReferencePoisson(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float *a17, uint64_t a18, vDSP_Length a19, uint64_t a20)
{
  v20 = a13;
  v21 = a2;
  if (*(a1 + 332) == 1)
  {
    v23 = *(a1 + 232);
    v24 = *(a1 + 240);
    v25 = *(a1 + 248);
    v26 = *(a1 + 264);
    if (a19)
    {
      v27 = 0;
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v31 = *(a1 + 272);
      v30 = *(a1 + 280);
      v32 = v21;
      v33 = a13;
      v34 = a3;
      v35 = a14;
      v36 = *(a1 + 24);
      do
      {
        LOBYTE(a9) = *(v29 + v27);
        v37 = LODWORD(a9);
        v38 = (*(v36 + 8 * v27) + a20) & 0xFFFFFFFFFFFFFFFELL;
        v39 = (*(a1 + 320) * v37) + -5.0;
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        *(v28 + 4 * v27) = v39;
        LOBYTE(v39) = *(v32 + v38);
        LOBYTE(v37) = *(v33 + v38);
        v40 = (LODWORD(v39) - LODWORD(v37)) * 0.5;
        a9 = *(a1 + 320);
        v41 = a9 * v40;
        v26[v27] = v41;
        if ((v27 & 1) == 0)
        {
          v42 = (v34 + v38);
          v34 += a4;
          v43 = (v35 + v38);
          v35 += a15;
          LOBYTE(v41) = *v42;
          LOBYTE(a9) = *v43;
          v44 = (LODWORD(v41) - LODWORD(a9)) * 0.5;
          v45 = *(a1 + 320);
          v46 = v45 * v44;
          LOBYTE(a10) = v42[1];
          LOBYTE(a11) = v43[1];
          a11 = LODWORD(a11);
          a10 = (LODWORD(a10) - a11) * 0.5;
          a9 = v45 * a10;
          *v31++ = v46;
          *v30++ = a9;
        }

        v32 += a4;
        v33 += a15;
        ++v27;
      }

      while (a19 != v27);
    }

    v117 = a1;
    FIR1DFilter_execute(*(a1 + 256), v26, a19);
    FIR1DFilter_execute(*(v117 + 256), *(v117 + 272), a19 >> 1);
    FIR1DFilter_execute(*(v117 + 256), *(v117 + 280), a19 >> 1);
    FIR1DFilter_execute(*(v117 + 256), *(v117 + 40), a19);
    v50 = a20;
    v49 = a15;
    v51 = a19;
    result = a17;
    if (a19)
    {
      v53 = a14;
      v54 = a3;
      v55 = 0;
      v56 = v25 + 256;
      v57 = *(v117 + 40);
      v120 = *(v117 + 272);
      v121 = *(v117 + 280);
      v58 = *(v117 + 264);
      v59 = *(v117 + 24);
      do
      {
        v60 = 0;
        v124 = v59;
        v61 = (*v59 + v50) & 0xFFFFFFFFFFFFFFFELL;
        v119 = v61 - 64;
        v62 = result - v61 - 64;
        v63 = vcvtd_n_s64_f64(fmin(((*v57 * *(v117 + 328)) * 0.1), 1.0), 8uLL);
        v64 = 256 - v63;
        if (*v58 <= 0.0)
        {
          v65 = -0.5;
        }

        else
        {
          v65 = 0.5;
        }

        v66 = *v58 + v65;
        v67 = v64;
        v68 = v64 * *(v56 + 2 * v66);
        v118 = v67;
        v69 = v67 * *(v56 + 2 * -v66);
        v70 = v61;
        do
        {
          v71 = (v21 + v70);
          v72 = *(v23 + v60);
          v73 = (*(v20 + v70) + ((((v68 + *(v56 + 2 * ((*(v21 + v70) - *(v20 + v70)) >> 1)) * v63) >> 8) * v72) >> 6));
          if (v73 >= 255)
          {
            LOBYTE(v73) = -1;
          }

          if (((*(v20 + v70) + ((((v68 + *(v56 + 2 * ((*(v21 + v70) - *(v20 + v70)) >> 1)) * v63) >> 8) * v72) >> 6)) & 0x8000) != 0)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }

          *v71 = v74;
          v75 = (*(v71 - 64) + ((((v69 + *(v56 + 2 * ((*(v20 + v70 - 64) - *(v71 - 64)) >> 1)) * v63) >> 8) * *(v24 + v60)) >> 6));
          if (v75 >= 255)
          {
            LOBYTE(v75) = -1;
          }

          if (((*(v71 - 64) + ((((v69 + *(v56 + 2 * ((*(v20 + v70 - 64) - *(v71 - 64)) >> 1)) * v63) >> 8) * *(v24 + v60)) >> 6)) & 0x8000) != 0)
          {
            v76 = 0;
          }

          else
          {
            v76 = v75;
          }

          *(v71 - 64) = v76;
          v60 += 2;
          ++v70;
        }

        while (v60 != 128);
        v77 = v61 + 63;
        v122 = v58;
        v123 = v54;
        v116 = v62;
        if (v62 > 0)
        {
          v114 = v55;
          v78 = v53;
          v79 = result - v61 - 64;
          v113 = v61;
          memcpy((v21 + v77 + 1), (v20 + v77 + 1), v62);
          v51 = a19;
          v61 = v113;
          v62 = v79;
          v55 = v114;
          result = a17;
          v50 = a20;
          v53 = v78;
          v58 = v122;
          v54 = v123;
          v49 = a15;
        }

        if ((v55 & 1) == 0)
        {
          v115 = v77;
          v80 = v51;
          v81 = result;
          v82 = v61;
          v83 = v50;
          v84 = 0;
          if (*v120 <= 0.0)
          {
            v85 = -0.5;
          }

          else
          {
            v85 = 0.5;
          }

          v86 = *v120 + v85;
          if (*v121 <= 0.0)
          {
            v87 = -0.5;
          }

          else
          {
            v87 = 0.5;
          }

          v88 = *v121 + v87;
          v89 = *(v56 + 2 * v86) * v118;
          v90 = *(v56 + 2 * v88) * v118;
          v91 = *(v56 + 2 * -v86) * v118;
          v92 = *(v56 + 2 * -v88) * v118;
          v93 = v53 + v82;
          v94 = v54 + v119;
          do
          {
            v95 = v93 + v84;
            v96 = (v94 + v84);
            v97 = *(v23 + 2 * v84);
            v98 = (*(v93 + v84) + ((((v89 + *(v56 + 2 * ((*(v94 + v84 + 64) - *(v93 + v84)) >> 1)) * v63) >> 8) * v97) >> 6));
            if (v98 >= 255)
            {
              LOBYTE(v98) = -1;
            }

            if (((*(v93 + v84) + ((((v89 + *(v56 + 2 * ((*(v94 + v84 + 64) - *(v93 + v84)) >> 1)) * v63) >> 8) * v97) >> 6)) & 0x8000) != 0)
            {
              v99 = 0;
            }

            else
            {
              v99 = v98;
            }

            v96[64] = v99;
            v100 = *(v23 + 2 * v84);
            v101 = (*(v95 + 1) + ((((v90 + *(v56 + 2 * ((v96[65] - *(v95 + 1)) >> 1)) * v63) >> 8) * v100) >> 6));
            if (v101 >= 255)
            {
              LOBYTE(v101) = -1;
            }

            if (((*(v95 + 1) + ((((v90 + *(v56 + 2 * ((v96[65] - *(v95 + 1)) >> 1)) * v63) >> 8) * v100) >> 6)) & 0x8000) != 0)
            {
              v102 = 0;
            }

            else
            {
              v102 = v101;
            }

            v96[65] = v102;
            v103 = *(v24 + 2 * v84);
            v104 = (*v96 + ((((v91 + *(v56 + 2 * ((*(v95 - 64) - *v96) >> 1)) * v63) >> 8) * v103) >> 6));
            if (v104 >= 255)
            {
              LOBYTE(v104) = -1;
            }

            if (((*v96 + ((((v91 + *(v56 + 2 * ((*(v95 - 64) - *v96) >> 1)) * v63) >> 8) * v103) >> 6)) & 0x8000) != 0)
            {
              v105 = 0;
            }

            else
            {
              v105 = v104;
            }

            *v96 = v105;
            v106 = v96[1] + ((((v92 + *(v56 + 2 * ((*(v95 - 63) - v96[1]) >> 1)) * v63) >> 8) * *(v24 + 2 * v84)) >> 6);
            v107 = v106;
            if (v106 >= 255)
            {
              v107 = -1;
            }

            if ((v106 & 0x8000) != 0)
            {
              v108 = 0;
            }

            else
            {
              v108 = v107;
            }

            v96[1] = v108;
            v109 = v84 >= 0x3E;
            v84 += 2;
          }

          while (!v109);
          v50 = v83;
          result = v81;
          v51 = v80;
          if (v62 > 0)
          {
            v110 = v53;
            v111 = v55;
            memcpy((v54 + v115 + 1), (v53 + v115 + 1), v116);
            v55 = v111;
            v58 = v122;
            v54 = v123;
            result = a17;
            v50 = a20;
            v49 = a15;
            v51 = a19;
            v53 = v110;
          }

          ++v120;
          ++v121;
          v54 += a4;
          v53 += v49;
        }

        v59 = v124 + 1;
        ++v57;
        ++v58;
        v21 += a4;
        v20 += v49;
        ++v55;
      }

      while (v55 != v51);
    }
  }

  else
  {

    return Stitcher_SceneCut_blendToReferencePoisson_NoExposureDifference(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  return result;
}

void *Stitcher_SceneCut_blendToReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = *MEMORY[0x277D85DE8];
  v16 = 176;
  if (!**(a1 + 336))
  {
    v16 = 192;
  }

  v17 = *(a1 + v16);
  if (**(a1 + 336))
  {
    v18 = 32;
  }

  else
  {
    v18 = 16;
  }

  v19 = 184;
  if (!**(a1 + 336))
  {
    v19 = 200;
  }

  v71 = v17;
  v20 = *(a1 + v19);
  memcpy(__dst, v17, v18);
  result = memcpy(v75, v20, v18);
  v22 = a12;
  if (a12)
  {
    v23 = 0;
    v24 = *(a1 + 24);
    do
    {
      v25 = *v24 & 0xFFFFFFFFFFFFFFFELL;
      v26 = v25 + v18;
      v27 = v25 + v18 - 1;
      v28 = v75;
      v29 = __dst;
      v30 = v18 >> 3;
      do
      {
        _X14 = (a2 + v25);
        _X15 = a6 + v25;
        __asm
        {
          PRFM            #0x11, [X14]
          PRFM            #1, [X15]
        }

        v39 = *v29++;
        v40 = v39;
        v41 = *v28++;
        *_X14 = vshrn_n_s16(vmlal_u8(vmull_u8(*(a2 + v25), v41), *(a6 + v25), v40), 5uLL);
        v25 += 8;
        --v30;
      }

      while (v30);
      if (a10 != v26)
      {
        _X9 = a2 + v27;
        __asm { PRFUM           #0x11, [X9,#1] }

        _X8 = a6 + v27;
        __asm { PRFUM           #1, [X8,#1] }

        v46 = v22;
        result = memcpy((_X9 + 1), (_X8 + 1), a10 - v26);
        v22 = v46;
      }

      ++v24;
      a2 += a4;
      a6 += a8;
      ++v23;
    }

    while (v23 != v22);
  }

  v47 = 0;
  if (v18 >> 4 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v18 >> 4;
  }

  do
  {
    v49 = &v71[v47];
    v78 = vld2_s8(v49);
    v50 = &v20[v47];
    v80 = vld2_s8(v50);
    *&__dst[v47] = v78;
    *&v75[v47] = v80;
    v47 += 16;
  }

  while (16 * v48 != v47);
  if ((v22 + 1) >= 2)
  {
    v51 = 0;
    v52 = (v22 + 1) >> 1;
    v53 = *(a1 + 24);
    do
    {
      v54 = *v53 & 0xFFFFFFFFFFFFFFFELL;
      v55 = v54 + v18;
      v56 = v54 + v18 - 1;
      v57 = v75;
      v58 = __dst;
      v59 = v48;
      do
      {
        _X14 = (a7 + v54);
        _X15 = (a3 + v54);
        __asm
        {
          PRFM            #0x11, [X15]
          PRFM            #1, [X14]
        }

        v64 = *v58;
        v58 += 2;
        v65 = v64;
        v79 = vld2_s8(_X14);
        v81 = vld2_s8(_X15);
        v66 = *v57;
        v57 += 2;
        v82.val[0] = vshrn_n_s16(vmlal_u8(vmull_u8(v81.val[0], v66), v79.val[0], v65), 5uLL);
        v82.val[1] = vshrn_n_s16(vmlal_u8(vmull_u8(v81.val[1], v66), v79.val[1], v65), 5uLL);
        vst2_s8(_X15, v82);
        v54 += 16;
        --v59;
      }

      while (v59);
      if (a10 != v55)
      {
        _X9 = a3 + v56;
        __asm { PRFUM           #0x11, [X9,#1] }

        _X8 = a7 + v56;
        __asm { PRFUM           #1, [X8,#1] }

        result = memcpy((_X9 + 1), (_X8 + 1), a10 - v55);
      }

      v53 += 2;
      a3 += a4;
      a7 += a8;
      ++v51;
    }

    while (v51 != v52);
  }

  return result;
}

void *Stitcher_SceneCut_alphaBlendToReference(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = result[22];
  v15 = *(v14 + 1);
  v45 = result[23];
  v46 = v14;
  v51 = *v14;
  v52[0] = v15;
  v16 = *(v45 + 1);
  v49 = *v45;
  v50[0] = v16;
  if (a12)
  {
    for (i = 0; i != a12; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        _X9 = (a2 + j);
        _X10 = a6 + j;
        __asm
        {
          PRFM            #0x11, [X9]
          PRFM            #1, [X10]
        }

        *_X9 = vshrn_n_s16(vmlal_u8(vmull_u8(*(a2 + j), *(&v50[-1] + j)), *(a6 + j), *(&v52[-1] + j)), 5uLL);
      }

      if (a10 != 32)
      {
        result = memcpy((a2 + 32), (a6 + 32), a10 - 32);
      }

      a2 += a4;
      a6 += a8;
    }
  }

  v29 = &v51;
  v30 = &v49;
  v31 = 1;
  v33 = v45;
  v32 = v46;
  do
  {
    v54 = vld2_s8(v32);
    v32 += 16;
    *v29 = v54;
    v55 = vld2_s8(v33);
    v33 += 16;
    v34 = v31;
    *v30 = v55;
    v30 = v50;
    v29 = v52;
    v31 = 0;
  }

  while ((v34 & 1) != 0);
  if ((a12 + 1) >= 2)
  {
    v35 = 0;
    do
    {
      v36 = 0;
      v37 = &v51;
      v38 = &v49;
      v39 = 1;
      do
      {
        v40 = v39;
        _X11 = (a7 + v36);
        _X13 = (a3 + v36);
        __asm
        {
          PRFM            #0x11, [X13]
          PRFM            #1, [X11]
        }

        v56 = vld2_s8(_X11);
        v57 = vld2_s8(_X13);
        v58.val[0] = vshrn_n_s16(vmlal_u8(vmull_u8(v57.val[0], *v38), v56.val[0], *v37), 5uLL);
        v58.val[1] = vshrn_n_s16(vmlal_u8(vmull_u8(v57.val[1], *v38), v56.val[1], *v37), 5uLL);
        vst2_s8(_X13, v58);
        v36 += 16;
        v38 = v50;
        v37 = v52;
        v39 = 0;
      }

      while ((v40 & 1) != 0);
      if (a10 != 32)
      {
        result = memcpy((a3 + 32), (a7 + 32), a10 - 32);
      }

      a3 += a4;
      a7 += a8;
      ++v35;
    }

    while (v35 != (a12 + 1) >> 1);
  }

  return result;
}

unint64_t getPrevMultipleOf16(unint64_t result)
{
  if (result > 0x10)
  {
    result &= 0xFFFFFFFFFFFFFFF0;
  }

  return result;
}

char *Stitcher_SceneCut_constructor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x170uLL, 0x10B00404FCB4797uLL);
  v7 = BlendingDefaults_constructor();
  *(v6 + 42) = v7;
  if (!v7)
  {
    goto LABEL_49;
  }

  *(v6 + 324) = 0x3F8000003F800000;
  v6[332] = 0;
  *(v6 + 7) = a1;
  *(v6 + 8) = a2;
  *(v6 + 10) = a2 * a1;
  *(v6 + 6) = a2;
  *(v6 + 18) = xmmword_23C47B280;
  v8 = malloc_type_malloc(a2 * a1, 0x100004077774924uLL);
  *v6 = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

  bzero(v8, a2 * a1);
  v9 = 4 * a1;
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  *(v6 + 1) = v10;
  if (!v10)
  {
    goto LABEL_49;
  }

  bzero(v10, v9);
  v11 = malloc_type_malloc(v9, 0x100004052888210uLL);
  *(v6 + 2) = v11;
  if (!v11)
  {
    goto LABEL_49;
  }

  bzero(v11, v9);
  v12 = malloc_type_malloc(8 * *(v6 + 6), 0x100004000313F17uLL);
  *(v6 + 3) = v12;
  if (!v12)
  {
    goto LABEL_49;
  }

  bzero(v12, 8 * *(v6 + 6));
  v13 = malloc_type_malloc(*(v6 + 6), 0x100004077774924uLL);
  *(v6 + 4) = v13;
  if (!v13)
  {
    goto LABEL_49;
  }

  bzero(v13, *(v6 + 6));
  v14 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 15) = v14;
  if (!v14)
  {
    goto LABEL_49;
  }

  v15 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 16) = v15;
  if (!v15)
  {
    goto LABEL_49;
  }

  v16 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 17) = v16;
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 18) = v17;
  if (!v17)
  {
    goto LABEL_49;
  }

  v18 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 19) = v18;
  if (!v18)
  {
    goto LABEL_49;
  }

  v19 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 20) = v19;
  if (!v19)
  {
    goto LABEL_49;
  }

  v20 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 21) = v20;
  if (!v20)
  {
    goto LABEL_49;
  }

  if (*(*(v6 + 42) + 8))
  {
    v21 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(v6 + 27) = v21;
    if (!v21)
    {
      goto LABEL_49;
    }

    v22 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(v6 + 28) = v22;
    if (!v22)
    {
      goto LABEL_49;
    }

    v23 = 0;
    v24 = *(v6 + 27);
    do
    {
      v22[v23] = v23;
      *(v24 + 2 * v23) = 16 - v23;
      ++v23;
    }

    while (v23 != 16);
    v25 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
    *(v6 + 29) = v25;
    if (!v25)
    {
      goto LABEL_49;
    }

    v26 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
    *(v6 + 30) = v26;
    if (!v26)
    {
      goto LABEL_49;
    }

    v27 = 0;
    v28 = *(v6 + 29);
    do
    {
      v26[v27] = v27;
      *(v28 + 2 * v27) = 64 - v27;
      ++v27;
    }

    while (v27 != 64);
    v29 = malloc_type_calloc(1uLL, 0x200uLL, 0x1000040BDFB0063uLL);
    *(v6 + 31) = v29;
    if (!v29)
    {
      goto LABEL_49;
    }

    v30 = v29;
    v31 = 0;
    v32 = xmmword_23C47A6E0;
    v33 = xmmword_23C47A5A0;
    __asm { FMOV            V2.2D, #10.0 }

    v66 = _Q2;
    v67 = vdupq_n_s64(0xC070000000000000);
    __asm { FMOV            V2.2D, #1.0 }

    v65 = _Q2;
    do
    {
      v80 = v33;
      v81 = v32;
      v40.i64[0] = 0x7F0000007FLL;
      v40.i64[1] = 0x7F0000007FLL;
      v41 = vcvtq_f32_s32(vaddq_s32(v32, v40));
      v42 = vcvtq_f32_s32(vaddq_s32(v33, v40));
      v71 = vcvt_hight_f64_f32(v42);
      v72 = vcvtq_f64_f32(*v42.f32);
      v73 = vcvt_hight_f64_f32(v41);
      v74 = vcvtq_f64_f32(*v41.f32);
      v77 = vmulq_f64(vaddq_f64(vabsq_f64(v73), v67), v66);
      v79 = vmulq_f64(vaddq_f64(vabsq_f64(v74), v67), v66);
      v75 = vmulq_f64(vaddq_f64(vabsq_f64(v72), v67), v66);
      __x = vmulq_f64(vaddq_f64(vabsq_f64(v71), v67), v66);
      v69 = exp(__x.f64[1]);
      v43.f64[0] = exp(__x.f64[0]);
      v43.f64[1] = v69;
      v70 = v43;
      __x.f64[0] = exp(v75.f64[1]);
      v44.f64[0] = exp(v75.f64[0]);
      v44.f64[1] = __x.f64[0];
      v76 = v44;
      __x.f64[0] = exp(v77.f64[1]);
      v45.f64[0] = exp(v77.f64[0]);
      v45.f64[1] = __x.f64[0];
      v78 = v45;
      __x.f64[0] = exp(v79.f64[1]);
      v46.f64[0] = exp(v79.f64[0]);
      v46.f64[1] = __x.f64[0];
      *&v30[v31] = vuzp1q_s16(vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v72, vaddq_f64(v76, v65))), vdivq_f64(v71, vaddq_f64(v70, v65)))), vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v74, vaddq_f64(v46, v65))), vdivq_f64(v73, vaddq_f64(v78, v65)))));
      v47.i64[0] = 0x800000008;
      v47.i64[1] = 0x800000008;
      v33 = vaddq_s32(v80, v47);
      v32 = vaddq_s32(v81, v47);
      v31 += 16;
    }

    while (v31 != 512);
    v33.i32[0] = 8.0;
    v48 = FIR1DFilter_Gaussian(*(v6 + 6), *v33.i64);
    *(v6 + 32) = v48;
    if (!v48)
    {
      goto LABEL_49;
    }

    v49 = malloc_type_malloc(4 * *(v6 + 6), 0x100004052888210uLL);
    *(v6 + 33) = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v50 = malloc_type_malloc((2 * *(v6 + 6)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
    *(v6 + 34) = v50;
    if (!v50)
    {
      goto LABEL_49;
    }

    v51 = malloc_type_malloc((2 * *(v6 + 6)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
    *(v6 + 35) = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v52 = malloc_type_malloc(4 * *(v6 + 6), 0x100004052888210uLL);
    *(v6 + 5) = v52;
    if (!v52)
    {
      goto LABEL_49;
    }
  }

  v53 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  *(v6 + 22) = v53;
  if (!v53)
  {
    goto LABEL_49;
  }

  v54 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  *(v6 + 23) = v54;
  if (!v54)
  {
    goto LABEL_49;
  }

  for (i = 0; i != 32; ++i)
  {
    *(*(v6 + 22) + i) = i + 1;
    *(*(v6 + 23) + i) = 32 - *(*(v6 + 22) + i);
  }

  v56 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(v6 + 24) = v56;
  if (!v56)
  {
    goto LABEL_49;
  }

  v57 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(v6 + 25) = v57;
  if (!v57)
  {
    goto LABEL_49;
  }

  for (j = 0; j != 16; ++j)
  {
    *(*(v6 + 24) + j) = ((j + 1) + (j + 1));
    *(*(v6 + 25) + j) = 32 - *(*(v6 + 24) + j);
  }

  if (**(v6 + 42))
  {
    *(v6 + 24) = 2;
    v59 = FastFilter_constructor(*(v6 + 14), *(v6 + 14), *(v6 + 16));
    *(v6 + 13) = v59;
    if (!v59 || FastFilter_allocFilterSpecificData(v59, *(v6 + 24)) == -1)
    {
      goto LABEL_49;
    }

    CVPixelBufferLockBaseAddress(*(v6 + 14), 0);
    *(v6 + 11) = CVPixelBufferGetBaseAddressOfPlane(*(v6 + 14), 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v6 + 14), 0);
  }

  else
  {
    v61 = malloc_type_malloc(*(v6 + 10), 0x100004077774924uLL);
    *(v6 + 11) = v61;
    if (!v61)
    {
LABEL_49:
      Stitcher_SceneCut_destructor(v6);
      return 0;
    }

    bzero(v61, *(v6 + 10));
    BytesPerRowOfPlane = *(v6 + 7);
  }

  *(v6 + 9) = BytesPerRowOfPlane;
  if (*(*(v6 + 42) + 4))
  {
    v62 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
    *(v6 + 38) = v62;
    if (!v62)
    {
      goto LABEL_49;
    }

    v63 = malloc_type_calloc(1uLL, *(v6 + 8), 0x100004077774924uLL);
    *(v6 + 39) = v63;
    if (!v63)
    {
      goto LABEL_49;
    }
  }

  *(v6 + 43) = a3;
  return v6;
}

void Stitcher_SceneCut_destructor(void *a1)
{
  if (a1)
  {
    if (**(a1 + 42))
    {
      v2 = *(a1 + 14);
      if (v2)
      {
        CVPixelBufferUnlockBaseAddress(v2, 0);
        CVPixelBufferRelease(*(a1 + 14));
        *(a1 + 14) = 0;
      }

      v3 = *(a1 + 13);
      if (v3)
      {
        FastFilter_destructor(v3);
        *(a1 + 13) = 0;
      }
    }

    else
    {
      v4 = *(a1 + 11);
      if (v4)
      {
        free(v4);
      }
    }

    v5 = *(a1 + 3);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
    }

    v7 = *(a1 + 1);
    if (v7)
    {
      free(v7);
    }

    if (*a1)
    {
      free(*a1);
    }

    v8 = *(a1 + 15);
    if (v8)
    {
      free(v8);
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 17);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 18);
    if (v11)
    {
      free(v11);
    }

    v12 = *(a1 + 19);
    if (v12)
    {
      free(v12);
    }

    v13 = *(a1 + 20);
    if (v13)
    {
      free(v13);
    }

    v14 = *(a1 + 21);
    if (v14)
    {
      free(v14);
    }

    v15 = *(a1 + 22);
    if (v15)
    {
      free(v15);
    }

    v16 = *(a1 + 23);
    if (v16)
    {
      free(v16);
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      free(v17);
    }

    v18 = *(a1 + 25);
    if (v18)
    {
      free(v18);
    }

    v19 = *(a1 + 27);
    if (v19)
    {
      free(v19);
    }

    v20 = *(a1 + 28);
    if (v20)
    {
      free(v20);
    }

    v21 = *(a1 + 29);
    if (v21)
    {
      free(v21);
    }

    v22 = *(a1 + 30);
    if (v22)
    {
      free(v22);
    }

    v23 = *(a1 + 31);
    if (v23)
    {
      free(v23);
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      FIR1DFilter_destructor(v24);
    }

    v25 = *(a1 + 33);
    if (v25)
    {
      free(v25);
    }

    v26 = *(a1 + 34);
    if (v26)
    {
      free(v26);
    }

    v27 = *(a1 + 35);
    if (v27)
    {
      free(v27);
    }

    v28 = *(a1 + 5);
    if (v28)
    {
      free(v28);
    }

    v29 = *(a1 + 4);
    if (v29)
    {
      free(v29);
    }

    v30 = *(a1 + 38);
    if (v30)
    {
      free(v30);
    }

    v31 = *(a1 + 39);
    if (v31)
    {
      free(v31);
    }

    v32 = *(a1 + 42);
    if (v32)
    {
      BlendingDefaults_destructor(v32);
    }

    free(a1);
  }
}

uint64_t Stitcher_SceneCut_setDefaults(uint64_t a1, int *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 336);
  v7 = *(a1 + 344);
  v8 = v6[1];
  v9 = a2[1];
  if (v8 != v9)
  {
    if (v8)
    {
      v10 = *(a1 + 304);
      if (v10)
      {
        free(v10);
        *(a1 + 304) = 0;
      }

      v11 = *(a1 + 312);
      if (v11)
      {
        free(v11);
        *(a1 + 312) = 0;
      }

      v9 = a2[1];
      v6 = *(a1 + 336);
    }

    v6[1] = v9;
    if (v9)
    {
      v12 = malloc_type_malloc(*(a1 + 56), 0x100004077774924uLL);
      *(a1 + 304) = v12;
      if (!v12)
      {
        goto LABEL_69;
      }

      v13 = malloc_type_calloc(1uLL, *(a1 + 64), 0x100004077774924uLL);
      *(a1 + 312) = v13;
      if (!v13)
      {
        goto LABEL_69;
      }

      v6 = *(a1 + 336);
    }
  }

  v14 = *v6;
  if (v14 == *a2)
  {
    goto LABEL_28;
  }

  if (v14)
  {
    v15 = *(a1 + 112);
    if (v15)
    {
      CVPixelBufferUnlockBaseAddress(v15, 0);
      CVPixelBufferRelease(*(a1 + 112));
      *(a1 + 112) = 0;
    }

    v17 = (a1 + 104);
    v16 = *(a1 + 104);
    if (!v16)
    {
      goto LABEL_21;
    }

    FastFilter_destructor(v16);
    goto LABEL_20;
  }

  v17 = (a1 + 88);
  v18 = *(a1 + 88);
  if (v18)
  {
    free(v18);
LABEL_20:
    *v17 = 0;
  }

LABEL_21:
  v19 = *a2;
  **(a1 + 336) = *a2;
  if (v19)
  {
    *(a1 + 96) = 2;
    v20 = FastFilter_constructor(*(a1 + 56), *(a1 + 56), *(a1 + 64));
    *(a1 + 104) = v20;
    if (!v20 || FastFilter_allocFilterSpecificData(v20, *(a1 + 96)) == -1)
    {
      goto LABEL_69;
    }

    CVPixelBufferLockBaseAddress(*(a1 + 112), 0);
    *(a1 + 88) = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 112), 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 112), 0);
  }

  else
  {
    v22 = malloc_type_malloc(*(a1 + 80), 0x100004077774924uLL);
    *(a1 + 88) = v22;
    if (!v22)
    {
      goto LABEL_69;
    }

    bzero(v22, *(a1 + 80));
    BytesPerRowOfPlane = *(a1 + 56);
  }

  *(a1 + 72) = BytesPerRowOfPlane;
LABEL_28:
  v23 = *(a1 + 336);
  v24 = *(v23 + 8);
  v25 = a2[2];
  if (v24 == v25)
  {
    return 0;
  }

  if (v24)
  {
    v26 = *(a1 + 216);
    if (v26)
    {
      free(v26);
      *(a1 + 216) = 0;
    }

    v27 = *(a1 + 224);
    if (v27)
    {
      free(v27);
      *(a1 + 224) = 0;
    }

    v28 = *(a1 + 232);
    if (v28)
    {
      free(v28);
      *(a1 + 232) = 0;
    }

    v29 = *(a1 + 240);
    if (v29)
    {
      free(v29);
      *(a1 + 240) = 0;
    }

    v30 = *(a1 + 248);
    if (v30)
    {
      free(v30);
      *(a1 + 248) = 0;
    }

    v31 = *(a1 + 256);
    if (v31)
    {
      FIR1DFilter_destructor(v31);
      *(a1 + 256) = 0;
    }

    v32 = *(a1 + 264);
    if (v32)
    {
      free(v32);
      *(a1 + 264) = 0;
    }

    v33 = *(a1 + 272);
    if (v33)
    {
      free(v33);
      *(a1 + 272) = 0;
    }

    v34 = *(a1 + 280);
    if (v34)
    {
      free(v34);
      *(a1 + 280) = 0;
    }

    v35 = *(a1 + 40);
    if (v35)
    {
      free(v35);
      *(a1 + 40) = 0;
    }

    v25 = a2[2];
    v23 = *(a1 + 336);
  }

  *(v23 + 8) = v25;
  if (!v25)
  {
    return 0;
  }

  v36 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
  *(a1 + 216) = v36;
  if (v36)
  {
    v37 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(a1 + 224) = v37;
    if (v37)
    {
      v38 = 0;
      v39 = *(a1 + 216);
      do
      {
        v37[v38] = v38;
        *(v39 + 2 * v38) = 16 - v38;
        ++v38;
      }

      while (v38 != 16);
      v40 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
      *(a1 + 232) = v40;
      if (v40)
      {
        v41 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
        *(a1 + 240) = v41;
        if (v41)
        {
          v42 = 0;
          v43 = *(a1 + 232);
          do
          {
            v41[v42] = v42;
            *(v43 + 2 * v42) = 64 - v42;
            ++v42;
          }

          while (v42 != 64);
          v44 = malloc_type_calloc(1uLL, 0x200uLL, 0x1000040BDFB0063uLL);
          *(a1 + 248) = v44;
          if (v44)
          {
            v45 = v44;
            v46 = 0;
            v47 = xmmword_23C47A5A0;
            __asm
            {
              FMOV            V2.4S, #-10.0
              FMOV            V1.4S, #10.0
            }

            v68 = _Q1;
            v69 = _Q2;
            __asm { FMOV            V1.2D, #1.0 }

            v67 = _Q1;
            do
            {
              v76 = v47;
              v55.i64[0] = 0x7F0000007FLL;
              v55.i64[1] = 0x7F0000007FLL;
              v56 = vcvtq_f32_s32(vaddq_s32(v47, v55));
              v73 = vcvt_hight_f64_f32(v56);
              v74 = vcvtq_f64_f32(*v56.f32);
              v57 = vmulq_f32(vaddq_f32(vabsq_f32(v56), v69), v68);
              v75 = vcvtq_f64_f32(*v57.f32);
              __x = vcvt_hight_f64_f32(v57);
              v71 = exp(__x.f64[1]);
              v58.f64[0] = exp(__x.f64[0]);
              v58.f64[1] = v71;
              v72 = v58;
              __x.f64[0] = exp(v75.f64[1]);
              v59.f64[0] = exp(v75.f64[0]);
              v59.f64[1] = __x.f64[0];
              *&v45[v46] = vmovn_s32(vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v74, vaddq_f64(v59, v67))), vdivq_f64(v73, vaddq_f64(v72, v67)))));
              v60.i64[0] = 0x400000004;
              v60.i64[1] = 0x400000004;
              v47 = vaddq_s32(v76, v60);
              v46 += 8;
            }

            while (v46 != 512);
            v47.i32[0] = 8.0;
            v61 = FIR1DFilter_Gaussian(*(a1 + 48), *v47.i64);
            *(a1 + 256) = v61;
            if (v61)
            {
              v62 = malloc_type_malloc(4 * *(a1 + 48), 0x100004052888210uLL);
              *(a1 + 264) = v62;
              if (v62)
              {
                v63 = malloc_type_malloc((2 * *(a1 + 48)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
                *(a1 + 272) = v63;
                if (v63)
                {
                  v64 = malloc_type_malloc((2 * *(a1 + 48)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
                  *(a1 + 280) = v64;
                  if (v64)
                  {
                    v65 = malloc_type_malloc(4 * *(a1 + 48), 0x100004052888210uLL);
                    *(a1 + 40) = v65;
                    if (v65)
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_69:
  Stitcher_SceneCut_destructor(a1);
  if (Stitcher_SceneCut_constructor(v4, v5, v7))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 4294967294;
  }
}

void Stitcher_SceneCut_reset(uint64_t a1)
{
  if (*(*(a1 + 336) + 4))
  {
    bzero(*(a1 + 312), *(a1 + 64));
  }
}

uint64_t Stitcher_SceneCut_SNRFactorUpdate(uint64_t result, float a2)
{
  v2 = 1.0;
  if (a2 <= 30.0 && a2 > 0.0)
  {
    v2 = (a2 / 30.0) * (a2 / 30.0);
  }

  *(result + 320) = v2;
  return result;
}

void Stitcher_SceneCut_ExposureRatioFactorUpdate(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    *(a1 + 332) = 0;
    *(a1 + 324) = 0x3F8000003F800000;
  }

  else
  {
    *(a1 + 332) = 1;
    v4 = *(a1 + 324);
    v5 = v4 > a2;
    v6 = v4 / a2;
    v7 = a2 / v4;
    if (v5)
    {
      v7 = v6;
    }

    v8 = pow(v7, 0.454545438);
    *(a1 + 328) = v8;
    *(a1 + 324) = a2;
  }
}

uint64_t Stitcher_SceneCut_minOverlapWidth(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    *(a1 + 332) = 0;
    *(a1 + 324) = 0x3F8000003F800000;
    v3 = 288;
  }

  else
  {
    *(a1 + 332) = 1;
    v5 = *(a1 + 324);
    v6 = v5 > a2;
    v7 = v5 / a2;
    v8 = a2 / v5;
    if (v6)
    {
      v8 = v7;
    }

    v9 = pow(v8, 0.454545438);
    *(a1 + 328) = v9;
    *(a1 + 324) = a2;
    v3 = 296;
  }

  return *(a1 + v3);
}

uint64_t Stitcher_SceneCut_maxMinOverlapWidth(uint64_t a1)
{
  if (*(a1 + 288) <= *(a1 + 296))
  {
    return *(a1 + 296);
  }

  else
  {
    return *(a1 + 288);
  }
}

uint64_t Stitcher_SceneCut_pasteImageToReference(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float *a11, unint64_t a12, vImagePixelCount a13, int a14, int a15)
{
  v21 = result;
  v56 = *MEMORY[0x277D85DE8];
  v22 = *(result + 332);
  if (v22 == 1)
  {
    v23 = *(result + 296);
  }

  else
  {
    v23 = *(result + 288);
  }

  if (v23 <= a12)
  {
    v24 = 1.0;
    if (a5 <= 30.0 && a5 > 0.0)
    {
      v24 = (a5 / 30.0) * (a5 / 30.0);
    }

    *(result + 320) = v24;
    v25 = *(result + 336);
    if (v25[2] || *v25)
    {
      if (v22)
      {
        v26 = 64;
      }

      else
      {
        v26 = 16;
      }
    }

    else
    {
      v26 = 8;
    }

    v27 = a12 - 2 * v26;
    if (v27 <= 0x10)
    {
      v28 = a12 - 2 * v26;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFF0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(*(v21 + 336) + 4))
    {
      Stitcher_SceneCut_calculateFlarePerRow(v21, a7 + v26, (a8 + v26), a9, v29, v28, a13);
    }

    v31 = CFAbsoluteTimeGetCurrent();
    v32 = CFAbsoluteTimeGetCurrent();
    Stitcher_SceneCut_calculateCostImage_Yuv(v21, (a2 + v26), (a3 + v26), a4, v33, (a7 + v26), (a8 + v26), a9, v51, v28, a13);
    v34 = CFAbsoluteTimeGetCurrent();
    v35 = CFAbsoluteTimeGetCurrent();
    if (**(v21 + 336))
    {
      FastFilter_execute(*(v21 + 104), *(v21 + 96), *(v21 + 112), *(v21 + 112), 0, 0, v28, a13);
    }

    v36 = v31 - Current;
    v37 = v34 - v32;
    v38 = CFAbsoluteTimeGetCurrent() - v35;
    v39 = CFAbsoluteTimeGetCurrent();
    Stitcher_SceneCut_findVerticalSeam_NEON(v21, v28, a13);
    v40 = CFAbsoluteTimeGetCurrent() - v39;
    v42 = CFAbsoluteTimeGetCurrent();
    v49 = v42;
    if (*(*(v21 + 336) + 8))
    {
      Stitcher_SceneCut_blendToReferencePoisson(v21, a2, a3, a4, v42, v43, v44, v45, v46, v47, v48, v41, a7, a8, a9, v52, a11, v53, a13, v26);
    }

    else
    {
      Stitcher_SceneCut_blendToReference(v21, a2, a3, a4, v41, a7, a8, a9, v52, a11, v53, a13);
    }

    v50 = CFAbsoluteTimeGetCurrent() - v49;
    __sprintf_chk(v55, 0, 0x40uLL, "BlendingInfo%d", a15);
    return ACTLogMessageImp(1, "{%s|width:%d} {%s|height:%d} {%s|blendingMode:%d} {%s|blendingDefaults:%d} {%s|timeM2M:%.0f} {%s|SNR:%.2f} {%s|inSurfaceID:%d} {%s|outSurfaceID:%d} {%s|flare:%.0f} {%s|cost:%.0f} {%s|wideSceneCut:%.0f} {%s|seam:%.0f} {%s|blend:%.0f} \n", v55, a12, v55, a13, v55, a14, v55, *(*(v21 + 336) + 4) + 2 * **(v21 + 336) + 4 * *(*(v21 + 336) + 8), v55, *(v21 + 352) * 1000.0, v55, a5, v55, *(v21 + 360), v55, *(v21 + 364), v55, v36 * 1000.0, v55, v37 * 1000.0, v55, v38 * 1000.0, v55, v40 * 1000.0, v55, v50 * 1000.0);
  }

  return result;
}

void *Stitcher_SceneCut_findVerticalSeam_orig_v2(void *result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  result[6] = a3;
  if (a2)
  {
    v6 = result[11];
    v7 = result[2];
    v8 = a2;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  v10 = a3 - 1;
  if (a3 <= 1)
  {
    v14 = a2 - 1;
  }

  else
  {
    v48 = a3 - 1;
    v11 = result[7];
    v12 = (*result + v11);
    v13 = (result[11] + v11);
    v14 = a2 - 1;
    v15 = a2 - 2;
    for (i = 1; i != a3; ++i)
    {
      v17 = v5[1];
      v18 = v5[2];
      v19 = *v18;
      v20 = v18[1];
      v21 = v20 < *v18;
      if (v20 >= *v18)
      {
        v22 = *v18;
      }

      else
      {
        v22 = v18[1];
      }

      v23 = v13 + 1;
      *v17 = v22 + *v13;
      v24 = v17 + 1;
      *v12 = v21;
      v25 = v12 + 1;
      if (v14 >= 2)
      {
        v26 = 0;
        v27 = 0;
        v28 = v18 + 2;
        do
        {
          v29 = v19;
          v19 = v20;
          v30 = v27 + 1;
          v20 = v28[v27];
          v31 = v27;
          if (v29 >= v19)
          {
            v29 = v19;
            v31 = v27 + 1;
          }

          v32 = v20 >= v29;
          if (v20 < v29)
          {
            v29 = v28[v27];
          }

          v24[v27] = v29 + v23[v27];
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = v27 + 2;
          }

          v25[v27] = v33;
          v26 -= 4;
          ++v27;
        }

        while (v15 != v30);
        if (v19 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v19;
        }

        v23 += v30;
        v24 = (v24 - v26);
        v25 += v30;
      }

      if (v19 >= v20)
      {
        v34 = a2 - 1;
      }

      else
      {
        v34 = a2 - 2;
      }

      *v24 = v22 + *v23;
      *v25 = v34;
      result = memcpy(v5[2], v5[1], 4 * a2);
      v35 = v5[7];
      v13 += v35;
      v12 += v35;
    }

    v10 = v48;
  }

  v36 = 0;
  v37 = v5[1];
  v38 = a2 >> 1;
  v39 = *(v37 + 4 * (a2 >> 1));
  v40 = v39;
  do
  {
    if (*(v37 + 4 * v36) < v40)
    {
      LOBYTE(v39) = *(v37 + 4 * v36);
      v40 = *(v37 + 4 * v36);
      v38 = v36;
    }

    ++v36;
  }

  while (v36 <= v14);
  v41 = v5[4];
  *(v5[3] + 8 * v10) = v38;
  *(v41 + v10) = v39;
  if (a3 >= 2)
  {
    v42 = (a3 - 2);
    v43 = v5[7] * v10;
    v44 = v5[11] + v43;
    v45 = *v5 + v43;
    do
    {
      v38 = *(v45 + v38);
      v46 = v5[4];
      *(v5[3] + 8 * v42) = v38;
      *(v46 + v42) = *(v44 + v38);
      v47 = v5[7];
      v45 -= v47;
      v44 -= v47;
      --v42;
    }

    while (v42 != -1);
  }

  return result;
}

uint64_t Stitcher_SceneCut_findVerticalSeam_v2_NEON(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v28[10] = *MEMORY[0x277D85DE8];
  a1[6] = a3;
  v6 = a1[11];
  v7 = a1[1];
  if (a2)
  {
    v8 = a2;
    v9 = a1[11];
    v10 = a1[1];
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  v27 = 0x706050403020100;
  v12 = a1[7];
  v28[0] = *a1 + v12;
  v28[1] = v6 + v12;
  v13 = a3 - 1;
  v28[2] = a2;
  v28[3] = a3 - 1;
  v28[4] = v7;
  v28[5] = &v27;
  v28[6] = v12;
  memset(&v28[7], 0, 24);
  result = sub_23C441600(v28);
  v15 = 0;
  v16 = a1[1];
  v17 = a2 >> 1;
  v18 = *(v16 + 4 * (a2 >> 1));
  v19 = v18;
  do
  {
    if (*(v16 + 4 * v15) < v19)
    {
      v18 = *(v16 + 4 * v15);
      v19 = v18;
      v17 = v15;
    }

    ++v15;
  }

  while (v15 <= a2 - 1);
  v20 = a1[4];
  *(a1[3] + 8 * v13) = v17;
  *(v20 + v13) = v18;
  if (v3 >= 2)
  {
    v21 = (v3 - 2);
    v22 = a1[7] * v13;
    v23 = a1[11] + v22;
    v24 = *a1 + v22;
    do
    {
      v17 = *(v24 + v17);
      v25 = a1[4];
      *(a1[3] + 8 * v21) = v17;
      *(v25 + v21) = *(v23 + v17);
      v26 = a1[7];
      v24 -= v26;
      v23 -= v26;
      --v21;
    }

    while (v21 != -1);
  }

  return result;
}

void Stitcher_SceneCut_calculateCostImage_Yuv_v2(void *a1, unsigned __int8 *a2, const char *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, const char *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v17 = a1[11];
  v19 = a1[16];
  v18 = a1[17];
  v83 = a1[39];
  Stitcher_SceneCut_calculateSpatialBiasLut_v2(a1, a10);
  if (a11)
  {
    v20 = 0;
    v21 = v83;
    if (!*(a1[42] + 4))
    {
      v21 = 0;
    }

    do
    {
      _X14 = v19;
      _X13 = a6;
      _X12 = a2;
      if (a10 >= 0x10)
      {
        v25 = 0;
        v26 = a10 >> 4;
        do
        {
          _X13 = &a2[v25];
          _X15 = &a6[v25];
          _X16 = &v19[v25];
          __asm
          {
            PRFM            #1, [X13]
            PRFM            #1, [X15]
            PRFM            #0x11, [X16]
          }

          *_X16 = vshrq_n_u8(vabdq_u8(*&a6[v25], *&a2[v25]), 1uLL);
          v25 += 16;
          --v26;
        }

        while (v26);
        _X12 = &a2[v25];
        _X13 = &a6[v25];
        _X14 = &v19[v25];
      }

      v37 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X12]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v42 = *_X12++;
          v41 = v42;
          v43 = *_X13++;
          v44 = v43 - v41;
          if (v44 < 0)
          {
            v44 = -v44;
          }

          *_X14++ = v44 >> 1;
          --v37;
        }

        while (v37);
      }

      if (!v20 || (v20 & 1) != 0)
      {
        _X12 = v18;
        _X13 = a7;
        _X14 = a3;
        v48 = a10 >> 4;
        if (a10 >= 0x10)
        {
          do
          {
            __asm
            {
              PRFM            #1, [X14]
              PRFM            #1, [X13]
              PRFM            #0x11, [X12]
            }

            v85 = vld2_s8(_X14);
            _X14 += 16;
            v87 = vld2_s8(_X13);
            _X13 += 16;
            v85.val[0] = vhadd_u8(vabd_u8(v87.val[1], v85.val[1]), vabd_u8(v87.val[0], v85.val[0]));
            v85.val[1] = v85.val[0];
            vst2_s8(_X12, v85);
            _X12 += 16;
            --v48;
          }

          while (v48);
        }

        a3 += a4;
        a7 += a8;
        if ((a10 & 0xF) != 0)
        {
          v52 = 0;
          do
          {
            _X16 = &_X14[v52];
            _X17 = &_X13[v52];
            _X0 = &_X12[v52];
            __asm
            {
              PRFM            #1, [X16]
              PRFM            #1, [X17]
              PRFM            #0x11, [X0]
            }

            v59 = _X13[v52] - _X14[v52];
            if (v59 < 0)
            {
              v59 = _X14[v52] - _X13[v52];
            }

            v60 = *(_X17 + 1) - *(_X16 + 1);
            if (v60 < 0)
            {
              v60 = -v60;
            }

            v61 = (v60 + v59) >> 1;
            *_X0 = v61;
            _X0[1] = v61;
            v52 += 2;
          }

          while ((a10 & 0xF) > v52);
        }
      }

      v62 = a1[7];
      _X13 = a1[15];
      if (*(a1[42] + 4))
      {
        if (*v21++)
        {
          _X13 = a1[38];
        }
      }

      _X14 = v17;
      _X15 = v19;
      _X16 = v18;
      v68 = a10 >> 4;
      if (a10 >= 0x10)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X15]
            PRFM            #1, [X16]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v86 = vld2_s8(_X15);
          _X15 += 16;
          v88 = vld2_s8(_X16);
          _X16 += 16;
          v89 = vld2_s8(_X13);
          _X13 += 16;
          v73 = vhadd_u8(*v86.i8, v88.val[0]);
          v86 = vmull_u8(v89.val[1], vhadd_u8(v86.u64[1], v88.val[1]));
          v86.u64[1] = vqshrn_n_u16(vmull_u8(v89.val[0], v73), 8uLL);
          v88.val[0] = vqshrn_n_u16(v86, 8uLL);
          vst2_s8(_X14, *(&v86 + 8));
          _X14 += 16;
          --v68;
        }

        while (v68);
      }

      v74 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          __asm
          {
            PRFM            #1, [X15]
            PRFM            #1, [X16]
            PRFM            #1, [X13]
            PRFM            #0x11, [X14]
          }

          v80 = *_X15++;
          v79 = v80;
          v81 = *_X16++;
          v82 = v81 + v79;
          LOWORD(v81) = *_X13++;
          *_X14++ = ((v82 >> 1) * v81) >> 8;
          --v74;
        }

        while (v74);
      }

      a2 += a4;
      a6 += a8;
      v17 += v62;
      ++v20;
    }

    while (v20 != a11);
  }
}

void Stitcher_SceneCut_calculateSpatialBiasLut_v2(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v6 = (1.0 / (1.2 - expf(-((a2 / (a2 + a2)) * (a2 / (a2 + a2)))))) * 255.0;
    do
    {
      v5 = (a2 >> 1);
      *(*(a1 + 120) + v4) = (v6 * (1.2 - expf(-(((v4 - v5) / (v5 + v5)) * ((v4 - v5) / (v5 + v5))))));
      ++v4;
    }

    while (a2 != v4);
  }
}

uint64_t Stitcher_SceneCut_setStraightVerticalSeam_v2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a7 + a12);
    v15 = (a3 + a12);
    do
    {
      v16 = *(a6 + a12) - *(a2 + a12);
      if (v16 < 0)
      {
        v16 = *(a2 + a12) - *(a6 + a12);
      }

      if (!v13 || (v13 & 1) != 0)
      {
        v17 = *v15;
        v15 += a4;
        v18 = *v14;
        v14 += a8;
        v12 = v18 - v17;
        if (v12 < 0)
        {
          v12 = -v12;
        }

        v12 = v12;
      }

      a2 += a4;
      *(*(result + 32) + v13) = ((v16 >> 1) + v12) >> 1;
      a6 += a8;
      *(*(result + 24) + 8 * v13++) = a12;
    }

    while (a11 != v13);
  }

  return result;
}

void Stitcher_SceneCut_calculateCostImage_Y_v2(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  Stitcher_SceneCut_calculateSpatialBiasLut_v2(a1, a10);
  if (a11)
  {
    v16 = 0;
    v17 = a1[16];
    v18 = a1[11];
    do
    {
      v19 = a1[7];
      v20 = v17;
      v21 = a6;
      v22 = a2;
      if (a10 >= 0x10)
      {
        v23 = 0;
        v24 = a10 >> 4;
        do
        {
          *&v17[v23] = vshrq_n_u8(vabdq_u8(*&a6[v23], *&a2[v23]), 1uLL);
          v23 += 16;
          --v24;
        }

        while (v24);
        v22 = &a2[v23];
        v21 = &a6[v23];
        v20 = &v17[v23];
      }

      v25 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          v27 = *v22++;
          v26 = v27;
          v28 = *v21++;
          v29 = v28 - v26;
          if (v29 < 0)
          {
            v29 = -v29;
          }

          *v20++ = v29 >> 1;
          --v25;
        }

        while (v25);
      }

      v30 = a1[15];
      v31 = v17;
      v32 = v18;
      v33 = a10 >> 4;
      if (a10 >= 0x10)
      {
        do
        {
          v39 = vld2_s8(v31);
          v31 += 16;
          v40 = vld2_s8(v30);
          v30 += 16;
          v34 = vmull_u8(v40.val[0], *v39.i8);
          v39 = vmull_u8(v40.val[1], v39.u64[1]);
          v39.u64[1] = vqshrn_n_u16(v34, 8uLL);
          v40.val[0] = vqshrn_n_u16(v39, 8uLL);
          vst2_s8(v32, *(&v39 + 8));
          v32 += 16;
          --v33;
        }

        while (v33);
      }

      v35 = a10 & 0xF;
      if ((a10 & 0xF) != 0)
      {
        do
        {
          v37 = *v31++;
          v36 = v37;
          v38 = *v30++;
          *v32++ = (v38 * v36) >> 8;
          --v35;
        }

        while (v35);
      }

      a2 += a4;
      a6 += a8;
      v18 += v19;
      ++v16;
    }

    while (v16 != a11);
  }
}

void Stitcher_SceneCut_calculateFlarePerRow_v2(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  _X23 = a2;
  v12 = *(a1 + 312);
  Stitcher_SceneCut_calculateSpatialBiasLutFlare_v2(a1, a6);
  if (a7)
  {
    v13 = 0;
    _X24 = a3;
    do
    {
      if ((v13 == 0) | v13 & 1)
      {
        _X24 = a3;
      }

      v15 = *(v12 + v13);
      if ((v13 == 0) | v13 & 1)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      a3 += v16;
      __asm
      {
        PRFM            #1, [X23]
        PRFM            #1, [X24]
      }

      v23 = FlareDetector_avgFlareProbability(_X23, _X24, a6);
      v24 = v15 > 1;
      if (v23)
      {
        v24 = 2;
      }

      *(v12 + v13++) = v24;
      _X23 += a4;
    }

    while (a7 != v13);
  }
}

void Stitcher_SceneCut_calculateSpatialBiasLutFlare_v2(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = a2 * 0.01;
    v5 = 0;
    v6 = (1.0 / (1.1 - expf(-((a2 / v4) * (a2 / v4))))) * 255.0;
    do
    {
      *(*(a1 + 304) + v5) = (v6 * (1.1 - expf(-((v5 / v4) * (v5 / v4)))));
      ++v5;
    }

    while (a2 != v5);
  }
}

uint64_t print_uint8(const char *a1, __n128 a2)
{
  xmmword_27E1F65A0 = a2;
  printf("%s = ", a1);
  for (i = 0; i != 16; ++i)
  {
    printf("%02d ", *(&xmmword_27E1F65A0 + i));
  }

  return putchar(10);
}

uint64_t print_uint8_2(double a1, double a2)
{
  v2 = 0;
  v3 = byte_27E1F65B0;
  vst2_s8(v3, *&a1);
  do
  {
    result = printf("%02d ", byte_27E1F65B0[v2++]);
  }

  while (v2 != 16);
  return result;
}

uint64_t print_int16(const char *a1, __n128 a2)
{
  xmmword_27E1F65C0 = a2;
  printf("%s = ", a1);
  for (i = 0; i != 16; i += 2)
  {
    printf("%02d ", *(&xmmword_27E1F65C0 + i));
  }

  return putchar(10);
}

uint64_t print_int16_2(const char *a1, __n128 a2, __n128 a3)
{
  v3 = word_27E1F65D0;
  vst2q_s16(v3, *a2.n128_u64);
  printf("%s = ", a1);
  for (i = 0; i != 16; ++i)
  {
    printf("%02d ", word_27E1F65D0[i]);
  }

  return putchar(10);
}

float *Stitcher_SceneCut_blendToReferencePoisson_NoExposureDifference_v2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, vDSP_Length a19, uint64_t a20)
{
  v20 = a13;
  v21 = a3;
  v23 = *(a1 + 216);
  v24 = *(a1 + 224);
  v25 = v23[1];
  v121 = *v23;
  v26 = *v24;
  v127 = *(v24 + 1);
  v128 = v26;
  v132 = vld2q_s16(v23->i16);
  v115 = v132.val[0];
  v27 = vld2q_s16(v24);
  v114 = v27;
  v28 = *(a1 + 264);
  if (a19)
  {
    v29 = 0;
    v31 = *(a1 + 32);
    v30 = *(a1 + 40);
    v33 = *(a1 + 272);
    v32 = *(a1 + 280);
    v34 = a2;
    v35 = a13;
    v36 = a3;
    v37 = a14;
    v38 = *(a1 + 24);
    do
    {
      v39 = (*(v38 + 8 * v29) + a20) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v31 + v29);
      v41 = *(a1 + 320);
      v42 = (v132.val[1].u32[0] * v41) + -5.0;
      if (v42 < 0.0)
      {
        v42 = 0.0;
      }

      *(v30 + 4 * v29) = v42;
      LOBYTE(v42) = *(v34 + v39);
      LOBYTE(v41) = *(v35 + v39);
      v43 = (LODWORD(v42) - LODWORD(v41)) * 0.5;
      v44 = *(a1 + 320);
      *v132.val[1].i32 = v44 * v43;
      v28[v29] = v132.val[1].i32[0];
      if ((v29 & 1) == 0)
      {
        v45 = (v36 + v39);
        v36 += a4;
        v46 = (v37 + v39);
        v37 += a15;
        v47 = *v45;
        LOBYTE(v44) = *v46;
        v48 = (v132.val[1].u32[0] - LODWORD(v44)) * 0.5;
        v49 = *(a1 + 320);
        *v132.val[1].i32 = v49 * v48;
        LOBYTE(a10) = v45[1];
        LOBYTE(a11) = v46[1];
        a11 = LODWORD(a11);
        a10 = (LODWORD(a10) - a11) * 0.5;
        *v33++ = v132.val[1].i32[0];
        *v32++ = v49 * a10;
      }

      v34 += a4;
      v35 += a15;
      ++v29;
    }

    while (a19 != v29);
  }

  v50 = a1;
  v119 = v25;
  FIR1DFilter_execute(*(a1 + 256), v28, a19);
  FIR1DFilter_execute(*(v50 + 256), *(v50 + 272), a19 >> 1);
  v52 = a4;
  FIR1DFilter_execute(*(v50 + 256), *(v50 + 280), a19 >> 1);
  result = FIR1DFilter_execute(*(v50 + 256), *(v50 + 40), a19);
  v54 = v119;
  v55 = a19;
  v56 = a15;
  if (a19)
  {
    v57 = a14;
    v58 = 0;
    result = *(a1 + 40);
    v117 = *(a1 + 272);
    v118 = *(a1 + 280);
    v59 = *(a1 + 264);
    v60 = *(a1 + 24);
    do
    {
      v61 = (*v60 + a20) & 0xFFFFFFFFFFFFFFFELL;
      v62 = v61 - 16;
      v63 = a17 - v61 - 16;
      v64 = vcvtd_n_s64_f64(fmin(((*result * 0.1) * *(a1 + 328)), 1.0), 8uLL);
      v65 = 256 - v64;
      if (*v59 <= 0.0)
      {
        v66 = -0.5;
      }

      else
      {
        v66 = 0.5;
      }

      v67 = *v59 + v66;
      v68 = -v67;
      v69 = vdupq_n_s16(v64);
      v70 = vdupq_n_s16(v65 * v67);
      v71 = vdupq_n_s16(v65 * v68);
      v72 = &v128;
      v73 = 1;
      v74 = (*v60 + a20) & 0xFFFFFFFFFFFFFFFELL;
      v75 = v121;
      do
      {
        v76 = (a2 + v74);
        v77 = *(v20 + v74);
        v78 = vmovl_u8(v77);
        v79 = *(a2 + v74);
        v80 = vmovl_u8(v79);
        v81 = vminq_s16(v78, v80);
        v82 = vmlaq_s16(v70, vshrq_n_s16(vsubl_u8(v79, v77), 1uLL), v69);
        v83 = vmaxq_s16(v78, v80);
        v84 = vmulq_s16(vshrq_n_s16(v82, 8uLL), v75);
        v82.i64[0] = *(a2 + v74 - 16);
        v85 = vmovl_u8(*v82.i8);
        *v76 = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v78, v84, 4uLL), v83), v81));
        v86 = v73;
        v76[-2] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v85, vmulq_s16(vshrq_n_s16(vmlaq_s16(v71, vshrq_n_s16(vsubl_u8(*(v20 + v74 - 16), *v82.i8), 1uLL), v69), 8uLL), *v72), 4uLL), vmaxq_s16(v78, v85)), vminq_s16(v78, v85)));
        v74 += 8;
        v72 = &v127;
        v75 = v54;
        v73 = 0;
      }

      while ((v86 & 1) != 0);
      v87 = v61 + 15;
      if (v63 > 0)
      {
        v123 = v59;
        v124 = result;
        v122 = v58;
        v88 = v60;
        v125 = v69;
        memcpy((a2 + v87 + 1), (v20 + v87 + 1), v63);
        v63 = a17 - v61 - 16;
        v62 = v61 - 16;
        v69 = v125;
        v60 = v88;
        v58 = v122;
        v59 = v123;
        result = v124;
        v54 = v119;
        v52 = a4;
        v55 = a19;
        v56 = a15;
      }

      if ((v58 & 1) == 0)
      {
        v89 = (v21 + v61);
        v91 = (v21 + v62);
        v92 = *v117++;
        if (v92 <= 0.0)
        {
          v93 = -0.5;
        }

        else
        {
          v93 = 0.5;
        }

        v94 = v92 + v93;
        v95 = *v118++;
        if (v95 <= 0.0)
        {
          v96 = -0.5;
        }

        else
        {
          v96 = 0.5;
        }

        v97 = v95 + v96;
        v98 = -v94;
        v99 = -v97;
        v90 = (v57 + v61);
        v130 = vld2_s8(v90);
        v100 = vmovl_u8(v130.val[0]);
        v101 = vmovl_u8(v130.val[1]);
        v131 = vld2_s8(v89);
        v102 = vmovl_u8(*v131.i8);
        v103 = vmovl_u8(v131.u64[1]);
        v130.val[0] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v100, vmulq_s16(vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v65 * v94), vshrq_n_s16(vsubl_u8(*v131.i8, v130.val[0]), 1uLL), v69), 8uLL), v115), 4uLL), vmaxq_s16(v100, v102)), vminq_s16(v100, v102)));
        v130.val[1] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v101, vmulq_s16(vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v65 * v97), vshrq_n_s16(vsubl_u8(v131.u64[1], v130.val[1]), 1uLL), v69), 8uLL), v115), 4uLL), vmaxq_s16(v101, v103)), vminq_s16(v101, v103)));
        vst2_s8(v89, v130);
        v104 = (v57 + v62);
        v129 = vld2_s8(v104);
        v130 = vmovl_u8(*v129.i8);
        *(&v130 + 8) = vmovl_u8(v129.u64[1]);
        v100 = vld2_s8(v91);
        v131 = vmovl_u8(*v100.i8);
        *(&v131 + 8) = vmovl_u8(*v101.i8);
        v105 = vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v65 * v98), vshrq_n_s16(vsubl_u8(*v129.i8, *v100.i8), 1uLL), v69), 8uLL);
        v129 = vshrq_n_s16(vmlaq_s16(vdupq_n_s16(v65 * v99), vshrq_n_s16(vsubl_u8(v129.u64[1], *v101.i8), 1uLL), v69), 8uLL);
        v129.u64[1] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v131, vmulq_s16(v105, v114), 4uLL), vmaxq_s16(v130, v131)), vminq_s16(v130, v131)));
        *v105.i8 = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(*(&v131 + 8), vmulq_s16(v129, v114), 4uLL), vmaxq_s16(*(&v130 + 8), *(&v131 + 8))), vminq_s16(*(&v130 + 8), *(&v131 + 8))));
        vst2_s8(v91, *(&v129 + 8));
        if (v63 >= 1)
        {
          v106 = result;
          v107 = (v21 + v87 + 1);
          v108 = v59;
          v109 = (v57 + v87 + 1);
          v110 = v57;
          v111 = v21;
          v112 = v55;
          v113 = v60;
          memcpy(v107, v109, v63);
          v60 = v113;
          v55 = v112;
          v59 = v108;
          result = v106;
          v54 = v119;
          v21 = v111;
          v57 = v110;
          v56 = a15;
        }

        v21 += v52;
        v57 += v56;
      }

      ++v60;
      ++result;
      ++v59;
      a2 += v52;
      v20 += v56;
      ++v58;
    }

    while (v58 != v55);
  }

  return result;
}

float *Stitcher_SceneCut_blendToReferencePoisson_v2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, float a10, float a11, float a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, float *a18, uint64_t a19, vDSP_Length a20, uint64_t a21)
{
  v21 = a14;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v142 = a20;
  v148 = *MEMORY[0x277D85DE8];
  v143 = a1;
  if (*(a1 + 332) == 1)
  {
    v25 = 0;
    v26 = *(v143 + 232);
    v27 = *(v143 + 240);
    v28 = v26[5];
    v147[4] = v26[4];
    v147[5] = v28;
    v29 = v26[7];
    v147[6] = v26[6];
    v147[7] = v29;
    v30 = v26[1];
    v147[0] = *v26;
    v147[1] = v30;
    v31 = v26[3];
    v147[2] = v26[2];
    v147[3] = v31;
    v32 = *v27;
    v33 = v27[1];
    v34 = v27[3];
    v146[2] = v27[2];
    v146[3] = v34;
    v146[0] = v32;
    v146[1] = v33;
    v35 = v27[4];
    v36 = v27[5];
    v37 = v27[7];
    v146[6] = v27[6];
    v146[7] = v37;
    v146[4] = v35;
    v146[5] = v36;
    do
    {
      v38 = &v26[v25];
      v39 = &v27[v25];
      v154 = vld2q_s16(v38);
      v155 = vld2q_s16(v39);
      *&v145[v25 * 16] = v154;
      *&v144[v25 * 16] = v155;
      v25 += 2;
    }

    while (v25 != 8);
    v40 = *(v143 + 264);
    if (v142)
    {
      v41 = 0;
      v43 = *(v143 + 32);
      v42 = *(v143 + 40);
      v45 = *(v143 + 272);
      v44 = *(v143 + 280);
      v46 = v24;
      v47 = a14;
      v48 = a3;
      v49 = a15;
      v50 = *(v143 + 24);
      v51 = v143;
      do
      {
        v52 = (*(v50 + 8 * v41) + a21) & 0xFFFFFFFFFFFFFFFELL;
        LOBYTE(a9) = *(v43 + v41);
        v53 = v143;
        v54 = *(v143 + 320);
        *&a9 = (LODWORD(a9) * v54) + -5.0;
        if (*&a9 < 0.0)
        {
          *&a9 = 0.0;
        }

        *(v42 + 4 * v41) = LODWORD(a9);
        LOBYTE(a9) = *(v46 + v52);
        LOBYTE(v54) = *(v47 + v52);
        v55 = (LODWORD(a9) - LODWORD(v54)) * 0.5;
        v56 = *(v53 + 320);
        *&a9 = (v56 * v55) * 1.2;
        v40[v41] = LODWORD(a9);
        if ((v41 & 1) == 0)
        {
          v57 = (v48 + v52);
          v48 += a4;
          v58 = (v49 + v52);
          v49 += a16;
          LOBYTE(a9) = *v57;
          LOBYTE(v56) = *v58;
          v59 = (LODWORD(a9) - LODWORD(v56)) * 0.5;
          v60 = *(v51 + 320);
          LOBYTE(a11) = v57[1];
          LOBYTE(a12) = v58[1];
          a12 = LODWORD(a12);
          a11 = (LODWORD(a11) - a12) * 0.5;
          v61 = (v60 * v59) * 1.2;
          *v45++ = v61;
          *&a9 = (v60 * a11) * 1.2;
          *v44++ = LODWORD(a9);
        }

        v46 += a4;
        v47 += a16;
        ++v41;
      }

      while (v142 != v41);
    }

    v62 = v143;
    FIR1DFilter_execute(*(v143 + 256), v40, v142);
    FIR1DFilter_execute(*(v62 + 256), *(v62 + 272), v142 >> 1);
    FIR1DFilter_execute(*(v62 + 256), *(v62 + 280), v142 >> 1);
    FIR1DFilter_execute(*(v62 + 256), *(v62 + 40), v142);
    v64 = a21;
    result = a18;
    v66 = a16;
    if (v142)
    {
      v67 = a15;
      v68 = 0;
      v69 = *(v143 + 40);
      v70 = *(v143 + 280);
      v139 = *(v143 + 272);
      v140 = v70;
      v71 = *(v143 + 264);
      v72 = *(v143 + 24);
      v135 = v22;
      do
      {
        v73 = 0;
        v74 = (*v72 + v64) & 0xFFFFFFFFFFFFFFFELL;
        v75 = result - v74 - 64;
        v76 = vcvtd_n_s64_f64(fmin(((*v69 * *(v143 + 328)) * 0.1), 1.0), 8uLL);
        if (*v71 <= 0.0)
        {
          v77 = -0.5;
        }

        else
        {
          v77 = 0.5;
        }

        v78 = *v71 + v77;
        v79 = -v78;
        v80 = 256 - v76;
        v81 = vdupq_n_s16(v76);
        v82 = vdupq_n_s16((256 - v76) * v78);
        v83 = vdupq_n_s16((256 - v76) * v79);
        v84 = (*v72 + v64) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v85 = (v24 + v84);
          v86 = *(v21 + v84);
          v87 = vmovl_u8(v86);
          v88 = *(v24 + v84);
          v89 = vmovl_u8(v88);
          v90 = vmulq_s16(vshrq_n_s16(vmlaq_s16(v82, vshrq_n_s16(vsubl_u8(v88, v86), 1uLL), v81), 8uLL), v147[v73]);
          v91 = *(v24 + v84 - 64);
          v92 = vmovl_u8(v91);
          *v85 = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v87, v90, 6uLL), vmaxq_s16(v87, v89)), vminq_s16(v87, v89)));
          v85[-8] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v92, vmulq_s16(vshrq_n_s16(vmlaq_s16(v83, vshrq_n_s16(vsubl_u8(*(v21 + v84 - 64), v91), 1uLL), v81), 8uLL), v146[v73++]), 6uLL), vmaxq_s16(v87, v92)), vminq_s16(v87, v92)));
          v84 += 8;
        }

        while (v73 != 8);
        v93 = v75;
        v94 = v74 + 63;
        v141 = v68;
        if (v75 > 0)
        {
          v137 = v69;
          v95 = v67;
          v96 = v71;
          v138 = v81;
          v97 = v74 + 63;
          v98 = v74;
          v99 = v80;
          memcpy((v24 + v94 + 1), (v21 + v94 + 1), v75);
          v80 = v99;
          v74 = v98;
          v94 = v97;
          v93 = v75;
          v81 = v138;
          v71 = v96;
          v69 = v137;
          v68 = v141;
          v64 = a21;
          v67 = v95;
          v22 = v135;
          result = a18;
          v66 = a16;
        }

        if ((v68 & 1) == 0)
        {
          v100 = 0;
          if (*v139 <= 0.0)
          {
            v101 = -0.5;
          }

          else
          {
            v101 = 0.5;
          }

          v102 = *v139 + v101;
          if (*v140 <= 0.0)
          {
            v103 = -0.5;
          }

          else
          {
            v103 = 0.5;
          }

          v104 = *v140 + v103;
          v105 = -v102;
          v106 = -v104;
          v107 = v23 + v74;
          v108 = vdupq_n_s16(v80 * v102);
          v109 = vdupq_n_s16(v80 * v104);
          v110 = vdupq_n_s16(v80 * v105);
          v111 = v67 + v74;
          v112 = vdupq_n_s16(v80 * v106);
          v113 = v144;
          v114 = v145;
          do
          {
            v115 = (v111 + v100);
            v150 = vld2_s8(v115);
            v116 = (v107 + v100);
            v117 = vmovl_u8(*v150.i8);
            v152 = vld2_s8(v116);
            v118 = vmovl_u8(v150.u64[1]);
            v119 = vmovl_u8(v152.val[0]);
            v120 = vmovl_u8(v152.val[1]);
            v121 = vmlaq_s16(v108, vshrq_n_s16(vsubl_u8(v152.val[0], *v150.i8), 1uLL), v81);
            v150 = vshrq_n_s16(vsubl_u8(v152.val[1], v150.u64[1]), 1uLL);
            v122 = *v114;
            v114 += 2;
            v150.u64[1] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v117, vmulq_s16(vshrq_n_s16(v121, 8uLL), v122), 6uLL), vmaxq_s16(v117, v119)), vminq_s16(v117, v119)));
            *v117.i8 = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v118, vmulq_s16(vshrq_n_s16(vmlaq_s16(v109, v150, v81), 8uLL), v122), 6uLL), vmaxq_s16(v118, v120)), vminq_s16(v118, v120)));
            vst2_s8(v116, *(&v150 + 8));
            v123 = (v111 + v100 - 64);
            v151 = vld2_s8(v123);
            v124 = (v107 + v100 - 64);
            v125 = vmovl_u8(*v151.i8);
            v153 = vld2_s8(v124);
            v126 = vmovl_u8(v153.val[0]);
            v127 = vmovl_u8(v153.val[1]);
            v128 = vmovl_u8(v151.u64[1]);
            v129 = vmlaq_s16(v110, vshrq_n_s16(vsubl_u8(*v151.i8, v153.val[0]), 1uLL), v81);
            v130 = *v113;
            v113 += 2;
            v151 = vminq_s16(vsraq_n_s16(v127, vmulq_s16(vshrq_n_s16(vmlaq_s16(v112, vshrq_n_s16(vsubl_u8(v151.u64[1], v153.val[1]), 1uLL), v81), 8uLL), v130), 6uLL), vmaxq_s16(v128, v127));
            v151.u64[1] = vqmovun_s16(vmaxq_s16(vminq_s16(vsraq_n_s16(v126, vmulq_s16(vshrq_n_s16(v129, 8uLL), v130), 6uLL), vmaxq_s16(v125, v126)), vminq_s16(v125, v126)));
            *v125.i8 = vqmovun_s16(vmaxq_s16(v151, vminq_s16(v128, v127)));
            vst2_s8(v124, *(&v151 + 8));
            v100 += 16;
          }

          while (v100 != 64);
          if (v75 > 0)
          {
            v131 = (v23 + v94 + 1);
            v132 = v67;
            v133 = v23;
            v134 = v64;
            memcpy(v131, (v67 + v94 + 1), v93);
            v64 = v134;
            v68 = v141;
            v23 = v133;
            v67 = v132;
            v22 = v135;
            result = a18;
            v66 = a16;
          }

          ++v139;
          ++v140;
          v23 += v22;
          v67 += v66;
        }

        ++v72;
        ++v69;
        ++v71;
        v24 += v22;
        v21 += v66;
        ++v68;
      }

      while (v68 != v142);
    }
  }

  else
  {

    return Stitcher_SceneCut_blendToReferencePoisson_NoExposureDifference_v2(v143, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a21, a14, a15, a16, a17, a18, a19, v142, a21);
  }

  return result;
}

void *Stitcher_SceneCut_blendToReference_v2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = *MEMORY[0x277D85DE8];
  v16 = 176;
  if (!**(a1 + 336))
  {
    v16 = 192;
  }

  v17 = *(a1 + v16);
  if (**(a1 + 336))
  {
    v18 = 32;
  }

  else
  {
    v18 = 16;
  }

  v19 = 184;
  if (!**(a1 + 336))
  {
    v19 = 200;
  }

  v71 = v17;
  v20 = *(a1 + v19);
  memcpy(__dst, v17, v18);
  result = memcpy(v75, v20, v18);
  v22 = a12;
  if (a12)
  {
    v23 = 0;
    v24 = *(a1 + 24);
    do
    {
      v25 = *v24 & 0xFFFFFFFFFFFFFFFELL;
      v26 = v25 + v18;
      v27 = v25 + v18 - 1;
      v28 = v75;
      v29 = __dst;
      v30 = v18 >> 3;
      do
      {
        _X14 = (a2 + v25);
        _X15 = a6 + v25;
        __asm
        {
          PRFM            #0x11, [X14]
          PRFM            #1, [X15]
        }

        v39 = *v29++;
        v40 = v39;
        v41 = *v28++;
        *_X14 = vshrn_n_s16(vmlal_u8(vmull_u8(*(a2 + v25), v41), *(a6 + v25), v40), 5uLL);
        v25 += 8;
        --v30;
      }

      while (v30);
      if (a10 != v26)
      {
        _X9 = a2 + v27;
        __asm { PRFUM           #0x11, [X9,#1] }

        _X8 = a6 + v27;
        __asm { PRFUM           #1, [X8,#1] }

        v46 = v22;
        result = memcpy((_X9 + 1), (_X8 + 1), a10 - v26);
        v22 = v46;
      }

      ++v24;
      a2 += a4;
      a6 += a8;
      ++v23;
    }

    while (v23 != v22);
  }

  v47 = 0;
  if (v18 >> 4 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v18 >> 4;
  }

  do
  {
    v49 = &v71[v47];
    v78 = vld2_s8(v49);
    v50 = &v20[v47];
    v80 = vld2_s8(v50);
    *&__dst[v47] = v78;
    *&v75[v47] = v80;
    v47 += 16;
  }

  while (16 * v48 != v47);
  if ((v22 + 1) >= 2)
  {
    v51 = 0;
    v52 = (v22 + 1) >> 1;
    v53 = *(a1 + 24);
    do
    {
      v54 = *v53 & 0xFFFFFFFFFFFFFFFELL;
      v55 = v54 + v18;
      v56 = v54 + v18 - 1;
      v57 = v75;
      v58 = __dst;
      v59 = v48;
      do
      {
        _X14 = (a7 + v54);
        _X15 = (a3 + v54);
        __asm
        {
          PRFM            #0x11, [X15]
          PRFM            #1, [X14]
        }

        v64 = *v58;
        v58 += 2;
        v65 = v64;
        v79 = vld2_s8(_X14);
        v81 = vld2_s8(_X15);
        v66 = *v57;
        v57 += 2;
        v82.val[0] = vshrn_n_s16(vmlal_u8(vmull_u8(v81.val[0], v66), v79.val[0], v65), 5uLL);
        v82.val[1] = vshrn_n_s16(vmlal_u8(vmull_u8(v81.val[1], v66), v79.val[1], v65), 5uLL);
        vst2_s8(_X15, v82);
        v54 += 16;
        --v59;
      }

      while (v59);
      if (a10 != v55)
      {
        _X9 = a3 + v56;
        __asm { PRFUM           #0x11, [X9,#1] }

        _X8 = a7 + v56;
        __asm { PRFUM           #1, [X8,#1] }

        result = memcpy((_X9 + 1), (_X8 + 1), a10 - v55);
      }

      v53 += 2;
      a3 += a4;
      a7 += a8;
      ++v51;
    }

    while (v51 != v52);
  }

  return result;
}

void *Stitcher_SceneCut_alphaBlendToReference_v2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = result[22];
  v15 = *(v14 + 1);
  v45 = result[23];
  v46 = v14;
  v51 = *v14;
  v52[0] = v15;
  v16 = *(v45 + 1);
  v49 = *v45;
  v50[0] = v16;
  if (a12)
  {
    for (i = 0; i != a12; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        _X9 = (a2 + j);
        _X10 = a6 + j;
        __asm
        {
          PRFM            #0x11, [X9]
          PRFM            #1, [X10]
        }

        *_X9 = vshrn_n_s16(vmlal_u8(vmull_u8(*(a2 + j), *(&v50[-1] + j)), *(a6 + j), *(&v52[-1] + j)), 5uLL);
      }

      if (a10 != 32)
      {
        result = memcpy((a2 + 32), (a6 + 32), a10 - 32);
      }

      a2 += a4;
      a6 += a8;
    }
  }

  v29 = &v51;
  v30 = &v49;
  v31 = 1;
  v33 = v45;
  v32 = v46;
  do
  {
    v54 = vld2_s8(v32);
    v32 += 16;
    *v29 = v54;
    v55 = vld2_s8(v33);
    v33 += 16;
    v34 = v31;
    *v30 = v55;
    v30 = v50;
    v29 = v52;
    v31 = 0;
  }

  while ((v34 & 1) != 0);
  if ((a12 + 1) >= 2)
  {
    v35 = 0;
    do
    {
      v36 = 0;
      v37 = &v51;
      v38 = &v49;
      v39 = 1;
      do
      {
        v40 = v39;
        _X11 = (a7 + v36);
        _X13 = (a3 + v36);
        __asm
        {
          PRFM            #0x11, [X13]
          PRFM            #1, [X11]
        }

        v56 = vld2_s8(_X11);
        v57 = vld2_s8(_X13);
        v58.val[0] = vshrn_n_s16(vmlal_u8(vmull_u8(v57.val[0], *v38), v56.val[0], *v37), 5uLL);
        v58.val[1] = vshrn_n_s16(vmlal_u8(vmull_u8(v57.val[1], *v38), v56.val[1], *v37), 5uLL);
        vst2_s8(_X13, v58);
        v36 += 16;
        v38 = v50;
        v37 = v52;
        v39 = 0;
      }

      while ((v40 & 1) != 0);
      if (a10 != 32)
      {
        result = memcpy((a3 + 32), (a7 + 32), a10 - 32);
      }

      a3 += a4;
      a7 += a8;
      ++v35;
    }

    while (v35 != (a12 + 1) >> 1);
  }

  return result;
}

char *Stitcher_SceneCut_constructor_v2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x170uLL, 0x10B00404FCB4797uLL);
  v7 = BlendingDefaults_constructor();
  *(v6 + 42) = v7;
  if (!v7)
  {
    goto LABEL_49;
  }

  *(v6 + 324) = 0x3F8000003F800000;
  v6[332] = 0;
  *(v6 + 7) = a1;
  *(v6 + 8) = a2;
  *(v6 + 10) = a2 * a1;
  *(v6 + 6) = a2;
  *(v6 + 18) = xmmword_23C47B280;
  v8 = malloc_type_malloc(a2 * a1, 0x100004077774924uLL);
  *v6 = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

  bzero(v8, a2 * a1);
  v9 = 4 * a1;
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  *(v6 + 1) = v10;
  if (!v10)
  {
    goto LABEL_49;
  }

  bzero(v10, v9);
  v11 = malloc_type_malloc(v9, 0x100004052888210uLL);
  *(v6 + 2) = v11;
  if (!v11)
  {
    goto LABEL_49;
  }

  bzero(v11, v9);
  v12 = malloc_type_malloc(8 * *(v6 + 6), 0x100004000313F17uLL);
  *(v6 + 3) = v12;
  if (!v12)
  {
    goto LABEL_49;
  }

  bzero(v12, 8 * *(v6 + 6));
  v13 = malloc_type_malloc(*(v6 + 6), 0x100004077774924uLL);
  *(v6 + 4) = v13;
  if (!v13)
  {
    goto LABEL_49;
  }

  bzero(v13, *(v6 + 6));
  v14 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 15) = v14;
  if (!v14)
  {
    goto LABEL_49;
  }

  v15 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 16) = v15;
  if (!v15)
  {
    goto LABEL_49;
  }

  v16 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 17) = v16;
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 18) = v17;
  if (!v17)
  {
    goto LABEL_49;
  }

  v18 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 19) = v18;
  if (!v18)
  {
    goto LABEL_49;
  }

  v19 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 20) = v19;
  if (!v19)
  {
    goto LABEL_49;
  }

  v20 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
  *(v6 + 21) = v20;
  if (!v20)
  {
    goto LABEL_49;
  }

  if (*(*(v6 + 42) + 8))
  {
    v21 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(v6 + 27) = v21;
    if (!v21)
    {
      goto LABEL_49;
    }

    v22 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(v6 + 28) = v22;
    if (!v22)
    {
      goto LABEL_49;
    }

    v23 = 0;
    v24 = *(v6 + 27);
    do
    {
      v22[v23] = v23;
      *(v24 + 2 * v23) = 16 - v23;
      ++v23;
    }

    while (v23 != 16);
    v25 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
    *(v6 + 29) = v25;
    if (!v25)
    {
      goto LABEL_49;
    }

    v26 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
    *(v6 + 30) = v26;
    if (!v26)
    {
      goto LABEL_49;
    }

    v27 = 0;
    v28 = *(v6 + 29);
    do
    {
      v26[v27] = v27;
      *(v28 + 2 * v27) = 64 - v27;
      ++v27;
    }

    while (v27 != 64);
    v29 = malloc_type_calloc(1uLL, 0x200uLL, 0x1000040BDFB0063uLL);
    *(v6 + 31) = v29;
    if (!v29)
    {
      goto LABEL_49;
    }

    v30 = v29;
    v31 = 0;
    v32 = xmmword_23C47A6E0;
    v33 = xmmword_23C47A5A0;
    __asm { FMOV            V2.2D, #10.0 }

    v66 = _Q2;
    v67 = vdupq_n_s64(0xC070000000000000);
    __asm { FMOV            V2.2D, #1.0 }

    v65 = _Q2;
    do
    {
      v80 = v33;
      v81 = v32;
      v40.i64[0] = 0x7F0000007FLL;
      v40.i64[1] = 0x7F0000007FLL;
      v41 = vcvtq_f32_s32(vaddq_s32(v32, v40));
      v42 = vcvtq_f32_s32(vaddq_s32(v33, v40));
      v71 = vcvt_hight_f64_f32(v42);
      v72 = vcvtq_f64_f32(*v42.f32);
      v73 = vcvt_hight_f64_f32(v41);
      v74 = vcvtq_f64_f32(*v41.f32);
      v77 = vmulq_f64(vaddq_f64(vabsq_f64(v73), v67), v66);
      v79 = vmulq_f64(vaddq_f64(vabsq_f64(v74), v67), v66);
      v75 = vmulq_f64(vaddq_f64(vabsq_f64(v72), v67), v66);
      __x = vmulq_f64(vaddq_f64(vabsq_f64(v71), v67), v66);
      v69 = exp(__x.f64[1]);
      v43.f64[0] = exp(__x.f64[0]);
      v43.f64[1] = v69;
      v70 = v43;
      __x.f64[0] = exp(v75.f64[1]);
      v44.f64[0] = exp(v75.f64[0]);
      v44.f64[1] = __x.f64[0];
      v76 = v44;
      __x.f64[0] = exp(v77.f64[1]);
      v45.f64[0] = exp(v77.f64[0]);
      v45.f64[1] = __x.f64[0];
      v78 = v45;
      __x.f64[0] = exp(v79.f64[1]);
      v46.f64[0] = exp(v79.f64[0]);
      v46.f64[1] = __x.f64[0];
      *&v30[v31] = vuzp1q_s16(vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v72, vaddq_f64(v76, v65))), vdivq_f64(v71, vaddq_f64(v70, v65)))), vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v74, vaddq_f64(v46, v65))), vdivq_f64(v73, vaddq_f64(v78, v65)))));
      v47.i64[0] = 0x800000008;
      v47.i64[1] = 0x800000008;
      v33 = vaddq_s32(v80, v47);
      v32 = vaddq_s32(v81, v47);
      v31 += 16;
    }

    while (v31 != 512);
    v33.i32[0] = 8.0;
    v48 = FIR1DFilter_Gaussian(*(v6 + 6), *v33.i64);
    *(v6 + 32) = v48;
    if (!v48)
    {
      goto LABEL_49;
    }

    v49 = malloc_type_malloc(4 * *(v6 + 6), 0x100004052888210uLL);
    *(v6 + 33) = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v50 = malloc_type_malloc((2 * *(v6 + 6)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
    *(v6 + 34) = v50;
    if (!v50)
    {
      goto LABEL_49;
    }

    v51 = malloc_type_malloc((2 * *(v6 + 6)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
    *(v6 + 35) = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v52 = malloc_type_malloc(4 * *(v6 + 6), 0x100004052888210uLL);
    *(v6 + 5) = v52;
    if (!v52)
    {
      goto LABEL_49;
    }
  }

  v53 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  *(v6 + 22) = v53;
  if (!v53)
  {
    goto LABEL_49;
  }

  v54 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  *(v6 + 23) = v54;
  if (!v54)
  {
    goto LABEL_49;
  }

  for (i = 0; i != 32; ++i)
  {
    *(*(v6 + 22) + i) = i + 1;
    *(*(v6 + 23) + i) = 32 - *(*(v6 + 22) + i);
  }

  v56 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(v6 + 24) = v56;
  if (!v56)
  {
    goto LABEL_49;
  }

  v57 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(v6 + 25) = v57;
  if (!v57)
  {
    goto LABEL_49;
  }

  for (j = 0; j != 16; ++j)
  {
    *(*(v6 + 24) + j) = ((j + 1) + (j + 1));
    *(*(v6 + 25) + j) = 32 - *(*(v6 + 24) + j);
  }

  if (**(v6 + 42))
  {
    *(v6 + 24) = 2;
    v59 = FastFilter_constructor(*(v6 + 14), *(v6 + 14), *(v6 + 16));
    *(v6 + 13) = v59;
    if (!v59 || FastFilter_allocFilterSpecificData(v59, *(v6 + 24)) == -1)
    {
      goto LABEL_49;
    }

    CVPixelBufferLockBaseAddress(*(v6 + 14), 0);
    *(v6 + 11) = CVPixelBufferGetBaseAddressOfPlane(*(v6 + 14), 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v6 + 14), 0);
  }

  else
  {
    v61 = malloc_type_malloc(*(v6 + 10), 0x100004077774924uLL);
    *(v6 + 11) = v61;
    if (!v61)
    {
LABEL_49:
      Stitcher_SceneCut_destructor_v2(v6);
      return 0;
    }

    bzero(v61, *(v6 + 10));
    BytesPerRowOfPlane = *(v6 + 7);
  }

  *(v6 + 9) = BytesPerRowOfPlane;
  if (*(*(v6 + 42) + 4))
  {
    v62 = malloc_type_malloc(*(v6 + 7), 0x100004077774924uLL);
    *(v6 + 38) = v62;
    if (!v62)
    {
      goto LABEL_49;
    }

    v63 = malloc_type_calloc(1uLL, *(v6 + 8), 0x100004077774924uLL);
    *(v6 + 39) = v63;
    if (!v63)
    {
      goto LABEL_49;
    }
  }

  *(v6 + 43) = a3;
  return v6;
}

void Stitcher_SceneCut_destructor_v2(void *a1)
{
  if (a1)
  {
    if (**(a1 + 42))
    {
      v2 = *(a1 + 14);
      if (v2)
      {
        CVPixelBufferUnlockBaseAddress(v2, 0);
        CVPixelBufferRelease(*(a1 + 14));
        *(a1 + 14) = 0;
      }

      v3 = *(a1 + 13);
      if (v3)
      {
        FastFilter_destructor(v3);
        *(a1 + 13) = 0;
      }
    }

    else
    {
      v4 = *(a1 + 11);
      if (v4)
      {
        free(v4);
      }
    }

    v5 = *(a1 + 3);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
    }

    v7 = *(a1 + 1);
    if (v7)
    {
      free(v7);
    }

    if (*a1)
    {
      free(*a1);
    }

    v8 = *(a1 + 15);
    if (v8)
    {
      free(v8);
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 17);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 18);
    if (v11)
    {
      free(v11);
    }

    v12 = *(a1 + 19);
    if (v12)
    {
      free(v12);
    }

    v13 = *(a1 + 20);
    if (v13)
    {
      free(v13);
    }

    v14 = *(a1 + 21);
    if (v14)
    {
      free(v14);
    }

    v15 = *(a1 + 22);
    if (v15)
    {
      free(v15);
    }

    v16 = *(a1 + 23);
    if (v16)
    {
      free(v16);
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      free(v17);
    }

    v18 = *(a1 + 25);
    if (v18)
    {
      free(v18);
    }

    v19 = *(a1 + 27);
    if (v19)
    {
      free(v19);
    }

    v20 = *(a1 + 28);
    if (v20)
    {
      free(v20);
    }

    v21 = *(a1 + 29);
    if (v21)
    {
      free(v21);
    }

    v22 = *(a1 + 30);
    if (v22)
    {
      free(v22);
    }

    v23 = *(a1 + 31);
    if (v23)
    {
      free(v23);
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      FIR1DFilter_destructor(v24);
    }

    v25 = *(a1 + 33);
    if (v25)
    {
      free(v25);
    }

    v26 = *(a1 + 34);
    if (v26)
    {
      free(v26);
    }

    v27 = *(a1 + 35);
    if (v27)
    {
      free(v27);
    }

    v28 = *(a1 + 5);
    if (v28)
    {
      free(v28);
    }

    v29 = *(a1 + 4);
    if (v29)
    {
      free(v29);
    }

    v30 = *(a1 + 38);
    if (v30)
    {
      free(v30);
    }

    v31 = *(a1 + 39);
    if (v31)
    {
      free(v31);
    }

    v32 = *(a1 + 42);
    if (v32)
    {
      BlendingDefaults_destructor(v32);
    }

    free(a1);
  }
}

uint64_t Stitcher_SceneCut_setDefaults_v2(uint64_t a1, int *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 336);
  v7 = *(a1 + 344);
  v8 = v6[1];
  v9 = a2[1];
  if (v8 != v9)
  {
    if (v8)
    {
      v10 = *(a1 + 304);
      if (v10)
      {
        free(v10);
        *(a1 + 304) = 0;
      }

      v11 = *(a1 + 312);
      if (v11)
      {
        free(v11);
        *(a1 + 312) = 0;
      }

      v9 = a2[1];
      v6 = *(a1 + 336);
    }

    v6[1] = v9;
    if (v9)
    {
      v12 = malloc_type_malloc(*(a1 + 56), 0x100004077774924uLL);
      *(a1 + 304) = v12;
      if (!v12)
      {
        goto LABEL_69;
      }

      v13 = malloc_type_calloc(1uLL, *(a1 + 64), 0x100004077774924uLL);
      *(a1 + 312) = v13;
      if (!v13)
      {
        goto LABEL_69;
      }

      v6 = *(a1 + 336);
    }
  }

  v14 = *v6;
  if (v14 == *a2)
  {
    goto LABEL_28;
  }

  if (v14)
  {
    v15 = *(a1 + 112);
    if (v15)
    {
      CVPixelBufferUnlockBaseAddress(v15, 0);
      CVPixelBufferRelease(*(a1 + 112));
      *(a1 + 112) = 0;
    }

    v17 = (a1 + 104);
    v16 = *(a1 + 104);
    if (!v16)
    {
      goto LABEL_21;
    }

    FastFilter_destructor(v16);
    goto LABEL_20;
  }

  v17 = (a1 + 88);
  v18 = *(a1 + 88);
  if (v18)
  {
    free(v18);
LABEL_20:
    *v17 = 0;
  }

LABEL_21:
  v19 = *a2;
  **(a1 + 336) = *a2;
  if (v19)
  {
    *(a1 + 96) = 2;
    v20 = FastFilter_constructor(*(a1 + 56), *(a1 + 56), *(a1 + 64));
    *(a1 + 104) = v20;
    if (!v20 || FastFilter_allocFilterSpecificData(v20, *(a1 + 96)) == -1)
    {
      goto LABEL_69;
    }

    CVPixelBufferLockBaseAddress(*(a1 + 112), 0);
    *(a1 + 88) = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 112), 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 112), 0);
  }

  else
  {
    v22 = malloc_type_malloc(*(a1 + 80), 0x100004077774924uLL);
    *(a1 + 88) = v22;
    if (!v22)
    {
      goto LABEL_69;
    }

    bzero(v22, *(a1 + 80));
    BytesPerRowOfPlane = *(a1 + 56);
  }

  *(a1 + 72) = BytesPerRowOfPlane;
LABEL_28:
  v23 = *(a1 + 336);
  v24 = *(v23 + 8);
  v25 = a2[2];
  if (v24 == v25)
  {
    return 0;
  }

  if (v24)
  {
    v26 = *(a1 + 216);
    if (v26)
    {
      free(v26);
      *(a1 + 216) = 0;
    }

    v27 = *(a1 + 224);
    if (v27)
    {
      free(v27);
      *(a1 + 224) = 0;
    }

    v28 = *(a1 + 232);
    if (v28)
    {
      free(v28);
      *(a1 + 232) = 0;
    }

    v29 = *(a1 + 240);
    if (v29)
    {
      free(v29);
      *(a1 + 240) = 0;
    }

    v30 = *(a1 + 248);
    if (v30)
    {
      free(v30);
      *(a1 + 248) = 0;
    }

    v31 = *(a1 + 256);
    if (v31)
    {
      FIR1DFilter_destructor(v31);
      *(a1 + 256) = 0;
    }

    v32 = *(a1 + 264);
    if (v32)
    {
      free(v32);
      *(a1 + 264) = 0;
    }

    v33 = *(a1 + 272);
    if (v33)
    {
      free(v33);
      *(a1 + 272) = 0;
    }

    v34 = *(a1 + 280);
    if (v34)
    {
      free(v34);
      *(a1 + 280) = 0;
    }

    v35 = *(a1 + 40);
    if (v35)
    {
      free(v35);
      *(a1 + 40) = 0;
    }

    v25 = a2[2];
    v23 = *(a1 + 336);
  }

  *(v23 + 8) = v25;
  if (!v25)
  {
    return 0;
  }

  v36 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
  *(a1 + 216) = v36;
  if (v36)
  {
    v37 = malloc_type_malloc(0x20uLL, 0x1000040BDFB0063uLL);
    *(a1 + 224) = v37;
    if (v37)
    {
      v38 = 0;
      v39 = *(a1 + 216);
      do
      {
        v37[v38] = v38;
        *(v39 + 2 * v38) = 16 - v38;
        ++v38;
      }

      while (v38 != 16);
      v40 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
      *(a1 + 232) = v40;
      if (v40)
      {
        v41 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
        *(a1 + 240) = v41;
        if (v41)
        {
          v42 = 0;
          v43 = *(a1 + 232);
          do
          {
            v41[v42] = v42;
            *(v43 + 2 * v42) = 64 - v42;
            ++v42;
          }

          while (v42 != 64);
          v44 = malloc_type_calloc(1uLL, 0x200uLL, 0x1000040BDFB0063uLL);
          *(a1 + 248) = v44;
          if (v44)
          {
            v45 = v44;
            v46 = 0;
            v47 = xmmword_23C47A5A0;
            __asm
            {
              FMOV            V2.4S, #-10.0
              FMOV            V1.4S, #10.0
            }

            v68 = _Q1;
            v69 = _Q2;
            __asm { FMOV            V1.2D, #1.0 }

            v67 = _Q1;
            do
            {
              v76 = v47;
              v55.i64[0] = 0x7F0000007FLL;
              v55.i64[1] = 0x7F0000007FLL;
              v56 = vcvtq_f32_s32(vaddq_s32(v47, v55));
              v73 = vcvt_hight_f64_f32(v56);
              v74 = vcvtq_f64_f32(*v56.f32);
              v57 = vmulq_f32(vaddq_f32(vabsq_f32(v56), v69), v68);
              v75 = vcvtq_f64_f32(*v57.f32);
              __x = vcvt_hight_f64_f32(v57);
              v71 = exp(__x.f64[1]);
              v58.f64[0] = exp(__x.f64[0]);
              v58.f64[1] = v71;
              v72 = v58;
              __x.f64[0] = exp(v75.f64[1]);
              v59.f64[0] = exp(v75.f64[0]);
              v59.f64[1] = __x.f64[0];
              *&v45[v46] = vmovn_s32(vcvtq_s32_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v74, vaddq_f64(v59, v67))), vdivq_f64(v73, vaddq_f64(v72, v67)))));
              v60.i64[0] = 0x400000004;
              v60.i64[1] = 0x400000004;
              v47 = vaddq_s32(v76, v60);
              v46 += 8;
            }

            while (v46 != 512);
            v47.i32[0] = 8.0;
            v61 = FIR1DFilter_Gaussian(*(a1 + 48), *v47.i64);
            *(a1 + 256) = v61;
            if (v61)
            {
              v62 = malloc_type_malloc(4 * *(a1 + 48), 0x100004052888210uLL);
              *(a1 + 264) = v62;
              if (v62)
              {
                v63 = malloc_type_malloc((2 * *(a1 + 48)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
                *(a1 + 272) = v63;
                if (v63)
                {
                  v64 = malloc_type_malloc((2 * *(a1 + 48)) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
                  *(a1 + 280) = v64;
                  if (v64)
                  {
                    v65 = malloc_type_malloc(4 * *(a1 + 48), 0x100004052888210uLL);
                    *(a1 + 40) = v65;
                    if (v65)
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_69:
  Stitcher_SceneCut_destructor_v2(a1);
  if (Stitcher_SceneCut_constructor_v2(v4, v5, v7))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 4294967294;
  }
}

void Stitcher_SceneCut_reset_v2(uint64_t a1)
{
  if (*(*(a1 + 336) + 4))
  {
    bzero(*(a1 + 312), *(a1 + 64));
  }
}

uint64_t Stitcher_SceneCut_SNRFactorUpdate_v2(uint64_t result, float a2)
{
  v2 = 1.0;
  if (a2 <= 20.0 && a2 > 0.0)
  {
    v2 = (a2 / 20.0) * ((a2 / 20.0) * (a2 / 20.0));
  }

  *(result + 320) = v2;
  return result;
}

void Stitcher_SceneCut_ExposureRatioFactorUpdate_v2(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    *(a1 + 332) = 0;
    *(a1 + 324) = 0x3F8000003F800000;
  }

  else
  {
    *(a1 + 332) = 1;
    v4 = *(a1 + 324);
    v5 = v4 > a2;
    v6 = v4 / a2;
    v7 = a2 / v4;
    if (v5)
    {
      v7 = v6;
    }

    v8 = pow(v7, 0.454545438);
    *(a1 + 328) = v8;
    *(a1 + 324) = a2;
  }
}

uint64_t Stitcher_SceneCut_minOverlapWidth_v2(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    *(a1 + 332) = 0;
    *(a1 + 324) = 0x3F8000003F800000;
    v3 = 288;
  }

  else
  {
    *(a1 + 332) = 1;
    v5 = *(a1 + 324);
    v6 = v5 > a2;
    v7 = v5 / a2;
    v8 = a2 / v5;
    if (v6)
    {
      v8 = v7;
    }

    v9 = pow(v8, 0.454545438);
    *(a1 + 328) = v9;
    *(a1 + 324) = a2;
    v3 = 296;
  }

  return *(a1 + v3);
}

uint64_t Stitcher_SceneCut_maxMinOverlapWidth_v2(uint64_t a1)
{
  if (*(a1 + 288) <= *(a1 + 296))
  {
    return *(a1 + 296);
  }

  else
  {
    return *(a1 + 288);
  }
}

uint64_t Stitcher_SceneCut_pasteImageToReference_v2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float *a11, unint64_t a12, vImagePixelCount a13, int a14)
{
  v20 = result;
  v56 = *MEMORY[0x277D85DE8];
  v21 = *(result + 332);
  if (v21 == 1)
  {
    v22 = *(result + 296);
  }

  else
  {
    v22 = *(result + 288);
  }

  if (v22 <= a12)
  {
    v23 = 1.0;
    if (a5 <= 20.0 && a5 > 0.0)
    {
      v23 = (a5 / 20.0) * ((a5 / 20.0) * (a5 / 20.0));
    }

    *(result + 320) = v23;
    v24 = *(result + 336);
    if (v24[2] || *v24)
    {
      if (v21)
      {
        v25 = 64;
      }

      else
      {
        v25 = 16;
      }
    }

    else
    {
      v25 = 8;
    }

    v26 = a12 - 2 * v25;
    if (v26 <= 0x10)
    {
      v27 = a12 - 2 * v25;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFFFFFFFFF0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(*(v20 + 336) + 4))
    {
      Stitcher_SceneCut_calculateFlarePerRow_v2(v20, a7 + v25, (a8 + v25), a9, v28, v27, a13);
    }

    v30 = CFAbsoluteTimeGetCurrent();
    v31 = CFAbsoluteTimeGetCurrent();
    Stitcher_SceneCut_calculateCostImage_Yuv_v2(v20, (a2 + v25), (a3 + v25), a4, v32, (a7 + v25), (a8 + v25), a9, v51, v27, a13);
    v33 = CFAbsoluteTimeGetCurrent();
    v34 = CFAbsoluteTimeGetCurrent();
    if (**(v20 + 336))
    {
      FastFilter_execute(*(v20 + 104), *(v20 + 96), *(v20 + 112), *(v20 + 112), 0, 0, v27, a13);
    }

    v35 = v30 - Current;
    v36 = v33 - v31;
    v37 = CFAbsoluteTimeGetCurrent() - v34;
    v38 = CFAbsoluteTimeGetCurrent();
    Stitcher_SceneCut_findVerticalSeam_v2_NEON(v20, v27, a13);
    v39 = CFAbsoluteTimeGetCurrent() - v38;
    v41 = CFAbsoluteTimeGetCurrent();
    v49 = v41;
    if (*(*(v20 + 336) + 8))
    {
      Stitcher_SceneCut_blendToReferencePoisson_v2(v20, a2, a3, a4, v41, v42, v43, v44, v45, v46, v47, v48, v40, a7, a8, a9, v52, a11, v53, a13, v25);
    }

    else
    {
      Stitcher_SceneCut_blendToReference_v2(v20, a2, a3, a4, v40, a7, a8, a9, v52, a11, v53, a13);
    }

    v50 = CFAbsoluteTimeGetCurrent() - v49;
    __sprintf_chk(v55, 0, 0x40uLL, "BlendingInfo%d", a14);
    return ACTLogMessageImp(1, "{%s|width:%d} {%s|height:%d} {%s|blendingMode:%d} {%s|blendingDefaults:%d} {%s|timeM2M:%.0f} {%s|SNR:%.2f} {%s|inSurfaceID:%d} {%s|outSurfaceID:%d} {%s|flare:%.0f} {%s|cost:%.0f} {%s|wideSceneCut:%.0f} {%s|seam:%.0f} {%s|blend:%.0f} \n", v55, a12, v55, a13, v55, 1, v55, *(*(v20 + 336) + 4) + 2 * **(v20 + 336) + 4 * *(*(v20 + 336) + 8), v55, *(v20 + 352) * 1000.0, v55, a5, v55, *(v20 + 360), v55, *(v20 + 364), v55, v35 * 1000.0, v55, v36 * 1000.0, v55, v37 * 1000.0, v55, v39 * 1000.0, v55, v50 * 1000.0);
  }

  return result;
}

void *Stitcher_constructor_v2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (v6)
  {
    v7 = Stitcher_SceneCut_constructor_v2(a1, a2, a3);
    *v6 = v7;
    if (!v7)
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

void Stitcher_destructor_v2(void **a1)
{
  if (a1)
  {
    Stitcher_SceneCut_destructor_v2(*a1);

    free(a1);
  }
}

uint64_t *Stitcher_storeIOSurfaceIDs_v2(uint64_t *result, int a2, int a3)
{
  v3 = *result;
  *(v3 + 360) = a2;
  *(v3 + 364) = a3;
  return result;
}

uint64_t sub_23C471834(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a24 = v27;
  a25 = a1;
  a26 = v28;
  a15 = *(v29 - 112);
  a16 = *(v29 - 96);

  return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, a2, &a24, &a15);
}

uint64_t sub_23C4718A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return objc_msgSend_setComputePipelineState_(v4, a2, a1, a4);
}

uint64_t sub_23C4740B8(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_23C460E38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_23C474114(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_23C460E38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_23C474170(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_23C460E38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL sub_23C4741CC()
{
  fig_log_get_emitter();
  sub_23C460E38();
  return FigSignalErrorAtGM() == 0;
}

uint64_t sub_23C47422C()
{
  fig_log_get_emitter();
  sub_23C460E38();

  return FigSignalErrorAtGM();
}

uint64_t sub_23C47428C()
{
  fig_log_get_emitter();
  sub_23C460E38();

  return FigSignalErrorAtGM();
}

uint64_t sub_23C4742EC()
{
  fig_log_get_emitter();
  sub_23C460E38();

  return FigSignalErrorAtGM();
}

uint64_t sub_23C47434C()
{
  fig_log_get_emitter();
  sub_23C460E38();

  return FigSignalErrorAtGM();
}

uint64_t sub_23C4743AC()
{
  fig_log_get_emitter();
  sub_23C460E38();

  return FigSignalErrorAtGM();
}

void sub_23C474410(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = a2;
  if (a3 == 7)
  {
    v8 = @"UBFusionOutput";
  }

  else
  {
    v8 = @"NRFUBFusionOutput";
  }

  NSClassFromString(&v8->isa);
  v9 = objc_opt_new();
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setPixelBuffer_(v9, v10, *a4, v11);
    v13 = objc_opt_new();
    objc_msgSend_setMetadata_(v12, v14, v13, v15);

    objc_msgSend_setOutput_(v7, v16, v12, v17);
    if (!objc_msgSend_addFrame_(v7, v18, v6, v19) && !objc_msgSend_process(v7, v10, v20, v11) && !objc_msgSend_finishProcessing(v7, v10, v21, v11))
    {
      objc_msgSend_resetState(v7, v10, v22, v11);
    }
  }

  objc_msgSend_setOutput_(v7, v10, 0, v11);
}

uint64_t sub_23C475548(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 264) == 1 && *(v5 + 272))
  {
    Slice = objc_msgSend__addLastSlice(v5, a2, a3, a4);
    result = sub_23C463F80(Slice);
    if (v8)
    {
      return result;
    }

    v5 = *(a1 + 32);
  }

  v9 = objc_msgSend_finishProcessing(*(v5 + 24), a2, a3, a4);
  result = sub_23C463F80(v9);
  if (!v10)
  {
    v11 = sub_23C464074();
    v15 = objc_msgSend_finishProcessing(v11, v12, v13, v14);
    result = sub_23C463F80(v15);
    if (!v19)
    {
      v20 = *(a1 + 32);
      if (*(v20 + 237))
      {
        v21 = *(v20 + 200);
        v22 = *(v20 + 192) * 1.1 + -1.0;
        *(v20 + 144) = 0;
        *(v20 + 152) = 0;
        *(v20 + 160) = v21;
        *(v20 + 168) = v22;
      }

      else
      {
        v23 = *(v20 + 56);
        v24 = objc_msgSend_outputMask(*(v20 + 40), v16, v17, v18);
        v25 = sub_23C464074();
        objc_msgSend_boundingBox(v25, v26, v27, v28);
        v31 = objc_msgSend_cropAPI_initialRect_(v23, v29, v24, v30);
        sub_23C463F9C(v31);

        v32 = *(a1 + 32);
        objc_msgSend_getCropRect(*(v32 + 56), v33, v34, v35);
        *(v32 + 144) = v36;
        *(v32 + 152) = v37;
        *(v32 + 160) = v38;
        *(v32 + 168) = v39;
        v43 = objc_msgSend_finishProcessing(*(*(a1 + 32) + 56), v40, v41, v42);
        return sub_23C463F9C(v43);
      }
    }
  }

  return result;
}

void sub_23C475640(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v50 = *(*(a1 + 40) + 8);
    v60 = 1;
    goto LABEL_15;
  }

  v2 = VTSessionSetProperty(*(*(a1 + 32) + 256), *MEMORY[0x277CE2850], *MEMORY[0x277CE2A38]);
  sub_23C463F80(v2);
  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = v4[24];
    v6 = v4[25];
    v7 = v4[22];
    v8 = v4[23];
    v63 = v6;
    v64 = v5;
    setDownscaledResolution(&v64, &v63, 7uLL, 0x46uLL, 0x23uLL);
    v61 = v8;
    v62 = v7;
    setDownscaledResolution(&v62, &v61, 3uLL, 0x3E8uLL, 0xBDuLL);
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v14 = objc_msgSend_device(*(v9 + 8), v11, v12, v13);
    v18 = objc_msgSend_library(*(*(a1 + 32) + 8), v15, v16, v17);
    v22 = objc_msgSend_commandQueue(*(*(a1 + 32) + 8), v19, v20, v21);
    v24 = objc_msgSend_prepareToProcessWithDevice_library_commandQueue_width_height_(v10, v23, v14, v18, v22, v62, v61);
    sub_23C463F9C(v24);

    sub_23C463FAC();
    if (!v25)
    {
      sub_23C464080();
      objc_msgSend_prepareToProcess_sliceWidth_sliceHeight_(v26, v27, v28, v29);
      sub_23C463FAC();
      if (!v30)
      {
        sub_23C464080();
        objc_msgSend_prepareToProcess_sliceWidth_sliceHeight_(v31, v32, v33, v34);
        sub_23C463FAC();
        if (!v35)
        {
          sub_23C464080();
          v40 = objc_msgSend_prepareToProcess_sliceWidth_sliceHeight_(v36, v37, v38, v39);
          sub_23C463F80(v40);
          if (!v42)
          {
            v43 = objc_msgSend_prepareToProcessSliceWidth_sliceHeight_(*(*(a1 + 32) + 24), v41, v7, v8);
            sub_23C463F80(v43);
            if (!v47)
            {
              v48 = *(*(a1 + 32) + 384);
              if (v48 || (DummyOutputWidth_height = objc_msgSend__createDummyOutputWidth_height_(*(a1 + 32), v44, v5, v6), sub_23C463F9C(DummyOutputWidth_height), v50 = *(*(a1 + 40) + 8), !*(v50 + 24)) && (v48 = *(*(a1 + 32) + 384)) != 0)
              {
                objc_msgSend_pixelBuffer(v48, v44, v45, v46);
                v51 = sub_23C464074();
                objc_msgSend_setOutput_(v51, v52, v53, v54);
                sub_23C464074();
                sub_23C464080();
                v59 = objc_msgSend_prepareToProcess_sliceWidth_sliceHeight_gridWidth_gridHeight_(v55, v56, v57, v58);
                sub_23C463F9C(v59);
                return;
              }

              v60 = 2;
LABEL_15:
              *(v50 + 24) = v60;
            }
          }
        }
      }
    }
  }
}

void sub_23C47585C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  if (!v6)
  {
    v7 = objc_msgSend_pixelBuffer(*(v5 + 384), a2, a3, a4);
    Height = CVPixelBufferGetHeight(v7);
    v12 = objc_msgSend_pixelBuffer(*(*(a1 + 32) + 384), v9, v10, v11);
    Width = CVPixelBufferGetWidth(v12);
    v31 = *MEMORY[0x277CC4DE8];
    v32[0] = MEMORY[0x277CBEC10];
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v32, &v31, 1);
    if (CVPixelBufferCreate(0, Height, Width, 0x34323066u, v15, (*(a1 + 32) + 80)))
    {
      return;
    }

    v6 = *(*(a1 + 32) + 80);
  }

  v16 = *MEMORY[0x277CC4B78];
  CVBufferRemoveAttachment(v6, *MEMORY[0x277CC4B78]);
  v17 = *(a1 + 32);
  v18 = *(v17 + 256);
  v22 = objc_msgSend_pixelBuffer(*(v17 + 384), v19, v20, v21);
  if (!VTPixelRotationSessionRotateImage(v18, v22, *(*(a1 + 32) + 80)))
  {
    if (!objc_msgSend_isEqualToString_(*(*(a1 + 32) + 296), v23, *MEMORY[0x277CF3D08], v24) || (VTSessionSetProperty(*(*(a1 + 32) + 256), *MEMORY[0x277CE2838], 1), !VTPixelRotationSessionRotateImage(*(*(a1 + 32) + 256), *(*(a1 + 32) + 80), *(*(a1 + 32) + 80))))
    {
      HostTime = ACT_getHostTime();
      panoLog(32, "time %.3f: encodedResult\n", HostTime);
      v26 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
      CVBufferSetAttachment(*(*(a1 + 32) + 80), v16, v26, kCVAttachmentMode_ShouldPropagate);
      objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v27, *(*(a1 + 32) + 80), @"Assembly");
      v29 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v28, *(a1 + 32) + 144, 32);
      objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v30, v29, @"CropRect");
    }
  }
}

uint64_t sub_23C475A74(const char *a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__filename, 0, 0x100uLL, "%s/panov2_log.txt", a1);
  result = fopen(__filename, "w+");
  qword_27E1F6580 = result;
  if (result)
  {
    v5 = panoLog(result, "{panoLog|Version:200}\n");
    result = panoLog(v5, "%s\n", a1);
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *a2 = v6;
  return result;
}

uint64_t setDownscaledResolution(unint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1 >= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *a1;
  }

  if (v7 < a5)
  {
    return 2;
  }

  if (v7 > a4 && a3 != 0)
  {
    v9 = 1;
    do
    {
      v5 = ((v5 & 1) + v5 + (((v5 & 1) + v5) & 2) + 1) >> 1;
      v10 = v6 + (v6 & 1) + (((v6 & 1) + v6) & 2) + 1;
      v6 = v10 >> 1;
      if (v5 >= v10 >> 1)
      {
        v11 = v10 >> 1;
      }

      else
      {
        v11 = v5;
      }
    }

    while (v11 > a4 && v9++ < a3);
  }

  v13 = 0;
  *a1 = v5;
  *a2 = v6;
  return v13;
}

uint64_t scaleAndRotatePixelBuffer(int a1, __CVBuffer *a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      sub_23C4659B8(a1, a2);
      sub_23C4659F8();
      v3 = v4;
      if (v4)
      {
        syslog(3, "scaleAndRotatePixelBuffer failed %d", v4);
      }
    }
  }

  return v3;
}

uint64_t scalePixelBuffer(OpaqueVTPixelTransferSession *a1, CVBufferRef sourceBuffer, CVBufferRef destinationBuffer)
{
  v3 = 0;
  if (sourceBuffer)
  {
    if (destinationBuffer)
    {
      CVBufferPropagateAttachments(sourceBuffer, destinationBuffer);
      v7 = VTPixelTransferSessionTransferImage(a1, sourceBuffer, destinationBuffer);
      v3 = v7;
      if (v7)
      {
        syslog(3, "scalePixelBuffer failed %d", v7);
      }
    }
  }

  return v3;
}

uint64_t scaleCropAndRotatePixelBuffer(int a1, __CVBuffer *a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      sub_23C4659B8(a1, a2);
      sub_23C4659F8();
      v3 = v4;
      if (v4)
      {
        syslog(3, "scaleAndRotatePixelBuffer failed %d", v4);
      }
    }
  }

  return v3;
}

uint64_t RobustPano_processSampleBuffer(void *a1, opaqueCMSampleBuffer *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  FigSampleBufferRetain();
  ++dword_2810D7488;
  if (CMSampleBufferGetImageBuffer(a2))
  {
    ACT_getHostTime();
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    CMTimeGetSeconds(&time);
    panoLog(32, "FrameID:%04d time %.3f: frame received PTS:%.3f\n");
  }

  else
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    ACT_getHostTime();
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    CMTimeGetSeconds(&time);
    panoLog(4, "time %.3f: NULL frame received ID:%d PTS:%.3f\n");
  }

  v11 = objc_msgSend_addFrame_registrationCallback_(a1, v6, a2, 0);
  if (!v11)
  {
    objc_msgSend_getCurrentPanningSpeed(a1, v8, v9, v10);
    *a3 = v12;
  }

  return v11;
}

id loadPanoIBPFromBundle(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "/System/Library/VideoProcessors/Panorama.bundle", a4);
  v8 = objc_msgSend_bundleWithPath_(v4, v6, v5, v7);

  if (v8)
  {
    v25 = 0;
    objc_msgSend_loadAndReturnError_(v8, v9, &v25, v10);
    v11 = v25;
    if (v11)
    {
      v16 = v11;
      v18 = *MEMORY[0x277D85DF8];
      v19 = objc_msgSend_description(v11, v12, v13, v14);
      v20 = v19;
      v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
      fprintf(v18, "%s\n", v24);

      goto LABEL_10;
    }

    if (objc_msgSend_classNamed_(v8, v12, @"PanoramaProcessor", v14))
    {
      v15 = objc_opt_new();
      v16 = 0;
      goto LABEL_5;
    }
  }

  v16 = 0;
LABEL_10:
  v15 = 0;
LABEL_5:

  return v15;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}