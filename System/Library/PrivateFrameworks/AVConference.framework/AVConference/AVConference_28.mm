_DWORD *_VCAudioPlayer_CopyPlaybackBuffer(_DWORD *result, unint64_t a2, int a3, int a4)
{
  v5 = result + 24;
  v4 = result[24];
  result[25] = a4;
  if (v4 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 + 96;
    v10 = a3;
    while (1)
    {
      v11 = &v7[6 * v8];
      if (v11 < v7 || v11 + 6 > v5)
      {
        break;
      }

      v13 = (a2 + 24 * v8);
      if (v13 < a2 || (v13 + 3) > v9)
      {
        break;
      }

      v15 = *v13;
      v16 = *(a2 + 24 * v8 + 8);
      v17 = v15 + v16;
      v18 = (v15 + v10);
      v19 = v7[25];
      v20 = v16 - v10;
      v21 = v15 + v10 > v17 || v15 > v18;
      v22 = !v21 && v20 >= v19;
      if (!v22 || *(v11 + 1) < v19)
      {
        break;
      }

      result = memcpy(*v11, v18, v19);
      if (*v5 <= ++v8)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void LogProfileTimeOverLimit_3(const char *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v44 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v14 = micro() - a2;
    if (v14 > a3)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v15;
      v43 = v15;
      v40 = v15;
      v41 = v15;
      v38 = v15;
      v39 = v15;
      v36 = v15;
      v37 = v15;
      v34 = v15;
      v35 = v15;
      v33 = v15;
      v31 = v15;
      v32 = v15;
      v29 = v15;
      v30 = v15;
      *__str = v15;
      vsnprintf(__str, 0x100uLL, a1, &a11);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v16;
          v20 = 2080;
          v21 = "_LogProfileTimeLimitHelper";
          v22 = 1024;
          v23 = 36;
          v24 = 2080;
          v25 = __str;
          v26 = 2048;
          v27 = v14;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void _VCAudioPlayer_SteerQueueCommand(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 35952);
  if (!v3 || !*(a1 + 35960))
  {
    return;
  }

  v6 = *(a1 + 36064);
  v7 = a3.n128_f64[0] * *(a1 + 35616) + 0.00001;
  v8 = *(a1 + 35968) != 1 || *(a1 + 35984) == 2;
  v9 = fmax(v6, v7);
  if (a2 == 1)
  {
    v10 = *(a1 + 35856);
    a3.n128_f64[0] = v10 - v6;
    v11 = v10 - v6 >= -v9;
  }

  else
  {
    if (a2)
    {
      if (!v8)
      {
        return;
      }

      v12 = (a1 + 35856);
      v10 = *(a1 + 35856);
      *(a1 + 35856) = 0;
      a3.n128_u64[0] = 0;
      goto LABEL_14;
    }

    v10 = *(a1 + 35856);
    a3.n128_f64[0] = v6 + v10;
    v11 = v6 + v10 <= v9;
  }

  if (!v11 || !v8)
  {
    return;
  }

  v12 = (a1 + 35856);
  *(a1 + 35856) = a3.n128_u64[0];
  *(a1 + 35668) = *(a1 + 35660);
LABEL_14:
  if ((v3(a3) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioPlayer_SteerQueueCommand_cold_1();
      }
    }
  }

  else if (*v12 != v10)
  {

    _VCAudioPlayer_UpdatePacketLifeTimeCDF(a1, a2);
  }
}

uint64_t _VCAudioPlayer_UpdatePacketLifeTimeCDF(uint64_t result, int a2)
{
  v2 = result + 0x8000;
  v3 = *(result + 36064);
  if (a2)
  {
    if (a2 != 2 || (v4 = *(result + 35856), v4 == 0.0))
    {
      v5 = -1;
      v3 = -v3;
    }

    else
    {
      v5 = (v4 / v3);
      v3 = v3 * v5;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *(result + 35648);
  if (v6 >= 2)
  {
    if (*(result + 35644) >= 2)
    {
      v7 = *(result + 35644);
    }

    else
    {
      v7 = *(result + 35648);
    }

    v8 = *(result + 35632);
    v9 = v8 + 40 * *(result + 35640);
    v10 = v6 - 1;
    while (1)
    {
      v11 = v8 + 40 * --v7;
      if (v11 >= v9 || v11 < v8)
      {
        break;
      }

      v13 = v3 + *(v11 + 8);
      v14 = v13 > 0.5 || v13 < 0.0;
      if (v13 < 0.0 && v13 <= 0.5)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 0.5;
      }

      if (v14)
      {
        v13 = v15;
      }

      v16 = *(v2 + 2960);
      result = (v16 - 1);
      if (*(v11 + 20) + v5 >= v16)
      {
        v17 = v16 - 1;
      }

      else
      {
        v17 = *(v11 + 20) + v5;
      }

      *(v11 + 8) = v13;
      *(v11 + 20) = v17 & ~(v17 >> 31);
      if (v7 < 1)
      {
        v7 = v6;
      }

      if (!--v10)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void _VCAudioPlayer_DiscardSamples(uint64_t a1, int a2, double *a3, double a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a1 + 35520;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v8 + 32);
      LeftOverSamples = VCAudioPlayer_GetLeftOverSamples(a1);
      *buf = 136316418;
      v15 = *(v8 + 472);
      v16 = *v8;
      v45 = v11;
      v46 = 2080;
      v47 = "_VCAudioPlayer_DiscardSamples";
      v48 = 1024;
      v49 = 2604;
      v50 = 2048;
      v51 = ((v13 + LeftOverSamples) / v15);
      v52 = 2048;
      v53 = a4;
      v54 = 2048;
      v55 = v16;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d JQ too high, discarding. CurrentJQSize:%f currentTime:%f lastSpkrCallback:%f", buf, 0x3Au);
    }
  }

  if (a2 >= 1)
  {
    JitterQueue_DiscardExcess(*(v8 + 48), a2);
    v17 = *(v8 + 1568);
    v18 = *(v8 + 32);
    v19 = ((v18 + VCAudioPlayer_GetLeftOverSamples(a1)) / *(v8 + 472));
    VRLogfilePrintSync(v17, "Warning: JQ too high, discarding. CurrentJQSize:%f currentTime:%f lastSpkrCallback:%f\n", v20, v21, v22, v23, v24, v25, SLOBYTE(v19));
  }

  *(v8 + 32) = JitterQueue_QueuedSamples(*(v8 + 48));
  v26 = *(v8 + 32);
  v33 = v26 + VCAudioPlayer_GetLeftOverSamples(a1);
  v34 = v33;
  if (v33 >= 0.0)
  {
    v35 = v33;
  }

  else
  {
    VRLogfilePrintSync(*(v8 + 1568), "Critical: Average JB queue size is negative!\n", v27, v28, v29, v30, v31, v32, v43);
    v35 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v38 = *a3;
        v39 = *(v8 + 32);
        *buf = 136316418;
        v45 = v36;
        v46 = 2080;
        v47 = "_VCAudioPlayer_DiscardSamples";
        v48 = 1024;
        v49 = 2618;
        v50 = 2048;
        v51 = v38;
        v52 = 2048;
        v53 = v34;
        v54 = 2048;
        v55 = v39;
        _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Please file a radar on AVConference Media | All. Average JB queue size is negative! Current size: %f, new size: %f, jitter samples: %f", buf, 0x3Au);
      }
    }
  }

  *a3 = v35;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v42 = *(v8 + 472);
      v45 = v40;
      v46 = 2080;
      v47 = "_VCAudioPlayer_DiscardSamples";
      v48 = 1024;
      v49 = 2622;
      v50 = 2048;
      v51 = v35 / v42;
      _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d NewJQSize:%f", buf, 0x26u);
    }
  }
}

uint64_t _VCAudioPlayer_DecodeSamples(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, double a6)
{
  v621 = *MEMORY[0x1E69E9840];
  v9 = a1 + 35532;
  _VCAudioPlayer_UpdateLosses(a1);
  v10 = *(a1 + 168);
  if (v10)
  {
    v597 = *(a1 + 436) > *(a1 + 172);
  }

  else
  {
    v597 = 0;
  }

  if (v10 >= *a2)
  {
    goto LABEL_604;
  }

  v590 = (a1 + 35896);
  v594 = (v9 + 500);
  v568 = (v9 + 76);
  v566 = (v9 + 836);
  v570 = (v9 + 1556);
  v571 = (v9 + 380);
  v593 = (a1 + 328);
  v573 = (v9 + 1748);
  v574 = (a1 + 808);
  __N = (v9 + 236);
  v595 = (v9 + 228);
  v591 = (v9 + 220);
  v600 = (v9 + 532);
  v564 = (v9 + 332);
  v565 = (v9 + 444);
  v572 = a1 + 36412;
  v588 = (v9 + 1520);
  v582 = (v9 + 1756);
  v11 = a1 + 36265;
  v581 = a1 + 36270;
  __asm { FMOV            V0.2D, #-1.0 }

  v567 = _Q0;
  v585 = a1 + 512;
  v580 = a1 + 448;
  while (1)
  {
    v606 = 0u;
    v607 = 0u;
    v604 = 0u;
    v605 = 0u;
    memset(v603, 0, sizeof(v603));
    if (micro() - a6 >= 0.00600000005)
    {
      break;
    }

    if (*v594)
    {
      v20 = **v594;
    }

    else
    {
      v20 = 128;
    }

    HIDWORD(v603[1]) = v20;
    v21 = *(a5 + 16);
    v586 = *(a5 + 24);
    v22 = *a5;
    v23 = *(a5 + 32);
    v24 = JitterQueue_CheckQSizeBeforePop(*(v9 + 36));
    SizeOfNextFrame = JitterQueue_GetSizeOfNextFrame(*(v9 + 36));
    if (JitterQueue_GetSizeOfNextFrame(*(v9 + 36)))
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v9 + 368) + 1;
    }

    v27 = SizeOfNextFrame + v24;
    *(v9 + 368) = v26;
    v28 = *(v9 + 364);
    if (v28 != 3 && v28)
    {
      goto LABEL_71;
    }

    v602 = -1431655766;
    NextFrameTimestamp = JitterQueue_GetNextFrameTimestamp(*(v9 + 36), &v602);
    v589 = SizeOfNextFrame + v24;
    v577 = v22;
    if (*v9)
    {
      IsNextFrameDTX = JitterQueue_IsNextFrameDTX(*(v9 + 36));
    }

    else
    {
      IsNextFrameDTX = 1;
    }

    v31 = v602;
    v32 = *(a1 + 16);
    v33 = *(a1 + 8);
    v34 = *(v9 + 464);
    LODWORD(v6) = *(v9 + 460);
    v35 = *(a1 + 808);
    v36 = JitterQueue_CheckQSizeBeforePop(*(v9 + 36));
    v37 = *(v9 + 1724);
    if (v37 != 101)
    {
      if (v37 == 113)
      {
        v38 = *(v9 + 72);
        goto LABEL_24;
      }

      if (v37 != 104)
      {
        v38 = 0;
        goto LABEL_24;
      }
    }

    v38 = *(v9 + 71);
LABEL_24:
    v6 = (v31 - v32 + v34 * v33) / *&v6;
    v39 = v36;
    v40 = v38;
    v41 = !NextFrameTimestamp;
    if (!((v36 >= v21) & v38 | IsNextFrameDTX) && (v41 & 1) == 0 && v6 > 0.1 && v35 != 0)
    {
      v11 = a1 + 36265;
      v27 = v589;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        v45 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = JitterQueue_QueuedSamples(*(v9 + 36));
            *buf = 136316674;
            v609 = v43;
            v610 = 2080;
            v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
            v612 = 1024;
            v613 = 1408;
            v614 = 1024;
            *v615 = v39;
            *&v615[4] = 1024;
            *&v615[6] = v21;
            *&v615[10] = 1024;
            *&v615[12] = v46;
            *&v615[16] = 1024;
            *&v615[18] = v40 & 1;
            _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d YES queueSize=%d desiredQSize=%d queuedSamples=%u shouldCheckForQueueSizeUnderTarget=%d", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v138 = JitterQueue_QueuedSamples(*(v9 + 36));
          *buf = 136316674;
          v609 = v43;
          v610 = 2080;
          v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
          v612 = 1024;
          v613 = 1408;
          v614 = 1024;
          *v615 = v39;
          *&v615[4] = 1024;
          *&v615[6] = v21;
          *&v615[10] = 1024;
          *&v615[12] = v138;
          *&v615[16] = 1024;
          *&v615[18] = v40 & 1;
          _os_log_debug_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d YES queueSize=%d desiredQSize=%d queuedSamples=%u shouldCheckForQueueSizeUnderTarget=%d", buf, 0x34u);
        }
      }

      *(v9 + 364) = 2;
      v602 = 0;
      OldestArrivalTimeStamp = JitterQueue_GetOldestArrivalTimeStamp(*(v9 + 36), &v602);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x1E6986650];
        v53 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *v568;
            *buf = 136316930;
            v609 = v51;
            v610 = 2080;
            v611 = "_VCAudioPlayer_SetFirstSpeechPacketTimestamp";
            v612 = 1024;
            v613 = 1424;
            v614 = 1024;
            *v615 = OldestArrivalTimeStamp;
            *&v615[4] = 1024;
            *&v615[6] = v589;
            *&v615[10] = 1024;
            *&v615[12] = v21;
            *&v615[16] = 1024;
            *&v615[18] = v54;
            *&v615[22] = 1024;
            *&v615[24] = v602;
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d oldestArrivalTimestampAvailable=%d, queueSize=%d, desiredQSize=%d, latestTimestamp=%u firstSpeechPacketTimestamp=%u", buf, 0x3Au);
          }
        }

        else if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v139 = *v568;
          *buf = 136316930;
          v609 = v51;
          v610 = 2080;
          v611 = "_VCAudioPlayer_SetFirstSpeechPacketTimestamp";
          v612 = 1024;
          v613 = 1424;
          v614 = 1024;
          *v615 = OldestArrivalTimeStamp;
          *&v615[4] = 1024;
          *&v615[6] = v589;
          *&v615[10] = 1024;
          *&v615[12] = v21;
          *&v615[16] = 1024;
          *&v615[18] = v139;
          *&v615[22] = 1024;
          *&v615[24] = v602;
          _os_log_debug_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d oldestArrivalTimestampAvailable=%d, queueSize=%d, desiredQSize=%d, latestTimestamp=%u firstSpeechPacketTimestamp=%u", buf, 0x3Au);
        }
      }

      if (OldestArrivalTimeStamp)
      {
        if (v589 < v21)
        {
          v55 = *(v9 + 1724);
          if (v55 == 101 || v55 == 104)
          {
            if ((*(v9 + 71) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          else if (v55 != 113 || (*(v9 + 72) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v56 = &v602;
      }

      else
      {
LABEL_53:
        v56 = (v9 + 76);
      }

      *(v9 + 392) = *v56;
      goto LABEL_71;
    }

    v11 = a1 + 36265;
    v27 = v589;
    if (!((v6 >= 0.1) | (IsNextFrameDTX | v41) & 1) && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      v49 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v609 = v47;
          v610 = 2080;
          v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
          v612 = 1024;
          v613 = 1412;
          v614 = 2048;
          *v615 = v6;
          _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Queue growth suspended as silence period=%f is low", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v609 = v47;
        v610 = 2080;
        v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
        v612 = 1024;
        v613 = 1412;
        v614 = 2048;
        *v615 = v6;
        _os_log_debug_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Queue growth suspended as silence period=%f is low", buf, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      v59 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = JitterQueue_QueuedSamples(*(v9 + 36));
          *buf = 136316674;
          v609 = v57;
          v610 = 2080;
          v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
          v612 = 1024;
          v613 = 1414;
          v614 = 1024;
          *v615 = v39;
          *&v615[4] = 1024;
          *&v615[6] = v21;
          *&v615[10] = 1024;
          *&v615[12] = v60;
          *&v615[16] = 1024;
          *&v615[18] = v40 & 1;
          _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d NO queueSize=%d desiredQSize=%d queuedSamples=%u shouldCheckForQueueSizeUnderTarget=%d", buf, 0x34u);
        }
      }

      else if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v137 = JitterQueue_QueuedSamples(*(v9 + 36));
        *buf = 136316674;
        v609 = v57;
        v610 = 2080;
        v611 = "_VCAudioPlayer_ShouldPerformQueueGrowth";
        v612 = 1024;
        v613 = 1414;
        v614 = 1024;
        *v615 = v39;
        *&v615[4] = 1024;
        *&v615[6] = v21;
        *&v615[10] = 1024;
        *&v615[12] = v137;
        *&v615[16] = 1024;
        *&v615[18] = v40 & 1;
        _os_log_debug_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d NO queueSize=%d desiredQSize=%d queuedSamples=%u shouldCheckForQueueSizeUnderTarget=%d", buf, 0x34u);
      }
    }

    if (!*v9)
    {
      v61 = *v577 == 2 ? 3 : 5;
      if (*(v9 + 368) >= v61)
      {
        *(v9 + 364) = 1;
        *(v9 + 372) = 1;
      }
    }

LABEL_71:
    v62 = *(v9 + 76) - *(v9 + 392);
    *(v9 + 404) = v62;
    v63 = *(v9 + 364) - 1;
    v129 = v62 < v21;
    v64 = v62 >= v21;
    v65 = !v129 || v27 >= v21;
    *(v9 + 409) = v64;
    *(v9 + 408) = v27 >= v21;
    v66 = v63 < 2 && v65;
    *(v9 + 410) = v66;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v69 = VRTraceErrorLogLevelToCSTR();
      v70 = *MEMORY[0x1E6986650];
      v71 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = v63 < 2;
          if (*(v9 + 410))
          {
            v73 = "YES";
          }

          else
          {
            v73 = "NO";
          }

          v74 = JitterQueue_QueuedSamples(*(v9 + 36));
          v75 = *(v9 + 408);
          v76 = *(v9 + 409);
          *buf = 136317442;
          v609 = v69;
          v610 = 2080;
          v611 = "_VCAudioPlayer_ShouldExitGrowth";
          v612 = 1024;
          v613 = 1348;
          v614 = 2080;
          *v615 = v73;
          *&v615[8] = 1024;
          *&v615[10] = v27;
          *&v615[14] = 1024;
          *&v615[16] = v21;
          *&v615[20] = 1024;
          *&v615[22] = v74;
          *&v615[26] = 1024;
          *&v615[28] = v75;
          *&v615[32] = 1024;
          *&v615[34] = v76;
          *&v615[38] = 1024;
          *&v615[40] = v72;
          _os_log_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %s queueSize=%d, desiredQSize=%d, queuedSamples=%u, queueSizeThresholdMet=%d, packetLifetimeThresholdMet=%d, growthModeDtxOrLoss=%d", buf, 0x4Au);
        }
      }

      else if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v122 = v63 < 2;
        if (*(v9 + 410))
        {
          v123 = "YES";
        }

        else
        {
          v123 = "NO";
        }

        v124 = JitterQueue_QueuedSamples(*(v9 + 36));
        v125 = *(v9 + 408);
        v126 = *(v9 + 409);
        *buf = 136317442;
        v609 = v69;
        v610 = 2080;
        v611 = "_VCAudioPlayer_ShouldExitGrowth";
        v612 = 1024;
        v613 = 1348;
        v614 = 2080;
        *v615 = v123;
        *&v615[8] = 1024;
        *&v615[10] = v27;
        *&v615[14] = 1024;
        *&v615[16] = v21;
        *&v615[20] = 1024;
        *&v615[22] = v124;
        *&v615[26] = 1024;
        *&v615[28] = v125;
        *&v615[32] = 1024;
        *&v615[34] = v126;
        *&v615[38] = 1024;
        *&v615[40] = v122;
        _os_log_debug_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %s queueSize=%d, desiredQSize=%d, queuedSamples=%u, queueSizeThresholdMet=%d, packetLifetimeThresholdMet=%d, growthModeDtxOrLoss=%d", buf, 0x4Au);
      }
    }

    if (*(v9 + 410) == 1)
    {
      v77 = *(v9 + 8);
      if (v77)
      {
        LODWORD(v67) = *(v9 + 144);
        HIDWORD(v68) = 1079574528;
        v78 = v67 / v77 * 100.0;
        *v571 = v78;
      }

      else
      {
        v78 = *v571;
      }

      v85 = *(v9 + 404);
      LODWORD(v68) = *(v9 + 460);
      *(v9 + 388) = v78 < 0.01;
      if (*(v9 + 285))
      {
        v86 = 0;
      }

      else
      {
        v86 = *(v9 + 292) ^ 1;
      }

      v87 = (v23 * v68);
      v88 = *(v9 + 128);
      *(v9 + 397) = v86 & 1;
      if (v21 != v87 || (*(v9 + 508) & 1) != 0)
      {
        v90 = 0;
        *(v9 + 398) = 0;
      }

      else
      {
        v89 = (v88 == 0) & v86;
        if (v78 < 0.01)
        {
          v89 = 1;
        }

        *(v9 + 398) = v89;
        if (v89 == 1)
        {
          v90 = *(v9 + 464);
        }

        else
        {
          v90 = 0;
        }
      }

      v91 = v87 - v90;
      *(v9 + 400) = v91;
      *(v9 + 396) = v91 <= v85;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v92 = VRTraceErrorLogLevelToCSTR();
        v93 = *MEMORY[0x1E6986650];
        v94 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            v95 = "NO";
            if (*(v9 + 396))
            {
              v95 = "YES";
            }

            v96 = *(v9 + 398);
            v97 = *(v9 + 400);
            *buf = 136317442;
            v609 = v92;
            v610 = 2080;
            v611 = "_VCAudioPlayer_IsMinimumQueueBuilt";
            v612 = 1024;
            v613 = 1375;
            v614 = 2080;
            *v615 = v95;
            *&v615[8] = 2048;
            *&v615[10] = v23;
            *&v615[18] = 1024;
            *&v615[20] = v87;
            *&v615[24] = 1024;
            *&v615[26] = v21;
            *&v615[30] = 1024;
            *&v615[32] = v96;
            *&v615[36] = 1024;
            *&v615[38] = v85;
            *&v615[42] = 1024;
            *&v615[44] = v97;
            _os_log_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %s minQsize=%0.5f, minQSzSamples=%d, desiredQSzSamples=%d, jitterIsLow=%d, firstSpeechPktLifetime=%d, minQSzBldThresh=%d", buf, 0x4Eu);
          }
        }

        else if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v134 = "NO";
          if (*(v9 + 396))
          {
            v134 = "YES";
          }

          v135 = *(v9 + 398);
          v136 = *(v9 + 400);
          *buf = 136317442;
          v609 = v92;
          v610 = 2080;
          v611 = "_VCAudioPlayer_IsMinimumQueueBuilt";
          v612 = 1024;
          v613 = 1375;
          v614 = 2080;
          *v615 = v134;
          *&v615[8] = 2048;
          *&v615[10] = v23;
          *&v615[18] = 1024;
          *&v615[20] = v87;
          *&v615[24] = 1024;
          *&v615[26] = v21;
          *&v615[30] = 1024;
          *&v615[32] = v135;
          *&v615[36] = 1024;
          *&v615[38] = v85;
          *&v615[42] = 1024;
          *&v615[44] = v136;
          _os_log_debug_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %s minQsize=%0.5f, minQSzSamples=%d, desiredQSzSamples=%d, jitterIsLow=%d, firstSpeechPktLifetime=%d, minQSzBldThresh=%d", buf, 0x4Eu);
        }
      }

      if (*(v9 + 396) == 1)
      {
        *(a1 + 35904) = 0;
        *v590 = 0;
        *v586 = v21;
        goto LABEL_120;
      }
    }

    else
    {
      HasDTXPacket = JitterQueue_HasDTXPacket(*(v9 + 36));
      if (((HasDTXPacket | JitterQueue_IsNextFrameDTX(*(v9 + 36))) & 1) != 0 && (*(v9 + 364) - 1) <= 1)
      {
        *v590 = 3;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v80 = VRTraceErrorLogLevelToCSTR();
          v81 = *MEMORY[0x1E6986650];
          v82 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v83 = *(a1 + 20);
              v84 = *v586;
              *buf = 136316418;
              v609 = v80;
              v610 = 2080;
              v611 = "_VCAudioPlayer_PerformQueueGrowth";
              v612 = 1024;
              v613 = 1478;
              v614 = 1024;
              *v615 = v83;
              *&v615[4] = 1024;
              *&v615[6] = v27;
              *&v615[10] = 2048;
              *&v615[12] = v84;
              _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Suspend queue growth audio frame %d queueSize %d AvgQsize %f", buf, 0x32u);
            }
          }

          else if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            v140 = *(a1 + 20);
            v141 = *v586;
            *buf = 136316418;
            v609 = v80;
            v610 = 2080;
            v611 = "_VCAudioPlayer_PerformQueueGrowth";
            v612 = 1024;
            v613 = 1478;
            v614 = 1024;
            *v615 = v140;
            *&v615[4] = 1024;
            *&v615[6] = v27;
            *&v615[10] = 2048;
            *&v615[12] = v141;
            _os_log_debug_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Suspend queue growth audio frame %d queueSize %d AvgQsize %f", buf, 0x32u);
          }
        }
      }

      else
      {
        *(v9 + 398) = 0;
        *(v9 + 400) = 0;
        *(v9 + 396) = 0;
        *(v9 + 408) = 0;
      }
    }

    if (*v590 && *v590 != 3)
    {
      goto LABEL_164;
    }

LABEL_120:
    v98 = JitterQueue_Pop(*(v9 + 36));
    v100 = v98;
    v101 = v98 != 0;
    LODWORD(v603[1]) = v101 | (8 * (v98 == 0));
    *(v9 + 68) |= v101;
    if (v98 && !*v9 && *(v9 + 8) >= 6u)
    {
      v102 = (*(a1 + 168) + *(a1 + 172));
      LODWORD(v99) = *(v9 + 460);
      v103 = v99;
      v104 = (*(v98 + 12) - v102) / v103;
      if (v104 >= -*v566)
      {
        goto LABEL_139;
      }

      v105 = *v574;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v112 = VRTraceErrorLogLevelToCSTR();
        v113 = *MEMORY[0x1E6986650];
        v114 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = micro();
            v116 = *(v100 + 12);
            v118 = *(a1 + 168);
            v117 = *(a1 + 172);
            v119 = *(v9 + 28);
            v120 = *(v100 + 1176);
            v121 = *(v100 + 10);
            *buf = 136318210;
            v609 = v112;
            v610 = 2080;
            v611 = "_VCAudioPlayer_DetectLateFrame";
            v612 = 1024;
            v613 = 1504;
            v614 = 2048;
            *v615 = v115;
            *&v615[8] = 2048;
            *&v615[10] = v104 * 1000.0;
            *&v615[18] = 1024;
            *&v615[20] = v116;
            *&v615[24] = 1024;
            *&v615[26] = v102;
            *&v615[30] = 1024;
            *&v615[32] = v117;
            *&v615[36] = 1024;
            *&v615[38] = v118;
            *&v615[42] = 1024;
            *&v615[44] = v116;
            *v616 = 2048;
            *&v616[2] = v119;
            v617 = 1024;
            v618 = v120;
            v619 = 1024;
            v620 = v121;
            _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %7.03f: backtrack: %.01fms (%u - %u,%u,%d,%u) (Jitter Size = %f) DTX %d Seq num %d", buf, 0x64u);
          }
        }

        else if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          v461 = micro();
          v462 = *(v100 + 12);
          v464 = *(a1 + 168);
          v463 = *(a1 + 172);
          v465 = *(v9 + 28);
          v466 = *(v100 + 1176);
          v467 = *(v100 + 10);
          *buf = 136318210;
          v609 = v112;
          v610 = 2080;
          v611 = "_VCAudioPlayer_DetectLateFrame";
          v612 = 1024;
          v613 = 1504;
          v614 = 2048;
          *v615 = v461;
          *&v615[8] = 2048;
          *&v615[10] = v104 * 1000.0;
          *&v615[18] = 1024;
          *&v615[20] = v462;
          *&v615[24] = 1024;
          *&v615[26] = v102;
          *&v615[30] = 1024;
          *&v615[32] = v463;
          *&v615[36] = 1024;
          *&v615[38] = v464;
          *&v615[42] = 1024;
          *&v615[44] = v462;
          *v616 = 2048;
          *&v616[2] = v465;
          v617 = 1024;
          v618 = v466;
          v619 = 1024;
          v620 = v467;
          _os_log_debug_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %7.03f: backtrack: %.01fms (%u - %u,%u,%d,%u) (Jitter Size = %f) DTX %d Seq num %d", buf, 0x64u);
        }
      }

      ++*(v9 + 148);
      if (v105)
      {
        _VCAudioPlayer_UpdatePacketLifeTimeCDF(a1, 0);
        v127 = "played out";
      }

      else
      {
        v127 = "dropped";
      }

      VRLogfilePrintSync(*v570, "Warning: Late packet %s. %.01fms (%u - %u %u %d %u) (Jitter Size = %f) DTX %d Seq num %d\n", v106, v107, v108, v109, v110, v111, v127);
      if (!v105)
      {
        (*(v100 + 1200))(*(v100 + 1208), v100);
        goto LABEL_573;
      }

      if (!*v9)
      {
LABEL_139:
        if (*(v9 + 8) >= 6u)
        {
          LODWORD(v103) = *(v9 + 460);
          v128 = (*(v100 + 12) - (*(a1 + 168) + *(a1 + 172))) / *&v103;
          if (v128 > *v566)
          {
            if (*(a1 + 12) == 1)
            {
              v129 = v128 > *(v9 + 44) || (*(v100 + 10) - *(a1 + 20)) - 2 > 0x7FFC;
              if (!v129)
              {
                JitterQueue_Insert(*(v9 + 36), v100, 0);
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                if (ErrorLogLevelForModule >= 8)
                {
                  v143 = VRTraceErrorLogLevelToCSTR();
                  v144 = *MEMORY[0x1E6986650];
                  v145 = *MEMORY[0x1E6986650];
                  if (*MEMORY[0x1E6986640] == 1)
                  {
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      v146 = micro();
                      *buf = 136316162;
                      v609 = v143;
                      v610 = 2080;
                      v611 = "_VCAudioPlayer_HandleHoleDetection";
                      v612 = 1024;
                      v613 = 1530;
                      v614 = 2048;
                      *v615 = v146;
                      *&v615[8] = 2048;
                      *&v615[10] = v128 * 1000.0;
                      _os_log_impl(&dword_1DB56E000, v144, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %7.03f: silence: %.01fms", buf, 0x30u);
                    }
                  }

                  else if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
                  {
                    v471 = micro();
                    *buf = 136316162;
                    v609 = v143;
                    v610 = 2080;
                    v611 = "_VCAudioPlayer_HandleHoleDetection";
                    v612 = 1024;
                    v613 = 1530;
                    v614 = 2048;
                    *v615 = v471;
                    *&v615[8] = 2048;
                    *&v615[10] = v128 * 1000.0;
                    _os_log_debug_impl(&dword_1DB56E000, v144, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %7.03f: silence: %.01fms", buf, 0x30u);
                  }
                }

LABEL_164:
                v100 = 0;
                goto LABEL_165;
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v130 = VRTraceErrorLogLevelToCSTR();
              v131 = *MEMORY[0x1E6986650];
              v132 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                {
                  v133 = micro();
                  *buf = 136316162;
                  v609 = v130;
                  v610 = 2080;
                  v611 = "_VCAudioPlayer_HandleHoleDetection";
                  v612 = 1024;
                  v613 = 1532;
                  v614 = 2048;
                  *v615 = v133;
                  *&v615[8] = 2048;
                  *&v615[10] = v128 * 1000.0;
                  _os_log_impl(&dword_1DB56E000, v131, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %7.03f: jump: %.01fms", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
              {
                v147 = micro();
                *buf = 136316162;
                v609 = v130;
                v610 = 2080;
                v611 = "_VCAudioPlayer_HandleHoleDetection";
                v612 = 1024;
                v613 = 1532;
                v614 = 2048;
                *v615 = v147;
                *&v615[8] = 2048;
                *&v615[10] = v128 * 1000.0;
                _os_log_debug_impl(&dword_1DB56E000, v131, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %7.03f: jump: %.01fms", buf, 0x30u);
              }
            }
          }
        }
      }
    }

LABEL_165:
    v148 = v100 + 1272;
    LODWORD(v603[1]) |= 4 * (v100 != 0);
    v149 = *(v9 + 468) * *(a1 + 168);
    *(a1 + 164) = v149;
    _VCAudioPlayer_InitializePlaybackBuffer(&v603[3], a1 + 64, v149);
    if (!v100)
    {
      v152 = *a2;
      v153 = *(a4 + 56);
      if (v153)
      {
        *v153 = 1;
      }

      v154 = *v594;
      if (*v594 && !v154[6])
      {
        v156 = v154[5];
        v155 = *(a1 + 168);
      }

      else
      {
        v155 = *(a1 + 168);
        v156 = v152 - v155;
      }

      LODWORD(v603[0]) = v156;
      if (v155 + v156 > *(a1 + 56))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v174 = VRTraceErrorLogLevelToCSTR();
          v175 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v609 = v174;
            v610 = 2080;
            v611 = "_VCAudioPlayer_GetSilenceBufferSampleCount";
            v612 = 1024;
            v613 = 1964;
            v614 = 1024;
            *v615 = v603[0];
            _os_log_impl(&dword_1DB56E000, v175, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d  Decode Buffer Overflow, adding %d = >", buf, 0x22u);
          }
        }

        LODWORD(v603[0]) = *(a1 + 56) - *(a1 + 168);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v176 = VRTraceErrorLogLevelToCSTR();
          v177 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v609 = v176;
            v610 = 2080;
            v611 = "_VCAudioPlayer_GetSilenceBufferSampleCount";
            v612 = 1024;
            v613 = 1966;
            v614 = 1024;
            *v615 = v603[0];
            _os_log_impl(&dword_1DB56E000, v177, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d  clipped to %d", buf, 0x22u);
          }
        }
      }

      if (VRTraceGetErrorLogLevelForModule() > 7)
      {
        v178 = VRTraceErrorLogLevelToCSTR();
        v179 = *MEMORY[0x1E6986650];
        v180 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            v181 = *(a1 + 172);
            *buf = 136316418;
            v609 = v178;
            v610 = 2080;
            v611 = "_VCAudioPlayer_DecodeSilence";
            v612 = 1024;
            v613 = 2066;
            v614 = 1024;
            *v615 = v181;
            *&v615[4] = 1024;
            *&v615[6] = v152;
            *&v615[10] = 1024;
            *&v615[12] = v603[0];
            _os_log_impl(&dword_1DB56E000, v179, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d requiredTimestamp=%d samplesNeeded=%d sampleCount=%d", buf, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
        {
          v439 = *(a1 + 172);
          *buf = 136316418;
          v609 = v178;
          v610 = 2080;
          v611 = "_VCAudioPlayer_DecodeSilence";
          v612 = 1024;
          v613 = 2066;
          v614 = 1024;
          *v615 = v439;
          *&v615[4] = 1024;
          *&v615[6] = v152;
          *&v615[10] = 1024;
          *&v615[12] = v603[0];
          _os_log_debug_impl(&dword_1DB56E000, v179, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d requiredTimestamp=%d samplesNeeded=%d sampleCount=%d", buf, 0x2Eu);
        }
      }

      if (SLODWORD(v603[0]) < 1)
      {
        v190 = 1;
        goto LABEL_445;
      }

      HIDWORD(v603[0]) = *(v9 + 468) * LODWORD(v603[0]) * *(v9 + 472);
      if (*(v9 + 728))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v182 = VRTraceErrorLogLevelToCSTR();
          v183 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v184 = *(v9 + 28);
            v185 = *(a1 + 20) + 1;
            v186 = *v9;
            *buf = 136316418;
            v609 = v182;
            v610 = 2080;
            v611 = "_VCAudioPlayer_UpdateSilenceDecodeMetrics";
            v612 = 1024;
            v613 = 1991;
            v614 = 2048;
            *v615 = v184;
            *&v615[8] = 1024;
            *&v615[10] = v185;
            *&v615[14] = 1024;
            *&v615[16] = v186;
            _os_log_impl(&dword_1DB56E000, v183, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Missing a packet %f [expected seq = %x] DTX[%d]", buf, 0x32u);
          }
        }
      }

      v187.i32[0] = 1;
      v187.i32[1] = *v9;
      *(v9 + 820) = vadd_s32(*(v9 + 820), v187);
      if (*v594)
      {
        v188 = *(*v594 + 1);
        v189 = v188 + 280;
      }

      else
      {
        v189 = 0;
        v188 = 0;
      }

      v191 = 0.0;
      if (VRTraceIsInternalOSInstalled())
      {
        v191 = micro();
      }

      kdebug_trace();
      if ((v603[0] & 0x8000000000000000) != 0 || v603[4] < SHIDWORD(v603[0]) || v188 && v188 >= v189)
      {
        goto LABEL_707;
      }

      v192 = SoundDec_Decode(v188, 0, 0, v603[3], SHIDWORD(v603[0]), v603 + 1, LOBYTE(v603[2]));
      kdebug_trace();
      if (v192 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v200 = VRTraceErrorLogLevelToCSTR();
          v201 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v450 = *v9;
            v451 = *(a1 + 20);
            *buf = 136317442;
            v609 = v200;
            v610 = 2080;
            v611 = "_VCAudioPlayer_DecodeSilence";
            v612 = 1024;
            v613 = 2090;
            v614 = 1024;
            *v615 = v192;
            *&v615[4] = 1024;
            *&v615[6] = HIDWORD(v603[1]);
            *&v615[10] = 1024;
            *&v615[12] = v603[1];
            *&v615[16] = 1024;
            *&v615[18] = v450;
            *&v615[22] = 1024;
            *&v615[24] = v451;
            *&v615[28] = 1024;
            *&v615[30] = LOBYTE(v603[2]);
            *&v615[34] = 1024;
            *&v615[36] = v603[0];
            _os_log_error_impl(&dword_1DB56E000, v201, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d nil SoundDec_Decode failed (%x). Previous payload=%d, history=%x, dtx=%d lastSeq=%x reset=%d sampleCount=%d", buf, 0x46u);
          }
        }

        _VCAudioPlayer_ResetPlaybackBuffer(&v603[3]);
        VRLogfilePrintSync(*v570, "Warning: Nil decoding failed\n", v202, v203, v204, v205, v206, v207, v563);
        v11 = a1 + 36265;
      }

      LogProfileTimeOverLimit_3("SpkrProc: SoundDec_Decode", v191, 0.00300000003, v193, v194, v195, v196, v197, v198, v199, v563);
      _VCAudioPlayer_UpdateOpusDecodeFECStatus(a1, v188);
      HIDWORD(v603[0]) = *(v9 + 468) * LODWORD(v603[0]);
      HIDWORD(v607) = HIDWORD(v603[0]);
      _VCAudioPlayer_CopyDecodedSamplesToInput(&v603[3]);
      v208 = *(a1 + 50);
      if (*(a1 + 50))
      {
        if (v208 > 0x10)
        {
          goto LABEL_707;
        }

        bzero((a1 + 34), v208);
      }

      if (SHIDWORD(v603[0]) < 1)
      {
        v190 = 0;
        goto LABEL_445;
      }

      if (*v594 && !(*v594)[6])
      {
        v209 = *(a1 + 4);
        if (!v209)
        {
          goto LABEL_583;
        }
      }

      else
      {
        v209 = *(a1 + 4);
        v210 = LODWORD(v603[0]);
        if (v209)
        {
          if (SDWORD2(v607) >= 1)
          {
            v211 = 0;
            do
            {
              v212 = &v603[3 * v211 + 3];
              v213 = (*(v9 + 468) * v210);
              if (v212[1] < v213)
              {
                goto LABEL_707;
              }

              bzero(*v212, v213);
              ++v211;
            }

            while (SDWORD2(v607) > v211);
            v209 = *(a1 + 4);
          }

          goto LABEL_584;
        }

        v356 = 1.0 / SLODWORD(v603[0]);
        v357 = DWORD2(v607);
        if (*(v9 + 476))
        {
          if (SDWORD2(v607) >= 1)
          {
            v358 = 0;
            while (v210 < 1)
            {
LABEL_414:
              if (v357 <= ++v358)
              {
                goto LABEL_583;
              }
            }

            v359 = &v603[3 * v358 + 3];
            v360 = *v359;
            v361 = v359[1] + *v359;
            v362 = v360;
            v363 = v210;
            while (v362 < v361 && v362 >= v360)
            {
              *v362 = (v356 * v363) * *v362;
              ++v362;
              if (!--v363)
              {
                goto LABEL_414;
              }
            }

            goto LABEL_707;
          }
        }

        else if (SDWORD2(v607) >= 1)
        {
          v424 = 0;
          while (v210 < 1)
          {
LABEL_582:
            if (v357 <= ++v424)
            {
              goto LABEL_583;
            }
          }

          v425 = &v603[3 * v424 + 3];
          v426 = *v425;
          v427 = v425[1] + *v425;
          v428 = v426;
          v429 = v210;
          while (v428 < v427 && v428 >= v426)
          {
            *v428 = ((v356 * v429) * *v428);
            ++v428;
            if (!--v429)
            {
              goto LABEL_582;
            }
          }

LABEL_707:
          __break(0x5519u);
        }

LABEL_583:
        v209 = 0;
        v597 = (v597 + 1);
        *(a1 + 436) += LODWORD(v603[0]);
      }

LABEL_584:
      v190 = 0;
      *(a1 + 4) = v209 + 1;
      goto LABEL_445;
    }

    if (v100 >= v148)
    {
      goto LABEL_707;
    }

    v150 = *(v100 + 12);
    v151 = *v9;
    if (*v9 && !*(v100 + 1176))
    {
LABEL_181:
      if (*(a1 + 168) >= 1)
      {
        *(a1 + 168) = 0;
      }

      if (*(a1 + 304) >= 1)
      {
        *(a1 + 304) = 0;
        v157 = *(v9 + 464);
        *a2 = v157;
        *a3 = v157;
        v151 = *v9;
      }

      *(v9 + 52) = v150;
      goto LABEL_186;
    }

    if (*(v9 + 476) == 1)
    {
      if (*(a1 + 792) >= 0.0058 || *(a1 + 796) >= 0.0058)
      {
        goto LABEL_186;
      }
    }

    else if (*(a1 + 784) >= 72.0 || *(a1 + 788) >= 72.0)
    {
      goto LABEL_186;
    }

    if (*(v100 + 4))
    {
      goto LABEL_181;
    }

LABEL_186:
    v158 = *(v100 + 1176);
    if (!v151 && v158)
    {
      *(a1 + 16) = *(v100 + 12);
    }

    v587 = *(a4 + 56);
    v159 = *(v100 + 1172);
    *v9 = v158;
    v160 = *(*(v100 + 1216) + 8);
    v603[0] = __PAIR64__(*(v9 + 468) * v159 * *(v9 + 472), v159);
    v161 = 0.0;
    if (VRTraceIsInternalOSInstalled())
    {
      v161 = micro();
    }

    v162 = v603[1];
    v163 = HIDWORD(v603[1]);
    v164 = *(v100 + 1216);
    v165 = *(v164 + 8);
    if ((*(a1 + 28) & 1) != 0 || *(v100 + 1234) != *(a1 + 32))
    {
      SoundDec_Reset(*(v164 + 8));
      *(a1 + 32) = *(v100 + 1234);
      *(a1 + 28) = 0;
      v164 = *(v100 + 1216);
    }

    if (*v164 == v163)
    {
      __C = 0;
      v576 = 0;
      v578 = 0;
    }

    else
    {
      LOBYTE(v603[2]) = 1;
      if (v163 == 13)
      {
        v166 = *(*v594 + 1);
        v167 = *(a1 + 536);
        v602 = v167;
        if ((v167 & 0x80000000) != 0 || v167 > v167)
        {
          goto LABEL_707;
        }

        v168 = SoundDec_Decode(v166, 0, 0, *(a1 + 512), v167, &v602, 0);
        if (v168 < 0)
        {
          v251 = v168;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v579 = VRTraceErrorLogLevelToCSTR();
            v252 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v452 = **(v100 + 1216);
              v453 = *(a1 + 20);
              v454 = *(v100 + 10);
              *buf = 136317442;
              v609 = v579;
              v610 = 2080;
              v611 = "_VCAudioPlayer_HandleComfortNoiseTransition";
              v612 = 1024;
              v613 = 1795;
              v614 = 1024;
              *v615 = v251;
              *&v615[4] = 1024;
              *&v615[6] = 13;
              *&v615[10] = 1024;
              *&v615[12] = v452;
              *&v615[16] = 1024;
              *&v615[18] = v162;
              *&v615[22] = 1024;
              *&v615[24] = v453;
              *&v615[28] = 1024;
              *&v615[30] = v454;
              *&v615[34] = 1024;
              *&v615[36] = LOBYTE(v603[2]);
              _os_log_error_impl(&dword_1DB56E000, v252, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d nil decode for crossfade failed (%x). Previous payload=%d, payload=%d, history=%x lastSeq=%x seq=%d reset=%d", buf, 0x46u);
            }
          }

          __C = 0;
          v576 = 0;
          v578 = 0;
        }

        else
        {
          __C = *(a1 + 512);
          v576 = *(a1 + 536);
          v578 = v602;
        }
      }

      else if (*v164 == 13)
      {
        SoundDec_Reset(v165);
        v169 = *(a1 + 328);
        if (v169 && !*(a1 + 336))
        {
          goto LABEL_707;
        }

        SoundDec_SetDTXPrimerSamples(v165, v169, *(v9 + 468) * *(a1 + 320));
        if (*(a1 + 424) >= 2)
        {
          v170 = 1;
          do
          {
            v171 = &v593[6 * v170];
            v172 = *(a1 + 428);
            if (*(a1 + 336) < v172 || *(v171 + 1) < v172)
            {
              goto LABEL_707;
            }

            memcpy(*v171, *(a1 + 328), v172);
          }

          while (*(a1 + 424) > ++v170);
        }

        __C = 0;
        v576 = 0;
        v578 = 0;
        LOBYTE(v603[2]) = 0;
      }

      else
      {
        __C = 0;
        v576 = 0;
        v578 = 0;
      }

      *v594 = *(v100 + 1216);
      VCSilencePredictor_Reset(a1 + 552);
    }

    if (*(v100 + 1224))
    {
      SoundDec_SetEVSDecodeRF(v160, *(v100 + 1228));
    }

    kdebug_trace();
    *(v9 + 808) = *(v100 + 1256);
    if (*v573)
    {
      VCAudioDump_LogCompressedAudio(*v573, (v100 + 16), *(v100 + 1144), (v100 + 12), (v100 + 10), (v100 + 1184));
    }

    if ((v603[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_707;
    }

    if (v603[4] < SHIDWORD(v603[0]))
    {
      goto LABEL_707;
    }

    v214 = *(v100 + 1144);
    if (v214 > 0x465)
    {
      goto LABEL_707;
    }

    v215 = SoundDec_Decode(v160, (v100 + 16), v214, v603[3], SHIDWORD(v603[0]), v603 + 1, LOBYTE(v603[2]));
    kdebug_trace();
    LogProfileTimeOverLimit_3("SpkrProc: SoundDec_Decode", v161, 0.00300000003, v216, v217, v218, v219, v220, v221, v222, v563);
    v223 = HIDWORD(v603[0]);
    v224 = *(v9 + 468);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v225 = v223 / v224;
      v226 = VRTraceErrorLogLevelToCSTR();
      v227 = *MEMORY[0x1E6986650];
      v228 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
        {
          v229 = *(v100 + 12);
          v230 = *(v100 + 1176);
          v231 = *(v100 + 10);
          v233 = *(a1 + 168);
          v232 = *(a1 + 172);
          *buf = 136317442;
          v609 = v226;
          v610 = 2080;
          v611 = "_VCAudioPlayer_DecodeSpeech";
          v612 = 1024;
          v613 = 1895;
          v614 = 1024;
          *v615 = v232;
          *&v615[4] = 1024;
          *&v615[6] = v229;
          *&v615[10] = 1024;
          *&v615[12] = v230;
          *&v615[16] = 1024;
          *&v615[18] = v231;
          *&v615[22] = 1024;
          *&v615[24] = v597;
          *&v615[28] = 1024;
          *&v615[30] = v233;
          *&v615[34] = 1024;
          *&v615[36] = v225;
          _os_log_impl(&dword_1DB56E000, v227, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d requiredTimestamp=%d selectedTimestamp=%d dtx=%{BOOL}d sequenceNumber=%hu decodedCount=%d samples=%d decodedSamples=%d", buf, 0x46u);
        }
      }

      else if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
      {
        v430 = *(v100 + 12);
        v431 = *(v100 + 1176);
        v432 = *(v100 + 10);
        v434 = *(a1 + 168);
        v433 = *(a1 + 172);
        *buf = 136317442;
        v609 = v226;
        v610 = 2080;
        v611 = "_VCAudioPlayer_DecodeSpeech";
        v612 = 1024;
        v613 = 1895;
        v614 = 1024;
        *v615 = v433;
        *&v615[4] = 1024;
        *&v615[6] = v430;
        *&v615[10] = 1024;
        *&v615[12] = v431;
        *&v615[16] = 1024;
        *&v615[18] = v432;
        *&v615[22] = 1024;
        *&v615[24] = v597;
        *&v615[28] = 1024;
        *&v615[30] = v434;
        *&v615[34] = 1024;
        *&v615[36] = v225;
        _os_log_debug_impl(&dword_1DB56E000, v227, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d requiredTimestamp=%d selectedTimestamp=%d dtx=%{BOOL}d sequenceNumber=%hu decodedCount=%d samples=%d decodedSamples=%d", buf, 0x46u);
      }
    }

    v234 = *(a1 + 12);
    *(a1 + 12) = 1;
    _VCAudioPlayer_UpdateOpusDecodeFECStatus(a1, v160);
    HIDWORD(v603[0]) = *(v9 + 468) * LODWORD(v603[0]);
    HIDWORD(v607) = HIDWORD(v603[0]);
    _VCAudioPlayer_CopyDecodedSamplesToInput(&v603[3]);
    if (v215 < 0)
    {
      if (v234)
      {
        v235 = 0;
        v236 = 3;
      }

      else
      {
        v235 = *(a1 + 12);
        if (v235)
        {
          v236 = 5;
        }

        else
        {
          v236 = 3;
        }
      }

      if (v236 <= VRTraceGetErrorLogLevelForModule())
      {
        v243 = VRTraceErrorLogLevelToCSTR();
        v244 = *MEMORY[0x1E6986650];
        v245 = *MEMORY[0x1E6986650];
        if (v235)
        {
          if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
          {
            v246 = **(v100 + 1216);
            v247 = *v9;
            v248 = *(a1 + 20);
            v249 = *(v100 + 10);
            v250 = *(a1 + 12);
            *buf = 136317954;
            v609 = v243;
            v610 = 2080;
            v611 = "_VCAudioPlayer_DecodeSpeech";
            v612 = 1024;
            v613 = 1911;
            v614 = 1024;
            *v615 = v215;
            *&v615[4] = 1024;
            *&v615[6] = HIDWORD(v603[1]);
            *&v615[10] = 1024;
            *&v615[12] = v246;
            *&v615[16] = 1024;
            *&v615[18] = v247;
            *&v615[22] = 1024;
            *&v615[24] = v248;
            *&v615[28] = 1024;
            *&v615[30] = v249;
            *&v615[34] = 1024;
            *&v615[36] = LOBYTE(v603[2]);
            *&v615[40] = 1024;
            *&v615[42] = v250;
            *&v615[46] = 1024;
            *v616 = 1;
            _os_log_impl(&dword_1DB56E000, v244, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d SoundDec_Decode failed (%x). Previous payload=%d, payload=%d, dtx=%d lastSeq=%x seq=%x reset=%d firstFrameDecoded=%{BOOL}d isFirstFrameDecode=%{BOOL}d", buf, 0x52u);
          }
        }

        else if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
        {
          v440 = **(v100 + 1216);
          v441 = *v9;
          v442 = *(a1 + 20);
          v443 = *(v100 + 10);
          v444 = *(a1 + 12);
          *buf = 136317954;
          v609 = v243;
          v610 = 2080;
          v611 = "_VCAudioPlayer_DecodeSpeech";
          v612 = 1024;
          v613 = 1911;
          v614 = 1024;
          *v615 = v215;
          *&v615[4] = 1024;
          *&v615[6] = HIDWORD(v603[1]);
          *&v615[10] = 1024;
          *&v615[12] = v440;
          *&v615[16] = 1024;
          *&v615[18] = v441;
          *&v615[22] = 1024;
          *&v615[24] = v442;
          *&v615[28] = 1024;
          *&v615[30] = v443;
          *&v615[34] = 1024;
          *&v615[36] = LOBYTE(v603[2]);
          *&v615[40] = 1024;
          *&v615[42] = v444;
          *&v615[46] = 1024;
          *v616 = 0;
          _os_log_error_impl(&dword_1DB56E000, v244, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d SoundDec_Decode failed (%x). Previous payload=%d, payload=%d, dtx=%d lastSeq=%x seq=%x reset=%d firstFrameDecoded=%{BOOL}d isFirstFrameDecode=%{BOOL}d", buf, 0x52u);
        }
      }

      VRLogfilePrintSync(*v570, "Warning: Sound decoding failed. Timestamp=%d SeqNumber=%d DTX=%d\n", v237, v238, v239, v240, v241, v242, *(v100 + 12));
    }

    v253 = *(a1 + 30);
    v254 = *(v100 + 1232);
    if (v253 <= v254)
    {
      LOBYTE(v253) = *(v100 + 1232);
    }

    *(a1 + 30) = v253;
    *(a1 + 29) = v254;
    *(a1 + 20) = *(v100 + 10);
    *(a1 + 24) = *(v100 + 12);
    v255 = *(v9 + 148) + JitterQueue_GetSpeechUnderflowCount(*(v9 + 36));
    *(v9 + 144) = v255;
    v256 = *(v9 + 140);
    if (*(v9 + 196) - 1 >= (*(v9 + 76) - *(v100 + 1192)) / *(v9 + 464))
    {
      v257 = (*(v9 + 76) - *(v100 + 1192)) / *(v9 + 464);
    }

    else
    {
      v257 = *(v9 + 196) - 1;
    }

    v258 = *(a1 + 168);
    v259 = *(a1 + 304);
    v260 = VCTimescale_TailSize(v574);
    v261 = *(v100 + 1176);
    if (!v261)
    {
      v262 = *(v9 + 100);
      v263 = v262 + 40 * *(v9 + 112);
      if (v262 > v263 || v263 + 40 > v262 + 40 * *(v9 + 108))
      {
        goto LABEL_707;
      }

      v264 = ((v259 + v258 + v260 + *(v9 + 76) - *(v100 + 1192)) / *(v9 + 460));
      *v263 = v264;
      *(v263 + 8) = v264;
      *(v263 + 16) = v255 - v256;
      *(v263 + 20) = v257;
      *(v263 + 24) = *(v100 + 8);
      *(v263 + 28) = *(v9 + 276);
      *(v263 + 32) = *(v100 + 1264);
    }

    v265 = *(v9 + 144);
    *(v9 + 140) = v265;
    if ((v265 - *(v9 + 156)) > 5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v266 = VRTraceErrorLogLevelToCSTR();
        v267 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v435 = *(v9 + 144) - *(v9 + 156);
          v436 = *(v100 + 12);
          v437 = *(v100 + 10);
          *buf = 136316418;
          v609 = v266;
          v610 = 2080;
          v611 = "_VCAudioPlayer_AddFrameToHistory";
          v612 = 1024;
          v613 = 1731;
          v614 = 1024;
          *v615 = v435;
          *&v615[4] = 1024;
          *&v615[6] = v436;
          *&v615[10] = 1024;
          *&v615[12] = v437;
          _os_log_error_impl(&dword_1DB56E000, v267, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Late packets played=%d currentTimestamp=%u currentSeqNum=%d", buf, 0x2Eu);
        }
      }

      *(v9 + 156) = *(v9 + 144);
    }

    if (!v261)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v268 = VRTraceErrorLogLevelToCSTR();
        v269 = *MEMORY[0x1E6986650];
        v270 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
          {
            v271 = *(v9 + 112);
            v272 = *(v9 + 100);
            v273 = v272 + 40 * v271;
            if (v273 >= v272 + 40 * *(v9 + 108) || v273 < v272)
            {
              goto LABEL_707;
            }

            v274 = *(v273 + 8);
            v275 = *(v273 + 16);
            *buf = 136316418;
            v609 = v268;
            v610 = 2080;
            v611 = "_VCAudioPlayer_AddFrameToHistory";
            v612 = 1024;
            v613 = 1736;
            v614 = 1024;
            *v615 = v271;
            *&v615[4] = 2048;
            *&v615[6] = v274;
            *&v615[14] = 1024;
            *&v615[16] = v275;
            _os_log_impl(&dword_1DB56E000, v269, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d QueueSteering: Adding frame to history. Index=%d, packetLifeTime=%f, erasureCount=%d\n", buf, 0x32u);
          }
        }

        else if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
        {
          v445 = *(v9 + 112);
          v446 = *(v9 + 100);
          v447 = v446 + 40 * v445;
          if (v447 >= v446 + 40 * *(v9 + 108) || v447 < v446)
          {
            goto LABEL_707;
          }

          v448 = *(v447 + 8);
          v449 = *(v447 + 16);
          *buf = 136316418;
          v609 = v268;
          v610 = 2080;
          v611 = "_VCAudioPlayer_AddFrameToHistory";
          v612 = 1024;
          v613 = 1736;
          v614 = 1024;
          *v615 = v445;
          *&v615[4] = 2048;
          *&v615[6] = v448;
          *&v615[14] = 1024;
          *&v615[16] = v449;
          _os_log_debug_impl(&dword_1DB56E000, v269, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d QueueSteering: Adding frame to history. Index=%d, packetLifeTime=%f, erasureCount=%d\n", buf, 0x32u);
        }
      }

      v276 = *(v9 + 116);
      v277 = *(v9 + 108);
      if (v276 + 1 < v277)
      {
        v278 = v276 + 1;
      }

      else
      {
        v278 = *(v9 + 108);
      }

      *(v9 + 112) = (*(v9 + 112) + 1) % v277;
      *(v9 + 116) = v278;
      v279 = *(v9 + 128);
      *(v9 + 128) = 0;
      *(v9 + 132) = v279;
      *(v9 + 124) = 0;
      v280 = v278 - 1;
      if (v280 <= 1)
      {
        v281 = 1;
      }

      else
      {
        v281 = v280;
      }

      *(v9 + 236) = 0xBFF0000000000000;
      *(v9 + 220) = v567;
      bzero(*(v9 + 188), 4 * *(v9 + 196));
      if (v281 >= 1)
      {
        v282 = *(v9 + 100);
        v283 = v282;
        v284 = v281;
        while (v283 >= v282 && v283 < v282 + 40 * *(v9 + 108))
        {
          ++*(*(v9 + 188) + 4 * *(v283 + 20));
          v283 += 40;
          if (!--v284)
          {
            goto LABEL_325;
          }
        }

        goto LABEL_707;
      }

LABEL_325:
      LOWORD(v285) = *(v9 + 196);
      if (v285)
      {
        v286 = 0;
        v287 = 0;
        v288 = v281;
        v289 = 1;
        while (1)
        {
          v290 = 0;
          v291 = *v600 * v287;
          v292 = v291;
          v293 = *(v9 + 188);
          v294 = v293 + 4 * v285;
          v295 = (v293 + v286);
          v296 = v289;
          do
          {
            if (v295 >= v294 || v295 < v293)
            {
              goto LABEL_707;
            }

            v297 = *v295--;
            v290 += v297;
            v129 = v296-- <= 1;
          }

          while (!v129);
          v298 = v290 / v288;
          if (v298 >= 0.05 && *__N == -1.0)
          {
            v299 = 5;
            v300 = (v9 + 236);
          }

          else if (v298 >= 0.1 && *v595 == -1.0)
          {
            v299 = 10;
            v300 = (v9 + 228);
          }

          else
          {
            if (v298 < 0.9 || (v300 = (v9 + 220), *v591 != -1.0))
            {
              v299 = 0;
              goto LABEL_343;
            }

            v299 = 90;
          }

          *v300 = v291;
LABEL_343:
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v301 = VRTraceErrorLogLevelToCSTR();
            v302 = *MEMORY[0x1E6986650];
            v303 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v609 = v301;
                v610 = 2080;
                v611 = "_VCAudioPlayer_CalcPacketLifeTimeCDFs";
                v612 = 1024;
                v613 = 1581;
                v614 = 1024;
                *v615 = v299;
                *&v615[4] = 2048;
                *&v615[6] = v292;
                _os_log_impl(&dword_1DB56E000, v302, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d QueueSteering: Packet Lifetime=%d percentile=%f", buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v303, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v609 = v301;
              v610 = 2080;
              v611 = "_VCAudioPlayer_CalcPacketLifeTimeCDFs";
              v612 = 1024;
              v613 = 1581;
              v614 = 1024;
              *v615 = v299;
              *&v615[4] = 2048;
              *&v615[6] = v292;
              _os_log_debug_impl(&dword_1DB56E000, v302, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d QueueSteering: Packet Lifetime=%d percentile=%f", buf, 0x2Cu);
            }
          }

          ++v287;
          v285 = *(v9 + 196);
          ++v289;
          v286 += 4;
          if (v287 >= v285)
          {
            v304 = v287;
            goto LABEL_352;
          }
        }
      }

      v304 = 0.0;
LABEL_352:
      v305 = *v591;
      v306 = *v595;
      if (*v591 == -1.0 || v306 == -1.0)
      {
        v308 = v304 * *v600;
        v309 = *__N;
        v310 = v308;
        if (*__N == -1.0)
        {
          v309 = v310;
        }

        *__N = v309;
        if (v306 == -1.0)
        {
          v306 = v310;
        }

        *v595 = v306;
        if (v305 == -1.0)
        {
          v305 = v310;
        }

        *v591 = v305;
      }

      v311 = *(v9 + 112);
      if (v311 < 2)
      {
        v311 = *(v9 + 116);
      }

      v312 = v311 - 1;
      v313 = *(v9 + 108);
      if (v311 - 1 <= v313)
      {
        v318 = *(v9 + 116);
        if (v318 < 2)
        {
          v322 = 0;
          v345 = 0.0;
        }

        else
        {
          v319 = 0;
          v320 = 0;
          v321 = 0;
          v322 = 0;
          v323 = 0;
          v324 = v318 - 1;
          v325 = *(v9 + 100);
          v326 = v325 + 40 * v313;
          v327 = 0.0;
          v328 = v324;
          v329 = 0.0;
          v330 = 0.0;
          do
          {
            v331 = v325 + 40 * v312;
            if (v325 > v331 || v331 + 40 > v326)
            {
              goto LABEL_707;
            }

            v333 = *(v331 + 16);
            *(v9 + 128) += v333;
            v334 = *(v9 + 212);
            v335 = *v331;
            if (v319 < v334)
            {
              *(v9 + 124) += v333;
              v329 = v329 + v335;
              if (v335 <= *v600)
              {
                ++v321;
              }

              if (*(v9 + 540) <= *(v331 + 28))
              {
                ++v323;
              }

              ++v319;
            }

            v330 = v330 + v335;
            v327 = fmax(v327, v335);
            v322 += *(v331 + 24);
            v336 = *(v331 + 32);
            if (v320 <= v336)
            {
              v320 = v336;
            }

            if (v312 - 1 <= 0x80000001)
            {
              --v312;
            }

            else
            {
              v312 = v324;
            }

            --v328;
          }

          while (v328);
          if (v319)
          {
            *(v9 + 272) = v321;
            v337 = v329 / v319;
            *(v9 + 244) = v337;
            *(v9 + 280) = v323;
            v338 = *(v9 + 216);
            v339 = *(v9 + 204);
            v340 = v339 + 8 * v334;
            v341 = (v339 + 8 * v338);
            if (v341 >= v340 || v341 < v339)
            {
              goto LABEL_707;
            }

            *v341 = v337;
            v342 = (v339 + 8 * ((v334 + v338 - 1) % v334));
            if (v342 >= v340 || v342 < v339)
            {
              goto LABEL_707;
            }

            v344 = *v342;
            *(v9 + 268) = *v342 * *(v9 + 172) < v337;
            *(v9 + 269) = v344 * *(v9 + 180) > v337;
            *(v9 + 216) = (v338 + 1) % v334;
          }

          *(v9 + 152) = v322;
          *(v9 + 160) = v320;
          *(v9 + 164) = v322 / v324;
          *(v9 + 252) = v330 / v324;
          *(v9 + 260) = v327;
          v345 = v320;
        }

        v346 = *(v9 + 460);
        if (v346)
        {
          *(v9 + 624) = fmaxf(*(v9 + 624), v345 / v346);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v347 = VRTraceErrorLogLevelToCSTR();
          v348 = *MEMORY[0x1E6986650];
          v349 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
            {
              v350 = *(v9 + 244);
              v351 = *(v9 + 124);
              v352 = *(v9 + 160);
              v353 = *(v9 + 164);
              v354 = *v565;
              v355 = *v564;
              *buf = 136317442;
              v609 = v347;
              v610 = 2080;
              v611 = "_VCAudioPlayer_CalculateQueueSteeringKPIs";
              v612 = 1024;
              v613 = 1687;
              v614 = 2048;
              *v615 = v350;
              *&v615[8] = 1024;
              *&v615[10] = v351;
              *&v615[14] = 1024;
              *&v615[16] = v322;
              *&v615[20] = 1024;
              *&v615[22] = v352;
              *&v615[26] = 2048;
              *&v615[28] = v353;
              *&v615[36] = 2048;
              *&v615[38] = v354;
              *&v615[46] = 2048;
              *v616 = v355;
              _os_log_impl(&dword_1DB56E000, v348, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d QueueSteering: packetLifeTimeAvg=%f, frameErasurecount=%u countOfRedFrames=%d, redFrameDelayInSamples=%d redRecoveryRate=%f targetBoostingInSec=%f, currentTargetQueueSize=%f\n", buf, 0x56u);
            }
          }

          else if (os_log_type_enabled(v349, OS_LOG_TYPE_DEBUG))
          {
            v455 = *(v9 + 244);
            v456 = *(v9 + 124);
            v457 = *(v9 + 160);
            v458 = *(v9 + 164);
            v459 = *v565;
            v460 = *v564;
            *buf = 136317442;
            v609 = v347;
            v610 = 2080;
            v611 = "_VCAudioPlayer_CalculateQueueSteeringKPIs";
            v612 = 1024;
            v613 = 1687;
            v614 = 2048;
            *v615 = v455;
            *&v615[8] = 1024;
            *&v615[10] = v456;
            *&v615[14] = 1024;
            *&v615[16] = v322;
            *&v615[20] = 1024;
            *&v615[22] = v457;
            *&v615[26] = 2048;
            *&v615[28] = v458;
            *&v615[36] = 2048;
            *&v615[38] = v459;
            *&v615[46] = 2048;
            *v616 = v460;
            _os_log_debug_impl(&dword_1DB56E000, v348, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d QueueSteering: packetLifeTimeAvg=%f, frameErasurecount=%u countOfRedFrames=%d, redFrameDelayInSamples=%d redRecoveryRate=%f targetBoostingInSec=%f, currentTargetQueueSize=%f\n", buf, 0x56u);
          }
        }

        *(v9 + 796) = vrev64_s32(vcvt_f32_f64(*(v9 + 252)));
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v314 = VRTraceErrorLogLevelToCSTR();
        v315 = *MEMORY[0x1E6986650];
        v316 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
          {
            v317 = *(v9 + 108);
            *buf = 136316162;
            v609 = v314;
            v610 = 2080;
            v611 = "_VCAudioPlayer_CalculateQueueSteeringKPIs";
            v612 = 1024;
            v613 = 1648;
            v614 = 1024;
            *v615 = v312;
            *&v615[4] = 1024;
            *&v615[6] = v317;
            _os_log_impl(&dword_1DB56E000, v315, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Index=%d is out of bounds compared to packet lifetime history=%u", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v316, OS_LOG_TYPE_DEBUG))
        {
          v364 = *(v9 + 108);
          *buf = 136316162;
          v609 = v314;
          v610 = 2080;
          v611 = "_VCAudioPlayer_CalculateQueueSteeringKPIs";
          v612 = 1024;
          v613 = 1648;
          v614 = 1024;
          *v615 = v312;
          *&v615[4] = 1024;
          *&v615[6] = v364;
          _os_log_debug_impl(&dword_1DB56E000, v315, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Index=%d is out of bounds compared to packet lifetime history=%u", buf, 0x28u);
        }
      }
    }

    JitterQueue_SetLastDecodedFrameTimestamp(*(v9 + 36), *(a1 + 24));
    if (LOBYTE(v603[2]))
    {
      if (*(v9 + 472) == 1)
      {
        if (v603[4] < SHIDWORD(v603[0]) || v578 > v576)
        {
          goto LABEL_707;
        }

        Crossfade_Apply(v585, __C, v578, v603[3], SHIDWORD(v603[0]));
        if (*(a1 + 440) == 1)
        {
          v365 = *(v9 + 468);
          if (v365)
          {
            _VCAudioPlayer_SimulateCrossFade(a1, 0, &v603[3], HIDWORD(v603[0]) / v365);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v366 = VRTraceErrorLogLevelToCSTR();
        v367 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v438 = *(v9 + 472);
          *buf = 136315906;
          v609 = v366;
          v610 = 2080;
          v611 = "_VCAudioPlayer_CrossFade";
          v612 = 1024;
          v613 = 1837;
          v614 = 1024;
          *v615 = v438;
          _os_log_error_impl(&dword_1DB56E000, v367, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Attempting to cross-fade with non-mono channels=%u", buf, 0x22u);
        }
      }
    }

    *(a1 + 176) = 1;
    v368 = *(v100 + 12);
    *(a1 + 172) = v368 - *(a1 + 168);
    *(a1 + 436) = LODWORD(v603[0]) + v368;
    v369 = *(v100 + 1168);
    if (v369 > 0x10)
    {
      goto LABEL_707;
    }

    memcpy((a1 + 34), (v100 + 1152), v369);
    *(a1 + 50) = *(v100 + 1168);
    v11 = a1 + 36265;
    v148 = v100 + 1272;
    if (*(a1 + 4) && SHIDWORD(v603[0]) >= 1)
    {
      if (*(*(v100 + 1216) + 24))
      {
        v370 = *(v9 + 468);
        if (v370)
        {
          _VCAudioPlayer_Sample_RampUp(a1, &v603[3], HIDWORD(v603[0]) / v370);
        }
      }

      *(a1 + 4) = 0;
    }

    if (v587)
    {
      *v587 = 0;
    }

    v371 = (v572 + 2 * *v588);
    if (v371 >= v588 || v371 < v572)
    {
      goto LABEL_707;
    }

    v190 = 0;
    v597 = (v597 + 1);
    *v371 = *(v100 + 10);
    *v588 = *v588 + 1 - 320 * ((13421773 * (*v588 + 1)) >> 32);
LABEL_445:
    if (*v582)
    {
      if (v603[3] && !v603[4])
      {
        goto LABEL_707;
      }

      VCAudioDump_LogUnCompressedAudio(*v582, v603[3], 0, HIDWORD(v603[0]));
    }

    if (v190)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v478 = VRTraceErrorLogLevelToCSTR();
        v475 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v609 = v478;
          v610 = 2080;
          v611 = "_VCAudioPlayer_DecodeSamples";
          v612 = 1024;
          v613 = 2424;
          v614 = 1024;
          *v615 = v603[0];
          v477 = "VCAudioPlayer [%s] %s:%d  sampleCount<=0 breaking loop %d";
LABEL_603:
          _os_log_impl(&dword_1DB56E000, v475, OS_LOG_TYPE_DEFAULT, v477, buf, 0x22u);
        }
      }

      goto LABEL_604;
    }

    if (v100 >= v148)
    {
      goto LABEL_707;
    }

    v372 = *v9;
    v373.i32[0] = 1;
    v373.i32[1] = *v9 == 0;
    *(v9 + 812) = vadd_s32(*(v9 + 812), v373);
    ++*(v9 + 588);
    if (v100)
    {
      if (*(v100 + 1176))
      {
        v374 = 0;
        goto LABEL_468;
      }

      if (*(v9 + 476) == 1)
      {
        if (*(a1 + 792) < 0.0058)
        {
          _NF = *(a1 + 796) < 0.0058;
LABEL_463:
          v378 = _NF;
LABEL_467:
          v374 = v378 ^ 1;
LABEL_468:
          *(v9 + 592) += v374;
          ++*(v9 + 676);
          if (*(v100 + 12) < *(v9 + 1784) || *(v100 + 1232) < 2u)
          {
            v375 = 0;
          }

          else
          {
            v375 = 0;
            *(v9 + 1780) = 0;
          }

          v376 = 1;
          goto LABEL_473;
        }
      }

      else if (*(a1 + 784) < 72.0)
      {
        _NF = *(a1 + 788) < 72.0;
        goto LABEL_463;
      }

      v378 = 0;
      goto LABEL_467;
    }

    v375 = 0;
    ++*(v9 + 676);
    v376 = 1;
    if (*(v9 + 68) == 1 && (v603[1] & 8) != 0 && !v372)
    {
      v376 = 0;
      v375 = *(v9 + 1780) ^ 1;
    }

LABEL_473:
    if (*(v9 + 476) == 1)
    {
      if (*(a1 + 792) >= 0.0058)
      {
        goto LABEL_486;
      }

      v379 = *(a1 + 796) < 0.0058;
    }

    else
    {
      if (*(a1 + 784) >= 72.0)
      {
LABEL_486:
        v380 = 0;
        if (v376)
        {
          goto LABEL_487;
        }

        goto LABEL_482;
      }

      v379 = *(a1 + 788) < 72.0;
    }

    v380 = v379;
    if (v376)
    {
LABEL_487:
      *(v9 + 752) = 0;
      *(v9 + 744) = 0;
      if ((v375 & 1) == 0)
      {
        goto LABEL_485;
      }

      goto LABEL_488;
    }

LABEL_482:
    *(v9 + 752) = 1;
    v381 = *(v9 + 744);
    *(v9 + 744) = v381 + 1;
    if (v381 >= *(v9 + 620))
    {
      *(v9 + 620) = v381 + 1;
    }

    *(v9 + 732) = 0;
    ++*(v9 + 604);
    ++*(v9 + 680);
    if ((v375 & 1) == 0)
    {
LABEL_485:
      v382 = 0;
      v383 = 0;
      goto LABEL_489;
    }

LABEL_488:
    v383 = *(v9 + 748) + 1;
    ++*(v9 + 608);
    v382 = 1;
LABEL_489:
    v384 = v376 | v380;
    *(v9 + 753) = v382;
    *(v9 + 748) = v383;
    v385 = *(v9 + 740);
    v386 = v385 % 5;
    if (v384)
    {
      v387 = (v11 + v386);
      if (v387 >= v581 || v387 < v11)
      {
        goto LABEL_707;
      }

      *v387 = 0;
      if (v100)
      {
        goto LABEL_497;
      }
    }

    else
    {
      *(v9 + 732) = 1;
      ++*(v9 + 688);
      ++*(v9 + 612);
      v388 = (v11 + v386);
      if (v388 >= v581 || v388 < v11)
      {
        goto LABEL_707;
      }

      *v388 = 1;
      if (v100)
      {
LABEL_497:
        if (*(v100 + 8) == 1)
        {
          v389.i32[1] = 1;
          v389.i32[0] = *(v100 + 1144);
          *(v9 + 580) = vadd_s32(*(v9 + 580), v389);
        }
      }
    }

    if (v380)
    {
      ++*(v9 + 596);
    }

    if (v100 && *(v100 + 1268) == 1)
    {
      ++*(v9 + 600);
    }

    if (v385 >= 5)
    {
      v390 = 0;
      v391 = 0;
      do
      {
        v391 += *(v11 + v390++);
      }

      while (v390 != 5);
      if (v391 > 2)
      {
        ++*(v9 + 616);
      }
    }

    *(v9 + 740) = v385 + 1;
    *(v9 + 1612) = *(v9 + 464) * v597;
    if (v100)
    {
      *(v9 + 1564) = *(v100 + 10);
      *(v9 + 1572) = *(v100 + 1176) != 0;
      v392 = *(v100 + 1144);
      *(v9 + 1576) = v392;
      *(v9 + 1568) = *(v100 + 12);
      v393 = *(v100 + 1196);
      *(v9 + 1584) = v393;
      *(v9 + 1580) = *(v100 + 8);
      v394 = *(v100 + 1268);
      *(v9 + 1573) = v394;
      *(v9 + 1728) = *(v100 + 1256);
      *(v9 + 1732) = v392;
      *(v9 + 1724) = v393;
      *(v9 + 1742) = *(v100 + 1270);
      *(v9 + 1743) = v394;
      *(v9 + 1744) = *(v100 + 1269);
      v395 = *(v100 + 1216);
      if (v395)
      {
        v396 = *(v395 + 8);
        if (v396)
        {
          *(v9 + 1740) = *v396;
        }
      }

      (*(v100 + 1200))(*(v100 + 1208), v100);
    }

    else
    {
      *(v9 + 1564) = 0;
      *(v9 + 1568) = 0;
      *(v9 + 1732) = 0;
    }

    v397 = *(v9 + 468) * *(a1 + 320);
    v398 = HIDWORD(v603[0]) - v397;
    if (SHIDWORD(v603[0]) <= v397)
    {
      v398 = 0;
      v397 = HIDWORD(v603[0]);
    }

    _VCAudioPlayer_CopyPlaybackBuffer(v593, &v603[3], v398, v397);
    v399 = *(v9 + 468);
    if (v399)
    {
      *(a1 + 168) += HIDWORD(v603[0]) / v399;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v400 = VRTraceErrorLogLevelToCSTR();
      v401 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v609 = v400;
        v610 = 2080;
        v611 = "_VCAudioPlayer_PerformPostDecodeActions";
        v612 = 1024;
        v613 = 2174;
        _os_log_error_impl(&dword_1DB56E000, v401, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d bytesPerFrame is zero while calculating input samples", buf, 0x1Cu);
      }
    }

    if (v597)
    {
      *(a1 + 184) = *(a1 + 168);
    }

    v402 = HIDWORD(v603[0]);
    if (SHIDWORD(v603[0]) >= 2 * *(v9 + 468))
    {
      *(a1 + 440) = 1;
      v403 = *(v9 + 476);
      if (*(v9 + 476))
      {
        v404 = 7;
      }

      else
      {
        v404 = 3;
      }

      if (v404 >= v402)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v468 = VRTraceErrorLogLevelToCSTR();
          v469 = *MEMORY[0x1E6986650];
          v470 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v609 = v468;
              v610 = 2080;
              v611 = "_VCAudioPlayer_FillDecodedSamplesForCrossFade";
              v612 = 1024;
              v613 = 1196;
              v614 = 1024;
              *v615 = v402;
              _os_log_impl(&dword_1DB56E000, v469, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Not able to store the last two decoded samples for crossfade. bytesOut=%d", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v470, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v609 = v468;
            v610 = 2080;
            v611 = "_VCAudioPlayer_FillDecodedSamplesForCrossFade";
            v612 = 1024;
            v613 = 1196;
            v614 = 1024;
            *v615 = v402;
            _os_log_debug_impl(&dword_1DB56E000, v469, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Not able to store the last two decoded samples for crossfade. bytesOut=%d", buf, 0x22u);
          }
        }
      }

      else
      {
        v405 = DWORD2(v607);
        if (SDWORD2(v607) >= 1)
        {
          v406 = 0;
          do
          {
            v407 = &v603[3 * v406 + 3];
            if (v407 < &v603[3] || v407 + 3 > &v607 + 1)
            {
              goto LABEL_707;
            }

            v409 = *v407;
            if (*v407)
            {
              v410 = v409 + v407[1];
              v411 = v409 + v402;
              if (v403)
              {
                v412 = v411 - 8 < v410 && v411 - 8 >= v409;
                v413 = (v580 + 16 * v406);
                if (!v412 || v413 >= v585 || v413 < v580)
                {
                  goto LABEL_707;
                }

                v413[1] = *(v411 - 8);
                v416 = (v411 - 4);
                if (v416 >= v410 || v416 < v409)
                {
                  goto LABEL_707;
                }

                *v413 = *v416;
              }

              else
              {
                v418 = v411 - 4 < v410 && v411 - 4 >= v409;
                v419 = (v580 + 16 * v406);
                if (!v418 || v419 >= v585 || v419 < v580)
                {
                  goto LABEL_707;
                }

                v419[2] = *(v411 - 4);
                v422 = (v411 - 2);
                if (v422 >= v410 || v422 < v409)
                {
                  goto LABEL_707;
                }

                *v419 = *v422;
              }
            }
          }

          while (v405 > ++v406);
        }
      }
    }

    else
    {
      *(a1 + 440) = 0;
    }

LABEL_573:
    if (*(a1 + 168) >= *a2)
    {
      goto LABEL_604;
    }
  }

  v472 = *(a1 + 168);
  *a2 = v472;
  if (v472)
  {
    v473 = v597;
  }

  else
  {
    v473 = 0;
  }

  v597 = v473;
  *a3 = v472;
  VRLogfilePrintSync(*v570, "Warning: Timeout in decoder loop. Updating samplesToDecode to %d\n", v14, v15, v16, v17, v18, v19, *a2);
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v474 = VRTraceErrorLogLevelToCSTR();
    v475 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v476 = *a2;
      *buf = 136315906;
      v609 = v474;
      v610 = 2080;
      v611 = "_VCAudioPlayer_DecodeSamples";
      v612 = 1024;
      v613 = 2439;
      v614 = 1024;
      *v615 = v476;
      v477 = "VCAudioPlayer [%s] %s:%d Timeout in audio player decoder loop, breaking. Updating samplesToDecode to %d\n";
      goto LABEL_603;
    }
  }

LABEL_604:
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  v480 = *a2;
  if (IsInternalOSInstalled && ((v480 & 0x80000000) != 0 || v480 > *(a1 + 56) || *a3 > *(a1 + 168)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v487 = VRTraceErrorLogLevelToCSTR();
      v488 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v556 = *a2;
        v557 = *a3;
        v558 = *(a1 + 64);
        v559 = *(a1 + 168);
        LODWORD(v603[0]) = 136316930;
        *(v603 + 4) = v487;
        WORD2(v603[1]) = 2080;
        *(&v603[1] + 6) = "_VCAudioPlayer_DecodeSamples";
        HIWORD(v603[2]) = 1024;
        LODWORD(v603[3]) = 2445;
        WORD2(v603[3]) = 1024;
        *(&v603[3] + 6) = v556;
        WORD1(v603[4]) = 1024;
        HIDWORD(v603[4]) = v557;
        LOWORD(v603[5]) = 2048;
        *(&v603[5] + 2) = v558;
        WORD1(v603[6]) = 1024;
        HIDWORD(v603[6]) = v559;
        LOWORD(v603[7]) = 1024;
        *(&v603[7] + 2) = v597;
        _os_log_error_impl(&dword_1DB56E000, v488, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Invalid samplesToDecode=%d, samplesNeed=%d, inputBuffer.playbackBuffer=%p, inputBuffer.samples=%d, decoded=%d", v603, 0x3Eu);
      }
    }

    VRLogfilePrintSync(*(v9 + 1556), "Critical: Invalid samplesToDecode=%d samplesNeed=%d, inputBuffer.playbackBuffer=%p, inputBuffer.samples=%d, decoded=%d", v481, v482, v483, v484, v485, v486, *a2);
    VCTerminateProcess(@"Invalid samplesToDecode", @"_VCAudioPlayer_DecodeSamples", 0);
    v480 = *a2;
  }

  if (v480 >= 1)
  {
    v601 = a1 + 64;
    v489 = v480 * 10.0 / *(v9 + 460);
    if (v489 <= 1.0)
    {
      v490 = v480 * 10.0 / *(v9 + 460);
    }

    else
    {
      v490 = 1.0;
    }

    if (*(v9 + 476) == 1)
    {
      *(a1 + 800) = v490;
      *(a1 + 792) = 0;
      if (*(a1 + 160) >= 1)
      {
        v491 = 0;
        v492 = 0;
        v493 = a1 + 748;
        __Na = v480;
        v494 = (a1 + 780);
        v495 = a1 + 764;
        do
        {
          v496 = v492;
          v497 = (v493 + 4 * v492);
          vDSP_rmsqv(*(v601 + 24 * v492), 1, v497, __Na);
          v499 = v497 < v495 && v497 >= v493;
          if (*v494 == 1)
          {
            if (!v499)
            {
              goto LABEL_707;
            }

            v500 = (v495 + 4 * v496);
            if (v500 >= v494 || v500 < v495)
            {
              goto LABEL_707;
            }

            v501 = *v497;
          }

          else
          {
            if (!v499)
            {
              goto LABEL_707;
            }

            v500 = (v495 + 4 * v496);
            if (v500 >= v494 || v500 < v495)
            {
              goto LABEL_707;
            }

            v501 = (v490 * *v497) + *v500 * (1.0 - v490);
          }

          *v500 = v501;
          if (v501 <= *(a1 + 792))
          {
            v501 = *(a1 + 792);
          }

          *(a1 + 792) = v501;
          v502 = *v497;
          if (*v497 <= *(a1 + 796))
          {
            v502 = *(a1 + 796);
          }

          *(a1 + 796) = v502;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v503 = VRTraceErrorLogLevelToCSTR();
            v504 = *MEMORY[0x1E6986650];
            v505 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
              {
                v506 = *(a1 + 20);
                v507 = *v497;
                v508 = *(v495 + 4 * v496);
                LODWORD(v603[0]) = 136316674;
                *(v603 + 4) = v503;
                WORD2(v603[1]) = 2080;
                *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelRMS";
                HIWORD(v603[2]) = 1024;
                LODWORD(v603[3]) = 1115;
                WORD2(v603[3]) = 1024;
                *(&v603[3] + 6) = v506;
                WORD1(v603[4]) = 2048;
                *(&v603[4] + 4) = v507;
                WORD2(v603[5]) = 2048;
                *(&v603[5] + 6) = v508;
                HIWORD(v603[6]) = 1024;
                LODWORD(v603[7]) = v491;
                _os_log_impl(&dword_1DB56E000, v504, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] rms[%f] rmsAvg[%f] channel[%d]", v603, 0x3Cu);
              }
            }

            else if (os_log_type_enabled(v505, OS_LOG_TYPE_DEBUG))
            {
              v509 = *(a1 + 20);
              v510 = *v497;
              v511 = *(v495 + 4 * v496);
              LODWORD(v603[0]) = 136316674;
              *(v603 + 4) = v503;
              WORD2(v603[1]) = 2080;
              *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelRMS";
              HIWORD(v603[2]) = 1024;
              LODWORD(v603[3]) = 1115;
              WORD2(v603[3]) = 1024;
              *(&v603[3] + 6) = v509;
              WORD1(v603[4]) = 2048;
              *(&v603[4] + 4) = v510;
              WORD2(v603[5]) = 2048;
              *(&v603[5] + 6) = v511;
              HIWORD(v603[6]) = 1024;
              LODWORD(v603[7]) = v491;
              _os_log_debug_impl(&dword_1DB56E000, v504, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] rms[%f] rmsAvg[%f] channel[%d]", v603, 0x3Cu);
            }
          }

          v492 = v496 + 1;
          v491 = (v496 + 1);
        }

        while (*(a1 + 160) > v491);
      }

      *(a1 + 780) = 0;
      if (VRTraceGetErrorLogLevelForModule() <= 7)
      {
        goto LABEL_689;
      }

      v535 = VRTraceErrorLogLevelToCSTR();
      v536 = *MEMORY[0x1E6986650];
      v537 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v537, OS_LOG_TYPE_DEFAULT))
        {
          v538 = *(a1 + 20);
          v539 = *(a1 + 796);
          v540 = *(a1 + 792);
          LODWORD(v603[0]) = 136316418;
          *(v603 + 4) = v535;
          WORD2(v603[1]) = 2080;
          *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelRMS";
          HIWORD(v603[2]) = 1024;
          LODWORD(v603[3]) = 1119;
          WORD2(v603[3]) = 1024;
          *(&v603[3] + 6) = v538;
          WORD1(v603[4]) = 2048;
          *(&v603[4] + 4) = v539;
          WORD2(v603[5]) = 2048;
          *(&v603[5] + 6) = v540;
          v541 = "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energyInfo.rms[%f] energyInfo.RMSAvg[%f]";
          goto LABEL_685;
        }

        goto LABEL_689;
      }

      if (!os_log_type_enabled(v537, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_689;
      }

      v547 = *(a1 + 20);
      v548 = *(a1 + 796);
      v549 = *(a1 + 792);
      LODWORD(v603[0]) = 136316418;
      *(v603 + 4) = v535;
      WORD2(v603[1]) = 2080;
      *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelRMS";
      HIWORD(v603[2]) = 1024;
      LODWORD(v603[3]) = 1119;
      WORD2(v603[3]) = 1024;
      *(&v603[3] + 6) = v547;
      WORD1(v603[4]) = 2048;
      *(&v603[4] + 4) = v548;
      WORD2(v603[5]) = 2048;
      *(&v603[5] + 6) = v549;
      v550 = "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energyInfo.rms[%f] energyInfo.RMSAvg[%f]";
LABEL_706:
      _os_log_debug_impl(&dword_1DB56E000, v536, OS_LOG_TYPE_DEBUG, v550, v603, 0x36u);
      goto LABEL_689;
    }

    *buf = 0;
    *(a1 + 784) = 0;
    if (*(a1 + 160) >= 1)
    {
      v512 = 0;
      v513 = 0;
      v514 = a1 + 716;
      v515 = a1 + 732;
      do
      {
        v516 = v513;
        v517 = v601 + 24 * v513;
        v518 = *v517;
        v519 = *(v517 + 8);
        if (v518 && v519 == 0)
        {
          goto LABEL_707;
        }

        SVESQ_Q15_Portable(v518, v480, buf, 10);
        v521 = (v514 + 4 * v516);
        if (v521 >= v515 || v521 < v514)
        {
          goto LABEL_707;
        }

        v522 = *buf / v480;
        *v521 = v522;
        v523 = (v515 + 4 * v516);
        v525 = v523 < a1 + 748 && v523 >= v515;
        if (*(a1 + 781) == 1)
        {
          if (!v525)
          {
            goto LABEL_707;
          }
        }

        else
        {
          if (!v525)
          {
            goto LABEL_707;
          }

          v522 = (v490 * v522) + *v523 * (1.0 - v490);
        }

        *v523 = v522;
        if (v522 <= *(a1 + 784))
        {
          v522 = *(a1 + 784);
        }

        *(a1 + 784) = v522;
        v526 = *v521;
        if (*v521 <= *(a1 + 788))
        {
          v526 = *(a1 + 788);
        }

        *(a1 + 788) = v526;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v596 = VRTraceErrorLogLevelToCSTR();
          v527 = *MEMORY[0x1E6986650];
          v528 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
            {
              v529 = *(a1 + 20);
              v530 = *v521;
              v531 = *v523;
              LODWORD(v603[0]) = 136316674;
              *(v603 + 4) = v596;
              WORD2(v603[1]) = 2080;
              *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelAverageEnergy";
              HIWORD(v603[2]) = 1024;
              LODWORD(v603[3]) = 1146;
              WORD2(v603[3]) = 1024;
              *(&v603[3] + 6) = v529;
              WORD1(v603[4]) = 2048;
              *(&v603[4] + 4) = v530;
              WORD2(v603[5]) = 2048;
              *(&v603[5] + 6) = v531;
              HIWORD(v603[6]) = 1024;
              LODWORD(v603[7]) = v512;
              _os_log_impl(&dword_1DB56E000, v527, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energy[%f] energyInfo.energyAvg[%f] channel[%d]", v603, 0x3Cu);
            }
          }

          else if (os_log_type_enabled(v528, OS_LOG_TYPE_DEBUG))
          {
            v532 = *(a1 + 20);
            v533 = *v521;
            v534 = *v523;
            LODWORD(v603[0]) = 136316674;
            *(v603 + 4) = v596;
            WORD2(v603[1]) = 2080;
            *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelAverageEnergy";
            HIWORD(v603[2]) = 1024;
            LODWORD(v603[3]) = 1146;
            WORD2(v603[3]) = 1024;
            *(&v603[3] + 6) = v532;
            WORD1(v603[4]) = 2048;
            *(&v603[4] + 4) = v533;
            WORD2(v603[5]) = 2048;
            *(&v603[5] + 6) = v534;
            HIWORD(v603[6]) = 1024;
            LODWORD(v603[7]) = v512;
            _os_log_debug_impl(&dword_1DB56E000, v527, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energy[%f] energyInfo.energyAvg[%f] channel[%d]", v603, 0x3Cu);
          }
        }

        v513 = v516 + 1;
        v512 = (v516 + 1);
      }

      while (*(a1 + 160) > v512);
    }

    *(a1 + 781) = 0;
    if (VRTraceGetErrorLogLevelForModule() <= 7)
    {
      goto LABEL_689;
    }

    v542 = VRTraceErrorLogLevelToCSTR();
    v536 = *MEMORY[0x1E6986650];
    v543 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (!os_log_type_enabled(v543, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_689;
      }

      v560 = *(a1 + 20);
      v561 = *(a1 + 788);
      v562 = *(a1 + 784);
      LODWORD(v603[0]) = 136316418;
      *(v603 + 4) = v542;
      WORD2(v603[1]) = 2080;
      *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelAverageEnergy";
      HIWORD(v603[2]) = 1024;
      LODWORD(v603[3]) = 1150;
      WORD2(v603[3]) = 1024;
      *(&v603[3] + 6) = v560;
      WORD1(v603[4]) = 2048;
      *(&v603[4] + 4) = v561;
      WORD2(v603[5]) = 2048;
      *(&v603[5] + 6) = v562;
      v550 = "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energyInfo.energy[%f] energyInfo.energyAvg[%f]";
      goto LABEL_706;
    }

    if (os_log_type_enabled(v543, OS_LOG_TYPE_DEFAULT))
    {
      v544 = *(a1 + 20);
      v545 = *(a1 + 788);
      v546 = *(a1 + 784);
      LODWORD(v603[0]) = 136316418;
      *(v603 + 4) = v542;
      WORD2(v603[1]) = 2080;
      *(&v603[1] + 6) = "_VCAudioPlayer_UpdateMultiChannelAverageEnergy";
      HIWORD(v603[2]) = 1024;
      LODWORD(v603[3]) = 1150;
      WORD2(v603[3]) = 1024;
      *(&v603[3] + 6) = v544;
      WORD1(v603[4]) = 2048;
      *(&v603[4] + 4) = v545;
      WORD2(v603[5]) = 2048;
      *(&v603[5] + 6) = v546;
      v541 = "VCAudioPlayer [%s] %s:%d Audio Frame seq[%d] energyInfo.energy[%f] energyInfo.energyAvg[%f]";
LABEL_685:
      _os_log_impl(&dword_1DB56E000, v536, OS_LOG_TYPE_DEFAULT, v541, v603, 0x36u);
    }

LABEL_689:
    if (*(v9 + 69) == 1)
    {
      if (*(v9 + 476) == 1)
      {
        v551 = *(a1 + 792) < 0.0058;
      }

      else
      {
        v551 = *(a1 + 784) < 72.0;
      }

      v552 = v551;
      VCSilencePredictor_AddFrame((a1 + 552), *(v9 + 1724), *(v9 + 1732), v552);
    }

    v553 = *(a1 + 796);
    *(v9 + 1736) = v553;
    if (!*v9)
    {
      if (*(v9 + 476) == 1)
      {
        if (v553 >= 0.0058)
        {
          goto LABEL_700;
        }

LABEL_702:
        v554 = *(a1 + 8) + 1;
      }

      else
      {
        if (*(a1 + 788) < 72.0)
        {
          goto LABEL_702;
        }

LABEL_700:
        v554 = 0;
      }

      *(a1 + 8) = v554;
    }
  }

  return v597;
}

void _VCAudioPlayer_UpdateOpusDecodeFECStatus(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  if ((SoundDec_GetOpusDecodeFECStatus(a2, &outPropertyData) & 0x80000000) == 0)
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
          *buf = 136316162;
          v18 = v4;
          v19 = 2080;
          v20 = "_VCAudioPlayer_UpdateOpusDecodeFECStatus";
          v21 = 1024;
          v22 = 2047;
          v23 = 2048;
          v24 = a2;
          v25 = 1024;
          v26 = outPropertyData;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d SoundDec_GetOpusDecodeFECStatus soundDec=%p fecStatus=%u", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v18 = v4;
        v19 = 2080;
        v20 = "_VCAudioPlayer_UpdateOpusDecodeFECStatus";
        v21 = 1024;
        v22 = 2047;
        v23 = 2048;
        v24 = a2;
        v25 = 1024;
        v26 = outPropertyData;
        _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d SoundDec_GetOpusDecodeFECStatus soundDec=%p fecStatus=%u", buf, 0x2Cu);
      }
    }

    if (outPropertyData == 2)
    {
      ++*(a1 + 36116);
      v7 = *(a1 + 36136);
      if (v7)
      {
        *(a1 + 36136) = v7 - 1;
        if (*(a1 + 36184) >= v7)
        {
          *(a1 + 36184) = v7 - 1;
        }

        v8 = *(a1 + 36140);
        *(a1 + 36140) = v8 - 1;
        if (*(a1 + 36188) >= v8)
        {
          *(a1 + 36188) = v8 - 1;
        }

        v9 = *(a1 + 36276);
        if (v9)
        {
          *(a1 + 36276) = v9 - 1;
        }
      }

      v10 = *(a1 + 36212);
      if (v10)
      {
        *(a1 + 36212) = v10 - 1;
      }

      if (*(a1 + 36264) == 1)
      {
        v11 = *(a1 + 36144);
        if (v11)
        {
          *(a1 + 36144) = v11 - 1;
          if (*(a1 + 36192) >= v11)
          {
            *(a1 + 36192) = v11 - 1;
          }
        }

        v12 = *(a1 + 36220);
        if (v12)
        {
          *(a1 + 36220) = v12 - 1;
        }

        v13 = *(a1 + 36272) - 1;
        if (v13 >= 0)
        {
          v14 = (a1 + 36265 + v13 % 5u);
          if (v14 < a1 + 36270 && v14 >= a1 + 36265)
          {
            *v14 = 0;
          }

          else
          {
            __break(0x5519u);
          }
        }
      }
    }
  }
}

int *_VCAudioPlayer_CopyDecodedSamplesToInput(int *result)
{
  if (result[24] >= 2)
  {
    v1 = result;
    v2 = 1;
    v3 = 1;
    while (1)
    {
      v4 = &v1[6 * v3];
      v5 = v1[25];
      v6 = *(v1 + 1);
      v7 = (*v1 + v5 * v2);
      v8 = v6 - v5 * v2;
      v9 = *(v4 + 1) >= v5 && v8 >= v5;
      v10 = !v9 || v7 > *v1 + v6;
      if (v10 || *v1 > v7)
      {
        break;
      }

      result = memcpy(*v4, v7, v5);
      v2 = ++v3;
      if (v1[24] <= v3)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t _VCAudioPlayer_Sample_RampUp(uint64_t result, uint64_t a2, int a3)
{
  v3 = 1.0 / a3;
  v4 = *(a2 + 96);
  if (*(result + 36008))
  {
    if (v4 >= 1)
    {
      v5 = 0;
      while (a3 < 1)
      {
LABEL_9:
        if (v4 <= ++v5)
        {
          return result;
        }
      }

      v6 = 0;
      v7 = (a2 + 24 * v5);
      v8 = *v7;
      v9 = v7[1] + *v7;
      v10 = a3;
      v11 = v8;
      while (v11 < v9 && v11 >= v8)
      {
        *v11 = (v3 * v6) * *v11;
        ++v11;
        ++v6;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

LABEL_20:
      __break(0x5519u);
    }
  }

  else if (v4 >= 1)
  {
    v12 = 0;
    while (a3 < 1)
    {
LABEL_18:
      if (v4 <= ++v12)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = (a2 + 24 * v12);
    v15 = *v14;
    v16 = v14[1] + *v14;
    v17 = a3;
    v18 = v15;
    while (v18 < v16 && v18 >= v15)
    {
      *v18 = ((v3 * v13) * *v18);
      ++v18;
      ++v13;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t _VCAudioPlayer_SimulateCrossFade(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (result)
  {
    if (a4 >= 9)
    {
      v4 = *(a3 + 96);
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = result + 448;
        v7 = 4;
        if (a2 == 1)
        {
          v7 = 12;
        }

        while (1)
        {
          v8 = v6 + 16 * v5;
          if (v8 >= result + 512 || v8 < v6)
          {
            break;
          }

          v10 = *(v8 + 8 * (a2 == 1));
          v11 = *(v8 + v7);
          if (*(result + 36008) == 1)
          {
            v12 = &g_EncodingFormatiPadWiFi2732x2048;
            v13 = &_VCAudioPlayer_SimulateCrossFade_fadeOutZeroCrossing;
            if (fabsf(v10) <= fabsf(v11))
            {
              v14 = &_VCAudioPlayer_SimulateCrossFade_fadeOutConverging;
            }

            else
            {
              v13 = &_VCAudioPlayer_SimulateCrossFade_fadeOutConverging;
              v14 = &_VCAudioPlayer_SimulateCrossFade_fadeOutDiverging;
            }

            if ((LODWORD(v11) ^ LODWORD(v10)) < 0)
            {
              v15 = &_VCAudioPlayer_SimulateCrossFade_fadeOutZeroCrossing;
            }

            else
            {
              v12 = v13;
              v15 = v14;
            }

            v16 = (a3 + 24 * v5);
            v17 = v16[1] < 0x21 || v15 > v12;
            if (v17 || v12 - v15 < 33)
            {
              break;
            }

            v18 = 0;
            v19 = *v16;
            do
            {
              *(v19 + v18 * 4) = (*(v19 + v18 * 4) * _VCAudioPlayer_SimulateCrossFade_fadeIn[v18]) + (v10 * *&v15[v18 * 4]);
              ++v18;
            }

            while (v18 != 9);
          }

          else
          {
            if (SLOWORD(v10) >= 0)
            {
              v20 = SLOWORD(v10);
            }

            else
            {
              v20 = -SLOWORD(v10);
            }

            v21 = SLOWORD(v11);
            if (SLOWORD(v11) < 0)
            {
              v21 = -SLOWORD(v11);
            }

            v22 = v21 >= v20;
            if (v21 >= v20)
            {
              v23 = &_VCAudioPlayer_SimulateCrossFade_fadeOutZeroCrossing;
            }

            else
            {
              v23 = &_VCAudioPlayer_SimulateCrossFade_fadeOutConverging;
            }

            if (v22)
            {
              v24 = &_VCAudioPlayer_SimulateCrossFade_fadeOutConverging;
            }

            else
            {
              v24 = &_VCAudioPlayer_SimulateCrossFade_fadeOutDiverging;
            }

            if (((LOWORD(v11) ^ LOWORD(v10)) & 0x8000) != 0)
            {
              v25 = &g_EncodingFormatiPadWiFi2732x2048;
            }

            else
            {
              v25 = v23;
            }

            if (((LOWORD(v11) ^ LOWORD(v10)) & 0x8000) != 0)
            {
              v26 = &_VCAudioPlayer_SimulateCrossFade_fadeOutZeroCrossing;
            }

            else
            {
              v26 = v24;
            }

            v27 = (a3 + 24 * v5);
            v28 = v27[1] < 0x11 || v26 > v25;
            if (v28 || v25 - v26 < 33)
            {
              break;
            }

            v29 = 0;
            v30 = *v27;
            do
            {
              *(v30 + 2 * v29) = ((_VCAudioPlayer_SimulateCrossFade_fadeIn[v29] * *(v30 + 2 * v29)) + (SLOWORD(v10) * *&v26[4 * v29]));
              ++v29;
            }

            while (v29 != 9);
          }

          if (v4 <= ++v5)
          {
            return result;
          }
        }

        __break(0x5519u);
      }
    }
  }

  return result;
}

void _VCAudioPlayer_DecodeDup(_DWORD *a1, int a2, _DWORD *a3, int a4, int a5, _DWORD *a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = a1 + 0x2000;
  a1[178] = 4;
  if (a1[8883])
  {
    v11 = 0;
    a1[178] = 6;
  }

  else
  {
    if (*a1)
    {
      v12 = a5 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }
  }

  if (-v11 < a4)
  {
    v13 = -v11;
  }

  else
  {
    v13 = a4;
  }

  v14 = a1[76] + a4;
  v15 = v14 + v13;
  v16 = a1[48];
  v17 = v16 - v14;
  if (v15 <= v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  _VCAudioPlayer_CopyPlaybackBuffer(a3, (a1 + 16), 0, a1[9000] * a4);
  if (v18)
  {
    v19 = v18 / 2;
    v20 = v18 - v18 / 2;
    v21 = a3[24];
    if (*(v10 + 3240) == 1)
    {
      if (v21 >= 1)
      {
        v22 = 0;
        while (1)
        {
          v23 = &a3[6 * v22];
          v24 = *v23;
          v25 = v23[1];
          v26 = *v23 + v25;
          v27 = a4 - 1;
          v28 = a4;
          v29 = (v18 / 2);
          if (v18 >= 2)
          {
            break;
          }

LABEL_32:
          v35 = v10[808];
          v36 = (v35 * (v19 + a4));
          v37 = (v24 + v36);
          v38 = (v35 * (a4 - v20));
          v39 = (v24 + v38);
          v40 = (v35 * v20);
          v41 = v25 - v38;
          v42 = v25 - v36;
          if (v24 > v24 + v36 || v37 > v26 || v39 > v26 || v24 > v39 || v41 < v40 || v42 < v40)
          {
            goto LABEL_92;
          }

          memcpy(v37, v39, v40);
          if (a3[24] <= ++v22)
          {
            goto LABEL_84;
          }
        }

        while (1)
        {
          v30 = (v24 + 4 * v27);
          v31 = v30 < v26 && v30 >= v24;
          v32 = (v24 + 4 * v28);
          v33 = !v31 || v32 >= v26;
          if (v33 || v32 < v24)
          {
            goto LABEL_92;
          }

          *v32 = *v30;
          ++v28;
          --v27;
          if (!--v29)
          {
            goto LABEL_32;
          }
        }
      }
    }

    else if (v21 >= 1)
    {
      v48 = 0;
      while (1)
      {
        v49 = &a3[6 * v48];
        v50 = *v49;
        v51 = v49[1];
        v52 = *v49 + v51;
        v53 = a4 - 1;
        v54 = a4;
        v55 = (v18 / 2);
        if (v18 >= 2)
        {
          break;
        }

LABEL_66:
        v61 = v10[808];
        v62 = (v61 * (v19 + a4));
        v63 = (v50 + v62);
        v64 = (v61 * (a4 - v20));
        v65 = (v50 + v64);
        v66 = (v61 * v20);
        v67 = v51 - v64;
        v68 = v51 - v62;
        if (v50 > v50 + v62 || v63 > v52 || v65 > v52 || v50 > v65 || v67 < v66 || v68 < v66)
        {
          goto LABEL_92;
        }

        memcpy(v63, v65, v66);
        if (a3[24] <= ++v48)
        {
          goto LABEL_84;
        }
      }

      while (1)
      {
        v56 = (v50 + 2 * v53);
        v57 = v56 < v52 && v56 >= v50;
        v58 = (v50 + 2 * v54);
        v59 = !v57 || v58 >= v52;
        if (v59 || v58 < v50)
        {
          break;
        }

        *v58 = *v56;
        ++v54;
        --v53;
        if (!--v55)
        {
          goto LABEL_66;
        }
      }

LABEL_92:
      __break(0x5519u);
    }

LABEL_84:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v74 = VRTraceErrorLogLevelToCSTR();
      v75 = *MEMORY[0x1E6986650];
      v76 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v78 = v74;
          v79 = 2080;
          v80 = "_VCAudioPlayer_DecodeDup";
          v81 = 1024;
          v82 = 2548;
          v83 = 2048;
          v84 = micro();
          v85 = 1024;
          v86 = v18;
          v87 = 1024;
          v88 = a4;
          v89 = 1024;
          v90 = v18 + a4;
          _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %7.03f: %-4i  dup  %i -> %i", buf, 0x38u);
        }
      }

      else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316674;
        v78 = v74;
        v79 = 2080;
        v80 = "_VCAudioPlayer_DecodeDup";
        v81 = 1024;
        v82 = 2548;
        v83 = 2048;
        v84 = micro();
        v85 = 1024;
        v86 = v18;
        v87 = 1024;
        v88 = a4;
        v89 = 1024;
        v90 = v18 + a4;
        _os_log_debug_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %7.03f: %-4i  dup  %i -> %i", buf, 0x38u);
      }
    }

    a1[178] = 5;
  }

  *a6 = v18 + a4;
}

uint64_t PacketThread_Create(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, const void *a6)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PacketThread_Create_cold_3();
      }
    }

    return 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040E05548B6uLL);
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PacketThread_Create_cold_2();
      }
    }

    return 0;
  }

  v12 = v11;
  v11[13] = a1;
  v11[14] = a2;
  v11[12] = a3;
  *(v11 + 60) = 1;
  v13 = dispatch_semaphore_create(0);
  *(v12 + 8) = v13;
  if (!v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PacketThread_Create_cold_1();
      }
    }

    goto LABEL_33;
  }

  *(v12 + 16) = _Block_copy(a6);
  v14 = a3;
  v15 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v12 + 24) = v15;
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_33;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136316162;
    v33 = v27;
    v34 = 2080;
    v35 = "PacketThread_Create";
    v36 = 1024;
    v37 = 206;
    v38 = 2048;
    v39 = v12;
    v40 = 1024;
    LODWORD(v41) = a3;
    v26 = " [%s] %s:%d packetThread=%p Failed to allocate packetPool of %u packets";
    goto LABEL_40;
  }

  if (a3)
  {
    v16 = 0;
    v17 = 8 * v14;
    while (PacketThread_AllocatePacketBuffer(v12, (*(v12 + 24) + v16), a1, a2))
    {
      v16 += 8;
      if (v17 == v16)
      {
        goto LABEL_9;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_33;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136316162;
    v33 = v28;
    v34 = 2080;
    v35 = "PacketThread_Create";
    v36 = 1024;
    v37 = 214;
    v38 = 2048;
    v39 = v12;
    v40 = 1024;
    LODWORD(v41) = a1;
    v26 = " [%s] %s:%d packetThread=%p Failed to allocate buffers of %u";
    goto LABEL_40;
  }

LABEL_9:
  if (!PacketThread_AllocatePacketBuffer(v12, (v12 + 32), a1, a2) || !PacketThread_AllocatePacketBuffer(v12, (v12 + 40), a1, a2))
  {
    goto LABEL_33;
  }

  v18 = CFStringCreateWithFormat(0, 0, @"com.apple.avconference.packetThread.%s", a5);
  v19 = *MEMORY[0x1E69631F8];
  keys[0] = *MEMORY[0x1E69631F0];
  keys[1] = v19;
  v20 = *MEMORY[0x1E695E4C0];
  values[0] = v18;
  values[1] = v20;
  v21 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = FigThreadCreate();
  if (v21)
  {
    CFRelease(v21);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v22)
  {
    if (ErrorLogLevelForModule < 3)
    {
      goto LABEL_33;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136316162;
    v33 = v24;
    v34 = 2080;
    v35 = "PacketThread_Create";
    v36 = 1024;
    v37 = 242;
    v38 = 2048;
    v39 = v12;
    v40 = 1024;
    LODWORD(v41) = v22;
    v26 = " [%s] %s:%d packetThread=%p Failed to create packet thread %d";
LABEL_40:
    _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x2Cu);
LABEL_33:
    PacketThread_Destroy(v12);
    return 0;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v33 = v30;
      v34 = 2080;
      v35 = "PacketThread_Create";
      v36 = 1024;
      v37 = 247;
      v38 = 2048;
      v39 = v12;
      v40 = 2080;
      v41 = a5;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p PacketThread_Create completed for %s", buf, 0x30u);
    }
  }

  return v12;
}

void PacketThread_Destroy(int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 60) = 0;
    v2 = *(a1 + 1);
    if (v2)
    {
      dispatch_semaphore_signal(v2);
    }

    if (*a1)
    {
      FigThreadJoin();
      *a1 = 0;
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 1) = 0;
    }

    if (*(a1 + 3))
    {
      if (a1[12] >= 1)
      {
        v4 = 0;
        do
        {
          PacketThread_FreePacketBuffer(*(*(a1 + 3) + 8 * v4++));
        }

        while (v4 < a1[12]);
      }

      PacketThread_FreePacketBuffer(*(a1 + 4));
      PacketThread_FreePacketBuffer(*(a1 + 5));
      free(*(a1 + 3));
    }

    v5 = *(a1 + 2);
    if (v5)
    {
      _Block_release(v5);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v9 = v6;
        v10 = 2080;
        v11 = "PacketThread_Destroy";
        v12 = 1024;
        v13 = 344;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p PacketThread_Destroy complete.", buf, 0x26u);
      }
    }

    free(a1);
  }
}

BOOL PacketThread_AllocatePacketBuffer(uint64_t a1, void *a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900400813CB48uLL);
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      PacketThread_AllocatePacketBuffer_cold_1();
    }

    return 0;
  }

  v9 = v8;
  v10 = malloc_type_malloc(a3, 0x9FAC8E5AuLL);
  *(v9 + 1) = v10;
  if (v10)
  {
    v11 = malloc_type_malloc(a4, 0x6EFA0A70uLL);
    *(v9 + 2) = v11;
    if (v11)
    {
      *a2 = v9;
      return 1;
    }

    free(*(v9 + 1));
    free(v9);
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v18 = 136316162;
    v19 = v16;
    v20 = 2080;
    v21 = "PacketThread_AllocatePacketBuffer";
    v22 = 1024;
    v23 = 170;
    v24 = 2048;
    v25 = a1;
    v26 = 1024;
    v27 = a4;
    v15 = v17;
    goto LABEL_15;
  }

  free(v9);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v18 = 136316162;
    v19 = v13;
    v20 = 2080;
    v21 = "PacketThread_AllocatePacketBuffer";
    v22 = 1024;
    v23 = 163;
    v24 = 2048;
    v25 = a1;
    v26 = 1024;
    v27 = a3;
    v15 = v14;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d packetThread=%p Failed to allocate buffers of %u", &v18, 0x2Cu);
  }

  return 0;
}

uint64_t SendPacketsProc(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  dispatch_retain(v2);
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    v8 = *v5;
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v47 = v6;
        v48 = 2080;
        v49 = "SendPacketsProc";
        v50 = 1024;
        v51 = 104;
        v52 = 2048;
        v53 = a1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p SendPacketsProc starting", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      SendPacketsProc_cold_1();
    }
  }

  v9 = proc_setthread_cpupercent();
  if (v9)
  {
    v10 = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v47 = v11;
        v48 = 2080;
        v49 = "SendPacketsProc";
        v50 = 1024;
        v51 = 110;
        v52 = 2048;
        v53 = a1;
        v54 = 1024;
        *v55 = v10;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d packetThread=%p proc_setthread_cpupercent(50, 20) failed with error %d", buf, 0x2Cu);
      }
    }
  }

  v13 = 0;
  v14 = (a1 + 80);
  while (1)
  {
    v15 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v2, v15))
    {
      if (*(a1 + 61))
      {
        break;
      }
    }

    if (!*(a1 + 60))
    {
      v14 = (a1 + 72);
      break;
    }

    v17 = *(a1 + 64);
    v16 = *(a1 + 68);
    if (v16 > v17)
    {
      if (v13)
      {
        ++*(a1 + 76);
        if (v17 + (*(a1 + 48) >> 1) >= v16)
        {
          v13 = 0;
        }
      }

      else
      {
        v18 = 0;
        do
        {
          v19 = *(a1 + 24);
          v20 = (*(a1 + 64) % *(a1 + 48));
          v21 = *(v19 + 8 * v20);
          v22 = *(a1 + 40);
          v23 = v21;
          atomic_compare_exchange_strong_explicit((v19 + 8 * v20), &v23, v22, memory_order_relaxed, memory_order_relaxed);
          if (v23 == v21)
          {
            break;
          }
        }

        while (v18++ < 2);
        if (v23 == v21)
        {
          *(a1 + 40) = v21;
          if (*(a1 + 64) >= *v21)
          {
            if (*(a1 + 61))
            {
              (*(*(a1 + 16) + 16))();
            }

LABEL_39:
            v13 = 0;
            goto LABEL_40;
          }

          v25 = (v19 + 8 * v20);
          v26 = v22;
          atomic_compare_exchange_strong_explicit(v25, &v26, v21, memory_order_relaxed, memory_order_relaxed);
          if (v26 == v22)
          {
            *(a1 + 40) = v22;
          }

          ++*(a1 + 76);
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            v13 = 1;
          }

          else
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *(a1 + 64);
              v30 = *(a1 + 68);
              v31 = *(a1 + 72);
              v32 = *(a1 + 76);
              v33 = *(a1 + 80);
              v34 = *(a1 + 84);
              *buf = 136317442;
              v47 = v27;
              v48 = 2080;
              v49 = "_PacketThread_PullPacket";
              v50 = 1024;
              v51 = 79;
              v52 = 2048;
              v53 = a1;
              v54 = 1024;
              *v55 = v29;
              *&v55[4] = 1024;
              *&v55[6] = v30;
              v56 = 1024;
              v57 = v33;
              v58 = 1024;
              v59 = v31;
              v60 = 1024;
              v61 = v32;
              v62 = 1024;
              v63 = v34;
              _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p SendPacketsProc got lapped! sent=%u stored=%u, dropping packets. packetsDropped=[S=%u, NR=%u, C=%u, F=%u]", buf, 0x4Au);
            }

            v13 = 1;
          }
        }

        else
        {
          ++*(a1 + 84);
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_39;
          }

          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(a1 + 64);
            v38 = *(a1 + 68);
            v39 = *(a1 + 72);
            v40 = *(a1 + 76);
            v41 = *(a1 + 80);
            v42 = *(a1 + 84);
            *buf = 136317442;
            v47 = v35;
            v48 = 2080;
            v49 = "_PacketThread_PullPacket";
            v50 = 1024;
            v51 = 86;
            v52 = 2048;
            v53 = a1;
            v54 = 1024;
            *v55 = v37;
            *&v55[4] = 1024;
            *&v55[6] = v38;
            v56 = 1024;
            v57 = v41;
            v58 = 1024;
            v59 = v39;
            v60 = 1024;
            v61 = v40;
            v62 = 1024;
            v63 = v42;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p SendPacketsProc failed to fetch a packet. sent=%u stored=%u, dropping packets. packetsDropped=[S=%u, NR=%u, C=%u, F=%u]", buf, 0x4Au);
          }

          v13 = 0;
        }
      }

LABEL_40:
      ++*(a1 + 64);
    }
  }

  ++*v14;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v47 = v43;
      v48 = 2080;
      v49 = "SendPacketsProc";
      v50 = 1024;
      v51 = 129;
      v52 = 2048;
      v53 = a1;
      v54 = 2048;
      *v55 = 0;
      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetThread=%p SendPacketsProc ending. dispatch_semaphore_wait returned %ld", buf, 0x30u);
    }
  }

  dispatch_release(v2);
  return 0;
}

void *_PacketThread_CopyToPacket(uint64_t a1, const void *a2, void *__src, size_t __n, uint64_t a5)
{
  v6 = __n;
  *a5 = *(a1 + 68);
  memcpy(*(a5 + 16), __src, __n);
  result = memcpy(*(a5 + 8), a2, *(a1 + 52));
  *(a5 + 24) = v6;
  return result;
}

BOOL _PacketThread_StorePacket(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v37 = *MEMORY[0x1E69E9840];
  do
  {
    v4 = (*(a1 + 24) + 8 * (*(a1 + 68) % *(a1 + 48)));
    v5 = *v4;
    v6 = *v4;
    atomic_compare_exchange_strong(v4, &v6, a2);
    if (v6 == v5)
    {
      break;
    }
  }

  while (v3++ < 2);
  if (v6 == v5)
  {
    *(a1 + 32) = v5;
    ++*(a1 + 68);
    dispatch_semaphore_signal(*(a1 + 8));
    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 64);
    v12 = *(a1 + 68);
    v13 = *(a1 + 72);
    v14 = *(a1 + 76);
    v15 = *(a1 + 80);
    v16 = *(a1 + 84);
    v17 = 136317442;
    v18 = v9;
    v19 = 2080;
    v20 = "_PacketThread_StorePacket";
    v21 = 1024;
    v22 = 280;
    v23 = 2048;
    v24 = a1;
    v25 = 1024;
    v26 = v11;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v15;
    v31 = 1024;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    v35 = 1024;
    v36 = v16;
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IOProc: packetThread=%p _PacketThread_StorePacket failed to store a buffer. packetsSent=%u packetsStored=%u packetsDropped=[S=%u, NR=%u, C=%u, F=%u]", &v17, 0x4Au);
  }

  return 0;
}

BOOL PacketThread_SendSampleBuffer(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  *v3 = *(a1 + 68);
  memcpy(*(v3 + 8), a2, *(a1 + 52));
  *(v3 + 24) = 0;
  VCAudioBufferList_ResetDataPointers(*(v3 + 8));

  return _PacketThread_StorePacket(a1, v3);
}

BOOL PacketThread_SendPacket(uint64_t a1, const void *a2, void *a3, size_t __n)
{
  v4 = __n;
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) >= __n)
  {
    v9 = *(a1 + 32);
    _PacketThread_CopyToPacket(a1, a2, a3, __n, v9);

    return _PacketThread_StorePacket(a1, v9);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316162;
        v11 = v6;
        v12 = 2080;
        v13 = "PacketThread_SendPacket";
        v14 = 1024;
        v15 = 304;
        v16 = 2048;
        v17 = a1;
        v18 = 1024;
        v19 = v4;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d packetThread=%p PacketThread_SendPacket called with too many bytes %d", &v10, 0x2Cu);
      }
    }

    return 0;
  }
}

__n128 PacketThread_Statistics(__n128 *a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = a1[4];
      a2[1].n128_u64[0] = a1[5].n128_u64[0];
      *a2 = result;
    }
  }

  return result;
}

void PacketThread_FreePacketBuffer(void *a1)
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

uint64_t PacketThread_ReceiverIsReady(uint64_t result)
{
  if (result)
  {
    *(result + 61) = 1;
  }

  return result;
}

double VCDefaults_GetDoubleValueForKey(const __CFString *a1, double DoubleValue)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      DoubleValue = CFStringGetDoubleValue(v5);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v7;
          v12 = 2080;
          v13 = "VCDefaults_GetDoubleValueForKey";
          v14 = 1024;
          v15 = 1029;
          v16 = 2080;
          CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
          v18 = 2048;
          v19 = DoubleValue;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key=%s Value=%.3f", &v10, 0x30u);
        }
      }
    }

    CFRelease(v5);
  }

  return DoubleValue;
}

uint64_t VCDefaults_GetIntValueForKey(const __CFString *a1, uint64_t IntValue)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v7;
          v12 = 2080;
          v13 = "VCDefaults_GetIntValueForKey";
          v14 = 1024;
          v15 = 1059;
          v16 = 2080;
          CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
          v18 = 1024;
          v19 = IntValue;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Key %s: Value %d", &v10, 0x2Cu);
        }
      }
    }

    CFRelease(v5);
  }

  return IntValue;
}

BOOL VCDefaults_GetBoolValueForKey(const __CFString *a1, _BOOL8 a2)
{
  if (!VRTraceIsInternalOSInstalled())
  {
    return a2;
  }

  return _VCDefaults_GetBoolValueForKey(a1, a2, 1);
}

const void *VCDefaults_CopyStringValueForKey(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();

  return VCDefaults_CopyValueForKey(a1, TypeID);
}

uint64_t VCDefaults_DefaultDumpEnablementValue()
{
  if (VRTraceIsInternalOSInstalled())
  {
    return 1;
  }

  return VRTraceIsSeedOSInstalled();
}

double VCDefaults_GetInternalOSDoubleValueForKey(const __CFString *a1, double a2)
{
  if (!VRTraceIsInternalOSInstalled())
  {
    return a2;
  }

  return VCDefaults_GetDoubleValueForKey(a1, a2);
}

BOOL _VCDefaults_GetBoolValueForKey(const __CFString *a1, _BOOL8 a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v7 = AppBooleanValue;
    a2 = AppBooleanValue != 0;
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "_VCDefaults_GetBoolValueForKey";
          v16 = 1024;
          v17 = 1047;
          v18 = 2112;
          v19 = a1;
          v20 = 1024;
          v21 = v7;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@=%d", buf, 0x2Cu);
        }
      }
    }
  }

  return a2;
}

BOOL VCDefaults_GetManagedBoolValueForKey(const __CFString *a1, _BOOL8 a2)
{
  if ((VRTraceIsInternalOSInstalled() & 1) == 0 && !CFPreferencesAppValueIsForced(a1, @"com.apple.VideoConference") || !VRTraceIsInternalOSInstalled())
  {
    return a2;
  }

  return _VCDefaults_GetBoolValueForKey(a1, a2, 1);
}

const void *VCDefaults_CopyValueForKey(const __CFString *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!VRTraceIsInternalOSInstalled())
  {
    return 0;
  }

  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.VideoConference");
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (CFGetTypeID(v4) != a2)
  {
    CFRelease(v5);
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "VCDefaults_CopyValueForKey";
      v13 = 1024;
      v14 = 1083;
      v15 = 2112;
      v16 = a1;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@=%@", &v9, 0x30u);
    }
  }

  return v5;
}

const void *VCDefaults_CopyDictionaryValueForKey(const __CFString *a1)
{
  TypeID = CFDictionaryGetTypeID();

  return VCDefaults_CopyValueForKey(a1, TypeID);
}

uint64_t VCDefaults_GetBoolValueForKeyQuiet(const __CFString *a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  v3 = CFPreferencesGetAppBooleanValue(a1, @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t VCTransportStreamVTPCreate(const __CFAllocator *a1, int a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a4)
  {
    if (VCTransportStreamVTPCreate_cold_6())
    {
      return 2150760449;
    }

    goto LABEL_30;
  }

  if (a2 == -1)
  {
    VCTransportStreamVTPCreate_cold_5();
LABEL_30:
    v11 = *buf;
    goto LABEL_33;
  }

  ClassID = VCTransportStreamGetClassID();
  v9 = VCFBOUtils_ObjectCreate(a1, &cf, &kVCTransportStreamVTPVTable, ClassID, 50);
  if ((v9 & 0x80000000) != 0)
  {
    v11 = v9;
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = VCTransportStreamCommonInitialize(DerivedStorage, a3, cf);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 48) = a2;
  *(DerivedStorage + 56) = CFNumberCreate(a1, kCFNumberIntType, (DerivedStorage + 48));
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 196) = -1;
  v12 = *MEMORY[0x1E695E4C0];
  *(DerivedStorage + 208) = *MEMORY[0x1E695E4C0];
  *(DerivedStorage + 216) = v12;
  VTP_GetTransportSessionID(a2, (DerivedStorage + 200));
  if (!*(DerivedStorage + 200) || VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_12;
  }

  v13 = VRTraceErrorLogLevelToCSTR();
  v14 = *MEMORY[0x1E6986650];
  v15 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(DerivedStorage + 200);
      *buf = 136315906;
      *&buf[4] = v13;
      v28 = 2080;
      v29 = "VCTransportStreamVTPCreate";
      v30 = 1024;
      v31 = 156;
      v32 = 1024;
      LODWORD(v33) = v16;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d transportSessionID=%u", buf, 0x22u);
      if (!a3)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (!a3)
    {
LABEL_17:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *&buf[4] = v18;
            v28 = 2080;
            v29 = "VCTransportStreamVTPCreate";
            v30 = 1024;
            v31 = 185;
            v32 = 2048;
            v33 = cf;
            v34 = 1024;
            v35 = a2;
            v36 = 2112;
            v37 = a3;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] vfd = %d, options = %@", buf, 0x36u);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = v18;
          v28 = 2080;
          v29 = "VCTransportStreamVTPCreate";
          v30 = 1024;
          v31 = 185;
          v32 = 2048;
          v33 = cf;
          v34 = 1024;
          v35 = a2;
          v36 = 2112;
          v37 = a3;
          _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] vfd = %d, options = %@", buf, 0x36u);
        }
      }

      *a4 = cf;
      return v11;
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_12;
  }

  VCTransportStreamVTPCreate_cold_1();
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_13:
  *buf = 0;
  FigCFDictionaryGetIntIfPresent();
  *(DerivedStorage + 224) = *buf;
  v25 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v24 = 2;
  FigCFDictionaryGetInt32IfPresent();
  v17 = VCGetVTPTrafficClassForVCTrafficClass(v24);
  *(DerivedStorage + 64) = v17;
  if (v17 == -1)
  {
    v11 = 2150760449;
    VCTransportStreamVTPCreate_cold_4();
  }

  else
  {
    value = 0;
    valuePtr = 0;
    if (!CFDictionaryGetValueIfPresent(a3, @"DSCPTag", &value))
    {
      goto LABEL_17;
    }

    CFNumberGetValue(value, kCFNumberSInt8Type, &valuePtr);
    if (!valuePtr || !VTP_SetDSCPTag(a2, valuePtr))
    {
      goto LABEL_17;
    }

    v11 = *__error() | 0xC0320000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCTransportStreamVTPCreate_cold_3();
      }
    }
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void _VCTransportStreamVTPFinalize(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "_VCTransportStreamVTPFinalize";
      v11 = 1024;
      v12 = 199;
      v13 = 2048;
      v14 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v7, 0x26u);
    }
  }

  VCTransportStreamCommonFinalize(DerivedStorage);
  v5 = *(DerivedStorage + 48);
  if (v5 != -1)
  {
    VTP_Close(v5);
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t _VCTransportStreamVTPCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPCopyProperty_cold_4();
    return v17;
  }

  if (!a2 || !a4)
  {
    _VCTransportStreamVTPCopyProperty_cold_3(a2, a4, &v17);
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"UnderlyingVFD"))
  {
    v8 = CFRetain(*(DerivedStorage + 56));
LABEL_9:
    v11 = v8;
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, @"TrafficClass"))
  {
    v17 = VCGetVCTrafficClassForVTPTrafficClass(*(DerivedStorage + 64));
    v9 = &v17;
    v10 = a3;
LABEL_8:
    v8 = CFNumberCreate(v10, kCFNumberIntType, v9);
    goto LABEL_9;
  }

  if (CFEqual(a2, @"RequiresLargeReceiveBuffer"))
  {
    if (DerivedStorage)
    {
      v13 = *(DerivedStorage + 216);
      *a4 = v13;
      CFRetain(v13);
      return 0;
    }

    _VCTransportStreamVTPCopyProperty_cold_1();
    return v17;
  }

  if (CFEqual(a2, @"TransportStreamIndex"))
  {
    if (DerivedStorage)
    {
      v10 = *MEMORY[0x1E695E480];
      v9 = (DerivedStorage + 224);
      goto LABEL_8;
    }

    _VCTransportStreamVTPCopyProperty_cold_2();
    return v17;
  }

  if (CFEqual(a2, @"ReceiveBufferSize"))
  {

    return _VCTransportStreamVTPCopyReceiveBufferSize(DerivedStorage, a4);
  }

  else if (CFEqual(a2, @"PreferredSendQueue"))
  {
    result = VTP_CopyPreferredSendQueue(*(DerivedStorage + 48), a4);
    if (result)
    {
      v14 = result;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315906;
          v18 = v15;
          v19 = 2080;
          v20 = "_VCTransportStreamVTPCopyProperty";
          v21 = 1024;
          v22 = 231;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_GetPreferredSendQueue failed - %d", &v17, 0x22u);
        }
      }

      return *__error() | 0xC0320000;
    }
  }

  else if (CFEqual(a2, @"IsIPv6"))
  {

    return _VCTransportStreamVTPCopyIsIPv6(DerivedStorage, a4);
  }

  else if (CFEqual(a2, @"ReceiveHopLimitEnabled"))
  {

    return _VCTransportStreamVTPCopyReceiveHopLimitEnabled(DerivedStorage, a4);
  }

  else
  {

    return VCTransportStreamCommonCopyProperty(DerivedStorage, a2, a3, a4);
  }

  return result;
}

uint64_t _VCTransportStreamVTPSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPSetProperty_cold_6();
    return BOOLean;
  }

  if (!a2 || !a3)
  {
    _VCTransportStreamVTPSetProperty_cold_5(a2, a3, &BOOLean);
    return BOOLean;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ReceiveHopLimitEnabled"))
  {
    if (DerivedStorage)
    {
      BOOLean = 0;
      IsIPv6 = _VCTransportStreamVTPCopyIsIPv6(DerivedStorage, &BOOLean);
      if (IsIPv6 || !BOOLean)
      {
        _VCTransportStreamVTPSetProperty_cold_2(IsIPv6, &v13);
      }

      else
      {
        v11 = CFBooleanGetValue(a3) != 0;
        if (CFBooleanGetValue(BOOLean))
        {
          v7 = 41;
          v8 = 37;
        }

        else
        {
          v7 = 0;
          v8 = 24;
        }

        v9 = VTP_Setsockopt(*(DerivedStorage + 48), v7, v8, &v11, 4u);
        CFRelease(BOOLean);
        if (!v9)
        {
          *(DerivedStorage + 208) = a3;
          return v9;
        }

        _VCTransportStreamVTPSetProperty_cold_1();
      }
    }

    else
    {
      _VCTransportStreamVTPSetProperty_cold_3();
    }

    return v13;
  }

  v9 = 2150760464;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCTransportStreamVTPSetProperty_cold_4();
    }
  }

  return v9;
}

uint64_t _VCTransportStreamVTPCopyReceiveBufferSize(uint64_t a1, CFNumberRef *a2)
{
  if (!a1)
  {
    _VCTransportStreamVTPCopyReceiveBufferSize_cold_2();
    return v5;
  }

  if (!a2)
  {
    _VCTransportStreamVTPCopyReceiveBufferSize_cold_1();
    return v5;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 228));
  result = 0;
  *a2 = v3;
  return result;
}

uint64_t _VCTransportStreamVTPCopyIsIPv6(uint64_t a1, const void **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPCopyIsIPv6_cold_3();
    return *buf;
  }

  if (!a2)
  {
    _VCTransportStreamVTPCopyIsIPv6_cold_2();
    return *buf;
  }

  *&v3.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v3.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v22[6] = v3;
  v22[7] = v3;
  v22[5] = v3;
  v22[3] = v3;
  v22[4] = v3;
  v22[1] = v3;
  v22[2] = v3;
  v22[0] = v3;
  v13 = 128;
  v4 = VTP_Getsockname(*(a1 + 48), v22, &v13);
  if (v4)
  {
    v9 = v4;
    v7 = *__error() | 0xC0320000;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v15 = v10;
          v16 = 2080;
          v17 = "_VCTransportStreamVTPCopyIsIPv6";
          v18 = 1024;
          v19 = 300;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_Getsockname failed - %d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        _VCTransportStreamVTPCopyIsIPv6_cold_1();
      }
    }
  }

  else
  {
    if (v22[0].sa_family == 30)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    v6 = *v5;
    *a2 = *v5;
    CFRetain(v6);
    return 0;
  }

  return v7;
}

uint64_t _VCTransportStreamVTPCopyReceiveHopLimitEnabled(uint64_t a1, void *a2)
{
  if (!a1)
  {
    _VCTransportStreamVTPCopyReceiveHopLimitEnabled_cold_2();
    return v4;
  }

  if (!a2)
  {
    _VCTransportStreamVTPCopyReceiveHopLimitEnabled_cold_1();
    return v4;
  }

  v2 = *(a1 + 208);
  *a2 = v2;
  CFRetain(v2);
  return 0;
}

uint64_t _VCTransportStreamVTPSetSendFailedHandler(uint64_t a1, void *a2, NSObject *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();

    return VCTransportStreamCommonSetSendFailedHandler(DerivedStorage, a2, a3);
  }

  else
  {
    _VCTransportStreamVTPSetSendFailedHandler_cold_1();
    return v7;
  }
}

uint64_t _VCTransportStreamVTPSend(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPSend_cold_7();
    return __b[0];
  }

  v2 = a2;
  if (!a2)
  {
    _VCTransportStreamVTPSend_cold_6();
    return __b[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) != 2)
  {
    _VCTransportStreamVTPSend_cold_1();
    return __b[0];
  }

  v4 = DerivedStorage;
  while (1)
  {
    if (!*v2)
    {
      _VCTransportStreamVTPSend_cold_5();
      return *buf;
    }

    if (*(v2 + 34) >= 0xDu)
    {
      _VCTransportStreamVTPSend_cold_4(v2 + 34, buf);
      return *buf;
    }

    DataLength = CMBlockBufferGetDataLength(*v2);
    v6 = DataLength;
    if (DataLength >= 0x5C1)
    {
      _VCTransportStreamVTPSend_cold_3(DataLength, buf);
      return *buf;
    }

    memset(__b, 170, sizeof(__b));
    returnedPointerOut = 0;
    v7 = CMBlockBufferAccessDataBytes(*v2, 0, v6, __b, &returnedPointerOut);
    if (v7)
    {
      _VCTransportStreamVTPSend_cold_2(v7, buf);
      return *buf;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(v32, 0, sizeof(v32));
    VTP_SetPktTag(v32, 0, *(v2 + 56));
    VTP_SetPktTag(v32, 1u, *(v2 + 64));
    VTP_SetPktTag(v32, 2u, *(v2 + 72));
    VTP_SetPktTag(v32, 3u, *(v2 + 80));
    *(&v33 + 9) = *(v2 + 152);
    LODWORD(v41) = *(v2 + 132);
    DWORD2(v32[0]) = v4[50];
    BYTE8(v42) = *(v2 + 49);
    uuid_copy(&v41 + 4, (v2 + 136));
    v8 = *(v2 + 35);
    v9 = *(v2 + 34);
    v10 = *(v2 + 36);
    if (v8 || *(v2 + 34) || (*(v2 + 36) & 1) != 0)
    {
      BYTE8(v33) = 1;
      v11 = *(v2 + 48);
    }

    else
    {
      BYTE8(v33) = *(v2 + 48);
      v11 = BYTE8(v33);
      if ((BYTE8(v33) & 1) == 0)
      {
        goto LABEL_15;
      }

      v9 = 0;
    }

    BYTE12(v35) = v8;
    BYTE14(v35) = v10;
    *&v36 = *(v2 + 40);
    BYTE9(v37) = v11;
    BYTE8(v35) = v9;
    if (v9)
    {
      __memcpy_chk();
    }

LABEL_15:
    if (VTP_Send(v4[12], returnedPointerOut, v6, v4[16], v32) == -1)
    {
      break;
    }

    v2 = *(v2 + 160);
    if (!v2)
    {
      return v2;
    }
  }

  v2 = *__error() | 0xC0320000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v16 = v4[12];
      *buf = 136316674;
      v19 = v13;
      v20 = 2080;
      v21 = "_VCTransportStreamVTPSendOnePacket";
      v22 = 1024;
      v23 = 427;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = DWORD2(v32[0]);
      v30 = 2048;
      v31 = v6;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_Send failed with errno=%d vfd=%d localCallID=%d, dataLength=%zu", buf, 0x38u);
    }
  }

  return v2;
}

uint64_t _VCTransportStreamVTPCopyPacketFilter(uint64_t a1, void *a2)
{
  if (!a1)
  {
    _VCTransportStreamVTPCopyPacketFilter_cold_2();
    return v6;
  }

  if (!a2)
  {
    _VCTransportStreamVTPCopyPacketFilter_cold_1();
    return v6;
  }

  v3 = *(CMBaseObjectGetDerivedStorage() + 40);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t _VCTransportStreamVTPSetReceivedHandler(uint64_t a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();

    return VCTransportStreamCommonSetReceivedHandler(DerivedStorage, a2);
  }

  else
  {
    _VCTransportStreamVTPSetReceivedHandler_cold_1();
    return v5;
  }
}

uint64_t _VCTransportStreamVTPPerformReceive(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    _VCTransportStreamVTPPerformReceive_cold_5();
LABEL_15:
    v5 = v10;
    goto LABEL_10;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 8) != 2)
  {
    _VCTransportStreamVTPPerformReceive_cold_1();
    goto LABEL_15;
  }

  if ((*(DerivedStorage + 12) & 1) == 0)
  {
    _VCTransportStreamVTPPerformReceive_cold_2();
    goto LABEL_15;
  }

  v4 = VTP_Recvfrom(*(DerivedStorage + 48), &v9);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = _VCTransportStreamVTPHandlePacketReceived(a1, v9);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(v3 + 8);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6 == 3)
  {
    _VCTransportStreamVTPPerformReceive_cold_4(ErrorLogLevelForModule);
    goto LABEL_15;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCTransportStreamVTPPerformReceive_cold_3();
    }
  }

LABEL_10:
  VTP_ReleasePacket(&v9);
  return v5;
}

uint64_t _VCTransportStreamVTPActivate(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPActivate_cold_4();
    return *v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) != 1)
  {
    _VCTransportStreamVTPActivate_cold_1();
    return *v12;
  }

  v3 = DerivedStorage;
  if ((*(DerivedStorage + 12) & 1) == 0)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 8) != 1)
    {
      _VCTransportStreamVTPActivate_cold_2();
      return 2150760509;
    }

    v5 = v4;
    *(v4 + 68) = 0u;
    v6 = (v4 + 68);
    *(v4 + 164) = 0u;
    *(v4 + 180) = 0u;
    *(v4 + 132) = 0u;
    *(v4 + 148) = 0u;
    *(v4 + 100) = 0u;
    *(v4 + 116) = 0u;
    *(v4 + 84) = 0u;
    v7 = *(v4 + 48);
    if (__darwin_check_fd_set_overflow(v7, (v4 + 68), 0))
    {
      *(v6 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
    }

    *v12 = MEMORY[0x1E69E9820];
    *&v12[8] = 0x40000000;
    *&v12[16] = ___VCTransportStreamVTPRegisterPacketCallback_block_invoke;
    *&v13 = &__block_descriptor_tmp_21;
    *(&v13 + 1) = a1;
    *(v5 + 196) = VTP_RegisterPacketCallback(v6, a1, v12);
  }

  *(v3 + 8) = 2;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 0;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x1E6986650];
  v10 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v12 = 136315906;
      *&v12[4] = v8;
      *&v12[12] = 2080;
      *&v12[14] = "_VCTransportStreamVTPActivate";
      *&v12[22] = 1024;
      LODWORD(v13) = 460;
      WORD2(v13) = 2048;
      *(&v13 + 6) = a1;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", v12, 0x26u);
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      _VCTransportStreamVTPActivate_cold_3();
      return 0;
    }
  }

  return result;
}

uint64_t _VCTransportStreamVTPDeactivate(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamVTPDeactivate_cold_2();
    return v9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) != 2)
  {
    _VCTransportStreamVTPDeactivate_cold_1();
    return v9;
  }

  v3 = DerivedStorage;
  *(DerivedStorage + 8) = 3;
  if ((*(DerivedStorage + 12) & 1) == 0)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 196);
    if (v5 != -1)
    {
      VTP_UnregisterPacketCallback(v5);
      *(v4 + 196) = -1;
    }
  }

  VCCloseVFDIfValid(*(v3 + 48));
  *(v3 + 48) = -1;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 136315906;
    v10 = v6;
    v11 = 2080;
    v12 = "_VCTransportStreamVTPDeactivate";
    v13 = 1024;
    v14 = 561;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v9, 0x26u);
  }

  return 0;
}

uint64_t _VCTransportStreamVTPSetRemoteSSRCOnVFD(int a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  number = 0;
  if (a2)
  {
    if (a3)
    {
      if (a1 == -1)
      {
        _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_3();
      }

      else
      {
        CMBaseObject = VCPacketFilterGetCMBaseObject(a2, a2);
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6 && (v7 = v6(CMBaseObject, a3, *MEMORY[0x1E695E480], &number), (v7 & 0x80000000) == 0) && (v8 = v7, number))
        {
          valuePtr = 0;
          CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
          if (VTP_SetRemoteSSRC(a1, valuePtr) != -1)
          {
            goto LABEL_8;
          }

          _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_1();
        }

        else
        {
          _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_2(&v12);
        }
      }
    }

    else
    {
      _VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_4();
    }
  }

  else if (_VCTransportStreamVTPSetRemoteSSRCOnVFD_cold_5())
  {
    return 2150760449;
  }

  v8 = v12;
LABEL_8:
  if (number)
  {
    CFRelease(number);
  }

  return v8;
}

uint64_t _VCTransportStreamVTPHandlePacketReceived(uint64_t a1, uint64_t a2)
{
  v7[21] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    _VCTransportStreamVTPHandlePacketReceived_cold_3();
    return v6;
  }

  v4 = DerivedStorage;
  if (*(DerivedStorage + 8) != 2)
  {
    _VCTransportStreamVTPHandlePacketReceived_cold_1();
    return v6;
  }

  if (!*(DerivedStorage + 32))
  {
    _VCTransportStreamVTPHandlePacketReceived_cold_2();
    return v6;
  }

  *&v7[14] = unk_1DBD51470;
  *&v7[16] = xmmword_1DBD51480;
  memset(&v7[18], 170, 24);
  memset(v7, 170, 112);
  VCGetVCPacketWithVTPPacket(a2, v7);
  (*(*(v4 + 32) + 16))();
  VCPacketInvalidate(v7);
  return 0;
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  result = 0;
  *v0 = -2144206847;
  return result;
}

void VCMediaControlInfo_SetDelegateAndVTable(uint64_t a1, CFTypeRef cf, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 24) = cf;
    *(a1 + 32) = *a3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "VCMediaControlInfo_SetDelegateAndVTable";
      v12 = 1024;
      v13 = 30;
      v14 = 2048;
      v15 = a1;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance=%p or delegateVTable=%p passed", &v8, 0x30u);
    }
  }
}

uint64_t VCMediaControlInfo_SerializedSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaControlInfo_SerializedSize_cold_1();
    }
  }

  return 0;
}

void VCMediaControlInfo_Invalidate(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v1;
      v5 = 2080;
      v6 = "VCMediaControlInfo_Invalidate";
      v7 = 1024;
      v8 = 94;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil context passed", &v3, 0x1Cu);
    }
  }
}

void VCMediaControlInfoDispose(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a1;
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2 && (v3 = *(a1 + 32)) != 0)
    {
      *(a1 + 24) = 0;
      v3(v2, &v8);
      CFRelease(v2);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
        *buf = 136316418;
        v10 = v4;
        v11 = 2080;
        v12 = "VCMediaControlInfoDispose";
        v13 = 1024;
        v14 = 108;
        v15 = 2048;
        v16 = a1;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d instance=%p nil delegate=%p or disposeControlInfo=%p passed", buf, 0x3Au);
      }
    }
  }
}

void VCMediaControlInfo_SetVersion(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 40) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaControlInfo_SetVersion_cold_1();
    }
  }
}

uint64_t VCMediaControlInfoIPCamera_SerializedSize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      result = 8;
      *(a1 + 16) = 8;
    }

    else
    {
      return *(a1 + 16);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoIPCamera_SerializedSize_cold_1();
      }
    }

    return 0;
  }

  return result;
}

uint64_t VCMediaControlInfoIPCamera_SerializeBuffer(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (!a1)
  {
    VCMediaControlInfoIPCamera_SerializeBuffer_cold_4();
    return v6;
  }

  if (!a2)
  {
    VCMediaControlInfoIPCamera_SerializeBuffer_cold_3();
    return v6;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a1 + 16) <= a3)
    {
      v4 = 2150563857;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCMediaControlInfoIPCamera_SerializeBuffer_cold_1();
        }
      }

      return v4;
    }

    goto LABEL_14;
  }

  *(a1 + 16) = 8;
  if (a3 <= 7)
  {
LABEL_14:
    VCMediaControlInfoIPCamera_SerializeBuffer_cold_2();
    return v6;
  }

  *a2 = *(a1 + 64);
  v4 = 0;
  if (a4)
  {
    *a4 = 8;
  }

  return v4;
}

uint64_t VCMediaControlInfoSerializeWithData(unsigned __int16 *a1, _WORD *a2, unint64_t a3, unsigned __int8 *a4, unint64_t *a5)
{
  *a5 = 0;
  if (!a1 || !a2 || !a4)
  {
    VCMediaControlInfoSerializeWithData_cold_6();
    return v21;
  }

  v5 = *a4;
  if (v5 == 2)
  {
    v6 = 6;
    if (a4[2])
    {
      v6 = 10;
    }

    if (a4[5])
    {
      v6 += 4;
    }
  }

  else
  {
    v6 = 6;
  }

  v7 = 10;
  if (a4[4])
  {
    v7 = 14;
  }

  v8 = v7 + v6;
  if (v8 > a3)
  {
    VCMediaControlInfoSerializeWithData_cold_5();
    return v21;
  }

  if ((a4[1] & 1) == 0)
  {
    VCMediaControlInfoSerializeWithData_cold_1();
    return v21;
  }

  if ((v5 - 3) <= 0xFFFFFFFD)
  {
    VCMediaControlInfoSerializeWithData_cold_4();
    return v21;
  }

  if (a4[2])
  {
    LOWORD(v9) = 5;
  }

  else
  {
    LOWORD(v9) = 1;
  }

  if (a4[5])
  {
    LOWORD(v9) = v9 | 8;
  }

  a2[2] = bswap32(*a1) >> 16;
  if (a1[4] >= 0x10u)
  {
    a1[4] = 15;
  }

  v10 = a1 + 2;
  if (a1[2] >= 0x10u)
  {
    *v10 = 15;
  }

  v11 = *a4;
  if (v11 == 2)
  {
    v12 = *(a1 + 3);
    v10 = a1 + 4;
    goto LABEL_29;
  }

  if (v11 == 1)
  {
    v12 = a1[1];
LABEL_29:
    a2[3] = bswap32(v12) >> 16;
    a2[4] = bswap32(a1[5] & 0xFFF | (*v10 << 12)) >> 16;
    v13 = a2 + 5;
    goto LABEL_31;
  }

  v13 = a2 + 3;
LABEL_31:
  if ((a4[3] & 1) == 0)
  {
    VCMediaControlInfoSerializeWithData_cold_2();
    return v21;
  }

  v14 = *(a1 + 5);
  if (v14 >= 0xFFFF)
  {
    v14 = 0xFFFF;
  }

  *v13 = bswap32(v14) >> 16;
  v13[1] = bswap32(a1[12]) >> 16;
  v15 = *(a1 + 7);
  if (v15 >= 0xFFFF)
  {
    v15 = 0xFFFF;
  }

  v13[2] = bswap32(v15) >> 16;
  v16 = (v13 + 3);
  if (*a4 == 2)
  {
    if (a4[2] != 1 || (v13[3] = bswap32(a1[3] & 0xFFF | (a1[2] << 12)) >> 16, v13[4] = bswap32(a1[1]) >> 16, v16 = (v13 + 5), *a4 == 2))
    {
      if (a4[5] == 1)
      {
        *v16 = bswap32(a1[18]) >> 16;
        *(v16 + 1) = bswap32(a1[19]) >> 16;
        v16 += 4;
      }
    }
  }

  if (a4[4] == 1)
  {
    LOWORD(v9) = v9 | 2;
    *v16 = *(a1 + 8);
    v16 += 4;
  }

  v17 = *a4;
  if (v17 == 2)
  {
    v18 = bswap32((v8 + 262140) >> 2) >> 16;
    v19 = v9 | 0x80;
    v9 = *(a1 + 4) / 0x14u;
    goto LABEL_47;
  }

  if (v17 == 1)
  {
    v18 = bswap32((v8 + 262140) >> 2) >> 16;
    v19 = 64;
LABEL_47:
    *a2 = v19 | (v9 << 8);
    a2[1] = v18;
  }

  if (v16 - a2 == v8)
  {
    result = 0;
    *a5 = v8;
    return result;
  }

  VCMediaControlInfoSerializeWithData_cold_3();
  return v21;
}

uint64_t VCMediaControlInfoUnserializeWithData(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned __int8 *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a4)
  {
    VCMediaControlInfoUnserializeWithData_cold_7();
    return v31;
  }

  if (*a4 - 3 <= 0xFFFFFFFD)
  {
    VCMediaControlInfoUnserializeWithData_cold_6();
    return v31;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = *a4;
  if (v5 == 2)
  {
    if (a4[2])
    {
      v6 = 10;
    }

    else
    {
      v6 = 6;
    }

    if (a4[5])
    {
      v6 += 4;
    }

    v7 = v6 + 10;
  }

  else
  {
    v7 = 16;
  }

  if (v7 > a3)
  {
    v8 = 2150563883;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v31 = 136316162;
        v32 = v9;
        v33 = 2080;
        v34 = "VCMediaControlInfoUnserializeWithData";
        v35 = 1024;
        v36 = 571;
        v37 = 2048;
        v38 = a3;
        v39 = 1024;
        v40 = v7;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad buffer length(%zu) for FaceTime audio media control info, expecting %u", &v31, 0x2Cu);
        return 2150563883;
      }
    }

    return v8;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v11 = *a2;
      if (v11 >> 6 != 1)
      {
        VCMediaControlInfoUnserializeWithData_cold_2();
        return v31;
      }

      v12 = (bswap32(a2[1]) >> 14) & 0x3FFFC;
      v13 = (v11 >> 8) & 0xF;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

LABEL_25:
    if (v12 + 4 == a3)
    {
      v16 = (v13 >> 2) & 1;
      if (v5 != 2)
      {
        v16 = 0;
      }

      if (v5 == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v13 > 7;
      a4[1] = 1;
      a4[2] = v17;
      if (v5 != 2)
      {
        v18 = 0;
      }

      a4[5] = v18;
      *a1 = bswap32(a2[2]) >> 16;
      if (v5 == 2)
      {
        *(a1 + 12) = bswap32(a2[3]) >> 16;
        v21 = bswap32(a2[4]);
        *(a1 + 8) = v21 >> 28;
        *(a1 + 10) = HIWORD(v21) & 0xFFF;
        if (v17)
        {
          v22 = bswap32(a2[8]);
          *(a1 + 4) = v22 >> 28;
          *(a1 + 6) = HIWORD(v22) & 0xFFF;
          *(a1 + 2) = bswap32(a2[9]) >> 16;
          v23 = a2 + 10;
        }

        else
        {
          v23 = a2 + 5;
        }

        if (v13 >= 8)
        {
          *(a1 + 36) = bswap32(*v23) >> 16;
          *(a1 + 38) = bswap32(v23[1]) >> 16;
        }

        if (v17)
        {
          v20 = 10;
        }

        else
        {
          v20 = 6;
        }

        if (v13 > 7)
        {
          v20 += 4;
        }
      }

      else
      {
        if (v5 == 1)
        {
          *(a1 + 2) = bswap32(a2[3]) >> 16;
          v19 = bswap32(a2[4]);
          *(a1 + 4) = v19 >> 28;
          *(a1 + 10) = HIWORD(v19) & 0xFFF;
        }

        v20 = 6;
      }

      v24 = v12 - v20;
      *(a1 + 20) = bswap32(a2[5]) >> 16;
      *(a1 + 24) = bswap32(a2[6]) >> 16;
      *(a1 + 28) = bswap32(a2[7]) >> 16;
      a4[3] = 1;
      if ((v13 & 2) != 0)
      {
        if (v24 <= 9)
        {
          VCMediaControlInfoUnserializeWithData_cold_4();
          return v31;
        }

        v25 = v24 - 10;
        v26 = 10;
        if (!v17)
        {
          v26 = 6;
        }

        if (v13 <= 7)
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 + 4;
        }

        if (v5 != 2)
        {
          v27 = 6;
        }

        *(a1 + 32) = *(a2 + v27 + 10);
        a4[4] = 1;
      }

      else
      {
        v25 = v24 - 6;
      }

      if (!v25)
      {
        return 0;
      }

      VCMediaControlInfoUnserializeWithData_cold_5();
    }

    else
    {
      VCMediaControlInfoUnserializeWithData_cold_3();
    }

    return v31;
  }

  v14 = *a2;
  if (v14 >> 6 != 2)
  {
    VCMediaControlInfoUnserializeWithData_cold_1();
    return v31;
  }

  v15 = a2[1];
  *(a1 + 16) = 20 * (v14 >> 8);
  v13 = v14 & 0xF;
  if ((v14 & 0xF) != 0)
  {
    v12 = bswap32(v15) >> 14;
    goto LABEL_25;
  }

  v8 = 2150563857;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315650;
      v32 = v29;
      v33 = 2080;
      v34 = "VCMediaControlInfoUnserializeWithData";
      v35 = 1024;
      v36 = 593;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The remote caller is likely in an incompatible AVConference build, please update to AVConference build latest OR after <rdar://problem/49225282> Fix AFRC feedback FaceTimeMediaControlInfoHeaderAudioV2 in LITTLE_ENDIAN case", &v31, 0x1Cu);
    }
  }

  return v8;
}

uint64_t VCMediaControlInfoFaceTimeAudio_SerializedSize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if ((v1 & 4) != 0)
    {
      v2 = 10;
    }

    else
    {
      v2 = 6;
    }

    v3 = v2 + ((v1 >> 1) & 4);
    if (*(a1 + 40) == 2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 6;
    }

    v5 = (v1 & 2) == 0;
    v6 = 14;
    if (v5)
    {
      v6 = 10;
    }

    return v4 + v6;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoFaceTimeAudio_SerializedSize_cold_1();
      }
    }

    return 0;
  }
}

uint64_t VCMediaControlInfoFaceTimeAudio_SerializeBuffer(uint64_t a1, _WORD *a2, unint64_t a3, unint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = v9;
          v17 = 2080;
          v18 = "VCMediaControlInfoFaceTimeAudio_SerializeBuffer";
          v19 = 1024;
          v20 = 1086;
          v21 = 2112;
          v22 = [a1 description];
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        VCMediaControlInfoFaceTimeAudio_SerializeBuffer_cold_1(v9, a1);
      }
    }

    v14[0] = *(a1 + 40);
    v12 = *(a1 + 8);
    v14[1] = v12 & 1;
    v14[2] = (v12 & 4) != 0;
    v14[3] = (v12 & 0x80) != 0;
    v14[4] = (v12 & 2) != 0;
    v14[5] = (v12 & 8) != 0;
    return VCMediaControlInfoSerializeWithData((a1 + 88), a2, a3, v14, a4);
  }

  else
  {
    VCMediaControlInfoFaceTimeAudio_SerializeBuffer_cold_2();
    return *buf;
  }
}

void VCMediaControlInfoFaceTimeAudio_SetVideoEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 128) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaControlInfoFaceTimeAudio_SetVideoEnabled_cold_1();
    }
  }
}

uint64_t VCMediaControlInfoFaceTimeVideo_SerializedSize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    v2 = 8;
    if ((v1 & 2) == 0)
    {
      v2 = 4;
    }

    v3 = v2 + 4 * (v1 & 1);
    *(a1 + 16) = v3;
    if ((v1 & 4) != 0)
    {
      v3 += *(a1 + 112);
      *(a1 + 16) = v3;
    }

    if ((v1 & 8) != 0)
    {
      v3 += 4;
      *(a1 + 16) = v3;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoFaceTimeVideo_SerializedSize_cold_1();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t VCMediaControlInfoFaceTimeVideo_SerializeBuffer(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (!a1)
  {
    VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_3();
    return v17;
  }

  if (!a2)
  {
    VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_2();
    return v17;
  }

  v8 = VCMediaControlInfoFaceTimeVideo_SerializedSize(a1);
  v9 = v8;
  if (v8 > a3)
  {
    VCMediaControlInfoFaceTimeVideo_SerializeBuffer_cold_1();
    return v17;
  }

  v10 = *(a1 + 40) << 6;
  v11 = *(a1 + 8);
  if ((v11 & 0x10) != 0)
  {
    v10 |= *(a1 + 64) & 0x3F;
  }

  v12 = v10;
  if ((*(a1 + 8) & 0x100) != 0)
  {
    v12 = v10 | (*(a1 + 65) << 12);
  }

  if ((v11 & 2) != 0)
  {
    v12 |= 0x200u;
    *(a2 + 4) = *(a1 + 68);
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  if ((v11 & 1) != 0 && (v12 & 0xC0) == 0x80)
  {
    v12 = v12 & 0xFEBF | 0x100;
    v14 = (a2 + v13);
    *v14 = bswap32(*(a1 + 72)) >> 16;
    v14[1] = bswap32(*(a1 + 74)) >> 16;
    v13 += 4;
    v11 = *(a1 + 8);
  }

  v15 = bswap32((v8 + 262140) >> 2);
  if ((v11 & 4) != 0)
  {
    v12 |= 0x400u;
    memcpy((a2 + v13), (a1 + 76), *(a1 + 112));
    v13 += *(a1 + 112);
    v11 = *(a1 + 8);
  }

  if ((v11 & 8) != 0)
  {
    v12 |= 0x800u;
    *(a2 + v13) = *(a1 + 120);
  }

  *a2 = v12;
  *(a2 + 2) = HIWORD(v15);
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t VCMediaControlInfoMultiwayAudio_SerializedSize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      *(a1 + 16) += 4;
    }

    v2 = *(a1 + 16);
    if ((v1 & 2) != 0)
    {
      v2 += 4;
      *(a1 + 16) = v2;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoMultiwayAudio_SerializedSize_cold_1();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t VCMediaControlInfoMultiwayAudio_SerializeBuffer(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t *a4)
{
  if (!a1)
  {
    VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_5();
    return v7;
  }

  if (!a2)
  {
    VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_4();
    return v7;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16) + 4 * (v4 & 1) + ((2 * v4) & 4);
  if ((v4 & 3) != 0)
  {
    *(a1 + 16) = v5;
  }

  if (v5 > a3)
  {
    VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_3();
    return v7;
  }

  if ((v4 & 1) == 0)
  {
    VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_2();
    return v7;
  }

  if ((v4 & 2) == 0)
  {
    VCMediaControlInfoMultiwayAudio_SerializeBuffer_cold_1();
    return v7;
  }

  *a2 = *(a1 + 64);
  a2[1] = *(a1 + 68);
  result = 0;
  if (a4)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t VCMediaControlInfoGetSize(uint64_t result)
{
  if (result)
  {
    return (*(result + 48))();
  }

  return result;
}

uint64_t VCMediaControlInfoSerialize(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 56))();
  }

  else
  {
    return 2150563841;
  }
}

void *iPadWiFiScreenDecodingRules(uint64_t a1, double a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 == 2732.0 && a3 == 2048.0)
  {
    v7 = &g_DecodingFormatiPadWiFi2732x2048;
  }

  else if (a2 == 2224.0 && a3 == 1668.0)
  {
    v7 = &g_DecodingFormatiPadWiFi2224x1668;
  }

  else if (a2 == 2388.0 && a3 == 1668.0)
  {
    v7 = &g_DecodingFormatiPadWiFi2388x1668;
  }

  else
  {
    if ((a2 != 2048.0 || a3 != 1536.0) && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "iPadWiFiScreenDecodingRules";
        v15 = 1024;
        v16 = 100;
        v17 = 2048;
        v18 = a2;
        v19 = 2048;
        v20 = a3;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolution(%f x %f)  not supported. Defaulting to 2048x1536", &v11, 0x30u);
      }
    }

    v7 = &g_DecodingFormatiPadWiFi2048x1536;
  }

  return videoRulesForFormatList_2(v7, 1u, a1);
}

void *videoRulesForFormatList_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = a2;
    v10 = (a1 + 8);
    v11 = MEMORY[0x1E6986650];
    do
    {
      v12 = [VCVideoRule alloc];
      *&v13 = *v10;
      v14 = [(VCVideoRule *)v12 initWithFrameWidth:*(v10 - 2) frameHeight:*(v10 - 1) frameRate:a3 payload:v13];
      if (v14)
      {
        v15 = v14;
        [v6 addObject:v14];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v19 = v16;
          v20 = 2080;
          v21 = "videoRulesForFormatList";
          v22 = 1024;
          v23 = 48;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video rule for secondary screen !", buf, 0x1Cu);
        }
      }

      v10 += 3;
      --v9;
    }

    while (v9);
  }

  return v6;
}

uint64_t VCCallSession_SetUpRemoteAttributes(__CVBuffer *a1, uint64_t a2, char a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t *a15, VideoAttributes **a16)
{
  v95 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  *&v32 = -1;
  *(&v32 + 1) = -1;
  v83 = v32;
  v84 = v32;
  VideoUtil_GetVisibleRect(a1, &v83);
  v33 = *&v84 < *(&v84 + 1) || (a2 & 2) == 0;
  if ((a2 & 0x80) == 0)
  {
    v34 = 0;
    result = 0;
    goto LABEL_57;
  }

  v82 = Height;
  v36 = VCVideoCaptureServer_CopyLocalVideoAttributes(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
  v81 = Width;
  if ([v36 orientation])
  {
    v37 = [v36 orientation] == 1;
  }

  else
  {
    v37 = 1;
  }

  v38 = v33 ^ v37;
  v78 = a9;
  v79 = a12;
  if (*&v84 >= *(&v84 + 1))
  {
    v39 = *(&v84 + 1) / *&v84;
  }

  else
  {
    v39 = *&v84 / *(&v84 + 1);
  }

  v80 = a11;
  v40 = v39;
  v41 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  if (v33)
  {
    [v41 localScreenRatioForScreenOrientation:0];
    v43 = v42;
    v45 = v44;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v48 = v46;
    if (a3)
    {
      if (v38)
      {
        goto LABEL_21;
      }
    }

    else if (((v46 / v47 < v40) & v38) != 0)
    {
LABEL_21:
      v54 = v47 / v48;
      goto LABEL_25;
    }

    v48 = v43;
    v47 = v45;
    goto LABEL_21;
  }

  [v41 localScreenRatioForScreenOrientation:3];
  v50 = v49;
  v52 = v51;
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  v48 = v53;
  if (a3)
  {
    if (v38)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((v47 / v53 < v40) & v38) == 0)
  {
LABEL_23:
    v48 = v50;
    v47 = v52;
  }

LABEL_24:
  v54 = v48 / v47;
LABEL_25:
  v55 = v47;
  if (!a4 && VCCallSession_SetUpRemoteAttributes_lastRemotePortrait == v33 && VCCallSession_SetUpRemoteAttributes_lastLocalPortrait == v37)
  {
    v34 = 0;
    v56 = v81;
  }

  else
  {
    v57 = objc_alloc_init(VideoAttributes);
    v34 = v57;
    if (v37)
    {
      v58 = a6;
    }

    else
    {
      v58 = a8;
    }

    if (v37)
    {
      v59 = a5;
    }

    else
    {
      v59 = a7;
    }

    v60 = v79;
    if (v33)
    {
      v60 = v77;
    }

    v61 = v80;
    if (v33)
    {
      v61 = v78;
    }

    if (!v38)
    {
      v59 = v61;
      v58 = v60;
    }

    [(VideoAttributes *)v57 setRatio:v59, v58];
    -[VideoAttributes setOrientation:](v34, "setOrientation:", [v36 orientation]);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v63 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v64 = VRTraceErrorLogLevelToCSTR();
      v65 = *v63;
      if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v86 = v64;
        v87 = 2080;
        v88 = "VCCallSession_SetUpRemoteAttributes";
        v89 = 1024;
        v90 = 352;
        v91 = 1024;
        *v92 = a2;
        *&v92[4] = 1024;
        *&v92[6] = v37;
        v93 = 1024;
        v94 = v33;
        _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d [AR_RX] cameraStatusBits=0x%08x, localPortrait=%d, remotePortrait=%d", buf, 0x2Eu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v66 = VRTraceErrorLogLevelToCSTR();
      v67 = *v63;
      if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v86 = v66;
        v87 = 2080;
        v88 = "VCCallSession_SetUpRemoteAttributes";
        v89 = 1024;
        v90 = 353;
        v91 = 2112;
        *v92 = v34;
        _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d [AR_RX] remoteScreenAttributes=%@", buf, 0x26u);
      }
    }

    v56 = v81;
  }

  VCCallSession_SetUpRemoteAttributes_lastRemotePortrait = v33;
  VCCallSession_SetUpRemoteAttributes_lastLocalPortrait = v37;

  v68 = *(&v84 + 1);
  v69 = *&v84;
  if (*&v84 / *(&v84 + 1) <= v54)
  {
    *(&v83 + 1) = (*(&v84 + 1) - *&v84 / v54) * 0.5 + *(&v83 + 1);
    *(&v84 + 1) = *&v84 / v54;
    v68 = *&v84 / v54;
  }

  else
  {
    *&v83 = (*&v84 - v54 * *(&v84 + 1)) * 0.5 + *&v83;
    *&v84 = v54 * *(&v84 + 1);
    v69 = v54 * *(&v84 + 1);
  }

  v70 = v56;
  if ((a2 & 0x10) != 0)
  {
    v48 = v82;
    if (v34)
    {
      [(VideoAttributes *)v34 setRatio:v82, v56];
    }

    v73 = 1.0;
    v71 = 0.0;
    v72 = 0.0;
    v74 = 1.0;
  }

  else
  {
    v71 = *&v83 / v70;
    v72 = *(&v83 + 1) / v82;
    v73 = v69 / v70;
    v70 = v55;
    v74 = v68 / v82;
  }

  v75 = [VideoAttributes alloc];
  LODWORD(v76) = 1.0;
  result = [(VideoAttributes *)v75 initWithCameraStatusBits:a2 aspectRatio:0 contentsRect:v48 scaleFactor:v70 frameOrientationReference:v71, v72, v73, v74, v76];
LABEL_57:
  *a15 = result;
  *a16 = v34;
  return result;
}

uint64_t GCKVoiceChatOnPlayVideo(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *(a3 + 2);
  return [a1 onPlayVideo:a2 frameTime:&v5 cameraStatusBits:a4];
}

double ComputeVisibleAspectRatioWithRemoteScreenAspectRatio(int a1, int a2, double a3, double a4, double a5, double a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a1;
  v10 = a1;
  v11 = a2;
  if ([VideoUtil compareVideoAspectRatioSizeA:a1 toSizeB:a2, a3, a4]== -1 && [VideoUtil compareVideoAspectRatioSizeA:v10 toSizeB:v11, a5, a6]== -1)
  {
    v18 = [VideoUtil compareVideoAspectRatioSizeA:a3 toSizeB:a4, a5, a6];
    if (v18 == 1)
    {
      v13 = a5;
    }

    else
    {
      v13 = a3;
    }

    if (v18 == 1)
    {
      v14 = a6;
    }

    else
    {
      v14 = a4;
    }
  }

  else if ([VideoUtil compareVideoAspectRatioSizeA:v10 toSizeB:v11, a3, a4]== 1 && [VideoUtil compareVideoAspectRatioSizeA:v10 toSizeB:v11, a5, a6]== 1)
  {
    v12 = [VideoUtil compareVideoAspectRatioSizeA:a3 toSizeB:a4, a5, a6];
    if (v12 == 1)
    {
      v13 = a3;
    }

    else
    {
      v13 = a5;
    }

    if (v12 == 1)
    {
      v14 = a4;
    }

    else
    {
      v14 = a6;
    }
  }

  else
  {
    SimplifyRatio(&v20, &v19);
    v13 = v20;
    v14 = v19;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318722;
      v22 = v15;
      v23 = 2080;
      v24 = "ComputeVisibleAspectRatioWithRemoteScreenAspectRatio";
      v25 = 1024;
      v26 = 504;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = a4;
      v31 = 2048;
      v32 = a3 / a4;
      v33 = 2048;
      v34 = a5;
      v35 = 2048;
      v36 = a6;
      v37 = 2048;
      v38 = a5 / a6;
      v39 = 2048;
      v40 = v10;
      v41 = 2048;
      v42 = v11;
      v43 = 2048;
      v44 = v10 / v11;
      v45 = 2048;
      v46 = v13;
      v47 = 2048;
      v48 = v14;
      v49 = 2048;
      v50 = v13 / v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d [AR_TX] remoteScreenAspectRatio %.0f:%.0f (%.3f), remoteExpectedAspectRatio %.0f:%.0f (%.3f), encode %.0f:%.0f (%.3f) --> visibleAspectRatio %.0f:%.0f (%.3f)", buf, 0x94u);
    }
  }

  return v13;
}

void _VCStreamInputCaptureSource_OnCaptureVideoFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = -21846;
    v8[0] = -1431699456;
    v8[1] = a5;
    v9 = 0;
    v10 = a6;
    v12 = 0;
    v13 = -1431655936;
    v6 = *a3;
    v7 = *(a3 + 16);
    VCVideoCapture_DistributeVideoFrame(a1, a2, &v6, v8);
  }

  else
  {
    _VCStreamInputCaptureSource_OnCaptureVideoFrame_cold_1();
  }
}

uint64_t VCObject_Lock(uint64_t result)
{
  if (result)
  {
    return pthread_mutex_lock((result + 16));
  }

  return result;
}

uint64_t VCObject_Unlock(uint64_t result)
{
  if (result)
  {
    return pthread_mutex_unlock((result + 16));
  }

  return result;
}

void sub_1DBB2F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBB2F580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double VCHardwareSettings_FrontCameraOffsetFromDisplayCenter()
{
  if (VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_sOnceToken != -1)
  {
    VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_cold_1();
  }

  return *&VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_0;
}

void sub_1DBB3368C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBB338C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBB33A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [a18 countByEnumeratingWithState:v29 - 160 objects:&a29 count:16];
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return [v0 objectAtIndexedSubscript:0];
}

uint64_t AVCPacketRelayDriverThreadStart()
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_DriverHandleMutex);
  if (g_DriverHandle != 0xFFFFFFFFLL)
  {
    pthread_mutex_unlock(&g_DriverHandleMutex);
    v0 = __error();
    v1 = 17;
LABEL_3:
    *v0 = v1;
    return 0xFFFFFFFFLL;
  }

  v3 = malloc_type_calloc(1uLL, 0xE0uLL, 0x102004049390C7CuLL);
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AVCPacketRelayDriverThreadStart_cold_4();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        AVCPacketRelayDriverThreadStart_cold_3();
      }
    }

    pthread_mutex_unlock(&g_DriverHandleMutex);
    v0 = __error();
    v1 = 12;
    goto LABEL_3;
  }

  v4 = v3;
  g_DriverHandle = CreateHandle();
  pthread_mutex_unlock(&g_DriverHandleMutex);
  if (g_DriverHandle == 0xFFFFFFFFLL)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverThreadStart_cold_2(v9, v10);
      }
    }

    free(v4);
    v0 = __error();
    v1 = 22;
    goto LABEL_3;
  }

  pthread_rwlock_init((v4 + 2), 0);
  *v4 = -1;
  v5 = (v4 + 54);
  values = @"com.apple.avconference.AVCPacketRelayDriverProc";
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = FigThreadCreate();
  if (v6)
  {
    CFRelease(v6);
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v7)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverThreadStart_cold_1();
      }
    }

    AVCPacketRelayDriverThreadStop();
    return 0xFFFFFFFFLL;
  }

  if (ErrorLogLevelForModule < 7)
  {
    return 0;
  }

  v11 = VRTraceErrorLogLevelToCSTR();
  v12 = *MEMORY[0x1E6986650];
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v13 = *v5;
    *buf = 136315906;
    v16 = v11;
    v17 = 2080;
    v18 = "AVCPacketRelayDriverThreadStart";
    v19 = 1024;
    v20 = 91;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverThread: AVCPacketRelayDriverProc thread(%p) started...", buf, 0x26u);
    return 0;
  }

  return result;
}

uint64_t AVCPacketRelayDriverProc()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    v15 = -2144731134;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverProc_cold_3();
      }
    }

    return v15;
  }

  v1 = v0;
  v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v20 = -1431655766;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v20, &v21);
  if (SLODWORD(v21.tv_sec) <= 57)
  {
    LODWORD(v21.tv_sec) = 58;
  }

  pthread_setschedparam(v2, v20, &v21);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      buf.fds_bits[0] = 136316418;
      *&buf.fds_bits[1] = v3;
      LOWORD(buf.fds_bits[3]) = 2080;
      *(&buf.fds_bits[3] + 2) = "setNonDecayingThreadPriority";
      HIWORD(buf.fds_bits[5]) = 1024;
      buf.fds_bits[6] = 317;
      LOWORD(buf.fds_bits[7]) = 1024;
      *(&buf.fds_bits[7] + 2) = v21.tv_sec;
      HIWORD(buf.fds_bits[8]) = 1024;
      buf.fds_bits[9] = 50;
      LOWORD(buf.fds_bits[10]) = 1024;
      *(&buf.fds_bits[10] + 2) = 20;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverProc: Fix priority at %d, CPU limit (%d, %d).", &buf, 0x2Eu);
    }
  }

  buf.fds_bits[0] = 0;
  v5 = MEMORY[0x1E128BFC0]();
  thread_policy_set(v5, 1u, buf.fds_bits, 1u);
  if (proc_setthread_cpupercent())
  {
    buf.fds_bits[0] = 1;
    v6 = MEMORY[0x1E128BFC0]();
    thread_policy_set(v6, 1u, buf.fds_bits, 1u);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverProc_cold_1();
      }
    }
  }

  v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v21.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  memset(&buf, 0, sizeof(buf));
  pthread_rwlock_rdlock((v1 + 8));
  if (*(v1 + 4))
  {
LABEL_36:
    pthread_rwlock_unlock((v1 + 8));
    goto LABEL_37;
  }

  while (1)
  {
    v7 = *v1;
    if (*v1 == -1)
    {
      v7 = socket(2, 1, 6);
      *v1 = v7;
    }

    if (__darwin_check_fd_set_overflow(v7, &buf, 0))
    {
      *(buf.fds_bits + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
    }

    v8 = *v1;
    for (i = *(v1 + 208); i; i = *(i + 2))
    {
      v10 = *i;
      if (v10 != -1)
      {
        if (__darwin_check_fd_set_overflow(*i, &buf, 0))
        {
          *(buf.fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
        }

        if (*i > v8)
        {
          v8 = *i;
        }
      }
    }

    pthread_rwlock_unlock((v1 + 8));
    v21.tv_sec = 5;
    v21.tv_usec = 0;
    v11 = select(v8 + 1, &buf, 0, 0, &v21);
    if (!v11)
    {
      goto LABEL_35;
    }

    if (v11 != -1)
    {
      pthread_rwlock_rdlock((v1 + 8));
      for (j = *(v1 + 208); j; j = *(j + 2))
      {
        v13 = *j;
        if (v13 != -1)
        {
          if (__darwin_check_fd_set_overflow(*j, &buf, 0))
          {
            if ((*(buf.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v13))
            {
              [*(j + 1) readyToRead];
              v14 = *j;
              if (__darwin_check_fd_set_overflow(*j, &buf, 0))
              {
                *(buf.fds_bits + ((v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v14);
              }
            }
          }
        }
      }

      pthread_rwlock_unlock((v1 + 8));
      goto LABEL_35;
    }

    if (*__error() != 9)
    {
      break;
    }

LABEL_35:
    memset(&buf, 0, sizeof(buf));
    pthread_rwlock_rdlock((v1 + 8));
    if (*(v1 + 4))
    {
      goto LABEL_36;
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 3)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      AVCPacketRelayDriverProc_cold_2(v18, v19);
    }
  }

LABEL_37:
  CheckOutHandleDebug();
  return 0;
}

uint64_t AVCPacketRelayDriverThreadStop()
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_DriverHandleMutex);
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    pthread_rwlock_wrlock((v0 + 8));
    *(v1 + 4) = 1;
    if (*v1 != -1)
    {
      close(*v1);
    }

    *v1 = -1;
    pthread_rwlock_unlock((v1 + 8));
    if (*(v1 + 216))
    {
      *v8 = 0xAAAAAAAAAAAAAAAALL;
      FigThreadJoin();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 216);
        *v8 = 136315906;
        *&v8[4] = v2;
        v9 = 2080;
        v10 = "AVCPacketRelayDriverThreadStop";
        v11 = 1024;
        v12 = 122;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverThread: AVCPacketRelayDriverProc thread(%p) end...", v8, 0x26u);
      }
    }

    pthread_rwlock_wrlock((v1 + 8));
    v5 = *(v1 + 208);
    if (v5)
    {
      do
      {
        v6 = v5[2];
        free(v5);
        v5 = v6;
      }

      while (v6);
    }

    pthread_rwlock_unlock((v1 + 8));
    CheckOutHandleDebug();
    g_DriverHandle = 0xFFFFFFFFLL;
    pthread_mutex_unlock(&g_DriverHandleMutex);
    pthread_rwlock_destroy((v1 + 8));
    free(v1);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverThreadStop_cold_1();
      }
    }

    *__error() = 13;
    pthread_mutex_unlock(&g_DriverHandleMutex);
    return 0xFFFFFFFFLL;
  }
}

uint64_t AVCPacketRelayDriverThreadAddFileDescriptorWithConnection(int a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverThreadAddFileDescriptorWithConnection_cold_2();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040C385777EuLL);
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AVCPacketRelayDriverThreadAddFileDescriptorWithConnection_cold_1();
      }
    }

    CheckOutHandleDebug();
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v6[1] = a2;
  *v6 = a1;
  pthread_rwlock_wrlock((v5 + 8));
  if (*v5 != -1)
  {
    close(*v5);
    *v5 = -1;
  }

  v9 = (v5 + 208);
  v8 = *(v5 + 208);
  if (v8)
  {
    do
    {
      v10 = v8;
      v8 = *(v8 + 16);
    }

    while (v8);
    v9 = (v10 + 16);
  }

  *v9 = v7;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = v11;
      v16 = 2080;
      v17 = "AVCPacketRelayDriverThreadAddFileDescriptorWithConnection";
      v18 = 1024;
      v19 = 171;
      v20 = 1024;
      v21 = a1;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverThread: now driving file descriptor %d", &v14, 0x22u);
    }
  }

  pthread_rwlock_unlock((v5 + 8));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AVCPacketRelayDriverThreadRemoveFileDescriptor(int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_rwlock_wrlock((v2 + 8));
    v4 = (v3 + 208);
    v5 = *(v3 + 208);
    if (v5)
    {
      if (*v5 == a1)
      {
        v6 = 0;
LABEL_7:
        if (v6)
        {
          v4 = v6 + 2;
        }

        *v4 = v5[2];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v9 = *v5;
            v13 = 136315906;
            v14 = v7;
            v15 = 2080;
            v16 = "AVCPacketRelayDriverThreadRemoveFileDescriptor";
            v17 = 1024;
            v18 = 204;
            v19 = 1024;
            v20 = v9;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverThread: stop driving file descriptor %d", &v13, 0x22u);
          }
        }

        free(v5);
        goto LABEL_20;
      }

      while (1)
      {
        v6 = v5;
        v5 = v5[2];
        if (!v5)
        {
          break;
        }

        if (*v5 == a1)
        {
          goto LABEL_7;
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v11;
        v15 = 2080;
        v16 = "AVCPacketRelayDriverThreadRemoveFileDescriptor";
        v17 = 1024;
        v18 = 207;
        v19 = 1024;
        v20 = a1;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriverThread: didn't find file descriptor %d", &v13, 0x22u);
      }
    }

LABEL_20:
    pthread_rwlock_unlock((v3 + 8));
    CheckOutHandleDebug();
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      AVCPacketRelayDriverThreadRemoveFileDescriptor_cold_1();
    }
  }

  *__error() = 13;
  return 0xFFFFFFFFLL;
}

uint64_t VCCaptionTaskInfo_SetHostTime(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

double VCCaptionTaskInfo_HostTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return NAN;
  }
}

void VCTimescaleWSOLAClass::VCTimescaleWSOLAClass(VCTimescaleWSOLAClass *this, unsigned int a2, float a3)
{
  *this = a2;
  *(this + 1) = 1065353216;
  v3 = 25 * a2 / 0x3E8 + 1;
  v4 = v3 & 0xFFFFFE;
  v3 >>= 1;
  *(this + 2) = v4;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 5 * a2 / 0x3E8;
  v5 = (((a2 * 0.333) / 1000.0) + 0.5) & 0xFFFFFFFC;
  if (v5 <= 4)
  {
    v5 = 4;
  }

  v6 = (((a2 * 0.666) / 1000.0) + 0.5);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  *(this + 6) = v5;
  *(this + 7) = v6;
  *(this + 8) = ((a3 * 0.000015259) * 30.0) * (v4 / v6);
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  operator new[]();
}

void VCTimescaleWSOLAClass::~VCTimescaleWSOLAClass(VCTimescaleWSOLAClass *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    VCTimescaleWSOLAShiftBuffer::~VCTimescaleWSOLAShiftBuffer(*(this + 9));
    MEMORY[0x1E128B440](v2, 0x1080C40A085CBA5);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x1E128B420](v3, 0x1000C8052888210);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x1E128B420](v4, 0x1000C8052888210);
  }
}

uint64_t VCTimescaleWSOLAClass::minRequiredInputSamples(VCTimescaleWSOLAClass *this)
{
  v1 = *(this + 1);
  v2 = *(this + 3);
  v3 = *(this + 5);
  v4 = *(this + 24);
  v5 = -((((v2 / v1) - v3) - v2) - v4);
  v6 = ((v5 & ~(v5 >> 31)) + 3) & 0xFFFFFFFC;
  v7 = v6 + *(this + 2);
  v8 = v3 + v2 + ((ceilf(*(this + 4) / v1) + v6) - v4);
  if (v7 <= v8)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t VCTimescaleWSOLAClass::setTimeout(uint64_t this, double a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (vabdd_f64(*(this + 40), a2) > 0.000001)
  {
    v3 = this;
    *(this + 40) = a2;
    v6[0] = 0xAAAAAAAAAAAAAAAALL;
    this = mach_timebase_info(v6);
    v5 = 1.0;
    if (!this)
    {
      LODWORD(v4) = v6[0].denom;
      LODWORD(v5) = v6[0].numer;
      v5 = *&v5 / (v4 * 1000000000.0);
    }

    *(v3 + 56) = (a2 / v5);
    *(v3 + 48) = 0;
  }

  return this;
}

BOOL VCTimescaleWSOLAClass::isTimeoutExpired(VCTimescaleWSOLAClass *this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(this + 7))
  {
    return 0;
  }

  v2 = mach_absolute_time();
  v3 = *(this + 7);
  v4 = v2 - *(this + 8);
  v5 = v4 > v3;
  if (v4 > v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(this + 7);
        v11 = 136316162;
        v12 = v6;
        v13 = 2080;
        v14 = "isTimeoutExpired";
        v15 = 1024;
        v16 = 165;
        v17 = 2048;
        v18 = v4;
        v19 = 2048;
        v20 = v10;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Wsola Timeout: %lld > %lld!!!!!!!!\n", &v11, 0x30u);
      }
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(this + 48) = v8;
  return v5;
}

uint64_t _VCTimescaleWSOLA_SearchMinimumCostPosition(VCTimescaleWSOLAClass *a1, unsigned int *a2, unsigned int *a3, int a4, unsigned int a5, unsigned int *a6, float *a7, float *a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = *a3;
  if (v9 <= a5 && v9 >= v10)
  {
    *a6 = v8;
    return v9;
  }

  v14 = *(a1 + 3);
  v15 = v14 - a4;
  v44 = v14;
  if (v10 > a5)
  {
    v9 = *a3;
    goto LABEL_31;
  }

  v19 = *(a1 + 8);
  v20 = 4 * *(a1 + 7);
  v46 = -v14;
  v21 = 1.0e32;
  v9 = *a3;
  v47 = *(a1 + 2);
  while (1)
  {
    v22 = 0uLL;
    v23 = v8 - ((v15 + v10) & ~((v15 + v10) >> 31));
    if (v23)
    {
      for (i = 0; i < v23; i += v20)
      {
        v25 = vsubq_f32(*&a7[i], *&a8[v46 + v10 + i]);
        v22 = vmlaq_f32(v22, v25, v25);
      }
    }

    v26 = v22.f32[3] + (v22.f32[2] + vaddv_f32(*v22.f32));
    if (v26 < v21)
    {
      break;
    }

    v30 = v10;
LABEL_22:
    v10 = (v30 + *(a1 + 6));
    *a3 = v10;
    if (v10 > a5)
    {
      goto LABEL_31;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    v29 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v49 = v27;
        v50 = 2080;
        v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
        v52 = 1024;
        v53 = 217;
        v54 = 2048;
        *v55 = v26;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %.3f ", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v49 = v27;
      v50 = 2080;
      v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
      v52 = 1024;
      v53 = 217;
      v54 = 2048;
      *v55 = v26;
      _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %.3f ", buf, 0x26u);
    }
  }

  if (v26 >= v19)
  {
    v30 = *a3;
    v21 = v26;
    v9 = v10;
    v8 = v47;
    goto LABEL_22;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    v33 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v49 = v31;
        v50 = 2080;
        v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
        v52 = 1024;
        v53 = 219;
        v54 = 2048;
        *v55 = v19;
        *&v55[8] = 1024;
        v56[0] = a5 - v10;
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d <%.3f Search Stop[%d]", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v49 = v31;
      v50 = 2080;
      v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
      v52 = 1024;
      v53 = 219;
      v54 = 2048;
      *v55 = v19;
      *&v55[8] = 1024;
      v56[0] = a5 - v10;
      _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, " [%s] %s:%d <%.3f Search Stop[%d]", buf, 0x2Cu);
    }
  }

  v9 = v10;
  v8 = v47;
LABEL_31:
  *a6 = v8 - ((v15 + v9) & ~((v15 + v9) >> 31));
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    v36 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v9 - v44 + *a6;
        *buf = 136316418;
        v49 = v34;
        v50 = 2080;
        v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
        v52 = 1024;
        v53 = 229;
        v54 = 1024;
        *v55 = v9;
        *&v55[4] = 1024;
        *&v55[6] = v9 - v44;
        LOWORD(v56[0]) = 1024;
        *(v56 + 2) = v37;
        _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found match at position=%d star=%d candidate=%d", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v43 = v9 - v44 + *a6;
      *buf = 136316418;
      v49 = v34;
      v50 = 2080;
      v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
      v52 = 1024;
      v53 = 229;
      v54 = 1024;
      *v55 = v9;
      *&v55[4] = 1024;
      *&v55[6] = v9 - v44;
      LOWORD(v56[0]) = 1024;
      *(v56 + 2) = v43;
      _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Found match at position=%d star=%d candidate=%d", buf, 0x2Eu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    v40 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *a6;
        *buf = 136315906;
        v49 = v38;
        v50 = 2080;
        v51 = "_VCTimescaleWSOLA_SearchMinimumCostPosition";
        v52 = 1024;
        v53 = 230;
        v54 = 1024;
        *v55 = v41;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Candidate length=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      _VCTimescaleWSOLA_SearchMinimumCostPosition();
    }
  }

  return v9;
}

BOOL _VCTimescaleWSOLA_PerformAdaptation(VCTimescaleWSOLAClass *a1, float *a2, unsigned int a3, float *a4, unsigned int a5)
{
  v135 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v114 = *(a1 + 11);
  v11 = *(a1 + 24);
  v12 = v11;
  v13 = -((((v7 / v6) - v10) - v7) - v11);
  v14 = ((v13 & ~(v13 >> 31)) + 3) & 0xFFFFFFFC;
  v15 = v14 + v7;
  v118 = v14 + v7;
  v16 = v9 / v6;
  v17 = (ceilf(v16) + v14) - v11;
  v18 = v17;
  if (v14 + v8 <= a3 && v10 + v7 + v18 <= a3)
  {
    v111 = v9;
    v107 = v10;
    v108 = v7;
    v26 = *(a1 + 10);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v112 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v120 = v112;
          v121 = 2080;
          v122 = "_VCTimescaleWSOLA_PerformAdaptation";
          v123 = 1024;
          v124 = 296;
          v125 = 1024;
          v126 = a3;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nin:%d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        _VCTimescaleWSOLA_PerformAdaptation();
      }
    }

    v34 = v111;
    v35 = v8 - v111;
    if (v8 != v111)
    {
      v36 = (v8 - v111);
      v37 = v108;
      v38 = v14;
      v39 = v26;
      do
      {
        *v39++ = v114[v37++] * a2[v38++];
        --v36;
      }

      while (v36);
    }

    if (v35 < v8)
    {
      bzero(&v26[v35], 4 * (v8 + ~v35) + 4);
      v34 = v111;
    }

    v40 = a3;
    if (v15 <= a3)
    {
      v43 = v108;
      v113 = v118;
      v44 = v118 + v108;
      if (v118 + v108 <= a3)
      {
        v109 = 0;
        v45 = 0;
        v42 = v14;
        v46 = v18;
        v100 = (v8 - v111);
        while (1)
        {
          v47 = v8;
          v48 = v14;
          v49 = v46 + v107;
          v50 = v45 + v34;
          if (v46 + v107 + v43 > v40 || v50 >= a5)
          {
            v41 = v45;
            LODWORD(v14) = v48;
            goto LABEL_89;
          }

          v101 = v44;
          v52 = v11;
          v53 = v42;
          v105 = v45;
          v110 = v46;
          if (VCTimescaleWSOLAClass::isTimeoutExpired(a1))
          {
            break;
          }

          v117 = (v110 - v107) & ~((v110 - v107) >> 31) & 0x7FFFFFFC;
          if (v49 >= a3)
          {
            v54 = a3;
          }

          else
          {
            v54 = v49;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v55 = VRTraceErrorLogLevelToCSTR();
            v56 = *MEMORY[0x1E6986650];
            v57 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v120 = v55;
                v121 = 2080;
                v122 = "_VCTimescaleWSOLA_PerformAdaptation";
                v123 = 1024;
                v124 = 323;
                v125 = 1024;
                v126 = v50;
                _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ------- Wsola Search:%d ---------", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v120 = v55;
              v121 = 2080;
              v122 = "_VCTimescaleWSOLA_PerformAdaptation";
              v123 = 1024;
              v124 = 323;
              v125 = 1024;
              v126 = v50;
              _os_log_debug_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ------- Wsola Search:%d ---------", buf, 0x22u);
            }
          }

          v14 = v48;
          v8 = v47;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x1E6986650];
            v60 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                v120 = v58;
                v121 = 2080;
                v122 = "_VCTimescaleWSOLA_PerformAdaptation";
                v123 = 1024;
                v124 = 324;
                v125 = 1024;
                v126 = v113;
                v127 = 1024;
                v128 = v113 - v108;
                v129 = 1024;
                v130 = v101;
                _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reference window centered at %d  [%d %d]", buf, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316418;
              v120 = v58;
              v121 = 2080;
              v122 = "_VCTimescaleWSOLA_PerformAdaptation";
              v123 = 1024;
              v124 = 324;
              v125 = 1024;
              v126 = v113;
              v127 = 1024;
              v128 = v113 - v108;
              v129 = 1024;
              v130 = v101;
              _os_log_debug_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Reference window centered at %d  [%d %d]", buf, 0x2Eu);
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v61 = VRTraceErrorLogLevelToCSTR();
            v62 = *MEMORY[0x1E6986650];
            v63 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                v120 = v61;
                v121 = 2080;
                v122 = "_VCTimescaleWSOLA_PerformAdaptation";
                v123 = 1024;
                v124 = 325;
                v125 = 1024;
                v126 = v110;
                v127 = 1024;
                v128 = (v110 - v107) & ~((v110 - v107) >> 31) & 0x7FFFFFFC;
                v129 = 1024;
                v130 = v54;
                _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Searching around %d [%d %d]", buf, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316418;
              v120 = v61;
              v121 = 2080;
              v122 = "_VCTimescaleWSOLA_PerformAdaptation";
              v123 = 1024;
              v124 = 325;
              v125 = 1024;
              v126 = v110;
              v127 = 1024;
              v128 = (v110 - v107) & ~((v110 - v107) >> 31) & 0x7FFFFFFC;
              v129 = 1024;
              v130 = v54;
              _os_log_debug_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Searching around %d [%d %d]", buf, 0x2Eu);
            }
          }

          v116 = -1431655766;
          v64 = _VCTimescaleWSOLA_SearchMinimumCostPosition(a1, &v118, &v117, a3, v54, &v116, &a2[v113 - v108], a2);
          v65 = v114;
          if (v8)
          {
            v66 = v64 - v108;
            v67 = v8;
            v68 = v26;
            do
            {
              v69 = *v65++;
              *v68 = *v68 + (v69 * a2[v66]);
              ++v68;
              ++v66;
              --v67;
            }

            while (v67);
          }

          v104 = v64;
          v113 = v64 + v111;
          v118 = v64 + v111;
          if (v111 >= v116)
          {
            v70 = v116;
          }

          else
          {
            v70 = v111;
          }

          if (v70)
          {
            v71 = v70;
            v72 = v26;
            v73 = v109;
            do
            {
              v74 = *v72++;
              a4[v73++] = v74;
              --v71;
            }

            while (v71);
          }

          v75 = v70 + v105;
          if (VRTraceGetErrorLogLevelForModule() > 7)
          {
            v102 = VRTraceErrorLogLevelToCSTR();
            v76 = *MEMORY[0x1E6986650];
            v77 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v120 = v102;
                v121 = 2080;
                v122 = "_VCTimescaleWSOLA_PerformAdaptation";
                v123 = 1024;
                v124 = 349;
                v125 = 1024;
                v126 = v105;
                v127 = 1024;
                v128 = v70 + v105;
                _os_log_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Wrote output [%d %d]", buf, 0x28u);
              }
            }

            else if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v120 = v102;
              v121 = 2080;
              v122 = "_VCTimescaleWSOLA_PerformAdaptation";
              v123 = 1024;
              v124 = 349;
              v125 = 1024;
              v126 = v105;
              v127 = 1024;
              v128 = v70 + v105;
              _os_log_debug_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Wrote output [%d %d]", buf, 0x28u);
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v106 = VRTraceErrorLogLevelToCSTR();
            v78 = *MEMORY[0x1E6986650];
            v79 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                v120 = v106;
                v121 = 2080;
                v122 = "_VCTimescaleWSOLA_PerformAdaptation";
                v123 = 1024;
                v124 = 350;
                v125 = 1024;
                v126 = v104;
                v127 = 1024;
                v128 = v113;
                v129 = 1024;
                v130 = a3;
                _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d lastIdx:%d refIdx:%d Nin:%d", buf, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316418;
              v120 = v106;
              v121 = 2080;
              v122 = "_VCTimescaleWSOLA_PerformAdaptation";
              v123 = 1024;
              v124 = 350;
              v125 = 1024;
              v126 = v104;
              v127 = 1024;
              v128 = v113;
              v129 = 1024;
              v130 = a3;
              _os_log_debug_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEBUG, " [%s] %s:%d lastIdx:%d refIdx:%d Nin:%d", buf, 0x2Eu);
            }
          }

          v80 = v100;
          v34 = v111;
          v81 = v111;
          v82 = v26;
          if (v8 != v111)
          {
            do
            {
              *v82++ = v26[v81++];
              --v80;
            }

            while (v80);
          }

          v83 = v111;
          v84 = v100;
          v40 = a3;
          v43 = v108;
          v41 = v75;
          v42 = v104;
          if (v111)
          {
            do
            {
              v26[v84++] = 0.0;
              --v83;
            }

            while (v83);
          }

          v11 = v104 - v110;
          if (v104 + v108 <= a3)
          {
            v46 = v110 + (v16 + 0.5);
            v109 += v70;
            v44 = v113 + v108;
            v45 = v75;
            if (v113 + v108 <= a3)
            {
              continue;
            }
          }

          goto LABEL_89;
        }

        v41 = v105;
        LODWORD(v14) = v48;
        v42 = v53;
        v11 = v52;
      }

      else
      {
        v41 = 0;
        v42 = v14;
      }

LABEL_89:
      v12 = v11;
    }

    else
    {
      v41 = 0;
      v42 = v14;
    }

    v85 = v41;
    *(a1 + 25) = v41;
    v86 = (a1 + 100);
    *(a1 + 24) = v11;
    v87 = (((*(a1 + 3) / v6) - *(a1 + 5)) - *(a1 + 3)) - v12;
    v88 = ((-v87 & ~(-v87 >> 31)) + 3) & 0xFFFFFFFC;
    *(a1 + 26) = v14;
    *(a1 + 27) = v88;
    *(a1 + 28) = v42 - v88;
    *(a1 + 29) = v42;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v89 = VRTraceErrorLogLevelToCSTR();
      v90 = *MEMORY[0x1E6986650];
      v91 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = *(a1 + 27);
          v93 = *(a1 + 28);
          *buf = 136316930;
          v120 = v89;
          v121 = 2080;
          v122 = "_VCTimescaleWSOLA_PerformAdaptation";
          v123 = 1024;
          v124 = 369;
          v125 = 1024;
          v126 = v11;
          v127 = 1024;
          v128 = v14;
          v129 = 1024;
          v130 = v92;
          v131 = 1024;
          v132 = v93;
          v133 = 1024;
          v134 = v85;
          _os_log_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Wsola search stopped:%d off:%d offNext:%d inStep:%d Nwrit:%d", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v98 = *(a1 + 27);
        v99 = *(a1 + 28);
        *buf = 136316930;
        v120 = v89;
        v121 = 2080;
        v122 = "_VCTimescaleWSOLA_PerformAdaptation";
        v123 = 1024;
        v124 = 369;
        v125 = 1024;
        v126 = v11;
        v127 = 1024;
        v128 = v14;
        v129 = 1024;
        v130 = v98;
        v131 = 1024;
        v132 = v99;
        v133 = 1024;
        v134 = v85;
        _os_log_debug_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Wsola search stopped:%d off:%d offNext:%d inStep:%d Nwrit:%d", buf, 0x3Au);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v94 = VRTraceErrorLogLevelToCSTR();
      v95 = *MEMORY[0x1E6986650];
      v96 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        result = os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v97 = *v86;
        *buf = 136315906;
        v120 = v94;
        v121 = 2080;
        v122 = "_VCTimescaleWSOLA_PerformAdaptation";
        v123 = 1024;
        v124 = 370;
        v125 = 1024;
        v126 = v97;
        _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Wsola output size: %d =========", buf, 0x22u);
      }

      else
      {
        result = os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        _VCTimescaleWSOLA_PerformAdaptation();
      }
    }

    return 0;
  }

  v19 = v7;
  v20 = v17;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v23 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v120 = v21;
        v121 = 2080;
        v122 = "_VCTimescaleWSOLA_PerformAdaptation";
        v123 = 1024;
        v124 = 285;
        v125 = 1024;
        v126 = a3;
        v127 = 1024;
        v128 = v14 + v8;
        v129 = 1024;
        v130 = v10 + v19 + v20;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nin:%d < %d or %d", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v120 = v21;
      v121 = 2080;
      v122 = "_VCTimescaleWSOLA_PerformAdaptation";
      v123 = 1024;
      v124 = 285;
      v125 = 1024;
      v126 = a3;
      v127 = 1024;
      v128 = v14 + v8;
      v129 = 1024;
      v130 = v10 + v19 + v20;
      _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Nin:%d < %d or %d", buf, 0x2Eu);
    }
  }

  v29 = v8;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    v32 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v120 = v30;
        v121 = 2080;
        v122 = "_VCTimescaleWSOLA_PerformAdaptation";
        v123 = 1024;
        v124 = 286;
        v125 = 1024;
        v126 = v14;
        v127 = 1024;
        v128 = v29;
        v129 = 1024;
        v130 = v20;
        v131 = 1024;
        v132 = v10;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d offset:%d Nwin:%d searchCenter:%d delta:%d", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v120 = v30;
      v121 = 2080;
      v122 = "_VCTimescaleWSOLA_PerformAdaptation";
      v123 = 1024;
      v124 = 286;
      v125 = 1024;
      v126 = v14;
      v127 = 1024;
      v128 = v29;
      v129 = 1024;
      v130 = v20;
      v131 = 1024;
      v132 = v10;
      _os_log_debug_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEBUG, " [%s] %s:%d offset:%d Nwin:%d searchCenter:%d delta:%d", buf, 0x34u);
    }
  }

  *(a1 + 25) = 0;
  result = 1;
  *(a1 + 14) = 0;
  return result;
}

uint64_t VCTimescaleWSOLA_Initialize(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1 + 0x2000;
  VCTimescaleWSOLA_Finalize(a1);
  v9 = a2 * 0.06;
  *(v8 + 3392) = v9;
  *(v8 + 3376) = 2 * v9;
  v10 = malloc_type_realloc(*(a1 + 11576), 8 * (v9 & 0x7FFFLL), 0x100004052888210uLL);
  *(a1 + 11576) = v10;
  if (v10)
  {
    if (*(v8 + 3392) >= 0xB41u && VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCTimescaleWSOLA_Initialize_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        VCTimescaleWSOLA_Initialize_cold_1();
      }
    }

    *(v8 + 3394) = a5;
    *(a1 + 11608) = VCDefaults_GetDoubleValueForKey(@"wsolaStartCompressionThreshold", 1.0);
    *(a1 + 11624) = VCDefaults_GetDoubleValueForKey(@"wsolaCompressionHysteresis", 0.300000012);
    *(a1 + 11616) = VCDefaults_GetDoubleValueForKey(@"wsolaStopCompressionThreshold", 0.1);
    operator new();
  }

  VCTimescaleWSOLA_Initialize_cold_6();
  VCTimescaleWSOLA_Finalize(a1);
  return 2147483650;
}

void VCTimescaleWSOLA_Finalize(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    VCTimescaleWSOLAClass::~VCTimescaleWSOLAClass(*a1);
    MEMORY[0x1E128B440](v2, 0x10A0C409407E75BLL);
    *a1 = 0;
  }

  v3 = *(a1 + 11592);
  if (v3)
  {
    AudioConverterDispose(v3);
    *(a1 + 11592) = 0;
  }

  v4 = *(a1 + 11600);
  if (v4)
  {
    AudioConverterDispose(v4);
    *(a1 + 11600) = 0;
  }

  v5 = *(a1 + 11576);
  if (v5)
  {
    free(v5);
    *(a1 + 11576) = 0;
  }
}

uint64_t VCTimescaleWSOLA_Adapt(uint64_t *a1, float *a2, unsigned int a3, float *a4, unsigned int *a5, uint64_t a6, unsigned int a7, float a8, double a9)
{
  v43 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  *(v17 + 64) = mach_absolute_time();
  VCTimescaleWSOLAClass::setTimeout(v17, a9);
  if (*(v17 + 4) == a8)
  {
    v20 = *(v17 + 112);
  }

  else
  {
    *(v17 + 4) = a8;
    v18 = (((*(v17 + 12) / a8) - *(v17 + 20)) - *(v17 + 12)) - *(v17 + 96);
    v19 = ((-v18 & ~(-v18 >> 31)) + 3) & 0xFFFFFFFC;
    v20 = (*(v17 + 116) - v19) & ~((*(v17 + 116) - v19) >> 31);
    *(v17 + 108) = v19;
    *(v17 + 112) = v20;
  }

  VCTimescaleWSOLAShiftBuffer::removeSamples(*(v17 + 72), v20);
  v21 = *(v17 + 72);
  if (a7 && !v21[3])
  {
    v22 = *(v17 + 108);
    if (a7 < v22)
    {
      v23 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    VCTimescaleWSOLAShiftBuffer::appendSamples(v21, (a6 + 4 * (a7 - v22)), v22);
    v21 = *(v17 + 72);
  }

  v23 = 1;
  if (a3)
  {
LABEL_11:
    VCTimescaleWSOLAShiftBuffer::appendSamples(v21, a2, a3);
    v21 = *(v17 + 72);
  }

LABEL_12:
  if (*a5 < (*(v17 + 4) * (v21[3] - *(v17 + 108))) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCTimescaleWSOLA_Adapt_cold_1();
    }
  }

  v24 = VCTimescaleWSOLAShiftBuffer::count(*(v17 + 72));
  if (v24 >= VCTimescaleWSOLAClass::minRequiredInputSamples(v17))
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v17 + 72);
  v27 = *v26;
  v28 = *(v26 + 12);
  if (v25)
  {
    v29 = _VCTimescaleWSOLA_PerformAdaptation(v17, v27, v28, a4, *a5);
    *a5 = *(v17 + 100);
    goto LABEL_28;
  }

  memcpy(a4, v27, 4 * v28);
  v30 = *(v17 + 72);
  *a5 = *(v30 + 12);
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  VCTimescaleWSOLAShiftBuffer::clear(v30);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_25;
  }

  v31 = VRTraceErrorLogLevelToCSTR();
  v32 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v33 = *a5;
      v35 = 136315906;
      v36 = v31;
      v37 = 2080;
      v38 = "VCTimescaleWSOLA_Adapt";
      v39 = 1024;
      v40 = 550;
      v41 = 1024;
      v42 = v33;
      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Copied Output: %d", &v35, 0x22u);
    }

LABEL_25:
    v29 = 2;
    goto LABEL_28;
  }

  v29 = 2;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEBUG))
  {
    VCTimescaleWSOLA_Adapt_cold_2();
  }

LABEL_28:
  if (*(v17 + 48))
  {
    return 3;
  }

  else
  {
    return v29;
  }
}