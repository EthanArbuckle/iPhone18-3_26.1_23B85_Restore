@interface APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted
@end

@implementation APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted

void ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = *(*(a1 + 32) + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2;
  v11[3] = &__block_descriptor_40_e18_v16__0__CWFEvent_8l;
  v11[4] = v3;
  [v4 setEventHandler:v11];
  [*(*(a1 + 32) + 16) startMonitoringEventType:30 error:&v12];
  v5 = [objc_msgSend(*(*(a1 + 32) + 16) "currentKnownNetworkProfile")];
  v6 = *(*(a1 + 32) + 96);
  FigSimpleMutexLock();
  v7 = *(a1 + 32);
  if (v12)
  {
    *(v7 + 280) = 0;
    v8 = 90;
  }

  else
  {
    v8 = 50;
  }

  *(v7 + 281) = v5;
  if (v8 >= gLogCategory_APBrokerManager)
  {
    if (gLogCategory_APBrokerManager != -1 || (v9 = _LogCategory_Initialize(), v7 = *(a1 + 32), v9))
    {
      LogPrintF();
      v7 = *(a1 + 32);
    }
  }

  v10 = *(v7 + 96);
  FigSimpleMutexUnlock();
  CFRelease(*(a1 + 32));
}

uint64_t ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 30)
  {
    v5 = [objc_msgSend(*(*(a1 + 32) + 16) "currentKnownNetworkProfile")];
    v6 = *(*(a1 + 32) + 96);
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    v7 = *(*(a1 + 32) + 96);
    FigSimpleMutexLock();
    v10 = *(a1 + 32);
    if (*(v10 + 281) != v5)
    {
      if (gLogCategory_APBrokerManager <= 50)
      {
        if (gLogCategory_APBrokerManager != -1 || (v12 = _LogCategory_Initialize(), v10 = *(a1 + 32), v12))
        {
          LogPrintF();
          v10 = *(a1 + 32);
        }
      }

      *(v10 + 281) = v5;
      _APBrokerManagerUpdateBrowsing(v10, v8, v9);
      v10 = *(a1 + 32);
    }

    v11 = *(v10 + 96);

    return FigSimpleMutexUnlock();
  }

  else if (gLogCategory_APBrokerManager <= 60)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2_cold_1(a1, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2_cold_1(a1, a2);
    }
  }

  return result;
}

uint64_t ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 type];
  return LogPrintF();
}

@end