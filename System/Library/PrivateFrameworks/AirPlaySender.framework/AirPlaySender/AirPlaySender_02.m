uint64_t __apsession_copyActiveStreamConnectionIDs_block_invoke()
{
  if (FigCFDictionaryGetInt64IfPresent())
  {
    return FigCFArrayAppendInt64();
  }

  else
  {
    return __apsession_copyActiveStreamConnectionIDs_block_invoke_cold_1();
  }
}

void __carEndpoint_postNotification_block_invoke(uint64_t a1)
{
  if (!carEndpoint_isDissociated(*(a1 + 32)) || FigCFEqual() || *(a1 + 64) && FigCFEqual())
  {
    v2 = *(a1 + 48);
    if (*(a1 + 64))
    {
      v3 = CFGetAllocator(*(a1 + 56));
      if (v2)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, *(a1 + 48));
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v2 = MutableCopy;
      FigCFDictionarySetInt64();
    }

    else if (v2)
    {
      v2 = CFRetain(*(a1 + 48));
    }

    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_postNotification_block_invoke_cold_2();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_postNotification_block_invoke_cold_1();
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t carAudioStream_acquireMessageBacking(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(CMBaseObjectGetDerivedStorage() + 464);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v7 = v6(v5, 0, a2);
      }

      else
      {
        v7 = 4294954514;
      }
    }

    else
    {
      carAudioStream_acquireMessageBacking_cold_1();
      v7 = 4294950533;
    }

    CFRelease(v4);
  }

  else
  {
    carAudioStream_acquireMessageBacking_cold_2();
    return 4294950534;
  }

  return v7;
}

uint64_t jitterBuffer_SetProperty(uint64_t a1, const void *a2)
{
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC0A48]))
  {
    *(DerivedStorage + 16) = CFGetInt64();
  }

  else if (CFEqual(a2, *MEMORY[0x277CC0A50]))
  {
    *(DerivedStorage + 112) = CFGetInt64() != 0;
  }

  else
  {
    return -12784;
  }

  return v5;
}

uint64_t APSRTPPacketHandlerCreate(const __CFAllocator *a1, int a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_20);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    bzero((Instance + 16), 0x6A8uLL);
    *(v11 + 24) = a2;
    *(v11 + 28) = a3;
    if (a4)
    {
      v12 = *(a4 + 16);
      *(v11 + 32) = *a4;
      *(v11 + 48) = v12;
      if ((a2 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (*(a4 + 16))
      {
        if (a3 < 2)
        {
          *(v11 + 96) = 0;
        }

        else
        {
          v13 = CMSimpleQueueCreate(a1, a3 - 1, (v11 + 96));
          if (v13)
          {
            v14 = v13;
LABEL_41:
            APSLogErrorAt();
            goto LABEL_12;
          }

          QueueInit(a1, v11 + 104, *(v11 + 28) - 1);
        }

        v15 = a3 + 20;
        v16 = MEMORY[0x223DAFDB0](a1, 24 * v15, 0x1020040F89CB87BLL, 0);
        *(v11 + 64) = v16;
        if (!v16)
        {
LABEL_30:
          v14 = 0;
          goto LABEL_32;
        }

        *(v11 + 72) = v15;
        bzero(v16, 24 * (a3 + 20));
        v17 = CMSimpleQueueCreate(a1, a3 + 20, (v11 + 80));
        if (v17)
        {
          v14 = v17;
        }

        else
        {
          if (v15)
          {
            v18 = 8;
            for (i = a3 + 20; i; --i)
            {
              v14 = (*(v11 + 48))(*(v11 + 32), *(v11 + 64) + v18);
              if (v14 || (v20 = *(v11 + 64), !*(v20 + v18)))
              {
                if (gLogCategory_APSRTPPacketHandler <= 90 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                if (v14)
                {
                  goto LABEL_41;
                }

                v20 = *(v11 + 64);
              }

              CMSimpleQueueEnqueue(*(v11 + 80), (v20 + v18 - 8));
              v18 += 24;
            }
          }

          v21 = CMSimpleQueueCreate(a1, v15, (v11 + 88));
          if (!v21)
          {
LABEL_29:
            if ((a2 & 2) != 0)
            {
              QueueInit(a1, v11 + 1664, *(v11 + 28) - 1);
              v14 = 0;
              *(v11 + 1656) = 0;
              *(v11 + 160) = 0;
              *(v11 + 168) = v11 + 176;
              goto LABEL_32;
            }

            goto LABEL_30;
          }

          v14 = v21;
        }

        goto LABEL_41;
      }
    }

    else if ((a2 & 1) == 0)
    {
      goto LABEL_29;
    }

    APSLogErrorAt();
    v14 = 4294960591;
LABEL_12:
    CFRelease(v11);
    v11 = 0;
    goto LABEL_32;
  }

  APSLogErrorAt();
  if (a4)
  {
    v23 = *(a4 + 8);
    if (v23)
    {
      v23(*a4);
    }
  }

  v11 = 0;
  v14 = 4294960568;
LABEL_32:
  *a5 = v11;
  return v14;
}

double APAudioZeroTimeStampProviderReset(uint64_t a1)
{
  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double *carAudioStream_updateZeroTimeFromSampleRate(double a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = mach_absolute_time();
  result = APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
  v5 = *result;
  if (vabdd_f64(*result, a1) <= 2000.0)
  {
    v6 = a1;
    if ((~*(DerivedStorage + 328) & 3) == 0)
    {
      if (vabdd_f64(a1, v5) > v5 * 0.00025 && gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = a1;
      if (vabdd_f64(*(DerivedStorage + 344), a1) > *(DerivedStorage + 344) * 0.00005)
      {
        if (*(DerivedStorage + 64))
        {
          v6 = a1;
          if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50)
          {
            if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || (v6 = a1, _LogCategory_Initialize()))
            {
              LogPrintF();
              v6 = a1;
            }
          }
        }

        else if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps > 50)
        {
          v6 = *(DerivedStorage + 344);
        }

        else if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || (v7 = _LogCategory_Initialize(), v6 = *(DerivedStorage + 344), v7))
        {
          LogPrintF();
          v6 = *(DerivedStorage + 344);
        }
      }
    }

    if ((~*(DerivedStorage + 328) & 3) != 0)
    {
      *(DerivedStorage + 272) = 0;
      *(DerivedStorage + 280) = v3;
      *(DerivedStorage + 328) = 3;
      *(DerivedStorage + 344) = v5;
    }

    else
    {
      v8 = *(DerivedStorage + 280);
      if (v3 > v8)
      {
        *(DerivedStorage + 272) = *(DerivedStorage + 272) + v6 * (v3 - v8) / UpTicksPerSecond();
        *(DerivedStorage + 280) = v3;
      }
    }

    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(DerivedStorage + 344);
    v10 = vabdd_f64(v9, a1) / v5;
    if (v10 >= 0.0011)
    {
      v11 = 0.01;
    }

    else
    {
      v11 = fmax(v10 / -0.0011 + 1.0, 0.01);
    }

    if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 30)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || (v12 = _LogCategory_Initialize(), v9 = *(DerivedStorage + 344), v12))
      {
        LogPrintF();
        v9 = *(DerivedStorage + 344);
      }
    }

    v13 = *(DerivedStorage + 336);
    *(DerivedStorage + 344) = (v11 * a1 + v9 * v13) / (v11 + v13);
    *(DerivedStorage + 336) = v13 + 1;
    v14 = *(DerivedStorage + 56);

    return APAudioZeroTimeStampProviderSetZeroTimeStamp(v14, (DerivedStorage + 272));
  }

  else if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 90)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APAudioZeroTimeStampProviderSetZeroTimeStamp(uint64_t result, _OWORD *a2)
{
  v2 = result + ((*(result + 152) == 0) << 6);
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 72) = v4;
  *(v2 + 56) = v3;
  *(v2 + 40) = v5;
  atomic_fetch_xor((result + 152), 1u);
  return result;
}

uint64_t APCarPlayAnalyticsInitASRCollection(uint64_t a1, double a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0;
  v11 = 32;
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2 <= 0.0)
  {
    APCarPlayAnalyticsInitASRCollection_cold_1(&v9);
    v5 = 4294960591;
  }

  else
  {
    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APCarPlayAnalyticsInitASRCollection_block_invoke;
    block[3] = &unk_27849DEC8;
    block[4] = &v8;
    block[5] = a1;
    *&block[6] = a2;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __APCarPlayAnalyticsInitASRCollection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 28))
  {
    result = __APCarPlayAnalyticsInitASRCollection_block_invoke_cold_1();
    v5 = -6709;
  }

  else
  {
    v3 = *(a1 + 48);
    *(v2 + 49) = *(v2 + 184) != v3;
    *(v2 + 184) = v3;
    APSDataSetStatisticsInit();
    result = APSDataSetStatisticsInit();
    v5 = 0;
    *(v2 + 48) = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void APCarPlayAnalyticsStartCollections(uint64_t a1, int a2, uint64_t a3, char a4)
{
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAnalyticsStartCollections_cold_1();
  }

  v8 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayAnalyticsStartCollections_block_invoke;
  block[3] = &__block_descriptor_tmp_28_2;
  v10 = a2;
  block[4] = a1;
  block[5] = a3;
  v11 = a4;
  dispatch_sync(v8, block);
}

uint64_t __APCarPlayAnalyticsStartCollections_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!(*(v1 + 48) | *(v1 + 192) | *(v1 + 392)))
  {
    return __APCarPlayAnalyticsStartCollections_block_invoke_cold_2();
  }

  v2 = *(result + 48);
  v3 = *(result + 40);
  if (*(v1 + 193) | *(result + 52) | *(v1 + 49) | *(v1 + 393))
  {
    if (gLogCategory_APCarPlayAnalytics <= 50)
    {
      if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APCarPlayAnalyticsStartCollections_block_invoke_cold_1();
      }
    }

    *(v1 + 24) = 0;
  }

  *(v1 + 40) = v3;
  *(v1 + 32) = v2;
  *(v1 + 28) = 1;
  return result;
}

uint64_t __carAudioStream_resume_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(v2 + 424) = 1;
  *(v2 + 496) = 0;
  APCarPlayAudioFormatInfoGetDescription(*(*(*(a1 + 32) + 8) + 24));
  result = APSAudioStatsCreate();
  *(*(a1 + 40) + 512) = 0;
  return result;
}

uint64_t APCarPlayAnalyticsInitAudioAnomaliesCollection(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAnalyticsInitAudioAnomaliesCollection_cold_1();
  }

  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __APCarPlayAnalyticsInitAudioAnomaliesCollection_block_invoke;
  v5[3] = &unk_27849DEF0;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APCarPlayAnalyticsInitAudioAnomaliesCollection_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  v3 = *(v2 + 28);
  if (*(v2 + 28))
  {
    result = __APCarPlayAnalyticsInitAudioAnomaliesCollection_block_invoke_cold_1();
    v3 = -6709;
  }

  else
  {
    *(v2 + 384) = 0;
    *(v2 + 352) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
    *(v2 + 256) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 200) = @"glct";
    *(v2 + 232) = @"lost";
    *(v2 + 192) = 1;
    *(v2 + 264) = @"late";
    *(v2 + 296) = @"unre";
    *(v2 + 224) = 3;
    *(v2 + 256) = 3;
    *(v2 + 288) = 3;
    *(v2 + 320) = 3;
    *(v2 + 328) = @"rtsn";
    *(v2 + 352) = 1;
    *(v2 + 360) = @"rtfu";
    *(v2 + 384) = 1;
  }

  *(*(*(v1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t carplaySource_SetDataReadyCallback(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a4 && *DerivedStorage)
  {
    carplaySource_SetDataReadyCallback_cold_1();
    return 4294950524;
  }

  else
  {
    if (*(DerivedStorage + 248))
    {
      v11 = *(DerivedStorage + 200);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __carplaySource_SetDataReadyCallback_block_invoke;
      block[3] = &__block_descriptor_tmp_1;
      block[4] = v10;
      dispatch_sync(v11, block);
    }

    if (a4)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = __carplaySource_SetDataReadyCallback_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_14;
      v13[4] = v10;
      v13[5] = a3;
      v13[6] = a4;
      v13[7] = a5;
      v14 = a2;
      dispatch_sync(a3, v13);
    }

    return 0;
  }
}

CFTypeRef __carAudioStream_resume_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 392);
  if (v3)
  {
    CFRetain(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 368);
  if (v4)
  {
    CFRetain(v4);
    v2 = *(a1 + 32);
  }

  result = *(v2 + 376);
  if (result)
  {
    result = CFRetain(result);
    v2 = *(a1 + 32);
  }

  *(v2 + 360) = 1;
  return result;
}

uint64_t carplaysource_Resume(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    carplaysource_Resume_cold_1();
LABEL_30:
    v14 = 4294950524;
    goto LABEL_31;
  }

  if (gLogCategory_APAudioSourceCarPlay <= 30 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
  {
    carplaysource_Resume_cold_2();
  }

  if (*(DerivedStorage + 248) && !*(DerivedStorage + 100))
  {
    carplaysource_Resume_cold_3();
    goto LABEL_30;
  }

  v3 = *(DerivedStorage + 88) + 4;
  v4 = CFGetAllocator(a1);
  v5 = CMSimpleQueueCreate(v4, v3 / 5, (DerivedStorage + 152));
  if (v5)
  {
    v14 = v5;
    carplaysource_Resume_cold_4();
    goto LABEL_31;
  }

  v6 = CFGetAllocator(a1);
  v7 = CMSimpleQueueCreate(v6, v3 / 5, (DerivedStorage + 168));
  if (v7)
  {
    v14 = v7;
    carplaysource_Resume_cold_5();
    goto LABEL_31;
  }

  v8 = CFGetAllocator(a1);
  v9 = CMSimpleQueueCreate(v8, v3 / 5, (DerivedStorage + 176));
  if (v9)
  {
    v14 = v9;
    carplaysource_Resume_cold_6();
    goto LABEL_31;
  }

  *(DerivedStorage + 144) = malloc_type_calloc(v3 / 5, 0xE8uLL, 0x100004002D9DE29uLL);
  if (v3 >= 5)
  {
    v10 = 0;
    do
    {
      CMSimpleQueueEnqueue(*(DerivedStorage + 152), (*(DerivedStorage + 144) + v10));
      v10 += 232;
    }

    while (232 * (v3 / 5) != v10);
  }

  MirroredRingBufferInit();
  v11 = AudioConverterNew((DerivedStorage + 8), (DerivedStorage + 48), (DerivedStorage + 192));
  if (v11)
  {
    v14 = v11;
    carplaysource_Resume_cold_7();
    goto LABEL_31;
  }

  if (*(DerivedStorage + 56) != 1819304813)
  {
    if (*(DerivedStorage + 92) && (v12 = AudioConverterSetProperty(*(DerivedStorage + 192), 0x70616B6Cu, 4u, (DerivedStorage + 92)), v12))
    {
      v14 = v12;
      carplaysource_Resume_cold_8();
    }

    else
    {
      if (!*(DerivedStorage + 96))
      {
        goto LABEL_19;
      }

      v13 = AudioConverterSetProperty(*(DerivedStorage + 192), 0x76627262u, 4u, (DerivedStorage + 96));
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = v13;
      carplaysource_Resume_cold_9();
    }

LABEL_31:
    carplaysource_SuspendInternal(DerivedStorage);
    return v14;
  }

LABEL_19:
  *(DerivedStorage + 224) = 0;
  *(DerivedStorage + 232) = 0;
  *(DerivedStorage + 136) = 0;
  *(DerivedStorage + 160) = 0;
  *(DerivedStorage + 240) = 0;
  if (*(DerivedStorage + 248))
  {
    v16 = (*(DerivedStorage + 68) * *(DerivedStorage + 100));
    v17 = ((1000000000 * v16) / *(DerivedStorage + 48));
    *(DerivedStorage + 212) = 0;
    *(DerivedStorage + 216) = v17;
    *(DerivedStorage + 208) = v16;
    *(DerivedStorage + 272) = v16;
    *(DerivedStorage + 264) = 0;
    carplaysource_scheduleReadinessCallbackAfterTimeNs(a1, v17 + 1000000);
  }

  v14 = 0;
  *DerivedStorage = 1;
  return v14;
}

void __carAudioStream_resume_block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  }

  if (!*(a1 + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t airPlayDescription_copyAuthenticationType(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_hasFeatureInternal(a1) || airPlayDescription_hasFeatureInternal(a1) || airPlayDescription_hasFeatureInternal(a1) || airPlayDescription_hasFeatureInternal(a1) || airPlayDescription_hasFeatureInternal(a1) || airPlayDescription_hasFeatureInternal(a1))
  {
    v4 = 0;
    *a2 = CFNumberCreateInt64();
  }

  else
  {
    v4 = 4294895542;
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      airPlayDescription_copyAuthenticationType_cold_1();
    }
  }

  return v4;
}

uint64_t airPlayDescription_copyEndpointInfoValueCFArray(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &cf);
  v6 = cf;
  if (cf && (v7 = CFGetTypeID(cf), v7 != CFArrayGetTypeID()))
  {
    airPlayDescription_copyEndpointInfoValueCFArray_cold_1(v6);
    return 4294895541;
  }

  else
  {
    result = 0;
    *a3 = v6;
  }

  return result;
}

void airPlayDescription_copyEndpointInfoValueCFBoolean(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &v9);
  v6 = v9;
  if (v9)
  {
    v7 = CFGetInt64();
    v8 = MEMORY[0x277CBED28];
    if (!v7)
    {
      v8 = MEMORY[0x277CBED10];
    }

    *a3 = CFRetain(*v8);

    CFRelease(v6);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t APCarPlayAudioFormatsGetHALDescriptions(uint64_t a1, int a2, int a3, const UInt8 **a4, unint64_t *a5)
{
  if (a2 > 1937010029)
  {
    if (a2 == 1937010030)
    {
      v7 = @"main";
    }

    else
    {
      if (a2 != 1937012579)
      {
        goto LABEL_25;
      }

      v7 = @"oovc";
    }
  }

  else if (a2 == 1937006956)
  {
    v7 = @"alt";
  }

  else
  {
    if (a2 != 1937006968)
    {
      goto LABEL_25;
    }

    v7 = @"auxo";
  }

  if (a3 <= 1635020132)
  {
    if (a3 == 1635017068)
    {
      v8 = @"alert";
      goto LABEL_22;
    }

    if (a3 == 1635017830)
    {
      v8 = @"default";
      goto LABEL_22;
    }

LABEL_25:
    APSLogErrorAt();
    return 4294960591;
  }

  if (a3 == 1635021925)
  {
    v8 = @"telephony";
    goto LABEL_22;
  }

  if (a3 == 1635021682)
  {
    v8 = @"speechRecognition";
    goto LABEL_22;
  }

  if (a3 != 1635020133)
  {
    goto LABEL_25;
  }

  v8 = @"media";
LABEL_22:
  Value = CFDictionaryGetValue(*(a1 + 56), v7);
  if (Value)
  {
    v10 = CFDictionaryGetValue(Value, v8);
    if (v10)
    {
      v11 = v10;
      *a4 = CFDataGetBytePtr(v10);
      Length = CFDataGetLength(v11);
      result = 0;
      *a5 = Length / 0x38;
      return result;
    }

    APCarPlayAudioFormatsGetHALDescriptions_cold_1();
  }

  else
  {
    APCarPlayAudioFormatsGetHALDescriptions_cold_2();
  }

  return 4294960569;
}

void carEndpoint_handleStreamResumed(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v8 = *(DerivedStorage + 168);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carEndpoint_handleStreamResumed_block_invoke;
  v9[3] = &__block_descriptor_tmp_793;
  v9[4] = DerivedStorage;
  v9[5] = a4;
  v9[6] = a2;
  *&v9[7] = Current;
  dispatch_async(v8, v9);
}

void __carEndpoint_handleStreamResumed_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 264))
  {
    CFArrayGetCount(*(v2 + 264));
    CFArrayApplyBlock();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

void __carEndpoint_handleStreamResumed_block_invoke_2(void *a1, const void *a2)
{
  if (FigCFEqual())
  {
    CFRetain(a2);
    v4 = *(a1[5] + 528);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_handleStreamResumed_block_invoke_3;
    block[3] = &__block_descriptor_tmp_791;
    v5 = a1[6];
    block[4] = a2;
    block[5] = v5;
    block[6] = a1[7];
    dispatch_async(v4, block);
  }
}

void __carEndpoint_handleStreamResumed_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 56) = 1;
  if (*(v2 + 64) == 0.0)
  {
    if (gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    *(v2 + 64) = *(a1 + 48);
  }

  v4 = CFStringCompare(*(v2 + 24), @"StreamInfo_Screen", 0);
  v5 = *(a1 + 32);
  if (v4 == kCFCompareEqualTo && (v5[4] & 0x8000000000000000) == 0)
  {
    carEndpoint_powerLogDisplay(*(a1 + 40), v5, 1);
    v5 = *(a1 + 32);
  }

  CFRelease(v5);
}

void __carEndpoint_getStreamInfoForType_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    theString1[5] = v2;
    theString1[6] = v3;
    theString1[0] = 0;
    v6 = CFGetAllocator(*(a1 + 40));
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8 && !v8(CMBaseObject, *MEMORY[0x277CC1900], v6, theString1) && CFStringCompare(theString1[0], *(a1 + 48), 0) == kCFCompareEqualTo)
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
    }

    if (theString1[0])
    {
      CFRelease(theString1[0]);
    }
  }
}

CFTypeRef __carEndpoint_acquireAndCopyEndpointStream_block_invoke(uint64_t a1)
{
  if (CFStringCompare(*(a1 + 40), *MEMORY[0x277CC1960], 0) && CFStringCompare(*(a1 + 40), *MEMORY[0x277CC1980], 0))
  {
    StreamInfoForType = carEndpoint_getStreamInfoForType();
  }

  else
  {
    StreamInfoForType = carEndpoint_getStreamInfoForSubtype();
  }

  *(*(*(a1 + 32) + 8) + 24) = StreamInfoForType;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t carEndpoint_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
    if (Value)
    {
      v9 = *(DerivedStorage + 168);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __carEndpoint_acquireAndCopyEndpointStream_block_invoke;
      block[3] = &unk_27849F6D0;
      block[4] = &v17;
      block[5] = Value;
      block[6] = FigEndpoint;
      dispatch_sync(v9, block);
      v10 = v18[3];
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v11 = CFRetain(v11);
        }

        v12 = 0;
        *a4 = v11;
        v13 = 1;
      }

      else
      {
        carEndpoint_AcquireAndCopyResource_cold_1();
        v13 = 0;
        v12 = 4294960587;
      }
    }

    else
    {
      carEndpoint_AcquireAndCopyResource_cold_2();
      v13 = 0;
      v12 = 4294950576;
    }

    v14 = v18[3];
    if (v14)
    {
      CFRelease(v14);
    }

    _Block_object_dispose(&v17, 8);
    if (v13)
    {
      return 0;
    }

    carEndpoint_AcquireAndCopyResource_cold_3();
  }

  else
  {
    if (gLogCategory_APEndpointCarPlay > 90)
    {
      return 4294960561;
    }

    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v12 = 4294960561;
  }

  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v12;
}

uint64_t carEndpoint_getStreamInfoForType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (*(DerivedStorage + 264))
  {
    CFArrayGetCount(*(DerivedStorage + 264));
    CFArrayApplyBlock();
    v1 = v4[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void carAudioStream_handleFeedbackReceivedNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5 && (v8 = CFGetTypeID(a5), v8 != CFDictionaryGetTypeID()))
  {

    APSLogErrorAt();
  }

  else
  {
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v10 = TypedValue;
      CFRetain(a2);
      v11 = *(DerivedStorage + 416);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __carAudioStream_handleFeedbackReceivedNotification_block_invoke;
      block[3] = &__block_descriptor_tmp_87;
      block[4] = DerivedStorage;
      block[5] = a2;
      dispatch_async(v11, block);
      CFRetain(a2);
      CFRetain(v10);
      if (a5)
      {
        CFRetain(a5);
      }

      OUTLINED_FUNCTION_4_7();
      v13[1] = 0x40000000;
      v13[2] = __carAudioStream_handleFeedbackReceivedNotification_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_100;
      v13[4] = DerivedStorage;
      v13[5] = v10;
      v13[6] = a2;
      v13[7] = a5;
      dispatch_async(v12, v13);
    }
  }
}

void __carAudioStream_handleFeedbackReceivedNotification_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 504))
  {
    v2 = APSAudioStats_CopySampleRateStatsAsString();
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t carPlayAnalytics_updateAnomalyCounter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    result = FigCFDictionaryGetInt32IfPresent();
    if (result)
    {
      *(a3 + 8) = 1;
      if (-*(a3 + 12) >= 1)
      {
        *(a3 + 16) -= *(a3 + 12);
      }

      *(a3 + 12) = 0;
      if (!(*(v4 + 24) % 0x1Eu))
      {
        if (*(a3 + 16) < *(a3 + 24))
        {
          v5 = *(a3 + 20);
        }

        else
        {
          v5 = *(a3 + 20) + 1;
        }

        *(a3 + 16) = 0;
        *(a3 + 20) = v5;
      }

      if (gLogCategory_APCarPlayAnalytics <= 40)
      {
        if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
        {
          OUTLINED_FUNCTION_4_20();
          if (!v6)
          {
            OUTLINED_FUNCTION_2_21();
          }

          return OUTLINED_FUNCTION_6();
        }
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_8_0(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionarySetValue(v2, a2, v5);
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return CFDictionaryGetInt64();
}

void OUTLINED_FUNCTION_8_5(uint64_t a1@<X0>, NSObject *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char block, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a11 = v14;
  a12 = a1;
  a13 = v13;

  dispatch_sync(a2, &block);
}

Float64 OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 timea, uint64_t time_16, uint64_t a20, __int128 a21, uint64_t a22)
{
  timea = a21;
  time_16 = a22;

  return CMTimeGetSeconds(&timea);
}

CFStringRef OUTLINED_FUNCTION_8_7(uint64_t a1, const char *a2)
{

  return CFStringCreateWithCString(v2, a2, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return carPlayAnalytics_updateAnomalyCounter(v4, v3, a3);
}

void __carAudioStream_handleFeedbackReceivedNotification_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  if (v2)
  {
    StreamType = APCarPlayAudioFormatInfoGetStreamType(v2);
    CFArrayGetCount(*(a1 + 40));
    CFArrayApplyBlock();
    Mutable = 0;
    if (StreamType == 102)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetInt64();
      CFDictionarySetInt64();
    }

    if (APCarPlayAnalyticsCollectFromFeedbackResponse(*(*(a1 + 32) + 88), *(a1 + 56), Mutable) && gLogCategory_APEndpointStreamCarPlayAudio <= 60 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(*(a1 + 40));
    CFRelease(*(a1 + 48));
    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

double *__carAudioStream_handleFeedbackReceivedNotification_block_invoke_3(double *result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v3 == result)
    {
      result = CFDictionaryGetInt64Ranged();
      if (*(v2 + 48) == result)
      {
        DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
        result = FigCFDictionaryGetDoubleIfPresent();
        if (result && (result = FigCFDictionaryGetInt64IfPresent(), result) && *(*(v2 + 32) + 200))
        {
          FigCFDictionaryGetInt64IfPresent();
          APSNetworkClockNTPConvertNTPToUpTicks();
          if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return carAudioStream_updateZeroTimeFromPhaseValues(0.0, *(v2 + 40), 0, 0);
        }

        else if (DoubleIfPresent)
        {
          if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
          {
            __carAudioStream_handleFeedbackReceivedNotification_block_invoke_3_cold_1();
          }

          return carAudioStream_updateZeroTimeFromSampleRate(0.0);
        }

        else if (gLogCategory_APEndpointStreamCarPlayAudio <= 60)
        {
          if (gLogCategory_APEndpointStreamCarPlayAudio != -1)
          {
            return __carAudioStream_handleFeedbackReceivedNotification_block_invoke_3_cold_2();
          }

          result = _LogCategory_Initialize();
          if (result)
          {
            return __carAudioStream_handleFeedbackReceivedNotification_block_invoke_3_cold_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t APCarPlayAnalyticsCollectFromFeedbackResponse(void *a1, CFTypeRef cf, const void *a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(cf);
    if (a3)
    {
      CFRetain(a3);
    }

    v7 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APCarPlayAnalyticsCollectFromFeedbackResponse_block_invoke;
    block[3] = &__block_descriptor_tmp_26_0;
    block[4] = a1;
    block[5] = cf;
    block[6] = a3;
    dispatch_async(v7, block);
    return 0;
  }

  else
  {
    APCarPlayAnalyticsCollectFromFeedbackResponse_cold_1();
    return 4294960591;
  }
}

void __APCarPlayAnalyticsCollectFromFeedbackResponse_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 28))
  {
    v4 = a1[5];
    v3 = a1[6];
    ++*(v2 + 24);
    if (*(v2 + 48))
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue)
      {
        goto LABEL_14;
      }

      CFArrayGetCount(TypedValue);
      CFArrayApplyBlock();
    }

    Value = CFDictionaryGetValue(v4, @"statsDictionary");
    v7 = Value;
    v8 = *(v2 + 192);
    if (Value && *(v2 + 192))
    {
      CFDictionaryApplyFunction(Value, carPlayAnalytics_collectAudioAnomaliesFromStreamIfPresent, v2);
      v8 = *(v2 + 192);
    }

    if (v3 && v8)
    {
      carPlayAnalytics_updateAnomalyCounter(v2, v3, v2 + 328);
      carPlayAnalytics_updateAnomalyCounter(v2, v3, v2 + 360);
    }

    if (v7 && *(v2 + 392))
    {
      CFDictionaryApplyFunction(v7, carPlayAnalytics_collectAudioFormatsFromStreamIfPresent, v2);
    }
  }

LABEL_14:
  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t __carPlayAnalytics_collectFromFeedbackResponseInternal_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) && cf && (v3 = CFGetTypeID(cf), v3 == CFDictionaryGetTypeID()))
  {
    result = CFDictionaryGetInt64();
    v5 = result;
    v6 = *(v2 + 40);
    if (gLogCategory_APCarPlayAnalytics <= 30)
    {
      if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
      {
        OUTLINED_FUNCTION_4_20();
        if (!v7)
        {
          OUTLINED_FUNCTION_2_21();
        }

        result = LogPrintF();
      }
    }

    if (v5 == v6)
    {
      result = FigCFDictionaryGetDoubleIfPresent();
      if (result)
      {
        if (*(v2 + 24) > 3u)
        {
          result = APSDataSetStatisticsAddValue();
          if (*(v2 + 24) <= 0xAu)
          {
            result = APSDataSetStatisticsAddValue();
          }

          if (gLogCategory_APCarPlayAnalytics <= 40)
          {
            if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
            {
              OUTLINED_FUNCTION_4_20();
              if (!v7)
              {
LABEL_22:
                OUTLINED_FUNCTION_2_21();
              }

              return OUTLINED_FUNCTION_6();
            }
          }
        }

        else if (gLogCategory_APCarPlayAnalytics <= 40)
        {
          if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
          {
            OUTLINED_FUNCTION_4_20();
            if (!v7)
            {
              goto LABEL_22;
            }

            return OUTLINED_FUNCTION_6();
          }
        }
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

const void *carPlayAnalytics_collectAudioAnomaliesFromStreamIfPresent(const void *result, const void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (a2)
    {
      if (v5 == result)
      {
        v6 = CFGetTypeID(a2);
        result = CFDictionaryGetTypeID();
        if (v6 == result)
        {
          FigCFDictionaryGetInt32IfPresent();
          result = carPlayAnalytics_convertCFStringToUint64();
          v8 = result;
          v9 = *(a3 + 40);
          if (gLogCategory_APCarPlayAnalytics <= 30)
          {
            if (gLogCategory_APCarPlayAnalytics != -1 || (result = _LogCategory_Initialize(), result))
            {
              OUTLINED_FUNCTION_4_20();
              if (!v10)
              {
                OUTLINED_FUNCTION_2_21();
              }

              result = LogPrintF();
            }
          }

          if (v8 == v9)
          {
            v11 = OUTLINED_FUNCTION_8_9(result, v7, a3 + 200);
            v13 = OUTLINED_FUNCTION_8_9(v11, v12, a3 + 232);
            v15 = OUTLINED_FUNCTION_8_9(v13, v14, a3 + 296);
            return OUTLINED_FUNCTION_8_9(v15, v16, a3 + 264);
          }
        }
      }
    }
  }

  return result;
}

unint64_t carPlayAnalytics_convertCFStringToUint64()
{
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v1 = strtoull(CStringPtrAndBufferToFree, 0, 0);
  free(0);
  return v1;
}

uint64_t jitterBuffer_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Statistics"))
  {
    if (*(DerivedStorage + 8))
    {

      return MEMORY[0x28213C740]();
    }

    else
    {
      jitterBuffer_CopyProperty_cold_1();
      return 4294950503;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC0A48]))
  {
    v8 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 16));
    *a4 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      jitterBuffer_CopyProperty_cold_2();
      return 4294950506;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC0A50]))
  {
    v9 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 112))
    {
      v9 = MEMORY[0x277CBED10];
    }

    v10 = CFRetain(*v9);
    result = 0;
    *a4 = v10;
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t APAudioSinkJitterBufferCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (a3)
  {
    FigEndpointAudioSinkGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v11 = v5;
      APSLogErrorAt();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = *(a2 + 4);
      v8 = a2[1];
      *(DerivedStorage + 64) = *a2;
      *(DerivedStorage + 80) = v8;
      *(DerivedStorage + 96) = v7;
      v10 = *a2;
      v9 = a2[1];
      *(DerivedStorage + 56) = *(a2 + 4);
      *(DerivedStorage + 24) = v10;
      *(DerivedStorage + 40) = v9;
      *(DerivedStorage + 16) = 50;
      *(DerivedStorage + 112) = 0;
      if (gLogCategory_APAudioSinkJitterBuffer <= 30 && (gLogCategory_APAudioSinkJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        APAudioSinkJitterBufferCreate_cold_1();
      }

      v11 = 0;
      *a3 = 0;
    }
  }

  else
  {
    APAudioSinkJitterBufferCreate_cold_2();
    return 4294950504;
  }

  return v11;
}

void __carAudioStream_setVocoderInfo_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    v3 = *(v1 + 144);
    v4 = *(v0 + 40);
    *(v1 + 144) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  CFRelease(*(v0 + 48));
  v5 = *(v0 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __carAudioStream_setAudioSink_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 30)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || (v3 = OUTLINED_FUNCTION_10(), v1 = *(v0 + 32), v3))
      {
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_4_1();
        v1 = *(v0 + 32);
      }
    }

    v4 = *(v1 + 152);
    v5 = *(v0 + 48);
    *(v1 + 152) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  CFRelease(*(v0 + 40));
  v6 = *(v0 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t jitterBuffer_Resume(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    jitterBuffer_Resume_cold_1();
    return 4294950503;
  }

  else
  {
    v3 = DerivedStorage;
    if (gLogCategory_APAudioSinkJitterBuffer <= 30 && (gLogCategory_APAudioSinkJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      jitterBuffer_Resume_cold_2();
    }

    if (!*(v3 + 1))
    {
      CFGetAllocator(a1);
      *(v3 + 1) = APSRTPJitterBufferCreate();
    }

    result = 0;
    *v3 = 1;
  }

  return result;
}

uint64_t jitterBuffer_SetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage + 64;
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(DerivedStorage + 24) = *v4;
  *(DerivedStorage + 40) = v6;
  *(DerivedStorage + 56) = v5;
  return 0;
}

uint64_t FigTransportStreamWaitUntilConnected(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTransportStreamWaitUntilConnected_0(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t QueueInit(uint64_t a1, uint64_t a2, int a3)
{
  *a2 = a1;
  if (a3)
  {
    v5 = MEMORY[0x223DAFDB0]();
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 32) = v5;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  *(a2 + 40) = a3;

  return __strlcpy_chk();
}

uint64_t APCarPlayAnalyticsSubmitToCarPlay(NSObject **cf)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0;
  v9 = 32;
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = cf[2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __APCarPlayAnalyticsSubmitToCarPlay_block_invoke;
  v5[3] = &unk_27849DEA0;
  v5[4] = &v6;
  v5[5] = cf;
  dispatch_async(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t apsession_teardownStreamInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_teardownStreamInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    CFDictionaryGetInt64();
  }

  if (!apsession_registryContainsStream())
  {
    apsession_teardownStreamInternal_cold_7();
    return 0;
  }

  apsession_copyTransportControlStream(*a1, &v18);
  v5 = v18;
  if (!v18)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = CMBaseObjectGetDerivedStorage();
  if (v7 == 103)
  {
    v10 = v9;
    FigSimpleMutexLock();
    if (*(v10 + 328))
    {
      APSenderSessionMessageSendTimeout();
      APSSetFBOPropertyInt64();
    }

    if (*(v10 + 336))
    {
      APSenderSessionMessageSendTimeout();
      APSSetFBOPropertyInt64();
    }

    FigSimpleMutexUnlock();
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    apsession_teardownStreamInternal_cold_5();
    goto LABEL_30;
  }

  v13 = Mutable;
  if (v8)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, v8);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v15 = MutableCopy;
  if (!MutableCopy)
  {
    apsession_teardownStreamInternal_cold_4();
    goto LABEL_29;
  }

  CFDictionarySetInt64();
  CFArrayAppendValue(v13, v15);
  if (apsession_sendTeardownWithStreamDescArray(v6, v13))
  {
    apsession_teardownStreamInternal_cold_2();
    goto LABEL_28;
  }

  CFDictionaryGetInt64();
  v19 = 0;
  v16 = CMBaseObjectGetDerivedStorage();
  v17 = CFStringCreateF();
  if (v19)
  {
    apsession_teardownStreamInternal_cold_3();
    if (!v17)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  FigSimpleMutexLock();
  CFDictionaryRemoveValue(*(v16 + 576), v17);
  FigSimpleMutexUnlock();
  if (v17)
  {
LABEL_27:
    CFRelease(v17);
  }

LABEL_28:
  CFRelease(v15);
LABEL_29:
  CFRelease(v13);
LABEL_30:
  restarted = apsession_restartKeepAliveInDifferentModeIfNeeded(*a1);
  if (restarted)
  {
    apsession_teardownStreamInternal_cold_6();
  }

  CFRelease(v5);
  return restarted;
}

void __carAudioStream_suspend_block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2(a1[5], 0, a1[6]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = a1[5];

  CFRelease(v3);
}

void __carEndpoint_handleStreamSuspended_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 264))
  {
    CFArrayGetCount(*(v2 + 264));
    OUTLINED_FUNCTION_2_20();
    CFArrayApplyBlock();
  }

  carEndpoint_updateActiveStreamConnectionIDs();
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t carAudioStream_suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_77;
  block[4] = a1;
  block[5] = DerivedStorage;
  block[6] = a3;
  block[7] = a4;
  block[8] = a2;
  dispatch_async(v9, block);
  return 0;
}

void carAudioStream_suspendInternal(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176))
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_14_1();
    if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_2();
    }

    v10 = LogCategoryCopyOSLogHandle();
    v11 = v10;
    v12 = MEMORY[0x277D86220];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v13))
    {
      CStringPtr = CFStringGetCStringPtr(*(v5 + 40), 0x8000100u);
      *buf = 136315138;
      v30 = CStringPtr;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v13, OS_SIGNPOST_EVENT, 0x2B8D0940uLL, "AP_SIGNPOST_CAR_AUDIOSTREAM_SUSPEND_START", "stream type=%s\n", buf, 0xCu);
    }

    if (v11)
    {
      os_release(v11);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_5_3();
    FigNotificationCenterRemoveWeakListener();
    if (APCarPlayAudioFormatInfoGetStreamType(*(v5 + 192)) == 102)
    {
      v15 = *(v5 + 16);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v16)
      {
        v16(v15);
      }
    }

    else
    {
      if (*(v5 + 368))
      {
        v17 = *(v5 + 352);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carAudioStream_suspendInternal_block_invoke;
        block[3] = &__block_descriptor_tmp_81;
        block[4] = v5;
        dispatch_sync(v17, block);
      }

      if (*(v5 + 432))
      {
        v18 = *(v5 + 416);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 0x40000000;
        v27[2] = __carAudioStream_suspendInternal_block_invoke_2;
        v27[3] = &__block_descriptor_tmp_83;
        v27[4] = v5;
        v27[5] = a1;
        dispatch_sync(v18, v27);
        v19 = *(CMBaseObjectGetVTable() + 16);
        if (*v19 >= 2uLL && v19[3])
        {
          OUTLINED_FUNCTION_3_9();
          v20();
        }

        *(v5 + 440) = 0;
      }
    }

    APCarPlayAnalyticsStopCollections(*(v5 + 88));
    APCarPlayAnalyticsSubmitToCarPlay(*(v5 + 88));
    carAudioStream_teardownTransportStreams(a1, a2);
    carAudioStream_teardownAudioProcessing();
    v21 = CMBaseObjectGetDerivedStorage();
    if (CFEqual(*(v21 + 40), *MEMORY[0x277CC1938]) || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      APSEventRecorderRecordEvent();
    }

    else
    {
      APSLogErrorAt();
    }

    *(v5 + 176) = 0;
    OUTLINED_FUNCTION_14_1();
    if (v8 ^ v9 | v7 && (v22 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_2();
    }

    v23 = LogCategoryCopyOSLogHandle();
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v12;
    }

    if (os_signpost_enabled(v25))
    {
      v26 = CFStringGetCStringPtr(*(v5 + 40), 0x8000100u);
      *buf = 136315138;
      v30 = v26;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v25, OS_SIGNPOST_EVENT, 0x2B8D0944uLL, "AP_SIGNPOST_CAR_AUDIOSTREAM_SUSPEND_END", "stream type=%s\n", buf, 0xCu);
    }

    if (v24)
    {
      os_release(v24);
    }
  }
}

uint64_t APCarPlayAnalyticsStopCollections_cold_1(uint64_t a1)
{
  if ((*(a1 + 32) - 96) <= 0x18)
  {
    OUTLINED_FUNCTION_2_21();
  }

  return OUTLINED_FUNCTION_2();
}

void carAudioStream_teardownTransportStreams(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (!a2 && (DerivedStorage[48] || DerivedStorage[58]))
  {
    StreamType = APCarPlayAudioFormatInfoGetStreamType(DerivedStorage[24]);
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      carAudioStream_teardownTransportStreams_cold_1();
    }

    if (StreamType == 96)
    {
      kdebug_trace();
      v7 = v5[12];
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v8)
      {
        v8(v7, 96, 0);
      }
    }

    else
    {
      kdebug_trace();
      v9 = v5[12];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        v10(v9, StreamType, 0);
      }
    }

    kdebug_trace();
  }

  v11 = v5[49];
  if (v11)
  {
    CFRelease(v11);
    v5[49] = 0;
  }

  if (v5[48])
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v13 = CMBaseObject;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v14)
      {
        v14(v13);
      }
    }

    v15 = v5[48];
    if (v15)
    {
      CFRelease(v15);
      v5[48] = 0;
    }
  }

  v16 = v5[47];
  if (v16)
  {
    CFRelease(v16);
    v5[47] = 0;
  }

  if (v5[58])
  {
    v17 = FigTransportStreamGetCMBaseObject();
    if (v17)
    {
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v19)
      {
        v19(v18);
      }
    }

    v20 = v5[58];
    if (v20)
    {
      CFRelease(v20);
      v5[58] = 0;
    }
  }

  if (v5[57])
  {
    v21 = FigTransportStreamGetCMBaseObject();
    if (v21)
    {
      v22 = v21;
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v23)
      {
        v23(v22);
      }
    }

    v24 = v5[57];
    if (v24)
    {
      CFRelease(v24);
      v5[57] = 0;
    }
  }

  if (*(v5 + 472))
  {
    v25 = v5[2];
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v26)
    {
      v26(v25, a1, 0);
    }

    *(v5 + 472) = 0;
    v27 = APAudioEngineGetCMBaseObject(v5[2]);
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v28)
    {
      v28(v27, @"cryptor", 0);
    }
  }

  v29 = v5[56];
  if (v29)
  {
    CFRelease(v29);
    v5[56] = 0;
  }

  v30 = v5[61];
  if (v30)
  {
    CFRelease(v30);
    v5[61] = 0;
  }

  v5[23] = 0;
}

void APSRTPPacketHandlerFinalize(CFTypeRef cf)
{
  if (gLogCategory_APSRTPPacketHandler <= 30 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
  {
    APSRTPPacketHandlerFinalize_cold_1();
  }

  v2 = *(cf + 12);
  if (v2)
  {
    CFRelease(v2);
  }

  *(cf + 12) = 0;
  v3 = *(cf + 10);
  if (v3)
  {
    CFRelease(v3);
  }

  *(cf + 10) = 0;
  v4 = *(cf + 11);
  if (v4)
  {
    CFRelease(v4);
  }

  *(cf + 11) = 0;
  v5 = *(cf + 8);
  if (v5)
  {
    if (*(cf + 9))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v5 + v6 + 16);
        if (v8)
        {
          CFRelease(v8);
          v5 = *(cf + 8);
          *(v5 + v6 + 16) = 0;
        }

        if (*(v5 + v6 + 8))
        {
          v9 = *(cf + 7);
          if (v9)
          {
            v9(*(cf + 4));
            v5 = *(cf + 8);
          }

          *(v5 + v6 + 8) = 0;
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < *(cf + 9));
    }

    v10 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v10, *(cf + 8));
  }

  *(cf + 8) = 0;
  v11 = *(cf + 212);
  if (v11)
  {
    CFAllocatorDeallocate(*(cf + 208), v11);
    *(cf + 212) = 0;
  }

  *(cf + 428) = 0;
  *(cf + 213) = 0;
  v12 = *(cf + 17);
  if (v12)
  {
    CFAllocatorDeallocate(*(cf + 13), v12);
    *(cf + 17) = 0;
  }

  *(cf + 38) = 0;
  *(cf + 18) = 0;
  v13 = *(cf + 20);
  if (v13)
  {
    CFRelease(v13);
    *(cf + 20) = 0;
  }

  *(cf + 7) = 0;
  v14 = *(cf + 5);
  if (v14)
  {
    v14(*(cf + 4));
  }

  if (gLogCategory_APSRTPPacketHandler <= 30 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
  {
    APSRTPPacketHandlerFinalize_cold_2();
  }
}

uint64_t carAudioStream_relinquishMessageBacking(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    carAudioStream_relinquishMessageBacking_cold_1(v3, a2, &v5);
    return v5;
  }

  else
  {
    carAudioStream_relinquishMessageBacking_cold_2();
    return 4294950534;
  }
}

void carAudioStream_relinquishMessageBacking_cold_1(const void *a1, uint64_t a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 464);
  if (v7 && *(DerivedStorage + 176))
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v9 = v8(v7, a2);
    }

    else
    {
      v9 = -12782;
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;

  CFRelease(a1);
}

void carEndpoint_handleStreamSuspended(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleStreamSuspended_block_invoke;
  block[3] = &__block_descriptor_tmp_814;
  block[4] = DerivedStorage;
  block[5] = a4;
  block[6] = a2;
  dispatch_async(v7, block);
}

void __carEndpoint_handleStreamSuspended_block_invoke_2(uint64_t a1, const void *a2)
{
  v10 = 0;
  if (FigCFEqual())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRetain(v4);
    }

    CFRetain(a2);
    v5 = *(*(a1 + 48) + 528);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_handleStreamSuspended_block_invoke_3;
    block[3] = &__block_descriptor_tmp_812;
    block[4] = *(a1 + 40);
    block[5] = a2;
    dispatch_async(v5, block);
    v6 = CFGetAllocator(*(a1 + 40));
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x277CC18B0], v6, &v10);
    }

    if (FigCFEqual())
    {
      *(*(a1 + 48) + 448) = 0;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void __carEndpoint_handleStreamSuspended_block_invoke_3(uint64_t a1)
{
  carEndpoint_updateStreamResumedTimeIfNeeded(*(a1 + 32), *(a1 + 40), *(*(a1 + 40) + 52));
  v2 = *(a1 + 40);
  *(v2 + 56) = 0;
  v3 = CFStringCompare(*(v2 + 24), @"StreamInfo_Screen", 0);
  v4 = *(a1 + 40);
  if (v3 == kCFCompareEqualTo && (v4[4] & 0x8000000000000000) == 0)
  {
    carEndpoint_powerLogDisplay(*(a1 + 32), v4, 0);
    v4 = *(a1 + 40);
  }

  CFRelease(v4);
  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __carAudioStream_suspend_block_invoke(uint64_t *a1)
{
  carAudioStream_suspendInternal(a1[4], 0);
  CFRetain(a1[4]);
  v2 = *(a1[5] + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_suspend_block_invoke_2;
  block[3] = &__block_descriptor_tmp_76;
  v3 = a1[4];
  v4 = a1[7];
  block[4] = a1[6];
  block[5] = v3;
  block[6] = v4;
  dispatch_async(v2, block);
  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(a1[4]);
}

void APCarPlayAnalyticsStopCollections(uint64_t a1)
{
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAnalyticsStopCollections_cold_1(a1);
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayAnalyticsStopCollections_block_invoke;
  block[3] = &__block_descriptor_tmp_30_1;
  block[4] = a1;
  dispatch_sync(v2, block);
}

void __carAudioStream_suspendInternal_block_invoke_2(uint64_t a1)
{
  v1 = a1 + 32;
  *(*(a1 + 32) + 424) = 0;
  APSAudioStats_TerminateSession();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    __carAudioStream_suspendInternal_block_invoke_2_cold_1();
  }

  v2 = *(*v1 + 504);
  if (v2)
  {
    CFRelease(v2);
    *(*v1 + 504) = 0;
  }
}

uint64_t apsession_sendTeardownWithStreamDescArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  theDict = 0;
  apsession_copyTransportControlStream(a1, &v12);
  v5 = v12;
  if (!v12)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"streams", a2);
    }

    else
    {
      FigSimpleMutexLock();
      *(DerivedStorage + 309) = 1;
      FigSimpleMutexUnlock();
    }

    if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (v8)
    {
      APSLogErrorAt();
    }

    else if (!a2 && theDict)
    {
      FigSimpleMutexLock();
      v9 = *(DerivedStorage + 504);
      Value = CFDictionaryGetValue(theDict, @"teardownMetricsPayload");
      *(DerivedStorage + 504) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v7);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294895476;
  }

  CFRelease(v5);
  return v8;
}

void carAudioStream_teardownAudioProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[24];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[24] = 0;
  }

  v2 = DerivedStorage[46];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[46] = 0;
  }

  v3 = DerivedStorage[54];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[54] = 0;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (CMSimpleQueueGetCount(*(v4 + 408)) >= 1)
  {
    while (1)
    {
      v5 = CMSimpleQueueDequeue(*(v4 + 408));
      if (!v5)
      {
        break;
      }

      CFRelease(v5);
    }
  }

  v6 = DerivedStorage[51];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[51] = 0;
  }
}

uint64_t carplaysource_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (gLogCategory_APAudioSourceCarPlay <= 30 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
    {
      carplaysource_Suspend_cold_1();
    }

    if (*(DerivedStorage + 232) >= 2u)
    {
      if (gLogCategory_APAudioSourceCarPlay > 50)
      {
        goto LABEL_16;
      }

      if (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    if (gLogCategory_APAudioSourceCarPlay <= 50)
    {
      if (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize())
      {
        carplaysource_Suspend_cold_2();
      }

      if (gLogCategory_APAudioSourceCarPlay <= 50 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
      {
        carplaysource_Suspend_cold_3();
      }
    }
  }

LABEL_16:
  *DerivedStorage = 0;
  return 0;
}

uint64_t carEndpoint_updateStreamResumedTimeIfNeeded(uint64_t a1, uint64_t a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(a2 + 56))
  {
    if (a3)
    {
      if (*(a2 + 48))
      {
        result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx();
        if (!result)
        {
          *(a2 + 60) = *(a2 + 60);
          if (gLogCategory_APEndpointCarPlay <= 50)
          {
            if (gLogCategory_APEndpointCarPlay != -1)
            {
              return OUTLINED_FUNCTION_2();
            }

            result = OUTLINED_FUNCTION_4();
            if (result)
            {
              return OUTLINED_FUNCTION_2();
            }
          }
        }
      }
    }
  }

  return result;
}

void manager_removeEndpointForTransportDeviceIfNeeded(uint64_t a1, const void *a2, const __CFDictionary *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (*(DerivedStorage + 216) != a3)
    {
      if (CFDictionaryGetValue(a3, a2))
      {
        if (a4)
        {
          CFSetAddValue(*(v8 + 184), a2);
        }

        if (!APSGetFBOPropertyInt64() && CFSetContainsValue(*(v8 + 184), a2))
        {
          OUTLINED_FUNCTION_25_0();

          manager_removeEndpointForTransportDevice(v9, v10, v11);
          return;
        }
      }

LABEL_19:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    v13 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (CFDictionaryGetValue(*(v13 + 216), a2))
    {
      if (!CFDictionaryGetValue(*(v13 + 176), a2))
      {
        goto LABEL_16;
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15 || (v15(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &cf), !cf))
      {
        CFDictionaryGetValue(*(v13 + 216), a2);
        goto LABEL_16;
      }

      v16 = APSGetFBOPropertyInt64();
      CFDictionaryGetValue(*(v13 + 216), a2);
      if (!v16)
      {
LABEL_16:
        manager_removeShadowEndpointFromUGLWrapper();
        goto LABEL_17;
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_30;
      }
    }

    else if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10()))
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_3();
LABEL_30:
      LogPrintF();
    }

LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_25_0();

  APSLogErrorAt();
}

void epp_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_Finalize_cold_1();
  }

  epp_removeInnerListeners(a1, DerivedStorage[5]);
  v3 = DerivedStorage[8];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[8] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[1] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  FigSimpleMutexDestroy();
  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[5] = 0;
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[6] = 0;
  }

  v8 = DerivedStorage[10];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[10] = 0;
  }

  v9 = DerivedStorage[11];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[11] = 0;
  }

  v10 = DerivedStorage[12];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[12] = 0;
  }

  FigSimpleMutexDestroy();
  v11 = DerivedStorage[31];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[31] = 0;
  }

  v12 = DerivedStorage[36];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[36] = 0;
  }

  v13 = DerivedStorage[40];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[40] = 0;
  }
}

uint64_t epp_removeInnerListeners(uint64_t a1, uint64_t a2)
{
  result = CMNotificationCenterGetDefaultLocalCenter();
  if (a2)
  {
    OUTLINED_FUNCTION_6_1();
    FigNotificationCenterRemoveWeakListener();
    result = APSGetFBOPropertyInt64();
    if (!result)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v4)
      {
        v4(a2, 0);
      }

      v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v5)
      {
        v5(a2, 0);
      }

      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 64);
      if (v8)
      {

        return v8(a2, 0);
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_21(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 2u);
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return CMBaseObjectGetDerivedStorage();
}

void endpoint_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_Finalize_cold_1();
  }

  if (qword_280FB1BF8 != -1)
  {
    endpoint_Finalize_cold_2();
  }

  if (_MergedGlobals_24)
  {
    v3 = *_MergedGlobals_24;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __endpoint_Finalize_block_invoke;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = _MergedGlobals_24;
    v23[5] = a1;
    dispatch_sync(v3, v23);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (*(DerivedStorage + 216))
  {
    if (gLogCategory_APEndpoint <= 100 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_Finalize_cold_3();
    }

    __break(1u);
  }

  else
  {
    FigSimpleMutexLock();
    endpoint_resetActivationState(DerivedStorage + 128);
    endpoint_clearEndpointState();
    v4 = *(DerivedStorage + 440);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 440) = 0;
    }

    v5 = *(DerivedStorage + 448);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 448) = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *(DerivedStorage + 104);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 104) = 0;
    }

    v7 = *(DerivedStorage + 280);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 280) = 0;
    }

    v8 = *(DerivedStorage + 416);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 416) = 0;
    }

    v9 = *(DerivedStorage + 424);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 424) = 0;
    }

    v10 = *(DerivedStorage + 432);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 432) = 0;
    }

    v11 = *(DerivedStorage + 40);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 40) = 0;
    }

    v12 = *(DerivedStorage + 544);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 544) = 0;
    }

    v13 = *(DerivedStorage + 24);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 24) = 0;
    }

    v14 = *(DerivedStorage + 56);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 56) = 0;
    }

    v15 = *(DerivedStorage + 88);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 88) = 0;
    }

    v16 = *(DerivedStorage + 304);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 304) = 0;
    }

    v17 = *(DerivedStorage + 328);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 328) = 0;
    }

    v18 = *(DerivedStorage + 624);
    if (v18)
    {
      _Block_release(v18);
      *(DerivedStorage + 624) = 0;
    }

    v19 = *(DerivedStorage + 16);
    if (v19)
    {
      dispatch_release(v19);
      *(DerivedStorage + 16) = 0;
    }

    v20 = *(DerivedStorage + 8);
    if (v20)
    {
      dispatch_release(v20);
      *(DerivedStorage + 8) = 0;
    }

    v21 = *(DerivedStorage + 576);
    if (v21)
    {
      dispatch_release(v21);
      *(DerivedStorage + 576) = 0;
    }

    v22 = *(DerivedStorage + 608);
    if (v22)
    {
      dispatch_source_cancel(*(DerivedStorage + 608));
      dispatch_release(v22);
      *(DerivedStorage + 608) = 0;
    }

    FigSimpleMutexDestroy();
  }
}

uint64_t endpoint_Finalize_cold_1()
{
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void endpoint_partiallyResetActivationState(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 184) = 0;
  *(a1 + 144) = 0;
  *(a1 + 132) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }
}

void endpoint_resetActivationState(uint64_t a1)
{
  endpoint_partiallyResetActivationState(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 113) = 0;
  *(a1 + 116) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 56) = 0;
  }

  *(a1 + 128) = 0;
  v8 = *(a1 + 120);
  if (v8)
  {
    dispatch_semaphore_signal(v8);
    v9 = *(a1 + 120);
    if (v9)
    {
      dispatch_release(v9);
      *(a1 + 120) = 0;
    }
  }

  v10 = *(a1 + 152);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 152) = 0;
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 160) = 0;
  }

  v12 = *(a1 + 168);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 168) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 176);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

  FigCFDictionaryRemoveAllValues();
  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }
}

void endpoint_clearEndpointState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_clearEndpointState_cold_1();
  }

  v1 = DerivedStorage[59];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[59] = 0;
  }

  v2 = DerivedStorage[58];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[58] = 0;
  }

  v3 = DerivedStorage[57];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[57] = 0;
  }
}

void browserController_browserEventHandlerInternal(uint64_t a1)
{
  if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_browserEventHandlerInternal_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2 > 4)
  {
    if (v2 != 5)
    {
      if (v2 == 7)
      {
        goto LABEL_28;
      }

      if (v2 == 8)
      {
        CFRelease(*a1);
        goto LABEL_28;
      }

LABEL_22:
      if (gLogCategory_APBrowserController <= 60 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_28;
    }

    if (!*(a1 + 24))
    {
      browserController_browserEventHandlerInternal_cold_3();
      goto LABEL_28;
    }

    if (APTransportDeviceCreate())
    {
      browserController_browserEventHandlerInternal_cold_2();
      goto LABEL_28;
    }

    v6 = *a1;
    v7 = *(*a1 + 96);
    if (!v7)
    {
      goto LABEL_28;
    }

LABEL_21:
    v7(0, v6[14]);
    goto LABEL_28;
  }

  if ((v2 - 3) >= 2)
  {
    if (v2 == 1)
    {
      v3 = *(*a1 + 80);
      if (!v3)
      {
        goto LABEL_28;
      }

      v4 = *(*a1 + 112);
      v5 = 1;
      goto LABEL_27;
    }

    if (v2 == 2)
    {
      v3 = *(*a1 + 80);
      if (!v3)
      {
        goto LABEL_28;
      }

      v4 = *(*a1 + 112);
      v5 = 0;
LABEL_27:
      v3(v5, v4);
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 24))
  {
    browserController_browserEventHandlerInternal_cold_5();
    goto LABEL_28;
  }

  if (APTransportDeviceCreate())
  {
    browserController_browserEventHandlerInternal_cold_4();
    goto LABEL_28;
  }

  v6 = *a1;
  v7 = *(*a1 + 88);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_28:
  CFRelease(*a1);
  CFRelease(*(a1 + 8));
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }
}

void manager_handleBrowserAddOrUpdateEvent(const void *a1, void *a2)
{
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  if (!APTransportDeviceIsAssistedDevice())
  {
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v6 = *MEMORY[0x277CBECE8];
      if (APEndpointDescriptionAirPlayCreateWithTransportDevice(*MEMORY[0x277CBECE8], a1, 0, &v35))
      {
        manager_handleBrowserAddOrUpdateEvent_cold_4();
      }

      else
      {
        v7 = manager_areEndpointsPresent();
        if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          manager_handleBrowserAddOrUpdateEvent_cold_5();
        }

        v8 = v35;
        CMBaseObjectGetDerivedStorage();
        if (APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || !manager_deviceIsAllowed(a2, v8))
        {
          manager_handleBrowserAddOrUpdateEvent_cold_8();
        }

        else
        {
          cf = 0;
          CMBaseObject = APEndpointDescriptionGetCMBaseObject(v35);
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v10 || v10(CMBaseObject, @"TransportDevice", v6, &cf))
          {
            v22 = 1;
          }

          else
          {
            IsLegacyPresent = APTransportDeviceIsLegacyPresent();
            v12 = APSGetFBOPropertyInt64();
            IsModernPresent = APTransportDeviceIsModernPresent();
            v14 = APSGetFBOPropertyInt64();
            v15 = APSGetFBOPropertyInt64();
            if (v15)
            {
              v16 = v15;
              v17 = APSCanSendToAltReceiver();
              v18 = -64;
              if (!v17)
              {
                v18 = -48;
              }

              if ((v18 & v16) != 0)
              {
                goto LABEL_101;
              }
            }

            APSGetFBOPropertyInt64();
            if (!APTransportDeviceHasMinimumRelationship())
            {
LABEL_101:
              v22 = 1;
            }

            else
            {
              if (IsLegacyPresent)
              {
                v19 = 0;
              }

              else
              {
                v19 = v14 == 0;
              }

              v20 = !v19;
              if (IsModernPresent && (v20 & 1) != 0 || (v21 = APSGetFBOPropertyInt64(), IsModernPresent) && v21)
              {
                v22 = 0;
              }

              else
              {
                if (v12 | v14)
                {
                  v23 = 1;
                }

                else
                {
                  v23 = IsLegacyPresent == 0;
                }

                v22 = v23;
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v22)
          {
            if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              manager_handleBrowserAddOrUpdateEvent_cold_7();
            }

            manager_removeAllEndpointsForTransportDeviceIfNeeded();
          }

          else
          {
            IsSelf = APTransportDeviceIsSelf();
            IsModernPresentOnInfra = APTransportDeviceIsModernPresentOnInfra();
            IsPresentOnInfra = APTransportDeviceIsPresentOnInfra();
            if (IsSelf)
            {
              if (*(DerivedStorage + 120))
              {
                if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                {
                  manager_handleBrowserAddOrUpdateEvent_cold_6();
                }

                v27 = manager_handleEndpointEvent(a2, a1, 1, 1, IsModernPresentOnInfra);
                if (*(DerivedStorage + 400) && *(DerivedStorage + 401) && v27 != -72275)
                {
                  manager_handleShadowEndpointEvent(a2, a1, v35, 0, 1, 1);
                }
              }
            }

            else
            {
              v28 = IsPresentOnInfra;
              v29 = APSGetFBOPropertyInt64();
              v30 = APSGetFBOPropertyInt64();
              v31 = v30 != 0;
              v32 = *(DerivedStorage + 396);
              if ((v32 == 4 || v32 == 7 || v32 == 13) && !v28)
              {
                v31 = 0;
              }

              v33 = 0;
              if (v29 && IsModernPresentOnInfra)
              {
                v33 = *(DerivedStorage + 402) == 0;
              }

              if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              manager_handleEndpointEvent(a2, a1, 0, 0, v31);
              v34 = manager_handleEndpointEvent(a2, a1, 1, 0, v33);
              if (*(DerivedStorage + 400) && *(DerivedStorage + 401) && v34 != -72275)
              {
                manager_handleShadowEndpointEvent(a2, a1, v35, 0, 0, v33);
              }

              if (v31 || v33)
              {
                manager_gatherDeviceMetrics(a2, v35);
              }
            }
          }
        }

        if (v7 != manager_areEndpointsPresent())
        {
          if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_handleBrowserAddOrUpdateEvent_cold_9();
          }

          manager_postEndpointPresentChangedNotification();
        }
      }
    }

    FigSimpleMutexUnlock();
    goto LABEL_79;
  }

  if (APEndpointCreateWithTransportDevice(*MEMORY[0x277CBECE8], a1, *(DerivedStorage + 312), a2, 0, &v36))
  {
    manager_handleBrowserAddOrUpdateEvent_cold_1();
LABEL_79:
    v5 = 0;
    goto LABEL_80;
  }

  v5 = APTransportDeviceCopyAssistedInfo();
  if (v5)
  {
    if (manager_injectEndpoint(a2, v5, a1, v36))
    {
      manager_handleBrowserAddOrUpdateEvent_cold_2();
    }

    else if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    manager_handleBrowserAddOrUpdateEvent_cold_3();
  }

LABEL_80:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APEndpointDescriptionAirPlayCreateWithTransportDevice(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_7();
    return 4294895545;
  }

  APEndpointDescriptionGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_1();
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigSimpleMutexCreate();
  *DerivedStorage = v8;
  if (!v8)
  {
    v14 = 4294895546;
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_6();
    return v14;
  }

  SNPrintF();
  v9 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 96) = v9;
  if (!v9)
  {
    v14 = 4294895546;
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_5();
    return v14;
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 112) = Value;
  *(DerivedStorage + 120) = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 121) = APSSettingsIsFeatureEnabled();
  if (!a2)
  {
    *(DerivedStorage + 8) = 0;
LABEL_12:
    v13 = APAdvertiserInfoCreate();
    if (v13)
    {
      v14 = v13;
      APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_3();
      return v14;
    }

    goto LABEL_13;
  }

  v11 = CFRetain(a2);
  *(DerivedStorage + 8) = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  AdvertiserInfo = APTransportDeviceGetAdvertiserInfo();
  *(DerivedStorage + 16) = AdvertiserInfo;
  if (!AdvertiserInfo)
  {
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_2(&v16);
    return v16;
  }

  CFRetain(AdvertiserInfo);
LABEL_13:
  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexLock();
    CMBaseObjectGetDerivedStorage();
    if (airPlayDescription_hasFeatureInternal(0))
    {
      *(DerivedStorage + 104) = APAdvertiserInfoCopyProperty();
    }

    FigSimpleMutexUnlock();
    v14 = 0;
    *a4 = 0;
  }

  else
  {
    APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_4();
    return 4294895543;
  }

  return v14;
}

uint64_t APEndpointDescriptionGetClassID()
{
  if (_MergedGlobals_11 != -1)
  {
    APEndpointDescriptionGetClassID_cold_1();
  }

  return qword_280FB1AE8;
}

BOOL manager_areEndpointsPresent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFDictionaryGetCount(*(DerivedStorage + 168)) > 0 || *(DerivedStorage + 96) != 0;
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_areEndpointsPresent_cold_1();
  }

  return v1;
}

uint64_t airplayDescription_getAssistedModeType()
{
  CMBaseObjectGetDerivedStorage();
  v0 = APTransportDeviceCopyAssistedInfo();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFDictionaryContainsKey(v0, @"AssistedInstanceName"))
  {
    v2 = 1;
  }

  else if (CFDictionaryContainsKey(v1, @"IsP2P"))
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  CFRelease(v1);
  return v2;
}

uint64_t airPlayDescription_isDeviceOfSubType()
{
  OUTLINED_FUNCTION_9_8();
  v4 = 0;
  if (v0)
  {
    airPlayDescription_copyDeviceSubType(v1, &v4);
    v2 = v4;
    v0 = FigCFEqual();
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return v0;
}

uint64_t manager_deviceIsAllowed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    manager_deviceIsAllowed_cold_4();
    return 0;
  }

  v4 = DerivedStorage;
  v5 = MEMORY[0x277CBECE8];
  v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (*(DerivedStorage + 104))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    v42 = 0;
    cf = 0;
    if (*(v7 + 104))
    {
      v8 = v7;
      v9 = *v5;
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(a2);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(CMBaseObject, @"DeviceID", v9, &cf);
      }

      v12 = APEndpointDescriptionGetCMBaseObject(a2);
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, @"Name", v9, &v42);
      }

      v14 = CFGetHardwareAddress();
      if (v14)
      {
        v15 = v14;
        v16 = CFGetTypeID(*(v8 + 104));
        if (v16 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(*(v8 + 104));
          v18 = Count - 1;
          if (Count < 1)
          {
            v21 = 0;
          }

          else
          {
            v19 = 0;
            do
            {
              CFArrayGetValueAtIndex(*(v8 + 104), v19);
              v20 = CFGetHardwareAddress();
              v21 = v20 == v15;
            }

            while (v20 != v15 && v18 != v19++);
            v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
          }
        }

        else
        {
          v21 = v15 == CFGetHardwareAddress();
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 1;
    }

    v23 = v6[454];
    if (v23 <= 20 && (v23 != -1 || _LogCategory_Initialize()))
    {
      manager_deviceIsAllowed_cold_1();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v21)
    {
      return 1;
    }

    if (*(v4 + 112))
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!*(DerivedStorage + 112))
  {
    return 1;
  }

LABEL_33:
  v25 = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  cf = 0;
  v26 = *v5;
  if (*(v25 + 112))
  {
    v27 = v25;
    v28 = APEndpointDescriptionGetCMBaseObject(a2);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29 && (v29(v28, @"Name", v26, &cf), cf))
    {
      v30 = CFGetTypeID(*(v27 + 112));
      if (v30 != CFArrayGetTypeID())
      {
        v24 = CFEqual(cf, *(v27 + 112));
        goto LABEL_50;
      }

      v31 = CFArrayGetCount(*(v27 + 112));
      if (v31 >= 1)
      {
        v32 = v31;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 112), 0);
        if (!CFEqual(cf, ValueAtIndex))
        {
          v34 = 1;
          do
          {
            v35 = v34;
            if (v32 == v34)
            {
              break;
            }

            v36 = CFArrayGetValueAtIndex(*(v27 + 112), v34);
            v37 = CFEqual(cf, v36);
            v34 = v35 + 1;
          }

          while (!v37);
          v24 = v35 < v32;
          goto LABEL_50;
        }

        goto LABEL_39;
      }
    }

    else
    {
      manager_deviceIsAllowed_cold_2();
    }

    v24 = 0;
    goto LABEL_50;
  }

LABEL_39:
  v24 = 1;
LABEL_50:
  v38 = APEndpointDescriptionGetCMBaseObject(a2);
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v39)
  {
    v39(v38, @"DeviceID", v26, &v42);
  }

  v40 = v6[454];
  if (v40 <= 20 && (v40 != -1 || _LogCategory_Initialize()))
  {
    manager_deviceIsAllowed_cold_3();
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t airPlayDescription_modelHasPrefix(const void *a1, const __CFString *a2)
{
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  if (!a2)
  {
    airPlayDescription_modelHasPrefix_cold_2();
    return 0;
  }

  CFGetAllocator(a1);
  airPlayDescription_copyModel(a1, &theString);
  v4 = theString;
  if (!theString)
  {
    airPlayDescription_modelHasPrefix_cold_1();
    return 0;
  }

  HasPrefix = CFStringHasPrefix(theString, a2);
  CFRelease(v4);
  return HasPrefix;
}

uint64_t airPlayDescription_copyModel(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  v5 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(a1, @"model", &v5);
  result = v5;
  if (!v5)
  {
    result = APAdvertiserInfoCopyProperty();
    if (!result)
    {
      result = CFRetain(@"AirPort4,102");
    }
  }

  *a2 = result;
  return result;
}

CFTypeRef airPlayDescription_copyDeviceSubType(const void *a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (PropertyInt64Sync > 3)
  {
    switch(PropertyInt64Sync)
    {
      case 6:
        v5 = MEMORY[0x277CC1A00];
        goto LABEL_16;
      case 5:
        v5 = MEMORY[0x277CC19F8];
        goto LABEL_16;
      case 4:
        v5 = MEMORY[0x277CC19C8];
        goto LABEL_16;
    }
  }

  else
  {
    switch(PropertyInt64Sync)
    {
      case 1:
        v5 = MEMORY[0x277CC19E0];
        goto LABEL_16;
      case 2:
        v5 = MEMORY[0x277CC19D0];
        goto LABEL_16;
      case 3:
        v5 = MEMORY[0x277CC19E8];
        goto LABEL_16;
    }
  }

  if (airPlayDescription_modelHasPrefix(a1, @"AppleTV"))
  {
    v5 = MEMORY[0x277CC19A0];
  }

  else if (airPlayDescription_modelHasPrefix(a1, @"AudioAccessory"))
  {
    v5 = MEMORY[0x277CC19C0];
  }

  else if (airPlayDescription_isThirdPartyDevice(a1))
  {
    isThirdPartyTVFamily = airPlayDescription_isThirdPartyTVFamily(a1);
    v5 = MEMORY[0x277CC19E0];
    if (!isThirdPartyTVFamily)
    {
      v5 = MEMORY[0x277CC19D8];
    }
  }

  else
  {
    v5 = MEMORY[0x277CC19F0];
  }

LABEL_16:
  result = CFRetain(*v5);
  *a2 = result;
  return result;
}

BOOL airPlayDescription_isThirdPartyTVFamily(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  isThirdPartyDevice = airPlayDescription_isThirdPartyDevice(a1);
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
  return isThirdPartyDevice && hasFeatureInternal != 0;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time2, uint64_t a8, CMTime *time1, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 time2a, uint64_t time2_16, uint64_t a16, __int128 time1a, uint64_t time1_16, uint64_t a19, __int128 a20, uint64_t a21)
{
  time1a = *v21;
  time1_16 = *(v21 + 2);
  time2a = a20;
  time2_16 = a21;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t browserController_browserEventHandler(const void *a1, int a2, const void *a3, CFTypeRef cf)
{
  CFRetain(cf);
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

void manager_removeAllEndpointsForTransportDeviceIfNeeded()
{
  OUTLINED_FUNCTION_3_7();
  CMBaseObjectGetDerivedStorage();
  v0 = OUTLINED_FUNCTION_12_4();
  manager_removeEndpointForTransportDeviceIfNeeded(v0, v1, v2, 1);
  v3 = OUTLINED_FUNCTION_12_4();
  manager_removeEndpointForTransportDeviceIfNeeded(v3, v4, v5, 1);
  v6 = OUTLINED_FUNCTION_12_4();

  manager_removeEndpointForTransportDeviceIfNeeded(v6, v7, v8, 1);
}

BOOL airplayDescription_canBeRemoteControlled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  airplayDescription_copyStatusFlagsContainsFlag(a1, 8, &cf);
  v3 = airPlayDescription_isSourceVersionAtLeast(a1, 0x365948u) && airPlayDescription_hasFeatureInternal(a1) != 0;
  v4 = *(DerivedStorage + 121);
  if (*(DerivedStorage + 121))
  {
    v4 = airPlayDescription_isDeviceOfSubType() != 0;
  }

  if (((v3 | v4) & 1) != 0 && !airPlayDescription_hasFeatureInternal(a1))
  {
    v6 = cf;
    v5 = CFBooleanGetValue(cf) == 0;
    if (!v6)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v6 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v6);
  }

  return v5;
}

uint64_t APEndpointUpdateWithTransportDevice(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APEndpointUpdateWithTransportDevice_cold_5();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30)
  {
    if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
    {
      APEndpointUpdateWithTransportDevice_cold_1();
    }

    if (gLogCategory_APEndpoint <= 10 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      APEndpointUpdateWithTransportDevice_cold_2();
    }
  }

  v4 = DerivedStorage[27];
  if (v4 && (v5 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0 && v5(v4) && APSGetFBOPropertyInt64())
  {
    v6 = DerivedStorage[33];
    DerivedStorage[33] = a2;
    CFRetain(a2);
    if (v6)
    {
      CFRelease(v6);
    }

    if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      APEndpointUpdateWithTransportDevice_cold_3();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v7 = 4294895021;
  }

  else
  {
    v8 = DerivedStorage[5];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      v10 = v9(v8, a2);
      if (!v10)
      {
        if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          APEndpointUpdateWithTransportDevice_cold_4();
        }

        v7 = 0;
        goto LABEL_26;
      }

      v7 = v10;
    }

    else
    {
      v7 = 4294954514;
    }

    APSLogErrorAt();
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airPlayDescription_UpdateWithTransportDevice(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_UpdateWithTransportDevice_cold_1();
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_13:
    airPlayDescription_UpdateWithTransportDevice_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_5:
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) != a2)
  {
    v5 = DerivedStorage;
    AdvertiserInfo = APTransportDeviceGetAdvertiserInfo();
    v7 = *(v5 + 8);
    *(v5 + 8) = a2;
    CFRetain(a2);
    if (v7)
    {
      CFRelease(v7);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"ChangeSource", @"ChangeSource_TransportDeviceUpdate");
    airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(a1, AdvertiserInfo, *(v5 + 80), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  v43[0] = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  cf = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  airPlayDescription_copyClusterInfoInternal(a1, v43, &v41, &v39, &cf, &v37, &v35, 0, &v31, &v29);
  v8 = APAdvertiserInfoCopyProperty();
  v9 = APAdvertiserInfoCopyProperty();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v10 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  airPlayDescription_copyClusterInfoInternal(a1, &v42, &v40, &v38, &v32, &v36, &v34, 0, &v30, &v28);
  v12 = APAdvertiserInfoCopyProperty();
  v13 = APAdvertiserInfoCopyProperty();
  v14 = CFObjectGetPropertyInt64Sync();
  if (FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual())
  {
    v25 = 1;
  }

  else
  {
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = 0;
  }

  v24 = FigCFEqual();
  if (!v24 && gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual() && FigCFEqual())
  {
    v23 = 1;
  }

  else
  {
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v23 = 0;
  }

  v15 = (PropertyInt64Sync >> 22) & 1;
  v16 = (v14 >> 22) & 1;
  if (FigCFEqual() && FigCFEqual())
  {
    v17 = 1;
  }

  else
  {
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = 0;
  }

  if (v15 != v16 && gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients_cold_1();
  }

  if (a4)
  {
    v18 = v12;
    v19 = v13;
    v20 = v8;
    v21 = v9;
    v22 = MEMORY[0x277CBED28];
    if ((v25 & 1) == 0)
    {
      CFDictionarySetValue(a4, @"ClusterInfoDidChange", *MEMORY[0x277CBED28]);
    }

    if (!v24)
    {
      CFDictionarySetValue(a4, @"ClusterLeaderDidChange", *v22);
    }

    if ((v23 & 1) == 0)
    {
      CFDictionarySetValue(a4, @"GroupInfoDidChange", *v22);
    }

    if ((v17 & 1) == 0)
    {
      CFDictionarySetValue(a4, @"RoomInfoDidChange", *v22);
    }

    if (v15 != v16)
    {
      CFDictionarySetValue(a4, @"UGLSessionActiveDidChange", *v22);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v9 = v21;
    v8 = v20;
    v13 = v19;
    v12 = v18;
  }

  if (v43[0])
  {
    CFRelease(v43[0]);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

void airPlayDescription_copyClusterInfoInternal(uint64_t a1, void *a2, void *a3, void *a4, void *a5, CFTypeRef *a6, void *a7, void *a8, void *a9, void *a10)
{
  v66 = 0;
  v65 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  v61 = a2;
  if (a10)
  {
    *a10 = 0;
  }

  if (*(DerivedStorage + 8) && !APTransportDeviceIsModernPresentOnInfra())
  {
    v36 = 0;
    v26 = 0;
    v37 = 0;
    cf = 0;
    v32 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_116;
  }

  v54 = a3;
  v55 = a4;
  v57 = a6;
  v58 = a5;
  v59 = a7;
  v60 = a8;
  CMBaseObjectGetDerivedStorage();
  v19 = CMBaseObjectGetDerivedStorage();
  v20 = APSIsPermanentSpeakerGroupingEnabled();
  v21 = MEMORY[0x277CBECE8];
  if (!v20 || (v22 = *(v19 + 80)) == 0)
  {
LABEL_40:
    v68 = 0;
    CMBaseObjectGetDerivedStorage();
    v24 = OUTLINED_FUNCTION_5_16();
    if (v24)
    {
      OUTLINED_FUNCTION_2_26();
      OUTLINED_FUNCTION_6_12();
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      OUTLINED_FUNCTION_2_26();
      OUTLINED_FUNCTION_6_12();
      CFObjectGetPropertyInt64Sync();
      v28 = OUTLINED_FUNCTION_5_16();
      if (v28 || PropertyInt64Sync != 1 || (v28 = CFStringCreateWithFormat(*v21, 0, @"%d", 0)) != 0)
      {
        v26 = OUTLINED_FUNCTION_5_16();
        if (!v26 && PropertyInt64Sync == 1)
        {
          v67 = 0;
          airplayDescription_copyStatusFlagsContainsFlag(a1, 0x2000, &v67);
          v34 = v67;
          if (v67)
          {
            CFBooleanGetValue(v67);
            CFRelease(v34);
          }

          if (!airPlayDescription_isDeviceOfSubType())
          {
            airPlayDescription_isDeviceOfSubType();
          }

          v35 = APSGetFabricatedMemberIDForHTGroup();
          v26 = CFRetain(v35);
        }

        v68 = OUTLINED_FUNCTION_7_10();
        if (!v68)
        {
          cf = OUTLINED_FUNCTION_5_16();
LABEL_69:
          v32 = 0;
          goto LABEL_70;
        }

        CFRelease(v24);
        if (v26)
        {
          CFRelease(v26);
        }

        if (!v28)
        {
          v24 = 0;
          v26 = 0;
          goto LABEL_68;
        }

        v43 = v28;
      }

      else
      {
        APSLogErrorAt();
        v43 = v24;
      }

      CFRelease(v43);
      v24 = 0;
    }

    v26 = 0;
    v28 = 0;
LABEL_68:
    cf = 0;
    goto LABEL_69;
  }

  Value = CFDictionaryGetValue(v22, *MEMORY[0x277CEA2C8]);
  if (Value)
  {
    v24 = CFRetain(Value);
  }

  else
  {
    v24 = 0;
  }

  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  v25 = CFDictionaryGetValue(*(v19 + 80), *MEMORY[0x277CEA2A8]);
  if (!v25)
  {
    v26 = 0;
LABEL_33:
    APSLogErrorAt();
    v28 = 0;
    goto LABEL_34;
  }

  v26 = CFRetain(v25);
  if (!v26)
  {
    goto LABEL_33;
  }

  v27 = CFStringCreateWithFormat(*v21, 0, @"%d", 0);
  if (!v27)
  {
    goto LABEL_33;
  }

  v28 = v27;
  if (OUTLINED_FUNCTION_7_10())
  {
LABEL_34:
    if (v24)
    {
      CFRelease(v24);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_40;
  }

  v29 = CFDictionaryGetValue(*(v19 + 80), *MEMORY[0x277CEA2B0]);
  if (v29)
  {
    cf = CFRetain(v29);
  }

  else
  {
    cf = 0;
  }

  v31 = CFDictionaryGetValue(*(v19 + 80), *MEMORY[0x277CEA2D8]);
  if (v31)
  {
    v32 = CFRetain(v31);
  }

  else
  {
    v32 = 0;
  }

  v33 = CFDictionaryGetValue(*(v19 + 80), *MEMORY[0x277CEA2D0]);
  if (v33)
  {
    v64 = CFRetain(v33);
    goto LABEL_71;
  }

LABEL_70:
  v64 = 0;
LABEL_71:
  v62 = v28;
  v56 = v24;
  if (v24)
  {
    v44 = v32;
    v45 = CFRetain(v24);
    APSPersistentGroupTypeToClusterType();
    Int64 = CFNumberCreateInt64();
    v47 = CFNumberCreateInt64();
    v48 = CFRetain(v26);
    CFGetInt64Ranged();
    APSGetClusterModelForPersistentGroupModel();
    v40 = CFStringCreateF();
    v49 = CFEqual(v48, @"0");
    v50 = MEMORY[0x277CBED28];
    if (!v49)
    {
      v50 = MEMORY[0x277CBED10];
    }

    v65 = CFRetain(*v50);
    if (cf)
    {
      v41 = CFRetain(cf);
      v39 = 0;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = 0;
  }

  else
  {
    v42 = OUTLINED_FUNCTION_5_16();
    if (!v42)
    {
      v36 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v37 = v28;
      v38 = v64;
      goto LABEL_116;
    }

    v44 = v32;
    v39 = OUTLINED_FUNCTION_5_16();
    airplayDescription_copyStatusFlagsContainsFlag(a1, 0x2000, &v66);
    v45 = CFRetain(v42);
    v47 = CFNumberCreateInt64();
    Int64 = CFNumberCreateInt64();
    if (airPlayDescription_hasFeatureInternal(a1))
    {
      airplayDescription_copyStatusFlagsContainsFlag(a1, 0x200000, &v65);
      v51 = v66;
    }

    else
    {
      v51 = v66;
      if (v66)
      {
        v52 = CFRetain(v66);
      }

      else
      {
        v52 = 0;
      }

      v65 = v52;
    }

    if (CFBooleanGetValue(v51))
    {
      v53 = @"0";
    }

    else
    {
      v53 = @"1";
    }

    v48 = CFRetain(v53);
    CFGetInt64Ranged();
    APSGetClusterModelForTightSyncGroupModel();
    v40 = CFStringCreateF();
    v41 = OUTLINED_FUNCTION_5_16();
  }

  if (v61)
  {
    *v61 = v45;
    v45 = 0;
  }

  if (v54)
  {
    *v54 = v47;
    v47 = 0;
  }

  if (v55)
  {
    *v55 = Int64;
    Int64 = 0;
  }

  if (v57)
  {
    *v57 = v65;
    v65 = 0;
  }

  if (v58)
  {
    *v58 = v48;
    v48 = 0;
  }

  if (v59)
  {
    *v59 = v40;
    v40 = 0;
  }

  if (v60)
  {
    *v60 = v41;
    v41 = 0;
  }

  if (a9)
  {
    *a9 = v44;
    v44 = 0;
  }

  if (a10)
  {
    *a10 = v64;
    v64 = 0;
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  v38 = v64;
  if (Int64)
  {
    CFRelease(Int64);
  }

  v36 = v56;
  if (v48)
  {
    CFRelease(v48);
  }

  v32 = v44;
  v37 = v62;
LABEL_116:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v38)
  {
    CFRelease(v38);
  }
}

uint64_t airPlayDescription_copyName(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  *a2 = APAdvertiserInfoCopyProperty();
  return 0;
}

uint64_t manager_handleEndpointEvent(void *a1, const void *a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v12 = 176;
    if (!a3)
    {
      v12 = 168;
    }

    v13 = *(v11 + v12);
    v26 = 0;
    CFSetRemoveValue(*(v11 + 184), a2);
    if (CFDictionaryContainsKey(v13, a2))
    {
      Value = CFDictionaryGetValue(v13, a2);
      if (Value)
      {
        v15 = CFRetain(Value);
      }

      else
      {
        v15 = 0;
      }

      v20 = CMBaseObjectGetDerivedStorage();
      if (*(v20 + 400) && !*(v20 + 401) && IsAnUGLWrapperEndpoint(v15))
      {
        v21 = APEndpointUGLWrapperUpdateWithTransportDevice(v15, a2, 1);
        if (!v21)
        {
          goto LABEL_20;
        }

        v18 = v21;
      }

      else
      {
        v24 = APEndpointUpdateWithTransportDevice(v15, a2);
        if (!v24)
        {
LABEL_20:
          updated = manager_updateEndpointClusterMembershipIfNeeded(a1, v15, 0, 0);
          if (updated)
          {
            v25 = updated;
            manager_handleEndpointEvent_cold_2();
            v18 = v25;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_22;
        }

        v18 = v24;
        manager_handleEndpointEvent_cold_1();
      }

      APSLogErrorAt();
    }

    else
    {
      v19 = manager_createEndpoint(a1, a2, a3, a4, &v26);
      if (!v19)
      {
        v15 = v26;
        manager_addEndpoint(a1, a2, v26, v13);
        goto LABEL_20;
      }

      v18 = v19;
      APSLogErrorAt();
      v15 = v26;
    }

LABEL_22:
    if (v15)
    {
      CFRelease(v15);
    }

    if (v18)
    {
      manager_handleEndpointEvent_cold_3();
    }

    return v18;
  }

  v16 = 176;
  if (!a3)
  {
    v16 = 168;
  }

  v17 = *(DerivedStorage + v16);
  if (CFDictionaryGetValue(v17, a2) && !APSGetFBOPropertyInt64())
  {
    manager_removeEndpointForTransportDevice(a1, v17, a2);
  }

  return 0;
}

void endpoint_refreshFromEndpointDescription(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    goto LABEL_51;
  }

  v7 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49_0();
  VTable = CMBaseObjectGetVTable();
  v10 = MEMORY[0x277CBED28];
  if (*(*(VTable + 8) + 48))
  {
    v11 = OUTLINED_FUNCTION_43_1();
    v12(v11);
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49_0();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_19;
  }

  v13 = OUTLINED_FUNCTION_43_1();
  if (v14(v13))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49_0();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_19;
  }

  v15 = OUTLINED_FUNCTION_43_1();
  if (v16(v15))
  {
    goto LABEL_19;
  }

  v17 = *(v7 + 456);
  *(v7 + 456) = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49_0();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v18 = OUTLINED_FUNCTION_43_1(), v19(v18)))
  {
LABEL_19:
    APSLogErrorAt();
    goto LABEL_20;
  }

  if (!FigCFEqual())
  {
    OUTLINED_FUNCTION_41_1();
    if (v22 ^ v23 | v21 && (v20 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    v24 = *(v7 + 440);
    *(v7 + 440) = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    CFDictionarySetValue(Mutable, @"NameDidChange", *v10);
  }

  if (a2)
  {
    if (CFDictionaryGetInt64())
    {
      CFDictionarySetValue(Mutable, @"ClusterInfoDidChange", *v10);
      if (!*(v7 + 48) && *(v7 + 144) == 2)
      {
        endpoint_updateStatus(a1, -72277, 1);
      }
    }

    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
  }

  v25 = APSGetFBOPropertyInt64();
  v26 = CMBaseObjectGetDerivedStorage();
  if (*(v26 + 496) != v25)
  {
    v27 = v26;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *(v27 + 496) = v25;
    endpoint_updateCurrentVolumeControlType();
  }

  *(v7 + 504) = APSGetFBOPropertyInt64();
  OUTLINED_FUNCTION_40_1();
  if (v22 ^ v23 | v21)
  {
    if (v28 != -1 || _LogCategory_Initialize())
    {
      APSGetAPMuteControlTypeName();
      LogPrintF();
    }

    OUTLINED_FUNCTION_40_1();
    if (v22 ^ v23 | v21 && (v29 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (a3)
  {
    *a3 = Mutable;
LABEL_51:
    Mutable = 0;
  }

LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_46_0();
}

__n128 OUTLINED_FUNCTION_55@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 144) = *a1;
  *(v1 - 128) = a1[1].n128_u64[0];
  return result;
}

uint64_t airPlayDescription_copyPairingPeerCUSystemIdentifier(uint64_t a1, uint64_t *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 40);
  if (v3)
  {
    result = CFRetain(v3);
  }

  else
  {
    result = APAdvertiserInfoCopyProperty();
  }

  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyVolumeControlTypeEx(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_hasFeatureInternal(a1))
  {
    v5 = airPlayDescription_copyCarPlayVideoFeaturesInternal(a1, &cf);
  }

  else
  {
    v5 = airPlayDescription_copyFeaturesInternal(a1, &cf);
  }

  v6 = v5;
  if (v5)
  {
    airPlayDescription_copyVolumeControlTypeEx_cold_1();
    goto LABEL_16;
  }

  if (APSFeaturesHasFeature() || (!APSFeaturesHasFeature() ? (v7 = APSFeaturesHasFeature() != 0) : (v7 = 2), APSFeaturesHasFeature() || v7))
  {
    if (gLogCategory_APEndpointDescriptionAirPlay > 30 || gLogCategory_APEndpointDescriptionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else
  {
    FigCFDictionaryGetValue();
    FigCFNumberGetSInt32();
    APSVolumeControlTypeToEx();
    if (gLogCategory_APEndpointDescriptionAirPlay > 30 || gLogCategory_APEndpointDescriptionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  LogPrintF();
LABEL_14:
  SInt32 = FigCFNumberCreateSInt32();
  *a3 = SInt32;
  if (SInt32)
  {
    v6 = 0;
  }

  else
  {
    airPlayDescription_copyVolumeControlTypeEx_cold_2();
    v6 = 4294960568;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t airPlayDescription_copyMuteControlType(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 120))
  {
    airPlayDescription_copyEndpointInfoValue(a1, @"muteControlType", &cf);
    SInt64 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFNumberGetTypeID())
      {
        if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyMuteControlType_cold_1();
        }

LABEL_15:
        *a3 = CFRetain(SInt64);
        CFRelease(SInt64);
        return 0;
      }
    }
  }

  if (!airPlayDescription_isThirdPartyTVFamily(a1))
  {
    airPlayDescription_isAppleReceiver(a1);
  }

  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    APSGetAPMuteControlTypeName();
    LogPrintF();
  }

  SInt64 = FigCFNumberCreateSInt64();
  if (SInt64)
  {
    goto LABEL_15;
  }

  airPlayDescription_copyMuteControlType_cold_2();
  return 4294960568;
}

BOOL airPlayDescription_isAppleReceiver(const void *a1)
{
  cf1 = 0;
  CMBaseObjectGetDerivedStorage();
  airPlayDescription_copyDeviceSubType(a1, &cf1);
  v2 = cf1;
  if (!cf1)
  {
    return 0;
  }

  v3 = CFEqual(cf1, *MEMORY[0x277CC19A0]) || CFEqual(v2, *MEMORY[0x277CC19C0]) || CFEqual(v2, *MEMORY[0x277CC19C8]) || CFEqual(v2, *MEMORY[0x277CC19F8]) || CFEqual(v2, *MEMORY[0x277CC1A00]);
  CFRelease(v2);
  return v3;
}

void manager_addEndpoint(void *a1, const void *a2, const void *a3, __CFDictionary *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(a4, a2, a3);
  manager_updateEndpointPSGInfoIfNeeded();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_2();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_6_2();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_6_2();
  FigNotificationCenterAddWeakListener();

  manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a1, 1);
}

uint64_t manager_createEndpoint(uint64_t a1, const void *a2, int a3, int a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v32 = 0;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  if (!Mutable)
  {
    manager_createEndpoint_cold_4();
    v27 = 4294950585;
    goto LABEL_33;
  }

  v14 = *(DerivedStorage + 336);
  if (v14)
  {
    CFDictionaryAddValue(Mutable, @"EventRecorder", v14);
  }

  v15 = *MEMORY[0x277CBED28];
  v16 = *MEMORY[0x277CBED10];
  if (a3)
  {
    v17 = *MEMORY[0x277CBED28];
  }

  else
  {
    v17 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v13, @"IsRemoteControlOnly", v17);
  if (a4)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  CFDictionarySetValue(v13, @"RepresentsLocalDevice", v18);
  if (!(a4 | a3) && *(DerivedStorage + 400))
  {
    value[0] = MEMORY[0x277D85DD0];
    value[1] = 3221225472;
    value[2] = __manager_createEndpoint_block_invoke;
    value[3] = &unk_27849BCB8;
    value[4] = a1;
    CFDictionarySetValue(v13, @"UGLRCServerUpdateCallback", value);
  }

  v19 = APEndpointDescriptionAirPlayCreateWithTransportDevice(v11, a2, 0, &v31);
  if (v19)
  {
    v27 = v19;
    manager_createEndpoint_cold_1();
    goto LABEL_33;
  }

  v20 = APEndpointCreateWithEndpointDescription(v11, v31, *(DerivedStorage + 312), a1, v13, &v32);
  if (v20)
  {
    v27 = v20;
    manager_createEndpoint_cold_2();
    goto LABEL_33;
  }

  if (a3 && a4)
  {
    v21 = *(DerivedStorage + 248);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v24 = v23(CMBaseObject, *MEMORY[0x277CC1488], v21);
      if (!v24)
      {
        goto LABEL_19;
      }

      v27 = v24;
    }

    else
    {
      v27 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_33;
  }

LABEL_19:
  if (!a3 || !*(DerivedStorage + 400) || APSGetFBOPropertyInt64())
  {
LABEL_30:
    v27 = 0;
    *a5 = v32;
    v32 = 0;
LABEL_36:
    CFRelease(v13);
    goto LABEL_37;
  }

  cf = 0;
  if (*(DerivedStorage + 401))
  {
    v27 = 4294950568;
  }

  else
  {
    v25 = APEndpointUGLWrapperCreate(v32, 0, 0, &cf);
    if (!v25)
    {
      v26 = v32;
      v32 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_30;
    }

    v27 = v25;
    manager_createEndpoint_cold_3();
  }

LABEL_33:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v13)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v31)
  {
    CFRelease(v31);
  }

  return v27;
}

CFAllocatorRef OUTLINED_FUNCTION_50_0()
{

  return CFGetAllocator(v0);
}

uint64_t APEndpointCreateWithEndpointDescription(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = 0;
  cf = 0;
  v37 = 0;
  if (!a2)
  {
    APEndpointCreateWithEndpointDescription_cold_9();
LABEL_54:
    v31 = 4294950576;
    goto LABEL_28;
  }

  if (!a6)
  {
    APEndpointCreateWithEndpointDescription_cold_8();
    goto LABEL_54;
  }

  FigEndpointExtendedGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v31 = v12;
    APEndpointCreateWithEndpointDescription_cold_1();
    goto LABEL_28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CFRetain(a2);
  *(DerivedStorage + 32) = a4;
  *(DerivedStorage + 40) = v14;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v14);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v31 = 4294954514;
LABEL_27:
    APSLogErrorAt();
    goto LABEL_28;
  }

  v17 = v16(CMBaseObject, @"Name", a1, &v38);
  if (v17)
  {
    v31 = v17;
    goto LABEL_27;
  }

  v18 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, @"DeviceID", a1, &v37);
  }

  v20 = FigSimpleMutexCreate();
  *(DerivedStorage + 112) = v20;
  if (!v20)
  {
    APEndpointCreateWithEndpointDescription_cold_7();
LABEL_61:
    v31 = 4294950575;
    goto LABEL_28;
  }

  SNPrintF();
  v21 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 576) = v21;
  if (!v21)
  {
    APEndpointCreateWithEndpointDescription_cold_6();
    goto LABEL_61;
  }

  SNPrintF();
  v22 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v22;
  if (!v22)
  {
    APEndpointCreateWithEndpointDescription_cold_5();
    goto LABEL_61;
  }

  SNPrintF();
  v23 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = v23;
  if (!v23)
  {
    APEndpointCreateWithEndpointDescription_cold_4();
    goto LABEL_61;
  }

  SNPrintF();
  v24 = dispatch_queue_create(label, 0);
  *DerivedStorage = v24;
  if (!v24)
  {
    APEndpointCreateWithEndpointDescription_cold_3();
    goto LABEL_61;
  }

  if (a5)
  {
    *(DerivedStorage + 48) = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 49) = CFDictionaryGetInt64() != 0;
    BooleanIfPresent = APSCFDictionaryGetBooleanIfPresent();
    v26 = MEMORY[0x277CBED10];
    if (BooleanIfPresent)
    {
      v27 = *MEMORY[0x277CBED10];
      if (*MEMORY[0x277CBED10])
      {
        v27 = CFRetain(v27);
      }

      *(DerivedStorage + 56) = v27;
    }

    if (APSCFDictionaryGetBooleanIfPresent())
    {
      v28 = *v26;
      if (*v26)
      {
        v28 = CFRetain(v28);
      }

      *(DerivedStorage + 88) = v28;
    }

    if (CFDictionaryContainsKey(a5, @"UGLRCServerUpdateCallback"))
    {
      Value = CFDictionaryGetValue(a5, @"UGLRCServerUpdateCallback");
      *(DerivedStorage + 624) = _Block_copy(Value);
    }
  }

  if (a3)
  {
    v30 = CFRetain(a3);
  }

  else
  {
    v30 = 0;
  }

  *(DerivedStorage + 24) = v30;
  *(DerivedStorage + 50) = 1;
  *(DerivedStorage + 64) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 72) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 80) = APSSettingsGetIntWithOverrideAndDefault();
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    *(DerivedStorage + 51) = APSSettingsIsFeatureEnabled();
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    DeviceClass = 0;
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
  }

  *(DerivedStorage + 96) = DeviceClass;
  endpoint_initializeVolumeDelegateStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  FigSimpleMutexLock();
  endpoint_refreshFromEndpointDescription(cf, 0, 0);
  v31 = v33;
  FigSimpleMutexUnlock();
  if (!v31)
  {
    v34 = *(DerivedStorage + 48);
    if (v34)
    {
      v34 = APSGetFBOPropertyInt64() != 0;
    }

    *(DerivedStorage + 482) = v34;
    if (a5)
    {
      v35 = CFDictionaryGetValue(a5, @"EventRecorder");
      *(DerivedStorage + 104) = v35;
      if (v35)
      {
        CFRetain(v35);
      }
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      CFGetHardwareAddress();
      LogPrintF();
    }

    v31 = 0;
    *a6 = cf;
    cf = 0;
    goto LABEL_47;
  }

  APEndpointCreateWithEndpointDescription_cold_2();
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_47:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v31;
}

uint64_t endpoint_initializeVolumeDelegateStorage()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_initializeVolumeDelegateStorage_cold_1();
  }

  APSVolumeConvertDBToSliderValue();
  *(DerivedStorage + 512) = v1;
  result = APSVolumeConvertDBToSliderValue();
  *(DerivedStorage + 520) = v3;
  *(DerivedStorage + 524) = -998653952;
  *(DerivedStorage + 532) = 0;
  *(DerivedStorage + 516) = 0;
  *(DerivedStorage + 528) = 0;
  return result;
}

uint64_t endpoint_updateCurrentVolumeControlType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (*(DerivedStorage + 496) | 4) != 4 && endpoint_isVideoPlaybackSessionActive() && (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = APSVolumeControlTypeFromEx();
  }

  result = *(DerivedStorage + 492);
  if (v2 != result)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      APSGetAPVolumeControlTypeName();
      APSGetAPVolumeControlTypeName();
      LogPrintF();
    }

    *(DerivedStorage + 492) = v2;
    endpoint_updateIsVolumeAndMuteControlSupported();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

uint64_t endpoint_updateIsVolumeAndMuteControlSupported()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  v2 = *(result + 144) == 2 && *(result + 492) != 0;
  if (*(result + 500) != v2)
  {
    *(result + 500) = v2;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = FigDispatchAsyncPostNotification();
  }

  if (v2)
  {
    v3 = (*(v1 + 492) - 3) < 0xFFFFFFFE;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 508) != v3)
  {
    *(v1 + 508) = v3;
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    if (*(v1 + 51))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_27_0(NSObject *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_signpost_enabled(v3);
}

void manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 || FigCFEqual() || FigCFEqual())
  {
    CFRetain(a1);
    v5 = *(DerivedStorage + 8);

    dispatch_async_f(v5, a1, manager_notifyAvailableEndpointsChangedWithThrottle);
  }
}

void manager_notifyAvailableEndpointsChangedWithThrottle(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = **&MEMORY[0x277CC0898];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v15, HostTimeClock);
  if ((*(DerivedStorage + 44) & 1) != 0 && (time1 = *(DerivedStorage + 32), time2 = v15, CMTimeCompare(&time1, &time2) > 0))
  {
    if (*(DerivedStorage + 56))
    {
      if (gLogCategory_APEndpointManager <= 10 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_notifyAvailableEndpointsChangedWithThrottle_cold_1();
      }
    }

    else
    {
      time2 = *(DerivedStorage + 32);
      rhs = v15;
      CMTimeSubtract(&time1, &time2, &rhs);
      time2 = time1;
      CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      if ((time1.flags & 0x1D) == 1)
      {
        value = time1.value;
        time2 = **&MEMORY[0x277CC08F0];
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          manager_notifyAvailableEndpointsChangedWithThrottle_cold_5();
        }

        else
        {
          if (gLogCategory_APEndpointManager <= 10 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_notifyAvailableEndpointsChangedWithThrottle_cold_3();
          }

          v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 8));
          *(DerivedStorage + 56) = v5;
          if (v5)
          {
            CFRetain(a1);
            v6 = *(DerivedStorage + 56);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke;
            handler[3] = &__block_descriptor_40_e5_v8__0l;
            handler[4] = a1;
            dispatch_source_set_cancel_handler(v6, handler);
            v7 = *(DerivedStorage + 56);
            v10[0] = MEMORY[0x277D85DD0];
            v10[1] = 3221225472;
            v10[2] = __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke_2;
            v10[3] = &__block_descriptor_40_e5_v8__0l;
            v10[4] = a1;
            dispatch_source_set_event_handler(v7, v10);
            v8 = *(DerivedStorage + 56);
            v9 = dispatch_time(0, value);
            dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
            dispatch_resume(*(DerivedStorage + 56));
          }

          else
          {
            manager_notifyAvailableEndpointsChangedWithThrottle_cold_4();
          }
        }
      }

      else
      {
        manager_notifyAvailableEndpointsChangedWithThrottle_cold_2();
      }
    }
  }

  else
  {
    if (gLogCategory_APEndpointManager <= 10 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_notifyAvailableEndpointsChangedWithThrottle_cold_6();
    }

    CFRetain(a1);
    manager_notifyAvailableEndpointsChanged(a1);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t manager_updateEndpointClusterMembershipIfNeeded(void *a1, const void *a2, int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 2))
  {
    return 0;
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_8_4();
  if (APSGetFBOPropertyInt64())
  {
    return 0;
  }

  if (!a3)
  {
    v11 = OUTLINED_FUNCTION_8_4();
    APEndpointCopyClusterInfo(v11, v12, v13, 0, 0, 0, 0, 0);
  }

  Value = CFDictionaryGetValue(*(v9 + 232), a2);
  OUTLINED_FUNCTION_8_4();
  v15 = APSGetFBOPropertyInt64();
  v16 = v15;
  if (a4 && !v15)
  {
    APSLogErrorAt();
    return 0;
  }

  v17 = FigCFEqual();
  if (!Value || (v18 = CFDictionaryGetValue(*(v9 + 240), Value)) == 0)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v19 = CFRetain(v18);
  if (!v19)
  {
LABEL_20:
    v23 = 0;
    v41 = 1;
    goto LABEL_28;
  }

  if (v17)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16 == 0;
  }

  v21 = !v20;
  if (v17)
  {
    v22 = 0;
  }

  else
  {
    v42 = v21;
    v43[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25 && (v25(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], v43), v43[0]))
    {
      Count = CFArrayGetCount(v43[0]);
      if (v43[0])
      {
        CFRelease(v43[0]);
      }
    }

    else
    {
      Count = 0;
    }

    v22 = Count == 1;
    v21 = v42;
  }

  v41 = 0;
  v23 = v22 | a4 | v21;
LABEL_28:
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (v17 && !v23)
  {
    v10 = 0;
  }

  else
  {
    v27 = *MEMORY[0x277CBECE8];
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    if (Mutable)
    {
      v29 = Mutable;
      v30 = CFArrayCreateMutable(v27, 0, MEMORY[0x277CBF128]);
      if (!v30)
      {
        APSLogErrorAt();
        v10 = 4294960568;
        goto LABEL_58;
      }

      v31 = v30;
      if (v23)
      {
        v32 = manager_addClusterSubEndpoints();
        if (v32)
        {
          v10 = v32;
          APSLogErrorAt();
LABEL_57:
          CFRelease(v31);
LABEL_58:
          CFRelease(v29);
          goto LABEL_59;
        }

        v33 = OUTLINED_FUNCTION_12_4();
        manager_removeCluster(v33, v34);
        OUTLINED_FUNCTION_18_2();
        if (!(v36 ^ v37 | v20) || v35 == -1 && !OUTLINED_FUNCTION_4())
        {
LABEL_51:
          CFSetApplyBlock();
          CFArrayGetCount(v31);
          CFArrayApplyBlock();
          manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a1, 1);
          OUTLINED_FUNCTION_18_2();
          if (v36 ^ v37 | v20 && (v39 != -1 || OUTLINED_FUNCTION_4()))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v10 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (v41)
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_12_4();
        manager_removeEndpointFromCluster();
        CFSetAddValue(v29, a2);
        OUTLINED_FUNCTION_18_2();
        if (!(v36 ^ v37 | v20) || v38 == -1 && !OUTLINED_FUNCTION_4())
        {
          goto LABEL_51;
        }
      }

      CFSetGetCount(v29);
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
      goto LABEL_51;
    }

    APSLogErrorAt();
    v10 = 4294960568;
  }

LABEL_59:
  if (v19)
  {
    CFRelease(v19);
  }

  return v10;
}

uint64_t endpoint_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v11 = 0;
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 10 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a4)
  {
    endpoint_CopyProperty_cold_1();
    return 4294950576;
  }

  if (!endpoint_copyStaticProperty(a1, a2, a4, &v11) && !endpoint_copyPropertyFromEndpointDescription(a1, a2, a3, a4, &v11))
  {
    FigSimpleMutexLock();
    endpoint_copyPropertyInternal(a1, a2, a3, a4);
    v11 = v9;
    FigSimpleMutexUnlock();
  }

  result = v11;
  if (v11 > -6728)
  {
    if (v11 == -6727 || !v11)
    {
      return result;
    }
  }

  else if (v11 == -16723 || v11 == -12784)
  {
    return result;
  }

  if (gLogCategory_APEndpoint <= 60)
  {
    if (gLogCategory_APEndpoint != -1 || (v10 = _LogCategory_Initialize(), result = v11, v10))
    {
      LogPrintF();
      return v11;
    }
  }

  return result;
}

uint64_t airPlayDescription_copyDeviceID(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *cStr = 0u;
  v7 = 0u;
  v4 = APAdvertiserInfoCopyProperty();
  if (v4 || (v4 = *(DerivedStorage + 8)) == 0 || (APTransportDeviceGetDiscoveryID(), CFGetInt64(), SNPrintF(), (v4 = CFStringCreateWithCString(0, cStr, 0x8000100u)) != 0))
  {
    *a2 = v4;
  }

  else
  {
    airPlayDescription_copyDeviceID_cold_2();
  }

  return 0;
}

CFTypeRef airplayDescription_copyStatusFlagsContainsFlag(uint64_t a1, int a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v6 = MEMORY[0x277CBED28];
  if ((a2 & ~PropertyInt64Sync) != 0)
  {
    v6 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v6);
  *a3 = result;
  return result;
}

void APEndpointCopyClusterInfo(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16 && (v16(CMBaseObject, @"EndpointDescription", 0, &v22), (v17 = v22) != 0))
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v18)
    {
      v18(v17, a2, &cf, &v20, a5, &v19, a7, a8);
    }

    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    APEndpointCopyClusterInfo_cold_1();
    if (a3)
    {
LABEL_6:
      *a3 = CFGetInt64();
    }
  }

  if (a4)
  {
    *a4 = CFGetInt64();
  }

  if (a6)
  {
    *a6 = CFGetInt64();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t airPlayDescription_CopyClusterInfo(uint64_t a1, void *a2, void *a3, void *a4, void *a5, CFTypeRef *a6, void *a7, void *a8)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  airPlayDescription_copyClusterInfoInternal(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0);

  return FigSimpleMutexUnlock();
}

void manager_handleShadowEndpointEvent(uint64_t a1, const void *a2, uint64_t a3, const void *a4, int a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  v26 = 0;
  v13 = APSGetFBOPropertyInt64();
  if (!a6 || !v13)
  {
    v21 = CFDictionaryGetValue(DerivedStorage[27], a2);
    if (!v21 || (v24 = CFRetain(v21)) == 0)
    {
      manager_handleShadowEndpointEvent_cold_1();
      goto LABEL_40;
    }

    v16 = v24;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      APTransportDeviceGetDiscoveryID();
      LogPrintF();
    }

    manager_removeShadowEndpointFromUGLWrapper();
    goto LABEL_39;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a3);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15 || (v15(CMBaseObject, @"GroupID", *MEMORY[0x277CBECE8], &key), !key))
  {
    manager_handleShadowEndpointEvent_cold_4();
    goto LABEL_40;
  }

  if (FigCFEqual())
  {
    manager_handleShadowEndpointEvent_cold_2();
    goto LABEL_40;
  }

  v16 = CFDictionaryGetValue(DerivedStorage[26], key);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    APTransportDeviceGetDiscoveryID();
    LogPrintF();
  }

  if (v16)
  {
    CFRetain(v16);
    if (a4)
    {
      v17 = APEndpointUGLWrapperUpdateWithRCEndpoint(v16, a4);
      if (v17 != -16725 && v17)
      {
LABEL_38:
        APSLogErrorAt();
        goto LABEL_39;
      }
    }

    else
    {
      v17 = APEndpointUGLWrapperUpdateWithTransportDevice(v16, a2, 0);
      if (v17 != -72275 && v17 != -16725 && v17)
      {
        goto LABEL_38;
      }
    }

    if (v17 != -16725)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v18 = key;
    v19 = CMBaseObjectGetDerivedStorage();
    value = 0;
    v20 = APEndpointUGLWrapperCreate(0, v18, 0, &value);
    if (v20)
    {
      manager_handleShadowEndpointEvent_cold_3(v20, &value);
      goto LABEL_40;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryAddValue(*(v19 + 208), v18, value);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v16 = value;
  }

  if (manager_createEndpoint(a1, a2, 1, a5, &v26))
  {
    APSLogErrorAt();
    v23 = v26;
    if (v26)
    {
LABEL_35:
      CFRelease(v23);
    }
  }

  else
  {
    v22 = CFDictionaryGetValue(DerivedStorage[22], a2);
    v23 = v26;
    APEndpointUGLWrapperAddShadowEndpoint(v16, a2, v26, v22);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      APTransportDeviceGetDiscoveryID();
      LogPrintF();
    }

    CFDictionaryAddValue(DerivedStorage[27], a2, v16);
    if (v23)
    {
      goto LABEL_35;
    }
  }

  if (v16)
  {
LABEL_39:
    CFRelease(v16);
  }

LABEL_40:
  if (key)
  {
    CFRelease(key);
  }
}

void manager_handleShadowEndpointEvent_cold_1()
{
  if (gLogCategory_APEndpointManager <= 30)
  {
    OUTLINED_FUNCTION_3_7();
    if (v0 != -1 || OUTLINED_FUNCTION_10())
    {
      APTransportDeviceGetDiscoveryID();
      OUTLINED_FUNCTION_3();
      LogPrintF();
    }
  }
}

void manager_gatherDeviceMetrics(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (*(DerivedStorage + 264))
  {
    v4 = DerivedStorage;
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(a2);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(CMBaseObject, @"DeviceID", *MEMORY[0x277CBECE8], &value), value))
    {
      if (!CFSetContainsValue(*(v4 + 264), value))
      {
        if (APSGetFBOPropertyInt64())
        {
          ++*(v4 + 360);
        }

        else
        {
          ++*(v4 + 364);
        }

        CFSetAddValue(*(v4 + 264), value);
      }
    }

    else
    {
      APSLogErrorAt();
    }

    if (value)
    {
      CFRelease(value);
    }
  }
}

uint64_t airPlayDescription_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_Finalize_cold_1();
  }

  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[7] = 0;
  }

  v2 = DerivedStorage[9];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[9] = 0;
  }

  v3 = DerivedStorage[13];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[13] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[1] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[5];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[5] = 0;
  }

  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[6] = 0;
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }

  v11 = DerivedStorage[11];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[11] = 0;
  }

  v12 = DerivedStorage[14];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[14] = 0;
  }

  v13 = DerivedStorage[12];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[12] = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return CFObjectControlSync();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return APSSignalErrorAt();
}

void OUTLINED_FUNCTION_5_7()
{

  _Block_object_dispose((v0 - 64), 8);
}

Float64 OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *v14;
  time_16 = *(v14 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return [v26 countByEnumeratingWithState:&a13 objects:&a26 count:16];
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return APAdvertiserInfoCopyProperty();
}

void endpoint_handleEndpointDescriptionChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 120))
  {
    FigSimpleMutexLock();
    endpoint_refreshFromEndpointDescription(a2, a5, &cf);
    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t airPlayDescription_copyMACAddress(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v6 = airPlayDescription_copyDeviceID(a1, &theString);
  if (v6)
  {
    v10 = v6;
    APSLogErrorAt();
    v7 = theString;
    if (!theString)
    {
      return v10;
    }
  }

  else
  {
    v7 = theString;
    if (!theString)
    {
      v10 = 4294895543;
      airPlayDescription_copyMACAddress_cold_4();
      return v10;
    }

    if (CFStringGetCString(theString, buffer, 64, 0x8000100u))
    {
      v8 = TextToHardwareAddress();
      if (v8)
      {
        v10 = v8;
        airPlayDescription_copyMACAddress_cold_1();
      }

      else
      {
        v9 = CFDataCreate(a2, bytes, 6);
        if (v9)
        {
          v10 = 0;
          *a3 = v9;
        }

        else
        {
          airPlayDescription_copyMACAddress_cold_2();
          v10 = 4294895546;
        }
      }
    }

    else
    {
      v10 = 4294895543;
      airPlayDescription_copyMACAddress_cold_3();
    }
  }

  CFRelease(v7);
  return v10;
}

uint64_t APSenderStatsCollectorGetShared()
{
  if (APSenderStatsCollectorGetShared_once != -1)
  {
    APSenderStatsCollectorGetShared_cold_1();
  }

  return APSenderStatsCollectorGetShared_collector;
}

uint64_t emp_shouldAllowCacheableType(int a1)
{
  if (emp_shouldAllowCacheableType_onceToken != -1)
  {
    emp_shouldAllowCacheableType_cold_1();
  }

  switch(a1)
  {
    case 3:
      return emp_shouldAllowCacheableType_allowRemoteControl;
    case 2:
      return emp_shouldAllowCacheableType_allowCluster;
    case 1:
      return emp_shouldAllowCacheableType_allowAirPlay;
  }

  return 0;
}

uint64_t emp_isEndpointCacheable(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (emp_shouldAllowCacheableType(a3))
  {
    if (a3 == 2)
    {
      v7 = *(DerivedStorage + 88);

      return CFDictionaryContainsValue(v7, a2);
    }

    else
    {
      v9 = *(DerivedStorage + 80);

      return CFSetContainsValue(v9, a2);
    }
  }

  else
  {
    emp_isEndpointCacheable_cold_1(a3, a1, &v10);
    return v10;
  }
}

void endpoint_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CC12D8];
  v10 = MEMORY[0x277CC1368];
  v11 = MEMORY[0x277CC1450];
  v12 = MEMORY[0x277CC1370];
  v13 = MEMORY[0x277CC13A0];
  if (*(DerivedStorage + 120) && !CFEqual(a2, *MEMORY[0x277CC1568]) && !CFEqual(a2, *v13) && !CFEqual(a2, *v12) && !CFEqual(a2, *v10) && !CFEqual(a2, *v9) && !CFEqual(a2, *v11))
  {
    goto LABEL_26;
  }

  v14 = CFEqual(a2, *v9);
  v15 = MEMORY[0x277CC12F0];
  if (v14)
  {
    cf = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!*(v16 + 120))
    {
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v16 + 40));
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v21 || v21(CMBaseObject, @"Descriptor", v17, &cf))
      {
        APSLogErrorAt();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_11;
      }

      v22 = FigCFDictionarySetAllValuesFromDictionary();
      OUTLINED_FUNCTION_35_1(v22, *MEMORY[0x277CC1400]);
      OUTLINED_FUNCTION_35_1(v23, *MEMORY[0x277CC13C0]);
      if (*(v16 + 144) == 2)
      {
        OUTLINED_FUNCTION_35_1(v24, *v15);
        OUTLINED_FUNCTION_35_1(v25, *MEMORY[0x277CC1318]);
        OUTLINED_FUNCTION_35_1(v26, *MEMORY[0x277CC1310]);
      }
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    *a4 = Mutable;
LABEL_11:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_26;
  }

  if (CFEqual(a2, *v10))
  {
    Copy = *(DerivedStorage + 448);
    if (!Copy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    Copy = *(DerivedStorage + 456);
    if (Copy)
    {
LABEL_24:
      Copy = CFRetain(Copy);
    }

LABEL_25:
    *a4 = Copy;
LABEL_26:
    OUTLINED_FUNCTION_18_7();
    return;
  }

  if (CFEqual(a2, @"EndpointMetrics"))
  {
    v27 = *(DerivedStorage + 288);
    if (!v27)
    {
      Copy = 0;
      goto LABEL_25;
    }

    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v27);
    if (Copy)
    {
      goto LABEL_25;
    }

LABEL_30:
    APSLogErrorAt();
    goto LABEL_26;
  }

  if (CFEqual(a2, *v11))
  {
    Copy = *(DerivedStorage + 440);
    if (!Copy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, *v12))
  {
    v28 = MEMORY[0x277CBED28];
    v29 = MEMORY[0x277CBED10];
    v30 = *(DerivedStorage + 144) == 2;
    goto LABEL_37;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    cf = 0;
    if (*(DerivedStorage + 144) == 2)
    {
      cf = *(DerivedStorage + 136);
    }

    v31 = OUTLINED_FUNCTION_14_10();
    v33 = CFNumberCreate(v31, kCFNumberSInt64Type, v32);
    *a4 = v33;
    if (v33)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *v13))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 120);
    goto LABEL_52;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 144);
    goto LABEL_52;
  }

  if (CFEqual(a2, @"IsEngaged"))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 263);
    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1498]))
  {
    Copy = *(DerivedStorage + 232);
    if (!Copy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13E8]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 240);
    goto LABEL_52;
  }

  if (CFEqual(a2, @"EnabledFeatures"))
  {
    cf = 0;
    v35 = *(DerivedStorage + 160);
    isURLPlaybackEnabled = endpoint_isURLPlaybackEnabled(a1);
    if (!APEndpointGetEnabledFeatures(v35, isURLPlaybackEnabled, &cf))
    {
      v37 = OUTLINED_FUNCTION_14_10();
      v39 = CFNumberCreate(v37, kCFNumberSInt64Type, v38);
      *a4 = v39;
      if (v39)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14E0]))
  {
    OUTLINED_FUNCTION_18_7();

    endpoint_copyStreams(v40, v41, v42);
    return;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1228]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 484);
    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15C0]) || CFEqual(a2, @"HALVolumeDB"))
  {
    APSVolumeConvertSliderValueToDB();
    LODWORD(cf) = v44;
    v45 = OUTLINED_FUNCTION_14_10();
    v47 = CFNumberCreate(v45, kCFNumberFloatType, v46);
    *a4 = v47;
    if (v47)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC1408]))
  {
    v48 = *(DerivedStorage + 512);
    v49 = 1.0;
    v50 = v48 > 1.0 || v48 < 0.0;
    if (v48 < 0.0 && v48 <= 1.0)
    {
      v49 = 0.0;
    }

    if (v50)
    {
      v48 = v49;
    }

    *&cf = v48;
    v51 = OUTLINED_FUNCTION_14_10();
    v53 = CFNumberCreate(v51, kCFNumberFloatType, v52);
    *a4 = v53;
    if (v53)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15B0]))
  {
    v28 = MEMORY[0x277CBED10];
    v29 = MEMORY[0x277CBED28];
    v30 = *(DerivedStorage + 500) == 0;
LABEL_37:
    if (!v30)
    {
      v28 = v29;
    }

    goto LABEL_39;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15B8]))
  {
    cf = 0;
    if (!endpoint_copyVolumeControlType(a1, &cf))
    {
      v54 = OUTLINED_FUNCTION_14_10();
      v56 = CFNumberCreate(v54, kCFNumberSInt64Type, v55);
      *a4 = v56;
      if (v56)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1448]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 508);
    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13D0]) || CFEqual(a2, *MEMORY[0x277CC13D8]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 516);
    goto LABEL_52;
  }

  if (CFEqual(a2, @"IsHALMuted"))
  {
    if (APEndpointIsHALMuteForUser())
    {
      if (!*(DerivedStorage + 516))
      {
        goto LABEL_119;
      }
    }

    else if (!*(DerivedStorage + 517))
    {
LABEL_119:
      v28 = MEMORY[0x277CBED10];
      goto LABEL_39;
    }

LABEL_106:
    v28 = MEMORY[0x277CBED28];
LABEL_39:
    Copy = *v28;
    goto LABEL_24;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13E0]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 517);
    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1270]))
  {
    v57 = OUTLINED_FUNCTION_29_2();
    endpoint_copyAuthorizationType(v57, v58);
    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14B0]))
  {
    Copy = *(DerivedStorage + 192);
    if (!Copy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, @"EndpointStatus"))
  {
    v59 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 148));
    *a4 = v59;
    if (v59)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1318]))
  {
    if (endpoint_isURLPlaybackEnabled(a1) && APSGetFBOPropertyInt64() > 0)
    {
      goto LABEL_119;
    }

    goto LABEL_106;
  }

  if (CFEqual(a2, *v15))
  {
    if (endpoint_isURLPlaybackEnabled(a1))
    {
      HasFeature = APEndpointDescriptionHasFeature(*(DerivedStorage + 40), 35);
      v28 = MEMORY[0x277CBED28];
      if (HasFeature)
      {
        v28 = MEMORY[0x277CBED10];
      }

      goto LABEL_39;
    }

    goto LABEL_106;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1310]))
  {
    LOBYTE(cf) = 0;
    if (endpoint_isURLPlaybackEnabled(a1))
    {
      endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent();
    }

    goto LABEL_106;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1320]))
  {
    LOBYTE(cf) = 0;
    if (endpoint_isURLPlaybackEnabled(a1) && APSSettingsIsFeatureEnabled())
    {
      endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent();
    }

    goto LABEL_119;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F8]))
  {
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_18_7();

    endpoint_copyIsURLPlaybackEnabled(v61, v62);
    return;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1570]))
  {
    if (!endpoint_isURLPlaybackEnabled(a1))
    {
      goto LABEL_26;
    }

    v64 = CFStringCreateWithFormat(a3, 0, @"%@-%llu", *(DerivedStorage + 448), *(DerivedStorage + 128));
    *a4 = v64;
    if (v64)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, @"EndpointShowInfo"))
  {
    v65 = OUTLINED_FUNCTION_29_2();
    endpoint_copyShowInfoDictionary(v65, v66);
    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11F0]))
  {
    cf = 0;
    if (*(DerivedStorage + 216))
    {
      cf = *(DerivedStorage + 128);
    }

    v67 = OUTLINED_FUNCTION_14_10();
    v69 = CFNumberCreate(v67, kCFNumberSInt64Type, v68);
    *a4 = v69;
    if (v69)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1398]))
  {
    isConnected = endpoint_isConnected();
    goto LABEL_168;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1278]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 480);
    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1438]))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 482);
    goto LABEL_52;
  }

  if (CFEqual(a2, @"EligibleForFastReactivate"))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (*(DerivedStorage + 552) >= *(DerivedStorage + 64) || UpTimeNanoseconds >= *(DerivedStorage + 560))
    {
      goto LABEL_119;
    }

    goto LABEL_106;
  }

  if (CFEqual(a2, @"ReceiverSessionIsActive"))
  {
    v72 = *(DerivedStorage + 40);
LABEL_173:
    APEndpointDescriptionGetCMBaseObject(v72);
LABEL_191:
    OUTLINED_FUNCTION_18_7();

    CMBaseObjectCopyProperty(v79, v80, v81, v82);
    return;
  }

  if (CFEqual(a2, @"IsMediaPresentationModeAvailable"))
  {
    v28 = MEMORY[0x277CBED28];
    v34 = *(DerivedStorage + 272);
LABEL_52:
    if (!v34)
    {
      v28 = MEMORY[0x277CBED10];
    }

    goto LABEL_39;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13C8]))
  {
    v72 = *(DerivedStorage + 40);
    goto LABEL_173;
  }

  if (CFEqual(a2, @"ActivationStage"))
  {
    Copy = FigCFNumberCreateSInt64();
    goto LABEL_25;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1258]))
  {
    isConnected = APEndpointDescriptionHasFeature(*(DerivedStorage + 40), 86);
LABEL_168:
    v28 = MEMORY[0x277CBED28];
    if (!isConnected)
    {
      v28 = MEMORY[0x277CBED10];
    }

    goto LABEL_39;
  }

  if (CFEqual(a2, @"SupportsAnyMedia"))
  {
    v72 = *(DerivedStorage + 40);
    goto LABEL_173;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1290]))
  {
    if (!FigCFDictionaryGetValue())
    {
      if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_33_0()))
      {
        OUTLINED_FUNCTION_3_11();
      }

      goto LABEL_26;
    }

    FigEndpointStreamGetCMBaseObject();
    goto LABEL_191;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC1588]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1300]))
    {
      v76 = OUTLINED_FUNCTION_29_2();
      endpoint_copyExternalPlaybackCompetingStreams(v76, v77);
      goto LABEL_26;
    }

    if (!CFEqual(a2, @"ActualTransportType") && !CFEqual(a2, *MEMORY[0x277CC1560]))
    {
      goto LABEL_26;
    }

    v78 = *(DerivedStorage + 216);
    if (!v78)
    {
      APSLogErrorAt();
      goto LABEL_26;
    }

    APSenderSessionGetCMBaseObject(v78);
    goto LABEL_191;
  }

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_18_7();

  endpoint_copyUsesExternalPlaybackByDefault(v73, v74);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return FigCFDictionarySetUInt32();
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return PairingSessionCreate();
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = 0;

  return endpointCluster_copyPropertyFromSubEndpoint(v15, 1, v14, v16, &a14);
}

void *OUTLINED_FUNCTION_14_9(size_t a1)
{

  return malloc_type_calloc(a1, 8uLL, 0x6004044C4A2DFuLL);
}

uint64_t emp_reportEndpointToCache(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0;
  if (!APSGetFBOPropertyInt64())
  {
    if (APSGetFBOPropertyInt64() || !APSGetFBOPropertyInt64())
    {
      goto LABEL_43;
    }

    if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v29(CMBaseObject, *MEMORY[0x277CC1450], *MEMORY[0x277CBECE8], &cf);
      }

      if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v30 = FigEndpointGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31)
    {
      v32 = v31(v30, @"TransportDevice", *MEMORY[0x277CBECE8], &v54);
      if (v32)
      {
        v27 = v32;
      }

      else
      {
        v33 = APTransportDeviceCopyInfo();
        v27 = v33;
        if (!v33)
        {
          [v3 setObject:FigCFDictionaryGetValue() forKeyedSubscript:@"networkSignature"];
          [*(DerivedStorage + 16) realDeviceFound:v53 userInfo:v3];
          goto LABEL_33;
        }

        if (v33 == -6727)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v27 = 4294954514;
    }

LABEL_32:
    APSLogErrorAt();
    goto LABEL_33;
  }

  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v27 = 4294954514;
    goto LABEL_32;
  }

  v6 = v5(v4, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &v51);
  if (v6)
  {
    v27 = v6;
    goto LABEL_32;
  }

  v14 = v51;
  v15 = OUTLINED_FUNCTION_5_14(v6, v7, v8, v9, v10, v11, v12, v13, v35, v37, v39, cf, 0, 0, 0, 0, 0, 0, 0, 0, v50, v51, v52, v53, v54, v55);
  if (!v15)
  {
LABEL_43:
    v27 = 0;
    goto LABEL_33;
  }

  v16 = v15;
  v17 = *v44;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = emp_reportEndpointToCache(a1, *(v43 + 8 * i));
    }

    v27 = v19;
    v16 = OUTLINED_FUNCTION_5_14(v19, v20, v21, v22, v23, v24, v25, v26, v36, v38, v40, cf, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

  while (v16);
LABEL_33:
  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return v27;
}

uint64_t APEndpointPlusUtils_GetEndpointType()
{
  if (APSGetFBOPropertyInt64())
  {
    return 2;
  }

  if (APSGetFBOPropertyInt64())
  {
    return 3;
  }

  return 1;
}

const char *APEndpointPlusUtils_GetTypeString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "<unknown>";
  }

  else
  {
    return off_27849B040[a1 - 1];
  }
}

CFTypeRef epp_copyInner()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t endpoint_copyPropertyFromEndpointDescription(const void *a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4, _DWORD *a5)
{
  SupportedFeatures = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC14F0]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_5(DerivedStorage);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1510]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_8(DerivedStorage);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1538]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_6(DerivedStorage);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1440]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_7(DerivedStorage);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1430]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_Manufacturer;
LABEL_11:
    v13 = *v12;
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v11);
    IsGroupable = CMBaseObjectCopyProperty(CMBaseObject, v13, a3, a4);
LABEL_12:
    SupportedFeatures = IsGroupable;
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1328]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_FirmwareVersion;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14C0]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SerialNumber;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    v17 = *(DerivedStorage + 40);
    if (!v17)
    {
LABEL_24:
      *a4 = v17;
      goto LABEL_13;
    }

LABEL_23:
    v17 = CFRetain(v17);
    goto LABEL_24;
  }

  if (CFEqual(a2, @"StatusFlags"))
  {
    goto LABEL_26;
  }

  if (CFEqual(a2, @"SourceVersion"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SourceVersion;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1210]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_AirPlaySecurity;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13B8]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_IsHKAccessControlEnabled;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1350]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_HKAccessControlLevel;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1558]))
  {
    v18 = APSGetFBOPropertyInt64();
    v19 = MEMORY[0x277CC1A08];
    if (!v18)
    {
      v19 = MEMORY[0x277CC1A10];
    }

    v17 = *v19;
    if (!*v19)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (CFEqual(a2, @"Features"))
  {
    IsGroupable = APEndpointDescriptionCopyFeatures(*(DerivedStorage + 40), a4);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1550]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_TightSyncUUID;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1548]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_TightSyncIsGroupLeader;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"TightSyncClusterInfo"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_TightSyncClusterInfo;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"GroupPublicName"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_GroupPublicName;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1378]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_IsAppleMusicSubscriber;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1298]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_CloudLibraryIsOn;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1340]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_GroupID;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1338]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_GroupContainsDiscoverableLeader;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13B0]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_IsGroupLeader;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12C0]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_ClusterSize;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12C8]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_4(DerivedStorage, &SupportedFeatures, a4);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1490]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_ClusterUUID;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1390]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_IsClusterLeader;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ClusterModel"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_ClusterModel;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"RoomUUID"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_RoomUUID;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"RoomName"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_RoomName;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
    IsGroupable = endpoint_copyIsGroupable(a1, a4);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1218]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SupportsAirPlayVideoPlayQueue;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1230]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SupportsAirPlayVideoV2;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1540]))
  {
LABEL_26:
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_StatusFlags;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"TransportDevice"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_TransportDevice;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ScreenSize"))
  {
    v20 = kAPEndpointDisplayDescriptionProperty_PixelSize;
LABEL_87:
    IsGroupable = endpoint_copyPropertyForFirstDisplay(a1, *v20, a4);
    goto LABEL_12;
  }

  if (CFEqual(a2, @"ScreenIsOverscanned"))
  {
    v20 = kAPEndpointDisplayDescriptionProperty_IsOverscanned;
    goto LABEL_87;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1330]) || CFEqual(a2, @"IsScreenDemoReceiver"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_IsScreenDemoMode;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1238]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_VodkaVersion;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1208]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SupportsAirPlayFromCloud;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1308]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_DoesNotRequireVodkaForHLS;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14C8]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SilentPrimary;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11F8]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_AdvertisesHAPSupport;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"SupportsMuteControl"))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_12(DerivedStorage, a4);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1520]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_9(DerivedStorage, a4);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12F8]))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_ExternalPlaybackCapabilities;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"SupportsUGLAssistedDiscovery"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_SupportsUGLAssistedDiscovery;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1518]))
  {
    endpoint_copyPropertyFromEndpointDescription_cold_11(a1, a4);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1200]))
  {
    v21 = a1;
    v22 = 0;
LABEL_115:
    IsGroupable = endpoint_copyAirPlayEndpointProperties(v21, v22, a4);
    goto LABEL_12;
  }

  if (CFEqual(a2, @"AirPlayClusterCompatibleEndpointProperties"))
  {
    v21 = a1;
    v22 = 1;
    goto LABEL_115;
  }

  if (CFEqual(a2, @"EndpointInfo"))
  {
    v11 = *(DerivedStorage + 40);
    v12 = kAPEndpointDescriptionProperty_EndpointInfo;
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    v24 = 0;
    SupportedFeatures = endpoint_getSupportedFeatures(a1, &v24);
    if (SupportedFeatures)
    {
      endpoint_copyPropertyFromEndpointDescription_cold_2();
    }

    else
    {
      v23 = CFNumberCreate(a3, kCFNumberSInt64Type, &v24);
      *a4 = v23;
      if (!v23)
      {
        endpoint_copyPropertyFromEndpointDescription_cold_3();
      }
    }
  }

  else
  {
    result = CFEqual(a2, *MEMORY[0x277CC12D0]);
    if (!result)
    {
      return result;
    }

    endpoint_copyPropertyFromEndpointDescription_cold_10(a1, a4);
  }

LABEL_13:
  if (a5)
  {
    *a5 = SupportedFeatures;
  }

  return 1;
}

uint64_t epp_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  v8 = epp_copyInner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    epp_CopyProperty_cold_3();
LABEL_26:
    v12 = 4294950576;
    goto LABEL_10;
  }

  if (!a4)
  {
    epp_CopyProperty_cold_2();
    goto LABEL_26;
  }

  v10 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1388]))
  {
    v11 = MEMORY[0x277CBED10];
    if (!v8)
    {
      v11 = MEMORY[0x277CBED28];
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"IsEndpointPlus"))
  {
    v11 = MEMORY[0x277CBED28];
LABEL_9:
    v12 = 0;
    *a4 = CFRetain(*v11);
    goto LABEL_10;
  }

  if (*v10 == 2 && CFEqual(a2, *MEMORY[0x277CC14E8]))
  {
    FigSimpleMutexLock();
    v12 = epp_copySubEndpointsArray(a1, a4);
    FigSimpleMutexUnlock();
    if (v12)
    {
      epp_CopyProperty_cold_1();
    }

LABEL_10:
    if (v8)
    {
LABEL_11:
      CFRelease(v8);
      return v12;
    }

    return v12;
  }

  if (v8)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v12 = v15(CMBaseObject, a2, a3, a4);
    }

    else
    {
      v12 = 4294954514;
    }

    goto LABEL_11;
  }

  FigSimpleMutexLock();
  v12 = epp_copyCachedProperty(a1, a2, a3, a4);
  FigSimpleMutexUnlock();
  if (v12 && v12 != -12784)
  {
    APSLogErrorAt();
  }

  return v12;
}

uint64_t epp_updateDescriptionFromInner(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  if (!v3)
  {
    updated = 4294960587;
    goto LABEL_9;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 56) = APSGetFBOPropertyInt64() != 0;
  if (*v4 != 2)
  {
    updated = epp_updateDescriptionFromEndpoint(a1, v3);
    if (!updated)
    {
      return updated;
    }

LABEL_9:
    APSLogErrorAt();
    return updated;
  }

  epp_copyEndpointPropertyToDestination(a1, v3, *MEMORY[0x277CC12B0], (v4 + 96));
  updated = epp_copyEndpointPropertyToDestination(a1, v3, *MEMORY[0x277CC12A8], (v4 + 88));
  ClusterLeaderOrAny = epp_getClusterLeaderOrAny();
  if (ClusterLeaderOrAny)
  {
    updated = epp_updateDescriptionFromEndpoint(a1, ClusterLeaderOrAny);
    if (updated)
    {
      goto LABEL_9;
    }
  }

  return updated;
}

uint64_t epp_updateDescriptionFromEndpoint(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = epp_copyEndpointPropertyToDestination(a1, a2, @"EndpointDescription", (DerivedStorage + 48));
    if (v6)
    {
      v11 = v6;
      epp_updateDescriptionFromEndpoint_cold_1();
    }

    else
    {
      if (*v5 == 2)
      {
        v13 = 0;
        cf = 0;
        v7 = *(v5 + 48);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v8)
        {
          v8(v7, 0, 0, &cf, 0, 0, &v13, 0);
          UInt32 = cf;
          if (cf)
          {
            UInt32 = FigCFNumberGetUInt32();
          }
        }

        else
        {
          UInt32 = 0;
        }

        *(v5 + 72) = UInt32;
        v10 = v13;
        if (v13)
        {
          v10 = CFGetInt64Ranged();
        }

        *(v5 + 76) = v10;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      return 0;
    }
  }

  else
  {
    epp_updateDescriptionFromEndpoint_cold_2();
    return 4294960591;
  }

  return v11;
}

uint64_t epp_copyEndpointPropertyToDestination(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  cf = 0;
  if (!a3)
  {
    epp_copyEndpointPropertyToDestination_cold_3();
    return 4294960591;
  }

  if (!a4)
  {
    epp_copyEndpointPropertyToDestination_cold_2();
LABEL_26:
    v9 = 4294960591;
    goto LABEL_20;
  }

  if (!a2)
  {
    epp_copyEndpointPropertyToDestination_cold_1();
    goto LABEL_26;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v9 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_20;
  }

  v8 = v7(CMBaseObject, a3, *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v9 = v8;
    goto LABEL_12;
  }

  if (!cf)
  {
    return 0;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *a4;
    v11 = cf;
    *a4 = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v9 = 0;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t endpoint_getSupportedFeatures(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    endpoint_getSupportedFeatures_cold_1();
    return 4294950576;
  }

  v4 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v5 = 16;
LABEL_4:
    v6 = 0;
    *a2 = v5;
    goto LABEL_21;
  }

  v7 = *(DerivedStorage + 40);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v9 = v8(v7, &cf);
    if (!v9)
    {
      v10 = APSFeaturesHasFeature() != 0;
      v11 = (APSFeaturesHasFeature() != 0) | (2 * v10);
      if (APSGetFBOPropertyInt64())
      {
        v5 = v11 | 8;
      }

      else
      {
        v5 = v11;
      }

      if (APSIsLowLatencyAudioSendingEnabled() && APSGetFBOPropertyInt64() && endpoint_isInLocalCluster())
      {
        v5 |= 0x20uLL;
      }

      v12 = *(v4 + 96);
      if ((v12 > 0xD || ((1 << v12) & 0x2090) == 0) && (APSFeaturesHasFeature() || APSFeaturesHasFeature()))
      {
        v5 |= 4uLL;
      }

      goto LABEL_4;
    }

    v6 = v9;
  }

  else
  {
    v6 = 4294954514;
  }

  APSLogErrorAt();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t airPlayDescription_CopyFeatures(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_CopyFeatures_cold_1();
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    FigSimpleMutexLock();
    v4 = airPlayDescription_copyFeaturesInternal(a1, a2);
    FigSimpleMutexUnlock();
    return v4;
  }

  airPlayDescription_CopyFeatures_cold_2();
  return 4294895545;
}

uint64_t epp_handleInnerNotification(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    epp_updateDescriptionFromInner(a2);
    FigSimpleMutexUnlock();
  }

  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_handleInnerNotification_cold_1();
  }

  return CMNotificationCenterPostNotification();
}

uint64_t endpoint_copyStaticProperty(uint64_t a1, const void *a2, void *a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    endpoint_copyStaticProperty_cold_1();
    v12 = -16720;
    if (!a4)
    {
      return 1;
    }

    goto LABEL_11;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A18];
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v8 + 48);
    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13C0]))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v8 + 49);
LABEL_8:
    if (!v10)
    {
      v9 = MEMORY[0x277CBED10];
    }

LABEL_10:
    v11 = CFRetain(*v9);
    v12 = 0;
    *a3 = v11;
    if (!a4)
    {
      return 1;
    }

LABEL_11:
    *a4 = v12;
    return 1;
  }

  result = CFEqual(a2, @"IsClusterEndpoint");
  if (result)
  {
    v9 = MEMORY[0x277CBED10];
    goto LABEL_10;
  }

  return result;
}

uint64_t endpointCluster_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v10 = 0;
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (!endpointCluster_copyStaticProperty(a1, a2, a4, &v10))
    {
      FigSimpleMutexLock();
      endpointCluster_copyPropertyInternal(a1, a2, a3, a4);
      v10 = v9;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    endpointCluster_CopyProperty_cold_1(&v10);
  }

  return v10;
}

uint64_t endpointCluster_copyStaticProperty(uint64_t a1, const void *a2, void *a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    endpointCluster_copyStaticProperty_cold_3();
    v11 = -16720;
    goto LABEL_8;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC11F8]) || CFEqual(a2, *MEMORY[0x277CC1278]))
  {
    goto LABEL_4;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
LABEL_12:
    v10 = *(v8 + 16);
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13C0]))
  {
    v9 = MEMORY[0x277CBED28];
    if (!*(v8 + 8))
    {
      v9 = MEMORY[0x277CBED10];
    }

    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
LABEL_18:
    v9 = MEMORY[0x277CBED28];
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    v10 = *(v8 + 96);
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1430]))
  {
    v10 = @"Apple";
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1490]))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12C0]))
  {
    Int64 = CFNumberCreateInt64();
    *a3 = Int64;
    if (Int64)
    {
LABEL_26:
      v11 = 0;
      goto LABEL_8;
    }

    endpointCluster_copyStaticProperty_cold_1();
LABEL_53:
    v11 = -16721;
    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12C8]))
  {
    v10 = APEndpointAPSClusterTypeToFigEndpointClusterType(*v8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F0]))
  {
    v9 = MEMORY[0x277CC19B8];
    v14 = MEMORY[0x277CC19B0];
    if (*v8 != 2)
    {
      v14 = MEMORY[0x277CC19A8];
    }

    if (*v8 != 1)
    {
      v9 = v14;
    }

    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    if (*v8 == 2 && *(v8 + 8))
    {
      APSIsLowLatencyAudioSendingEnabled();
    }

    v15 = CFNumberCreateInt64();
    *a3 = v15;
    if (v15)
    {
      goto LABEL_26;
    }

    endpointCluster_copyStaticProperty_cold_2();
    goto LABEL_53;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1510]))
  {
    goto LABEL_18;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC1538]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1558]))
    {
      v9 = MEMORY[0x277CC1A10];
      goto LABEL_5;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1568]))
    {
      v9 = MEMORY[0x277CC1A18];
      goto LABEL_5;
    }

    if (CFEqual(a2, @"IsClusterEndpoint"))
    {
      goto LABEL_18;
    }

    result = CFEqual(a2, *MEMORY[0x277CC13F0]);
    if (!result)
    {
      return result;
    }
  }

LABEL_4:
  v9 = MEMORY[0x277CBED10];
LABEL_5:
  v10 = *v9;
LABEL_6:
  v10 = CFRetain(v10);
LABEL_7:
  v11 = 0;
  *a3 = v10;
LABEL_8:
  if (a4)
  {
    *a4 = v11;
  }

  return 1;
}

void endpointCluster_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CC1370];
  v10 = MEMORY[0x277CC13A0];
  v11 = MEMORY[0x277CC1450];
  if (*(DerivedStorage + 442) && !CFEqual(a2, *MEMORY[0x277CC1370]) && !CFEqual(a2, *v10) && !CFEqual(a2, *v11))
  {
    goto LABEL_24;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14E8]))
  {
    Copy = CFArrayCreateCopy(a3, *(DerivedStorage + 42));
    *a4 = Copy;
    if (Copy)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (CFEqual(a2, *v9))
  {
    v13 = MEMORY[0x277CBED28];
    if (DerivedStorage[94] != 3)
    {
      v13 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13E8]))
  {
    v13 = MEMORY[0x277CBED28];
    v14 = *(DerivedStorage + 444);
    goto LABEL_19;
  }

  if (CFEqual(a2, *v10))
  {
    v13 = MEMORY[0x277CBED28];
    v14 = *(DerivedStorage + 442);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v13 = MEMORY[0x277CBED28];
    v14 = DerivedStorage[94];
    goto LABEL_19;
  }

  if (CFEqual(a2, @"LocalRouteState"))
  {
    if (!*(DerivedStorage + 1))
    {
      goto LABEL_24;
    }

    v16 = CMBaseObjectGetDerivedStorage();
    v17 = (*(v16 + 400) & 0xFFFFFFFFFFFFFFDFLL) != 0 && *(v16 + 376) == 3;
    v18 = v17;
    v19 = *(DerivedStorage + 60);
    v20 = APEndpointAPSClusterTypeToAPSLocalRouteType(*DerivedStorage);
    if (!APEndpointCreateLocalRouteState(v18, v19, v20, a4))
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (CFEqual(a2, *v11))
  {
    ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 36);
    if (!ClusterModelBasedOnClusterAdvertisementInfo)
    {
      ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 37);
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, @"NeedsDiscovery"))
  {
    v13 = MEMORY[0x277CBED28];
    v14 = *(DerivedStorage + 443);
    goto LABEL_19;
  }

  v22 = CFEqual(a2, *MEMORY[0x277CC1210]);
  if (v22)
  {
    OUTLINED_FUNCTION_14_8(v22, v23, v24, v25, v26, v27, v28, v29, v75, v76, v77, v78, v79, v80);
    ClusterModelBasedOnClusterAdvertisementInfo = v81;
    if (v81)
    {
      goto LABEL_23;
    }

    v38 = OUTLINED_FUNCTION_3_21();
    endpointCluster_copyPropertyFromSubEndpoint(v38, v39, v40, v41, v42);
    ClusterModelBasedOnClusterAdvertisementInfo = CFNumberCreateInt64();
    if (ClusterModelBasedOnClusterAdvertisementInfo)
    {
      goto LABEL_23;
    }

LABEL_43:
    APSLogErrorAt();
    goto LABEL_24;
  }

  v30 = CFEqual(a2, *MEMORY[0x277CC1270]);
  if (v30)
  {
    OUTLINED_FUNCTION_14_8(v30, v31, v32, v33, v34, v35, v36, v37, v75, v76, v77, v78, v79, v80);
    ClusterModelBasedOnClusterAdvertisementInfo = v82;
    if (v82)
    {
      goto LABEL_23;
    }

    v43 = OUTLINED_FUNCTION_3_21();
    endpointCluster_copyPropertyFromSubEndpoint(v43, v44, v45, v46, v47);
    v13 = MEMORY[0x277CC0A70];
    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1338]))
  {
    v13 = MEMORY[0x277CBED28];
    v14 = *(DerivedStorage + 312);
LABEL_19:
    if (!v14)
    {
      v13 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1340]))
  {
    ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 38);
    if (!ClusterModelBasedOnClusterAdvertisementInfo)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14B0]))
  {
    ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 60);
    if (!ClusterModelBasedOnClusterAdvertisementInfo)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1550]))
  {
    if (*DerivedStorage != 1)
    {
      goto LABEL_24;
    }

    v48 = OUTLINED_FUNCTION_3_21();
    if (!endpointCluster_copyPropertyFromSubEndpoint(v48, v49, v50, v51, a4))
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1360]) || CFEqual(a2, *MEMORY[0x277CC1298]) || CFEqual(a2, *MEMORY[0x277CC1350]) || CFEqual(a2, *MEMORY[0x277CC1378]) || CFEqual(a2, *MEMORY[0x277CC13B8]))
  {
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_12();

    endpointCluster_copyPropertyFromSubEndpoint(v53, v54, v55, v56, v57);
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC13B0]))
    {
      goto LABEL_71;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14C8]))
    {
      if (*(DerivedStorage + 1))
      {
        goto LABEL_24;
      }

      goto LABEL_71;
    }

    if (CFEqual(a2, @"EndpointShowInfo"))
    {
      v59 = OUTLINED_FUNCTION_16_6();
      if (!endpointCluster_copyShowInfoDictionary(v59, v60))
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12A8]))
    {
      v61 = OUTLINED_FUNCTION_16_6();
      if (!endpointCluster_copyClusterCompositionAsArray(v61, v62))
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12B0]))
    {
      v63 = OUTLINED_FUNCTION_16_6();
      if (!endpointCluster_copyClusterHierarchyAsArray(v63, v64))
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12B8]))
    {
      ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 46);
      if (!ClusterModelBasedOnClusterAdvertisementInfo)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      v13 = MEMORY[0x277CBED28];
LABEL_21:
      ClusterModelBasedOnClusterAdvertisementInfo = *v13;
LABEL_22:
      ClusterModelBasedOnClusterAdvertisementInfo = CFRetain(ClusterModelBasedOnClusterAdvertisementInfo);
LABEL_23:
      *a4 = ClusterModelBasedOnClusterAdvertisementInfo;
LABEL_24:
      OUTLINED_FUNCTION_12();
      return;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B8]))
    {
      v65 = CFNumberCreateInt64();
      *a4 = v65;
      if (v65)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC15C0]))
    {
      endpointCluster_copyPropertyFromSubEndpoint(a1, 2, a2, a3, a4);
      if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1200]))
    {
      OUTLINED_FUNCTION_16_6();
      OUTLINED_FUNCTION_12();

      endpointCluster_copyAirPlayEndpointProperties();
      return;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1440]))
    {
      ClusterModelBasedOnClusterAdvertisementInfo = endpointCluster_getClusterModelBasedOnClusterAdvertisementInfo(a1);
      if (!ClusterModelBasedOnClusterAdvertisementInfo)
      {
        ClusterModelBasedOnClusterAdvertisementInfo = endpointCluster_getClusterModelBasedOnClusterMembersModels();
        if (!ClusterModelBasedOnClusterAdvertisementInfo)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12D8]))
    {
      OUTLINED_FUNCTION_16_6();
      OUTLINED_FUNCTION_12();

      endpointCluster_copyMXDescriptor(v66, v67);
      return;
    }

    if (CFEqual(a2, @"SupportsUGLAssistedDiscovery"))
    {
LABEL_71:
      v52 = endpointCluster_anySubEndpointReportsTrueForProperty();
      v13 = MEMORY[0x277CBED28];
      if (!v52)
      {
        v13 = MEMORY[0x277CBED10];
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1560]))
    {
      ClusterModelBasedOnClusterAdvertisementInfo = *(DerivedStorage + 81);
      if (!ClusterModelBasedOnClusterAdvertisementInfo)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!*(DerivedStorage + 40))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_12();

    FigEndpointCopyProperty(v70, v71, v72, v73);
  }
}

void __emp_copyAvailableEndpoints_block_invoke(uint64_t a1, int a2, int a3, void *value)
{
  if (!*(a1 + 40) || !APSGetFBOPropertyInt64())
  {
    v6 = *(a1 + 32);

    CFArrayAppendValue(v6, value);
  }
}

void __emp_setupCache_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (!v5)
  {
    __emp_setupCache_block_invoke_cold_6();
    return;
  }

  v6 = v5;
  CFSetAddValue(*(DerivedStorage + 80), v5);
  v7 = APEndpointPlusUtils_CopyClusterIDFromBonjourInfo();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 88);
  if (v7)
  {
    CFDictionarySetValue(v9, v6, v7);
    if (emp_removeCachedEndpointWithType(v3, a2, v6, 1))
    {
      __emp_setupCache_block_invoke_cold_1();
      goto LABEL_21;
    }

    if (emp_ensureCachedEndpointWithType(v3, a2, v7, 2))
    {
      __emp_setupCache_block_invoke_cold_2();
      goto LABEL_21;
    }

LABEL_10:
    if (emp_ensureCachedEndpointWithType(v3, a2, v6, 3))
    {
      __emp_setupCache_block_invoke_cold_5();
    }

    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v9, v6);
  if (Value)
  {
    if (emp_removeCachedEndpointWithType(v3, a2, Value, 2))
    {
      __emp_setupCache_block_invoke_cold_3();
      goto LABEL_21;
    }

    CFDictionaryRemoveValue(*(v8 + 88), v6);
  }

  if (!emp_ensureCachedEndpointWithType(v3, a2, v6, 1))
  {
    goto LABEL_10;
  }

  __emp_setupCache_block_invoke_cold_4();
LABEL_21:
  APSLogErrorAt();
LABEL_12:
  FigSimpleMutexUnlock();
  CFRelease(v6);
  if (v7)
  {

    CFRelease(v7);
  }
}

const __CFString *APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(const __CFDictionary *a1)
{
  v2 = BonjourDevice_CopyCFString();
  v3 = v2;
  if (v2 && !CFStringHasPrefix(v2, @"00000000-0000-0000-0000"))
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, @"deviceID");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t APEndpointPlusUtils_CopyClusterIDFromBonjourInfo()
{
  result = BonjourDevice_CopyCFString();
  if (!result)
  {

    return BonjourDevice_CopyCFString();
  }

  return result;
}

uint64_t emp_ensureCachedEndpointWithType(uint64_t a1, const __CFDictionary *a2, const void *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = 56;
  if (a4 == 3)
  {
    v10 = 64;
  }

  if (a4 == 2)
  {
    v10 = 72;
  }

  v11 = *(v9 + v10);
  v27 = 0;
  if (!emp_shouldAllowCacheableType(a4))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v11, a3);
  if (!Value)
  {
    v28 = 0;
LABEL_26:
    v24 = APEndpointPlusCreateWithBonjourInfo(a4, a2, *(DerivedStorage + 8), &v28);
    if (v24)
    {
      v23 = v24;
      APSLogErrorAt();
    }

    else
    {
      emp_addEndpoint(a1, a3, v28, a4);
      if (a4 == 2)
      {
        v25 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
        APEndpointPlusCopySubEndpoint(v28, v25, &v27);
        if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_2();
        }
      }

      else
      {
        v25 = 0;
      }

      emp_restartCachePromotionDeadlineIfNecessary(a1);
      emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843E0);
      if (v25)
      {
        CFRelease(v25);
      }

      v23 = 0;
    }

LABEL_36:
    v14 = v28;
    if (!v28)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v13 = CFRetain(Value);
  v28 = v13;
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  if (a4 == 2)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    v30 = 0;
    cf = 0;
    v16 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
    if (!v16)
    {
      v23 = 4294960591;
      APSLogErrorAt();
LABEL_24:
      emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843E0);
      goto LABEL_36;
    }

    v17 = v16;
    v18 = APEndpointPlusCopySubEndpoint(v14, v16, &cf);
    if (v18 == -6727)
    {
      v19 = APEndpointPlusCreateWithBonjourInfo(1, a2, *(v15 + 8), &cf);
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v20 = APEndpointPlusAddSubEndpoint(v14, cf);
        if (!v20)
        {
          CMBaseObject = FigEndpointGetCMBaseObject();
          v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v22)
          {
            v22(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &v30);
          }

          if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_2();
          }

          v23 = 0;
          goto LABEL_20;
        }

        v23 = v20;
      }

      APSLogErrorAt();
    }

    else
    {
      v23 = v18;
    }

LABEL_20:
    CFRelease(v17);
    if (v30)
    {
      CFRelease(v30);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_24;
  }

  v23 = 0;
LABEL_37:
  CFRelease(v14);
LABEL_38:
  if (v27)
  {
    CFRelease(v27);
  }

  return v23;
}

void manager_removeEndpointForTransportDevice(void *a1, const __CFDictionary *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v8 = Value;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_10();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_12();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_4();
    FigNotificationCenterRemoveWeakListener();
    manager_updateEndpointClusterMembershipIfNeeded(a1, v8, 1, 0);
    if (!APSGetFBOPropertyInt64())
    {
      manager_updateAggregatedInterruptingSessionStateIfNeeded(a1, v8, 0);
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v8);
    }

    if (APTransportDeviceIsAssistedDevice())
    {
      APBrowserControllerRemoveInjectedEndpoint();
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }

    CFDictionaryRemoveValue(a2, a3);
    if (!CFDictionaryContainsKey(DerivedStorage[21], a3) && !CFDictionaryContainsKey(DerivedStorage[22], a3))
    {
      CFSetRemoveValue(DerivedStorage[23], a3);
    }

    manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a1, 1);
  }
}