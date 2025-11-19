id bls_scenes_log()
{
  if (bls_scenes_log_onceToken != -1)
  {
    bls_scenes_log_cold_1();
  }

  v1 = bls_scenes_log___logger;

  return v1;
}

uint64_t __bls_scenes_log_block_invoke()
{
  bls_scenes_log___logger = os_log_create("com.apple.BacklightServices", "scenes");

  return MEMORY[0x2821F96F8]();
}

_DWORD *BLSStateDataWithTitleDescriptionAndHints(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v3 = @"<nil title>";
  }

  if (v4 && [v4 length] && objc_msgSend(MEMORY[0x277CCAC58], "propertyList:isValidForFormat:", v4, 200))
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v12];
    v6 = v12;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"no descriptive state data or state data is not in property list format, please file a radar, description = %@", v4];
    v11 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v11];
    v6 = v11;
  }

  if (v5)
  {
    v8 = [v5 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    *v9 = 1;
    v9[1] = v8;
    [(__CFString *)v3 UTF8String];
    __strlcpy_chk();
    memcpy(v9 + 50, [v5 bytes], v8);
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1000040BEF03554uLL);
  }

  return v9;
}

id BLSLoggingStringForMachTime(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [v3 bls_initWithMachContinuousTime:a1];
  v5 = [v4 bls_loggingString];
  v6 = [v2 stringWithFormat:@"%llu approx:%@", a1, v5];

  return v6;
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_10_0(os_unfair_lock_s *a1)
{
  v2 = a1 + 8;

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return objc_opt_isKindOfClass();
}

id BLSShortLoggingStringForMachTime(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [v3 bls_initWithMachContinuousTime:a1];
  v5 = [v4 bls_shortLoggingString];
  v6 = [v2 stringWithFormat:@"%llu approx:%@", a1, v5];

  return v6;
}

id bls_assertions_log()
{
  if (bls_assertions_log_onceToken != -1)
  {
    bls_assertions_log_cold_1();
  }

  v1 = bls_assertions_log___logger;

  return v1;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_3_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_log_debug_impl(a1, v21, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

BOOL OUTLINED_FUNCTION_9_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_4_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_log_impl(a1, v21, OS_LOG_TYPE_INFO, a4, &buf, 0x20u);
}

void OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v14;

  [(BLSAssertion *)v14 notifyObserversWithBlock:?];
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *NSStringFromBLSBacklightState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Off";
  }

  else
  {
    return off_2784288E8[a1 - 1];
  }
}

__CFString *NSStringFromBLSBacklightChangeSourceEvent(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_278428DF8[a1 - 1];
  }
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v4 = a2;
  v5 = [v4 previousState];
  v6 = [v4 state];
  v7 = [v4 wasTransitioning];

  if (v5 == v6)
  {
    if (v7)
    {
      v8 = @"<-•->";
    }

    else
    {
      v8 = @"<->";
    }

    v9 = v12;
  }

  else
  {
    if ((v5 - 1) > 2)
    {
      v10 = @"Off";
    }

    else
    {
      v10 = off_2784288E8[v5 - 1];
    }

    [v12 appendString:v10];
    v9 = v12;
    if (v7)
    {
      v8 = @"-•->";
    }

    else
    {
      v8 = @"->";
    }
  }

  [v9 appendString:v8];
  if ((v6 - 1) > 2)
  {
    v11 = @"Off";
  }

  else
  {
    v11 = off_2784288E8[v6 - 1];
  }

  [v12 appendString:v11];
  [v12 appendString:@": "];
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v14 + 1) + 8 * v7) changeRequest];
        v9 = *(*(a1 + 40) + 8);
        if (*(v9 + 24) == 1)
        {
          *(v9 + 24) = 0;
        }

        else
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendString:@""];
        v10 = [v8 explanation];
        [v3 appendString:v10];

        objc_msgSend(v3, "appendString:", @"(");
        v11 = NSStringFromBLSBacklightChangeSourceEvent([v8 sourceEvent]);
        [v3 appendString:v11];

        [v3 appendString:@""]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

__CFString *NSStringFromBLSBacklightChangeEvents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  v7 = v6;
  if (v5)
  {
    v8 = [v3 firstObject];
    v9 = objc_opt_new();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __NSStringFromBLSBacklightChangeEvents_block_invoke_2;
    v19[3] = &unk_278428828;
    v23 = &__block_literal_global_0;
    v24 = v5;
    v10 = v8;
    v20 = v10;
    v11 = v9;
    v21 = v11;
    v22 = v3;
    [v11 appendCustomFormatWithName:0 block:v19];
    if (v7)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"aborted:(%u){", v7];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __NSStringFromBLSBacklightChangeEvents_block_invoke_4;
      v15[3] = &unk_2784288A0;
      v16 = v4;
      v17 = v11;
      v18 = &__block_literal_global_0;
      [v17 appendBodySectionWithOpenDelimiter:v12 closeDelimiter:@"} " block:v15];
    }

    v13 = [v11 description];

LABEL_9:
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = bls_backlight_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      NSStringFromBLSBacklightChangeEvents_cold_1(v3, v4, v10);
    }

    v13 = @"<NULL>";
    goto LABEL_9;
  }

  v13 = @"<NULL>";
LABEL_10:

  return v13;
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 appendFormat:@"(%u){ ", *(a1 + 64)];
  v4 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __NSStringFromBLSBacklightChangeEvents_block_invoke_3;
  v6[3] = &unk_278428800;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v9;
  [v5 appendCustomFormatWithName:0 block:v6];
  [v3 appendString:@" } "];

  _Block_object_dispose(v9, 8);
}

void sub_21FE28864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BLSEncode4Chars(void *a1, int a2)
{
  if ((strlen([a1 UTF8String]) - a2) < 1)
  {
    return 0;
  }

  __memcpy_chk();
  return bswap32(0);
}

__CFString *NSStringFromBLSUpdateFidelity(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected fidelity value:%ld", a1];
  }

  else
  {
    v2 = off_2784292C0[a1 + 1];
  }

  return v2;
}

void __NSStringFromBLSAssertingObject_block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) descriptor];
  v2 = *(a1 + 40);
  v3 = [v11 explanation];
  v4 = [v2 appendObject:v3 withName:@"explanation"];

  v5 = *(a1 + 40);
  v6 = [v11 attributes];
  v7 = [v5 appendInteger:objc_msgSend(v6 withName:{"count"), @"attributes"}];

  v8 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"isAcquired"), @"isAcquired"}];
  [*(a1 + 32) activeDuration];
  if (v9 > 0.0)
  {
    v10 = [*(a1 + 40) appendTimeInterval:@"duration" withName:1 decomposeUnits:?];
  }
}

id NSStringFromBLSAssertingObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __NSStringFromBLSAssertingObject_block_invoke;
  v10 = &unk_278428688;
  v11 = v1;
  v12 = v2;
  v3 = v2;
  v4 = v1;
  [v3 appendProem:v4 block:&v7];
  v5 = [v3 description];

  return v5;
}

id bls_environment_log()
{
  if (bls_environment_log_onceToken != -1)
  {
    bls_environment_log_cold_1();
  }

  v1 = bls_environment_log___logger;

  return v1;
}

uint64_t BLSBacklightStateForVisuaState(void *a1)
{
  v1 = a1;
  v2 = [v1 adjustedLuminance];
  if (v2 == 2)
  {
    if ([v1 isDimmed])
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = v2 == 1;
  }

  return v3;
}

uint64_t BLSDeviceSupports1HzFlipbook()
{
  v0 = MGGetBoolAnswer();
  if (!os_variant_has_internal_diagnostics() || (v0 & 1) != 0)
  {
    return v0;
  }

  return MEMORY[0x282203478]("NanoTimeKitExtras", "aod_vibrancy_override");
}

__CFString *NSStringFromBLSFlipbookState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Off";
  }

  else
  {
    return off_2784288C0[a1 - 1];
  }
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke_4(id *a1)
{
  v2 = [a1[4] objectEnumerator];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [v2 nextObject];
  if (v11[5])
  {
    v3 = MEMORY[0x277D85DD0];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = __NSStringFromBLSBacklightChangeEvents_block_invoke_70;
      v5[3] = &unk_278428878;
      v4 = a1[5];
      v8 = a1[6];
      v9 = &v10;
      v6 = a1[5];
      v7 = v2;
      [v4 appendCustomFormatWithName:0 block:v5];
    }

    while (v11[5]);
  }

  _Block_object_dispose(&v10, 8);
}

void sub_21FE2DA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke_70(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();
  v3 = [*(*(*(a1 + 56) + 8) + 40) state];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __NSStringFromBLSBacklightChangeEvents_block_invoke_2_71;
  v5[3] = &unk_278428850;
  v7 = *(a1 + 56);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v3;
  [v4 appendCustomFormatWithName:0 block:v5];
}

void __NSStringFromBLSBacklightChangeEvents_block_invoke_2_71(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    v4 = 1;
    while (1)
    {
      v5 = [v3 changeRequest];
      if ((v4 & 1) == 0)
      {
        [v12 appendString:{@", "}];
      }

      [v12 appendString:@""];
      v6 = [v5 explanation];
      [v12 appendString:v6];

      objc_msgSend(v12, "appendString:", @"(");
      v7 = NSStringFromBLSBacklightChangeSourceEvent([v5 sourceEvent]);
      [v12 appendString:v7];

      [v12 appendString:@""]);
      v8 = [*(a1 + 32) nextObject];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 40) + 8) + 40);
      if (!v11 || [v11 state] != *(a1 + 48))
      {
        break;
      }

      v4 = 0;
      v3 = *(*(*(a1 + 40) + 8) + 40);
      if (!v3)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
}

unint64_t BLSUInt64Distance(unint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    return a2 - a1;
  }

  else
  {
    return a1 - a2;
  }
}

BOOL BLSUInt64ApproximatelyEqualToUInt64(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2 - a1;
  if (a1 > a2)
  {
    v3 = a1 - a2;
  }

  return v3 < a3;
}

uint64_t BLSCompareUInt64(unint64_t a1, unint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a2 < a1;
  }
}

uint64_t BLSCompareUInt64WithTolerance(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 + a1 < a2)
  {
    return -1;
  }

  else
  {
    return a3 + a2 < a1;
  }
}

void sub_21FE2E790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_12()
{
  v2 = *(v0 + 8);

  dispatch_assert_queue_V2(v2);
}

unint64_t BLSMachTimeFromNSTimeInterval(double a1)
{
  if (BLSMachTimeFromNSTimeInterval_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_machContinuousTime];
  }

  return (a1 / *&BLSMachTimeFromNSTimeInterval___TimeScale);
}

id BLSLoggingStringForContinuousMachTime(double a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [v3 bls_initWithMachContinuousTime:a1];
  v5 = [v4 bls_loggingString];
  v6 = [v2 stringWithFormat:@"%lf approx:%@", *&a1, v5];

  return v6;
}

id BLSShortLoggingStringForContinuousMachTime(double a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [v3 bls_initWithMachContinuousTime:a1];
  v5 = [v4 bls_shortLoggingString];
  v6 = [v2 stringWithFormat:@"%lf approx:%@", *&a1, v5];

  return v6;
}

id BLSLoggingStringForMachInterval(unint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu->%llu (%llu∆)", a1, a2, BLSUInt64Distance(a2, a1)];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [v6 bls_initWithStartMachContinuousTime:a1 endMachContinuousTime:a2];
  v8 = [v7 bls_shortLoggingString];
  v9 = [v4 stringWithFormat:@"%@ approx:%@", v5, v8];

  return v9;
}

double __BLSMachTimeFromNSTimeInterval_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 / 1000000000.0;
    BLSMachTimeFromNSTimeInterval___TimeScale = *&result;
  }

  return result;
}

void sub_21FE3097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FE30BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE33C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  v40 = v39;

  std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_21FE33E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BLSTimelineEntryBookkeeper::~BLSTimelineEntryBookkeeper(va);
  _Unwind_Resume(a1);
}

id BLSTimelineEntriesCombiner::constructFrameSpecifiers(BLSTimelineEntriesCombiner *this)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = 0;
  while (1)
  {
    v4 = BLSTimelineEntriesCombiner::nextSpecifier(this);

    if (!v4)
    {
      break;
    }

    v5 = *(this + 4);
    v6 = [v4 presentationInterval];
    v7 = [v6 startDate];
    v8 = [v5 compare:v7];

    if (v8 == -1)
    {
      break;
    }

    v3 = v4;
    [v2 addObject:v4];
  }

  return v2;
}

void BLSTimelineEntryBookkeeper::BLSTimelineEntryBookkeeper(BLSTimelineEntryBookkeeper *this, BLSAlwaysOnTimelineEntry *a2, BLSAlwaysOnTimelineEntry *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  *this = 0;
  *(this + 1) = 0;
  v9 = v7;
  *(this + 2) = v9;
  v10 = v8;
  *(this + 3) = v10;
  *(this + 4) = 0;
  *(this + 5) = 1.0 / a4;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  if ([(BLSAlwaysOnTimelineEntry *)v9 isAnimated]&& ([(BLSAlwaysOnTimelineEntry *)v9 duration], v12 = vcvtad_u64_f64(v11 * a4), v12 >= 2))
  {
    *(this + 64) = 1;
    *(this + 6) = v12;
    *(this + 7) = 1;
    v13 = BLSTimelineEntryBookkeeper::presentationTimeForIndex(this, 1uLL);
    v14 = *this;
    *this = v13;

    v15 = BLSTimelineEntryBookkeeper::presentationTimeForIndex(this, 2uLL);
  }

  else
  {
    v16 = [*(this + 2) presentationTime];
    v17 = *this;
    *this = v16;

    v15 = 0;
  }

  v18 = *(this + 1);
  *(this + 1) = v15;
}

void *BLSTimelineEntryBookkeeper::presentationTimeForIndex(id *this, unint64_t a2)
{
  v4 = [this[2] presentationTime];
  v5 = v4;
  if (*(this + 64) == 1)
  {
    v6 = this[6];
    v7 = v6 > a2;
    v8 = v6 - a2;
    if (v7)
    {
      v9 = [v4 dateByAddingTimeInterval:-(*(this + 5) * v8)];

      v5 = v9;
    }
  }

  if (this[6] >= a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t std::vector<BLSTimelineEntryBookkeeper>::__emplace_back_slow_path<BLSTimelineEntryBookkeeper const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<BLSTimelineEntryBookkeeper>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<BLSTimelineEntryBookkeeper>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 72 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  v8 = *(a2 + 49);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 49) = v8;
  *&v17 = v7 + 72;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<BLSTimelineEntryBookkeeper>::~__split_buffer(&v15);
  return v14;
}

void sub_21FE36A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<BLSTimelineEntryBookkeeper>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278428628, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<BLSTimelineEntryBookkeeper>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0uLL;
      *a4 = v8;
      v9 = *(v7 + 1);
      *(v7 + 1) = 0uLL;
      *(a4 + 16) = v9;
      v10 = v7[4];
      v7[4] = 0;
      *(a4 + 32) = v10;
      v11 = *(v7 + 5);
      *(a4 + 49) = *(v7 + 49);
      *(a4 + 40) = v11;
      v7 += 9;
      a4 += 72;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<BLSTimelineEntryBookkeeper>>::destroy[abi:ne200100]<BLSTimelineEntryBookkeeper,void,0>(a1, v5);
      v5 += 9;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void std::allocator_traits<std::allocator<BLSTimelineEntryBookkeeper>>::destroy[abi:ne200100]<BLSTimelineEntryBookkeeper,void,0>(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 9;
      std::allocator_traits<std::allocator<BLSTimelineEntryBookkeeper>>::destroy[abi:ne200100]<BLSTimelineEntryBookkeeper,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<BLSTimelineEntryBookkeeper>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<BLSTimelineEntryBookkeeper>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<BLSTimelineEntryBookkeeper>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<BLSTimelineEntryBookkeeper>>::destroy[abi:ne200100]<BLSTimelineEntryBookkeeper,void,0>(v5, (v4 - 72));
  }
}

uint64_t std::vector<BLSTimelineEntryBookkeeper>::__emplace_back_slow_path<BLSTimelineEntryBookkeeper>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<BLSTimelineEntryBookkeeper>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::allocator<BLSTimelineEntryBookkeeper>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 72 * v2;
  v18 = 0;
  v19 = 72 * v2;
  *(&v20 + 1) = 0;
  v8 = *a2;
  *a2 = 0u;
  *v7 = v8;
  v9 = a2[1];
  a2[1] = 0u;
  *(v7 + 16) = v9;
  v10 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(v7 + 32) = v10;
  v11 = *(a2 + 40);
  *(v7 + 49) = *(a2 + 49);
  *(v7 + 40) = v11;
  *&v20 = 72 * v2 + 72;
  v12 = *(a1 + 8);
  v13 = 72 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<BLSTimelineEntryBookkeeper>,BLSTimelineEntryBookkeeper*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<BLSTimelineEntryBookkeeper>::~__split_buffer(&v18);
  return v17;
}

void sub_21FE36F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<BLSTimelineEntryBookkeeper>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void BLSTimelineEntryBookkeeper::BLSTimelineEntryBookkeeper(BLSTimelineEntryBookkeeper *this, BLSAlwaysOnTimelineEntrySpecifier *a2)
{
  v3 = a2;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = [(BLSAlwaysOnTimelineEntrySpecifier *)v3 timelineEntry];
  *(this + 3) = [(BLSAlwaysOnTimelineEntrySpecifier *)v3 previousTimelineEntry];
  v4 = v3;
  *(this + 4) = v4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  v5 = [*(this + 2) presentationTime];
  v6 = *this;
  *this = v5;

  v7 = *(this + 1);
  *(this + 1) = 0;
}

id BLSTimelineEntryBookkeeper::entryFirstFramePresentationTime(BLSTimelineEntryBookkeeper *this, BLSAlwaysOnTimelineEntry *a2, double a3)
{
  v4 = this;
  v5 = [(BLSTimelineEntryBookkeeper *)v4 presentationTime];
  if ([(BLSTimelineEntryBookkeeper *)v4 isAnimated])
  {
    [(BLSTimelineEntryBookkeeper *)v4 duration];
    v7 = [v5 dateByAddingTimeInterval:-1.0 / a3 * (vcvtad_u64_f64(v6 * a3) - 1)];

    v5 = v7;
  }

  return v5;
}

id ___ZZ115__BLSAlwaysOnTimeline_entryBookkeepersForDateInterval_shouldConstructStartEntry_framesPerSecond_previousSpecifier__ENK3__2clEP36BLSAlwaysOnTimelineUnconfiguredEntry_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) != -1)
  {
    v1 = *(a1 + 40);
LABEL_5:
    v2 = [v1 presentationTime];
    goto LABEL_6;
  }

  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    goto LABEL_5;
  }

  v2 = [**(a1 + 56) endDate];
LABEL_6:

  return v2;
}

void std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<BLSTimelineEntryBookkeeper>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<BLSTimelineEntryBookkeeper>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<BLSTimelineEntryBookkeeper>>::destroy[abi:ne200100]<BLSTimelineEntryBookkeeper,void,0>(a1, i))
  {
    i -= 9;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<BLSTimelineEntryIterator>::__emplace_back_slow_path<BLSTimelineEntryIterator>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<BLSTimelineEntryBookkeeper>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<BLSTimelineEntryIterator>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = *(a2 + 32);
  *&v16 = 40 * v2 + 40;
  v8 = a1[1];
  v9 = 40 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<BLSTimelineEntryIterator>::~__split_buffer(&v14);
  return v13;
}

void sub_21FE37478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<BLSTimelineEntryIterator>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<BLSTimelineEntryIterator>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 8);
      std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<BLSTimelineEntryIterator>,BLSTimelineEntryIterator*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 32);
      std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<BLSTimelineEntryIterator>::~__split_buffer(void **a1)
{
  std::__split_buffer<BLSTimelineEntryIterator>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<BLSTimelineEntryIterator>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = (i - 32);
    std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

uint64_t BLSTimelineEntriesCombiner::BLSTimelineEntriesCombiner(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = [v7 startDate];
  *(a1 + 32) = [v7 endDate];
  *(a1 + 40) = 0.9 / a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  BLSTimelineEntriesCombiner::computeNextEntry(a1);

  return a1;
}

void sub_21FE37774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v11;
  std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

void BLSTimelineEntriesCombiner::computeNextEntry(BLSTimelineEntriesCombiner *this)
{
  v1 = *this;
  v2 = *(this + 1);
  *(this + 6) = *this;
  *(this + 7) = v2;
  v3 = v1 + 40;
  if (v1 + 40 != v2)
  {
    v5 = (v1 + 40);
    while (1)
    {
      v6 = BLSTimelineEntryIterator::nextPresentationTime(v5);
      v7 = BLSTimelineEntryIterator::nextPresentationTime(*(this + 6));
      if (v7)
      {
        if (![v6 isBeforeDate:v7])
        {
          break;
        }
      }

      v8 = *(this + 6);
      *(this + 6) = v3;
      *(this + 7) = v8;
LABEL_13:

      v5 = (v5 + 40);
      v3 += 40;
      if (v5 == *(this + 1))
      {
        return;
      }
    }

    v9 = *(this + 7);
    if (v9 == *(this + 1))
    {
      v10 = 0;
    }

    else
    {
      v10 = BLSTimelineEntryIterator::nextPresentationTime(v9);
      if (v10 && ![v6 isBeforeDate:v10])
      {
        goto LABEL_12;
      }
    }

    *(this + 7) = v3;
LABEL_12:

    goto LABEL_13;
  }
}

id BLSTimelineEntryIterator::nextPresentationTime(BLSTimelineEntryIterator *this)
{
  v2 = *(this + 4);
  if (v2 == *(this + 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 8);
    if (!v4)
    {
      v5 = (*(this + 4) + 72);
      if (v5 == *(this + 2))
      {
        v4 = 0;
      }

      else
      {
        v4 = *v5;
      }
    }
  }

  return v4;
}

void std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        v7 = (v4 - 32);
        std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

BLSAlwaysOnFrameSpecifier *BLSTimelineEntriesCombiner::nextSpecifier(BLSTimelineEntriesCombiner *this)
{
  v1 = *(this + 1);
  if (*(this + 6) == v1)
  {
    v22 = 0;
    goto LABEL_54;
  }

  v3 = *this;
  if (*this != v1)
  {
    v4 = 0;
    v5 = v1 - v3 - 40;
    v6 = vdupq_n_s64(v5 / 0x28);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52680)));
      if (vuzp1_s8(vuzp1_s16(v8, 14), 14).u8[0])
      {
        *v3 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v8, 14), 14).i8[1])
      {
        v3[40] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52670)))), 14).i8[2])
      {
        v3[80] = 0;
        v3[120] = 0;
      }

      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52660)));
      if (vuzp1_s8(14, vuzp1_s16(v9, 14)).i32[1])
      {
        v3[160] = 0;
      }

      if (vuzp1_s8(14, vuzp1_s16(v9, 14)).i8[5])
      {
        v3[200] = 0;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52650))))).i8[6])
      {
        v3[240] = 0;
        v3[280] = 0;
      }

      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52640)));
      if (vuzp1_s8(vuzp1_s16(v10, 14), 14).u8[0])
      {
        v3[320] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v10, 14), 14).i8[1])
      {
        v3[360] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52630)))), 14).i8[2])
      {
        v3[400] = 0;
        v3[440] = 0;
      }

      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52620)));
      if (vuzp1_s8(14, vuzp1_s16(v11, 14)).i32[1])
      {
        v3[480] = 0;
      }

      if (vuzp1_s8(14, vuzp1_s16(v11, 14)).i8[5])
      {
        v3[520] = 0;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21FE52610))))).i8[6])
      {
        v3[560] = 0;
        v3[600] = 0;
      }

      v4 += 16;
      v3 += 640;
    }

    while (((v5 / 0x28 + 16) & 0xFFFFFFFFFFFFFF0) != v4);
  }

  v12 = *(this + 4);
  v13 = 0;
  while (1)
  {
    v14 = BLSTimelineEntryIterator::nextPresentationTime(*(this + 6));
    v15 = v14;
    if (v13)
    {
      if (v14)
      {
        v16 = *(this + 1);
        v17 = *(this + 7);
        if (v17 == v16)
        {
          goto LABEL_40;
        }

        v18 = BLSTimelineEntryIterator::nextPresentationTime(v17);
        v19 = [v15 isAfterDate:v18];

        if (!v19)
        {
          v16 = *(this + 1);
LABEL_40:
          if (*(this + 6) == v16)
          {
            goto LABEL_50;
          }

          goto LABEL_41;
        }
      }

      BLSTimelineEntriesCombiner::computeNextEntry(this);
      v20 = BLSTimelineEntryIterator::nextPresentationTime(*(this + 6));

      v15 = v20;
    }

    if (!v15 || *(this + 6) == *(this + 1))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_42;
    }

LABEL_41:
    if ([*(this + 3) compare:v15] != -1)
    {
LABEL_42:
      v15 = v15;

      v13 = v15;
      goto LABEL_44;
    }

    [v15 timeIntervalSinceDate:v13];
    if (v21 >= *(this + 5))
    {
      v15 = v15;

      v12 = v15;
LABEL_50:

      goto LABEL_51;
    }

LABEL_44:
    if (!BLSTimelineEntryIterator::advance(*(this + 6)))
    {
      __assert_rtn("nextSpecifier", "BLSTimelineEntriesCombiner_Project.hpp", 271, "success == true");
    }
  }

  if (!v13)
  {
    v22 = 0;
    goto LABEL_53;
  }

LABEL_51:
  v23 = objc_alloc(MEMORY[0x277CCA970]);
  v24 = [v12 laterDate:v13];
  v25 = [v23 initWithStartDate:v13 endDate:v24];

  v26 = BLSTimelineEntriesCombiner::entrySpecifiers(this);
  if (![v26 count])
  {
    __assert_rtn("nextSpecifier", "BLSTimelineEntriesCombiner_Project.hpp", 285, "[specifiers count] > 0");
  }

  v22 = [[BLSAlwaysOnFrameSpecifier alloc] initWithTimelineEntrySpecifiers:v26 presentationInterval:v25];

LABEL_53:
LABEL_54:

  return v22;
}

BOOL BLSTimelineEntryIterator::advance(id **this)
{
  if (BLSTimelineEntryBookkeeper::advance(this[4]))
  {
    v2 = 1;
    *this = 1;
  }

  else
  {
    v3 = *this[4];
    v4 = v3;
    v5 = this[4] + 9;
    this[4] = v5;
    v6 = this[2];
    v2 = v5 != v6;
    if (v5 != v6)
    {
      *this = [v3 isEqual:*v5] ^ 1;
    }
  }

  return v2;
}

id BLSTimelineEntriesCombiner::entrySpecifiers(BLSTimelineEntriesCombiner *this)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3)];
  for (i = *this; i != *(this + 1); i = (i + 40))
  {
    v4 = BLSTimelineEntryIterator::entrySpecifier(i);
    if (v4)
    {
      v5 = BLSTimelineEntryIterator::entrySpecifier(i);
      [v2 addObject:v5];
    }
  }

  return v2;
}

BOOL BLSTimelineEntryBookkeeper::advance(id *location)
{
  v1 = location[1];
  if (v1)
  {
    v3 = location[6];
    v4 = location[7] + 1;
    location[7] = v4;
    if (v4 >= v3)
    {
      *(location + 64) = 0;
    }

    objc_storeStrong(location, v1);
    v5 = BLSTimelineEntryBookkeeper::presentationTimeForIndex(location, location[7] + 1);
    v6 = location[1];
    location[1] = v5;
  }

  return v1 != 0;
}

BLSAlwaysOnTimelineEntrySpecifier *BLSTimelineEntryIterator::entrySpecifier(BLSTimelineEntryIterator *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 2))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 32);
    if (!v3)
    {
      v4 = *(*(this + 4) + 16);
      if (v4)
      {
        v5 = [BLSAlwaysOnTimelineEntrySpecifier alloc];
        v6 = *(this + 4);
        v7 = 1.0;
        if (*(v6 + 64) == 1)
        {
          v7 = *(v6 + 56) / *(v6 + 48);
        }

        v3 = [(BLSAlwaysOnTimelineEntrySpecifier *)v5 initWithTimelineEntry:v4 percentComplete:*(v6 + 24) previousTimelineEntry:*this didChange:v7];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

__CFString *NSStringFromBLSAssertionAcquisitionState(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_278428D98[a1];
  }
}

__CFString *NSStringFromBLSBacklightActivityState(uint64_t a1)
{
  v1 = @"Off/Inactive";
  if (a1 == 1)
  {
    v1 = @"On/Active";
  }

  if (a1 == 2)
  {
    return @"Dimmed";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromBLSDirection(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278428E78[a1 - 1];
  }
}

__CFString *NSStringFromBLSAlwaysOnSuppressionType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Suppress";
  }

  else
  {
    return @"Unsuppress";
  }
}

__CFString *NSStringFromBLSAlwaysOnSuppressionReason(uint64_t a1)
{
  if (!a1)
  {
    v5 = @"Unknown";
    goto LABEL_12;
  }

  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ViewObstructed"];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      [v3 addObject:@"DevicePresence"];
      if ((a1 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"SmartPowerNap"];
  if ((a1 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((a1 & 0x80000000) != 0)
  {
LABEL_6:
    [v3 addObject:@"ServiceStopped"];
  }

LABEL_7:
  if ((a1 & 0xFFFFFFFF7FFFFFF8) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(0x%lx)", a1 & 0xFFFFFFFF7FFFFFF8];
    [v3 addObject:v4];
  }

  if (![v3 count])
  {
    NSStringFromBLSAlwaysOnSuppressionReason_cold_1();
  }

  v5 = [v3 componentsJoinedByString:{@", "}];

LABEL_12:

  return v5;
}

void sub_21FE3D0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FE3D920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable(uint64_t a1, unsigned int a2)
{
  v2 = 2;
  if (!a1)
  {
    v2 = a2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t BLSBacklightActivityStateForBLSBacklightState(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t __bls_assertions_log_block_invoke()
{
  bls_assertions_log___logger = os_log_create("com.apple.BacklightServices", "assertions");

  return MEMORY[0x2821F96F8]();
}

id bls_backlight_log()
{
  if (bls_backlight_log_onceToken != -1)
  {
    bls_backlight_log_cold_1();
  }

  v1 = bls_backlight_log___logger;

  return v1;
}

uint64_t __bls_backlight_log_block_invoke()
{
  bls_backlight_log___logger = os_log_create("com.apple.BacklightServices", "backlight");

  return MEMORY[0x2821F96F8]();
}

id bls_budget_log()
{
  if (bls_budget_log_onceToken != -1)
  {
    bls_budget_log_cold_1();
  }

  v1 = bls_budget_log___logger;

  return v1;
}

uint64_t __bls_budget_log_block_invoke()
{
  bls_budget_log___logger = os_log_create("com.apple.BacklightServices", "budget");

  return MEMORY[0x2821F96F8]();
}

id bls_diagnostics_log()
{
  if (bls_diagnostics_log_onceToken != -1)
  {
    bls_diagnostics_log_cold_1();
  }

  v1 = bls_diagnostics_log___logger;

  return v1;
}

uint64_t __bls_diagnostics_log_block_invoke()
{
  bls_diagnostics_log___logger = os_log_create("com.apple.BacklightServices", "diagnostics");

  return MEMORY[0x2821F96F8]();
}

uint64_t __bls_environment_log_block_invoke()
{
  bls_environment_log___logger = os_log_create("com.apple.BacklightServices", "environment");

  return MEMORY[0x2821F96F8]();
}

id bls_flipbook_log()
{
  if (bls_flipbook_log_onceToken != -1)
  {
    bls_flipbook_log_cold_1();
  }

  v1 = bls_flipbook_log___logger;

  return v1;
}

uint64_t __bls_flipbook_log_block_invoke()
{
  bls_flipbook_log___logger = os_log_create("com.apple.BacklightServices", "flipbook");

  return MEMORY[0x2821F96F8]();
}

id bls_timelines_log()
{
  if (bls_timelines_log_onceToken != -1)
  {
    bls_timelines_log_cold_1();
  }

  v1 = bls_timelines_log___logger;

  return v1;
}

uint64_t __bls_timelines_log_block_invoke()
{
  bls_timelines_log___logger = os_log_create("com.apple.BacklightServices", "timelines");

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromBLSAdjustedLuminance(uint64_t a1)
{
  v1 = @"Off";
  if (a1 == 1)
  {
    v1 = @"Low";
  }

  if (a1 == 2)
  {
    return @"Full";
  }

  else
  {
    return v1;
  }
}

void sub_21FE45358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 216), 8);
  _Block_object_dispose((v40 - 184), 8);
  _Block_object_dispose((v40 - 152), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringAbbreviatedFromBLSUpdateFidelity(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"??%ld??", a1];
  }

  else
  {
    v2 = off_2784292E8[a1 + 1];
  }

  return v2;
}

void NSStringFromBLSBacklightChangeEvents_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "empty events array but abortedEventArray non-empty — events:%{public}@ abortedEvents:%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void NSStringFromBLSAlwaysOnSuppressionReason_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[reasons count] > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull NSStringFromBLSAlwaysOnSuppressionReason(BLSAlwaysOnSuppressionReason)"];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"BLSBacklightChangeRequest.m";
    v6 = 1024;
    v7 = 571;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}