@interface APConnectivityHelperStartAWDLSoloSupportListener
@end

@implementation APConnectivityHelperStartAWDLSoloSupportListener

void ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke_2;
  v4[3] = &unk_278BC72B0;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_sync(v3, v4);
}

void *___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke_2(void *result)
{
  v1 = result[5];
  if (v1[232])
  {
    return result;
  }

  result = result[4];
  if (!result)
  {
    return result;
  }

  v1[152] = [result supportsSoloMode];
  v1[153] = 1;
  if (gLogCategory_APConnectivityHelper <= 40)
  {
    if (gLogCategory_APConnectivityHelper != -1)
    {
LABEL_7:
      OUTLINED_FUNCTION_11();
      goto LABEL_8;
    }

    if (OUTLINED_FUNCTION_7())
    {
      v2 = v1[152];
      goto LABEL_7;
    }
  }

LABEL_8:
  if (_APConnectivityHelperSendAWDLSoloSupportEvent(v1))
  {
    APSLogErrorAt();
  }

  return _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v1);
}

@end