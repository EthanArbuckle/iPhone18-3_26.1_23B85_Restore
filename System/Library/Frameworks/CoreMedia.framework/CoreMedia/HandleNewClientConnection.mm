@interface HandleNewClientConnection
@end

@implementation HandleNewClientConnection

void __figXPC_HandleNewClientConnection_block_invoke(void *a1, void *a2)
{
  v4 = MEMORY[0x19A8DA4F0](a2);
  if ((isFirstTime & 1) == 0)
  {
    if (FigServer_GetEnvironment())
    {
      int64 = xpc_dictionary_get_int64(a2, ".Date");
      if (int64 >= 1)
      {
        v6 = ((FigGetUpTimeNanoseconds() - int64) / 0xF4240);
        EnvironmentName = FigServer_GetEnvironmentName();
        FigCAStatsReportingSubmitData(EnvironmentName, @"com.apple.coremedia.serverstartup", @"startupTime", v6);
      }
    }
  }

  if (v4 == MEMORY[0x1E69E9E80])
  {
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[6];

    figXPC_HandleMessage(v14, v15, v16, a2);
  }

  else if (v4 == MEMORY[0x1E69E9E98] && a2 == MEMORY[0x1E69E9E20])
  {
    v8 = a1[4];
    v9 = a1[6];
    v10 = xpc_connection_copy_invalidation_reason();
    pid = xpc_connection_get_pid(v9);
    context = xpc_connection_get_context(v9);
    if (context)
    {
      v13 = CFRetain(context);
    }

    else
    {
      v13 = 0;
    }

    FigApplicationStateMonitorRemovePIDToIgnore(*(v13 + 40));
    FigSimpleMutexLock(*(v8 + 112));
    FigServer_RememberProcessInfoForAFewSeconds(*(v13 + 3));
    figXPC_ForgetProcessInfo(v8, pid);
    FigSimpleMutexUnlock(*(v8 + 112));
    CFRelease(v13);

    free(v10);
  }
}

@end