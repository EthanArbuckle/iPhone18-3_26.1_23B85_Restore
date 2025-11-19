void OUTLINED_FUNCTION_8_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

uint64_t VCAudioIO_PushAudioSamples(id *a1, unint64_t *a2, uint64_t a3)
{
  result = memcmp(&_VCAudioIO_EmptyContext, a1 + 9, 0x30uLL);
  if (result && (*(a1 + 8) != 1 || *a1))
  {
    ++*(a1 + 17);
    SampleCount = VCAudioBufferList_GetSampleCount(a1[2]);
    if ((*(a1 + 65) & 1) != 0 || (a1[1] & 1) != 0 || (*(a1 + 9) & 1) != 0 || (v8 = a3, SampleCount))
    {
      v8 = a1[2];
    }

    HostTime = VCAudioBufferList_GetHostTime(a3);
    Timestamp = VCAudioBufferList_GetTimestamp(a3);
    VCAudioBufferList_GetSampleCount(a3);
    v11 = _VCAudioIO_ComputeTimestampForControllerTime(a1, a2, HostTime);
    VCAudioBufferList_SetTime(a3, v11, HostTime);
    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      VCAudioBufferList_ResampleAppend(a3, v8, v11, *(*a1 + 11));
    }

    else if (v8 != a3)
    {
      VCAudioBufferList_Append(v8, a3, 0);
    }

    v12 = VCAudioBufferList_GetSampleCount(v8);
    v13 = *(a1 + 3);
    if (v12 >= v13)
    {
      v14 = v12;
      if (v12 > v13)
      {
        VCAudioBufferList_SetSampleCount(v8, v13);
      }

      VCAudioBufferList_GetTimestamp(v8);
      kdebug_trace();
      v15 = a1[14];
      if (v15)
      {
        VCAudioInjector_InjectSamples(v15, v8, *(a1 + 65), 0);
      }

      v16 = a1[13];
      if (v16)
      {
        VCAudioMachineLearningCoordinator_PushAudioSamples(v16, a1[12], v8);
      }

      if (*(a1 + 65) == 1)
      {
        VCAudioBufferList_ZeroMemory(v8);
      }

      v17 = a1[10];
      if (v17)
      {
        v17(a1[11], v8);
      }

      else
      {
        [a1[9] pushAudioSamples:v8];
      }

      if (v14 > *(a1 + 3))
      {
        VCAudioBufferList_SetSampleCount(v8, v14);
      }

      if (v8 != a3)
      {
        VCAudioBufferList_Shift(v8, *(a1 + 3));
      }
    }

    return VCAudioBufferList_SetTime(a3, Timestamp, HostTime);
  }

  return result;
}

uint64_t _VCAudioIO_ComputeTimestampForControllerTime(uint64_t a1, unint64_t *a2, double a3)
{
  SampleFormat = VCAudioBufferList_GetSampleFormat(*(a1 + 16));
  v7 = (*SampleFormat * a2[1]) / *a2;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 40) == 1)
    {
      *(a1 + 60) = *(a1 + 56) - v7 + (*SampleFormat * (a3 - *(a1 + 48)));
    }

    *(a1 + 64) = 0;
  }

  result = (*(a1 + 60) + v7);
  *(a1 + 48) = a3;
  *(a1 + 40) = 1;
  *(a1 + 56) = result;
  return result;
}

void VCAudioIO_PullAudioSamples(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (memcmp(&_VCAudioIO_EmptyContext, (a1 + 72), 0x30uLL) && (*(a1 + 8) != 1 || *a1))
  {
    ++*(a1 + 68);
    HostTime = VCAudioBufferList_GetHostTime(a3);
    Timestamp = VCAudioBufferList_GetTimestamp(a3);
    v8 = _VCAudioIO_ComputeTimestampForControllerTime(a1, a2, HostTime);
    if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0 && !VCAudioBufferList_GetSampleCount(*(a1 + 16)))
    {
      VCAudioBufferList_SetTime(a3, v8, HostTime);
      kdebug_trace();
      v28 = *(a1 + 112);
      if (v28)
      {
        VCAudioInjector_InjectSamples(v28, a3, *(a1 + 65), 0);
      }

      v29 = *(a1 + 80);
      if (v29)
      {
        v29(*(a1 + 88), a3);
      }

      else
      {
        [*(a1 + 72) pullAudioSamples:a3];
      }

      v39 = *(a1 + 104);
      if (v39)
      {
        VCAudioMachineLearningCoordinator_PushAudioSamples(v39, *(a1 + 96), a3);
      }

      if (*(a1 + 65) == 1)
      {
        VCAudioBufferList_ZeroMemory(a3);
      }

      goto LABEL_49;
    }

    v9 = *(a1 + 16);
    SampleCount = VCAudioBufferList_GetSampleCount(a3);
    v11 = *VCAudioBufferList_GetSampleFormat(v9) * SampleCount;
    v44 = (v11 / *VCAudioBufferList_GetSampleFormat(a3));
    if (VCAudioBufferList_GetSampleCount(v9) < v44)
    {
      v12 = *(a1 + 16);
      v13 = VCAudioBufferList_GetSampleCount(v12);
      v14 = v13 + v8;
      v15 = v12;
      if (v13)
      {
        v15 = *(a1 + 24);
      }

      VCAudioBufferList_SetSampleCount(v15, *(a1 + 12));
      VCAudioBufferList_SetTime(v15, v14, HostTime);
      VCAudioBufferList_InvalidateNetworkTimestamp(v15);
      kdebug_trace();
      v16 = *(a1 + 112);
      if (v16)
      {
        VCAudioInjector_InjectSamples(v16, v15, *(a1 + 65), 0);
      }

      v17 = *(a1 + 80);
      if (v17)
      {
        v17(*(a1 + 88), v15);
      }

      else
      {
        [*(a1 + 72) pullAudioSamples:v15];
      }

      v18 = *(a1 + 104);
      if (v18)
      {
        VCAudioMachineLearningCoordinator_PushAudioSamples(v18, *(a1 + 96), v15);
      }

      if (*(a1 + 65) == 1)
      {
        VCAudioBufferList_ZeroMemory(v15);
      }

      if (v15 != v12)
      {
        VCAudioBufferList_Append(v12, v15, 0);
      }
    }

    if (*(a1 + 8) != 1)
    {
      VCAudioBufferList_ReplaceSamples(a3, v9, 0);
LABEL_48:
      VCAudioBufferList_Shift(v9, v44);
LABEL_49:
      VCAudioBufferList_SetTime(a3, Timestamp, HostTime);
      return;
    }

    v19 = *(a1 + 16);
    SampleFormat = VCAudioBufferList_GetSampleFormat(v19);
    SampleCapacity = VCAudioBufferList_GetSampleCapacity(a3);
    v22 = *(VCAudioBufferList_GetSampleFormat(a3) + 16);
    v41 = v9;
    v42 = a3;
    v43 = Timestamp;
    if (VCAudioBufferList_GetChannelCount(v19) == 1 && VCAudioBufferList_GetChannelCount(a3) >= 2)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = VCAudioBufferList_GetSampleFormat(v23);
        v25 = memcmp(SampleFormat, v24, 0x28uLL) != 0;
        v23 = *(a1 + 32);
      }

      else
      {
        v25 = 1;
      }

      AudioBufferList = VCAudioBufferList_GetAudioBufferList(v23);
      v30 = VCAudioBufferList_GetAudioBufferList(v19);
      if (!v25)
      {
LABEL_47:
        VCAudioBufferList_MonoToMultiChannel(a3, v19);
        Timestamp = v43;
        goto LABEL_48;
      }

      v27 = v30;
      v40 = 1;
    }

    else
    {
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(a3);
      v27 = VCAudioBufferList_GetAudioBufferList(v19);
      v40 = 0;
    }

    if (*v27)
    {
      v31 = 0;
      v32 = v22 * SampleCapacity;
      v33 = (AudioBufferList + 16);
      v34 = 4;
      do
      {
        v45 = v32;
        v35 = SoundDec_Decode(*a1, *&v27[v34], SampleFormat[4] * v44, *v33, v32, &v45, 0);
        if (v35 < 0)
        {
          v36 = v35;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v37 = VRTraceErrorLogLevelToCSTR();
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v47 = v37;
              v48 = 2080;
              v49 = "_VCAudioIO_ConvertSourceSamples";
              v50 = 1024;
              v51 = 195;
              v52 = 1024;
              v53 = v36;
              _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to convert buffer. result=%08x", buf, 0x22u);
            }
          }
        }

        *(v33 - 1) = v45;
        ++v31;
        v33 += 2;
        v34 += 4;
      }

      while (v31 < *v27);
    }

    v9 = v41;
    a3 = v42;
    Timestamp = v43;
    if (!v40)
    {
      goto LABEL_48;
    }

    v19 = *(a1 + 32);
    goto LABEL_47;
  }

  VCAudioBufferList_ZeroMemory(a3);
}

void sub_1DB8BE848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_19(void *a1, const char *a2)
{

  return [a1 dictionaryWithObjects:v2 forKeys:v3 count:1];
}

uint64_t VCRateControlStatisticsProc(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = unk_1DBD49D90;
    v12 = xmmword_1DBD49DA0;
    memset(v13, 170, 24);
    v8 = unk_1DBD49D50;
    v9 = xmmword_1DBD49D60;
    memset(v10, 170, sizeof(v10));
    v7[0] = xmmword_1DBD49D00;
    memset(&v7[1], 170, 64);
    if (*(a1 + 16))
    {
      do
      {
        while (_VCStatisticsCollectorQueue_Dequeue(a1, v7))
        {
          v2 = *(a1 + 60040);
          if (v2)
          {
            v3 = *(v2 + 16);
            v24 = v12;
            v25 = v13[0];
            v26 = *&v13[1];
            v20 = v9;
            v21 = v10[0];
            v22 = v10[1];
            v23 = v11;
            v16 = v7[2];
            v17 = v7[3];
            v18 = v7[4];
            v19 = v8;
            v14 = v7[0];
            v15 = v7[1];
            v3(v2, &v14);
          }
        }

        pthread_mutex_lock((a1 + 60048));
        v4 = (a1 + 60048);
        if (*(a1 + 16))
        {
          if ((*(a1 + 17) & 1) != 0 || *(a1 + 60321) == 1)
          {
            v4 = (a1 + 60048);
            if (*(a1 + 60024) == *(a1 + 60028))
            {
              pthread_cond_wait((a1 + 60160), (a1 + 60048));
              v4 = (a1 + 60048);
            }
          }

          else
          {
            pthread_mutex_unlock((a1 + 60048));
            v5 = 1000000 * *(a1 + 60324);
            v14.tv_sec = 0;
            v14.tv_nsec = v5;
            pthread_mutex_lock((a1 + 60208));
            pthread_cond_timedwait_relative_np((a1 + 60272), (a1 + 60208), &v14);
            v4 = (a1 + 60208);
          }
        }

        pthread_mutex_unlock(v4);
      }

      while ((*(a1 + 16) & 1) != 0);
    }
  }

  return 0;
}

uint64_t VCStatisticsCollectorQueue_AddStatisticsMessage(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v51 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v58 = v50;
        v59 = 2080;
        v60 = "VCStatisticsCollectorQueue_AddStatisticsMessage";
        v61 = 1024;
        v62 = 133;
        v63 = 2048;
        v64 = a1;
        v65 = 2048;
        v66[0] = a2;
        _os_log_error_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. Collector=%p message=%p", buf, 0x30u);
      }
    }

    return 0;
  }

  v4 = a1 + 57344;
  pthread_mutex_lock((a1 + 60048));
  v5 = *(a1 + 60028);
  if (*(a1 + 60024) != (v5 + 1) % *(a1 + 60032))
  {
LABEL_33:
    v37 = a1 + 200 * v5;
    *(v37 + 24) = *a2;
    v38 = *(a2 + 16);
    v39 = *(a2 + 32);
    v40 = *(a2 + 48);
    *(v37 + 88) = *(a2 + 64);
    *(v37 + 72) = v40;
    *(v37 + 56) = v39;
    *(v37 + 40) = v38;
    v41 = *(a2 + 80);
    v42 = *(a2 + 96);
    v43 = *(a2 + 112);
    *(v37 + 152) = *(a2 + 128);
    *(v37 + 136) = v43;
    *(v37 + 120) = v42;
    *(v37 + 104) = v41;
    v44 = *(a2 + 144);
    v45 = *(a2 + 160);
    v46 = *(a2 + 176);
    *(v37 + 216) = *(a2 + 192);
    *(v37 + 200) = v46;
    *(v37 + 184) = v45;
    *(v37 + 168) = v44;
    v47 = *(a1 + 60032);
    v48 = (*(a1 + 60028) + 1) % v47;
    *(a1 + 60028) = v48;
    if ((*(a1 + 17) & 1) != 0 || *(a1 + 60321) == 1)
    {
      pthread_cond_signal((a1 + 60160));
    }

    else if (*a2 == 9 || *(a1 + 60036) < (v47 & ((v48 - *(a1 + 60024)) >> 31)) + v48 - *(a1 + 60024))
    {
      pthread_mutex_lock((a1 + 60208));
      pthread_cond_signal((a1 + 60272));
      pthread_mutex_unlock((a1 + 60208));
    }

    v49 = 1;
    goto LABEL_50;
  }

  v6 = 0;
  v7 = a1 + 24;
  while (1)
  {
    if (*(a1 + 17) == 1)
    {
      pthread_cond_wait((a1 + 60112), (a1 + 60048));
      goto LABEL_32;
    }

    v8 = *(a1 + 60328);
    *(a1 + 60328) = v8 + 1;
    HIDWORD(v9) = -1030792151 * v8;
    LODWORD(v9) = -1030792151 * v8;
    if ((v9 >> 1) <= 0x51EB851 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 60028) - *(a1 + 60024);
        if (v12 < 0)
        {
          v12 += *(a1 + 60032);
        }

        v13 = *(a1 + 60328);
        *buf = 136316418;
        v58 = v10;
        v59 = 2080;
        v60 = "_VCStatisticsCollectorQueue_Enqueue";
        v61 = 1024;
        v62 = 210;
        v63 = 2048;
        v64 = a1;
        v65 = 1024;
        LODWORD(v66[0]) = v12;
        WORD2(v66[0]) = 1024;
        *(v66 + 6) = v13;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Message queue [%p] full with queueSize=%d, queueFullCount=%u, statistic message ignored!", buf, 0x32u);
      }
    }

    if (v6)
    {
      break;
    }

    if (*(a2 + 4) != 1)
    {
      goto LABEL_49;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 60028) - *(a1 + 60024);
        if (v16 < 0)
        {
          v16 += *(a1 + 60032);
        }

        v17 = *(a1 + 60328);
        *buf = 136316418;
        v58 = v14;
        v59 = 2080;
        v60 = "_VCStatisticsCollectorQueue_ShouldFlushOldMessages";
        v61 = 1024;
        v62 = 189;
        v63 = 2048;
        v64 = a1;
        v65 = 1024;
        LODWORD(v66[0]) = v16;
        WORD2(v66[0]) = 1024;
        *(v66 + 6) = v17;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Message queue [%p] with queueSize=%d, queueFullCount=%u should be flushed", buf, 0x32u);
      }
    }

    v18 = *(a1 + 60024);
    v19 = *(a1 + 60028);
    if (v18 != v19)
    {
      v20 = *(v4 + 2680);
      do
      {
        v21 = v7 + 200 * v20;
        if (*(v21 + 4) == 1)
        {
          v22 = v7 + 200 * v18;
          *v22 = *v21;
          v23 = *(v21 + 16);
          v24 = *(v21 + 32);
          v25 = *(v21 + 64);
          *(v22 + 48) = *(v21 + 48);
          *(v22 + 64) = v25;
          *(v22 + 16) = v23;
          *(v22 + 32) = v24;
          v26 = *(v21 + 80);
          v27 = *(v21 + 96);
          v28 = *(v21 + 128);
          *(v22 + 112) = *(v21 + 112);
          *(v22 + 128) = v28;
          *(v22 + 80) = v26;
          *(v22 + 96) = v27;
          v29 = *(v21 + 144);
          v30 = *(v21 + 160);
          v31 = *(v21 + 176);
          *(v22 + 192) = *(v21 + 192);
          *(v22 + 160) = v30;
          *(v22 + 176) = v31;
          *(v22 + 144) = v29;
          v32 = *(a1 + 60032);
          v18 = (v18 + 1) % v32;
          v19 = *(a1 + 60028);
        }

        else
        {
          v32 = *(a1 + 60032);
        }

        v20 = (v20 + 1) % v32;
      }

      while (v20 != v19);
    }

    *(a1 + 60028) = v18;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 60028) - *(a1 + 60024);
        if (v35 < 0)
        {
          v35 += *(a1 + 60032);
        }

        v36 = *(a1 + 60328);
        *buf = 136316418;
        v58 = v33;
        v59 = 2080;
        v60 = "_VCStatisticsCollectorQueue_ShouldFlushOldMessages";
        v61 = 1024;
        v62 = 191;
        v63 = 2048;
        v64 = a1;
        v65 = 1024;
        LODWORD(v66[0]) = v35;
        WORD2(v66[0]) = 1024;
        *(v66 + 6) = v36;
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Message queue [%p] with queueSize=%d, queueFullCount=%u after low priority messages flushed", buf, 0x32u);
      }
    }

    v6 = 1;
LABEL_32:
    v5 = *(a1 + 60028);
    if (*(a1 + 60024) != (v5 + 1) % *(a1 + 60032))
    {
      goto LABEL_33;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v52 = VRTraceErrorLogLevelToCSTR();
    v53 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 60028) - *(a1 + 60024);
      if (v54 < 0)
      {
        v54 += *(a1 + 60032);
      }

      v55 = *(a1 + 60328);
      *buf = 136316418;
      v58 = v52;
      v59 = 2080;
      v60 = "_VCStatisticsCollectorQueue_ShouldFlushOldMessages";
      v61 = 1024;
      v62 = 183;
      v63 = 2048;
      v64 = a1;
      v65 = 1024;
      LODWORD(v66[0]) = v54;
      WORD2(v66[0]) = 1024;
      *(v66 + 6) = v55;
      _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Message queue [%p] is still full with queueSize=%d, queueFullCount=%u after flushing the low priority messages. High priroity statistic message will be ignored!", buf, 0x32u);
    }
  }

LABEL_49:
  v49 = 0;
LABEL_50:
  pthread_mutex_unlock((a1 + 60048));
  return v49;
}

void VCStatisticsCollectorQueue_DrainAndProcessAllStatistics(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1 + 57344;
    if (*(a1 + 60320))
    {
      v9 = unk_1DBD49D90;
      v10 = xmmword_1DBD49DA0;
      memset(v11, 170, 24);
      v6 = unk_1DBD49D50;
      v7 = xmmword_1DBD49D60;
      memset(v8, 170, sizeof(v8));
      v5[0] = xmmword_1DBD49D00;
      memset(&v5[1], 170, 64);
      while (_VCStatisticsCollectorQueue_Dequeue(a1, v5))
      {
        v3 = *(v2 + 2696);
        if (v3)
        {
          v4 = *(v3 + 16);
          v12[10] = v10;
          v12[11] = v11[0];
          v13 = *&v11[1];
          v12[6] = v7;
          v12[7] = v8[0];
          v12[8] = v8[1];
          v12[9] = v9;
          v12[2] = v5[2];
          v12[3] = v5[3];
          v12[4] = v5[4];
          v12[5] = v6;
          v12[0] = v5[0];
          v12[1] = v5[1];
          v4(v3, v12);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCStatisticsCollectorQueue_DrainAndProcessAllStatistics_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollectorQueue_DrainAndProcessAllStatistics_cold_2();
    }
  }
}

BOOL _VCStatisticsCollectorQueue_Dequeue(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v18 = 136316162;
      v19 = v5;
      v20 = 2080;
      v21 = "_VCStatisticsCollectorQueue_Dequeue";
      v22 = 1024;
      v23 = 250;
      v24 = 2048;
      v25 = a1;
      v26 = 2048;
      v27 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. queue=%p message=%p", &v18, 0x30u);
    }

    return 0;
  }

  pthread_mutex_lock((a1 + 60048));
  v4 = *(a1 + 60024);
  if (v4 == *(a1 + 60028))
  {
    pthread_mutex_unlock((a1 + 60048));
    return 0;
  }

  v8 = a1 + 200 * v4;
  *a2 = *(v8 + 24);
  v9 = *(v8 + 40);
  v10 = *(v8 + 56);
  v11 = *(v8 + 88);
  *(a2 + 48) = *(v8 + 72);
  *(a2 + 64) = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  v12 = *(v8 + 104);
  v13 = *(v8 + 120);
  v14 = *(v8 + 152);
  *(a2 + 112) = *(v8 + 136);
  *(a2 + 128) = v14;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  v15 = *(v8 + 168);
  v16 = *(v8 + 184);
  v17 = *(v8 + 200);
  *(a2 + 192) = *(v8 + 216);
  *(a2 + 160) = v16;
  *(a2 + 176) = v17;
  *(a2 + 144) = v15;
  *(a1 + 60024) = (*(a1 + 60024) + 1) % *(a1 + 60032);
  if (*(a1 + 17) == 1)
  {
    pthread_cond_signal((a1 + 60112));
  }

  pthread_mutex_unlock((a1 + 60048));
  return 1;
}

void VCStatisticsCollectorQueue_FlushAllStatistics(uint64_t a1)
{
  v2[25] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v2[18] = unk_1DBD49D90;
    *&v2[20] = xmmword_1DBD49DA0;
    memset(&v2[22], 170, 24);
    *&v2[10] = unk_1DBD49D50;
    *&v2[12] = xmmword_1DBD49D60;
    memset(&v2[14], 170, 32);
    *v2 = xmmword_1DBD49D00;
    memset(&v2[2], 170, 64);
      ;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollectorQueue_FlushAllStatistics_cold_1();
    }
  }
}

uint64_t VCTimescalePSOLA_Accelerate(unsigned __int8 *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a2 + 66);
        v27 = 136315906;
        v28 = v4;
        v29 = 2080;
        v30 = "VCTimescalePSOLA_Accelerate";
        v31 = 1024;
        v32 = 113;
        v33 = 1024;
        v34 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Accelerate buffer  inputBufferLength=%d", &v27, 0x22u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      VCTimescalePSOLA_Accelerate_cold_1(v4, a2, v5);
    }
  }

  *(a1 + 29) = 0;
  if (a1[92])
  {
    v8 = VCTimescalePSOLA_CalcFsMult(*(a1 + 1));
    v9 = (80 * v8);
    v10 = VCTimescalePSOLA_CheckforSignalCorrelation(a1, a2, v9, 0);
    if (v10 < 0)
    {
      VCTimescalePSOLA_Accelerate_cold_2(v10, &v27);
      return v27;
    }

    VCTimescalePSOLA_SynchronizeChannelCorrelation(a1, a2, 0, v8);
    if (*(a1 + 19) <= *(a1 + 27) && *(a1 + 11))
    {
      LOWORD(v11) = *(a1 + 3);
      LOWORD(v12) = *(a1 + 2);
      goto LABEL_17;
    }

    v11 = *(a1 + 3);
    v12 = *(a1 + 2);
    if (v11 > v12)
    {
LABEL_17:
      if (v11 > v12 && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 3);
          v19 = *(a1 + 2);
          v27 = 136316162;
          v28 = v16;
          v29 = 2080;
          v30 = "_VCTimescalePSOLA_CheckQualityAndAccelerate";
          v31 = 1024;
          v32 = 75;
          v33 = 1024;
          v34 = v18;
          v35 = 1024;
          v36 = v19;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d REJECTED accelerate (bestIndex %d > psolaMax %d)", &v27, 0x28u);
        }
      }

      *(a2 + 68) = *(a2 + 66);
      if (*a1)
      {
        v20 = 0;
        do
        {
          memmove(*(a2 + 8 * v20 + 32), *(a2 + 8 * v20), 4 * *(a2 + 66));
          ++v20;
        }

        while (v20 < *a1);
      }

      return 61;
    }

    if (*a1)
    {
      v21 = 0;
      v22 = 1.0 / (v11 + 1);
      do
      {
        v23 = a2 + 8 * v21;
        v24 = v9 - *(a1 + 3);
        v25 = (*v23 + 4 * v24);
        v26 = (*v23 + 4 * v9);
        memmove(*(v23 + 32), *v23, 4 * (v9 - *(a1 + 3)));
        VCTimescalePSOLA_MixVoiceUnvoiceFloatPoint((*(v23 + 32) + 4 * v24), v25, v26, *(a1 + 3), 1.0 - v22, v22);
        memmove((*(v23 + 32) + 4 * v9), (*v23 + 4 * (*(a1 + 3) + v9)), 4 * (*(a2 + 66) - (*(a1 + 3) + v9)));
        ++v21;
      }

      while (v21 < *a1);
      LOWORD(v11) = *(a1 + 3);
    }

    result = 0;
    if (v11 >= *(a2 + 66))
    {
      LOWORD(v11) = *(a2 + 66);
    }

    *(a1 + 3) = v11;
    *(a2 + 68) = *(a2 + 66) - v11;
    *(a1 + 19) += *(a1 + 3);
  }

  else
  {
    *(a2 + 68) = *(a2 + 66);
    if (*a1)
    {
      v13 = 0;
      v14 = (a2 + 32);
      do
      {
        memmove(*v14, *(v14 - 4), 4 * *(a2 + 66));
        ++v13;
        ++v14;
      }

      while (v13 < *a1);
    }

    return 0;
  }

  return result;
}

uint64_t VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (!a3)
  {
    VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_3(buf);
    return *buf;
  }

  v6 = RTPGetFramingOverhead(a1, &v18);
  if (v6 < 0)
  {
    VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_2(a1, v6, buf);
    return *buf;
  }

  v7 = v18;
  v8 = SRTPGetFramingOverhead(a1, &v17);
  if (v8 < 0)
  {
    VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle_cold_1(a1, v8, buf);
    return *buf;
  }

  v9 = v17 + v7;
  VCMediaControlInfoGeneratorGetSerializedSizeWithConfig(a2, &v16);
  *a3 = v9 + v16;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 0;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  v11 = *MEMORY[0x1E6986650];
  v12 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v14 = *a3;
      *buf = 136316674;
      v20 = v10;
      v21 = 2080;
      v22 = "VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle";
      v23 = 1024;
      v24 = 37;
      v25 = 2048;
      v26 = v14;
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = v17;
      v31 = 2048;
      v32 = v16;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d framingOverhead=%lu rtpFramingOverhead=%lu srtpFramingOverhead=%lu mediaControlInfoOverhead=%lu", buf, 0x44u);
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v15 = *a3;
      *buf = 136316674;
      v20 = v10;
      v21 = 2080;
      v22 = "VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle";
      v23 = 1024;
      v24 = 37;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = v17;
      v31 = 2048;
      v32 = v16;
      _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d framingOverhead=%lu rtpFramingOverhead=%lu srtpFramingOverhead=%lu mediaControlInfoOverhead=%lu", buf, 0x44u);
      return 0;
    }
  }

  return result;
}

uint64_t VCAudioCaptionsBufferInfo_GetBuffer(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t VCAudioCaptionsBufferInfoCollection_GetBufferInfo(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v2 = *(a1 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VCAudioCaptionsBufferInfoCollection_GetBufferInfo_block_invoke;
  v5[3] = &unk_1E85F6D88;
  v5[5] = &v6;
  v5[6] = a2;
  v5[4] = a1;
  dispatch_sync(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t VCAudioCaptionsBufferInfoCollection_AddBufferInfo(uint64_t a1, uint64_t *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [[VCAudioCaptionsBufferInfo alloc] initWithStreamConfig:a2 bufferLength:*(a1 + 16)];
  if (v6)
  {
    v7 = v6;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = *(a1 + 24);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __VCAudioCaptionsBufferInfoCollection_AddBufferInfo_block_invoke;
    v13[3] = &unk_1E85F3E08;
    v13[5] = v7;
    v13[6] = &v14;
    v13[4] = a1;
    dispatch_sync(v8, v13);
    if (a3 && (v15[3] & 1) != 0)
    {
      *a3 = v7;
    }

    v9 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioCaptionsBufferInfoCollection_AddBufferInfo_cold_1(v10, a2, v11);
      }
    }

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t VCAudioCaptionsBufferInfoCollection_CopyOrderedBufferInfos(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__19;
  v9 = __Block_byref_object_dispose__19;
  v10 = 0;
  v1 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VCAudioCaptionsBufferInfoCollection_CopyOrderedBufferInfos_block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = a1;
  block[5] = &v5;
  dispatch_sync(v1, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t VCAudioCaptionsBufferInfoCollection_PushAudioSamples(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SampleCount = VCAudioBufferList_GetSampleCount(a3);
  v6 = *(a2 + 48);
  v7 = VCAudioBufferList_GetSampleCount(v6);
  SampleCapacity = VCAudioBufferList_GetSampleCapacity(v6);
  if (SampleCount > SampleCapacity - v7)
  {
    VCAudioBufferList_Shift(v6, SampleCount - (SampleCapacity - v7));
  }

  VCAudioBufferList_Append(v6, a3, 0);
  Priority = VCAudioBufferList_GetPriority(a3);
  result = VCAudioBufferList_GetSampleCount(a3);
  *(a2 + 56) = Priority;
  if (Priority < 0)
  {
    v12 = 0;
  }

  else
  {
    v11 = result;
    result = [a2 countOfLowPrioritySamples];
    v12 = result + v11;
  }

  *(a2 + 60) = v12;
  return result;
}

uint64_t VCPixelTransferSession_TransferPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!pixelBuffer)
  {
    VCPixelTransferSession_TransferPixelBuffer_cold_4();
    return v9;
  }

  if (!a3)
  {
    VCPixelTransferSession_TransferPixelBuffer_cold_3();
    return v9;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (!Width || !Height)
  {
    VCPixelTransferSession_TransferPixelBuffer_cold_2(Width, Height);
    return v9;
  }

  result = VTPixelTransferSessionTransferImage(*(a1 + 8), pixelBuffer, a3);
  if (result)
  {
    VCPixelTransferSession_TransferPixelBuffer_cold_1(result, &v9);
    return v9;
  }

  return result;
}

uint64_t VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, CFTypeRef propertyValue)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_4();
    return v8;
  }

  if (!a2)
  {
    VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_3();
    return v8;
  }

  if (!a3)
  {
    VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_2();
    return v8;
  }

  VTSessionSetProperty(*(a1 + 8), *MEMORY[0x1E6983DD0], propertyValue);
  result = VTPixelTransferSessionTransferImage(*(a1 + 8), a2, a3);
  if (result)
  {
    VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer_cold_1(result, &v8);
    return v8;
  }

  return result;
}

void _VCCaptionsStream_DidReceiveSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCCaptionsStream_DidReceiveSampleBuffer_cold_3();
    return;
  }

  VCVideoStream_DidReceiveSampleBuffer(a1, a2, a3);
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  v10[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(DataBuffer, 0, 0, 0, v10);
  if (!v10[0])
  {
    goto LABEL_10;
  }

  if (DataPointer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCCaptionsStream_DidReceiveSampleBuffer_cold_1(v9);
      }
    }

    goto LABEL_10;
  }

  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v10[0] length:DataLength];
  if (!v8)
  {
LABEL_10:
    _VCCaptionsStream_DidReceiveSampleBuffer_cold_2();
    return;
  }

  VCCaptionsReceiver_ProcessCaptionsData(*(a1 + 1272), v8);
}

uint64_t VCAudioEventQueue_Dequeue(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a1 == a1[1])
    {
      return 0;
    }

    else
    {
      *a2 = a1[4 * *a1 + 2];
      *(a2 + 8) = *&a1[4 * *a1 + 4];
      a1[4 * *a1 + 2] = 0;
      *&a1[4 * *a1 + 4] = 0;
      v3 = *a1 + 1;
      __dmb(0xBu);
      *a1 = v3 % 100;
      return 1;
    }
  }

  return v2;
}

void sub_1DB8C73A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AVCStreamInput_ComputeStats(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, __int128 *a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  ++*a5;
  if (a3 != 1835365473)
  {
    return;
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AVCStreamInput_ComputeStats_cold_1();
      }
    }

    return;
  }

  if ((*(a5 + 16) & 1) == 0)
  {
LABEL_9:
    v12 = *a4;
    *(a5 + 20) = *(a4 + 2);
    *(a5 + 4) = v12;
    return;
  }

  time1 = *(a5 + 4);
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2))
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a2);
    memset(&time1, 170, sizeof(time1));
    time2 = *a4;
    v16 = *(a5 + 4);
    CMTimeSubtract(&time1, &time2, &v16);
    v10 = time1.value / time1.timescale;
    v11 = CMBlockBufferGetDataLength(DataBuffer) * 8.0 / v10;
    VCUtil_ExponentialMovingAverage((a5 + 28), v11, 10.0);
    goto LABEL_9;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      time1 = *a4;
      Seconds = CMTimeGetSeconds(&time1);
      LODWORD(time1.value) = 136316418;
      *(&time1.value + 4) = v13;
      LOWORD(time1.flags) = 2080;
      *(&time1.flags + 2) = "_AVCStreamInput_ComputeStats";
      HIWORD(time1.epoch) = 1024;
      v19 = 478;
      v20 = 2048;
      v21 = a1;
      v22 = 2080;
      v23 = a1 + 128;
      v24 = 2048;
      v25 = Seconds;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d streamInput=%p AVCStreamInputID=%s Buffer timestamp did not increase. time=%f", &time1, 0x3Au);
    }
  }
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return objc_opt_class();
}

AudioComponent VCAudioToolboxAudioComponentMock_FindNext(OpaqueAudioComponent *a1, const AudioComponentDescription *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([+[VCAudioToolboxAudioComponentMock findNextComponent:"findNextComponent:description:outComponent:"]
  {
    return v5[0];
  }

  else
  {
    return AudioComponentFindNext(a1, a2);
  }
}

uint64_t VCAudioToolboxAudioComponentMock_InstanceNew(OpaqueAudioComponent *a1, AudioComponentInstance *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ([+[VCAudioToolboxAudioComponentMock instanceNew:"instanceNew:outInstance:outStatus:"]
  {
    return v5;
  }

  else
  {
    return AudioComponentInstanceNew(a1, a2);
  }
}

uint64_t VCAudioToolboxAudioComponentMock_InstanceDispose(OpaqueAudioComponentInstance *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ([+[VCAudioToolboxAudioComponentMock instanceDispose:"instanceDispose:outStatus:"]
  {
    return v3;
  }

  else
  {
    return AudioComponentInstanceDispose(a1);
  }
}

uint64_t VCAudioToolboxAudioComponentMock_GetVersion(OpaqueAudioComponent *a1, UInt32 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ([+[VCAudioToolboxAudioComponentMock getVersion:"getVersion:outVersion:outStatus:"]
  {
    return v5;
  }

  else
  {
    return AudioComponentGetVersion(a1, a2);
  }
}

uint64_t VCAudioToolboxAudioComponentMock_CopyName(OpaqueAudioComponent *a1, CFStringRef *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ([+[VCAudioToolboxAudioComponentMock copyName:"copyName:outName:outStatus:"]
  {
    return v5;
  }

  else
  {
    return AudioComponentCopyName(a1, a2);
  }
}

void VCVideoStreamRateAdaptationFeedbackOnly_SetDidReceiveVideo(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 176) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoStreamRateAdaptationFeedbackOnly_SetDidReceiveVideo_cold_1();
    }
  }
}

uint64_t VCScreenCaptureManager_SharedInstance()
{
  if (VCScreenCaptureManager_SharedInstance_onceToken != -1)
  {
    VCScreenCaptureManager_SharedInstance_cold_1();
  }

  if (!VCScreenCaptureManager_SharedInstance__vcScreenCaptureManager)
  {
    VCScreenCaptureManager_SharedInstance_cold_2();
  }

  return VCScreenCaptureManager_SharedInstance__vcScreenCaptureManager;
}

void VCScreenCaptureManager_ScreenShareDidClearScreen(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = VCScreenCaptureManager_SharedInstance();
  v5 = *(v4 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __VCScreenCaptureManager_ScreenShareDidClearScreen_block_invoke;
  v6[3] = &unk_1E85F4180;
  v6[4] = v4;
  v6[5] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

uint64_t VCVideoParamaterSets_DefaultSupportedSets(int a1)
{
  if (a1 == 100)
  {
    v1 = 14;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 123)
  {
    v1 = 1;
  }

  if (a1 == 126)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t VCVideoParameterSets_DefaultSupportedSetsForPayloadAndPixelFormat(int a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || (v3 = 1, a2 != 1751411059) && a2 != 2016686640)
  {
    if (a1 == 100)
    {
      v4 = 14;
    }

    else
    {
      v4 = 0;
    }

    if (a1 == 123)
    {
      v4 = 1;
    }

    if (a1 == 126)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return v3;
}

void VCStreamInput_UpdateReportingStats(uint64_t a1, CMSampleBufferRef sbuf)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v8, 170, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, sbuf);
  *(a1 + 220) = v8;
  atomic_fetch_add((a1 + 268), 1u);
  v7 = v8;
  v3 = micro();
  time = v7;
  v4 = v3 - CMTimeGetSeconds(&time);
  v5 = v4 - *(a1 + 280);
  *(a1 + 280) = v4;
  v6 = -v5;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  *(a1 + 272) = *(a1 + 272) + (v6 - *(a1 + 272)) * 0.0625;
  if ((*(a1 + 256) & 1) == 0)
  {
    *(a1 + 244) = v8;
  }
}

uint64_t VCStreamInput_Identifier(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (a1)
  {
    CFNumberGetValue(*(a1 + 184), kCFNumberLongType, &valuePtr);
    return valuePtr;
  }

  else
  {
    VCStreamInput_Identifier_cold_1(v3);
    return v3[0];
  }
}

uint64_t VCAudioIOControllerClient_ControllerFormat(uint64_t a1)
{
  if (a1)
  {
    return a1 + 64;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioIOControllerClient_ControllerFormat_cold_1(v2, v3);
    }
  }

  return 0;
}

__n128 VCAudioHALPluginTimestamp::read@<Q0>(VCAudioHALPluginTimestamp *this@<X0>, __n128 *a2@<X8>)
{
  v2 = atomic_load(&this->timestampIndex.__a_.__a_value);
  v3 = &this->timestamps.__begin_[v2];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

__n128 VCAudioHALPluginTimestamp::write(VCAudioHALPluginTimestamp *this, tagVCAudioHALPluginTimestampInfo *a2)
{
  v2 = atomic_load(&this->timestampIndex.__a_.__a_value);
  v3 = (v2 + 1) % this->numberOfSlots;
  result = *&a2->sampleTime;
  v5 = &this->timestamps.__begin_[v3];
  v5[1].n128_u64[0] = a2->seed;
  *v5 = result;
  atomic_store(v3, &this->timestampIndex.__a_.__a_value);
  return result;
}

double VCAudioHALPluginTimestamp::reset(VCAudioHALPluginTimestamp *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<tagVCAudioHALPluginTimestampInfo>::vector[abi:ne200100](&v4, this->numberOfSlots);
  begin = this->timestamps.__begin_;
  if (begin)
  {
    this->timestamps.__end_ = begin;
    operator delete(begin);
  }

  result = *&v4;
  *&this->timestamps.__begin_ = v4;
  this->timestamps.__cap_ = v5;
  atomic_store(0, &this->timestampIndex.__a_.__a_value);
  return result;
}

void *std::vector<tagVCAudioHALPluginTimestampInfo>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<tagVCAudioHALPluginTimestampInfo>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DB8DA8F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<tagVCAudioHALPluginTimestampInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<tagVCAudioHALPluginTimestampInfo>>(a1, a2);
  }

  std::vector<tagVCAudioHALPluginTimestampInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<tagVCAudioHALPluginTimestampInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E85F3728, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1DB8DE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8DEE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8DF080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8E100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8E11AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8E2A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCAllocatorFirstCome_Create(const __CFAllocator *a1, uint64_t a2, CFAllocatorRef *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (!a3)
  {
    VCAllocatorFirstCome_Create_cold_3(&v13);
LABEL_11:
    v9 = v13;
    _VCAllocatorFirstCome_FinalizeInfo(0);
    _VCAllocatorMultiQueue_ReleaseInfo(&v12);
    return v9;
  }

  v11 = *byte_1F570D898;
  v5 = MEMORY[0x1E1288880](a1, 144, 0x10E0040481BE746, 0);
  if (!v5)
  {
    VCAllocatorFirstCome_Create_cold_2(&v13);
    goto LABEL_11;
  }

  v6 = v5;
  v13 = 0uLL;
  *(v5 + 32) = 0uLL;
  *(v5 + 24) = 1;
  *(v5 + 12) = 0;
  *(v5 + 16) = 0;
  *(v5 + 20) = 0;
  if (a1)
  {
    Default = a1;
  }

  else
  {
    Default = CFAllocatorGetDefault();
  }

  *v6 = CFRetain(Default);
  v6[2] = 0;
  *(v6 + 15) = 0;
  *(v6 + 118) = 0;
  __strlcpy_chk();
  v11.info = v6;
  v8 = CFAllocatorCreate(a1, &v11);
  if (v8)
  {
    v9 = 0;
    *a3 = v8;
  }

  else
  {
    VCAllocatorFirstCome_Create_cold_1(&v13);
    return v13;
  }

  return v9;
}

void _VCAllocatorFirstComeCallback_Release(uint64_t a1)
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = a1;
  if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    _VCAllocatorFirstCome_FinalizeInfo(a1);
    _VCAllocatorMultiQueue_ReleaseInfo(v1);
  }
}

void *_VCAllocatorFirstComeCallback_Alloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v28 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit((a3 + 20), &v5, a1, memory_order_relaxed, memory_order_relaxed);
  if (*(a3 + 20) >= a1)
  {
    v8 = OSAtomicDequeue((a3 + 32), 0);
    if (v8)
    {
      goto LABEL_15;
    }

    v8 = MEMORY[0x1E1288880](*a3, *(a3 + 20), 1867496932, 0);
    add_explicit = atomic_fetch_add_explicit((a3 + 12), 1u, memory_order_relaxed);
    if (add_explicit >= 2000)
    {
      HIDWORD(v10) = 652835029 * *(a3 + 12) + 17179868;
      LODWORD(v10) = HIDWORD(v10);
      if ((v10 >> 2) <= 0x83126E && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a3 + 20);
          v18 = 136316418;
          v19 = v11;
          v20 = 2080;
          v21 = "_VCAllocatorFirstComeCallback_PrintAllocationWarning";
          v22 = 1024;
          v23 = 138;
          v24 = 2080;
          *v25 = a3 + 48;
          *&v25[8] = 1024;
          *&v25[10] = v13;
          v26 = 1024;
          v27 = add_explicit + 1;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d High allocation count for allocator name=%s. New allocation size=%d count=%d", &v18, 0x32u);
        }
      }

      if ((*(a3 + 128) & 1) == 0)
      {
        *(a3 + 128) = 1;
        VCUtil_GenerateDiagnostics(0, 0, "Terminating due to high allocation count", 1u);
      }
    }

    if (v8)
    {
LABEL_15:
      v14 = (atomic_fetch_add_explicit((a3 + 16), 1u, memory_order_relaxed) + 1);
      v15 = *(a3 + 120);
      if (v15 > v14)
      {
        v14 = v14 * 0.0196078431 + v15 * 0.980392157;
      }

      *(a3 + 120) = v14;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a3 + 20);
        v18 = 136316162;
        v19 = v6;
        v20 = 2080;
        v21 = "_VCAllocatorFirstComeCallback_Alloc";
        v22 = 1024;
        v23 = 147;
        v24 = 1024;
        *v25 = v17;
        *&v25[4] = 2048;
        *&v25[6] = a1;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d First come allocator callback received allocation size request that does not match expectations. bufferSize=%d, size=%zu", &v18, 0x2Cu);
      }
    }

    return 0;
  }

  return v8;
}

void *_VCAllocatorFirstComeCallback_Realloc(void *result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 20) <= a2)
  {
    _VCAllocatorFirstComeCallback_Dealloc(result, a4);
    return 0;
  }

  return result;
}

void _VCAllocatorFirstComeCallback_Dealloc(void *__new, uint64_t a2)
{
  atomic_fetch_add_explicit((a2 + 16), 0xFFFFFFFF, memory_order_relaxed);
  if (*(a2 + 118) == 1 && (v2 = ceil(*(a2 + 120)), v2 + v2 < *(a2 + 12)))
  {
    atomic_fetch_add_explicit((a2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    CFAllocatorDeallocate(*a2, __new);
  }

  else
  {
    OSAtomicEnqueue((a2 + 32), __new, 0);
  }
}

void _VCAllocatorFirstCome_FinalizeInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = OSAtomicDequeue((a1 + 32), 0);
    if (v2)
    {
      v3 = v2;
      do
      {
        CFAllocatorDeallocate(*a1, v3);
        v3 = OSAtomicDequeue((a1 + 32), 0);
      }

      while (v3);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = 0;
  }
}

BOOL OUTLINED_FUNCTION_3_31()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void _VCRateControlAlgorithmLayeredContinuousTierML_Configure(uint64_t a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = VCRateControlAlgorithmLayeredContinuousTierPriv_Configure(a1, a2, a3);
  *(a1 + 5244) = *(a2 + 1020);
  *(a1 + 5240) = *(a2 + 1016);
  *(a1 + 25776) = *(a1 + 1120);
  *(a1 + 25828) = *(a1 + 5248);
  *(a1 + 25832) = *(a1 + 5252);
  *(a1 + 25820) = vcRateControlTierBitrates[*(a2 + 20)];
  LODWORD(v5) = *(a1 + 1120);
  *(a1 + 25896) = *&v5;
  *(a1 + 25892) = 0;
  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configured Machine Learning Rate Control Algorithm with mode=%d", v6, v7, v8, v9, v10, v11, *(a1 + 5240));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 5240);
      *buf = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "_VCRateControlAlgorithmLayeredContinuousTierML_Configure";
      v19 = 1024;
      v20 = 90;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Initialized Machine Learning Rate Control Algorithm with new mode=%d", buf, 0x22u);
    }
  }
}

BOOL _VCRateControlAlgorithmLayeredContinuousTierML_DoRateControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 25872);
  if (v10 == 0.0)
  {
    *(a1 + 25836) = 0;
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = *(a2 + 8);
    v10 = v11 - v10;
    *&v10 = v10;
    *(a1 + 25836) = LODWORD(v10);
  }

  v12 = 0;
  *(a1 + 25872) = v11;
  v13 = *a2;
  if (*a2 > 10)
  {
    if (v13 == 11)
    {
      v12 = VCRateControlAlgorithmStabilizedNOWRDPriv_DoRateControlWithNWStatistics(a1, a2);
      goto LABEL_63;
    }

    if (v13 == 14)
    {
      *&v11 = *(a2 + 40);
      *(a1 + 25808) = LODWORD(v11);
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate(a1, a2, v11, v10))
      {
        *(a1 + 25780) = *(a1 + 1128);
        if (*(a1 + 5240) <= 1u)
        {
          VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 14, a3, a4, a5, a6, a7, a8);
        }

        goto LABEL_62;
      }

LABEL_19:
      v12 = 0;
    }
  }

  else
  {
    if (v13 == 1)
    {
      *(a1 + 25816) = *(a2 + 36);
      v17 = *(a2 + 64);
      *(a1 + 25812) = v17;
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate(a1, a2, a3, a4, a5, a6, a7, a8))
      {
        *(a1 + 25780) = *(a1 + 1128);
        if (*(a1 + 5240) <= 1u)
        {
          VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 1, a3, a4, a5, a6, a7, a8);
        }

        VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPostStateTransitionUpdate(a1, a2);
        goto LABEL_62;
      }

      goto LABEL_19;
    }

    if (v13 == 2)
    {
      v14 = *(a2 + 80);
      *(a1 + 25796) = v14;
      *(a1 + 25784) = *(a2 + 32);
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates(a1, a2))
      {
        *(a1 + 25780) = *(a1 + 1128);
        v15 = *(a1 + 25864);
        if (v15 == 0.0)
        {
          *(a1 + 25840) = 0;
          *(a1 + 25864) = *(a1 + 1144);
          v16 = *(a1 + 1144);
          *(a1 + 25880) = v16;
        }

        else
        {
          v18 = *(a1 + 1144) - v15;
          *(a1 + 25840) = v18;
          *(a1 + 25864) = *(a1 + 1144);
          v16 = *(a1 + 25880);
        }

        v19 = *(a1 + 1144);
        v20 = v19 - v16;
        *(a1 + 25844) = v20;
        v21 = *(a1 + 2912);
        *(a1 + 25800) = v21;
        v22 = *(a1 + 2904);
        *(a1 + 25796) = v22;
        v23 = *(a1 + 5112);
        *(a1 + 25804) = v23;
        v24 = *(a1 + 5096);
        *(a1 + 25788) = v24;
        v25 = *(a1 + 5104);
        *(a1 + 25792) = v25;
        v26 = *(a1 + 5240);
        v27 = v26 - 1;
        if (v26 <= 1)
        {
          VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 2, a3, a4, a5, a6, a7, a8);
        }

        if (v27 <= 1)
        {
          *(a1 + 25824) = *(a1 + 5256);
          *(a1 + 25828) = *(a1 + 5248);
          *(a1 + 25832) = *(a1 + 5252);
          VCRateControlMachineLearningInference_Query(*(a1 + 25768), (a1 + 25776), a1 + 25848);
          v28 = *(a1 + 25852);
          if (vcRateControlTierBitrates[*(a1 + 60)] < v28)
          {
            v28 = vcRateControlTierBitrates[*(a1 + 60)];
          }

          if (v28 <= vcRateControlTierBitrates[*(a1 + 64)])
          {
            v28 = vcRateControlTierBitrates[*(a1 + 64)];
          }

          *(a1 + 5232) = v28;
        }

        if (*(a1 + 5240) == 2)
        {
          VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(a1, *(a1 + 5232));
          *(a1 + 5272) = *(a1 + 25848);
        }

        else
        {
          *(a1 + 5272) = 0;
        }

        *(a1 + 5280) = (*(a1 + 25852) / 10000.0);
        *(a1 + 5288) = *(a1 + 25856);
        *(a1 + 25776) = *(a1 + 1120);
        if ((*(a1 + 5260) & 1) == 0)
        {
          LODWORD(v19) = *(a1 + 1120);
          *&v29 = *&v19 * 0.108108108;
          v30 = *&v29 + *(a1 + 25896) * 0.891891892;
          *(a1 + 25896) = v30;
          LODWORD(v29) = *(a1 + 1120);
          v31 = vabdd_f64(v30, v29);
          *(a1 + 25912) = v31;
          if (v31 >= 20000.0)
          {
            *(a1 + 25892) = 0;
          }

          else if (++*(a1 + 25892) > 0x64u || *(a1 + 25872) - *(a1 + 5264) > 180.0)
          {
            *(a1 + 5260) = 1;
          }
        }

        VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPostStateTransitionUpdates(a1);
        if (VCRateControlAlgorithmBase_IsPeriodicLogOrLogDumpEnabled(a1))
        {
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v32 = *(a1 + 1144);
          v120 = 0u;
          v33 = *(a1 + 5320);
          v34 = *(a1 + 2904);
          v35 = *(a1 + 2912);
          v36 = *(a1 + 2920);
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v37 = (*(a1 + 5120) * 1000.0);
          v38 = *(a1 + 5040);
          v39 = *(a1 + 5104);
          v114 = 0u;
          v115 = 0u;
          v40 = *(a1 + 5352);
          v41 = *(a1 + 5336);
          v42 = ((v40 + v41) / 1000.0);
          v43 = (v40 / 1000.0);
          v44 = (v41 / 1000.0);
          v45 = *(a1 + 5360);
          v46 = *(a1 + 5344);
          v47 = ((v45 + v46) / 1000.0);
          v48 = v38 * 100.0;
          v49 = v39 * 100.0;
          v50 = *(a1 + 2928);
          v51 = *(a1 + 5152);
          *&__str[32] = 0u;
          v113 = 0u;
          if (v51)
          {
            v52 = 79;
          }

          else
          {
            v52 = 88;
          }

          v53 = *(a1 + 1216);
          v54 = *(a1 + 5032);
          v55 = *(a1 + 1220);
          v56 = *(a1 + 1128) / 0x3E8u;
          v57 = (v45 / 1000.0);
          v58 = (v46 / 1000.0);
          v59 = *(a1 + 1120);
          v60 = *(a1 + 1092);
          v61 = *(a1 + 1096);
          v62 = v59 / 0x3E8;
          v103 = *(a1 + 1132);
          v63 = *(a1 + 5392) / 0x3E8u;
          v102 = *(a1 + 5396);
          v101 = (*(a1 + 5400) * 1000.0);
          v99 = *(a1 + 5420);
          if (*(a1 + 5416))
          {
            v64 = "ON";
          }

          else
          {
            v64 = "OFF";
          }

          v100 = v64;
          v98 = *(a1 + 5424);
          v65 = *(a1 + 5322);
          memset(__str, 0, 32);
          if (v65)
          {
            v66 = "S";
          }

          else
          {
            v66 = "U";
          }

          v97 = v66;
          if (*(a1 + 1169))
          {
            v67 = "<";
          }

          else
          {
            v95 = (v45 / 1000.0);
            v96 = v56;
            v68 = v33;
            v69 = v37;
            v93 = (v46 / 1000.0);
            v94 = v53;
            v70 = v42;
            v91 = v63;
            v71 = v43;
            v72 = v44;
            v92 = v60;
            v73 = v52;
            v74 = v54;
            v75 = ((v45 + v46) / 1000.0);
            IsVideoStopped = VCRateControlMediaController_IsVideoStopped(*(a1 + 1064));
            v47 = v75;
            v54 = v74;
            v52 = v73;
            v62 = v59 / 0x3E8;
            v60 = v92;
            v44 = v72;
            v43 = v71;
            v63 = v91;
            v42 = v70;
            v58 = v93;
            v53 = v94;
            v37 = v69;
            v57 = v95;
            v33 = v68;
            v56 = v96;
            if (IsVideoStopped)
            {
              v67 = "_";
            }

            else
            {
              v67 = "-";
            }
          }

          snprintf(__str, 0x190uLL, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %05X %05X %u BB: %3u\t%4u\t%3u\t%s UAT %u\t%u\t%s\t%s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\t%.3f\t%u\t%u\t%u\t%.4f\t%.4f\t%.4f", v32, v33, v34, v35, v36, v50, v52, v37, v48, v49, v53, v54, v55, v56, v62, v42, v43, v44, v47, v57, v58, v60, v61, v103, v63, v102, v101, v100, v99, v98, v97, v67, *(a1 + 1088), *(a1 + 5020) / 0x3E8u, *(a1 + 5024), *(a1 + 5016), *(a1 + 5184), *(a1 + 5432), *(a1 + 5436) / 0x3E8u, *(a1 + 5440) / 0x3E8u, *(a1 + 25736), *(a1 + 25720) / 0x3E8, *(a1 + 25728), *(a1 + 5232) / 0x3E8, *(a1 + 25856), *(a1 + 25860), *(a1 + 25848));
          if (*(a1 + 5176) == 1)
          {
            v83 = *(a1 + 1136);
            *(a1 + 1136) = v83 + 1;
            if ((v83 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v84 = VRTraceErrorLogLevelToCSTR();
              v85 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v105 = v84;
                v106 = 2080;
                v107 = "_VCRateControlAlgorithmLayeredContinuousTierML_PrintRateControlInfoToLogDump";
                v108 = 1024;
                v109 = 355;
                v110 = 2080;
                v111 = __str;
                _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s", buf, 0x26u);
              }
            }
          }

          v86 = *(a1 + 5160);
          if (v86)
          {
            VRLogfilePrintWithTimestamp(v86, "%s\n", v77, v78, v79, v80, v81, v82, __str);
          }
        }

        VCRateControlAlgorithmLayeredContinuousTier_ResetRampingStatus(a1);
LABEL_62:
        v12 = 1;
        goto LABEL_63;
      }

      goto LABEL_19;
    }
  }

LABEL_63:
  if (*(a1 + 5244) == 1 && *(a1 + 5240) != *(a1 + 25888) && *(a1 + 5260) == 1)
  {
    *(a1 + 5296) = *(a1 + 1144) - *(a1 + 25880);
    *(a1 + 5304) = 0;
    *(a1 + 5308) = *(a1 + 5232);
    *(a1 + 1112) = *(a1 + 5232);
    *(a1 + 1088) = 2;
    *(a1 + 5240) = *(a1 + 25888);
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Machine Learning Rate Control Algorithm Disengaged with new mode=%d", a3, a4, a5, a6, a7, a8, *(a1 + 5240));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v87 = VRTraceErrorLogLevelToCSTR();
      v88 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v89 = *(a1 + 5240);
        *__str = 136315906;
        *&__str[4] = v87;
        *&__str[12] = 2080;
        *&__str[14] = "_VCRateControlAlgorithmLayeredContinuousTierML_CheckMLDisengagement";
        *&__str[22] = 1024;
        *&__str[24] = 201;
        *&__str[28] = 1024;
        *&__str[30] = v89;
        _os_log_impl(&dword_1DB56E000, v88, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Machine Learning Rate Control Algorithm Disengaged with new mode=%d", __str, 0x22u);
      }
    }
  }

  return v12;
}

uint64_t VCRemoteVideoManager_DefaultManager()
{
  if (VCRemoteVideoManager_DefaultManager_onceToken != -1)
  {
    VCRemoteVideoManager_DefaultManager_cold_1();
  }

  return _vcRemoteVideoManager;
}

void sub_1DB8F3018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken_block_invoke;
    block[3] = &unk_1E85F40E0;
    block[4] = a1;
    block[5] = a2;
    dispatch_async(v2, block);
  }

  else
  {
    VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken_cold_1();
  }
}

void _VCRemoteVideoManager_DispatchedDidReceiveFirstRemoteFrameForStreamToken(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCRemoteVideoManager_DispatchedDidReceiveFirstRemoteFrameForStreamToken";
      v14 = 1024;
      v15 = 275;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%ld]", buf, 0x26u);
    }
  }

  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
  [objc_msgSend(*(a1 + 16) objectForKeyedSubscript:{v6), "setHasReceivedFirstFrame:", 1}];
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___VCRemoteVideoManager_DispatchedDidReceiveFirstRemoteFrameForStreamToken_block_invoke;
  v8[3] = &unk_1E85F3778;
  v8[4] = v6;
  dispatch_async(v7, v8);
  if (v6)
  {
    CFRelease(v6);
  }
}

void VCRemoteVideoManager_RemoteScreenAttributesDidChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 24);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __VCRemoteVideoManager_RemoteScreenAttributesDidChange_block_invoke;
    v4[3] = &unk_1E85F50D8;
    v4[4] = a1;
    v4[5] = a2;
    v4[6] = a3;
    dispatch_async(v3, v4);
  }

  else
  {
    VCRemoteVideoManager_RemoteScreenAttributesDidChange_cold_1();
  }
}

void _VCRemoteVideoManager_DispatchedRemoteScreenAttributesDidChange(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v8 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = "_VCRemoteVideoManager_DispatchedRemoteScreenAttributesDidChange";
      v19 = 1024;
      v20 = 304;
      v21 = 2048;
      v22 = a3;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%ld] screenAttributes[%s]", buf, 0x30u);
    }
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
  [objc_msgSend(*(a1 + 16) objectForKeyedSubscript:{v9), "setRemoteScreenAttributes:", a2}];
  v10 = [a2 copyEncodedDictionary];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceRemoteScreenAttributes", 0}];
  v12 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___VCRemoteVideoManager_DispatchedRemoteScreenAttributesDidChange_block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v11;
  block[5] = v9;
  dispatch_async(v12, block);

  if (v9)
  {
    CFRelease(v9);
  }
}

void VCRemoteVideoManager_RemoteVideoAttributesDidChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 24);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __VCRemoteVideoManager_RemoteVideoAttributesDidChange_block_invoke;
    v4[3] = &unk_1E85F50D8;
    v4[4] = a1;
    v4[5] = a2;
    v4[6] = a3;
    dispatch_async(v3, v4);
  }

  else
  {
    VCRemoteVideoManager_RemoteVideoAttributesDidChange_cold_1();
  }
}

void _VCRemoteVideoManager_DispatchedRemoteVideoAttributesDidChange(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v8 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v17 = v6;
      v18 = 2080;
      v19 = "_VCRemoteVideoManager_DispatchedRemoteVideoAttributesDidChange";
      v20 = 1024;
      v21 = 338;
      v22 = 2048;
      v23 = a3;
      v24 = 2080;
      v25 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken[%ld] videoAttributes[%s]", buf, 0x30u);
    }
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
  [objc_msgSend(*(a1 + 16) objectForKeyedSubscript:{v9), "setRemoteVideoAttributes:", a2}];
  if ([*(a1 + 8) objectForKeyedSubscript:v9])
  {
    QueueForStreamToken = _VCRemoteVideoManager_GetQueueForStreamToken(a1, valuePtr, 0);
    VCImageQueue_remoteVideoAttributesChanged(QueueForStreamToken, a2);
  }

  v11 = [a2 copyEncodedDictionary];
  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"conferenceRemoteVideoAttributes", 0}];
  v13 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___VCRemoteVideoManager_DispatchedRemoteVideoAttributesDidChange_block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v12;
  block[5] = v9;
  dispatch_async(v13, block);

  if (v9)
  {
    CFRelease(v9);
  }
}

void VCRemoteVideoManager_DidDetectSensitiveContentWithAnalysis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __VCRemoteVideoManager_DidDetectSensitiveContentWithAnalysis_block_invoke;
  v4[3] = &unk_1E85F50D8;
  v4[5] = a3;
  v4[6] = a2;
  v4[4] = a1;
  dispatch_async(v3, v4);
}

void _VCRemoteVideoManager_DispatchedDidDetectSensitiveContentWithAnalysis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  valuePtr[0] = a2;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, valuePtr);
  [objc_msgSend(*(a1 + 16) objectForKeyedSubscript:{v5), "setSensitivityAnalysisData:", a3}];
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___VCRemoteVideoManager_DispatchedDidDetectSensitiveContentWithAnalysis_block_invoke;
  v7[3] = &unk_1E85F37F0;
  v7[4] = a3;
  v7[5] = v5;
  dispatch_async(v6, v7);
}

uint64_t _VCRemoteVideoManager_GetQueueForStreamToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a2)}];
  if (!v4)
  {
    return 0;
  }

  result = [v4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a3)}];
  if (!result)
  {
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_2_21()
{
  *v2 = 1;
  *v1 = 0;
  *v0 = -1;
}

void VCCellularAudioTap_ProcessAudioCallback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    VCAudioPowerSpectrumSource_ProcessAudioSamples(*(a1 + 16), a2);
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    v5 = *(a1 + 8);
    if (v5 == 1)
    {
      VCMediaRecorder_AddRemoteAudioSampleBuffer(*(a1 + 24), a2, Timestamp);
    }

    else if (!v5)
    {
      VCMediaRecorder_AddLocalAudioSampleBuffer(*(a1 + 24), a2, Timestamp);
    }

    *(a1 + 32) = VCAudioBufferList_GetAveragePower(a2);
  }
}

void networkProc(void *a1)
{
  if (a1)
  {

    [a1 processNetwork];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      networkProc_cold_1();
    }
  }
}

BOOL VCAudioStructs_StreamDescriptionIsEqual(void *__s1, const void *a2)
{
  result = 0;
  if (__s1)
  {
    if (a2)
    {
      return memcmp(__s1, a2, 0x28uLL) == 0;
    }
  }

  return result;
}

void VCAudioStructs_PrintFrameFormat(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = v6;
      v21 = 2080;
      v22 = "VCAudioStructs_PrintFrameFormat";
      v23 = 1024;
      v24 = 23;
      v25 = 2080;
      v26 = a1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s mSampleRate : mFormatID : mFormatFlags : mBytesPerPacket : mFramesPerPacket : mBytesPerFrame : mChannelsPerFrame : mBitsPerChannel : samplesPerFrame ", &v19, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      v11 = FourccToCStr(*(a2 + 2));
      v12 = *(a2 + 3);
      v13 = *(a2 + 4);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v17 = *(a2 + 8);
      v18 = *(a2 + 10);
      v19 = 136318210;
      v20 = v8;
      v21 = 2080;
      v22 = "VCAudioStructs_PrintFrameFormat";
      v23 = 1024;
      v24 = 34;
      v25 = 2080;
      v26 = a1;
      v27 = 2048;
      v28 = v10;
      v29 = 2080;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v14;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 1024;
      v42 = v17;
      v43 = 1024;
      v44 = v18;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %8.0f    : %7s   :  0x%08x  : %8u        : %9u        : %8u       : %9u         : %9u       : %9u       ", &v19, 0x64u);
    }
  }
}

uint64_t VCAudioStructs_ClientTimestampForControllerTime(unsigned int *a1, unsigned int a2, double a3)
{
  v3 = *(a1 + 4);
  if (v3 - a2 < 0x7FFFFFFF && v3 != a2)
  {
    v3 += 0xFFFFFFFFLL;
  }

  v5 = v3 & 0xFFFFFFFF00000000 | a2;
  *(a1 + 4) = v5;
  v6 = *a1;
  v7 = v5 * v6 / a1[1];
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 9) == 1)
    {
      a1[7] = a1[6] - v7 + ((a3 - *(a1 + 2)) * v6);
    }

    *(a1 + 8) = 0;
  }

  v8 = a1[7] + v7;
  *(a1 + 2) = a3;
  *(a1 + 9) = 1;
  a1[6] = v8;
  return v8;
}

uint64_t VCCryptor_GetCipherSuite(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  VCCryptor_GetCipherSuite_cold_1(&v2);
  return v2;
}

uint64_t VCCryptor_ComposeSFrameHeaderWithCounterAndMKI(_BYTE *a1, void *a2, void *a3, unint64_t a4)
{
  __src[2] = *MEMORY[0x1E69E9840];
  v4 = (71 - __clz(a4)) >> 3;
  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (!a1)
  {
    VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_4();
    return v11;
  }

  if (!a2)
  {
    VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_3();
    return v11;
  }

  if (*a2 < v5 + 9)
  {
    VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_2();
    return v11;
  }

  if (!a3)
  {
    VCCryptor_ComposeSFrameHeaderWithCounterAndMKI_cold_1();
    return v11;
  }

  v10 = bswap64(a4);
  memcpy(a1 + 9, &v10 - v5 + 8, v5);
  *a1 = (16 * v5 + 112) & 0x70 | 0xF;
  __src[0] = 0;
  __src[1] = 0;
  VCMediaKeyIndex_FullKeyBytes(a3, __src);
  memcpy(a1 + 1, __src, (*a1 & 7) + 1);
  result = 0;
  *a2 = v5 + 9;
  return result;
}

uint64_t VCCryptor_ParseSFrameHeader(unsigned __int8 *a1, unint64_t a2, uint64_t a3, void *a4, void *a5, unint64_t *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCCryptor_ParseSFrameHeader_cold_9();
    return v15;
  }

  if (!a2)
  {
    VCCryptor_ParseSFrameHeader_cold_8(&v15);
    return v15;
  }

  if (!a4)
  {
    VCCryptor_ParseSFrameHeader_cold_7();
    return v15;
  }

  if (!a5)
  {
    VCCryptor_ParseSFrameHeader_cold_6();
    return v15;
  }

  if (!a6)
  {
    VCCryptor_ParseSFrameHeader_cold_5();
    return v15;
  }

  v10 = *a1;
  if (v10 < 0)
  {
    VCCryptor_ParseSFrameHeader_cold_4();
    return v15;
  }

  if ((v10 & 8) == 0)
  {
    VCCryptor_ParseSFrameHeader_cold_3();
    return v15;
  }

  v11 = (*a1 & 7) + 1;
  v12 = v11 + (*a1 >> 4) + 2;
  if (a3 + v12 + 1 > a2)
  {
    VCCryptor_ParseSFrameHeader_cold_2();
    return v15;
  }

  v16[0] = 0;
  memcpy(&v16[1] - v11, a1 + 1, v11);
  MKIWithBytes = VCMediaKeyIndex_CreateMKIWithBytes(v16, 8);
  if (!MKIWithBytes)
  {
    VCCryptor_ParseSFrameHeader_cold_1();
    return v15;
  }

  *a4 = MKIWithBytes;
  v15 = 0;
  memcpy(&v15 - ((*a1 >> 4) & 7) + 7, &a1[(*a1 & 7) + 2], ((*a1 >> 4) & 7) + 1);
  result = 0;
  *a5 = bswap64(v15);
  *a6 = v12;
  return result;
}

uint64_t _VCCryptor_ValidateAuthenticationTag(uint64_t a1, char *a2, unint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  CipherSuite = VCCryptor_GetCipherSuite(a1);
  v7 = 4;
  if (CipherSuite == 1)
  {
    v7 = 10;
  }

  if (CipherSuite)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a3 <= v8)
  {
    _VCCryptor_ValidateAuthenticationTag_cold_1();
    return v10;
  }

  else
  {
    memset(macOut, 0, sizeof(macOut));
    CCHmac(2u, (a1 + 128), 0x20uLL, a2, a3 - v8, macOut);
    result = memcmp(&a2[a3 - v8], macOut, v8);
    if (result)
    {
      CCCryptorRelease(*(a1 + 8360));
      *(a1 + 8360) = 0;
      return 2151678022;
    }
  }

  return result;
}

uint64_t _VCCryptorClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCCryptor_Create(uint64_t a1, int a2, const void *a3, const void *a4, uint64_t a5, uint64_t *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    VCCryptor_Create_cold_6();
    return *buf;
  }

  if (!a4)
  {
    VCCryptor_Create_cold_5();
    return *buf;
  }

  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    VCCryptor_Create_cold_4();
    return *buf;
  }

  if (!a3)
  {
    VCCryptor_Create_cold_3();
    return *buf;
  }

  if (_MergedGlobals_9 != -1)
  {
    VCCryptor_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCCryptor_Create_cold_2();
    return *buf;
  }

  v12 = Instance;
  bzero((Instance + 16), 0x20A0uLL);
  *(v12 + 48) = a2;
  *(v12 + 40) = CFRetain(a3);
  *(v12 + 16) = CFRetain(a4);
  atomic_store(0, (v12 + 32));
  *(v12 + 160) = -1;
  *(v12 + 35) = 1;
  if (a5)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *(v12 + 35) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v12 + 35);
          *buf = 136316162;
          v20 = v13;
          v21 = 2080;
          v22 = "VCCryptor_Create";
          v23 = 1024;
          v24 = 550;
          v25 = 2048;
          v26 = v12;
          v27 = 1024;
          v28 = v16;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] isReplayProtectionEnabled=%d", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v12 + 35);
        *buf = 136316162;
        v20 = v13;
        v21 = 2080;
        v22 = "VCCryptor_Create";
        v23 = 1024;
        v24 = 550;
        v25 = 2048;
        v26 = v12;
        v27 = 1024;
        v28 = v18;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] isReplayProtectionEnabled=%d", buf, 0x2Cu);
      }
    }
  }

  result = 0;
  *a6 = v12;
  return result;
}

uint64_t VCCryptor_Encrypt(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  if (_VCCryptor_ValidateCryptographyInputParameters(a1, a2, a3, 1))
  {
    VCCryptor_Encrypt_cold_1();
LABEL_43:
    v16 = v23;
    goto LABEL_28;
  }

  if (_VCCryptor_EnsureCryptorIsReady(a1, 0, 0))
  {
    VCCryptor_Encrypt_cold_2();
    goto LABEL_43;
  }

  v6 = *(a1 + 56);
  *(a1 + 56) = v6 + 1;
  iv = veorq_s8(bswap64(v6), *(a1 + 112));
  DataLength = CMBlockBufferGetDataLength(a2);
  if (!CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
  {
    VCCryptor_Encrypt_cold_11();
    goto LABEL_43;
  }

  CipherSuite = VCCryptor_GetCipherSuite(a1);
  v9 = 13;
  if (CipherSuite == 1)
  {
    v9 = 19;
  }

  if (!CipherSuite)
  {
    v9 = 9;
  }

  v10 = (71 - __clz(v6)) >> 3;
  if (!v6)
  {
    v10 = 1;
  }

  v11 = DataLength + v9 + v10;
  if (*a3)
  {
    v12 = CFRetain(*a3);
    theBuffer = v12;
  }

  else
  {
    if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v11, *MEMORY[0x1E695E480], 0, 0, v11, 1u, &theBuffer))
    {
      VCCryptor_Encrypt_cold_3();
      goto LABEL_43;
    }

    v12 = theBuffer;
  }

  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(v12, 0, 0, 0, &dataPointerOut))
  {
    VCCryptor_Encrypt_cold_4();
    goto LABEL_43;
  }

  v20 = v11;
  if (VCCryptor_ComposeSFrameHeaderWithCounterAndMKI(dataPointerOut, &v20, *(a1 + 24), v6))
  {
    VCCryptor_Encrypt_cold_5();
    goto LABEL_43;
  }

  if (v20 <= 9)
  {
    VCCryptor_Encrypt_cold_10();
    goto LABEL_43;
  }

  if (CCCryptorReset(*(a1 + 8360), &iv))
  {
    VCCryptor_Encrypt_cold_6();
    goto LABEL_43;
  }

  v19 = 0;
  if (CMBlockBufferGetDataPointer(a2, 0, 0, 0, &v19))
  {
    VCCryptor_Encrypt_cold_7();
    goto LABEL_43;
  }

  dataOutMoved = 0;
  v13 = VCCryptor_GetCipherSuite(a1);
  v14 = 4;
  if (v13 == 1)
  {
    v14 = 10;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (CCCryptorUpdate(*(a1 + 8360), v19, DataLength, &dataPointerOut[v20], v11 - v15, &dataOutMoved))
  {
    VCCryptor_Encrypt_cold_8();
    goto LABEL_43;
  }

  if (dataOutMoved != DataLength)
  {
    VCCryptor_Encrypt_cold_9(&dataOutMoved, DataLength, &v23);
    goto LABEL_43;
  }

  memset(macOut, 0, sizeof(macOut));
  CCHmac(2u, (a1 + 128), 0x20uLL, dataPointerOut, dataOutMoved + v20, macOut);
  memcpy(&dataPointerOut[v20 + dataOutMoved], macOut, v15);
  if (!*a3)
  {
    v16 = 0;
    *a3 = theBuffer;
    return v16;
  }

  v16 = 0;
LABEL_28:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v16;
}

uint64_t _VCCryptor_ValidateCryptographyInputParameters(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCCryptor_ValidateCryptographyInputParameters_cold_5();
    return v11;
  }

  if (!theBuffer)
  {
    _VCCryptor_ValidateCryptographyInputParameters_cold_4();
    return v11;
  }

  if (!a3)
  {
    _VCCryptor_ValidateCryptographyInputParameters_cold_3();
    return v11;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = DataLength;
  if (a4)
  {
    if (!DataLength)
    {
      _VCCryptor_ValidateCryptographyInputParameters_cold_2();
      return v11;
    }
  }

  else
  {
    CipherSuite = VCCryptor_GetCipherSuite(a1);
    v9 = 14;
    if (CipherSuite == 1)
    {
      v9 = 20;
    }

    if (!CipherSuite)
    {
      v9 = 10;
    }

    if (v7 <= v9)
    {
      _VCCryptor_ValidateCryptographyInputParameters_cold_1(v7, v9 | 1, &v11);
      return v11;
    }
  }

  return 0;
}

uint64_t _VCCryptor_EnsureCryptorIsReady(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v6 = atomic_exchange((a1 + 32), 0);
  if (a2)
  {
    v7 = (a1 + 8360);
    v8 = !VCMediaKeyIndex_isStartingWithPrefix(*(a1 + 24), a2) || *(a1 + 8360) == 0;
    if (!v8 && (v6 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (*(a1 + 8360) && (v6 & 1) == 0)
    {
LABEL_63:
      _VCCryptor_EnsureCryptorIsReady_cold_1(buffer);
      goto LABEL_73;
    }

    v7 = (a1 + 8360);
    if ((*(a1 + 33) & 1) == 0)
    {
      v9 = *(a1 + 16);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v37[2] = ___VCCryptor_EnsureCryptorIsReady_block_invoke;
      v37[3] = &__block_descriptor_tmp_12;
      v37[4] = a1;
      if (VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification(v9, v37))
      {
        _VCCryptor_EnsureCryptorIsReady_cold_2();
        goto LABEL_73;
      }

      *(a1 + 33) = 1;
    }
  }

  if (VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex(*(a1 + 16), a2, &theArray))
  {
    _VCCryptor_EnsureCryptorIsReady_cold_3();
LABEL_73:
    v32 = *buffer;
    goto LABEL_53;
  }

  if (!theArray)
  {
    _VCCryptor_EnsureCryptorIsReady_cold_16();
    goto LABEL_73;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    _VCCryptor_EnsureCryptorIsReady_cold_15();
    goto LABEL_73;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    Value = CFDictionaryGetValue(ValueAtIndex, @"SecurityLocallyGenerated");
    v13 = CFBooleanGetValue(Value);
    if (!a2 && !v13)
    {
      _VCCryptor_EnsureCryptorIsReady_cold_14();
      goto LABEL_73;
    }

    if (a3)
    {
      break;
    }

    if (ValueAtIndex)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (++v10 >= CFArrayGetCount(theArray))
    {
      v32 = 2151677969;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 3)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buffer = 136316162;
          *&buffer[4] = v34;
          *&buffer[12] = 2080;
          *&buffer[14] = "_VCCryptor_EnsureCryptorIsReady";
          *&buffer[22] = 1024;
          *&buffer[24] = 458;
          *&buffer[28] = 2112;
          *&buffer[30] = theArray;
          v41 = 2112;
          v42 = a3;
          _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VCCryptor_SetupCryptor failed to find key material from '%@' with disableMKI array '%@'", buffer, 0x30u);
        }
      }

      goto LABEL_53;
    }
  }

  CFDictionaryGetValue(ValueAtIndex, @"SecurityKeyIndex");
  if (FigCFArrayContainsValue())
  {
    v14 = 1;
  }

  else
  {
    v14 = ValueAtIndex == 0;
  }

  if (v14)
  {
    goto LABEL_25;
  }

LABEL_28:
  memset(buffer, 0, 32);
  *v43 = 0;
  v44 = 0;
  CCCryptorRelease(*v7);
  *v7 = 0;
  v15 = CFDictionaryGetValue(ValueAtIndex, @"SecurityKey");
  if (v15)
  {
    v16 = v15;
    Length = CFDataGetLength(v15);
    v18 = CFDictionaryGetValue(ValueAtIndex, @"SecuritySalt");
    if (v18)
    {
      v19 = v18;
      v36 = v7;
      v20 = CFDataGetLength(v18);
      v21 = CFDictionaryGetValue(ValueAtIndex, @"SecurityKeyIndex");
      if (v21)
      {
        v22 = v21;
        v23 = CFDictionaryGetValue(ValueAtIndex, @"SecurityLocallyGenerated");
        if (v23)
        {
          v24 = v23;
          if (Length >= 0x20)
          {
            v25 = 32;
          }

          else
          {
            v25 = Length;
          }

          if (v20 >= 0x10)
          {
            v26 = 16;
          }

          else
          {
            v26 = v20;
          }

          v46.location = 0;
          v46.length = v25;
          CFDataGetBytes(v16, v46, buffer);
          v47.location = 0;
          v47.length = v26;
          CFDataGetBytes(v19, v47, v43);
          CFDataGetBytePtr(*(a1 + 40));
          CFDataGetLength(*(a1 + 40));
          if (CCKeyDerivationHMac())
          {
            _VCCryptor_EnsureCryptorIsReady_cold_4();
          }

          else if (CCKeyDerivationHMac())
          {
            _VCCryptor_EnsureCryptorIsReady_cold_5();
          }

          else if (CCKeyDerivationHMac())
          {
            _VCCryptor_EnsureCryptorIsReady_cold_6();
          }

          else if (CCKeyDerivationHMac())
          {
            _VCCryptor_EnsureCryptorIsReady_cold_7();
          }

          else
          {
            v27 = CFBooleanGetValue(v24) == 0;
            if (!CCCryptorCreateWithMode(v27, 4u, 0, 0, 0, (a1 + 96), 0x10uLL, 0, 0, 0, 2u, v36))
            {
              VCMediaKeyIndex_ReleaseAndCopyNewValue((a1 + 24), v22);
              v32 = 0;
              *(a1 + 34) = 0;
              goto LABEL_53;
            }

            _VCCryptor_EnsureCryptorIsReady_cold_8();
          }
        }

        else
        {
          _VCCryptor_EnsureCryptorIsReady_cold_9();
        }
      }

      else
      {
        _VCCryptor_EnsureCryptorIsReady_cold_10();
      }

      v32 = v39;
    }

    else
    {
      v32 = 2151677969;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCCryptor_EnsureCryptorIsReady_cold_11(v29);
        }
      }
    }
  }

  else
  {
    v32 = 2151677969;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCCryptor_EnsureCryptorIsReady_cold_12(v28);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCCryptor_EnsureCryptorIsReady_cold_13(v30);
    }
  }

LABEL_53:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v32;
}

uint64_t VCCryptor_GetEncryptedBufferSize(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    VCCryptor_GetEncryptedBufferSize_cold_2();
    return v12;
  }

  if (!a3)
  {
    VCCryptor_GetEncryptedBufferSize_cold_1();
    return v12;
  }

  v5 = *(a1 + 56);
  CipherSuite = VCCryptor_GetCipherSuite(a1);
  result = 0;
  v8 = 13;
  if (CipherSuite == 1)
  {
    v8 = 19;
  }

  v9 = CipherSuite == 0;
  v10 = 9;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = (71 - __clz(v5)) >> 3;
  if (!v5)
  {
    v11 = 1;
  }

  *a3 = v11 + a2 + v10;
  return result;
}

void _VCCryptor_Finalize(uint64_t a1)
{
  if (*(a1 + 33) == 1)
  {
    VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification(*(a1 + 16), 0);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  CCCryptorRelease(*(a1 + 8360));
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t VCMediaNegotiationBlobCaptionsSettingsReadFrom(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
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

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v28 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            v23 = 0;
            goto LABEL_44;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_44:
        *(a1 + 8) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v27 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            LOBYTE(v17) = 0;
            goto LABEL_40;
          }
        }

        v17 = (v14 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _VCMediaStream_DefaultTransport(uint64_t a1)
{
  if ([*(a1 + 552) count])
  {
    v2 = *(a1 + 552);

    return [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCMediaStream_DefaultTransport_cold_1();
      }
    }

    return 0;
  }
}

uint64_t VCMediaStream_Lock(uint64_t result)
{
  if (result)
  {
    return pthread_mutex_lock((result + 176));
  }

  return result;
}

uint64_t VCMediaStream_Unlock(uint64_t result)
{
  if (result)
  {
    return pthread_mutex_unlock((result + 176));
  }

  return result;
}

void sub_1DB901D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t VCMediaCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a2)
  {
    v9 = [a2 handleMediaCallbackNotification:a1 inData:a3 outData:a4];
  }

  else
  {
    v9 = 2148597761;
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

void sub_1DB904020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

void VCMediaStreamFillMediaControlInfoCallback(uint64_t a1, uint64_t a2, void *a3)
{
  Type = VCMediaControlInfoGeneratorGetType(a1);
  if (*(a2 + 648) == a1)
  {
    v7 = &OBJC_IVAR___VCMediaStream__feedbackController;
  }

  else
  {
    if (*(a2 + 656) != a1)
    {
      return;
    }

    v7 = &OBJC_IVAR___VCMediaStream__oneToOneFeedbackController;
  }

  v8 = *(a2 + *v7);
  if (v8)
  {
    v9 = Type == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && (VCRateControlSetFeedbackControlInfo(v8, a3) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaStreamFillMediaControlInfoCallback_cold_1();
    }
  }
}

void VCMediaStreamProcessMediaControlInfoCallback(uint64_t a1, uint64_t a2, void *a3)
{
  Type = VCMediaControlInfoGeneratorGetType(a1);
  v7 = [*(a2 + 552) objectAtIndexedSubscript:0];
  if (*(a2 + 648) == a1)
  {
    v8 = &OBJC_IVAR___VCMediaStream__feedbackController;
  }

  else
  {
    if (*(a2 + 656) != a1)
    {
      return;
    }

    v8 = &OBJC_IVAR___VCMediaStream__oneToOneFeedbackController;
  }

  v9 = *v8;
  v10 = *(a2 + v9);
  if (v10)
  {
    if (!Type && !VCRateControlProcessFeedbackControlInfo(*(a2 + v9), a3) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaStreamProcessMediaControlInfoCallback_cold_1();
      }
    }

    if ((VCRateControlProcessProbingControlInfo(v10, a3, Type == 0) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaStreamProcessMediaControlInfoCallback_cold_2();
      }
    }

    if ((RTPProcessMediaControlInfo([v7 rtpHandle], a3, Type == 0) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaStreamProcessMediaControlInfoCallback_cold_3();
      }
    }
  }
}

void VCMediaStream_CheckDecryptionTimeoutForMKMRecoveryAgainstTime(uint64_t a1, double a2, double a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 - *(a1 + 376) > 1.0)
  {
    v6 = _VCMediaStream_DefaultTransport(a1);
    v7 = a2 - *(a1 + 384);
    if (v7 > VCMediaStreamTransport_DecryptionMKMRecoveryInterval(v6))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 384);
          *buf = 136316418;
          v14 = v8;
          v15 = 2080;
          v16 = "VCMediaStream_CheckDecryptionTimeoutForMKMRecoveryAgainstTime";
          v17 = 1024;
          v18 = 2576;
          v19 = 2048;
          v20 = a3;
          v21 = 2048;
          v22 = v11;
          v23 = 2048;
          v24 = a2;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d DecryptionErrorStartTime:%f lastDecryptionMKMRecoveryTime:%f now:%f. Triggering MKM recovery", buf, 0x3Au);
        }
      }

      *(a1 + 376) = a2;
      *(a1 + 384) = a2;
      v10 = *(a1 + 168);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __VCMediaStream_CheckDecryptionTimeoutForMKMRecoveryAgainstTime_block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = a1;
      dispatch_async(v10, block);
    }
  }
}

void VCMediaStream_CheckForDecryptionTimeout(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _VCMediaStream_DefaultTransport(a1);
    if (VCMediaStreamTransport_DecryptionTimeoutInterval(v2) != 0.0)
    {
      v3 = micro();
      _VCMediaStream_CheckDecryptionTimeoutAgainstTime(a1, v3, *(a1 + 392));
      v4 = *(a1 + 392);

      VCMediaStream_CheckDecryptionTimeoutForMKMRecoveryAgainstTime(a1, v3, v4);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "VCMediaStream_CheckForDecryptionTimeout";
      v11 = 1024;
      v12 = 2592;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCMediaStream [%s] %s:%d media stream is nil", &v7, 0x1Cu);
    }
  }
}

void _VCMediaStream_CheckDecryptionTimeoutAgainstTime(uint64_t a1, double a2, double a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _VCMediaStream_DefaultTransport(a1);
  v7 = VCMediaStreamTransport_DecryptionTimeoutInterval(v6);
  if (a2 - *(a1 + 328) > v7 && a2 - *(a1 + 376) > 1.0 && a2 - a3 > v7)
  {
    *(a1 + 376) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v14 = v9;
        v15 = 2080;
        v16 = "_VCMediaStream_CheckDecryptionTimeoutAgainstTime";
        v17 = 1024;
        v18 = 2555;
        v19 = 2048;
        v20 = a3;
        v21 = 2048;
        v22 = a2;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCMediaStream [%s] %s:%d DecryptionErrorStartTime:%f now:%f. Triggering decryption timeout", buf, 0x30u);
      }
    }

    v11 = *(a1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCMediaStream_CheckDecryptionTimeoutAgainstTime_block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = a1;
    dispatch_async(v11, block);
  }
}

void *VCMediaStream_RTCPPacketsCallback(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 notifyDelegateDidReceiveRTCPPackets:a2];
  }

  return a1;
}

uint64_t VCMediaStream_State(uint64_t result)
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return [v1 getNSError:v0 code:32016 detailedCode:105 filePath:? description:? reason:?];
}

CFArrayRef VCVideoHardwareDumpCollector_CreateHeadersFromCArray(const char **a1, CFIndex a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_3(v11);
    return v11[0];
  }

  v2 = a2;
  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_2(v11);
    return v11[0];
  }

  v6 = Mutable;
  if (v2)
  {
    while (1)
    {
      v7 = CFStringCreateWithCString(v4, *v3, 0x8000100u);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      CFArrayAppendValue(v6, v7);
      CFRelease(v8);
      ++v3;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    VCVideoHardwareDumpCollector_CreateHeadersFromCArray_cold_1(v11);
    Copy = v11[0];
  }

  else
  {
LABEL_6:
    Copy = CFArrayCreateCopy(v4, v6);
  }

  CFRelease(v6);
  return Copy;
}

void _VCVideoHardwareDumpCollector_DumpFrame(uint64_t a1, const __CFDictionary *a2, CFArrayRef theArray, const void *a4)
{
  Count = CFArrayGetCount(theArray);
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count + 1, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    CFArrayAppendValue(Mutable, a4);
    if (Count)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        Value = CFDictionaryGetValue(a2, ValueAtIndex);
        if (Value)
        {
          v16 = CFStringCreateWithFormat(v9, 0, @"%@", Value);
          CFArrayAppendValue(v11, v16);
          if (v16)
          {
            CFRelease(v16);
          }
        }

        else
        {
          CFArrayAppendValue(v11, &stru_1F570E008);
        }

        v12 = v13;
      }

      while (Count > v13++);
    }

    v18 = CFStringCreateByCombiningStrings(v9, v11, @",");
    VCVideoHardwareDumpWriter_Write(*(a1 + 56), v18);
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v11);
  }

  else
  {
    _VCVideoHardwareDumpCollector_DumpFrame_cold_1();
  }
}

void VCVideoHardwareDumpCollector_RecordResizeForEncoder(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      valuePtr = a2;
      v8 = *MEMORY[0x1E695E480];
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"VideoHardwareTestDidResizeFrameForEncodingBuffer", v9);
      CFRelease(v9);
      valuePtr = a4;
      v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"VideoHardwareTestResizedFrameForEncodingBufferWidth", v10);
      CFRelease(v10);
      valuePtr = a5;
      v11 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v5, @"VideoHardwareTestResizedFrameForEncodingBufferHeight", v11);
      CFRelease(v11);
    }

    else
    {
      VCVideoHardwareDumpCollector_RecordResizeForEncoder_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpCollector_RecordResizeForEncoder_cold_2();
  }
}

void VCVideoHardwareDumpCollector_RecordEncoderBuffer(uint64_t a1, int a2, int a3, VTSessionRef session, int a5, int a6)
{
  propertyValueOut[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      propertyValueOut[0] = 0;
      v11 = *MEMORY[0x1E695E480];
      VTSessionCopyProperty(session, *MEMORY[0x1E6983E30], *MEMORY[0x1E695E480], propertyValueOut);
      if (propertyValueOut[0])
      {
        CFDictionaryAddValue(v6, @"VideoHardwareTestScalingMode", propertyValueOut[0]);
        if (propertyValueOut[0])
        {
          CFRelease(propertyValueOut[0]);
        }
      }

      valuePtr = a6;
      v12 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v6, @"VideoHardwareTestRotationAngle", v12);
      CFRelease(v12);
      valuePtr = a3;
      v13 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v6, @"VideoHardwareTestDidResizeEncodingBuffer", v13);
      CFRelease(v13);
      valuePtr = a5;
      v14 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v6, @"VideoHardwareTestDidRotate", v14);
      CFRelease(v14);
      valuePtr = a2;
      v15 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v6, @"VideoHardwareTestFrameOrientation", v15);
      CFRelease(v15);
    }

    else
    {
      VCVideoHardwareDumpCollector_RecordEncoderBuffer_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpCollector_RecordEncoderBuffer_cold_2();
  }
}

void VCVideoHardwareDumpCollector_RecordEncodedFrame(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      if (a2)
      {
        v5 = *(a2 + 88);
        LODWORD(valuePtr) = CVPixelBufferGetWidth(v5);
        v6 = *MEMORY[0x1E695E480];
        v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestEncodingBufferWidth", v7);
        CFRelease(v7);
        LODWORD(valuePtr) = CVPixelBufferGetHeight(v5);
        v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestEncodingBufferHeight", v8);
        CFRelease(v8);
        v9 = *(a2 + 264);
        v11 = *(a2 + 272);
        v10 = *(a2 + 280);
        v12 = *(a2 + 256);
        valuePtr = v12;
        v13 = CFNumberCreate(v6, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestVisibleRectX", v13);
        CFRelease(v13);
        v14 = v9;
        valuePtr = v14;
        v15 = CFNumberCreate(v6, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestVisibleRectY", v15);
        CFRelease(v15);
        v16 = v11;
        valuePtr = v16;
        v17 = CFNumberCreate(v6, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestVisibleRectWidth", v17);
        CFRelease(v17);
        v18 = v10;
        valuePtr = v18;
        v19 = CFNumberCreate(v6, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v3, @"VideoHardwareTestVisibleRectHeight", v19);
        CFRelease(v19);
      }

      _VCVideoHardwareDumpCollector_DumpFrame(a1, v3, *(a1 + 32), @"ENCODE");
      CFDictionaryRemoveAllValues(v3);
    }

    else
    {
      VCVideoHardwareDumpCollector_RecordEncodedFrame_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpCollector_RecordEncodedFrame_cold_2();
  }
}

void VCVideoHardwareDumpCollector_RecordDecodedFrame(uint64_t a1, CVPixelBufferRef pixelBuffer, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v7 = MEMORY[0x1E695E480];
      if (pixelBuffer)
      {
        LODWORD(valuePtr) = CVPixelBufferGetWidth(pixelBuffer);
        v8 = *v7;
        v9 = CFNumberCreate(*v7, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestDecodedFrameWidth", v9);
        CFRelease(v9);
        LODWORD(valuePtr) = CVPixelBufferGetHeight(pixelBuffer);
        v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestDecodedFrameHeight", v10);
        CFRelease(v10);
      }

      if (a3)
      {
        [a3 contentsRect];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        *&v17 = v17;
        valuePtr = *&v17;
        v18 = *v7;
        v19 = CFNumberCreate(*v7, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestContentsRectX", v19);
        CFRelease(v19);
        v20 = v12;
        valuePtr = v20;
        v21 = CFNumberCreate(v18, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestContentsRectY", v21);
        CFRelease(v21);
        v22 = v14;
        valuePtr = v22;
        v23 = CFNumberCreate(v18, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestContentsRectWidth", v23);
        CFRelease(v23);
        v24 = v16;
        valuePtr = v24;
        v25 = CFNumberCreate(v18, kCFNumberFloat32Type, &valuePtr);
        CFDictionaryAddValue(v4, @"VideoHardwareTestContentsRectHeight", v25);
        CFRelease(v25);
      }

      _VCVideoHardwareDumpCollector_DumpFrame(a1, v4, *(a1 + 40), @"DECODE");
      CFDictionaryRemoveAllValues(v4);
    }

    else
    {
      VCVideoHardwareDumpCollector_RecordDecodedFrame_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpCollector_RecordDecodedFrame_cold_2();
  }
}

void VCVideoHardwareDumpCollector_RecordActiveCaptureDevice(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      valuePtr = [a2 isVideoBinned];
      v5 = *MEMORY[0x1E695E480];
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v3, @"VideoHardwareTestCaptureFormatIsBinned", v6);
      CFRelease(v6);
      valuePtr = [a2 isVideoHDRSupported];
      v7 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v3, @"VideoHardwareTestCaptureFormatIsHDR", v7);
      CFRelease(v7);
      _VCVideoHardwareDumpCollector_DumpFrame(a1, v3, *(a1 + 48), @"CAPTURE");
      CFDictionaryRemoveAllValues(v3);
    }

    else
    {
      VCVideoHardwareDumpCollector_RecordActiveCaptureDevice_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpCollector_RecordActiveCaptureDevice_cold_2();
  }
}

void *Throttling_MediaQueue_Init(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3F947AE147AE147BLL;
  *(a1 + 48) = 0;
  *(a1 + 52) = 28;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  result = malloc_type_malloc(0x380uLL, 0x100004097079494uLL);
  *(a1 + 88) = result;
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "RealTimeStats_Init";
        v11 = 1024;
        v12 = 351;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  ------ MQ IN/OUT RealTime stats are ENABLED", &v7, 0x1Cu);
      }
    }

    v5 = *(a1 + 88);
    v6 = micro();
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    *(v5 + 148) = 0;
    *(v5 + 144) = 0;
    *v5 = v6;
    *(v5 + 136) = v6;
    *(v5 + 152) = 1;
    pthread_mutex_init((v5 + 160), 0);
    *(v5 + 232) = 0u;
    v5 += 232;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 140) = 0;
    *(v5 + 136) = 0;
    *(v5 - 8) = v6;
    *(v5 + 128) = v6;
    *(v5 + 144) = 0;
    pthread_mutex_init((v5 + 152), 0);
    *(v5 + 224) = 0u;
    *(v5 + 240) = 0u;
    *(v5 + 256) = 0u;
    *(v5 + 272) = 0u;
    *(v5 + 288) = 0u;
    *(v5 + 304) = 0u;
    *(v5 + 320) = 0u;
    *(v5 + 336) = 0u;
    *(v5 + 364) = 0;
    *(v5 + 360) = 0;
    *(v5 + 216) = v6;
    *(v5 + 352) = v6;
    *(v5 + 368) = 1;
    pthread_mutex_init((v5 + 376), 0);
    *(v5 + 448) = 0u;
    *(v5 + 464) = 0u;
    *(v5 + 480) = 0u;
    *(v5 + 496) = 0u;
    *(v5 + 512) = 0u;
    *(v5 + 528) = 0u;
    *(v5 + 544) = 0u;
    *(v5 + 560) = 0u;
    *(v5 + 588) = 0;
    *(v5 + 584) = 0;
    *(v5 + 440) = v6;
    *(v5 + 576) = v6;
    *(v5 + 592) = 0;
    return pthread_mutex_init((v5 + 600), 0);
  }

  return result;
}

void Throttling_MediaQueue_Uninit(uint64_t a1, pthread_mutex_t *a2)
{
  pthread_mutex_lock(a2);
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4[196];
      VCMediaControlInfoDispose(v4[198]);
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  pthread_mutex_unlock(a2);
  *a1 = 0;
  v6 = *(a1 + 88);
  if (v6)
  {
    pthread_mutex_destroy((v6 + 160));
    pthread_mutex_destroy((v6 + 384));
    pthread_mutex_destroy((v6 + 608));
    pthread_mutex_destroy((v6 + 832));
    free(*(a1 + 88));
    *(a1 + 88) = 0;
  }
}

uint64_t Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v268 = *MEMORY[0x1E69E9840];
  v249 = a4;
  *(a4 + 1608) = a5;
  v10 = *(a2 + 88);
  if (v10)
  {
    v11 = *a4 + *(a2 + 52);
    v12 = 224;
    if (!*(a4 + 1516))
    {
      v12 = 0;
    }

    v13 = v10 + v12;
    v14 = *(v10 + v12 + 148);
    v15 = vcvtd_n_s64_f64(a5 - *(v13 + 136), 6uLL);
    if (v15)
    {
      if (v15 > 15)
      {
        if (v15 > 0x1F)
        {
          v14 = 0;
          v18 = 0;
          *(v13 + 120) = 0u;
          *(v13 + 104) = 0u;
          *(v13 + 88) = 0u;
          *(v13 + 72) = 0u;
          *(v13 + 56) = 0u;
          *(v13 + 40) = 0u;
          *(v13 + 24) = 0u;
          *(v13 + 8) = 0u;
        }

        else
        {
          v22 = *(v13 + 144);
          v23 = v22 + v15;
          v18 = (v22 + v15) & 0x1F;
          v24 = (v22 + 1) & 0x1F;
          if (v18 >= v24)
          {
            v25 = (v13 + 4 * v24 + 8);
            v26 = (v18 - v24 + 1);
          }

          else
          {
            v25 = (v13 + 8);
            bzero((v13 + 8 + 4 * ((v22 + 1) & 0x1F)), 128 - 4 * ((v22 + 1) & 0x1Fu));
            v26 = v18 + 1;
          }

          bzero(v25, 4 * v26);
          v27 = (v23 + 1) & 0x1F;
          if (v27 == v24)
          {
            v14 = 0;
          }

          else
          {
            v14 = 0;
            do
            {
              v14 += *(v13 + 8 + 4 * v27);
              v27 = (v27 + 1) & 0x1F;
            }

            while (v27 != v24);
          }
        }
      }

      else
      {
        v16 = *(v13 + 144);
        v17 = v16 + v15;
        v18 = v17 & 0x1F;
        v19 = (v17 + 1) & 0x1F;
        v20 = (v16 + 1) & 0x1F;
        if (v20 != v19)
        {
          v21 = v13 + 8;
          do
          {
            v14 -= *(v21 + 4 * v20);
            *(v21 + 4 * v20) = 0;
            v20 = (v20 + 1) & 0x1F;
          }

          while (v20 != v19);
        }
      }
    }

    else
    {
      v18 = -1;
    }

    v28 = v14 + v11;
    pthread_mutex_lock((v13 + 160));
    *(v13 + 148) = v28;
    if (v18 != -1)
    {
      *(v13 + 136) = *v13 + vcvtd_n_u64_f64(a5 - *v13, 6uLL) * 0.015625;
      *(v13 + 144) = v18;
    }

    pthread_mutex_unlock((v13 + 160));
    v29 = v13 + 4 * *(v13 + 144);
    *(v29 + 8) += v11;
  }

  if (_MergedGlobals_10 == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    v32 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a4 + 1516);
        v34 = bswap32(*(a4 + 1508));
        v35 = bswap32(*(a4 + 1506));
        v36 = *a4;
        v37 = *(a4 + 1576);
        v38 = *a2;
        v39 = *(a2 + 32);
        *buf = 136317698;
        v252 = v30;
        v253 = 2080;
        v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
        v255 = 1024;
        v256 = 1040;
        v257 = 2048;
        *v258 = a5;
        *&v258[8] = 1024;
        *&v258[10] = v33;
        *&v258[14] = 1024;
        *&v258[16] = v34;
        *&v258[20] = 1024;
        *&v258[22] = HIWORD(v35);
        *&v258[26] = 1024;
        *&v258[28] = v36;
        *&v258[32] = 1024;
        *&v258[34] = v37;
        *&v258[38] = 2048;
        v259 = v38;
        v260 = 1024;
        *v261 = v39;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^ @%.3f MP %d  %d/%d/%d P: %d  pTWL: %p %d", buf, 0x54u);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v238 = *(a4 + 1516);
      v239 = bswap32(*(a4 + 1508));
      v240 = bswap32(*(a4 + 1506));
      v241 = *a4;
      v242 = *(a4 + 1576);
      v243 = *a2;
      v244 = *(a2 + 32);
      *buf = 136317698;
      v252 = v30;
      v253 = 2080;
      v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
      v255 = 1024;
      v256 = 1040;
      v257 = 2048;
      *v258 = a5;
      *&v258[8] = 1024;
      *&v258[10] = v238;
      *&v258[14] = 1024;
      *&v258[16] = v239;
      *&v258[20] = 1024;
      *&v258[22] = HIWORD(v240);
      *&v258[26] = 1024;
      *&v258[28] = v241;
      *&v258[32] = 1024;
      *&v258[34] = v242;
      *&v258[38] = 2048;
      v259 = v243;
      v260 = 1024;
      *v261 = v244;
      _os_log_debug_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^ @%.3f MP %d  %d/%d/%d P: %d  pTWL: %p %d", buf, 0x54u);
    }
  }

  if (!*(v249 + 1516))
  {
    v40 = *(v249 + 1616);
    if (v40 >= 0.0)
    {
      *(a2 + 24) = v40 + a5;
    }

    else
    {
      *(a2 + 24) = *(a2 + 40) + a5;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(v249 + 1616);
          v44 = *(a2 + 40);
          *buf = 136316162;
          v252 = v41;
          v253 = 2080;
          v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
          v255 = 1024;
          v256 = 1057;
          v257 = 2048;
          *v258 = v43;
          *&v258[8] = 2048;
          *&v258[10] = v44;
          _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  *#*#*#*#*#*#*#*# BAD AUD. pkt INTERVAL: %f (avg: %f) ", buf, 0x30u);
        }
      }
    }

    if (*(a2 + 8) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      v47 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(v249 + 1616);
          v49 = *(a2 + 40);
          *buf = 136316162;
          v252 = v45;
          v253 = 2080;
          v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
          v255 = 1024;
          v256 = 1062;
          v257 = 2048;
          *v258 = v48;
          *&v258[8] = 2048;
          *&v258[10] = v49;
          _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  AUD. pkt INTERVAL: %f (avg: %f) ", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v245 = *(v249 + 1616);
        v246 = *(a2 + 40);
        *buf = 136316162;
        v252 = v45;
        v253 = 2080;
        v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
        v255 = 1024;
        v256 = 1062;
        v257 = 2048;
        *v258 = v245;
        *&v258[8] = 2048;
        *&v258[10] = v246;
        _os_log_debug_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  AUD. pkt INTERVAL: %f (avg: %f) ", buf, 0x30u);
      }
    }
  }

  v50 = v249;
  if (!*a2)
  {
    v54 = 0;
    v57 = *(v249 + 1596);
    goto LABEL_63;
  }

  if (*(v249 + 1516))
  {
    if (*(v249 + 1596) == 1)
    {
      v51 = *a3;
      v52 = a3;
      if (*a3)
      {
        do
        {
          v53 = v51;
          v51 = *(v51 + 1568);
        }

        while (v51);
        v52 = (v53 + 1568);
      }

      v250 = v52;
      v54 = ProcessThrottledPktsWithTime(a2, &v250, 0, a5);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v56 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v252 = v55;
          v253 = 2080;
          v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
          v255 = 1024;
          v256 = 1075;
          v257 = 1024;
          *v258 = v54;
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Packet with a shouldScheduleQueuedPackets set. Empty throttling queue! iPktsAddedToPktListCount=%d", buf, 0x22u);
        }
      }

      v57 = 1;
      v50 = v249;
    }

    else
    {
      v57 = 0;
      v54 = 0;
    }

LABEL_63:
    active = ActiveProbing_ProcessIncomingPacket(a1, v50);
    if (!active && (v57 & 1) != 0)
    {
      active = ActiveProbing_FlushPendingPackets(a1, &v249);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v70 = VRTraceErrorLogLevelToCSTR();
        v71 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v252 = v70;
          v253 = 2080;
          v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
          v255 = 1024;
          v256 = 1086;
          v257 = 1024;
          *v258 = active;
          _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Packet with a shouldScheduleQueuedPackets set. Empty waiting queue! iPktsCount=%d", buf, 0x22u);
        }
      }
    }

    if (active < 1)
    {
      goto LABEL_274;
    }

    v72 = *a3;
    if (*a3)
    {
      do
      {
        v73 = v72;
        v72 = *(v72 + 1568);
      }

      while (v72);
      a3 = (v73 + 1568);
    }

    v248 = active;
    v74 = v249;
    v250 = a3;
    if ((*(a2 + 8) & 1) == 0)
    {
      if (!v249)
      {
        goto LABEL_272;
      }

      v78 = v249;
      do
      {
        while (*(v78 + 1516) != 1)
        {
          v78 = *(v78 + 1568);
          if (!v78)
          {
            goto LABEL_272;
          }
        }

        v79 = *(v78 + 1600);
        v78 = *(v78 + 1568);
        if (v78)
        {
          v80 = v79 == 0;
        }

        else
        {
          v80 = 0;
        }
      }

      while (v80);
      if (!v79)
      {
LABEL_272:
        *a3 = v249;
        v54 = active;
        goto LABEL_273;
      }
    }

    if (*a2)
    {
      v54 = ProcessThrottledPktsWithTime(a2, &v250, 0, a5);
      v75 = *a2;
      if (*a2)
      {
        do
        {
          v76 = v75;
          v75 = *(*&v75 + 1568);
        }

        while (v75 != 0.0);
        v77 = (*&v76 + 1568);
        if (!v74)
        {
          goto LABEL_273;
        }

LABEL_90:
        v81 = 1.0;
        v82 = 8.0;
        while (1)
        {
          v83 = v74;
          if (*(v74 + 1578) != 1 || *(v74 + 1516) != 1 || !*(v74 + 1600))
          {
            goto LABEL_203;
          }

          v84 = *(a2 + 8);
          if (v84 != 1)
          {
            v90 = (v74 + 1568);
            v74 = *(v74 + 1568);
            *(v83 + 196) = 0;
            if (v84)
            {
              LOBYTE(v91) = 0;
LABEL_206:
              v177 = *(v83 + 1576);
              if (!*(v83 + 1576))
              {
                *(v83 + 201) = *(a2 + 16);
              }

              v178 = v177 ^ 1;
            }

            else
            {
LABEL_211:
              *(a2 + 8) = 1;
              *(a2 + 16) = *(v83 + 201);
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v179 = VRTraceErrorLogLevelToCSTR();
                v180 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v181 = *(a2 + 16);
                  *buf = 136315906;
                  v252 = v179;
                  v253 = 2080;
                  v254 = "SchedulePkt";
                  v255 = 1024;
                  v256 = 474;
                  v257 = 2048;
                  *v258 = v181;
                  _os_log_impl(&dword_1DB56E000, v180, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t THROTTLING: disabled->enabled   dLastThrottledVideoPktTime init: %f ", buf, 0x26u);
                }
              }

              LOBYTE(v91) = 0;
              v178 = 0;
            }

            v182 = *(a2 + 52) + *v83;
            LODWORD(v69) = v83[400];
            v183 = (*(a2 + 64) * *&v69);
            v83[400] = v183;
            v69 = v183;
            v184 = v182 * v82 / v183;
            *(a2 + 16) = *(a2 + 16) + v184;
            if (_MergedGlobals_10 == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v185 = VRTraceErrorLogLevelToCSTR();
              v186 = *MEMORY[0x1E6986650];
              v187 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                {
                  v188 = *v83;
                  v189 = v83[400];
                  v190 = *(v83 + 201);
                  v191 = *(a2 + 16);
                  *buf = 136316930;
                  v252 = v185;
                  v253 = 2080;
                  v254 = "SchedulePkt";
                  v255 = 1024;
                  v256 = 542;
                  v257 = 1024;
                  *v258 = v188;
                  *&v258[4] = 1024;
                  *&v258[6] = v189;
                  *&v258[10] = 2048;
                  *&v258[12] = v184;
                  *&v258[20] = 2048;
                  *&v258[22] = v190;
                  *&v258[30] = 2048;
                  *&v258[32] = v191;
                  _os_log_impl(&dword_1DB56E000, v186, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t SCHEDULING: len/rate: %d/%d  take: %f  me: %f  next: %f ", buf, 0x46u);
                }
              }

              else if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
              {
                v198 = *v83;
                v199 = v83[400];
                v200 = *(v83 + 201);
                v201 = *(a2 + 16);
                *buf = 136316930;
                v252 = v185;
                v253 = 2080;
                v254 = "SchedulePkt";
                v255 = 1024;
                v256 = 542;
                v257 = 1024;
                *v258 = v198;
                *&v258[4] = 1024;
                *&v258[6] = v199;
                *&v258[10] = 2048;
                *&v258[12] = v184;
                *&v258[20] = 2048;
                *&v258[22] = v200;
                *&v258[30] = 2048;
                *&v258[32] = v201;
                _os_log_debug_impl(&dword_1DB56E000, v186, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \t\t SCHEDULING: len/rate: %d/%d  take: %f  me: %f  next: %f ", buf, 0x46u);
              }
            }

            goto LABEL_232;
          }

          v85 = *(a2 + 16);
          if (v85 < a5)
          {
            if (a5 - v85 > 0.0)
            {
              *(a2 + 16) = a5;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v86 = VRTraceErrorLogLevelToCSTR();
              v87 = *MEMORY[0x1E6986650];
              v88 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = *(a2 + 16);
                  *buf = 136316674;
                  v252 = v86;
                  v253 = 2080;
                  v254 = "CheckIfBoostNeeded";
                  v255 = 1024;
                  v256 = 329;
                  v257 = 2048;
                  *v258 = a5 - v85;
                  *&v258[8] = 2048;
                  *&v258[10] = v85;
                  *&v258[18] = 2048;
                  *&v258[20] = a5;
                  *&v258[28] = 2048;
                  *&v258[30] = v89;
                  _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  VIDEO GAP: %f  last: %f  now: %.3f new: %f ", buf, 0x44u);
                }
              }

              else if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
              {
                v223 = *(a2 + 16);
                *buf = 136316674;
                v252 = v86;
                v253 = 2080;
                v254 = "CheckIfBoostNeeded";
                v255 = 1024;
                v256 = 329;
                v257 = 2048;
                *v258 = a5 - v85;
                *&v258[8] = 2048;
                *&v258[10] = v85;
                *&v258[18] = 2048;
                *&v258[20] = a5;
                *&v258[28] = 2048;
                *&v258[30] = v223;
                _os_log_debug_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  VIDEO GAP: %f  last: %f  now: %.3f new: %f ", buf, 0x44u);
              }
            }

            v101 = 0;
            goto LABEL_182;
          }

          v92 = v85 - a5 + v85 - a5;
          if (v92 <= v81)
          {
            v101 = 0;
            *(a2 + 64) = 0x3FF0000000000000;
            goto LABEL_162;
          }

          v93 = *(a2 + 16);
          if (*a2)
          {
            v93 = *(*a2 + 1608);
          }

          v247 = *(a2 + 64);
          v94 = *(a2 + 72);
          LODWORD(v69) = *(a2 + 76);
          v95 = v94 * v82 / *&v69;
          if (v93 - v95 <= a5)
          {
            v96 = v93 - v95;
          }

          else
          {
            v96 = a5;
          }

          if (a5 - v96 <= 0.0 && VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v97 = VRTraceErrorLogLevelToCSTR();
            v98 = *MEMORY[0x1E6986650];
            v99 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                v100 = *(a2 + 76);
                *buf = 136317442;
                v252 = v97;
                v253 = 2080;
                v254 = "CalcBoostIncrease";
                v255 = 1024;
                v256 = 260;
                v257 = 2048;
                *v258 = a5 - v96;
                *&v258[8] = 2048;
                *&v258[10] = a5;
                *&v258[18] = 2048;
                *&v258[20] = v96;
                *&v258[28] = 2048;
                *&v258[30] = v93;
                *&v258[38] = 2048;
                v259 = v95;
                v260 = 1024;
                *v261 = v94;
                *&v261[4] = 1024;
                *&v261[6] = v100;
                _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  dSinceLastPktIssue %f  dNow %f    dBaseTime %f = dFirstPktScheduleTime %f - dDeliveryEstimate %f (%d %d)", buf, 0x5Au);
              }
            }

            else if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
            {
              v227 = *(a2 + 76);
              *buf = 136317442;
              v252 = v97;
              v253 = 2080;
              v254 = "CalcBoostIncrease";
              v255 = 1024;
              v256 = 260;
              v257 = 2048;
              *v258 = a5 - v96;
              *&v258[8] = 2048;
              *&v258[10] = a5;
              *&v258[18] = 2048;
              *&v258[20] = v96;
              *&v258[28] = 2048;
              *&v258[30] = v93;
              *&v258[38] = 2048;
              v259 = v95;
              v260 = 1024;
              *v261 = v94;
              *&v261[4] = 1024;
              *&v261[6] = v227;
              _os_log_debug_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  dSinceLastPktIssue %f  dNow %f    dBaseTime %f = dFirstPktScheduleTime %f - dDeliveryEstimate %f (%d %d)", buf, 0x5Au);
            }
          }

          v102 = v81 + v92 * 0.1;
          v103 = (*(a2 + 16) - v96) / (a5 - v96 + 0.5);
          if (v103 <= 0.0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v104 = VRTraceErrorLogLevelToCSTR();
              v105 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v106 = *(a2 + 16);
                v107 = *(a2 + 76);
                v108 = *a2 != 0;
                *buf = 136318466;
                v252 = v104;
                v253 = 2080;
                v254 = "CalcBoostIncrease";
                v255 = 1024;
                v256 = 281;
                v257 = 2048;
                *v258 = v103;
                *&v258[8] = 2048;
                *&v258[10] = v102;
                *&v258[18] = 2048;
                *&v258[20] = v106;
                *&v258[28] = 2048;
                *&v258[30] = v96;
                *&v258[38] = 2048;
                v259 = a5 - v96;
                v260 = 1024;
                *v261 = v94;
                *&v261[4] = 1024;
                *&v261[6] = v107;
                *&v261[10] = 2048;
                *&v261[12] = v95;
                v262 = 2048;
                v263 = v93;
                v264 = 1024;
                v265 = v108;
                v266 = 2048;
                v267 = a5;
                _os_log_impl(&dword_1DB56E000, v105, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d UNEXPECTED!!! CalcBoostIncrease:  SCHEME2: %f  SCHEME1: %f  last: %f base: %f, %f %d %d %f %f %d %f ", buf, 0x7Eu);
              }
            }

            v103 = v102 + 1.0;
          }

          if (v102 > v103)
          {
            v109 = v103;
          }

          else
          {
            v109 = v102;
          }

          *(a2 + 64) = v109;
          v110 = v109 / v247;
          v82 = 8.0;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v111 = VRTraceErrorLogLevelToCSTR();
            v112 = *MEMORY[0x1E6986650];
            v113 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316674;
                if (v102 <= v103)
                {
                  v114 = 1;
                }

                else
                {
                  v114 = 2;
                }

                v252 = v111;
                v253 = 2080;
                v254 = "CalcBoostIncrease";
                v255 = 1024;
                v256 = 291;
                v257 = 1024;
                *v258 = v114;
                *&v258[4] = 2048;
                *&v258[6] = v102;
                *&v258[14] = 2048;
                *&v258[16] = v103;
                *&v258[24] = 2048;
                *&v258[26] = v110;
                _os_log_impl(&dword_1DB56E000, v112, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  SCHEME %d:   %f   %f    (INC %f)", buf, 0x40u);
              }
            }

            else if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316674;
              if (v102 <= v103)
              {
                v224 = 1;
              }

              else
              {
                v224 = 2;
              }

              v252 = v111;
              v253 = 2080;
              v254 = "CalcBoostIncrease";
              v255 = 1024;
              v256 = 291;
              v257 = 1024;
              *v258 = v224;
              *&v258[4] = 2048;
              *&v258[6] = v102;
              *&v258[14] = 2048;
              *&v258[16] = v103;
              *&v258[24] = 2048;
              *&v258[26] = v110;
              _os_log_debug_impl(&dword_1DB56E000, v112, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  SCHEME %d:   %f   %f    (INC %f)", buf, 0x40u);
            }
          }

          v81 = 1.0;
          if (v110 <= 1.0 || (v115 = *a2, !*a2))
          {
            v101 = 0;
            goto LABEL_162;
          }

          v116 = 0;
          *&v117 = v110 + -1.0;
          v118 = v110 / (v110 + -1.0);
          LODWORD(v117) = *(a2 + 76);
          v119 = (v118 * v117);
          v120 = *(a2 + 72) * -8.0 / v119;
          v121 = v120;
          do
          {
            *(*&v115 + 1608) = v121 + *(*&v115 + 1608);
            if (_MergedGlobals_10 == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v122 = VRTraceErrorLogLevelToCSTR();
              v123 = *MEMORY[0x1E6986650];
              v124 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  v125 = *(*&v115 + 1516);
                  v126 = bswap32(*(*&v115 + 1508));
                  v127 = bswap32(*(*&v115 + 1506)) >> 16;
                  v128 = **&v115;
                  v129 = *(*&v115 + 1576);
                  v130 = *(*&v115 + 1608);
                  *buf = 136318210;
                  v252 = v122;
                  v253 = 2080;
                  v254 = "AccelerateThrottlingQueue";
                  v255 = 1024;
                  v256 = 197;
                  v257 = 1024;
                  *v258 = v125;
                  *&v258[4] = 1024;
                  *&v258[6] = v126;
                  *&v258[10] = 1024;
                  *&v258[12] = v127;
                  *&v258[16] = 1024;
                  *&v258[18] = v128;
                  *&v258[22] = 1024;
                  *&v258[24] = v129;
                  *&v258[28] = 2048;
                  *&v258[30] = v121;
                  *&v258[38] = 2048;
                  v259 = v120;
                  v260 = 1024;
                  *v261 = v119;
                  *&v261[4] = 2048;
                  *&v261[6] = v130;
                  *&v261[14] = 1024;
                  *&v261[16] = v130 <= a5;
                  _os_log_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  Accelerating: ^^^^^^ MP %d  %d/%d/%d P: %d  by %.3fs (%.5f %d) to %.3f b: %d ", buf, 0x64u);
                }
              }

              else if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
              {
                v132 = *(*&v115 + 1516);
                v133 = bswap32(*(*&v115 + 1508));
                v134 = bswap32(*(*&v115 + 1506)) >> 16;
                v135 = **&v115;
                v136 = *(*&v115 + 1576);
                v137 = *(*&v115 + 1608);
                *buf = 136318210;
                v252 = v122;
                v253 = 2080;
                v254 = "AccelerateThrottlingQueue";
                v255 = 1024;
                v256 = 197;
                v257 = 1024;
                *v258 = v132;
                *&v258[4] = 1024;
                *&v258[6] = v133;
                *&v258[10] = 1024;
                *&v258[12] = v134;
                *&v258[16] = 1024;
                *&v258[18] = v135;
                *&v258[22] = 1024;
                *&v258[24] = v136;
                *&v258[28] = 2048;
                *&v258[30] = v121;
                *&v258[38] = 2048;
                v259 = v120;
                v260 = 1024;
                *v261 = v119;
                *&v261[4] = 2048;
                *&v261[6] = v137;
                *&v261[14] = 1024;
                *&v261[16] = v137 <= a5;
                _os_log_debug_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  Accelerating: ^^^^^^ MP %d  %d/%d/%d P: %d  by %.3fs (%.5f %d) to %.3f b: %d ", buf, 0x64u);
              }
            }

            v131 = *(*&v115 + 1608);
            if (v131 <= a5)
            {
              ++v116;
            }

            LODWORD(v131) = *(*&v115 + 1600);
            v119 = (v118 * *&v131);
            v120 = (*(a2 + 52) + **&v115) * -8.0 / v119;
            v121 = v121 + v120;
            v115 = *(*&v115 + 1568);
          }

          while (v115 != 0.0);
          v138 = *(a2 + 16);
          *(a2 + 16) = v121 + v138;
          if (_MergedGlobals_10 != 1 || VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_159;
          }

          v139 = VRTraceErrorLogLevelToCSTR();
          v140 = *MEMORY[0x1E6986650];
          v141 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            break;
          }

          if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_159;
          }

          v229 = *(a2 + 16);
          *buf = 136316674;
          v252 = v139;
          v253 = 2080;
          v254 = "AccelerateThrottlingQueue";
          v255 = 1024;
          v256 = 218;
          v257 = 2048;
          *v258 = v121;
          *&v258[8] = 2048;
          *&v258[10] = v138;
          *&v258[18] = 2048;
          *&v258[20] = v229;
          *&v258[28] = 1024;
          *&v258[30] = v116;
          _os_log_debug_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AccelerateThrottlingQueue: %.3f from %.3f to %.3f (%d pkts) ", buf, 0x40u);
          if (v116)
          {
LABEL_160:
            v101 = ProcessThrottledPktsWithTime(a2, &v250, 0, a5);
            goto LABEL_161;
          }

LABEL_157:
          v101 = 0;
LABEL_161:
          v81 = 1.0;
LABEL_162:
          v143 = *(a2 + 16);
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v143 == v85)
          {
            if (ErrorLogLevelForModule >= 8)
            {
              v145 = VRTraceErrorLogLevelToCSTR();
              v146 = *MEMORY[0x1E6986650];
              v147 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                {
                  v148 = *(a2 + 16);
                  v149 = *(a2 + 64);
                  *buf = 136316418;
                  v252 = v145;
                  v253 = 2080;
                  v254 = "CheckIfBoostNeeded";
                  v255 = 1024;
                  v256 = 370;
                  v257 = 2048;
                  *v258 = a5;
                  *&v258[8] = 2048;
                  *&v258[10] = v148;
                  *&v258[18] = 2048;
                  *&v258[20] = v149;
                  v150 = v146;
                  v151 = " [%s] %s:%d  TOO FAST: now: %.3f last: %f factor: %.3f ";
                  v152 = 58;
LABEL_171:
                  _os_log_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_DEFAULT, v151, buf, v152);
                }
              }

              else if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
              {
                v158 = *(a2 + 16);
                v159 = *(a2 + 64);
                *buf = 136316418;
                v252 = v145;
                v253 = 2080;
                v254 = "CheckIfBoostNeeded";
                v255 = 1024;
                v256 = 370;
                v257 = 2048;
                *v258 = a5;
                *&v258[8] = 2048;
                *&v258[10] = v158;
                *&v258[18] = 2048;
                *&v258[20] = v159;
                v160 = v146;
                v161 = " [%s] %s:%d  TOO FAST: now: %.3f last: %f factor: %.3f ";
                v162 = 58;
LABEL_267:
                _os_log_debug_impl(&dword_1DB56E000, v160, OS_LOG_TYPE_DEBUG, v161, buf, v162);
              }
            }
          }

          else if (ErrorLogLevelForModule >= 8)
          {
            v153 = VRTraceErrorLogLevelToCSTR();
            v154 = *MEMORY[0x1E6986650];
            v155 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
              {
                v156 = *(a2 + 16);
                v157 = *(a2 + 64);
                *buf = 136316674;
                v252 = v153;
                v253 = 2080;
                v254 = "CheckIfBoostNeeded";
                v255 = 1024;
                v256 = 374;
                v257 = 2048;
                *v258 = a5;
                *&v258[8] = 2048;
                *&v258[10] = v85;
                *&v258[18] = 2048;
                *&v258[20] = v156;
                *&v258[28] = 2048;
                *&v258[30] = v157;
                v150 = v154;
                v151 = " [%s] %s:%d  TOO FAST: now: %.3f last: %f --> updated: %f   factor: %.3f ";
                v152 = 68;
                goto LABEL_171;
              }
            }

            else if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
            {
              v225 = *(a2 + 16);
              v226 = *(a2 + 64);
              *buf = 136316674;
              v252 = v153;
              v253 = 2080;
              v254 = "CheckIfBoostNeeded";
              v255 = 1024;
              v256 = 374;
              v257 = 2048;
              *v258 = a5;
              *&v258[8] = 2048;
              *&v258[10] = v85;
              *&v258[18] = 2048;
              *&v258[20] = v225;
              *&v258[28] = 2048;
              *&v258[30] = v226;
              v160 = v154;
              v161 = " [%s] %s:%d  TOO FAST: now: %.3f last: %f --> updated: %f   factor: %.3f ";
              v162 = 68;
              goto LABEL_267;
            }
          }

          if (*(a2 + 16) < a5 && VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v163 = VRTraceErrorLogLevelToCSTR();
            v164 = *MEMORY[0x1E6986650];
            v165 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v252 = v163;
                v253 = 2080;
                v254 = "CheckIfBoostNeeded";
                v255 = 1024;
                v256 = 378;
                _os_log_impl(&dword_1DB56E000, v164, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  TOO MUCH ACCEL!!!!!!!!!!!!!!!!!!", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v252 = v163;
              v253 = 2080;
              v254 = "CheckIfBoostNeeded";
              v255 = 1024;
              v256 = 378;
              _os_log_debug_impl(&dword_1DB56E000, v164, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  TOO MUCH ACCEL!!!!!!!!!!!!!!!!!!", buf, 0x1Cu);
            }
          }

LABEL_182:
          if (*(v83 + 1576) == 1 && *(v83 + 1578) == 1)
          {
            v166 = *(v83 + 201);
            if (v166 < v85)
            {
              v166 = v85;
            }

            v167 = a5 - v166;
            if (a5 - v166 > 0.0)
            {
              *(a2 + 16) = *(a2 + 16) - v167;
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v168 = VRTraceErrorLogLevelToCSTR();
                v169 = *MEMORY[0x1E6986650];
                v170 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                  {
                    v171 = *(a2 + 16);
                    *buf = 136316162;
                    v252 = v168;
                    v253 = 2080;
                    v254 = "CheckIfBoostNeeded";
                    v255 = 1024;
                    v256 = 405;
                    v257 = 2048;
                    *v258 = v167;
                    *&v258[8] = 2048;
                    *&v258[10] = v171;
                    _os_log_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  PROBESEQ comp: %f -> new: %f ", buf, 0x30u);
                  }
                }

                else if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
                {
                  v228 = *(a2 + 16);
                  *buf = 136316162;
                  v252 = v168;
                  v253 = 2080;
                  v254 = "CheckIfBoostNeeded";
                  v255 = 1024;
                  v256 = 405;
                  v257 = 2048;
                  *v258 = v167;
                  *&v258[8] = 2048;
                  *&v258[10] = v228;
                  _os_log_debug_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  PROBESEQ comp: %f -> new: %f ", buf, 0x30u);
                }
              }
            }
          }

          if (v101 >= 1)
          {
            if (!*a2)
            {
              v77 = a2;
              if (_MergedGlobals_10 == 1)
              {
                v77 = a2;
                if (VRTraceGetErrorLogLevelForModule() >= 8)
                {
                  v172 = VRTraceErrorLogLevelToCSTR();
                  v173 = *MEMORY[0x1E6986650];
                  v174 = *MEMORY[0x1E6986650];
                  if (*MEMORY[0x1E6986640] == 1)
                  {
                    v77 = a2;
                    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v252 = v172;
                      v253 = 2080;
                      v254 = "ScheduleReleasedPkts";
                      v255 = 1024;
                      v256 = 792;
                      _os_log_impl(&dword_1DB56E000, v173, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ScheduleReleasedPkts: Updating last pkt's in pThrottledPktsWaitingList == NULL", buf, 0x1Cu);
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    v77 = a2;
                    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315650;
                      v252 = v172;
                      v253 = 2080;
                      v254 = "ScheduleReleasedPkts";
                      v255 = 1024;
                      v256 = 792;
                      _os_log_debug_impl(&dword_1DB56E000, v173, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ScheduleReleasedPkts: Updating last pkt's in pThrottledPktsWaitingList == NULL", buf, 0x1Cu);
LABEL_200:
                      v77 = a2;
                    }
                  }
                }
              }
            }

            v54 = (v101 + v54);
          }

LABEL_203:
          v91 = *(a2 + 8);
          v175 = v83[379];
          v90 = (v83 + 392);
          v74 = *(v83 + 196);
          *(v83 + 196) = 0;
          if (v175 != 1)
          {
            v178 = 0;
            goto LABEL_236;
          }

          v176 = v83[400];
          if (v91)
          {
            if (v176)
            {
              goto LABEL_206;
            }

            v192 = *a2;
            *(a2 + 8) = 0;
            v193 = VRTraceGetErrorLogLevelForModule();
            if (v192 == 0.0)
            {
              if (v193 < 5)
              {
                goto LABEL_231;
              }

              v202 = VRTraceErrorLogLevelToCSTR();
              v203 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_231;
              }

              *buf = 136315650;
              v252 = v202;
              v253 = 2080;
              v254 = "SchedulePkt";
              v255 = 1024;
              v256 = 489;
              v196 = v203;
              v197 = " [%s] %s:%d \t\t THROTTLING: enabled->disabled  EMPTY THROT QUEUE -> DISABLED";
            }

            else
            {
              if (v193 < 5)
              {
                goto LABEL_231;
              }

              v194 = VRTraceErrorLogLevelToCSTR();
              v195 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_231;
              }

              *buf = 136315650;
              v252 = v194;
              v253 = 2080;
              v254 = "SchedulePkt";
              v255 = 1024;
              v256 = 510;
              v196 = v195;
              v197 = " [%s] %s:%d \t\t THROTTLING: enabled->disabled  EDGE ... signalling the caller to FLUSH pending pkts in queue";
            }

            _os_log_impl(&dword_1DB56E000, v196, OS_LOG_TYPE_DEFAULT, v197, buf, 0x1Cu);
          }

          else
          {
            if (v176)
            {
              goto LABEL_211;
            }

            LOBYTE(v91) = 0;
          }

LABEL_231:
          v178 = 0;
LABEL_232:
          if (*(v83 + 1576) == 1)
          {
            *(a2 + 80) = a5;
          }

          if (v178)
          {
            v69 = *(a2 + 24);
            v178 = *(v83 + 201) > v69;
          }

LABEL_236:
          if (_MergedGlobals_10 != 1 || VRTraceGetErrorLogLevelForModule() < 8)
          {
LABEL_246:
            if (v91)
            {
              goto LABEL_247;
            }

            goto LABEL_250;
          }

          v204 = VRTraceErrorLogLevelToCSTR();
          v205 = *MEMORY[0x1E6986650];
          v206 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (!os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_246;
            }

            v207 = v83[379];
            v208 = bswap32(v83[377]);
            v209 = bswap32(*(v83 + 753)) >> 16;
            v210 = *v83;
            v211 = v83[400];
            v212 = *(v83 + 201);
            v213 = *(a2 + 24);
            if (v212 <= v213)
            {
              v214 = 78;
            }

            else
            {
              v214 = 87;
            }

            *buf = 136318210;
            v252 = v204;
            v253 = 2080;
            v254 = "SchedulePkt";
            v255 = 1024;
            v256 = 563;
            v257 = 1024;
            *v258 = v207;
            *&v258[4] = 1024;
            *&v258[6] = v208;
            *&v258[10] = 1024;
            *&v258[12] = v209;
            *&v258[16] = 1024;
            *&v258[18] = v210;
            *&v258[22] = 1024;
            *&v258[24] = v211;
            *&v258[28] = 2048;
            *&v258[30] = v212;
            *&v258[38] = 2048;
            v259 = a5;
            v260 = 2048;
            *v261 = v213;
            *&v261[8] = 1024;
            *&v261[10] = v178;
            *&v261[14] = 1024;
            *&v261[16] = v214;
            _os_log_impl(&dword_1DB56E000, v205, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  SchedulePkt: %d  %d/%d/%d rate: %d  sched: %f now: %f aud: %f  b: %d mode: %c ", buf, 0x64u);
            if (v91)
            {
              goto LABEL_247;
            }
          }

          else
          {
            if (!os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_246;
            }

            v215 = v83[379];
            v216 = bswap32(v83[377]);
            v217 = bswap32(*(v83 + 753)) >> 16;
            v218 = *v83;
            v219 = v83[400];
            v220 = *(v83 + 201);
            v221 = *(a2 + 24);
            if (v220 <= v221)
            {
              v222 = 78;
            }

            else
            {
              v222 = 87;
            }

            *buf = 136318210;
            v252 = v204;
            v253 = 2080;
            v254 = "SchedulePkt";
            v255 = 1024;
            v256 = 563;
            v257 = 1024;
            *v258 = v215;
            *&v258[4] = 1024;
            *&v258[6] = v216;
            *&v258[10] = 1024;
            *&v258[12] = v217;
            *&v258[16] = 1024;
            *&v258[18] = v218;
            *&v258[22] = 1024;
            *&v258[24] = v219;
            *&v258[28] = 2048;
            *&v258[30] = v220;
            *&v258[38] = 2048;
            v259 = a5;
            v260 = 2048;
            *v261 = v221;
            *&v261[8] = 1024;
            *&v261[10] = v178;
            *&v261[14] = 1024;
            *&v261[16] = v222;
            _os_log_debug_impl(&dword_1DB56E000, v205, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  SchedulePkt: %d  %d/%d/%d rate: %d  sched: %f now: %f aud: %f  b: %d mode: %c ", buf, 0x64u);
            if (v91)
            {
LABEL_247:
              if ((*(a2 + 8) & 1) == 0 && *a2)
              {
                v54 = ProcessThrottledPktsWithTime(a2, &v250, 0, *(a2 + 16)) + v54;
              }
            }
          }

LABEL_250:
          if (v178)
          {
            *v77 = v83;
            ++*(a2 + 32);
          }

          else
          {
            *v250 = v83;
            v250 = v90;
            v54 = (v54 + 1);
            if (v83[379] == 1)
            {
              *(a2 + 72) = *(a2 + 52) + *v83;
              *(a2 + 76) = v83[400];
            }

            v90 = v77;
          }

          v77 = v90;
          if (!v74)
          {
            goto LABEL_273;
          }
        }

        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          v142 = *(a2 + 16);
          *buf = 136316674;
          v252 = v139;
          v253 = 2080;
          v254 = "AccelerateThrottlingQueue";
          v255 = 1024;
          v256 = 218;
          v257 = 2048;
          *v258 = v121;
          *&v258[8] = 2048;
          *&v258[10] = v138;
          *&v258[18] = 2048;
          *&v258[20] = v142;
          *&v258[28] = 1024;
          *&v258[30] = v116;
          _os_log_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AccelerateThrottlingQueue: %.3f from %.3f to %.3f (%d pkts) ", buf, 0x40u);
          if (v116)
          {
            goto LABEL_160;
          }

          goto LABEL_157;
        }

LABEL_159:
        if (v116)
        {
          goto LABEL_160;
        }

        goto LABEL_157;
      }
    }

    else
    {
      v54 = 0;
    }

    v77 = a2;
    if (!v74)
    {
LABEL_273:
      active = v248;
LABEL_274:
      if (_MergedGlobals_10 != 1 || VRTraceGetErrorLogLevelForModule() < 8)
      {
        return v54;
      }

      v230 = VRTraceErrorLogLevelToCSTR();
      v231 = *MEMORY[0x1E6986650];
      v232 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v252 = v230;
          v253 = 2080;
          v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
          v255 = 1024;
          v256 = 1099;
          v257 = 1024;
          *v258 = active;
          *&v258[4] = 1024;
          *&v258[6] = v54;
          v65 = " [%s] %s:%d ActiveProbing_ProcessIncomingPacket: %d  ScheduleReleasedPkts: %d ";
          v66 = v231;
          v67 = 40;
          goto LABEL_279;
        }

        return v54;
      }

      if (!os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
      {
        return v54;
      }

      *buf = 136316162;
      v252 = v230;
      v253 = 2080;
      v254 = "Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing";
      v255 = 1024;
      v256 = 1099;
      v257 = 1024;
      *v258 = active;
      *&v258[4] = 1024;
      *&v258[6] = v54;
      v233 = " [%s] %s:%d ActiveProbing_ProcessIncomingPacket: %d  ScheduleReleasedPkts: %d ";
      v234 = v231;
      v235 = 40;
LABEL_284:
      _os_log_debug_impl(&dword_1DB56E000, v234, OS_LOG_TYPE_DEBUG, v233, buf, v235);
      return v54;
    }

    goto LABEL_90;
  }

  v58 = *a3;
  if (*a3)
  {
    do
    {
      v59 = v58;
      v58 = *(v58 + 1568);
    }

    while (v58);
    a3 = (v59 + 1568);
  }

  v60 = *(a2 + 24);
  *a3 = v249;
  v250 = (v50 + 1568);
  v54 = ProcessThrottledPktsWithTime(a2, &v250, v50, v60) + 1;
  if (_MergedGlobals_10 != 1 || VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v54;
  }

  v61 = VRTraceErrorLogLevelToCSTR();
  v62 = *MEMORY[0x1E6986650];
  v63 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      return v54;
    }

    v236 = *(a2 + 40);
    *buf = 136316674;
    v252 = v61;
    v253 = 2080;
    v254 = "ProcessThrottledPktsWithNewAudioPkt";
    v255 = 1024;
    v256 = 724;
    v257 = 1024;
    *v258 = v54;
    *&v258[4] = 2048;
    *&v258[6] = a5;
    *&v258[14] = 2048;
    *&v258[16] = v236;
    *&v258[24] = 2048;
    *&v258[26] = v60;
    v233 = " [%s] %s:%d ProcessThrottledPktsWithNewAudioPkt: Pkts: %d  now: %f   interval: %f  next_audio: %f ";
    v234 = v62;
    v235 = 64;
    goto LABEL_284;
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(a2 + 40);
    *buf = 136316674;
    v252 = v61;
    v253 = 2080;
    v254 = "ProcessThrottledPktsWithNewAudioPkt";
    v255 = 1024;
    v256 = 724;
    v257 = 1024;
    *v258 = v54;
    *&v258[4] = 2048;
    *&v258[6] = a5;
    *&v258[14] = 2048;
    *&v258[16] = v64;
    *&v258[24] = 2048;
    *&v258[26] = v60;
    v65 = " [%s] %s:%d ProcessThrottledPktsWithNewAudioPkt: Pkts: %d  now: %f   interval: %f  next_audio: %f ";
    v66 = v62;
    v67 = 64;
LABEL_279:
    _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, v65, buf, v67);
  }

  return v54;
}

uint64_t ProcessThrottledPktsWithTime(double *a1, void **a2, int *a3, double a4)
{
  v100 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a4 - a1[10] >= 0.666;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a2;
  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    while (1)
    {
      if (*(*&v9 + 1608) > a4)
      {
        goto LABEL_36;
      }

      v11 = *(*&v9 + 1568);
      *(*&v9 + 1568) = 0;
      *a1 = v11;
      --*(a1 + 8);
      *v8 = v9;
      *(a1 + 18) = *(a1 + 13) + **&v9;
      *(a1 + 19) = *(*&v9 + 1600);
      if (_MergedGlobals_10 != 1 || VRTraceGetErrorLogLevelForModule() < 8)
      {
        break;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          break;
        }

        v15 = *(*&v9 + 1516);
        v16 = bswap32(*(*&v9 + 1508));
        v17 = bswap32(*(*&v9 + 1506));
        v18 = **&v9;
        v19 = *(*&v9 + 1576);
        v20 = *a1;
        v21 = *(a1 + 8);
        v22 = *(*&v9 + 1608);
        *buf = 136317954;
        v75 = v12;
        v76 = 2080;
        v77 = "ProcessThrottledPktsWithTime";
        v78 = 1024;
        v79 = 665;
        v80 = 1024;
        v81 = v15;
        v82 = 1024;
        v83 = v16;
        v84 = 1024;
        v85 = HIWORD(v17);
        v86 = 1024;
        v87 = v18;
        v88 = 1024;
        v89 = v19;
        v90 = 2048;
        v91 = v20;
        v92 = 1024;
        v93 = v21;
        v94 = 2048;
        v95 = v22;
        v96 = 2048;
        v97 = a4;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ProcessThrottledPktsWithTime: ^^^^^^ MP %d  %d/%d/%d P: %d  pTWL: %p %d  sched: %.3f now: %.3f", buf, 0x5Eu);
        if (!v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        v46 = *(*&v9 + 1516);
        v47 = bswap32(*(*&v9 + 1508));
        v48 = bswap32(*(*&v9 + 1506));
        v49 = **&v9;
        v50 = *(*&v9 + 1576);
        v51 = *a1;
        v52 = *(a1 + 8);
        v53 = *(*&v9 + 1608);
        *buf = 136317954;
        v75 = v12;
        v76 = 2080;
        v77 = "ProcessThrottledPktsWithTime";
        v78 = 1024;
        v79 = 665;
        v80 = 1024;
        v81 = v46;
        v82 = 1024;
        v83 = v47;
        v84 = 1024;
        v85 = HIWORD(v48);
        v86 = 1024;
        v87 = v49;
        v88 = 1024;
        v89 = v50;
        v90 = 2048;
        v91 = v51;
        v92 = 1024;
        v93 = v52;
        v94 = 2048;
        v95 = v53;
        v96 = 2048;
        v97 = a4;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ProcessThrottledPktsWithTime: ^^^^^^ MP %d  %d/%d/%d P: %d  pTWL: %p %d  sched: %.3f now: %.3f", buf, 0x5Eu);
        if (!v7)
        {
          goto LABEL_28;
        }
      }

LABEL_15:
      if (*(*&v9 + 1577) == 1)
      {
        v23 = bswap32(a3[377]);
        if (!RTPInsertAFRCProbeSeqId(*&v9, v23, *(a1 + 56)))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v39 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v40 = bswap32(*(*&v9 + 1508));
              v41 = bswap32(*(*&v9 + 1506));
              v42 = **&v9;
              v43 = bswap32(a3[377]);
              v44 = bswap32(*(a3 + 753));
              v45 = *a3;
              *buf = 136317186;
              v75 = v38;
              v76 = 2080;
              v77 = "TagMPWithOpportunisticBWEProbeSeq";
              v78 = 1024;
              v79 = 618;
              v80 = 1024;
              v81 = v40;
              v82 = 1024;
              v83 = HIWORD(v41);
              v84 = 1024;
              v85 = v42;
              v86 = 1024;
              v87 = v43;
              v88 = 1024;
              v89 = HIWORD(v44);
              v90 = 1024;
              LODWORD(v91) = v45;
              _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d OpportunisticBWEProbeSeqTagging FAILED for pkt %d/%d/%d and audio pkt %d/%d/%d ", buf, 0x40u);
            }
          }

          goto LABEL_28;
        }

        a1[10] = a4;
        v24 = *MEMORY[0x1E6986638];
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v24 >= 7)
        {
          if (ErrorLogLevelForModule < 7)
          {
            goto LABEL_28;
          }

          v62 = VRTraceErrorLogLevelToCSTR();
          v63 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v64 = *(*&v9 + 1516);
          v65 = bswap32(*(*&v9 + 1508));
          v66 = bswap32(*(*&v9 + 1506));
          v67 = **&v9;
          v68 = *(*&v9 + 1576);
          v69 = *a1;
          v70 = *(a1 + 8);
          v71 = *(*&v9 + 1608);
          *buf = 136318210;
          v75 = v62;
          v76 = 2080;
          v77 = "TagMPWithOpportunisticBWEProbeSeq";
          v78 = 1024;
          v79 = 606;
          v80 = 1024;
          v81 = v64;
          v82 = 1024;
          v83 = v65;
          v84 = 1024;
          v85 = HIWORD(v66);
          v86 = 1024;
          v87 = v67;
          v88 = 1024;
          v89 = v68;
          v90 = 2048;
          v91 = v69;
          v92 = 1024;
          v93 = v70;
          v94 = 2048;
          v95 = v71;
          v96 = 2048;
          v97 = a4;
          v98 = 1024;
          v99 = v23;
          v37 = v63;
          goto LABEL_22;
        }

        if (ErrorLogLevelForModule > 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          v28 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v54 = *(*&v9 + 1516);
              v55 = bswap32(*(*&v9 + 1508));
              v56 = bswap32(*(*&v9 + 1506));
              v57 = **&v9;
              v58 = *(*&v9 + 1576);
              v59 = *a1;
              v60 = *(a1 + 8);
              v61 = *(*&v9 + 1608);
              *buf = 136318210;
              v75 = v26;
              v76 = 2080;
              v77 = "TagMPWithOpportunisticBWEProbeSeq";
              v78 = 1024;
              v79 = 612;
              v80 = 1024;
              v81 = v54;
              v82 = 1024;
              v83 = v55;
              v84 = 1024;
              v85 = HIWORD(v56);
              v86 = 1024;
              v87 = v57;
              v88 = 1024;
              v89 = v58;
              v90 = 2048;
              v91 = v59;
              v92 = 1024;
              v93 = v60;
              v94 = 2048;
              v95 = v61;
              v96 = 2048;
              v97 = a4;
              v98 = 1024;
              v99 = v23;
              _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d OpportunisticBWEProbeSeqTagging: ^^^^^^ MP %d  %d/%d/%d P: %d  pTWL: %p %d  sched: %.3f now: %.3f PROBE_id: %d ", buf, 0x64u);
            }

            goto LABEL_28;
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(*&v9 + 1516);
            v30 = bswap32(*(*&v9 + 1508));
            v31 = bswap32(*(*&v9 + 1506));
            v32 = **&v9;
            v33 = *(*&v9 + 1576);
            v34 = *a1;
            v35 = *(a1 + 8);
            v36 = *(*&v9 + 1608);
            *buf = 136318210;
            v75 = v26;
            v76 = 2080;
            v77 = "TagMPWithOpportunisticBWEProbeSeq";
            v78 = 1024;
            v79 = 612;
            v80 = 1024;
            v81 = v29;
            v82 = 1024;
            v83 = v30;
            v84 = 1024;
            v85 = HIWORD(v31);
            v86 = 1024;
            v87 = v32;
            v88 = 1024;
            v89 = v33;
            v90 = 2048;
            v91 = v34;
            v92 = 1024;
            v93 = v35;
            v94 = 2048;
            v95 = v36;
            v96 = 2048;
            v97 = a4;
            v98 = 1024;
            v99 = v23;
            v37 = v27;
LABEL_22:
            _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OpportunisticBWEProbeSeqTagging: ^^^^^^ MP %d  %d/%d/%d P: %d  pTWL: %p %d  sched: %.3f now: %.3f PROBE_id: %d ", buf, 0x64u);
          }
        }
      }

LABEL_28:
      v8 = (*&v9 + 1568);
      v10 = (v10 + 1);
      v9 = v11;
      if (v11 == 0.0)
      {
        goto LABEL_36;
      }
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  v10 = 0;
LABEL_36:
  *a2 = v8;
  return v10;
}

void Throttling_MediaQueue_SetAudioInterval(uint64_t a1, double a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(a1 + 40) = a2;
  v2 = (a1 + 40);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v2;
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "Throttling_MediaQueue_SetAudioInterval";
        v11 = 1024;
        v12 = 1114;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_Throttling_SetAudioInterval: %f", &v7, 0x26u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      Throttling_MediaQueue_SetAudioInterval_cold_1();
    }
  }
}

void Throttling_MediaQueue_SetIsIPv6(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = a2;
  if (a2)
  {
    v3 = 48;
  }

  else
  {
    v3 = 28;
  }

  *(a1 + 52) = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "Throttling_MediaQueue_SetIsIPv6";
        v11 = 1024;
        v12 = 1121;
        v13 = 1024;
        v14 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_Throttling_SetIsIPv6: %d ", &v7, 0x22u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      Throttling_MediaQueue_SetIsIPv6_cold_1();
    }
  }
}

uint64_t Throttling_MediaQueue_FlushThrottlingQueue(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = 0;
  active = ActiveProbing_FlushPendingPackets(a1, &v24);
  if (*a2)
  {
    v6 = v24;
    if (v24)
    {
      do
      {
        v7 = v6;
        v6 = *(v6 + 1568);
      }

      while (v6);
      v8 = (v7 + 1568);
    }

    else
    {
      v8 = &v24;
    }

    *buf = v8;
    v9 = ProcessThrottledPktsWithTime(a2, buf, 0, *(a2 + 16));
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 16);
  *(a2 + 16) = micro();
  if (*a2 || *(a2 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *a2;
        v14 = *(a2 + 32);
        *buf = 136316674;
        *&buf[4] = v11;
        v26 = 2080;
        v27 = "Throttling_MediaQueue_FlushThrottlingQueue";
        v28 = 1024;
        v29 = 1147;
        v30 = 2048;
        *v31 = v13;
        *&v31[8] = 1024;
        *v32 = v14;
        *&v32[4] = 1024;
        *&v32[6] = active;
        v33 = 1024;
        LODWORD(v34) = v9;
        v15 = " [%s] %s:%d \t\t *** Unexpected: Flushing the throttling queue left some MPs %p %d ; flushed (%d %d) AP/Th pkts ";
        v16 = v12;
        v17 = 56;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a2 + 16);
      *buf = 136316674;
      *&buf[4] = v18;
      v26 = 2080;
      v27 = "Throttling_MediaQueue_FlushThrottlingQueue";
      v28 = 1024;
      v29 = 1150;
      v30 = 1024;
      *v31 = active;
      *&v31[4] = 1024;
      *&v31[6] = v9;
      *v32 = 2048;
      *&v32[2] = v10;
      v33 = 2048;
      v34 = v20;
      v15 = " [%s] %s:%d \t\t *** Flushing the throttling queue removed (%d %d) AP/Th pkts; LastThrottledVideoPktTime: %.3f->%.3f ";
      v16 = v19;
      v17 = 60;
      goto LABEL_13;
    }
  }

  if (v24)
  {
    v21 = *a3;
    if (*a3)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 1568);
      }

      while (v21);
      a3 = (v22 + 1568);
    }

    *a3 = v24;
  }

  return (v9 + active);
}

float Throttling_RTP_SendRTP_SetThrottlingParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 1600) = 0;
  if (*(a1 + 1516))
  {
    *(a1 + 1576) = *(a2 + 2);
    if (*a2 == 1)
    {
      *(a1 + 1600) = *(a2 + 8);
    }
  }

  else
  {
    *(a1 + 1576) = 0;
    result = *(a2 + 20);
    *(a1 + 1616) = result;
  }

  return result;
}

uint64_t Throttling_VideoTransmitterUtil_ForceFirstProbePktSize(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 < 207 || a2 > 206)
  {
    if (a2 <= 206 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "Throttling_VideoTransmitterUtil_ForceFirstProbePktSize";
        v15 = 1024;
        v16 = 1220;
        v17 = 1024;
        v18 = a1;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t FORCE_MIN_PKT did NOT take effect: iGobBytes: %d  iPktBytes: %d ", &v11, 0x28u);
      }
    }

    return a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 207;
  }

  else
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      v7 = 207;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316418;
        v12 = v4;
        v13 = 2080;
        v14 = "Throttling_VideoTransmitterUtil_ForceFirstProbePktSize";
        v15 = 1024;
        v16 = 1217;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = 207;
        v21 = 1024;
        v22 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t FORCE_MIN_PKT org: %d new: %d gob: %d ", &v11, 0x2Eu);
      }
    }

    else
    {
      v7 = 207;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136316418;
        v12 = v4;
        v13 = 2080;
        v14 = "Throttling_VideoTransmitterUtil_ForceFirstProbePktSize";
        v15 = 1024;
        v16 = 1217;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = 207;
        v21 = 1024;
        v22 = a1;
        _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \t\t FORCE_MIN_PKT org: %d new: %d gob: %d ", &v11, 0x2Eu);
      }
    }
  }

  return v7;
}

void Throttling_VideoTransmitter_CalcThrottlingRate(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_10 == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136316162;
        v19 = v14;
        v20 = 2080;
        v21 = "Throttling_VideoTransmitter_CalcThrottlingRate";
        v22 = 1024;
        v23 = 1236;
        v24 = 1024;
        v25 = a2;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \n\t\t THROTTLING rate: Tx/Video Rate: %d/%d ", &v18, 0x28u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136316162;
      v19 = v14;
      v20 = 2080;
      v21 = "Throttling_VideoTransmitter_CalcThrottlingRate";
      v22 = 1024;
      v23 = 1236;
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = a3;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \n\t\t THROTTLING rate: Tx/Video Rate: %d/%d ", &v18, 0x28u);
    }
  }

  *a8 = a1;
  *(a8 + 1) = a4;
  *(a8 + 4) = a5;
  *(a8 + 8) = a3;
  if ((a1 & a4) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = a5;
  }

  *(a8 + 2) = 0;
  *(a8 + 12) = v17;
  *(a8 + 16) = 0;
}

void Throttling_VideoTransmitter_SetPerPktProbeSeqState(uint64_t a1, int a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 1) & 1) == 0)
  {
    v11 = 0;
    *(a1 + 2) = 0;
    goto LABEL_14;
  }

  v6 = *(a1 + 12);
  *(a1 + 2) = v6 > a2;
  if (a2)
  {
    if (*(a1 + 16) <= 206)
    {
      *(a1 + 2) = 1;
      *(a1 + 12) = v6 + 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 16);
          v21 = 136316930;
          v22 = v7;
          v23 = 2080;
          v24 = "Throttling_VideoTransmitter_SetPerPktProbeSeqState";
          v25 = 1024;
          v26 = 1306;
          v27 = 1024;
          v28 = a2;
          v29 = 1024;
          v30 = a3;
          v31 = 1024;
          v32 = v9;
          v33 = 1024;
          v34 = v10;
          v35 = 1024;
          v36 = v10 + a3;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******** Throttling_VideoTransmitter_SetPerPktProbeSeqState: [%d]: %d  count: %d  iBweSeqLen: %d->%d ", &v21, 0x3Au);
        }
      }
    }

    v11 = *(a1 + 2);
    if (v11 == 1)
    {
      *(a1 + 16) += a3;
LABEL_12:
      v11 = 1;
    }
  }

  else
  {
    if (v6 > 0)
    {
      *(a1 + 16) = a3;
      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:
  if (*(a1 + 1) == 1)
  {
    v12 = v11 ^ 1;
    if (a3 <= 206)
    {
      v12 = 0;
    }

    *(a1 + 3) = v12;
    v13 = g_iBWEstLogLevel <= 5 || v12 == 0;
    if (!v13 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 3);
          v18 = *(a1 + 2);
          v21 = 136316418;
          v22 = v14;
          v23 = 2080;
          v24 = "Throttling_VideoTransmitter_SetPerPktProbeSeqState";
          v25 = 1024;
          v26 = 1327;
          v27 = 1024;
          v28 = v17;
          v29 = 1024;
          v30 = v18;
          v31 = 1024;
          v32 = a3;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  bPotentialPktProbeSeq: %d  bPktProbeSeqEnabled: %d  iPktBytes: %d ", &v21, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 3);
        v20 = *(a1 + 2);
        v21 = 136316418;
        v22 = v14;
        v23 = 2080;
        v24 = "Throttling_VideoTransmitter_SetPerPktProbeSeqState";
        v25 = 1024;
        v26 = 1327;
        v27 = 1024;
        v28 = v19;
        v29 = 1024;
        v30 = v20;
        v31 = 1024;
        v32 = a3;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  bPotentialPktProbeSeq: %d  bPktProbeSeqEnabled: %d  iPktBytes: %d ", &v21, 0x2Eu);
      }
    }
  }

  else
  {
    *(a1 + 3) = 0;
  }
}

void Throttling_AFRC_Init(BOOL *a1)
{
  a1[12] = 0;
  *(a1 + 4) = 0;
  *a1 = 1;
  Throttling_AFRC_GetDefaults(a1);
}

void Throttling_AFRC_GetDefaults(BOOL *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Throttling", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *a1 = AppIntegerValue != 0;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986640];
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    v8 = *v5;
    if (*v4 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        *buf = 136315906;
        v32 = v6;
        v33 = 2080;
        v34 = "Throttling_AFRC_GetDefaults";
        v35 = 1024;
        v36 = 1480;
        v37 = 1024;
        v38 = v9;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Throttling: %d ", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      Throttling_AFRC_GetDefaults_cold_1();
    }
  }

  v10 = CFPreferencesGetAppIntegerValue(@"HardCodeBWEstRate", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 1) = v11;
  v12 = CFPreferencesGetAppIntegerValue(@"HardCodeTxRate", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 2) = v13;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v5;
    v16 = *v5;
    if (*v4 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 1);
        v18 = *(a1 + 2);
        *buf = 136316162;
        v32 = v14;
        v33 = 2080;
        v34 = "Throttling_AFRC_GetDefaults";
        v35 = 1024;
        v36 = 1488;
        v37 = 1024;
        v38 = v17;
        v39 = 1024;
        v40 = v18;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d dwHardCodeBWEstRate: %d \t dwHardCodeTxRate: %d ", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 1);
      v29 = *(a1 + 2);
      *buf = 136316162;
      v32 = v14;
      v33 = 2080;
      v34 = "Throttling_AFRC_GetDefaults";
      v35 = 1024;
      v36 = 1488;
      v37 = 1024;
      v38 = v28;
      v39 = 1024;
      v40 = v29;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d dwHardCodeBWEstRate: %d \t dwHardCodeTxRate: %d ", buf, 0x28u);
    }
  }

  v19 = CFPreferencesGetAppIntegerValue(@"ThrottlingSendLog", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    v20 = v19;
  }

  else
  {
    v20 = _MergedGlobals_10 != 0;
  }

  _MergedGlobals_10 = v20;
  v21 = CFPreferencesGetAppIntegerValue(@"ThrottlingRecvLog", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    v22 = v21;
  }

  else
  {
    v22 = byte_1EDBDA909 != 0;
  }

  byte_1EDBDA909 = v22;
  v23 = CFPreferencesGetAppIntegerValue(@"ThrottlingProbeSeqLog", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    v24 = v23;
  }

  else
  {
    v24 = g_bThrottlingProbeSeqLog != 0;
  }

  g_bThrottlingProbeSeqLog = v24;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *v5;
    v27 = *v5;
    if (*v4 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v32 = v25;
        v33 = 2080;
        v34 = "Throttling_AFRC_GetDefaults";
        v35 = 1024;
        v36 = 1500;
        v37 = 1024;
        v38 = _MergedGlobals_10;
        v39 = 1024;
        v40 = byte_1EDBDA909;
        v41 = 1024;
        v42 = g_bThrottlingProbeSeqLog;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d g_bThrottlingSendLog: %d  g_bThrottlingRecvLog: %d  g_bThrottlingProbeSeqLog: %d ", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      Throttling_AFRC_GetDefaults_cold_2();
    }
  }
}

uint64_t Throttling_AFRC_IsInThrottlingMode(_BYTE *a1, unsigned int a2)
{
  v2 = (a2 >> 5 < 0xC35) & *a1;
  a1[12] = (a2 >> 5 < 0xC35) & *a1;
  return v2;
}

uint64_t Throttling_AFRC_OverrideRxEstimate(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 4);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

void _VCExperimentManager_ReportExperimentPayload(uint64_t a1, CFDictionaryRef theDict)
{
  v30 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    if (*(a1 + 72))
    {
      v3 = *MEMORY[0x1E695E480];
      Count = CFDictionaryGetCount(theDict);
      Mutable = CFDictionaryCreateMutable(v3, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = CFDictionaryGetCount(theDict);
        v8 = malloc_type_malloc(8 * v7, 0xC0040B8AA526DuLL);
        v9 = malloc_type_malloc(8 * v7, 0xC0040B8AA526DuLL);
        v10 = v9;
        if (v8 && v9)
        {
          v21 = v9;
          CFDictionaryGetKeysAndValues(theDict, v8, v9);
          if (v7 >= 1)
          {
            v12 = v8;
            v11 = v10;
            do
            {
              v13 = *v12;
              v14 = CFStringCreateWithFormat(v3, 0, @"%@%@", @"EXP_", *v12);
              if (v14)
              {
                v15 = v14;
                CFDictionaryAddValue(v6, v14, *v11);
                CFRelease(v15);
              }

              else if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v16 = VRTraceErrorLogLevelToCSTR();
                v17 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
                  *buf = 136315906;
                  v23 = v16;
                  v24 = 2080;
                  v25 = "_VCExperimentManager_ReportExperimentPayload";
                  v26 = 1024;
                  v27 = 314;
                  v28 = 2080;
                  v29 = CStringPtr;
                  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Failed to report experiment name=%s", buf, 0x26u);
                }
              }

              ++v11;
              ++v12;
              --v7;
            }

            while (v7);
          }

          free(v8);
          free(v21);
          reportingGenericEvent();
          CFRelease(v6);
        }

        else
        {
          CFRelease(v6);
          free(v8);
          free(v10);
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v23 = v19;
              v24 = 2080;
              v25 = "_VCExperimentManager_ReportExperimentPayload";
              v26 = 1024;
              v27 = 306;
              _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Failed to report experiment payload. Updated payload could not be created.", buf, 0x1Cu);
            }
          }
        }
      }

      else
      {
        _VCExperimentManager_ReportExperimentPayload_cold_1();
      }
    }

    else
    {
      _VCExperimentManager_ReportExperimentPayload_cold_2();
    }
  }

  else
  {
    _VCExperimentManager_ReportExperimentPayload_cold_3();
  }
}

uint64_t VCExperimentManager_GetExperimentGroup(uint64_t a1, CFStringRef theString, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!theString || !CFStringGetLength(theString))
  {
    VCExperimentManager_GetExperimentGroup_cold_8();
    return v20;
  }

  if (!a3)
  {
    VCExperimentManager_GetExperimentGroup_cold_7();
    return v20;
  }

  if (!a1)
  {
    VCExperimentManager_GetExperimentGroup_cold_6();
    return v20;
  }

  pthread_mutex_lock((a1 + 8));
  v6 = *(a1 + 80);
  if (!v6)
  {
    VCExperimentManager_GetExperimentGroup_cold_5();
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(v6, theString);
  if (!Value)
  {
    VCExperimentManager_GetExperimentGroup_cold_4();
    goto LABEL_28;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    v10 = CFGetTypeID(v8);
    if (v10 != CFStringGetTypeID())
    {
      VCExperimentManager_GetExperimentGroup_cold_1();
      goto LABEL_28;
    }
  }

  v11 = CFGetTypeID(v8);
  if (v11 == CFNumberGetTypeID())
  {
    v19 = -1431655766;
    if (CFNumberGetValue(v8, kCFNumberIntType, &v19))
    {
      v12 = 0;
      *a3 = v19;
LABEL_18:
      pthread_mutex_unlock((a1 + 8));
      return v12;
    }

    VCExperimentManager_GetExperimentGroup_cold_3();
LABEL_28:
    v12 = v20;
    goto LABEL_18;
  }

  v13 = CFGetTypeID(v8);
  if (v13 != CFStringGetTypeID())
  {
    v12 = 0;
    goto LABEL_18;
  }

  v14 = CFLocaleCopyCurrent();
  v15 = *MEMORY[0x1E695E480];
  v16 = CFNumberFormatterCreate(*MEMORY[0x1E695E480], v14, kCFNumberFormatterDecimalStyle);
  NumberFromString = CFNumberFormatterCreateNumberFromString(v15, v16, v8, 0, 1uLL);
  CFRelease(v14);
  CFRelease(v16);
  v19 = -1431655766;
  if (CFNumberGetValue(NumberFromString, kCFNumberIntType, &v19))
  {
    v12 = 0;
    *a3 = v19;
  }

  else
  {
    VCExperimentManager_GetExperimentGroup_cold_2();
    v12 = v20;
  }

  pthread_mutex_unlock((a1 + 8));
  if (NumberFromString)
  {
    CFRelease(NumberFromString);
  }

  return v12;
}

uint64_t VCExperimentManager_OverrideExperimentGroup(uint64_t a1, const __CFString *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  values = v6;
  if (!a2 || !CFStringGetLength(a2))
  {
    VCExperimentManager_OverrideExperimentGroup_cold_5();
    goto LABEL_15;
  }

  if (!a1)
  {
    VCExperimentManager_OverrideExperimentGroup_cold_4();
LABEL_15:
    v12 = v17;
    v11 = v18;
    if (!v17)
    {
      return v11;
    }

    goto LABEL_11;
  }

  pthread_mutex_lock((a1 + 8));
  v7 = *(a1 + 80);
  if (!v7)
  {
    VCExperimentManager_OverrideExperimentGroup_cold_3();
LABEL_20:
    v11 = v17;
    goto LABEL_10;
  }

  if (!CFDictionaryGetValue(*(a1 + 80), a2))
  {
    VCExperimentManager_OverrideExperimentGroup_cold_2();
    goto LABEL_20;
  }

  CFDictionarySetValue(v7, a2, v6);
  MutableCopy = CFStringCreateMutableCopy(v5, 0, @"OVR_");
  cf = MutableCopy;
  if (!MutableCopy)
  {
    VCExperimentManager_OverrideExperimentGroup_cold_1(&v17);
    goto LABEL_20;
  }

  CFStringAppend(MutableCopy, a2);
  v9 = CFDictionaryCreate(v5, &cf, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v9)
  {
    v10 = v9;
    _VCExperimentManager_ReportExperimentPayload(a1, v9);
    CFRelease(v10);
  }

  CFRelease(cf);
  v11 = 0;
LABEL_10:
  pthread_mutex_unlock((a1 + 8));
  v12 = values;
  if (values)
  {
LABEL_11:
    CFRelease(v12);
  }

  return v11;
}

const char *OUTLINED_FUNCTION_13_14()
{

  return CFStringGetCStringPtr(v0, 0x8000100u);
}

uint64_t DTLS_SocketRead(uint64_t a1, void *a2, int64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 424);
  Length = CFDataGetLength(v6);
  v8 = *a3;
  if (*a3 > Length)
  {
    memset(__b, 170, sizeof(__b));
    if (*(a1 + 352) == 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136316162;
          *&v15[4] = v9;
          *&v15[12] = 2080;
          *&v15[14] = "DTLS_SocketRead";
          v16 = 1024;
          v17 = 119;
          v18 = 1024;
          v19 = v8;
          v20 = 1024;
          v21 = Length;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_SocketRead something terrible happened! %d wanted %d have", v15, 0x28u);
        }
      }
    }

    else
    {
      pthread_mutex_lock((a1 + 448));
      v11 = *(a1 + 440);
      if ((v11 || (*v15 = xmmword_1DBD49F20, pthread_cond_timedwait_relative_np((a1 + 512), (a1 + 448), v15), (v11 = *(a1 + 440)) != 0)) && *(v11 + 2052) < 2049)
      {
        __memcpy_chk();
        v12 = *(v11 + 2052);
        *(a1 + 440) = *(v11 + 2056);
        free(v11);
        pthread_mutex_unlock((a1 + 448));
        if (v12)
        {
          CFDataAppendBytes(v6, __b, v12);
          Length = CFDataGetLength(v6);
        }
      }

      else
      {
        pthread_mutex_unlock((a1 + 448));
      }
    }
  }

  if (Length >= v8)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    memmove(a2, MutableBytePtr, v8);
    v24.location = 0;
    v24.length = v8;
    CFDataDeleteBytes(v6, v24);
    return 0;
  }

  else
  {
    *a3 = 0;
    return 4294957493;
  }
}

uint64_t DTLS_SocketWrite(uint64_t a1, const void *a2, size_t *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 12);
  v7 = *(a1 + 52);
  v8 = *(a1 + 188);
  v59 = *(a1 + 172);
  v60 = v8;
  v61 = *(a1 + 204);
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  memset(v56, 170, sizeof(v56));
  v55 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 352) == 2)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 352) == 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = 3;
  }

  if (v7)
  {
    v22 = 28;
    v11 = IPPORTToSA6();
  }

  else
  {
    v22 = 16;
    v11 = IPPORTToSA();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v54 = 0;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v12 = *(a1 + 8);
  v33[0] = v10;
  v33[1] = v12;
  HIDWORD(v42) = v9;
  BYTE1(v44) = 1;
  v13 = VTP_Sendto(*a1, a2, *a3, 0, v11, v22, v33);
  v14 = v13;
  if (v13 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        DTLS_SocketWrite_cold_1(v18, a3, v19);
      }
    }

    v17 = 0;
  }

  else
  {
    if (v13 >= *a3)
    {
      result = 0;
      v17 = v14;
      goto LABEL_22;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v21 = *a3;
        *buf = 136316162;
        v24 = v15;
        v25 = 2080;
        v26 = "DTLS_SocketWrite";
        v27 = 1024;
        v28 = 190;
        v29 = 1024;
        v30 = v14;
        v31 = 1024;
        v32 = v21;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d SECURETRANSPORT WRITE TOO FEW BYTES (%d of %d bytes)...", buf, 0x28u);
      }
    }

    v17 = v14;
  }

  result = 4294957493;
LABEL_22:
  *a3 = v17;
  return result;
}

uint64_t DTLS_Create(uint64_t *a1, int a2, char a3, int a4, int a5, const void *a6, const void *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v14 = 2149777411;
  v15 = malloc_type_calloc(1uLL, 0x268uLL, 0x106004055F88EB1uLL);
  if (v15)
  {
    v16 = v15;
    Handle = CreateHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      return 2149777413;
    }

    else
    {
      v33.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v33.__opaque = 0xAAAAAAAAAAAAAAAALL;
      if (!pthread_mutexattr_init(&v33))
      {
        pthread_mutexattr_settype(&v33, 2);
        pthread_mutex_init((v16 + 360), &v33);
        pthread_mutexattr_destroy(&v33);
      }

      pthread_mutex_init(v16 + 7, 0);
      pthread_cond_init((v16 + 512), 0);
      v18 = *MEMORY[0x1E695E480];
      *(v16 + 53) = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      *(v16 + 568) = 0u;
      *(v16 + 73) = a6;
      if (a6)
      {
        CFRetain(a6);
        *(v16 + 74) = SecCertificateCreateWithBytes();
        *(v16 + 75) = SecCertificateCreateWithBytes();
        v19 = SecCertificateCreateWithBytes();
        *(v16 + 76) = v19;
        values = *(v16 + 74);
        *v26 = *(v16 + 73);
        *&v26[8] = v19;
        *&v26[16] = *(v16 + 75);
        *(v16 + 72) = CFArrayCreate(v18, &values, 1, 0);
        *(v16 + 71) = CFArrayCreate(v18, v26, 3, 0);
      }

      *v16 = a2;
      *(v16 + 1) = a4;
      v16[16] = a3;
      *(v16 + 2) = a5;
      *(v16 + 3) = 0;
      if (a7)
      {
        memcpy(v16 + 24, a7, 0x140uLL);
      }

      *(v16 + 54) = 20;
      LOBYTE(values) = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"dtlsHandshakeTimeout", @"com.apple.VideoConference", &values);
      if (values)
      {
        v21 = AppIntegerValue;
        if ((AppIntegerValue - 61) >= 0xFFFFFFFFFFFFFFC4)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            v24 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *v26 = 136316162;
                *&v26[4] = v22;
                *&v26[12] = 2080;
                *&v26[14] = "DTLS_Create";
                *&v26[22] = 1024;
                v27 = 284;
                v28 = 1024;
                v29 = v21;
                v30 = 1024;
                v31 = a4;
                _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS timeout: set via preferences to %d seconds for call (%d)", v26, 0x28u);
              }
            }

            else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *v26 = 136316162;
              *&v26[4] = v22;
              *&v26[12] = 2080;
              *&v26[14] = "DTLS_Create";
              *&v26[22] = 1024;
              v27 = 284;
              v28 = 1024;
              v29 = v21;
              v30 = 1024;
              v31 = a4;
              _os_log_debug_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEBUG, " [%s] %s:%d DTLS timeout: set via preferences to %d seconds for call (%d)", v26, 0x28u);
            }
          }

          *(v16 + 54) = v21;
        }
      }

      return 0;
    }
  }

  return v14;
}

uint64_t DTLS_Cleanup(int a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149777410;
  }

  v3 = v2;
  SSLClose(*(v2 + 344));
  CheckOutHandleDebug();
  _SSLDisposeContext();
  *(v3 + 344) = 0;
  while (1)
  {
    v4 = *(v3 + 440);
    if (!v4)
    {
      break;
    }

    *(v3 + 440) = v4[257];
    free(v4);
  }

  v5 = *(v3 + 608);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 608) = 0;
  }

  v6 = *(v3 + 600);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 600) = 0;
  }

  v7 = *(v3 + 592);
  if (v7)
  {
    CFRelease(v7);
    *(v3 + 592) = 0;
  }

  v8 = *(v3 + 568);
  if (v8)
  {
    CFRelease(v8);
    *(v3 + 568) = 0;
  }

  v9 = *(v3 + 576);
  if (v9)
  {
    CFRelease(v9);
    *(v3 + 576) = 0;
  }

  v10 = *(v3 + 584);
  if (v10)
  {
    CFRelease(v10);
    *(v3 + 584) = 0;
  }

  v11 = *(v3 + 560);
  if (v11)
  {
    CFRelease(v11);
    *(v3 + 560) = 0;
  }

  v12 = *(v3 + 424);
  if (v12)
  {
    CFRelease(v12);
    *(v3 + 424) = 0;
  }

  pthread_mutex_destroy((v3 + 360));
  pthread_mutex_destroy((v3 + 448));
  pthread_cond_destroy((v3 + 512));
  free(v3);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 0;
  }

  v13 = VRTraceErrorLogLevelToCSTR();
  v14 = *MEMORY[0x1E6986650];
  v15 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v17 = 136315906;
      v18 = v13;
      v19 = 2080;
      v20 = "DTLS_Cleanup";
      v21 = 1024;
      v22 = 325;
      v23 = 1024;
      v24 = a1;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_Cleanup done on handle %d", &v17, 0x22u);
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      DTLS_Cleanup_cold_1(v13);
      return 0;
    }
  }

  return result;
}

uint64_t DTLS_Handshake(uint64_t a1, CFErrorRef *a2, uint64_t a3)
{
  *&v38[5] = *MEMORY[0x1E69E9840];
  v5 = 2149777460;
  v6 = CheckInHandleDebug();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      *a2 = 0;
    }

    userInfoValues = 0;
    v29 = *MEMORY[0x1E695E650];
    if (_SSLNewDatagramContext())
    {
      if (a2)
      {
        userInfoValues = @"No datagram context available";
        v8 = 1;
        v9 = 1;
LABEL_14:
        *a2 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DTLS", v8, &v29, &userInfoValues, 1);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (SSLSetIOFuncs(*(v7 + 344), DTLS_SocketRead, DTLS_SocketWrite))
    {
      if (a2)
      {
        userInfoValues = @"Could not set I/O functions";
        v9 = 1;
        v8 = 2;
        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (SSLSetConnection(*(v7 + 344), v7))
    {
      if (a2)
      {
        userInfoValues = @"Could not set connection";
        v9 = 1;
        v8 = 3;
        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (*(v7 + 576))
    {
      if (_SSLSetTrustedRoots())
      {
        if (a2)
        {
          userInfoValues = @"Could not set root certificates";
          v9 = 1;
          v8 = 5;
          goto LABEL_14;
        }

        goto LABEL_34;
      }

      v10 = *(v7 + 568);
      if (v10)
      {
        if (SSLSetCertificate(*(v7 + 344), v10))
        {
          if (a2)
          {
            userInfoValues = @"Could not set certificate array";
            v9 = 1;
            v8 = 7;
            goto LABEL_14;
          }

          goto LABEL_34;
        }

        if (SSLSetMaxDatagramRecordSize(*(v7 + 344), 0x4AAuLL))
        {
          if (a2)
          {
            userInfoValues = @"Could not set max datagram record size";
            v9 = 1;
            v8 = 8;
            goto LABEL_14;
          }

          goto LABEL_34;
        }

        if (*(v7 + 16) == 1 && SSLSetClientSideAuthenticate(*(v7 + 344), kAlwaysAuthenticate))
        {
          if (a2)
          {
            userInfoValues = @"Could not enable client authentication";
            v9 = 1;
            v8 = 9;
            goto LABEL_14;
          }

LABEL_34:
          v9 = 1;
          goto LABEL_35;
        }

        v23 = 100 * *(v7 + 432);
        v24 = (v7 + 352);
        *(v7 + 352) = 1;
        do
        {
          v25 = SSLHandshake(*(v7 + 344));
          v9 = v25;
          if (v23 < 2)
          {
            break;
          }

          --v23;
        }

        while (v25 == -9803);
        if (v25 || SSLGetSessionState(*(v7 + 344), (v7 + 352)))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = *v24;
              *buf = 136316162;
              v32 = v26;
              v33 = 2080;
              v34 = "DTLS_Handshake";
              v35 = 1024;
              v36 = 445;
              v37 = 1024;
              *v38 = v9;
              v38[2] = 1024;
              *&v38[3] = v28;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SECURETRANSPORT %d %d", buf, 0x28u);
            }
          }

          *v24 = 4;
          if (a2)
          {
            userInfoValues = @"Handshake failed";
            v8 = 10;
            goto LABEL_14;
          }

LABEL_35:
          if (a3)
          {
            v11 = (*(a3 + 16))(a3, a2, *(v7 + 344));
            if (v11)
            {
              v5 = 0;
            }

            else
            {
              v5 = 2149777460;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              v14 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] != 1)
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  DTLS_Handshake_cold_1(v12, v11 == 0, v13);
                }

                goto LABEL_55;
              }

              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = "OK";
                *buf = 136315906;
                v32 = v12;
                v33 = 2080;
                if (!v11)
                {
                  v15 = "NO";
                }

                v34 = "DTLS_Handshake";
                v35 = 1024;
                v36 = 463;
                v37 = 2080;
                *v38 = v15;
                v16 = " [%s] %s:%d SECURETRANSPORT SETUP %s...";
                v17 = v13;
                v18 = 38;
                goto LABEL_50;
              }
            }
          }

          else if (v9 && VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            v21 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] != 1)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                DTLS_Handshake_cold_2(v19);
              }

              goto LABEL_55;
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v32 = v19;
              v33 = 2080;
              v34 = "DTLS_Handshake";
              v35 = 1024;
              v36 = 466;
              v16 = " [%s] %s:%d SECURETRANSPORT FAILED...";
              v17 = v20;
              v18 = 28;
LABEL_50:
              _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
            }
          }

LABEL_55:
          CheckOutHandleDebug();
          return v5;
        }
      }

      else if (a2)
      {
        v9 = 0;
        userInfoValues = @"No certificate array available";
        v8 = 6;
        goto LABEL_14;
      }
    }

    else if (a2)
    {
      v9 = 0;
      userInfoValues = @"No root certificates available";
      v8 = 4;
      goto LABEL_14;
    }

    v9 = 0;
    goto LABEL_35;
  }

  return 2149777410;
}

uint64_t DTLS_UpdateHandshake(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = 2149777412;
  if (a2)
  {
    v7 = CheckInHandleDebug();
    if (v7)
    {
      v8 = v7;
      if (*(v7 + 4) == a4 && a3 <= 0x800 && *(v7 + 352) >= 1)
      {
        v9 = malloc_type_malloc(0x810uLL, 0x1020040DC7F7759uLL);
        if (v9)
        {
          v10 = v9;
          __memcpy_chk();
          v10[513] = a3;
          *(v10 + 257) = 0;
          pthread_mutex_lock((v8 + 448));
          v11 = *(v8 + 440);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *(v11 + 2056);
            }

            while (v11);
            v13 = (v12 + 2056);
          }

          else
          {
            v13 = (v8 + 440);
          }

          *v13 = v10;
          pthread_cond_signal((v8 + 512));
          pthread_mutex_unlock((v8 + 448));
          if (*(v8 + 352) == 2)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v19 = 136315650;
                v20 = v16;
                v21 = 2080;
                v22 = "DTLS_UpdateHandshake";
                v23 = 1024;
                v24 = 514;
                _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_UpdateHandshake:: process late incoming handshake packet...", &v19, 0x1Cu);
              }
            }

            *(v8 + 352) = 1;
            SSLHandshake(*(v8 + 344));
            v4 = 0;
            *(v8 + 352) = 2;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 2149777411;
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315650;
          v20 = v14;
          v21 = 2080;
          v22 = "DTLS_UpdateHandshake";
          v23 = 1024;
          v24 = 523;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_UpdateHandshake invalid incoming handshake packet", &v19, 0x1Cu);
        }
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2149777410;
    }
  }

  return v4;
}

BOOL DTLS_IsConnected()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 352) == 2;
  CheckOutHandleDebug();
  return v1;
}

uint64_t DTLS_Read(uint64_t a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  dataPointerOut = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  processed = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v9 = 2149777412;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2149777410;
  }

  v11 = v10;
  if (*(v10 + 352) == 2)
  {
    pthread_mutex_lock((v10 + 360));
    if (CMBlockBufferGetDataPointer(a2, 0, 0, &totalLengthOut, &dataPointerOut))
    {
      DTLS_Read_cold_1();
    }

    else
    {
      Length = CFDataGetLength(*(v11 + 424));
      if (Length)
      {
        v32.length = Length;
        v32.location = 0;
        CFDataDeleteBytes(*(v11 + 424), v32);
      }

      CFDataAppendBytes(*(v11 + 424), dataPointerOut, totalLengthOut);
      if (CMBlockBufferCreateWithMemoryBlock(a4, 0, totalLengthOut, a5, 0, 0, totalLengthOut, 1u, &theBuffer))
      {
        DTLS_Read_cold_2();
      }

      else if (CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut))
      {
        DTLS_Read_cold_3();
      }

      else
      {
        if (!SSLRead(*(v11 + 344), dataPointerOut, totalLengthOut, &processed))
        {
          v13 = 0;
          goto LABEL_12;
        }

        DTLS_Read_cold_4();
      }
    }

    v13 = *buf;
LABEL_12:
    pthread_mutex_unlock((v11 + 360));
    CheckOutHandleDebug();
    if (a3 && !v13)
    {
      if (processed == totalLengthOut)
      {
        v13 = 0;
        *a3 = CFRetain(theBuffer);
      }

      else
      {
        v13 = CMBlockBufferCreateWithBufferReference(a4, theBuffer, 0, processed, 0, a3);
      }
    }

    if (theBuffer)
    {
      CFRelease(theBuffer);
      theBuffer = 0;
    }

    if (v13 < 0 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v16;
        v25 = 2080;
        v26 = "DTLS_Read";
        v27 = 1024;
        v28 = 606;
        v29 = 1024;
        v30 = v13;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_Read failed with %d", buf, 0x22u);
      }
    }

    if (v13)
    {
      return 2149777412;
    }

    else
    {
      return 0;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v14;
      v25 = 2080;
      v26 = "DTLS_Read";
      v27 = 1024;
      v28 = 565;
      v29 = 1024;
      v30 = -9803;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_Read failed with %d", buf, 0x22u);
    }
  }

  CheckOutHandleDebug();
  return v9;
}

uint64_t DTLS_Write(uint64_t a1, const void *a2, size_t a3, size_t *a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = 2149777412;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2149777410;
  }

  v11 = v10;
  if (*(v10 + 352) == 2)
  {
    pthread_mutex_lock((v10 + 360));
    *(v11 + 12) = a5;
    v12 = SSLWrite(*(v11 + 344), a2, a3, a4);
    *(v11 + 12) = 0;
    pthread_mutex_unlock((v11 + 360));
    CheckOutHandleDebug();
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    CheckOutHandleDebug();
    v12 = -9803;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = "DTLS_Write";
      v20 = 1024;
      v21 = 635;
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DTLS_Write failed with %d", &v16, 0x22u);
    }
  }

  return v9;
}

void HandleWRMEvent(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315906;
      *&v16[4] = v4;
      v17 = 2080;
      v18 = "HandleWRMEvent";
      v19 = 1024;
      v20 = 56;
      v21 = 2048;
      v22 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): Handling a WRMEvent.", v16, 0x26u);
    }
  }

  uint64 = xpc_dictionary_get_uint64(a1, "kMessageId");
  if (uint64 > 1305)
  {
    if (uint64 == 1306)
    {
      v13 = a2;
      v14 = 1;
    }

    else
    {
      if (uint64 != 1307)
      {
LABEL_15:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            HandleWRMEvent_cold_1();
          }
        }

        return;
      }

      v13 = a2;
      v14 = 0;
    }

    [v13 setPreWarmState:v14];
    value = xpc_dictionary_get_value(a1, "kMessageArgs");
    v10 = a2;
    v12 = 1;
LABEL_22:
    [v10 processWRMCoexMetrics:value isAlertedMode:v12];
    return;
  }

  if (uint64 != 1102)
  {
    if (uint64 == 1303)
    {
      v7 = xpc_dictionary_get_value(a1, "kMessageArgs");
      v8 = v7;
      if (v7)
      {
        v9 = xpc_dictionary_get_value(v7, "kWRMApplicationTypeList");
        if (v9)
        {
          [a2 processNotificationList:v9];
        }
      }

      v10 = a2;
      value = v8;
      v12 = 0;
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v15 = xpc_dictionary_get_value(a1, "kMessageArgs");
  if (xpc_dictionary_get_value(v15, "kWRMAVConferenceMetricsConfig_PeriodicReportInterval"))
  {
    *v16 = xpc_dictionary_get_uint64(v15, "kWRMAVConferenceMetricsConfig_PeriodicReportInterval");
    [a2 setConfiguration:v16];
  }
}

uint64_t VCMaxUDPPayloadSize(int a1, int a2)
{
  if (a2)
  {
    v2 = -40;
  }

  else
  {
    v2 = -20;
  }

  v3 = a1 + v2 - 8;
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t VCGetVTPTrafficClassForVCTrafficClass(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_1DBD4AB70[a1 - 1];
  }
}

uint64_t VCGetVCTrafficClassForVTPTrafficClass(int a1)
{
  if (a1 > 699)
  {
    if (a1 != 700)
    {
      if (a1 == 800)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a1)
    {
      return a1 == 200;
    }

    return 2;
  }
}

uint64_t VCCloseSocketIfValid(uint64_t result)
{
  if (result != -1)
  {
    return close(result);
  }

  return result;
}

uint64_t VCCloseVFDIfValid(uint64_t a1)
{
  if (a1 != -1)
  {
    return VTP_Close(a1);
  }

  return a1;
}

uint64_t VCGetVCPacketWithVTPPacket(uint64_t a1, void *a2)
{
  VCPacketInitialize(a2);
  v4 = *(a1 + 520);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  *(a2 + 9) = *(a1 + 492);
  if (*(a1 + 352) == 1)
  {
    *(a2 + 35) = *(a1 + 388);
    v5 = *(a1 + 384);
    *(a2 + 34) = v5;
    memcpy(a2 + 10, (a1 + 360), 2 * v5);
    *(a2 + 36) = *(a1 + 390);
    a2[5] = *(a1 + 392);
    *(a2 + 48) = *(a1 + 417);
    *(a2 + 137) = *(a1 + 436);
  }

  else
  {
    *(a2 + 17) = 0;
  }

  a2[16] = *a1;
  *(a2 + 136) = *(a1 + 328);
  *(a2 + 138) = *(a1 + 495);
  *(a2 + 35) = *(a1 + 512);
  a2[11] = *(a1 + 200);
  result = VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(a1 + 360);
  a2[13] = result;
  *(a2 + 96) = *(a1 + 197);
  return result;
}

uint64_t VCCreateVFDForIDS(int a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    VCCreateVFDForIDS_cold_4();
    return v9;
  }

  v5 = VTP_SocketForIDS();
  if (v5 == -1)
  {
    VCCreateVFDForIDS_cold_3();
    return v9;
  }

  v6 = v5;
  if (VTP_SetSocketMode(v5, 2) == -1)
  {
    VCCreateVFDForIDS_cold_2();
LABEL_12:
    v7 = v9;
    VTP_Close(v6);
    return v7;
  }

  if (VTP_SetPktType(v6, a1) == -1)
  {
    VCCreateVFDForIDS_cold_1();
    goto LABEL_12;
  }

  v7 = 0;
  *a3 = v6;
  return v7;
}

uint64_t _VCWRSFECDecoder_IsRecoverable(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136316162;
      v31 = v11;
      v32 = 2080;
      v33 = "_VCWRSFECDecoder_IsRecoverable";
      v34 = 1024;
      v35 = 179;
      v36 = 2048;
      v37 = a1;
      v38 = 1024;
      LODWORD(v39) = a2;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCWRSFECDecoder[%p]: Max delay=%d", &v30, 0x2Cu);
    }
  }

  if (a3 <= a4)
  {
    if (!a3)
    {
      return 0;
    }

LABEL_17:
    v13 = 0;
    *a5 = 1;
    return v13;
  }

  v13 = 2152529993;
  v14 = *(a1 + 24) - 1;
  if (v14 != a2)
  {
    if (v14 > a2)
    {
      return v13;
    }

    goto LABEL_17;
  }

  v15 = VCWRSQueue_GetRearIndex(v10) - a2;
  v16 = v15 + VCWRSQueue_GetCapacity(v10);
  Capacity = VCWRSQueue_GetCapacity(v10);
  Element = VCWRSQueue_GetElement(v10, v16 % Capacity);
  RearIndex = VCWRSQueue_GetRearIndex(v10);
  v20 = RearIndex + VCWRSQueue_GetCapacity(v10);
  v21 = VCWRSQueue_GetCapacity(v10);
  v22 = VCWRSQueue_GetElement(v10, v20 % v21);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      FrameSequentialNumber = VCWRSFrame_GetFrameSequentialNumber(Element);
      v26 = VCWRSFrame_GetFrameSequentialNumber(v22);
      NumberOfLostData = VCWRSFrame_GetNumberOfLostData(v22);
      v30 = 136317186;
      v28 = "BUFFER_FULL";
      v31 = v23;
      v33 = "_VCWRSFECDecoder_IsRecoverable";
      v32 = 2080;
      v34 = 1024;
      if (!NumberOfLostData)
      {
        v28 = "BUFFER_FULL_LAST_FRAME_OKAY";
      }

      v35 = 187;
      v36 = 2048;
      v37 = a1;
      v38 = 2048;
      v39 = FrameSequentialNumber;
      v40 = 2048;
      v41 = v26;
      v42 = 1024;
      v43 = a3;
      v44 = 1024;
      v45 = a4;
      v46 = 2080;
      v47 = v28;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCWRSFECDecoder[%p]: Decode error: Max RX window buffer reached - not recoverable. <first frame=%llu, last frame=%llu>: Reason: totalLostDataPackets=%hu > totalReceivedParityPackets=%hu, decode result=%s", &v30, 0x50u);
    }
  }

  if (VCWRSFrame_GetNumberOfLostData(v22))
  {
    return 2152529994;
  }

  else
  {
    return 2152529996;
  }
}

uint64_t VCWRSFECDecoder_Create(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCWRSFECDecoder_Create_cold_5();
    return v12;
  }

  v3 = a3;
  if (a3 >= 2)
  {
    VCWRSFECDecoder_Create_cold_4(a3, &v12);
    return v12;
  }

  if (_MergedGlobals_11 != -1)
  {
    VCWRSFECDecoder_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCWRSFECDecoder_Create_cold_3();
    return v12;
  }

  v6 = Instance;
  *(Instance + 24) = v3;
  v7 = VCWRSQueue_Create((2 * v3 - 1), (Instance + 16));
  if (v7)
  {
    v10 = v7;
    VCWRSFECDecoder_Create_cold_2(v7, v6);
  }

  else
  {
    *a2 = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316418;
        v13 = v8;
        v14 = 2080;
        v15 = "VCWRSFECDecoder_Create";
        v16 = 1024;
        v17 = 434;
        v18 = 2048;
        v19 = v6;
        v20 = 1024;
        v21 = v3;
        v22 = 1024;
        v23 = (2 * v3 - 1);
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCWRSFECDecoder[%p] was created with slidingWindowSize=%u,queueCapacity=%u", &v12, 0x32u);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t _VCWRSFECDecoderClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCWRS_Decode(uint64_t a1, uint64_t a2)
{
  v201 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 5267496) = -1;
    v158 = a1 + 5267496;
    *(a1 + 5267500) = 0;
    v3 = *(a1 + 16);
    Size = *(a1 + 24);
    __src[7] = 0u;
    *(&__src[6] + 6) = 0u;
    *(&__src[5] + 6) = 0u;
    *(&__src[4] + 6) = 0u;
    *(&__src[3] + 6) = 0u;
    *(&__src[2] + 6) = 0u;
    *(&__src[1] + 6) = 0u;
    *(__src + 6) = 0u;
    qmemcpy(__src, "rear [", 6);
    if (VCWRSQueue_GetSize(v3) < Size)
    {
      Size = VCWRSQueue_GetSize(v3);
    }

    v182 = a1;
    RearIndex = VCWRSQueue_GetRearIndex(v3);
    Capacity = VCWRSQueue_GetCapacity(v3);
    v7 = VCWRSQueue_GetCapacity(v3);
    if (Size)
    {
      v180 = 0;
      v179 = 0;
      FrameIndex = (RearIndex - Size + Capacity + 1) % v7;
      v9 = Size + 1;
      v181 = -1;
      while (1)
      {
        memset(buf, 0, 128);
        Element = VCWRSQueue_GetElement(v3, FrameIndex);
        FrameSequentialNumber = VCWRSFrame_GetFrameSequentialNumber(Element);
        NumberOfLostData = VCWRSFrame_GetNumberOfLostData(Element);
        NumberOfDataPackets = VCWRSFrame_GetNumberOfDataPackets(Element);
        NumberOfReceivedParityPackets = VCWRSFrame_GetNumberOfReceivedParityPackets(Element);
        NumberOfParityPackets = VCWRSFrame_GetNumberOfParityPackets(Element);
        IsRecovered = VCWRSFrame_GetIsRecovered(Element);
        __sprintf_chk(buf[0].i8, 0, 0x80uLL, "%llu - (%d/%d, %d/%d, %d), ", FrameSequentialNumber, NumberOfLostData, NumberOfDataPackets, NumberOfReceivedParityPackets, NumberOfParityPackets, IsRecovered);
        __strlcat_chk();
        if ((VCWRSFrame_GetIsRecovered(Element) & 1) == 0)
        {
          if (!VCWRSFrame_GetNumberOfLostData(Element))
          {
            if (VCWRSFrame_GetNumberOfLostData(Element))
            {
              goto LABEL_10;
            }

            if (!v180)
            {
              v180 = 0;
              goto LABEL_10;
            }
          }

          ++v181;
          v180 += VCWRSFrame_GetNumberOfLostData(Element);
          v179 += VCWRSFrame_GetNumberOfReceivedParityPackets(Element);
        }

LABEL_10:
        FrameIndex = VCWRSQueue_NextFrameIndex(v3, FrameIndex);
        if (--v9 <= 1)
        {
          goto LABEL_15;
        }
      }
    }

    LOWORD(v180) = 0;
    LOWORD(v179) = 0;
    v181 = -1;
LABEL_15:
    __strlcat_chk();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i32[0] = 136315906;
        *(buf[0].i64 + 4) = v17;
        buf[0].i16[6] = 2080;
        *(&buf[0].i64[1] + 6) = "_VCWRS_FindFrameIndexMaxDelay";
        buf[1].i16[3] = 1024;
        buf[1].i32[2] = 156;
        buf[1].i16[6] = 2080;
        *(&buf[1].i64[1] + 6) = __src;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d infoString=%s", buf, 0x26u);
      }
    }

    v19 = v182;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i32[0] = 136316162;
        *(buf[0].i64 + 4) = v20;
        buf[0].i16[6] = 2080;
        *(&buf[0].i64[1] + 6) = "_VCWRS_FindFrameIndexMaxDelay";
        buf[1].i16[3] = 1024;
        buf[1].i32[2] = 157;
        buf[1].i16[6] = 1024;
        *(&buf[1].i32[3] + 2) = v180;
        buf[2].i16[1] = 1024;
        buf[2].i32[1] = v179;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d total_lost_data=%d, total_fec_received=%d", buf, 0x28u);
      }
    }

    if (a2)
    {
      *(a2 + 24) = v181;
      *(a2 + 30) = v180;
      *(a2 + 28) = v179;
    }

    v198 = 0;
    IsRecoverable = _VCWRSFECDecoder_IsRecoverable(v182, v181, v180, v179, &v198);
    if (v198 == 1)
    {
      if (v179)
      {
        v23 = v182;
        v24 = v179;
        do
        {
          bzero((v23 + 26), v179);
          bzero((v23 + 4210720), v179);
          v23 += 1024;
          --v24;
        }

        while (v24);
      }

      v25 = *(v182 + 16);
      v168 = VCWRSQueue_GetCapacity(v25);
      if (v181 < 0)
      {
LABEL_82:
        *(v19 + 1048602) = v179;
        *(v19 + 1048604) = v180;
        v197 = 0;
        v166 = v19 + 4208672;
        v96 = VCGF256_InverseMatrix(v19 + 26, v19 + 4210720, v19 + 4208672, &v197);
        if (v96)
        {
          VCWRS_Decode_cold_6(v96, __src);
          return LODWORD(__src[0]);
        }

        else
        {
          if (v197)
          {
            v97 = *(v19 + 16);
            v98 = VCWRSQueue_GetRearIndex(v97);
            v99 = VCWRSQueue_GetCapacity(v97);
            v100 = VCWRSQueue_GetCapacity(v97);
            if ((v181 & 0x80000000) == 0)
            {
              ParityPacketSize = 0;
              v102 = 0;
              v103 = (v98 - v181 + v99) % v100;
              do
              {
                v104 = VCWRSQueue_GetElement(v97, v103);
                v105 = VCWRSFrame_GetNumberOfParityPackets(v104);
                v106 = VCWRSFrame_GetNumberOfReceivedParityPackets(v104);
                if (v105)
                {
                  v107 = v106;
                  v108 = 0;
                  v109 = 0;
                  do
                  {
                    if (v107 > v109 && VCWRSFrame_GetReceivedParityPacketIndex(v104, v109) == v108)
                    {
                      if (VCWRSFrame_GetParityPacketSize(v104, v108) > ParityPacketSize)
                      {
                        ParityPacketSize = VCWRSFrame_GetParityPacketSize(v104, v108);
                      }

                      ++v109;
                    }

                    ++v108;
                  }

                  while (v105 > v108);
                }

                v103 = VCWRSQueue_NextFrameIndex(v97, v103);
                v43 = v102++ == v181;
              }

              while (!v43);
              v163 = v97;
              v110 = v182;
              if (ParityPacketSize)
              {
                v170 = 0;
                v111 = 0;
                if (v180 >= v179)
                {
                  v112 = v179;
                }

                else
                {
                  v112 = v180;
                }

                v189 = (v182 + 5300272);
                v165 = 16 * v112;
                v172 = (v182 + 5283888);
                v175 = v112;
                v192 = v182 + 3145760;
                v113 = v182 + 5355568;
                v196 = v182 + 1048606;
                v187 = (v182 + 5333040);
                v190 = v182 + 3149856;
                while (2)
                {
                  bzero(v189, v165);
                  bzero(v172, v165);
                  bzero(v187, v165);
                  bzero((v110 + 5316656), v165);
                  if (v175)
                  {
                    for (i = 0; i != v175; ++i)
                    {
                      v115 = *(v166 + 2 * i);
                      v116 = *(v182 + 4206624 + 2 * v115);
                      if (v116 > v111)
                      {
                        v117 = v116 - v170;
                        if (v117 >= 16)
                        {
                          v117 = 16;
                        }

                        memcpy(&v189[i], (*(v182 + 4198432 + 8 * v115) + v111), v117);
                        v115 = *(v166 + 2 * i);
                      }

                      if (!v111)
                      {
                        v187[i].i16[0] = **(v182 + 5259304 + 8 * v115);
                        v115 = *(v166 + 2 * i);
                      }

                      if (*(v192 + 4 * v115) >= 1)
                      {
                        v118 = 0;
                        do
                        {
                          v119 = v196 + (v115 << 11);
                          if (*(v113 + 2 * *(v119 + 2 * v118)) > v111)
                          {
                            v120.i64[0] = 0xAAAAAAAAAAAAAAAALL;
                            v120.i64[1] = 0xAAAAAAAAAAAAAAAALL;
                            buf[0] = v120;
                            v121 = *(v119 + 2 * v118);
                            v122 = *(*(v182 + 5267504 + 8 * v121) + v111);
                            __src[0] = v122;
                            v123 = *(v113 + 2 * v121) - v111;
                            if (v123 <= 0xFu)
                            {
                              bzero(__src + v123, (16 - v123));
                              v122 = __src[0];
                            }

                            buf[0] = v122;
                            *v124.i64 = VCGF256_MultiplySimdVectorByConst(buf, *(v190 + (v115 << 10) + v118));
                            v189[i] = veorq_s8(v189[i], v124);
                            v115 = *(v166 + 2 * i);
                          }

                          if (!v111)
                          {
                            *v125.i64 = VCGF256_MultiplySimdVectorByConst(*(v182 + 5275696 + 8 * *(v196 + (v115 << 11) + 2 * v118)), *(v190 + (v115 << 10) + v118));
                            v187[i] = veorq_s8(v187[i], v125);
                            v115 = *(v166 + 2 * i);
                          }

                          ++v118;
                        }

                        while (v118 < *(v192 + 4 * v115));
                      }
                    }
                  }

                  VCGF256_MultiplyMatrixByVector(v110 + 4210720, v189, v172);
                  if (!v111)
                  {
                    VCGF256_MultiplyMatrixByVector(v110 + 4210720, v187, v110 + 5316656);
                  }

                  v126 = *(v110 + 16);
                  v127 = VCWRSQueue_GetRearIndex(v126);
                  v128 = VCWRSQueue_GetCapacity(v126);
                  v129 = 0;
                  v130 = (v127 - v181 + v128) % VCWRSQueue_GetCapacity(v126);
                  v131 = v181;
                  v176 = v126;
                  do
                  {
                    v178 = v131;
                    v184 = v130;
                    v132 = VCWRSQueue_GetElement(v126, v130);
                    v133 = VCWRSFrame_GetNumberOfLostData(v132);
                    if (v133)
                    {
                      v134 = v133;
                      v135 = 0;
                      v136 = &v172[16 * v129];
                      while (1)
                      {
                        LostDataPacketIndex = VCWRSFrame_GetLostDataPacketIndex(v132, v135);
                        if (LostDataPacketIndex == 0xFFFF)
                        {
                          break;
                        }

                        v138 = LostDataPacketIndex;
                        if (!v111)
                        {
                          v139 = (BYTE1(*&v136[2048]) | (*&v136[2048] << 8));
                          v140 = VCWRSFrame_SetDataPacketSize(v132, LostDataPacketIndex, v139);
                          v141 = ParityPacketSize;
                          if (v139 > ParityPacketSize)
                          {
                            v141 = v139;
                          }

                          if (!v140)
                          {
                            ParityPacketSize = v141;
                          }
                        }

                        v142 = *v136++;
                        VCWRSFrame_SetDataLocation(v132, v138, v111, v142);
                        ++v135;
                        ++v129;
                        if (v134 <= v135)
                        {
                          goto LABEL_131;
                        }
                      }

                      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                      v156 = MEMORY[0x1E6986650];
                      if (ErrorLogLevelForModule >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
                        {
                          VCWRS_Decode_cold_7();
                        }
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
                        {
                          VCWRS_Decode_cold_8();
                        }
                      }

                      v153 = 2150825985;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
                        {
                          VCWRS_Decode_cold_9();
                        }
                      }

                      return v153;
                    }

LABEL_131:
                    v126 = v176;
                    v130 = VCWRSQueue_NextFrameIndex(v176, v184);
                    v131 = v178 - 1;
                  }

                  while (v178 > 0);
                  v111 += 16;
                  v170 = v111;
                  v110 = v182;
                  if (v111 < ParityPacketSize)
                  {
                    continue;
                  }

                  break;
                }
              }

              v143 = v181;
              if (v179 >= v180)
              {
                do
                {
                  v144 = VCWRSQueue_GetRearIndex(v163) - v143;
                  v145 = v144 + VCWRSQueue_GetCapacity(v163);
                  v146 = v145 % VCWRSQueue_GetCapacity(v163);
                  v147 = VCWRSQueue_GetElement(v163, v146);
                  VCWRSFrame_SetNumberOfLostData(v147, 0);
                  v148 = VCWRSFrame_GetNumberOfDataPackets(v147);
                  if (v148)
                  {
                    v149 = v148;
                    v150 = 0;
                    do
                    {
                      VCWRSFrame_SetReceivedData(v147, v150, v150);
                      ++v150;
                    }

                    while (v149 > v150);
                  }

                  VCWRSFrame_SetIsRecovered(v147, 1);
                  v151 = *(v158 + 4);
                  *(v158 + 4) = v151 + 1;
                  *(v158 + 4 * v151) = v146;
                }

                while (v143-- > 0);
              }
            }
          }

          if (v197)
          {
            return 0;
          }

          else
          {
            return 2152529995;
          }
        }
      }

      else
      {
        v26 = 0;
        v171 = 0;
        v27 = (v182 + 5357616);
        v28 = v182 + 5353520;
        v29 = v181;
        v177 = v25;
        while (1)
        {
          v173 = v26;
          v157 = v29;
          v30 = (v168 - v29 + VCWRSQueue_GetRearIndex(v25)) % v168;
          v164 = VCWRSQueue_GetElement(v25, v30);
          v31 = VCWRSQueue_DistanceToFront(v25, v30);
          v32 = *(v19 + 24) - 1;
          if (v31 < v32)
          {
            v32 = VCWRSQueue_DistanceToFront(v25, v30);
          }

          v194 = v30 - v32;
          v33 = v30 - v32 + VCWRSQueue_GetCapacity(v25);
          v34 = v33 % VCWRSQueue_GetCapacity(v25);
          v35 = VCWRSQueue_GetElement(v25, v34);
          v183 = v32;
          if (v32 < 0)
          {
            v44 = 0;
          }

          else
          {
            v36 = v35;
            v191 = v30;
            v37 = 0;
            v30 = 0;
            do
            {
              v38 = VCWRSFrame_GetNumberOfDataPackets(v36);
              if (v38)
              {
                v39 = v38;
                v40 = 0;
                v41 = (v182 + 5267504 + 8 * v30);
                v42 = (v182 + 5355568 + 2 * v30);
                v30 += (v38 - 1) + 1;
                do
                {
                  *v41 = VCWRSFrame_GetDataLocation(v36, v40);
                  *v42++ = VCWRSFrame_GetPacketDataSize(v36, v40);
                  v41[1024] = VCWRSFrame_GetExtendedBytes(v36, v40++);
                  ++v41;
                }

                while (v39 > v40);
                v25 = v177;
                v32 = v183;
              }

              v34 = VCWRSQueue_NextFrameIndex(v25, v34);
              v36 = VCWRSQueue_GetElement(v25, v34);
              v43 = v37++ == v32;
            }

            while (!v43);
            v19 = v182;
            v44 = v30;
            LOWORD(v30) = v191;
          }

          v45 = v164;
          v46 = VCWRSFrame_GetFrameSequentialNumber(v164);
          VCWRSUtil_DecoderInversePermutation(v44, (v46 % *(v19 + 24) + 1), v182 + 5349424, 0);
          v47 = VCWRSFrame_GetFrameSequentialNumber(v164);
          VCWRSUtil_EncoderPermutation(v44, (v47 % *(v19 + 24) + 1), (v19 + 5351472), 0);
          *&v48 = 0xAAAAAAAAAAAAAAAALL;
          *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
          __src[15] = v48;
          __src[16] = v48;
          __src[13] = v48;
          __src[14] = v48;
          __src[11] = v48;
          __src[12] = v48;
          __src[9] = v48;
          __src[10] = v48;
          __src[7] = v48;
          __src[8] = v48;
          __src[5] = v48;
          __src[6] = v48;
          __src[3] = v48;
          __src[4] = v48;
          __src[1] = v48;
          __src[2] = v48;
          __src[0] = v48;
          VCWRSUtil_MultiCodewordsParamtersCalculation(v25, v30, v44, __src);
          VCWRSFrame_SetNumberOfCodewords(v164, __src[0]);
          v26 = v173;
          v159 = VCWRSFrame_GetNumberOfReceivedParityPackets(v164);
          if (v159)
          {
            break;
          }

LABEL_81:
          v29 = v157 - 1;
          if (v157 <= 0)
          {
            goto LABEL_82;
          }
        }

        v49 = 0;
        v161 = v44;
        v162 = v44;
        v160 = v194 + v168;
        while (1)
        {
          ReceivedParityPacketIndex = VCWRSFrame_GetReceivedParityPacketIndex(v45, v49);
          if (ReceivedParityPacketIndex == 0xFFFF)
          {
            VCWRS_Decode_cold_4();
            goto LABEL_148;
          }

          v51 = ReceivedParityPacketIndex;
          *(v182 + 4198432 + 8 * v26) = VCWRSFrame_GetParityPacket(v45, ReceivedParityPacketIndex);
          *(v182 + 4206624 + 2 * v26) = VCWRSFrame_GetParityPacketSize(v45, v51);
          v169 = v26;
          *(v182 + 5259304 + 8 * v26) = VCWRSFrame_GetRedundantBits(v45, v51);
          *v27 = 14548992;
          memcpy(buf, __src, sizeof(buf));
          v53 = (v182 + 5349424);
          v54 = v161;
          if (v44)
          {
            do
            {
              v53[2048] = *v53;
              ++v53;
              --v54;
            }

            while (v54);
          }

          v174 = v26;
          if (buf[0].u16[0] > 1uLL)
          {
            v55 = -1;
            v56 = &buf[1];
            v57 = buf[0].u16[0];
            v58.i64[0] = 0x800000008;
            v58.i64[1] = 0x800000008;
            while (1)
            {
              v59 = v56->i32[0];
              v56 = (v56 + 4);
              if (v59 > v51)
              {
                break;
              }

              ++v55;
              if (!--v57)
              {
                v55 = buf[0].u16[0] - 1;
                break;
              }
            }

            v60 = buf[1].i32[v55];
            v61 = buf[0].u16[1];
            if (v55 >= 1 && buf[0].u16[1] >= 2u)
            {
              v62 = &buf[0].i16[4];
              v63 = *v27;
              v64 = vdupq_n_s32(v55 - 1);
              v65 = vdupq_n_s32(~buf[0].u16[3] + buf[0].u16[0]);
              v52.i16[0] = *(v182 + 5357618);
              v66 = vld1q_dup_s16(v62);
              v67 = 8;
              v68 = xmmword_1DBD4ABA0;
              v69 = xmmword_1DBD4AB90;
              do
              {
                v70 = v63;
                v71 = v52;
                v72 = vsubq_s16(v66, vuzp1q_s16(vcgtq_s32(v68, v65), vcgtq_s32(v69, v65)));
                v63 = vaddq_s16(v72, v63);
                v52 = vaddq_s16(v72, v71);
                v68 = vaddq_s32(v68, v58);
                v69 = vaddq_s32(v69, v58);
                v67 -= 8;
              }

              while (((v55 + 7) & 0xFFFFFFF8) + v67 != 8);
              v73 = vdupq_n_s32(-v67);
              v74 = vuzp1q_s16(vcgtq_u32(vorrq_s8(v73, xmmword_1DBD4ABB0), v64), vcgtq_u32(vorrq_s8(v73, xmmword_1DBD4ABC0), v64));
              *v27 = vaddvq_s16(vbslq_s8(v74, v70, v63));
              *(v182 + 5357618) = vaddvq_s16(vbslq_s8(v74, v71, v52));
            }

            v51 %= v60;
            if (v61 == 1)
            {
              VCWRSUtil_DecoderInversePermutation(v162, (v55 + 1), v28, v19 + 5351472);
            }
          }

          v167 = v49;
          v75 = v160 % v168;
          v76 = VCWRSQueue_GetElement(*(v19 + 16), v160 % v168);
          if ((v32 & 0x80000000) == 0)
          {
            break;
          }

          v78 = 0;
LABEL_80:
          v26 = (v174 + 1);
          *(v182 + 3145760 + 4 * v169) = v78;
          ++v171;
          v49 = v167 + 1;
          v25 = v177;
          v44 = v162;
          v45 = v164;
          v32 = v183;
          if (v159 <= (v167 + 1))
          {
            goto LABEL_81;
          }
        }

        v77 = v76;
        v78 = 0;
        v188 = 0;
        v79 = 0;
        v80 = 0;
        v195 = v51;
        while (1)
        {
          v186 = v80;
          TotalDataPackets = VCWRSUtil_FindTotalDataPackets(*(v19 + 16), v75, v80);
          v82 = VCWRSFrame_GetNumberOfDataPackets(v77);
          v83 = v82 - VCWRSFrame_GetNumberOfLostData(v77);
          v185 = TotalDataPackets;
          if (v83)
          {
            break;
          }

LABEL_67:
          v88 = VCWRSFrame_GetNumberOfLostData(v77);
          if (v88)
          {
            v89 = v88;
            v90 = 0;
            while (1)
            {
              v91 = VCWRSFrame_GetLostDataPacketIndex(v77, v90);
              if (v91 == 0xFFFF)
              {
                break;
              }

              v92 = *(v28 + 2 * (v185 + v91));
              v93 = *v27;
              if (v92 >= v93 && v92 <= *(v182 + 5357618))
              {
                v94 = g_generatorMatrix[32 * (v92 - v93) + v195];
              }

              else
              {
                v94 = 0;
              }

              v95 = (v79 + 1);
              *(v182 + 26 + (v171 << 10) + v79) = v94;
              ++v90;
              LODWORD(v79) = v79 + 1;
              if (v89 <= v90)
              {
                goto LABEL_77;
              }
            }

            VCWRS_Decode_cold_2();
            goto LABEL_145;
          }

          v95 = v79;
LABEL_77:
          v188 += VCWRSFrame_GetNumberOfDataPackets(v77);
          v19 = v182;
          v75 = VCWRSQueue_NextFrameIndex(*(v182 + 16), v75);
          v77 = VCWRSQueue_GetElement(*(v182 + 16), v75);
          v79 = v95;
          v80 = v186 + 1;
          if (v186 == v183)
          {
            goto LABEL_80;
          }
        }

        v84 = 0;
        while (1)
        {
          ReceivedDataPacketIndex = VCWRSFrame_GetReceivedDataPacketIndex(v77, v84);
          if (ReceivedDataPacketIndex == 0xFFFF)
          {
            break;
          }

          v86 = TotalDataPackets + ReceivedDataPacketIndex;
          v87 = *(v28 + 2 * v86);
          if (v87 >= *v27 && v87 <= *(v182 + 5357618))
          {
            *(v182 + 1048606 + (v169 << 11) + 2 * v78) = ReceivedDataPacketIndex + v188;
            *(v182 + 3149856 + (v169 << 10) + v78++) = g_generatorMatrix[32 * (*(v28 + 2 * v86) - *v27) + v195];
          }

          if (++v84 >= v83)
          {
            goto LABEL_67;
          }
        }

        VCWRS_Decode_cold_1();
LABEL_145:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCWRS_Decode_cold_3();
          }
        }

LABEL_148:
        v153 = 2150825985;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCWRS_Decode_cold_5();
          }
        }
      }
    }

    else
    {
      return IsRecoverable;
    }
  }

  else
  {
    VCWRS_Decode_cold_10();
    return LODWORD(__src[0]);
  }

  return v153;
}