@interface VCNWConnectionMonitor
@end

@implementation VCNWConnectionMonitor

void __VCNWConnectionMonitor_Create_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v2);
  v3 = malloc_type_calloc(1uLL, 0x5E68uLL, 0x10A0040E7F0E380uLL);
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Create_block_invoke_cold_2();
      }
    }

    goto LABEL_12;
  }

  v4 = v3;
  interface_status_monitor = nw_connection_create_interface_status_monitor();
  *v4 = interface_status_monitor;
  if (!interface_status_monitor)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Create_block_invoke_cold_1();
      }
    }

    free(v4);
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v4[6041] = 5000;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReportingFrequency", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4[6041] = 1000 * AppIntegerValue;
  }

LABEL_13:
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v6);
  v7 = malloc_type_calloc(1uLL, 0x5E68uLL, 0x10A0040E7F0E380uLL);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v7)
  {
    v9 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName";
        *&buf[22] = 1024;
        LODWORD(v43) = 106;
        WORD2(v43) = 2048;
        *(&v43 + 6) = v7;
        HIWORD(v43) = 2080;
        v44 = v4;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Creating monitor=%p with interfaceName=%s", buf, 0x30u);
      }
    }

    memset(v41, 170, 22);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    snprintf(__str, 0x1EuLL, "%p-%s", v7, v4);
    v12 = LogDump_OpenLog(__str, "VCNWConnectionMonitor", ".nwmonitordump", ", 9, ");
    *(v7 + 2) = v12;
    VRLogfilePrintSync(v12, "STime\tTimestamp\tVersion\tDirection\tByteCount\tQSize1\tQSize2\tDelay\tThroughput\tTxRate\tRateTrend\tFrequencyBand\tIntermittentState\tIntermittentPeriod\tSingleOutagePeriod\tBtCoex\tRadioCoex\tScoreDelayTx\tScoreDelayRx\tScoreLossTx\tScoreLossRx\tScoreChannel\tOffChannelRatio\tWlanDutyCycle\tWifiObservedTxBitrate(BE)\tWifiObservedTxBitrate(BK)\tWifiObservedTxBitrate(VI)\tWifiObservedTxBitrate(VO)\tWifiObservedTxBitrate(LLW0)\tWifiObservedTxBitrate(LLW1)\n", v13, v14, v15, v16, v17, v18, v29);
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    VTP_NWConnectionContext();
    nw_parameters_set_context();
    v20 = nw_interface_create_with_name();
    nw_parameters_require_interface(secure_udp, v20);
    if (v2)
    {
      v21 = "1234::1234";
    }

    else
    {
      v21 = "120.0.0.1";
    }

    host = nw_endpoint_create_host(v21, "1234");
    v23 = nw_connection_create(host, secure_udp);
    *(v7 + 1) = v23;
    if (v5)
    {
      *(v7 + 3017) = v5;
      dispatch_retain(v5);
      v24 = *(v7 + 1);
    }

    else
    {
      v24 = v23;
    }

    v25 = VTP_NWConnectionQueue();
    nw_connection_set_queue(v24, v25);
    v26 = *(v7 + 1);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke;
    *&v43 = &unk_1E85F5270;
    *(&v43 + 1) = v3;
    v44 = v7;
    nw_connection_set_state_changed_handler(v26, buf);
    nw_connection_start(*(v7 + 1));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136316162;
        v31 = v27;
        v32 = 2080;
        v33 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName";
        v34 = 1024;
        v35 = 161;
        v36 = 2048;
        v37 = v7;
        v38 = 2080;
        v39 = v4;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting NWConnection for monitor=%p with interfaceName=%s", v30, 0x30u);
      }
    }

    nw_release(v20);
    nw_release(secure_udp);
    nw_release(host);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
}

void __VCNWConnectionMonitor_Destroy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v2);
  if (*(v1 + 24128) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Destroy_block_invoke_cold_1();
      }
    }
  }

  else
  {
    *(v1 + 24128) = 1;
    if (*v1)
    {
      nw_interface_status_monitor_cancel();
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      nw_connection_cancel(v3);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      LogDump_CloseLog(v4);
      *(v1 + 16) = 0;
    }
  }
}

uint64_t __VCNWConnectionMonitor_SetNotificationHandler_block_invoke()
{
  v0 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v0);
  VTP_NWConnectionQueue();
  return nw_interface_status_monitor_set_update_handler();
}

uint64_t __VCNWConnectionMonitor_SetPacketEventHandler_block_invoke()
{
  v0 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v0);
  VTP_NWConnectionQueue();
  return nw_interface_status_monitor_set_packet_event_handler();
}

uint64_t __VCNWConnectionMonitor_SetStatisticsHandler_block_invoke()
{
  v0 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v0);
  VTP_NWConnectionQueue();
  return nw_interface_status_monitor_set_update_handler();
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 5:
      v8 = (a1 + 40);
      if (*(*(a1 + 40) + 8))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *v8;
            v12 = *(*v8 + 8);
            *buf = 136316162;
            v18 = v9;
            v19 = 2080;
            v20 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke";
            v21 = 1024;
            v22 = 150;
            v23 = 2048;
            v24 = v11;
            v25 = 2048;
            v26 = v12;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NWConnection state cancelled! monitor=%p and monitor->NWConnection=%p is released.", buf, 0x30u);
          }
        }

        nw_release(*(*v8 + 8));
        *(*v8 + 8) = 0;
      }

      _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(v8);
      break;
    case 4:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_1();
        }
      }

      break;
    case 3:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          v6 = *(v5 + 8);
          *buf = 136316162;
          v18 = v3;
          v19 = 2080;
          v20 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke";
          v21 = 1024;
          v22 = 131;
          v23 = 2048;
          v24 = v5;
          v25 = 2048;
          v26 = v6;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NWConnection state ready and setting status monitor! monitor=%p, connection=%p", buf, 0x30u);
        }
      }

      v7 = (a1 + 40);
      if (*(*(a1 + 40) + 24128) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_3();
          }
        }
      }

      else
      {
        **v7 = nw_connection_create_interface_status_monitor();
        v13 = *v7;
        if (**v7)
        {
          v14 = *(a1 + 32);
          if (v14 && (v13[3016] & 1) == 0)
          {
            v15 = v13[3017];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_20;
            block[3] = &unk_1E85F5248;
            block[4] = v14;
            dispatch_async(v15, block);
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_2();
          }
        }
      }

      break;
  }
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v8);
  v10 = (a1 + 32);
  v9 = *(a1 + 32);
  if (v9)
  {
    if (a4)
    {
      if (a4 == 89)
      {
        if (*v9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = *v10;
              v14 = **v10;
              v25 = 136316162;
              v26 = v11;
              v27 = 2080;
              v28 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
              v29 = 1024;
              v30 = 245;
              v31 = 2048;
              *v32 = v14;
              *&v32[8] = 2048;
              *&v32[10] = v13;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor->nwMonitor=%p is released, monitor=%p", &v25, 0x30u);
            }
          }

          nw_release(**v10);
          **v10 = 0;
        }

        _VCNWConnectionMonitor_CheckAndReleaseNWMonitor((a1 + 32));
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v17 = *v10;
      v25 = 136316162;
      v26 = v15;
      v27 = 2080;
      v28 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
      v29 = 1024;
      v30 = 251;
      v31 = 1024;
      *v32 = a4;
      *&v32[4] = 2048;
      *&v32[6] = v17;
      v18 = " [%s] %s:%d NWConnection notification returns error %d, monitor=%p";
      v19 = v16;
      v20 = 44;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v25, v20);
      return;
    }

    if (*(v9 + 24128) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (!a2 || a3 != 96)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v25 = 136316418;
        v26 = v23;
        v27 = 2080;
        v28 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
        v29 = 1024;
        v30 = 261;
        v31 = 1024;
        *v32 = 96;
        *&v32[4] = 1024;
        *&v32[6] = a3;
        *&v32[10] = 2048;
        *&v32[12] = a2;
        v18 = " [%s] %s:%d NWConnection notification size mismatch. (expected size: %u, actual size: %u) status_data: %p";
        v19 = v24;
        v20 = 50;
        goto LABEL_28;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);

      _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification(v21, v22, a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_2();
    }
  }
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke(void *a1, int a2, uint64_t a3, unint64_t a4, int a5)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v10);
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_1();
      }
    }

    return;
  }

  if (a2 == 1)
  {
    if (!a4)
    {
      return;
    }

    v11 = 0;
    v12 = 1;
    while (1)
    {
      if (a1[4])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v21[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
        v13 = *(*&buf[8] + 24);
        if (!v13)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_2();
            }
          }

          _Block_object_dispose(buf, 8);
          return;
        }

        *v13 = *(a3 + 16 * v11);
        v15 = a1[4];
        v14 = a1[5];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_27;
        block[3] = &unk_1E85F52B8;
        v16 = a1[6];
        block[5] = v15;
        block[6] = v16;
        block[4] = buf;
        dispatch_async(v14, block);
        _Block_object_dispose(buf, 8);
      }

      v11 = v12++;
      if (v11 >= a4)
      {
        return;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_2";
      *&buf[22] = 1024;
      LODWORD(v21[0]) = 307;
      WORD2(v21[0]) = 1024;
      *(v21 + 6) = a2;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive other unknown event type %d", buf, 0x22u);
    }
  }
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_27(uint64_t a1)
{
  (*(a1 + 40))(*(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
  free(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = VTP_NWConnectionQueue();
  dispatch_assert_queue_V2(v8);
  v10 = (a1 + 4);
  v9 = a1[4];
  if (v9)
  {
    if (a4)
    {
      if (a4 == 89)
      {
        if (*v9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = *v10;
              v14 = **v10;
              *buf = 136316162;
              *&buf[4] = v11;
              *&buf[12] = 2080;
              *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
              *&buf[22] = 1024;
              *&buf[24] = 539;
              *&buf[28] = 2048;
              *&buf[30] = v14;
              *&buf[38] = 2048;
              *&buf[40] = v13;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor->nwMonitor=%p is released, monitor=%p", buf, 0x30u);
            }
          }

          nw_release(**v10);
          **v10 = 0;
        }

        _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(v10);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v17 = *v10;
      *buf = 136316162;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
      *&buf[22] = 1024;
      *&buf[24] = 545;
      *&buf[28] = 1024;
      *&buf[30] = a4;
      *&buf[34] = 2048;
      *&buf[36] = v17;
      v18 = " [%s] %s:%d NWConnection notification returns error %d, monitor=%p";
      v19 = v16;
      v20 = 44;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      return;
    }

    if (*(v9 + 24128) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (!a2 || a3 != 96)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136316418;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 555;
        *&buf[28] = 1024;
        *&buf[30] = 96;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        *&buf[40] = 2048;
        *&buf[42] = a2;
        v18 = " [%s] %s:%d NWConnection notification size mismatch. (expected size: %u, actual size: %u) status_data: %p";
        v19 = v25;
        v20 = 50;
        goto LABEL_28;
      }

      memset(v39, 170, sizeof(v39));
      v40 = xmmword_1DBD475B0;
      v41 = unk_1DBD475C0;
      v38 = unk_1DBD47580;
      memset(buf, 170, sizeof(buf));
      _VCNWConnectionMonitor_ProcessNotification(v9, a2, buf);
      v21 = a1[5];
      if (v21 && *&buf[8])
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 0x40000000;
        v26[2] = ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_32;
        v26[3] = &__block_descriptor_tmp_33;
        v22 = a1[6];
        v23 = a1[7];
        v26[4] = v21;
        v26[5] = v23;
        v33 = v39[0];
        v34 = v39[1];
        v35 = v40;
        v36 = v41;
        v29 = *&buf[32];
        v30 = *&buf[48];
        v31 = *&buf[64];
        v32 = v38;
        v27 = *buf;
        v28 = *&buf[16];
        dispatch_async(v22, v26);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_2();
    }
  }
}

uint64_t ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_32(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 160);
  v9[6] = *(a1 + 144);
  v9[7] = v3;
  v4 = *(a1 + 192);
  v9[8] = *(a1 + 176);
  v9[9] = v4;
  v5 = *(a1 + 96);
  v9[2] = *(a1 + 80);
  v9[3] = v5;
  v6 = *(a1 + 128);
  v9[4] = *(a1 + 112);
  v9[5] = v6;
  v7 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v7;
  return v2(v1, v9);
}

void __VCNWConnectionMonitor_Create_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __VCNWConnectionMonitor_Create_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for monitor", v2, v3, v4, v5, v6);
}

void __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for monitor", v2, v3, v4, v5, v6);
}

void __VCNWConnectionMonitor_Destroy_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Monitor is already destroyed!", v2, v3, v4, v5, v6);
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5, v6);
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for packetEvent!", v2, v3, v4, v5, v6);
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5, v6);
}

@end