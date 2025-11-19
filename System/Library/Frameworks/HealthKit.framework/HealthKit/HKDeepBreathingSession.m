@interface HKDeepBreathingSession
@end

@implementation HKDeepBreathingSession

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_2;
    block[3] = &unk_1E7376678;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_3(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_4;
  v5[3] = &unk_1E73766A0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 remote_startSessionWithStartDate:v3 completion:v5];
}

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_5;
    block[3] = &unk_1E7376780;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_ERROR))
    {
      __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_4_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_ERROR))
  {
    __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __39___HKDeepBreathingSession_startGuiding__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_ERROR))
  {
    __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18_cold_1();
  }
}

void __51___HKDeepBreathingSession_endSessionWithEndReason___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_ERROR))
  {
    __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18_cold_1();
  }
}

uint64_t __56___HKDeepBreathingSession__connectionDidEncounterError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_deactivate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_alertDelegateDidEncounterError:v3];
}

uint64_t __44___HKDeepBreathingSession__isServerAttached__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isServerAttached];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __67___HKDeepBreathingSession_clientRemote_sessionDidReceiveHeartRate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_alertDelegateDidReceiveHeartRate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _queue_deactivate];
}

void __67___HKDeepBreathingSession__queue_alertDelegateDidReceiveHeartRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deepBreathingSession:*(a1 + 32) didReceiveHeartRate:*(a1 + 48)];
}

void __65___HKDeepBreathingSession__queue_alertDelegateDidEncounterError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deepBreathingSession:*(a1 + 32) didEncounterError:*(a1 + 40)];
}

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "error starting session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "received server error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end