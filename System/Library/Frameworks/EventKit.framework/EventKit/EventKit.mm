uint64_t __EKLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(ekSubSystem, "EventKit");
  v1 = EKLogHandle;
  EKLogHandle = v0;

  v2 = os_log_create(ekSubSystem, "Availability");
  v3 = EKAvailabilityHandle;
  EKAvailabilityHandle = v2;

  v4 = os_log_create(ekSubSystem, "UIAvailabilitySearch");
  v5 = EKUIAvailabilitySearchHandle;
  EKUIAvailabilitySearchHandle = v4;

  EKSavingSignpostsHandle = os_log_create(ekSubSystem, "Saving");

  return MEMORY[0x1EEE66BB8]();
}

void EKLogInitIfNeeded()
{
  if (EKLogInitIfNeeded_onceToken != -1)
  {
    EKLogInitIfNeeded_cold_1();
  }
}

void sub_1A8060BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8060D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A806118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t restrictDateRange(void *a1, id *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v7 = v3;
      v3 = [*a2 timeIntervalSinceDate:v3];
      v4 = v7;
      if (v5 > 126230400.0)
      {
        v3 = [v7 dateByAddingTimeInterval:?];
        v4 = v7;
        *a2 = v3;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1A8061500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8061F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80621E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A8062304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8062858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
}

{
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8064C68(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id EKObjectIDFromDictionary()
{
  v3 = 0;
  if (CalGetEntityIDFromFetchedObjectDictonary())
  {
    v0 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKObjectIDFromDictionary_cold_2(&v3 + 1, &v3, v0);
    }
  }

  else
  {
    v1 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKObjectIDFromDictionary_cold_1(v1);
    }
  }

  return 0;
}

uint64_t _shouldUseLegacyAccessBehavior()
{
  v6 = *MEMORY[0x1E69E9840];
  if (_shouldUseLegacyAccessBehavior_onceToken != -1)
  {
    _shouldUseLegacyAccessBehavior_cold_1();
  }

  if (_shouldUseLegacyAccessBehavior_forceLegacyBehavior == 1)
  {
    v0 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_1A805E000, v0, OS_LOG_TYPE_DEFAULT, "Forcing legacy access behavior.", v5, 2u);
    }

    v1 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E70901FFFFFFFFLL] ^ 1;
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_INFO, "Using legacy access behavior: %{BOOL}d", v5, 8u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

double __GetSharedLockForIndex_block_invoke()
{
  result = 0.0;
  GetSharedLockForIndex_sharedLocks = 0u;
  unk_1ED7F97E8 = 0u;
  return result;
}

void sub_1A80688A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8069B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A806A274()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id getREMListClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMListClass_softClass;
  v7 = getREMListClass_softClass;
  if (!getREMListClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMListClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMListClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806F01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMColorClass_softClass;
  v7 = getREMColorClass_softClass;
  if (!getREMColorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMColorClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A806F4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMListClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMListClass_block_invoke_cold_1();
  }

  getREMListClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ReminderKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E77FCFF8;
    v3 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    ReminderKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getREMColorClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMColorClass_block_invoke_cold_1();
  }

  getREMColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getREMReminderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderClass_softClass;
  v7 = getREMReminderClass_softClass;
  if (!getREMReminderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMReminderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8070944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMUserActivityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMUserActivityClass_softClass;
  v7 = getREMUserActivityClass_softClass;
  if (!getREMUserActivityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMUserActivityClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMUserActivityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80713D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80716F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMReminderClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1();
  }

  getREMReminderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ReminderKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E77FD0D8;
    v3 = 0;
    ReminderKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    ReminderKitLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ReminderKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getREMUserActivityClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMUserActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMUserActivityClass_block_invoke_cold_1();
  }

  getREMUserActivityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMReminderChangeItemClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMReminderChangeItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderChangeItemClass_block_invoke_cold_1();
  }

  getREMReminderChangeItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8074960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1A80753D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1A807696C(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
  JUMPOUT(0x1A807681CLL);
}

void sub_1A8076A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8080CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  v11 = *(a10 + 16);
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1A8083058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8083E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1A8084568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMListClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMListClass_softClass_0;
  v7 = getREMListClass_softClass_0;
  if (!getREMListClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMListClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMListClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80846C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80854E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id getREMReminderClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderClass_softClass_0;
  v7 = getREMReminderClass_softClass_0;
  if (!getREMReminderClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMReminderClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8085698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80866DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__56(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A8087C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1A8087F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8088A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1();
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ReminderKitLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77FD838;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = ReminderKitLibraryCore_frameworkLibrary_1;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    ReminderKitLibrary_cold_1_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ReminderKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getREMListClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMListClass_block_invoke_cold_1_0();
  }

  getREMListClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMReminderClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1_0();
  }

  getREMReminderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMSaveRequestClass_block_invoke_cold_1();
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAccountClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAccountClass_block_invoke_cold_1();
  }

  getREMAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAlarmClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMAlarm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmClass_block_invoke_cold_1();
  }

  getREMAlarmClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMRecurrenceRuleClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMRecurrenceRule");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleClass_block_invoke_cold_1();
  }

  getREMRecurrenceRuleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMStructuredLocationClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_1();
  result = objc_getClass("REMStructuredLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStructuredLocationClass_block_invoke_cold_1();
  }

  getREMStructuredLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getREMErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ReminderKitLibrary_1();
  result = dlsym(v2, "REMErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getREMErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1A808BA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A808BCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A808DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A808E0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

Class __getCNAutocompleteStoreClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteStoreClass_block_invoke_cold_1();
  }

  getCNAutocompleteStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsAutocompleteLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ContactsAutocompleteLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ContactsAutocompleteLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E77FD9A8;
    v3 = 0;
    ContactsAutocompleteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsAutocompleteLibraryCore_frameworkLibrary)
  {
    ContactsAutocompleteLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ContactsAutocompleteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsAutocompleteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCNAutocompleteFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteFetchRequestClass_block_invoke_cold_1();
  }

  getCNAutocompleteFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAutocompleteNameComponentsClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteNameComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteNameComponentsClass_block_invoke_cold_1();
  }

  getCNAutocompleteNameComponentsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAutocompleteResultClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteLibrary();
  result = objc_getClass("CNAutocompleteResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteResultClass_block_invoke_cold_1();
  }

  getCNAutocompleteResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id rangesSafeToRemove(void *a1)
{
  v1 = [a1 underlyingResult];
  v2 = [MEMORY[0x1E695DF70] array];
  _recursiveSafeRangesToRemoveFromResult(v1, v2);
  v3 = [v2 copy];

  return v3;
}

void _recursiveSafeRangesToRemoveFromResult(uint64_t a1, void *a2)
{
  v12 = a2;
  v2 = DDResultGetType();
  if (([@"ApproxTime" isEqualToString:v2] & 1) == 0 && (objc_msgSend(@"SpecialDateTime", "isEqualToString:", v2) & 1) == 0)
  {
    if (resultHasApproxTime())
    {
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
        v4 = SubResults;
        Count = CFArrayGetCount(SubResults);
        if (Count >= 1)
        {
          v6 = Count;
          for (i = 0; i != v6; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
            _recursiveSafeRangesToRemoveFromResult(ValueAtIndex, v12);
          }
        }
      }
    }

    else
    {
      Range = DDResultGetRange();
      v11 = [MEMORY[0x1E696B098] valueWithRange:{Range, v10}];
      [v12 addObject:v11];
    }
  }
}

uint64_t resultHasApproxTime()
{
  SubResults = DDResultGetSubResults();
  if (!SubResults)
  {
    return 0;
  }

  v1 = SubResults;
  Count = CFArrayGetCount(SubResults);
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    v6 = DDResultGetType();
    if (([@"ApproxTime" isEqualToString:v6] & 1) != 0 || objc_msgSend(@"SpecialDateTime", "isEqualToString:", v6))
    {
      break;
    }

    HasApproxTime = resultHasApproxTime(ValueAtIndex);

    if ((HasApproxTime & 1) == 0 && v3 != v4++)
    {
      continue;
    }

    return HasApproxTime;
  }

  return 1;
}

uint64_t resultHasExactTime()
{
  SubResults = DDResultGetSubResults();
  if (!SubResults)
  {
    return 0;
  }

  v1 = SubResults;
  Count = CFArrayGetCount(SubResults);
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    v6 = DDResultGetType();
    if ((([@"Time" isEqualToString:v6] & 1) != 0 || objc_msgSend(@"TimeDuration", "isEqualToString:", v6)) && (resultHasApproxTime() & 1) == 0)
    {
      break;
    }

    HasExactTime = resultHasExactTime(ValueAtIndex);

    if ((HasExactTime & 1) == 0 && v3 != v4++)
    {
      continue;
    }

    return HasExactTime;
  }

  return 1;
}

id EKDescriptorForRequiredKeysForLabeledDisplayString()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
  v12 = v0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v1 = getCNContactTypeKeySymbolLoc_ptr;
  v11 = getCNContactTypeKeySymbolLoc_ptr;
  if (!getCNContactTypeKeySymbolLoc_ptr)
  {
    v2 = ContactsLibrary();
    v9[3] = dlsym(v2, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr = v9[3];
    v1 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v1)
  {
    EKDescriptorForRequiredKeysForLabeledDisplayString_cold_1();
  }

  v13 = *v1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = v13;
  v5 = [v3 arrayWithObjects:&v12 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1A80940CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactFormatterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactFormatterClass_softClass;
  v7 = getCNContactFormatterClass_softClass;
  if (!getCNContactFormatterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactFormatterClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getCNContactFormatterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80941B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8094428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactFormatterClass_block_invoke_cold_1();
  }

  getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77FDAF8;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    ContactsLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCNContactTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNLabeledValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNLabeledValueClass_block_invoke_cold_1();
  }

  getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8094CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *EKAvailabilitySpanTypeAsString(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E77FDC38[a1];
  }
}

void sub_1A809ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStructuredLocationClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ReminderKitLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77FDCA0;
    v6 = 0;
    ReminderKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_2)
  {
    __getREMStructuredLocationClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("REMStructuredLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStructuredLocationClass_block_invoke_cold_1_0();
  }

  getREMStructuredLocationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A809DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A809F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A4D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A51F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80A562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void EKTravelEngineLogInitialize()
{
  if (EKTravelEngineLogInitialize_onceToken != -1)
  {
    EKTravelEngineLogInitialize_cold_1();
  }
}

uint64_t __EKTravelEngineLogInitialize_block_invoke()
{
  v0 = os_log_create("com.apple.calendar", "store.log.travel.engine");
  v1 = EKTravelEngineLogHandle;
  EKTravelEngineLogHandle = v0;

  EKTravelEngineThrottleLogHandle = os_log_create("com.apple.calendar", "store.log.travel.engine.throttle");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A80AA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AA8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80AAB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80ABDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, id a56, uint64_t a57, id location, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_1A80ACD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80B0228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1A80B0E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B6C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B90E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80B94E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A80B9DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80BEB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80BEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80C18B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A80C1C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getREMRecurrenceEndClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMRecurrenceEndClass_softClass;
  v7 = getREMRecurrenceEndClass_softClass;
  if (!getREMRecurrenceEndClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMRecurrenceEndClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMRecurrenceEndClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80C5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMRecurrenceRuleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMRecurrenceRuleClass_softClass_0;
  v7 = getREMRecurrenceRuleClass_softClass_0;
  if (!getREMRecurrenceRuleClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMRecurrenceRuleClass_block_invoke_0;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMRecurrenceRuleClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A80C609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80C6B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMRecurrenceEndClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceEnd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceEndClass_block_invoke_cold_1();
  }

  getREMRecurrenceEndClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_3)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ReminderKitLibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E77FE5E0;
    v3 = 0;
    ReminderKitLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_3)
  {
    ReminderKitLibrary_cold_1_2(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ReminderKitLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getREMRecurrenceRuleClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceRule");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleClass_block_invoke_cold_1_0();
  }

  getREMRecurrenceRuleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMRecurrenceDayOfWeekClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_2();
  result = objc_getClass("REMRecurrenceDayOfWeek");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceDayOfWeekClass_block_invoke_cold_1();
  }

  getREMRecurrenceDayOfWeekClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id EKUserFriendlyStringForCLLocation(void *a1)
{
  v1 = a1;
  [v1 coordinate];
  v4 = CreateCoordinateComponentString(1, v2, v3);
  [v1 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = CreateCoordinateComponentString(0, v6, v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = EKBundle();
  v12 = [v11 localizedStringForKey:@"%@ value:%@" table:{&stru_1F1B49D68, 0}];
  v13 = [v10 localizedStringWithFormat:v12, v4, v9];

  return v13;
}

id CreateCoordinateComponentString(int a1, double a2, double a3)
{
  if (!a1)
  {
    a2 = a3;
  }

  v3 = @"N";
  v4 = @"E";
  if ((a2 * 3600.0) < 0)
  {
    v3 = @"S";
    v4 = @"W";
  }

  v5 = a2;
  v6 = fabs((a2 - a2) * 60.0);
  v7 = v6;
  v8 = (v6 - v6) * 60.0;
  if (a1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = v8;
  if (v5 >= 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = -v5;
  }

  v12 = EKBundle();
  v13 = [v12 localizedStringForKey:v9 value:&stru_1F1B49D68 table:0];

  v14 = v13;
  v15 = v13;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = EKBundle();
  v18 = [v17 localizedStringForKey:@"%ld°%ld'%.0f'' %@" value:&stru_1F1B49D68 table:0];
  v19 = [v16 initWithFormat:v18, v11, v7, *&v10, v15, 0];

  return v19;
}

void sub_1A80CF37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80CF740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80CF870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D0798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_1A80D14A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D18A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D1C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id logHandle()
{
  if (logHandle_onceToken_1 != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle_handle_0;

  return v1;
}

uint64_t __logHandle_block_invoke()
{
  logHandle_handle_0 = os_log_create("com.apple.calendar.eventkit", "EKPredicateExpanding");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A80D6B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D6EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D7014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80D7434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A80D758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DB9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DE7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DF824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80DFBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A80DFE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A80E0BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1A80E3A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A80E3B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80EF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F78F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80F9AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1A80FA30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1A80FE3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1A8103BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMReminderClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ReminderKitLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77FF340;
    v6 = 0;
    ReminderKitLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_4)
  {
    __getREMReminderClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("REMReminder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMReminderClass_block_invoke_cold_1_1();
  }

  getREMReminderClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSuggestionsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E77FF358;
    v7 = 0;
    CoreSuggestionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreSuggestionsLibraryCore_frameworkLibrary;
  if (!CoreSuggestionsLibraryCore_frameworkLibrary)
  {
    __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "kSuggestionsEKEventAvailabilityState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSuggestionsEKEventAvailabilityStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSuggestionsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSuggestionsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8112EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81130BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81132AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8113B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8114678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A8115A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8116304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1A811BD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A811C864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMKMapItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass;
  v7 = getMKMapItemClass_softClass;
  if (!getMKMapItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A811CEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A811D6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A811E7F8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A811F600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_1A81203A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(a1);
}

void sub_1A8121AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8122E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMKMapItemClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MapKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77FFCF0;
    v6 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    __getMKMapItemClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMKMapItemClass_block_invoke_cold_1();
  }

  getMKMapItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A812555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8129E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8129FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A812A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A812CE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id gondolaDefaultExtensionName()
{
  v0 = EKBundle();
  v1 = [v0 localizedStringForKey:@"FaceTime" value:&stru_1F1B49D68 table:0];

  return v1;
}

void sub_1A8130990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1A8131750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8135654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1A8139D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1A8146588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8147EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1A8149008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8149398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8149A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A814AA84(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

void sub_1A814C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A814D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A814E670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814F368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A814FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A8150748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81528A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81538A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8153E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81540A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8154818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81556DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_1A81558FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8155A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8155E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81564D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8156D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8156FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81593C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81596F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8159AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1A815A608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815A964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815C8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815CE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815D6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815E3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815FA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A815FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A81603C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1A816072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81608F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8160C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8161150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8162484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8162668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8164154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8165C00(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Unwind_Resume(a1);
}

void sub_1A8166C14(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_1A81686D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A8169418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A816BED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816C10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816C300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816ECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A816F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A816FF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81700FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81702E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A817056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81709B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81718BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8171DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A817214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A81722A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8172FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___shouldUseLegacyAccessBehavior_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v4 = [v1 objectForKey:@"com.apple.private.calendar.has-adopted-modern-request-access-methods"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue] ^ 1;
    v2 = v4;
    _shouldUseLegacyAccessBehavior_forceLegacyBehavior = v3;
  }
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_24(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

uint64_t OUTLINED_FUNCTION_4_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id getREMAlarmTimeIntervalTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmTimeIntervalTriggerClass_softClass;
  v7 = getREMAlarmTimeIntervalTriggerClass_softClass;
  if (!getREMAlarmTimeIntervalTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmTimeIntervalTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmTimeIntervalTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A81778F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMAlarmDateTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmDateTriggerClass_softClass;
  v7 = getREMAlarmDateTriggerClass_softClass;
  if (!getREMAlarmDateTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmDateTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmDateTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A81779D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getREMAlarmLocationTriggerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMAlarmLocationTriggerClass_softClass;
  v7 = getREMAlarmLocationTriggerClass_softClass;
  if (!getREMAlarmLocationTriggerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMAlarmLocationTriggerClass_block_invoke;
    v3[3] = &unk_1E77FCFD8;
    v3[4] = &v4;
    __getREMAlarmLocationTriggerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8177AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMAlarmTimeIntervalTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmTimeIntervalTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmTimeIntervalTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmTimeIntervalTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_3()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_5)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ReminderKitLibraryCore_block_invoke_5;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E78013E8;
    v3 = 0;
    ReminderKitLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_5)
  {
    ReminderKitLibrary_cold_1_3(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ReminderKitLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getREMAlarmDateTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmDateTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmDateTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmDateTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMAlarmLocationTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_3();
  result = objc_getClass("REMAlarmLocationTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMAlarmLocationTriggerClass_block_invoke_cold_1();
  }

  getREMAlarmLocationTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return NSRequestConcreteImplementation();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return objc_opt_class();
}

id EKBundle()
{
  if (EKBundle_onceToken != -1)
  {
    EKBundle_cold_1();
  }

  v1 = EKBundle_eventKitBundle;

  return v1;
}

uint64_t __EKBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.eventkit"];
  v1 = EKBundle_eventKitBundle;
  EKBundle_eventKitBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id EKUtils_AdjustedAttendeeAddress(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 length])
    {
      if ([v2 hasPrefix:@"mailto:"])
      {
        [v2 substringFromIndex:7];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"mailto:", v2];
      }
      v3 = ;
    }

    else
    {
      v3 = v2;
    }

    v5 = v3;
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKUtils_AdjustedAttendeeAddress_cold_1(v4);
    }

    v5 = 0;
  }

  return v5;
}

BOOL EKUIAttendeeUtils_AttendeeHasResponded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 participantStatus] > 1;
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      EKUIAttendeeUtils_AttendeeHasResponded_cold_1(v4);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t identityIsEqualToIdentity(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 emailAddress];
  v6 = [v4 phoneNumber];
  v7 = [v4 URL];

  v8 = [v3 emailAddress];
  v9 = [v3 phoneNumber];
  v10 = [v3 URL];

  v11 = [v7 absoluteString];
  v12 = [v10 absoluteString];
  v13 = doURLsEmailsPhoneNumbersMatch();

  return v13;
}

__CFString *EKRedaction(const void *a1, CC_LONG a2, const void *a3, CC_LONG a4)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v13, 0, sizeof(v13));
  CC_SHA256_Init(&v13);
  if (a3 && a4)
  {
    CC_SHA256_Update(&v13, a3, a4);
LABEL_5:
    CC_SHA256_Update(&v13, a1, a2);
    CC_SHA256_Final(md, &v13);
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:md length:6 freeWhenDone:0];
    v9 = [v8 base64EncodedDataWithOptions:0];
    v14 = 62;
    [v9 getBytes:v15 length:8];
    v15[4] = 60;
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v14];

    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    goto LABEL_5;
  }

  CC_SHA256_Final(md, &v13);
  v10 = @"<EKRedacted>";
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

__CFString *EKUUIDString()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

uint64_t EKDatabasePerformMigrationIfNeeded()
{
  v0 = objc_alloc_init(EKEventStore);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = [(EKEventStore *)v0 connection];
  v2 = [v1 CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __EKDatabasePerformMigrationIfNeeded_block_invoke;
  v5[3] = &unk_1E77FD310;
  v5[4] = &v6;
  [v2 CADMigrateDatabaseIfNeeded:v5];

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1A817FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __EKDatabasePerformMigrationIfNeeded_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __EKDatabasePerformMigrationIfNeeded_block_invoke_cold_1(a2, v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1A8181158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t EKEventStore.EventStoreChanged.changedObjectIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void EKEventStore.EventStoreChanged.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
}

uint64_t static EKEventStore.EventStoreChanged.makeMessage(_:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A81ACA04();
  if (!result)
  {
    v11 = 0;
    v7 = 0;
    v15 = 1;
    goto LABEL_30;
  }

  v3 = result;
  v23 = sub_1A81ACCC4();
  v24 = v4;
  sub_1A81ACEF4();
  if (*(v3 + 16) && (v5 = sub_1A81823E8(v22), (v6 & 1) != 0))
  {
    sub_1A8182480(*(v3 + 56) + 32 * v5, &v23);
    sub_1A818242C(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2628, &qword_1A81C3F50);
    if (swift_dynamicCast())
    {
      v7 = v19;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1A818242C(v22);
    v7 = 0;
  }

  v20 = sub_1A81ACCC4();
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v8 = sub_1A81823E8(v22), (v9 & 1) == 0))
  {
    sub_1A818242C(v22);
    goto LABEL_15;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v8, &v23);
  sub_1A818242C(v22);
  sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  sub_1A81ACD84();
  v10 = v20;
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [v10 unsignedIntegerValue];

LABEL_16:
  v23 = sub_1A81ACCC4();
  v24 = v12;
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v13 = sub_1A81823E8(v22), (v14 & 1) == 0))
  {
    sub_1A818242C(v22);
    goto LABEL_21;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v13, &v23);
  sub_1A818242C(v22);
  if (!swift_dynamicCast())
  {
LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }

  v15 = v20;
LABEL_22:
  v21 = sub_1A81ACCC4();
  sub_1A81ACEF4();
  if (!*(v3 + 16) || (v16 = sub_1A81823E8(v22), (v17 & 1) == 0))
  {

    result = sub_1A818242C(v22);
    goto LABEL_30;
  }

  sub_1A8182480(*(v3 + 56) + 32 * v16, &v23);

  sub_1A818242C(v22);

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_30:
    v18 = 256;
    goto LABEL_31;
  }

  if (v21)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

LABEL_31:
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v18 | v15;
  return result;
}

uint64_t static EKEventStore.EventStoreChanged.makeNotification(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2630, &qword_1A81C3F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A81C3F40;
  sub_1A81ACCC4();

  sub_1A81ACEF4();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v7 = sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  *(inited + 96) = v7;
  *(inited + 72) = v6;
  sub_1A81ACCC4();
  sub_1A81ACEF4();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 168) = v7;
  *(inited + 144) = v8;
  *&v18[0] = sub_1A81ACCC4();
  *(&v18[0] + 1) = v9;
  sub_1A81ACEF4();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 240) = v7;
  *(inited + 216) = v10;
  sub_1A8182F48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2638, &qword_1A81C3F60);
  swift_arrayDestroy();
  if (v1)
  {
    sub_1A81ACCC4();
    *(&v16 + 1) = v11;
    sub_1A81ACEF4();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2628, &qword_1A81C3F50);
    *&v16 = v1;
    sub_1A8183084(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A8182834(v15, v18, isUniquelyReferenced_nonNull_native);
    sub_1A818242C(v18);
  }

  memset(v18, 0, 32);
  v13 = @"EKEventStoreChangedNotification";
  return sub_1A81AC9F4();
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.changed.getter()
{
  v0 = sub_1A8183094();

  return MEMORY[0x1EEDC6400](&type metadata for EKEventStore.EventStoreChanged, v0);
}

unint64_t sub_1A81823E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A81ACEC4();

  return sub_1A81825E0(a1, v5);
}

uint64_t sub_1A8182480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A8182524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A81ACE14();

  return sub_1A81826A8(a1, v5);
}

unint64_t sub_1A8182568(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A81AD0C4();
  sub_1A81ACCD4();
  v6 = sub_1A81AD0E4();

  return sub_1A818277C(a1, a2, v6);
}

unint64_t sub_1A81825E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A8183394(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC5687D0](v9, a1);
      sub_1A818242C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A81826A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A81ACE24();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A818277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A81AD074())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_1A8182834(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A81823E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A8192F50();
      goto LABEL_7;
    }

    sub_1A8191D90(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1A81823E8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A8183394(a2, v22);
      return sub_1A8192DDC(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1A81AD0B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1A8183084(a1, v17);
}

id sub_1A8182980(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A8182524(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A81930F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A8192048(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1A8182524(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_1A8192E58(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_1A8182AC8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8182568(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A8193258();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A81922B8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1A8182568(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1A8183084(a1, v23);
  }

  else
  {
    sub_1A8192E9C(v11, a2, a3, a1, v22);
  }
}

id sub_1A8182C98(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_1A8182524(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v10;
    v14 = sub_1A8182524(a2);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v14 = sub_1A81AD0B4();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v14, v27);
    }
  }

LABEL_8:
  v25 = *v10;
  if (v20)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;

    return MEMORY[0x1EEE66BB8](v14, v27);
  }

  a6(v14, a2, a1, v25);

  return a2;
}

uint64_t sub_1A8182E00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8182568(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A8193574();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A81927F8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1A8182568(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A81AD0B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1A8192F08(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1A8182F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v3 = sub_1A81AD044();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A81833F0(v4, v13, &qword_1EB2E2638, &qword_1A81C3F60);
      result = sub_1A81823E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A8183084(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1A8183084(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A8183094()
{
  result = qword_1EB2E2640;
  if (!qword_1EB2E2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2640);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A81830FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A8183158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A81831D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1A8183264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
    v3 = sub_1A81AD044();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A81833F0(v4, &v13, &qword_1EB2E2658, &unk_1A81C4030);
      v5 = v13;
      v6 = v14;
      result = sub_1A8182568(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A8183084(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A81833F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A818346C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A8183564()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E3378);
  __swift_project_value_buffer(v0, qword_1EB2E3378);
  return sub_1A81ACC54();
}

uint64_t sub_1A81835DC()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E3390);
  __swift_project_value_buffer(v0, qword_1EB2E3390);
  return sub_1A81ACC54();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id EKRecurrenceRule.init(recurrenceRule:)(uint64_t a1)
{
  v2 = sub_1A81ACB34();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A81ACBF4();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v10;
  v11 = sub_1A81ACA74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  v19 = sub_1A81ACC34();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A81ACBC4();
  sub_1A81ACA94();
  v24 = v19;
  v25 = a1;
  (*(v20 + 8))(v23, v24);
  (*(v12 + 104))(v16, *MEMORY[0x1E6969868], v11);
  sub_1A8183E78();
  v26 = sub_1A81ACCA4();
  v27 = *(v12 + 8);
  v27(v16, v11);
  v27(v18, v11);
  v28 = 0;
  if (v26)
  {
    v29 = v61;
    sub_1A81ACC04();
    v30 = v62;
    v31 = v29;
    v32 = v63;
    (*(v62 + 32))(v9, v31, v63);
    v33 = (*(v30 + 88))(v9, v32);
    if (v33 == *MEMORY[0x1E6969918])
    {
      v63 = 0;
    }

    else
    {
      if (v33 == *MEMORY[0x1E6969930])
      {
        v34 = 1;
      }

      else if (v33 == *MEMORY[0x1E6969940])
      {
        v34 = 2;
      }

      else
      {
        if (v33 != *MEMORY[0x1E6969938])
        {
          (*(v30 + 8))(v9, v32);
          v28 = 0;
          goto LABEL_32;
        }

        v34 = 3;
      }

      v63 = v34;
    }

    v62 = sub_1A81ACBD4();
    v35 = sub_1A81ACBE4();
    v36 = sub_1A8184EE8(v35);

    v37 = *(sub_1A81ACAD4() + 16);

    if (v37)
    {
      v38 = sub_1A81ACAD4();
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_1A81ACB94();
    v40 = sub_1A8185634(v39);

    v41 = *(sub_1A81ACB84() + 16);

    if (v41)
    {
      v42 = sub_1A81ACB84();
    }

    else
    {
      v42 = 0;
    }

    v43 = *(sub_1A81ACAC4() + 16);

    if (v43)
    {
      v44 = sub_1A81ACAC4();
    }

    else
    {
      v44 = 0;
    }

    v45 = *(sub_1A81ACAB4() + 16);

    if (v45)
    {
      v46 = sub_1A81ACAB4();
    }

    else
    {
      v46 = 0;
    }

    v47 = v58;
    v48 = v25;
    sub_1A81ACB44();
    v49 = sub_1A81857E4();
    (*(v59 + 8))(v47, v60);
    if (v36)
    {
      sub_1A81831D0(0, &qword_1EB2E2688, off_1E77FBB08);
      v50 = sub_1A81ACD04();

      if (v38)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v50 = 0;
      if (v38)
      {
LABEL_25:
        sub_1A8183ED0(v38);

        sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
        v51 = sub_1A81ACD04();

        if (!v40)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v51 = 0;
    if (!v40)
    {
LABEL_27:
      if (v42)
      {
        sub_1A8183ED0(v42);

        sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
        v52 = sub_1A81ACD04();

        if (v44)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v52 = 0;
        if (v44)
        {
LABEL_29:
          sub_1A8183ED0(v44);

          sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
          v53 = sub_1A81ACD04();

          if (!v46)
          {
LABEL_31:
            v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v28 = [v54 initRecurrenceWithFrequency:v63 interval:v62 daysOfTheWeek:v50 daysOfTheMonth:v51 monthsOfTheYear:v40 weeksOfTheYear:v52 daysOfTheYear:v53 setPositions:v46 end:v49];

            v25 = v48;
            goto LABEL_32;
          }

LABEL_30:
          sub_1A8183ED0(v46);

          sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
          v46 = sub_1A81ACD04();

          goto LABEL_31;
        }
      }

      v53 = 0;
      if (!v46)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_26:
    sub_1A8183ED0(v40);

    sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
    v40 = sub_1A81ACD04();

    goto LABEL_27;
  }

LABEL_32:
  v55 = sub_1A81ACC14();
  (*(*(v55 - 8) + 8))(v25, v55);
  return v28;
}

unint64_t sub_1A8183E78()
{
  result = qword_1EB2E2680;
  if (!qword_1EB2E2680)
  {
    sub_1A81ACA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2680);
  }

  return result;
}

uint64_t sub_1A8183ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1A81ACF94();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A81ACDB4();
      sub_1A81ACF74();
      v6 = *(v7 + 16);
      sub_1A81ACFA4();
      sub_1A81ACFB4();
      sub_1A81ACF84();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t EKRecurrenceRule.calendarRecurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = sub_1A81ACC24();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v106 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A81ACAA4();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A81ACA74();
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1A81ACC34();
  v91 = *(v109 - 8);
  v12 = *(v91 + 64);
  v13 = MEMORY[0x1EEE9AC00](v109);
  v97 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v79 - v15;
  v82 = sub_1A81ACA54();
  v81 = *(v82 - 8);
  v17 = *(v81 + 64);
  v18 = MEMORY[0x1EEE9AC00](v82);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v79 - v21;
  v98 = sub_1A81ACB34();
  v96 = *(v98 - 8);
  v22 = *(v96 + 64);
  v23 = MEMORY[0x1EEE9AC00](v98);
  v95 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v79 - v25;
  v27 = sub_1A81ACBF4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v93 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v79 - v32;
  v34 = [v1 frequency];
  v94 = v28;
  v35 = *(v28 + 104);
  if ((v34 - 1) > 2)
  {
    v36 = MEMORY[0x1E6969918];
  }

  else
  {
    v36 = qword_1E7801650[(v34 - 1)];
  }

  v37 = *v36;
  v108 = v33;
  v38 = v27;
  v35(v33, v37, v27);
  v92 = [v1 interval];
  v39 = [v1 daysOfTheWeek];
  if (v39)
  {
    v40 = v39;
    sub_1A81831D0(0, &qword_1EB2E2688, off_1E77FBB08);
    v41 = sub_1A81ACD14();
  }

  else
  {
    v41 = 0;
  }

  v90 = sub_1A81859BC(v41);

  v42 = [v1 daysOfTheMonth];
  if (v42 && (v43 = v42, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v44 = sub_1A81ACD14(), v43, v45 = sub_1A81849D8(v44), , v45))
  {
    v89 = v45;
  }

  else
  {

    v89 = MEMORY[0x1E69E7CC0];
  }

  v46 = [v1 monthsOfTheYear];
  if (v46)
  {
    sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
    v47 = sub_1A81ACD14();

    v46 = sub_1A81849D8(v47);
  }

  v88 = sub_1A8185E10(v46);

  v48 = [v1 weeksOfTheYear];
  if (v48 && (v49 = v48, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v50 = sub_1A81ACD14(), v49, v51 = sub_1A81849D8(v50), , v51))
  {
    v87 = v51;
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  v52 = [v1 daysOfTheYear];
  if (v52 && (v53 = v52, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v54 = sub_1A81ACD14(), v53, v55 = sub_1A81849D8(v54), , v55))
  {
    v86 = v55;
  }

  else
  {

    v86 = MEMORY[0x1E69E7CC0];
  }

  v56 = [v1 setPositions];
  if (!v56 || (v57 = v56, sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), v58 = sub_1A81ACD14(), v57, v59 = sub_1A81849D8(v58), , !v59))
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v60 = [v1 recurrenceEnd];
  v85 = v59;
  if (v60)
  {
    v61 = v60;
    v62 = [v61 endDate];
    if (v62)
    {
      v63 = v62;
      sub_1A81ACA44();

      v64 = v81;
      v65 = v80;
      v66 = v82;
      (*(v81 + 32))(v80, v20, v82);
      v67 = v26;
      sub_1A81ACB24();

      (*(v64 + 8))(v65, v66);
    }

    else
    {
      [v61 occurrenceCount];
      v67 = v26;
      sub_1A81ACAF4();
    }
  }

  else
  {
    v67 = v26;
    sub_1A81ACB14();
  }

  v69 = v99;
  v68 = v100;
  (*(v99 + 104))(v11, *MEMORY[0x1E6969868], v100);
  v70 = v16;
  sub_1A81ACA84();
  (*(v69 + 8))(v11, v68);
  v71 = v91;
  (*(v91 + 16))(v97, v70, v109);
  v72 = v94;
  v73 = *(v94 + 16);
  v84 = v38;
  v73(v93, v108, v38);
  v74 = v96;
  v75 = *(v96 + 16);
  v83 = v67;
  v76 = v67;
  v77 = v98;
  v75(v95, v76, v98);
  (*(v101 + 104))(v103, *MEMORY[0x1E69698A0], v102);
  (*(v104 + 104))(v106, *MEMORY[0x1E69699C8], v105);
  sub_1A81ACBB4();
  (*(v71 + 8))(v70, v109);
  (*(v74 + 8))(v83, v77);
  return (*(v72 + 8))(v108, v84);
}

uint64_t sub_1A81849D8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A81ACE94())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1A8184B60(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1A81ACE94();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1AC568850](0, a1);
LABEL_10:
  v6 = v5;
  sub_1A81ACDC4();

  return 0;
}

char *sub_1A8184B60(char *a1, int64_t a2, char a3)
{
  result = sub_1A8184C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A8184B80(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8184D0C(a1, a2, a3, *v3, &qword_1EB2E26A8, &unk_1A81C4070, MEMORY[0x1E6969910]);
  *v3 = result;
  return result;
}

size_t sub_1A8184BC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A8184D0C(a1, a2, a3, *v3, &qword_1EB2E2698, &qword_1A81C4060, MEMORY[0x1E69698E8]);
  *v3 = result;
  return result;
}

char *sub_1A8184C08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2690, &qword_1A81C4058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1A8184D0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A8184EE8(uint64_t a1)
{
  v67 = sub_1A81ACA64();
  v2 = *(v67 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v49 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-v7];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42[-v11];
  v13 = sub_1A81ACBA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42[-v19];
  v21 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v66 = a1;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_47;
  }

  v50 = v8;
  v22 = 0;
  v23 = v14 + 16;
  v64 = (v14 + 88);
  v63 = *MEMORY[0x1E6969900];
  v52 = *MEMORY[0x1E69698F0];
  v62 = (v14 + 8);
  v57 = (v2 + 32);
  v58 = (v14 + 96);
  v55 = (v2 + 88);
  v56 = (v2 + 16);
  v54 = *MEMORY[0x1E69696C8];
  v51 = *MEMORY[0x1E69696C0];
  v48 = *MEMORY[0x1E69696D0];
  v47 = *MEMORY[0x1E69696E8];
  v45 = *MEMORY[0x1E69696E0];
  v60 = (v2 + 8);
  v44 = *MEMORY[0x1E69696B8];
  v43 = *MEMORY[0x1E69696D8];
  v59 = v12;
  v24 = v61;
  v65 = v14 + 16;
  do
  {
    v46 = v21;
    v25 = v22;
    while (1)
    {
      if (v25 >= v24)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v30 = *(v14 + 16);
      v21 = v23;
      v30(v20, v66 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v13);
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_52;
      }

      v30(v18, v20, v13);
      v31 = (*v64)(v18, v13);
      if (v31 == v63)
      {
        (*v58)(v18, v13);
        v32 = v67;
        (*v57)(v12, v18, v67);
        v33 = v53;
        (*v56)(v53, v12, v32);
        v34 = (*v55)(v33, v32);
        if (v34 == v54)
        {
          v26 = 0;
          goto LABEL_5;
        }

        if (v34 == v51)
        {
          v26 = 0;
          v27 = 2;
          goto LABEL_6;
        }

        if (v34 == v48)
        {
          v26 = 0;
          v27 = 3;
          goto LABEL_6;
        }

        if (v34 == v47)
        {
          v26 = 0;
          v27 = 4;
          goto LABEL_6;
        }

        if (v34 == v45)
        {
          v26 = 0;
          v27 = 5;
          goto LABEL_6;
        }

        if (v34 == v44)
        {
          v26 = 0;
          v27 = 6;
          goto LABEL_6;
        }

        v26 = 0;
        if (v34 != v43)
        {
          v39 = v53;
          goto LABEL_41;
        }
      }

      else
      {
        if (v31 != v52)
        {
          v21 = v62;
          v38 = *v62;
          (*v62)(v18, v13);
          v38(v20, v13);
          goto LABEL_7;
        }

        (*v58)(v18, v13);
        v26 = *v18;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26A0, &qword_1A81C4068);
        v12 = v50;
        v21 = v67;
        (*v57)(v50, v18 + *(v35 + 48), v67);
        v36 = v49;
        (*v56)(v49, v12, v21);
        v37 = (*v55)(v36, v21);
        if (v37 == v54)
        {
          goto LABEL_5;
        }

        if (v37 == v51)
        {
          v12 = v50;
          v27 = 2;
          goto LABEL_6;
        }

        if (v37 == v48)
        {
          v12 = v50;
          v27 = 3;
          goto LABEL_6;
        }

        if (v37 == v47)
        {
          v12 = v50;
          v27 = 4;
          goto LABEL_6;
        }

        if (v37 == v45)
        {
          v12 = v50;
          v27 = 5;
          goto LABEL_6;
        }

        if (v37 == v44)
        {
          v12 = v50;
          v27 = 6;
          goto LABEL_6;
        }

        if (v37 != v43)
        {
          v39 = v49;
          v12 = v50;
LABEL_41:
          (*v60)(v39, v67);
LABEL_5:
          v27 = 1;
          goto LABEL_6;
        }

        v12 = v50;
      }

      v27 = 7;
LABEL_6:
      (*v60)(v12, v67);
      v28 = [objc_allocWithZone(EKRecurrenceDayOfWeek) initWithDayOfTheWeek:v27 weekNumber:v26];
      v29 = (*v62)(v20, v13);
      v12 = v59;
      v24 = v61;
      if (v28)
      {
        break;
      }

LABEL_7:
      ++v25;
      v23 = v65;
      if (v22 == v24)
      {
        v21 = v46;
        goto LABEL_47;
      }
    }

    MEMORY[0x1AC5685F0](v29);
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A81ACD24();
    }

    sub_1A81ACD34();
    v21 = v68;
    v24 = v61;
    v23 = v65;
  }

  while (v22 != v61);
LABEL_47:
  if (v21 >> 62)
  {
LABEL_53:
    if (!sub_1A81ACE94())
    {
LABEL_49:

      return 0;
    }
  }

  else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  return v21;
}

uint64_t sub_1A8185634(uint64_t a1)
{
  v20 = sub_1A81ACB64();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1A8184B60(0, v6, 0);
  v7 = v21;
  v9 = *(v2 + 16);
  v8 = v2 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v18 = *(v8 + 56);
  v19 = v9;
  v11 = (v8 - 8);
  do
  {
    v12 = v20;
    v13 = v8;
    v19(v5, v10, v20);
    v14 = sub_1A81ACB54();
    (*v11)(v5, v12);
    v21 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1A8184B60((v15 > 1), v16 + 1, 1);
      v7 = v21;
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + 8 * v16 + 32) = v14;
    v10 += v18;
    --v6;
    v8 = v13;
  }

  while (v6);
  return v7;
}

id sub_1A81857E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_1A81ACA54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A81ACB04();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A8185F9C(v3);
    v9 = sub_1A81ACAE4();
    if (v10)
    {
      return 0;
    }

    else
    {
      return [objc_allocWithZone(EKRecurrenceEnd) initWithOccurrenceCount_];
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v12 = objc_allocWithZone(EKRecurrenceEnd);
    v13 = sub_1A81ACA34();
    v14 = [v12 initWithEndDate_];

    (*(v5 + 8))(v8, v4);
    return v14;
  }
}

uint64_t sub_1A81859BC(unint64_t a1)
{
  v40 = sub_1A81ACA64();
  v2 = *(v40 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A81ACBA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1A8184B80(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v11 = v42;
    v13 = a1;
    v38 = a1 & 0xC000000000000001;
    v25 = *MEMORY[0x1E69696D8];
    v35 = (v2 + 13);
    v28 = *MEMORY[0x1E69696B8];
    HIDWORD(v24) = *MEMORY[0x1E69696E0];
    v27 = *MEMORY[0x1E69696E8];
    LODWORD(v24) = *MEMORY[0x1E69696D0];
    v26 = *MEMORY[0x1E69696C0];
    v33 = v6 + 32;
    v34 = (v2 + 4);
    v30 = *MEMORY[0x1E69696C8];
    v14 = *MEMORY[0x1E6969900];
    v31 = *MEMORY[0x1E69698F0];
    v32 = v14;
    v36 = v5;
    v37 = a1;
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x1AC568850](v12, v13);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v10 = sub_1A81ACE94();
          goto LABEL_4;
        }

        if (v12 >= *(v29 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v13 + 8 * v12 + 32);
      }

      v2 = v15;
      v16 = [v15 dayOfTheWeek];
      a1 = v16;
      if (v16 <= 3)
      {
        v17 = v30;
        if (v16 != 1)
        {
          v17 = v26;
          if (v16 != 2)
          {
            v17 = v24;
            if (v16 != 3)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else if (v16 > 5)
      {
        v17 = v28;
        if (v16 != 6)
        {
          v17 = v25;
          if (v16 != 7)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v17 = v27;
        if (v16 != 4)
        {
          v17 = HIDWORD(v24);
        }
      }

      (*v35)(v39, v17, v40);
      v18 = [v2 weekNumber];
      v19 = v9;
      v20 = v32;
      if (v18)
      {
        v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26A0, &qword_1A81C4068) + 48)];
        *v9 = v18;
        v20 = v31;
      }

      (*v34)(v19, v39, v40);
      v21 = v36;
      (*(v6 + 104))(v9, v20, v36);

      v42 = v11;
      v5 = *(v11 + 16);
      v22 = *(v11 + 24);
      a1 = v5 + 1;
      if (v5 >= v22 >> 1)
      {
        sub_1A8184B80(v22 > 1, v5 + 1, 1);
        v11 = v42;
      }

      ++v12;
      *(v11 + 16) = a1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v9, v21);
      v13 = v37;
      if (v10 == v12)
      {
        return v11;
      }
    }
  }

  __break(1u);
LABEL_34:
  type metadata accessor for EKWeekday(0);
  v41 = a1;
  result = sub_1A81AD094();
  __break(1u);
  return result;
}

uint64_t sub_1A8185E10(uint64_t a1)
{
  v2 = sub_1A81ACB64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A8184BC4(0, v7, 0);
    v8 = v15;
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      sub_1A81ACB74();
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A8184BC4(v11 > 1, v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v6, v2);
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1A8185F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocationSearchResults.contactsSearchResults.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t LocationSearchResults.recentsSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t LocationSearchResults.frequentsSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t LocationSearchResults.eventsSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t LocationSearchResults.textualSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t LocationSearchResults.conferenceRoomSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t LocationSearchResults.mapSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1A8186250()
{
  v0 = sub_1A81ACC64();
  __swift_allocate_value_buffer(v0, qword_1EB2E33A8);
  v1 = __swift_project_value_buffer(v0, qword_1EB2E33A8);
  if (qword_1EB2E2610 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB2E3390);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static LocationSearch.search(for:eventStore:supportedSearchTypes:eventID:startDate:endDate:sourceID:shouldIssueAvailabilityRequest:conferenceRoomNamesToExclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v22;
  *(v8 + 160) = v21;
  *(v8 + 168) = v23;
  *(v8 + 144) = v20;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v10 = sub_1A81ACA54();
  *(v8 + 176) = v10;
  v11 = *(v10 - 8);
  *(v8 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a4;
  *(v8 + 232) = v14;
  *(v8 + 240) = v15;
  *(v8 + 248) = sub_1A81ACD84();
  *(v8 + 256) = sub_1A81ACD74();
  v17 = sub_1A81ACD44();
  *(v8 + 264) = v17;
  *(v8 + 272) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1A81864AC, v17, v16);
}

uint64_t sub_1A81864AC()
{
  v2 = (v0 + 216);
  v1 = *(v0 + 216);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = *(v0 + 184);
  v58 = *(v0 + 240);
  v59 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v57 = *(v0 + 128);
  sub_1A81833F0(*(v0 + 136), v3, &unk_1EB2E2810, &qword_1A81C4330);
  sub_1A81833F0(v6, v4, &unk_1EB2E2810, &qword_1A81C4330);
  v61 = type metadata accessor for LocationSearch.SearchModelWrapper();
  v8 = objc_allocWithZone(v61);
  v9 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_store] = v58;
  v11 = &v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_eventID];
  *v11 = v7;
  v11[1] = v57;
  sub_1A81833F0(v3, v1, &unk_1EB2E2810, &qword_1A81C4330);
  v12 = *(v5 + 48);
  if (v12(v1, 1, v59) == 1)
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 128);

    v15 = v13;
LABEL_5:
    sub_1A8188C34(*v2, &unk_1EB2E2810, &qword_1A81C4330);
    v27 = 0;
    goto LABEL_7;
  }

  v2 = (v0 + 208);
  v16 = *(v0 + 208);
  v17 = *(v0 + 224);
  v18 = *(v0 + 176);
  v19 = *(*(v0 + 184) + 32);
  v19(*(v0 + 200), *(v0 + 216), v18);
  sub_1A81833F0(v17, v16, &unk_1EB2E2810, &qword_1A81C4330);
  v20 = v12(v16, 1, v18);
  v21 = *(v0 + 240);
  if (v20 == 1)
  {
    v22 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 128);
    v25 = *(*(v0 + 184) + 8);
    v26 = v21;

    v25(v22, v23);
    goto LABEL_5;
  }

  v60 = *(v0 + 200);
  v28 = *(v0 + 184);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  v31 = *(v0 + 128);
  v19(v29, *(v0 + 208), v30);
  v32 = objc_allocWithZone(MEMORY[0x1E6992F70]);

  v33 = v21;
  v34 = sub_1A81ACA34();
  v35 = sub_1A81ACA34();
  v27 = [v32 initWithStartDate:v34 endDate:v35];

  v36 = *(v28 + 8);
  v36(v29, v30);
  v36(v60, v30);
LABEL_7:
  v37 = *(v0 + 160);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_dateRange] = v27;
  if (v37)
  {
    v38 = *(v0 + 248);
    v39 = *(v0 + 160);
    sub_1A81ACD74();
    sub_1A81ACD44();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v40 = *(v0 + 240);
    v41 = *(v0 + 152);
    v42 = sub_1A81ACCB4();
    v43 = [v40 sourceWithIdentifier_];
  }

  else
  {
    v43 = 0;
  }

  v45 = *(v0 + 240);
  v44 = *(v0 + 248);
  v47 = *(v0 + 224);
  v46 = *(v0 + 232);
  v48 = *(v0 + 168);
  v49 = *(v0 + 344);
  v50 = *(v0 + 112);
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_source] = v43;
  v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_shouldIssueAvailabilityRequest] = v49;
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_conferenceRoomNamesToExclude] = v48;
  v51 = objc_allocWithZone(EKLocationSearchModel);

  v52 = [v51 initWithEventStore_];
  *&v8[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel] = v52;
  [v52 setSupportedSearchTypes_];
  *(v0 + 72) = v8;
  *(v0 + 80) = v61;
  v53 = objc_msgSendSuper2((v0 + 72), sel_init);
  *(v0 + 280) = v53;
  [*&v53[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel] setDelegate_];

  sub_1A8188C34(v47, &unk_1EB2E2810, &qword_1A81C4330);
  sub_1A8188C34(v46, &unk_1EB2E2810, &qword_1A81C4330);
  *(v0 + 288) = sub_1A81ACD74();
  v55 = sub_1A81ACD44();
  *(v0 + 296) = v55;
  *(v0 + 304) = v54;

  return MEMORY[0x1EEE6DFA0](sub_1A8186988, v55, v54);
}

uint64_t sub_1A8186988()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[12];
  v3 = v0[13];
  v5 = sub_1A81ACD74();
  v0[39] = v5;
  v6 = swift_task_alloc();
  v0[40] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v8[1] = sub_1A8186AA8;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v5, v9, 0x6628686372616573, 0xEC000000293A726FLL, sub_1A8187084, v6, &type metadata for LocationSearchResults);
}

uint64_t sub_1A8186AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v10 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_1A8186D0C;
  }

  else
  {
    v7 = v2[39];
    v8 = v2[40];

    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_1A8186BCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A8186BCC()
{
  v1 = v0[36];

  v2 = v0[33];
  v3 = v0[34];

  return MEMORY[0x1EEE6DFA0](sub_1A8186C30, v2, v3);
}

uint64_t sub_1A8186C30()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 88);

  v10 = *(v0 + 64);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  *v9 = *(v0 + 16);
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  *(v9 + 48) = v10;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A8186D0C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[36];

  v4 = v0[33];
  v5 = v0[34];

  return MEMORY[0x1EEE6DFA0](sub_1A8186D84, v4, v5);
}

uint64_t sub_1A8186D84()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];

  v9 = v0[1];
  v10 = v0[42];

  return v9();
}

uint64_t type metadata accessor for LocationSearch.SearchModelWrapper()
{
  result = qword_1EB2E2750;
  if (!qword_1EB2E2750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8186E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
  swift_beginAccess();
  sub_1A8188BC4(v7, a2 + v10);
  swift_endAccess();
  v11 = *(a2 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel);
  v12 = sub_1A81ACCB4();
  [v11 beginSearchForTerm_];
}

void sub_1A8187084(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1A8186E90(a1, v1[2]);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1A81870B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A81870F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A8187174(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A81871D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearch(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LocationSearch(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id sub_1A81874C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + *a5);

  return v7;
}

id sub_1A818760C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_conferenceRoomNamesToExclude);
  if (!v2)
  {
    v11 = 1;
    return (v11 & 1);
  }

  result = [a1 location];
  if (result)
  {
    v4 = result;
    v5 = [result displayName];

    if (v5)
    {
      v6 = sub_1A81ACCC4();
      v8 = v7;

      v13[0] = v6;
      v13[1] = v8;
      MEMORY[0x1EEE9AC00](v9);
      v12[2] = v13;
      v10 = sub_1A8188CA8(sub_1A8188D54, v12, v2);

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1);
  }

  __break(1u);
  return result;
}

void sub_1A81878B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E26B0, &qword_1A81C4090);
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v85 - v10;
  if (qword_1EB2E2618 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v11 = sub_1A81ACC64();
    v98 = __swift_project_value_buffer(v11, qword_1EB2E33A8);
    v12 = sub_1A81ACC44();
    v13 = sub_1A81ACDD4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A805E000, v12, v13, "search completed", v14, 2u);
      MEMORY[0x1AC569C60](v14, -1, -1);
    }

    v15 = OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_continuation;
    swift_beginAccess();
    v91 = v15;
    sub_1A81833F0(v1 + v15, v7, &qword_1EB2E2768, &qword_1A81C4230);
    v16 = v94;
    if ((*(v94 + 48))(v7, 1, v8) == 1)
    {
      sub_1A8188C34(v7, &qword_1EB2E2768, &qword_1A81C4230);
      v17 = sub_1A81ACC44();
      v18 = sub_1A81ACDE4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1A805E000, v17, v18, "searchCompleted: continuation is nil", v19, 2u);
        MEMORY[0x1AC569C60](v19, -1, -1);
      }

      return;
    }

    (*(v16 + 32))(v93, v7, v8);
    v97 = *(v1 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_searchModel);
    v20 = [v97 contactsSearchResults];
    if (v20)
    {
      v21 = v20;
      sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
      v88 = sub_1A81ACD14();
    }

    else
    {
      v88 = 0;
    }

    v22 = [v97 recentsSearchResults];
    v100 = v1;
    v90 = v8;
    if (!v22)
    {
      v101 = 0;
      v102 = 0;
      goto LABEL_35;
    }

    v23 = v22;
    sub_1A81831D0(0, &unk_1EB2E2790, off_1E77FBAF0);
    v24 = sub_1A81ACD14();

    if (v24 >> 62)
    {
      break;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_14:
    v8 = 0;
    v102 = 0;
    v101 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1AC568850](v8, v24);
      }

      else
      {
        if (v8 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v26 = *(v24 + 8 * v8 + 32);
      }

      v27 = v26;
      v28 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v103 = v26;
      v29 = v102;
      sub_1A818851C(&v103, v1, &v104);
      v102 = v29;

      v7 = v105;
      v30 = v104;
      if (v105 == 255)
      {
        sub_1A8188C94(v104, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1A8197D28(0, *(v101 + 2) + 1, 1, v101);
        }

        v32 = *(v101 + 2);
        v31 = *(v101 + 3);
        if (v32 >= v31 >> 1)
        {
          v101 = sub_1A8197D28((v31 > 1), v32 + 1, 1, v101);
        }

        v33 = v101;
        *(v101 + 2) = v32 + 1;
        v34 = &v33[16 * v32];
        *(v34 + 4) = v30;
        v34[40] = v7 & 1;
        v1 = v100;
      }

      ++v8;
      if (v28 == v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v25 = sub_1A81ACE94();
  if (v25)
  {
    goto LABEL_14;
  }

LABEL_33:
  v102 = 0;
  v101 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v8 = v90;
LABEL_35:
  v35 = [v97 frequentsSearchResults];
  if (v35)
  {
    v36 = v35;
    sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
    v87 = sub_1A81ACD14();
  }

  else
  {
    v87 = 0;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = [v97 eventsSearchResults];
  if (v38)
  {
    v39 = v38;
    sub_1A81831D0(0, &qword_1EB2E2788, off_1E77FBBC0);
    v40 = sub_1A81ACD14();

    v104 = v37;
    v41 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v40 >> 62)
    {
      goto LABEL_93;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A81ACE94())
    {
      v43 = 0;
      v89 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
        break;
      }

      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1AC568850](v43, v40);
        }

        else
        {
          if (v43 >= *(v41 + 16))
          {
            goto LABEL_90;
          }

          v45 = *(v40 + 8 * v43 + 32);
        }

        v46 = v45;
        v47 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        sub_1A81ACD84();
        sub_1A81ACD74();
        sub_1A81ACD44();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44 = [v46 location];

        ++v43;
        if (v44)
        {
          MEMORY[0x1AC5685F0]();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v48 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1A81ACD24();
          }

          sub_1A81ACD34();
          v89 = v104;
          v43 = v47;
          if (i == v47)
          {
            goto LABEL_42;
          }
        }

        else if (i == v43)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      ;
    }

LABEL_42:

    v1 = v100;
    v8 = v90;
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v89 = 0;
  }

  v49 = [v97 textualSearchResults];
  if (v49)
  {
    v50 = v49;
    sub_1A81831D0(0, &qword_1EB2E2780, off_1E77FBBB0);
    v51 = sub_1A81ACD14();
  }

  else
  {
    v51 = 0;
  }

  v52 = [v97 conferenceRoomSearchResults];
  if (v52)
  {
    v53 = v52;
    sub_1A81831D0(0, &qword_1EB2E2778, off_1E77FB8B0);
    v54 = sub_1A81ACD14();

    v104 = v37;
    v40 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 >> 62)
    {
      v56 = sub_1A81ACE94();
    }

    else
    {
      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v51;
    if (v56)
    {
      v57 = 0;
      v41 = v54 & 0xC000000000000001;
      v86 = MEMORY[0x1E69E7CC0];
      *&v55 = 138412290;
      v95 = v55;
      v96 = v54;
      while (1)
      {
        while (1)
        {
          if (v41)
          {
            v58 = MEMORY[0x1AC568850](v57, v54);
          }

          else
          {
            if (v57 >= *(v40 + 16))
            {
              goto LABEL_92;
            }

            v58 = *(v54 + 8 * v57 + 32);
          }

          v59 = v58;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_91;
          }

          v100 = v57 + 1;
          sub_1A81ACD84();
          v99 = sub_1A81ACD74();
          sub_1A81ACD44();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v60 = [v59 location];
          if (v60)
          {
            break;
          }

LABEL_75:
          v63 = v59;
          v64 = sub_1A81ACC44();
          v65 = sub_1A81ACDE4();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = v41;
            v68 = v56;
            v69 = v1;
            v70 = v40;
            v71 = swift_slowAlloc();
            *v66 = v95;
            *(v66 + 4) = v63;
            *v71 = v63;
            v72 = v63;
            _os_log_impl(&dword_1A805E000, v64, v65, "failed to create conference room model from conference room: %@", v66, 0xCu);
            sub_1A8188C34(v71, &qword_1EB2E2870, &qword_1A81C4238);
            v73 = v71;
            v40 = v70;
            v1 = v69;
            v56 = v68;
            v41 = v67;
            MEMORY[0x1AC569C60](v73, -1, -1);
            v74 = v66;
            v54 = v96;
            MEMORY[0x1AC569C60](v74, -1, -1);
          }

          ++v57;
          if (v100 == v56)
          {
            goto LABEL_84;
          }
        }

        v61 = v60;
        v62 = [v60 preferredAddress];
        if (!v62)
        {

          goto LABEL_75;
        }

        v75 = v62;

        MEMORY[0x1AC5685F0]();
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1A81ACD24();
        }

        sub_1A81ACD34();
        v86 = v104;
        v57 = v100;
        if (v100 == v56)
        {
          goto LABEL_84;
        }
      }
    }

    v86 = MEMORY[0x1E69E7CC0];
LABEL_84:

    v8 = v90;
    v51 = v85;
    v77 = v86;
  }

  else
  {
    v77 = 0;
  }

  v78 = [v97 mapCompletionSearchResults];
  if (v78)
  {
    v79 = v78;
    sub_1A81831D0(0, &qword_1EB2E2770, off_1E77FB9C0);
    v80 = sub_1A81ACD14();
  }

  else
  {
    v80 = 0;
  }

  v104 = v88;
  v105 = v101;
  v106 = v87;
  v107 = v89;
  v108 = v51;
  v109 = v77;
  v110 = v80;
  v81 = v93;
  sub_1A81ACD64();
  v82 = v94;
  (*(v94 + 8))(v81, v8);
  v83 = v92;
  (*(v82 + 56))(v92, 1, 1, v8);
  v84 = v91;
  swift_beginAccess();
  sub_1A8188BC4(v83, v1 + v84);
  swift_endAccess();
}

void sub_1A818851C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [v5 location];
  if (!v6)
  {
    v9 = *(a2 + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_source);
    if (v9)
    {
      v10 = v9;
      v11 = [v5 conferenceRoomForSource_];
      if (v11)
      {
        v7 = v11;
        v12 = [v11 location];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 preferredAddress];
          if (v14)
          {
            v15 = v14;

            v8 = 1;
            goto LABEL_23;
          }
        }

        if (qword_1EB2E2618 != -1)
        {
          swift_once();
        }

        v23 = sub_1A81ACC64();
        __swift_project_value_buffer(v23, qword_1EB2E33A8);
        v24 = v7;
        v25 = sub_1A81ACC44();
        v26 = sub_1A81ACDE4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v31 = v10;
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v7;
          v29 = v24;
          _os_log_impl(&dword_1A805E000, v25, v26, "failed to create conference room model from conference room: %@", v27, 0xCu);
          sub_1A8188C34(v28, &qword_1EB2E2870, &qword_1A81C4238);
          v30 = v28;
          v10 = v31;
          MEMORY[0x1AC569C60](v30, -1, -1);
          MEMORY[0x1AC569C60](v27, -1, -1);
          v24 = v25;
          v25 = v29;
        }

LABEL_22:
        v7 = 0;
        v8 = -1;
        goto LABEL_23;
      }
    }

    if (qword_1EB2E2618 != -1)
    {
      swift_once();
    }

    v16 = sub_1A81ACC64();
    __swift_project_value_buffer(v16, qword_1EB2E33A8);
    v17 = v5;
    v18 = sub_1A81ACC44();
    v19 = sub_1A81ACDE4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1A805E000, v18, v19, "recent has neither a location nor a conference room: %@", v20, 0xCu);
      sub_1A8188C34(v21, &qword_1EB2E2870, &qword_1A81C4238);
      MEMORY[0x1AC569C60](v21, -1, -1);
      MEMORY[0x1AC569C60](v20, -1, -1);
    }

    goto LABEL_22;
  }

  v7 = v6;

  v8 = 0;
LABEL_23:
  *a3 = v7;
  *(a3 + 8) = v8;
}

id sub_1A8188970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSearch.SearchModelWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A8188A54()
{
  sub_1A8188B18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1A8188B18()
{
  if (!qword_1EB2E2760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2E26B0, &qword_1A81C4090);
    v0 = sub_1A81ACE34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E2760);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A8188BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2768, &qword_1A81C4230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8188C34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A8188C94(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1A8188CA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A8188D54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A81AD074() & 1;
  }
}

void *sub_1A8188DAC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A81ACFE4();

    if (v4)
    {
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1A8182524(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

double sub_1A8188E70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1A8182568(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1A8182480(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1A8188ED4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1A81ACE94())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
  v3 = sub_1A81ACF34();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1A81ACE84();
  sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
  sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
  result = sub_1A81ACDA4();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1A81ACEB4();
    if (!v16)
    {
LABEL_34:
      sub_1A819529C();

      return v3;
    }

    *&v28 = v16;
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    swift_dynamicCast();
LABEL_25:
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_1A81ACEC4();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1A8189310(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
  sub_1A819550C(&qword_1EB2E2828, &qword_1EB2E2650, off_1E77FBA00);
  v4 = sub_1A81ACC74();

  return v4;
}

id EKRemoteUISerializedObject.__allocating_init(serializedObjectIDDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = a1;
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = a2;
  *&v7[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id EKRemoteUISerializedObject.init(serializedObjectIDDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = a1;
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = a2;
  *&v3[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for EKRemoteUISerializedObject();
  return objc_msgSendSuper2(&v5, sel_init);
}

id EKRemoteUIDeserializedObject.__allocating_init(deserializedObject:tempObjectIDMap:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = a1;
  *&v5[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id EKRemoteUIDeserializedObject.init(deserializedObject:tempObjectIDMap:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = a1;
  *&v2[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EKRemoteUIDeserializedObject();
  return objc_msgSendSuper2(&v4, sel_init);
}

id EKRemoteUIPersistentObjectPointer.__allocating_init(objectID:isPendingInsert:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = a1;
  v5[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id EKRemoteUIPersistentObjectPointer.init(objectID:isPendingInsert:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = a1;
  v2[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EKRemoteUIPersistentObjectPointer();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t EKRemoteUIPersistentObjectPointer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A8195010(a1);
  v5 = v4;

  return v5;
}

uint64_t EKRemoteUIPersistentObjectPointer.init(coder:)(void *a1)
{
  sub_1A8195010(a1);
  v3 = v2;

  return v3;
}

void sub_1A81899E8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
  v4 = sub_1A81ACCB4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
  v6 = sub_1A81ACCB4();
  [a1 encodeBool:v5 forKey:v6];
}

id sub_1A8189C24(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id EKRemoteUIObjectSerializer.serializedRepresentation(ekObject:obfuscateKeyProperties:)(void *a1, char a2)
{
  v9 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v2 = sub_1A8189CFC(a1, a2, &v10, &v9);
  v4 = v9;
  v3 = v10;
  v5 = type metadata accessor for EKRemoteUISerializedObject();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v2;
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v3;
  *&v6[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1A8189CFC(void *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = [a1 persistentObject];
  if (!v6)
  {
    goto LABEL_270;
  }

  v7 = v6;
  [v6 isPendingInsert];

  v332 = v4;
  v8 = *(v4 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey);
  v9 = *(v4 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey + 8);
  *(&v361 + 1) = sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98);
  *&v360 = sub_1A81ACE04();
  sub_1A8183084(&v360, &v357);
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v372 = v10;
  sub_1A8182AC8(&v357, v8, v9, isUniquelyReferenced_nonNull_native);
  v307 = v372;
  v12 = [a1 changeSet];
  v335 = a1;
  if (!v12)
  {
    v75 = v10;
    v76 = v10;
LABEL_185:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E28D0, &unk_1A81C43A8);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1A81C3F40;
    v220 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey + 8);
    *(v219 + 32) = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey);
    *(v219 + 40) = v220;
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
    *(v219 + 48) = v76;
    v222 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey);
    v223 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey + 8);
    *(v219 + 72) = v221;
    *(v219 + 80) = v222;
    *(v219 + 88) = v223;
    *(v219 + 96) = v75;
    v224 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey);
    v225 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey + 8);
    *(v219 + 120) = v221;
    *(v219 + 128) = v224;
    *(v219 + 168) = v221;
    *(v219 + 136) = v225;
    *(v219 + 144) = v10;

    v226 = sub_1A8183264(v219);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2658, &unk_1A81C4030);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v227 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey);
    v228 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey + 8);
    *(&v361 + 1) = v221;
    *&v360 = v226;
    sub_1A8183084(&v360, &v357);

    v229 = swift_isUniquelyReferenced_nonNull_native();
    *&v372 = v307;
    sub_1A8182AC8(&v357, v227, v228, v229);
    v230 = v372;
    v231 = [v335 persistentObject];
    if (!v231)
    {
      goto LABEL_271;
    }

    v232 = v231;

    v233 = [v232 objectID];

    if (v233)
    {
      v234 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey);
      v235 = *(v332 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey + 8);
      *(&v361 + 1) = sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      *&v360 = v233;
      sub_1A8183084(&v360, &v357);
      v236 = v233;
      v237 = swift_isUniquelyReferenced_nonNull_native();
      *&v372 = v230;
      sub_1A8182AC8(&v357, v234, v235, v237);
      v230 = v372;
      v238 = v335;
      v239 = [v335 backingObject];
      if (v239)
      {
        v240 = v239;
        v241 = sub_1A818C1A4(v239, a2 & 1, a4);
        v242 = *a4;
        v243 = swift_isUniquelyReferenced_nonNull_native();
        *&v360 = *a4;
        *a4 = 0x8000000000000000;
        sub_1A8182980(v241, v236, v243);

        *a4 = v360;
      }

      else
      {
      }
    }

    else
    {
      v238 = v335;
    }

    v244 = [v238 cachedMeltedObjects];
    if (!v244 || (v245 = v244, v246 = sub_1A81ACC94(), v245, v247 = sub_1A818D1F4(v246), , !v247))
    {
      v300 = MEMORY[0x1E69E7CC8];
      v301 = v332;
LABEL_250:
      v302 = *(v301 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey);
      v303 = *(v301 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey + 8);
      *(&v361 + 1) = v221;
      *&v360 = v300;
      sub_1A8183084(&v360, &v357);
      v304 = swift_isUniquelyReferenced_nonNull_native();
      *&v355 = v230;
      sub_1A8182AC8(&v357, v302, v303, v304);
      return v355;
    }

    v322 = v230;
    v334 = v221;
    v248 = 0;
    v249 = 1 << *(v247 + 32);
    if (v249 < 64)
    {
      v250 = ~(-1 << v249);
    }

    else
    {
      v250 = -1;
    }

    v251 = v250 & *(v247 + 64);
    v252 = (v249 + 63) >> 6;
    for (i = MEMORY[0x1E69E7CC8]; ; i = v353)
    {
      v343 = i;
      while (1)
      {
        while (1)
        {
          v254 = v248;
          if (v251)
          {
            v255 = v248;
LABEL_207:
            v257 = __clz(__rbit64(v251));
            v251 &= v251 - 1;
            v258 = v257 | (v255 << 6);
            v259 = (*(v247 + 48) + 16 * v258);
            v261 = *v259;
            v260 = v259[1];
            sub_1A8182480(*(v247 + 56) + 32 * v258, &v355);
            *&v357 = v261;
            *(&v357 + 1) = v260;
            sub_1A8183084(&v355, &v358);

            v248 = v255;
          }

          else
          {
            v256 = v252 <= v248 + 1 ? v248 + 1 : v252;
            v248 = v256 - 1;
            while (1)
            {
              v255 = v254 + 1;
              if (__OFADD__(v254, 1))
              {
                goto LABEL_253;
              }

              if (v255 >= v252)
              {
                break;
              }

              v251 = *(v247 + 64 + 8 * v255);
              ++v254;
              if (v251)
              {
                goto LABEL_207;
              }
            }

            v251 = 0;
            v358 = 0u;
            v359 = 0u;
            v357 = 0u;
          }

          v360 = v357;
          v361 = v358;
          v362 = v359;
          v262 = *(&v357 + 1);
          if (!*(&v357 + 1))
          {

            v301 = v332;
            v221 = v334;
            v230 = v322;
            v300 = v343;
            goto LABEL_250;
          }

          v263 = v360;
          sub_1A8183084(&v361, &v357);
          ObjCClassFromObject = swift_getObjCClassFromObject();
          v265 = sub_1A81ACCB4();
          LOBYTE(ObjCClassFromObject) = [ObjCClassFromObject isWeakRelationObject:v335 forKey:v265];

          if ((ObjCClassFromObject & 1) == 0)
          {
            break;
          }

LABEL_210:
          __swift_destroy_boxed_opaque_existential_0(&v357);
        }

        sub_1A8182480(&v357, &v355);
        sub_1A81831D0(0, &qword_1EB2E2848, off_1E77FB9F0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v348 = *&v354[0];
        v266 = sub_1A8189CFC(*&v354[0], a2 & 1, a3, a4);
        v356 = v334;
        *&v355 = v266;
        sub_1A8183084(&v355, v354);
        v267 = swift_isUniquelyReferenced_nonNull_native();
        v353 = v343;
        v268 = sub_1A8182568(v263, v262);
        v270 = v343[2];
        v271 = (v269 & 1) == 0;
        v56 = __OFADD__(v270, v271);
        v272 = v270 + v271;
        if (v56)
        {
          goto LABEL_268;
        }

        v273 = v269;
        if (v343[3] >= v272)
        {
          if (v267)
          {
            goto LABEL_220;
          }

          v277 = v268;
          sub_1A8193258();
          v268 = v277;
          if ((v273 & 1) == 0)
          {
            goto LABEL_223;
          }

LABEL_221:
          v275 = v268;

          v343 = v353;
          v276 = (v353[7] + 32 * v275);
          __swift_destroy_boxed_opaque_existential_0(v276);
          sub_1A8183084(v354, v276);

          __swift_destroy_boxed_opaque_existential_0(&v357);
        }

        else
        {
          sub_1A81922B8(v272, v267);
          v268 = sub_1A8182568(v263, v262);
          if ((v273 & 1) != (v274 & 1))
          {
            goto LABEL_272;
          }

LABEL_220:
          if (v273)
          {
            goto LABEL_221;
          }

LABEL_223:
          v278 = v353;
          v353[(v268 >> 6) + 8] |= 1 << v268;
          v279 = (v278[6] + 16 * v268);
          *v279 = v263;
          v279[1] = v262;
          sub_1A8183084(v354, (v278[7] + 32 * v268));

          __swift_destroy_boxed_opaque_existential_0(&v357);
          v280 = v278[2];
          v56 = __OFADD__(v280, 1);
          v281 = v280 + 1;
          if (v56)
          {
            goto LABEL_269;
          }

          v343 = v278;
          v278[2] = v281;
        }
      }

      sub_1A8182480(&v357, &v355);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28E0, &qword_1A81C43B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_210;
      }

      v282 = *&v354[0];
      if ((*&v354[0] & 0xC000000000000001) != 0)
      {
        sub_1A81ACE84();
        sub_1A819550C(&qword_1EB2E28E8, &qword_1EB2E2848, off_1E77FB9F0);
        sub_1A81ACDA4();
        v283 = *(&v372 + 1);
        v282 = v372;
        v284 = v373;
        v285 = v374;
        v286 = v375;
      }

      else
      {
        v285 = 0;
        v287 = -1 << *(*&v354[0] + 32);
        v283 = *&v354[0] + 56;
        v284 = ~v287;
        v288 = -v287;
        if (v288 < 64)
        {
          v289 = ~(-1 << v288);
        }

        else
        {
          v289 = -1;
        }

        v286 = v289 & *(*&v354[0] + 56);
      }

      v290 = (v284 + 64) >> 6;
      v349 = MEMORY[0x1E69E7CC0];
      v316 = v283;
      v319 = v282;
      v314 = v290;
      if (v282 < 0)
      {
        goto LABEL_232;
      }

      while (1)
      {
        v294 = v285;
        v295 = v286;
        v291 = v285;
        if (!v286)
        {
          break;
        }

LABEL_239:
        v339 = (v295 - 1) & v295;
        v293 = *(*(v282 + 48) + ((v291 << 9) | (8 * __clz(__rbit64(v295)))));
        if (!v293)
        {
          goto LABEL_246;
        }

        while (1)
        {
          v331 = v293;
          v326 = sub_1A8189CFC(v293, a2 & 1, a3, a4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v349 = sub_1A8197E34(0, v349[2] + 1, 1, v349);
          }

          v297 = v349[2];
          v296 = v349[3];
          v298 = v331;
          if (v297 >= v296 >> 1)
          {
            v349 = sub_1A8197E34((v296 > 1), v297 + 1, 1, v349);
            v298 = v331;
          }

          v349[2] = v297 + 1;
          v349[v297 + 4] = v326;
          v285 = v291;
          v286 = v339;
          v283 = v316;
          v282 = v319;
          v290 = v314;
          if ((v319 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_232:
          v291 = v285;
          v292 = sub_1A81ACEB4();
          if (v292)
          {
            *&v354[0] = v292;
            swift_dynamicCast();
            v293 = v355;
            v339 = v286;
            if (v355)
            {
              continue;
            }
          }

          goto LABEL_246;
        }
      }

      while (1)
      {
        v291 = v294 + 1;
        if (__OFADD__(v294, 1))
        {
          goto LABEL_264;
        }

        if (v291 >= v290)
        {
          break;
        }

        v295 = *(v283 + 8 * v291);
        ++v294;
        if (v295)
        {
          goto LABEL_239;
        }
      }

LABEL_246:
      sub_1A819529C();
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2838, &qword_1A81C4348);
      *&v355 = v349;
      sub_1A8183084(&v355, v354);
      v299 = swift_isUniquelyReferenced_nonNull_native();
      v353 = v343;
      sub_1A8182AC8(v354, v263, v262, v299);

      __swift_destroy_boxed_opaque_existential_0(&v357);
    }
  }

  v309 = v12;
  v13 = [v12 singleValueChanges];
  if (v13)
  {
    *&v360 = 0;
    v14 = v13;
    sub_1A81ACC84();

    if (v360)
    {
      v15 = 0;
      v340 = v360;
      v16 = v360 + 64;
      v17 = 1 << *(v360 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v360 + 64);
      v20 = (v17 + 63) >> 6;
      v333 = MEMORY[0x1E69E7CC8];
      v345 = v360 + 64;
      while (1)
      {
        if (v19)
        {
          v23 = v15;
LABEL_19:
          v26 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v27 = v26 | (v23 << 6);
          v28 = (*(v340 + 48) + 16 * v27);
          v30 = *v28;
          v29 = v28[1];
          sub_1A8182480(*(v340 + 56) + 32 * v27, &v372);
          *&v357 = v30;
          *(&v357 + 1) = v29;
          sub_1A8183084(&v372, &v358);
        }

        else
        {
          if (v20 <= v15 + 1)
          {
            v24 = v15 + 1;
          }

          else
          {
            v24 = v20;
          }

          v25 = v24 - 1;
          while (1)
          {
            v23 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_254;
            }

            if (v23 >= v20)
            {
              break;
            }

            v19 = *(v16 + 8 * v23);
            ++v15;
            if (v19)
            {
              v15 = v23;
              goto LABEL_19;
            }
          }

          v19 = 0;
          v358 = 0u;
          v359 = 0u;
          v15 = v25;
          v357 = 0u;
        }

        v360 = v357;
        v361 = v358;
        v362 = v359;
        v31 = *(&v357 + 1);
        if (!*(&v357 + 1))
        {

          goto LABEL_52;
        }

        v32 = v360;
        sub_1A8183084(&v361, &v357);
        sub_1A8182480(&v357, &v372);
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v33 = v368;
        v34 = [v368 objectID];
        if (v34)
        {
          v35 = v34;
          v36 = [v33 isPendingInsert];
          v37 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
          v38 = objc_allocWithZone(v37);
          *&v38[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v35;
          v38[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v36;
          v350.receiver = v38;
          v350.super_class = v37;
          v336 = v35;
          v39 = objc_msgSendSuper2(&v350, sel_init);
          v40 = swift_getObjCClassFromObject();
          v41 = v33;
          v42 = sub_1A81ACCB4();
          v323 = [v40 isWeakRelationObject:v41 forKey:v42];
          v328 = v41;

          v374 = v37;
          *&v372 = v39;
          sub_1A8183084(&v372, &v368);
          v43 = v39;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v363 = v333;
          v46 = sub_1A8182568(v32, v31);
          v47 = v333[2];
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_263;
          }

          v50 = v45;
          if (v333[3] >= v49)
          {
            if (v44)
            {
              if (v45)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_1A8193258();
              if (v50)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_1A81922B8(v49, v44);
            v51 = sub_1A8182568(v32, v31);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_272;
            }

            v46 = v51;
            if (v50)
            {
LABEL_42:

              v333 = v363;
              v73 = (v363[7] + 32 * v46);
              __swift_destroy_boxed_opaque_existential_0(v73);
              sub_1A8183084(&v368, v73);
              if ((v323 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_43;
            }
          }

          v53 = v363;
          v363[(v46 >> 6) + 8] |= 1 << v46;
          v54 = (v53[6] + 16 * v46);
          *v54 = v32;
          v54[1] = v31;
          sub_1A8183084(&v368, (v53[7] + 32 * v46));
          v55 = v53[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_267;
          }

          v333 = v53;
          v53[2] = v57;
          if ((v323 & 1) == 0)
          {
LABEL_29:
            v58 = sub_1A818C1A4(v328, a2 & 1, a3);
            v59 = *a3;
            v60 = swift_isUniquelyReferenced_nonNull_native();
            *&v372 = *a3;
            sub_1A8182980(v58, v336, v60);

            *a3 = v372;
            __swift_destroy_boxed_opaque_existential_0(&v357);
            goto LABEL_44;
          }

LABEL_43:
          __swift_destroy_boxed_opaque_existential_0(&v357);

LABEL_44:
          v16 = v345;
        }

        else
        {

LABEL_32:
          sub_1A8182480(&v357, &v372);
          v61 = swift_isUniquelyReferenced_nonNull_native();
          *&v368 = v333;
          v62 = sub_1A8182568(v32, v31);
          v64 = v333[2];
          v65 = (v63 & 1) == 0;
          v56 = __OFADD__(v64, v65);
          v66 = v64 + v65;
          if (v56)
          {
            goto LABEL_258;
          }

          v67 = v63;
          if (v333[3] >= v66)
          {
            if (v61)
            {
              goto LABEL_37;
            }

            v74 = v62;
            sub_1A8193258();
            v62 = v74;
            if (v67)
            {
              goto LABEL_8;
            }

LABEL_38:
            v69 = v368;
            *(v368 + 8 * (v62 >> 6) + 64) |= 1 << v62;
            v70 = (v69[6] + 16 * v62);
            *v70 = v32;
            v70[1] = v31;
            sub_1A8183084(&v372, (v69[7] + 32 * v62));
            __swift_destroy_boxed_opaque_existential_0(&v357);
            v71 = v69[2];
            v56 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v56)
            {
              goto LABEL_262;
            }

            v333 = v69;
            v69[2] = v72;
            v16 = v345;
          }

          else
          {
            sub_1A81922B8(v66, v61);
            v62 = sub_1A8182568(v32, v31);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_272;
            }

LABEL_37:
            if ((v67 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_8:
            v21 = v62;

            v333 = v368;
            v22 = (*(v368 + 56) + 32 * v21);
            __swift_destroy_boxed_opaque_existential_0(v22);
            sub_1A8183084(&v372, v22);
            __swift_destroy_boxed_opaque_existential_0(&v357);
            v16 = v345;
          }
        }
      }
    }
  }

  v333 = MEMORY[0x1E69E7CC8];
LABEL_52:
  v77 = [v309 multiValueAdditions];
  if (!v77 || (*&v360 = 0, v78 = v77, sub_1A81ACC84(), v78, !v360))
  {
    v75 = MEMORY[0x1E69E7CC8];
LABEL_123:
    v154 = [v309 multiValueRemovals];
    if (v154 && (*&v360 = 0, v155 = v154, sub_1A81ACC84(), v155, v360))
    {
      v156 = 0;
      v313 = v360;
      v157 = v360 + 64;
      v158 = 1 << *(v360 + 32);
      if (v158 < 64)
      {
        v159 = ~(-1 << v158);
      }

      else
      {
        v159 = -1;
      }

      v160 = v159 & *(v360 + 64);
      v161 = (v158 + 63) >> 6;
      v162 = MEMORY[0x1E69E7CC8];
      v338 = v161;
      v342 = v360 + 64;
      v318 = v75;
LABEL_131:
      if (v160)
      {
        v165 = v156;
        goto LABEL_141;
      }

      if (v161 <= v156 + 1)
      {
        v166 = v156 + 1;
      }

      else
      {
        v166 = v161;
      }

      v167 = v166 - 1;
      do
      {
        v165 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_256;
        }

        if (v165 >= v161)
        {
          v160 = 0;
          v358 = 0u;
          v359 = 0u;
          v156 = v167;
          v357 = 0u;
          goto LABEL_142;
        }

        v160 = *(v157 + 8 * v165);
        ++v156;
      }

      while (!v160);
      v156 = v165;
LABEL_141:
      v168 = __clz(__rbit64(v160));
      v160 &= v160 - 1;
      v169 = v168 | (v165 << 6);
      v170 = (*(v313 + 48) + 16 * v169);
      v172 = *v170;
      v171 = v170[1];
      sub_1A8182480(*(v313 + 56) + 32 * v169, &v372);
      *&v357 = v172;
      *(&v357 + 1) = v171;
      sub_1A8183084(&v372, &v358);

LABEL_142:
      v360 = v357;
      v361 = v358;
      v362 = v359;
      v173 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v174 = v360;
        sub_1A8183084(&v361, &v357);
        sub_1A8182480(&v357, &v372);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
        if (swift_dynamicCast())
        {
          v321 = v174;
          v325 = v173;
          v330 = v162;
          v175 = v355;
          *&v354[0] = MEMORY[0x1E69E7CD0];
          if ((v355 & 0xC000000000000001) != 0)
          {
            sub_1A81ACE84();
            sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
            sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
            sub_1A81ACDA4();
            v176 = *(&v368 + 1);
            v175 = v368;
            v177 = v369;
            v178 = v370;
            v179 = v371;
          }

          else
          {
            v178 = 0;
            v198 = -1 << *(v355 + 32);
            v176 = v355 + 56;
            v177 = ~v198;
            v199 = -v198;
            if (v199 < 64)
            {
              v200 = ~(-1 << v199);
            }

            else
            {
              v200 = -1;
            }

            v179 = v200 & *(v355 + 56);
          }

          v201 = (v177 + 64) >> 6;
          for (j = v175; ; v175 = j)
          {
            if (v175 < 0)
            {
              v207 = sub_1A81ACEB4();
              if (!v207)
              {
                goto LABEL_179;
              }

              *&v355 = v207;
              sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
              swift_dynamicCast();
              v206 = v372;
              v204 = v178;
              v205 = v179;
              if (!v372)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v202 = v178;
              v203 = v179;
              v204 = v178;
              if (!v179)
              {
                while (1)
                {
                  v204 = v202 + 1;
                  if (__OFADD__(v202, 1))
                  {
                    goto LABEL_252;
                  }

                  if (v204 >= v201)
                  {
                    break;
                  }

                  v203 = *(v176 + 8 * v204);
                  ++v202;
                  if (v203)
                  {
                    goto LABEL_173;
                  }
                }

LABEL_179:
                sub_1A819529C();
                v215 = *&v354[0];
                v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
                *&v372 = v215;
                sub_1A8183084(&v372, &v355);
                v216 = swift_isUniquelyReferenced_nonNull_native();
                v353 = v330;
                sub_1A8182AC8(&v355, v321, v325, v216);

                __swift_destroy_boxed_opaque_existential_0(&v357);
                v162 = v353;
                v75 = v318;
LABEL_130:
                v161 = v338;
                v157 = v342;
                goto LABEL_131;
              }

LABEL_173:
              v205 = (v203 - 1) & v203;
              v206 = *(*(v175 + 48) + ((v204 << 9) | (8 * __clz(__rbit64(v203)))));
              if (!v206)
              {
                goto LABEL_179;
              }
            }

            v208 = [v206 objectID];
            if (v208)
            {
              v209 = v208;
              v210 = [v206 isPendingInsert];
              v211 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
              v212 = objc_allocWithZone(v211);
              *&v212[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v209;
              v212[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v210;
              v352.receiver = v212;
              v352.super_class = v211;
              v213 = v209;
              v214 = objc_msgSendSuper2(&v352, sel_init);
              sub_1A8193768(&v372, v214);
            }

            else
            {
            }

            v178 = v204;
            v179 = v205;
          }
        }

        if (qword_1EB2E2608 != -1)
        {
          swift_once();
        }

        v180 = sub_1A81ACC64();
        __swift_project_value_buffer(v180, qword_1EB2E3378);

        v181 = sub_1A81ACC44();
        v182 = sub_1A81ACDE4();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          *&v372 = v184;
          *v183 = 136315138;
          v185 = v174;
          *(v183 + 4) = sub_1A81911EC(v174, v173, &v372);
          _os_log_impl(&dword_1A805E000, v181, v182, "EKRemoteUIObjectSerializer: Cannot parse changeSet multiValueRemovals as Set<EKPersistentObject> for key: %s", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v184);
          MEMORY[0x1AC569C60](v184, -1, -1);
          MEMORY[0x1AC569C60](v183, -1, -1);
        }

        else
        {

          v185 = v174;
        }

        sub_1A8182480(&v357, &v372);
        v186 = swift_isUniquelyReferenced_nonNull_native();
        *&v355 = v162;
        v187 = sub_1A8182568(v185, v173);
        v189 = v162[2];
        v190 = (v188 & 1) == 0;
        v56 = __OFADD__(v189, v190);
        v191 = v189 + v190;
        if (v56)
        {
          goto LABEL_261;
        }

        v192 = v188;
        if (v162[3] < v191)
        {
          sub_1A81922B8(v191, v186);
          v193 = v174;
          v187 = sub_1A8182568(v174, v173);
          if ((v192 & 1) != (v194 & 1))
          {
            goto LABEL_272;
          }

          v75 = v318;
          if ((v192 & 1) == 0)
          {
            goto LABEL_158;
          }

LABEL_129:
          v163 = v187;

          v162 = v355;
          v164 = (*(v355 + 56) + 32 * v163);
          __swift_destroy_boxed_opaque_existential_0(v164);
          sub_1A8183084(&v372, v164);
          __swift_destroy_boxed_opaque_existential_0(&v357);
          goto LABEL_130;
        }

        if (v186)
        {
          v193 = v174;
          v75 = v318;
          if (v188)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v217 = v173;
          v218 = v187;
          sub_1A8193258();
          v187 = v218;
          v173 = v217;
          v193 = v174;
          v75 = v318;
          if (v192)
          {
            goto LABEL_129;
          }
        }

LABEL_158:
        v162 = v355;
        *(v355 + 8 * (v187 >> 6) + 64) |= 1 << v187;
        v195 = (v162[6] + 16 * v187);
        *v195 = v193;
        v195[1] = v173;
        sub_1A8183084(&v372, (v162[7] + 32 * v187));
        __swift_destroy_boxed_opaque_existential_0(&v357);
        v196 = v162[2];
        v56 = __OFADD__(v196, 1);
        v197 = v196 + 1;
        if (v56)
        {
          goto LABEL_266;
        }

        v162[2] = v197;
        goto LABEL_130;
      }

      v76 = v333;
      v10 = v162;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC8];
      v76 = v333;
    }

    goto LABEL_185;
  }

  v80 = 0;
  v310 = v360;
  v81 = v360 + 64;
  v82 = 1 << *(v360 + 32);
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  else
  {
    v83 = -1;
  }

  v84 = v83 & *(v360 + 64);
  v85 = (v82 + 63) >> 6;
  v75 = MEMORY[0x1E69E7CC8];
  *&v79 = 136315138;
  v306 = v79;
  v312 = v85;
  v315 = v360 + 64;
  while (1)
  {
    while (1)
    {
      if (v84)
      {
        v88 = v80;
LABEL_69:
        v320 = (v84 - 1) & v84;
        v91 = __clz(__rbit64(v84)) | (v88 << 6);
        v92 = (*(v310 + 48) + 16 * v91);
        v94 = *v92;
        v93 = v92[1];
        sub_1A8182480(*(v310 + 56) + 32 * v91, &v372);
        *&v357 = v94;
        *(&v357 + 1) = v93;
        sub_1A8183084(&v372, &v358);
      }

      else
      {
        if (v85 <= v80 + 1)
        {
          v89 = v80 + 1;
        }

        else
        {
          v89 = v85;
        }

        v90 = v89 - 1;
        while (1)
        {
          v88 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_255;
          }

          if (v88 >= v85)
          {
            break;
          }

          v84 = *(v81 + 8 * v88);
          ++v80;
          if (v84)
          {
            v80 = v88;
            goto LABEL_69;
          }
        }

        v320 = 0;
        v358 = 0u;
        v359 = 0u;
        v80 = v90;
        v357 = 0u;
      }

      v360 = v357;
      v361 = v358;
      v362 = v359;
      v95 = *(&v357 + 1);
      if (!*(&v357 + 1))
      {

        goto LABEL_123;
      }

      v329 = v360;
      sub_1A8183084(&v361, &v357);
      sub_1A8182480(&v357, &v372);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
      if (swift_dynamicCast())
      {
        break;
      }

      if (qword_1EB2E2608 != -1)
      {
        swift_once();
      }

      v101 = sub_1A81ACC64();
      __swift_project_value_buffer(v101, qword_1EB2E3378);

      v102 = sub_1A81ACC44();
      v103 = sub_1A81ACDE4();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v372 = v105;
        *v104 = v306;
        v106 = v329;
        *(v104 + 4) = sub_1A81911EC(v329, v95, &v372);
        _os_log_impl(&dword_1A805E000, v102, v103, "EKRemoteUIObjectSerializer: Cannot parse changeSet multiValueAdditions as Set<EKPersistentObject> for key: %s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1AC569C60](v105, -1, -1);
        MEMORY[0x1AC569C60](v104, -1, -1);
      }

      else
      {

        v106 = v329;
      }

      sub_1A8182480(&v357, &v372);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *&v368 = v75;
      v108 = sub_1A8182568(v106, v95);
      v110 = v75[2];
      v111 = (v109 & 1) == 0;
      v56 = __OFADD__(v110, v111);
      v112 = v110 + v111;
      if (v56)
      {
        goto LABEL_260;
      }

      v113 = v109;
      if (v75[3] >= v112)
      {
        if (v107)
        {
          goto LABEL_84;
        }

        v153 = v108;
        sub_1A8193258();
        v108 = v153;
        if (v113)
        {
          goto LABEL_58;
        }

LABEL_85:
        v75 = v368;
        *(v368 + 8 * (v108 >> 6) + 64) |= 1 << v108;
        v115 = (v75[6] + 16 * v108);
        *v115 = v329;
        v115[1] = v95;
        sub_1A8183084(&v372, (v75[7] + 32 * v108));
        __swift_destroy_boxed_opaque_existential_0(&v357);
        v116 = v75[2];
        v56 = __OFADD__(v116, 1);
        v117 = v116 + 1;
        if (v56)
        {
          goto LABEL_265;
        }

        v75[2] = v117;
        v84 = v320;
      }

      else
      {
        sub_1A81922B8(v112, v107);
        v108 = sub_1A8182568(v329, v95);
        if ((v113 & 1) != (v114 & 1))
        {
          goto LABEL_272;
        }

LABEL_84:
        if ((v113 & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_58:
        v86 = v108;

        v75 = v368;
        v87 = (*(v368 + 56) + 32 * v86);
        __swift_destroy_boxed_opaque_existential_0(v87);
        sub_1A8183084(&v372, v87);
        __swift_destroy_boxed_opaque_existential_0(&v357);
        v84 = v320;
      }
    }

    v311 = v95;
    v317 = v75;
    v96 = v368;
    *&v355 = MEMORY[0x1E69E7CD0];
    if ((v368 & 0xC000000000000001) != 0)
    {
      sub_1A81ACE84();
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
      sub_1A81ACDA4();
      v96 = v363;
      v97 = v364;
      v98 = v365;
      v99 = v366;
      v100 = v367;
    }

    else
    {
      v99 = 0;
      v118 = -1 << *(v368 + 32);
      v97 = v368 + 56;
      v98 = ~v118;
      v119 = -v118;
      v120 = v119 < 64 ? ~(-1 << v119) : -1;
      v100 = v120 & *(v368 + 56);
    }

    v121 = (v98 + 64) >> 6;
    v337 = v121;
    v341 = v97;
    v324 = v96;
    if ((v96 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v122 = sub_1A81ACEB4();
      if (!v122)
      {
        break;
      }

      *&v368 = v122;
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      v123 = v372;
      v124 = v99;
      v346 = v100;
      v97 = v341;
      if (!v372)
      {
        break;
      }

LABEL_101:
      v127 = [v123 objectID];
      if (v127)
      {
        v128 = v127;
        v129 = [v123 isPendingInsert];
        v130 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
        v131 = objc_allocWithZone(v130);
        *&v131[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v128;
        v131[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v129;
        v351.receiver = v131;
        v351.super_class = v130;
        v132 = v128;
        v133 = objc_msgSendSuper2(&v351, sel_init);
        sub_1A8193768(&v372, v133);

        v134 = sub_1A818C1A4(v123, a2 & 1, a3);
        v135 = *a3;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        *&v372 = *a3;
        v137 = v372;
        *a3 = 0x8000000000000000;
        v139 = sub_1A8182524(v132);
        v140 = *(v137 + 16);
        v141 = (v138 & 1) == 0;
        v142 = v140 + v141;
        if (__OFADD__(v140, v141))
        {
          goto LABEL_257;
        }

        v143 = v138;
        if (*(v137 + 24) >= v142)
        {
          if (v136)
          {
            v146 = v372;
            if ((v138 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            sub_1A81930F4();
            v146 = v372;
            if ((v143 & 1) == 0)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          sub_1A8192048(v142, v136);
          v144 = sub_1A8182524(v132);
          if ((v143 & 1) != (v145 & 1))
          {
            goto LABEL_273;
          }

          v139 = v144;
          v146 = v372;
          if ((v143 & 1) == 0)
          {
LABEL_106:
            v146[(v139 >> 6) + 8] |= 1 << v139;
            *(v146[6] + 8 * v139) = v132;
            *(v146[7] + 8 * v139) = v134;

            v147 = v146[2];
            v56 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v56)
            {
              goto LABEL_259;
            }

            v146[2] = v148;
            goto LABEL_113;
          }
        }

        v149 = v146[7];
        v150 = *(v149 + 8 * v139);
        *(v149 + 8 * v139) = v134;

LABEL_113:
        v100 = v346;
        *a3 = v146;
        v99 = v124;
        v85 = v312;
        v81 = v315;
        v96 = v324;
        v121 = v337;
        v97 = v341;
        if ((v324 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {

        v99 = v124;
        v100 = v346;
        v121 = v337;
        if ((v96 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_117:
    sub_1A819529C();
    v151 = v355;
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v372 = v151;
    sub_1A8183084(&v372, &v368);
    v152 = swift_isUniquelyReferenced_nonNull_native();
    *&v354[0] = v317;
    sub_1A8182AC8(&v368, v329, v311, v152);

    __swift_destroy_boxed_opaque_existential_0(&v357);
    v75 = *&v354[0];
    v84 = v320;
  }

LABEL_96:
  v125 = v99;
  v126 = v100;
  v124 = v99;
  if (v100)
  {
LABEL_100:
    v346 = (v126 - 1) & v126;
    v123 = *(*(v96 + 48) + ((v124 << 9) | (8 * __clz(__rbit64(v126)))));
    if (!v123)
    {
      goto LABEL_117;
    }

    goto LABEL_101;
  }

  while (1)
  {
    v124 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      break;
    }

    if (v124 >= v121)
    {
      goto LABEL_117;
    }

    v126 = *(v97 + 8 * v124);
    ++v125;
    if (v126)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  sub_1A81AD0B4();
  __break(1u);
LABEL_273:
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
  result = sub_1A81AD0B4();
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.serializedRepresentation(ekObject:)(void *a1)
{
  v8 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v1 = sub_1A8189CFC(a1, 0, &v9, &v8);
  v3 = v8;
  v2 = v9;
  v4 = type metadata accessor for EKRemoteUISerializedObject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_serializedObjectIDDictionary] = v1;
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToChangeSetDictionaryMap] = v2;
  *&v5[OBJC_IVAR____TtC8EventKit26EKRemoteUISerializedObject_objectIDToPersistentDictionaryMap] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A818BFEC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_12;
  }

  v6 = *MEMORY[0x1E6992570];
  if (sub_1A81ACCC4() == a1 && v7 == a2)
  {

LABEL_14:
    v14 = [objc_opt_self() virtualObjectIDWithEntityType_];
    if (v14)
    {
      v15 = v14;
      v16 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v15;
      v17[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = 0;
      v20.receiver = v17;
      v20.super_class = v16;
      v18 = v15;
      v19 = objc_msgSendSuper2(&v20, sel_init);
      *(a3 + 24) = v16;

      *a3 = v19;
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v9 = sub_1A81AD074();

  if (v9)
  {
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E6992568];
  if (sub_1A81ACCC4() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_1A81AD074();

    if ((v13 & 1) == 0)
    {
LABEL_12:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
  *a3 = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A818C1A4(void *a1, char a2, uint64_t *a3)
{
  v3 = [a1 updatedPropertiesWithOnlyPersistentObjects];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = v3;
  v5 = sub_1A81ACC94();

  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v154 = *MEMORY[0x1E6992570];
  v153 = *MEMORY[0x1E6992568];
  v156 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v155 = v5 + 64;
  v160 = v10;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v15 = v11;
LABEL_17:
          v165 = (v9 - 1) & v9;
          v18 = __clz(__rbit64(v9)) | (v15 << 6);
          v19 = (*(v156 + 48) + 16 * v18);
          v21 = *v19;
          v20 = v19[1];
          sub_1A8182480(*(v156 + 56) + 32 * v18, &v177);
          *&v179 = v21;
          *(&v179 + 1) = v20;
          sub_1A8183084(&v177, &v180);
        }

        else
        {
          if (v10 <= v11 + 1)
          {
            v16 = v11 + 1;
          }

          else
          {
            v16 = v10;
          }

          v17 = v16 - 1;
          while (1)
          {
            v15 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_130;
            }

            if (v15 >= v10)
            {
              break;
            }

            v9 = *(v6 + 8 * v15);
            ++v11;
            if (v9)
            {
              v11 = v15;
              goto LABEL_17;
            }
          }

          v165 = 0;
          v180 = 0u;
          v181 = 0u;
          v11 = v17;
          v179 = 0u;
        }

        v182 = v179;
        v183[0] = v180;
        v183[1] = v181;
        v22 = *(&v179 + 1);
        if (!*(&v179 + 1))
        {

          return v12;
        }

        v169 = v182;
        sub_1A8183084(v183, &v179);
        sub_1A8182480(&v179, &v177);
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        v168 = v22;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_30;
        }

        v23 = v174[0];
        v24 = [v174[0] objectID];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = [v23 isPendingInsert];
        v27 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
        v28 = objc_allocWithZone(v27);
        *&v28[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v25;
        v28[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v26;
        v170.receiver = v28;
        v170.super_class = v27;
        v166 = v25;
        v29 = objc_msgSendSuper2(&v170, sel_init);
        if (![swift_getObjCClassFromObject() meltedClass])
        {
          goto LABEL_141;
        }

        swift_getObjCClassMetadata();
        v30 = v23;
        v31 = sub_1A81ACCB4();
        v162 = [swift_getObjCClassFromMetadata() isWeakRelationObject:v30 forKey:v31];

        sub_1A818BFEC(v169, v168, v174);
        if (!*(&v175 + 1))
        {
          sub_1A8188C34(v174, &qword_1EB2E2830, &qword_1A81C4340);
          *(&v178 + 1) = v27;
          *&v177 = v29;
          sub_1A8183084(&v177, v174);
          v56 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v176 = v12;
          v58 = sub_1A8182568(v169, v168);
          v60 = v12[2];
          v61 = (v59 & 1) == 0;
          v48 = __OFADD__(v60, v61);
          v62 = v60 + v61;
          if (v48)
          {
            goto LABEL_137;
          }

          v63 = v59;
          if (v12[3] < v62)
          {
            sub_1A81922B8(v62, isUniquelyReferenced_nonNull_native);
            v58 = sub_1A8182568(v169, v168);
            if ((v63 & 1) != (v64 & 1))
            {
              goto LABEL_143;
            }

            goto LABEL_57;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_57:
            if (v63)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v144 = v58;
            sub_1A8193258();
            v58 = v144;
            if (v63)
            {
LABEL_58:
              v80 = v58;

              v12 = v176;
              v81 = (v176[7] + 32 * v80);
              __swift_destroy_boxed_opaque_existential_0(v81);
              sub_1A8183084(v174, v81);
              if (!v162)
              {
                goto LABEL_69;
              }

              goto LABEL_124;
            }
          }

          v145 = v176;
          v176[(v58 >> 6) + 8] |= 1 << v58;
          v146 = (v145[6] + 16 * v58);
          *v146 = v169;
          v146[1] = v168;
          sub_1A8183084(v174, (v145[7] + 32 * v58));
          v147 = v145[2];
          v48 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v48)
          {
            goto LABEL_139;
          }

LABEL_123:
          v12 = v145;
          v145[2] = v148;
          if (!v162)
          {
            goto LABEL_69;
          }

          goto LABEL_124;
        }

        sub_1A8183084(v174, &v177);
        sub_1A8182480(&v177, v174);
        sub_1A81831D0(0, &qword_1EB2E28B8, 0x1E695DFB0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1A8182480(&v177, v174);
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v176 = v12;
          v73 = sub_1A8182568(v169, v168);
          v75 = v12[2];
          v76 = (v74 & 1) == 0;
          v48 = __OFADD__(v75, v76);
          v77 = v75 + v76;
          if (v48)
          {
            goto LABEL_138;
          }

          v78 = v74;
          if (v12[3] < v77)
          {
            sub_1A81922B8(v77, v72);
            v73 = sub_1A8182568(v169, v168);
            if ((v78 & 1) != (v79 & 1))
            {
              goto LABEL_143;
            }

            goto LABEL_67;
          }

          if (v72)
          {
LABEL_67:
            if (v78)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v149 = v73;
            sub_1A8193258();
            v73 = v149;
            if (v78)
            {
LABEL_68:
              v83 = v73;

              v12 = v176;
              v84 = (v176[7] + 32 * v83);
              __swift_destroy_boxed_opaque_existential_0(v84);
              sub_1A8183084(v174, v84);
              __swift_destroy_boxed_opaque_existential_0(&v177);
              if (!v162)
              {
                goto LABEL_69;
              }

              goto LABEL_124;
            }
          }

          v145 = v176;
          v176[(v73 >> 6) + 8] |= 1 << v73;
          v150 = (v145[6] + 16 * v73);
          *v150 = v169;
          v150[1] = v168;
          sub_1A8183084(v174, (v145[7] + 32 * v73));
          __swift_destroy_boxed_opaque_existential_0(&v177);
          v151 = v145[2];
          v48 = __OFADD__(v151, 1);
          v148 = v151 + 1;
          if (v48)
          {
            goto LABEL_140;
          }

          goto LABEL_123;
        }

        v32 = v12;
        v33 = sub_1A8182568(v169, v168);
        v35 = v34;

        if (v35)
        {
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v176 = v12;
          if (!v36)
          {
            sub_1A8193258();
            v32 = v176;
          }

          v37 = *(v32[6] + 16 * v33 + 8);

          sub_1A8183084((v32[7] + 32 * v33), v174);
          v12 = v32;
          sub_1A8192AA0(v33, v32);
          __swift_destroy_boxed_opaque_existential_0(&v177);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v177);
          *v174 = 0u;
          v175 = 0u;
        }

        sub_1A8188C34(v174, &qword_1EB2E2830, &qword_1A81C4340);
        if (!v162)
        {
LABEL_69:
          v85 = sub_1A818C1A4(v30, a2 & 1, a3);
          v86 = *a3;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          *&v177 = *a3;
          sub_1A8182980(v85, v166, v87);

          *a3 = v177;
          __swift_destroy_boxed_opaque_existential_0(&v179);
          goto LABEL_125;
        }

LABEL_124:
        __swift_destroy_boxed_opaque_existential_0(&v179);

LABEL_125:
        v6 = v155;
        v9 = v165;
        v10 = v160;
      }

LABEL_30:
      sub_1A8182480(&v179, &v177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F0, &qword_1A81C43C0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1A8182480(&v179, &v177);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v22;
      v43 = v41;
      v174[0] = v12;
      v44 = sub_1A8182568(v169, v42);
      v46 = v12[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_133;
      }

      v50 = v45;
      if (v12[3] >= v49)
      {
        if ((v43 & 1) == 0)
        {
          v142 = v44;
          sub_1A8193258();
          v44 = v142;
        }

        v51 = v168;
        if ((v50 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_6:
        v13 = v44;

        v12 = v174[0];
        v14 = (*(v174[0] + 7) + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_1A8183084(&v177, v14);
        __swift_destroy_boxed_opaque_existential_0(&v179);
        v9 = v165;
      }

      else
      {
        sub_1A81922B8(v49, v43);
        v51 = v168;
        v44 = sub_1A8182568(v169, v168);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_143;
        }

        if (v50)
        {
          goto LABEL_6;
        }

LABEL_43:
        v12 = v174[0];
        *(v174[0] + (v44 >> 6) + 8) |= 1 << v44;
        v53 = (v12[6] + 16 * v44);
        *v53 = v169;
        v53[1] = v51;
        sub_1A8183084(&v177, (v12[7] + 32 * v44));
        __swift_destroy_boxed_opaque_existential_0(&v179);
        v54 = v12[2];
        v48 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v48)
        {
          goto LABEL_135;
        }

        v12[2] = v55;
        v9 = v165;
      }
    }

    v38 = v174[0];
    v176 = MEMORY[0x1E69E7CD0];
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_74;
    }

    v39 = v38;
    if (v169 == sub_1A81ACCC4() && v40 == v22)
    {

LABEL_50:
      v66 = [objc_opt_self() virtualObjectIDWithEntityType_];
      if (!v66)
      {
        goto LABEL_142;
      }

      v67 = v66;
      v68 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v69 = objc_allocWithZone(v68);
      *&v69[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v67;
      v69[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = 0;
      v171.receiver = v69;
      v171.super_class = v68;
      v70 = v67;
      v71 = objc_msgSendSuper2(&v171, sel_init);
      *(&v178 + 1) = v68;
      *&v177 = v71;

      v38 = v39;
      goto LABEL_72;
    }

    v65 = sub_1A81AD074();

    if (v65)
    {
      goto LABEL_50;
    }

    if (v169 == sub_1A81ACCC4() && v82 == v22)
    {
    }

    else
    {
      v88 = sub_1A81AD074();

      if ((v88 & 1) == 0)
      {
LABEL_74:
        v177 = 0u;
        v178 = 0u;
        sub_1A8188C34(&v177, &qword_1EB2E2830, &qword_1A81C4340);
        if ((v38 & 0xC000000000000001) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_75;
      }
    }

    *(&v178 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v177 = MEMORY[0x1E69E7CD0];
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v89 = v174[0];
    v176 = v174[0];
LABEL_107:
    *(&v178 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    *&v177 = v89;
    sub_1A8183084(&v177, v174);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v12;
    v129 = sub_1A8182568(v169, v168);
    v131 = v12[2];
    v132 = (v130 & 1) == 0;
    v48 = __OFADD__(v131, v132);
    v133 = v131 + v132;
    if (v48)
    {
      goto LABEL_134;
    }

    v134 = v130;
    if (v12[3] >= v133)
    {
      if ((v128 & 1) == 0)
      {
        v143 = v129;
        sub_1A8193258();
        v129 = v143;
      }

      v135 = v168;
      if (v134)
      {
        goto LABEL_111;
      }

LABEL_115:
      v12 = v173;
      v173[(v129 >> 6) + 8] |= 1 << v129;
      v139 = (v12[6] + 16 * v129);
      *v139 = v169;
      v139[1] = v135;
      sub_1A8183084(v174, (v12[7] + 32 * v129));
      __swift_destroy_boxed_opaque_existential_0(&v179);
      v140 = v12[2];
      v48 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v48)
      {
        goto LABEL_136;
      }

      v12[2] = v141;
      v9 = v165;
    }

    else
    {
      sub_1A81922B8(v133, v128);
      v135 = v168;
      v129 = sub_1A8182568(v169, v168);
      if ((v134 & 1) != (v136 & 1))
      {
        goto LABEL_143;
      }

      if ((v134 & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_111:
      v137 = v129;

      v12 = v173;
      v138 = (v173[7] + 32 * v137);
      __swift_destroy_boxed_opaque_existential_0(v138);
      sub_1A8183084(v174, v138);
      __swift_destroy_boxed_opaque_existential_0(&v179);
      v9 = v165;
    }
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_75:
    sub_1A81ACE84();
    sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
    sub_1A81ACDA4();
    v38 = v184;
    v90 = v185;
    v91 = v186;
    v92 = v187;
    v93 = v188;
    goto LABEL_81;
  }

LABEL_77:
  v92 = 0;
  v94 = -1 << *(v38 + 32);
  v90 = (v38 + 56);
  v91 = ~v94;
  v95 = -v94;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v93 = v96 & *(v38 + 56);
LABEL_81:
  v97 = (v91 + 64) >> 6;
  v163 = v90;
  v161 = v97;
  v158 = v38;
  v159 = v12;
  while (2)
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      v103 = sub_1A81ACEB4();
      if (!v103 || (v174[0] = v103, swift_dynamicCast(), v102 = v177, v100 = v92, v101 = v93, !v177))
      {
LABEL_106:
        sub_1A819529C();
        v89 = v176;
        v6 = v155;
        goto LABEL_107;
      }

LABEL_93:
      v167 = v101;
      v104 = [v102 objectID];
      if (!v104)
      {

        v92 = v100;
        v93 = v101;
LABEL_83:
        v90 = v163;
        v97 = v161;
        continue;
      }

      v105 = v104;
      v106 = [v102 isPendingInsert];
      v107 = type metadata accessor for EKRemoteUIPersistentObjectPointer();
      v108 = objc_allocWithZone(v107);
      *&v108[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v105;
      v108[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v106;
      v172.receiver = v108;
      v172.super_class = v107;
      v109 = v105;
      v110 = objc_msgSendSuper2(&v172, sel_init);
      sub_1A8193768(&v177, v110);

      v111 = sub_1A818C1A4(v102, a2 & 1, a3);
      v112 = *a3;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *&v177 = *a3;
      v114 = v177;
      v116 = sub_1A8182524(v109);
      v117 = *(v114 + 16);
      v118 = (v115 & 1) == 0;
      v119 = v117 + v118;
      if (__OFADD__(v117, v118))
      {
        goto LABEL_131;
      }

      v120 = v115;
      if (*(v114 + 24) < v119)
      {
        sub_1A8192048(v119, v113);
        v121 = sub_1A8182524(v109);
        if ((v120 & 1) != (v122 & 1))
        {
          goto LABEL_144;
        }

        v116 = v121;
        v123 = v177;
        if ((v120 & 1) == 0)
        {
          goto LABEL_103;
        }

LABEL_101:
        v124 = v123[7];
        v125 = *(v124 + 8 * v116);
        *(v124 + 8 * v116) = v111;

LABEL_105:
        *a3 = v123;
        v92 = v100;
        v93 = v167;
        v12 = v159;
        v10 = v160;
        v38 = v158;
        goto LABEL_83;
      }

      if (v113)
      {
        v123 = v177;
        if (v115)
        {
          goto LABEL_101;
        }
      }

      else
      {
        sub_1A81930F4();
        v123 = v177;
        if (v120)
        {
          goto LABEL_101;
        }
      }

LABEL_103:
      v123[(v116 >> 6) + 8] |= 1 << v116;
      *(v123[6] + 8 * v116) = v109;
      *(v123[7] + 8 * v116) = v111;

      v126 = v123[2];
      v48 = __OFADD__(v126, 1);
      v127 = v126 + 1;
      if (v48)
      {
        goto LABEL_132;
      }

      v123[2] = v127;
      goto LABEL_105;
    }

    break;
  }

  v98 = v92;
  v99 = v93;
  v100 = v92;
  if (v93)
  {
LABEL_89:
    v101 = (v99 - 1) & v99;
    v102 = *(*(v38 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v99)))));
    if (!v102)
    {
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v100 >= v97)
    {
      goto LABEL_106;
    }

    v99 = *&v90[8 * v100];
    ++v98;
    if (v99)
    {
      goto LABEL_89;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  sub_1A81AD0B4();
  __break(1u);
LABEL_144:
  sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
  result = sub_1A81AD0B4();
  __break(1u);
  return result;
}