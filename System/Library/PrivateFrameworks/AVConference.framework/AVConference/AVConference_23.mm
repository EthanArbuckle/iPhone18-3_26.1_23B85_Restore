void _VCMediaQueue_RateStats_TrackMediaPacket(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaQueue_RateStats_TrackMediaPacket_cold_1();
      }
    }

    return;
  }

  v5 = *(a2 + 4);
  if (*(a2 + 293))
  {
    v6 = 48;
  }

  else
  {
    v6 = 28;
  }

  v7 = 448;
  if (a3)
  {
    v7 = 0;
  }

  v8 = 672;
  if (a3)
  {
    v8 = 224;
  }

  if (*(a2 + 227))
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1 + v9;
  v11 = *(a1 + v9 + 148);
  v12 = v10 + 136;
  v13 = vcvtd_n_s64_f64(a4 - *(v10 + 136), 6uLL);
  if (v13)
  {
    if (v13 <= 15)
    {
      v14 = *(v10 + 144);
      v15 = v14 + v13;
      v16 = v15 & 0x1F;
      v17 = (v15 + 1) & 0x1F;
      v18 = (v14 + 1) & 0x1F;
      if (v18 != v17)
      {
        v19 = v10 + 8;
        while (1)
        {
          v20 = (v19 + 4 * v18);
          if (v20 >= v12 || v20 < v19)
          {
            goto LABEL_65;
          }

          v11 -= *v20;
          *v20 = 0;
          v18 = (v18 + 1) & 0x1F;
          if (v18 == v17)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

    if (v13 > 0x1F)
    {
      v11 = 0;
      v16 = 0;
      *(v10 + 120) = 0u;
      *(v10 + 104) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 24) = 0u;
      *(v10 + 8) = 0u;
    }

    else
    {
      v22 = *(v10 + 144);
      v23 = v22 + v13;
      v16 = (v22 + v13) & 0x1F;
      v24 = (v22 + 1) & 0x1F;
      if (v16 >= v24)
      {
        v30 = (v10 + 8 + 4 * v24);
        v29 = 4 * (v16 - v24) + 4;
        if (v12 < v30 || v10 + 8 > v30 || v29 > v12 - v30)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v25 = (v10 + 8 + 4 * ((v22 + 1) & 0x1F));
        v26 = (128 - 4 * v24);
        if (v12 < v25 || v10 + 8 > v25 || v12 - v25 < v26)
        {
LABEL_65:
          __break(0x5519u);
          return;
        }

        bzero(v25, v26);
        v29 = 4 * v16 + 4;
        v30 = (v10 + 8);
      }

      bzero(v30, v29);
      v33 = (v23 + 1) & 0x1F;
      if (v33 != v24)
      {
        v11 = 0;
        v34 = v10 + 8;
        while (1)
        {
          v35 = (v34 + 4 * v33);
          if (v35 >= v12 || v35 < v34)
          {
            goto LABEL_65;
          }

          v11 += *v35;
          v33 = (v33 + 1) & 0x1F;
          if (v33 == v24)
          {
            goto LABEL_56;
          }
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v16 = -1;
  }

LABEL_56:
  v37 = v6 + v5;
  v38 = v11 + v6 + v5;
  pthread_mutex_lock((v10 + 160));
  *(v10 + 148) = v38;
  if (v16 != -1)
  {
    *(v10 + 136) = *v10 + vcvtd_n_u64_f64(a4 - *v10, 6uLL) * 0.015625;
    *(v10 + 144) = v16;
  }

  pthread_mutex_unlock((v10 + 160));
  v39 = (v10 + 8 + 4 * *(v10 + 144));
  if (v39 >= v12 || v39 < v10 + 8)
  {
    goto LABEL_65;
  }

  *v39 += v37;
}

void _VCMediaQueue_PreAllocVCMediaPacketsInFreePool(uint64_t a1, opaqueCMSimpleQueue *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A0040637F5F0DuLL);
  if (v4)
  {
    v5 = v4;
    v6 = v4 + 312;
    if ((*(a1 + 96) & 1) == 0)
    {
      if (v4 >= v6)
      {
        goto LABEL_18;
      }

      CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x5DCuLL, 0, 0, 0, 0x5DCuLL, 1u, v4 + 1);
      if (!*(v5 + 1))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCMediaQueue_PreAllocVCMediaPacketsInFreePool_cold_1();
          }
        }

        goto LABEL_16;
      }
    }

    if (!CMSimpleQueueEnqueue(a2, v5))
    {
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaQueue_PreAllocVCMediaPacketsInFreePool_cold_2();
      }
    }

    if (v5 < v6)
    {
      v7 = *(v5 + 1);
      if (v7)
      {
        CFRelease(v7);
      }

LABEL_16:
      free(v5);
      return;
    }

LABEL_18:
    __break(0x5519u);
  }
}

uint64_t VCMediaQueue_CleanupTxHistory(uint64_t a1)
{
  pthread_mutex_lock((a1 + 25552));
  bzero((a1 + 976), 0x6000uLL);
  *(a1 + 968) = 0;
  pthread_mutex_unlock((a1 + 25552));
  return 0;
}

uint64_t _VCMediaQueue_CreateInternalQueue(uint64_t a1, int a2, int32_t a3)
{
  v6 = malloc_type_calloc(a2, 0xB0uLL, 0x1020040A2190033uLL);
  if (v6)
  {
    *(a1 + 624) = v6;
    *(a1 + 348) = a2;
    if (!a2)
    {
      return 0;
    }

    v7 = 0;
    v8 = *MEMORY[0x1E695E480];
    while (1)
    {
      CMSimpleQueueCreate(v8, a3, (*(a1 + 624) + 176 * v7));
      CMSimpleQueueCreate(v8, a3, (*(a1 + 624) + 176 * v7 + 8));
      CMSimpleQueueCreate(v8, a3, (*(a1 + 624) + 176 * v7 + 16));
      v9 = *(a1 + 624);
      v10 = v9 + 176 * v7;
      v11 = v10 < v9 + 176 * *(a1 + 348) && v10 >= v9;
      if (!v11 || ((*(v10 + 24) = 0, *(v10 + 136) = 0, *(v10 + 144) = 0, *(v10 + 128) = 0, v12 = *(a1 + 624), v13 = v12 + 176 * v7, v13 < v12 + 176 * *(a1 + 348)) ? (v14 = v13 >= v12) : (v14 = 0), !v14 || ((*(v13 + 152) = 0, *(v13 + 92) = 0, v15 = *(a1 + 624), v16 = v15 + 176 * v7, v16 < v15 + 176 * *(a1 + 348)) ? (v17 = v16 >= v15) : (v17 = 0), !v17 || (*(v16 + 93) = 0, v18 = *(a1 + 624), v19 = v18 + 176 * v7, v19 >= v18 + 176 * *(a1 + 348)) || v19 < v18 || (*(v19 + 96) = 0, v20 = *(a1 + 624), v21 = v20 + 176 * v7, v21 >= v20 + 176 * *(a1 + 348)) || v21 < v20)))
      {
LABEL_54:
        __break(0x5519u);
      }

      *(v21 + 97) = 0;
      v22 = a3;
      if (a3 >= 1)
      {
        break;
      }

LABEL_31:
      v27 = *(a1 + 624);
      v28 = v27 + 176 * v7;
      if (v28 >= v27 + 176 * *(a1 + 348) || v28 < v27)
      {
        goto LABEL_54;
      }

      *(v28 + 94) = 0;
      v30 = *(a1 + 624);
      v31 = v30 + 176 * v7;
      if (v31 >= v30 + 176 * *(a1 + 348))
      {
        goto LABEL_54;
      }

      if (v31 < v30)
      {
        goto LABEL_54;
      }

      *(v31 + 95) = 0;
      v32 = *(a1 + 624);
      v33 = v32 + 176 * v7;
      if (v33 >= v32 + 176 * *(a1 + 348))
      {
        goto LABEL_54;
      }

      if (v33 < v32)
      {
        goto LABEL_54;
      }

      *(v33 + 104) = -1;
      v34 = *(a1 + 624);
      v35 = v34 + 176 * v7;
      if (v35 >= v34 + 176 * *(a1 + 348))
      {
        goto LABEL_54;
      }

      if (v35 < v34)
      {
        goto LABEL_54;
      }

      *(v35 + 112) = -1;
      v36 = *(a1 + 624);
      v37 = v36 + 176 * v7;
      if (v37 >= v36 + 176 * *(a1 + 348) || v37 < v36)
      {
        goto LABEL_54;
      }

      *(v37 + 120) = 0;
      if (++v7 == a2)
      {
        return 0;
      }
    }

    while (1)
    {
      v23 = *(a1 + 624);
      v24 = (v23 + 176 * v7);
      if (v24 >= v23 + 176 * *(a1 + 348) || v24 < v23)
      {
        goto LABEL_54;
      }

      _VCMediaQueue_PreAllocVCMediaPacketsInFreePool(a1, *v24);
      if (v26)
      {
        break;
      }

      if (!--v22)
      {
        goto LABEL_31;
      }
    }

    _VCMediaQueue_CreateInternalQueue_cold_1();
    v38 = v40;
  }

  else
  {
    v38 = 2149580803;
  }

  if (*(a1 + 624))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaQueue_CreateInternalQueue_cold_2();
      }
    }

    _VCMediaQueue_DestroyInternalQueues(a1);
    *(a1 + 624) = 0;
    *(a1 + 348) = 0;
  }

  return v38;
}

void _VCMediaQueue_DestroyInternalQueues(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 348);
  v3 = *(a1 + 624);
  v4 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v4 = micro();
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 96);
      *buf = 136316162;
      v38 = v7;
      v39 = 2080;
      v40 = "_VCMediaQueue_DestroyInternalQueues";
      v41 = 1024;
      v42 = 1619;
      v43 = 1024;
      v44 = v2;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d numberOfInternalQueues=%d mediaQueue->config.useExternalDataBuffer=%d", buf, 0x28u);
    }
  }

  if (v2 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = &v3[176 * v10];
      if (v11)
      {
        break;
      }

LABEL_29:
      if (++v10 == v2)
      {
        goto LABEL_30;
      }
    }

    if (CMSimpleQueueGetCount(v11[2]) < 1)
    {
LABEL_27:
      _VCMediaQueue_DestroyInternalQueuePool(a1, v11[1]);
      _VCMediaQueue_DestroyInternalQueuePool(a1, *v11);
      v27 = v11[2];
      if (v27)
      {
        CFRelease(v27);
      }

      goto LABEL_29;
    }

    while (1)
    {
      Head = CMSimpleQueueGetHead(v11[2]);
      CMSimpleQueueDequeue(v11[2]);
      if (Head == CMSimpleQueueGetHead(v11[1]))
      {
        v22 = Head[23];
        if (v22)
        {
          VCMediaControlInfoDispose(v22);
          Head[23] = 0;
        }

        v23 = Head[1];
        if (v23 && *(a1 + 96) == 1 && (*(Head + 294) & 1) != 0)
        {
          CFRelease(v23);
          Head[1] = 0;
          *(Head + 294) = 0;
        }

        v24 = *v11;
        v25 = CMSimpleQueueDequeue(v11[1]);
        v26 = CMSimpleQueueEnqueue(v24, v25);
        if (!v26)
        {
          goto LABEL_26;
        }

        v12 = v26;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_26;
        }

        v36 = VRTraceErrorLogLevelToCSTR();
        v13 = *v6;
        if (!os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        v14 = *(Head + 57);
        *buf = 136316162;
        v38 = v36;
        v39 = 2080;
        v40 = "_VCMediaQueue_FreeInternalQueueMediaPackets";
        v41 = 1024;
        v42 = 1657;
        v43 = 1024;
        v44 = v12;
        v45 = 1024;
        v46 = v14;
        v15 = v13;
        v16 = "VCMediaQueue [%s] %s:%d Internal queue has error=%d when free media packet for mediaQueueStreamId=%u in _VCMediaQueue_FreeInternalQueueMediaPackets";
        v17 = 40;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_26;
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *v6;
        if (!os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        v21 = *(Head + 57);
        *buf = 136315906;
        v38 = v19;
        v39 = 2080;
        v40 = "_VCMediaQueue_FreeInternalQueueMediaPackets";
        v41 = 1024;
        v42 = 1659;
        v43 = 1024;
        v44 = v21;
        v15 = v20;
        v16 = "VCMediaQueue [%s] %s:%d Media packets are drained from the busy pool of stream=%u out of order! in _VCMediaQueue_FreeInternalQueueMediaPackets";
        v17 = 34;
      }

      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
LABEL_26:
      if (CMSimpleQueueGetCount(v11[2]) <= 0)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_30:
  free(v3);
  LogProfileTimeOverLimit_2(v4, v28, v29, v30, v31, v32, v33, v34, v35, "_VCMediaQueue_DestroyInternalQueues");
}

void _VCMediaQueue_DestroyInternalQueuePool(uint64_t a1, opaqueCMSimpleQueue *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v4;
          v12 = 2080;
          v13 = "_VCMediaQueue_DestroyInternalQueuePool";
          v14 = 1024;
          v15 = 1600;
          v16 = 1024;
          Count = CMSimpleQueueGetCount(a2);
          v18 = 2048;
          v19 = a2;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d count=%d in pool=%p", &v10, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        _VCMediaQueue_DestroyInternalQueuePool_cold_1(v4, a2, v5);
      }
    }

    if (CMSimpleQueueGetCount(a2) >= 1)
    {
      do
      {
        v7 = CMSimpleQueueDequeue(a2);
        if (v7)
        {
          v8 = v7;
          if ((*(a1 + 96) & 1) == 0)
          {
            v9 = *(v7 + 1);
            if (v9)
            {
              if (v8 >= v8 + 312)
              {
                __break(0x5519u);
              }

              CFRelease(v9);
            }
          }

          free(v8);
        }
      }

      while (CMSimpleQueueGetCount(a2) > 0);
    }

    CFRelease(a2);
  }
}

void LogProfileTimeOverLimit_2(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v11 = micro() - a1;
    if (v11 > 3.0)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v12;
      v40 = v12;
      v37 = v12;
      v38 = v12;
      v35 = v12;
      v36 = v12;
      v33 = v12;
      v34 = v12;
      v31 = v12;
      v32 = v12;
      v30 = v12;
      v28 = v12;
      v29 = v12;
      v26 = v12;
      v27 = v12;
      *__str = v12;
      vsnprintf(__str, 0x100uLL, "%s: done destroying numberOfInternalQueues=%d", &a10);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v16 = v13;
          v17 = 2080;
          v18 = "_LogProfileTimeLimitHelper";
          v19 = 1024;
          v20 = 36;
          v21 = 2080;
          v22 = __str;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void _VCMediaQueue_CheckAndReportSymptomForInternalQueue(uint64_t a1)
{
  v2 = micro();
  v3 = *(a1 + 152);
  v4 = a1 + 128;
  v5 = (a1 + 128 + 8 * (v3 % 3));
  if (v5 >= a1 + 152 || v5 < v4)
  {
LABEL_17:
    __break(0x5519u);
    return;
  }

  *v5 = v2;
  v7 = v3 + 1;
  v8 = *(a1 + 156) + 1;
  *(a1 + 152) = v7;
  *(a1 + 156) = v8;
  if (v7 >= 3)
  {
    v9 = (v4 + 8 * (v7 % 3));
    if (v9 >= a1 + 152 || v9 < v4)
    {
      goto LABEL_17;
    }

    if (v2 - *v9 <= 5.0)
    {

      reportingSymptom();
    }
  }
}

uint64_t _VCMediaQueue_GetGeneralQueueInfo(uint64_t result)
{
  if (*(result + 348))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(v1 + 624) + v2;
      result = CMSimpleQueueGetCount(*(v4 + 16));
      *(v1 + 440) += result;
      v5 = *(v1 + 592);
      if (v5 <= *(v4 + 48))
      {
        v5 = *(v4 + 48);
      }

      *(v1 + 592) = v5;
      ++v3;
      v2 += 176;
    }

    while (v3 < *(v1 + 348));
  }

  return result;
}

void _VCMediaQueue_ResetStatistics(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 484) = 0;
  *(a1 + 476) = 0;
  *(a1 + 492) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 600) = 0;
  v1 = *(a1 + 428);
  *(a1 + 444) = *(a1 + 412);
  *(a1 + 460) = v1;
  *(a1 + 592) = 0;
  if (*(a1 + 348))
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E6986650];
    do
    {
      v6 = *(a1 + 624);
      if (v6 + v3)
      {
        v7 = v6 + v3;
        *(v7 + 76) = 0;
        *(v7 + 80) = 0;
        *(v7 + 48) = 0;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v11 = v8;
          v12 = 2080;
          v13 = "_VCMediaQueue_ResetStatistics";
          v14 = 1024;
          v15 = 1871;
          v16 = 1024;
          v17 = v4;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d Internal queue with index %d is NULL", buf, 0x22u);
        }
      }

      ++v4;
      v3 += 176;
    }

    while (v4 < *(a1 + 348));
  }
}

void _VCMediaQueue_DumpStatisticsToFile(uint64_t a1)
{
  if (*(a1 + 168))
  {
    _VCMediaQueue_GetGeneralQueueInfo(a1);
    VRLogfilePrintWithTimestamp(*(a1 + 168), "%1u\t%4.3f\t%u\t%u\t%u/%u/%u/%u\t%08X\t%08X\t%u\t%.3f\t%1u\t%u/%u\t%u/%u\t%5u/%5u\t%.2f\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\n", *(a1 + 498), *(a1 + 499), *(a1 + 496), *(a1 + 336), *(a1 + 340), *(a1 + 344), *(a1 + 88));
    v2 = *(a1 + 348);
    if (v2)
    {
      v3 = 0;
      v4 = 168;
      v5 = a1 + 632;
      do
      {
        v6 = *(a1 + 624);
        if (v6 + v4 != 168 && *(v6 + v4 - 120) > 0.1)
        {
          CMSimpleQueueGetHead(*(v6 + v4 - 152));
          if (v5 >= a1 + 760 || v5 < a1 + 632)
          {
            __break(0x5519u);
            return;
          }

          VRLogfilePrint(*(a1 + 168), "[InternalQueue]\t%2u\t%1u\t%d\t%u/%u\t%u\t%u\t%u\t%u\n", v7, v8, v9, v10, v11, v12, v3);
          v2 = *(a1 + 348);
        }

        ++v3;
        v4 += 176;
        v5 += 4;
      }

      while (v3 < v2);
    }
  }

  _VCMediaQueue_ResetStatistics(a1);
}

void _VCMediaQueue_ReleaseLogDumpFile(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 168);
  if (*(a1 + 168))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[6] = v2;
    v9[7] = v2;
    v9[4] = v2;
    v9[5] = v2;
    v9[2] = v2;
    v9[3] = v2;
    v9[0] = v2;
    v9[1] = v2;
    micro();
    VRLogfileGetTimestamp(v9, 0x80u);
    VRLogfilePrintSync(*v1, "%s\t%8.3f\tEndOfFile\n", v3, v4, v5, v6, v7, v8, v9);
    VRLogfileFree(v1);
    *v1 = 0;
  }
}

FILE **_VCMediaQueue_CreateLogDumpFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = VRLogfileAlloc(0, a2, "VCMediaQueue", ".mqdump", "com.apple.VideoConference.VCMediaQueuelog", 9);
  *(a1 + 168) = v10;
  VRLogfilePrintSync(v10, "STime\t\tSchedulePolicy\tExpInterval\tPBR\tIBR\tBudgetTuple\tIDRBitmap\tSendBitmap\tPktLeft\tWQSize\tBundlePolicy\tPktCount\tNetworkOverhead\tTotalSize\tPBAFactor\thasIDR\thasServerStats\tAudioSeq\tAudioPkt\tVideoPkt\tProbPkt\tScreenPkt\tFailedPkt\n", v11, v12, v13, v14, v15, v16, v25);
  v23 = *(a1 + 168);

  return VRLogfilePrintSync(v23, "[InternalQueue]\tIndex\tType\tStreamId\tQSizeTuple\tOldTS\tIDR\tPktSch\tLastSchTS\tProbingSeq\n", v17, v18, v19, v20, v21, v22, a9);
}

double VCMediaQueue_GetPreSetConfiguration@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = xmmword_1E85F8F60;
  *(a1 + 80) = unk_1E85F8F70;
  *(a1 + 96) = xmmword_1E85F8F80;
  *(a1 + 112) = 0;
  *a1 = xmmword_1E85F8F20;
  *(a1 + 16) = unk_1E85F8F30;
  result = 0.5;
  *(a1 + 32) = xmmword_1E85F8F40;
  *(a1 + 48) = unk_1E85F8F50;
  return result;
}

unint64_t VCMediaQueue_Create(unint64_t *a1, __int128 *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*a2 > 0x20u)
  {
    v2 = 2149580801;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaQueue_Create_cold_9();
      }
    }

    return v2;
  }

  if (_MergedGlobals_18 != -1)
  {
    VCMediaQueue_Create_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  if (!result)
  {
    VCMediaQueue_Create_cold_8();
    return *buf;
  }

  v6 = result;
  v7 = result + 25744;
  v8 = result + 16;
  if (result + 16 <= result + 25744 && result < v8)
  {
    bzero((result + 16), 0x6480uLL);
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];
    *(v8 + 112) = *(a2 + 14);
    *(v8 + 96) = v12;
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[3];
    *(v8 + 32) = a2[2];
    *(v8 + 48) = v15;
    *v8 = v13;
    *(v8 + 16) = v14;
    *(v8 + 64) = v10;
    *(v8 + 80) = v11;
    result = *(v6 + 120);
    if (result)
    {
      result = CFRetain(result);
    }

    if (v6 < v7)
    {
      v16 = *MEMORY[0x1E695E480];
      if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], 900, (v6 + 616)))
      {
        VCMediaQueue_Create_cold_2();
      }

      else if (_VCMediaQueue_CreateInternalQueue(v6, *a2, 3000))
      {
        VCMediaQueue_Create_cold_3();
      }

      else
      {
        keyExistsAndHasValidFormat = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableMQPacketBundling", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat && AppBooleanValue)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v49 = v18;
              v50 = 2080;
              v51 = "VCMediaQueue_Create";
              v52 = 1024;
              v53 = 2014;
              _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue: Force Disabling Packet Bundling", buf, 0x1Cu);
            }
          }

          v20 = 0;
          *(v6 + 92) = 0;
        }

        else
        {
          v20 = *(v6 + 92);
        }

        if (VCMediaQueuePacketBundler_Create(v16, (v6 + 136), v20, 1500))
        {
          VCMediaQueue_Create_cold_4();
        }

        else
        {
          v21 = VCRealTimeThread_Initialize(19, VCMediaQueueSendProc, v6, "com.apple.AVConference.VCMediaQueueSendProc", 3);
          *(v6 + 768) = v21;
          if (v21)
          {
            *(v6 + 280) = 0;
            *(v6 + 284) = 1000000;
            *(v6 + 296) = 0;
            *(v6 + 300) = 0;
            *(v6 + 760) = 0;
            *(v6 + 292) = 0;
            *(v6 + 764) = 1;
            *(v6 + 888) = 0;
            *(v6 + 304) = *(a2 + 17);
            *(v6 + 302) = 0;
            *(v6 + 25736) = 0;
            *(v6 + 376) = 0x3FF0000000000000;
            v22 = *(a2 + 6);
            if (v22 <= 0.0)
            {
              v22 = 2.0;
            }

            *(v6 + 368) = v22;
            FigCFWeakReferenceStore();
            v23 = micro();
            v24 = *(a2 + 1);
            *(v6 + 312) = v23 + v24;
            *(v6 + 352) = v24;
            pthread_mutex_init((v6 + 216), 0);
            pthread_mutex_init((v6 + 776), 0);
            pthread_cond_init((v6 + 840), 0);
            pthread_cond_init((v6 + 896), 0);
            pthread_mutex_init((v6 + 25552), 0);
            pthread_mutex_init((v6 + 25632), 0);
            if (*(a2 + 112) != 1 || (*buf = -1, v31 = _VCMediaQueue_RegisterStream(v6, 0, buf), !(v31 | *buf)))
            {
              if (*(a2 + 96) == 1)
              {
                _VCMediaQueue_CreateLogDumpFile(v6, *(a2 + 11), v25, v26, v27, v28, v29, v30, v46);
              }

              v32 = malloc_type_malloc(0x380uLL, 0x100004097079494uLL);
              *(v6 + 160) = v32;
              ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
              if (v32)
              {
                if (ErrorLogLevelForModule >= 7)
                {
                  v34 = VRTraceErrorLogLevelToCSTR();
                  v35 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v49 = v34;
                    v50 = 2080;
                    v51 = "_VCMediaQueue_RateStats_Init";
                    v52 = 1024;
                    v53 = 2437;
                    _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue IN/OUT RealTime stats are ENABLED", buf, 0x1Cu);
                  }
                }

                v36 = micro();
                v37 = *(v6 + 160);
                *(v37 + 8) = 0u;
                *(v37 + 24) = 0u;
                *(v37 + 40) = 0u;
                *(v37 + 56) = 0u;
                *(v37 + 72) = 0u;
                *(v37 + 88) = 0u;
                *(v37 + 104) = 0u;
                *(v37 + 120) = 0u;
                *(v37 + 148) = 0;
                *(v37 + 144) = 0;
                *v37 = v36;
                *(v37 + 136) = v36;
                *(v37 + 152) = 1;
                pthread_mutex_init((v37 + 160), 0);
                v38 = *(v6 + 160);
                *(v38 + 232) = 0u;
                v38 += 232;
                *(v38 + 16) = 0u;
                *(v38 + 32) = 0u;
                *(v38 + 48) = 0u;
                *(v38 + 64) = 0u;
                *(v38 + 80) = 0u;
                *(v38 + 96) = 0u;
                *(v38 + 112) = 0u;
                *(v38 + 140) = 0;
                *(v38 + 136) = 0;
                *(v38 - 8) = v36;
                *(v38 + 128) = v36;
                *(v38 + 144) = 0;
                pthread_mutex_init((v38 + 152), 0);
                v39 = *(v6 + 160);
                *(v39 + 456) = 0u;
                *(v39 + 472) = 0u;
                *(v39 + 488) = 0u;
                *(v39 + 504) = 0u;
                *(v39 + 520) = 0u;
                *(v39 + 536) = 0u;
                *(v39 + 552) = 0u;
                *(v39 + 568) = 0u;
                *(v39 + 596) = 0;
                *(v39 + 592) = 0;
                *(v39 + 448) = v36;
                *(v39 + 584) = v36;
                *(v39 + 600) = 1;
                pthread_mutex_init((v39 + 608), 0);
                v40 = *(v6 + 160);
                *(v40 + 680) = 0u;
                *(v40 + 696) = 0u;
                *(v40 + 712) = 0u;
                *(v40 + 728) = 0u;
                *(v40 + 744) = 0u;
                *(v40 + 760) = 0u;
                *(v40 + 776) = 0u;
                *(v40 + 792) = 0u;
                *(v40 + 820) = 0;
                *(v40 + 816) = 0;
                *(v40 + 672) = v36;
                *(v40 + 808) = v36;
                *(v40 + 824) = 0;
                pthread_mutex_init((v40 + 832), 0);
              }

              else if (ErrorLogLevelForModule >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VCMediaQueue_Create_cold_5();
                }
              }

              reportingRegisterPeriodicTaskWeak();
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v41 = VRTraceErrorLogLevelToCSTR();
                v42 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v43 = *a2;
                  v44 = *(a2 + 112);
                  v45 = *(a2 + 18);
                  *buf = 136316418;
                  v49 = v41;
                  v50 = 2080;
                  v51 = "VCMediaQueue_Create";
                  v52 = 1024;
                  v53 = 2065;
                  v54 = 1024;
                  v55 = v43;
                  v56 = 1024;
                  v57 = v44;
                  v58 = 1024;
                  v59 = v45;
                  _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue created successfully with 1 main queue, %d internal queues isRTXEnabled=%d schedulePolicy=%d", buf, 0x2Eu);
                }
              }

              v2 = 0;
              *a1 = v6;
              return v2;
            }

            v2 = v31;
            VCMediaQueue_Create_cold_6();
            goto LABEL_51;
          }

          VCMediaQueue_Create_cold_7();
        }
      }

      v2 = *buf;
LABEL_51:
      CFRelease(v6);
      return v2;
    }
  }

  __break(0x5519u);
  return result;
}

void VCMediaQueueSendProc(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = a1 + 25744;
  v5 = atomic_load((a1 + 764));
  if (v5)
  {
    _VCMediaQueue_FlushPacketsFromQueue(a1);
    pthread_mutex_lock((a1 + 776));
    *a3 = 1;
    *(a1 + 944) = 1;
    if (v4 > a1)
    {
      pthread_cond_signal((a1 + 896));

      pthread_mutex_unlock((a1 + 776));
      return;
    }

LABEL_133:
    __break(0x5519u);
  }

  if (v4 <= a1)
  {
    goto LABEL_133;
  }

  Count = CMSimpleQueueGetCount(*(a1 + 616));
  v8 = atomic_load((a1 + 888));
  if (v8)
  {
    v9 = *(a1 + 348);
    if (!v9)
    {
      v14 = (a1 + 776);
      pthread_mutex_lock((a1 + 776));
      goto LABEL_18;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a1 + 624) + v10;
      if ((*(v13 + 168) & 1) == 0)
      {
        v12 += CMSimpleQueueGetCount(*(v13 + 16));
        v9 = *(a1 + 348);
      }

      ++v11;
      v10 += 176;
    }

    while (v11 < v9);
  }

  else
  {
    v12 = Count;
  }

  v14 = (a1 + 776);
  pthread_mutex_lock((a1 + 776));
  if (v12)
  {
    v94 = 0;
    goto LABEL_22;
  }

LABEL_18:
  v15 = *(a1 + 312);
  v16 = v15 - micro();
  if (v16 <= 0.0)
  {
    v19 = 1;
  }

  else
  {
    convertTimeoutToRelativeTimespec(v16);
    *v102 = v17;
    *&v102[8] = v18;
    v19 = pthread_cond_timedwait_relative_np((a1 + 840), v14, v102) == 60;
  }

  v94 = v19;
LABEL_22:
  pthread_mutex_unlock(v14);
  if (atomic_exchange((a1 + 292), 0))
  {
    ++*(a1 + 328);
    _VCMediaQueue_FlushPacketsFromQueue(a1);
  }

  v20 = atomic_load((a1 + 760));
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 176 * v20;
    do
    {
      v23 = *(a1 + 624);
      v24 = v23 + 176 * *(a1 + 348);
      v25 = v23 + v21;
      if (v23 > v23 + v21 || v23 + v21 + 176 > v24)
      {
        goto LABEL_133;
      }

      if (atomic_exchange((v25 + 94), 0))
      {
        if (v25)
        {
          v27 = v25 >= v24;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          goto LABEL_133;
        }

        _VCMediaQueue_FlushInternalQueueBeforeTimestamp(v25, a1, -1);
      }

      v21 += 176;
    }

    while (v22 != v21);
  }

  v28 = atomic_load((a1 + 760));
  if (v28)
  {
    v29 = 0;
    v30 = 176 * v28;
    do
    {
      v31 = *(a1 + 624);
      v32 = v31 + 176 * *(a1 + 348);
      v33 = v31 + v29;
      if (v31 > v31 + v29 || v31 + v29 + 176 > v32)
      {
        goto LABEL_133;
      }

      v35 = atomic_exchange((v33 + 112), 0xFFFFFFFFFFFFFFFFLL);
      if (v35 != -1)
      {
        if (v33)
        {
          v36 = v33 >= v32;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          goto LABEL_133;
        }

        _VCMediaQueue_FlushInternalQueueBeforeTimestamp(v33, a1, v35);
      }

      v29 += 176;
    }

    while (v30 != v29);
  }

  v93 = v4;
  v37 = micro();
  if (v37 - *(a1 + 608) > *(a1 + 56))
  {
    v38 = *(a1 + 348);
    if (v38)
    {
      v39 = 0;
      while (1)
      {
        v40 = *(a1 + 624);
        v41 = v40 + 176 * *(a1 + 348);
        v42 = v40 + 176 * v39;
        if (v40 > v42 || v42 + 176 > v41)
        {
          goto LABEL_133;
        }

        v44 = CMSimpleQueueGetCount(*(v42 + 16));
        v45 = v44;
        if (*(v42 + 24) && v44 >= 2)
        {
          break;
        }

LABEL_92:
        ++*(v42 + 72);
        *(v42 + 76) = v45;
        if (++v39 == v38)
        {
          goto LABEL_93;
        }
      }

      Head = CMSimpleQueueGetHead(*(v42 + 16));
      v48 = atomic_load((v42 + 96));
      v49 = atomic_load((v42 + 120));
      v50 = *(v42 + 88);
      if (v50)
      {
        v51 = (v49 - Head[59]) / v50;
      }

      else
      {
        v51 = 0.0;
      }

      if (v42)
      {
        v52 = v42 >= v41;
      }

      else
      {
        v52 = 0;
      }

      if (v52)
      {
        goto LABEL_133;
      }

      v53 = *(v42 + 124);
      if (v48)
      {
        v54 = 40;
      }

      else
      {
        v54 = 32;
      }

      v55 = *(a1 + v54);
      v56 = v55 <= v51;
      if (v55 > v51 && (v48 & 1) != 0)
      {
        if (*(a1 + 129) != 1)
        {
          goto LABEL_88;
        }

        v57 = (*(a1 + 48) * 1000.0);
        v58 = 1;
        do
        {
          v58 += v57;
        }

        while (v58 < (v51 * 1000.0));
        if (v58 - v57 == *(v42 + 164))
        {
LABEL_88:
          v63 = *(v42 + 64);
          v64 = v51 + *(v42 + 56);
          *(v42 + 48) = v51;
          *(v42 + 56) = v64;
          if (v63 <= v51)
          {
            v65 = v51;
          }

          else
          {
            v65 = v63;
          }

          *(v42 + 64) = v65;
          goto LABEL_92;
        }

        *(v42 + 164) = v58 - v57;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          v56 = 2;
        }

        else
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v61 = *(v42 + 164);
            *v102 = 136316418;
            *&v102[4] = v59;
            *&v102[12] = 2080;
            *&v102[14] = "_VCMediaQueue_CheckQueueThresholdExceededForInternalQueue";
            v103 = 1024;
            v104 = 1792;
            v105 = 1024;
            *v106 = v53;
            *&v106[4] = 1024;
            *&v106[6] = v61;
            *v107 = 2048;
            *&v107[2] = v51;
            _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue size changes step with mediaQueueStreamId=%u quantizedQueueSize=%dms queueSizeInSecond=%f", v102, 0x32u);
          }

          v56 = 2;
        }
      }

      if (*(a1 + 152) && (v56 - 1) <= 1)
      {
        v62 = MEMORY[0x1E1289F20](a1 + 144);
        (*(*(a1 + 152) + 16))(v51);
        if (v62)
        {
          CFRelease(v62);
        }

        *(a1 + 608) = v37;
        _VCMediaQueue_ReportingEvent(a1, 193, v53);
      }

      goto LABEL_88;
    }
  }

LABEL_93:
  v66 = atomic_load((a1 + 280));
  if ((v66 | v94))
  {
    *(a1 + 309) = v94;
    _VCMediaQueue_SchedulePackets(a1);
  }

  v98 = 0;
  v99 = &v98;
  v100 = 0x2000000000;
  v101 = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2000000000;
  v97[3] = &v101;
  v67 = *(a1 + 136);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 0x40000000;
  v96[2] = __VCMediaQueueSendProc_block_invoke;
  v96[3] = &unk_1E85F8FA0;
  v96[6] = a1;
  v96[7] = v93;
  v96[8] = a1;
  v96[4] = &v98;
  v96[5] = v97;
  VCMediaQueuePacketBundler_BundlePackets(v67, v96);
  if (CMSimpleQueueGetCount(*(a1 + 616)) >= 1)
  {
    v68 = *(a1 + 72);
    if (v68 == 0.0)
    {
      _VCMediaQueue_DrainAllPacketsFromMainQueue(a1);
    }

    else
    {
      v69 = CMSimpleQueueGetCount(*(a1 + 616));
      v70 = fmin((*(a1 + 360) + 1.0) / v68, 4.0);
      v95 = v69;
      if (v69 / v70 + 1 > *(a1 + 80))
      {
        v71 = v69 / v70 + 1;
      }

      else
      {
        v71 = *(a1 + 80);
      }

      if (v71)
      {
        v72 = 0;
        v73 = 0;
        v74 = a1 + 396;
        v75 = a1 + 412;
        *(a1 + 404) = 0;
        *(a1 + 396) = 0;
        if (v70 <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = v70;
        }

        while (1)
        {
          v77 = CMSimpleQueueGetCount(*(a1 + 616));
          if (v77 < v71)
          {
            break;
          }

          for (i = 0; i < v71; ++i)
          {
            CMSimpleQueueDequeue(*(a1 + 616));
            _VCMediaQueue_SendAndFreePackets(a1);
            ++*(a1 + 436);
          }

          v79 = (v74 + 4 * v72);
          if (v79 >= v75 || v79 < v74)
          {
            goto LABEL_133;
          }

          *v79 = v71;
          pthread_mutex_lock((a1 + 776));
          if (CMSimpleQueueGetCount(*(a1 + 616)) >= 1)
          {
            memset(v102, 170, 16);
            convertTimeoutToRelativeTimespec(v68);
            *v102 = v80;
            *&v102[8] = v81;
            pthread_cond_timedwait_relative_np((a1 + 840), (a1 + 776), v102);
          }

          v73 += v71;
          pthread_mutex_unlock((a1 + 776));
          if (++v72 == v76)
          {
            goto LABEL_118;
          }
        }

        if (v77)
        {
          v82 = _VCMediaQueue_DrainAllPacketsFromMainQueue(a1);
          v83 = (v74 + 4 * v72);
          if (v83 >= v75 || v83 < v74)
          {
            goto LABEL_133;
          }

          v73 += v82;
          *v83 = v82;
        }

LABEL_118:
        if (v95 != v73 && VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v89 = VRTraceErrorLogLevelToCSTR();
          v90 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v91 = *(a1 + 360);
            v92 = *(a1 + 72);
            *v102 = 136316674;
            *&v102[4] = v89;
            *&v102[12] = 2080;
            *&v102[14] = "_VCMediaQueue_PacePacketSendFromMainQueue";
            v103 = 1024;
            v104 = 502;
            v105 = 2048;
            *v106 = v91;
            *&v106[8] = 2048;
            *v107 = v92;
            *&v107[8] = 1024;
            v108 = v95;
            v109 = 1024;
            v110 = v73;
            _os_log_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Not able to finish sending all packets in expectedScheduleInterval=%f, packetSendPacingInterval=%f, totalPacketCount=%u, packetSent=%u", v102, 0x3Cu);
          }
        }
      }

      else
      {
        VCMediaQueueSendProc_cold_1();
      }
    }
  }

  _VCMediaQueue_FreeMediaPacketList(a1, v99[3]);
  v86 = atomic_load((a1 + 888));
  if ((v86 & 1) == 0 || *(a1 + 308) == 1)
  {
    LODWORD(v84) = *(a1 + 344);
    LODWORD(v85) = *(a1 + 332);
    if (v85 * 0.1 >= v84)
    {
      *(a1 + 960) = 0;
    }

    else
    {
      v87 = *(a1 + 960);
      v88 = micro();
      if (v87 == 0.0)
      {
        *(a1 + 960) = v88;
      }

      else if (v88 - *(a1 + 960) >= 0.5)
      {
        reportingSymptom();
      }
    }

    _VCMediaQueue_DumpStatisticsToFile(a1);
  }

  _Block_object_dispose(v97, 8);
  _Block_object_dispose(&v98, 8);
}

uint64_t VCMediaQueue_Start(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  v2 = 1;
  atomic_compare_exchange_strong((a1 + 764), &v2, 0);
  if (v2 == 1)
  {
    _VCMediaQueue_ReportingEvent(a1, 321, 0xFFFFFFFF);
    *(a1 + 412) = 0u;
    *(a1 + 428) = 0u;
    *(a1 + 444) = 0u;
    *(a1 + 460) = 0u;
    VCRealTimeThread_Start(*(a1 + 768));
    pthread_mutex_lock((a1 + 776));
    *(a1 + 944) = 0;
    pthread_mutex_unlock((a1 + 776));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "VCMediaQueue_Start";
      v10 = 1024;
      v11 = 2093;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueueSendProc thread started", &v6, 0x1Cu);
    }
  }

  return 0;
}

uint64_t VCMediaQueue_Stop(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  v2 = 0;
  atomic_compare_exchange_strong((a1 + 764), &v2, 1u);
  if (v2)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 776));
  pthread_cond_signal((a1 + 840));
  pthread_mutex_unlock((a1 + 776));
  VCMediaQueue_SetAudioStallBasebandFlushState(a1, 0, *(a1 + 25728));
  pthread_mutex_lock((a1 + 776));
  if (*(a1 + 944))
  {
LABEL_6:
    pthread_mutex_unlock((a1 + 776));
  }

  else
  {
    while (1)
    {
      memset(v10, 170, 16);
      convertTimeoutToRelativeTimespec(5.0);
      *v10 = v3;
      *&v10[8] = v4;
      if (pthread_cond_timedwait_relative_np((a1 + 896), (a1 + 776), v10) == 60)
      {
        break;
      }

      if (*(a1 + 944))
      {
        goto LABEL_6;
      }
    }

    pthread_mutex_unlock((a1 + 776));
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 136315650;
        *&v10[4] = v8;
        *&v10[12] = 2080;
        *&v10[14] = "VCMediaQueue_Stop";
        v11 = 1024;
        v12 = 2118;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Sendproc thread might not have cleaned residual packets in internal Queues", v10, 0x1Cu);
      }
    }
  }

  VCRealTimeThread_Stop(*(a1 + 768));
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return 0;
  }

  v5 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *v10 = 136315650;
    *&v10[4] = v5;
    *&v10[12] = 2080;
    *&v10[14] = "VCMediaQueue_Stop";
    v11 = 1024;
    v12 = 2122;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueueSendProc thread ended", v10, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t VCMediaQueue_SetAudioStallBasebandFlushState(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = atomic_load((a1 + 300));
    if (v4)
    {
      pthread_mutex_lock((a1 + 25632));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 25696);
          v12 = 136316418;
          v13 = v7;
          v14 = 2080;
          v15 = "VCMediaQueue_SetAudioStallBasebandFlushState";
          v16 = 1024;
          v17 = 2714;
          v18 = 1024;
          v19 = v9;
          v20 = 1024;
          v21 = a2;
          v22 = 2048;
          v23 = a3;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set audioStallFlushState old=%d to new=%d on rtpHandle=%p", &v12, 0x32u);
        }
      }

      *(a1 + 25728) = a3;
      if (*(a1 + 25696) != a2)
      {
        if (a2)
        {
          *(a1 + 25712) = 0;
          *(a1 + 25697) = 1;
        }

        *(a1 + 25696) = a2;
      }

      pthread_mutex_unlock((a1 + 25632));
      return 0;
    }

    else
    {
      v10 = 2149580801;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCMediaQueue_SetAudioStallBasebandFlushState_cold_1();
        }
      }
    }
  }

  else
  {
    VCMediaQueue_SetAudioStallBasebandFlushState_cold_2();
    return v12;
  }

  return v10;
}

uint64_t VCMediaQueue_AllocMediaPacket(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = 2149580803;
  if (!a1)
  {
    return 2149580801;
  }

  v22[0] = -1;
  if (_VCMediaQueue_GetInternalQueueIndexFromStreamId(a1, a2, a3 == 2, v22))
  {
    VCMediaQueue_AllocMediaPacket_cold_1();
    return v22[1];
  }

  v8 = v22[0];
  if (v22[0] == -1 && (v9 = _VCMediaQueue_RegisterStream(a1, a2, v22), v8 = v22[0], v9) || (v8 & 0x80000000) != 0)
  {
    VCMediaQueue_AllocMediaPacket_cold_4();
    return v22[1];
  }

  v10 = *(a1 + 624);
  v11 = (v10 + 176 * v8);
  if (v11 >= v10 + 176 * *(a1 + 348) || v11 < v10)
  {
LABEL_33:
    __break(0x5519u);
  }

  v13 = CMSimpleQueueDequeue(*v11);
  *a4 = v13;
  if (v13)
  {
    *(a1 + 952) = 0;
    v14 = v13[1];
    *(v13 + 2) = 0u;
    *(v13 + 3) = 0u;
    *(v13 + 4) = 0u;
    *(v13 + 5) = 0u;
    *(v13 + 6) = 0u;
    *(v13 + 7) = 0u;
    *(v13 + 8) = 0u;
    *(v13 + 9) = 0u;
    *(v13 + 10) = 0u;
    *(v13 + 11) = 0u;
    *(v13 + 12) = 0u;
    *(v13 + 13) = 0u;
    *(v13 + 14) = 0u;
    *(v13 + 15) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 17) = 0u;
    *(v13 + 18) = 0u;
    v13[38] = 0;
    *v13 = 0u;
    *(v13 + 1) = 0u;
    *(*a4 + 8) = v14;
    v15 = *a4;
    *(*a4 + 228) = a2;
    v16 = *(a1 + 624);
    v17 = v16 + 176 * v22[0];
    if (v17 >= v16 + 176 * *(a1 + 348) || v17 < v16)
    {
      goto LABEL_33;
    }

    v4 = CMSimpleQueueEnqueue(*(v17 + 8), v15);
    if (v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCMediaQueue_AllocMediaPacket_cold_2();
        }
      }

      return 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaQueue_AllocMediaPacket_cold_3();
      }
    }

    v18 = *(a1 + 952);
    v19 = micro();
    if (v18 == 0.0)
    {
      *(a1 + 952) = v19;
    }

    else if (v19 - *(a1 + 952) >= 5.0)
    {
      v20 = atomic_load((a1 + 764));
      if ((v20 & 1) == 0)
      {
        reportingSymptom();
      }
    }
  }

  return v4;
}

void VCMediaQueue_AddPacket(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (a2)
  {
    v4 = 504;
    if (*(a2 + 227))
    {
      v4 = 512;
    }

    atomic_fetch_add((a1 + v4), 1uLL);
    atomic_fetch_add((a1 + 520), 1uLL);
  }

  v5 = atomic_load((a1 + 300));
  v6 = *(a2 + 228);
  v7 = *(a2 + 240);
  v43 = *(a2 + 176);
  v44 = -1;
  if (_VCMediaQueue_GetInternalQueueIndexFromStreamId(a1, v6, *(a2 + 295), &v44) || (v44 & 0x80000000) != 0)
  {
    VCMediaQueue_AddPacket_cold_3(v43, v6, buf);
    return;
  }

  v8 = *(a1 + 624);
  v9 = v8 + 176 * *(a1 + 348);
  v10 = v8 + 176 * v44;
  if (v8 > v10 || v10 + 176 > v9)
  {
    goto LABEL_93;
  }

  if (*(v10 + 24))
  {
    goto LABEL_26;
  }

  if (v43 <= 1)
  {
    if (v43)
    {
      if (v43 == 1)
      {
        v12 = 3;
LABEL_21:
        *(v10 + 24) = v12;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

LABEL_20:
    v12 = 2;
    goto LABEL_21;
  }

  if (v43 == 2)
  {
    *(v10 + 24) = 1;
    goto LABEL_23;
  }

  if (v43 == 3)
  {
    goto LABEL_20;
  }

LABEL_23:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaQueue_AddPacket_cold_1();
    }
  }

LABEL_26:
  if (!*(a2 + 268))
  {
    *(a2 + 268) = 1;
  }

  if (*(v10 + 88))
  {
    v13 = 1;
  }

  else
  {
    v13 = v7 == 0;
  }

  if (!v13)
  {
    *(v10 + 88) = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v47 = v14;
        v48 = 2080;
        v49 = "VCMediaQueue_AddPacket";
        v50 = 1024;
        v51 = 2229;
        v52 = 1024;
        *v53 = v7;
        *&v53[4] = 1024;
        *&v53[6] = v43;
        *v54 = 1024;
        *&v54[2] = v6;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Set internalQueue timestampRateHz=%u for packetType=%d, mediaQueueStreamId=%u", buf, 0x2Eu);
      }
    }
  }

  if (*(a2 + 289) == 1 && *(a2 + 292) == 1)
  {
    atomic_fetch_or((v10 + 92), 1u);
  }

  if (*(a2 + 226) == 1)
  {
    atomic_fetch_or((v10 + 96), 1u);
  }

  if (*(a2 + 227) == 1)
  {
    atomic_fetch_or((v10 + 97), 1u);
    v16 = *(a2 + 272);
    v17 = atomic_load((a1 + 300));
    if (v17)
    {
      pthread_mutex_lock((a1 + 25632));
      if (*(a1 + 25696) == 1)
      {
        if (*(a1 + 25697))
        {
          *(a1 + 25697) = 0;
          *(a1 + 25704) = v16;
          *(a1 + 25716) = *(a2 + 236);
          v18 = v16;
        }

        else
        {
          v18 = *(a1 + 25704);
        }

        v19 = *(a2 + 293) ? 48 : 28;
        *(a1 + 25712) += *(a2 + 4) + v19;
        v20 = v16 - v18;
        if (v16 - v18 > 1.0)
        {
          if (*(a1 + 25698) == 1 && VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(a1 + 25704);
              *buf = 136316162;
              v47 = v21;
              v48 = 2080;
              v49 = "_VCMediaQueue_ProcessAudioPacketsForBasebandQueuing";
              v50 = 1024;
              v51 = 2681;
              v52 = 2048;
              *v53 = v16;
              *&v53[8] = 2048;
              *v54 = v23;
              _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d UNEXPECTED pending flush not acked yet at time=%f lastFlushTime=%f!", buf, 0x30u);
            }
          }

          v24 = ((8 * *(a1 + 25712)) / v20);
          *(a1 + 25712) = 0;
          v25 = *(a1 + 25716);
          v45 = 0;
          if (RTPFlushBaseband_SpecialMQAudioTS(*(a1 + 25728), v25 + 1, v24, &v45))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                VCMediaQueue_AddPacket_cold_2();
              }
            }
          }

          else
          {
            *(a1 + 25720) = v45;
            *(a1 + 25704) = v16;
            *(a1 + 25698) = 1;
            *(a1 + 25716) = *(a2 + 236);
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(a2 + 236);
                v29 = *(a2 + 248);
                *buf = 136316930;
                v47 = v26;
                v48 = 2080;
                v49 = "_VCMediaQueue_ProcessAudioPacketsForBasebandQueuing";
                v50 = 1024;
                v51 = 2696;
                v52 = 2048;
                *v53 = v16;
                *&v53[8] = 1024;
                *v54 = v28;
                *&v54[4] = 1024;
                *&v54[6] = v29;
                v55 = 1024;
                v56 = v24;
                v57 = 1024;
                v58 = v45;
                _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Issued audio flush at time=%f with packet timestamp=%u sequenceNumber=%u with rate=%u transactionID=%u!", buf, 0x3Eu);
              }
            }
          }
        }
      }

      pthread_mutex_unlock((a1 + 25632));
    }
  }

  if (*(a2 + 289) != 1 || *(a2 + 291) != 1)
  {
    goto LABEL_69;
  }

  atomic_store(*(a2 + 236), (v10 + 104));
  if (v10 && v10 >= v9)
  {
LABEL_93:
    __break(0x5519u);
    return;
  }

  v30 = *(v10 + 40);
  if (v30 > 0.0)
  {
    atomic_store(*(a2 + 272) - v30 < 1.1, (v10 + 93));
  }

  *(v10 + 40) = *(a2 + 272);
LABEL_69:
  if (v5)
  {
    _VCMediaQueue_RateStats_TrackMediaPacket(*(a1 + 160), a2, 1, *(a2 + 272));
  }

  v31 = atomic_load((a1 + 301));
  v32 = atomic_load((a1 + 300));
  v33 = atomic_load((a1 + 304));
  if (*(a1 + 88) == 2 && (v32 & 1) != 0 && (v31 & 1) == 0 && (v34 = atomic_load((a1 + 284)), v34 > v33))
  {
    v35 = 1;
    atomic_store(1u, (a1 + 888));
    *(a2 + 224) = 1;
  }

  else
  {
    atomic_store(0, (a1 + 888));
    v35 = *(a2 + 224);
  }

  if (*(a1 + 96) == 1 && *(a2 + 294) == 1)
  {
    v36 = *(a2 + 8);
    if (v36)
    {
      CFRetain(v36);
    }
  }

  v37 = *(a2 + 236);
  v38 = CMSimpleQueueEnqueue(*(v10 + 16), a2);
  if (v38)
  {
    v39 = v38;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v47 = v40;
        v48 = 2080;
        v49 = "VCMediaQueue_AddPacket";
        v50 = 1024;
        v51 = 2266;
        v52 = 1024;
        *v53 = v39;
        *&v53[4] = 1024;
        *&v53[6] = v43;
        *v54 = 1024;
        *&v54[2] = v6;
        _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d Internal queue has error %d when adding media packet for packet type=%d, mediaQueueStreamId=%u", buf, 0x2Eu);
      }
    }

    if (*(a2 + 294) == 1)
    {
      v42 = *(a2 + 8);
      if (v42)
      {
        CFRelease(v42);
        *(a2 + 8) = 0;
      }

      *(a2 + 294) = 0;
    }
  }

  else
  {
    atomic_fetch_add((a1 + 528), 1uLL);
    atomic_store(v37, (v10 + 120));
    if (v35)
    {
      VCMediaQueue_SchedulePackets(a1);
    }
  }
}

uint64_t VCMediaQueue_SchedulePackets(uint64_t a1)
{
  if (!a1)
  {
    return 2149580801;
  }

  atomic_fetch_or((a1 + 280), 1u);
  pthread_mutex_lock((a1 + 776));
  pthread_cond_signal((a1 + 840));
  pthread_mutex_unlock((a1 + 776));
  return 0;
}

uint64_t VCMediaQueue_FlushAllPackets(uint64_t a1)
{
  if (!a1)
  {
    return 2149580801;
  }

  atomic_fetch_or((a1 + 292), 1u);
  pthread_mutex_lock((a1 + 776));
  pthread_cond_signal((a1 + 840));
  pthread_mutex_unlock((a1 + 776));
  return 0;
}

uint64_t VCMediaQueue_FlushPacketsInStream(uint64_t result, int a2, unsigned __int8 a3)
{
  v3 = 2149580822;
  if (!result)
  {
    return 2149580801;
  }

  v4 = result;
  v5 = *(result + 128);
  v6 = atomic_load((result + 760));
  if (v6 <= v5)
  {
LABEL_8:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaQueue_FlushPacketsInStream_cold_1();
      }
    }

    return v3;
  }

  v7 = -v5;
  v8 = -v6;
  v9 = (result + 632 + 4 * v5);
  while (v9 < result + 760 && v9 >= result + 632)
  {
    if (*v9 == a2)
    {
      v10 = *(result + 624);
      v11 = v10 + 176 * -v7;
      if (v10 <= v11 && v11 + 176 <= v10 + 176 * *(result + 348))
      {
        atomic_fetch_or((v11 + 95), a3);
        atomic_fetch_or((v11 + 94), 1u);
        pthread_mutex_lock((result + 776));
        pthread_cond_signal((v4 + 840));
        pthread_mutex_unlock((v4 + 776));
        return 0;
      }

      break;
    }

    --v7;
    ++v9;
    if (v8 == v7)
    {
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t VCMediaQueue_GetTimeRateChanged(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2149580801;
  }

  pthread_mutex_lock((a1 + 216));
  if (a2)
  {
    *a2 = *(a1 + 200);
  }

  if (a3)
  {
    *a3 = *(a1 + 180);
  }

  pthread_mutex_unlock((a1 + 216));
  return 0;
}

uint64_t VCMediaQueue_GetTimeRefreshFrame(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2149580801;
  }

  pthread_mutex_lock((a1 + 216));
  if (a2)
  {
    *a2 = *(a1 + 208);
  }

  if (a3)
  {
    *a3 = *(a1 + 184);
  }

  pthread_mutex_unlock((a1 + 216));
  return 0;
}

uint64_t VCMediaQueue_UpdateAudioOnlyRateChange(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 2149580801;
  }

  pthread_mutex_lock((a1 + 216));
  if (*(a1 + 188) < a2)
  {
    *(a1 + 176) = 1;
    *(a1 + 188) = a2;
  }

  pthread_mutex_unlock((a1 + 216));
  return 0;
}

uint64_t VCMediaQueue_SetPeakBitrate(_DWORD *a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "VCMediaQueue_SetPeakBitrate";
      v11 = 1024;
      v12 = 2396;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set with peak bitrate = %u", &v7, 0x22u);
    }
  }

  atomic_store(a2, a1 + 71);
  _VCMediaQueue_ReportingEvent(a1, 191, 0xFFFFFFFF);
  return 0;
}

uint64_t VCMediaQueue_SetMTUBytes(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "VCMediaQueue_SetMTUBytes";
      v13 = 1024;
      v14 = 2406;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set with MTU bytes = %u", &v9, 0x22u);
    }
  }

  atomic_store(a2, (a1 + 288));
  v6 = *(a1 + 136);
  v7 = atomic_load((a1 + 288));
  VCMediaQueuePacketBundler_SetMTU(v6, v7);
  _VCMediaQueue_ReportingEvent(a1, 192, 0xFFFFFFFF);
  return 0;
}

uint64_t VCMediaQueue_RetrieveAudioVideoRates(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 160))
  {
    v10 = micro();
    v11 = *(a1 + 160);
    pthread_mutex_lock((v11 + 160));
    v12 = *(v11 + 136);
    v13 = *(v11 + 148);
    pthread_mutex_unlock((v11 + 160));
    v14 = v10 - v12;
    v15 = 0.0;
    v16 = 0.0;
    if (v14 <= 0.5)
    {
      v16 = (8 * v13) / (v14 + 0.484375);
    }

    *a2 = v16;
    v17 = *(a1 + 160);
    pthread_mutex_lock((v17 + 384));
    v18 = *(v17 + 360);
    v19 = *(v17 + 372);
    pthread_mutex_unlock((v17 + 384));
    if (v10 - v18 <= 0.5)
    {
      v15 = (8 * v19) / (v10 - v18 + 0.484375);
    }

    *a3 = v15;
    v20 = *(a1 + 160);
    pthread_mutex_lock((v20 + 608));
    v21 = *(v20 + 584);
    v22 = *(v20 + 596);
    pthread_mutex_unlock((v20 + 608));
    v23 = v10 - v21;
    v24 = 0.0;
    v25 = 0.0;
    if (v23 <= 0.5)
    {
      v25 = (8 * v22) / (v23 + 0.484375);
    }

    *a4 = v25;
    v26 = *(a1 + 160);
    pthread_mutex_lock((v26 + 832));
    v27 = *(v26 + 808);
    v28 = *(v26 + 820);
    pthread_mutex_unlock((v26 + 832));
    if (v10 - v27 <= 0.5)
    {
      v24 = (8 * v28) / (v10 - v27 + 0.484375);
    }

    v29 = 0;
    *a5 = v24;
  }

  else
  {
    v29 = 2149580801;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (a1)
        {
          v33 = *(a1 + 160);
        }

        else
        {
          v33 = 0;
        }

        v34 = 136316162;
        v35 = v30;
        v36 = 2080;
        v37 = "VCMediaQueue_RetrieveAudioVideoRates";
        v38 = 1024;
        v39 = 2469;
        v40 = 2048;
        v41 = a1;
        v42 = 2048;
        v43 = v33;
        _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, "VCMediaQueue [%s] %s:%d mediaQueue or its rateStats cannot be NULL mediaQueue=%p mediaQueue->rateStats=%p", &v34, 0x30u);
      }
    }
  }

  return v29;
}

uint64_t VCMediaQueue_SetHighlyBurstyTrafficMode(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "VCMediaQueue_SetHighlyBurstyTrafficMode";
      v11 = 1024;
      v12 = 2485;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set highlyBurstyTrafficMode=%u", &v7, 0x22u);
    }
  }

  result = 0;
  atomic_store(a2, (a1 + 301));
  return result;
}

uint64_t VCMediaQueue_SetOneToOne(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  v3 = atomic_load((a1 + 300));
  if ((v3 & 1) == 0)
  {
    atomic_store(0, (a1 + 512));
    atomic_store(0, (a1 + 504));
    atomic_store(0, (a1 + 520));
    atomic_store(0, (a1 + 528));
    *(a1 + 560) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 544) = 0u;
  }

  atomic_store(a2, (a1 + 300));
  VCMediaQueuePacketBundler_SetOneToOne(*(a1 + 136), a2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = "VCMediaQueue_SetOneToOne";
    v11 = 1024;
    v12 = 2499;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set oneToOne=%u", &v7, 0x22u);
  }

  return 0;
}

uint64_t VCMediaQueue_SetMinBitrateWithoutThrottling(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "VCMediaQueue_SetMinBitrateWithoutThrottling";
      v11 = 1024;
      v12 = 2507;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set minBitrateWithoutThrottling=%u", &v7, 0x22u);
    }
  }

  result = 0;
  atomic_store(a2, (a1 + 304));
  return result;
}

uint64_t VCMediaQueue_SetECNEnabled(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "VCMediaQueue_SetECNEnabled";
      v11 = 1024;
      v12 = 2523;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set ECNEnabled=%u", &v7, 0x22u);
    }
  }

  result = 0;
  atomic_store(a2, (a1 + 302));
  return result;
}

uint64_t VCMediaQueue_SetMediaQueueSizeThresholdExceededBlock(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    return 2149580801;
  }

  if (a3)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      _Block_release(v5);
      *(a1 + 152) = 0;
    }

    if (*(a1 + 144))
    {
      FigCFWeakReferenceStore();
    }

    FigCFWeakReferenceStore();
    v6 = _Block_copy(a3);
    result = 0;
    *(a1 + 152) = v6;
  }

  else
  {
    VCMediaQueue_SetMediaQueueSizeThresholdExceededBlock_cold_1();
    return v8;
  }

  return result;
}

uint64_t VCMediaQueue_ComputeOneToOneStatsWithPacketInfo(uint64_t a1, unsigned __int16 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCMediaQueue_ComputeOneToOneStatsWithPacketInfo_cold_2();
    return v5;
  }

  v2 = atomic_load((a1 + 300));
  if ((v2 & 1) == 0)
  {
    VCMediaQueue_ComputeOneToOneStatsWithPacketInfo_cold_1();
    return v5;
  }

  v4[0] = a1 + 976;
  v4[1] = *(a1 + 968);
  VCMediaQueueUtil_FindPacketInTxHistory(a2, v4, (a1 + 25552), 1, 1.0, 5.0);
  return 0;
}

uint64_t VCMediaQueue_TrafficMetricFromMediaQueueTxHistory(uint64_t a1, int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = (a1 + 25552);
    pthread_mutex_lock((a1 + 25552));
    v5 = *(a1 + 968);
    if (v5 && (v6 = *(a1 + 972), v6 >= 1))
    {
      v7 = v5 - 1;
      v8 = a1 + 976;
      v9 = v7;
      while (1)
      {
        v10 = v8 + 48 * (v9 & 0x1FF);
        if (v10 >= v4 || v10 < v8)
        {
          goto LABEL_23;
        }

        if (a2 == 1 && *(v10 + 12))
        {
          break;
        }

        --v9;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      v14 = v8 + 48 * v7;
      if (v14 >= v4 || v14 < v8)
      {
LABEL_23:
        __break(0x5519u);
      }

      v12 = *(v14 + 24) - *(v10 + 24);
    }

    else
    {
LABEL_13:
      v12 = 0;
    }

    pthread_mutex_unlock(v4);
  }

  else
  {
    VCMediaQueue_TrafficMetricFromMediaQueueTxHistory_cold_1(v16);
    return v16[0];
  }

  return v12;
}

uint64_t VCMediaQueue_SetIsFrameBasedRedundancyEnabled(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2149580801;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "VCMediaQueue_SetIsFrameBasedRedundancyEnabled";
      v11 = 1024;
      v12 = 2644;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue set isFrameBasedRedundancyEnabled=%u", &v7, 0x22u);
    }
  }

  result = 0;
  atomic_store(a2, (a1 + 25736));
  return result;
}

uint64_t VCMediaQueue_GetIsFrameBasedRedundancyEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load((a1 + 25736));
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VCMediaQueue_BasebandFlushAcked(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCMediaQueue_BasebandFlushAcked_cold_1();
    return v22;
  }

  v8 = a1 + 24576;
  pthread_mutex_lock((a1 + 25632));
  if (a2 && a3)
  {
    v9 = *a3;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v8 + 1122);
        v13 = *(v8 + 1144);
        v22 = 136316930;
        v23 = v10;
        v24 = 2080;
        v25 = "VCMediaQueue_BasebandFlushAcked";
        v26 = 1024;
        v27 = 2757;
        v28 = 1024;
        v29 = v9;
        v30 = 1024;
        v31 = a2;
        v32 = 1024;
        v33 = v12;
        v34 = 1024;
        v35 = a4;
        v36 = 1024;
        v37 = v13;
        v14 = "VCMediaQueue [%s] %s:%d Receive baseband flush ack for audio pkts starting with seq=%u, numOfPacketDropped=%u, pendingBasebandFlush=%d, with transactionID=%u, currentTransactionID=%u";
        v15 = v11;
        v16 = 58;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v22, v16);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v8 + 1122);
      v20 = *(v8 + 1144);
      v22 = 136316674;
      v23 = v17;
      v24 = 2080;
      v25 = "VCMediaQueue_BasebandFlushAcked";
      v26 = 1024;
      v27 = 2759;
      v28 = 1024;
      v29 = a2;
      v30 = 1024;
      v31 = v19;
      v32 = 1024;
      v33 = a4;
      v34 = 1024;
      v35 = v20;
      v14 = "VCMediaQueue [%s] %s:%d Receive baseband flush ack without dropping audio pkts numOfPacketDropped=%u, pendingBasebandFlush=%d, with transactionID=%u, currentTransactionID=%u";
      v15 = v18;
      v16 = 52;
      goto LABEL_10;
    }
  }

  if (*(v8 + 1144) == a4)
  {
    *(v8 + 1122) = 0;
  }

  pthread_mutex_unlock((a1 + 25632));
  return 0;
}

uint64_t _VCMediaQueueFinalize(unint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  reportingUnregisterPeriodicTask();
  VCRealTimeThread_Finalize(*(a1 + 768));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v2;
      v12 = 2080;
      v13 = "_VCMediaQueueFinalize";
      v14 = 1024;
      v15 = 351;
      v16 = 2048;
      v17 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Finalize the media queue:%p", &v10, 0x26u);
    }
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 616);
  if (v6)
  {
    CFRelease(v6);
  }

  if (a1 + 25744 <= a1)
  {
    __break(0x5519u);
  }

  _VCMediaQueue_DestroyInternalQueues(a1);
  v7 = *(a1 + 152);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    pthread_mutex_destroy((v8 + 160));
    pthread_mutex_destroy((*(a1 + 160) + 384));
    pthread_mutex_destroy((*(a1 + 160) + 608));
    pthread_mutex_destroy((*(a1 + 160) + 832));
    free(*(a1 + 160));
    *(a1 + 160) = 0;
  }

  _VCMediaQueue_ReleaseLogDumpFile(a1);
  FigCFWeakReferenceStore();
  pthread_mutex_destroy((a1 + 216));
  pthread_mutex_destroy((a1 + 776));
  pthread_cond_destroy((a1 + 840));
  pthread_cond_destroy((a1 + 896));
  pthread_mutex_destroy((a1 + 25552));
  return pthread_mutex_destroy((a1 + 25632));
}

uint64_t _VCMediaQueue_AddInfoToOneToOneTxHistory(uint64_t a1, __int16 a2, double a3)
{
  v6 = (a1 + 25552);
  result = pthread_mutex_lock((a1 + 25552));
  v8 = *(a1 + 968);
  v9 = a1 + 976 + 48 * v8;
  if (a1 + 976 > v9 || v9 + 48 > v6)
  {
    __break(0x5519u);
  }

  else
  {
    *(v9 + 2) = a2;
    *(v9 + 40) = a3;
    *(v9 + 4) = *(a1 + 25616);
    v11 = *(a1 + 25624);
    *v9 = 0;
    *(v9 + 12) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = v11;
    *(v9 + 32) = 0;
    *(a1 + 968) = (v8 + 1) & 0x1FF;
    v12 = *(a1 + 972);
    if (v12 <= 0x1FF)
    {
      *(a1 + 972) = v12 + 1;
    }

    return pthread_mutex_unlock(v6);
  }

  return result;
}

void _VCMediaQueue_FlushPacketsFromQueue(uint64_t a1)
{
  v1 = *(a1 + 348);
  if (v1)
  {
    v3 = 0;
    v4 = 176 * v1;
    while (1)
    {
      v5 = *(a1 + 624);
      v6 = v5 + v3;
      if (v5 + v3)
      {
        if (v6 < v5 || v6 >= v5 + 176 * *(a1 + 348))
        {
          break;
        }
      }

      _VCMediaQueue_FlushInternalQueueBeforeTimestamp(v6, a1, -1);
      v3 += 176;
      if (v4 == v3)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

uint64_t __VCMediaQueueSendProc_block_invoke(void *a1, void *element, int a3, int a4, int a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1[6];
  v6 = a1[8];
  if (v5 + 25744 > a1[7] || v6 > v5)
  {
    goto LABEL_28;
  }

  *(v5 + 428) += a3;
  v9 = a1[6];
  if (v9 + 25744 > a1[7] || v6 > v9)
  {
    goto LABEL_28;
  }

  *(v9 + 424) += a4 + a3;
  v11 = a1[6];
  if (v11 + 25744 > a1[7] || v6 > v11)
  {
    goto LABEL_28;
  }

  *(v11 + 432) += a5;
  if (!element)
  {
    return 4294954516;
  }

  if (*(*(a1[4] + 8) + 24))
  {
    v14 = 4294954516;
  }

  else
  {
    v15 = a1[6];
    if (v15 + 25744 > a1[7] || v6 > v15)
    {
      goto LABEL_28;
    }

    v14 = CMSimpleQueueEnqueue(*(v15 + 616), element);
    if (!v14)
    {
      return v14;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = v16;
      v24 = 2080;
      v25 = "VCMediaQueueSendProc_block_invoke";
      v26 = 1024;
      v27 = 548;
      v28 = 1024;
      v29 = v14;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d Unable to enqueue onto the main queue. Dropping the packet. status=%d", &v22, 0x22u);
    }
  }

  v18 = a1[6];
  if (v18 + 25744 > a1[7] || a1[8] > v18)
  {
LABEL_28:
    __break(0x5519u);
  }

  ++*(v18 + 492);
  **(*(a1[5] + 8) + 24) = element;
  v19 = *(a1[5] + 8);
  v20 = **(v19 + 24);
  do
  {
    *(v19 + 24) = v20 + 304;
    v19 = *(a1[5] + 8);
    v20 = **(v19 + 24);
  }

  while (v20);
  return v14;
}

void _VCMediaQueue_FlushInternalQueueBeforeTimestamp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v62[2] + 6) = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v6 = atomic_exchange((a1 + 95), 0);
  v7 = atomic_load((a1 + 104));
  if (CMSimpleQueueGetCount(*(a1 + 16)) < 1)
  {
    return;
  }

  v8 = 0;
  do
  {
    Head = CMSimpleQueueGetHead(*(a1 + 16));
    v10 = Head;
    if (a3 != -1 && *(Head + 59) > a3)
    {
      break;
    }

    if (v6)
    {
      v11 = Head[289] != 1 || v7 == -1;
      if (!v11 && (*(Head + 59) - v7) < 0x7FFFFFFF)
      {
        break;
      }
    }

    CMSimpleQueueDequeue(*(a1 + 16));
    if (*(v10 + 23))
    {
      v12 = atomic_load((a2 + 300));
      if (v12)
      {
        dataPointerOut = 0;
        lengthAtOffsetOut = 0;
        DataPointer = CMBlockBufferGetDataPointer(*(v10 + 1), 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (DataPointer)
        {
          v28 = DataPointer;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v46 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v30 = v29;
              v31 = v10[58];
              if (v31 == 1)
              {
                v32 = *(v10 + 30);
              }

              else
              {
                v32 = 0;
              }

              v42 = *(v10 + 57);
              *buf = 136316674;
              v52 = v46;
              v53 = 2080;
              v54 = "_VCMediaQueue_SerializeControlInfoIntoBufferForOneToOne";
              v55 = 1024;
              v56 = 1672;
              v57 = 1024;
              v58 = v28;
              v59 = 1024;
              v60 = v42;
              v61 = 1024;
              LODWORD(v62[0]) = v31;
              WORD2(v62[0]) = 1024;
              *(v62 + 6) = v32;
              v37 = "VCMediaQueue [%s] %s:%d CMBlock error=%d when serializing control info, for packet mediaQueueStreamId=%u, isServerStats=%u, statsID=%u";
              v38 = 52;
              goto LABEL_47;
            }
          }
        }

        else
        {
          v14 = &dataPointerOut[*(v10 + 61)];
          if (v14)
          {
            if (v14 < dataPointerOut || v14 >= &dataPointerOut[lengthAtOffsetOut])
            {
              __break(0x5519u);
            }
          }

          v16 = VCMediaControlInfoSerialize(*(v10 + 23));
          if (v16 < 0)
          {
            v33 = v16;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v34 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v35 = *(v10 + 124);
                v36 = *(v10 + 23);
                *buf = 136316418;
                v52 = v47;
                v53 = 2080;
                v54 = "_VCMediaQueue_SerializeControlInfoIntoBufferForOneToOne";
                v55 = 1024;
                v56 = 1676;
                v57 = 1024;
                v58 = v33;
                v59 = 1024;
                v60 = v35;
                v61 = 2048;
                v62[0] = v36;
                v30 = v34;
                v37 = "VCMediaQueue [%s] %s:%d Adding extension failed when serializing control info, with result=%08X for packet sequenceNum=%u controlInfo=%p";
                v38 = 50;
LABEL_47:
                _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, v37, buf, v38);
              }
            }
          }
        }
      }
    }

    if (v10 == CMSimpleQueueGetHead(*(a1 + 8)))
    {
      v23 = *a1;
      v24 = CMSimpleQueueDequeue(*(a1 + 8));
      v25 = CMSimpleQueueEnqueue(v23, v24);
      if (!v25)
      {
        goto LABEL_27;
      }

      v39 = v25;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_27;
      }

      v48 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v41 = *(v10 + 57);
      *buf = 136316162;
      v52 = v48;
      v53 = 2080;
      v54 = "_VCMediaQueue_FlushInternalQueueBeforeTimestamp";
      v55 = 1024;
      v56 = 1706;
      v57 = 1024;
      v58 = v39;
      v59 = 1024;
      v60 = v41;
      v20 = v40;
      v21 = "VCMediaQueue [%s] %s:%d Internal queue has error %d when free media packet for mediaQueueStreamId=%u";
      v22 = 40;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_27;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v19 = *(v10 + 57);
      *buf = 136315906;
      v52 = v17;
      v53 = 2080;
      v54 = "_VCMediaQueue_FlushInternalQueueBeforeTimestamp";
      v55 = 1024;
      v56 = 1708;
      v57 = 1024;
      v58 = v19;
      v20 = v18;
      v21 = "VCMediaQueue [%s] %s:%d Media packets are drained from the busy pool of stream=%u out of order!";
      v22 = 34;
    }

    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
LABEL_27:
    v26 = *(v10 + 23);
    if (v26)
    {
      VCMediaControlInfoDispose(v26);
      *(v10 + 23) = 0;
    }

    v27 = *(v10 + 1);
    if (v27 && *(a2 + 96) == 1 && (v10[294] & 1) != 0)
    {
      CFRelease(v27);
      *(v10 + 1) = 0;
      v10[294] = 0;
    }

    ++v8;
  }

  while (CMSimpleQueueGetCount(*(a1 + 16)) > 0);
  *(a2 + 536) += v8;
  if (v8)
  {
    _VCMediaQueue_ReportingEvent(a2, 194, *(a1 + 124));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        Count = CMSimpleQueueGetCount(*(a1 + 16));
        *buf = 136316162;
        v52 = v43;
        v53 = 2080;
        v54 = "_VCMediaQueue_FlushInternalQueueBeforeTimestamp";
        v55 = 1024;
        v56 = 1718;
        v57 = 1024;
        v58 = v8;
        v59 = 1024;
        v60 = Count;
        _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VCMediaQueue [%s] %s:%d VCMediaQueue internal queue flushed with %u packets, %d remaining", buf, 0x28u);
      }
    }

    _VCMediaQueue_CheckAndReportSymptomForInternalQueue(a1);
  }
}

uint64_t _VCMediaQueue_DrainAllPacketsFromMainQueue(uint64_t a1)
{
  if (CMSimpleQueueGetCount(*(a1 + 616)) < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    CMSimpleQueueDequeue(*(a1 + 616));
    _VCMediaQueue_SendAndFreePackets(a1);
    ++*(a1 + 436);
    v2 = (v2 + 1);
  }

  while (CMSimpleQueueGetCount(*(a1 + 616)) > 0);
  return v2;
}

uint64_t VCVirtualHardwareConfigurations_EmbeddedConfigurationForDevice(void *a1, __int128 *a2)
{
  result = 0;
  if (a1 && VCVirtualHardwareConfiguration_iOSConfigurationsCount)
  {
    v5 = 0;
    for (i = &VCVirtualHardwareConfiguration_iOSConfigurations; ![a1 isEqualToString:*i]; i += 3)
    {
      if (++v5 >= VCVirtualHardwareConfiguration_iOSConfigurationsCount)
      {
        return 0;
      }
    }

    if (a2)
    {
      v7 = *i;
      v8 = i[2];
      a2[1] = i[1];
      a2[2] = v8;
      *a2 = v7;
    }

    return 1;
  }

  return result;
}

uint64_t VCVirtualHardwareConfigurations_OSXConfigurationForDevice(void *a1, uint64_t a2)
{
  result = 0;
  if (a1 && VCVirtualHardwareConfiguration_OSXConfigurationsCount)
  {
    v5 = 0;
    for (i = &off_1ECC75180; ![a1 isEqualToString:*i]; i += 9)
    {
      if (++v5 >= VCVirtualHardwareConfiguration_OSXConfigurationsCount)
      {
        return 0;
      }
    }

    if (a2)
    {
      *a2 = *(i - 1);
      v7 = *(i + 1);
      v8 = *(i + 3);
      v9 = *(i + 5);
      *(a2 + 64) = i[7];
      *(a2 + 32) = v8;
      *(a2 + 48) = v9;
      *(a2 + 16) = v7;
    }

    return 1;
  }

  return result;
}

uint64_t VCVirtualHardwareConfigurations_DevicePlatform(void *a1)
{
  v2 = 0;
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1 && VCVirtualHardwareConfiguration_iOSConfigurationsCount)
  {
    v3 = 0;
    v4 = &VCVirtualHardwareConfiguration_iOSConfigurations;
    do
    {
      v2 = [a1 isEqualToString:*v4];
      if (v2)
      {
        break;
      }

      ++v3;
      v4 += 3;
    }

    while (v3 < VCVirtualHardwareConfiguration_iOSConfigurationsCount);
  }

  if (a1 && VCVirtualHardwareConfiguration_OSXConfigurationsCount)
  {
    v5 = 0;
    v6 = &off_1ECC75180;
    while (([a1 isEqualToString:*v6] & 1) == 0)
    {
      ++v5;
      v6 += 9;
      if (v5 >= VCVirtualHardwareConfiguration_OSXConfigurationsCount)
      {
        goto LABEL_11;
      }
    }

    if (!v2)
    {
      return v2 ^ 1u;
    }

    VCVirtualHardwareConfigurations_DevicePlatform_cold_1(v8);
    return v8[0];
  }

LABEL_11:
  if ((v2 & 1) == 0)
  {
    VCVirtualHardwareConfigurations_DevicePlatform_cold_2(a1, v8);
    return v8[0];
  }

  return v2 ^ 1u;
}

void sub_1DB9DE0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9E72F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB9E7760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_18_10()
{

  return objc_opt_respondsToSelector();
}

BOOL OUTLINED_FUNCTION_24_9()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_1DB9E94F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t init_WiFiCopyCurrentNetworkInfoEx(uint64_t a1, uint64_t a2)
{
  if (LoadCoreUtils_loadPredicate != -1)
  {
    init_WiFiCopyCurrentNetworkInfoEx_cold_1();
  }

  v4 = dlsym(LoadCoreUtils_frameworkLibrary, "WiFiCopyCurrentNetworkInfoEx");
  softLink_WiFiCopyCurrentNetworkInfoEx = v4;

  return (v4)(a1, a2);
}

void __LoadCoreUtils_block_invoke()
{
  LoadCoreUtils_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreUtils.framework/CoreUtils", 2);
  if (!LoadCoreUtils_frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

BOOL VCDuplicationHandler_IsDuplicationEnabled(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 2;
  }

  return result;
}

uint64_t VCDuplicationHandler_HandleDuplicationStateUpdateEvent(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v50 = 0;
  if (a1)
  {
    switch(a2)
    {
      case 0:
      case 2:
        if (a1[9])
        {
          return v50;
        }

        v5 = a2;
        if (a2)
        {
          if (a2 != 2)
          {
            return v50;
          }
        }

        else
        {
          v5 = 1;
        }

        a1[9] = v5;
        VCDuplicationHandler_EnableDuplication(a1);
        LOBYTE(v50) = 1;
        return v50;
      case 1:
      case 3:
        if (a1[9] - 1 <= 1)
        {
          a1[9] = 0;
          VCDuplicationHandler_DisableDuplication(a1);
          v6 = 1;
          goto LABEL_108;
        }

        return v50;
      case 4:
        HIDWORD(v50) = 0;
        if (a1[23])
        {
          v23 = a1[9];
          if ((a2 & 0x100) != 0)
          {
            if (v23 != 4)
            {
              return v50;
            }
          }

          else if (v23 != 4)
          {
            if (a1[9])
            {
              goto LABEL_109;
            }

            a1[9] = 3;
            VCDuplicationHandler_EnableDuplication(a1);
            LOWORD(v50) = 257;
            HIDWORD(v50) = 2;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v24 = VRTraceErrorLogLevelToCSTR();
              v9 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v52 = v24;
                v53 = 2080;
                v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingCellularEvent";
                v55 = 1024;
                v56 = 179;
                v10 = " [%s] %s:%d HandoverReport: start dupe by local media degraded.";
                goto LABEL_121;
              }
            }

            return v50;
          }

          a1[9] = 5;
          VCDuplicationHandler_EnableDuplication(a1);
          BYTE1(v50) = 1;
          HIDWORD(v50) = 2;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v44 = VRTraceErrorLogLevelToCSTR();
            v9 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v44;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingCellularEvent";
              v55 = 1024;
              v56 = 186;
              v10 = " [%s] %s:%d HandoverReport: start dupe by both local media degraded and remote duplication.";
              goto LABEL_121;
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v52 = v37;
            v53 = 2080;
            v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingCellularEvent";
            v55 = 1024;
            v56 = 166;
            v10 = " [%s] %s:%d HandoverReport: Ignoring iRAT suggestion as directed by storebag settings";
            goto LABEL_121;
          }
        }

        return v50;
      case 5:
        if (a1[23])
        {
          v26 = a1[9];
          if ((a2 & 0x100) != 0 || a1[9])
          {
            if (v26 == 5)
            {
              a1[9] = 4;
              VCDuplicationHandler_EnableDuplication(a1);
              BYTE1(v50) = 1;
              HIDWORD(v50) = 3;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v48 = VRTraceErrorLogLevelToCSTR();
                v9 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v52 = v48;
                  v53 = 2080;
                  v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingWiFiEvent";
                  v55 = 1024;
                  v56 = 214;
                  v10 = " [%s] %s:%d HandoverReport: stop dupe by local media degraded but remain dupe by remote duplication.";
                  goto LABEL_121;
                }
              }
            }

            else if (v26 == 3)
            {
              a1[9] = 0;
              VCDuplicationHandler_DisableDuplication(a1);
              LOWORD(v50) = 257;
              HIDWORD(v50) = 3;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v27 = VRTraceErrorLogLevelToCSTR();
                v9 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v52 = v27;
                  v53 = 2080;
                  v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingWiFiEvent";
                  v55 = 1024;
                  v56 = 207;
                  v10 = " [%s] %s:%d HandoverReport: stop dupe by local media degraded.";
                  goto LABEL_121;
                }
              }
            }

            else
            {
LABEL_109:
              _VCDuplicationHandler_ShareLocalInterfacePreferenceWithPeerDuringActiveDuplicationForEvent(a1, a2, a3, &v50);
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v52 = v38;
            v53 = 2080;
            v54 = "_VCDuplicationHandler_UpdateDuplicationStateForLocalWRMSuggestingWiFiEvent";
            v55 = 1024;
            v56 = 194;
            v10 = " [%s] %s:%d HandoverReport: Ignoring iRAT suggestion as directed by storebag settings";
            goto LABEL_121;
          }
        }

        return v50;
      case 6:
        v7 = 1;
        goto LABEL_44;
      case 7:
        _VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult(a1, &v50, 1);
        v11 = a1[9];
        v12 = v11 > 6;
        v13 = (1 << v11) & 0x46;
        if (v12 || v13 == 0)
        {
          return v50;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return v50;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return v50;
        }

        v17 = "WiFi";
        *buf = 136315906;
        v52 = v15;
        v53 = 2080;
        v54 = "_VCDuplicationHandler_UpdateDuplicationStateForRemoteWRMSuggestingWiFiEvent";
        if ((a2 & 0x10000000000) == 0)
        {
          v17 = "Cellular";
        }

        v55 = 1024;
        v56 = 224;
        v57 = 2080;
        v58 = v17;
        v10 = " [%s] %s:%d HandoverReport: remote duplication suggests %s during other type of duplication.";
        v18 = v16;
        v19 = 38;
        goto LABEL_122;
      case 8:
        a1[10] = 1;
        return v50;
      case 9:
        a1[10] = 0;
        return v50;
      case 10:
        HIDWORD(v50) = 0;
        v32 = a1[9];
        if ((v32 - 3) > 2)
        {
          return v50;
        }

        if (v32 == 5)
        {
          BYTE1(v50) = 1;
          HIDWORD(v50) = 3;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v46 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v46;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOffDuplicationForHandoverEvent";
              v55 = 1024;
              v56 = 270;
              v35 = " [%s] %s:%d HandoverReport: stop dupe by both local media degraded and remote duplication in handover.";
              goto LABEL_116;
            }
          }
        }

        else if (v32 == 4)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v33 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v33;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOffDuplicationForHandoverEvent";
              v55 = 1024;
              v56 = 272;
              v35 = " [%s] %s:%d HandoverReport: stop dupe by remote media degraded in handover.";
LABEL_116:
              _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x1Cu);
            }
          }
        }

        else
        {
          BYTE1(v50) = 1;
          HIDWORD(v50) = 3;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v47 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v47;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOffDuplicationForHandoverEvent";
              v55 = 1024;
              v56 = 266;
              v35 = " [%s] %s:%d HandoverReport: stop dupe by local media degraded in handover.";
              goto LABEL_116;
            }
          }
        }

        LOBYTE(v50) = 1;
        a1[9] = 0;
        VCDuplicationHandler_DisableDuplication(a1);
        return v50;
      case 11:
        if (a1[23])
        {
          HIDWORD(v50) = 0;
          if ((a2 & 0x1000000) == 0 && !a1[9])
          {
            if ((a2 & 0x100000000) == 0)
            {
              a1[9] = 3;
              VCDuplicationHandler_EnableDuplication(a1);
              LOWORD(v50) = 257;
              HIDWORD(v50) = 2;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v20 = VRTraceErrorLogLevelToCSTR();
                v21 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v52 = v20;
                  v53 = 2080;
                  v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOnDuplicationForHandoverEvent";
                  v55 = 1024;
                  v56 = 294;
                  _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: start dupe by local media degraded in handover.", buf, 0x1Cu);
                }
              }
            }

            if ((a2 & 0x10000000000) == 0)
            {
              a1[9] = 4;
              VCDuplicationHandler_EnableDuplication(a1);
              LOBYTE(v50) = 1;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v22 = VRTraceErrorLogLevelToCSTR();
                v9 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v52 = v22;
                  v53 = 2080;
                  v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOnDuplicationForHandoverEvent";
                  v55 = 1024;
                  v56 = 300;
                  v10 = " [%s] %s:%d HandoverReport: start dupe by remote media degraded in handover.";
                  goto LABEL_121;
                }
              }
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v52 = v36;
            v53 = 2080;
            v54 = "_VCDuplicationHandler_UpdateDuplicationStateForTurnOnDuplicationForHandoverEvent";
            v55 = 1024;
            v56 = 282;
            v10 = " [%s] %s:%d HandoverReport: Ignoring iRAT suggestion as directed by storebag settings";
            goto LABEL_121;
          }
        }

        return v50;
      case 12:
        v25 = 15;
        if ((a2 & 0x1000000000000) != 0)
        {
          v25 = 11;
        }

        a1[v25] = HIBYTE(a2) & 1;
        LOBYTE(v50) = _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, (a2 & 0x1000000000000uLL) >> 48);
        return v50;
      case 13:
        if (!a3)
        {
          v39 = 12;
          if ((a3 & 0x100000000) == 0)
          {
            v39 = 13;
          }

          ++a1[v39];
          if ((a3 & 0x10000000000) != 0)
          {
            v40 = a1[16] + 1;
LABEL_96:
            a1[16] = v40;
            goto LABEL_107;
          }

          v43 = a1[17] + 1;
          goto LABEL_106;
        }

        if ((a3 & 0x100000000) != 0)
        {
          v30 = a1 + 12;
          v31 = a1[12];
          if (!v31)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v30 = a1 + 13;
          v31 = a1[13];
          if (!v31)
          {
            goto LABEL_93;
          }
        }

        *v30 = v31 - 1;
LABEL_93:
        if ((a3 & 0x10000000000) != 0)
        {
          if (!a1[16])
          {
            goto LABEL_107;
          }

          v40 = a1[16] - 1;
          goto LABEL_96;
        }

        if (a1[17])
        {
          v43 = a1[17] - 1;
LABEL_106:
          a1[17] = v43;
        }

LABEL_107:
        updated = _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 1);
        v6 = updated | _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 0);
LABEL_108:
        LOBYTE(v50) = v6;
        break;
      case 14:
        if (a1[9] == 4)
        {
          a1[9] = 7;
          VCDuplicationHandler_EnableDuplication(a1);
          LOWORD(v50) = 256;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v9 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v41;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForMediaHealthUnrecoverable";
              v55 = 1024;
              v56 = 366;
              v10 = " [%s] %s:%d HandoverReport: start dupe by both local media health unrecoverable and remote duplication.";
              goto LABEL_121;
            }
          }
        }

        else if (!a1[9])
        {
          a1[9] = 6;
          VCDuplicationHandler_EnableDuplication(a1);
          LOWORD(v50) = 257;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v8 = VRTraceErrorLogLevelToCSTR();
            v9 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v52 = v8;
              v53 = 2080;
              v54 = "_VCDuplicationHandler_UpdateDuplicationStateForMediaHealthUnrecoverable";
              v55 = 1024;
              v56 = 359;
              v10 = " [%s] %s:%d HandoverReport: start dupe by media health unrecoverable.";
              goto LABEL_121;
            }
          }
        }

        return v50;
      case 15:
        v28 = a1[9];
        if (v28 == 7)
        {
          a1[9] = 4;
          VCDuplicationHandler_EnableDuplication(a1);
          LOWORD(v50) = 256;
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return v50;
          }

          v42 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return v50;
          }

          *buf = 136315650;
          v52 = v42;
          v53 = 2080;
          v54 = "_VCDuplicationHandler_UpdateDuplicationStateForMediaHealthRecovered";
          v55 = 1024;
          v56 = 384;
          v10 = " [%s] %s:%d HandoverReport: stop dupe by media health recovered but remain dupe by remote duplication.";
        }

        else
        {
          if (v28 != 6)
          {
            return v50;
          }

          a1[9] = 0;
          VCDuplicationHandler_DisableDuplication(a1);
          LOWORD(v50) = 257;
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return v50;
          }

          v29 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return v50;
          }

          *buf = 136315650;
          v52 = v29;
          v53 = 2080;
          v54 = "_VCDuplicationHandler_UpdateDuplicationStateForMediaHealthRecovered";
          v55 = 1024;
          v56 = 377;
          v10 = " [%s] %s:%d HandoverReport: stop dupe by media health recovered.";
        }

LABEL_121:
        v18 = v9;
        v19 = 28;
LABEL_122:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v10, buf, v19);
        return v50;
      case 16:
        v7 = 0;
LABEL_44:
        _VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged(a1, a2, a3, &v50, v7);
        return v50;
      default:
        return v50;
    }
  }

  else
  {
    VCDuplicationHandler_HandleDuplicationStateUpdateEvent_cold_1();
  }

  return v50;
}

void _VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged(_BYTE *a1, uint64_t a2, uint64_t a3, _WORD *a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x10000) == 0)
  {
    _VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult(a1, a4, a5);
    goto LABEL_3;
  }

  v15 = a1[9];
  if (v15 == 6)
  {
    a1[9] = 7;
    VCDuplicationHandler_EnableDuplication(a1);
    *a4 = 0;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_3;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }

    v21 = 136315650;
    v22 = v20;
    v23 = 2080;
    v24 = "_VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged";
    v25 = 1024;
    v26 = 420;
    v18 = " [%s] %s:%d HandoverReport: start dupe by both local media health unrecoverable and remote duplication.";
    goto LABEL_29;
  }

  if (v15 == 3)
  {
    a1[9] = 5;
    if (a5)
    {
      a1[15] = 1;
      *a4 = _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 0);
    }

    VCDuplicationHandler_EnableDuplication(a1);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315650;
        v22 = v19;
        v23 = 2080;
        v24 = "_VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged";
        v25 = 1024;
        v26 = 413;
        v18 = " [%s] %s:%d HandoverReport: start dupe by both remote and local media degraded.";
        goto LABEL_29;
      }
    }
  }

  else if (!a1[9])
  {
    a1[9] = 4;
    if (a5)
    {
      a1[15] = 1;
      _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 0);
    }

    VCDuplicationHandler_EnableDuplication(a1);
    *a4 = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315650;
        v22 = v16;
        v23 = 2080;
        v24 = "_VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged";
        v25 = 1024;
        v26 = 403;
        v18 = " [%s] %s:%d HandoverReport: start dupe by remote duplication.";
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, &v21, 0x1Cu);
      }
    }
  }

LABEL_3:
  v8 = a1[9];
  v9 = v8 > 6;
  v10 = (1 << v8) & 0x46;
  if (!v9 && v10 != 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = "WiFi";
      v21 = 136315906;
      v22 = v12;
      v23 = 2080;
      v24 = "_VCDuplicationHandler_UpdateDuplicationStateForRemoteDuplicationChanged";
      if ((a2 & 0x10000000000) == 0)
      {
        v14 = "Cellular";
      }

      v25 = 1024;
      v26 = 425;
      v27 = 2080;
      v28 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: remote duplication suggests %s during other type of duplication.", &v21, 0x26u);
    }
  }
}

void VCDuplicationHandler_EnableDuplication(_BYTE *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCDuplicationHandler_EnableDuplication_cold_1();
    return;
  }

  if (a1[21] == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v1;
        v9 = 2080;
        v10 = "VCDuplicationHandler_EnableDuplication";
        v11 = 1024;
        v12 = 112;
        v3 = " [%s] %s:%d HandoverReport: Duplication is forcibly disabled using user defaults";
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, v3, &v7, 0x1Cu);
      }
    }
  }

  else if (a1[20])
  {
    if ((a1[14] & 1) != 0 || a1[18] == 1)
    {
      a1[8] = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v2 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315650;
          v8 = v4;
          v9 = 2080;
          v10 = "VCDuplicationHandler_EnableDuplication";
          v11 = 1024;
          v12 = 121;
          v3 = " [%s] %s:%d HandoverReport: Duplication state changed to PENDING";
          goto LABEL_15;
        }
      }
    }

    else
    {
      a1[8] = 2;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v2 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315650;
          v8 = v6;
          v9 = 2080;
          v10 = "VCDuplicationHandler_EnableDuplication";
          v11 = 1024;
          v12 = 124;
          v3 = " [%s] %s:%d HandoverReport: Duplication state changed to ON";
          goto LABEL_15;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "VCDuplicationHandler_EnableDuplication";
      v11 = 1024;
      v12 = 116;
      v3 = " [%s] %s:%d HandoverReport: Duplication cannot be enabled due to WiFi off-channel activity";
      goto LABEL_15;
    }
  }
}

void VCDuplicationHandler_DisableDuplication(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 8) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315650;
        v4 = v1;
        v5 = 2080;
        v6 = "VCDuplicationHandler_DisableDuplication";
        v7 = 1024;
        v8 = 133;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Duplication state changed to OFF", &v3, 0x1Cu);
      }
    }
  }
}

uint64_t VCDuplicationHandler_DuplicationReason(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 9);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v4 = 136315650;
    v5 = v2;
    v6 = 2080;
    v7 = "VCDuplicationHandler_DuplicationReason";
    v8 = 1024;
    v9 = 451;
    _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
  }

  return 0;
}

uint64_t VCDuplicationHandler_DuplicationReasonForReporting(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 19) & (*(a1 + 9) == 3)) != 0)
    {
      return 8;
    }

    else
    {
      return *(a1 + 9);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v2;
        v7 = 2080;
        v8 = "VCDuplicationHandler_DuplicationReasonForReporting";
        v9 = 1024;
        v10 = 459;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

void _VCDuplicationHandler_ShareLocalInterfacePreferenceWithPeerDuringActiveDuplicationForEvent(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a1[9];
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x46;
  if (!v5 && v6 != 0)
  {
    VCDuplicationHandler_EnableDuplication(a1);
    *(a4 + 1) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = "WiFi";
        v13 = 136315906;
        v14 = v10;
        v15 = 2080;
        v16 = "_VCDuplicationHandler_ShareLocalInterfacePreferenceWithPeerDuringActiveDuplicationForEvent";
        if ((a2 & 0x100000000) == 0)
        {
          v12 = "Cellular";
        }

        v17 = 1024;
        v18 = 436;
        v19 = 2080;
        v20 = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: local media degraded suggests %s during other type of duplication.", &v13, 0x26u);
      }
    }
  }
}

void _VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult(_BYTE *a1, _WORD *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1[9];
  switch(v5)
  {
    case 7:
      a1[9] = 6;
      VCDuplicationHandler_EnableDuplication(a1);
      *a2 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315650;
          v13 = v11;
          v14 = 2080;
          v15 = "_VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult";
          v16 = 1024;
          v17 = 255;
          v9 = " [%s] %s:%d HandoverReport: stop dupe by remote duplication but remain dupe by local media health unrecoverable.";
          goto LABEL_19;
        }
      }

      break;
    case 5:
      a1[9] = 3;
      if (a3 && a1[22] == 1)
      {
        a1[15] = 0;
        *a2 = _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 0);
      }

      VCDuplicationHandler_EnableDuplication(a1);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315650;
          v13 = v10;
          v14 = 2080;
          v15 = "_VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult";
          v16 = 1024;
          v17 = 248;
          v9 = " [%s] %s:%d HandoverReport: stop dupe by remote duplication but remain dupe by local media degraded.";
          goto LABEL_19;
        }
      }

      break;
    case 4:
      a1[9] = 0;
      *a2 = 1;
      VCDuplicationHandler_DisableDuplication(a1);
      if (a3 && a1[22] == 1)
      {
        a1[15] = 0;
        _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(a1, 0);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315650;
          v13 = v7;
          v14 = 2080;
          v15 = "_VCDuplicationHandler_StopRemoteDuplicationAndUpdateResult";
          v16 = 1024;
          v17 = 239;
          v9 = " [%s] %s:%d HandoverReport: stop dupe by remote duplication.";
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x1Cu);
        }
      }

      break;
  }
}

uint64_t _VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo(_BYTE *a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = 15;
  if (a2)
  {
    v3 = 11;
  }

  v4 = &a1[v3];
  if (a1[v3] != 1 || v4[1] && v4[2])
  {
    if (v4[3] == 1)
    {
      v4[3] = 0;
      if (a1[8] == 1)
      {
        VCDuplicationHandler_EnableDuplication(a1);
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_17;
        }

        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v17 = 136315650;
        v18 = v5;
        v19 = 2080;
        v20 = "_VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo";
        v21 = 1024;
        v22 = 344;
        v7 = " [%s] %s:%d HandoverReport: Enable duplication if it is pending, due to interface alert update";
        goto LABEL_16;
      }
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (v4[3])
  {
    goto LABEL_18;
  }

  v8 = 1;
  v4[3] = 1;
  if (a1[8] != 2)
  {
    goto LABEL_18;
  }

  a1[8] = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:
      v8 = 1;
      goto LABEL_19;
    }

    v17 = 136315650;
    v18 = v9;
    v19 = 2080;
    v20 = "_VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo";
    v21 = 1024;
    v22 = 336;
    v7 = " [%s] %s:%d HandoverReport: Make duplication pending due to interface alert update";
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v17, 0x1Cu);
    goto LABEL_17;
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v4;
      v13 = v4[1];
      v14 = v4[2];
      v15 = v4[3];
      v17 = 136316930;
      v18 = v10;
      v19 = 2080;
      v20 = "_VCDuplicationHandler_UpdateDuplicationStateWithAlertInfo";
      v21 = 1024;
      v22 = 348;
      v23 = 1024;
      v24 = a2;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updateDuplicationStateWithAlertInfo - isOnLocal: %d isAlertEnabled: %d connectionWiFiCount: %d connectionCellCount: %d isDuplicationDisabledDueToAlert: %d", &v17, 0x3Au);
    }
  }

  return v8;
}

uint64_t VCPowerManager_DefaultManager()
{
  if (VCPowerManager_DefaultManager_onceToken != -1)
  {
    VCPowerManager_DefaultManager_cold_1();
  }

  return _vcPowerManager;
}

void statsReceiveProc(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(v4, 0x628uLL);
    if (([*(a1 + 88) receivePacket:v4] & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          statsReceiveProc_cold_1();
        }
      }

      v2 = *(a1 + 216);
      v3 = micro();
      if (v2 == 0.0)
      {
        *(a1 + 216) = v3;
      }

      else if (v3 - *(a1 + 216) >= 5.0)
      {
        [a1 reportingAgent];
        reportingSymptom();
      }

      usleep(0x2710u);
    }

    else
    {
      _VCSessionStatsController_HandleRemoteSessionStats(a1, v4);
      *(a1 + 216) = 0;
    }

    _VCSessionStatsController_HealthPrintForServerStats(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      statsReceiveProc_cold_2();
    }
  }
}

void _VCSessionStatsController_TriggerRateControl(uint64_t a1, uint64_t a2, int a3, char a4, double a5, double a6, double a7)
{
  v41 = *MEMORY[0x1E69E9840];
  LODWORD(a6) = *(a1 + 144);
  LODWORD(a7) = *(a1 + 148);
  v9 = (*&a6 + 45.5);
  v10 = (*&a7 + 45.5);
  v15 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14[0] = 5;
  *&v14[1] = a5;
  BYTE2(v15) = a4;
  BYTE8(v15) = *(a2 + 8);
  HIDWORD(v15) = v9;
  AVCStatisticsCollector_SetVCStatistics(*(a1 + 16), v14);
  *(a1 + 144) = v9;
  ++*(a1 + 248);
  if (a3)
  {
    HIDWORD(v15) = v10;
    AVCStatisticsCollector_SetVCStatistics(*(a1 + 24), v14);
    *(a1 + 148) = v10;
    ++*(a1 + 252);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v13 = "NO";
      v28 = v11;
      v29 = 2080;
      v30 = "_VCSessionStatsController_TriggerRateControl";
      v31 = 1024;
      if (a3)
      {
        v13 = "YES";
      }

      v32 = 330;
      v33 = 1024;
      v34 = v9;
      v35 = 1024;
      v36 = v10;
      v37 = 2080;
      v38 = "YES";
      v39 = 2080;
      v40 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trigger rate control without serverStats response with uplinkSendTimestamp:0x%04X, downlinkSendTimestamp:0x%04X [uplink:%s, downlink:%s]", buf, 0x3Cu);
    }
  }
}

void _VCSessionStatsController_UpdateRemoteSessionStats(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = micro();
  v5 = *(a2 + 10);
  v6 = *a2;
  v7 = (*(a1 + 72) - v5);
  if (v4 - *a2 > 10.0 || v7 >= 0x80)
  {
    ++*(a1 + 240);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 72);
        *buf = 136316930;
        *&buf[4] = v30;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSessionStatsController_IsRemoteSessionStatsTooLate";
        *&buf[22] = 1024;
        *&buf[24] = 297;
        *&buf[28] = 1024;
        *&buf[30] = v5;
        *&buf[34] = 1024;
        *&buf[36] = v32;
        *&buf[40] = 1024;
        *&buf[42] = v7;
        *&buf[46] = 2048;
        *&buf[48] = v4;
        *&buf[56] = 2048;
        *&buf[58] = v6;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dropping late server stats with Id=%u, currentId=%u, diff=%u, now=%f, responseTime=%f", buf, 0x42u);
      }
    }
  }

  else
  {
    v8 = v5 & 0x7F;
    v44 = 0.0;
    v45 = 0;
    v46 = 0;
    [objc_msgSend(*(a1 + 80) "statsRecorder")];
    v9 = *a2 - v44;
    if (v9 > 10.0 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSessionStatsController_UpdateRemoteSessionStats";
        *&buf[22] = 1024;
        *&buf[24] = 216;
        *&buf[28] = 1024;
        *&buf[30] = (v9 * 1000.0);
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Round trip time is greater than 10 seconds [RTT:%dms]", buf, 0x22u);
      }
    }

    v12 = v4 - *a2;
    if (v12 > 1.0 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSessionStatsController_UpdateRemoteSessionStats";
        *&buf[22] = 1024;
        *&buf[24] = 220;
        *&buf[28] = 1024;
        *&buf[30] = (v12 * 1000.0);
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local VTP queue time is greater than 1 seconds [qTime:%dms]", buf, 0x22u);
      }
    }

    ++*(a1 + 244);
    v15 = *(a1 + 280);
    if (v15 < v12)
    {
      v15 = v12;
    }

    *(a1 + 272) = v12 + *(a1 + 272);
    *(a1 + 280) = v15;
    v16 = v45;
    v17 = *(a2 + 8);
    v18 = [*(a1 + 80) getByteCountWithIndex:v45 isOutgoing:1];
    memset(buf, 0, sizeof(buf));
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    *buf = 5;
    *&buf[8] = *a2;
    buf[18] = 1;
    buf[24] = v16;
    v19 = [a1 translateTimestampFromMicro:v44];
    v20 = *(a2 + 12) - *(a2 + 14);
    *&buf[28] = v19;
    *&buf[32] = v20;
    v21 = *(a2 + 20);
    v22 = *(a1 + 140);
    v23 = (v21 - v22) >= 0x7FFFu || v21 >= *(a1 + 140);
    v24 = v22 & 0xFFFF0000 | v21;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0x10000;
    }

    v26 = HIDWORD(v46);
    *&buf[36] = HIDWORD(v45);
    *&buf[40] = v25 + v24;
    *(a1 + 140) = v25 + v24;
    *&buf[56] = *(a2 + 16);
    *&buf[64] = v9;
    *&buf[44] = v18;
    *&buf[52] = v26;
    *(a1 + 112) = v26;
    *(a1 + 144) = v19;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      v29 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 136316930;
          *&v47[4] = v27;
          *&v47[12] = 2080;
          *&v47[14] = "_VCSessionStatsController_UpdateRemoteSessionStats";
          *&v47[22] = 1024;
          *&v47[24] = 252;
          *&v47[28] = 1024;
          *&v47[30] = v8;
          *&v47[34] = 1024;
          *&v47[36] = v16;
          *&v47[40] = 2048;
          *&v47[42] = v44;
          *&v47[50] = 1024;
          *&v47[52] = HIDWORD(v45);
          *&v47[56] = 1024;
          *&v47[58] = HIDWORD(v46);
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d index = %d, sessionStatsLocal: uplinkID = %d, request time = %f, totalLocalMediaPacketSent = %d, totalServerStatsByteUsed = %d", v47, 0x3Eu);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v47 = 136316930;
        *&v47[4] = v27;
        *&v47[12] = 2080;
        *&v47[14] = "_VCSessionStatsController_UpdateRemoteSessionStats";
        *&v47[22] = 1024;
        *&v47[24] = 252;
        *&v47[28] = 1024;
        *&v47[30] = v8;
        *&v47[34] = 1024;
        *&v47[36] = v16;
        *&v47[40] = 2048;
        *&v47[42] = v44;
        *&v47[50] = 1024;
        *&v47[52] = HIDWORD(v45);
        *&v47[56] = 1024;
        *&v47[58] = HIDWORD(v46);
        _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d index = %d, sessionStatsLocal: uplinkID = %d, request time = %f, totalLocalMediaPacketSent = %d, totalServerStatsByteUsed = %d", v47, 0x3Eu);
      }
    }

    AVCStatisticsCollector_SetVCStatistics(*(a1 + 16), buf);
    v33 = VCConnectionManager_CopyConnectionForQuality(*(a1 + 80), 1);
    v34 = [*(a1 + 80) getPacketCountWithIndex:v17 isOutgoing:0];
    v35 = [*(a1 + 80) getByteCountWithIndex:v17 isOutgoing:0];
    *(a1 + 116) += [objc_msgSend(*(a1 + 80) "statsRecorder")];
    if (v33)
    {
      CFRelease(v33);
    }

    memset(v47, 0, sizeof(v47));
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    *v47 = 5;
    *&v47[8] = *a2;
    v47[18] = 1;
    v47[24] = v17;
    v36 = *(a2 + 12);
    *&v47[28] = v36;
    v37 = [a1 translateTimestampFromMicro:?];
    v38 = *(a2 + 18);
    v39 = *(a1 + 136);
    v40 = (v38 - v39) >= 0x7FFFu || v38 >= *(a1 + 136);
    v41 = v39 & 0xFFFF0000 | v38;
    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = 0x10000;
    }

    *&v47[32] = v37;
    *&v47[36] = v42 + v41;
    *(a1 + 136) = v42 + v41;
    *&v47[40] = v34;
    *&v48 = v9;
    v43 = *(a1 + 116);
    *&v47[48] = v35;
    *&v47[52] = v43;
    *(a1 + 148) = v36;
    AVCStatisticsCollector_SetVCStatistics(*(a1 + 24), v47);
    *(a1 + 96) = *a2;
    *(a1 + 152) = 1;
  }
}

void _VCSessionStatsController_HandleRemoteSessionStats(uint64_t a1, unsigned __int8 *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 1);
    *(a1 + 256) = (v4 - *(a1 + 264)) * 0.1 + *(a1 + 256) * 0.9;
    *(a1 + 264) = v4;
    if ((a2[1538] & 1) == 0)
    {
      ++*(a1 + 224);
      v15 = *(a2 + 1);
      v16 = VCConnectionManager_CopyPrimaryConnection(*(a1 + 80));
      v17 = v16;
      if (*(a1 + 152) == 1 && v16)
      {
        if (v15 - *(a1 + 96) > 0.455 && *(a1 + 256) < 0.25)
        {
          *buf = -1;
          *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
          v18 = [*(a1 + 80) statsRecorder];
          if (v18)
          {
            [v18 getMostRecentLocalStats];
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          v30 = *buf;
          v31 = *&buf[16];
          _VCSessionStatsController_TriggerRateControl(a1, &v30, 0, 1, v15, v19, v20);
          *(a1 + 96) = v15;
        }
      }

      else if (!v16)
      {
        return;
      }

      CFRelease(v17);
      return;
    }

    ++*(a1 + 228);
    v5 = VCConnectionManager_CopyConnectionForQuality(*(a1 + 80), 1);
    v6 = VCConnectionIDS_LinkID(v5);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*a2 == v6)
    {
      v7 = *(a2 + 770);
      if (v7 == *(a1 + 130))
      {
        ++*(a1 + 232);
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          return;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v10 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v11 = *(a2 + 770);
          *buf = 136315906;
          *&buf[4] = v8;
          *&buf[12] = 2080;
          *&buf[14] = "_VCSessionStatsController_HandleRemoteSessionStats";
          *&buf[22] = 1024;
          v33 = 418;
          v34 = 1024;
          v35 = v11;
          v12 = " [%s] %s:%d statsID is same as the previous one %u";
          v13 = v9;
          v14 = 34;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
          return;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          _VCSessionStatsController_HandleRemoteSessionStats_cold_1(v8, a2 + 770, v9);
        }
      }

      else
      {
        v25 = *(a2 + 1);
        *(a1 + 130) = v7;
        v26 = *(a2 + 385);
        *buf = v25;
        buf[8] = v6;
        buf[9] = 0;
        *&buf[10] = v26;
        *&buf[14] = vtrn1_s16(*(a2 + 1544), vext_s8(*(a2 + 1544), *(a2 + 1544), 6uLL));
        *&buf[22] = 0;
        _VCSessionStatsController_UpdateRemoteSessionStats(a1, buf);
        if (*(a1 + 153) == 1)
        {
          v27 = *(a2 + 1);
          if (v27 - *(a1 + 168) > *(a1 + 160))
          {
            v28 = MEMORY[0x1E1289F20](a1 + 8);
            [v28 didReceivedSessionStatsAtTime:v27];
            if (v28)
            {
              CFRelease(v28);
            }

            *(a1 + 168) = v27;
          }
        }
      }
    }

    else
    {
      ++*(a1 + 236);
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v23 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v24 = *a2;
        *buf = 136316162;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSessionStatsController_HandleRemoteSessionStats";
        *&buf[22] = 1024;
        v33 = 408;
        v34 = 1024;
        v35 = v24;
        v36 = 1024;
        v37 = v6;
        v12 = " [%s] %s:%d Do not update session stats since linkID does not match %d, %d";
        v13 = v22;
        v14 = 40;
        goto LABEL_26;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = *a2;
        *buf = 136316162;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSessionStatsController_HandleRemoteSessionStats";
        *&buf[22] = 1024;
        v33 = 408;
        v34 = 1024;
        v35 = v29;
        v36 = 1024;
        v37 = v6;
        _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Do not update session stats since linkID does not match %d, %d", buf, 0x28u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCSessionStatsController_HandleRemoteSessionStats_cold_2();
    }
  }
}

double _VCSessionStatsController_HealthPrintForServerStats(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  result = micro();
  if (result - *(a1 + 288) > 5.0)
  {
    *(a1 + 288) = result;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 72);
        v6 = *(a1 + 228);
        v7 = *(a1 + 224) + v6;
        v8 = *(a1 + 256);
        v9 = *(a1 + 232);
        v10 = *(a1 + 236);
        v11 = *(a1 + 240);
        v12 = *(a1 + 244);
        v14 = *(a1 + 248);
        v13 = *(a1 + 252);
        if (v12)
        {
          v15 = *(a1 + 272) * 1000.0 / v12;
        }

        else
        {
          v15 = 0.0;
        }

        v16 = *(a1 + 280) * 1000.0;
        v17 = 136318722;
        v18 = v3;
        v19 = 2080;
        v20 = "_VCSessionStatsController_HealthPrintForServerStats";
        v21 = 1024;
        v22 = 455;
        v23 = 1024;
        v24 = v5;
        v25 = 1024;
        v26 = v6;
        v27 = 1024;
        v28 = v7;
        v29 = 2048;
        v30 = v8;
        v31 = 1024;
        v32 = v12;
        v33 = 1024;
        v34 = v10;
        v35 = 1024;
        v36 = v9;
        v37 = 1024;
        v38 = v11;
        v39 = 1024;
        v40 = v14;
        v41 = 1024;
        v42 = v13;
        v43 = 2048;
        v44 = v15;
        v45 = 2048;
        v46 = v16;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCSessionStatsController Health Monitor for serverStats: total stats request count:%u, total response count:%u, total callback count:%u, avgInterCallbackDuration:%.3f [this interval processed:%u, dropped:%u,%u,%u, triggered:%u,%u, average queue time:%.2fms, max queue time:%.2fms]", &v17, 0x70u);
      }
    }

    result = 0.0;
    *(a1 + 244) = 0;
    *(a1 + 252) = 0;
    *(a1 + 232) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  return result;
}

uint64_t h264bridge_u_pull(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 28);
  if (32 - v2 < a2)
  {
    h264bridge_u_pull_cold_1();
    return 0;
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *a1 + *(a1 + 8);
    v5 = (*(a1 + 24) >> -a2);
    v6 = v2 + a2;
    v7 = v6 >> 3;
    v8 = v6 & 7;
    v9 = v3 + v7 + 4;
    v10 = v8 | (8 * (v7 - (v4 - v3 - 4)));
    v11 = v9 > v4;
    if (v9 > v4)
    {
      v12 = (v4 - v3 - 4);
    }

    else
    {
      v12 = v7;
    }

    if (v11)
    {
      v8 = v10;
    }

    v13 = *(v3 + v12);
    *(a1 + 16) = v3 + v12;
    *(a1 + 24) = bswap32(v13) << v8;
    *(a1 + 28) = v8;
  }

  return v5;
}

uint64_t h264bridge_ue_pull(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 0x80000)
  {
    h264bridge_ue_pull_cold_1();
    return 0;
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = *a1 + *(a1 + 8);
    v4 = __clz(v1);
    v5 = v1 << (v4 + 1) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = v5 + ~(-1 << v4);
    v7 = *(a1 + 28) + 2 * v4 + 1;
    v8 = v7 >> 3;
    v9 = v7 & 7;
    v10 = v2 + v8 + 4;
    v11 = v9 | (8 * (v8 - (v3 - v2 - 4)));
    v12 = v10 > v3;
    if (v10 > v3)
    {
      v13 = (v3 - v2 - 4);
    }

    else
    {
      v13 = v8;
    }

    if (v12)
    {
      v9 = v11;
    }

    v14 = *(v2 + v13);
    *(a1 + 16) = v2 + v13;
    *(a1 + 24) = bswap32(v14) << v9;
    *(a1 + 28) = v9;
  }

  return v6;
}

uint64_t scaling_list(uint64_t result, uint64_t a2, unsigned int a3, BOOL *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 8;
    v9 = 8;
    v10 = a3;
    do
    {
      if (!v8 || ((result = h264bridge_se_pull(v6), result + v9 + 256 <= 0) ? (v8 = --(result + v9)) : (v8 = (result + v9)), *a4 = (v8 | v7) == 0, v11 = v8, !v8))
      {
        v8 = 0;
        v11 = v9;
      }

      *(a2 + v7) = v11;
      v9 = v11;
      ++v7;
    }

    while (v10 != v7);
  }

  return result;
}

uint64_t h264bridge_se_pull(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 0x80000)
  {
    h264bridge_se_pull_cold_1();
    return 0;
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = *a1 + *(a1 + 8);
    v4 = __clz(v1);
    v5 = v1 << (v4 + 1) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = 1 << v4;
    v7 = *(a1 + 28) + 2 * v4 + 1;
    v8 = v7 >> 3;
    v9 = v7 & 7;
    v10 = v2 + v8 + 4;
    v11 = v9 | (8 * (v8 - (v3 - v2 - 4)));
    v12 = v10 > v3;
    if (v10 > v3)
    {
      v13 = (v3 - v2 - 4);
    }

    else
    {
      v13 = v8;
    }

    if (v12)
    {
      v9 = v11;
    }

    v14 = v2 + v13;
    v15 = bswap32(*(v2 + v13)) << v9;
    *(a1 + 16) = v14;
    v16 = ((v5 + v6) >> 1) - ((v5 + v6) >> 1) * 2 * ((v5 + v6) & 1);
    *(a1 + 24) = v15;
    *(a1 + 28) = v9;
  }

  return v16;
}

uint64_t h264bridge_u_pulllong(uint64_t a1)
{
  v1 = *(a1 + 28);
  if ((v1 - 33) > 0xFFFFFFEF)
  {
    goto LABEL_17;
  }

  v2 = *(a1 + 16);
  v3 = *a1 + *(a1 + 8);
  v4 = v1 + 16;
  v5 = (v1 + 16) >> 3;
  v6 = v1 & 7;
  v7 = v2 + (v4 >> 3) + 4;
  v8 = v7 > v3;
  if (v7 > v3)
  {
    v9 = (v3 - v2 - 4);
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v6 |= 8 * (v5 - (v3 - v2 - 4));
  }

  if ((v6 - 33) >= 0xFFFFFFF0)
  {
LABEL_17:
    h264bridge_u_pulllong_cold_1();
    return 0;
  }

  else
  {
    v10 = *(a1 + 26) << 16;
    v11 = (v2 + v9);
    v12 = bswap32(*v11) << v6 >> 16;
    v13 = (v6 + 16) >> 3;
    v14 = v6 & 7;
    v15 = v11 + v13 + 4;
    v16 = v14 | (8 * (v13 - (v3 - v11 - 4)));
    v17 = v15 > v3;
    if (v15 > v3)
    {
      v18 = (v3 - v11 - 4);
    }

    else
    {
      v18 = v13;
    }

    if (v17)
    {
      v14 = v16;
    }

    v19 = v11 + v18;
    v20 = bswap32(*(v11 + v18));
    *(a1 + 16) = v19;
    v21 = v20 << v14;
    v22 = v12 | v10;
    *(a1 + 24) = v21;
    *(a1 + 28) = v14;
  }

  return v22;
}

uint64_t h264bridge_ue_pulllong(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1 + *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  if (v3 < 0x80000)
  {
    if (v4 != 32)
    {
      v15 = 0;
      v16 = v4 + 1;
      v17 = v16 >> 3;
      v18 = v16 & 7;
      v19 = v1 + (v16 >> 3) + 4 > v2;
      v20 = v18 | (8 * ((v16 >> 3) - (v2 - v1 - 4)));
      if (v19)
      {
        v17 = (v2 - v1 - 4);
      }

      if (v19)
      {
        v18 = v20;
      }

      v21 = (v1 + v17);
      v22 = bswap32(*v21) << v18;
      do
      {
        if (v18 == 32)
        {
          goto LABEL_42;
        }

        v23 = v22;
        v24 = v18 + 1;
        v25 = (v18 + 1) >> 3;
        v26 = v24 & 7;
        v27 = v21 + v25 + 4;
        v28 = v27 > v2;
        if (v27 > v2)
        {
          v29 = (v2 - v21 - 4);
        }

        else
        {
          v29 = v25;
        }

        if (v28)
        {
          v18 = v26 | (8 * (v25 - (v2 - v21 - 4)));
        }

        else
        {
          v18 = v26;
        }

        v21 = (v21 + v29);
        v22 = bswap32(*v21) << v18;
        --v15;
      }

      while ((v23 & 0x80000000) == 0);
      v30 = -v15;
      if (-v15 >= 0x20)
      {
        goto LABEL_42;
      }

      if (v30 <= 0x18)
      {
        if (v30 > 32 - v18)
        {
          goto LABEL_42;
        }

        v31 = v22 >> v15;
        v32 = v18 - v15;
        v33 = v32 >> 3;
        v34 = v32 & 7;
        v35 = v34 | (8 * (v33 - (v2 - v21 - 4)));
        if (v21 + v33 + 4 <= v2)
        {
          v12 = v34;
        }

        else
        {
          v33 = (v2 - v21 - 4);
          v12 = v35;
        }

        v13 = (v21 + v33);
        v14 = bswap32(*v13) << v12;
        goto LABEL_39;
      }

      if (-16 - v15 <= (32 - v18))
      {
        v36 = v18 - v15 - 16;
        v37 = v36 >> 3;
        v38 = v36 & 7;
        v39 = v38 | (8 * (v37 - (v2 - v21 - 4)));
        if (v21 + v37 + 4 > v2)
        {
          v37 = (v2 - v21 - 4);
          v38 = v39;
        }

        if ((v38 - 33) < 0xFFFFFFF0)
        {
          v40 = v22 >> (v15 + 48);
          v41 = (v21 + v37);
          v42 = bswap32(*v41) << v38;
          v43 = (v38 + 16) >> 3;
          v44 = v38 & 7;
          v45 = v44 | (8 * (v43 - (v2 - v41 - 4)));
          if (v41 + v43 + 4 <= v2)
          {
            v12 = v44;
          }

          else
          {
            v43 = (v2 - v41 - 4);
            v12 = v45;
          }

          v13 = (v41 + v43);
          v14 = bswap32(*v13) << v12;
          v31 = __PAIR64__(v40, v42) >> 16;
LABEL_39:
          v7 = (v31 + ~(-1 << v30));
          goto LABEL_40;
        }
      }
    }

LABEL_42:
    h264bridge_ue_pulllong_cold_1();
    return 0;
  }

  v5 = __clz(v3);
  v6 = v3 << (v5 + 1) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 + ~(-1 << v5);
  v8 = v4 + 2 * v5 + 1;
  v9 = v8 >> 3;
  v10 = v8 & 7;
  v11 = v10 | (8 * (v9 - (v2 - v1 - 4)));
  if (v1 + v9 + 4 <= v2)
  {
    v12 = v10;
  }

  else
  {
    v9 = (v2 - v1 - 4);
    v12 = v11;
  }

  v13 = (v1 + v9);
  v14 = bswap32(*v13) << v12;
LABEL_40:
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 28) = v12;
  return v7;
}

uint64_t OUTLINED_FUNCTION_5_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return h264bridge_u_pull(va, 1u);
}

uint64_t OUTLINED_FUNCTION_6_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return h264bridge_u_pull(va, 5u);
}

uint64_t OUTLINED_FUNCTION_7_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return h264bridge_u_pull(va, 8u);
}

uint64_t OUTLINED_FUNCTION_8_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return h264bridge_u_pull(va, 4u);
}

void VCAudioInjector_InjectSamples(uint64_t a1, uint64_t a2, int a3, BOOL *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    HostTime = VCAudioBufferList_GetHostTime(a2);
    if (a3)
    {
      Priority = 1;
    }

    else
    {
      Priority = -1;
    }

    if (*(a1 + 416))
    {
      VoiceActivity = a3 ^ 1;
      VoiceProbability = a3 ^ 1;
    }

    else
    {
      VoiceActivity = VCAudioBufferList_GetVoiceActivity(a2);
      Priority = VCAudioBufferList_GetPriority(a2);
      VoiceProbability = VCAudioBufferList_GetVoiceProbability(a2);
    }

    os_unfair_lock_lock((a1 + 192));
    if (a2 && SampleCount && HostTime >= 0.0 && *(a1 + 168))
    {
      v43 = VoiceActivity;
      v44 = Priority;
      v45 = a4;
      v47 = a2;
      VCAudioBufferList_SetSampleCount(a2, 0);
      if (*(a1 + 188) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v49 = v13;
            v50 = 2080;
            v51 = "VCAudioInjector_InjectSamples";
            v52 = 1024;
            v53 = 673;
            v54 = 2048;
            *v55 = a1;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d instance=%p playback starting, resetting base now!", buf, 0x26u);
          }
        }

        VCCannedAVSync_SetBase(*(a1 + 288), HostTime);
        *(a1 + 188) = 0;
      }

      v15 = *(a1 + 400);
      v16 = *(a1 + 248);
      v17 = vcvtmd_s64_f64(v16 * VCCannedAVSync_ClampForTime(*(a1 + 288), HostTime));
      v18 = *(a1 + 184);
      v19 = v17 - v18;
      if (v17 - v18 < 0)
      {
        v19 = v18 - v17;
      }

      if (v19 <= v16 / 10)
      {
        if (*(a1 + 296) == 1)
        {
          VCCannedAVSync_AddDrift(*(a1 + 288), (v17 - v18) / *(a1 + 248));
        }
      }

      else
      {
        *(a1 + 184) = v17 % v15;
      }

      v20 = *(a1 + 248);
      v21 = *(a1 + 168);
      while (*(a1 + 396) < *(a1 + 392))
      {
        if (v15 - *(a1 + 184) >= SampleCount)
        {
          v22 = SampleCount;
        }

        else
        {
          v22 = v15 - *(a1 + 184);
        }

        if (v22 < 0 && VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 184);
            *buf = 136316162;
            v49 = v23;
            v50 = 2080;
            v51 = "VCAudioInjector_InjectSamples";
            v52 = 1024;
            v53 = 696;
            v54 = 1024;
            *v55 = v15;
            *&v55[4] = 1024;
            *&v55[6] = v25;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d samplesInLoop=%d, injector->_position=%d", buf, 0x28u);
          }
        }

        v26 = *(a1 + 184);
        v27 = v21 - v26;
        if ((v21 - v26) >= v22)
        {
          v27 = v22;
        }

        v28 = v27 & ~(v27 >> 31);
        if (v22 <= v28)
        {
          v29 = 0;
        }

        else
        {
          v29 = v22 - v28;
        }

        if (a3)
        {
          v30 = v27 & ~(v27 >> 31);
        }

        else
        {
          v30 = 0;
        }

        if ((a3 & 1) == 0 && v27 >= 1)
        {
          appended = VCAudioBufferList_AppendSamples(v47, *(a1 + 384), v26, v28);
          Timestamp += appended;
          HostTime = HostTime + appended / v20;
        }

        if (v29 + v30)
        {
          v32 = VCAudioBufferList_AppendSilence(v47, Timestamp, v29 + v30, HostTime);
          Timestamp += v32;
          HostTime = HostTime + v32 / v20;
        }

        *(a1 + 184) = (*(a1 + 184) + v22) % v15;
        if (!*(a1 + 184))
        {
          ++*(a1 + 396);
        }

        SampleCount -= v22;
        if (!SampleCount)
        {
          goto LABEL_58;
        }
      }

      VCAudioBufferList_AppendSilence(v47, Timestamp, SampleCount, HostTime);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        v35 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 396);
            v37 = *(a1 + 392);
            v38 = *(a1 + 184);
            *buf = 136316418;
            v49 = v33;
            v50 = 2080;
            v51 = "VCAudioInjector_InjectSamples";
            v52 = 1024;
            v53 = 690;
            v54 = 1024;
            *v55 = v36;
            *&v55[4] = 1024;
            *&v55[6] = v37;
            v56 = 1024;
            v57 = v38;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Max loops reached. Inject silence. loopCount=%d, maxLoopCount=%d, injector->_position=%d", buf, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          VCAudioInjector_InjectSamples_cold_1(v33, a1, v34);
        }
      }

LABEL_58:
      os_unfair_lock_unlock((a1 + 192));
      VCAudioBufferList_SetTime(v47, Timestamp, HostTime);
      VCAudioBufferList_SetVoiceActivity(v47, v43);
      VCAudioBufferList_SetVoiceProbability(v47, VoiceProbability);
      VCAudioBufferList_SetPriority(v47, v44);
      v39 = *(a1 + 396);
      v40 = *(a1 + 392);
      if (v45)
      {
        *v45 = v39 >= v40;
      }

      if ((*(a1 + 189) & 1) == 0 && v39 >= v40)
      {
        *(a1 + 189) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v49 = v41;
            v50 = 2080;
            v51 = "VCAudioInjector_InjectSamples";
            v52 = 1024;
            v53 = 738;
            v54 = 2048;
            *v55 = a1;
            _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d instance=%p playback complete", buf, 0x26u);
          }
        }
      }
    }

    else
    {

      os_unfair_lock_unlock((a1 + 192));
    }
  }
}

BOOL VCAudioUnit_NewInstance(AudioComponentInstance *a1, OSType a2)
{
  v12 = *MEMORY[0x1E69E9840];
  inDesc.componentType = 1635083896;
  inDesc.componentSubType = a2;
  inDesc.componentFlagsMask = 0;
  *&inDesc.componentManufacturer = 1634758764;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioUnit_NewInstance_cold_2(v9, v10);
    }

    return 0;
  }

  v4 = AudioComponentInstanceNew(Next, a1);
  if (v4)
  {
    v5 = v4;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioUnit_NewInstance_cold_1(v6, v5, v7);
    }

    return 0;
  }

  return 1;
}

uint64_t _VCRateControlAlgorithmLowLatencyContinuousTier_DoRateControl(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  v12 = *a2;
  if (*a2 == 11)
  {

    return VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else if (v12 == 15 || v12 == 2)
  {

    return VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithVCRCStatistics(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCRateControlAlgorithmLowLatencyContinuousTier_DoRateControl_cold_1(v14, a2, v15);
      }
    }

    return 0;
  }
}

double VCRateControlAlgorithmLowLatencyContinuousTierPriv_Configure(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 1021);
  if (v7 == 1 && (v8 = *(a2 + 20), *(a1 + 60) != v8))
  {
    *(a1 + 60) = v8;
  }

  else
  {
    v9 = *(a2 + 1022);
    if (v9 != 1 || (v10 = *(a2 + 24), *(a1 + 64) == v10))
    {
      if (v7 & 1) != 0 || (v9)
      {
        goto LABEL_20;
      }

LABEL_19:
      VCRateControlAlgorithmLowLatencyNOWRDPriv_Configure(a1, a2, a3);
      goto LABEL_20;
    }

    *(a1 + 64) = v10;
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 4 * *(a1 + 64));
  v13 = *(v11 + 4 * *(a1 + 60));
  v14 = *(a1 + 1120);
  if (v14 >= v13)
  {
    v14 = v13;
  }

  if (v14 <= v12)
  {
    v14 = v12;
  }

  *(a1 + 1120) = v14;
  *(a1 + 5472) = *(a1 + 1144);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 1120);
      *buf = 136316418;
      v26 = v21;
      v27 = 2080;
      v28 = "_VCRateControlAlgorithmLowLatencyContinuousTier_UpdateTargetBitrateDueToBitrateRangeChanged";
      v29 = 1024;
      v30 = 97;
      v31 = 1024;
      v32 = v23;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Configured bitrate range for VCRateControl algorithm with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", buf, 0x2Eu);
    }
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configured bitrate range with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", v15, v16, v17, v18, v19, v20, *(a1 + 1120));
  if ((*(a2 + 1021) & 1) == 0 && (*(a2 + 1022) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  LODWORD(a4) = *(a1 + 1120);
  result = *&a4;
  *(a1 + 1112) = result;
  *(a1 + 1124) = vcRateControlTierBitrates[*(a1 + 1100)];
  return result;
}

uint64_t _VCRateControlAlgorithmLowLatencyContinuousTier_UpdateTargetBitrate(uint64_t result, unsigned int a2)
{
  v2 = *(result + 60);
  if ((v2 & 0x80000000) == 0)
  {
    while (vcRateControlTierBitrates[v2] > a2)
    {
      if (v2-- <= 0)
      {
        v2 = -1;
        break;
      }
    }
  }

  v4 = *(result + 1100);
  v5 = *(result + 64);
  if (v2 > v5)
  {
    v5 = v2;
  }

  *(result + 1100) = v5;
  if (*(result + 1100) < v4)
  {
    *(result + 1192) = *(result + 1144);
  }

  *(result + 1104) = v4;
  *(result + 1120) = a2;
  *(result + 1124) = vcRateControlTierBitrates[*(result + 1100)];
  return result;
}

BOOL VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  v11 = *a2;
  if (*a2 == 11)
  {
    *(a1 + 5360) = *(a2 + 80);
    *(a1 + 5368) = *(a2 + 84);
    v13 = *(a2 + 40);
    if (v13)
    {
      *(a1 + 5356) = v13 / *(a1 + 5156);
      *(a1 + 5336) = *(a2 + 72);
      LODWORD(a9) = *(a2 + 64);
      a10 = 1000.0;
      a9 = *&a9 / 1000.0;
      *(a1 + 5344) = a9;
    }

    if (VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampDownDueToNWConnection(a1, a9, a10, a11, a2, a3, a4, a5, a6, a7, a8))
    {
      if (*(a1 + 1088) && *(a1 + 1144) > 0.0)
      {
        *(a1 + 1100) = VCRateControlAlgorithmLowLatencyNOWRDPriv_RampDownTierDueToNWConnection(a1);
        LODWORD(v17) = *(*(a1 + 48) + 4 * *(a1 + 1100));
        *(a1 + 1112) = v17;
        VCRateControlAlgorithmBasePriv_StateChange(a1, 6);
      }
    }

    else if (VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampUpDueToNWConnection(a1, v14, v15, v16))
    {
      *(a1 + 5364) = 0;
    }

    else
    {
      *(a1 + 5364) = 1;
    }

    _VCRateControlAlgorithmLowLatencyContinuousTier_UpdateTargetBitrate(a1, *(a1 + 1112));
  }

  else
  {
    VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics_cold_1(a2);
  }

  return v11 == 11;
}

uint64_t _VCRateControlAlgorithmLowLatencyContinuousTier_RampDown(uint64_t a1)
{
  VCRateControlAlgorithmLowLatencyNOWRDPriv_SetRateChangeCounter(a1);
  *(a1 + 1160) = 1;
  *(a1 + 1184) = *(a1 + 1144);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
  v2 = *(a1 + 1112);
  v3 = 1.0;
  if (*(a1 + 1088) == 1)
  {
    v3 = 2.0;
  }

  v4 = v3 * *(a1 + 624);
  *(a1 + 5496) = v4;
  v11 = v2 / pow(1.159, v4);
  LODWORD(v12) = vcRateControlTierBitrates[*(a1 + 64)];
  v13 = v12;
  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion!!! New bitrate down exponentially to newTargetBitrate=%f with speedFactor=%f", v5, v6, v7, v8, v9, v10, *(a1 + 1132));
  return v14;
}

uint64_t _VCRateControlAlgorithmLowLatencyContinuousTier_RampUp(uint64_t a1, int a2)
{
  VCRateControlAlgorithmLowLatencyNOWRDPriv_SetRateChangeCounter(a1);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(a1);
  *(a1 + 5016) = 0;
  v4 = *(a1 + 1112);
  v5 = *(a1 + 632);
  if (v5 <= 0.0)
  {
    v5 = 1.0;
  }

  if (*(a1 + 1088) == 1)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 1000 * *(a1 + 1216);
  v8 = 1.0 / (v6 / v5);
  v9 = v7 - v4;
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  v10 = v7 * 0.1;
  if (v9 < v10)
  {
    v8 = v9 / v10;
  }

  v11 = fmin(fmax(v8, 0.0166666667), 10.0);
  *(a1 + 5496) = v11;
  v12 = *(a1 + 1144) - *(a1 + 5472);
  if (a2 == 15 && v12 > *(a1 + 240) && v12 >= 1.0 / v11)
  {
    v12 = 1.0 / v11;
  }

  v13 = v4 * pow(1.159, v11 * v12);
  LODWORD(v14) = vcRateControlTierBitrates[*(a1 + 60)];
  v15 = v14;
  if (v13 >= v15)
  {
    v13 = v15;
  }

  LODWORD(v15) = *(a1 + 1216);
  v16 = *&v15;
  if (v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (v4 < v16)
  {
    return v17;
  }

  return v13;
}

double OUTLINED_FUNCTION_1_31(unsigned int a1)
{
  result = a1;
  *(v1 + *v2) = a1;
  return result;
}

double VCCannedAVSync_SetBase(uint64_t a1, double a2)
{
  result = a2 - *(a1 + 16) * floor(*(a1 + 8) / *(a1 + 16));
  *(a1 + 8) = result;
  return result;
}

double VCCannedAVSync_AddDrift(uint64_t a1, double a2)
{
  result = *(a1 + 8) + a2 - *(a1 + 16) * floor((*(a1 + 8) + a2) / *(a1 + 16));
  *(a1 + 8) = result;
  return result;
}

void VCSignalHandler_Initialize()
{
  if (InitializeSignalHandlerBlockRegistry_sInitSignalHandlerBlockRegistryOnce != -1)
  {
    VCSignalHandler_Initialize_cold_1();
  }

  if (AVConferenceServer_ProcessIsAvconferenced())
  {
    signal(30, 1);
    v0 = MEMORY[0x1E69E9700];
    gSignalHandlerBlockRegistry1_1 = dispatch_source_create(MEMORY[0x1E69E9700], 0x1EuLL, 0, gSignalHandlerBlockRegistry1_0);
    dispatch_source_set_event_handler_f(gSignalHandlerBlockRegistry1_1, VCExecuteSignalHandlerBlocks1);
    dispatch_resume(gSignalHandlerBlockRegistry1_1);
    signal(31, 1);
    gSignalHandlerBlockRegistry2_1 = dispatch_source_create(v0, 0x1FuLL, 0, gSignalHandlerBlockRegistry2_0);
    dispatch_source_set_event_handler_f(gSignalHandlerBlockRegistry2_1, VCExecuteSignalHandlerBlocks2);
    dispatch_resume(gSignalHandlerBlockRegistry2_1);
    signal(15, 1);
    gSignalHandlerBlockRegistry3_1 = dispatch_source_create(v0, 0xFuLL, 0, gSignalHandlerBlockRegistry3_0);
    dispatch_source_set_event_handler_f(gSignalHandlerBlockRegistry3_1, VCExecuteSignalHandlerBlocks3);
    v1 = gSignalHandlerBlockRegistry3_1;

    dispatch_resume(v1);
  }
}

uint64_t VCExecuteSignalHandlerBlocks1()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "VCExecuteSignalHandlerBlocks1";
      v7 = 1024;
      v8 = 31;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCExecuteSignalHandlerBlocks1 USR1", &v3, 0x1Cu);
    }
  }

  return VRTraceReset();
}

void VCExecuteSignalHandlerBlocks2()
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v0;
      v18 = 2080;
      v19 = "VCExecuteSignalHandlerBlocks2";
      v20 = 1024;
      v21 = 36;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCExecuteSignalHandlerBlocks2 USR2", buf, 0x1Cu);
    }
  }

  v2 = CFPreferencesCopyAppValue(@"SignalHandlerCodes", @"com.apple.VideoConference");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v3;
      v18 = 2080;
      v19 = "VCExecuteSignalHandlerBlocks2";
      v20 = 1024;
      v21 = 39;
      v22 = 2112;
      v23 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d signalHandlerCodes=%@", buf, 0x26u);
    }
  }

  v15 = v2;
  if (v2)
  {
    v5 = [v2 componentsSeparatedByString:@";"];
  }

  else
  {
    v5 = [gSignalHandlerBocks allKeys];
  }

  v6 = v5;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [gSignalHandlerBocks objectForKeyedSubscript:v11];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v17 = v13;
            v18 = 2080;
            v19 = "VCExecuteSignalHandlerBlocks2";
            v20 = 1024;
            v21 = 43;
            v22 = 2048;
            v23 = gSignalHandlerBocks;
            v24 = 2112;
            v25 = v11;
            v26 = 2048;
            v27 = v12;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gSignalHandlerBocks=%p, code=%@, block=%p", buf, 0x3Au);
          }
        }

        if (v12)
        {
          (*(v12 + 16))(v12);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v8);
  }
}

uint64_t VCExecuteSignalHandlerBlocks3()
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v0;
      v6 = 2080;
      v7 = "VCExecuteSignalHandlerBlocks3";
      v8 = 1024;
      v9 = 52;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d avconferenced received SIGTERM, exiting", &v4, 0x1Cu);
    }
  }

  v2 = getpid();
  return kill(v2, 9);
}

uint64_t VCRegisterSignalHandler(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316418;
      v8 = v4;
      v9 = 2080;
      v10 = "VCRegisterSignalHandler";
      v11 = 1024;
      v12 = 88;
      v13 = 2080;
      v14 = "VCRegisterSignalHandler";
      v15 = 2112;
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
      v17 = 2048;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: code=%@, block=%p", &v7, 0x3Au);
    }
  }

  return [gSignalHandlerBocks setObject:a2 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
}

id __InitializeSignalHandlerBlockRegistry_block_invoke()
{
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  gSignalHandlerBlockRegistry1_0 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSignalHandler.registryQueue1", 0, CustomRootQueue);
  gSignalHandlerBlockRegistry2_0 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSignalHandler.registryQueue2", 0, CustomRootQueue);
  gSignalHandlerBlockRegistry3_0 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSignalHandler.registryQueue3", 0, CustomRootQueue);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  gSignalHandlerBocks = result;
  return result;
}

void OUTLINED_FUNCTION_10_21(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

void OUTLINED_FUNCTION_13_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

uint64_t OUTLINED_FUNCTION_19_14@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return [v4 UTF8String];
}

uint64_t _VCRateControlSmartBrake_BindEspressoBuffer(void *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v10 = espresso_buffer_pack_tensor_shape();
  if (!v10)
  {
    *a2 = a6;
    *(a2 + 160) = 65568;
    v11 = espresso_network_bind_buffer();
    if (!v11)
    {
      return v11;
    }

    if (objc_opt_class() != a1)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v24 = 136316674;
          v25 = v23;
          v26 = 2080;
          v27 = "_VCRateControlSmartBrake_BindEspressoBuffer";
          v28 = 1024;
          v29 = 390;
          v30 = 2112;
          v31 = v14;
          v32 = 2048;
          v33 = a1;
          v34 = 2080;
          v35 = a3;
          v36 = 1024;
          v37 = v11;
          v17 = " [%s] %s:%d %@(%p) Unable to bind %s espresso buffer returnStatus=%d";
          goto LABEL_25;
        }
      }

      return v11;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v11;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    v24 = 136316162;
    v25 = v18;
    v26 = 2080;
    v27 = "_VCRateControlSmartBrake_BindEspressoBuffer";
    v28 = 1024;
    v29 = 390;
    v30 = 2080;
    v31 = a3;
    v32 = 1024;
    LODWORD(v33) = v11;
    v17 = " [%s] %s:%d Unable to bind %s espresso buffer returnStatus=%d";
LABEL_16:
    v19 = v16;
    v20 = 44;
LABEL_26:
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v17, &v24, v20);
    return v11;
  }

  v11 = v10;
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v11;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    v24 = 136316162;
    v25 = v15;
    v26 = 2080;
    v27 = "_VCRateControlSmartBrake_BindEspressoBuffer";
    v28 = 1024;
    v29 = 384;
    v30 = 2080;
    v31 = a3;
    v32 = 1024;
    LODWORD(v33) = v11;
    v17 = " [%s] %s:%d Unable to pack espresso tensor shape for %s espresso buffer returnStatus=%d";
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v13 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v24 = 136316674;
      v25 = v21;
      v26 = 2080;
      v27 = "_VCRateControlSmartBrake_BindEspressoBuffer";
      v28 = 1024;
      v29 = 384;
      v30 = 2112;
      v31 = v13;
      v32 = 2048;
      v33 = a1;
      v34 = 2080;
      v35 = a3;
      v36 = 1024;
      v37 = v11;
      v17 = " [%s] %s:%d %@(%p) Unable to pack espresso tensor shape for %s espresso buffer returnStatus=%d";
LABEL_25:
      v19 = v22;
      v20 = 64;
      goto LABEL_26;
    }
  }

  return v11;
}

void VCRateControlSmartBrake_Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  *(a3 + 8) = 0;
  *a3 = 0;
  if (!a1 || *(a1 + 2112) != 1)
  {
    return;
  }

  v6 = *a2;
  if (*(a1 + 172) == 0.0)
  {
    *(a1 + 168) = v6;
    *(a1 + 172) = 1065353216;
    return;
  }

  *(a1 + 176) = v6 - *(a1 + 168);
  *(a1 + 168) = v6;
  *(a1 + 180) = *(a2 + 4);
  *(a1 + 188) = *(a2 + 12);
  *(a1 + 184) = *(a2 + 8);
  *(a1 + 192) = *(a2 + 16);
  *(a1 + 196) = *(a2 + 20);
  if (espresso_plan_execute_sync())
  {
    error_info = espresso_plan_get_error_info();
    v9 = v8;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v18 = 136316418;
      v19 = v11;
      v20 = 2080;
      v21 = "VCRateControlSmartBrake_Query";
      v22 = 1024;
      v23 = 426;
      v24 = 1024;
      *v25 = error_info;
      *&v25[4] = 1024;
      *&v25[6] = HIDWORD(error_info);
      *v26 = 2080;
      *&v26[2] = v9;
      v13 = " [%s] %s:%d Error while executing neural network planStatus=%d, returnStatus=%d, description=%s";
      v14 = v12;
      v15 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v18 = 136316930;
      v19 = v16;
      v20 = 2080;
      v21 = "VCRateControlSmartBrake_Query";
      v22 = 1024;
      v23 = 426;
      v24 = 2112;
      *v25 = v10;
      *&v25[8] = 2048;
      *v26 = a1;
      *&v26[8] = 1024;
      v27 = error_info;
      v28 = 1024;
      v29 = HIDWORD(error_info);
      v30 = 2080;
      v31 = v9;
      v13 = " [%s] %s:%d %@(%p) Error while executing neural network planStatus=%d, returnStatus=%d, description=%s";
      v14 = v17;
      v15 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, &v18, v15);
    return;
  }

  *a3 = *(a1 + 200);
  *(a3 + 4) = vcvt_u32_f32(*(a1 + 204));

  kdebug_trace();
}

void VCRateControlSmartBrake_ResetState(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1736))
    {
      v1 = 0;
      do
      {
        *(*(a1 + 1728) + 4 * v1++) = 0;
      }

      while (v1 < *(a1 + 1736));
    }

    *(a1 + 172) = 0;
  }

  else if (objc_opt_class())
  {
    if (objc_opt_respondsToSelector())
    {
      [0 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlSmartBrake_ResetState_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlSmartBrake_ResetState_cold_2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_37(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _VCRateControlSmartBrake_BindEspressoBuffer(v6, a2, a3, a4, 2, a6);
}

int64_t _VCMediaStreamSynchronizer_differenceBetweenRtpTimestamp(int a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = a1 - a2;
  if (v3 <= 0xFFFFFFFF80000000)
  {
    v3 += 0x100000000;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = a2;
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316418;
          v11 = v6;
          v12 = 2080;
          v13 = "_VCMediaStreamSynchronizer_differenceBetweenRtpTimestamp";
          v14 = 1024;
          v15 = 260;
          v16 = 2048;
          v17 = v2;
          v18 = 2048;
          v19 = v5;
          v20 = 2048;
          v21 = v3;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer: wrap around playoutSampleRTP(%lld)-destRTPOfNTP(%lld)=%lld", &v10, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316418;
        v11 = v6;
        v12 = 2080;
        v13 = "_VCMediaStreamSynchronizer_differenceBetweenRtpTimestamp";
        v14 = 1024;
        v15 = 260;
        v16 = 2048;
        v17 = v2;
        v18 = 2048;
        v19 = v5;
        v20 = 2048;
        v21 = v3;
        _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer: wrap around playoutSampleRTP(%lld)-destRTPOfNTP(%lld)=%lld", &v10, 0x3Au);
      }
    }
  }

  return v3;
}

void VCMediaStreamSynchronizer_updateDestinationNTPTime(uint64_t a1, int a2, double a3)
{
  v25 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v14 = v7;
          v15 = 2080;
          v16 = "VCMediaStreamSynchronizer_updateDestinationNTPTime";
          v17 = 1024;
          v18 = 120;
          v19 = 2048;
          v20 = a1;
          v21 = 2048;
          v22 = a3;
          v23 = 1024;
          v24 = a2;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p] Received dest (video) ntpTime=%.6f rtpTimeStamp=%u", buf, 0x36u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v14 = v7;
        v15 = 2080;
        v16 = "VCMediaStreamSynchronizer_updateDestinationNTPTime";
        v17 = 1024;
        v18 = 120;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = a3;
        v23 = 1024;
        v24 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p] Received dest (video) ntpTime=%.6f rtpTimeStamp=%u", buf, 0x36u);
      }
    }

    v10 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaStreamSynchronizer_updateDestinationNTPTime_block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = a1;
    *&block[5] = a3;
    v12 = a2;
    dispatch_async(v10, block);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamSynchronizer_updateDestinationNTPTime_cold_1();
    }
  }
}

void VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp(a1, a2);
    VCVideoPlayer_QueueAlarmForDecode(*(a1 + 32), _VCMediaStreamSynchronizerAlarmCallback, a1, a2, 0, 0, v4);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316418;
          v9 = v5;
          v10 = 2080;
          v11 = "VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp";
          v12 = 1024;
          v13 = 138;
          v14 = 2048;
          v15 = a1;
          v16 = 1024;
          v17 = a2;
          v18 = 2048;
          v19 = v4;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: Scheduled playout for dest (video) RTPTimestamp=%u scheduleTime=%.6f", &v8, 0x36u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136316418;
        v9 = v5;
        v10 = 2080;
        v11 = "VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp";
        v12 = 1024;
        v13 = 138;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        v18 = 2048;
        v19 = v4;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: Scheduled playout for dest (video) RTPTimestamp=%u scheduleTime=%.6f", &v8, 0x36u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp_cold_1();
    }
  }
}

double VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp_block_invoke;
  v5[3] = &unk_1E85F64A0;
  v6 = a2;
  v5[4] = a1;
  v5[5] = &v7;
  dispatch_sync(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void _VCMediaStreamSynchronizerAlarmCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 116));
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a2 + 8), a4);
    }

    os_unfair_lock_unlock((a1 + 116));
  }
}

void VCMediaStreamSynchronizer_resetDestinationState(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 24);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __VCMediaStreamSynchronizer_resetDestinationState_block_invoke;
    v2[3] = &unk_1E85F3778;
    v2[4] = a1;
    dispatch_async(v1, v2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamSynchronizer_resetDestinationState_cold_1();
    }
  }
}

void VCMediaStreamSynchronizer_setDestinationAlarmHandler(uint64_t a1, const void *a2)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 116));
    _Block_release(*(a1 + 40));
    *(a1 + 40) = _Block_copy(a2);

    os_unfair_lock_unlock((a1 + 116));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamSynchronizer_setDestinationAlarmHandler_cold_1();
    }
  }
}

BOOL _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal(uint64_t a1, int a2, int *a3)
{
  result = 0;
  v62 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3)
  {
    return result;
  }

  if (*(a1 + 100) == 1 || !*(a1 + 64) || !*(a1 + 96))
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v23 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal_cold_2();
      return 0;
    }

    result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v38 = 136315906;
    v39 = v21;
    v40 = 2080;
    v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
    v42 = 1024;
    v43 = 283;
    v44 = 2048;
    v45 = a1;
    v24 = "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: source info not ready";
LABEL_15:
    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v24, &v38, 0x26u);
    return 0;
  }

  v7 = *(a1 + 88);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v7)
  {
    if (ErrorLogLevelForModule < 8)
    {
      return 0;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      result = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      _VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal_cold_1();
      return 0;
    }

    result = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v38 = 136315906;
    v39 = v25;
    v40 = 2080;
    v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
    v42 = 1024;
    v43 = 288;
    v44 = 2048;
    v45 = a1;
    v24 = "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: destination info not ready";
    goto LABEL_15;
  }

  v9 = MEMORY[0x1E6986640];
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    v13 = *v10;
    if (*v9 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 96);
        v15 = *(a1 + 64);
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        v18 = *(a1 + 88);
        v19 = *(a1 + 72);
        v20 = *(a1 + 80);
        v38 = 136317954;
        v39 = v11;
        v40 = 2080;
        v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
        v42 = 1024;
        v43 = 292;
        v44 = 2048;
        v45 = a1;
        v46 = 1024;
        v47 = v14;
        v48 = 1024;
        v49 = v15;
        v50 = 2048;
        v51 = v16;
        v52 = 1024;
        v53 = v17;
        v54 = 1024;
        v55 = a2;
        v56 = 1024;
        v57 = v18;
        v58 = 2048;
        v59 = v19;
        v60 = 1024;
        v61 = v20;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: lastSrcRTP=%u srcSRRTP=%u srcSRNPT=%.9f srcRate=%d dstRTP=%u dstSrRTP=%u dstSRNTP=%.9f dstRate=%d", &v38, 0x5Eu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 96);
      v32 = *(a1 + 64);
      v33 = *(a1 + 48);
      v34 = *(a1 + 56);
      v35 = *(a1 + 88);
      v36 = *(a1 + 72);
      v37 = *(a1 + 80);
      v38 = 136317954;
      v39 = v11;
      v40 = 2080;
      v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
      v42 = 1024;
      v43 = 292;
      v44 = 2048;
      v45 = a1;
      v46 = 1024;
      v47 = v31;
      v48 = 1024;
      v49 = v32;
      v50 = 2048;
      v51 = v33;
      v52 = 1024;
      v53 = v34;
      v54 = 1024;
      v55 = a2;
      v56 = 1024;
      v57 = v35;
      v58 = 2048;
      v59 = v36;
      v60 = 1024;
      v61 = v37;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: lastSrcRTP=%u srcSRRTP=%u srcSRNPT=%.9f srcRate=%d dstRTP=%u dstSrRTP=%u dstSRNTP=%.9f dstRate=%d", &v38, 0x5Eu);
    }
  }

  v27 = *(a1 + 64) + ((*(a1 + 72) + _VCMediaStreamSynchronizer_differenceBetweenRtpTimestamp(a2, *(a1 + 88)) / *(a1 + 80) - *(a1 + 48)) * *(a1 + 56));
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *v10;
    v30 = *v10;
    if (*v9 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136316418;
        v39 = v28;
        v40 = 2080;
        v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
        v42 = 1024;
        v43 = 297;
        v44 = 2048;
        v45 = a1;
        v46 = 1024;
        v47 = a2;
        v48 = 1024;
        v49 = v27;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: DToS: %u->%u", &v38, 0x32u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v38 = 136316418;
      v39 = v28;
      v40 = 2080;
      v41 = "_VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestampInternal";
      v42 = 1024;
      v43 = 297;
      v44 = 2048;
      v45 = a1;
      v46 = 1024;
      v47 = a2;
      v48 = 1024;
      v49 = v27;
      _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: DToS: %u->%u", &v38, 0x32u);
    }
  }

  *a3 = v27;
  return 1;
}

uint64_t VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestamp(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = 0;
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v5 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestamp_block_invoke;
    block[3] = &unk_1E85F9298;
    block[4] = a1;
    block[5] = &v9;
    v8 = a2;
    block[6] = &v13;
    dispatch_sync(v5, block);
    v3 = *(v10 + 24);
    if (v3 == 1)
    {
      *a3 = *(v14 + 6);
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  return v3;
}

uint64_t VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp_block_invoke;
    block[3] = &unk_1E85F7840;
    block[5] = &v8;
    block[6] = a3;
    v7 = a2;
    block[4] = a1;
    dispatch_sync(v4, block);
    v3 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v3 & 1;
}

void VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler(uint64_t a1, const void *a2)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 112));
    _Block_release(*(a1 + 104));
    *(a1 + 104) = _Block_copy(a2);

    os_unfair_lock_unlock((a1 + 112));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler_cold_1();
    }
  }
}

void VCMediaStreamSyncSourceDelegate_updateSourceState(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaStreamSyncSourceDelegate_updateSourceState_block_invoke;
    block[3] = &unk_1E85F38B8;
    v4 = a2;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void VCMediaStreamSyncSourceDelegate_resetSourceState(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 100))
    {
      v1 = *(a1 + 24);
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __VCMediaStreamSyncSourceDelegate_resetSourceState_block_invoke;
      v2[3] = &unk_1E85F3778;
      v2[4] = a1;
      dispatch_async(v1, v2);
    }
  }
}

void VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp(uint64_t a1, int a2, double a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *&buf[4] = v6;
          *&buf[12] = 2080;
          *&buf[14] = "VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp";
          *&buf[22] = 1024;
          *v22 = 362;
          *&v22[4] = 2048;
          *&v22[6] = a1;
          *&v22[14] = 2048;
          *&v22[16] = a3;
          LOWORD(v23) = 1024;
          *(&v23 + 2) = a2;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: Received source (audio) frame. systemTime=%.6f playoutSampleRTPTimestamp=%u", buf, 0x36u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp";
        *&buf[22] = 1024;
        *v22 = 362;
        *&v22[4] = 2048;
        *&v22[6] = a1;
        *&v22[14] = 2048;
        *&v22[16] = a3;
        LOWORD(v23) = 1024;
        *(&v23 + 2) = a2;
        _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p]: Received source (audio) frame. systemTime=%.6f playoutSampleRTPTimestamp=%u", buf, 0x36u);
      }
    }

    os_unfair_lock_lock((a1 + 112));
    v9 = *(a1 + 104);
    os_unfair_lock_unlock((a1 + 112));
    if (v9)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3810000000;
      *&v22[8] = *MEMORY[0x1E6960C70];
      v10 = *(MEMORY[0x1E6960C70] + 16);
      *v22 = &unk_1DBF04739;
      v23 = v10;
      v11 = *(a1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp_block_invoke;
      block[3] = &unk_1E85F92C0;
      block[4] = a1;
      block[5] = buf;
      v20 = a2;
      *&block[6] = a3;
      dispatch_sync(v11, block);
      os_unfair_lock_lock((a1 + 112));
      v12 = *(a1 + 104);
      if (v12)
      {
        v17 = *(*&buf[8] + 48);
        v16 = *(*&buf[8] + 32);
        v18 = a3;
        (*(v12 + 16))(v12, &v16);
      }

      os_unfair_lock_unlock((a1 + 112));
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = *(a1 + 24);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp_block_invoke_2;
      v14[3] = &unk_1E85F3908;
      v14[4] = a1;
      v15 = a2;
      *&v14[5] = a3;
      dispatch_async(v13, v14);
    }
  }
}

CMTime *_VCMediaStreamSynchronizer_updateSourcePlayoutSampleRTPTimestampInternal@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, CMTime *a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 96);
  v8 = a2 >= v7;
  v9 = a2 - v7;
  v10 = *(a1 + 16);
  if (!v8 && v9 <= 0x7FFFFFFE)
  {
    *(a1 + 16) = ++v10;
  }

  *(a1 + 96) = a2;
  *(a1 + 8) = a4;
  VCVideoPlayer_CallAlarms(*(a1 + 32), a4, (a2 + v10 * 4294967300.0) / *(a1 + 56));
  v12 = a2 | (*(a1 + 16) << 32);
  v13 = [a1 sourceSampleRate];

  return CMTimeMake(a3, v12, v13);
}

void VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp(uint64_t a1, int a2, double a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v13 = v6;
          v14 = 2080;
          v15 = "VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp";
          v16 = 1024;
          v17 = 392;
          v18 = 2048;
          v19 = a1;
          v20 = 2048;
          v21 = a3;
          v22 = 1024;
          v23 = a2;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p] Received source (audio) ntpTime=%.6f rtpTimeStamp=%u", buf, 0x36u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v13 = v6;
        v14 = 2080;
        v15 = "VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp";
        v16 = 1024;
        v17 = 392;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a3;
        v22 = 1024;
        v23 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, "VCMediaStreamSynchronizer [%s] %s:%d VCMediaStreamSynchronizer[%p] Received source (audio) ntpTime=%.6f rtpTimeStamp=%u", buf, 0x36u);
      }
    }

    v9 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp_block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = a1;
    *&block[5] = a3;
    v11 = a2;
    dispatch_async(v9, block);
  }
}

size_t VCBoundsSafety_IndexableToNulTerminated(char *__s1, size_t a2)
{
  v2 = __s1;
  if (!__s1)
  {
    return v2;
  }

  result = strnlen(__s1, a2);
  if (result == a2)
  {
    return 0;
  }

  v5 = &v2[result];
  if (&v2[result] >= v2 && v5 + 1 >= v5 && v5 + 1 <= &v2[a2] && !*v5)
  {
    return v2;
  }

  __break(0x5519u);
  return result;
}

void _VCBoundsSafety_ReleaseAssignAndRetain(const void **a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      CFRelease(v4);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *a1 = cf;
  }
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return objc_opt_respondsToSelector();
}

BOOL OUTLINED_FUNCTION_22_9()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_23_7()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

uint64_t VCRealTimeThread_Initialize(int a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || !a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "VCRealTimeThread_Initialize";
        v19 = 1024;
        v20 = 63;
        v21 = 2048;
        v22 = a2;
        v23 = 2048;
        v24 = a3;
        v25 = 2048;
        v26 = a4;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d called with invalid parameter: routine=%p context=%p identifier=%p", &v15, 0x3Au);
      }
    }

    return 0;
  }

  v10 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10A0040640140D7uLL);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRealTimeThread_Initialize_cold_2();
      }
    }

    return 0;
  }

  v11 = v10;
  *v10 = 0;
  *(v10 + 10) = a2;
  *(v10 + 11) = a3;
  *(v10 + 42) = a1;
  *(v10 + 43) = a5;
  *(v10 + 26) = -1;
  strncpy(v10 + 108, a4, 0x3CuLL);
  pthread_mutex_init((v11 + 8), 0);
  *(v11 + 72) = dispatch_semaphore_create(0);
  if ((VCRealTimeThread_ChangeState(v11, 1) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRealTimeThread_Initialize_cold_1();
      }
    }

    dispatch_release(*(v11 + 72));
    pthread_mutex_destroy((v11 + 8));
    free(v11);
    return 0;
  }

  return v11;
}

uint64_t VCRealTimeThread_ChangeState(uint64_t a1, int a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3 || a2 != 3)
      {
        goto LABEL_17;
      }

LABEL_41:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *a1;
          *keys = 136316162;
          *&keys[4] = v17;
          *&keys[12] = 2080;
          *&keys[14] = "VCRealTimeThread_ChangeState";
          v23 = 1024;
          v24 = 313;
          v25 = 1024;
          v26 = v19;
          v27 = 1024;
          v28 = a2;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successful thread state transition: %d -> %d", keys, 0x28u);
        }
      }

      *a1 = a2;
      v9 = 1;
      goto LABEL_45;
    }

    if (a2 != 3)
    {
      if (a2 != 2)
      {
        *(a1 + 4) |= 1u;
        v16 = *(a1 + 104);
        if (v16 != -1)
        {
          VTP_Close(v16);
          *(a1 + 104) = -1;
        }
      }

      goto LABEL_41;
    }

LABEL_40:
    VCRealTimeThread_InternalStop(a1);
    goto LABEL_41;
  }

  if (!v4)
  {
    if (!a2 || a2 == 3)
    {
      goto LABEL_41;
    }

    if (a2 != 1)
    {
      goto LABEL_17;
    }

    v10 = CFStringCreateWithFormat(0, 0, @"%s", a1 + 108);
    v11 = *MEMORY[0x1E69631F8];
    *keys = *MEMORY[0x1E69631F0];
    *&keys[8] = v11;
    v12 = *MEMORY[0x1E695E4C0];
    values[0] = v10;
    values[1] = v12;
    if (*(a1 + 172))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = FigThreadCreate();
    if (v15 && VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      VCRealTimeThread_ChangeState_cold_2();
      if (!v14)
      {
LABEL_32:
        if (v10)
        {
          CFRelease(v10);
        }

        if (!v15)
        {
          goto LABEL_41;
        }

        goto LABEL_17;
      }
    }

    else if (!v14)
    {
      goto LABEL_32;
    }

    CFRelease(v14);
    goto LABEL_32;
  }

  if (v4 != 1)
  {
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    goto LABEL_41;
  }

  if (a2 != 2)
  {
    goto LABEL_40;
  }

  v5 = VTP_Socket(2, 1, 0);
  *(a1 + 104) = v5;
  if (v5 != -1)
  {
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRealTimeThread_ChangeState_cold_1();
    }
  }

  if (*(a1 + 104) != -1)
  {
LABEL_11:
    *(a1 + 4) |= 2u;
    dispatch_semaphore_signal(*(a1 + 72));
    goto LABEL_41;
  }

LABEL_17:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v21 = *a1;
      *keys = 136316162;
      *&keys[4] = v7;
      *&keys[12] = 2080;
      *&keys[14] = "VCRealTimeThread_ChangeState";
      v23 = 1024;
      v24 = 316;
      v25 = 1024;
      v26 = v21;
      v27 = 1024;
      v28 = a2;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Thread state transition failed: %d -> %d", keys, 0x28u);
    }
  }

  v9 = 0;
LABEL_45:
  pthread_mutex_unlock((a1 + 8));
  return v9;
}

void VCRealTimeThread_Finalize(uint64_t a1)
{
  if (a1)
  {
    VCRealTimeThread_ChangeState(a1, 3);
    if (*(a1 + 96))
    {
      FigThreadJoin();
      *(a1 + 96) = 0;
    }

    dispatch_release(*(a1 + 72));
    pthread_mutex_destroy((a1 + 8));

    free(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRealTimeThread_Finalize_cold_1();
    }
  }
}

uint64_t VCRealTimeThread_Start(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "VCRealTimeThread_Start";
        v10 = 1024;
        v11 = 120;
        v12 = 2080;
        v13 = a1 + 108;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_Start(%s) called!", &v6, 0x26u);
      }
    }

    return VCRealTimeThread_ChangeState(a1, 2);
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCRealTimeThread_Start_cold_1();
    }

    return 0;
  }
}

uint64_t VCRealTimeThread_Stop(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "VCRealTimeThread_Stop";
        v10 = 1024;
        v11 = 130;
        v12 = 2080;
        v13 = a1 + 108;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_Stop(%s) called!", &v6, 0x26u);
      }
    }

    return VCRealTimeThread_ChangeState(a1, 1);
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCRealTimeThread_Stop_cold_1();
    }

    return 0;
  }
}

uint64_t VCRealTimeThread_InternalStop(uint64_t a1)
{
  *(a1 + 4) |= 4u;
  dispatch_semaphore_signal(*(a1 + 72));
  result = *(a1 + 104);
  if (result != -1)
  {
    result = VTP_Close(result);
    *(a1 + 104) = -1;
  }

  return result;
}

uint64_t VCRealTimeThread_ThreadProc(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 8));
  v2 = *(a1 + 4);
  pthread_mutex_unlock((a1 + 8));
  v3 = a1 + 108;
  pthread_setname_np((a1 + 108));
  if ((*(a1 + 172) & 2) != 0)
  {
    if (proc_setthread_cpupercent())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCRealTimeThread_ThreadProc_cold_1();
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v4;
      v21 = 2080;
      v22 = "VCRealTimeThread_ThreadProc";
      v23 = 1024;
      v24 = 178;
      v25 = 2080;
      v26 = a1 + 108;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_ThreadProc(%s) start!", buf, 0x26u);
    }
  }

  v18 = -1;
  if ((v2 & 4) == 0)
  {
    v6 = MEMORY[0x1E6986650];
    do
    {
      while ((*(a1 + 4) & 6) == 0)
      {
        dispatch_semaphore_wait(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL);
      }

      v18 = *(a1 + 104);
      pthread_mutex_lock((a1 + 8));
      v7 = *(a1 + 4);
      LOBYTE(v8) = v7 & 0xFD;
      *(a1 + 4) = v7 & 0xFFFFFFFD;
      pthread_mutex_unlock((a1 + 8));
      if (v18 == -1)
      {
        pthread_mutex_lock((a1 + 8));
        *(a1 + 4) &= ~1u;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v20 = v9;
            v21 = 2080;
            v22 = "VCRealTimeThread_ThreadProc";
            v23 = 1024;
            v24 = 194;
            v25 = 2080;
            v26 = a1 + 108;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_ThreadProc(%s) running!", buf, 0x26u);
          }
        }

        v17 = 0;
        if ((v7 & 5) == 0)
        {
          do
          {
            (*(a1 + 80))(*(a1 + 88), &v18, &v17);
            pthread_mutex_lock((a1 + 8));
            v11 = *(a1 + 4);
            pthread_mutex_unlock((a1 + 8));
          }

          while ((v11 & 5) == 0 && (v17 & 1) == 0);
          if (v17)
          {
            VCRealTimeThread_ChangeState(a1, 1);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v20 = v12;
            v21 = 2080;
            v22 = "VCRealTimeThread_ThreadProc";
            v23 = 1024;
            v24 = 205;
            v25 = 2080;
            v26 = a1 + 108;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_ThreadProc(%s) pausing!", buf, 0x26u);
          }
        }

        pthread_mutex_lock((a1 + 8));
        v8 = *(a1 + 4) & 0xFFFFFFFE;
        *(a1 + 4) = v8;
      }

      pthread_mutex_unlock((a1 + 8));
    }

    while ((v8 & 4) == 0);
  }

  pthread_mutex_lock((a1 + 8));
  *(a1 + 4) &= ~4u;
  pthread_mutex_unlock((a1 + 8));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v14;
      v21 = 2080;
      v22 = "VCRealTimeThread_ThreadProc";
      v23 = 1024;
      v24 = 210;
      v25 = 2080;
      v26 = v3;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ### VCRealTimeThread_ThreadProc(%s) stop!", buf, 0x26u);
    }
  }

  return 0;
}

uint64_t VCCCMessageWrapperReadFrom(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        [a1 clearOneofValuesForContent];
        *(a1 + 32) |= 1u;
        *(a1 + 16) = 1;
        v17 = objc_alloc_init(VCCCMessage);

        *(a1 + 24) = v17;
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = VCCCMessageReadFrom(v17, a2);
        if (!result)
        {
          return result;
        }

LABEL_34:
        PBReaderRecallMark();
        goto LABEL_38;
      }

      if (v12)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = 0;
        while (1)
        {
          LOBYTE(v21) = 0;
          v14 = [a2 position] + 1;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 1, v15 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v21 & 0x80000000) == 0)
          {
            break;
          }

          if (v13++ > 8)
          {
            goto LABEL_38;
          }
        }

        [a2 hasError];
      }

LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    [a1 clearOneofValuesForContent];
    *(a1 + 32) |= 1u;
    *(a1 + 16) = 2;
    v19 = objc_alloc_init(VCCCMessageAcknowledgment);

    *(a1 + 8) = v19;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = VCCCMessageAcknowledgmentReadFrom(v19, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

void *VCStreamInputUtil_EncodeFormatDescription(const opaqueCMFormatDescription *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    if ((_VCStreamInputUtil_AddFormatDescription(v2, a1) & 1) == 0)
    {
      VCStreamInputUtil_EncodeFormatDescription_cold_1(v3);
      return 0;
    }
  }

  else
  {
    VCStreamInputUtil_EncodeFormatDescription_cold_2();
    return v5;
  }

  return v3;
}

uint64_t _VCStreamInputUtil_AddFormatDescription(void *a1, CMFormatDescriptionRef desc)
{
  MediaType = CMFormatDescriptionGetMediaType(desc);
  if ((_VCStreamInputUtil_AddUint32Value(a1, "VCStreamInputMediaType", MediaType) & 1) == 0)
  {
    _VCStreamInputUtil_AddFormatDescription_cold_1(MediaType);
    return v13;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if ((_VCStreamInputUtil_AddUint32Value(a1, "VCStreamInputMediaSubtype", MediaSubType) & 1) == 0)
  {
    _VCStreamInputUtil_AddFormatDescription_cold_2(MediaType);
    return v14;
  }

  if (MediaType > 1952606065)
  {
    if (MediaType != 1952606066)
    {
      if (MediaType != 1986618469)
      {
        goto LABEL_17;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
      height = Dimensions.height;
      if ((_VCStreamInputUtil_AddUint32Value(a1, "VCStreamInputPixelBufferWidth", Dimensions.width) & 1) == 0)
      {
        _VCStreamInputUtil_AddFormatDescription_cold_5();
        return v17;
      }

      if ((_VCStreamInputUtil_AddUint32Value(a1, "VCStreamInputPixelBufferHeight", height) & 1) == 0)
      {
        _VCStreamInputUtil_AddFormatDescription_cold_6();
        return v18;
      }
    }

    return _VCStreamInputUtil_AddExtensions(a1, desc);
  }

  if (MediaType == 1835365473)
  {
    return 1;
  }

  if (MediaType == 1936684398)
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    if (StreamBasicDescription)
    {
      v7 = xpc_data_create(StreamBasicDescription, 0x28uLL);
      if (v7)
      {
        v8 = v7;
        xpc_dictionary_set_value(a1, "VCStreamInputFormatASBD", v7);
        xpc_release(v8);
        return 1;
      }

      _VCStreamInputUtil_AddFormatDescription_cold_3();
      return v15;
    }

    else
    {
      _VCStreamInputUtil_AddFormatDescription_cold_4();
      return v16;
    }
  }

LABEL_17:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _VCStreamInputUtil_AddFormatDescription_cold_7(v12, MediaType);
  }

  return 0;
}

CMTimeValue VCStreamInputUtil_EncodeSampleBuffer(opaqueCMSampleBuffer *a1)
{
  v28[2] = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v4 = 0;
  if (MediaType <= 1952606065)
  {
    if (MediaType != 1835365473)
    {
      if (MediaType == 1936684398)
      {
        v4 = _VCStreamInputUtil_EncodeDataSampleBuffer(a1);
        if (!v4)
        {
          VCStreamInputUtil_EncodeSampleBuffer_cold_16();
          goto LABEL_44;
        }

        NumSamples = CMSampleBufferGetNumSamples(a1);
        if ((_VCStreamInputUtil_AddUint32Value(v4, "VCStreamInputFormatSampleCount", NumSamples) & 1) == 0)
        {
          VCStreamInputUtil_EncodeSampleBuffer_cold_15();
          goto LABEL_44;
        }
      }

      return v4;
    }

    goto LABEL_8;
  }

  if (MediaType == 1952807028)
  {
LABEL_8:

    return _VCStreamInputUtil_EncodeDataSampleBuffer(a1);
  }

  if (MediaType != 1952606066)
  {
    if (MediaType != 1986618469)
    {
      return v4;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    timingInfoOut.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&timingInfoOut.presentationTimeStamp.timescale = v22;
    *&timingInfoOut.decodeTimeStamp.value = v22;
    *&timingInfoOut.duration.value = v22;
    *&timingInfoOut.duration.epoch = v22;
    CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
    v23 = CMSampleBufferGetFormatDescription(a1);
    v24 = xpc_dictionary_create(0, 0, 0);
    if (v24)
    {
      v4 = v24;
      if ((_VCStreamInputUtil_EncodePixelBuffer(v24, "VCStreamInputPixelBuffer", ImageBuffer) & 1) == 0)
      {
        VCStreamInputUtil_EncodeSampleBuffer_cold_17();
        goto LABEL_44;
      }

      presentationTimeStamp = timingInfoOut.presentationTimeStamp;
      if ((_VCStreamInputUtil_AddTime(v4, "VCStreamInputPresentationTime", &presentationTimeStamp) & 1) == 0)
      {
        VCStreamInputUtil_EncodeSampleBuffer_cold_18();
        goto LABEL_44;
      }

      if ((_VCStreamInputUtil_AddFormatDescription(v4, v23) & 1) == 0)
      {
        VCStreamInputUtil_EncodeSampleBuffer_cold_19();
        goto LABEL_44;
      }

      if (!_VCStreamInputUtil_EncodeSampleBufferAttachments(a1, v4))
      {
        VCStreamInputUtil_EncodeSampleBuffer_cold_20();
        goto LABEL_44;
      }

      return v4;
    }

    VCStreamInputUtil_EncodeSampleBuffer_cold_21();
    return presentationTimeStamp.value;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_14();
    return timingInfoOut.duration.value;
  }

  v4 = v7;
  timingInfoOut.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&timingInfoOut.presentationTimeStamp.timescale = v8;
  *&timingInfoOut.decodeTimeStamp.value = v8;
  *&timingInfoOut.duration.value = v8;
  *&timingInfoOut.duration.epoch = v8;
  CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
  TaggedBufferGroup = CMSampleBufferGetTaggedBufferGroup(a1);
  if (!TaggedBufferGroup)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_13();
    return presentationTimeStamp.value;
  }

  v10 = TaggedBufferGroup;
  if (CMTaggedBufferGroupGetCount(TaggedBufferGroup) != 2)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_1();
    return presentationTimeStamp.value;
  }

  if ((_VCStreamInputUtil_AddUint32Value(v4, "VCStreamInputTaggedBufferGroupBufferCount", 2) & 1) == 0)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_2();
    return presentationTimeStamp.value;
  }

  v11 = 0;
  v28[0] = "VCStreamInputTaggedBufferGroupPixelBuffer0";
  v28[1] = "VCStreamInputTaggedBufferGroupPixelBuffer1";
  v27[0] = "VCStreamInputTaggedBufferGroupTagCollection0";
  v27[1] = "VCStreamInputTaggedBufferGroupTagCollection1";
  v12 = *MEMORY[0x1E695E480];
  do
  {
    v13 = v27[v11];
    TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v10, v11);
    if (!TagCollectionAtIndex)
    {
      VCStreamInputUtil_EncodeSampleBuffer_cold_11();
LABEL_40:
      VCStreamInputUtil_EncodeSampleBuffer_cold_12();
      goto LABEL_44;
    }

    v15 = CMTagCollectionCopyAsDictionary(TagCollectionAtIndex, v12);
    if (!v15)
    {
      VCStreamInputUtil_EncodeSampleBuffer_cold_10();
      goto LABEL_40;
    }

    v16 = v15;
    v17 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v17)
    {
      VCStreamInputUtil_EncodeSampleBuffer_cold_9();
      goto LABEL_40;
    }

    v18 = v17;
    xpc_dictionary_set_value(v4, v13, v17);
    xpc_release(v18);
    CFRelease(v16);
    *&v30.category = 0x2766C6179;
    v30.value = v11;
    CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(v10, v30, 0);
    if (!CVPixelBufferForTag)
    {
      VCStreamInputUtil_EncodeSampleBuffer_cold_8();
      return presentationTimeStamp.value;
    }

    if ((_VCStreamInputUtil_EncodePixelBuffer(v4, v28[v11], CVPixelBufferForTag) & 1) == 0)
    {
      VCStreamInputUtil_EncodeSampleBuffer_cold_3();
      goto LABEL_44;
    }

    ++v11;
  }

  while (v11 != 2);
  presentationTimeStamp = timingInfoOut.presentationTimeStamp;
  if ((_VCStreamInputUtil_AddTime(v4, "VCStreamInputPresentationTime", &presentationTimeStamp) & 1) == 0)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_4();
    goto LABEL_44;
  }

  presentationTimeStamp = timingInfoOut.duration;
  if ((_VCStreamInputUtil_AddTime(v4, "VCStreamInputFrameDuration", &presentationTimeStamp) & 1) == 0)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_5();
    goto LABEL_44;
  }

  v20 = CMSampleBufferGetFormatDescription(a1);
  if (!v20)
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_7();
    return presentationTimeStamp.value;
  }

  if (_VCStreamInputUtil_AddFormatDescription(v4, v20))
  {
    if (_VCStreamInputUtil_EncodeSampleBufferAttachments(a1, v4))
    {
      return v4;
    }
  }

  else
  {
    VCStreamInputUtil_EncodeSampleBuffer_cold_6();
  }

LABEL_44:
  xpc_release(v4);
  return 0;
}

CMTimeValue _VCStreamInputUtil_EncodeDataSampleBuffer(opaqueCMSampleBuffer *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  if (!DataBuffer)
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_10();
    return v19.value;
  }

  v3 = DataBuffer;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (!DataLength)
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_9();
    return v19.value;
  }

  v5 = DataLength;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E1288880](*MEMORY[0x1E695E480], DataLength, 1884262375, 0);
  if (!v7)
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_8();
    return v19.value;
  }

  v8 = v7;
  if (CMBlockBufferCopyDataBytes(v3, 0, v5, v7))
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_1();
    return v19.value;
  }

  v9 = CFDataCreateWithBytesNoCopy(v6, v8, v5, v6);
  if (!v9)
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_7();
    return v19.value;
  }

  v10 = v9;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (FormatDescription)
  {
    v12 = FormatDescription;
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      value = v13;
      memset(&v20, 170, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, a1);
      v19 = v20;
      if (_VCStreamInputUtil_AddTime(value, "VCStreamInputPresentationTime", &v19))
      {
        if (_VCStreamInputUtil_AddFormatDescription(value, v12))
        {
          v15 = _CFXPCCreateXPCObjectFromCFObject();
          if (v15)
          {
            v16 = v15;
            xpc_dictionary_set_value(value, "VCStreamInputBufferData", v15);
            v17 = !_VCStreamInputUtil_EncodeSampleBufferAttachments(a1, value);
            CFRelease(v10);
            xpc_release(v16);
            if (!v17)
            {
              return value;
            }

            goto LABEL_12;
          }

          _VCStreamInputUtil_EncodeDataSampleBuffer_cold_4();
        }

        else
        {
          _VCStreamInputUtil_EncodeDataSampleBuffer_cold_3();
        }
      }

      else
      {
        _VCStreamInputUtil_EncodeDataSampleBuffer_cold_2();
      }
    }

    else
    {
      _VCStreamInputUtil_EncodeDataSampleBuffer_cold_5();
    }
  }

  else
  {
    _VCStreamInputUtil_EncodeDataSampleBuffer_cold_6();
  }

  value = v19.value;
  CFRelease(v10);
LABEL_12:
  if (value)
  {
    xpc_release(value);
    return 0;
  }

  return value;
}

CMAudioFormatDescriptionRef VCStreamInputUtil_DecodeFormatDescription(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = -1431655766;
  if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputMediaType", &v9) & 1) == 0)
  {
    VCStreamInputUtil_DecodeFormatDescription_cold_1();
    return v20[0];
  }

  result = 0;
  if (v9 > 1952606065)
  {
    if (v9 == 1952606066)
    {
      LODWORD(buffer.mSampleRate) = -1431655766;
      v20[0] = 0;
      if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputMediaSubtype", &buffer) & 1) == 0)
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_2();
        return v20[0];
      }

      if (xpc_dictionary_get_value(a1, "VCStreamInputFormatExtensions"))
      {
        v8 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v8)
        {
          VCStreamInputUtil_DecodeFormatDescription_cold_3();
          return v20[0];
        }
      }

      else
      {
        v8 = 0;
      }

      if (CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x74626772u, 0x74626772u, v8, v20))
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_4();
        if (!v8)
        {
          return v20[0];
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (v9 != 1986618469)
      {
        return result;
      }

      LODWORD(buffer.mSampleRate) = -1431655766;
      *buf = -1431655766;
      LODWORD(formatDescriptionOut) = -1431655766;
      v20[0] = 0;
      if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputMediaSubtype", &formatDescriptionOut) & 1) == 0)
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_10();
        return v20[0];
      }

      if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputPixelBufferWidth", &buffer) & 1) == 0)
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_11();
        return v20[0];
      }

      if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputPixelBufferHeight", buf) & 1) == 0)
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_12();
        return v20[0];
      }

      if (xpc_dictionary_get_value(a1, "VCStreamInputFormatExtensions"))
      {
        v8 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v8)
        {
          VCStreamInputUtil_DecodeFormatDescription_cold_13();
          return v20[0];
        }
      }

      else
      {
        v8 = 0;
      }

      if (CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], formatDescriptionOut, SLODWORD(buffer.mSampleRate), *buf, v8, v20))
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_14();
        if (!v8)
        {
          return v20[0];
        }

        goto LABEL_39;
      }
    }

LABEL_38:
    if (!v8)
    {
      return v20[0];
    }

LABEL_39:
    CFRelease(v8);
    return v20[0];
  }

  if (v9 == 1835365473)
  {
    LODWORD(buffer.mSampleRate) = -1431655766;
    v20[0] = 0;
    if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputMediaSubtype", &buffer) & 1) == 0)
    {
      VCStreamInputUtil_DecodeFormatDescription_cold_7();
      return v20[0];
    }

    if (xpc_dictionary_get_value(a1, "VCStreamInputFormatExtensions"))
    {
      v8 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v8)
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_8();
        return v20[0];
      }
    }

    else
    {
      v8 = 0;
    }

    if (CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x6D657461u, LODWORD(buffer.mSampleRate), v8, v20))
    {
      VCStreamInputUtil_DecodeFormatDescription_cold_9();
      if (!v8)
      {
        return v20[0];
      }

      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v9 == 1936684398)
  {
    formatDescriptionOut = 0;
    value = xpc_dictionary_get_value(a1, "VCStreamInputFormatASBD");
    if (value)
    {
      buffer.mSampleRate = NAN;
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buffer.mFormatID = v4;
      *&buffer.mBytesPerFrame = v4;
      if (xpc_data_get_bytes(value, &buffer, 0, 0x28uLL) == 40)
      {
        if (CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], &buffer, 0, 0, 0, 0, 0, &formatDescriptionOut))
        {
          VCStreamInputUtil_DecodeFormatDescription_cold_6();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          *v20 = 0u;
          v21 = 0u;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v5 = VRTraceErrorLogLevelToCSTR();
            v6 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v7 = FormatToCStr(&buffer, v20, 0x40uLL);
              *buf = 136315906;
              v13 = v5;
              v14 = 2080;
              v15 = "_VCStreamInputUtil_DecodeAudioFormat";
              v16 = 1024;
              v17 = 498;
              v18 = 2080;
              v19 = v7;
              _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Decoded audio format=%s", buf, 0x26u);
            }
          }
        }
      }

      else
      {
        VCStreamInputUtil_DecodeFormatDescription_cold_5();
      }
    }

    return formatDescriptionOut;
  }

  return result;
}

uint64_t _VCStreamInputUtil_ReadUint32Value(void *a1, const char *a2, void *a3)
{
  if (xpc_dictionary_get_value(a1, a2))
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if (v4)
    {
      v5 = v4;
      CFNumberGetValue(v4, kCFNumberSInt32Type, a3);
      CFRelease(v5);
      return 1;
    }

    else
    {
      _VCStreamInputUtil_ReadUint32Value_cold_1();
      return v7;
    }
  }

  else
  {
    _VCStreamInputUtil_ReadUint32Value_cold_2();
    return v8;
  }
}

CMSampleBufferRef VCStreamInputUtil_DecodeSampleBuffer(void *a1)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v31 = 0;
  if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputMediaType", &v31) & 1) == 0)
  {
    VCStreamInputUtil_DecodeSampleBuffer_cold_1();
    return sbufPTS.duration.value;
  }

  if (v31 > 1952606065)
  {
    if (v31 == 1952807028)
    {
      return _VCStreamInputUtil_DecodeDataSampleBuffer(a1, 1);
    }

    if (v31 != 1952606066)
    {
      if (v31 != 1986618469)
      {
        goto LABEL_12;
      }

      sbufDuration.value = 0;
      v13 = _VCStreamInputUtil_DecodePixelBuffer(a1, "VCStreamInputPixelBuffer");
      if (v13)
      {
        v14 = VCStreamInputUtil_DecodeFormatDescription(a1);
        if (v14)
        {
          v15 = v14;
          sbufPTS.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
          *&v16 = 0xAAAAAAAAAAAAAAAALL;
          *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&sbufPTS.presentationTimeStamp.timescale = v16;
          *&sbufPTS.decodeTimeStamp.value = v16;
          *&sbufPTS.duration.value = v16;
          *&sbufPTS.duration.epoch = v16;
          memset(&v33, 170, sizeof(v33));
          if (_VCStreamInputUtil_DecodeTime(a1, "VCStreamInputPresentationTime", &v33))
          {
            sbufPTS.presentationTimeStamp = v33;
            if (!CMSampleBufferCreateForImageBuffer(*MEMORY[0x1E695E480], v13, 1u, 0, 0, v15, &sbufPTS, &sbufDuration))
            {
              value = _VCStreamInputUtil_DecodeSampleBufferAttachments(a1);
              if (value)
              {
                CMSetAttachments(sbufDuration.value, value, 1u);
              }

              goto LABEL_41;
            }

            VCStreamInputUtil_DecodeSampleBuffer_cold_16();
          }

          else
          {
            VCStreamInputUtil_DecodeSampleBuffer_cold_15();
          }

          value = v32.value;
LABEL_41:
          CVPixelBufferRelease(v13);
          CFRelease(v15);
          if (value)
          {
            CFRelease(value);
          }

          return sbufDuration.value;
        }

        VCStreamInputUtil_DecodeSampleBuffer_cold_17();
      }

      else
      {
        VCStreamInputUtil_DecodeSampleBuffer_cold_18();
      }

      CVPixelBufferRelease(v13);
      return sbufDuration.value;
    }

    sBufOut = 0;
    v4 = VCStreamInputUtil_DecodeFormatDescription(a1);
    if (!v4)
    {
      VCStreamInputUtil_DecodeSampleBuffer_cold_12();
      return sBufOut;
    }

    v33 = **&MEMORY[0x1E6960CC0];
    v32 = v33;
    formatDescription = v4;
    if (_VCStreamInputUtil_DecodeTime(a1, "VCStreamInputPresentationTime", &v33))
    {
      if (_VCStreamInputUtil_DecodeTime(a1, "VCStreamInputFrameDuration", &v32))
      {
        memset(capacity, 0, sizeof(capacity));
        if (_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputTaggedBufferGroupBufferCount", capacity))
        {
          v5 = *MEMORY[0x1E695E480];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity[0], MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v7 = Mutable;
            v8 = CFArrayCreateMutable(v5, capacity[0], MEMORY[0x1E695E9C0]);
            if (!v8)
            {
              VCStreamInputUtil_DecodeSampleBuffer_cold_8();
              goto LABEL_27;
            }

            v9 = v8;
            sbufDuration.value = "VCStreamInputTaggedBufferGroupPixelBuffer0";
            *&sbufDuration.timescale = "VCStreamInputTaggedBufferGroupPixelBuffer1";
            v39[0] = "VCStreamInputTaggedBufferGroupTagCollection0";
            v39[1] = "VCStreamInputTaggedBufferGroupTagCollection1";
            if (!capacity[0])
            {
LABEL_24:
              if (MEMORY[0x1E1289840](v5, v7, v9, &capacity[1]))
              {
                VCStreamInputUtil_DecodeSampleBuffer_cold_7();
              }

LABEL_26:
              CFRelease(v9);
LABEL_27:
              CFRelease(v7);
              v10 = *&capacity[1];
              if (*&capacity[1])
              {
                sbufPTS.duration = v33;
                sbufDuration = v32;
                if (CMSampleBufferCreateForTaggedBufferGroup(v5, *&capacity[1], &sbufPTS.duration, &sbufDuration, formatDescription, &sBufOut))
                {
                  VCStreamInputUtil_DecodeSampleBuffer_cold_9();
                  v11 = sbufPTS.duration.value;
                }

                else
                {
                  v11 = _VCStreamInputUtil_DecodeSampleBufferAttachments(a1);
                  if (v11)
                  {
                    CMSetAttachments(sBufOut, v11, 1u);
                  }
                }

                CFRelease(v10);
                CFRelease(formatDescription);
                if (!v11)
                {
                  return sBufOut;
                }

                v12 = v11;
                goto LABEL_33;
              }

              goto LABEL_77;
            }

            v18 = 0;
            while (1)
            {
              v19 = v39[v18];
              newCollectionOut = 0;
              if (xpc_dictionary_get_value(a1, v19))
              {
                v20 = _CFXPCCreateCFObjectFromXPCObject();
                if (!v20)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v21 = VRTraceErrorLogLevelToCSTR();
                    v22 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(sbufPTS.duration.value) = 136315650;
                      *(&sbufPTS.duration.value + 4) = v21;
                      LOWORD(sbufPTS.duration.flags) = 2080;
                      *(&sbufPTS.duration.flags + 2) = "_VCStreamInputUtil_DecodeTagCollectionForTaggedBufferGroup";
                      HIWORD(sbufPTS.duration.epoch) = 1024;
                      LODWORD(sbufPTS.presentationTimeStamp.value) = 577;
                      _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to read extensions", &sbufPTS, 0x1Cu);
                    }
                  }

                  goto LABEL_54;
                }
              }

              else
              {
                v20 = 0;
              }

              v23 = CMTagCollectionCreateFromDictionary(v20, v5, &newCollectionOut);
              if (v23)
              {
                v27 = v23;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v28 = VRTraceErrorLogLevelToCSTR();
                  v29 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(sbufPTS.duration.value) = 136315906;
                    *(&sbufPTS.duration.value + 4) = v28;
                    LOWORD(sbufPTS.duration.flags) = 2080;
                    *(&sbufPTS.duration.flags + 2) = "_VCStreamInputUtil_DecodeTagCollectionForTaggedBufferGroup";
                    HIWORD(sbufPTS.duration.epoch) = 1024;
                    LODWORD(sbufPTS.presentationTimeStamp.value) = 581;
                    WORD2(sbufPTS.presentationTimeStamp.value) = 1024;
                    *(&sbufPTS.presentationTimeStamp.value + 6) = v27;
                    _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create format description. status=%d", &sbufPTS, 0x22u);
                  }
                }
              }

              if (v20)
              {
                CFRelease(v20);
              }

LABEL_54:
              v24 = newCollectionOut;
              if (!newCollectionOut)
              {
                VCStreamInputUtil_DecodeSampleBuffer_cold_6();
                goto LABEL_26;
              }

              CFArrayAppendValue(v7, newCollectionOut);
              CFRelease(v24);
              v25 = _VCStreamInputUtil_DecodePixelBuffer(a1, *(&sbufDuration.value + v18));
              if (!v25)
              {
                VCStreamInputUtil_DecodeSampleBuffer_cold_5();
                goto LABEL_26;
              }

              v26 = v25;
              CFArrayAppendValue(v9, v25);
              CVPixelBufferRelease(v26);
              if (++v18 >= capacity[0])
              {
                goto LABEL_24;
              }
            }
          }

          VCStreamInputUtil_DecodeSampleBuffer_cold_10();
        }

        else
        {
          VCStreamInputUtil_DecodeSampleBuffer_cold_4();
        }

LABEL_77:
        VCStreamInputUtil_DecodeSampleBuffer_cold_11();
        goto LABEL_78;
      }

      VCStreamInputUtil_DecodeSampleBuffer_cold_3();
    }

    else
    {
      VCStreamInputUtil_DecodeSampleBuffer_cold_2();
    }

LABEL_78:
    v12 = formatDescription;
LABEL_33:
    CFRelease(v12);
    return sBufOut;
  }

  if (v31 == 1835365473)
  {
    return _VCStreamInputUtil_DecodeDataSampleBuffer(a1, 1);
  }

  if (v31 != 1936684398)
  {
LABEL_12:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCStreamInputUtil_DecodeSampleBuffer_cold_19(v3);
      }
    }

    return 0;
  }

  LODWORD(v33.value) = -1431655766;
  if ((_VCStreamInputUtil_ReadUint32Value(a1, "VCStreamInputFormatSampleCount", &v33) & 1) == 0)
  {
    VCStreamInputUtil_DecodeSampleBuffer_cold_13();
    return sbufPTS.duration.value;
  }

  result = _VCStreamInputUtil_DecodeDataSampleBuffer(a1, LODWORD(v33.value));
  if (!result)
  {
    VCStreamInputUtil_DecodeSampleBuffer_cold_14();
    return sbufPTS.duration.value;
  }

  return result;
}