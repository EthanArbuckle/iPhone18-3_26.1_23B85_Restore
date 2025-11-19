@interface SignalDataAvailable
@end

@implementation SignalDataAvailable

void __stream_SignalDataAvailable_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 24))
  {
    __stream_SignalDataAvailable_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 40);
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 72);
    if (v5)
    {
      v6 = *(VTable + 16) + 72;
      v7 = v5(v3);
    }

    else
    {
      v7 = -12782;
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __stream_SignalDataAvailable_block_invoke_cold_2();
    }
  }
}

void __unbufnw_SignalDataAvailable_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 416))
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v3 = OUTLINED_FUNCTION_8_0(), v2 = *(a1 + 32), v3))
      {
        v5 = *(v2 + 16);
        OUTLINED_FUNCTION_7_0();
        v2 = *(a1 + 32);
      }
    }

    APTTrafficMetricsDataAvailable(*(v2 + 448));
    v4 = *(a1 + 32);
    *(v4 + 416) = 1;
    unbufnwGuts_connectionSendPackages(v4);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

@end