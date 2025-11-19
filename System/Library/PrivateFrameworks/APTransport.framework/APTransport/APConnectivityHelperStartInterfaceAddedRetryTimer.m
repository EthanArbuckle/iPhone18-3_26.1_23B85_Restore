@interface APConnectivityHelperStartInterfaceAddedRetryTimer
@end

@implementation APConnectivityHelperStartInterfaceAddedRetryTimer

void ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v5 = ___APConnectivityHelperHandleInterfaceAddedRetryTimerFired_block_invoke;
  v6 = &unk_278BC82F0;
  v8 = &v10;
  v9 = v1;
  v7 = &v16;
  qos_class = dispatch_queue_get_qos_class(*(v1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v5(block);
  }

  else
  {
    dispatch_async_and_wait(*(v1 + 24), block);
  }

  if ((v17[3] & 1) == 0 && gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    v3 = v11[5];
    LogPrintF();
  }

  if (*(v1 + 88))
  {
    _APConnectivityHelperTrySettingWiFiDevice(v1);
  }

  if (*(v1 + 209))
  {
    _APConnectivityHelperTrySettingAWDLDevice(v1);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

@end