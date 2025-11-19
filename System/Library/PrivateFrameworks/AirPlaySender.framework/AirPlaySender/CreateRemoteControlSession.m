@interface CreateRemoteControlSession
@end

@implementation CreateRemoteControlSession

void __carEndpoint_CreateRemoteControlSession_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!*(v2 + 177))
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_CreateRemoteControlSession_block_invoke_cold_6();
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = -17605;
    goto LABEL_13;
  }

  if (*(a1 + 104))
  {
    v3 = *(v2 + 472);
    if (v3)
    {
      **(a1 + 72) = CFDictionaryGetValue(v3, **(*(*(a1 + 40) + 8) + 24));
      v4 = **(a1 + 72);
      if (v4)
      {
        CFRetain(v4);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_CreateRemoteControlSession_block_invoke_cold_1();
        }
      }

      else
      {
        __carEndpoint_CreateRemoteControlSession_block_invoke_cold_2();
      }

      return;
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = -17606;
LABEL_13:
    *(v5 + 24) = v6;
    return;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_3();
  }

  *(*(*(a1 + 32) + 8) + 24) = carEndpoint_createCommChannelInternal(*(a1 + 88), *(a1 + 96), *(a1 + 72), *(*(*(a1 + 40) + 8) + 24));
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_4();
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_5();
  }
}

void __carEndpoint_CreateRemoteControlSession_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -17606;
}

@end