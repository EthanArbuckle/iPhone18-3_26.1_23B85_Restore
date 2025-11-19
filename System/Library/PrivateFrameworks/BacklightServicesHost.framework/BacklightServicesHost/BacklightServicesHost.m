uint64_t OUTLINED_FUNCTION_8_3()
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_8_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint8_t buf)
{

  _os_log_impl(a1, v23, OS_LOG_TYPE_INFO, a4, &buf, 0x2Au);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_7(float a1)
{
  *(v3 - 96) = a1;
  *(v3 - 92) = v2;
  *(v3 - 84) = 2114;
  *(v3 - 82) = v1;
}

uint64_t OUTLINED_FUNCTION_0_9()
{
  result = *(v0 + 64);
  v2 = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_0_16(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__CFString *NSStringFromBLSBacklightDisplayMode(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected display mode:%ld", a1];
  }

  else
  {
    v2 = off_27841F858[a1];
  }

  return v2;
}

__CFString *NSStringFromCBDisplayMode_bls(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_27841E908[a1];
  }
}

__CFString *NSStringFromBLSHOnSystemSleepActionState(uint64_t a1)
{
  v1 = @"Idle";
  if (a1 == 1)
  {
    v1 = @"Performing";
  }

  if (a1 == 2)
  {
    return @"Completed";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_14_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_impl(a1, v27, OS_LOG_TYPE_INFO, a4, &buf, 0x16u);
}

void OUTLINED_FUNCTION_14_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

void OUTLINED_FUNCTION_14_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

id OUTLINED_FUNCTION_2_5(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_2_9(void *a1, const char *a2)
{

  return [a1 countSpecifier:v2 hasSecondsBudget:1 isCoalesceAllowed:0];
}

void OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  [(BLSHBacklightInactiveEnvironmentSession *)v9 notifyEnvironmentObserversWithBlock:?];
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

double OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return [(BLSHInactiveBudgetBucket *)v3 addSpecifier:a1 allowBeforeStart:v2 withCountBlock:va];
}

void OUTLINED_FUNCTION_12_2(os_unfair_lock_s *a1)
{
  v2 = a1 + 24;

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_12_3(os_unfair_lock_s *a1)
{
  v2 = a1 + 16;

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, v12, a4, &buf, 0x44u);
}

void OUTLINED_FUNCTION_3_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x36u);
}

void OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_3_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 180) = 2114;
  *(v2 + 110) = result;
  *(v3 - 170) = 2048;
  *(v3 - 168) = a2;
  return result;
}

void OUTLINED_FUNCTION_3_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x2Au);
}

BOOL BLSHCheckForCriticalAssertFailureAndPrompt(int a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v5 = [v4 dictionaryForKey:@"BLSHCriticalAssertDidFail"];

  if (v5)
  {
    v6 = [[BLSHCriticalAssertDidFailDetails alloc] initWithCriticalAssertDidFailDictionary:v5];
    v7 = v6;
    if (a2)
    {
      *a2 = [(BLSHCriticalAssertDidFailDetails *)v6 explanation];
    }

    v8 = bls_diagnostics_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      BLSHCheckForCriticalAssertFailureAndPrompt_cold_1(v7, v8);
    }

    if (!os_variant_has_internal_diagnostics() || !a1)
    {
      goto LABEL_15;
    }

    if ([BLSHInternalTapToRadarIgnorer shouldIgnoreDesignation:2])
    {
      BLSHResetCriticalAssertFailure();
      v9 = bls_diagnostics_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        BLSHCheckForCriticalAssertFailureAndPrompt_cold_5(v9);
      }
    }

    else
    {
      v10 = [(BLSHCriticalAssertDidFailDetails *)v7 date];
      [v10 timeIntervalSinceNow];
      v12 = v11;

      if (v12 >= -86400.0)
      {
        v14 = [(BLSHCriticalAssertDidFailDetails *)v7 radarIsUserInitiated];
        v15 = bls_diagnostics_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (v14)
        {
          if (v16)
          {
            BLSHCheckForCriticalAssertFailureAndPrompt_cold_3();
          }

          _BLSHShowCriticalAssertFailureAlert(v7);
        }

        else
        {
          if (v16)
          {
            BLSHCheckForCriticalAssertFailureAndPrompt_cold_2();
          }

          _BLSHRequestNonInteractiveTTRDraft(v7);
        }

        goto LABEL_15;
      }

      BLSHResetCriticalAssertFailure();
      v9 = bls_diagnostics_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        BLSHCheckForCriticalAssertFailureAndPrompt_cold_4(v7, v9);
      }
    }

LABEL_15:
  }

  return v5 != 0;
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_13_2(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;

  [(BLSHBacklightFBSceneHostEnvironment *)a2 notifyObserversWithBlock:a4];
}

uint64_t BLSBacklightStateForBLSBacklightDisplayMode(unint64_t a1)
{
  if (a1 < 7)
  {
    return qword_21FDA5368[a1];
  }

  v3 = bls_backlight_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    BLSBacklightStateForBLSBacklightDisplayMode_cold_1(a1, v3);
  }

  return 0;
}

BOOL DefaultIsEnvironmentTransitionAnimated(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && a1 != 3;
}

uint64_t IsDisplayModeTransitionToActiveOn(unint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFELL) != 2 || a1 > 6;
  v3 = 0x70u >> a1;
  if (v2)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void OUTLINED_FUNCTION_9_2(os_unfair_lock_s *a1)
{
  v2 = a1 + 6;

  os_unfair_lock_lock(v2);
}

BOOL OUTLINED_FUNCTION_34_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void sub_21FD18310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_44(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void BLSHGetRequestedFidelityForBacklightState(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((a1 - 2) < 2)
  {
    (*(v6 + 2))(v6, 3);
    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    goto LABEL_9;
  }

  if (([v5 isAlwaysOnEnabledForEnvironment] & 1) == 0)
  {
LABEL_8:
    v7[2](v7, 0);
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = [v5 identifier];
    BLSEncode4Chars();
    v9 = [v5 identifier];
    BLSEncode4Chars();
    kdebug_trace();

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __BLSHGetRequestedFidelityForBacklightState_block_invoke;
    v10[3] = &unk_278420258;
    v11 = v7;
    [v5 requestedFidelityForInactiveContentWithCompletion:v10];
  }

  else
  {
    v7[2](v7, 1);
  }

LABEL_9:
}

id BLSVisualStateForBacklightState(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v11 isAlwaysOnEnabledForEnvironment];
  v13 = [v11 isLiveUpdating];
  v14 = [v11 hasUnrestrictedFramerateUpdates];
  v15 = BLSIs1HzFlipbookForEnvironment(v11);
  v16 = BLSVisualStateForBacklightStateAndExplictOptions(a1, a2, v12, v13, v14, v15, v11, v10, v9);

  return v16;
}

uint64_t BLSIs1HzFlipbookForEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 is1HzFlipbook];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id BLSVisualStateForBacklightStateAndExplictOptions(uint64_t a1, uint64_t a2, unsigned int a3, char a4, int a5, int a6, void *a7, void *a8, void *a9)
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = v18;
  v20 = a3;
  if (a1 != 1)
  {
    v20 = a1;
  }

  v21 = v20 - 2;
  v22 = 2;
  v23 = 1;
  if (a5 | a6)
  {
    v23 = 2;
  }

  if ((a4 & 1) == 0)
  {
    v22 = v23;
  }

  v24 = v20 - 1;
  if (v20 == 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  if (v21 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 3;
  }

  if (v17)
  {
    if (!v18)
    {
      v18 = MEMORY[0x277CBEAA8];
    }

    v27 = [v18 now];
    v26 = [v17 allowedFidelityAtDate:v27 forEnvironment:v16 expectedFidelity:v26];
  }

  if (v24 > 2)
  {
    v29 = 0;
    v28 = 1;
  }

  else
  {
    v28 = qword_21FDA5448[v24];
    v29 = qword_21FDA5460[v24];
  }

  if (v26 < a2)
  {
    a2 = v26;
  }

  v30 = [objc_alloc(MEMORY[0x277CF08C8]) initWithActiveAppearance:v28 updateFidelity:a2 adjustedLuminance:v29 dimmed:a1 == 3];

  return v30;
}

void OUTLINED_FUNCTION_33(os_unfair_lock_s *a1)
{
  v2 = a1 + 2;

  os_unfair_lock_lock(v2);
}

BOOL OUTLINED_FUNCTION_33_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return v1;
}

id OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void *OUTLINED_FUNCTION_4_9@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = result[4];
  v4 = result[5];
  v5 = result[6];
  return result;
}

void OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, void *a3)
{

  dispatch_after(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v4 - 160) = 1024;
  *(v2 + 34) = v3;
  *(v4 - 154) = a2;
  *(v4 - 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v11);
  v13 = *(v10 + 16);
  return v10;
}

void OUTLINED_FUNCTION_6_5(float a1)
{
  *(v3 - 144) = a1;
  *(v2 + 4) = v1;
  *(v3 - 132) = 2114;
}

void OUTLINED_FUNCTION_5_0(os_unfair_lock_s *a1)
{
  v2 = a1 + 8;

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_5_1(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v17 - 192) = a1;
  v18 = v17 - 192;
  *(v18 + 4) = a16;
  *(v17 - 180) = 2114;
  *(v18 + 14) = v16;
  *(v17 - 170) = 2114;
}

BOOL OUTLINED_FUNCTION_5_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_35_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_21FD1CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD1CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD1CF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1D7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD1E26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _populateBacklightChangeEventStruct(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2 & 0xFE;
  if (v3)
  {
    ++v4;
  }

  *a2 = v4;
  v9 = v3;
  if (v3)
  {
    *(a2 + 8) = [v3 eventID];
    *(a2 + 16) = [v9 state];
    *(a2 + 20) = [v9 previousState];
    v3 = v9;
  }

  v5 = [v3 changeRequest];
  v6 = v5;
  v7 = *(a2 + 24) & 0xFE;
  if (v5)
  {
    ++v7;
  }

  *(a2 + 24) = v7;
  if (v5)
  {
    *(a2 + 28) = [v5 requestedActivityState];
    v8 = [v6 explanation];
    *(a2 + 32) = [BLSHBacklightTransitionStateMachineAbortContext backlightChangeRequestExplanationIdentifierFromString:v8];

    *(a2 + 40) = [v6 timestamp];
    *(a2 + 48) = [v6 sourceEvent];
  }
}

uint64_t BLSBacklightFactorFromCBDisplayMode(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_21FDA5230[a1 - 1];
  }
}

__CFString *NSStringFromCBFlipbookState_bls(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"WillTurnOn";
  }

  else
  {
    return off_27841E930[a1 - 1];
  }
}

void sub_21FD229A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD23E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD24C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD29434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  if (v57)
  {
    objc_destroyWeak(v58);
  }

  objc_destroyWeak(&a57);
  objc_destroyWeak((v59 - 208));
  _Unwind_Resume(a1);
}

void sub_21FD2AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromBLSHAlwaysOnPresentationEngineState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Stopped";
  }

  else
  {
    return off_27841EFA0[a1 - 1];
  }
}

void sub_21FD2C7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD2EE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD2F428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v3 - 168));
  _Block_object_dispose((v3 - 160), 8);
  _Block_object_dispose((v3 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21FD32394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_32()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_36(__int16 a1@<W8>)
{
  *(v2 - 170) = 1024;
  *(v2 - 168) = v1;
  *(v2 - 164) = a1;
}

void _BLSHShowFlipbook1hzMissAlert(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [v2 copy];

  if ([v3 hasSuffix:@"AP"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@"AP", "length")}];

    v3 = v4;
  }

  v5 = MGCopyAnswer();
  v6 = [v5 copy];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ - 1hz Flipbook DCP Missed Frames Detected", v3, v6];
  [MEMORY[0x277CCACA8] stringWithFormat:@"IOReport shows that the DCP is reporting %lld missed 1hz flipbook frames on this device.", a1];
  v7 = v24 = a1;
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v8 processName];

  v10 = bls_backlight_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  v12 = [[BLSHTapToRadarDescriptor alloc] initWithDesignation:1 radarTitle:v25 radarDescription:v7];
  v13 = [MEMORY[0x277CBEAA8] now];
  [(BLSHTapToRadarDescriptor *)v12 setTimeOfIssue:v13];

  v14 = MEMORY[0x277CCACA8];
  if (v11)
  {
    v15 = @"with";
  }

  else
  {
    v15 = @"without";
  }

  v16 = [(BLSHTapToRadarDescriptor *)v12 timeOfIssue];
  v17 = [v16 bls_loggingString];
  v18 = [v14 stringWithFormat:@"%@ alert: BacklightServices 1hz flipbook missed frames detected %@ debug logs at %@ on %@.\nPlease file a radar against BacklightServices | All with a sysdiagnose.", v9, v15, v17, v6];
  [(BLSHTapToRadarDescriptor *)v12 setTtrPromptMessage:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Flipbook 1hz frame miss detected from DCP in %@", v9];
  [(BLSHTapToRadarDescriptor *)v12 setTtrDisplayReason:v19];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___BLSHShowFlipbook1hzMissAlert_block_invoke;
  v29[3] = &__block_descriptor_40_e5_v8__0l;
  v29[4] = v24;
  v20 = MEMORY[0x223D70730](v29);
  v21 = +[BLSHInternalTapToRadarManager sharedTapToRadarManager];
  v22 = bls_diagnostics_log();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___BLSHShowFlipbook1hzMissAlert_block_invoke_2;
  v26[3] = &unk_27841F1A0;
  v27 = v20;
  v28 = &__block_literal_global_6;
  v23 = v20;
  [v21 requestTapToRadar:v12 log:v22 completion:v26];
}

uint64_t _bls1hzFlipbookWatchdogLockStatusDidChange()
{
  v0 = bls_diagnostics_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _bls1hzFlipbookWatchdogLockStatusDidChange_cold_1();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = objc_opt_class();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, @"com.apple.mobile.keybagd.lock_status", 0);
  return _BLSHShowFlipbook1hzMissAlert(__aodStatsFlipbookMissValueForTTRAlert);
}

void sub_21FD3B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD3C058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v34 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_21FD3CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_21FD404CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD418D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FD4220C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void _springboardDidFinishStartup(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_time(0, 120000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___springboardDidFinishStartup_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void ___springboardDidFinishStartup_block_invoke(uint64_t a1)
{
  [BLSHWatchdogProvider checkForWatchdogDidFire:0];
  BLSHCheckForCriticalAssertFailureAndPrompt(1, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___springboardDidFinishStartup_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_classLock_block_invoke_onceToken != -1)
  {
    dispatch_once(&_classLock_block_invoke_onceToken, block);
  }
}

void ___springboardDidFinishStartup_block_invoke_2(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _criticalAssertDidFail, @"BLSHCriticalAssertDidFailNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _criticalAssertDidFail()
{
  v0 = dispatch_time(0, 1000000000);
  v1 = MEMORY[0x277D85CD0];

  dispatch_after(v0, v1, &__block_literal_global_10);
}

void sub_21FD46AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD47BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 40));
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _blsAlertCallback(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = __dialog;
  v4 = v3;
  if (a2 == 2)
  {
    v5 = 2;
  }

  else if (a2 == 1)
  {
    v5 = 0;
  }

  else if (a2)
  {
    v6 = v3[2];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _blsAlertCallback_cold_1(a2, v6);
    }

    v3 = v4;
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v3 _alertDidDismiss:v5];
}

void sub_21FD4A398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD4BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21FD4E268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _blsWatchdogLockStatusDidChange()
{
  v0 = bls_diagnostics_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _blsWatchdogLockStatusDidChange_cold_1();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = objc_opt_class();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, @"com.apple.mobile.keybagd.lock_status", 0);
  return [BLSHWatchdogProvider checkForWatchdogDidFire:0];
}

void sub_21FD4FFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD51ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21FD52D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD53D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD56C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_15_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_22_0(void *a1)
{
  v4 = *(v1 + 32);

  [(BLSHBacklightFBSceneHostEnvironment *)v4 setClientActive:a1 forwardedToSettings:?];
}

void OUTLINED_FUNCTION_23()
{

  os_unfair_lock_lock(v0 + 16);
}

id OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __BLSHGetRequestedFidelityForBacklightState_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

void sub_21FD5C144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD5D2A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21FD5EA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_32_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  return [v21 countByEnumeratingWithState:&a9 objects:&a21 count:16];
}

id BLSHSubhostedEnvironmentIdentifierForEnvironment(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 identifier];
  v3 = [v1 stringWithFormat:@"subhosted: %@", v2];

  return v3;
}

void sub_21FD628EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FD64300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD66434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BLSCacheFlipbookOnDisplayWakeForEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 cacheFlipbookOnDisplayWake];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BLSDefaultFidelityForBacklightState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isAlwaysOnEnabledForEnvironment];
  v5 = [v3 isLiveUpdating];
  v6 = [v3 hasUnrestrictedFramerateUpdates];
  v7 = BLSIs1HzFlipbookForEnvironment(v3);

  v8 = v4;
  if (a1 != 1)
  {
    v8 = a1;
  }

  v9 = v8 - 2;
  v10 = 2;
  v11 = 1;
  if (v6 | v7)
  {
    v11 = 2;
  }

  if ((v5 & 1) == 0)
  {
    v10 = v11;
  }

  if (v8 == 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v9 >= 2)
  {
    return v12;
  }

  else
  {
    return 3;
  }
}

id BLSVisualStateForBacklightStateAndSettings(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [v12 bls_isAlwaysOnEnabledForEnvironment];
  v14 = [v12 bls_isLiveUpdating];
  v15 = [v12 bls_hasUnrestrictedFramerateUpdates];

  v16 = BLSIs1HzFlipbookForEnvironment(v11);
  v17 = BLSVisualStateForBacklightStateAndExplictOptions(a1, 3, v13, v14, v15, v16, v11, v10, v9);

  return v17;
}

uint64_t __BLSHEncodePresentationTime_block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v1 = BLSHEncodePresentationTime_calendar;
  BLSHEncodePresentationTime_calendar = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_21FD6A680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBLSBacklightBrightnessCurve(uint64_t a1)
{
  if (a1)
  {
    return @"AlwaysOn";
  }

  else
  {
    return @"Normal";
  }
}

void sub_21FD6B904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return objc_opt_class();
}

void sub_21FD6E8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void BLSHRecordCriticalAssertFailure(void *a1, uint64_t a2, uint64_t a3)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v16[0] = @"BLSHCriticalAssertDidFailDate";
  v6 = [MEMORY[0x277CBEAA8] date];
  v17[0] = v6;
  v17[1] = v5;
  v16[1] = @"BLSHCriticalAssertDidFailDescription";
  v16[2] = @"BLSHCriticalAssertDidFailBuildVersion";
  v7 = MGCopyAnswer();
  v17[2] = v7;
  v16[3] = @"BLSHCriticalAssertDidFailProcess";
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v8 processName];
  v17[3] = v9;
  v16[4] = @"BLSHCriticalAssertDidFailUserInitiated";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v17[4] = v10;
  v16[5] = @"BLSHCriticalAssertDidFailSource";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v17[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  [v13 setObject:v12 forKey:@"BLSHCriticalAssertDidFail"];

  v14 = bls_diagnostics_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    BLSHRecordCriticalAssertFailure_cold_1(v5, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

BLSHTapToRadarDescriptor *_BLSHDescriptorForDetails(void *a1)
{
  v1 = a1;
  v2 = [v1 processName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v5 processName];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [v1 device];
  v8 = [v1 buildVersion];
  v9 = [v1 explanation];
  v10 = @"without";
  if ([v1 debugLogsEnabled])
  {
    v11 = @"with";
  }

  else
  {
    v11 = @"without";
  }

  v12 = [v1 date];
  v13 = [v12 bls_loggingString];
  v32 = [v6 stringWithFormat:@"%@/%@: BacklightServices %@ critical assert failed in %@ %@ debug logs at %@", v7, v8, v9, v4, v11, v13];

  v14 = MEMORY[0x277CCACA8];
  if ([v1 debugLogsEnabled])
  {
    v15 = @"with";
  }

  else
  {
    v15 = @"without";
  }

  v16 = [v1 date];
  v17 = [v16 bls_loggingString];
  v18 = [v1 buildVersion];
  v19 = [v1 explanation];
  v20 = [v14 stringWithFormat:@"BacklightServices critical assert failed in %@ %@ debug logs at %@ on %@\n\nExplanation: %@", v4, v15, v17, v18, v19];

  v21 = MEMORY[0x277CCACA8];
  if ([v1 debugLogsEnabled])
  {
    v10 = @"with";
  }

  v22 = [v1 date];
  v23 = [v22 bls_loggingString];
  v24 = [v1 buildVersion];
  v25 = [v1 explanation];
  v26 = [v21 stringWithFormat:@"%@ abort: BacklightServices critical assert failed %@ debug logs at %@ on %@:%@.\nPlease file a radar against BacklightServices | All with a sysdiagnose.\n\nTo disable this prompt from CLI:\n\nlogin -f mobile defaults write com.apple.BacklightServices IgnoredTapToRadarDesignations -array -int 0", v4, v10, v23, v24, v25];

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightServices critical assert failed in %@", v4];
  v28 = [[BLSHTapToRadarDescriptor alloc] initWithDesignation:2 radarTitle:v32 radarDescription:v20];
  v29 = [v1 date];
  [(BLSHTapToRadarDescriptor *)v28 setTimeOfIssue:v29];

  [(BLSHTapToRadarDescriptor *)v28 setTtrPromptMessage:v26];
  [(BLSHTapToRadarDescriptor *)v28 setTtrDisplayReason:v27];
  v30 = [v1 radarIsUserInitiated];

  [(BLSHTapToRadarDescriptor *)v28 setUserInitiated:v30];

  return v28;
}

void _BLSHShowCriticalAssertFailureAlert(void *a1)
{
  v3 = _BLSHDescriptorForDetails(a1);
  v1 = +[BLSHInternalTapToRadarManager sharedTapToRadarManager];
  v2 = bls_diagnostics_log();
  [v1 requestTapToRadar:v3 log:v2 completion:&__block_literal_global_29];
}

void BLSHResetCriticalAssertFailure()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  [v0 removeObjectForKey:@"BLSHCriticalAssertDidFail"];
}

BOOL _blsCriticalAssertLockStatusDidChange()
{
  v0 = bls_diagnostics_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _blsCriticalAssertLockStatusDidChange_cold_1();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = objc_opt_class();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, @"com.apple.mobile.keybagd.lock_status", 0);
  return BLSHCheckForCriticalAssertFailureAndPrompt(1, 0);
}

void _BLSHRequestNonInteractiveTTRDraft(void *a1)
{
  v3 = _BLSHDescriptorForDetails(a1);
  v1 = +[BLSHInternalTapToRadarManager sharedTapToRadarManager];
  v2 = bls_diagnostics_log();
  [v1 requestTapToRadarNonInteractiveDraft:v3 log:v2 completion:&__block_literal_global_119];
}

BOOL BLSHIsUnitTestRunning()
{
  v0 = NSClassFromString(&cfstr_Xctestprobe.isa);
  if (!v0)
  {
    return 0;
  }

  v1 = [(objc_class *)v0 valueForKey:@"isTesting"];
  v2 = v1 != 0;

  return v2;
}

void sub_21FD71494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FD717CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _BLSHShowWatchdogFailureAlert(void *a1, int a2, int a3)
{
  v3 = a1;
  v4 = MGCopyAnswer();
  v5 = [v4 copy];

  if ([v5 hasSuffix:@"AP"])
  {
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(@"AP", "length")}];

    v5 = v6;
  }

  v7 = MGCopyAnswer();
  v8 = [v7 copy];

  v9 = [v3 radarTitle];
  v10 = [v9 containsString:v5];

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v3 radarTitle];
    v13 = [v11 stringWithFormat:@"%@%@ - %@", v5, v8, v12];
    [v3 setRadarTitle:v13];
  }

  v40 = v5;
  v14 = [MEMORY[0x277CCAC38] processInfo];
  v15 = [v14 processName];

  v16 = bls_backlight_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

  v18 = [BLSHTapToRadarDescriptor alloc];
  v19 = [v3 radarTitle];
  v20 = [v3 radarDescription];
  v21 = [(BLSHTapToRadarDescriptor *)v18 initWithDesignation:1 radarTitle:v19 radarDescription:v20];

  v22 = [v3 timeOfIssue];
  [(BLSHTapToRadarDescriptor *)v21 setTimeOfIssue:v22];

  v23 = MEMORY[0x277CCACA8];
  v24 = [v3 identifier];
  if (v17)
  {
    v25 = @"with";
  }

  else
  {
    v25 = @"without";
  }

  v26 = [v3 timeOfIssue];
  v27 = [v26 bls_loggingString];
  v28 = [v23 stringWithFormat:@"%@ abort: BacklightServices %@ watchdog failed %@ debug logs at %@ on %@.\nPlease file a radar against BacklightServices | All with a sysdiagnose.", v15, v24, v25, v27, v8];
  [(BLSHTapToRadarDescriptor *)v21 setTtrPromptMessage:v28];

  v29 = MEMORY[0x277CCACA8];
  v30 = [v3 displayReason];
  v31 = [v29 stringWithFormat:@"%@ in %@", v30, v15];
  [(BLSHTapToRadarDescriptor *)v21 setTtrDisplayReason:v31];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = ___BLSHShowWatchdogFailureAlert_block_invoke;
  v47[3] = &unk_27841E588;
  v32 = v3;
  v48 = v32;
  v49 = a2;
  v33 = MEMORY[0x223D70730](v47);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = ___BLSHShowWatchdogFailureAlert_block_invoke_111;
  v45[3] = &unk_27841E650;
  v34 = v32;
  v46 = v34;
  v35 = MEMORY[0x223D70730](v45);
  v36 = v35;
  if (a2)
  {
    v33[2](v33);
  }

  else if (a3)
  {
    (*(v35 + 16))(v35);
  }

  else
  {
    v37 = +[BLSHInternalTapToRadarManager sharedTapToRadarManager];
    v38 = bls_diagnostics_log();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = ___BLSHShowWatchdogFailureAlert_block_invoke_2;
    v42[3] = &unk_27841F1A0;
    v43 = v33;
    v44 = v36;
    [v37 requestTapToRadar:v21 log:v38 completion:v42];
  }
}

void _blsWatchdogTimerLockStatusDidChange()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = bls_diagnostics_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _blsWatchdogTimerLockStatusDidChange_cold_1(v0);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = objc_opt_class();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, @"com.apple.mobile.keybagd.lock_status", 0);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [__blsh_ttrwatchdog_lastFailureDetails allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        _BLSHShowWatchdogFailureAlert(*(*(&v9 + 1) + 8 * v7++), 0, 0);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_21FD75D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void BLSBacklightStateForBLSBacklightDisplayMode_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Unexpected display mode:%ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _blsAlertCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "Got unpexpected response in _blsAlertCallback(): %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _blsWatchdogLockStatusDidChange_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_21FD96C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void BLSHRecordCriticalAssertFailure_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "BLSHCriticalAssert failure: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void BLSHCheckForCriticalAssertFailureAndPrompt_cold_1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 date];
  v5 = [v4 bls_loggingString];
  v6 = [a1 buildVersion];
  v7 = [a1 explanation];
  v9 = 138544130;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 1026;
  v16 = [a1 radarIsUserInitiated];
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "BLSH Critical Assert did fail at %{public}@ on build %{public}@: %{public}@ userInitiated: %{public}d", &v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

void BLSHCheckForCriticalAssertFailureAndPrompt_cold_4(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 date];
  v4 = [v3 bls_loggingString];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "not prompting to file radar for BLS critical assert failure from %{public}@ because it's too old", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void BLSHCheckForCriticalAssertFailureAndPrompt_cold_5(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"BLSHCriticalAssertDidFail";
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "not prompting to file radars for BLS critical assert failures on this device due to user preferences so clearing %@{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}