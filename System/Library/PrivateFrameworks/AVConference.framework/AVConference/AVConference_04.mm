unint64_t JitterQueue_Pop(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = result + 1272;
    v4 = *(result + 1240);
    if (v4)
    {
      *(v4 + 1248) = 0;
      *(a1 + 8) = v4;
      if (result >= v3)
      {
        goto LABEL_16;
      }

      v5 = *(v4 + 12);
      v6 = *(result + 12);
      v7 = *(result + 1172);
      v8 = *(a1 + 16);
      v9 = *(a1 + 20);
      v10 = *(a1 + 56) - 1;
      *(a1 + 56) = v10;
      if (v5 - v6 - v7 > v8 || v5 == v6)
      {
        v12 = v7;
      }

      else
      {
        v12 = v5 - v6;
      }

      v13 = v9 - v12;
      *(a1 + 20) = v13;
      if (v13 >= 1)
      {
        v14 = *(result + 1172);
        if (v14 >= 1)
        {
          *(a1 + 52) = (v13 - v10 * v14) / v14;
        }
      }
    }

    else
    {
      *(a1 + 20) = 0;
      *(a1 + 52) = 0;
      *(a1 + 56) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if (result < v3)
    {
      return result;
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

unint64_t JitterQueue_Purge(unint64_t result, uint64_t (*a2)(void))
{
  if (a2)
  {
    v2 = result;
    for (result = *(result + 8); result; result = *(v2 + 8))
    {
      result = a2();
      if (!result)
      {
        break;
      }

      result = JitterQueue_Pop(v2);
      if (result >= result + 1272)
      {
        __break(0x5519u);
        return result;
      }

      (*(result + 1200))(*(result + 1208));
    }
  }

  return result;
}

uint64_t JitterQueue_CheckQSizeBeforePop(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 1240);
  if (!v2)
  {
    return 0;
  }

  if (v1 >= v1 + 1272)
  {
    __break(0x5519u);
  }

  else
  {
    v3 = *(v2 + 12);
    v4 = *(v1 + 12);
    v5 = *(v1 + 1172);
    v6 = v3 - v4 - v5;
    v7 = v3 - v4;
    v8 = *(result + 20);
    if (v7)
    {
      v9 = v6 > *(result + 16);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return (v8 - v5);
    }

    else
    {
      return (v8 - v7);
    }
  }

  return result;
}

uint64_t JitterQueue_GetSizeOfNextFrame(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 1172);
  }

  else
  {
    return 0;
  }
}

BOOL JitterQueue_GetOldestArrivalTimeStamp(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *a2 = *(v2 + 1192);
  }

  return v2 != 0;
}

BOOL JitterQueue_HasDTXPacket(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = *(v1 + 1176);
    result = v2 != 0;
    if (v2)
    {
      break;
    }

    v1 = *(v1 + 1240);
  }

  while (v1);
  return result;
}

uint64_t JitterQueue_QueueEmptyOrAllDTX(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      do
      {
        v1 = *(v1 + 1240);
      }

      while (v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void JitterQueue_DiscardExcess(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    while (1)
    {
      v5 = *(v3 + 1172);
      v6 = *(v3 + 12);
      v7 = *(a1 + 8);
      if (v6 + v5 - *(v7 + 12) <= (*(v7 + 1172) + a2))
      {
        break;
      }

      v8 = *(v7 + 1240);
      v9 = (v8 + 1248);
      if (!v8)
      {
        v9 = a1;
      }

      *v9 = 0;
      v5 = v7 + 1272;
      *(a1 + 8) = v8;
      if (v7 >= v7 + 1272)
      {
        __break(0x5519u);
        goto LABEL_23;
      }

      (*(v7 + 1200))(*(v7 + 1208));
      v3 = *a1;
      if (!*a1)
      {
        goto LABEL_7;
      }
    }

    v10 = *(v3 + 1248);
    if (v10)
    {
      while (v3 < v3 + 1272)
      {
        v3 = v10;
        v11 = *(v10 + 12);
        if ((v6 - v11 - *(v10 + 1172)) > *(a1 + 16) || v6 == v11)
        {
          v13 = *(v10 + 1172);
        }

        else
        {
          v13 = v6 - v11;
        }

        v5 += v13;
        v10 = *(v10 + 1248);
        v6 = v11;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

LABEL_23:
      *(a1 + 20) = v5;
      __break(0x5519u);
    }

LABEL_17:
    *(a1 + 20) = v5;
  }

  else
  {
LABEL_7:
    *(a1 + 20) = 0;
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 20);
      v17 = 136315906;
      v18 = v14;
      v19 = 2080;
      v20 = "JitterQueue_DiscardExcess";
      v21 = 1024;
      v22 = 408;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Discard excess performed. New size=%d", &v17, 0x22u);
    }
  }
}

_DWORD *JitterQueue_GetUnderflowRateForInterval(_DWORD *result)
{
  v1 = result[10];
  result[15] = result[12];
  result[16] = v1;
  return result;
}

double JitterQueue_GetUnderflowRate(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  *&result = *(a1 + 40) / v1;
  return result;
}

_DWORD *JitterQueue_ResetUnderflowRate(_DWORD *result)
{
  if (result)
  {
    result[10] = 0;
    result[12] = 0;
    result[15] = 0;
    result[16] = 0;
  }

  return result;
}

BOOL JitterQueue_GetNextFrameTimestamp(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *a2 = *(v2 + 12);
  }

  return v2 != 0;
}

uint64_t JitterQueue_GetLastFramePriority(uint64_t result, _BYTE *a2, BOOL *a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      if (a2)
      {
        *a2 = *(v3 + 1232);
      }

      if (a3)
      {
        *a3 = *(*(result + 8) + 1240) == 0;
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

uint64_t JitterQueue_GetTimestampDeltaToNextDTXPacket(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(v4 + 12);
      while (!*(v4 + 1176))
      {
        v4 = *(v4 + 1240);
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      LODWORD(v4) = *(v4 + 12) - v5;
      result = 1;
    }

    else
    {
LABEL_7:
      result = 0;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t VCNWConnectionMonitor_Create(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 && *a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    v2 = VTP_NWConnectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_Create_block_invoke;
    block[3] = &unk_1E85F5178;
    block[4] = &v6;
    block[5] = a1;
    dispatch_sync(v2, block);
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCNWConnectionMonitor_Create_cold_1();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t VCNWConnectionMonitor_CreateWithInterfaceName(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v17 = 0;
    v9 = VTP_NWConnectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke;
    block[3] = &unk_1E85F51A0;
    v15 = a3;
    block[4] = a5;
    block[5] = buf;
    block[6] = a1;
    block[7] = a4;
    dispatch_sync(v9, block);
    v10 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "VCNWConnectionMonitor_CreateWithInterfaceName";
        *&buf[22] = 1024;
        LODWORD(v17) = 174;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Monitor cannot be created with an invalid interfaceName", buf, 0x1Cu);
      }
    }

    return 0;
  }

  return v10;
}

void VCNWConnectionMonitor_Destroy(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v10 = v3;
        v11 = 2080;
        v12 = "VCNWConnectionMonitor_Destroy";
        v13 = 1024;
        v14 = 205;
        v15 = 2048;
        v16 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Destroying monitor=%p", buf, 0x26u);
      }
    }

    v5 = VTP_NWConnectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_Destroy_block_invoke;
    block[3] = &__block_descriptor_tmp_3_0;
    block[4] = a1;
    dispatch_sync(v5, block);
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "VCNWConnectionMonitor_Destroy";
      v13 = 1024;
      v14 = 210;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor is null!", buf, 0x1Cu);
    }
  }
}

void _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification(uint64_t a1, void (*a2)(uint64_t, void *), __int128 *a3)
{
  v6 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v6);
  if (a1 && a2)
  {
    v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x10000405DD82A02uLL);
    if (v7)
    {
      v8 = v7;
      VCNWConnectionMonitorUtils_GetNotificationFromAdvisory(a3, v7);
      a2(a1, v8);

      free(v8);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification_cold_1();
      }
    }
  }
}

void VCNWConnectionMonitor_SetNotificationHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    v8 = VTP_NWConnectionQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __VCNWConnectionMonitor_SetNotificationHandler_block_invoke;
    v12[3] = &__block_descriptor_tmp_4;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    dispatch_async(v8, v12);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136316674;
      v14 = v9;
      v15 = 2080;
      v16 = "VCNWConnectionMonitor_SetNotificationHandler";
      v17 = 1024;
      v18 = 270;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v11;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p, monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void VCNWConnectionMonitor_SetPacketEventHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    v8 = VTP_NWConnectionQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __VCNWConnectionMonitor_SetPacketEventHandler_block_invoke;
    v12[3] = &__block_descriptor_tmp_5;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    dispatch_async(v8, v12);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136316674;
      v14 = v9;
      v15 = 2080;
      v16 = "VCNWConnectionMonitor_SetPacketEventHandler";
      v17 = 1024;
      v18 = 314;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v11;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void _VCNWConnectionMonitor_AddNotification(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    v2 = *a2;
    *(a1 + 24048) = a2[1];
    *(a1 + 24032) = v2;
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    *(a1 + 24112) = a2[5];
    *(a1 + 24096) = v5;
    *(a1 + 24080) = v4;
    *(a1 + 24064) = v3;
    v6 = (a1 + 96 * *(a1 + 26));
    v7 = a2[1];
    v6[2] = *a2;
    v6[3] = v7;
    v9 = a2[4];
    v8 = a2[5];
    v10 = a2[3];
    v6[4] = a2[2];
    v6[5] = v10;
    v6[6] = v9;
    v6[7] = v8;
    *(a1 + 26) = (*(a1 + 26) + 1) % 250;
    v11 = *(a1 + 24);
    if (v11 < 249)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 250;
    }

    *(a1 + 24) = v12;
  }

  else
  {
    _VCNWConnectionMonitor_AddNotification_cold_1();
  }
}

void _VCNWConnectionMonitor_LogSignalsAndMetrics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 2);
  v9 = *(a1 + 16);
  v10 = *(a2 + 8);
  v11 = *(a2 + 72);
  if (v8 == 2)
  {
    v12 = "%llu\t%u\t%u\t%llu\t%llu\t%u\t%u\t%u\t%llu\t%u\t%u\t%u\n";
  }

  else
  {
    v8 = *(a2 + 73);
    a5 = *(a2 + 74);
    a6 = *(a2 + 76);
    a7 = *(a2 + 78);
    a8 = *(a2 + 79);
    v12 = "%llu\t%u\t%u\t%llu\t%llu\t%u\t%u\t%u\t%llu\t%u\t%d\t%u\t%u\t%u\t%u\t0x%x\t%u\t%u\t%u\t%u\t%u\t%2.4f\t%u\t%u\t%u\t%u\t%u\t%u\t%u\n";
  }

  VRLogfilePrintWithTimestamp(v9, v12, v11, v8, a5, a6, a7, a8, v10);
}

double _VCNWConnectionMonitor_ComputeMetrics(uint64_t a1, uint64_t a2, double result)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) != 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 26) + 249;
    v10 = 0uLL;
    v11 = 0;
    v12 = 250;
    while (1)
    {
      v13 = a1 + 32 + 96 * (v9 - 250 * (((274877907 * v9) >> 36) + ((274877907 * v9) >> 63)));
      v14 = *(v13 + 8);
      if (!v5)
      {
        v5 = *(v13 + 8);
      }

      v15 = v5 - v14;
      if (v5 - v14 > *(a1 + 24164))
      {
        break;
      }

      v16.i32[0] = *(v13 + 59);
      v16.i32[1] = *(v13 + 60);
      v17 = vuzp1_s16(v16, v11);
      v18 = vzip1_s16(v17, v17);
      v19 = vcvtq_f32_u32(vmovl_u16(vtrn2_s16(vrev32_s16(vshr_n_u16(v18, 4uLL)), (*&v18 & 0xFF0FFF0FFF0FFF0FLL))));
      v10 = vaddq_f32(v10, v19);
      v19.i8[0] = *(v13 + 61);
      *v11.i32 = *v11.i32 + v19.u32[0];
      v20 = *(v13 + 53);
      v21 = *(v13 + 54);
      v23 = v8 != 1 && v21 != 0xFFFF;
      v24 = v23 && v20 == 1;
      v7 += v24;
      if (v24)
      {
        v25 = v21;
      }

      else
      {
        v25 = 0;
      }

      v6 += v25;
      --v9;
      --v4;
      v8 = v20;
      if (v4 == -250)
      {
        goto LABEL_19;
      }
    }

    if (v4)
    {
      v12 = -v4;
LABEL_19:
      v26 = vdupq_lane_s64(COERCE__INT64(v12), 0);
      v27 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v10.f32), v26)), vdivq_f64(vcvt_hight_f64_f32(v10), v26));
      v28 = *v11.i32 / v12;
      goto LABEL_20;
    }

    v27 = 0uLL;
    v28 = 0.0;
LABEL_20:
    *(a2 + 140) = v27;
    *(a2 + 156) = v28;
    v29 = 0.0;
    if (v5 != v14)
    {
      v29 = v6 / v15;
    }

    *(a2 + 88) = v29;
    v30 = v7;
    v32 = v7 > 2u || v6 >> 3 > 0x270;
    *(a2 + 92) = v32;
    v33 = *(a1 + 24152) + v6;
    *(a1 + 24152) = v33;
    *(a2 + 128) = v33;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      v36 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a2 + 88);
          v38 = *(a2 + 92);
          v41 = 136316930;
          v42 = v34;
          v43 = 2080;
          v44 = "_VCNWConnectionMonitor_ComputeMetrics";
          v45 = 1024;
          v46 = 505;
          v47 = 2048;
          v48 = v15;
          v49 = 2048;
          v50 = v6;
          v51 = 2048;
          v52 = v37;
          v53 = 1024;
          v54 = v30;
          v55 = 1024;
          v56 = v38;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Off Channel Metrics currentTimeDelta=%llu accumulatedOffChannelTime=%llu statistics->offChannelTimeRatio=%4.4f offChannelSwitchCount=%u statistics->detectedFrequentOffChannelActivity=%d", &v41, 0x46u);
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a2 + 88);
        v40 = *(a2 + 92);
        v41 = 136316930;
        v42 = v34;
        v43 = 2080;
        v44 = "_VCNWConnectionMonitor_ComputeMetrics";
        v45 = 1024;
        v46 = 505;
        v47 = 2048;
        v48 = v15;
        v49 = 2048;
        v50 = v6;
        v51 = 2048;
        v52 = v39;
        v53 = 1024;
        v54 = v30;
        v55 = 1024;
        v56 = v40;
        _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Off Channel Metrics currentTimeDelta=%llu accumulatedOffChannelTime=%llu statistics->offChannelTimeRatio=%4.4f offChannelSwitchCount=%u statistics->detectedFrequentOffChannelActivity=%d", &v41, 0x46u);
      }
    }
  }

  return result;
}

void _VCNWConnectionMonitor_ProcessNotification(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
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
          v10 = *(a2 + 8);
          *v31 = 136315906;
          *&v31[4] = v7;
          *&v31[12] = 2080;
          *&v31[14] = "_VCNWConnectionMonitor_ProcessNotification";
          *&v31[22] = 1024;
          *&v31[24] = 514;
          *&v31[28] = 2048;
          *&v31[30] = v10;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  timestamp%llu", v31, 0x26u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        _VCNWConnectionMonitor_ProcessNotification_cold_1();
      }
    }

    if (*a2 == 2)
    {
      v11 = *(a2 + 48);
      *&v31[32] = *(a2 + 32);
      v32 = v11;
      v12 = *(a2 + 80);
      v33 = *(a2 + 64);
      v34 = v12;
      v13 = *(a2 + 16);
      *v31 = *a2;
      *&v31[16] = v13;
      _VCNWConnectionMonitor_AddNotification(a1, v31);
      *a3 = *(a1 + 24032);
      v14 = *(a1 + 24034);
      *(a3 + 2) = v14;
      *(a3 + 8) = *(a1 + 24040);
      *(a3 + 24) = *(a1 + 24056);
      *&v15 = *(a1 + 24072);
      *(a3 + 32) = v15;
      *(a3 + 40) = *(a1 + 24080);
      *(a3 + 48) = *(a1 + 24064);
      *(a3 + 56) = *(a1 + 24036);
      if (v14 == 1)
      {
        *(a3 + 72) = *(a1 + 24084);
        v16 = *(a1 + 24088);
        if (v16 == 0xFFFF)
        {
          v16 = 0;
        }

        *(a3 + 76) = v16;
        *(a3 + 78) = *(a1 + 24090);
        v17 = *(a1 + 24091);
        *(a3 + 81) = v17 & 0xF;
        *(a3 + 80) = v17 >> 4;
        v18 = *(a1 + 24092);
        *(a3 + 83) = v18 & 0xF;
        *(a3 + 82) = v18 >> 4;
        *(a3 + 84) = *(a1 + 24093);
        v19 = *(a1 + 24094);
        *(a3 + 79) = v19;
        if (*(a1 + 24144) > v19)
        {
          v19 = *(a1 + 24144);
        }

        *(a1 + 24144) = v19;
        *(a3 + 120) = v19;
        if (*(a1 + 24160) > v16)
        {
          LOWORD(v16) = *(a1 + 24160);
        }

        *(a1 + 24160) = v16;
        *(a3 + 136) = v16;
        *(a3 + 94) = *(a1 + 24095);
        v15 = *(a1 + 24097);
        *(a3 + 96) = v15;
        *(a3 + 112) = *(a1 + 24113);
      }

      else if (v14 == 2)
      {
        *(a3 + 3) = *(a1 + 24035);
        *(a3 + 72) = *(a1 + 24084);
      }

      _VCNWConnectionMonitor_ComputeMetrics(a1, a3, *&v15);
      v20 = *(a3 + 112);
      v35 = *(a3 + 96);
      v36 = v20;
      v21 = *(a3 + 144);
      v37 = *(a3 + 128);
      v38 = v21;
      v22 = *(a3 + 48);
      *&v31[32] = *(a3 + 32);
      v32 = v22;
      v23 = *(a3 + 80);
      v33 = *(a3 + 64);
      v34 = v23;
      v24 = *(a3 + 16);
      *v31 = *a3;
      *&v31[16] = v24;
      _VCNWConnectionMonitor_LogSignalsAndMetrics(a1, v31, v25, v26, v27, v28, v29, v30);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCNWConnectionMonitor_ProcessNotification_cold_2();
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCNWConnectionMonitor_ProcessNotification_cold_3();
    }
  }
}

void VCNWConnectionMonitor_SetStatisticsHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v8;
        v17 = 2080;
        v18 = "VCNWConnectionMonitor_SetStatisticsHandler";
        v19 = 1024;
        v20 = 574;
        v21 = 2048;
        v22 = a1;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor=%p", buf, 0x26u);
      }
    }

    v10 = VTP_NWConnectionQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __VCNWConnectionMonitor_SetStatisticsHandler_block_invoke;
    v14[3] = &__block_descriptor_tmp_8_0;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v14[7] = a4;
    dispatch_async(v10, v14);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v13 = *a1;
      }

      else
      {
        v13 = 0;
      }

      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "VCNWConnectionMonitor_SetStatisticsHandler";
      v19 = 1024;
      v20 = 571;
      v21 = 2048;
      v22 = a1;
      v23 = 2048;
      v24 = a4;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v13;
      _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p, monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void VCNWConnectionMonitor_ResetWlanStats(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 24152) = 0;
    *(a1 + 24144) = 0;
    *(a1 + 24160) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCNWConnectionMonitor_ResetWlanStats_cold_1();
    }
  }
}

void _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(void **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v2);
  v3 = *a1;
  if (*a1 && !v3[1] && !*v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "_VCNWConnectionMonitor_CheckAndReleaseNWMonitor";
        v11 = 1024;
        v12 = 52;
        v13 = 2048;
        v14 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor=%p is released", &v7, 0x26u);
      }
    }

    v6 = v3[3017];
    if (v6)
    {
      dispatch_release(v6);
    }

    free(v3);
    *a1 = 0;
  }
}

uint64_t videoOrientationForCameraStatusBits(char a1)
{
  v1 = (a1 & 8) >> 2;
  if ((a1 & 3) == 2)
  {
    v1 ^= 2u;
  }

  if ((a1 & 3) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 & 3u) <= 1)
  {
    v1 = v2;
  }

  if (a1 < 0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t VCCameraStatusUtil_RotationAngleForCameraStatusBits(int a1)
{
  if ((a1 & 8) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 180;
  }

  v2 = (a1 << 28 >> 31) & 0xB4;
  if ((a1 & 3) == 2)
  {
    v2 = v1;
  }

  if ((a1 & 3) != 0)
  {
    v3 = 270;
  }

  else
  {
    v3 = 90;
  }

  if ((a1 & 3u) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t VCCameraStatusUtil_CVOFromCameraStatusBits(unsigned int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = videoOrientationForCameraStatusBits(a1);
  VCCVOExtensionUtils_SetCVOCamera(&v3, (a1 >> 3) & 1);
  VCCVOExtensionUtils_SetCVOFlip(&v3, (a1 >> 2) & 1);
  return v3;
}

uint64_t VCCameraStatusUtil_CameraStatusBitsFromCVO(unsigned int a1)
{
  v2 = VCCVOExtensionUtils_CVOCamera(a1);
  if (v2)
  {
    v3 = -120;
  }

  else
  {
    v3 = 0x80;
  }

  if (VCCVOExtensionUtils_CVOFlip(a1))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 | v4;
  v6 = VCCVOExtensionUtils_CVOOrientation(a1);
  v7 = v5 | 1;
  if (v2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = v5 | v8;
  if (v2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v11 = v5 | v10;
  if (v6)
  {
    v11 = v5;
  }

  if (v6 == 2)
  {
    v11 = v9;
  }

  if (v6 != 3)
  {
    return v11;
  }

  return v7;
}

CGAffineTransform *videoOrientationInRadiansForCameraStatusBits@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E695EFD0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  if ((result & 0x80) != 0)
  {
    if ((result & 3u) > 1)
    {
      if ((result & 3) == 2)
      {
        v4 = 3.14159265;
        if ((result & 8) != 0)
        {
          v4 = 0.0;
        }
      }

      else
      {
        v4 = 3.14159265;
        if ((result & 8) == 0)
        {
          v4 = 0.0;
        }
      }
    }

    else if ((result & 3) != 0)
    {
      v4 = 4.71238898;
    }

    else
    {
      v4 = 1.57079633;
    }

    return CGAffineTransformMakeRotation(a2, v4);
  }

  return result;
}

uint64_t VCCameraStatusBitsFromVideoAttributes(void *a1)
{
  v2 = [a1 orientation];
  v3 = [a1 cameraSwitching];
  v4 = [a1 camera];
  if ([a1 videoSourceScreen])
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  if ([a1 videoMirrored])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = -64;
  }

  else
  {
    v7 = 0x80;
  }

  return v7 & 0xF4 | v2 & 3 | v5 & 0xF7u | (8 * (v4 & 1)) | v6;
}

void OUTLINED_FUNCTION_9_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void sub_1DB63591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_19_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

AudioComponent RegisterCodec(OSType a1, const char *__symbol, int a3)
{
  inFactory[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 1634037347;
  }

  else
  {
    v4 = 1633969507;
  }

  inDesc.componentType = v4;
  inDesc.componentSubType = a1;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  result = GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle;
  if (GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle || (result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioCodecs", 1), (GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle = result) != 0))
  {
    result = dlsym(result, __symbol);
    if (result)
    {
      inFactory[0] = &inDesc;
      (result)(inFactory);
      if (inFactory[0])
      {
        return AudioComponentRegister(&inDesc, &stru_1F570E008, 0, inFactory[0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL RegisterG722Encoder()
{
  if (RegisterG722Encoder::gG722Encoder)
  {
    return 1;
  }

  RegisterG722Encoder::gG722Encoder = RegisterCodec(0x676B6363u, "RegisterExternalAudioCodecs", 1);
  return RegisterG722Encoder::gG722Encoder != 0;
}

BOOL RegisterG722Decoder()
{
  if (RegisterG722Decoder::gG722Decoder)
  {
    return 1;
  }

  RegisterG722Decoder::gG722Decoder = RegisterCodec(0x676B6363u, "RegisterExternalAudioCodecs", 0);
  return RegisterG722Decoder::gG722Decoder != 0;
}

void VCMediaQueueUtil_FindPacketInTxHistory(unsigned __int16 *a1, uint64_t *a2, pthread_mutex_t *a3, int a4, double a5, double a6)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3) || !*(a1 + 4) || !*(a1 + 5) || !*(a1 + 6) || !*(a1 + 7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaQueueUtil_FindPacketInTxHistory_cold_1(v49, v50);
      }
    }

    return;
  }

  v9 = a3;
  memset(v88, 0, sizeof(v88));
  pthread_mutex_lock(a3);
  v15 = *(a2 + 3);
  v16 = *a2;
  if (v15 < 1)
  {
LABEL_17:
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    v22 = -1;
LABEL_18:
    v32 = a4;
    goto LABEL_19;
  }

  v17 = *(a2 + 2);
  v18 = v17 - 1;
  v19 = v17 - 2;
  v20 = -1;
  v21 = *a1;
  while (1)
  {
    v22 = (v19 + 1) & 0x1FF;
    v23 = v16 + 48 * ((v19 + 1) & 0x1FF);
    v24 = *(v23 + 2);
    if ((v24 - v21) >= 0x7FFFu)
    {
      v25 = 2;
    }

    else
    {
      v25 = 4;
    }

    if (v24 == v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v26 == 2)
    {
      goto LABEL_17;
    }

    if (v26 == 1)
    {
      break;
    }

    --v19;
    --v20;
    if (v15 + v20 == -1)
    {
      goto LABEL_17;
    }
  }

  v59 = *(v23 + 40);
  v60 = *(a1 + 3);
  if (v60 >= 0xF)
  {
    LOWORD(v60) = 15;
  }

  *v23 = v60;
  v11 = *(a1 + 2);
  *(v23 + 12) = v11;
  *(v23 + 32) = *(a1 + 2);
  v61 = -v20;
  if (-v20 >= v15)
  {
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    goto LABEL_18;
  }

  v75 = v18;
  v76 = v9;
  v27 = 0;
  v28 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  v67 = -1;
  v32 = a4;
  while (1)
  {
    v68 = (v16 + 48 * (v19 & 0x1FF));
    if (*(v68 + 3))
    {
      break;
    }

LABEL_99:
    ++v61;
    --v19;
    if (v15 == v61)
    {
      v61 = v67;
      v71 = v15;
      goto LABEL_103;
    }
  }

  if (v32)
  {
    v69 = *(v68 + 4);
    v70 = *(a1 + 16);
    v86 = -1431655766;
    v87 = -1431655766;
    if (!(v64 & 1 | (v69 == 0)))
    {
      v83 = v28;
      v84 = v31;
      v78 = v66;
      v79 = v62;
      v77 = v65;
      v81 = v27;
      v82 = v29;
      v80 = v63;
      FECUtil_UnpackFrameLoss(v69, &v87, &v86, v70);
      v65 = v77;
      v66 = v78;
      v62 = v79;
      v63 = v80;
      v29 = v82;
      v31 = v84;
      v32 = a4;
      v27 = v87 + v81;
      v28 = v86 + v83;
    }
  }

  ++*(v88 + *v68);
  v11 = v59 - *(v68 + 5);
  if (!(v66 & 1 | (v11 <= 1.0)))
  {
    v12 = (*(a1 + 2) - *(v68 + 4)) / v11;
    **(a1 + 4) = vcvtd_n_u64_f64(v12, 3uLL);
    v66 = 1;
  }

  if (!(v62 & 1 | (v11 <= a5)))
  {
    v29 = v19 & 0x1FF;
  }

  v62 |= (v62 | (v11 <= a5)) ^ 1;
  if (!(v63 & 1 | (v11 <= a6)))
  {
    v30 = v19 & 0x1FF;
  }

  v63 |= (v63 | (v11 <= a6)) ^ 1;
  if (!(v64 & 1 | (v11 < 1.0)))
  {
    v31 = v19 & 0x1FF;
  }

  v64 |= (v64 | (v11 < 1.0)) ^ 1;
  if (!(v65 & 1 | (v11 <= 5.0)))
  {
    v65 = 1;
  }

  if ((v62 & 1) == 0 || (v63 & 1) == 0 || (v64 & 1) == 0 || (v65 & 1) == 0 || (v66 & 1) == 0)
  {
    v67 = v61;
    goto LABEL_99;
  }

  LOBYTE(v66) = 1;
  v71 = v61;
  v64 = 1;
  LOBYTE(v63) = 1;
  LOBYTE(v62) = 1;
LABEL_103:
  if (v15 >= 128 && v71 == v15)
  {
    if (v61 == -1)
    {
      v9 = v76;
    }

    else
    {
      v72 = (v75 - v61) & 0x1FF;
      if ((v66 & 1) == 0)
      {
        v73 = v16 + 48 * ((v75 - v61) & 0x1FF);
        v11 = v59 - *(v73 + 40);
        if (v11 > 0.0)
        {
          v12 = (*(a1 + 2) - *(v73 + 32));
          v11 = v12 / v11;
          **(a1 + 4) = vcvtd_n_u64_f64(v11, 3uLL);
        }
      }

      if ((v62 & 1) == 0)
      {
        v29 = (v75 - v61) & 0x1FF;
      }

      if ((v63 & 1) == 0)
      {
        v30 = (v75 - v61) & 0x1FF;
      }

      if ((v64 & 1) == 0)
      {
        v31 = (v75 - v61) & 0x1FF;
      }

      v9 = v76;
LABEL_118:
      v74 = *(v16 + 48 * v72 + 32) / 0x3E8uLL;
      if ((*(a1 + 2) / 0x3E8uLL) < v74 && (*(a1 + 2) / 0x3E8uLL - v74) <= 0x7FFEu)
      {
        *(v16 + 48 * v22 + 32) = 1000 * (v74 & 0x7FFFFFFFFF0000 | (*(a1 + 2) / 0x3E8uLL)) + 65536000;
      }
    }
  }

  else
  {
    v9 = v76;
    if (v61 != -1)
    {
      v72 = (v75 - v61) & 0x1FF;
      goto LABEL_118;
    }
  }

LABEL_19:
  LODWORD(v33) = 0;
  for (i = 4; i != 64; i += 4)
  {
    LODWORD(v33) = *(v88 + i) + v33;
  }

  if (v33)
  {
    v35 = 0;
    v11 = v33;
    v33 = 1;
    HIDWORD(v12) = 1072483532;
    do
    {
      v35 += *(v88 + v33);
      if (v35 / v11 > 0.9)
      {
        break;
      }

      ++v33;
    }

    while (v33 != 16);
  }

  **(a1 + 3) = v33;
  if (((v22 | v29) & 0x80000000) == 0)
  {
    v36 = *(a1 + 5);
    if (v36)
    {
      v37 = *(v16 + 48 * (v22 & 0x1FF) + 12);
      if (v37)
      {
        v38 = *(v16 + 48 * (v29 & 0x1FF) + 12);
        if (v38 && (v22 & 0x1FF) != (v29 & 0x1FF))
        {
          LODWORD(v11) = *(v16 + 48 * (v22 & 0x1FF) + 4);
          LODWORD(v12) = *(v16 + 48 * (v29 & 0x1FF) + 4);
          v12 = *&v12;
          v11 = *&v11 - v12;
          if (v11 > 0.0)
          {
            v12 = v37 - v38;
            if (v12 >= 0.0)
            {
              v11 = 1.0 - v12 / v11;
              HIDWORD(v12) = 0;
              if (v11 < 0.0)
              {
                v11 = 0.0;
              }

              *v36 = v11;
            }
          }
        }
      }
    }
  }

  if (((v22 | v30) & 0x80000000) == 0)
  {
    v40 = *(a1 + 6);
    if (v40)
    {
      v41 = *(v16 + 48 * (v22 & 0x1FF) + 12);
      if (v41)
      {
        v42 = *(v16 + 48 * (v30 & 0x1FF) + 12);
        if (v42 && (v22 & 0x1FF) != (v30 & 0x1FF))
        {
          LODWORD(v11) = *(v16 + 48 * (v22 & 0x1FF) + 4);
          LODWORD(v12) = *(v16 + 48 * (v30 & 0x1FF) + 4);
          v44 = *&v11 - *&v12;
          if (v44 > 0.0)
          {
            v45 = v41 - v42;
            if (v45 >= 0.0)
            {
              v46 = 1.0 - v45 / v44;
              if (v46 < 0.0)
              {
                v46 = 0.0;
              }

              *v40 = v46;
            }
          }
        }
      }
    }
  }

  v47 = *(a1 + 7);
  if (v32)
  {
    *v47 = 0.0;
    if (v27)
    {
      v48 = v28 / v27;
      goto LABEL_73;
    }
  }

  else if (((v22 | v31) & 0x80000000) == 0 && v47)
  {
    v51 = 0;
    v52 = 0;
    v48 = NAN;
    do
    {
      v53 = *(v16 + 48 * ((v22 - v52) & 0x1FF) + 16);
      if (v53)
      {
        v54 = v53;
        v55 = 3;
        v56 = v31;
        do
        {
          v57 = *(v16 + 48 * (v56 & 0x1FF) + 16);
          if (v57)
          {
            if (((v22 - v52) & 0x1FF) == (v56 & 0x1FF))
            {
              break;
            }

            LODWORD(v13) = *(v16 + 48 * ((v22 - v52) & 0x1FF) + 8);
            LODWORD(v14) = *(v16 + 48 * (v56 & 0x1FF) + 8);
            v14 = *&v14;
            v13 = *&v13 - v14;
            if (v13 > 0.0)
            {
              v14 = v54 - v57;
              if (v14 >= 0.0)
              {
                v13 = 1.0 - v14 / v13;
                if (v13 < 0.0)
                {
                  v13 = 0.0;
                }

                v58 = v48 > v13;
                if (v48 > v13)
                {
                  v48 = v13;
                }

                v51 |= v58;
              }
            }
          }

          ++v56;
          --v55;
        }

        while (v55);
      }

      ++v52;
    }

    while (v52 != 3);
    if (v51)
    {
LABEL_73:
      *v47 = v48;
    }
  }

  pthread_mutex_unlock(v9);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return [v14 countByEnumeratingWithState:v15 - 160 objects:va count:16];
}

uint64_t VCPayloadUtils_AudioCodecRateModeForBitrate(int a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 > 106)
  {
    if ((a1 - 107) < 2 || a1 == 111)
    {
      if (a2 > 24399)
      {
        if (a2 > 63999)
        {
          switch(a2)
          {
            case 64000:
              return 19;
            case 96000:
              return 20;
            case 128000:
              return 21;
          }
        }

        else
        {
          switch(a2)
          {
            case 24400:
              return 16;
            case 32000:
              return 17;
            case 48000:
              return 18;
          }
        }
      }

      else if (a2 > 9599)
      {
        switch(a2)
        {
          case 9600:
            return 13;
          case 13200:
            return 14;
          case 16400:
            return 15;
        }
      }

      else
      {
        switch(a2)
        {
          case 5900:
            return 10;
          case 7200:
            return 11;
          case 8000:
            return 12;
        }
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

  if (a1 == 97)
  {
    if (a2 > 7399)
    {
      if (a2 > 10199)
      {
        if (a2 == 10200)
        {
          return 6;
        }

        if (a2 == 12200)
        {
          return 7;
        }
      }

      else
      {
        if (a2 == 7400)
        {
          return 4;
        }

        if (a2 == 7950)
        {
          return 5;
        }
      }
    }

    else if (a2 > 5899)
    {
      if (a2 == 5900)
      {
        return 2;
      }

      if (a2 == 6700)
      {
        return 3;
      }
    }

    else
    {
      if (a2 == 4750)
      {
        return 0;
      }

      if (a2 == 5150)
      {
        return 1;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "_VCPayloadUtils_AudioCodecRateModeForAMRBitrate";
        v10 = 1024;
        v11 = 1047;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported bitrate %d", &v6, 0x22u);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 != 98)
  {
LABEL_25:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCPayloadUtils_AudioCodecRateModeForBitrate_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:

  return _VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate(a2);
}

uint64_t VCPayloadUtils_CodecTypeForPayload(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 <= 96)
  {
    if (a1)
    {
      if (a1 == 8)
      {
        return 6;
      }

      else if (a1 == 13)
      {
        return 9;
      }

      else
      {
LABEL_29:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v3 = VRTraceErrorLogLevelToCSTR();
          v4 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v5 = 136315906;
            v6 = v3;
            v7 = 2080;
            v8 = "VCPayloadUtils_CodecTypeForPayload";
            v9 = 1024;
            v10 = 1382;
            v11 = 1024;
            v12 = a1;
            _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported payload %d", &v5, 0x22u);
          }
        }

        return 0;
      }
    }

    else
    {
      return 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 'a':
        result = 1;
        break;
      case 'b':
        result = 2;
        break;
      case 'c':
        result = 13;
        break;
      case 'd':
        result = 102;
        break;
      case 'e':
        result = 16;
        break;
      case 'h':
        result = 8;
        break;
      case 'j':
        result = 7;
        break;
      case 'k':
        result = 3;
        break;
      case 'l':
        result = 4;
        break;
      case 'n':
        result = 300;
        break;
      case 'o':
        result = 17;
        break;
      case 'p':
        result = 18;
        break;
      case 'q':
        result = 20;
        break;
      case 'u':
        result = 10;
        break;
      case 'w':
        result = 11;
        break;
      case 'y':
        result = 15;
        break;
      case 'z':
        result = 14;
        break;
      case '{':
        result = 100;
        break;
      case '|':
        result = 301;
        break;
      case '~':
        result = 101;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

uint64_t VCPayloadUtils_SupportsReceiveSideInactiveAudioFrameDetection(int a1, unsigned int a2, unsigned int a3)
{
  if (a1 == 113)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 104)
  {
    v3 = a2;
  }

  if (a1 == 101)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t _VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 <= 15849)
  {
    if (a1 > 12649)
    {
      if (a1 == 12650)
      {
        return 2;
      }

      if (a1 == 14250)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 6600)
      {
        return 0;
      }

      if (a1 == 8850)
      {
        return 1;
      }
    }
  }

  else if (a1 <= 19849)
  {
    if (a1 == 15850)
    {
      return 4;
    }

    if (a1 == 18250)
    {
      return 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 19850:
        return 6;
      case 23050:
        return 7;
      case 23850:
        return 8;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "_VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate";
      v9 = 1024;
      v10 = 1073;
      v11 = 1024;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported bitrate %d", &v5, 0x22u);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate(int a1)
{
  if (a1 == 16000)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 8000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t VCPayloadUtils_BitrateForAudioCodecRateMode(uint64_t a1, uint64_t a2)
{
  v3 = [VCPayloadUtils codecTypeForPayload:a1];

  return [VCPayloadUtils bitrateForCodecType:v3 mode:a2];
}

const char *VCPayloadUtils_AmrNbBitRateStringForBitRate(int a1)
{
  if (a1 > 7399)
  {
    if (a1 > 10199)
    {
      if (a1 == 10200)
      {
        return "AMR-NB 10.2";
      }

      if (a1 == 12200)
      {
        return "AMR-NB 12.2";
      }
    }

    else
    {
      if (a1 == 7400)
      {
        return "AMR-NB 7.4";
      }

      if (a1 == 7950)
      {
        return "AMR-NB 7.95";
      }
    }
  }

  else if (a1 > 5899)
  {
    if (a1 == 5900)
    {
      return "AMR-NB 5.9";
    }

    if (a1 == 6700)
    {
      return "AMR-NB 6.7";
    }
  }

  else
  {
    if (a1 == 4750)
    {
      return "AMR-NB 4.75";
    }

    if (a1 == 5150)
    {
      return "AMR-NB 5.15";
    }
  }

  return "";
}

const char *VCPayloadUtils_AmrWbBitRateStringForBitRate(int a1)
{
  if (a1 <= 15849)
  {
    if (a1 > 12649)
    {
      if (a1 == 12650)
      {
        return "AMR-WB 12.65";
      }

      if (a1 == 14250)
      {
        return "AMR-WB 14.25";
      }
    }

    else
    {
      if (a1 == 6600)
      {
        return "AMR-WB 6.6";
      }

      if (a1 == 8850)
      {
        return "AMR-WB 8.85";
      }
    }
  }

  else if (a1 <= 19849)
  {
    if (a1 == 15850)
    {
      return "AMR-WB 15.85";
    }

    if (a1 == 18250)
    {
      return "AMR-WB 18.25";
    }
  }

  else
  {
    switch(a1)
    {
      case 19850:
        return "AMR-WB 19.85";
      case 23050:
        return "AMR-WB 23.05";
      case 23850:
        return "AMR-WB 23.85";
    }
  }

  return "";
}

const char *VCPayloadUtils_EvsBitRateStringForBitRate(int a1)
{
  if (a1 <= 16399)
  {
    if (a1 > 9599)
    {
      if (a1 <= 13199)
      {
        if (a1 == 9600)
        {
          return "EVS PRI 9.6";
        }

        if (a1 == 12650)
        {
          return "EVS IO 12.65";
        }
      }

      else
      {
        switch(a1)
        {
          case 13200:
            return "EVS PRI 13.2";
          case 14250:
            return "EVS IO 14.25";
          case 15850:
            return "EVS IO 15.85";
        }
      }
    }

    else if (a1 <= 7199)
    {
      if (a1 == 5900)
      {
        return "EVS PRI 5.9";
      }

      if (a1 == 6600)
      {
        return "EVS IO 6.6";
      }
    }

    else
    {
      switch(a1)
      {
        case 7200:
          return "EVS PRI 7.2";
        case 8000:
          return "EVS PRI 8";
        case 8850:
          return "EVS IO 8.85";
      }
    }
  }

  else if (a1 <= 24399)
  {
    if (a1 <= 19849)
    {
      if (a1 == 16400)
      {
        return "EVS PRI 16.4";
      }

      if (a1 == 18250)
      {
        return "EVS IO 18.25";
      }
    }

    else
    {
      switch(a1)
      {
        case 19850:
          return "EVS IO 19.85";
        case 23050:
          return "EVS IO 23.05";
        case 23850:
          return "EVS IO 23.85";
      }
    }
  }

  else if (a1 > 63999)
  {
    switch(a1)
    {
      case 64000:
        return "EVS PRI 64";
      case 96000:
        return "EVS PRI 96";
      case 128000:
        return "EVS PRI 128";
    }
  }

  else
  {
    switch(a1)
    {
      case 24400:
        return "EVS PRI 24.4";
      case 32000:
        return "EVS PRI 32";
      case 48000:
        return "EVS PRI 48";
    }
  }

  return "";
}

uint64_t VCPayloadUtils_SupportsShortREDForPayload(int a1)
{
  if (a1 == 113)
  {
    return VCFeatureFlagManager_UseShortREDWithACC24();
  }

  else
  {
    return 0;
  }
}

uint64_t VCPayloadUtils_ShortREDBitrateForPayload(int a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 113)
  {
    return 4800;
  }

  if (a1 == 112)
  {
    return 2000;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCPayloadUtils_ShortREDBitrateForPayload_cold_1();
  }

  return 0;
}

uint64_t RTCPCopySendControlParameters(__int128 *a1, uint64_t a2, OSQueueHead *a3, char **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    RTCPCopySendControlParameters_cold_2(&v42, &v43);
LABEL_45:
    v17 = v42;
    result = v43;
    goto LABEL_41;
  }

  v8 = *a1;
  v9 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v9;
  *a2 = v8;
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[6];
  *(a2 + 80) = a1[5];
  *(a2 + 96) = v12;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  v13 = a1[7];
  v14 = a1[8];
  v15 = a1[9];
  *(a2 + 160) = *(a1 + 20);
  *(a2 + 128) = v14;
  *(a2 + 144) = v15;
  *(a2 + 112) = v13;
  if (!*(a2 + 8) && !*(a1 + 4) && !*(a1 + 7) && !*(a1 + 9) && !*(a1 + 19))
  {
    v17 = 0;
    goto LABEL_40;
  }

  v16 = VCMemoryPool_Alloc(a3);
  if (!v16)
  {
    RTCPCopySendControlParameters_cold_1(&v42, &v43);
    goto LABEL_45;
  }

  v17 = v16;
  opaque1 = a3[1].opaque1;
  v19 = &v16[opaque1];
  memset(v41, 170, sizeof(v41));
  if (v16 > &v16[opaque1])
  {
    goto LABEL_47;
  }

  v41[0] = v16;
  v41[1] = opaque1;
  v41[2] = 0;
  v20 = *(a1 + 2);
  if (v20)
  {
    v21 = *(a1 + 1);
    if (v21)
    {
      v22 = RTCPPackSendControlParameter(v41, v21, v20);
      if (!v22)
      {
        goto LABEL_42;
      }

      if (v23 < v22)
      {
        goto LABEL_47;
      }

      v24 = *(a1 + 2);
      if (v24 > v23 - v22)
      {
        goto LABEL_47;
      }

      *(a2 + 8) = v22;
      *(a2 + 16) = v24;
    }
  }

  v25 = *(a1 + 4);
  if (v25)
  {
    v26 = *(a1 + 10);
    if (v26 >= 1)
    {
      v27 = RTCPPackSendControlParameter(v41, v25, 2 * v26);
      if (!v27)
      {
        goto LABEL_42;
      }

      if (v28 < v27)
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 10);
      if (v29 < 0 || (v28 - v27) >> 1 < v29)
      {
        goto LABEL_47;
      }

      *(a2 + 32) = v27;
      *(a2 + 40) = v29;
    }
  }

  v30 = *(a1 + 7);
  if (v30 && *(a1 + 64))
  {
    v31 = RTCPPackSendControlParameter(v41, v30, 36 * *(a1 + 64));
    if (!v31)
    {
      goto LABEL_42;
    }

    if (v32 < v31)
    {
      goto LABEL_47;
    }

    v33 = *(a1 + 64);
    if ((0x8E38E38E38E38E39 * ((v32 - v31) >> 2)) < v33)
    {
      goto LABEL_47;
    }

    *(a2 + 56) = v31;
    *(a2 + 64) = v33;
  }

  v34 = *(a1 + 9);
  if (!v34)
  {
    goto LABEL_35;
  }

  v35 = RTCPPackSendControlParameter(v41, v34, 0x14uLL);
  if (!v35)
  {
LABEL_42:
    if (v17 < v19)
    {
      VCMemoryPool_Free(a3, v17);
      v17 = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 152) = 0;
      result = 2147549187;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_41;
    }

LABEL_47:
    __break(0x5519u);
  }

  if (v35 >= v36)
  {
    goto LABEL_47;
  }

  *(a2 + 72) = v35;
LABEL_35:
  v37 = *(a1 + 19);
  if (!v37)
  {
    goto LABEL_39;
  }

  v38 = RTCPPackSendControlParameter(v41, v37, 8uLL);
  if (!v38)
  {
    goto LABEL_42;
  }

  if (v38 >= v39)
  {
    goto LABEL_47;
  }

  *(a2 + 152) = v38;
LABEL_39:
  if (v17 >= v19)
  {
    goto LABEL_47;
  }

LABEL_40:
  result = 0;
LABEL_41:
  *a4 = v17;
  return result;
}

unint64_t *RTCPPackSendControlParameter(unint64_t *result, const void *a2, size_t __n)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPPackSendControlParameter_cold_1();
      }
    }

    return 0;
  }

  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (v5 - v6 < __n)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *v4;
        v9 = v4[1];
        v11 = v4[2];
        v14 = 136316930;
        v15 = v7;
        v16 = 2080;
        v17 = "RTCPPackSendControlParameter";
        v18 = 1024;
        v19 = 100;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v9 - v11;
        v28 = 2048;
        v29 = __n;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Insufficient space in buffer {base=%p count=%zu offset=%zu size=%zu}, requesting %zu bytes ", &v14, 0x4Eu);
      }
    }

    return 0;
  }

  v12 = *result + v6;
  if (v12 <= *result + v5 && *result <= v12)
  {
    memcpy((*result + v6), a2, __n);
    v4[2] += __n;
    return v12;
  }

  __break(0x5519u);
  return result;
}

CFTypeRef RTCPShallowCopyPacketList(void *__src, void *__dst)
{
  memcpy(__dst, __src, 0x668uLL);
  v3 = *(__dst + 12);

  return CFRetain(v3);
}

uint64_t RTCPReducedSizePackets(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10644) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPSetHopByHopEncryptionEnabled(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10646) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPSetEnableReceptionFromMultipleSSRC(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10647) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetRTCPHasPendingPLI(uint64_t a1, _DWORD *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 104);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTPGetRecvStats(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 2147549185;
  if (a2 && a3)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      *a2 = *(v6 + 320);
      *a3 = *(v6 + 324);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

uint64_t RTCPSetSendPLI()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = 2147549239;
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147549186;
  }

  v2 = v1;
  v3 = *(v1 + 104);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "RTCPSetSendPLI";
        v14 = 1024;
        v15 = 267;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSFB PLI is already scheduled to be sent in the next RTCP interval", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = "RTCPSetSendPLI";
        v14 = 1024;
        v15 = 264;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSFB PLI will be sent in the next RTCP interval", &v10, 0x1Cu);
      }
    }

    v0 = 0;
    *(v2 + 104) = 1;
  }

  CheckOutHandleDebug();
  return v0;
}

uint64_t RTCPSetSendTMMBR(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = 2147549239;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  if (*(v4 + 128) && *(v4 + 132) == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "RTCPSetSendTMMBR";
        v14 = 1024;
        v15 = 326;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPFB TMMBR is already scheduled to be sent in the next RTCP interval", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    *(v4 + 128) = 1;
    *(v4 + 132) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "RTCPSetSendTMMBR";
        v14 = 1024;
        v15 = 324;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPFB TMMBR bitrate:%d, will be sent in the next RTCP interval", &v10, 0x22u);
      }
    }

    v3 = 0;
  }

  CheckOutHandleDebug();
  return v3;
}

uint64_t RTPCheckRTCPSendIntervalElapsed(uint64_t a1, _DWORD *a2, double *a3)
{
  v3 = 2147549185;
  if (a2)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      v8 = micro();
      v9 = *(v7 + 160);
      v10 = v8 + 0.001 - v9;
      v11 = *(v7 + 176);
      *a2 = v10 > v11;
      v12 = v11 - (v8 - v9);
      if (v10 > v11)
      {
        v12 = 0.0;
      }

      *a3 = v12;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

uint64_t RTPSendControlPacket(uint64_t a1, int *a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 184))
    {
      v6 = micro();
      v7 = v6;
      v8 = *a2;
      if ((*a2 & 0x50) != 0)
      {
        if ((v8 & 0x10) != 0)
        {
          v9 = a2[12];
          *(v5 + 136) = 1;
          *(v5 + 140) = v9;
        }

        if ((v8 & 0x40) != 0)
        {
          *(v5 + 96) = 1;
          *(v5 + 100) = *(a2 + 24);
        }

        v10 = RTPSendRTCP(a1);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        v11 = (v5 + 160);
        goto LABEL_13;
      }

      v12 = *(v5 + 160);
      v11 = (v5 + 160);
      if (v6 + 0.001 - v12 > v11[2])
      {
        v10 = RTPSendRTCP(a1);
        if ((v10 & 0x80000000) != 0)
        {
LABEL_15:
          CheckOutHandleDebug();
          return v10;
        }

LABEL_13:
        *v11 = v7;
        goto LABEL_15;
      }
    }

    v10 = 0;
    goto LABEL_15;
  }

  return 2147549186;
}

uint64_t RTPSendRTCP(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v217 = *MEMORY[0x1E69E9840];
  v3 = 2147549187;
  v195 = 0xAAAAAAAAAAAAAAAALL;
  v193 = 0;
  memset(v192, 0, sizeof(v192));
  memset(__b, 170, sizeof(__b));
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  v5 = v4;
  if (v4 == 0xFFFFFFFFLL)
  {
    return 2147549190;
  }

  memset(v206, 170, sizeof(v206));
  memset(__src, 170, sizeof(__src));
  if ((*v2 & 0xE27) != 0)
  {
    v188 = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_11;
  }

  v188 = *(v5 + 204) != 0;
  if (!*(v5 + 4832) && !*(v2 + 64))
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_11:
  bzero(v204, 0x402uLL);
  v7 = strnlen((v5 + 360), 0x100uLL);
  v8 = v7;
  if (v7 >= 256)
  {
    CheckOutHandleDebug();
    return 2147549192;
  }

  v189 = v6;
  v196 = -1431655766;
  v9 = v7 + 6;
  if (v7 < -6)
  {
    v9 = v7 + 9;
  }

  v200[0] = -13695;
  v181 = (v9 >> 2) + 1;
  v200[1] = bswap32(v181) >> 16;
  v201 = bswap32(*(v5 + 200));
  v202 = 1;
  v203 = v7;
  __strncpy_chk();
  v10 = &v204[v8];
  if (v10 >= &v205 || v10 < v204)
  {
    goto LABEL_350;
  }

  *v10 = 0;
  v185 = *v2;
  if ((*v2 & 1) == 0)
  {
    v11 = v6;
    if ((*v2 & 8) == 0)
    {
      LOWORD(v186) = 0;
LABEL_75:
      v50 = *v2;
      if ((*v2 & 4) != 0)
      {
        v51 = bswap32(*(v5 + 200));
        __b[0] = 33603968;
        __b[1] = v51;
        LOWORD(__b[2]) = bswap32(*(v2 + 46)) >> 16;
        HIWORD(__b[2]) = bswap32(*(v2 + 44)) >> 16;
        v187 = 2;
      }

      else
      {
        v187 = 0;
      }

      v184 = 0xAAAAAAAA00000000;
      if ((v50 & 0x800) != 0)
      {
        v52 = bswap32(*(v5 + 200));
        __b[0] = 50384257;
        __b[1] = v52;
        __b[2] = bswap32(*(v5 + 4832));
        LOWORD(__b[3]) = bswap32(*(v2 + 46)) >> 16;
        HIWORD(__b[3]) = bswap32(*(v2 + 44)) >> 16;
        v187 = 3;
      }

      v183 = 2863267840;
      v182 = 43690;
      goto LABEL_81;
    }

    if (*(v5 + 148))
    {
      LOWORD(__src[0]) = __src[0] & 0x1F | 0xCE80;
      v12 = *(v2 + 40);
      if (v12)
      {
        if (v12 < 2)
        {
          v16 = 0;
        }

        else
        {
          v13 = *(v2 + 32);
          v14 = *v13;
          LODWORD(v13) = v13[1];
          LOWORD(__src[0]) = -12670;
          v15 = bswap32(*(v5 + 4832));
          __src[1] = bswap32(*(v5 + 200));
          __src[2] = v15;
          __src[3] = bswap32(((v13 * v14) >> 2) & 0x7FC0 | 0x80000);
          v16 = 3;
        }
      }

      else
      {
        LOWORD(__src[0]) = -12671;
        v49 = bswap32(*(v5 + 4832));
        __src[1] = bswap32(*(v5 + 200));
        __src[2] = v49;
        v16 = 2;
      }

      LOWORD(v186) = v16;
      HIWORD(__src[0]) = v16 << 8;
      goto LABEL_75;
    }

    LODWORD(v17) = *(v2 + 40);
    LOWORD(__src[0]) = -16256;
    v186 = ((v17 + 1) >> 1) + 1;
    HIWORD(__src[0]) = bswap32(v186) >> 16;
    __src[1] = bswap32(*(v5 + 200));
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = (&__src[2] + v18);
        v21 = (&__src[2] + v18) < &__src[7] && v20 >= &__src[2];
        if (!v21)
        {
          goto LABEL_350;
        }

        *v20 = bswap32(*(*(v2 + 32) + v18)) >> 16;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        v23 = *(v5 + 10640);
        if (v23 > ErrorLogLevelForModule || v23 < 1)
        {
          goto LABEL_37;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *(v5 + 10640);
        if (v26 > 2)
        {
          if (v26 > 4)
          {
            if (v26 > 7)
            {
              if (v26 == 8)
              {
                v38 = *MEMORY[0x1E6986650];
                v43 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] != 1)
                {
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    v45 = *(v2 + 32);
                    v46 = (v45 + v18);
                    if (v45 + v18 >= v45 + 2 * *(v2 + 40) || v46 < v45)
                    {
                      goto LABEL_350;
                    }

                    v47 = *v20;
                    v48 = *v46;
                    *buf = 136316418;
                    *&buf[4] = v25;
                    *&buf[12] = 2080;
                    *&buf[14] = "RTPSendRTCP";
                    *&buf[22] = 1024;
                    v208 = 1869;
                    v209 = 1024;
                    v210 = v19;
                    v211 = 1024;
                    v212 = v47;
                    v213 = 1024;
                    v214 = v48;
                    _os_log_debug_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEBUG, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
                  }

                  goto LABEL_37;
                }

                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = *(v2 + 32);
                  v40 = (v44 + v18);
                  if (v44 + v18 >= v44 + 2 * *(v2 + 40) || v40 < v44)
                  {
                    goto LABEL_350;
                  }

                  goto LABEL_58;
                }
              }
            }

            else
            {
              v38 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(v2 + 32);
                v40 = (v39 + v18);
                if (v39 + v18 >= v39 + 2 * *(v2 + 40) || v40 < v39)
                {
                  goto LABEL_350;
                }

LABEL_58:
                v41 = *v20;
                v42 = *v40;
                *buf = 136316418;
                *&buf[4] = v25;
                *&buf[12] = 2080;
                *&buf[14] = "RTPSendRTCP";
                *&buf[22] = 1024;
                v208 = 1869;
                v209 = 1024;
                v210 = v19;
                v211 = 1024;
                v212 = v41;
                v213 = 1024;
                v214 = v42;
                _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
              }
            }
          }

          else
          {
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v31 = *(v2 + 32);
              v30 = (v31 + v18);
              if (v31 + v18 >= v31 + 2 * *(v2 + 40) || v30 < v31)
              {
                goto LABEL_350;
              }

              goto LABEL_49;
            }
          }
        }

        else
        {
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v28 = *MEMORY[0x1E6986650];
          if ((IsOSFaultDisabled & 1) == 0)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              v34 = *(v2 + 32);
              v35 = (v34 + v18);
              if (v34 + v18 >= v34 + 2 * *(v2 + 40) || v35 < v34)
              {
                goto LABEL_350;
              }

              v36 = *v20;
              v37 = *v35;
              *buf = 136316418;
              *&buf[4] = v25;
              *&buf[12] = 2080;
              *&buf[14] = "RTPSendRTCP";
              *&buf[22] = 1024;
              v208 = 1869;
              v209 = 1024;
              v210 = v19;
              v211 = 1024;
              v212 = v36;
              v213 = 1024;
              v214 = v37;
              _os_log_fault_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_FAULT, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
            }

            goto LABEL_37;
          }

          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v29 = *(v2 + 32);
            v30 = (v29 + v18);
            if (v29 + v18 >= v29 + 2 * *(v2 + 40) || v30 < v29)
            {
              goto LABEL_350;
            }

LABEL_49:
            v32 = *v20;
            v33 = *v30;
            *buf = 136316418;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = "RTPSendRTCP";
            *&buf[22] = 1024;
            v208 = 1869;
            v209 = 1024;
            v210 = v19;
            v211 = 1024;
            v212 = v32;
            v213 = 1024;
            v214 = v33;
            _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
          }
        }

LABEL_37:
        ++v19;
        v17 = *(v2 + 40);
        v18 += 2;
        if (v19 >= v17)
        {
          goto LABEL_73;
        }
      }
    }

    LODWORD(v19) = 0;
LABEL_73:
    if ((v17 & 1) == 0)
    {
      goto LABEL_74;
    }

    v154 = &__src[2] + v19;
    if (v154 >= &__src[7] || v154 < &__src[2])
    {
      goto LABEL_350;
    }

    *v154 = -1;
    v155 = VRTraceGetErrorLogLevelForModule();
    v156 = *(v5 + 10640);
    if (v156 > v155 || v156 < 1)
    {
      goto LABEL_74;
    }

    v157 = VRTraceErrorLogLevelToCSTR();
    v158 = *(v5 + 10640);
    if (v158 > 2)
    {
      if (v158 > 4)
      {
        if (v158 > 7)
        {
          if (v158 != 8)
          {
            goto LABEL_74;
          }

          v169 = *MEMORY[0x1E6986650];
          v172 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
            {
              v173 = *v154;
              v174 = *(v2 + 40);
              *buf = 136316418;
              *&buf[4] = v157;
              *&buf[12] = 2080;
              *&buf[14] = "RTPSendRTCP";
              *&buf[22] = 1024;
              v208 = 1873;
              v209 = 1024;
              v210 = v19;
              v211 = 1024;
              v212 = v173;
              v213 = 1024;
              v214 = v174;
              _os_log_debug_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
            }

            goto LABEL_74;
          }

          if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }
        }

        else
        {
          v169 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }
        }

        v170 = *v154;
        v171 = *(v2 + 40);
        *buf = 136316418;
        *&buf[4] = v157;
        *&buf[12] = 2080;
        *&buf[14] = "RTPSendRTCP";
        *&buf[22] = 1024;
        v208 = 1873;
        v209 = 1024;
        v210 = v19;
        v211 = 1024;
        v212 = v170;
        v213 = 1024;
        v214 = v171;
        _os_log_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
        goto LABEL_74;
      }

      v160 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
LABEL_310:
        v163 = *v154;
        v164 = *(v2 + 40);
        *buf = 136316418;
        *&buf[4] = v157;
        *&buf[12] = 2080;
        *&buf[14] = "RTPSendRTCP";
        *&buf[22] = 1024;
        v208 = 1873;
        v209 = 1024;
        v210 = v19;
        v211 = 1024;
        v212 = v163;
        v213 = 1024;
        v214 = v164;
        _os_log_error_impl(&dword_1DB56E000, v160, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
      }
    }

    else
    {
      v159 = VRTraceIsOSFaultDisabled();
      v160 = *MEMORY[0x1E6986650];
      if ((v159 & 1) == 0)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v167 = *v154;
          v168 = *(v2 + 40);
          *buf = 136316418;
          *&buf[4] = v157;
          *&buf[12] = 2080;
          *&buf[14] = "RTPSendRTCP";
          *&buf[22] = 1024;
          v208 = 1873;
          v209 = 1024;
          v210 = v19;
          v211 = 1024;
          v212 = v167;
          v213 = 1024;
          v214 = v168;
          _os_log_fault_impl(&dword_1DB56E000, v160, OS_LOG_TYPE_FAULT, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
        }

        goto LABEL_74;
      }

      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_310;
      }
    }

LABEL_74:
    v11 = v189;
    goto LABEL_75;
  }

  LOWORD(v186) = 0;
  v187 = 0;
  v183 = 0x1000000;
  v184 = bswap32(*(v5 + 200)) << 32;
  v182 = 52097;
  v11 = v6;
LABEL_81:
  v190 = v5 + 27800;
  if (v11)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v53 = *(v2 + 64);
    if (*(v2 + 64) || (*(v5 + 10645) & 1) != 0)
    {
      v55 = *(v2 + 56);
      v54 = &v55[36 * *(v2 + 64)];
    }

    else
    {
      if (v5 >= v190)
      {
        goto LABEL_350;
      }

      v55 = v192;
      v54 = &v194;
      _RTCPInitializeReceptionReportBlock(v5, v192);
      if (*(v5 + 28) <= 1u)
      {
        kdebug_trace();
        v55 = v192;
      }

      v53 = 1;
    }
  }

  v56 = *(v5 + 10644);
  v57 = *v2;
  v58 = (*v2 & 0xEFE) != 0;
  v196 = 0;
  if ((v57 & 0x20) != 0)
  {
    v197 = 1472;
    v62 = *(v2 + 72);
    buf[5] = 0;
    *&buf[6] = 0;
    strcpy(buf, "LTCR");
    *&buf[8] = v62;
    *&buf[16] = 0;
    if (v5 >= v190)
    {
      goto LABEL_350;
    }

    v63 = _RTCPAddCustomReportPacket(v5, v206, 0x5C0uLL, &v197, buf);
    if ((v63 & 0x80000000) != 0)
    {
      v61 = v63;
      RTPSendRTCP_cold_1();
      goto LABEL_330;
    }

LABEL_98:
    v64 = v197;
    v196 = v197;
    goto LABEL_99;
  }

  if (*(v5 + 10645) == 1)
  {
    v197 = 1472;
    memset(buf, 0, sizeof(buf));
    if (v188)
    {
      v59 = 1297568594;
    }

    else
    {
      v59 = 1297568338;
    }

    *buf = v59;
    if (v55 > v54)
    {
      goto LABEL_350;
    }

    if ((0x8E38E38E38E38E39 * ((v54 - v55) >> 2)) < v53)
    {
      goto LABEL_350;
    }

    *&buf[8] = v55;
    *&buf[16] = v53;
    if (v5 >= v190)
    {
      goto LABEL_350;
    }

    v60 = _RTCPAddCustomReportPacket(v5, v206, 0x5C0uLL, &v197, buf);
    if ((v60 & 0x80000000) != 0)
    {
      v61 = v60;
      RTPSendRTCP_cold_25();
LABEL_330:
      v3 = v61;
      goto LABEL_213;
    }

    goto LABEL_98;
  }

  if (v58 & v56)
  {
    v64 = 0;
    goto LABEL_99;
  }

  v113 = 0;
  v114 = 0;
  if (v55)
  {
    v115 = v54;
  }

  else
  {
    v115 = 0;
  }

  v179 = v115;
  do
  {
    if (v53 - v114 >= 0x1F)
    {
      v116 = 31;
    }

    else
    {
      v116 = v53 - v114;
    }

    v117 = 1472 - v113;
    v195 = v117;
    v118 = v188;
    if (v114)
    {
      v118 = 0;
    }

    if (v55)
    {
      v119 = &v55[36 * v114];
    }

    else
    {
      v119 = 0;
    }

    if (v119 > v115 || v55 > v119)
    {
      goto LABEL_350;
    }

    v121 = &v206[v113];
    if (v5 >= v190)
    {
      goto LABEL_350;
    }

    v122 = 0x8E38E38E38E38E39 * ((v115 - v119) >> 2) < v116 || v121 > buf;
    if (v122 || v206 > v121)
    {
      goto LABEL_350;
    }

    if (v117 < 4)
    {
      goto LABEL_286;
    }

    if (v118)
    {
      v124 = -14208;
    }

    else
    {
      v124 = -13952;
    }

    *&v206[v113] = v124 | v116 | *&v206[v113] & 0x20;
    v180 = v113;
    v125 = 1468 - v113;
    if (v118)
    {
      if (v125 < 0x18)
      {
        goto LABEL_286;
      }

      v178 = v116;
      v126 = micro();
      v127 = MicroToNTP(v126);
      LODWORD(v128) = *(v5 + 312);
      v129 = v128;
      LODWORD(v128) = *(v5 + 700);
      v130 = v128;
      v131 = NTPToMicro(*(v5 + 304));
      v132 = _RTPSendTimestampWithMediaSampleTime(v5, (v129 + v130 * (v126 - v131)));
      if (v121 + 52 > buf)
      {
        goto LABEL_350;
      }

      v176 = HIDWORD(v127);
      *(v121 + 1) = bswap32(*(v5 + 200));
      *(v121 + 2) = bswap32(HIDWORD(v127));
      v133.i64[0] = __PAIR64__(v132, v127);
      v177 = v132;
      v133.i64[1] = *(v5 + 204);
      *(v121 + 12) = vrev32q_s8(v133);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v175 = VRTraceErrorLogLevelToCSTR();
        v134 = *MEMORY[0x1E6986650];
        v135 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            v136 = *(v5 + 28);
            *buf = 136316674;
            *&buf[4] = v175;
            *&buf[12] = 2080;
            *&buf[14] = "_RTCPAddSenderReportHeader";
            *&buf[22] = 1024;
            v208 = 1435;
            v209 = 1024;
            v210 = 1435;
            v211 = 1024;
            v212 = v136;
            v213 = 1024;
            v214 = v176;
            v215 = 1024;
            v216 = v177;
            _os_log_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Sending RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
          v144 = *(v5 + 28);
          *buf = 136316674;
          *&buf[4] = v175;
          *&buf[12] = 2080;
          *&buf[14] = "_RTCPAddSenderReportHeader";
          *&buf[22] = 1024;
          v208 = 1435;
          v209 = 1024;
          v210 = 1435;
          v211 = 1024;
          v212 = v144;
          v213 = 1024;
          v214 = v176;
          v215 = 1024;
          v216 = v177;
          _os_log_debug_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Sending RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
        }
      }

      v137 = (v121 + 28);
      if (v121 + 4 > v121 + 28 || v137 > buf)
      {
        goto LABEL_350;
      }

      v138 = -28;
      v116 = v178;
    }

    else
    {
      if (v125 < 4)
      {
        goto LABEL_286;
      }

      if (v121 + 32 > buf)
      {
        goto LABEL_350;
      }

      *(v121 + 1) = bswap32(*(v5 + 200));
      v137 = (v121 + 8);
      v138 = -8;
    }

    if (v53 != v114)
    {
      v139 = v138 + v117;
      v140 = v116;
      while (v119)
      {
        if (v139 <= 0x17)
        {
          goto LABEL_286;
        }

        *v137 = bswap32(*v119);
        v141 = *(v119 + 1);
        *(v137 + 4) = v141;
        *(v137 + 4) = v141 | (*(v119 + 2) << 8);
        *(v137 + 4) = bswap32(*(v119 + 2) & 0xFFFFFF) & 0xFFFFFF00 | v141;
        *(v137 + 8) = vrev32q_s8(*(v119 + 12));
        v137 += 24;
        v139 -= 24;
        v119 += 36;
        if (!--v140)
        {
          goto LABEL_263;
        }
      }

      if (v139 <= 0x17)
      {
        v3 = 2147549187;
      }

      else
      {
        v3 = 2147549185;
      }

      goto LABEL_286;
    }

LABEL_263:
    v142 = v116;
    v143 = _RTCPFinalizePacket(v121, v117, &v195, v137 - v121);
    if ((v143 & 0x80000000) != 0)
    {
      v3 = v143;
LABEL_286:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPSendRTCP_cold_2();
        }
      }

      goto LABEL_213;
    }

    v115 = v179;
    v113 = v180 + v195;
    v196 = v180 + v195;
    v114 += v142;
  }

  while (v53 != v114);
  v165 = 4 * v181 + 4;
  v64 = (v113 + v165);
  if (v64 >= 1473)
  {
    RTPSendRTCP_cold_3();
    goto LABEL_343;
  }

  v166 = &v206[v113];
  if (v206 > v166 || v181 > 0x102u || v166 > buf || 1472 - v113 < v165)
  {
    goto LABEL_350;
  }

  memcpy(&v206[v113], v200, 4 * v181 + 4);
  v196 = v64;
LABEL_99:
  v65 = *v2;
  if ((*v2 & 0x100) != 0)
  {
    v67 = 1472 - v64;
    *buf = v67;
    v68 = &v206[v64];
    if (v5 >= v190 || v68 > buf || v206 > v68)
    {
      goto LABEL_350;
    }

    if (v67 <= 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPSendRTCP_cold_4();
        }
      }
    }

    else
    {
      v69 = *(v2 + 80);
      v70 = *(v2 + 88);
      v71 = *(v2 + 96);
      v72 = *(v2 + 104);
      *v68 = *v68 & 0x20 | 0xCF80;
      v73 = v68 + 4;
      if ((v67 & 0x7FFFFFFFFFFFFFFCLL) == 4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPSendRTCP_cold_8();
          }
        }
      }

      else
      {
        v145 = v68 + 8;
        if (v68 + 8 > buf)
        {
          goto LABEL_350;
        }

        *v73 = *(v5 + 4832);
        if (v73 > v145)
        {
          goto LABEL_350;
        }

        v146 = 1464 - v64;
        if (v69 && v70)
        {
          while (1)
          {
            v21 = v146 >= 0x28;
            v146 -= 40;
            if (!v21)
            {
              break;
            }

            v147 = *(v5 + 4832);
            *v145 = 6;
            v148 = *(v145 + 1) & 0x7F | (*v69 << 7);
            *(v145 + 1) = v148;
            v149 = v148 & 0xBF | (*(v69 + 1) << 6);
            *(v145 + 1) = v149;
            v150 = v149 & 0xDF | (32 * *(v69 + 2));
            *(v145 + 1) = v150;
            *(v145 + 1) = v150 & 0xE0 | (8 * (*(v69 + 4) & 3));
            v145[1] = 2304;
            *(v145 + 1) = bswap32(v147);
            v145[4] = bswap32(*(v69 + 12)) >> 16;
            v145[5] = bswap32(*(v69 + 14)) >> 16;
            *(v145 + 6) = vrev32q_s8(*(v69 + 16));
            *(v145 + 14) = vrev32_s8(*(v69 + 32));
            *(v145 + 9) = *(v69 + 40);
            v145 += 20;
            if (!--v70)
            {
              goto LABEL_273;
            }
          }

          v161 = VRTraceGetErrorLogLevelForModule();
          if (v161 >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPSendRTCP_cold_5();
            }
          }
        }

        else
        {
LABEL_273:
          if (v71 && v72)
          {
            while (v146 > 0x23)
            {
              v151 = v145 + 18;
              v152 = bswap32(*(v5 + 4832));
              *v145 = 134217735;
              *(v145 + 1) = v152;
              *(v145 + 2) = *v71;
              *(v145 + 6) = vrev16_s8(*(v71 + 4));
              *(v145 + 10) = *(v71 + 12);
              *(v145 + 28) = *(v71 + 20);
              *(v145 + 29) = 0;
              v145[15] = bswap32(*(v71 + 22)) >> 16;
              v145[16] = bswap32(*(v71 + 24)) >> 16;
              v145[17] = bswap32(*(v71 + 26)) >> 16;
              v146 -= 36;
              v145 += 18;
              if (!--v72)
              {
                v145 = v151;
                goto LABEL_278;
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPSendRTCP_cold_6();
              }
            }
          }

          else
          {
LABEL_278:
            v153 = _RTCPFinalizePacket(v68, v67, buf, v145 - v68);
            if ((v153 & 0x80000000) == 0)
            {
              v64 = (v64 + *buf);
              v196 = v64;
              v65 = *v2;
              goto LABEL_100;
            }

            v162 = v153;
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              v3 = v162;
            }

            else
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPSendRTCP_cold_7();
              }

              v3 = v162;
            }
          }
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPSendRTCP_cold_9();
      }
    }

    goto LABEL_213;
  }

LABEL_100:
  if ((v65 & 0x600) == 0)
  {
    goto LABEL_132;
  }

  if (v5 >= v190)
  {
    goto LABEL_350;
  }

  v66 = 1472 - v64;
  if (v66 > 0x5C0)
  {
    goto LABEL_350;
  }

  *buf = 0;
  *&buf[8] = 0;
  if ((v65 & 0x200) != 0)
  {
    *buf = 6;
    *&buf[8] = *(v2 + 152);
    v197 = 0;
    v74 = &v206[v64];
    if (v66 - v64 < v66 || v74 < v206 || v74 > &v206[v66])
    {
      goto LABEL_350;
    }

    v75 = _RTCPAddPSFBAlfbPacket(v5, v74, 1472 - v64, &v197, buf);
    if ((v75 & 0x80000000) != 0)
    {
      v3 = v75;
      RTPSendRTCP_cold_10();
      goto LABEL_346;
    }

    v3 = 0;
    v64 = (v64 + v197);
    v196 = v64;
    if ((*v2 & 0x400) == 0)
    {
      goto LABEL_131;
    }

LABEL_127:
    v76 = *(v2 + 160);
    *buf = 5;
    *&buf[8] = v76;
    v197 = 0;
    v77 = &v206[v64];
    if (v77 > &v206[v66] || v77 < v206)
    {
      goto LABEL_350;
    }

    v3 = _RTCPAddPSFBAlfbPacket(v5, v77, v66 - v64, &v197, buf);
    if ((v3 & 0x80000000) == 0)
    {
      v64 = (v64 + v197);
      v196 = v64;
      goto LABEL_131;
    }

    RTPSendRTCP_cold_11();
    goto LABEL_346;
  }

  v3 = 2147549192;
  if ((v65 & 0x400) != 0)
  {
    goto LABEL_127;
  }

LABEL_131:
  if ((v3 & 0x80000000) != 0)
  {
LABEL_346:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPSendRTCP_cold_12();
      }
    }

    goto LABEL_213;
  }

LABEL_132:
  v78 = *(v2 + 16);
  if (!v78)
  {
    goto LABEL_138;
  }

  v197 = 1472 - v64;
  v79 = *(v2 + 4);
  v80 = *(v2 + 8);
  *&buf[4] = 0;
  *&buf[8] = v80;
  *buf = v79;
  *&buf[16] = v78;
  v81 = &v206[v64];
  if (v5 >= v190 || v81 > buf || v206 > v81)
  {
    goto LABEL_350;
  }

  v82 = _RTCPAddAppPacket(v5, v81, 1472 - v64, &v197, buf);
  if ((v82 & 0x80000000) != 0)
  {
    v3 = v82;
    RTPSendRTCP_cold_13();
    goto LABEL_213;
  }

  v64 = (v64 + v197);
  v196 = v64;
LABEL_138:
  if (v186)
  {
    v83 = 4 * v186 + 4;
    v84 = (v64 + v83);
    if (v84 < 1473)
    {
      v85 = &v206[v64];
      if (v206 <= v85 && v186 <= 0x102u && v85 <= buf && 1472 - v64 >= v83)
      {
        memcpy(v85, __src, v83);
        v196 = v84;
        v64 = v84;
        goto LABEL_145;
      }

LABEL_350:
      __break(0x5519u);
    }

    RTPSendRTCP_cold_14();
    goto LABEL_343;
  }

LABEL_145:
  if (v187)
  {
    v86 = (4 * v187 + 4);
    v87 = (v64 + v86);
    if (v87 < 1473)
    {
      v88 = &v206[v64];
      if (v88 > buf || v206 > v88 || 1472 - v64 < v86)
      {
        goto LABEL_350;
      }

      memcpy(v88, __b, v86);
      v196 = v87;
      v64 = v87;
      goto LABEL_151;
    }

    RTPSendRTCP_cold_15();
LABEL_343:
    v3 = *buf;
    goto LABEL_213;
  }

LABEL_151:
  if (*(v5 + 96))
  {
    v89 = 1472 - v64;
    *buf = 1472 - v64;
    v90 = &v206[v64];
    if (v90 > buf || v206 > v90 || v5 >= v190 || v89 < 0 || 1472 - v64 < v89)
    {
      goto LABEL_350;
    }

    v91 = RTCPAddFIR(v5, v90, v89, buf);
    if ((v91 & 0x80000000) != 0)
    {
      v3 = v91;
      RTPSendRTCP_cold_16();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 96) = 0;
  }

  if (*(v5 + 104))
  {
    v92 = 1472 - v64;
    *buf = 1472 - v64;
    v93 = &v206[v64];
    if (v93 > buf || v206 > v93 || v5 >= v190 || v92 < 0 || 1472 - v64 < v92)
    {
      goto LABEL_350;
    }

    v94 = RTCPAddPLI(v5, v93, v92, buf);
    if ((v94 & 0x80000000) != 0)
    {
      v3 = v94;
      RTPSendRTCP_cold_17();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 104) = 0;
  }

  if (*(v5 + 112))
  {
    v95 = 1472 - v64;
    *buf = 1472 - v64;
    v96 = &v206[v64];
    if (v96 > buf || v206 > v96 || v5 >= v190 || v95 < 0 || 1472 - v64 < v95)
    {
      goto LABEL_350;
    }

    v97 = RTCPAddTST(v5, v96, v95, buf, 0);
    if ((v97 & 0x80000000) != 0)
    {
      v3 = v97;
      RTPSendRTCP_cold_18();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 112) = 0;
  }

  if (*(v5 + 120))
  {
    v98 = 1472 - v64;
    *buf = 1472 - v64;
    v99 = &v206[v64];
    if (v99 > buf || v206 > v99 || v5 >= v190 || v98 < 0 || 1472 - v64 < v98)
    {
      goto LABEL_350;
    }

    v100 = RTCPAddTST(v5, v99, v98, buf, 1);
    if ((v100 & 0x80000000) != 0)
    {
      v3 = v100;
      RTPSendRTCP_cold_19();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 120) = 0;
  }

  if (*(v5 + 128))
  {
    v101 = 1472 - v64;
    *buf = 1472 - v64;
    v102 = &v206[v64];
    if (v102 > buf || v206 > v102 || v5 >= v190 || v101 < 0 || 1472 - v64 < v101)
    {
      goto LABEL_350;
    }

    v103 = RTCPAddTMMB(v5, v102, v101, buf, 0);
    if ((v103 & 0x80000000) != 0)
    {
      v3 = v103;
      RTPSendRTCP_cold_20();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 128) = 0;
  }

  if (*(v5 + 136))
  {
    v104 = 1472 - v64;
    *buf = 1472 - v64;
    v105 = &v206[v64];
    if (v105 > buf || v206 > v105 || v5 >= v190 || v104 < 0 || 1472 - v64 < v104)
    {
      goto LABEL_350;
    }

    v106 = RTCPAddTMMB(v5, v105, v104, buf, 1);
    if ((v106 & 0x80000000) != 0)
    {
      v3 = v106;
      RTPSendRTCP_cold_21();
      goto LABEL_213;
    }

    v64 = (v64 + *buf);
    v196 = v64;
    *(v5 + 136) = 0;
  }

  if (v185)
  {
    if (v64 >= 1465)
    {
      RTPSendRTCP_cold_22(v64, buf);
      goto LABEL_343;
    }

    v107 = &v206[v64];
    if (v107 > buf || v206 > v107)
    {
      goto LABEL_350;
    }

    *v107 = v184 | v183 | v182;
    LODWORD(v64) = v64 + 8;
    v196 = v64;
  }

  v191 = v64 - 8;
  if (v5 >= v190)
  {
    goto LABEL_350;
  }

  v108 = SRTCPEncrypt(v5 + 7976, &v206[8], v64 - 8, 0x5B8u, &v191);
  if (v108 < 0 && v108 != -2145255368)
  {
    RTPSendRTCP_cold_24(v108, buf);
    goto LABEL_343;
  }

  v196 = v191 + 8;
  v109 = SRTCPAddAuthenticationTag((v5 + 7976), 1472, v206, v191 + 8, &v196);
  if (v109 < 0 && v109 != -2145255368)
  {
    RTPSendRTCP_cold_23(v109, buf);
    goto LABEL_343;
  }

  v110 = (*v2 & 0x48) != 0;
  if (*(v5 + 11296))
  {
    v111 = _RTCPSendWithTransportStream(v5, v206, v196, v110, v2);
  }

  else
  {
    v111 = _RTCPSendWithSocket(v5, v206, v196, v110);
  }

  v3 = v111;
LABEL_213:
  CheckOutHandleDebug();
  return v3;
}

uint64_t RTPSendRateControlPacket(uint64_t a1, _BYTE *a2)
{
  v4 = 2147549186;
  v5 = CheckInHandleDebug();
  if (v5)
  {
    if (*(v5 + 184))
    {
      if ((*a2 & 0x20) != 0)
      {
        v4 = RTPSendRTCP(a1);
      }

      else
      {
        v4 = 2147549200;
      }
    }

    else
    {
      v4 = 0;
    }

    CheckOutHandleDebug();
  }

  return v4;
}

uint64_t RTCPGetVoIPMetricsReportBlock(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    if (*(v3 + 188))
    {
      if (*(v3 + 7004))
      {
        v4 = *(v3 + 704);
        if (v4)
        {
          v5 = *(v3 + 692) - *(v3 + 688) + 1;
          v6 = ((v5 - v4) << 8) / v5;
        }

        else
        {
          LOBYTE(v6) = -1;
        }

        v7 = 0;
        *a2 = v6;
        v8 = *(*(v3 + 10592) + 48);
        if (v8 > 0xFFFE)
        {
          LOWORD(v8) = -1;
        }

        *(a2 + 8) = v8;
        goto LABEL_11;
      }

      RTCPGetVoIPMetricsReportBlock_cold_1();
    }

    else
    {
      RTCPGetVoIPMetricsReportBlock_cold_2(&v10);
    }

    v7 = v10;
LABEL_11:
    CheckOutHandleDebug();
    return v7;
  }

  return 2147549186;
}

unint64_t _RTCPInitializeReceptionReportBlock(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 692) - *(a1 + 688) + 1;
  v5 = *(a1 + 704);
  if (v4 - v5 >= 0x7FFFFF)
  {
    v6 = 0x7FFFFFLL;
  }

  else
  {
    v6 = v4 - v5 + ((v4 - v5) >> 63 << 24);
  }

  v7 = *(a1 + 708);
  v8 = (v4 - v7);
  v9 = v8 - (v5 - *(a1 + 712));
  v10 = v4 - v7;
  *(a1 + 708) = v4;
  *(a1 + 712) = v5;
  if (v4 == v7 || v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 << 8) / v8);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 200);
      v17 = *(a1 + 4832);
      v21 = 136317442;
      v22 = v14;
      v23 = 2080;
      v24 = "_RTCPInitializeReceptionReportBlock";
      v25 = 1024;
      v26 = 769;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = v17;
      v31 = 1024;
      v32 = v4;
      v33 = 2048;
      v34 = v6;
      v35 = 1024;
      v36 = v10;
      v37 = 2048;
      v38 = v9;
      v39 = 1024;
      v40 = v12;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localSSRC:%X remoteSSRC:%X dwPacketExp = %u lPacketLost = %ld, dwPacketExpInt = %d, lPacketLostInt = %ld, fraction = %d", &v21, 0x4Eu);
    }
  }

  if (*(a1 + 6500))
  {
    v18 = GetNTPTime() - *(a1 + 6496);
  }

  else
  {
    v18 = 0;
  }

  *a2 = *(a1 + 4832);
  *(a2 + 4) = v12;
  v19 = *(a1 + 692);
  *(a2 + 8) = v6;
  *(a2 + 12) = v19;
  LODWORD(v13) = *(a1 + 4828);
  *(a2 + 16) = vcvtad_u64_f64(*(a1 + 27792) * v13);
  *(a2 + 20) = NTPToMiddle32(*(a1 + 6504));
  result = NTPToMiddle32(v18);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 617);
  return result;
}

unint64_t _RTCPAddCustomReportPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(0x5519u);
  }

  result = 2147549187;
  if (a3 > 3)
  {
    *a2 = *a2 & 0x20 | 0xCC80;
    if (a3 - 12 <= 0xFFFFFFFFFFFFFFF7)
    {
      v10 = *a5;
      v11 = (a2 + 12);
      *(a2 + 4) = bswap32(*(a1 + 200));
      *(a2 + 8) = bswap32(v10);
      v14[0] = a2 + 12;
      v14[1] = a3 - 12;
      if (v10 == 1297568338 || v10 == 1297568594)
      {
        result = _RTCPAddCustomReport(v14, a1, a5);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v11 = v14[0];
      }

      else if (v10 == 1380144204)
      {
        if (a3 - 12 < 0x14)
        {
          return result;
        }

        v12 = *(a5 + 8);
        v13 = *v12;
        *(a2 + 28) = *(v12 + 4);
        *v11 = v13;
        v11 = (a2 + 32);
      }

      return _RTCPFinalizePacket(a2, a3, a4, v11 - a2);
    }
  }

  return result;
}

unint64_t _RTCPAddAppPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a3 < 4)
  {
    return 2147549187;
  }

  *a2 = *a2 & 0x20 | 0xCC80;
  v7 = a3 - 12;
  if (a3 - 12 > 0xFFFFFFFFFFFFFFF7)
  {
    return 2147549187;
  }

  v9 = bswap32(*a5);
  *(a2 + 4) = bswap32(*(a1 + 200));
  *(a2 + 8) = v9;
  v10 = *(a5 + 16);
  if (v7 < v10)
  {
    return 2147549187;
  }

  v13 = a2 + 12;
  result = memcpy((a2 + 12), *(a5 + 8), v10);
  v14 = v13 + *(a5 + 16);
  if (v14 > a2 + a3 || v13 > v14)
  {
    __break(0x5519u);
  }

  else
  {

    return _RTCPFinalizePacket(a2, a3, a4, v14 - a2);
  }

  return result;
}

uint64_t RTCPAddFIR(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(a1 + 4832);
  v6 = *(a1 + 100);
  if (a3 < 20)
  {
    v7 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPAddFIR_cold_1();
      }
    }
  }

  else
  {
    v7 = 0;
    *a2 = 67161732;
    *(a2 + 4) = bswap32(v4);
    *(a2 + 12) = bswap32(v5);
    *(a2 + 16) = v6;
    *(a2 + 17) = 0;
    *(a2 + 19) = 0;
    *a4 = 20;
  }

  return v7;
}

uint64_t RTCPAddPLI(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4)
{
  if (a3 < 12)
  {
    v4 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPAddPLI_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = bswap32(*(a1 + 4832));
    v6 = bswap32(*(a1 + 200));
    *a2 = 33607297;
    a2[1] = v6;
    a2[2] = v5;
    *a4 = 12;
  }

  return v4;
}

uint64_t RTCPAddTST(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 < 20)
  {
    v6 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v18 = "TSTR";
        v19 = 136316418;
        v20 = v15;
        v21 = 2080;
        v22 = "RTCPAddTST";
        if (a5 == 1)
        {
          v18 = "TSTN";
        }

        v23 = 1024;
        v24 = 560;
        v25 = 2080;
        v26 = v18;
        v27 = 1024;
        v28 = 20;
        v29 = 1024;
        v30 = a3;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to add %s, buffer too small: %d > %d", &v19, 0x32u);
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 108;
    if (a5 == 1)
    {
      v7 = 117;
    }

    v8 = *(a1 + v7);
    v9 = 116;
    if (a5 == 1)
    {
      v9 = 124;
    }

    v10 = *(a1 + v9);
    v11 = *(a1 + 4832);
    v12 = *(a1 + 200);
    if (a5 == 1)
    {
      v13 = -12666;
    }

    else
    {
      v13 = -12667;
    }

    *a2 = v13;
    *(a2 + 2) = 1024;
    *(a2 + 4) = bswap32(v12);
    *(a2 + 12) = bswap32(v11);
    *(a2 + 16) = bswap32(v10 & 0x1F | (v8 << 24));
    *a4 = 20;
  }

  return v6;
}

uint64_t RTCPAddTMMB(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = 35;
  if (a5 == 1)
  {
    v8 = -12924;
  }

  else
  {
    v7 = 33;
    v8 = -12925;
  }

  v9 = a1[v7];
  if (v9 >= 0x20000)
  {
    LOBYTE(v10) = 0;
    v11 = v9 >> 17;
    do
    {
      LOBYTE(v10) = v10 + 1;
      v12 = v11 > 1;
      v11 >>= 1;
    }

    while (v12);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (a3 < 20)
  {
    v13 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = "TMMBR";
        v23 = 136316418;
        v24 = v19;
        v25 = 2080;
        v26 = "RTCPAddTMMB";
        if (a5 == 1)
        {
          v22 = "TMMBN";
        }

        v27 = 1024;
        v28 = 634;
        v29 = 2080;
        v30 = v22;
        v31 = 1024;
        v32 = 20;
        v33 = 1024;
        v34 = a3;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to add %s, buffer too small: %d > %d", &v23, 0x32u);
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = (v9 >> v10 << 9) | (v10 << 26);
    v15 = bswap32(a1[50]);
    v16 = bswap32(a1[1208]);
    v17 = a1[3] == 0;
    *a2 = v8;
    if (v17)
    {
      v18 = 40;
    }

    else
    {
      v18 = 60;
    }

    *(a2 + 2) = 1024;
    *(a2 + 4) = v15;
    *(a2 + 8) = 0;
    *(a2 + 12) = v16;
    *(a2 + 16) = bswap32(v14 | v18);
    *a4 = 20;
  }

  return v13;
}

uint64_t _RTCPSendWithTransportStream(uint64_t a1, void *a2, size_t a3, char a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = unk_1DBD47770;
  v19 = xmmword_1DBD47780;
  memset(v20, 170, sizeof(v20));
  memset(blockBufferOut, 170, sizeof(blockBufferOut));
  VCPacketInitialize(blockBufferOut);
  if (!a5)
  {
    _RTCPSendWithTransportStream_cold_2();
LABEL_15:
    v14 = v16;
    goto LABEL_12;
  }

  if (*(a5 + 130) >= 0xDu)
  {
    _RTCPSendWithTransportStream_cold_1(a5 + 130, &v16);
    goto LABEL_15;
  }

  result = CMBlockBufferCreateWithMemoryBlock(*(a1 + 10664), a2, a3, *MEMORY[0x1E695E498], 0, 0, a3, 0, blockBufferOut);
  if (result)
  {
    if (result >= 0)
    {
      v15 = result;
    }

    else
    {
      v15 = -result;
    }

    v14 = v15 | 0xD0010000;
    goto LABEL_12;
  }

  LOWORD(blockBufferOut[1]) = 257;
  v20[8] = a4;
  v20[9] = 1;
  BYTE4(blockBufferOut[4]) = *(a5 + 131);
  blockBufferOut[5] = *(a5 + 136);
  BYTE2(blockBufferOut[4]) = *(a5 + 130);
  LOBYTE(blockBufferOut[6]) = *(a1 + 10646);
  BYTE1(blockBufferOut[6]) = *(a5 + 144);
  if (!BYTE2(blockBufferOut[4]))
  {
LABEL_7:
    v11 = _RTPEnsureTransportStreamsActivated(a1);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = *(a1 + 11296);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v13)
      {
        v14 = 4294954514;
        goto LABEL_12;
      }

      v11 = v13(v12, blockBufferOut);
    }

    v14 = v11;
LABEL_12:
    VCPacketInvalidate(blockBufferOut);
    return v14;
  }

  if (BYTE2(blockBufferOut[4]) <= 0xCu)
  {
    __memcpy_chk();
    goto LABEL_7;
  }

  __break(0x5519u);
  return result;
}

uint64_t _RTCPSendWithSocket(uint64_t a1, _OWORD *a2, size_t a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = *(a1 + 10584);
  BYTE9(v9) = a4;
  BYTE10(v9) = 1;
  v4 = 0;
  if (VTP_Send(*(a1 + 8), a2, a3, 0, v8) == -1)
  {
    v4 = *__error() | 0xC0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPSendWithSocket_cold_1(v5, v6);
      }
    }
  }

  return v4;
}

uint64_t _RTCPTransport_ParsePacket(unint64_t a1, uint64_t *a2, int a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = a2[13];
  v4 = v3 + a2[14];
  v5 = v3 + a3;
  v6 = (a2 + 2);
  v7 = (a2 + 12);
  *(a2 + 8) = 0;
  v8 = 1;
  v9 = a2 + 2;
  v10 = 1;
  v11 = v3;
  do
  {
    if ((v11 + 2) > v5)
    {
      v16 = 2147549191;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPTransport_ParsePacket_cold_13();
        }
      }

      return v16;
    }

    if (v11 && (v11 >= v4 || v11 < v3))
    {
      goto LABEL_231;
    }

    v12 = bswap32(v11[1]) >> 16;
    v11[1] = v12;
    v13 = &v11[2 * v12 + 2];
    if (v13 > v5)
    {
      if (v10)
      {
        return 0;
      }

LABEL_27:
      v17 = 0;
      v96 = *a2;
      v94 = a2 + 124;
      v98 = a2 + 1596;
      v95 = a1 + 27800;
      v100 = (a2 + 2);
      v99 = (a2 + 12);
      while (2)
      {
        v18 = (v6 + 8 * v17);
        if (v18 >= v7 || v18 < v6)
        {
          goto LABEL_231;
        }

        v20 = *v18;
        v21 = (*v18 + 518);
        v22 = **v18;
        v23 = v22 >> 8;
        if (v22 >> 8 > 0xC9)
        {
          if (v22 >> 8 <= 0xCB)
          {
            if (v23 == 202)
            {
              if (v20[1] - 67 <= 0xFFFFFFBD)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTCPTransport_ParsePacket_cold_10();
                  }
                }

                return 2147549191;
              }
            }

            else
            {
              if (v23 != 203)
              {
                goto LABEL_191;
              }

              if (v20[1] != 1)
              {
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                if (ErrorLogLevelForModule >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTCPTransport_ParsePacket_cold_9();
                  }
                }

                return 2147549191;
              }
            }

            *(v20 + 1) = bswap32(*(v20 + 1));
            goto LABEL_191;
          }

          if (v23 != 204)
          {
            if (v23 != 205)
            {
              if (v23 != 206)
              {
                goto LABEL_191;
              }

              v24 = v22 & 0x1F;
              if (v24 <= 4)
              {
                if (v24 == 1)
                {
                  if (v20[1] != 2)
                  {
                    goto LABEL_200;
                  }

                  *(v20 + 2) = vrev32_s8(*(v20 + 2));
                }

                else
                {
                  if (v24 != 2)
                  {
                    if (v24 == 4 && v20[1] == 4)
                    {
                      *(v20 + 2) = vrev32_s8(*(v20 + 2));
                      *(v20 + 6) = bswap32(*(v20 + 3));
                      goto LABEL_191;
                    }

LABEL_200:
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        _RTCPTransport_ParsePacket_cold_5();
                      }
                    }

                    return 2147549191;
                  }

                  if (v20[1] != 3)
                  {
                    goto LABEL_200;
                  }

                  *(v20 + 2) = vrev32_s8(*(v20 + 2));
                  *(v20 + 3) = bswap32(*(v20 + 3));
                }

                goto LABEL_191;
              }

              if (v24 != 5 && v24 != 6)
              {
                if (v24 != 15)
                {
                  goto LABEL_200;
                }

                if (v20 >= v21)
                {
                  goto LABEL_231;
                }

                v65 = v20[1];
                if (v65 > 0x102)
                {
                  goto LABEL_231;
                }

                v102 = *v18;
                v103 = 4 * v65 + 4;
                v54 = _RTCPProcessCommonHeader(&v102);
                if ((v54 & 0x80000000) != 0)
                {
                  return v54;
                }

                v66 = v103;
                v67 = v103 - 12;
                if (v103 < 0xC)
                {
                  return 2147549192;
                }

                v68 = v102;
                *v102 = vrev32_s8(*v102);
                v69 = bswap32(v68[1].u32[0]);
                v68[1].i32[0] = v69;
                if (v69 == 5)
                {
                  if (v67 < 4)
                  {
                    v88 = 0;
                    v16 = 2147549192;
                    goto LABEL_189;
                  }

                  v16 = 0;
                  v68[1].i32[1] = bswap32(v68[1].u32[1]);
                  v67 = v66 - 16;
                }

                else
                {
                  if (v69 == 6)
                  {
                    if (v67 >= 8)
                    {
                      v16 = 0;
                      v68[1].i32[1] = bswap32(v68[1].u32[1]);
                      v68[2].i16[0] = bswap32(v68[2].u16[0]) >> 16;
                      v67 = v66 - 20;
                      goto LABEL_188;
                    }

                    v88 = 0;
                    v16 = 2147549187;
LABEL_189:
                    if (v67)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          _RTCPTransport_ParsePacket_cold_4();
                        }
                      }

                      return 2147549191;
                    }

                    if ((v88 & 1) == 0)
                    {
                      return v16;
                    }

LABEL_191:
                    v17 = (v17 + 1);
                    v6 = v100;
                    v7 = v99;
                    if (v17 >= *(a2 + 8))
                    {
                      return 0;
                    }

                    continue;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v86 = VRTraceErrorLogLevelToCSTR();
                    v87 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      *&buf[4] = v86;
                      *&buf[12] = 2080;
                      *&buf[14] = "_RTCPProcessPSFBAlfbPacket";
                      v105 = 1024;
                      v106 = 1400;
                      v107 = 1024;
                      v108 = 1400;
                      v109 = 1024;
                      v110 = v69;
                      _os_log_error_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Unsupported PSFB ALFB app type=%u", buf, 0x28u);
                    }
                  }

                  v16 = 0;
                }

LABEL_188:
                v88 = 1;
                goto LABEL_189;
              }

              if (v20[1] != 4)
              {
                goto LABEL_200;
              }

LABEL_154:
              *(v20 + 2) = vrev32q_s8(*(v20 + 2));
              goto LABEL_191;
            }

            v61 = v22 & 0x1F;
            if (v61 == 4 || v61 == 3)
            {
              if (v20[1] != 4)
              {
                goto LABEL_197;
              }

              goto LABEL_154;
            }

            if (v61 != 1 || (v62 = v20[1], (v62 - 3) > 0xFF))
            {
LABEL_197:
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTCPTransport_ParsePacket_cold_3();
                }
              }

              return 2147549191;
            }

            if (v20 < v21)
            {
              *(v20 + 2) = vrev32_s8(*(v20 + 2));
              v63 = (v62 - 2);
              v64 = (v20 + 6);
              while (v64 < v21 && v64 >= v20 + 6)
              {
                *v64 = bswap32(*v64) >> 16;
                v64[1] = bswap32(v64[1]) >> 16;
                v64 += 2;
                if (!--v63)
                {
                  goto LABEL_191;
                }
              }
            }

LABEL_231:
            __break(0x5519u);
          }

          if (v20 >= v21)
          {
            goto LABEL_231;
          }

          v53 = 4 * v20[1] + 4;
          if (v20 > (v20 + v53))
          {
            goto LABEL_231;
          }

          *buf = *v18;
          *&buf[8] = v53;
          v54 = _RTCPProcessCommonHeader(buf);
          if ((v54 & 0x80000000) != 0)
          {
            return v54;
          }

          v55 = *&buf[8];
          v56 = *&buf[8] - 8;
          if (*&buf[8] < 8uLL)
          {
            return 2147549192;
          }

          v57 = *buf;
          v58 = *(*buf + 4);
          v59 = bswap32(v58);
          **buf = bswap32(**buf);
          *(v57 + 4) = v59;
          if (v59 > 1297568593)
          {
            if (v59 != 1380144204)
            {
              v60 = 21330;
LABEL_129:
              if (v59 == (v60 | 0x4D570000))
              {
                if (v58 == 1381193549)
                {
                  v70 = -10;
                }

                else
                {
                  v70 = -11;
                }

                *(v20 + 1) = v70;
                v71 = *(a2 + 30);
                v72 = (v94 + v71);
                if (v94 + v71 > v98)
                {
                  goto LABEL_231;
                }

                if (v94 > v72)
                {
                  goto LABEL_231;
                }

                v73 = 1472 - v71;
                if (v73 > v98 - v72)
                {
                  goto LABEL_231;
                }

                v74 = v57 + 8 - v20;
                v75 = v73 - v74;
                if (v73 < v74)
                {
                  return 2147549192;
                }

                if (v74 > v53)
                {
                  goto LABEL_231;
                }

                memcpy(v72, v20, v57 + 8 - v20);
                v76 = &v72[v74];
                if (&v72[v74] > v98 || v72 > v76)
                {
                  goto LABEL_231;
                }

                if (v75 < 4)
                {
                  return 2147549192;
                }

                *v76 = 0;
                v77 = (v76 + 4);
                if ((v76 + 4) > v98 || v76 > v77)
                {
                  goto LABEL_231;
                }

                if (!v56)
                {
                  return 2147549192;
                }

                LODWORD(v102) = v75 - 4;
                if ((v56 & 0x80000000) != 0 || v56 > v56)
                {
                  goto LABEL_231;
                }

                v54 = CompressionUtils_DecompressWithZlib();
                if ((v54 & 0x80000000) != 0)
                {
                  return v54;
                }

                v78 = v102;
                if (v75 - 4 < v102)
                {
                  goto LABEL_231;
                }

                if (v58 == 1381193549)
                {
                  if (v102 < 0x11)
                  {
                    return 2147549192;
                  }

                  *(v76 + 4) = vrev32q_s8(*(v76 + 4));
                  *(a1 + 6496) = v96;
                  *(a1 + 6508) = *(v76 + 1);
                  *(a1 + 6504) = *(v76 + 2);
                  *(a1 + 617) = v76[20] & 0xF;
                  v79 = v76 + 21;
                  if (v77 > (v76 + 21) || v79 > v77 + v78)
                  {
                    goto LABEL_231;
                  }

                  v80 = -17;
                }

                else
                {
                  if (!v102)
                  {
                    return 2147549192;
                  }

                  v79 = v76 + 5;
                  v80 = -1;
                }

                v83 = v80 + v78;
                if (v83)
                {
                  do
                  {
                    if (v83 < 0xC)
                    {
                      return 2147549192;
                    }

                    v84 = v79 + 12;
                    *v79 = bswap32(*v79);
                    *(v79 + 3) = bswap32(*(v79 + 3)) >> 16;
                    *(v79 + 4) = bswap32(*(v79 + 4)) >> 16;
                    ++*v76;
                    v79 += 12;
                    v83 -= 12;
                  }

                  while (v83);
                  v79 = v84;
                }

                v85 = (1472 - *(a2 + 30));
                v102 = v85;
                if (v85 > v98 - v72)
                {
                  goto LABEL_231;
                }

                _RTCPFinalizePacket(v72, v85, &v102, v79 - v72);
                if ((v72 + 1036) > v98)
                {
                  goto LABEL_231;
                }

                *(v72 + 1) = bswap32(*(v72 + 1)) >> 16;
                *(a2 + 30) += v102;
                if (v72 >= v98)
                {
                  goto LABEL_231;
                }

                *v18 = v72;
              }

              goto LABEL_191;
            }

            if (v56 < 0x14)
            {
              if (!v56)
              {
                return 2147549192;
              }

LABEL_222:
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTCPTransport_ParsePacket_cold_8();
                }
              }

              return 2147549191;
            }

            if (*(a2 + 8) != 1)
            {
              goto LABEL_222;
            }

            v16 = 0;
            v82 = v55 - 28;
          }

          else
          {
            if (v59 != 5)
            {
              v60 = 21074;
              goto LABEL_129;
            }

            v82 = v55 - 12;
            if (v56 > 3)
            {
              v16 = 0;
            }

            else
            {
              v82 = v56;
              v16 = 2147549192;
            }
          }

          if (v82)
          {
            goto LABEL_222;
          }

          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }

          goto LABEL_191;
        }

        break;
      }

      if (v22 >> 8 > 0xC7)
      {
        if (v23 == 200)
        {
          v42 = 24 * (v22 & 0x1F);
          if (4 * v20[1] + 4 != v42 + 28)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_12();
              }
            }

            return 2147549191;
          }

          *(v20 + 2) = vrev32q_s8(*(v20 + 2));
          *(v20 + 10) = vrev32_s8(*(v20 + 10));
          if ((v22 & 0x1F) == 0)
          {
LABEL_91:
            if (VRTraceGetErrorLogLevelForModule() > 7)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x1E6986650];
              v49 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = *(a1 + 28);
                  v51 = *(v20 + 2);
                  v52 = *(v20 + 4);
                  *buf = 136316674;
                  *&buf[4] = v47;
                  *&buf[12] = 2080;
                  *&buf[14] = "_RTCPProcessSenderReportPacket";
                  v105 = 1024;
                  v106 = 1466;
                  v107 = 1024;
                  v108 = 1466;
                  v109 = 1024;
                  v110 = v50;
                  v111 = 1024;
                  v112 = v51;
                  v113 = 1024;
                  v114 = v52;
                  _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Received RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
                }
              }

              else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v89 = *(a1 + 28);
                v90 = *(v20 + 2);
                v91 = *(v20 + 4);
                *buf = 136316674;
                *&buf[4] = v47;
                *&buf[12] = 2080;
                *&buf[14] = "_RTCPProcessSenderReportPacket";
                v105 = 1024;
                v106 = 1466;
                v107 = 1024;
                v108 = 1466;
                v109 = 1024;
                v110 = v89;
                v111 = 1024;
                v112 = v90;
                v113 = 1024;
                v114 = v91;
                _os_log_debug_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Received RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
              }
            }

            *(a1 + 6496) = v96;
            *(a1 + 6508) = *(v20 + 2);
            *(a1 + 6504) = *(v20 + 3);
            if (v95 <= a1)
            {
              goto LABEL_231;
            }

            v81 = _RTPMediaSampleTimeWithReceiveTimestamp(a1, *(v20 + 4), 0);
            *(v20 + 4) = v81;
            *(a1 + 4824) = v81;
            goto LABEL_191;
          }

          v43 = v20 + v42 + 28;
          v44 = v22 & 0x1F;
          v45 = (v20 + 14);
          while (v45 < v43 && v45 >= (v20 + 14))
          {
            v46 = *(v45 + 4) | (bswap32(*(v45 + 4)) << 8);
            *v45 = bswap32(*v45);
            *(v45 + 4) = v46;
            *(v45 + 8) = vrev32q_s8(*(v45 + 8));
            v45 += 24;
            if (!--v44)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          if (v23 != 201)
          {
            goto LABEL_191;
          }

          v25 = 24 * (v22 & 0x1F);
          if (4 * v20[1] + 4 != v25 + 8)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_11();
              }
            }

            return 2147549191;
          }

          *(v20 + 1) = bswap32(*(v20 + 1));
          if ((v22 & 0x1F) == 0)
          {
            goto LABEL_191;
          }

          v26 = v20 + v25 + 8;
          v27 = v22 & 0x1F;
          v28 = (v20 + 4);
          while (v28 < v26 && v28 >= (v20 + 4))
          {
            v29 = *(v28 + 4) | (bswap32(*(v28 + 4)) << 8);
            *v28 = bswap32(*v28);
            *(v28 + 4) = v29;
            *(v28 + 8) = vrev32q_s8(*(v28 + 8));
            v28 += 24;
            if (!--v27)
            {
              goto LABEL_191;
            }
          }
        }

        goto LABEL_231;
      }

      if (v23 != 192)
      {
        if (v23 == 193)
        {
          if (v20[1] != 2)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_6();
              }
            }

            return 2147549191;
          }

          *(v20 + 1) = bswap32(*(v20 + 1));
          v20[4] = bswap32(v20[4]) >> 16;
          v20[5] = bswap32(v20[5]) >> 16;
        }

        goto LABEL_191;
      }

      if (v20[1] - 7 <= 0xFFFFFFF9)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTCPTransport_ParsePacket_cold_7();
          }
        }

        return 2147549191;
      }

      *(v20 + 1) = bswap32(*(v20 + 1));
      BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableLTRPLogging", 0);
      if (BoolValueForKey)
      {
        v31 = 7;
      }

      else
      {
        v31 = 8;
      }

      if (v20 >= v21)
      {
        goto LABEL_231;
      }

      if (((2 * v20[1] + 254) & 0xFELL) == 0)
      {
        goto LABEL_191;
      }

      v32 = BoolValueForKey;
      v33 = 0;
      v34 = 0;
      v35 = v20 + 4;
      while (2)
      {
        if (&v35[v33] >= v20 + 14 || &v35[v33] < v35)
        {
          goto LABEL_231;
        }

        v35[v34] = bswap32(v35[v34]) >> 16;
        if (v31 <= VRTraceGetErrorLogLevelForModule())
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          if (v32)
          {
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
LABEL_80:
              v40 = v35[v34];
              *buf = 136316162;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = "_RTCPTransport_ParsePacket";
              v105 = 1024;
              v106 = 2225;
              v107 = 1024;
              v108 = v17;
              v109 = 1024;
              v110 = v40;
              _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d j=%d awSizeAndFirstMBs=%d", buf, 0x28u);
            }
          }

          else
          {
            v38 = *MEMORY[0x1E6986650];
            v39 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_80;
              }
            }

            else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v41 = v35[v34];
              *buf = 136316162;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = "_RTCPTransport_ParsePacket";
              v105 = 1024;
              v106 = 2225;
              v107 = 1024;
              v108 = v17;
              v109 = 1024;
              v110 = v41;
              _os_log_debug_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEBUG, " [%s] %s:%d j=%d awSizeAndFirstMBs=%d", buf, 0x28u);
            }
          }
        }

        ++v34;
        ++v33;
        if (v34 >= ((2 * v20[1] - 2) & 0xFEu))
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    if ((*v11 & 0xC0) != 0x80)
    {
      v16 = 2147549191;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPTransport_ParsePacket_cold_1();
        }
      }

      return v16;
    }

    *(a2 + 8) = v8;
    if (v9 >= v7 || v9 < v6)
    {
      goto LABEL_231;
    }

    v10 = 0;
    v14 = v8 - 1;
    *v9++ = v11;
    ++v8;
    v15 = v13 >= v5 || v14 >= 9;
    v11 = v13;
  }

  while (!v15);
  if (v13 == v5)
  {
    goto LABEL_27;
  }

  v16 = 2147549191;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTCPTransport_ParsePacket_cold_2();
    }
  }

  return v16;
}

uint64_t _RTCPPacketCallback(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v6 = v3;
    v7 = _RTCPPacketCreate(v3);
    v12 = v7;
    if (!v7)
    {
      _RTCPPacketCallback_cold_2();
      v4 = v13;
      goto LABEL_13;
    }

    v8 = v7;
    v9 = _RTCPParseVTPPacket(v6, a2, v7);
    v10 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      v4 = 2149711929;
      if (v9 == -2145255367)
      {
LABEL_13:
        _RTCPPacketForget(v6, &v12);
        CheckOutHandleDebug();
        return v4;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPPacketCallback_cold_1();
        }
      }
    }

    else
    {
      v11 = *(v6 + 10848);
      if (v11)
      {
        (*(v11 + 16))(v11, *(v6 + 10840), v8);
      }
    }

    v4 = v10;
    goto LABEL_13;
  }

  return 2147549186;
}

unint64_t _RTCPPacketCreate(unint64_t result)
{
  if (result)
  {
    result = VCBoundsSafety_AllocatorAllocate(*(result + 10824), 1640, 0);
    if (result)
    {
      if (result + 1640 > v1 || (*(result + 1620) = 0, *(result + 104) = 0, *(result + 112) = 0, *(result + 96) = 0, result >= v1))
      {
        __break(0x5519u);
      }
    }
  }

  return result;
}

uint64_t _RTCPParseVTPPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[21] = *MEMORY[0x1E69E9840];
  *&v9[14] = unk_1DBD47770;
  *&v9[16] = xmmword_1DBD47780;
  memset(&v9[18], 170, 24);
  memset(v9, 170, 112);
  VCPacketInitialize(v9);
  VCGetVCPacketWithVTPPacket(a2, v9);
  _RTCPParseVCPacket(a1, v9, a3);
  v7 = v6;
  VCPacketInvalidate(v9);
  return v7;
}

unint64_t RTCPRegisterPacketCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    v8 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_4();
      }
    }

    return v8;
  }

  result = CheckInHandleDebug();
  if (!result)
  {
    v8 = 2147549186;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_3();
        return 2147549186;
      }
    }

    return v8;
  }

  v7 = result;
  if (*(result + 10848))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_1();
      }
    }

    CheckOutHandleDebug();
    return 2147549233;
  }

  if (result < result + 27800)
  {
    v9 = _Block_copy(a3);
    *(v7 + 10848) = v9;
    if (v9)
    {
      *(v7 + 10840) = a2;
      v10 = *(v7 + 8);
      if (v10 > 0x3FF)
      {
        if (*(v7 + 11296))
        {
          v8 = _RTPEnsureTransportStreamsActivated(v7);
        }

        else
        {
          v8 = 2147549226;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v16 = *(v7 + 8);
              v17 = 136316162;
              v18 = v14;
              v19 = 2080;
              v20 = "RTCPRegisterPacketCallback";
              v21 = 1024;
              v22 = 2492;
              v23 = 2048;
              v24 = a1;
              v25 = 1024;
              v26 = v16;
              _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTPHandle[%p], Socket[%d] is invalid", &v17, 0x2Cu);
              v8 = 2147549226;
            }
          }
        }
      }

      else
      {
        v11 = v7 + 10856;
        *(v7 + 10952) = 0u;
        *(v7 + 10968) = 0u;
        *(v7 + 10920) = 0u;
        *(v7 + 10936) = 0u;
        *(v7 + 10888) = 0u;
        *(v7 + 10904) = 0u;
        *(v7 + 10856) = 0u;
        *(v7 + 10872) = 0u;
        result = __darwin_check_fd_set_overflow(v10, (v7 + 10856), 0);
        if (result)
        {
          v12 = (v11 + ((v10 >> 3) & 0x1FFFFFFC));
          if (v12 >= v7 + 10984 || v12 < v11)
          {
            goto LABEL_33;
          }

          *v12 |= 1 << v10;
        }

        v8 = 0;
        *(v7 + 10832) = VTP_RegisterPacketCallback((v7 + 10856), a1, &__block_literal_global_18);
      }
    }

    else
    {
      RTCPRegisterPacketCallback_cold_2(a1, &v17);
      v8 = v17;
    }

    CheckOutHandleDebug();
    return v8;
  }

LABEL_33:
  __break(0x5519u);
  return result;
}

double _RTCPUnregisterPacketCallback(uint64_t a1)
{
  v2 = *(a1 + 10848);
  if (v2)
  {
    if (*(a1 + 10832) != -1)
    {
      VTP_UnregisterPacketCallback(*(a1 + 10832));
      *(a1 + 10832) = -1;
      v2 = *(a1 + 10848);
    }

    _Block_release(v2);
    result = 0.0;
    *(a1 + 10840) = 0u;
  }

  return result;
}

uint64_t RTCPUnregisterPacketCallback()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  if (*(v0 + 10848))
  {
    _RTCPUnregisterPacketCallback(v0);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTCPUnregisterPacketCallback_cold_1();
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPRecvRTCP(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = 2147549186;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    if (v4 == 0xFFFFFFFFLL)
    {
      return 2147549190;
    }

    if (!*(v4 + 11296))
    {
      v13[0] = 0;
      if ((VTP_Recvfrom(*(v4 + 8), v13) & 0x80000000) != 0)
      {
        v3 = *__error() | 0xC0010000;
        if (!a2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = _RTCPParseVTPPacket(v5, v13[0], a2);
        VTP_ReleasePacket(v13);
        if (!a2)
        {
          goto LABEL_22;
        }
      }

LABEL_9:
      if ((v3 & 0x80000000) != 0)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 104) = 0;
        *(a2 + 112) = 0;
        v6 = *(a2 + 96);
        if (v6)
        {
          CFRelease(v6);
          *(a2 + 96) = 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      if ((v3 & 0x80000000) == 0)
      {
LABEL_26:
        CheckOutHandleDebug();
        return v3;
      }

LABEL_23:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPRecvRTCP_cold_1();
        }
      }

      goto LABEL_26;
    }

    v13[0] = 0;
    v3 = _RTPEnsureTransportStreamsActivated(v4);
    if ((v3 & 0x80000000) == 0)
    {
      v7 = (v5 + 1420);
      v8 = v5[1420];
      v13[0] = v8;
      if (v8)
      {
LABEL_18:
        v11 = *(v8 + 204);
        *v7 = v11;
        if (!v11)
        {
          v5[1421] = v7;
        }

        memcpy(a2, v8, 0x668uLL);
        *(v8 + 8) = 0;
        *(v8 + 1) = 0u;
        *(v8 + 2) = 0u;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 5) = 0u;
        *(v8 + 13) = 0;
        *(v8 + 14) = 0;
        *(v8 + 12) = 0;
        goto LABEL_21;
      }

      v9 = v5[1412];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v10)
      {
        v3 = 4294954514;
        goto LABEL_21;
      }

      v3 = v10(v9);
      if ((v3 & 0x80000000) == 0)
      {
        v8 = *v7;
        v13[0] = *v7;
        goto LABEL_18;
      }
    }

LABEL_21:
    _RTCPPacketForget(v5, v13);
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  return v3;
}

uint64_t RTPGetLatestRTCPTimestamp(uint64_t a1, void *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 168);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTCPComputeRoundTripTimeMiddle32(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 20))
  {
    return 0;
  }

  v3 = NTPToMiddle32(a2);
  v4 = *(a1 + 20);
  v5 = v3 - *(a1 + 16);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RTCPInitializeReceptionReportBlock(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _RTCPInitializeReceptionReportBlock(v3, a2);
  CheckOutHandleDebug();
  return 0;
}

void RTCPCleanupPacketList(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _RTPTransportStreamRTCPCallback(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!a2)
  {
    _RTPTransportStreamRTCPCallback_cold_3();
    return *buf;
  }

  v2 = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    _RTPTransportStreamRTCPCallback_cold_2();
    return *buf;
  }

  v4 = v3;
  v5 = v3 + 27800;
  v6 = MEMORY[0x1E6986650];
  while (1)
  {
    v7 = _RTCPPacketCreate(v4);
    v16 = v7;
    if (!v7)
    {
      break;
    }

    _RTCPParseVCPacket(v4, v2, v7);
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      if (v8 != -2145255367 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v18 = v13;
          v19 = 2080;
          v20 = "_RTPTransportStreamRTCPCallback";
          v21 = 1024;
          v22 = 2706;
          v23 = 1024;
          v24 = v9;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTCP error[%x]", buf, 0x22u);
        }
      }
    }

    else
    {
      v10 = *(v4 + 10848);
      if (v10)
      {
        (*(v10 + 16))(v10, *(v4 + 10840), v16);
      }

      else
      {
        v11 = v16;
        v12 = v16 + 1632;
        *(v16 + 1632) = 0;
        **(v4 + 11368) = v11;
        *(v4 + 11368) = v12;
        v16 = 0;
      }
    }

    if (v4 >= v5)
    {
      goto LABEL_22;
    }

    _RTCPPacketForget(v4, &v16);
    v2 = *(v2 + 160);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if ((_RTPTransportStreamRTCPCallback_cold_1(v4 < v5) & 1) == 0)
  {
LABEL_22:
    __break(0x5519u);
  }

  v9 = 2147549187;
LABEL_15:
  _RTCPPacketForget(v4, &v16);
  CheckOutHandleDebug();
  return v9;
}

void _RTCPParseVCPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = -1431655766;
  if (*(a2 + 88) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_6();
      }
    }

    return;
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  if (CMBlockBufferGetDataPointer(*a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_1();
      }
    }

    return;
  }

  v6 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < 4)
  {
    return;
  }

  *(a3 + 104) = dataPointerOut;
  *(a3 + 112) = v6;
  *a3 = MicroToNTP(*(a2 + 128));
  *(a3 + 120) = 0;
  *(a3 + 1621) = *(a2 + 36);
  *(a3 + 1624) = *(a2 + 40);
  v7 = *(a2 + 34);
  if (*(a2 + 34))
  {
    *(a3 + 1620) = v7;
    if (v7 > 0xC)
    {
      goto LABEL_64;
    }

    memcpy((a3 + 1596), (a2 + 10), 2 * v7);
  }

  v9 = *(a3 + 104);
  v8 = *(a3 + 112);
  if (!v8 && v9)
  {
    goto LABEL_64;
  }

  v10 = a1 + 0x2000;
  v11 = *v9;
  if ((v11 & 0xFEE0) != 0xC880 && (v11 & 0xFF80) != 0xCC80 && (*(a1 + 10644) != 1 || (v11 >> 8) - 192 > 0xE || ((1 << (BYTE1(v11) + 64)) & 0x7003) == 0 || (v11 & 0xC0) != 0x80))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v26 = *v9;
        v27 = *(v10 + 2452);
        *buf = 136317186;
        v34 = v14;
        v35 = 2080;
        v36 = "_RTCPIsValidPacket";
        v37 = 1024;
        v38 = 2326;
        v39 = 1024;
        *v40 = 2326;
        *&v40[4] = 1024;
        *&v40[6] = v26 >> 8;
        *v41 = 1024;
        *&v41[2] = v26 >> 6;
        *v42 = 1024;
        *&v42[2] = v26 & 0x1F;
        *v43 = 1024;
        *&v43[2] = (v26 >> 5) & 1;
        v44 = 1024;
        v45 = v27;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP Packet(packetType=%d, version=%d, count=%d, padding=%d) useReducedSizePackets=%d", buf, 0x40u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_2();
      }
    }

    return;
  }

  if (*(a1 + 10647) == 1 && *(a2 + 140) != *(a1 + 8544))
  {
    os_unfair_lock_lock((a1 + 9028));
    v12 = SRTPUpdateRTCPReceiveSSRCAndDeriveNewKeys((a1 + 8424), *(a2 + 140), a1 + 8872);
    if (v12 < 0)
    {
      v22 = v12;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 8544);
          v29 = *(a2 + 140);
          *buf = 136316674;
          v34 = v23;
          v35 = 2080;
          v36 = "_RTCPParseVCPacket";
          v37 = 1024;
          v38 = 2381;
          v39 = 2048;
          *v40 = a1;
          *&v40[8] = 1024;
          *v41 = v28;
          *&v41[4] = 1024;
          *v42 = v29;
          *&v42[4] = 1024;
          *v43 = v22;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed updating the remote SSRC onto the SRTP context. dwSSRC=%u packetSSRC=%u error=(%X)", buf, 0x38u);
        }
      }

      os_unfair_lock_unlock((a1 + 9028));
      return;
    }

    os_unfair_lock_unlock((a1 + 9028));
    v9 = *(a3 + 104);
    v8 = *(a3 + 112);
  }

  if ((v8 & 0x80000000) != 0 || v8 > v8)
  {
    goto LABEL_64;
  }

  v13 = SRTCPVerifyAuthenticationTag((a1 + 8424), v9, v8, &v32);
  if (v13 < 0 && v13 != -2145255368)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_3();
      }
    }

    return;
  }

  if (v32 <= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_5();
      }
    }

    return;
  }

  v16 = (v32 - 8);
  *buf = v32 - 8;
  if (v32 == 8)
  {
    v17 = 8;
    goto LABEL_60;
  }

  v19 = *(a3 + 104);
  v18 = *(a3 + 112);
  v20 = v19 + 8;
  if (v19 + 8 > v19 + v18 || v19 > v20 || v18 - 8 < v16)
  {
LABEL_64:
    __break(0x5519u);
    return;
  }

  v21 = SRTCPDecrypt(a1 + 8424, v20, v16, buf);
  if ((v21 & 0x80000000) == 0 || v21 == -2145255368)
  {
    v17 = *buf + 8;
LABEL_60:
    v32 = v17;
    if ((_RTCPTransport_ParsePacket(a1, a3, v17) & 0x80000000) == 0)
    {
      v25 = *a2;
      if (*a2)
      {
        v25 = CFRetain(v25);
      }

      *(a3 + 96) = v25;
      *(a1 + 168) = *(a2 + 128);
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTCPParseVCPacket_cold_4();
    }
  }
}

uint64_t _RTCPAddCustomReport(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v7 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v6)
  {
    memset(&v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v6);
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  if (*a3 != 1297568338)
  {
    v9 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (*a3 != 1297568594)
    {
      goto LABEL_17;
    }

    v7 = v6 - 17;
    if (v6 >= 0x11)
    {
      v10 = micro();
      v11 = MicroToNTP(v10);
      LODWORD(v12) = *(a2 + 312);
      v13 = v12;
      LODWORD(v12) = *(a2 + 700);
      v14 = v12;
      v15 = NTPToMicro(*(a2 + 304));
      v16 = _RTPSendTimestampWithMediaSampleTime(a2, (v13 + v14 * (v10 - v15)));
      *v8 = bswap32(HIDWORD(v11));
      *(v8 + 1) = bswap32(v11);
      v17 = bswap32(*(a2 + 204));
      *(v8 + 2) = bswap32(v16);
      *(v8 + 3) = v17;
      v8[16] = v8[16] & 0xF0 | *(a2 + 616) & 0xF;
      v18 = NTPToMiddle32(v11);
      v19 = *(a2 + 616);
      v20 = (a2 + 620 + 4 * v19);
      if (v20 >= a2 + 684)
      {
        goto LABEL_42;
      }

      if (v20 < a2 + 620)
      {
        goto LABEL_42;
      }

      *v20 = v18;
      *(a2 + 616) = (v19 + 1) & 0xF;
      v9 = v8 + 17;
      if (v8 + 17 > &v8[v6] || v8 > v9)
      {
        goto LABEL_42;
      }

      goto LABEL_17;
    }

    return 2147549187;
  }

  if (!v6)
  {
    return 2147549187;
  }

  v21 = micro();
  v22 = MicroToNTP(v21);
  v9 = v8 + 1;
  if (v8 + 1 > &v8[v6])
  {
    goto LABEL_42;
  }

  *v8 = *v8 & 0xF0 | *(a2 + 616) & 0xF;
  v23 = NTPToMiddle32(v22);
  v24 = *(a2 + 616);
  v25 = (a2 + 620 + 4 * v24);
  if (v25 >= a2 + 684)
  {
    goto LABEL_42;
  }

  if (v25 < a2 + 620)
  {
    goto LABEL_42;
  }

  *v25 = v23;
  *(a2 + 616) = (v24 + 1) & 0xF;
  if (v8 > v9)
  {
    goto LABEL_42;
  }

  v7 = v6 - 1;
LABEL_17:
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = &v9[v7];
    v28 = v7 - 12 * (v26 - 1) - 12;
    v29 = *(a3 + 8) + 16;
    do
    {
      v30 = v7 >= 0xC;
      v7 -= 12;
      if (!v30)
      {
        return 2147549187;
      }

      *v9 = bswap32(*(v29 - 16));
      v31 = *(v29 + 16);
      *(v9 + 2) = *(v9 + 2) & 0xFFF0 | v31 & 0xF;
      *(v9 + 3) = bswap32(1000 * *(v29 + 8));
      v9[10] = *(v29 - 12);
      *(v9 + 4) = bswap32(*(v29 - 4)) >> 16;
      v32 = 16 * *v29;
      if (HIWORD(*v29))
      {
        LOWORD(v32) = -16;
      }

      *(v9 + 2) = v32 & 0xFFF0 | v31 & 0xF;
      v33 = *(v29 + 12);
      if (v33 >= 0xFF)
      {
        LOBYTE(v33) = -1;
      }

      v9[11] = v33;
      if ((v9 + 12) > v27 || v9 > v9 + 12)
      {
        goto LABEL_42;
      }

      v29 += 36;
      v9 += 12;
      --v26;
    }

    while (v26);
    v7 = v28;
  }

  v34 = v6 - v7;
  if (v6 < v7)
  {
LABEL_42:
    __break(0x5519u);
  }

  if (v6 == v7)
  {
    return 0;
  }

  v36 = a1[1];
  v41 = v36;
  if ((v34 & 0x80000000) != 0 || v34 > v34 || (v36 & 0x80000000) != 0 || v36 > v36)
  {
    goto LABEL_42;
  }

  result = CompressionUtils_CompressWithZLib();
  if ((result & 0x80000000) == 0)
  {
    v37 = v41;
    v38 = a1[1];
    v39 = *a1 + v41;
    if (v39 > *a1 + v38 || *a1 > v39)
    {
      goto LABEL_42;
    }

    result = 0;
    *a1 = v39;
    a1[1] = v38 - v37;
  }

  return result;
}

unint64_t _RTCPFinalizePacket(unint64_t result, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  if (result + 4 <= result + a2)
  {
    v4 = a4 + 3;
    v5 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    *result = *result & 0xFFDF | (32 * (v5 != a4));
    if (v5 == a4)
    {
LABEL_8:
      v6 = 0;
      *a3 = a4;
      *(result + 2) = bswap32((v4 >> 2) - 1) >> 16;
      return v6;
    }

    if (v5 > a2)
    {
      return 2147549187;
    }

    v7 = (result + v5 - 1);
    if (v7 < result + a2 && v7 >= result)
    {
      *v7 = v5 - a4;
      a4 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t _RTCPAddPSFBAlfbPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, unsigned int *a5)
{
  v5 = 2147549187;
  if (a3 < 4)
  {
    return v5;
  }

  *a2 = *a2 & 0x20 | 0xCE8F;
  v6 = a3 - 16;
  if (a3 - 16 > 0xFFFFFFFFFFFFFFF3)
  {
    return v5;
  }

  v7 = *a5;
  v8 = bswap32(*(a1 + 4832));
  *(a2 + 4) = bswap32(*(a1 + 200));
  *(a2 + 8) = v8;
  *(a2 + 12) = bswap32(v7);
  if (v7 == 5)
  {
    if (v6 >= 4)
    {
      *(a2 + 16) = bswap32(a5[2]);
      v9 = a2 + 20;
      goto LABEL_9;
    }

    return v5;
  }

  if (v7 != 6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2147549191;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 2147549191;
    }

    _RTCPAddPSFBAlfbPacket_cold_1();
    return 2147549191;
  }

  if (v6 < 8)
  {
    return v5;
  }

  v9 = a2 + 24;
  *(a2 + 22) = *(*(a5 + 1) + 6);
  *(a2 + 23) = *(*(a5 + 1) + 7);
  *(a2 + 16) = bswap32(**(a5 + 1));
  *(a2 + 20) = bswap32(*(*(a5 + 1) + 4)) >> 16;
LABEL_9:
  v10 = v9 - a2;

  return _RTCPFinalizePacket(a2, a3, a4, v10);
}

uint64_t _RTCPProcessCommonHeader(__int16 **a1)
{
  result = 2147549192;
  v3 = a1[1];
  if (v3 >= 4)
  {
    v4 = *a1;
    v5 = (*a1 + 2);
    v6 = **a1;
    if ((v6 & 0xC0) != 0x80)
    {
      return 2147549193;
    }

    v7 = 2 * v4[1];
    if (v3 >= v7 * 2 + 4)
    {
      if ((v6 & 0x20) != 0)
      {
        v8 = HIBYTE(v4[v7 + 1]);
        if (v3 - 4 < v8)
        {
          return 2147549191;
        }

        v9 = v3 >= v8;
        v3 -= v8;
        if (!v9)
        {
          goto LABEL_14;
        }

        a1[1] = v3;
      }

      if (v5 > v4 + v3)
      {
LABEL_14:
        __break(0x5519u);
        return result;
      }

      result = 0;
      *a1 = v5;
      a1[1] = (v3 - 4);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_15_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

uint64_t VCFBOUtils_ObjectCreate(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    return (a5 << 16) | 0x80000001;
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    if (v7 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = -v7;
    }

    return v10 | (a5 << 16) | 0xD0000000;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  return v8;
}

uint64_t VCFBOUtils_IsKindOfClass(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return CMBaseObjectGetVTable() == a2;
  }

  VCFBOUtils_IsKindOfClass_cold_1(&v3);
  return v3;
}

void OUTLINED_FUNCTION_37_1()
{
  *v2 = 0;
  *v1 = v4;
  *v0 = v3;
}

void OUTLINED_FUNCTION_39_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_1DB650C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB651738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCAudioStreamSourceContextTransportCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t _VCAudioStreamSyncDelegateCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void _VCAudioStream_ProcessDelegateEventQueue(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v2 = micro();
  }

  v3 = CMSimpleQueueDequeue(*(a1 + 1760));
  if (v3)
  {
    v11 = v3;
    v12 = 0;
    v13 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v11[4];
          v17 = *(v11 + 1);
          *buf = 136316418;
          v20 = v14;
          v21 = 2080;
          v22 = "_VCAudioStream_ProcessDelegateEventQueue";
          v23 = 1024;
          v24 = 3386;
          v25 = 2048;
          v26 = a1;
          v27 = 1024;
          v28 = v16;
          v29 = 2048;
          v30 = v17;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Process event: stream=%p type=%d entry delegate=%p", buf, 0x36u);
        }
      }

      v18 = v11[4];
      if (v18 == 1)
      {
        _VCAudioStream_DeregisterSyncDelegateEvent(a1, v11);
      }

      else if (!v18)
      {
        _VCAudioStream_RegisterSyncDelegateEvent(a1, v11);
      }

      v11 = CMSimpleQueueDequeue(*(a1 + 1760));
      ++v12;
    }

    while (v11);
  }

  LogProfileTimeOverLimit_0(v2, 0, v4, v5, v6, v7, v8, v9, v10, "_VCAudioStream_ProcessDelegateEventQueue");
}

void _VCAudioStream_ReleaseSyncDelegateEvent(uint64_t *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
      if (a2)
      {
        dispatch_semaphore_signal(*(v2 + 24));
      }

      dispatch_release(*(v2 + 24));

      free(v2);
    }
  }
}

void _VCAudioStream_UpdateSourceNTPToRTPTimeMappingCallback(uint64_t a1, int a2, double a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFArrayGetCount(*(a1 + 1768));
    v7 = (Count - 1);
    if (Count - 1 >= 0)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1768), v7);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v13 = v9;
            v14 = 2080;
            v15 = "_VCAudioStream_UpdateSourceNTPToRTPTimeMappingCallback";
            v16 = 1024;
            v17 = 3557;
            v18 = 1024;
            v19 = 3557;
            v20 = 2112;
            v21 = ValueAtIndex;
            v22 = 2048;
            v23 = a3;
            v24 = 1024;
            v25 = a2;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m:%d: updating syncSourceDelegates=(%@) with ntpTime=%.6f and rtpTimestamp=%u", buf, 0x3Cu);
          }
        }

        VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp(ValueAtIndex, a2, a3);
      }

      while (v7-- > 0);
    }
  }
}

void _VCAudioStream_StreamSwitchCallback(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316418;
      v9 = v6;
      v10 = 2080;
      v11 = "_VCAudioStream_StreamSwitchCallback";
      v12 = 1024;
      v13 = 3601;
      v14 = 2048;
      v15 = a1;
      v16 = 1024;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d audioStream=%p switched from streamID=%u to streamID=%u", &v8, 0x32u);
    }
  }
}

void _VCAudioStream_DTMFEventCallback(uint64_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCAudioStream_DTMFEventCallback_block_invoke;
    block[3] = &unk_1E85F37A0;
    block[4] = a1;
    v4 = a2;
    dispatch_async(v2, block);
  }
}

void VCAudioStream_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  ++*(a1 + 32);
  v4 = *(a1 + 184);
  _VCAudioStream_ProcessDelegateEventQueue(v4);
  v56 = 0;
  v57 = -1431655766;
  v55 = 0.0;
  VCAudioReceiver_PullAudioSamples(*(a1 + 24), a2, &v56, &v55, 0, &v57, 0);
  v5 = *(a1 + 36);
  if (v5 != -1.0)
  {
    VCAudioBufferList_ApplyGain(a2, v5);
  }

  v6 = v55;
  v7 = micro();
  v8 = v7;
  v9 = *(a1 + 48);
  v10 = v9 != 0.0 || v7 <= v6;
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = *(a1 + 168);
    v12 = *(a1 + 184);
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    [v11 vcMediaStream:v12 didReceiveFirstFrameWithTime:buf];
    [*(a1 + 184) reportingAlgosAudioStreamEvent:0];
  }

  if (v9 < v6)
  {
    if (*(a1 + 42) == 1)
    {
      ++*(a1 + 56);
    }

    *(a1 + 48) = v6;
  }

  if (v8 - v6 <= *(a1 + 64) * (*(a1 + 76) + 1) / 3.0)
  {
    if (*(a1 + 56) >= 2 && *(a1 + 42) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 56);
          *buf = 136316418;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioStream_UpdateRemoteMediaStallState";
          *&buf[22] = 1024;
          *&buf[24] = 424;
          *&buf[28] = 2048;
          *&buf[30] = v6;
          *&buf[38] = 2048;
          *&buf[40] = v8;
          LOWORD(v71) = 1024;
          *(&v71 + 2) = v22;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Unstalling lastReceivedPacketTime %f currentTime %f packetCount %d", buf, 0x36u);
        }
      }

      *(a1 + 42) = 0;
      *(a1 + 76) = 0;
      if (objc_opt_respondsToSelector())
      {
        v16 = *(a1 + 168);
        v17 = *(a1 + 184);
        v18 = *(a1 + 42);
        v19 = 0.0;
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "_VCAudioStream_UpdateRemoteMediaStallState";
        *&buf[22] = 1024;
        *&buf[24] = 414;
        *&buf[28] = 2048;
        *&buf[30] = v6;
        *&buf[38] = 2048;
        *&buf[40] = v8;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Stalling lastReceivedPacketTime %f currentTime %f", buf, 0x30u);
      }
    }

    v15 = *(a1 + 76);
    if (!v15)
    {
      *(a1 + 42) = 1;
      *(a1 + 56) = 0;
    }

    *(a1 + 76) = v15 + 1;
    if (objc_opt_respondsToSelector())
    {
      v16 = *(a1 + 168);
      v17 = *(a1 + 184);
      v18 = *(a1 + 42);
      v19 = v8 - v6;
LABEL_21:
      [v16 vcMediaStream:v17 remoteMediaStalled:v18 duration:v19];
    }
  }

  if (*(a1 + 41) == 1)
  {
    VCAudioBufferList_ZeroMemory(a2);
  }

  v23 = micro();
  v24 = *(a1 + 184);
  if (v24)
  {
    v25 = *(v24 + 1440);
    if (v25)
    {
      v26 = v56;
      do
      {
        VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp(v25[1], v26, v23);
        v25 = *v25;
      }

      while (v25);
    }
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 192) stream:*(a1 + 184) addAudioSampleBuffer:a2 timestamp:(micro() * 1000.0)];
    memset(buf, 0, 40);
    VCAudioReceiver_GetJitterBufferMetrics(*(a1 + 24), buf);
    for (i = *(a1 + 80); i; i = *i)
    {
      VCAudioStreamTransport_SubmitWRMReportWithJitterBufferMetrics(i[1], buf);
    }
  }

  v54 = -21846;
  if (!VCAudioReceiver_GetActiveStreamId(*(a1 + 24), &v54) && v54 == *(a1 + 144) && *(a1 + 160) == 1)
  {
    v28 = *(a1 + 184);
    if (v28)
    {
      v29 = v55;
      v30 = v55 - *(v28 + 1568);
      if (v30 > 1.0 || v23 - *(v28 + 1576) > 1.0)
      {
        v32 = *(a1 + 152);
        if (v32)
        {
          *&v80 = 0;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v71 = 0u;
          memset(buf, 0, sizeof(buf));
          VCRateControlGetStatistics(v32, 3, buf);
          LODWORD(v33) = DWORD1(v71);
          v34 = v33 / 1000.0;
          OWRD = VCAudioReceiver_GetOWRD(*(a1 + 24));
          v36 = v72;
          *(v28 + 1584) = *&buf[24] / 100.0 + *(v28 + 1584);
          ++*(v28 + 1592);
          *(v28 + 1576) = v23;
          PercentPacketsLateAndMissing = VCAudioReceiver_GetPercentPacketsLateAndMissing(*(a1 + 24));
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v39 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(v28 + 1600);
              *v58 = 136316674;
              v59 = v38;
              v60 = 2080;
              v61 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
              v62 = 1024;
              v63 = 458;
              v64 = 2048;
              v65 = v34;
              v66 = 1024;
              *v67 = v36;
              *&v67[4] = 2048;
              *&v67[6] = v40 * 100.0;
              v68 = 2048;
              v69 = PercentPacketsLateAndMissing * 100.0;
              _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d RTT=%.3f, TxBW=%ub/sec, PLR=%.2f%%, PLaMR=%.2f%%", v58, 0x40u);
            }
          }

          if (v30 > 1.0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v43 = *(v28 + 1560);
                *v58 = 136316418;
                v59 = v41;
                v60 = 2080;
                v61 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
                v62 = 1024;
                v63 = 463;
                v64 = 2048;
                v65 = v34;
                v66 = 2048;
                *v67 = OWRD;
                *&v67[8] = 1024;
                *&v67[10] = v43;
                _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Abnormal OWRD Verification: rtt=%f, owrd=%f, _abnormalOWRDCount=%d", v58, 0x36u);
              }
            }

            *(v28 + 1568) = v29;
            v44 = v34 <= 0.0 || OWRD <= 2.0;
            v45 = OWRD;
            if (!v44 && v34 * 5.0 < v45)
            {
              ++*(v28 + 1560);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v51 = VRTraceErrorLogLevelToCSTR();
                v52 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v53 = *(v28 + 1560);
                  *v58 = 136316418;
                  v59 = v51;
                  v60 = 2080;
                  v61 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
                  v62 = 1024;
                  v63 = 470;
                  v64 = 2048;
                  v65 = v34;
                  v66 = 2048;
                  *v67 = v45;
                  *&v67[8] = 1024;
                  *&v67[10] = v53;
                  _os_log_error_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d Abnormal OWRD detected: rtt=%f, owrd=%f, _abnormalOWRDCount=%d", v58, 0x36u);
                }
              }
            }

            else
            {
              *(v28 + 1560) = 0;
            }

            if (*(v28 + 1560) >= 4u)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VCAudioStream_PullAudioSamples_cold_2();
                }
              }

              VCAudioReceiver_ResetLagReference(*(a1 + 24));
            }
          }
        }

        else
        {
          VCAudioStream_PullAudioSamples_cold_3();
        }
      }
    }

    else
    {
      VCAudioStream_PullAudioSamples_cold_4();
    }

    if (v23 - *(v28 + 1608) >= 5.0)
    {
      *(v28 + 1600) = *(v28 + 1584) / *(v28 + 1592);
      *(v28 + 1584) = 0;
      *(v28 + 1592) = 0;
      *(v28 + 1608) = v23;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    memset(buf, 0, sizeof(buf));
    v47 = *(a1 + 200);
    if (v47)
    {
      WRMIncrementTime(v47);
      VCAudioTransmitter_UpdateWrmMetrics(*(a1 + 208), *(a1 + 200));
      VCAudioReceiver_UpdateWrmMetrics(*(a1 + 24), *(a1 + 200));
      if (WRMGenerateReport(*(a1 + 200), buf))
      {
        WRMSubmitReport(*(a1 + 200), buf);
      }
    }
  }

  _VCAudioStream_UpdateSoundMeter(v4, a1 + 8, 0, a2);
  if (*(v4 + 1856) == 1)
  {
    VCAudioPowerSpectrumSource_PushAudioSamples(*(v4 + 1552), a2);
  }

  v48 = *(v4 + 1976);
  if (v48)
  {
    VCAudioMachineLearningCoordinator_PushAudioSamples(v48, *(v4 + 640), a2);
  }

  v49 = *(v4 + 1904);
  if (v49)
  {
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    VCMediaRecorder_AddRemoteAudioSampleBuffer(v49, a2, Timestamp);
  }

  if (*a1 == 1)
  {
    VCAudioBufferList_ZeroMemory(a2);
  }

  VCMediaStream_CheckForDecryptionTimeout(v4);
}

void VCAudioStream_SetAllowedCodecConfigurations(uint64_t a1, const __CFDictionary *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 1232);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 1232);
          *buf = 136316162;
          v24 = v6;
          v25 = 2080;
          v26 = "VCAudioStream_SetAllowedCodecConfigurations";
          v27 = 1024;
          v28 = 2108;
          v29 = 2048;
          v30 = a1;
          v31 = 2048;
          v32 = v8;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d stream=%p audioTransmitter=%p", buf, 0x30u);
        }
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = *(a1 + 1816);
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{VCPayloadUtils_CodecTypeForPayload(objc_msgSend(objc_msgSend(v16, "config"), "payload"))}];
              if (CFDictionaryContainsKey(a2, v17))
              {
                CFArrayAppendValue(v10, v16);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
          }

          while (v13);
        }

        VCAudioTransmitter_SetAllowedPayloads(*(a1 + 1232), v10);
        CFRelease(v10);
      }

      else
      {
        VCAudioStream_SetAllowedCodecConfigurations_cold_1();
      }
    }

    else
    {
      VCAudioStream_SetAllowedCodecConfigurations_cold_2(ErrorLogLevelForModule);
    }
  }

  else
  {
    VCAudioStream_SetAllowedCodecConfigurations_cold_3();
  }
}

void VCAudioStream_SetAudioPlayoutDelay(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    *(a1 + 1888) = a2;
    v4 = *(a1 + 1352);
    if (v4)
    {

      VCAudioReceiver_SetAudioPlayoutDelay(v4, a2, a3);
    }
  }

  else
  {
    VCAudioStream_SetAudioPlayoutDelay_cold_1();
  }
}

void VCAudioStream_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (pthread_rwlock_tryrdlock((a1 + 936)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v35 = v4;
          v36 = 2080;
          v37 = "VCAudioStream_PushAudioSamples";
          v38 = 1024;
          v39 = 3352;
          v40 = 2048;
          v41 = a1;
          v42 = 1024;
          Timestamp = VCAudioBufferList_GetTimestamp(a2);
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCAudioStream[%p] IOProc:  Missing grabbing lock onCaptureSound at %u", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (*(a1 + 408) == 2)
      {
        v6 = VCAudioBufferList_GetTimestamp(a2);
        HostTime = VCAudioBufferList_GetHostTime(a2);
        SampleCount = VCAudioBufferList_GetSampleCount(a2);
        HostTimeJumpSize = VCAudioBufferList_GetHostTimeJumpSize(a2);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(Mutable, @"VCASHostTimeJumpSize", [MEMORY[0x1E696AD98] numberWithDouble:HostTimeJumpSize * 1000.0]);
        reportingAudioStreamEvent();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v11 = &OBJC_IVAR___AVCMediaAnalyzerResult__analysisDuration;
        v12 = v6;
        if (*(a1 + 432) != 6)
        {
          v13 = *(a1 + 896);
          if (v13 == 0.0)
          {
            v22 = 0;
          }

          else
          {
            v14 = HostTime - v13;
            v15 = *(a1 + 1144) / SampleCount;
            v16 = SampleCount * llround(v14 * v15);
            if (v16 != SampleCount)
            {
              v17 = v6 - *(a1 + 924);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v32 = VRTraceErrorLogLevelToCSTR();
                log = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v30 = *(a1 + 924);
                  v31 = *(a1 + 896);
                  *buf = 136317954;
                  v35 = v32;
                  v36 = 2080;
                  v37 = "_VCAudioStream_ComputePacketTimestampWithInputTimestamp";
                  v38 = 1024;
                  v39 = 223;
                  v40 = 2080;
                  v41 = "_VCAudioStream_ComputePacketTimestampWithInputTimestamp";
                  v42 = 1024;
                  Timestamp = v17;
                  v44 = 1024;
                  v45 = v30;
                  v46 = 1024;
                  v47 = v6;
                  v48 = 2048;
                  v49 = v14;
                  v50 = 1024;
                  v51 = v16;
                  v52 = 2048;
                  v53 = v31;
                  v54 = 2048;
                  v55 = HostTime;
                  v56 = 1024;
                  v57 = v16;
                  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %s Timestamp jumped=%u (%u to %u), host time=%f (samples=%d) (%f to %f). Adjustment=%d", buf, 0x62u);
                }
              }

              v18 = *(a1 + 1144);
              if (v18 != 0.0)
              {
                v19 = (1000 * v17) / v18;
                v20 = atomic_load((a1 + 1808));
                v21 = v20;
                if (v19 >= v20)
                {
                  v21 = v19;
                }

                atomic_fetch_add((a1 + 1792), 1u);
                atomic_fetch_add((a1 + 1800), v19);
                atomic_store(v21, (a1 + 1808));
              }

              SampleCount = v16;
            }

            v22 = (([objc_msgSend(*(a1 + 1232) currentAudioPayloadConfig] * SampleCount) / *(a1 + 1144));
            v11 = &OBJC_IVAR___AVCMediaAnalyzerResult__analysisDuration;
          }

          v12 = (*(a1 + v11[845]) + v22);
        }

        if ([*(a1 + 1200) shouldTransmitDTMFWithTimestamp:v12])
        {
          [*(a1 + 1200) sendingDTMFEventWithTimeStamp:v12 interval:(*(a1 + 1144) * (v12 - *(a1 + v11[845])) / objc_msgSend(objc_msgSend(*(a1 + 1232) RTPHandle:{"currentAudioPayloadConfig"), "codecSampleRate")), objc_msgSend(objc_msgSend(a1, "defaultTransport"), "rtpHandle")}];
          v23 = v6;
        }

        else
        {
          VCAudioBufferList_SetTime(a2, v12, HostTime);
          v24 = *(a1 + 1293);
          if (v24 != [*(a1 + 1232) isCurrentDTXEnabled])
          {
            [*(a1 + 1232) setCurrentDTXEnable:*(a1 + 1293)];
          }

          VCAudioTransmitter_PushAudioSamples(*(a1 + 1232), a2);
          v23 = v6;
          VCAudioBufferList_SetTime(a2, v6, HostTime);
        }

        *(a1 + v11[845]) = v12;
        *(a1 + 924) = v23;
        *(a1 + 896) = HostTime;
        v25 = *(a1 + 1752) + 1;
        *(a1 + 1752) = v25;
        HIDWORD(v26) = 652835029 * v25;
        LODWORD(v26) = 652835029 * v25;
        if ((v26 >> 2) <= 0x83126E)
        {
          VCAudioTransmitter_ReportAWDMetrics(*(a1 + 1232));
        }
      }

      _VCAudioStream_UpdateSoundMeter(a1, a1 + 1312, 1, a2);
      if (*(a1 + 1856) == 1)
      {
        VCAudioPowerSpectrumSource_PushAudioSamples(*(a1 + 1544), a2);
      }

      v27 = *(a1 + 1968);
      if (v27)
      {
        VCAudioMachineLearningCoordinator_PushAudioSamples(v27, *(a1 + 632), a2);
      }

      v28 = *(a1 + 1904);
      if (v28)
      {
        v29 = VCAudioBufferList_GetTimestamp(a2);
        VCMediaRecorder_AddLocalAudioSampleBuffer(v28, a2, v29);
      }

      pthread_rwlock_unlock((a1 + 936));
    }
  }
}

void _VCAudioStream_UpdateSoundMeter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 1)
  {
    v5 = VCFFTMeter_Compute(*(a2 + 8), a4);
    if (*(a1 + 256))
    {
      v6 = *(a1 + 264);
      if (v6)
      {
        v6();
      }
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void VCAudioStream_PushRemainingSamples(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (pthread_rwlock_tryrdlock((a1 + 936)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315906;
        v5 = v2;
        v6 = 2080;
        v7 = "VCAudioStream_PushRemainingSamples";
        v8 = 1024;
        v9 = 3365;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCAudioStream[%p] IOProc: Missing grabbing lock onCaptureSound", &v4, 0x26u);
      }
    }
  }

  else
  {
    VCAudioTransmitter_PushRemainingSamples(*(a1 + 1232));

    pthread_rwlock_unlock((a1 + 936));
  }
}

_DWORD *_VCAudioStream_NewSyncDelegateEvent(int a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040F8598106uLL);
  v6[4] = a1;
  *(v6 + 1) = a3;
  v7 = a3;
  v8 = *(a2 + 1872);
  *(v6 + 3) = v8;
  dispatch_retain(v8);
  return v6;
}

void _VCAudioStream_RegisterSyncDelegateEvent(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 8);
      *buf = 136316674;
      v10 = v4;
      v11 = 2080;
      v12 = "_VCAudioStream_RegisterSyncDelegateEvent";
      v13 = 1024;
      v14 = 3432;
      v15 = 2048;
      v16 = a1;
      v17 = 2048;
      v18 = a2;
      v19 = 1024;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Registering audioStream=%p entry=%p entryType=%d delegate=%p", buf, 0x40u);
    }
  }

  if ((VCSingleLinkedListPush(a1 + 1440, a2) & 1) == 0)
  {
    _VCAudioStream_ReleaseSyncDelegateEvent(&v8, 0);
  }
}

void _VCAudioStream_DeregisterSyncDelegateEvent(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 8);
      *buf = 136316674;
      *&buf[4] = v4;
      v10 = 2080;
      v11 = "_VCAudioStream_DeregisterSyncDelegateEvent";
      v12 = 1024;
      v13 = 3423;
      v14 = 2048;
      v15 = a1;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Deregistering audioStream=%p entry=%p entryType=%d delegate=%p", buf, 0x40u);
    }
  }

  *buf = VCSingleLinkedListRemove(a1 + 1440, a2);
  if (*buf)
  {
    _VCAudioStream_ReleaseSyncDelegateEvent(buf, 0);
  }

  _VCAudioStream_ReleaseSyncDelegateEvent(&v8, 1);
}

void CodecRateModeChangeNotificationCallback(void *a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  v6 = *(a2 + 2);
  [a1 handleCodecModeChangeEvent:&v5];
  objc_autoreleasePoolPop(v4);
}

void _VCAudioStream_ActiveStreamChangeCallback(uint64_t a1, __int16 a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = *(a1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCAudioStream_ActiveStreamChangeCallback_block_invoke;
    block[3] = &unk_1E85F41F8;
    block[4] = a1;
    v7 = a2;
    dispatch_async(v5, block);
  }

  else
  {
    _VCAudioStream_ActiveStreamChangeCallback_cold_1();
  }

  objc_autoreleasePoolPop(v4);
}

void LogProfileTimeOverLimit_0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v11 = micro() - a1;
    if (v11 > 0.00300000003)
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
      vsnprintf(__str, 0x100uLL, "%s: Iterations=%d", &a10);
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
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_45()
{

  return [v0 reportingAgent];
}

uint64_t VCMediaNegotiationBlobV2ReadFrom(id *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v22) = 0;
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

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v17 = objc_alloc_init(VCMediaNegotiationBlobV2GeneralInfo);

            a1[4] = v17;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2GeneralInfoReadFrom(v17, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
          case 2:
            v20 = objc_alloc_init(VCMediaNegotiationBlobV2BandwidthSettings);

            a1[1] = v20;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2BandwidthSettingsReadFrom(v20, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
          case 3:
            v15 = objc_alloc_init(VCMediaNegotiationBlobV2CodecFeatures);

            a1[3] = v15;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2CodecFeaturesReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v19 = objc_alloc_init(VCMediaNegotiationBlobV2MomentsSettings);

          a1[6] = v19;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2MomentsSettingsReadFrom(v19, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }

        if (v12 == 7)
        {
          v16 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroup);
          [a1 addStreamGroups:v16];

          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2StreamGroupReadFrom(v16, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v18 = objc_alloc_init(VCMediaNegotiationBlobV2MicrophoneSettingsU1);

          a1[5] = v18;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2MicrophoneSettingsU1ReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(VCMediaNegotiationBlobV2CameraSettingsU1);

          a1[2] = v13;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2CameraSettingsU1ReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_48:
          PBReaderRecallMark();
          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCScreenCapture_setRepeatFrameAttributes(opaqueCMSampleBuffer *a1, int a2)
{
  if (a1)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v4 = *MEMORY[0x1E6983C38];
      v5 = MEMORY[0x1E695E4D0];
      if (!a2)
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      v6 = *v5;

      CVBufferSetAttachment(ImageBuffer, v4, v6, kCVAttachmentMode_ShouldPropagate);
    }

    else
    {
      _VCScreenCapture_setRepeatFrameAttributes_cold_1();
    }
  }

  else
  {
    _VCScreenCapture_setRepeatFrameAttributes_cold_2();
  }
}

CMSampleBufferRef _VCScreenCapture_CreateFrameInternal(uint64_t a1, CMSampleBufferRef cf, int a3, char a4, uint64_t a5)
{
  v77[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 472) != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 472);
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_CreateFrameInternal";
        *&buf[22] = 1024;
        *&buf[24] = 565;
        *&buf[28] = 1024;
        *&buf[30] = v12;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Source frame transform has changed. old transform=%d -> new transform=%d", buf, 0x28u);
      }
    }

    *(a1 + 472) = a3;
  }

  if ((a4 & 1) == 0)
  {
    _VCScreenCapture_UpdateShouldClearScreen(a1, 0);
  }

  CFRetain(cf);
  ImageBuffer = CMSampleBufferGetImageBuffer(cf);
  if (!ImageBuffer)
  {
    goto LABEL_102;
  }

  v14 = ImageBuffer;
  memset(&v70, 170, sizeof(v70));
  CMSampleBufferGetOutputPresentationTimeStamp(&v70, cf);
  v15 = *MEMORY[0x1E6983C38];
  v16 = CMGetAttachment(cf, *MEMORY[0x1E6983C38], 0);
  v69 = a4;
  if ((a4 & 1) == 0 && (*(a1 + 484) & 1) == 0)
  {
    *(a1 + 484) = 1;
    extraColumnsOnRight.value = 0xAAAAAAAAAAAAAAAALL;
    extraRowsOnBottom.value = 0xAAAAAAAAAAAAAAAALL;
    CVPixelBufferGetExtendedPixels(v14, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        Width = CVPixelBufferGetWidth(v14);
        Height = CVPixelBufferGetHeight(v14);
        *buf = 136316930;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_CreateFrameInternal";
        *&buf[22] = 1024;
        *&buf[24] = 585;
        *&buf[28] = 2048;
        *&buf[30] = Width;
        *&buf[38] = 2048;
        *&buf[40] = Height;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = a3;
        WORD3(v76) = 2048;
        *(&v76 + 1) = extraColumnsOnRight.value;
        LOWORD(v77[0]) = 2048;
        *(v77 + 2) = extraRowsOnBottom.value;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Captured first frame with source width %.1zu x height:%.1zu transform=%d extendedPixelsRight=%zu  extendedPixelsBottom=%zu", buf, 0x4Au);
      }
    }

    a4 = v69;
  }

  if (*(a1 + 476) != 1)
  {
    LOBYTE(v34) = 0;
    goto LABEL_40;
  }

  *buf = v70;
  Seconds = CMTimeGetSeconds(buf);
  *buf = *(a1 + 404);
  *&buf[16] = *(a1 + 420);
  v22 = Seconds - CMTimeGetSeconds(buf);
  v23 = CMSampleBufferGetImageBuffer(cf);
  if (v16)
  {
    CVBufferSetAttachment(v23, v15, v16, kCVAttachmentMode_ShouldPropagate);
    CMTimeMake(&v72, 17, 600);
    v71 = v70;
    v24 = *(MEMORY[0x1E6960CF0] + 48);
    *&buf[32] = *(MEMORY[0x1E6960CF0] + 32);
    v76 = v24;
    v77[0] = *(MEMORY[0x1E6960CF0] + 64);
    v25 = *(MEMORY[0x1E6960CF0] + 16);
    *buf = *MEMORY[0x1E6960CF0];
    *&buf[16] = v25;
    extraColumnsOnRight = v70;
    extraRowsOnBottom = v72;
    CMTimeAdd(&buf[24], &extraColumnsOnRight, &extraRowsOnBottom);
    extraColumnsOnRight = *&buf[24];
    CMSampleBufferSetOutputPresentationTimeStamp(cf, &extraColumnsOnRight);
    extraColumnsOnRight = *&buf[24];
    v26 = CMTimeGetSeconds(&extraColumnsOnRight);
    extraColumnsOnRight = v71;
    v27 = CMTimeGetSeconds(&extraColumnsOnRight);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v28 = v26 - v27;
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      v31 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v70;
          v32 = CMTimeGetSeconds(buf);
          *buf = v70;
          v33 = CMTimeGetSeconds(buf);
          *buf = 136316418;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
          *&buf[22] = 1024;
          *&buf[24] = 509;
          *&buf[28] = 2048;
          *&buf[30] = v32;
          *&buf[38] = 2048;
          *&buf[40] = v28 + v33;
          LOWORD(v76) = 2048;
          *(&v76 + 2) = v28;
          _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Idle frame, moving time forward. BeforeTime=%f, AfterTime=%f, Delta=%f ", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = v70;
        v66 = CMTimeGetSeconds(buf);
        *buf = v70;
        v67 = CMTimeGetSeconds(buf);
        *buf = 136316418;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
        *&buf[22] = 1024;
        *&buf[24] = 509;
        *&buf[28] = 2048;
        *&buf[30] = v66;
        *&buf[38] = 2048;
        *&buf[40] = v28 + v67;
        LOWORD(v76) = 2048;
        *(&v76 + 2) = v28;
        _os_log_debug_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d Idle frame, moving time forward. BeforeTime=%f, AfterTime=%f, Delta=%f ", buf, 0x3Au);
      }
    }

    CMSampleBufferGetOutputPresentationTimeStamp(buf, cf);
    v70 = *buf;
    *(a1 + 494) = 1;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    v37 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v70;
        v38 = CMTimeGetSeconds(buf);
        *buf = 136316162;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
        *&buf[22] = 1024;
        *&buf[24] = 514;
        *&buf[28] = 2048;
        *&buf[30] = v38;
        *&buf[38] = 2048;
        *&buf[40] = v22;
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Non idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = v70;
      v65 = CMTimeGetSeconds(buf);
      *buf = 136316162;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
      *&buf[22] = 1024;
      *&buf[24] = 514;
      *&buf[28] = 2048;
      *&buf[30] = v65;
      *&buf[38] = 2048;
      *&buf[40] = v22;
      _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d Non idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
    }
  }

  extraRowsOnBottom = v70;
  *buf = *(a1 + 404);
  *&buf[16] = *(a1 + 420);
  extraColumnsOnRight = **&MEMORY[0x1E6960CC0];
  v39 = CMTimeCompare(buf, &extraColumnsOnRight);
  if (!v16)
  {
    if (v39)
    {
      if (*(a1 + 494) == 1)
      {
        *(a1 + 494) = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = extraRowsOnBottom;
            v42 = CMTimeGetSeconds(buf);
            *buf = 136316162;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = "_VCScreenCapture_validateFrameTime";
            *&buf[22] = 1024;
            *&buf[24] = 471;
            *&buf[28] = 2048;
            *&buf[30] = v42;
            *&buf[38] = 2048;
            *&buf[40] = v22;
            _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d First non idle frame received after last idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
          }
        }
      }
    }
  }

  *buf = extraRowsOnBottom;
  extraColumnsOnRight = *(a1 + 404);
  v43 = CMTimeCompare(buf, &extraColumnsOnRight);
  v34 = v43 >> 31;
  if ((v43 & 0x80000000) != 0)
  {
    ++*(a1 + 496);
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = extraRowsOnBottom;
        v46 = CMTimeGetSeconds(buf);
        *buf = *(a1 + 404);
        *&buf[16] = *(a1 + 420);
        v47 = CMTimeGetSeconds(buf);
        v48 = *(a1 + 496);
        *buf = 136316418;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_validateFrameTime";
        *&buf[22] = 1024;
        *&buf[24] = 482;
        *&buf[28] = 2048;
        *&buf[30] = v46;
        *&buf[38] = 2048;
        *&buf[40] = v47;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v48;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Frame PresentationTime %f going backwards with respect to previous frame PresentationTime %f. Dropping frame with total frames dropped=%u", buf, 0x36u);
      }
    }
  }

  a4 = v69;
  if (cf)
  {
LABEL_40:
    v49 = *(a1 + 488);
    if (v49 == 2)
    {
      v51 = a3 & 0x7FFFFFFF;
      if ((a3 & 0x7FFFFFFF) != 7)
      {
        if (v51 == 4)
        {
          goto LABEL_63;
        }

        if (v51 == 3)
        {
LABEL_64:
          v58 = 1;
          goto LABEL_74;
        }

LABEL_65:
        v58 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      if (v49 == 3)
      {
        v50 = a3 & 0x7FFFFFFF;
        if ((a3 & 0x7FFFFFFF) != 7)
        {
          if (v50 != 4)
          {
            if (v50 == 3)
            {
              goto LABEL_66;
            }

LABEL_63:
            v58 = 3;
            goto LABEL_74;
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      if ((*(a1 + 493) & 1) == 0)
      {
        v52 = CVPixelBufferGetWidth(v14);
        if (vabds_f32((v52 / CVPixelBufferGetHeight(v14)), *(a1 + 464) / *(a1 + 468)) > 0.0001)
        {
          *(a1 + 492) = 1;
          *(a1 + 493) = 1;
        }
      }

      if (*(a1 + 492) == 1)
      {
        CFRelease(cf);
        ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(v14, *(a1 + 440), *(a1 + 432));
        *buf = v70;
        cf = createSampleBufferWithPixelBuffer(ResizeFrame, buf);
        CVPixelBufferRelease(ResizeFrame);
        a4 = v69;
        if (!cf)
        {
          _VCScreenCapture_CreateFrameInternal_cold_5(buf);
LABEL_101:
          cf = *buf;
LABEL_102:
          if (cf)
          {
            CFRelease(cf);
            return 0;
          }

          return cf;
        }
      }

      else
      {
        a4 = v69;
      }

      v54 = CVPixelBufferGetWidth(v14);
      v55 = CVPixelBufferGetHeight(v14);
      v56 = a3 & 0x7FFFFFFF;
      if (v54 < v55)
      {
        v57 = v56 - 3;
        if (v57 > 4)
        {
          v58 = 0;
        }

        else
        {
          v58 = dword_1DBD47818[v57];
        }

        extraRowsOnBottom.value = 0xAAAAAAAAAAAAAAAALL;
        if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(a1 + 456), &extraRowsOnBottom))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCScreenCapture_CreateFrameInternal_cold_1();
            }
          }
        }

        else
        {
          MEMORY[0x1E128B1C0](*(a1 + 448), v14, extraRowsOnBottom.value);
          memset(buf, 170, 24);
          CMSampleBufferGetOutputPresentationTimeStamp(buf, cf);
          CFRelease(cf);
          extraColumnsOnRight = *buf;
          cf = createSampleBufferWithPixelBuffer(extraRowsOnBottom.value, &extraColumnsOnRight.value);
          CVBufferRelease(extraRowsOnBottom.value);
          if (!cf)
          {
            _VCScreenCapture_CreateFrameInternal_cold_4();
            return cf;
          }
        }

        a4 = v69;
        goto LABEL_74;
      }

      switch(v56)
      {
        case 7:
          goto LABEL_64;
        case 4:
          goto LABEL_65;
        case 3:
          goto LABEL_63;
      }
    }

LABEL_66:
    v58 = 2;
LABEL_74:
    if (*(a1 + 384) == 1 && (a4 & 1) == 0)
    {
      v59 = *(a1 + 392);
      if (v59)
      {
        CFRelease(v59);
      }

      if (cf)
      {
        v60 = CFRetain(cf);
      }

      else
      {
        v60 = 0;
      }

      *(a1 + 392) = v60;
      *(a1 + 400) = a3;
      *(a1 + 385) = 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(v14);
    if (IOSurface)
    {
      v62 = v16 == 0;
    }

    else
    {
      v62 = 0;
    }

    if (v62)
    {
      v63 = v34;
    }

    else
    {
      v63 = 1;
    }

    if (v63)
    {
LABEL_93:
      if ((v34 & 1) == 0)
      {
        if ((a4 & 1) == 0)
        {
          VCScreenCapture_attachUpdateWindowToPixelBuffer(v14);
        }

        *(a1 + 404) = v70;
        *a5 = -1431699456;
        *(a5 + 4) = 3;
        *(a5 + 8) = -1431699456;
        *(a5 + 12) = v58;
        *(a5 + 16) = v58 | 0x90;
        *(a5 + 17) = -21846;
        *(a5 + 19) = -86;
        ++*(a1 + 480);
        return cf;
      }

      goto LABEL_102;
    }

    IOSurfaceGetID(IOSurface);
    IOSurfaceGetIndexedTimestamp();
    IOSurfaceGetIndexedTimestamp();
    *buf = v70;
    CMTimeGetSeconds(buf);
    kdebug_trace();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (FigCFDictionarySetInt32())
    {
      _VCScreenCapture_CreateFrameInternal_cold_2(cf, buf);
    }

    else
    {
      if (!FigCFDictionarySetInt64())
      {
        CMSetAttachments(cf, Mutable, 0);
        a4 = v69;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_93;
      }

      _VCScreenCapture_CreateFrameInternal_cold_3(cf, buf);
    }

    goto LABEL_101;
  }

  return cf;
}

uint64_t VCScreenCapture_attachUpdateWindowToPixelBuffer(__CVBuffer *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  Attachment = CVBufferGetAttachment(a1, @"FVDWindowRectangles", 0);
  if (Attachment && CFArrayGetCount(Attachment))
  {
    DictionaryRepresentation = 0;
    v4 = 0;
    goto LABEL_13;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_3(buf);
    return *buf;
  }

  v4 = Mutable;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = Width;
  v31.size.height = Height;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v31);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (DictionaryRepresentation)
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
          *buf = 136316674;
          v17 = v9;
          v18 = 2080;
          v19 = "VCScreenCapture_attachUpdateWindowToPixelBuffer";
          v20 = 1024;
          v21 = 538;
          v22 = 2048;
          v23 = Width;
          v24 = 2048;
          v25 = Height;
          v26 = 2048;
          v27 = 0;
          v28 = 2048;
          v29 = 0;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316674;
        v17 = v9;
        v18 = 2080;
        v19 = "VCScreenCapture_attachUpdateWindowToPixelBuffer";
        v20 = 1024;
        v21 = 538;
        v22 = 2048;
        v23 = Width;
        v24 = 2048;
        v25 = Height;
        v26 = 2048;
        v27 = 0;
        v28 = 2048;
        v29 = 0;
        _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
      }
    }

    CFArrayAppendValue(v4, DictionaryRepresentation);
    CVBufferSetAttachment(a1, @"FVDWindowRectangles", v4, kCVAttachmentMode_ShouldPropagate);
LABEL_13:
    if (CVBufferGetAttachment(a1, @"FVDWindowScaleFactor", 0))
    {
      v12 = 0;
    }

    else
    {
      valuePtr = 1;
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (!v12)
      {
        VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_1(buf);
        v13 = *buf;
        if (!DictionaryRepresentation)
        {
LABEL_19:
          if (!v4)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_18:
        CFRelease(DictionaryRepresentation);
        goto LABEL_19;
      }

      CVBufferSetAttachment(a1, @"FVDWindowScaleFactor", v12, kCVAttachmentMode_ShouldPropagate);
    }

    v13 = 0;
    if (!DictionaryRepresentation)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = 2148073475;
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_2();
    }
  }

  v12 = 0;
LABEL_20:
  CFRelease(v4);
LABEL_21:
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

void _VCScreenCapture_UpdateShouldClearScreen(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 428) != a2)
  {
    *(a1 + 428) = a2;
    v4 = *(a1 + 168);
    if (v4)
    {
      VCScreenCaptureManager_ScreenShareDidClearScreen(v4, a2);
    }

    if (a2)
    {
      pthread_cond_signal((a1 + 256));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "_VCScreenCapture_UpdateShouldClearScreen";
      v13 = 1024;
      v14 = 415;
      v7 = "VCScreenCapture [%s] %s:%d Enter Clear Screen";
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 136315650;
      v10 = v8;
      v11 = 2080;
      v12 = "_VCScreenCapture_UpdateShouldClearScreen";
      v13 = 1024;
      v14 = 417;
      v7 = "VCScreenCapture [%s] %s:%d Exit Clear Screen";
    }

    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x1Cu);
  }
}

uint64_t createPixelBufferPool(CVPixelBufferPoolRef *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [v6 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E696CF68], @"AVConference:ScreenCaptureResize", *MEMORY[0x1E696CF98], 0}];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10 = *MEMORY[0x1E6966208];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x1E69660B8], &unk_1F5798D60, *MEMORY[0x1E6966130], v7, *MEMORY[0x1E69660D8], 0}];
  v13 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v12, a1);

  return v13;
}

void _VCScreenCapture_handleFrame(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  pthread_mutex_lock((a1 + 320));
  FrameInternal = _VCScreenCapture_CreateFrameInternal(a1, a2, a3, 0, v12);
  v7 = *(a1 + 404);
  v8 = *(a1 + 412);
  v9 = *(a1 + 420);
  pthread_mutex_unlock((a1 + 320));
  if (FrameInternal)
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    VCVideoCapture_DistributeVideoFrame(a1, FrameInternal, &v10, v12);
    CFRelease(FrameInternal);
  }
}

uint64_t _VCScreenCapture_clearScreenProc(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v21.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v20.tv_sec = 0;
  v20.tv_nsec = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  pthread_setname_np("com.apple.vcscreencapture.clearscreenproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_clearScreenProc";
      *&buf[22] = 1024;
      v23 = 369;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Thread Started", buf, 0x1Cu);
    }
  }

  pthread_mutex_lock((a1 + 320));
  if ([a1 isClearScreenThreadRunning])
  {
    *&v4 = 136315650;
    v17 = v4;
    do
    {
      v5 = (a1 + 256);
      v6 = (a1 + 320);
      if (*(a1 + 428))
      {
        pthread_cond_timedwait(v5, v6, &v20);
      }

      else
      {
        pthread_cond_wait(v5, v6);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "_VCScreenCapture_clearScreenProc";
            *&buf[22] = 1024;
            v23 = 381;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Signalled", buf, 0x1Cu);
          }
        }

        gettimeofday(&v21, 0);
        v20.tv_sec = v21.tv_sec;
        v20.tv_nsec = 1000 * v21.tv_usec;
      }

      v9 = [a1 newIdleBlackFrameWithAttributes:{v18, v17}];
      v10 = *(a1 + 404);
      v11 = *(a1 + 412);
      v12 = *(a1 + 420);
      pthread_mutex_unlock((a1 + 320));
      if (v9)
      {
        *buf = v10;
        *&buf[8] = v11;
        *&buf[16] = v12;
        VCVideoCapture_DistributeVideoFrame(a1, v9, buf, v18);
        CFRelease(v9);
      }

      v13 = v20.tv_nsec + 1000000000 * v20.tv_sec + 33333333;
      v20.tv_sec = v13 / 0x3B9ACA00;
      v20.tv_nsec = v13 % 0x3B9ACA00;
      pthread_mutex_lock((a1 + 320));
    }

    while (([a1 isClearScreenThreadRunning] & 1) != 0);
  }

  pthread_mutex_unlock((a1 + 320));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_clearScreenProc";
      *&buf[22] = 1024;
      v23 = 403;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Thread Ended", buf, 0x1Cu);
    }
  }

  return a1;
}