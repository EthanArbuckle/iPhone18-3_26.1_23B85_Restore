@interface ActivateForFeaturesWithCompletionCallback
@end

@implementation ActivateForFeaturesWithCompletionCallback

void __epp_ActivateForFeaturesWithCompletionCallback_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v23 = a1[5];
  v24 = a1[8];
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 24);
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    v7 = CFRetain(v6);
    if (v7)
    {
      v8 = v7;
      FigSimpleMutexUnlock();
      v9 = 0;
      v10 = 0;
      goto LABEL_20;
    }
  }

  v11 = dispatch_semaphore_create(0);
  v9 = v11;
  if (v11)
  {
    *(DerivedStorage + 64) = v11;
    dispatch_retain(v11);
    FigSimpleMutexUnlock();
    if (!epp_toggleInnerEndpointDiscovery(v2, 1))
    {
      v12 = dispatch_time(0, 1000000 * v5);
      dispatch_semaphore_wait(v9, v12);
      v10 = 1;
      goto LABEL_11;
    }

    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_1();
  }

  else
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_2();
  }

  v10 = 0;
LABEL_11:
  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 64) = 0;
  }

  v14 = *(DerivedStorage + 40);
  if (v14)
  {
    v8 = CFRetain(v14);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_3();
    if (v8)
    {
LABEL_20:
      v15 = CFRetain(v8);
      v16 = 0;
      v17 = 1;
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if (v8)
  {
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointPlus <= 90 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_4();
  }

  epp_postNotificationAsync(v2, @"WantsCacheEviction", &unk_283584390);
  v15 = 0;
  v8 = 0;
  v17 = 0;
  v16 = 4294949690;
  if (v9)
  {
LABEL_21:
    dispatch_release(v9);
  }

LABEL_22:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v17)
  {
    if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v18)
    {
      v19 = v18(v15, v23, v3, epp_activationCallback, v24);
      v20 = v19 == -12782;
      if (!v19)
      {
        v16 = 0;
        if (!v10)
        {
          goto LABEL_36;
        }

LABEL_35:
        epp_toggleInnerEndpointDiscovery(v2, 0);
        goto LABEL_36;
      }

      v16 = v19;
    }

    else
    {
      v16 = 4294954514;
      v20 = 1;
    }

    APSLogErrorAt();
    if (!v10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_5();
  v20 = 1;
  if (v10)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (!v20)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  epp_activationCallback(v15, 0, 0, v16, v24);
  if (v15)
  {
LABEL_38:
    CFRelease(v15);
  }

LABEL_39:
  v21 = a1[6];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[4];
  if (v22)
  {

    CFRelease(v22);
  }
}

uint64_t __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_2()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

@end