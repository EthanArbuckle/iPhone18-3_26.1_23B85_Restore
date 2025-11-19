@interface Resume
@end

@implementation Resume

void __stream_Resume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamUnbuffered <= 30 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    v19 = -16617;
    goto LABEL_21;
  }

  if (*(DerivedStorage + 25))
  {
    goto LABEL_17;
  }

  v4 = *DerivedStorage;
  if (*DerivedStorage == 1935897198)
  {
    v5 = *(DerivedStorage + 56);
    APSEventRecorderRecordEventWithFlags();
  }

  v6 = *(DerivedStorage + 40);
  v7 = *(DerivedStorage + 104);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    v19 = -12782;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v9 = v8(v6, v2, stream_handleEventFromSendConnection, v7, 0);
  if (v9)
  {
    v19 = v9;
    goto LABEL_20;
  }

  v10 = *(DerivedStorage + 40);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v19 = -12782;
    goto LABEL_20;
  }

  v12 = v11(v10);
  if (v12)
  {
    v19 = v12;
    goto LABEL_20;
  }

  if (v4 == 1935897198)
  {
    v13 = *(DerivedStorage + 56);
    APSEventRecorderRecordEventWithFlags();
  }

  *(DerivedStorage + 25) = 1;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = *(v14 + 28);
  if (v15)
  {
    v16 = v14;
    CFRetain(v2);
    v17 = *(v16 + 104);
    OUTLINED_FUNCTION_4_8();
    v21 = 0x40000000;
    v22 = __stream_postCachedConnectionEvent_block_invoke;
    v23 = &__block_descriptor_tmp_38;
    v25 = v15;
    v24 = v2;
    dispatch_async(v18, block);
  }

LABEL_17:
  v19 = 0;
LABEL_21:
  *(DerivedStorage + 48) = v19;
  *(*(*(a1 + 32) + 8) + 24) = v19;
}

void __stream_Resume_block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v17 = -16617;
    goto LABEL_20;
  }

  v4 = *(DerivedStorage + 24);
  OUTLINED_FUNCTION_11_7();
  if (v6)
  {
    v5 = 48;
  }

  v7 = *(DerivedStorage + v5);
  if (!*(v7 + 9))
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    v10 = *(DerivedStorage + 184);
    v11 = *(DerivedStorage + 96);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      v17 = v12(v9, v2, v8, v10, v11);
      if (!v17)
      {
        v13 = *(v7 + 24);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v17 = v14(v13);
          if (!v17)
          {
            if (APTransportStreamIDGetStreamCategory(*DerivedStorage) == 2)
            {
              v15 = *(v7 + 24);
              v16 = APSGetFBOPropertyInt64();
              *DerivedStorage = APTransportStreamIDInsertPort(*DerivedStorage, v16);
            }

            *(v7 + 9) = 1;
            stream_postCachedConnectionEvent(v2, v7);
            goto LABEL_20;
          }
        }

        else
        {
          v17 = -12782;
        }
      }
    }

    else
    {
      v17 = -12782;
    }

    APSLogErrorAt();
  }

LABEL_20:
  *(*(*(a1 + 32) + 8) + 24) = v17;
}

void __unbufnw_Resume_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 168);
  ASPrintF();
  __unbufnw_Resume_block_invoke_2_cold_3(a1);
  free(0);
  sec_release(0);
}

void __unbufnw_Resume_block_invoke_3(uint64_t a1, unsigned int a2, nw_error_t error)
{
  v4 = *(*(a1 + 32) + 8);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  if (error_code)
  {
    v6 = 90;
  }

  else
  {
    v6 = 50;
  }

  if (v6 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v7 = *(*(v4 + 24) + 16);
    if (a2 <= 4)
    {
      v8 = off_278BC8720[a2];
    }

    v10 = *(*(v4 + 24) + 16);
    LogPrintF();
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      if (!error_code)
      {
        error_code = -6700;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return;
      }

      error_code = -6723;
    }
  }

  if (!*(v4 + 32))
  {
    *(v4 + 32) = 1;
    *(v4 + 36) = error_code;
    dispatch_semaphore_signal(*(v4 + 40));
  }

  if (a2 == 4)
  {
    CFRelease(*(v4 + 24));
    v9 = *(v4 + 40);

    dispatch_release(v9);
  }
}

uint64_t __unbufnw_Resume_block_invoke_4(uint64_t a1, NSObject *a2)
{
  v4 = *(*(a1 + 32) + 72);
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionGroupInternal(*(a1 + 32), a2);
  v5 = *(*(a1 + 32) + 72);

  return FigSimpleMutexUnlock();
}

uint64_t __unbufnw_Resume_block_invoke_5(uint64_t a1, NSObject *a2)
{
  v4 = *(*(a1 + 32) + 72);
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionInternal(*(a1 + 32), a2);
  v5 = *(*(a1 + 32) + 72);

  return FigSimpleMutexUnlock();
}

void __unbufnw_Resume_block_invoke_2_cold_1(uint64_t a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10(*(a1 + 32));
  *(v2 + 24) = v3;
}

void __unbufnw_Resume_block_invoke_2_cold_2(uint64_t a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10(*(a1 + 32));
  *(v2 + 24) = v3;
}

void __unbufnw_Resume_block_invoke_2_cold_3(uint64_t a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10(*(a1 + 32));
  *(v2 + 24) = v3;
}

void __lowPowerKeepAliveController_Resume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    v4 = DerivedStorage;
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 16));
    *(v4 + 24) = v5;
    if (v5)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __lowPowerKeepAliveController_resumeInternal_block_invoke;
      handler[3] = &__block_descriptor_tmp_14_1;
      handler[4] = v2;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_source_set_timer(*(v4 + 24), 0, 0x2540BE400uLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v4 + 24));
      if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v4 + 32) = 1;
    }

    else
    {
      APSLogErrorAt();
    }
  }

  CFRelease(*(a1 + 32));
}

@end