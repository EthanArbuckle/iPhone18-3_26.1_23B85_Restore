uint64_t vt_Copy_yuvsITU2020_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v9;
        v14 = v10;
        do
        {
          v15 = v14[1] - 128;
          v16 = v14[3] - 128;
          v17 = 38267 * v14[2] - 612272;
          v18 = -6155 * v15 - 21375 * v16;
          v19 = 55169 * v16;
          v20 = 70388 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38267 * *v14 - 612272;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v13 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v13 + 4) = v22;
          *(v13 + 5) = v26 & ~(v26 >> 31);
          v14 += 4;
          v13 += 6;
          --v12;
        }

        while (v12);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU2020_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = (38267 * *v13 - 612272) >> 15;
          if (v14 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          else
          {
            v15 = (38267 * *v13 - 612272) >> 15;
          }

          if (v14 >= 0)
          {
            v16 = ~v15;
          }

          else
          {
            v16 = -1;
          }

          v17 = (38267 * v13[2] - 612272) >> 15;
          if (v17 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          else
          {
            v18 = (38267 * v13[2] - 612272) >> 15;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          *v12 = v16;
          v12[1] = v19;
          v13 += 4;
          v12 += 2;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU2020_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38267 * *v14 - 612272;
          v20 = 38267 * v14[2] - 612272;
          v21 = -6155 * v17 - 21375 * v18;
          v22 = 70388 * v17;
          v23 = 55169 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = *v16;
          v15[1] = v25;
          v15[2] = v27;
          v15[3] = v29;
          v15[4] = v16[1];
          v15[5] = v31;
          v15[6] = v33;
          v15[7] = v34 & ~(v34 >> 31);
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU2020_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38267 * *v14 - 612272;
          v20 = 38267 * v14[2] - 612272;
          v21 = -6155 * v17 - 21375 * v18;
          v22 = 70388 * v17;
          v23 = 55169 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = v29;
          v15[1] = v27;
          v15[2] = v25;
          v15[3] = *v16;
          v15[4] = v34 & ~(v34 >> 31);
          v15[5] = v33;
          v15[6] = v31;
          v15[7] = v16[1];
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU2020_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38267 * v13[2] - 612272;
          v18 = -6155 * v15 - 21375 * v16;
          v19 = 55169 * v16;
          v20 = 70388 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38267 * *v13 - 612272;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU2020_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38267 * v14 - 612272) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38267 * v15 - 612272) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t __isMCTFRunningOutOfProcess_block_invoke()
{
  result = _os_feature_enabled_impl();
  isMCTFRunningOutOfProcess_runningOutOfProcess = result;
  if (result)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      result = FigServer_IsVideocodecd();
    }

    else
    {
      result = FigServer_IsServerProcess();
    }

    isMCTFRunningOutOfProcess_runningOutOfProcess = result == 0;
  }

  return result;
}

uint64_t RegisterVTRateControlSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTRateControlSessionID = v0;
  sVTRateControlSessionPropertyCallbacks = 0;
  unk_1EAD31F00 = VTRateControlSessionCopySupportedPropertyDictionary;
  qword_1EAD31F08 = VTRateControlSessionSetProperty;
  qword_1EAD31F10 = VTRateControlSessionCopyProperty;

  return VTSessionRegisterCallbacksForTypeID(&sVTRateControlSessionPropertyCallbacks, v0);
}

uint64_t VTRateControlSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v22 = 0;
  if (!a10)
  {
    return 4294954394;
  }

  if (VTRateControlRegisterBundle_onceToken != -1)
  {
    VTRateControlSessionCreate_cold_1();
  }

  if ((_MergedGlobals_15 & 1) == 0)
  {
    VTRateControlSessionCreate_cold_2(&v23);
    return v23;
  }

  MEMORY[0x193AE3010](&VTRateControlSessionGetTypeID_sRegisterVTRateControlSessionOnce, RegisterVTRateControlSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTRateControlSessionCreate_cold_3(&v23);
    return v23;
  }

  v18 = Instance;
  v19 = off_1ED6D4268(a1, a2, a3, a4, a5, a6, 0, vtRateControlSessionBeforeEncodeFrameCallback, vtRateControlSessionCompleteFramesCallback, Instance, &v22);
  if (v19)
  {
    CFRelease(v18);
  }

  else
  {
    v20 = qword_1ED6D4270;
    v18[4] = v22;
    v18[5] = v20;
    v18[7] = a8;
    v18[8] = a9;
    *a10 = v18;
  }

  return v19;
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  if (!a1)
  {
    return vtRateControlSessionBeforeEncodeFrameCallback_cold_3();
  }

  if (*(a1 + 16) == 2)
  {
    return vtRateControlSessionBeforeEncodeFrameCallback_cold_2();
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    return vtRateControlSessionBeforeEncodeFrameCallback_cold_1();
  }

  v7 = *(a1 + 56);
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  return v7(v6, a2, a3, &v11, &v9);
}

uint64_t vtRateControlSessionCompleteFramesCallback(uint64_t a1, __int128 *a2)
{
  if (!a1)
  {
    return vtRateControlSessionCompleteFramesCallback_cold_3();
  }

  if (*(a1 + 16) == 2)
  {
    return vtRateControlSessionCompleteFramesCallback_cold_2();
  }

  v2 = *(a1 + 72);
  if (!v2)
  {
    return vtRateControlSessionCompleteFramesCallback_cold_1();
  }

  v3 = *(a1 + 64);
  v5 = *a2;
  v6 = *(a2 + 2);
  return v3(v2, &v5);
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (a1)
    {
      if (*(a1 + 16) == 2)
      {
        VTRateControlSessionCopySupportedPropertyDictionary_cold_1(&v5);
        return v5;
      }

      else
      {
        v2 = off_1ED6D4278;
        v3 = *(a1 + 32);

        return v2(v3);
      }
    }

    else
    {
      VTRateControlSessionCopySupportedPropertyDictionary_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    VTRateControlSessionCopySupportedPropertyDictionary_cold_3(&v7);
    return v7;
  }
}

uint64_t vtRateControlSessionIsPropertySupported(uint64_t a1, const void *a2)
{
  theDict = 0;
  VTRateControlSessionCopySupportedPropertyDictionary(a1, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v3 = CFDictionaryContainsKey(theDict, a2);
  CFRelease(theDict);
  return v3;
}

uint64_t VTRateControlSessionSetProperty(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 2)
    {
      VTRateControlSessionSetProperty_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = off_1ED6D4280;
      v2 = *(a1 + 32);

      return v1(v2);
    }
  }

  else
  {
    VTRateControlSessionSetProperty_cold_2(&v5);
    return v5;
  }
}

uint64_t VTRateControlSessionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (a1)
  {
    if (*(a1 + 16) == 2)
    {
      VTRateControlSessionCopyProperty_cold_1(&v7);
      return v7;
    }

    else
    {
      v4 = off_1ED6D4288;
      v5 = *(a1 + 32);

      return v4(v5);
    }
  }

  else
  {
    VTRateControlSessionCopyProperty_cold_2(&v8);
    return v8;
  }
}

uint64_t VTRateControlSessionBeforePrepareToEncodeFrames(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 2)
    {
      VTRateControlSessionBeforePrepareToEncodeFrames_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = off_1ED6D4290;
      v2 = *(a1 + 32);

      return v1(v2);
    }
  }

  else
  {
    VTRateControlSessionBeforePrepareToEncodeFrames_cold_2(&v5);
    return v5;
  }
}

uint64_t VTRateControlSessionBeforeEncodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  if (!a1)
  {
    VTRateControlSessionBeforeEncodeFrame_cold_2(&v9);
    return v9;
  }

  if (*(a1 + 16) == 2)
  {
    VTRateControlSessionBeforeEncodeFrame_cold_1(&v9);
    return v9;
  }

  v5 = *(a1 + 32);
  v9 = *a4;
  v10 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return off_1ED6D4298(v5, a2, a3, &v9, &v7);
}

uint64_t VTRateControlSessionBeforeEmitEncodedFrame(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    v7 = v1;
    v8 = v2;
    VTRateControlSessionBeforeEmitEncodedFrame_cold_1(&v6);
    return v6;
  }

  else
  {
    v3 = off_1ED6D42A0;
    v4 = *(a1 + 32);

    return v3(v4);
  }
}

uint64_t VTRateControlSessionCompleteFrames(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    v7 = v1;
    v8 = v2;
    VTRateControlSessionCompleteFrames_cold_1(&v6);
    return v6;
  }

  else
  {
    v3 = off_1ED6D42A8;
    v4 = *(a1 + 32);

    return v3(v4);
  }
}

uint64_t VTRateControlGetVersion(uint64_t *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (VTRateControlRegisterBundle_onceToken != -1)
  {
    VTRateControlSessionCreate_cold_1();
  }

  if (_MergedGlobals_15)
  {
    v2 = off_1ED6D42B0();
    result = 0;
    *a1 = v2;
  }

  else
  {
    VTRateControlGetVersion_cold_2(&v4);
    return v4;
  }

  return result;
}

uint64_t VTRateControlReactionObserverCreate(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a1)
  {
    if (a2)
    {
      if (VTRateControlRegisterBundle_onceToken != -1)
      {
        VTRateControlSessionCreate_cold_1();
      }

      if (off_1ED6D42B8)
      {
        off_1ED6D42B8(a1, a2, &v5);
        return v5;
      }
    }

    else
    {
      VTRateControlReactionObserverCreate_cold_2();
    }
  }

  else
  {
    VTRateControlReactionObserverCreate_cold_3();
  }

  return 0;
}

double vtRateControlSessionInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void vtRateControlSessionFinalize(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = 2;
}

__CFString *vtRateControlSessionCopyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTRateControlSession %p [%p]>{invalid:%d, }", a1, v4, a1[4]);
  return Mutable;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = 2 * *result;
  v339 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
  v340 = *(result + 36);
  v9 = result[14];
  v10 = result[12];
  v11 = result[13];
  v345 = result;
  v12 = v11 * a2 / v8;
  v13 = result[15] + 2 * v12;
  v14 = 2 * ((v11 + v11 * a2) / v8 - v12);
  v16 = result[7];
  v15 = result[8];
  v18 = result[16];
  v17 = result[17];
  v338 = *(v15 + 16);
  v342 = v16[2];
  v343 = v17[2];
  v341 = v18[2];
  v19 = (v341 + v343 * v13 + v9);
  v350 = v14;
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = result[19];
    v22 = v10 - 7;
    result = *v15;
    v23 = *(v15 + 8);
    v24 = *v17;
    v25 = v17[1];
    v26 = *(v21 + 128);
    v27 = *(v21 + 140);
    v28 = *(v21 + 142);
    v29 = *(v21 + 144);
    v30 = *(v21 + 146);
    v31 = *(v21 + 148);
    v32 = *(v21 + 150);
    v33 = *(v21 + 152);
    _S21 = *(v21 + 44);
    v34.i32[0] = *(v21 + 48);
    v37.i32[0] = *(v21 + 52);
    v36.i32[0] = *(v21 + 56);
    v349 = v10;
    v38 = v27;
    v39 = v28;
    _S29 = (8191.0 / v26) * *v21;
    _S20 = (8191.0 / v26) * *(v21 + 8);
    _S22 = (8191.0 / v26) * *(v21 + 16);
    v43 = v21 + 16548;
    v44 = v10 & 0xFFFFFFFE;
    _S27 = (8191.0 / v26) * *(v21 + 20);
    _S3 = (8191.0 / v26) * *(v21 + 28);
    v47 = v29;
    v48 = v30;
    v383 = v31;
    *&a8 = v32;
    v410 = v32;
    v49 = v33;
    v50 = v21 + 164;
    *&a8 = v27;
    v51 = vdupq_lane_s16(*&a8, 0);
    v52 = v21 + 32932;
    *&a8 = -v28;
    v61 = vdupq_lane_s16(*&a8, 0);
    __asm
    {
      FCVT            H8, S29
      FCVT            H5, S3
    }

    v408 = _H5;
    v409 = v61;
    __asm { FCVT            H5, S22 }

    v407 = _H5;
    v34.i32[1] = *(v21 + 60);
    __asm { FMOV            V5.2S, #0.25 }

    *v61.f32 = vmul_f32(v34, _D5);
    v62 = vdupq_lane_s32(vcvt_f16_f32(v61), 0);
    v398 = v62;
    v37.i32[1] = *(v21 + 64);
    *v62.f32 = vmul_f32(v37, _D5);
    _Q2 = vdupq_lane_s32(vcvt_f16_f32(v62), 0);
    v397 = _Q2;
    v36.i32[1] = *(v21 + 68);
    __asm { FCVT            H2, S27 }

    v406 = *_Q2.i16;
    *_Q2.f32 = vmul_f32(v36, _D5);
    v64 = vcvt_f16_f32(_Q2);
    v65 = vdupq_lane_s32(v64, 0);
    *v64.i16 = v29;
    v66 = vdupq_lane_s16(v64, 0);
    v394 = v66;
    v395 = v65;
    *v66.i16 = v30;
    v67 = vdupq_lane_s16(*v66.i8, 0);
    *v66.i16 = v31;
    v68 = vdupq_lane_s16(*v66.i8, 0);
    v392 = v68;
    v393 = v67;
    *v68.i16 = v32;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    *v68.i16 = v33;
    _Q0 = vdupq_lane_s16(*v68.i8, 0);
    v390 = _Q0;
    v391 = v69;
    v71 = *(v21 + 124);
    if (v71 >= 0x11)
    {
      v72 = 0;
    }

    else
    {
      v72 = 16 - v71;
    }

    v347 = v25;
    v73 = (v18[1] + v25 * (v13 / 2) + v9);
    v74 = v23;
    v75 = (*v18 + v24 * v13 + v9);
    v78 = v16;
    v77 = *v16;
    v76 = v78[1];
    if (v76)
    {
      v79 = (v76 + v23 * v339 + 2 * v340);
    }

    else
    {
      v79 = 0;
    }

    v80 = (v77 + result * v339 + 2 * v340);
    v81 = v72;
    v346 = v10 & 0xFFFFFFF8;
    __asm { FCVT            H15, S20 }

    v405 = _H15;
    v389 = *(v21 + 36);
    __asm { FCVT            H0, S0 }

    v371 = *_Q0.i16;
    v388 = *(v21 + 40);
    __asm { FCVT            H0, S5 }

    v370 = *_Q0.i16;
    _Q0.i32[0] = *(v21 + 120);
    v402 = *(v21 + 44);
    __asm { FCVT            H5, S21 }

    v368 = _H5;
    v374 = *(v21 + 108);
    __asm { FCVT            H5, S12 }

    v367 = _H5;
    v373 = *(v21 + 112);
    __asm { FCVT            H5, S13 }

    v366 = _H5;
    v372 = *(v21 + 116);
    __asm { FCVT            H5, S14 }

    v365 = _H5;
    v87 = _S27;
    v369 = *_Q0.i32;
    __asm { FCVT            H0, S0 }

    v364 = *_Q0.i16;
    v387 = *(v21 + 72);
    __asm { FCVT            H0, S7 }

    v363 = *_Q0.i16;
    v386 = *(v21 + 76);
    __asm { FCVT            H0, S16 }

    v362 = *_Q0.i16;
    v385 = *(v21 + 80);
    __asm { FCVT            H0, S23 }

    v361 = *_Q0.i16;
    v384 = *(v21 + 84);
    __asm { FCVT            H0, S24 }

    v360 = *_Q0.i16;
    v382 = *(v21 + 88);
    __asm { FCVT            H0, S19 }

    v359 = *_Q0.i16;
    v380 = *(v21 + 92);
    __asm { FCVT            H0, S25 }

    v358 = _Q0;
    v379 = *(v21 + 96);
    __asm { FCVT            H0, S26 }

    v357 = _H0;
    v377 = *(v21 + 100);
    __asm { FCVT            H0, S30 }

    v356 = _H0;
    v375 = *(v21 + 104);
    __asm { FCVT            H0, S11 }

    v355 = _H0;
    v91 = vdupq_n_s16(-v72);
    v399 = _H8;
    v92 = v62.i64[0];
    v396 = _Q2.f32[0];
    v352 = v48;
    v353 = _Q2.f32[1];
    v348 = v24;
    v401 = _S20;
    v400 = _S22;
    v404 = _S27;
    v381 = v51;
    v378 = v38;
    v376 = _S29;
    v403 = _S3;
    v354 = v91;
    v351 = v49;
    do
    {
      v93 = result;
      v94 = result + v80;
      v95 = v74;
      v96 = (v79 + v74);
      v97 = v75 + v24;
      if (v10 < 8)
      {
        v169 = 0;
        v168 = v73;
        v101 = (v75 + v24);
        v100 = v96;
        v99 = (result + v80);
      }

      else
      {
        v98 = 0;
        v99 = (result + v80);
        v100 = v96;
        v101 = (v75 + v24);
        do
        {
          v102 = 0uLL;
          if (v79)
          {
            v411 = vld2q_s16(v79);
            v79 += 16;
            v103 = vaddq_f16(v409, vcvtq_f16_u16(vshlq_u16(v411.val[0], v91)));
            v104 = vaddq_f16(v409, vcvtq_f16_u16(vshlq_u16(v411.val[1], v91)));
            v105 = vmulq_n_f16(v104, v405);
            v106 = vmlaq_n_f16(vmulq_n_f16(v103, v407), v104, v406);
            v107 = vmulq_n_f16(v103, v408);
          }

          else
          {
            v107 = 0uLL;
            v106 = 0uLL;
            v105 = 0uLL;
          }

          v108 = *v80++;
          v109 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v108, v91)), v51);
          v110 = vmlaq_n_f16(v105, v109, _H8);
          v111 = vmlaq_n_f16(v106, v109, _H8);
          v112 = vmlaq_n_f16(v107, v109, _H8);
          if (v100)
          {
            v412 = vld2q_s16(v100);
            v100 += 16;
            v113 = vaddq_f16(v409, vcvtq_f16_u16(vshlq_u16(v412.val[0], v91)));
            v412.val[0] = vaddq_f16(v409, vcvtq_f16_u16(vshlq_u16(v412.val[1], v91)));
            v114 = vmulq_n_f16(v412.val[0], v405);
            v115 = vmlaq_n_f16(vmulq_n_f16(v113, v407), v412.val[0], v406);
            v102 = vmulq_n_f16(v113, v408);
          }

          else
          {
            v115 = 0uLL;
            v114 = 0uLL;
          }

          v116 = *v99++;
          v117 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v116, v91)), v51);
          v118 = vmlaq_n_f16(v114, v117, _H8);
          v119 = vmlaq_n_f16(v115, v117, _H8);
          v120 = vmlaq_n_f16(v102, v117, _H8);
          WORD4(v121) = 0;
          v122.i64[0] = 0x9000900090009000;
          v122.i64[1] = 0x9000900090009000;
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v122));
          v124.i16[0] = *(v50 + 2 * v123.u16[0]);
          v124.i16[1] = *(v50 + 2 * v123.u16[1]);
          v124.i16[2] = *(v50 + 2 * v123.u16[2]);
          v124.i16[3] = *(v50 + 2 * v123.u16[3]);
          v124.i16[4] = *(v50 + 2 * v123.u16[4]);
          v124.i16[5] = *(v50 + 2 * v123.u16[5]);
          v124.i16[6] = *(v50 + 2 * v123.u16[6]);
          v124.i16[7] = *(v50 + 2 * v123.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v111, 0), v122));
          v126.i16[0] = *(v50 + 2 * v125.u16[0]);
          v126.i16[1] = *(v50 + 2 * v125.u16[1]);
          v126.i16[2] = *(v50 + 2 * v125.u16[2]);
          v126.i16[3] = *(v50 + 2 * v125.u16[3]);
          v126.i16[4] = *(v50 + 2 * v125.u16[4]);
          v126.i16[5] = *(v50 + 2 * v125.u16[5]);
          v126.i16[6] = *(v50 + 2 * v125.u16[6]);
          v126.i16[7] = *(v50 + 2 * v125.u16[7]);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v122));
          v128.i16[0] = *(v50 + 2 * v127.u16[0]);
          v128.i16[1] = *(v50 + 2 * v127.u16[1]);
          v128.i16[2] = *(v50 + 2 * v127.u16[2]);
          v128.i16[3] = *(v50 + 2 * v127.u16[3]);
          v128.i16[4] = *(v50 + 2 * v127.u16[4]);
          v128.i16[5] = *(v50 + 2 * v127.u16[5]);
          v128.i16[6] = *(v50 + 2 * v127.u16[6]);
          v128.i16[7] = *(v50 + 2 * v127.u16[7]);
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v122));
          v118.i16[0] = *(v50 + 2 * v129.u16[0]);
          v118.i16[1] = *(v50 + 2 * v129.u16[1]);
          v118.i16[2] = *(v50 + 2 * v129.u16[2]);
          v118.i16[3] = *(v50 + 2 * v129.u16[3]);
          v118.i16[4] = *(v50 + 2 * v129.u16[4]);
          v118.i16[5] = *(v50 + 2 * v129.u16[5]);
          v118.i16[6] = *(v50 + 2 * v129.u16[6]);
          v118.i16[7] = *(v50 + 2 * v129.u16[7]);
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v122));
          v119.i16[0] = *(v50 + 2 * v130.u16[0]);
          v119.i16[1] = *(v50 + 2 * v130.u16[1]);
          v119.i16[2] = *(v50 + 2 * v130.u16[2]);
          v119.i16[3] = *(v50 + 2 * v130.u16[3]);
          v119.i16[4] = *(v50 + 2 * v130.u16[4]);
          v119.i16[5] = *(v50 + 2 * v130.u16[5]);
          v119.i16[6] = *(v50 + 2 * v130.u16[6]);
          v119.i16[7] = *(v50 + 2 * v130.u16[7]);
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v122));
          v120.i16[0] = *(v50 + 2 * v131.u16[0]);
          v120.i16[1] = *(v50 + 2 * v131.u16[1]);
          v120.i16[2] = *(v50 + 2 * v131.u16[2]);
          v120.i16[3] = *(v50 + 2 * v131.u16[3]);
          v120.i16[4] = *(v50 + 2 * v131.u16[4]);
          v120.i16[5] = *(v50 + 2 * v131.u16[5]);
          v120.i16[6] = *(v50 + 2 * v131.u16[6]);
          v120.i16[7] = *(v50 + 2 * v131.u16[7]);
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v124, v367), v126, v366), v128, v365), vmaxq_f16(vmaxq_f16(v124, v126), v128), v364), 0), v122));
          v133 = *(v43 + 2 * v132.u16[0]);
          v134 = *(v43 + 2 * v132.u16[1]);
          v135 = *(v43 + 2 * v132.u16[2]);
          v136 = *(v43 + 2 * v132.u16[3]);
          v137 = *(v43 + 2 * v132.u16[4]);
          v138 = *(v43 + 2 * v132.u16[5]);
          v139 = *(v43 + 2 * v132.u16[6]);
          *&v121 = *(v43 + 2 * v132.u16[7]);
          v140 = vmulq_f16(v124, *&v133);
          v141 = vmulq_f16(v126, *&v133);
          v142 = vmulq_f16(v128, *&v133);
          v143 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v367), v119, v366), v120, v365), vmaxq_f16(vmaxq_f16(v118, v119), v120), v364), *(&v121 + 2)), v122));
          v128.i16[0] = *(v43 + 2 * v143.u16[0]);
          v128.i16[1] = *(v43 + 2 * v143.u16[1]);
          v128.i16[2] = *(v43 + 2 * v143.u16[2]);
          v128.i16[3] = *(v43 + 2 * v143.u16[3]);
          v128.i16[4] = *(v43 + 2 * v143.u16[4]);
          v128.i16[5] = *(v43 + 2 * v143.u16[5]);
          v128.i16[6] = *(v43 + 2 * v143.u16[6]);
          v128.i16[7] = *(v43 + 2 * v143.u16[7]);
          v144 = vmulq_f16(v118, v128);
          v145 = vmulq_f16(v119, v128);
          v146 = vmulq_f16(v120, v128);
          v147 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v140, v363), v141, v362), v142, v361);
          v148.i16[7] = v358.i16[7];
          *(&v121 - 14) = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v140, v360), v141, v359), v142, *v358.i16);
          v149 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v142, v355), v141, v356), v140, v357);
          v150 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v144, v363), v145, v362), v146, v361);
          v151 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v144, v360), v145, v359), v146, *v358.i16);
          v152 = vminq_f16(vmaxq_f16(v147, *(&v121 + 2)), v122);
          v153 = vcvtq_u16_f16(v152);
          v152.i16[0] = *(v52 + 2 * v153.u16[0]);
          v152.i16[1] = *(v52 + 2 * v153.u16[1]);
          v152.i16[2] = *(v52 + 2 * v153.u16[2]);
          v152.i16[3] = *(v52 + 2 * v153.u16[3]);
          v152.i16[4] = *(v52 + 2 * v153.u16[4]);
          v152.i16[5] = *(v52 + 2 * v153.u16[5]);
          v152.i16[6] = *(v52 + 2 * v153.u16[6]);
          v154 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(*(&v121 - 14), *(&v121 + 2)), v122));
          v148.i16[0] = *(v52 + 2 * v154.u16[0]);
          v148.i16[1] = *(v52 + 2 * v154.u16[1]);
          v148.i16[2] = *(v52 + 2 * v154.u16[2]);
          v148.i16[3] = *(v52 + 2 * v154.u16[3]);
          v148.i16[4] = *(v52 + 2 * v154.u16[4]);
          v148.i16[5] = *(v52 + 2 * v154.u16[5]);
          v148.i16[6] = *(v52 + 2 * v154.u16[6]);
          *(&v121 - 14) = vuzp1q_s16(v152, v148);
          v152.i16[7] = *(v52 + 2 * v153.u16[7]);
          v148.i16[7] = *(v52 + 2 * v154.u16[7]);
          v155 = vmulq_n_f16(v146, v355);
          v156 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v149, *(&v121 + 2)), v122));
          v157 = vmlaq_n_f16(v155, v145, v356);
          v145.i16[0] = *(v52 + 2 * v156.u16[0]);
          v145.i16[1] = *(v52 + 2 * v156.u16[1]);
          v145.i16[2] = *(v52 + 2 * v156.u16[2]);
          v145.i16[3] = *(v52 + 2 * v156.u16[3]);
          v145.i16[4] = *(v52 + 2 * v156.u16[4]);
          v145.i16[5] = *(v52 + 2 * v156.u16[5]);
          v145.i16[6] = *(v52 + 2 * v156.u16[6]);
          v158 = (v52 + 2 * v156.u16[7]);
          v159 = v145;
          v159.i16[7] = *v158;
          v160 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v150, *(&v121 + 2)), v122));
          v150.i16[0] = *(v52 + 2 * v160.u16[0]);
          v150.i16[1] = *(v52 + 2 * v160.u16[1]);
          v150.i16[2] = *(v52 + 2 * v160.u16[2]);
          v150.i16[3] = *(v52 + 2 * v160.u16[3]);
          v150.i16[4] = *(v52 + 2 * v160.u16[4]);
          v150.i16[5] = *(v52 + 2 * v160.u16[5]);
          v150.i16[6] = *(v52 + 2 * v160.u16[6]);
          v161 = (v52 + 2 * v160.u16[7]);
          v162 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v151, *(&v121 + 2)), v122));
          v151.i16[0] = *(v52 + 2 * v162.u16[0]);
          v151.i16[1] = *(v52 + 2 * v162.u16[1]);
          v151.i16[2] = *(v52 + 2 * v162.u16[2]);
          v151.i16[3] = *(v52 + 2 * v162.u16[3]);
          v151.i16[4] = *(v52 + 2 * v162.u16[4]);
          v151.i16[5] = *(v52 + 2 * v162.u16[5]);
          v151.i16[6] = *(v52 + 2 * v162.u16[6]);
          v163 = vuzp1q_s16(v150, v151);
          v150.i16[7] = *v161;
          v151.i16[7] = *(v52 + 2 * v162.u16[7]);
          v164 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v157, v144, v357), *(&v121 + 2)), v122));
          v144.i16[0] = *(v52 + 2 * v164.u16[0]);
          v144.i16[1] = *(v52 + 2 * v164.u16[1]);
          v144.i16[2] = *(v52 + 2 * v164.u16[2]);
          v144.i16[3] = *(v52 + 2 * v164.u16[3]);
          v144.i16[4] = *(v52 + 2 * v164.u16[4]);
          v144.i16[5] = *(v52 + 2 * v164.u16[5]);
          v144.i16[6] = *(v52 + 2 * v164.u16[6]);
          v165 = (v52 + 2 * v164.u16[7]);
          v166 = v144;
          v166.i16[7] = *v165;
          *v75++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v394, v152, v371), v148, v370), v159, v368), v394), v392)));
          *v101++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v394, v150, v371), v151, v370), v166, v368), v394), v392)));
          v167 = vaddq_f16(vaddq_f16(vaddq_f16(*(&v121 - 14), vuzp2q_s16(v152, v148)), v163), vuzp2q_s16(v150, v151));
          *&v73[v98] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v393, v398, vzip1q_s16(v167, v167)), v397, vzip2q_s16(v167, v167)), v395, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v145, v145), vtrn2q_s16(v159, v159)), vtrn1q_s16(v144, v144)), vtrn2q_s16(v166, v166))), v391), v390)));
          v98 += 8;
          v49 = v351;
          v48 = v352;
        }

        while (v98 < v22);
        v168 = &v73[v98];
        v169 = v346;
        _S3 = v403;
        v87 = v404;
      }

      for (; v169 < v44; _H8 = v399)
      {
        if (v79)
        {
          v170 = (*v79 >> v81) - v39;
          v171 = (*(v79 + 1) >> v81) - v39;
          v79 += 2;
          v172 = _S20 * v171;
          v173 = (v87 * v171) + (v170 * _S22);
          v174 = _S3 * v170;
        }

        else
        {
          v174 = 0.0;
          v173 = 0.0;
          v172 = 0.0;
        }

        v175 = _S29 * ((v80->u16[0] >> v81) - v38);
        v176 = v172 + v175;
        v177 = (v172 + v175) <= 8191.0;
        v178 = 8191.0;
        if (v177)
        {
          v178 = v176;
          if (v176 < 0.0)
          {
            v178 = 0.0;
          }
        }

        v179 = v173 + v175;
        v177 = (v173 + v175) <= 8191.0;
        v180 = 8191.0;
        if (v177)
        {
          v180 = v179;
          if (v179 < 0.0)
          {
            v180 = 0.0;
          }
        }

        v181 = v174 + v175;
        v182 = 8191.0;
        if (v181 <= 8191.0)
        {
          v182 = v181;
          if (v181 < 0.0)
          {
            v182 = 0.0;
          }
        }

        if (v79)
        {
          v183 = (*v79 >> v81) - v39;
          v184 = (*(v79 + 1) >> v81) - v39;
          v79 += 2;
          v185 = _S20 * v184;
          v186 = (v87 * v184) + (v183 * _S22);
          v187 = _S3 * v183;
        }

        else
        {
          v187 = 0.0;
          v186 = 0.0;
          v185 = 0.0;
        }

        v188 = _S29 * ((v80->u16[1] >> v81) - v38);
        v189 = v185 + v188;
        v190 = 8191.0;
        v191 = 8191.0;
        if (v189 <= 8191.0)
        {
          v191 = v189;
          if (v189 < 0.0)
          {
            v191 = 0.0;
          }
        }

        v192 = v186 + v188;
        v177 = (v186 + v188) <= 8191.0;
        v193 = 8191.0;
        if (v177)
        {
          v193 = v192;
          if (v192 < 0.0)
          {
            v193 = 0.0;
          }
        }

        v194 = v187 + v188;
        if (v194 <= 8191.0)
        {
          v190 = v194;
          if (v194 < 0.0)
          {
            v190 = 0.0;
          }
        }

        if (v100)
        {
          v195 = (*v100 >> v81) - v39;
          v196 = (*(v100 + 1) >> v81) - v39;
          v100 += 2;
          v197 = _S20 * v196;
          v198 = (v87 * v196) + (v195 * _S22);
          v199 = _S3 * v195;
        }

        else
        {
          v199 = 0.0;
          v198 = 0.0;
          v197 = 0.0;
        }

        v200 = _S29 * ((v99->u16[0] >> v81) - v38);
        v201 = v197 + v200;
        v202 = 8191.0;
        v203 = 8191.0;
        if (v201 <= 8191.0)
        {
          v203 = v201;
          if (v201 < 0.0)
          {
            v203 = 0.0;
          }
        }

        v204 = v198 + v200;
        v205 = 8191.0;
        if (v204 <= 8191.0)
        {
          v205 = v204;
          if (v204 < 0.0)
          {
            v205 = 0.0;
          }
        }

        v206 = v199 + v200;
        if (v206 <= 8191.0)
        {
          v202 = v206;
          if (v206 < 0.0)
          {
            v202 = 0.0;
          }
        }

        if (v100)
        {
          v207 = (*v100 >> v81) - v39;
          v208 = (*(v100 + 1) >> v81) - v39;
          v100 += 2;
          v209 = _S20 * v208;
          v210 = (v87 * v208) + (v207 * _S22);
          v211 = _S3 * v207;
        }

        else
        {
          v211 = 0.0;
          v210 = 0.0;
          v209 = 0.0;
        }

        v212 = _S29 * ((v99->u16[1] >> v81) - v38);
        v213 = 8191.0;
        if ((v209 + v212) <= 8191.0)
        {
          v213 = v209 + v212;
          if ((v209 + v212) < 0.0)
          {
            v213 = 0.0;
          }
        }

        v214 = v210 + v212;
        v177 = (v210 + v212) <= 8191.0;
        v215 = 8191.0;
        if (v177)
        {
          v215 = v214;
          if (v214 < 0.0)
          {
            v215 = 0.0;
          }
        }

        v216 = v211 + v212;
        v217 = 8191.0;
        if (v216 <= 8191.0)
        {
          v217 = v216;
          if (v216 < 0.0)
          {
            v217 = 0.0;
          }
        }

        v218 = v39;
        _H2 = *(v50 + 2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        _H4 = *(v50 + 2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H7 = *(v50 + 2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0)));
        __asm { FCVT            S7, H7 }

        _H29 = *(v50 + 2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0)));
        _H28 = *(v50 + 2 * llroundf(fminf(fmaxf(v193, 0.0), 8191.0)));
        _H13 = *(v50 + 2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0)));
        _H15 = *(v50 + 2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0)));
        _H25 = *(v50 + 2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0)));
        _H30 = *(v50 + 2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0)));
        _H16 = *(v50 + 2 * llroundf(fminf(fmaxf(v213, 0.0), 8191.0)));
        _H21 = *(v50 + 2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0)));
        _H23 = *(v50 + 2 * llroundf(fminf(fmaxf(v217, 0.0), 8191.0)));
        v234 = fmaxf(_S2, fmaxf(_S4, _S7));
        v235 = (((v373 * _S4) + (v374 * _S2)) + (v372 * _S7)) + (v369 * v234);
        v236 = 8191.0;
        if (v235 <= 8191.0)
        {
          v236 = (((v373 * _S4) + (v374 * _S2)) + (v372 * _S7)) + (v369 * v234);
          if (v235 < 0.0)
          {
            v236 = 0.0;
          }
        }

        v237 = v49;
        v238 = v48;
        __asm
        {
          FCVT            S24, H29
          FCVT            S27, H28
          FCVT            S26, H13
        }

        _H28 = *(v43 + 2 * llroundf(v236));
        v243 = (((v373 * _S27) + (v374 * _S24)) + (v372 * _S26)) + (v369 * fmaxf(_S24, fmaxf(_S27, _S26)));
        v244 = 8191.0;
        if (v243 <= 8191.0)
        {
          v244 = v243;
          if (v243 < 0.0)
          {
            v244 = 0.0;
          }
        }

        __asm
        {
          FCVT            S14, H15
          FCVT            S31, H25
          FCVT            S9, H30
        }

        _H10 = *(v43 + 2 * llroundf(v244));
        v249 = fmaxf(_S14, fmaxf(_S31, _S9));
        v250 = (((v373 * _S31) + (v374 * _S14)) + (v372 * _S9)) + (v369 * v249);
        v251 = 8191.0;
        if (v250 <= 8191.0)
        {
          v251 = (((v373 * _S31) + (v374 * _S14)) + (v372 * _S9)) + (v369 * v249);
          if (v250 < 0.0)
          {
            v251 = 0.0;
          }
        }

        __asm
        {
          FCVT            S30, H16
          FCVT            S13, H21
          FCVT            S15, H23
          FCVT            S16, H28
        }

        v256 = _S2 * _S16;
        v257 = _S4 * _S16;
        v258 = _S7 * _S16;
        __asm { FCVT            S2, H10 }

        v260 = _S24 * _S2;
        v261 = _S27 * _S2;
        v262 = _S26 * _S2;
        LOWORD(_S2) = *(v43 + 2 * llroundf(v251));
        __asm { FCVT            S4, H2 }

        v264 = _S14 * _S4;
        v265 = _S31 * _S4;
        v266 = _S9 * _S4;
        v267 = (((v373 * _S13) + (v374 * _S30)) + (v372 * _S15)) + (v369 * fmaxf(_S30, fmaxf(_S13, _S15)));
        v268 = 8191.0;
        if (v267 <= 8191.0)
        {
          v268 = v267;
          if (v267 < 0.0)
          {
            v268 = 0.0;
          }
        }

        _H24 = *(v43 + 2 * llroundf(v268));
        __asm { FCVT            S24, H24 }

        v271 = _S30 * _S24;
        v272 = _S13 * _S24;
        _S24 = _S15 * _S24;
        v274 = ((v386 * v257) + (v256 * v387)) + (v258 * v385);
        v275 = ((v382 * v257) + (v256 * v384)) + (v258 * v380);
        _S25 = ((v377 * v257) + (v256 * v379)) + (v258 * v375);
        v277 = ((v386 * v261) + (v260 * v387)) + (v262 * v385);
        v278 = ((v382 * v261) + (v260 * v384)) + (v262 * v380);
        _S21 = ((v377 * v261) + (v260 * v379)) + (v262 * v375);
        v280 = ((v386 * v265) + (v264 * v387)) + (v266 * v385);
        v281 = ((v382 * v265) + (v264 * v384)) + (v266 * v380);
        v282 = ((v377 * v265) + (v264 * v379)) + (v266 * v375);
        _S4 = (v382 * v272) + (v271 * v384);
        v284 = (v377 * v272) + (v271 * v379);
        _S26 = ((v386 * v272) + (v271 * v387)) + (_S24 * v385);
        v286 = _S4 + (_S24 * v380);
        v287 = v284 + (_S24 * v375);
        _H2 = *(v52 + 2 * llroundf(fminf(fmaxf(v274, 0.0), 8191.0)));
        __asm { FCVT            S7, H2 }

        _H2 = *(v52 + 2 * llroundf(fminf(fmaxf(v275, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *(v52 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H16 = *(v52 + 2 * llroundf(fminf(fmaxf(v277, 0.0), 8191.0)));
        __asm { FCVT            S16, H16 }

        _H23 = *(v52 + 2 * llroundf(fminf(fmaxf(v278, 0.0), 8191.0)));
        LOWORD(_S21) = *(v52 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
        __asm
        {
          FCVT            S23, H23
          FCVT            S21, H21
        }

        LOWORD(_S24) = *(v52 + 2 * llroundf(fminf(fmaxf(v280, 0.0), 8191.0)));
        __asm { FCVT            S30, H24 }

        LOWORD(_S24) = *(v52 + 2 * llroundf(fminf(fmaxf(v281, 0.0), 8191.0)));
        __asm { FCVT            S24, H24 }

        LOWORD(_S25) = *(v52 + 2 * llroundf(fminf(fmaxf(v282, 0.0), 8191.0)));
        __asm { FCVT            S25, H25 }

        LOWORD(_S26) = *(v52 + 2 * llroundf(fminf(fmaxf(_S26, 0.0), 8191.0)));
        __asm { FCVT            S27, H26 }

        LOWORD(_S26) = *(v52 + 2 * llroundf(fminf(fmaxf(v286, 0.0), 8191.0)));
        _H0 = *(v52 + 2 * llroundf(fminf(fmaxf(v287, 0.0), 8191.0)));
        __asm
        {
          FCVT            S26, H26
          FCVT            S0, H0
        }

        v305 = (((v388 * _S2) + (v389 * _S7)) + (v402 * _S4)) + v47;
        if (v305 < v47)
        {
          v306 = v47;
        }

        else
        {
          v306 = (((v388 * _S2) + (v389 * _S7)) + (v402 * _S4)) + v47;
        }

        v177 = v305 <= v383;
        v307 = (((v388 * _S23) + (v389 * _S16)) + (v402 * _S21)) + v47;
        if (!v177)
        {
          v306 = v383;
        }

        v308 = llroundf(v306);
        if (v307 < v47)
        {
          v309 = v47;
        }

        else
        {
          v309 = (((v388 * _S23) + (v389 * _S16)) + (v402 * _S21)) + v47;
        }

        v177 = v307 <= v383;
        v310 = (((v388 * _S24) + (v389 * _S30)) + (v402 * _S25)) + v47;
        if (!v177)
        {
          v309 = v383;
        }

        v311 = llroundf(v309);
        if (v310 < v47)
        {
          v312 = v47;
        }

        else
        {
          v312 = (((v388 * _S24) + (v389 * _S30)) + (v402 * _S25)) + v47;
        }

        v177 = v310 <= v383;
        v313 = (((v388 * _S26) + (v389 * _S27)) + (v402 * _S0)) + v47;
        if (!v177)
        {
          v312 = v383;
        }

        v314 = llroundf(v312);
        if (v313 < v47)
        {
          v315 = v47;
        }

        else
        {
          v315 = (((v388 * _S26) + (v389 * _S27)) + (v402 * _S0)) + v47;
        }

        if (v313 <= v383)
        {
          v316 = v315;
        }

        else
        {
          v316 = v383;
        }

        v317 = ((_S7 + _S16) + _S30) + _S27;
        v318 = ((_S2 + _S23) + _S24) + _S26;
        v75->i8[0] = v308;
        v75->i8[1] = v311;
        v101->i8[0] = v314;
        v101->i8[1] = llroundf(v316);
        v48 = v238;
        v319 = ((_S4 + _S21) + _S25) + _S0;
        v320 = ((v238 + (v317 * v61.f32[0])) + (v318 * *&v92)) + (v319 * v396);
        v49 = v237;
        v321 = v237;
        if (v320 <= v237)
        {
          v321 = ((v238 + (v317 * v61.f32[0])) + (v318 * *&v92)) + (v319 * v396);
          if (v320 < v410)
          {
            v321 = v410;
          }
        }

        v322 = ((v238 + (v317 * v61.f32[1])) + (v318 * *(&v92 + 1))) + (v319 * v353);
        *v168 = llroundf(v321);
        v323 = v237;
        v38 = v378;
        _S29 = v376;
        v87 = v404;
        _S3 = v403;
        v39 = v218;
        v91 = v354;
        if (v322 <= v237)
        {
          v323 = v322;
          if (v322 < v410)
          {
            v323 = v410;
          }
        }

        v169 += 2;
        v80 = (v80 + 4);
        v99 = (v99 + 4);
        v168[1] = llroundf(v323);
        v75 = (v75 + 2);
        v101 = (v101 + 2);
        v168 += 2;
        _S20 = v401;
        _S22 = v400;
        v51 = v381;
      }

      result = v93;
      v80 = (v93 + v94);
      v74 = v95;
      v79 = (v96 + v95);
      v24 = v348;
      v75 = &v97[v348];
      v73 += v347;
      v20 += 2;
      v10 = v349;
    }

    while (v20 < v350);
  }

  if (v342 && v341)
  {
    if (v350 >= 1)
    {
      v324 = 0;
      v325 = v342 + v338 * v339 + 2 * v340;
      do
      {
        if (v10 >= 1)
        {
          v326 = v10;
          v327 = v19;
          v328 = v325;
          do
          {
            v329 = *v328++;
            *v327++ = llroundf(v329 * 0.0038911);
            --v326;
          }

          while (v326);
        }

        v325 += v338;
        v19 += v343;
        ++v324;
      }

      while (v350 > v324);
    }
  }

  else if (v341 && v350 >= 1)
  {
    v330 = 0;
    v331 = vdupq_n_s64(v10 - 1);
    do
    {
      if (v10 >= 1)
      {
        v332 = 0;
        do
        {
          v333 = vdupq_n_s64(v332);
          v334 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v334, *v331.i8), *v331.i8).u8[0])
          {
            v19[v332] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v334, *&v331), *&v331).i8[1])
          {
            v19[v332 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDDA0)))), *&v331).i8[2])
          {
            v19[v332 + 2] = -1;
            v19[v332 + 3] = -1;
          }

          v335 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v331, vuzp1_s16(v335, *&v331)).i32[1])
          {
            v19[v332 + 4] = -1;
          }

          if (vuzp1_s8(*&v331, vuzp1_s16(v335, *&v331)).i8[5])
          {
            v19[v332 + 5] = -1;
          }

          if (vuzp1_s8(*&v331, vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD80))))).i8[6])
          {
            v19[v332 + 6] = -1;
            v19[v332 + 7] = -1;
          }

          v336 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v336, *v331.i8), *v331.i8).u8[0])
          {
            v19[v332 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v336, *&v331), *&v331).i8[1])
          {
            v19[v332 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD60)))), *&v331).i8[2])
          {
            v19[v332 + 10] = -1;
            v19[v332 + 11] = -1;
          }

          v337 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v331, vuzp1_s16(v337, *&v331)).i32[1])
          {
            v19[v332 + 12] = -1;
          }

          if (vuzp1_s8(*&v331, vuzp1_s16(v337, *&v331)).i8[5])
          {
            v19[v332 + 13] = -1;
          }

          if (vuzp1_s8(*&v331, vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD40))))).i8[6])
          {
            v19[v332 + 14] = -1;
            v19[v332 + 15] = -1;
          }

          v332 += 16;
        }

        while (((v10 + 15) & 0xFFFFFFFFFFFFFFF0) != v332);
      }

      v19 += v343;
      ++v330;
    }

    while (v350 > v330);
  }

  *(v345 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

int vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_GCD(void *a1, uint64_t a2, double a3, float a4, float a5)
{
  v8 = 2 * *a1;
  v237 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v8);
  v238 = *(a1 + 36);
  v9 = a1[14];
  v10 = a1[12];
  v11 = a1[13];
  v243 = a1;
  v12 = v11 * a2 / v8;
  v13 = a1[15] + 2 * v12;
  v14 = 2 * ((v11 + v11 * a2) / v8 - v12);
  v16 = a1[7];
  v15 = a1[8];
  v18 = a1[16];
  v17 = a1[17];
  v236 = v15[2];
  v240 = v16[2];
  v241 = v17[2];
  v239 = v18[2];
  v19 = (v239 + v241 * v13 + v9);
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = a1[19];
    v22 = v10 & 0xFFFFFFFE;
    v23 = *v15;
    v24 = v15[1];
    v25 = *v17;
    v26 = v17[1];
    LOWORD(a4) = *(v21 + 140);
    LOWORD(a5) = *(v21 + 142);
    LOWORD(v5) = *(v21 + 144);
    LOWORD(v6) = *(v21 + 146);
    LOWORD(v7) = *(v21 + 148);
    *&v27 = 8191.0 / *(v21 + 128);
    v28 = LODWORD(a4);
    v29 = LODWORD(a5);
    v30 = *&v27 * *v21;
    v31 = *&v27 * *(v21 + 8);
    v32 = *&v27 * *(v21 + 16);
    v33 = *&v27 * *(v21 + 20);
    v34 = *&v27 * *(v21 + 28);
    v35 = v5;
    v36 = v6;
    v37 = v7;
    LOWORD(v27) = *(v21 + 150);
    *&v38 = v27;
    v273 = *&v38;
    LOWORD(v38) = *(v21 + 152);
    v268 = v38;
    v269 = v36;
    v266 = *(v21 + 40);
    v267 = *(v21 + 36);
    v265 = *(v21 + 44);
    v263 = *(v21 + 52) * 0.25;
    v264 = *(v21 + 48) * 0.25;
    v261 = *(v21 + 60) * 0.25;
    v262 = *(v21 + 56) * 0.25;
    v259 = *(v21 + 72);
    v260 = *(v21 + 64) * 0.25;
    v257 = *(v21 + 76);
    v258 = *(v21 + 68) * 0.25;
    v255 = *(v21 + 84);
    v256 = *(v21 + 80);
    v253 = *(v21 + 92);
    v254 = *(v21 + 88);
    v252 = *(v21 + 96);
    v250 = *(v21 + 100);
    v248 = *(v21 + 104);
    v39 = v21 + 164;
    v40 = v21 + 16548;
    v42 = *v16;
    v41 = v16[1];
    v43 = (v41 + v24 * v237 + 2 * v238);
    if (!v41)
    {
      v43 = 0;
    }

    v44 = *(v21 + 124);
    v45 = 16 - v44;
    _CF = v44 >= 0x11;
    v47 = *v18 + v25 * v13;
    v48 = v18[1] + v26 * (v13 / 2);
    v49 = v21 + 32932;
    v50 = (v47 + v9);
    v51 = (v42 + v23 * v237 + 2 * v238);
    if (_CF)
    {
      v52 = 0;
    }

    else
    {
      v52 = v45;
    }

    v53 = v48 + v9;
    v54 = v52;
    v55 = *(v21 + 108);
    v56 = *(v21 + 112);
    v58 = *(v21 + 116);
    v57 = *(v21 + 120);
    v271 = v28;
    v272 = v31;
    v270 = v30;
    v251 = v33;
    v249 = v32;
    v247 = v34;
    v245 = v55;
    v246 = v56;
    v244 = v58;
    do
    {
      v59 = &v51[v23];
      v60 = &v43[v24];
      v61 = &v50[v25];
      if (v22 >= 1)
      {
        v62 = 0;
        v63 = &v51[v23];
        v64 = &v43[v24];
        v65 = &v50[v25];
        do
        {
          if (v43)
          {
            v66 = (*v43 >> v54) - v29;
            v67 = (*(v43 + 1) >> v54) - v29;
            v43 += 4;
            v68 = v31 * v67;
            v69 = (v33 * v67) + (v66 * v32);
            v70 = v34 * v66;
          }

          else
          {
            v70 = 0.0;
            v69 = 0.0;
            v68 = 0.0;
          }

          v71 = v30 * ((*v51 >> v54) - v28);
          v72 = v68 + v71;
          v73 = (v68 + v71) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v69 + v71;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v70 + v71;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          if (v43)
          {
            v79 = (*v43 >> v54) - v29;
            v80 = (*(v43 + 1) >> v54) - v29;
            v43 += 4;
            v81 = v31 * v80;
            v82 = (v33 * v80) + (v79 * v32);
            v83 = v34 * v79;
          }

          else
          {
            v83 = 0.0;
            v82 = 0.0;
            v81 = 0.0;
          }

          v84 = v30 * ((*(v51 + 1) >> v54) - v28);
          v85 = v81 + v84;
          v86 = 8191.0;
          v87 = 8191.0;
          if (v85 <= 8191.0)
          {
            v87 = v85;
            if (v85 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v82 + v84;
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v83 + v84;
          if (v90 <= 8191.0)
          {
            v86 = v90;
            if (v90 < 0.0)
            {
              v86 = 0.0;
            }
          }

          if (v64)
          {
            v91 = (*v64 >> v54) - v29;
            v92 = (*(v64 + 1) >> v54) - v29;
            v64 += 4;
            v93 = v31 * v92;
            v94 = (v33 * v92) + (v91 * v32);
            v95 = v34 * v91;
          }

          else
          {
            v95 = 0.0;
            v94 = 0.0;
            v93 = 0.0;
          }

          v96 = v30 * ((*v63 >> v54) - v28);
          v97 = v93 + v96;
          v98 = 8191.0;
          v73 = (v93 + v96) <= 8191.0;
          v99 = 8191.0;
          if (v73)
          {
            v99 = v97;
            if (v97 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = v94 + v96;
          v73 = (v94 + v96) <= 8191.0;
          v101 = 8191.0;
          if (v73)
          {
            v101 = v100;
            if (v100 < 0.0)
            {
              v101 = 0.0;
            }
          }

          v102 = v95 + v96;
          if (v102 <= 8191.0)
          {
            v98 = v102;
            if (v102 < 0.0)
            {
              v98 = 0.0;
            }
          }

          if (v64)
          {
            v103 = (*v64 >> v54) - v29;
            v104 = (*(v64 + 1) >> v54) - v29;
            v64 += 4;
            v105 = v31 * v104;
            v106 = (v33 * v104) + (v103 * v32);
            v107 = v34 * v103;
          }

          else
          {
            v107 = 0.0;
            v106 = 0.0;
            v105 = 0.0;
          }

          v108 = v30 * ((*(v63 + 1) >> v54) - v28);
          v109 = v105 + v108;
          v73 = (v105 + v108) <= 8191.0;
          v110 = 8191.0;
          if (v73)
          {
            v110 = v109;
            if (v109 < 0.0)
            {
              v110 = 0.0;
            }
          }

          v111 = v106 + v108;
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          v113 = v107 + v108;
          v73 = (v107 + v108) <= 8191.0;
          v114 = 8191.0;
          if (v73)
          {
            v114 = v113;
            if (v113 < 0.0)
            {
              v114 = 0.0;
            }
          }

          _H0 = *(v39 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H20 = *(v39 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v121 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          __asm { FCVT            S19, H20 }

          _H20 = *(v39 + 2 * v121);
          __asm { FCVT            S30, H20 }

          _H20 = *(v39 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H29 = *(v39 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H31 = *(v39 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H5 = *(v39 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          _H6 = *(v39 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          _H7 = *(v39 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          _H1 = *(v39 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          _H3 = *(v39 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          _H4 = *(v39 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          v134 = fmaxf(_S0, fmaxf(_S19, _S30));
          v135 = (((v56 * _S19) + (v55 * _S0)) + (v58 * _S30)) + (v57 * v134);
          v136 = 8191.0;
          if (v135 <= 8191.0)
          {
            v136 = (((v56 * _S19) + (v55 * _S0)) + (v58 * _S30)) + (v57 * v134);
            if (v135 < 0.0)
            {
              v136 = 0.0;
            }
          }

          __asm
          {
            FCVT            S21, H20
            FCVT            S22, H29
            FCVT            S23, H31
          }

          _H20 = *(v40 + 2 * llroundf(v136));
          v141 = (((v56 * _S22) + (v55 * _S21)) + (v58 * _S23)) + (v57 * fmaxf(_S21, fmaxf(_S22, _S23)));
          v142 = 8191.0;
          if (v141 <= 8191.0)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H5
            FCVT            S10, H6
            FCVT            S11, H7
          }

          _H5 = *(v40 + 2 * llroundf(v142));
          v147 = fmaxf(_S9, fmaxf(_S10, _S11));
          v148 = (((v56 * _S10) + (v55 * _S9)) + (v58 * _S11)) + (v57 * v147);
          v149 = 8191.0;
          if (v148 <= 8191.0)
          {
            v149 = (((v56 * _S10) + (v55 * _S9)) + (v58 * _S11)) + (v57 * v147);
            if (v148 < 0.0)
            {
              v149 = 0.0;
            }
          }

          __asm
          {
            FCVT            S29, H1
            FCVT            S31, H3
            FCVT            S8, H4
            FCVT            S1, H20
          }

          v154 = _S0 * _S1;
          v155 = _S19 * _S1;
          v156 = _S30 * _S1;
          __asm { FCVT            S0, H5 }

          v158 = _S21 * _S0;
          v159 = _S22 * _S0;
          v160 = _S23 * _S0;
          LOWORD(_S0) = *(v40 + 2 * llroundf(v149));
          __asm { FCVT            S1, H0 }

          v162 = _S9 * _S1;
          v163 = _S10 * _S1;
          v164 = _S11 * _S1;
          v165 = (((v56 * _S31) + (v55 * _S29)) + (v58 * _S8)) + (v57 * fmaxf(_S29, fmaxf(_S31, _S8)));
          v166 = 8191.0;
          if (v165 <= 8191.0)
          {
            v166 = v165;
            if (v165 < 0.0)
            {
              v166 = 0.0;
            }
          }

          _H21 = *(v40 + 2 * llroundf(v166));
          __asm { FCVT            S21, H21 }

          v169 = _S29 * _S21;
          v170 = _S31 * _S21;
          v171 = _S8 * _S21;
          v172 = ((v257 * v155) + (v154 * v259)) + (v156 * v256);
          v173 = ((v254 * v155) + (v154 * v255)) + (v156 * v253);
          _S7 = ((v250 * v155) + (v154 * v252)) + (v156 * v248);
          v175 = ((v257 * v159) + (v158 * v259)) + (v160 * v256);
          _S20 = ((v254 * v159) + (v158 * v255)) + (v160 * v253);
          _S5 = ((v250 * v159) + (v158 * v252)) + (v160 * v248);
          v178 = ((v257 * v163) + (v162 * v259)) + (v164 * v256);
          v179 = ((v254 * v163) + (v162 * v255)) + (v164 * v253);
          v180 = ((v250 * v163) + (v162 * v252)) + (v164 * v248);
          _S1 = (v254 * v170) + (v169 * v255);
          v182 = (v250 * v170) + (v169 * v252);
          v183 = ((v257 * v170) + (v169 * v259)) + (v171 * v256);
          _S23 = _S1 + (v171 * v253);
          v185 = v182 + (v171 * v248);
          _H0 = *(v49 + 2 * llroundf(fminf(fmaxf(v172, 0.0), 8191.0)));
          __asm { FCVT            S3, H0 }

          _H0 = *(v49 + 2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v49 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H4 = *(v49 + 2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H6 = *(v49 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S5) = *(v49 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S5, H5
          }

          LOWORD(_S7) = *(v49 + 2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0)));
          __asm { FCVT            S21, H7 }

          LOWORD(_S7) = *(v49 + 2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0)));
          __asm { FCVT            S19, H7 }

          LOWORD(_S7) = *(v49 + 2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0)));
          __asm { FCVT            S22, H20 }

          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
          LOWORD(_S23) = *(v49 + 2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S28, H23
          }

          v202 = (((v266 * _S0) + (v267 * _S3)) + (v265 * _S1)) + v35;
          if (v202 < v35)
          {
            v203 = v35;
          }

          else
          {
            v203 = (((v266 * _S0) + (v267 * _S3)) + (v265 * _S1)) + v35;
          }

          v73 = v202 <= v37;
          v204 = (((v266 * _S6) + (v267 * _S4)) + (v265 * _S5)) + v35;
          if (!v73)
          {
            v203 = v37;
          }

          v205 = llroundf(v203);
          if (v204 < v35)
          {
            v206 = v35;
          }

          else
          {
            v206 = (((v266 * _S6) + (v267 * _S4)) + (v265 * _S5)) + v35;
          }

          v73 = v204 <= v37;
          v207 = (((v266 * _S19) + (v267 * _S21)) + (v265 * _S7)) + v35;
          if (!v73)
          {
            v206 = v37;
          }

          v208 = llroundf(v206);
          if (v207 < v35)
          {
            v209 = v35;
          }

          else
          {
            v209 = (((v266 * _S19) + (v267 * _S21)) + (v265 * _S7)) + v35;
          }

          v73 = v207 <= v37;
          v210 = (((v266 * _S20) + (v267 * _S22)) + (v265 * _S28)) + v35;
          if (!v73)
          {
            v209 = v37;
          }

          v211 = llroundf(v209);
          if (v210 < v35)
          {
            v212 = v35;
          }

          else
          {
            v212 = (((v266 * _S20) + (v267 * _S22)) + (v265 * _S28)) + v35;
          }

          if (v210 <= v37)
          {
            v213 = v212;
          }

          else
          {
            v213 = v37;
          }

          LODWORD(a1) = llroundf(v213);
          v214 = ((_S3 + _S4) + _S21) + _S22;
          v215 = ((_S0 + _S6) + _S19) + _S20;
          *v50 = v205;
          v50[1] = v208;
          *v65 = v211;
          v65[1] = a1;
          v216 = ((_S1 + _S5) + _S7) + _S28;
          v217 = ((v269 + (v214 * v264)) + (v215 * v263)) + (v216 * v262);
          v218 = v268;
          if (v217 <= v268)
          {
            v218 = ((v269 + (v214 * v264)) + (v215 * v263)) + (v216 * v262);
            if (v217 < v273)
            {
              v218 = v273;
            }
          }

          v219 = ((v269 + (v214 * v261)) + (v215 * v260)) + (v216 * v258);
          *(v53 + v62) = llroundf(v218);
          v220 = v268;
          v30 = v270;
          v28 = v271;
          v31 = v272;
          v32 = v249;
          v33 = v251;
          v34 = v247;
          if (v219 <= v268)
          {
            v220 = v219;
            if (v219 < v273)
            {
              v220 = v273;
            }
          }

          v51 += 4;
          v63 += 4;
          v50 += 2;
          v65 += 2;
          *(v53 + v62 + 1) = llroundf(v220);
          v62 += 2;
          v55 = v245;
          v56 = v246;
          v58 = v244;
        }

        while (v62 < v22);
      }

      v51 = &v59[v23];
      v43 = &v60[v24];
      v50 = &v61[v25];
      v53 += v26;
      v20 += 2;
    }

    while (v20 < v14);
  }

  if (v240 && v239)
  {
    LODWORD(a1) = v236;
    if (v14 >= 1)
    {
      v221 = 0;
      v222 = v240 + v236 * v237 + 2 * v238;
      do
      {
        if (v10 >= 1)
        {
          v223 = v10;
          v224 = v19;
          v225 = v222;
          do
          {
            v226 = *v225++;
            *v224++ = llroundf(v226 * 0.0038911);
            --v223;
          }

          while (v223);
        }

        v222 += v236;
        v19 += v241;
        ++v221;
      }

      while (v14 > v221);
    }
  }

  else if (v239 && v14 >= 1)
  {
    v227 = 0;
    v228 = vdupq_n_s64(v10 - 1);
    do
    {
      if (v10 >= 1)
      {
        v229 = 0;
        do
        {
          v230 = vdupq_n_s64(v229);
          v231 = vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v231, *v228.i8), *v228.i8).u8[0])
          {
            v19[v229] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v231, *&v228), *&v228).i8[1])
          {
            v19[v229 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v228, vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDDA0)))), *&v228).i8[2])
          {
            v19[v229 + 2] = -1;
            v19[v229 + 3] = -1;
          }

          v232 = vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v228, vuzp1_s16(v232, *&v228)).i32[1])
          {
            v19[v229 + 4] = -1;
          }

          if (vuzp1_s8(*&v228, vuzp1_s16(v232, *&v228)).i8[5])
          {
            v19[v229 + 5] = -1;
          }

          if (vuzp1_s8(*&v228, vuzp1_s16(*&v228, vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD80))))).i8[6])
          {
            v19[v229 + 6] = -1;
            v19[v229 + 7] = -1;
          }

          v233 = vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v233, *v228.i8), *v228.i8).u8[0])
          {
            v19[v229 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v233, *&v228), *&v228).i8[1])
          {
            v19[v229 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v228, vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD60)))), *&v228).i8[2])
          {
            v19[v229 + 10] = -1;
            v19[v229 + 11] = -1;
          }

          v234 = vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v228, vuzp1_s16(v234, *&v228)).i32[1])
          {
            v19[v229 + 12] = -1;
          }

          if (vuzp1_s8(*&v228, vuzp1_s16(v234, *&v228)).i8[5])
          {
            v19[v229 + 13] = -1;
          }

          if (vuzp1_s8(*&v228, vuzp1_s16(*&v228, vmovn_s64(vcgeq_u64(v228, vorrq_s8(v230, xmmword_18FECDD40))))).i8[6])
          {
            v19[v229 + 14] = -1;
            v19[v229 + 15] = -1;
          }

          v229 += 16;
        }

        while (((v10 + 15) & 0xFFFFFFFFFFFFFFF0) != v229);
      }

      v19 += v241;
      ++v227;
    }

    while (v14 > v227);
  }

  *(v243 + a2 + 40) = 0;
  return a1;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

int vt_Copy_xf444_TRC_Mat_TRC_420vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v11 = 2 * *a1;
  v295 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v11);
  v296 = *(a1 + 36);
  v12 = *(a1 + 14);
  v14 = *(a1 + 12);
  v13 = *(a1 + 13);
  v301 = a1;
  v15 = v13 * a2 / v11;
  v16 = *(a1 + 15) + 2 * v15;
  v17 = 2 * ((v13 + v13 * a2) / v11 - v15);
  v19 = *(a1 + 7);
  v18 = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 17);
  v294 = v18[2];
  v298 = v19[2];
  v299 = v20[2];
  v297 = v21[2];
  v22 = (v297 + v299 * v16 + v12);
  v304 = v17;
  if (v17 >= 1)
  {
    v23 = 0;
    v24 = *(a1 + 19);
    v25 = v14 - 7;
    v26 = *v18;
    v27 = v18[1];
    v28 = *v20;
    v303 = *(a1 + 12);
    v29 = *(v24 + 140);
    v30 = *(v24 + 142);
    v31 = *(v24 + 144);
    v32 = *(v24 + 146);
    v33 = *(v24 + 148);
    v34 = *(v24 + 150);
    v35 = *(v24 + 152);
    _S27 = *(v24 + 36);
    _S21 = *(v24 + 40);
    v38 = 8191.0 / *(v24 + 128);
    v39 = v29;
    _S22 = *(v24 + 44);
    v40.i32[0] = *(v24 + 48);
    v42 = v30;
    _S29 = v38 * *v24;
    _S17 = v38 * *(v24 + 8);
    v46.i32[0] = *(v24 + 52);
    v45.i32[0] = *(v24 + 56);
    _S31 = v38 * *(v24 + 16);
    v321 = v31;
    v48 = v32;
    v329 = v33;
    *&a6 = v34;
    v355 = v34;
    _S30 = v38 * *(v24 + 20);
    _S6 = *(v24 + 72);
    _S23 = *(v24 + 76);
    v52 = v24 + 164;
    v53 = v303 & 0xFFFFFFFE;
    _S5 = v38 * *(v24 + 28);
    v55 = v35;
    *&a6 = v29;
    LODWORD(v14) = v303;
    v56 = vdupq_lane_s16(*&a6, 0);
    *&a6 = -v30;
    v354 = vdupq_lane_s16(*&a6, 0);
    v40.i32[1] = *(v24 + 60);
    __asm { FMOV            V3.2S, #0.25 }

    *a10.f32 = vmul_f32(v40, _D3);
    v62 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v341 = v62;
    v46.i32[1] = *(v24 + 64);
    *v62.f32 = vmul_f32(v46, _D3);
    v63 = vdupq_lane_s32(vcvt_f16_f32(v62), 0);
    v340 = v63;
    v45.i32[1] = *(v24 + 68);
    *v63.f32 = vmul_f32(v45, _D3);
    v64 = vcvt_f16_f32(v63);
    v65 = vdupq_lane_s32(v64, 0);
    *v64.i16 = v31;
    v66 = vdupq_lane_s16(v64, 0);
    v337 = v66;
    v338 = v65;
    *v66.i16 = v32;
    v67 = vdupq_lane_s16(*v66.i8, 0);
    *v66.i16 = v33;
    v68 = vdupq_lane_s16(*v66.i8, 0);
    v335 = v68;
    v336 = v67;
    *v68.i16 = v34;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    v70 = v24 + 16548;
    *v68.i16 = v35;
    v333 = vdupq_lane_s16(*v68.i8, 0);
    v334 = v69;
    v71 = *(v24 + 124);
    if (v71 >= 0x11)
    {
      v72 = 0;
    }

    else
    {
      v72 = 16 - v71;
    }

    v302 = v20[1];
    v73 = (v21[1] + v302 * (v16 / 2) + v12);
    v74 = (*v21 + v28 * v16 + v12);
    v76 = *v19;
    v75 = *(*(a1 + 7) + 8);
    v77 = (v75 + v27 * v295 + 2 * v296);
    if (!v75)
    {
      v77 = 0;
    }

    v78 = (v76 + v26 * v295 + 2 * v296);
    __asm
    {
      FCVT            H11, S29
      FCVT            H12, S5
    }

    v353 = _H12;
    __asm { FCVT            H12, S31 }

    v352 = _H12;
    __asm { FCVT            H12, S30 }

    v351 = _H12;
    __asm { FCVT            H12, S17 }

    v350 = _H12;
    v349 = *(v24 + 36);
    __asm { FCVT            H12, S27 }

    v320 = _H12;
    v348 = *(v24 + 40);
    __asm { FCVT            H12, S21 }

    v319 = _H12;
    v347 = *(v24 + 44);
    __asm { FCVT            H12, S22 }

    v345 = *(v24 + 72);
    __asm { FCVT            H6, S6 }

    v317 = _H6;
    v318 = _H12;
    v344 = *(v24 + 76);
    __asm { FCVT            H6, S23 }

    v332 = *(v24 + 80);
    __asm { FCVT            H0, S0 }

    v315 = _H0;
    v316 = _H6;
    v331 = *(v24 + 84);
    __asm { FCVT            H0, S3 }

    v314 = _H0;
    v330 = *(v24 + 88);
    __asm { FCVT            H0, S16 }

    v313 = _H0;
    v328 = *(v24 + 92);
    __asm { FCVT            H0, S18 }

    v312 = _H0;
    v327 = *(v24 + 96);
    __asm { FCVT            H0, S9 }

    v311 = _H0;
    v325 = *(v24 + 100);
    __asm { FCVT            H0, S24 }

    v310 = _H0;
    v322 = *(v24 + 104);
    __asm { FCVT            H0, S8 }

    v309 = _H0;
    v96 = vdupq_n_s16(-v72);
    v342 = a10.f32[0];
    v343 = v56;
    v97 = v62.i64[0];
    v308 = a10.f32[1];
    v339 = v63.f32[0];
    v306 = v48;
    v307 = v63.f32[1];
    v346 = v38 * *(v24 + 8);
    v356 = v96;
    v326 = v38 * *(v24 + 20);
    v324 = v38 * *(v24 + 16);
    v323 = v39;
    v305 = v38 * *(v24 + 28);
    do
    {
      v98 = &v78->i8[v26];
      v99 = v77 + v27;
      v100 = v74 + v28;
      if (v14 < 8)
      {
        v156 = 0;
        v155 = v73;
        v104 = (v74 + v28);
        v103 = (v77 + v27);
        v102 = (v78 + v26);
      }

      else
      {
        v101 = 0;
        v102 = (v78 + v26);
        v103 = (v77 + v27);
        v104 = (v74 + v28);
        do
        {
          v105 = 0uLL;
          if (v77)
          {
            v357 = vld2q_s16(v77);
            v77 += 16;
            v106 = vcvtq_f16_u16(vshlq_u16(v357.val[0], v96));
            v357.val[0] = vcvtq_f16_u16(vshlq_u16(v357.val[1], v96));
            v357.val[1] = vaddq_f16(v354, v106);
            v107 = vaddq_f16(v354, v357.val[0]);
            v108 = vmulq_n_f16(v107, v350);
            v109 = vmlaq_n_f16(vmulq_n_f16(v357.val[1], v352), v107, v351);
            v110 = vmulq_n_f16(v357.val[1], v353);
          }

          else
          {
            v110 = 0uLL;
            v109 = 0uLL;
            v108 = 0uLL;
          }

          v111 = *v78++;
          v112 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v111, v96)), v56);
          v113 = vmlaq_n_f16(v108, v112, _H11);
          v114 = vmlaq_n_f16(v109, v112, _H11);
          v115 = vmlaq_n_f16(v110, v112, _H11);
          if (v103)
          {
            v358 = vld2q_s16(v103);
            v103 += 16;
            v358.val[0] = vaddq_f16(v354, vcvtq_f16_u16(vshlq_u16(v358.val[0], v96)));
            v116 = vaddq_f16(v354, vcvtq_f16_u16(vshlq_u16(v358.val[1], v96)));
            v117 = vmulq_n_f16(v116, v350);
            v118 = vmlaq_n_f16(vmulq_n_f16(v358.val[0], v352), v116, v351);
            v105 = vmulq_n_f16(v358.val[0], v353);
          }

          else
          {
            v118 = 0uLL;
            v117 = 0uLL;
          }

          v119 = *v102++;
          v120 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v119, v96)), v56);
          v121.i64[0] = 0x9000900090009000;
          v121.i64[1] = 0x9000900090009000;
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v121));
          v123.i16[0] = *(v52 + 2 * v122.u16[0]);
          v123.i16[1] = *(v52 + 2 * v122.u16[1]);
          v123.i16[2] = *(v52 + 2 * v122.u16[2]);
          v123.i16[3] = *(v52 + 2 * v122.u16[3]);
          v123.i16[4] = *(v52 + 2 * v122.u16[4]);
          v123.i16[5] = *(v52 + 2 * v122.u16[5]);
          v123.i16[6] = *(v52 + 2 * v122.u16[6]);
          v123.i16[7] = *(v52 + 2 * v122.u16[7]);
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v121));
          v125.i16[0] = *(v52 + 2 * v124.u16[0]);
          v125.i16[1] = *(v52 + 2 * v124.u16[1]);
          v125.i16[2] = *(v52 + 2 * v124.u16[2]);
          v125.i16[3] = *(v52 + 2 * v124.u16[3]);
          v125.i16[4] = *(v52 + 2 * v124.u16[4]);
          v125.i16[5] = *(v52 + 2 * v124.u16[5]);
          v125.i16[6] = *(v52 + 2 * v124.u16[6]);
          v125.i16[7] = *(v52 + 2 * v124.u16[7]);
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v121));
          v127.i16[0] = *(v52 + 2 * v126.u16[0]);
          v127.i16[1] = *(v52 + 2 * v126.u16[1]);
          v127.i16[2] = *(v52 + 2 * v126.u16[2]);
          v127.i16[3] = *(v52 + 2 * v126.u16[3]);
          v127.i16[4] = *(v52 + 2 * v126.u16[4]);
          v127.i16[5] = *(v52 + 2 * v126.u16[5]);
          v127.i16[6] = *(v52 + 2 * v126.u16[6]);
          v127.i16[7] = *(v52 + 2 * v126.u16[7]);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v117, v120, _H11), 0), v121));
          v129.i16[0] = *(v52 + 2 * v128.u16[0]);
          v129.i16[1] = *(v52 + 2 * v128.u16[1]);
          v129.i16[2] = *(v52 + 2 * v128.u16[2]);
          v129.i16[3] = *(v52 + 2 * v128.u16[3]);
          v129.i16[4] = *(v52 + 2 * v128.u16[4]);
          v129.i16[5] = *(v52 + 2 * v128.u16[5]);
          v129.i16[6] = *(v52 + 2 * v128.u16[6]);
          v129.i16[7] = *(v52 + 2 * v128.u16[7]);
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v118, v120, _H11), 0), v121));
          v131.i16[0] = *(v52 + 2 * v130.u16[0]);
          v131.i16[1] = *(v52 + 2 * v130.u16[1]);
          v131.i16[2] = *(v52 + 2 * v130.u16[2]);
          v131.i16[3] = *(v52 + 2 * v130.u16[3]);
          v131.i16[4] = *(v52 + 2 * v130.u16[4]);
          v131.i16[5] = *(v52 + 2 * v130.u16[5]);
          v131.i16[6] = *(v52 + 2 * v130.u16[6]);
          v131.i16[7] = *(v52 + 2 * v130.u16[7]);
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v120, _H11), 0), v121));
          v133.i16[0] = *(v52 + 2 * v132.u16[0]);
          v133.i16[1] = *(v52 + 2 * v132.u16[1]);
          v133.i16[2] = *(v52 + 2 * v132.u16[2]);
          v133.i16[3] = *(v52 + 2 * v132.u16[3]);
          v133.i16[4] = *(v52 + 2 * v132.u16[4]);
          v133.i16[5] = *(v52 + 2 * v132.u16[5]);
          v133.i16[6] = *(v52 + 2 * v132.u16[6]);
          v133.i16[7] = *(v52 + 2 * v132.u16[7]);
          v134 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v123, v317), v125, v316), v127, v315);
          v135 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v123, v314), v125, v313), v127, v312);
          v136 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v127, v309), v125, v310), v123, v311);
          v137 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v129, v317), v131, v316), v133, v315);
          v138 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v129, v314), v131, v313), v133, v312);
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v134, 0), v121));
          v10.i16[0] = *(v70 + 2 * v139.u16[0]);
          v10.i16[1] = *(v70 + 2 * v139.u16[1]);
          v10.i16[2] = *(v70 + 2 * v139.u16[2]);
          v10.i16[3] = *(v70 + 2 * v139.u16[3]);
          v10.i16[4] = *(v70 + 2 * v139.u16[4]);
          v10.i16[5] = *(v70 + 2 * v139.u16[5]);
          v10.i16[6] = *(v70 + 2 * v139.u16[6]);
          v140 = (v70 + 2 * v139.u16[7]);
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v135, 0), v121));
          v135.i16[0] = *(v70 + 2 * v141.u16[0]);
          v135.i16[1] = *(v70 + 2 * v141.u16[1]);
          v135.i16[2] = *(v70 + 2 * v141.u16[2]);
          v135.i16[3] = *(v70 + 2 * v141.u16[3]);
          v135.i16[4] = *(v70 + 2 * v141.u16[4]);
          v135.i16[5] = *(v70 + 2 * v141.u16[5]);
          v135.i16[6] = *(v70 + 2 * v141.u16[6]);
          v142 = vuzp1q_s16(v10, v135);
          v10.i16[7] = *v140;
          v135.i16[7] = *(v70 + 2 * v141.u16[7]);
          v96 = v356;
          v143 = vminq_f16(vmaxq_f16(v136, 0), v121);
          v144 = vcvtq_u16_f16(v143);
          v145 = vmlaq_n_f16(vmulq_n_f16(v133, v309), v131, v310);
          v143.i16[0] = *(v70 + 2 * v144.u16[0]);
          v143.i16[1] = *(v70 + 2 * v144.u16[1]);
          v143.i16[2] = *(v70 + 2 * v144.u16[2]);
          v143.i16[3] = *(v70 + 2 * v144.u16[3]);
          v143.i16[4] = *(v70 + 2 * v144.u16[4]);
          v143.i16[5] = *(v70 + 2 * v144.u16[5]);
          v143.i16[6] = *(v70 + 2 * v144.u16[6]);
          v146 = v143;
          v146.i16[7] = *(v70 + 2 * v144.u16[7]);
          v147 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v137, 0), v121));
          v137.i16[0] = *(v70 + 2 * v147.u16[0]);
          v137.i16[1] = *(v70 + 2 * v147.u16[1]);
          v137.i16[2] = *(v70 + 2 * v147.u16[2]);
          v137.i16[3] = *(v70 + 2 * v147.u16[3]);
          v137.i16[4] = *(v70 + 2 * v147.u16[4]);
          v137.i16[5] = *(v70 + 2 * v147.u16[5]);
          v137.i16[6] = *(v70 + 2 * v147.u16[6]);
          v148 = (v70 + 2 * v147.u16[7]);
          v149 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v138, 0), v121));
          v138.i16[0] = *(v70 + 2 * v149.u16[0]);
          v138.i16[1] = *(v70 + 2 * v149.u16[1]);
          v138.i16[2] = *(v70 + 2 * v149.u16[2]);
          v138.i16[3] = *(v70 + 2 * v149.u16[3]);
          v138.i16[4] = *(v70 + 2 * v149.u16[4]);
          v138.i16[5] = *(v70 + 2 * v149.u16[5]);
          v138.i16[6] = *(v70 + 2 * v149.u16[6]);
          v150 = vuzp1q_s16(v137, v138);
          v137.i16[7] = *v148;
          v138.i16[7] = *(v70 + 2 * v149.u16[7]);
          v151 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v145, v129, v311), 0), v121));
          v149.i16[0] = *(v70 + 2 * v151.u16[0]);
          a1 = (v70 + 2 * v151.u16[4]);
          v149.i16[1] = *(v70 + 2 * v151.u16[1]);
          v149.i16[2] = *(v70 + 2 * v151.u16[2]);
          v149.i16[3] = *(v70 + 2 * v151.u16[3]);
          v149.i16[4] = *a1;
          v149.i16[5] = *(v70 + 2 * v151.u16[5]);
          v149.i16[6] = *(v70 + 2 * v151.u16[6]);
          v152 = (v70 + 2 * v151.u16[7]);
          v153 = v149;
          v153.i16[7] = *v152;
          *v74++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v337, v10, v320), v135, v319), v146, v318), v337), v335)));
          *v104++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v337, v137, v320), v138, v319), v153, v318), v337), v335)));
          v154 = vaddq_f16(vaddq_f16(vaddq_f16(v142, vuzp2q_s16(v10, v135)), v150), vuzp2q_s16(v137, v138));
          *&v73[v101] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v336, v341, vzip1q_s16(v154, v154)), v340, vzip2q_s16(v154, v154)), v338, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v143, v143), vtrn2q_s16(v146, v146)), vtrn1q_s16(v149, v149)), vtrn2q_s16(v153, v153))), v334), v333)));
          v101 += 8;
          _S5 = v305;
          v48 = v306;
        }

        while (v101 < v25);
        v155 = &v73[v101];
        v156 = v303 & 0xFFFFFFF8;
      }

      for (; v156 < v53; v96 = v356)
      {
        if (v77)
        {
          v157 = (*v77 >> v72) - v42;
          v158 = (*(v77 + 1) >> v72) - v42;
          v77 += 2;
          v159 = _S17 * v158;
          v160 = (_S30 * v158) + (v157 * _S31);
          v161 = _S5 * v157;
        }

        else
        {
          v161 = 0.0;
          v160 = 0.0;
          v159 = 0.0;
        }

        v162 = _S29 * ((v78->u16[0] >> v72) - v39);
        v163 = v159 + v162;
        v164 = 8191.0;
        if (v163 <= 8191.0)
        {
          v164 = v163;
          if (v163 < 0.0)
          {
            v164 = 0.0;
          }
        }

        v165 = v160 + v162;
        v166 = 8191.0;
        if (v165 <= 8191.0)
        {
          v166 = v165;
          if (v165 < 0.0)
          {
            v166 = 0.0;
          }
        }

        v167 = v161 + v162;
        v168 = 8191.0;
        if (v167 <= 8191.0)
        {
          v168 = v167;
          if (v167 < 0.0)
          {
            v168 = 0.0;
          }
        }

        if (v77)
        {
          v169 = (*v77 >> v72) - v42;
          v170 = (*(v77 + 1) >> v72) - v42;
          v77 += 2;
          v171 = _S17 * v170;
          v172 = (_S30 * v170) + (v169 * _S31);
          v173 = _S5 * v169;
        }

        else
        {
          v173 = 0.0;
          v172 = 0.0;
          v171 = 0.0;
        }

        v174 = _S29 * ((v78->u16[1] >> v72) - v39);
        v175 = v171 + v174;
        v176 = 8191.0;
        v177 = 8191.0;
        if (v175 <= 8191.0)
        {
          v177 = v175;
          if (v175 < 0.0)
          {
            v177 = 0.0;
          }
        }

        v178 = v172 + v174;
        v179 = 8191.0;
        if (v178 <= 8191.0)
        {
          v179 = v178;
          if (v178 < 0.0)
          {
            v179 = 0.0;
          }
        }

        v180 = v173 + v174;
        if (v180 <= 8191.0)
        {
          v176 = v180;
          if (v180 < 0.0)
          {
            v176 = 0.0;
          }
        }

        if (v103)
        {
          v181 = (*v103 >> v72) - v42;
          v182 = (*(v103 + 1) >> v72) - v42;
          v103 += 2;
          v183 = _S17 * v182;
          v184 = (_S30 * v182) + (v181 * _S31);
          v185 = _S5 * v181;
        }

        else
        {
          v185 = 0.0;
          v184 = 0.0;
          v183 = 0.0;
        }

        v186 = _S29 * ((v102->u16[0] >> v72) - v39);
        v187 = v183 + v186;
        v188 = 8191.0;
        v189 = 8191.0;
        if (v187 <= 8191.0)
        {
          v189 = v187;
          if (v187 < 0.0)
          {
            v189 = 0.0;
          }
        }

        v190 = v184 + v186;
        v191 = (v184 + v186) <= 8191.0;
        v192 = 8191.0;
        if (v191)
        {
          v192 = v190;
          if (v190 < 0.0)
          {
            v192 = 0.0;
          }
        }

        v193 = v185 + v186;
        if (v193 <= 8191.0)
        {
          v188 = v193;
          if (v193 < 0.0)
          {
            v188 = 0.0;
          }
        }

        if (v103)
        {
          v194 = (*v103 >> v72) - v42;
          v195 = (*(v103 + 1) >> v72) - v42;
          v103 += 2;
          v196 = _S17 * v195;
          v197 = (_S30 * v195) + (v194 * _S31);
          v198 = _S5 * v194;
        }

        else
        {
          v198 = 0.0;
          v197 = 0.0;
          v196 = 0.0;
        }

        v199 = _S29 * ((v102->u16[1] >> v72) - v39);
        v200 = v196 + v199;
        v201 = 8191.0;
        if (v200 <= 8191.0)
        {
          v201 = v200;
          if (v200 < 0.0)
          {
            v201 = 0.0;
          }
        }

        v202 = v197 + v199;
        v191 = (v197 + v199) <= 8191.0;
        v203 = 8191.0;
        if (v191)
        {
          v203 = v202;
          if (v202 < 0.0)
          {
            v203 = 0.0;
          }
        }

        v204 = v48;
        v205 = _S29;
        v206 = v198 + v199;
        v191 = (v198 + v199) <= 8191.0;
        v207 = 8191.0;
        if (v191)
        {
          v207 = v206;
          if (v206 < 0.0)
          {
            v207 = 0.0;
          }
        }

        _H4 = *(v52 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H7 = *(v52 + 2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0)));
        __asm { FCVT            S7, H7 }

        _H16 = *(v52 + 2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0)));
        __asm { FCVT            S16, H16 }

        _H1 = *(v52 + 2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0)));
        __asm { FCVT            S1, H1 }

        _H21 = *(v52 + 2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0)));
        _H0 = *(v52 + 2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0)));
        __asm
        {
          FCVT            S21, H21
          FCVT            S0, H0
        }

        _H23 = *(v52 + 2 * llroundf(fminf(fmaxf(v189, 0.0), 8191.0)));
        v221 = llroundf(fminf(fmaxf(v192, 0.0), 8191.0));
        __asm { FCVT            S3, H23 }

        _H23 = *(v52 + 2 * v221);
        __asm { FCVT            S23, H23 }

        _H24 = *(v52 + 2 * llroundf(fminf(fmaxf(v188, 0.0), 8191.0)));
        __asm { FCVT            S24, H24 }

        _H25 = *(v52 + 2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0)));
        __asm { FCVT            S25, H25 }

        _H6 = *(v52 + 2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0)));
        __asm { FCVT            S6, H6 }

        v231 = llroundf(fminf(fmaxf(v207, 0.0), 8191.0));
        _S22 = ((v344 * _S7) + (_S4 * v345)) + (_S16 * v332);
        v233 = ((v330 * _S7) + (_S4 * v331)) + (_S16 * v328);
        _S4 = ((v325 * _S7) + (_S4 * v327)) + (_S16 * v322);
        v235 = ((v344 * _S21) + (_S1 * v345)) + (_S0 * v332);
        v236 = ((v330 * _S21) + (_S1 * v331)) + (_S0 * v328);
        v237 = ((v325 * _S21) + (_S1 * v327)) + (_S0 * v322);
        v238 = ((v344 * _S23) + (_S3 * v345)) + (_S24 * v332);
        v239 = ((v330 * _S23) + (_S3 * v331)) + (_S24 * v328);
        _S23 = ((v325 * _S23) + (_S3 * v327)) + (_S24 * v322);
        _S0 = (v344 * _S6) + (_S25 * v345);
        _S1 = (v330 * _S6) + (_S25 * v331);
        v243 = (v325 * _S6) + (_S25 * v327);
        LOWORD(_S6) = *(v52 + 2 * v231);
        __asm { FCVT            S6, H6 }

        _S25 = _S0 + (_S6 * v332);
        v246 = _S1 + (_S6 * v328);
        v247 = v243 + (_S6 * v322);
        LOWORD(_S0) = *(v70 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
        __asm { FCVT            S3, H0 }

        LOWORD(_S0) = *(v70 + 2 * llroundf(fminf(fmaxf(v233, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        LOWORD(_S1) = *(v70 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
        __asm { FCVT            S1, H1 }

        LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(v235, 0.0), 8191.0)));
        __asm { FCVT            S7, H4 }

        LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(v236, 0.0), 8191.0)));
        LOWORD(_S6) = *(v70 + 2 * llroundf(fminf(fmaxf(v237, 0.0), 8191.0)));
        __asm
        {
          FCVT            S21, H4
          FCVT            S16, H6
        }

        LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(v238, 0.0), 8191.0)));
        __asm { FCVT            S6, H4 }

        LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(v239, 0.0), 8191.0)));
        __asm { FCVT            S24, H4 }

        LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        LOWORD(_S22) = *(v70 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
        __asm { FCVT            S22, H22 }

        LOWORD(_S23) = *(v70 + 2 * llroundf(fminf(fmaxf(v246, 0.0), 8191.0)));
        LOWORD(_S25) = *(v70 + 2 * llroundf(fminf(fmaxf(v247, 0.0), 8191.0)));
        __asm
        {
          FCVT            S23, H23
          FCVT            S27, H25
        }

        v260 = (((v348 * _S0) + (v349 * _S3)) + (v347 * _S1)) + v321;
        if (v260 < v321)
        {
          v261 = v321;
        }

        else
        {
          v261 = (((v348 * _S0) + (v349 * _S3)) + (v347 * _S1)) + v321;
        }

        v191 = v260 <= v329;
        v262 = (((v348 * _S21) + (v349 * _S7)) + (v347 * _S16)) + v321;
        if (!v191)
        {
          v261 = v329;
        }

        v263 = llroundf(v261);
        if (v262 < v321)
        {
          v264 = v321;
        }

        else
        {
          v264 = (((v348 * _S21) + (v349 * _S7)) + (v347 * _S16)) + v321;
        }

        v191 = v262 <= v329;
        v265 = (((v348 * _S24) + (v349 * _S6)) + (v347 * _S4)) + v321;
        if (!v191)
        {
          v264 = v329;
        }

        v266 = llroundf(v264);
        if (v265 < v321)
        {
          v267 = v321;
        }

        else
        {
          v267 = (((v348 * _S24) + (v349 * _S6)) + (v347 * _S4)) + v321;
        }

        v191 = v265 <= v329;
        v268 = (((v348 * _S23) + (v349 * _S22)) + (v347 * _S27)) + v321;
        if (!v191)
        {
          v267 = v329;
        }

        v269 = llroundf(v267);
        if (v268 < v321)
        {
          v270 = v321;
        }

        else
        {
          v270 = (((v348 * _S23) + (v349 * _S22)) + (v347 * _S27)) + v321;
        }

        if (v268 <= v329)
        {
          v271 = v270;
        }

        else
        {
          v271 = v329;
        }

        LODWORD(a1) = llroundf(v271);
        v272 = ((_S3 + _S7) + _S6) + _S22;
        v273 = ((_S0 + _S21) + _S24) + _S23;
        v74->i8[0] = v263;
        v74->i8[1] = v266;
        v104->i8[0] = v269;
        v104->i8[1] = a1;
        v48 = v204;
        v274 = ((_S1 + _S16) + _S4) + _S27;
        v275 = ((v204 + (v272 * v342)) + (v273 * *&v97)) + (v274 * v339);
        v276 = v55;
        if (v275 <= v55)
        {
          v276 = ((v204 + (v272 * v342)) + (v273 * *&v97)) + (v274 * v339);
          if (v275 < v355)
          {
            v276 = v355;
          }
        }

        v277 = ((v204 + (v272 * v308)) + (v273 * *(&v97 + 1))) + (v274 * v307);
        *v155 = llroundf(v276);
        v278 = v55;
        v39 = v323;
        _S29 = v205;
        if (v277 <= v55)
        {
          v278 = v277;
          if (v277 < v355)
          {
            v278 = v355;
          }
        }

        v156 += 2;
        v78 = (v78 + 4);
        v102 = (v102 + 4);
        v155[1] = llroundf(v278);
        v74 = (v74 + 2);
        v104 = (v104 + 2);
        v155 += 2;
        _S17 = v346;
        _S31 = v324;
        _S30 = v326;
        v56 = v343;
      }

      v78 = &v98[v26];
      v77 = &v99[v27];
      v74 = &v100[v28];
      v14 = v303;
      v73 += v302;
      v23 += 2;
    }

    while (v23 < v304);
  }

  if (v298 && v297)
  {
    if (v304 >= 1)
    {
      v279 = 0;
      v280 = v298 + v294 * v295 + 2 * v296;
      do
      {
        if (v14 >= 1)
        {
          v281 = v14;
          v282 = v22;
          v283 = v280;
          do
          {
            v284 = *v283++;
            *v282++ = llroundf(v284 * 0.0038911);
            --v281;
          }

          while (v281);
        }

        v280 += v294;
        v22 += v299;
        ++v279;
      }

      while (v304 > v279);
    }
  }

  else if (v297 && v304 >= 1)
  {
    v285 = 0;
    v286 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v287 = 0;
        do
        {
          v288 = vdupq_n_s64(v287);
          v289 = vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v289, *v286.i8), *v286.i8).u8[0])
          {
            v22[v287] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v289, *&v286), *&v286).i8[1])
          {
            v22[v287 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v286, vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDDA0)))), *&v286).i8[2])
          {
            v22[v287 + 2] = -1;
            v22[v287 + 3] = -1;
          }

          v290 = vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v286, vuzp1_s16(v290, *&v286)).i32[1])
          {
            v22[v287 + 4] = -1;
          }

          if (vuzp1_s8(*&v286, vuzp1_s16(v290, *&v286)).i8[5])
          {
            v22[v287 + 5] = -1;
          }

          if (vuzp1_s8(*&v286, vuzp1_s16(*&v286, vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD80))))).i8[6])
          {
            v22[v287 + 6] = -1;
            v22[v287 + 7] = -1;
          }

          v291 = vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v291, *v286.i8), *v286.i8).u8[0])
          {
            v22[v287 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v291, *&v286), *&v286).i8[1])
          {
            v22[v287 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v286, vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD60)))), *&v286).i8[2])
          {
            v22[v287 + 10] = -1;
            v22[v287 + 11] = -1;
          }

          v292 = vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v286, vuzp1_s16(v292, *&v286)).i32[1])
          {
            v22[v287 + 12] = -1;
          }

          if (vuzp1_s8(*&v286, vuzp1_s16(v292, *&v286)).i8[5])
          {
            v22[v287 + 13] = -1;
          }

          if (vuzp1_s8(*&v286, vuzp1_s16(*&v286, vmovn_s64(vcgeq_u64(v286, vorrq_s8(v288, xmmword_18FECDD40))))).i8[6])
          {
            v22[v287 + 14] = -1;
            v22[v287 + 15] = -1;
          }

          v287 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v287);
      }

      v22 += v299;
      ++v285;
    }

    while (v304 > v285);
  }

  *&v301[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_420vf_GCD(void *a1, uint64_t a2, double a3, float a4, float a5)
{
  v5 = 2 * *a1;
  v194 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v5);
  v195 = *(a1 + 36);
  v6 = a1[14];
  v7 = a1[12];
  v8 = a1[13];
  v9 = v8 * a2 / v5;
  v10 = a1[15] + 2 * v9;
  v11 = 2 * ((v8 + v8 * a2) / v5 - v9);
  v12 = a1[7];
  v13 = a1[8];
  v15 = a1[16];
  v14 = a1[17];
  v193 = v13[2];
  result = v14[2];
  v196 = v15[2];
  v197 = v12[2];
  v17 = (v196 + result * v10 + v6);
  if (v11 >= 1)
  {
    v18 = 0;
    v19 = a1[19];
    v20 = v7 & 0xFFFFFFFE;
    v21 = *v13;
    v22 = v13[1];
    v23 = *v14;
    v24 = v14[1];
    LOWORD(a4) = *(v19 + 140);
    LOWORD(a5) = *(v19 + 142);
    *&v25 = 8191.0 / *(v19 + 128);
    v26 = LODWORD(a4);
    v27 = LODWORD(a5);
    v28 = *&v25 * *v19;
    v29 = *&v25 * *(v19 + 8);
    v30 = *&v25 * *(v19 + 16);
    v31 = *&v25 * *(v19 + 20);
    v32 = *&v25 * *(v19 + 28);
    LOWORD(v25) = *(v19 + 144);
    v33 = v25;
    LOWORD(v25) = *(v19 + 146);
    v34 = v25;
    LOWORD(v25) = *(v19 + 148);
    v35 = v25;
    LOWORD(v25) = *(v19 + 150);
    v36 = v25;
    v225 = v36;
    LOWORD(v36) = *(v19 + 152);
    v222 = *(v19 + 36);
    v223 = v34;
    v220 = *(v19 + 44);
    v221 = *(v19 + 40);
    v218 = *(v19 + 52) * 0.25;
    v219 = *(v19 + 48) * 0.25;
    v216 = *(v19 + 60) * 0.25;
    v217 = *(v19 + 56) * 0.25;
    v214 = *(v19 + 72);
    v215 = *(v19 + 64) * 0.25;
    v212 = *(v19 + 76);
    v213 = *(v19 + 68) * 0.25;
    v210 = *(v19 + 84);
    v211 = *(v19 + 80);
    v209 = *(v19 + 88);
    v207 = *(v19 + 92);
    v205 = *(v19 + 96);
    v203 = *(v19 + 100);
    v201 = *(v19 + 104);
    v37 = v19 + 164;
    v38 = v19 + 16548;
    v40 = *v12;
    v39 = v12[1];
    v41 = (v39 + v22 * v194 + 2 * v195);
    if (!v39)
    {
      v41 = 0;
    }

    v42 = *(v19 + 124);
    v43 = v15[1];
    v44 = (*v15 + v23 * v10 + v6);
    v45 = (v40 + v21 * v194 + 2 * v195);
    if (v42 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v42;
    }

    v47 = v43 + v24 * (v10 / 2) + v6;
    v48 = v46;
    v224 = v29;
    v208 = LODWORD(v36);
    v206 = v26;
    v204 = v27;
    v202 = v32;
    v200 = v31;
    do
    {
      v49 = &v45[v21];
      v50 = &v41[v22];
      v51 = &v44[v23];
      if (v20 >= 1)
      {
        v52 = 0;
        v53 = &v45[v21];
        v54 = &v41[v22];
        v55 = &v44[v23];
        do
        {
          if (v41)
          {
            v56 = (*v41 >> v48) - v27;
            v57 = (*(v41 + 1) >> v48) - v27;
            v41 += 4;
            v58 = v29 * v57;
            v59 = (v31 * v57) + (v56 * v30);
            v60 = v32 * v56;
          }

          else
          {
            v60 = 0.0;
            v59 = 0.0;
            v58 = 0.0;
          }

          v61 = v28 * ((*v45 >> v48) - v26);
          v62 = v58 + v61;
          v63 = (v58 + v61) <= 8191.0;
          v64 = 8191.0;
          if (v63)
          {
            v64 = v62;
            if (v62 < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v59 + v61;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = v65;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v60 + v61;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          if (v41)
          {
            v69 = (*v41 >> v48) - v27;
            v70 = (*(v41 + 1) >> v48) - v27;
            v41 += 4;
            v71 = v29 * v70;
            v72 = (v31 * v70) + (v69 * v30);
            v73 = v32 * v69;
          }

          else
          {
            v73 = 0.0;
            v72 = 0.0;
            v71 = 0.0;
          }

          v74 = v28 * ((*(v45 + 1) >> v48) - v26);
          v75 = v71 + v74;
          v76 = 8191.0;
          v77 = 8191.0;
          if (v75 <= 8191.0)
          {
            v77 = v75;
            if (v75 < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = 8191.0;
          if ((v72 + v74) <= 8191.0)
          {
            v78 = v72 + v74;
            if ((v72 + v74) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v73 + v74;
          if (v79 <= 8191.0)
          {
            v76 = v79;
            if (v79 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v54)
          {
            v80 = (*v54 >> v48) - v27;
            v81 = (*(v54 + 1) >> v48) - v27;
            v54 += 4;
            v82 = v29 * v81;
            v83 = (v31 * v81) + (v80 * v30);
            v84 = v32 * v80;
          }

          else
          {
            v84 = 0.0;
            v83 = 0.0;
            v82 = 0.0;
          }

          v85 = v28 * ((*v53 >> v48) - v26);
          v86 = v82 + v85;
          v87 = 8191.0;
          v88 = 8191.0;
          if (v86 <= 8191.0)
          {
            v88 = v86;
            if (v86 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v83 + v85;
          v63 = (v83 + v85) <= 8191.0;
          v90 = 8191.0;
          if (v63)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v84 + v85;
          if (v91 <= 8191.0)
          {
            v87 = v91;
            if (v91 < 0.0)
            {
              v87 = 0.0;
            }
          }

          if (v54)
          {
            v92 = (*v54 >> v48) - v27;
            v93 = (*(v54 + 1) >> v48) - v27;
            v54 += 4;
            v94 = v29 * v93;
            v95 = (v31 * v93) + (v92 * v30);
            v96 = v32 * v92;
          }

          else
          {
            v96 = 0.0;
            v95 = 0.0;
            v94 = 0.0;
          }

          v97 = v28 * ((*(v53 + 1) >> v48) - v26);
          v98 = v94 + v97;
          v99 = 8191.0;
          if (v98 <= 8191.0)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = v95 + v97;
          v63 = (v95 + v97) <= 8191.0;
          v101 = 8191.0;
          if (v63)
          {
            v101 = v100;
            if (v100 < 0.0)
            {
              v101 = 0.0;
            }
          }

          v102 = v96 + v97;
          v103 = 8191.0;
          if (v102 <= 8191.0)
          {
            v103 = v102;
            if (v102 < 0.0)
            {
              v103 = 0.0;
            }
          }

          _H0 = *(v37 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H3 = *(v37 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H6 = *(v37 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H24 = *(v37 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H25 = *(v37 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm
          {
            FCVT            S25, H25
            FCVT            S27, H27
          }

          _H4 = *(v37 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H17 = *(v37 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H21 = *(v37 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H7 = *(v37 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          v130 = llroundf(fminf(fmaxf(v103, 0.0), 8191.0));
          _S1 = ((v212 * _S3) + (_S0 * v214)) + (_S6 * v211);
          v132 = ((v209 * _S3) + (_S0 * v210)) + (_S6 * v207);
          _S3 = ((v203 * _S3) + (_S0 * v205)) + (_S6 * v201);
          v134 = ((v212 * _S25) + (_S24 * v214)) + (_S27 * v211);
          v135 = ((v209 * _S25) + (_S24 * v210)) + (_S27 * v207);
          v136 = ((v203 * _S25) + (_S24 * v205)) + (_S27 * v201);
          v137 = ((v212 * _S5) + (_S4 * v214)) + (_S17 * v211);
          v138 = ((v209 * _S5) + (_S4 * v210)) + (_S17 * v207);
          v139 = ((v203 * _S5) + (_S4 * v205)) + (_S17 * v201);
          _S0 = (v212 * _S7) + (_S21 * v214);
          v141 = (v209 * _S7) + (_S21 * v210);
          v142 = (v203 * _S7) + (_S21 * v205);
          LOWORD(_S7) = *(v37 + 2 * v130);
          __asm { FCVT            S7, H7 }

          v144 = _S0 + (_S7 * v211);
          v145 = v141 + (_S7 * v207);
          v146 = v142 + (_S7 * v201);
          LOWORD(_S0) = *(v38 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S5, H0 }

          LOWORD(_S0) = *(v38 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          LOWORD(_S3) = *(v38 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          __asm
          {
            FCVT            S25, H1
            FCVT            S24, H3
          }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          __asm { FCVT            S7, H1 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S27, H1 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          __asm { FCVT            S6, H1 }

          LOWORD(_S1) = *(v38 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S3) = *(v38 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          _H19 = *(v38 + 2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S19, H19
          }

          v160 = (((v221 * _S0) + (v222 * _S5)) + (v220 * _S4)) + v33;
          if (v160 < v33)
          {
            v161 = v33;
          }

          else
          {
            v161 = (((v221 * _S0) + (v222 * _S5)) + (v220 * _S4)) + v33;
          }

          v63 = v160 <= v35;
          v162 = (((v221 * _S25) + (v222 * _S17)) + (v220 * _S24)) + v33;
          if (!v63)
          {
            v161 = v35;
          }

          v163 = llroundf(v161);
          if (v162 < v33)
          {
            v164 = v33;
          }

          else
          {
            v164 = (((v221 * _S25) + (v222 * _S17)) + (v220 * _S24)) + v33;
          }

          v63 = v162 <= v35;
          v165 = (((v221 * _S27) + (v222 * _S7)) + (v220 * _S6)) + v33;
          if (!v63)
          {
            v164 = v35;
          }

          v166 = llroundf(v164);
          if (v165 < v33)
          {
            v167 = v33;
          }

          else
          {
            v167 = (((v221 * _S27) + (v222 * _S7)) + (v220 * _S6)) + v33;
          }

          v63 = v165 <= v35;
          v168 = (((v221 * _S3) + (v222 * _S1)) + (v220 * _S19)) + v33;
          if (!v63)
          {
            v167 = v35;
          }

          v169 = llroundf(v167);
          if (v168 < v33)
          {
            v170 = v33;
          }

          else
          {
            v170 = (((v221 * _S3) + (v222 * _S1)) + (v220 * _S19)) + v33;
          }

          if (v168 <= v35)
          {
            v171 = v170;
          }

          else
          {
            v171 = v35;
          }

          v172 = ((_S5 + _S17) + _S7) + _S1;
          v173 = ((_S0 + _S25) + _S27) + _S3;
          *v44 = v163;
          v44[1] = v166;
          *v55 = v169;
          v55[1] = llroundf(v171);
          v174 = ((_S4 + _S24) + _S6) + _S19;
          v175 = ((v223 + (v172 * v219)) + (v173 * v218)) + (v174 * v217);
          v176 = v208;
          if (v175 <= v208)
          {
            v176 = ((v223 + (v172 * v219)) + (v173 * v218)) + (v174 * v217);
            if (v175 < v225)
            {
              v176 = v225;
            }
          }

          v177 = ((v223 + (v172 * v216)) + (v173 * v215)) + (v174 * v213);
          *(v47 + v52) = llroundf(v176);
          v178 = v208;
          v26 = v206;
          v29 = v224;
          v31 = v200;
          v32 = v202;
          v27 = v204;
          if (v177 <= v208)
          {
            v178 = v177;
            if (v177 < v225)
            {
              v178 = v225;
            }
          }

          v45 += 4;
          v53 += 4;
          v44 += 2;
          v55 += 2;
          *(v47 + v52 + 1) = llroundf(v178);
          v52 += 2;
        }

        while (v52 < v20);
      }

      v45 = &v49[v21];
      v41 = &v50[v22];
      v44 = &v51[v23];
      v47 += v24;
      v18 += 2;
    }

    while (v18 < v11);
  }

  if (v197 && v196)
  {
    if (v11 >= 1)
    {
      v179 = 0;
      v180 = v197 + v193 * v194 + 2 * v195;
      do
      {
        if (v7 >= 1)
        {
          v181 = v7;
          v182 = v17;
          v183 = v180;
          do
          {
            v184 = *v183++;
            *v182++ = llroundf(v184 * 0.0038911);
            --v181;
          }

          while (v181);
        }

        v180 += v193;
        v17 += result;
        ++v179;
      }

      while (v11 > v179);
    }
  }

  else if (v196 && v11 >= 1)
  {
    v185 = 0;
    v186 = vdupq_n_s64(v7 - 1);
    do
    {
      if (v7 >= 1)
      {
        v187 = 0;
        do
        {
          v188 = vdupq_n_s64(v187);
          v189 = vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v189, *v186.i8), *v186.i8).u8[0])
          {
            v17[v187] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v189, *&v186), *&v186).i8[1])
          {
            v17[v187 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDDA0)))), *&v186).i8[2])
          {
            v17[v187 + 2] = -1;
            v17[v187 + 3] = -1;
          }

          v190 = vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v186, vuzp1_s16(v190, *&v186)).i32[1])
          {
            v17[v187 + 4] = -1;
          }

          if (vuzp1_s8(*&v186, vuzp1_s16(v190, *&v186)).i8[5])
          {
            v17[v187 + 5] = -1;
          }

          if (vuzp1_s8(*&v186, vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD80))))).i8[6])
          {
            v17[v187 + 6] = -1;
            v17[v187 + 7] = -1;
          }

          v191 = vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v191, *v186.i8), *v186.i8).u8[0])
          {
            v17[v187 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v191, *&v186), *&v186).i8[1])
          {
            v17[v187 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD60)))), *&v186).i8[2])
          {
            v17[v187 + 10] = -1;
            v17[v187 + 11] = -1;
          }

          v192 = vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v186, vuzp1_s16(v192, *&v186)).i32[1])
          {
            v17[v187 + 12] = -1;
          }

          if (vuzp1_s8(*&v186, vuzp1_s16(v192, *&v186)).i8[5])
          {
            v17[v187 + 13] = -1;
          }

          if (vuzp1_s8(*&v186, vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, vorrq_s8(v188, xmmword_18FECDD40))))).i8[6])
          {
            v17[v187 + 14] = -1;
            v17[v187 + 15] = -1;
          }

          v187 += 16;
        }

        while (((v7 + 15) & 0xFFFFFFFFFFFFFFF0) != v187);
      }

      v17 += result;
      ++v185;
    }

    while (v11 > v185);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_rgb_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

void *vt_Copy_xf444_rgb_420vf_neon_fp16_GCD(void *result, uint64_t a2)
{
  v4 = 2 * *result;
  v177 = *(result + 44) + 2 * (*(result + 28) * a2 / v4);
  v178 = *(result + 36);
  v5 = result[14];
  v6 = result[12];
  v7 = result[13];
  v8 = v7 * a2 / v4;
  v9 = result[15] + 2 * v8;
  v10 = 2 * ((v7 + v7 * a2) / v4 - v8);
  v12 = result[7];
  v11 = result[8];
  v14 = result[16];
  v13 = result[17];
  v15 = v11[2];
  v179 = v12[2];
  v16 = v13[2];
  v17 = v14[2];
  v18 = (v17 + v16 * v9 + v5);
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = result[19];
    v21 = *v11;
    v22 = v11[1];
    v23 = *v13;
    v24 = v13[1];
    v25 = *(v20 + 140);
    v26 = *(v20 + 142);
    v27 = *(v20 + 144);
    v28 = *(v20 + 146);
    v29 = *(v20 + 148);
    v30 = *(v20 + 150);
    v31 = *(v20 + 152);
    _S0 = *(v20 + 36);
    _S1 = *(v20 + 40);
    _S2 = *(v20 + 44);
    v35.i32[0] = *(v20 + 48);
    v3.i32[0] = *(v20 + 52);
    v36.i32[0] = *(v20 + 56);
    v37 = v25;
    *v2.i16 = v25;
    v38 = v6 & 0xFFFFFFFE;
    v39 = *(v20 + 136) / *(v20 + 128);
    v40 = v26;
    _S5 = v39 * *v20;
    _S6 = v39 * *(v20 + 8);
    _S7 = v39 * *(v20 + 16);
    _S16 = v39 * *(v20 + 20);
    v45 = v27;
    v194 = v28;
    v46 = v29;
    v201 = v30;
    v47 = v31;
    _S22 = v39 * *(v20 + 28);
    __asm { FCVT            H8, S5 }

    _Q20 = vdupq_lane_s16(*v2.f32, 0);
    v193 = _Q20;
    *_Q20.i16 = -v26;
    v54 = vdupq_lane_s16(*_Q20.f32, 0);
    __asm { FCVT            H9, S22 }

    v200 = _H9;
    __asm { FCVT            H9, S7 }

    v199 = _H9;
    v35.i32[1] = *(v20 + 60);
    __asm { FCVT            H9, S16 }

    v198 = _H9;
    __asm { FMOV            V20.2S, #0.25 }

    *v2.f32 = vmul_f32(v35, *_Q20.f32);
    v191 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    v3.i32[1] = *(v20 + 64);
    *v3.f32 = vmul_f32(*v3.f32, *_Q20.f32);
    v190 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v36.i32[1] = *(v20 + 68);
    *_Q20.f32 = vmul_f32(v36, *_Q20.f32);
    v59 = vcvt_f16_f32(_Q20);
    v60 = vdupq_lane_s32(v59, 0);
    *v59.i16 = v27;
    v61 = vdupq_lane_s16(v59, 0);
    *v59.i16 = v28;
    v62 = vdupq_lane_s16(v59, 0);
    v188 = v62;
    v189 = v60;
    *v62.i16 = v29;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v30;
    v64 = vdupq_lane_s16(*v62.i8, 0);
    v186 = v64;
    v187 = v63;
    *v64.i16 = v31;
    v185 = vdupq_lane_s16(*v64.i8, 0);
    v65 = *(v20 + 124);
    if (v65 >= 0x11)
    {
      v66 = 0;
    }

    else
    {
      v66 = 16 - v65;
    }

    v67 = *v14;
    v68 = (v14[1] + v24 * (v9 / 2) + v5);
    v69 = (v67 + v23 * v9 + v5);
    v71 = *v12;
    v70 = *(result[7] + 8);
    if (v70)
    {
      v72 = (v70 + v22 * v177 + 2 * v178);
    }

    else
    {
      v72 = 0;
    }

    v73 = (v71 + v21 * v177 + 2 * v178);
    v74 = v66;
    __asm { FCVT            H9, S6 }

    v197 = _H9;
    __asm { FCVT            H9, S0 }

    v184 = _H9;
    __asm { FCVT            H9, S1 }

    v183 = _H9;
    __asm { FCVT            H9, S2 }

    v182 = _H9;
    v79 = vdupq_n_s16(-v66);
    v192 = v2.f32[0];
    v80 = v3.i64[0];
    v181 = v2.f32[1];
    v81 = _Q20.i64[0];
    v196 = _S6;
    v195 = _S7;
    while (1)
    {
      v82 = &v73->i8[v21];
      v83 = v72 + v22;
      v84 = v69 + v23;
      if (v6 < 8)
      {
        v110 = 0;
        v109 = v68;
        v88 = (v69 + v23);
        v87 = (v72 + v22);
        v86 = (v73 + v21);
      }

      else
      {
        v85 = 0;
        v86 = (v73 + v21);
        v87 = (v72 + v22);
        v88 = (v69 + v23);
        do
        {
          v89 = 0uLL;
          if (v72)
          {
            v203 = vld2q_s16(v72);
            v72 += 16;
            v90 = vaddq_f16(v54, vcvtq_f16_u16(vshlq_u16(v203.val[0], v79)));
            v91 = vaddq_f16(v54, vcvtq_f16_u16(vshlq_u16(v203.val[1], v79)));
            v92 = vmulq_n_f16(v91, v197);
            v93 = vmlaq_n_f16(vmulq_n_f16(v90, v199), v91, v198);
            v94 = vmulq_n_f16(v90, v200);
          }

          else
          {
            v94 = 0uLL;
            v93 = 0uLL;
            v92 = 0uLL;
          }

          v95 = *v73++;
          v96 = v95;
          if (v87)
          {
            v202 = vld2q_s16(v87);
            v87 += 16;
            v202.val[0] = vaddq_f16(v54, vcvtq_f16_u16(vshlq_u16(v202.val[0], v79)));
            v202.val[1] = vaddq_f16(v54, vcvtq_f16_u16(vshlq_u16(v202.val[1], v79)));
            v97 = vmulq_n_f16(v202.val[1], v197);
            v98 = vmlaq_n_f16(vmulq_n_f16(v202.val[0], v199), v202.val[1], v198);
            v89 = vmulq_n_f16(v202.val[0], v200);
          }

          else
          {
            v98 = 0uLL;
            v97 = 0uLL;
          }

          v99 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v96, v79)), v193);
          v100 = vmlaq_n_f16(v92, v99, _H8);
          v101 = vmlaq_n_f16(v93, v99, _H8);
          v102 = vmlaq_n_f16(v94, v99, _H8);
          v103 = *v86++;
          v104 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v103, v79)), v193);
          v105 = vmlaq_n_f16(v97, v104, _H8);
          v106 = vmlaq_n_f16(v98, v104, _H8);
          v107 = vmlaq_n_f16(v89, v104, _H8);
          *v69++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v100, v184), v101, v183), v102, v182), v61), v187)));
          *v88++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v105, v184), v106, v183), v107, v182), v61), v187)));
          v108 = vaddq_f16(vuzp2q_s16(v105, v106), vaddq_f16(vpaddq_f16(v100, v101), vuzp1q_s16(v105, v106)));
          *&v68[v85] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v188, v191, vzip1q_s16(v108, v108)), v190, vzip2q_s16(v108, v108)), v189, vaddq_f16(vtrn2q_s16(v107, v107), vaddq_f16(vaddq_f16(vtrn1q_s16(v102, v102), vtrn2q_s16(v102, v102)), vtrn1q_s16(v107, v107)))), v186), v185)));
          v85 += 8;
        }

        while (v85 < v6 - 7);
        v109 = &v68[v85];
        v110 = v6 & 0xFFFFFFF8;
      }

      if (v110 < v38)
      {
        break;
      }

LABEL_59:
      v73 = &v82[v21];
      v72 = &v83[v22];
      v69 = &v84[v23];
      v68 += v24;
      v19 += 2;
      if (v19 >= v10)
      {
        goto LABEL_60;
      }
    }

    while (1)
    {
      v111 = 0.0;
      if (v72)
      {
        v112 = (*v72 >> v74) - v40;
        v113 = (*(v72 + 1) >> v74) - v40;
        v72 += 2;
        v114 = _S6 * v113;
        v115 = (_S16 * v113) + (v112 * _S7);
        v116 = _S22 * v112;
        if (v72)
        {
          v117 = (*v72 >> v74) - v40;
          v118 = (*(v72 + 1) >> v74) - v40;
          v72 += 2;
          v119 = _S6 * v118;
          v120 = (_S16 * v118) + (v117 * _S7);
          v111 = _S22 * v117;
          goto LABEL_26;
        }
      }

      else
      {
        v116 = 0.0;
        v115 = 0.0;
        v114 = 0.0;
      }

      v120 = 0.0;
      v119 = 0.0;
LABEL_26:
      v121 = 0.0;
      if (!v87)
      {
        v126 = 0.0;
        v125 = 0.0;
        v124 = 0.0;
LABEL_30:
        v130 = 0.0;
        v129 = 0.0;
        goto LABEL_31;
      }

      v122 = (*v87 >> v74) - v40;
      v123 = (*(v87 + 1) >> v74) - v40;
      v87 += 2;
      v124 = _S6 * v123;
      v125 = (_S16 * v123) + (v122 * _S7);
      v126 = _S22 * v122;
      if (!v87)
      {
        goto LABEL_30;
      }

      v127 = (*v87 >> v74) - v40;
      v128 = (*(v87 + 1) >> v74) - v40;
      v87 += 2;
      v129 = _S6 * v128;
      v130 = (_S16 * v128) + (v127 * _S7);
      v121 = _S22 * v127;
LABEL_31:
      v131 = _S5 * ((v73->u16[0] >> v74) - v37);
      v132 = v114 + v131;
      v133 = v115 + v131;
      v134 = v116 + v131;
      v135 = _S5 * ((v73->u16[1] >> v74) - v37);
      v136 = v119 + v135;
      v137 = v120 + v135;
      v138 = v111 + v135;
      v139 = _S5 * ((v86->u16[0] >> v74) - v37);
      v140 = v124 + v139;
      v141 = v125 + v139;
      v142 = v126 + v139;
      v143 = _S5 * ((v86->u16[1] >> v74) - v37);
      v144 = v129 + v143;
      v145 = v130 + v143;
      v146 = v121 + v143;
      v147 = (((_S1 * v133) + (_S0 * v132)) + (_S2 * v134)) + v45;
      v148 = (((_S1 * v137) + (_S0 * v136)) + (_S2 * v138)) + v45;
      v149 = (((_S1 * v141) + (_S0 * v140)) + (_S2 * v142)) + v45;
      if (v147 < v45)
      {
        v150 = v45;
      }

      else
      {
        v150 = (((_S1 * v133) + (_S0 * v132)) + (_S2 * v134)) + v45;
      }

      if (v147 > v46)
      {
        v150 = v46;
      }

      v69->i8[0] = llroundf(v150);
      if (v148 < v45)
      {
        v151 = v45;
      }

      else
      {
        v151 = (((_S1 * v137) + (_S0 * v136)) + (_S2 * v138)) + v45;
      }

      if (v148 > v46)
      {
        v151 = v46;
      }

      v152 = (((_S1 * v145) + (_S0 * v144)) + (_S2 * v146)) + v45;
      v69->i8[1] = llroundf(v151);
      if (v149 < v45)
      {
        v153 = v45;
      }

      else
      {
        v153 = (((_S1 * v141) + (_S0 * v140)) + (_S2 * v142)) + v45;
      }

      if (v149 > v46)
      {
        v153 = v46;
      }

      v88->i8[0] = llroundf(v153);
      if (v152 < v45)
      {
        v154 = v45;
      }

      else
      {
        v154 = (((_S1 * v145) + (_S0 * v144)) + (_S2 * v146)) + v45;
      }

      if (v152 <= v46)
      {
        v155 = v154;
      }

      else
      {
        v155 = v46;
      }

      v88->i8[1] = llroundf(v155);
      v156 = ((v132 + v136) + v140) + v144;
      v157 = ((v133 + v137) + v141) + v145;
      v158 = ((v134 + v138) + v142) + v146;
      v159 = ((v194 + (v156 * v192)) + (v157 * *&v80)) + (v158 * *&v81);
      v160 = v47;
      if (v159 <= v47)
      {
        v160 = ((v194 + (v156 * v192)) + (v157 * *&v80)) + (v158 * *&v81);
        if (v159 < v201)
        {
          v160 = v201;
        }
      }

      v161 = ((v194 + (v156 * v181)) + (v157 * *(&v80 + 1))) + (v158 * *(&v81 + 1));
      *v109 = llroundf(v160);
      v162 = v47;
      if (v161 <= v47)
      {
        v162 = v161;
        if (v161 < v201)
        {
          v162 = v201;
        }
      }

      v110 += 2;
      v73 = (v73 + 4);
      v86 = (v86 + 4);
      v109[1] = llroundf(v162);
      v69 = (v69 + 2);
      v88 = (v88 + 2);
      v109 += 2;
      _S6 = v196;
      _S7 = v195;
      if (v110 >= v38)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (v179 && v17)
  {
    if (v10 >= 1)
    {
      v163 = 0;
      v164 = v179 + v15 * v177 + 2 * v178;
      do
      {
        if (v6 >= 1)
        {
          v165 = v6;
          v166 = v18;
          v167 = v164;
          do
          {
            v168 = *v167++;
            *v166++ = llroundf(v168 * 0.0038911);
            --v165;
          }

          while (v165);
        }

        v164 += v15;
        v18 += v16;
        ++v163;
      }

      while (v10 > v163);
    }
  }

  else if (v17 && v10 >= 1)
  {
    v169 = 0;
    v170 = vdupq_n_s64(v6 - 1);
    do
    {
      if (v6 >= 1)
      {
        v171 = 0;
        do
        {
          v172 = vdupq_n_s64(v171);
          v173 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v173, *v170.i8), *v170.i8).u8[0])
          {
            v18[v171] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v173, *&v170), *&v170).i8[1])
          {
            v18[v171 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDDA0)))), *&v170).i8[2])
          {
            v18[v171 + 2] = -1;
            v18[v171 + 3] = -1;
          }

          v174 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v170, vuzp1_s16(v174, *&v170)).i32[1])
          {
            v18[v171 + 4] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(v174, *&v170)).i8[5])
          {
            v18[v171 + 5] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD80))))).i8[6])
          {
            v18[v171 + 6] = -1;
            v18[v171 + 7] = -1;
          }

          v175 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v175, *v170.i8), *v170.i8).u8[0])
          {
            v18[v171 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v175, *&v170), *&v170).i8[1])
          {
            v18[v171 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD60)))), *&v170).i8[2])
          {
            v18[v171 + 10] = -1;
            v18[v171 + 11] = -1;
          }

          v176 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v170, vuzp1_s16(v176, *&v170)).i32[1])
          {
            v18[v171 + 12] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(v176, *&v170)).i8[5])
          {
            v18[v171 + 13] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD40))))).i8[6])
          {
            v18[v171 + 14] = -1;
            v18[v171 + 15] = -1;
          }

          v171 += 16;
        }

        while (((v6 + 15) & 0xFFFFFFFFFFFFFFF0) != v171);
      }

      v18 += v16;
      ++v169;
    }

    while (v10 > v169);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_rgb_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

void *vt_Copy_xf444_rgb_420vf_GCD(void *result, uint64_t a2)
{
  v135 = *(result + 36);
  v6 = 2 * *result;
  v7 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
  v8 = result[14];
  v9 = result[12];
  v10 = result[13];
  v11 = v10 * a2 / v6;
  v12 = result[15] + 2 * v11;
  v13 = 2 * ((v10 + v10 * a2) / v6 - v11);
  v15 = result[7];
  v14 = result[8];
  v17 = result[16];
  v16 = result[17];
  v18 = v14[2];
  v19 = v15[2];
  v20 = v16[2];
  v21 = v17[2];
  v22 = (v21 + v20 * v12 + v8);
  if (v13 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v9 & 0xFFFFFFFE;
    v26 = *v14;
    v27 = v14[1];
    v28 = *v16;
    v29 = v16[1];
    *&v30 = *(v24 + 128);
    *&v31 = *(v24 + 136);
    v32 = *&v31 / *&v30;
    LOWORD(v30) = *(v24 + 140);
    v33 = v30;
    LOWORD(v31) = *(v24 + 142);
    v34 = v31;
    v35 = v32 * *v24;
    v36 = v32 * *(v24 + 8);
    v37 = v32 * *(v24 + 16);
    v38 = v32 * *(v24 + 20);
    v39 = *(v24 + 28);
    v40 = v32 * v39;
    LOWORD(v39) = *(v24 + 144);
    v41 = LODWORD(v39);
    LOWORD(v2) = *(v24 + 146);
    v42 = v2;
    LOWORD(v3) = *(v24 + 148);
    v43 = v3;
    LOWORD(v4) = *(v24 + 150);
    v44 = v4;
    LOWORD(v5) = *(v24 + 152);
    v45 = v5;
    v46 = *(v24 + 36);
    v47 = *(v24 + 40);
    v48 = *(v24 + 44);
    v141 = *(v24 + 52) * 0.25;
    v142 = *(v24 + 48) * 0.25;
    v139 = *(v24 + 60) * 0.25;
    v140 = *(v24 + 56) * 0.25;
    v137 = *(v24 + 68) * 0.25;
    v138 = *(v24 + 64) * 0.25;
    v50 = *v15;
    v49 = v15[1];
    if (v49)
    {
      v51 = (v49 + v27 * v7 + 2 * v135);
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v24 + 124);
    v53 = v17[1];
    v54 = (*v17 + v28 * v12 + v8);
    v55 = (v50 + v26 * v7 + 2 * v135);
    if (v52 >= 0x11)
    {
      v56 = 0;
    }

    else
    {
      v56 = 16 - v52;
    }

    v57 = v53 + v29 * (v12 / 2) + v8;
    v58 = v56;
    while (1)
    {
      v59 = &v55[v26];
      v60 = &v51[v27];
      v61 = &v54[v28];
      if (v25 >= 1)
      {
        break;
      }

LABEL_51:
      v55 = &v59[v26];
      v51 = &v60[v27];
      v54 = &v61[v28];
      v57 += v29;
      v23 += 2;
      if (v23 >= v13)
      {
        goto LABEL_52;
      }
    }

    v62 = 0;
    v63 = &v55[v26];
    v64 = &v51[v27];
    v65 = &v54[v28];
    while (1)
    {
      v66 = 0.0;
      if (v51)
      {
        v67 = (*v51 >> v58) - v34;
        v68 = (*(v51 + 1) >> v58) - v34;
        v51 += 4;
        v69 = v36 * v68;
        v70 = (v38 * v68) + (v67 * v37);
        v71 = v40 * v67;
        if (v51)
        {
          v72 = (*v51 >> v58) - v34;
          v73 = (*(v51 + 1) >> v58) - v34;
          v51 += 4;
          v74 = v36 * v73;
          v75 = (v38 * v73) + (v72 * v37);
          v66 = v40 * v72;
          goto LABEL_16;
        }
      }

      else
      {
        v71 = 0.0;
        v70 = 0.0;
        v69 = 0.0;
      }

      v75 = 0.0;
      v74 = 0.0;
LABEL_16:
      v76 = 0.0;
      if (!v64)
      {
        v81 = 0.0;
        v80 = 0.0;
        v79 = 0.0;
LABEL_20:
        v85 = 0.0;
        v84 = 0.0;
        goto LABEL_21;
      }

      v77 = (*v64 >> v58) - v34;
      v78 = (*(v64 + 1) >> v58) - v34;
      v64 += 4;
      v79 = v36 * v78;
      v80 = (v38 * v78) + (v77 * v37);
      v81 = v40 * v77;
      if (!v64)
      {
        goto LABEL_20;
      }

      v82 = (*v64 >> v58) - v34;
      v83 = (*(v64 + 1) >> v58) - v34;
      v64 += 4;
      v84 = v36 * v83;
      v85 = (v38 * v83) + (v82 * v37);
      v76 = v40 * v82;
LABEL_21:
      v86 = v35 * ((*v55 >> v58) - v33);
      v87 = v69 + v86;
      v88 = v70 + v86;
      v89 = v71 + v86;
      v90 = v35 * ((*(v55 + 1) >> v58) - v33);
      v91 = v74 + v90;
      v92 = v75 + v90;
      v93 = v66 + v90;
      v94 = v35 * ((*v63 >> v58) - v33);
      v95 = v79 + v94;
      v96 = v80 + v94;
      v97 = v81 + v94;
      v98 = v35 * ((*(v63 + 1) >> v58) - v33);
      v99 = v84 + v98;
      v100 = v85 + v98;
      v101 = v76 + v98;
      v102 = (((v47 * v88) + (v46 * v87)) + (v48 * v89)) + v41;
      v103 = (((v47 * v92) + (v46 * v91)) + (v48 * v93)) + v41;
      v104 = (((v47 * v96) + (v46 * v95)) + (v48 * v97)) + v41;
      if (v102 < v41)
      {
        v105 = v41;
      }

      else
      {
        v105 = (((v47 * v88) + (v46 * v87)) + (v48 * v89)) + v41;
      }

      if (v102 > v43)
      {
        v105 = v43;
      }

      *v54 = llroundf(v105);
      if (v103 < v41)
      {
        v106 = v41;
      }

      else
      {
        v106 = (((v47 * v92) + (v46 * v91)) + (v48 * v93)) + v41;
      }

      if (v103 <= v43)
      {
        v107 = v106;
      }

      else
      {
        v107 = v43;
      }

      v108 = llroundf(v107);
      v109 = (((v47 * v100) + (v46 * v99)) + (v48 * v101)) + v41;
      v54[1] = v108;
      if (v104 < v41)
      {
        v110 = v41;
      }

      else
      {
        v110 = (((v47 * v96) + (v46 * v95)) + (v48 * v97)) + v41;
      }

      if (v104 <= v43)
      {
        v111 = v110;
      }

      else
      {
        v111 = v43;
      }

      *v65 = llroundf(v111);
      if (v109 < v41)
      {
        v112 = v41;
      }

      else
      {
        v112 = (((v47 * v100) + (v46 * v99)) + (v48 * v101)) + v41;
      }

      if (v109 <= v43)
      {
        v113 = v112;
      }

      else
      {
        v113 = v43;
      }

      v65[1] = llroundf(v113);
      v114 = ((v87 + v91) + v95) + v99;
      v115 = ((v88 + v92) + v96) + v100;
      v116 = ((v89 + v93) + v97) + v101;
      v117 = ((v42 + (v114 * v142)) + (v115 * v141)) + (v116 * v140);
      v118 = v45;
      if (v117 <= v45)
      {
        v118 = ((v42 + (v114 * v142)) + (v115 * v141)) + (v116 * v140);
        if (v117 < v44)
        {
          v118 = v44;
        }
      }

      v119 = ((v42 + (v114 * v139)) + (v115 * v138)) + (v116 * v137);
      *(v57 + v62) = llroundf(v118);
      v120 = v45;
      if (v119 <= v45)
      {
        v120 = v119;
        if (v119 < v44)
        {
          v120 = v44;
        }
      }

      v55 += 4;
      v63 += 4;
      v54 += 2;
      v65 += 2;
      *(v57 + v62 + 1) = llroundf(v120);
      v62 += 2;
      if (v62 >= v25)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  if (v19 && v21)
  {
    if (v13 >= 1)
    {
      v121 = 0;
      v122 = v19 + v18 * v7 + 2 * v135;
      do
      {
        if (v9 >= 1)
        {
          v123 = v9;
          v124 = v22;
          v125 = v122;
          do
          {
            v126 = *v125++;
            *v124++ = llroundf(v126 * 0.0038911);
            --v123;
          }

          while (v123);
        }

        v122 += v18;
        v22 += v20;
        ++v121;
      }

      while (v13 > v121);
    }
  }

  else if (v21 && v13 >= 1)
  {
    v127 = 0;
    v128 = vdupq_n_s64(v9 - 1);
    do
    {
      if (v9 >= 1)
      {
        v129 = 0;
        do
        {
          v130 = vdupq_n_s64(v129);
          v131 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v131, *v128.i8), *v128.i8).u8[0])
          {
            v22[v129] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v131, *&v128), *&v128).i8[1])
          {
            v22[v129 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v128, vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDDA0)))), *&v128).i8[2])
          {
            v22[v129 + 2] = -1;
            v22[v129 + 3] = -1;
          }

          v132 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v128, vuzp1_s16(v132, *&v128)).i32[1])
          {
            v22[v129 + 4] = -1;
          }

          if (vuzp1_s8(*&v128, vuzp1_s16(v132, *&v128)).i8[5])
          {
            v22[v129 + 5] = -1;
          }

          if (vuzp1_s8(*&v128, vuzp1_s16(*&v128, vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD80))))).i8[6])
          {
            v22[v129 + 6] = -1;
            v22[v129 + 7] = -1;
          }

          v133 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v133, *v128.i8), *v128.i8).u8[0])
          {
            v22[v129 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v133, *&v128), *&v128).i8[1])
          {
            v22[v129 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v128, vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD60)))), *&v128).i8[2])
          {
            v22[v129 + 10] = -1;
            v22[v129 + 11] = -1;
          }

          v134 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v128, vuzp1_s16(v134, *&v128)).i32[1])
          {
            v22[v129 + 12] = -1;
          }

          if (vuzp1_s8(*&v128, vuzp1_s16(v134, *&v128)).i8[5])
          {
            v22[v129 + 13] = -1;
          }

          if (vuzp1_s8(*&v128, vuzp1_s16(*&v128, vmovn_s64(vcgeq_u64(v128, vorrq_s8(v130, xmmword_18FECDD40))))).i8[6])
          {
            v22[v129 + 14] = -1;
            v22[v129 + 15] = -1;
          }

          v129 += 16;
        }

        while (((v9 + 15) & 0xFFFFFFFFFFFFFFF0) != v129);
      }

      v22 += v20;
      ++v127;
    }

    while (v13 > v127);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((*v67 * v52 + 2 * (v42 + v31)) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && v67[1] * ((v43 + v37 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (2 * v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = 2 * *result;
  v329 = *(result + 44) + 2 * (*(result + 28) * a2 / v9);
  v330 = *(result + 36);
  v10 = result[14];
  v339 = result[12];
  v11 = result[13];
  v335 = result;
  v12 = v11 * a2 / v9;
  v13 = result[15] + 2 * v12;
  v14 = 2 * ((v11 + v11 * a2) / v9 - v12);
  v15 = result[7];
  v16 = result[8];
  v17 = result[16];
  v18 = result[17];
  v328 = v16[2];
  v332 = v15[2];
  v333 = v18[2];
  v331 = v17[2];
  v19 = (v331 + v333 * v13 + 2 * v10);
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = result[19];
    v22 = *v16;
    v23 = v16[1];
    v24 = *v18;
    v25 = *(v21 + 140);
    v26 = *(v21 + 142);
    v27 = *(v21 + 144);
    v28 = *(v21 + 146);
    v29 = *(v21 + 148);
    v30 = *(v21 + 150);
    v31 = *(v21 + 152);
    _S20 = *(v21 + 44);
    v32.i32[0] = *(v21 + 48);
    v35.i32[0] = *(v21 + 52);
    v34.i32[0] = *(v21 + 56);
    result = (v21 + 16548);
    v36 = v339 & 0xFFFFFFFE;
    v37 = 8191.0 / *(v21 + 128);
    v38 = v25;
    v39 = v26;
    _S31 = v37 * *v21;
    _S15 = v37 * *(v21 + 8);
    _S29 = v37 * *(v21 + 16);
    _S11 = v37 * *(v21 + 20);
    v44 = v27;
    v45 = v28;
    v367 = v29;
    *&a8 = v30;
    v390 = v30;
    v46 = v31;
    _S13 = v37 * *(v21 + 28);
    v48 = v21 + 164;
    *&a8 = v25;
    v49 = v21 + 32932;
    __asm { FCVT            H8, S31 }

    v55 = vdupq_lane_s16(*&a8, 0);
    *&a8 = -v26;
    v56 = vdupq_lane_s16(*&a8, 0);
    __asm { FCVT            H5, S13 }

    v388 = _H5;
    v389 = v56;
    __asm { FCVT            H5, S29 }

    v387 = _H5;
    __asm { FCVT            H5, S11 }

    v386 = _H5;
    v32.i32[1] = *(v21 + 60);
    __asm { FMOV            V5.2S, #0.25 }

    *a9.f32 = vmul_f32(v32, _D5);
    v61 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    v381 = v61;
    v35.i32[1] = *(v21 + 64);
    *v61.f32 = vmul_f32(v35, _D5);
    _Q2 = vdupq_lane_s32(vcvt_f16_f32(v61), 0);
    v380 = _Q2;
    v34.i32[1] = *(v21 + 68);
    __asm { FCVT            H2, S15 }

    v385 = *_Q2.i16;
    *_Q2.f32 = vmul_f32(v34, _D5);
    v63 = vcvt_f16_f32(_Q2);
    v64 = vdupq_lane_s32(v63, 0);
    *v63.i16 = v27;
    v65 = vdupq_lane_s16(v63, 0);
    v378 = v65;
    v379 = v64;
    *v65.i16 = v28;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v29;
    v67 = vdupq_lane_s16(*v65.i8, 0);
    v376 = v67;
    v377 = v66;
    *v67.i16 = v30;
    v68 = vdupq_lane_s16(*v67.i8, 0);
    *v67.i16 = v31;
    v374 = vdupq_lane_s16(*v67.i8, 0);
    v375 = v68;
    v69 = *(v21 + 132);
    v70 = 16 - v69;
    if (v69 >= 0x11)
    {
      v70 = 0;
    }

    v71 = *(v21 + 124);
    if (v71 >= 0x11)
    {
      v72 = 0;
    }

    else
    {
      v72 = 16 - v71;
    }

    v73 = *v17;
    v336 = v18[1];
    v74 = v17[1] + v336 * (v13 / 2) + 2 * v10;
    v75 = *v18;
    v76 = (v73 + v24 * v13 + 2 * v10);
    v79 = v15;
    v78 = *v15;
    v77 = v79[1];
    if (v77)
    {
      v80 = (v77 + v23 * v329 + 2 * v330);
    }

    else
    {
      v80 = 0;
    }

    v81 = (v78 + v22 * v329 + 2 * v330);
    v82 = v72;
    _S7 = *(v21 + 72);
    _S21 = *(v21 + 76);
    _S23 = *(v21 + 80);
    _S24 = *(v21 + 84);
    _S18 = *(v21 + 88);
    _S25 = *(v21 + 92);
    _S26 = *(v21 + 96);
    _S27 = *(v21 + 100);
    _S30 = *(v21 + 104);
    _S22 = *(v21 + 108);
    _S12 = *(v21 + 112);
    _S14 = *(v21 + 116);
    v373 = *(v21 + 36);
    __asm { FCVT            H0, S0 }

    v358 = _H0;
    v372 = *(v21 + 40);
    __asm { FCVT            H0, S5 }

    v357 = _H0;
    v384 = *(v21 + 44);
    __asm { FCVT            H0, S20 }

    v356 = _H0;
    _S0 = *(v21 + 120);
    v99 = v24;
    __asm { FCVT            H5, S22 }

    v354 = _H5;
    v360 = _S12;
    __asm { FCVT            H5, S12 }

    v353 = _H5;
    v359 = _S14;
    __asm { FCVT            H5, S14 }

    v355 = _S0;
    __asm { FCVT            H0, S0 }

    v352 = *&_S0;
    v371 = _S7;
    __asm { FCVT            H0, S7 }

    v351 = *&_S0;
    v370 = _S21;
    __asm { FCVT            H0, S21 }

    v350 = *&_S0;
    v369 = _S23;
    __asm { FCVT            H0, S23 }

    v349 = *&_S0;
    v368 = _S24;
    __asm { FCVT            H0, S24 }

    v348 = *&_S0;
    __asm { FCVT            H0, S18 }

    v347 = *&_S0;
    v366 = _S25;
    __asm { FCVT            H0, S25 }

    v346 = *&_S0;
    v364 = _S26;
    __asm { FCVT            H0, S26 }

    v345 = *&_S0;
    v362 = _S27;
    __asm { FCVT            H0, S27 }

    v344 = *&_S0;
    v361 = _S30;
    __asm { FCVT            H0, S30 }

    v343 = *&_S0;
    v103 = v61.i64[0];
    v104 = _Q2.i64[0];
    v105 = vdupq_n_s16(-v72);
    v342 = vdupq_n_s16(v70);
    v395 = _S29;
    v396 = _S15;
    v382 = v55;
    v391 = v105;
    v337 = v16[1];
    v338 = *v16;
    v383 = _H8;
    v365 = v38;
    v363 = _S31;
    v393 = v26;
    v394 = _S13;
    v392 = _S11;
    v341 = v45;
    do
    {
      v106 = &v81->i8[v22];
      v107 = (v80 + v23);
      v340 = &v76->i8[v99];
      v108 = 0;
      if (v339 < 8)
      {
        v112 = v74;
        v110 = (v76 + v99);
        v111 = (v80 + v23);
        v109 = (v81 + v22);
      }

      else
      {
        v109 = (v81 + v22);
        v110 = (v76 + v99);
        v111 = v107;
        v112 = v74;
        do
        {
          v113 = 0uLL;
          if (v80)
          {
            v397 = vld2q_s16(v80);
            v80 += 16;
            v114 = vaddq_f16(v389, vcvtq_f16_u16(vshlq_u16(v397.val[0], v105)));
            v397.val[0] = vaddq_f16(v389, vcvtq_f16_u16(vshlq_u16(v397.val[1], v105)));
            v115 = vmulq_n_f16(v397.val[0], v385);
            v116 = vmlaq_n_f16(vmulq_n_f16(v114, v387), v397.val[0], v386);
            v117 = vmulq_n_f16(v114, v388);
          }

          else
          {
            v117 = 0uLL;
            v116 = 0uLL;
            v115 = 0uLL;
          }

          v118 = *v81++;
          v119 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v118, v105)), v55);
          v120 = vmlaq_n_f16(v115, v119, _H8);
          v121 = vmlaq_n_f16(v116, v119, _H8);
          v122 = vmlaq_n_f16(v117, v119, _H8);
          if (v111)
          {
            v398 = vld2q_s16(v111);
            v111 += 16;
            v123 = vaddq_f16(v389, vcvtq_f16_u16(vshlq_u16(v398.val[0], v105)));
            v398.val[0] = vaddq_f16(v389, vcvtq_f16_u16(vshlq_u16(v398.val[1], v105)));
            v124 = vmulq_n_f16(v398.val[0], v385);
            v125 = vmlaq_n_f16(vmulq_n_f16(v123, v387), v398.val[0], v386);
            v113 = vmulq_n_f16(v123, v388);
          }

          else
          {
            v125 = 0uLL;
            v124 = 0uLL;
          }

          v126 = *v109++;
          v127 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v126, v105)), v55);
          v128 = vmlaq_n_f16(v124, v127, _H8);
          v129 = vmlaq_n_f16(v125, v127, _H8);
          v130 = vmlaq_n_f16(v113, v127, _H8);
          v131.i64[0] = 0x9000900090009000;
          v131.i64[1] = 0x9000900090009000;
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v131));
          v133.i16[0] = *(v48 + 2 * v132.u16[0]);
          v133.i16[1] = *(v48 + 2 * v132.u16[1]);
          v133.i16[2] = *(v48 + 2 * v132.u16[2]);
          v133.i16[3] = *(v48 + 2 * v132.u16[3]);
          v133.i16[4] = *(v48 + 2 * v132.u16[4]);
          v133.i16[5] = *(v48 + 2 * v132.u16[5]);
          v133.i16[6] = *(v48 + 2 * v132.u16[6]);
          v133.i16[7] = *(v48 + 2 * v132.u16[7]);
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, 0), v131));
          v135.i16[0] = *(v48 + 2 * v134.u16[0]);
          v135.i16[1] = *(v48 + 2 * v134.u16[1]);
          v135.i16[2] = *(v48 + 2 * v134.u16[2]);
          v135.i16[3] = *(v48 + 2 * v134.u16[3]);
          v135.i16[4] = *(v48 + 2 * v134.u16[4]);
          v135.i16[5] = *(v48 + 2 * v134.u16[5]);
          v135.i16[6] = *(v48 + 2 * v134.u16[6]);
          v135.i16[7] = *(v48 + 2 * v134.u16[7]);
          v136 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, 0), v131));
          v137.i16[0] = *(v48 + 2 * v136.u16[0]);
          v137.i16[1] = *(v48 + 2 * v136.u16[1]);
          v137.i16[2] = *(v48 + 2 * v136.u16[2]);
          v137.i16[3] = *(v48 + 2 * v136.u16[3]);
          v137.i16[4] = *(v48 + 2 * v136.u16[4]);
          v137.i16[5] = *(v48 + 2 * v136.u16[5]);
          v137.i16[6] = *(v48 + 2 * v136.u16[6]);
          v137.i16[7] = *(v48 + 2 * v136.u16[7]);
          v138 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, 0), v131));
          v128.i16[0] = *(v48 + 2 * v138.u16[0]);
          v128.i16[1] = *(v48 + 2 * v138.u16[1]);
          v128.i16[2] = *(v48 + 2 * v138.u16[2]);
          v128.i16[3] = *(v48 + 2 * v138.u16[3]);
          v128.i16[4] = *(v48 + 2 * v138.u16[4]);
          v128.i16[5] = *(v48 + 2 * v138.u16[5]);
          v128.i16[6] = *(v48 + 2 * v138.u16[6]);
          v128.i16[7] = *(v48 + 2 * v138.u16[7]);
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v131));
          v138.i16[0] = *(v48 + 2 * v139.u16[0]);
          v138.i16[1] = *(v48 + 2 * v139.u16[1]);
          v138.i16[2] = *(v48 + 2 * v139.u16[2]);
          v138.i16[3] = *(v48 + 2 * v139.u16[3]);
          v138.i16[4] = *(v48 + 2 * v139.u16[4]);
          v138.i16[5] = *(v48 + 2 * v139.u16[5]);
          v138.i16[6] = *(v48 + 2 * v139.u16[6]);
          v138.i16[7] = *(v48 + 2 * v139.u16[7]);
          v140 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v130, 0), v131));
          v130.i16[0] = *(v48 + 2 * v140.u16[0]);
          v130.i16[1] = *(v48 + 2 * v140.u16[1]);
          v130.i16[2] = *(v48 + 2 * v140.u16[2]);
          v130.i16[3] = *(v48 + 2 * v140.u16[3]);
          v130.i16[4] = *(v48 + 2 * v140.u16[4]);
          v130.i16[5] = *(v48 + 2 * v140.u16[5]);
          v130.i16[6] = *(v48 + 2 * v140.u16[6]);
          v130.i16[7] = *(v48 + 2 * v140.u16[7]);
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v133, v354), v135, v353), v137, _H5), vmaxq_f16(vmaxq_f16(v133, v135), v137), v352), 0), v131));
          v142.i16[0] = *(result + v141.u16[0]);
          v142.i16[1] = *(result + v141.u16[1]);
          v142.i16[2] = *(result + v141.u16[2]);
          v142.i16[3] = *(result + v141.u16[3]);
          v142.i16[4] = *(result + v141.u16[4]);
          v142.i16[5] = *(result + v141.u16[5]);
          v142.i16[6] = *(result + v141.u16[6]);
          v142.i16[7] = *(result + v141.u16[7]);
          v143 = vmulq_f16(v133, v142);
          v144 = vmulq_f16(v135, v142);
          v145 = vmulq_f16(v137, v142);
          v146 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v128, v354), v138, v353), v130, _H5), vmaxq_f16(vmaxq_f16(v128, v138), v130), v352), 0), v131));
          v137.i16[0] = *(result + v146.u16[0]);
          v137.i16[1] = *(result + v146.u16[1]);
          v137.i16[2] = *(result + v146.u16[2]);
          v137.i16[3] = *(result + v146.u16[3]);
          v137.i16[4] = *(result + v146.u16[4]);
          v137.i16[5] = *(result + v146.u16[5]);
          v137.i16[6] = *(result + v146.u16[6]);
          v137.i16[7] = *(result + v146.u16[7]);
          v147 = vmulq_f16(v128, v137);
          v148 = vmulq_f16(v138, v137);
          v149 = vmulq_f16(v130, v137);
          v150 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v143, v351), v144, v350), v145, v349);
          v151 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v143, v348), v144, v347), v145, v346);
          v152 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v145, v343), v144, v344), v143, v345);
          v153 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v147, v351), v148, v350), v149, v349);
          v154 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v147, v348), v148, v347), v149, v346);
          v155 = vminq_f16(vmaxq_f16(v150, 0), v131);
          v156 = vcvtq_u16_f16(v155);
          v155.i16[0] = *(v49 + 2 * v156.u16[0]);
          v155.i16[1] = *(v49 + 2 * v156.u16[1]);
          v155.i16[2] = *(v49 + 2 * v156.u16[2]);
          v155.i16[3] = *(v49 + 2 * v156.u16[3]);
          v155.i16[4] = *(v49 + 2 * v156.u16[4]);
          v155.i16[5] = *(v49 + 2 * v156.u16[5]);
          v155.i16[6] = *(v49 + 2 * v156.u16[6]);
          v157 = (v49 + 2 * v156.u16[7]);
          v158 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v151, 0), v131));
          v144.i16[0] = *(v49 + 2 * v158.u16[0]);
          v144.i16[1] = *(v49 + 2 * v158.u16[1]);
          v144.i16[2] = *(v49 + 2 * v158.u16[2]);
          v144.i16[3] = *(v49 + 2 * v158.u16[3]);
          v144.i16[4] = *(v49 + 2 * v158.u16[4]);
          v144.i16[5] = *(v49 + 2 * v158.u16[5]);
          v144.i16[6] = *(v49 + 2 * v158.u16[6]);
          v159 = vuzp1q_s16(v155, v144);
          v155.i16[7] = *v157;
          v144.i16[7] = *(v49 + 2 * v158.u16[7]);
          v160 = vmulq_n_f16(v149, v343);
          v161 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v152, 0), v131));
          v162 = vmlaq_n_f16(v160, v148, v344);
          v105 = v391;
          v148.i16[0] = *(v49 + 2 * v161.u16[0]);
          v148.i16[1] = *(v49 + 2 * v161.u16[1]);
          v148.i16[2] = *(v49 + 2 * v161.u16[2]);
          v148.i16[3] = *(v49 + 2 * v161.u16[3]);
          v148.i16[4] = *(v49 + 2 * v161.u16[4]);
          v148.i16[5] = *(v49 + 2 * v161.u16[5]);
          v148.i16[6] = *(v49 + 2 * v161.u16[6]);
          v163 = (v49 + 2 * v161.u16[7]);
          v164 = v148;
          v164.i16[7] = *v163;
          v165 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v153, 0), v131));
          v153.i16[0] = *(v49 + 2 * v165.u16[0]);
          v153.i16[1] = *(v49 + 2 * v165.u16[1]);
          v153.i16[2] = *(v49 + 2 * v165.u16[2]);
          v153.i16[3] = *(v49 + 2 * v165.u16[3]);
          v153.i16[4] = *(v49 + 2 * v165.u16[4]);
          v153.i16[5] = *(v49 + 2 * v165.u16[5]);
          v153.i16[6] = *(v49 + 2 * v165.u16[6]);
          v166 = (v49 + 2 * v165.u16[7]);
          v167 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v154, 0), v131));
          v154.i16[0] = *(v49 + 2 * v167.u16[0]);
          v154.i16[1] = *(v49 + 2 * v167.u16[1]);
          v154.i16[2] = *(v49 + 2 * v167.u16[2]);
          v154.i16[3] = *(v49 + 2 * v167.u16[3]);
          v154.i16[4] = *(v49 + 2 * v167.u16[4]);
          v154.i16[5] = *(v49 + 2 * v167.u16[5]);
          v154.i16[6] = *(v49 + 2 * v167.u16[6]);
          v168 = vuzp1q_s16(v153, v154);
          v153.i16[7] = *v166;
          v154.i16[7] = *(v49 + 2 * v167.u16[7]);
          v169 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v162, v147, v345), 0), v131));
          v147.i16[0] = *(v49 + 2 * v169.u16[0]);
          v147.i16[1] = *(v49 + 2 * v169.u16[1]);
          v147.i16[2] = *(v49 + 2 * v169.u16[2]);
          v147.i16[3] = *(v49 + 2 * v169.u16[3]);
          v147.i16[4] = *(v49 + 2 * v169.u16[4]);
          v147.i16[5] = *(v49 + 2 * v169.u16[5]);
          v147.i16[6] = *(v49 + 2 * v169.u16[6]);
          v170 = (v49 + 2 * v169.u16[7]);
          v171 = v147;
          v171.i16[7] = *v170;
          *v76++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v378, v155, v358), v144, v357), v164, v356), v378), v376)), v342);
          *v110++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v378, v153, v358), v154, v357), v171, v356), v378), v376)), v342);
          v172 = vaddq_f16(vaddq_f16(vaddq_f16(v159, vuzp2q_s16(v155, v144)), v168), vuzp2q_s16(v153, v154));
          *v112++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v377, v381, vzip1q_s16(v172, v172)), v380, vzip2q_s16(v172, v172)), v379, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v148, v148), vtrn2q_s16(v164, v164)), vtrn1q_s16(v147, v147)), vtrn2q_s16(v171, v171))), v375), v374)), v342);
          v108 += 8;
          v45 = v341;
          _S11 = v392;
          v39 = v393;
          _S13 = v394;
          _S29 = v395;
          _S15 = v396;
        }

        while (v108 < v339 - 7);
        v108 = v339 & 0xFFFFFFF8;
      }

      for (; v108 < v36; v105 = v391)
      {
        if (v80)
        {
          v173 = (*v80 >> v82) - v39;
          v174 = (*(v80 + 1) >> v82) - v39;
          v80 += 2;
          v175 = _S15 * v174;
          v176 = (_S11 * v174) + (v173 * _S29);
          v177 = _S13 * v173;
        }

        else
        {
          v177 = 0.0;
          v176 = 0.0;
          v175 = 0.0;
        }

        v178 = _S31 * ((v81->u16[0] >> v82) - v38);
        v179 = v175 + v178;
        v180 = (v175 + v178) <= 8191.0;
        v181 = 8191.0;
        if (v180)
        {
          v181 = v179;
          if (v179 < 0.0)
          {
            v181 = 0.0;
          }
        }

        v182 = v176 + v178;
        v180 = (v176 + v178) <= 8191.0;
        v183 = 8191.0;
        if (v180)
        {
          v183 = v182;
          if (v182 < 0.0)
          {
            v183 = 0.0;
          }
        }

        v184 = v177 + v178;
        v185 = 8191.0;
        if (v184 <= 8191.0)
        {
          v185 = v184;
          if (v184 < 0.0)
          {
            v185 = 0.0;
          }
        }

        if (v80)
        {
          v186 = (*v80 >> v82) - v39;
          v187 = (*(v80 + 1) >> v82) - v39;
          v80 += 2;
          v188 = _S15 * v187;
          v189 = (_S11 * v187) + (v186 * _S29);
          v190 = _S13 * v186;
        }

        else
        {
          v190 = 0.0;
          v189 = 0.0;
          v188 = 0.0;
        }

        v191 = _S31 * ((v81->u16[1] >> v82) - v38);
        v192 = v188 + v191;
        v193 = 8191.0;
        v194 = 8191.0;
        if (v192 <= 8191.0)
        {
          v194 = v192;
          if (v192 < 0.0)
          {
            v194 = 0.0;
          }
        }

        v195 = v189 + v191;
        v180 = (v189 + v191) <= 8191.0;
        v196 = 8191.0;
        if (v180)
        {
          v196 = v195;
          if (v195 < 0.0)
          {
            v196 = 0.0;
          }
        }

        v197 = v190 + v191;
        if (v197 <= 8191.0)
        {
          v193 = v197;
          if (v197 < 0.0)
          {
            v193 = 0.0;
          }
        }

        if (v111)
        {
          v198 = (*v111 >> v82) - v39;
          v199 = (*(v111 + 1) >> v82) - v39;
          v111 += 2;
          v200 = _S15 * v199;
          v201 = (_S11 * v199) + (v198 * _S29);
          v202 = _S13 * v198;
        }

        else
        {
          v202 = 0.0;
          v201 = 0.0;
          v200 = 0.0;
        }

        v203 = _S31 * ((v109->u16[0] >> v82) - v38);
        v204 = v200 + v203;
        v205 = 8191.0;
        v206 = 8191.0;
        if (v204 <= 8191.0)
        {
          v206 = v204;
          if (v204 < 0.0)
          {
            v206 = 0.0;
          }
        }

        v207 = v201 + v203;
        v180 = (v201 + v203) <= 8191.0;
        v208 = 8191.0;
        if (v180)
        {
          v208 = v207;
          if (v207 < 0.0)
          {
            v208 = 0.0;
          }
        }

        v209 = v202 + v203;
        if (v209 <= 8191.0)
        {
          v205 = v209;
          if (v209 < 0.0)
          {
            v205 = 0.0;
          }
        }

        if (v111)
        {
          v210 = (*v111 >> v82) - v39;
          v211 = (*(v111 + 1) >> v82) - v39;
          v111 += 2;
          v212 = _S15 * v211;
          v213 = (_S11 * v211) + (v210 * _S29);
          v214 = _S13 * v210;
        }

        else
        {
          v214 = 0.0;
          v213 = 0.0;
          v212 = 0.0;
        }

        v215 = _S31 * ((v109->u16[1] >> v82) - v38);
        v216 = 8191.0;
        if ((v212 + v215) <= 8191.0)
        {
          v216 = v212 + v215;
          if ((v212 + v215) < 0.0)
          {
            v216 = 0.0;
          }
        }

        v217 = v213 + v215;
        v180 = (v213 + v215) <= 8191.0;
        v218 = 8191.0;
        if (v180)
        {
          v218 = v217;
          if (v217 < 0.0)
          {
            v218 = 0.0;
          }
        }

        v219 = v214 + v215;
        v220 = 8191.0;
        if (v219 <= 8191.0)
        {
          v220 = v219;
          if (v219 < 0.0)
          {
            v220 = 0.0;
          }
        }

        _H2 = *(v48 + 2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        _H4 = *(v48 + 2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H7 = *(v48 + 2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0)));
        __asm { FCVT            S7, H7 }

        _H28 = *(v48 + 2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0)));
        _H14 = *(v48 + 2 * llroundf(fminf(fmaxf(v196, 0.0), 8191.0)));
        _H15 = *(v48 + 2 * llroundf(fminf(fmaxf(v193, 0.0), 8191.0)));
        _H30 = *(v48 + 2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0)));
        _H24 = *(v48 + 2 * llroundf(fminf(fmaxf(v208, 0.0), 8191.0)));
        _H25 = *(v48 + 2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0)));
        _H20 = *(v48 + 2 * llroundf(fminf(fmaxf(v216, 0.0), 8191.0)));
        _H21 = *(v48 + 2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0)));
        _H23 = *(v48 + 2 * llroundf(fminf(fmaxf(v220, 0.0), 8191.0)));
        v236 = fmaxf(_S2, fmaxf(_S4, _S7));
        v237 = (((v360 * _S4) + (_S22 * _S2)) + (v359 * _S7)) + (v355 * v236);
        v238 = 8191.0;
        if (v237 <= 8191.0)
        {
          v238 = (((v360 * _S4) + (_S22 * _S2)) + (v359 * _S7)) + (v355 * v236);
          if (v237 < 0.0)
          {
            v238 = 0.0;
          }
        }

        v239 = v45;
        __asm
        {
          FCVT            S26, H28
          FCVT            S27, H14
          FCVT            S29, H15
        }

        _H28 = *(result + llroundf(v238));
        v244 = fmaxf(_S26, fmaxf(_S27, _S29));
        v245 = (((v360 * _S27) + (_S22 * _S26)) + (v359 * _S29)) + (v355 * v244);
        v246 = 8191.0;
        if (v245 <= 8191.0)
        {
          v246 = (((v360 * _S27) + (_S22 * _S26)) + (v359 * _S29)) + (v355 * v244);
          if (v245 < 0.0)
          {
            v246 = 0.0;
          }
        }

        __asm
        {
          FCVT            S31, H30
          FCVT            S9, H24
          FCVT            S10, H25
        }

        _H11 = *(result + llroundf(v246));
        v251 = fmaxf(_S31, fmaxf(_S9, _S10));
        v252 = (((v360 * _S9) + (_S22 * _S31)) + (v359 * _S10)) + (v355 * v251);
        v253 = 8191.0;
        if (v252 <= 8191.0)
        {
          v253 = (((v360 * _S9) + (_S22 * _S31)) + (v359 * _S10)) + (v355 * v251);
          if (v252 < 0.0)
          {
            v253 = 0.0;
          }
        }

        __asm
        {
          FCVT            S30, H20
          FCVT            S14, H21
          FCVT            S15, H23
          FCVT            S20, H28
        }

        v258 = _S2 * _S20;
        v259 = _S4 * _S20;
        v260 = _S7 * _S20;
        __asm { FCVT            S2, H11 }

        v262 = _S26 * _S2;
        v263 = _S27 * _S2;
        v264 = _S29 * _S2;
        LOWORD(_S2) = *(result + llroundf(v253));
        __asm { FCVT            S4, H2 }

        v266 = _S31 * _S4;
        v267 = _S9 * _S4;
        v268 = _S10 * _S4;
        v269 = (((v360 * _S14) + (_S22 * _S30)) + (v359 * _S15)) + (v355 * fmaxf(_S30, fmaxf(_S14, _S15)));
        v270 = 8191.0;
        if (v269 <= 8191.0)
        {
          v270 = v269;
          if (v269 < 0.0)
          {
            v270 = 0.0;
          }
        }

        _H26 = *(result + llroundf(v270));
        __asm { FCVT            S26, H26 }

        v273 = _S30 * _S26;
        v274 = _S14 * _S26;
        v275 = _S15 * _S26;
        v276 = ((v370 * v259) + (v258 * v371)) + (v260 * v369);
        v277 = ((_S18 * v259) + (v258 * v368)) + (v260 * v366);
        _S24 = ((v362 * v259) + (v258 * v364)) + (v260 * v361);
        v279 = ((v370 * v263) + (v262 * v371)) + (v264 * v369);
        _S28 = ((_S18 * v263) + (v262 * v368)) + (v264 * v366);
        _S21 = ((v362 * v263) + (v262 * v364)) + (v264 * v361);
        v282 = ((v370 * v267) + (v266 * v371)) + (v268 * v369);
        v283 = ((_S18 * v267) + (v266 * v368)) + (v268 * v366);
        v284 = ((v362 * v267) + (v266 * v364)) + (v268 * v361);
        _S4 = (_S18 * v274) + (v273 * v368);
        _S7 = (v362 * v274) + (v273 * v364);
        _S27 = ((v370 * v274) + (v273 * v371)) + (v275 * v369);
        v288 = _S4 + (v275 * v366);
        v289 = _S7 + (v275 * v361);
        _H2 = *(v49 + 2 * llroundf(fminf(fmaxf(v276, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *(v49 + 2 * llroundf(fminf(fmaxf(v277, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        LOWORD(_S7) = *(v49 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
        _H20 = *(v49 + 2 * llroundf(fminf(fmaxf(v279, 0.0), 8191.0)));
        __asm
        {
          FCVT            S7, H7
          FCVT            S20, H20
        }

        _H23 = *(v49 + 2 * llroundf(fminf(fmaxf(_S28, 0.0), 8191.0)));
        __asm { FCVT            S23, H23 }

        LOWORD(_S21) = *(v49 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
        __asm { FCVT            S21, H21 }

        LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v282, 0.0), 8191.0)));
        __asm { FCVT            S25, H24 }

        LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v283, 0.0), 8191.0)));
        __asm { FCVT            S30, H24 }

        LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v284, 0.0), 8191.0)));
        LOWORD(_S27) = *(v49 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
        __asm
        {
          FCVT            S24, H24
          FCVT            S27, H27
        }

        LOWORD(_S28) = *(v49 + 2 * llroundf(fminf(fmaxf(v288, 0.0), 8191.0)));
        v303 = llroundf(fminf(fmaxf(v289, 0.0), 8191.0));
        __asm { FCVT            S26, H28 }

        _H0 = *(v49 + 2 * v303);
        __asm { FCVT            S0, H0 }

        v307 = (((v372 * _S4) + (v373 * _S2)) + (v384 * _S7)) + v44;
        if (v307 < v44)
        {
          v308 = v44;
        }

        else
        {
          v308 = (((v372 * _S4) + (v373 * _S2)) + (v384 * _S7)) + v44;
        }

        v180 = v307 <= v367;
        v309 = (((v372 * _S23) + (v373 * _S20)) + (v384 * _S21)) + v44;
        if (!v180)
        {
          v308 = v367;
        }

        v310 = llroundf(v308);
        if (v309 < v44)
        {
          v311 = v44;
        }

        else
        {
          v311 = (((v372 * _S23) + (v373 * _S20)) + (v384 * _S21)) + v44;
        }

        v180 = v309 <= v367;
        v312 = (((v372 * _S30) + (v373 * _S25)) + (v384 * _S24)) + v44;
        if (!v180)
        {
          v311 = v367;
        }

        v313 = llroundf(v311);
        if (v312 < v44)
        {
          v314 = v44;
        }

        else
        {
          v314 = (((v372 * _S30) + (v373 * _S25)) + (v384 * _S24)) + v44;
        }

        v180 = v312 <= v367;
        v315 = (((v372 * _S26) + (v373 * _S27)) + (v384 * _S0)) + v44;
        if (!v180)
        {
          v314 = v367;
        }

        v316 = llroundf(v314);
        if (v315 < v44)
        {
          v317 = v44;
        }

        else
        {
          v317 = (((v372 * _S26) + (v373 * _S27)) + (v384 * _S0)) + v44;
        }

        if (v315 <= v367)
        {
          v318 = v317;
        }

        else
        {
          v318 = v367;
        }

        v319 = ((_S2 + _S20) + _S25) + _S27;
        v320 = ((_S4 + _S23) + _S30) + _S26;
        v76->i16[0] = v310 << v70;
        v76->i16[1] = v313 << v70;
        v110->i16[0] = v316 << v70;
        v110->i16[1] = llroundf(v318) << v70;
        v45 = v239;
        v321 = ((_S7 + _S21) + _S24) + _S0;
        v322 = ((v239 + (v319 * a9.f32[0])) + (v320 * *&v103)) + (v321 * *&v104);
        v323 = v46;
        if (v322 <= v46)
        {
          v323 = ((v239 + (v319 * a9.f32[0])) + (v320 * *&v103)) + (v321 * *&v104);
          if (v322 < v390)
          {
            v323 = v390;
          }
        }

        v324 = ((v239 + (v319 * a9.f32[1])) + (v320 * *(&v103 + 1))) + (v321 * *(&v104 + 1));
        v112->i16[0] = llroundf(v323) << v70;
        v325 = v46;
        v38 = v365;
        _S31 = v363;
        _S13 = v394;
        _S29 = v395;
        _S11 = v392;
        v39 = v393;
        if (v324 <= v46)
        {
          v325 = v324;
          if (v324 < v390)
          {
            v325 = v390;
          }
        }

        v108 += 2;
        v81 = (v81 + 4);
        v109 = (v109 + 4);
        v112->i16[1] = llroundf(v325) << v70;
        v76 = (v76 + 4);
        v110 = (v110 + 4);
        v112 = (v112 + 4);
        _S15 = v396;
        v55 = v382;
        _H8 = v383;
      }

      v23 = v337;
      v22 = v338;
      v81 = &v106[v338];
      v80 = (v107 + v337);
      v99 = v75;
      v76 = &v340[v75];
      v74 += v336;
      v20 += 2;
    }

    while (v20 < v14);
  }

  if (v332 && v331)
  {
    if (v14 >= 1)
    {
      v326 = 0;
      v327 = (v332 + v328 * v329 + 2 * v330);
      do
      {
        result = memcpy(v19, v327, 2 * v339);
        v327 += v328;
        v19 += v333;
        ++v326;
      }

      while (v14 > v326);
    }
  }

  else if (v331 && v14 >= 1)
  {
    do
    {
      if (v339 >= 1)
      {
        result = memset(v19, 255, 2 * v339);
      }

      v19 += v333;
      --v14;
    }

    while (v14);
  }

  *(v335 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((*v67 * v52 + 2 * (v42 + v31)) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && v67[1] * ((v43 + v37 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (2 * v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

uint64_t *vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_GCD(uint64_t *result, uint64_t a2, double a3, float a4, float a5)
{
  v8 = 2 * *result;
  v223 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
  v224 = *(result + 36);
  v9 = result[14];
  v229 = result[12];
  v10 = result[13];
  v11 = v10 * a2 / v8;
  v12 = result[15] + 2 * v11;
  v13 = 2 * ((v10 + v10 * a2) / v8 - v11);
  v14 = result[7];
  v15 = result[8];
  v16 = result[16];
  v17 = result[17];
  v230 = result;
  v222 = v15[2];
  v226 = v14[2];
  v227 = v17[2];
  v225 = v16[2];
  v18 = (v225 + v227 * v12 + 2 * v9);
  if (v13 >= 1)
  {
    v19 = 0;
    v20 = result[19];
    v21 = v229 & 0xFFFFFFFE;
    v22 = *v15;
    v23 = v15[1];
    v24 = *v17;
    v25 = v17[1];
    result = &qword_18FECD000;
    LOWORD(a4) = *(v20 + 140);
    LOWORD(a5) = *(v20 + 142);
    LOWORD(v5) = *(v20 + 144);
    LOWORD(v6) = *(v20 + 146);
    LOWORD(v7) = *(v20 + 148);
    v26 = 8191.0 / *(v20 + 128);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    v29 = v26 * *v20;
    v30 = v26 * *(v20 + 8);
    v31 = v26 * *(v20 + 16);
    v32 = v26 * *(v20 + 20);
    v33 = v26 * *(v20 + 28);
    v34 = v5;
    *&v35 = v6;
    v256 = v6;
    v36 = v7;
    LOWORD(v35) = *(v20 + 150);
    *&v37 = v35;
    v260 = *&v37;
    LOWORD(v37) = *(v20 + 152);
    v254 = *(v20 + 36);
    v255 = v37;
    v252 = *(v20 + 44);
    v253 = *(v20 + 40);
    v250 = *(v20 + 52) * 0.25;
    v251 = *(v20 + 48) * 0.25;
    v248 = *(v20 + 60) * 0.25;
    v249 = *(v20 + 56) * 0.25;
    v246 = *(v20 + 72);
    v247 = *(v20 + 64) * 0.25;
    v244 = *(v20 + 76);
    v245 = *(v20 + 68) * 0.25;
    v242 = *(v20 + 84);
    v243 = *(v20 + 80);
    v240 = *(v20 + 92);
    v241 = *(v20 + 88);
    v239 = *(v20 + 96);
    v237 = *(v20 + 100);
    v235 = *(v20 + 104);
    v38 = v20 + 164;
    v39 = v20 + 16548;
    v40 = v20 + 32932;
    v42 = *v14;
    v41 = v14[1];
    v43 = (v41 + v23 * v223 + 2 * v224);
    if (!v41)
    {
      v43 = 0;
    }

    v44 = *(v20 + 132);
    v45 = 16 - v44;
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    v46 = *(v20 + 124);
    v47 = 16 - v46;
    _CF = v46 >= 0x11;
    v49 = v16[1];
    v50 = (*v16 + v24 * v12 + 2 * v9);
    v51 = (v42 + v22 * v223 + 2 * v224);
    if (_CF)
    {
      v47 = 0;
    }

    v52 = v49 + v25 * (v12 / 2) + 2 * v9;
    v53 = v45;
    v54 = *(v20 + 108);
    v55 = *(v20 + 112);
    v57 = *(v20 + 116);
    v56 = *(v20 + 120);
    v258 = LODWORD(a4);
    v259 = v30;
    v257 = v29;
    v238 = v32;
    v236 = v31;
    v234 = v33;
    v232 = v57;
    v233 = v55;
    v231 = v56;
    do
    {
      v58 = &v51[v22];
      v59 = &v43[v23];
      v60 = &v50[v24];
      if (v21 >= 1)
      {
        v61 = 0;
        v62 = &v51[v22];
        v63 = &v43[v23];
        v64 = &v50[v24];
        do
        {
          if (v43)
          {
            v65 = (*v43 >> v47) - v28;
            v66 = (*(v43 + 1) >> v47) - v28;
            v43 += 4;
            v67 = v30 * v66;
            v68 = (v32 * v66) + (v65 * v31);
            v69 = v33 * v65;
          }

          else
          {
            v69 = 0.0;
            v68 = 0.0;
            v67 = 0.0;
          }

          v70 = v29 * ((*v51 >> v47) - v27);
          v71 = v67 + v70;
          v72 = (v67 + v70) <= 8191.0;
          v73 = 8191.0;
          if (v72)
          {
            v73 = v71;
            if (v71 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v68 + v70;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v69 + v70;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          if (v43)
          {
            v78 = (*v43 >> v47) - v28;
            v79 = (*(v43 + 1) >> v47) - v28;
            v43 += 4;
            v80 = v30 * v79;
            v81 = (v32 * v79) + (v78 * v31);
            v82 = v33 * v78;
          }

          else
          {
            v82 = 0.0;
            v81 = 0.0;
            v80 = 0.0;
          }

          v83 = v29 * ((*(v51 + 1) >> v47) - v27);
          v84 = v80 + v83;
          v85 = 8191.0;
          v86 = 8191.0;
          if (v84 <= 8191.0)
          {
            v86 = v84;
            if (v84 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v81 + v83;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v82 + v83;
          if (v89 <= 8191.0)
          {
            v85 = v89;
            if (v89 < 0.0)
            {
              v85 = 0.0;
            }
          }

          if (v63)
          {
            v90 = (*v63 >> v47) - v28;
            v91 = (*(v63 + 1) >> v47) - v28;
            v63 += 4;
            v92 = v30 * v91;
            v93 = (v32 * v91) + (v90 * v31);
            v94 = v33 * v90;
          }

          else
          {
            v94 = 0.0;
            v93 = 0.0;
            v92 = 0.0;
          }

          v95 = v29 * ((*v62 >> v47) - v27);
          v96 = v92 + v95;
          v97 = 8191.0;
          v72 = (v92 + v95) <= 8191.0;
          v98 = 8191.0;
          if (v72)
          {
            v98 = v96;
            if (v96 < 0.0)
            {
              v98 = 0.0;
            }
          }

          v99 = v93 + v95;
          v72 = (v93 + v95) <= 8191.0;
          v100 = 8191.0;
          if (v72)
          {
            v100 = v99;
            if (v99 < 0.0)
            {
              v100 = 0.0;
            }
          }

          v101 = v94 + v95;
          if (v101 <= 8191.0)
          {
            v97 = v101;
            if (v101 < 0.0)
            {
              v97 = 0.0;
            }
          }

          if (v63)
          {
            v102 = (*v63 >> v47) - v28;
            v103 = (*(v63 + 1) >> v47) - v28;
            v63 += 4;
            v104 = v30 * v103;
            v105 = (v32 * v103) + (v102 * v31);
            v106 = v33 * v102;
          }

          else
          {
            v106 = 0.0;
            v105 = 0.0;
            v104 = 0.0;
          }

          v107 = v29 * ((*(v62 + 1) >> v47) - v27);
          v108 = v104 + v107;
          v72 = (v104 + v107) <= 8191.0;
          v109 = 8191.0;
          if (v72)
          {
            v109 = v108;
            if (v108 < 0.0)
            {
              v109 = 0.0;
            }
          }

          v110 = v105 + v107;
          v111 = 8191.0;
          if (v110 <= 8191.0)
          {
            v111 = v110;
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          v112 = v106 + v107;
          v72 = (v106 + v107) <= 8191.0;
          v113 = 8191.0;
          if (v72)
          {
            v113 = v112;
            if (v112 < 0.0)
            {
              v113 = 0.0;
            }
          }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H20 = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          v120 = llroundf(fminf(fmaxf(v77, 0.0), 8191.0));
          __asm { FCVT            S19, H20 }

          _H20 = *(v38 + 2 * v120);
          __asm { FCVT            S30, H20 }

          _H20 = *(v38 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H5 = *(v38 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          _H6 = *(v38 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          _H7 = *(v38 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H1 = *(v38 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          _H3 = *(v38 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          _H4 = *(v38 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          v133 = fmaxf(_S0, fmaxf(_S19, _S30));
          v134 = (((v55 * _S19) + (v54 * _S0)) + (v57 * _S30)) + (v56 * v133);
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = (((v55 * _S19) + (v54 * _S0)) + (v57 * _S30)) + (v56 * v133);
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          __asm
          {
            FCVT            S21, H20
            FCVT            S22, H29
            FCVT            S23, H31
          }

          _H20 = *(v39 + 2 * llroundf(v135));
          v140 = (((v55 * _S22) + (v54 * _S21)) + (v57 * _S23)) + (v56 * fmaxf(_S21, fmaxf(_S22, _S23)));
          v141 = 8191.0;
          if (v140 <= 8191.0)
          {
            v141 = v140;
            if (v140 < 0.0)
            {
              v141 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H5
            FCVT            S10, H6
            FCVT            S11, H7
          }

          _H5 = *(v39 + 2 * llroundf(v141));
          v146 = fmaxf(_S9, fmaxf(_S10, _S11));
          v147 = (((v55 * _S10) + (v54 * _S9)) + (v57 * _S11)) + (v56 * v146);
          v148 = 8191.0;
          if (v147 <= 8191.0)
          {
            v148 = (((v55 * _S10) + (v54 * _S9)) + (v57 * _S11)) + (v56 * v146);
            if (v147 < 0.0)
            {
              v148 = 0.0;
            }
          }

          __asm
          {
            FCVT            S29, H1
            FCVT            S31, H3
            FCVT            S8, H4
            FCVT            S1, H20
          }

          v153 = _S0 * _S1;
          v154 = _S19 * _S1;
          v155 = _S30 * _S1;
          __asm { FCVT            S0, H5 }

          v157 = _S21 * _S0;
          v158 = _S22 * _S0;
          v159 = _S23 * _S0;
          LOWORD(_S0) = *(v39 + 2 * llroundf(v148));
          __asm { FCVT            S1, H0 }

          v161 = _S9 * _S1;
          v162 = _S10 * _S1;
          v163 = _S11 * _S1;
          v164 = (((v55 * _S31) + (v54 * _S29)) + (v57 * _S8)) + (v56 * fmaxf(_S29, fmaxf(_S31, _S8)));
          v165 = 8191.0;
          if (v164 <= 8191.0)
          {
            v165 = v164;
            if (v164 < 0.0)
            {
              v165 = 0.0;
            }
          }

          _H21 = *(v39 + 2 * llroundf(v165));
          __asm { FCVT            S21, H21 }

          v168 = _S29 * _S21;
          v169 = _S31 * _S21;
          v170 = _S8 * _S21;
          v171 = ((v244 * v154) + (v153 * v246)) + (v155 * v243);
          v172 = ((v241 * v154) + (v153 * v242)) + (v155 * v240);
          _S7 = ((v237 * v154) + (v153 * v239)) + (v155 * v235);
          v174 = ((v244 * v158) + (v157 * v246)) + (v159 * v243);
          _S20 = ((v241 * v158) + (v157 * v242)) + (v159 * v240);
          _S5 = ((v237 * v158) + (v157 * v239)) + (v159 * v235);
          v177 = ((v244 * v162) + (v161 * v246)) + (v163 * v243);
          v178 = ((v241 * v162) + (v161 * v242)) + (v163 * v240);
          v179 = ((v237 * v162) + (v161 * v239)) + (v163 * v235);
          _S1 = (v241 * v169) + (v168 * v242);
          _S3 = (v237 * v169) + (v168 * v239);
          v182 = ((v244 * v169) + (v168 * v246)) + (v170 * v243);
          v183 = _S1 + (v170 * v240);
          v184 = _S3 + (v170 * v235);
          _H0 = *(v40 + 2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v40 + 2 * llroundf(fminf(fmaxf(v172, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S3) = *(v40 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          _H4 = *(v40 + 2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _H6 = *(v40 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S5) = *(v40 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0)));
          __asm { FCVT            S19, H7 }

          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0)));
          __asm { FCVT            S30, H7 }

          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0)));
          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0)));
          __asm
          {
            FCVT            S7, H7
            FCVT            S22, H20
          }

          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0)));
          __asm { FCVT            S28, H20 }

          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(v184, 0.0), 8191.0)));
          __asm { FCVT            S21, H20 }

          v200 = (((v253 * _S1) + (v254 * _S0)) + (v252 * _S3)) + v34;
          if (v200 < v34)
          {
            v201 = v34;
          }

          else
          {
            v201 = (((v253 * _S1) + (v254 * _S0)) + (v252 * _S3)) + v34;
          }

          v72 = v200 <= v36;
          v202 = (((v253 * _S6) + (v254 * _S4)) + (v252 * _S5)) + v34;
          if (!v72)
          {
            v201 = v36;
          }

          v203 = llroundf(v201);
          if (v202 < v34)
          {
            v204 = v34;
          }

          else
          {
            v204 = (((v253 * _S6) + (v254 * _S4)) + (v252 * _S5)) + v34;
          }

          v72 = v202 <= v36;
          v205 = (((v253 * _S30) + (v254 * _S19)) + (v252 * _S7)) + v34;
          if (!v72)
          {
            v204 = v36;
          }

          v206 = llroundf(v204);
          if (v205 < v34)
          {
            v207 = v34;
          }

          else
          {
            v207 = (((v253 * _S30) + (v254 * _S19)) + (v252 * _S7)) + v34;
          }

          v72 = v205 <= v36;
          v208 = (((v253 * _S28) + (v254 * _S22)) + (v252 * _S21)) + v34;
          if (!v72)
          {
            v207 = v36;
          }

          v209 = llroundf(v207);
          if (v208 < v34)
          {
            v210 = v34;
          }

          else
          {
            v210 = (((v253 * _S28) + (v254 * _S22)) + (v252 * _S21)) + v34;
          }

          if (v208 <= v36)
          {
            v211 = v210;
          }

          else
          {
            v211 = v36;
          }

          v212 = ((_S0 + _S4) + _S19) + _S22;
          v213 = ((_S1 + _S6) + _S30) + _S28;
          *v50 = v203 << v53;
          *(v50 + 1) = v206 << v53;
          *v64 = v209 << v53;
          *(v64 + 1) = llroundf(v211) << v53;
          v214 = ((_S3 + _S5) + _S7) + _S21;
          v215 = ((v256 + (v212 * v251)) + (v213 * v250)) + (v214 * v249);
          v216 = v255;
          if (v215 <= v255)
          {
            v216 = ((v256 + (v212 * v251)) + (v213 * v250)) + (v214 * v249);
            if (v215 < v260)
            {
              v216 = v260;
            }
          }

          v217 = (v52 + 2 * v61);
          v218 = ((v256 + (v212 * v248)) + (v213 * v247)) + (v214 * v245);
          *v217 = llroundf(v216) << v53;
          v219 = v255;
          v29 = v257;
          v27 = v258;
          v30 = v259;
          v31 = v236;
          v32 = v238;
          v33 = v234;
          if (v218 <= v255)
          {
            v219 = v218;
            if (v218 < v260)
            {
              v219 = v260;
            }
          }

          v51 += 4;
          v62 += 4;
          v50 += 4;
          v64 += 4;
          v217[1] = llroundf(v219) << v53;
          v61 += 2;
          v55 = v233;
          v56 = v231;
          v57 = v232;
        }

        while (v61 < v21);
      }

      v51 = &v58[v22];
      v43 = &v59[v23];
      v50 = &v60[v24];
      v52 += v25;
      v19 += 2;
    }

    while (v19 < v13);
  }

  if (v226 && v225)
  {
    if (v13 >= 1)
    {
      v220 = 0;
      v221 = (v226 + v222 * v223 + 2 * v224);
      do
      {
        result = memcpy(v18, v221, 2 * v229);
        v221 += v222;
        v18 += v227;
        ++v220;
      }

      while (v13 > v220);
    }
  }

  else if (v225 && v13 >= 1)
  {
    do
    {
      if (v229 >= 1)
      {
        result = memset(v18, 255, 2 * v229);
      }

      v18 += v227;
      --v13;
    }

    while (v13);
  }

  *(v230 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_xf420_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v44 * *v38 + 2 * (v42 + v30)) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 4 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (2 * v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((*v67 * v52 + 2 * (v42 + v31)) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && v67[1] * ((v43 + v37 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (2 * v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_xf444_TRC_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}