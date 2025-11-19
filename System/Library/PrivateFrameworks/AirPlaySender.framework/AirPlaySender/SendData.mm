@interface SendData
@end

@implementation SendData

void __epp_SendData_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_SendData_block_invoke_cold_1();
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 96);
  if (!v6)
  {
    APSLogErrorAt();
LABEL_14:
    epp_sendDataCallback(*(a1 + 40), *(a1 + 56), 4294954514, *(a1 + 48));
    goto LABEL_6;
  }

  if (v6(v5, v2, v3, epp_sendDataCallback, v4) && (__epp_SendData_block_invoke_cold_2() & 1) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(*(a1 + 40));
  v9 = *(a1 + 32);

  CFRelease(v9);
}

void __carEndpoint_SendData_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 472);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v2, *(a1 + 64));
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040139F2759uLL);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      **(*(*(a1 + 48) + 8) + 24) = CFRetain(*(a1 + 72));
      *(*(*(*(a1 + 48) + 8) + 24) + 8) = CFRetain(*(a1 + 64));
      *(*(*(*(a1 + 48) + 8) + 24) + 16) = *(a1 + 80);
      *(*(*(*(a1 + 48) + 8) + 24) + 24) = *(a1 + 88);
      v3 = *(*(*(a1 + 32) + 8) + 24);
      v4 = *(a1 + 96);
      v5 = *(*(*(a1 + 48) + 8) + 24);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v7 = v6(v3, v4, carEndpoint_rcsSendMessageCompletion, v5);
      }

      else
      {
        v7 = -12782;
      }

      *(*(*(a1 + 40) + 8) + 24) = v7;
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        __carEndpoint_SendData_block_invoke_cold_1();
      }
    }

    else
    {
      __carEndpoint_SendData_block_invoke_cold_2();
    }
  }

  else
  {
    __carEndpoint_SendData_block_invoke_cold_3();
  }
}

void __epp_SendData_block_invoke_2(uint64_t a1)
{
  epp_sendDataCallback(*(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __epp_SendData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

void __carEndpoint_SendData_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_23_4();
  *(v0 + 24) = -16721;
}

void __carEndpoint_SendData_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_23_4();
  *(v0 + 24) = -16725;
}

@end