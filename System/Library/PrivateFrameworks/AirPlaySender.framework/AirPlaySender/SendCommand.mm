@interface SendCommand
@end

@implementation SendCommand

void __epp_SendCommand_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_SendCommand_block_invoke_cold_1();
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (!v6)
  {
    APSLogErrorAt();
LABEL_14:
    epp_sendCommandCallback(*(a1 + 40), 4294954514, 0, *(a1 + 48));
    goto LABEL_6;
  }

  if (v6(v5, v2, v3, epp_sendCommandCallback, v4) && (__epp_SendCommand_block_invoke_cold_2() & 1) != 0)
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

void __carEndpoint_SendCommand_block_invoke_2(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), 0, *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __epp_SendCommand_block_invoke_2(uint64_t a1)
{
  epp_sendCommandCallback(*(a1 + 32), *(a1 + 48), 0, *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __epp_SendCommand_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

@end