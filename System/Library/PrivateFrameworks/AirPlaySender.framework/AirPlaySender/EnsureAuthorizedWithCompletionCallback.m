@interface EnsureAuthorizedWithCompletionCallback
@end

@implementation EnsureAuthorizedWithCompletionCallback

void __epp_EnsureAuthorizedWithCompletionCallback_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_EnsureAuthorizedWithCompletionCallback_block_invoke_cold_1();
  }

  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    APSLogErrorAt();
LABEL_12:
    epp_completionCallback(*(a1 + 40), 4294954514, *(a1 + 48));
    goto LABEL_6;
  }

  if (v5(v4, v2, epp_completionCallback, v3) && (__epp_EnsureAuthorizedWithCompletionCallback_block_invoke_cold_2() & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 40));
  v7 = *(a1 + 32);

  CFRelease(v7);
}

void __epp_EnsureAuthorizedWithCompletionCallback_block_invoke_2(uint64_t a1)
{
  epp_completionCallback(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __epp_EnsureAuthorizedWithCompletionCallback_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

@end