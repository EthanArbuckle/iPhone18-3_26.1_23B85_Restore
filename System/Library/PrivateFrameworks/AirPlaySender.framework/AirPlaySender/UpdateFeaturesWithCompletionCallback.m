@interface UpdateFeaturesWithCompletionCallback
@end

@implementation UpdateFeaturesWithCompletionCallback

void __epp_UpdateFeaturesWithCompletionCallback_block_invoke(void *a1)
{
  v2 = epp_copyInner();
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v6)
    {
      if (!v6(v2, v4, v5, epp_activationCallback, v3) || (__epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_1() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_2();
    }

    __epp_DeactivateWithCompletionCallback_block_invoke_cold_3(a1 + 5, v2);
LABEL_8:
    CFRelease(v2);
    goto LABEL_9;
  }

  __epp_DeactivateWithCompletionCallback_block_invoke_cold_4(a1);
LABEL_9:
  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[4];

  CFRelease(v8);
}

uint64_t __epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

@end