@interface CloseCommChannel
@end

@implementation CloseCommChannel

void __carEndpoint_CloseCommChannel_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CloseCommChannel_block_invoke_cold_1();
  }

  v2 = *(*(a1 + 64) + 472);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFDictionaryGetValue(v2, *(a1 + 48));
    v3 = *(*(*(a1 + 40) + 8) + 24);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v5 = v4(v3);
      }

      else
      {
        v5 = -12782;
      }

      *(*(*(a1 + 32) + 8) + 24) = v5;
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __carEndpoint_CloseCommChannel_block_invoke_cold_2();
      }

      else if (FigCFEqual())
      {
        v6 = *(*(a1 + 64) + 72);
        if (v6)
        {
          CFRelease(v6);
          *(*(a1 + 64) + 72) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v7 = *(*(a1 + 64) + 88);
        if (v7)
        {
          CFRelease(v7);
          *(*(a1 + 64) + 88) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v8 = *(*(a1 + 64) + 96);
        if (v8)
        {
          CFRelease(v8);
          *(*(a1 + 64) + 96) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v9 = *(*(a1 + 64) + 112);
        if (v9)
        {
          CFRelease(v9);
          *(*(a1 + 64) + 112) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v10 = *(*(a1 + 64) + 128);
        if (v10)
        {
          CFRelease(v10);
          *(*(a1 + 64) + 128) = 0;
        }
      }
    }

    else
    {
      __carEndpoint_CloseCommChannel_block_invoke_cold_3();
    }
  }

  else
  {
    __carEndpoint_CloseCommChannel_block_invoke_cold_4();
  }
}

void __carEndpoint_CloseCommChannel_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16725;
}

void __carEndpoint_CloseCommChannel_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_13_7(v0);
}

@end