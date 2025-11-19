uint64_t sub_2413BC170(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24140E9CC();

    return sub_24140E91C();
  }

  else
  {
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    sub_24140EDEC();
    swift_getWitnessTable();
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    return sub_24140E91C();
  }
}

uint64_t sub_2413BC2D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24140E9CC();
    sub_24140E91C();
  }

  else
  {
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    sub_24140EDEC();
    swift_getWitnessTable();
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2413BC4E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2413BC520()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2413BC5C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2413BC638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC674()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC6BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2413BC898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2413BC8F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2413BC958()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC990()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2413BCA34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_2413BD884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413BDD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413BDE50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2413BFFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CD1678;
    v7 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getPETEventPropertyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPETEventPropertyClass_softClass;
  v7 = getPETEventPropertyClass_softClass;
  if (!getPETEventPropertyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPETEventPropertyClass_block_invoke;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getPETEventPropertyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413C2720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETScalarEventTrackerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPETScalarEventTrackerClass_softClass;
  v7 = getPETScalarEventTrackerClass_softClass;
  if (!getPETScalarEventTrackerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPETScalarEventTrackerClass_block_invoke;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getPETScalarEventTrackerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413C2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void doAsync(void *a1)
{
  if (a1)
  {
    v2 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v2, a1);
  }
}

Class __getPETEventPropertyClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibrary();
  result = objc_getClass("PETEventProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPETEventPropertyClass_block_invoke_cold_1();
  }

  getPETEventPropertyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ProactiveEventTrackerLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ProactiveEventTrackerLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CD1750;
    v3 = 0;
    ProactiveEventTrackerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    ProactiveEventTrackerLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __ProactiveEventTrackerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProactiveEventTrackerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPETScalarEventTrackerClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibrary();
  result = objc_getClass("PETScalarEventTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPETScalarEventTrackerClass_block_invoke_cold_1();
  }

  getPETScalarEventTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413C51C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413C5474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413C6208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUIGMEnrollmentViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __VoiceTriggerUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD1800;
    v6 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("VTUIGMEnrollmentViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_1();
  }

  getVTUIGMEnrollmentViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2413C855C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUIEnrollTrainingViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __VoiceTriggerUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD1818;
    v6 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary_0)
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("VTUIEnrollTrainingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1();
  }

  getVTUIEnrollTrainingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2413C8D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CD1850;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "SBSCopyDisplayIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSCopyDisplayIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2413CA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413CA6B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getCKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKKnowledgeStoreClass_block_invoke_cold_1();
  }

  getCKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreKnowledgeLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!CoreKnowledgeLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __CoreKnowledgeLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CD1868;
    v3 = 0;
    CoreKnowledgeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreKnowledgeLibraryCore_frameworkLibrary)
  {
    CoreKnowledgeLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreKnowledgeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreKnowledgeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCKPermanentEventStoreClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKPermanentEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPermanentEventStoreClass_block_invoke_cold_1();
  }

  getCKPermanentEventStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKEventClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKEventClass_block_invoke_cold_1();
  }

  getCKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413CC4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413CCE24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D02E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCKKnowledgeStoreClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKKnowledgeStoreClass_block_invoke_cold_1_0();
  }

  getCKKnowledgeStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreKnowledgeLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!CoreKnowledgeLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __CoreKnowledgeLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CD1A30;
    v3 = 0;
    CoreKnowledgeLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CoreKnowledgeLibraryCore_frameworkLibrary_0)
  {
    CoreKnowledgeLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreKnowledgeLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreKnowledgeLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCKPermanentEventStoreClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKPermanentEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPermanentEventStoreClass_block_invoke_cold_1_0();
  }

  getCKPermanentEventStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKEventClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKEventClass_block_invoke_cold_1_0();
  }

  getCKEventClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413D167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D2694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D2CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D3414(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2413D4228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_2413D6C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413D6D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertySystemVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  v7 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  if (!getNRDevicePropertySystemVersionSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary();
    v5[3] = dlsym(v1, "NRDevicePropertySystemVersion");
    getNRDevicePropertySystemVersionSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertySystemVersion_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_2413D6E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D7220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D77A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D7C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, id);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  objc_destroyWeak(va);
  objc_destroyWeak(va1);
  objc_destroyWeak((v9 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D8898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D9454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413DB580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DCE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_2413DD118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getVTUIEnrollTrainingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVTUIEnrollTrainingViewControllerClass_softClass_0;
  v7 = getVTUIEnrollTrainingViewControllerClass_softClass_0;
  if (!getVTUIEnrollTrainingViewControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVTUIEnrollTrainingViewControllerClass_block_invoke_0;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413DD530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413DDBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DE594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2413DE720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DF590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUISiriDataSharingOptInPresenterClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUISiriDataSharingOptInPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUISiriDataSharingOptInPresenterClass_block_invoke_cold_1();
  }

  getVTUISiriDataSharingOptInPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VoiceTriggerUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __VoiceTriggerUILibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CD1E58;
    v3 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary_1)
  {
    VoiceTriggerUILibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD1E70;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    NanoRegistryLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNRDevicePropertySystemNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
  }

  getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SetupAssistantLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD1E88;
    v5 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBYFlowSkipIdentifierSiriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierSiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierSiriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVTUIVoiceSelectionViewControllerClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIVoiceSelectionViewControllerClass_block_invoke_cold_1();
  }

  getVTUIVoiceSelectionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVTUIEnrollTrainingViewControllerClass_block_invoke_0(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUIEnrollTrainingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1_0();
  }

  getVTUIEnrollTrainingViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2413E3EEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2413E4D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2413E513C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD1FC8;
    v5 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    SearchLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSPGetDisabledDomainSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledDomainSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledDomainSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantDevice.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier + 8);
  sub_24140E7AC();
  return v1;
}

id AssistantDevice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413E6CCC()
{
  v1 = *v0;
  sub_24140EF8C();
  MEMORY[0x245CE5E20](v1);
  return sub_24140EFAC();
}

uint64_t sub_2413E6D40()
{
  v1 = *v0;
  sub_24140EF8C();
  MEMORY[0x245CE5E20](v1);
  return sub_24140EFAC();
}

void *sub_2413E6D84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2413E6D94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_24140E7AC();
  }
}

void type metadata accessor for AFUseDeviceSpeakerForTTS()
{
  if (!qword_27E542708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E542708);
    }
  }
}

unint64_t sub_2413E6E34()
{
  result = qword_27E542710;
  if (!qword_27E542710)
  {
    type metadata accessor for AFUseDeviceSpeakerForTTS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542710);
  }

  return result;
}

uint64_t sub_2413E6ED0()
{
  sub_24140E6AC();
  v0 = MEMORY[0x245CE5520]();
  v1 = sub_24140E67C();

  return v1 & 1;
}

uint64_t sub_2413E7030(char a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  sub_24140E6AC();
  v5 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v6 = sub_24140ECDC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = a1;
  sub_2413E7730(0, 0, v4, &unk_241412940, v7);
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

void sub_2413E7198(_BYTE *a1@<X8>)
{
  sub_24140E6AC();
  v2 = MEMORY[0x245CE5520]();
  v3 = sub_24140E67C();

  *a1 = v3 & 1;
}

uint64_t sub_2413E71E8(char *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v10 - v3;
  v5 = *a1;
  sub_24140E6AC();
  v6 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v7 = sub_24140ECDC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  sub_2413E7730(0, 0, v4, &unk_2414129C0, v8);
}

uint64_t sub_2413E730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(MEMORY[0x277D0E338] + 4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2413E73A4;

  return MEMORY[0x2821667B0](a4);
}

uint64_t sub_2413E73A4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2413E74D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2413E74D8()
{
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2413B9000, v4, v5, "Error setting GMS opt-in status: %@", v8, 0xCu);
    sub_2413E8560(v9, &qword_27E542720, &unk_241412F30);
    MEMORY[0x245CE6B00](v9, -1, -1);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2413E767C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_2413E730C(a1, v4, v5, v6);
}

uint64_t sub_2413E7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2413E8158(a3, v26 - v10);
  v12 = sub_24140ECDC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2413E8560(v11, &qword_27E542718, &qword_241412930);
  }

  else
  {
    sub_24140ECCC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24140EC8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24140EC4C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2413E8560(a3, &qword_27E542718, &qword_241412930);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2413E8560(a3, &qword_27E542718, &qword_241412930);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void (*sub_2413E7A20(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  *a1 = v3;
  *(a1 + 8) = sub_24140E6AC();
  v4 = MEMORY[0x245CE5520]();
  v5 = sub_24140E67C();

  *(a1 + 16) = v5 & 1;
  return sub_2413E7AD8;
}

void sub_2413E7AD8(uint64_t a1, char a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v8 = sub_24140ECDC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = *a1;
  if (a2)
  {
    v10 = &unk_241412948;
  }

  else
  {
    v10 = &unk_241412950;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v6;
  sub_2413E7730(0, 0, v9, v10, v11);

  free(v9);
}

uint64_t sub_2413E7BF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413E730C(a1, v4, v5, v6);
}

uint64_t sub_2413E7CA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id GMOptInStatusProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMOptInStatusProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptInStatusProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMOptInStatusProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptInStatusProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413E7E98(char a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  sub_24140E6AC();
  v5 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v6 = sub_24140ECDC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = a1;
  sub_2413E7730(0, 0, v4, &unk_2414129C8, v7);
}

void (*sub_2413E7FB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2413E7A20(v2);
  return sub_2413E8020;
}

void sub_2413E8020(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2413E8158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413E81C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413E82C0;

  return v7(a1);
}

uint64_t sub_2413E82C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2413E83B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2413E85C0;

  return sub_2413E81C8(a1, v5);
}

uint64_t sub_2413E8470(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2413E7CA4;

  return sub_2413E81C8(a1, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2413E8560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2413E85C4(uint64_t a1@<X8>)
{
  v53 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542750, &qword_241412A28);
  v1 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = &v41 - v2;
  v52 = sub_24140EB9C();
  v48 = *(v52 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20]();
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542758, &unk_241412A30);
  v43 = *(v50 - 8);
  v5 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v42 = &v41 - v6;
  v46 = sub_24140E24C();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v11 = qword_28120FCD8;
  v12 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *(v11 + v12);
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_24140E19C();
  v44 = v16;
  v45 = v15;

  v17 = [objc_opt_self() currentDevice];
  [v17 sf_isiPad];

  v18 = *(v11 + v12);
  type metadata accessor for GMFooterUtility();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_24140E19C();
  v23 = v22;

  v24 = objc_opt_self();
  sub_2413E92F8();
  v25 = sub_24140EC0C();

  v26 = [v24 URLWithTopicID_];

  if (v26)
  {

    sub_24140E22C();

    v27 = sub_24140E20C();
    v29 = v28;
    (*(v7 + 8))(v10, v46);
    v54 = v21;
    v55 = v23;
    MEMORY[0x245CE5AF0](40, 0xE100000000000000);
    MEMORY[0x245CE5AF0](v27, v29);

    MEMORY[0x245CE5AF0](41, 0xE100000000000000);
    v30 = *(v11 + v12);
    if (qword_285316D60 == v30 || qword_285316D68 == v30)
    {
      v37 = v47;
      sub_24140EB8C();
      v38 = v48;
      v39 = v52;
      (*(v48 + 16))(v51, v37, v52);
      swift_storeEnumTagMultiPayload();
      v40 = sub_2413E92A0();
      v54 = v39;
      v55 = v40;
      swift_getOpaqueTypeConformance2();
      sub_24140E98C();
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      v31 = v47;
      sub_24140EB7C();
      v32 = sub_2413E92A0();
      v33 = v42;
      v34 = v52;
      sub_24140EA4C();
      (*(v48 + 8))(v31, v34);
      v35 = v43;
      v36 = v50;
      (*(v43 + 16))(v51, v33, v50);
      swift_storeEnumTagMultiPayload();
      v54 = v34;
      v55 = v32;
      swift_getOpaqueTypeConformance2();
      sub_24140E98C();
      (*(v35 + 8))(v33, v36);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2413E8E3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_24140EC0C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_2413E906C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2413E90D0()
{
  result = qword_27E542730;
  if (!qword_27E542730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542728, &qword_241412A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542730);
  }

  return result;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2413E91E0()
{
  result = qword_27E542740;
  if (!qword_27E542740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542738, &qword_241412A20);
    sub_24140EB9C();
    sub_2413E92A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542740);
  }

  return result;
}

unint64_t sub_2413E92A0()
{
  result = qword_27E542748;
  if (!qword_27E542748)
  {
    sub_24140EB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542748);
  }

  return result;
}

uint64_t sub_2413E92F8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    if (qword_28120FD68 != -1)
    {
      swift_once();
    }

    v2 = qword_28120FCD8;
    v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (qword_285316CD0 == v4 || unk_285316CD8 == v4)
    {
      return 0x3265346664617069;
    }

    else
    {
      return 0x3430356564617069;
    }
  }

  else
  {
    if (qword_28120FD68 != -1)
    {
      swift_once();
    }

    v7 = qword_28120FCD8;
    v8 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (qword_285316CA0 == v9 || unk_285316CA8 == v9)
    {
      return 0x3738383461687069;
    }

    else
    {
      return 0x3236383263687069;
    }
  }
}

id sub_2413E94A8()
{
  result = [objc_allocWithZone(type metadata accessor for TipsManager()) init];
  qword_27E542760 = result;
  return result;
}

id TipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TipsManager.shared.getter()
{
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E542760;

  return v1;
}

uint64_t sub_2413E960C()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2413E96A4(char a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2413E9758(void *a1)
{
  v3 = sub_24140E82C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24140E88C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24140E85C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20]();
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_27E542768 & 1) == 0)
  {
    v25 = v8;
    v26 = v7;
    v27 = v4;
    v28 = v3;
    v18 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController);
    v29 = v1;
    *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController) = a1;
    v19 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542780, &qword_241412A60);
    v20 = *(sub_24140E8AC() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_241412A40;
    sub_24140E84C();
    sub_24140E86C();
    (*(v13 + 8))(v17, v12);
    sub_24140E87C();
    sub_24140E89C();
    (*(v30 + 8))(v11, v25);
    v23 = v26;
    sub_24140E81C();
    sub_24140E83C();
    (*(v27 + 8))(v23, v28);
    sub_24140E90C();

    byte_27E542768 = 1;
    return sub_2413E9B38();
  }

  return result;
}

uint64_t sub_2413E9B38()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v16 - v2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  v0[v4] = 0;
  v5 = sub_24140ECDC();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  v9 = sub_2413E7730(0, 0, v3, &unk_241412AB0, v7);
  v10 = *&v8[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask];
  *&v8[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask] = v9;

  v6(v3, 1, 1, v5);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;
  v12 = v8;
  v13 = sub_2413E7730(0, 0, v3, &unk_241412AC0, v11);
  v14 = *&v12[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask];
  *&v12[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask] = v13;
}

uint64_t sub_2413E9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24140EE8C();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_24140EE9C();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_24140E8EC();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A8, &qword_241412AC8) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B0, &qword_241412AD0);
  v4[31] = v15;
  v16 = *(v15 - 8);
  v4[32] = v16;
  v17 = *(v16 + 64) + 15;
  v4[33] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B8, &qword_241412AD8);
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413E9FA0, 0, 0);
}

uint64_t sub_2413E9FA0()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 144);
  *(v0 + 296) = sub_2413EC1EC();
  sub_24140E73C();
  sub_24140ECEC();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  *(v0 + 304) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  *(v0 + 312) = v6;
  *(v0 + 320) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController;
  swift_beginAccess();
  *(v0 + 124) = *MEMORY[0x277CE1A58];
  v7 = MEMORY[0x277CE1A50];
  *(v0 + 376) = *MEMORY[0x277CE1A10];
  *(v0 + 380) = *v7;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  *(v0 + 328) = v9;
  *v9 = v0;
  v9[1] = sub_2413EA110;
  v10 = *(v0 + 288);
  v11 = *(v0 + 272);
  v12 = *(v0 + 240);

  return MEMORY[0x2822003E8](v12, 0, 0, v11);
}

uint64_t sub_2413EA110()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2413EA20C, 0, 0);
}

uint64_t sub_2413EA20C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  if ((*(v2 + 48))(*(v0 + 240), 1, v1) == 1)
  {
    v3 = *(v0 + 264);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 200);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 124);
    v12 = *(v0 + 296);
    v52 = *(v0 + 304);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 144);
    sub_24140E75C();
    v53 = *(v2 + 104);
    v53(v14, v11, v1);
    LOBYTE(v11) = sub_24140E8DC();
    v16 = *(v2 + 8);
    v16(v14, v1);
    v16(v13, v1);
    *(v15 + v52) = v11 & 1;
    if (v11)
    {
      v17 = *(v0 + 312);
      v18 = *(v0 + 296);
      v19 = *(v0 + 144);
      *(v0 + 40) = &type metadata for AppleIntelligenceTip;
      *(v0 + 48) = v18;
      swift_beginAccess();
      sub_2413EC17C(v0 + 16, v19 + v17);
      swift_endAccess();
    }

    v20 = *(v0 + 380);
    v21 = *(v0 + 376);
    v22 = *(v0 + 296);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 208);
    sub_24140E75C();
    v26 = sub_24140E80C();
    (*(*(v26 - 8) + 104))(v24, v21, v26);
    v53(v24, v20, v25);
    LOBYTE(v20) = sub_24140E8DC();
    v16(v24, v25);
    v16(v23, v25);
    if (v20)
    {
      v27 = *(v0 + 200);
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);
      v31 = *(v0 + 160);
      v30 = *(v0 + 168);
      v32 = *(v0 + 152);
      v33 = sub_24140EFBC();
      v35 = v34;
      sub_24140EF6C();
      *(v0 + 128) = v33;
      *(v0 + 136) = v35;
      *(v0 + 112) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 1;
      v36 = sub_2413EC134(&qword_27E5427C8, MEMORY[0x277D85928]);
      sub_24140EF4C();
      sub_2413EC134(&qword_27E5427D0, MEMORY[0x277D858F8]);
      sub_24140EEAC();
      v37 = *(v31 + 8);
      *(v0 + 336) = v37;
      *(v0 + 344) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37(v30, v32);
      v38 = *(MEMORY[0x277D85A58] + 4);
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v39[1] = sub_2413EA774;
      v40 = *(v0 + 200);
      v42 = *(v0 + 176);
      v41 = *(v0 + 184);

      return MEMORY[0x2822008C8](v42, v0 + 104, v41, v36);
    }

    else
    {
      v43 = *(*(v0 + 144) + *(v0 + 320));
      *(v0 + 360) = v43;
      if (v43)
      {
        sub_24140ECBC();
        v44 = v43;
        *(v0 + 368) = sub_24140ECAC();
        v46 = sub_24140EC8C();

        return MEMORY[0x2822009F8](sub_2413EAB80, v46, v45);
      }

      else
      {
        sub_2413E8560(*(v0 + 240), &qword_27E5427A8, &qword_241412AC8);
        v47 = *(MEMORY[0x277D85798] + 4);
        v48 = swift_task_alloc();
        *(v0 + 328) = v48;
        *v48 = v0;
        v48[1] = sub_2413EA110;
        v49 = *(v0 + 288);
        v50 = *(v0 + 272);
        v51 = *(v0 + 240);

        return MEMORY[0x2822003E8](v51, 0, 0, v50);
      }
    }
  }
}

uint64_t sub_2413EA774()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[42];
    v4 = v2[43];
    v6 = v2[22];
    v7 = v2[19];

    v5(v6, v7);
    v8 = sub_2413EAA24;
  }

  else
  {
    v9 = v2[43];
    v11 = v2[24];
    v10 = v2[25];
    v12 = v2[23];
    (v2[42])(v2[22], v2[19]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_2413EA8E0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2413EA8E0()
{
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EAB80, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_2413EA110;
    v7 = v0[36];
    v8 = v0[34];
    v9 = v0[30];

    return MEMORY[0x2822003E8](v9, 0, 0, v8);
  }
}

uint64_t sub_2413EAA24()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EAB80, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_2413EA110;
    v7 = v0[36];
    v8 = v0[34];
    v9 = v0[30];

    return MEMORY[0x2822003E8](v9, 0, 0, v8);
  }
}

uint64_t sub_2413EAB80()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  [v2 reloadSpecifiers];

  return MEMORY[0x2822009F8](sub_2413EABFC, 0, 0);
}

uint64_t sub_2413EABFC()
{
  sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_2413EA110;
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[30];

  return MEMORY[0x2822003E8](v5, 0, 0, v4);
}

uint64_t sub_2413EACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24140EE8C();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_24140EE9C();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_24140E8EC();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A8, &qword_241412AC8) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B0, &qword_241412AD0);
  v4[31] = v15;
  v16 = *(v15 - 8);
  v4[32] = v16;
  v17 = *(v16 + 64) + 15;
  v4[33] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B8, &qword_241412AD8);
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413EAF54, 0, 0);
}

uint64_t sub_2413EAF54()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 144);
  *(v0 + 296) = sub_2413EC0E0();
  sub_24140E73C();
  sub_24140ECEC();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  *(v0 + 304) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  *(v0 + 312) = v6;
  *(v0 + 320) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController;
  swift_beginAccess();
  *(v0 + 124) = *MEMORY[0x277CE1A58];
  v7 = MEMORY[0x277CE1A50];
  *(v0 + 376) = *MEMORY[0x277CE1A10];
  *(v0 + 380) = *v7;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  *(v0 + 328) = v9;
  *v9 = v0;
  v9[1] = sub_2413EB0C4;
  v10 = *(v0 + 288);
  v11 = *(v0 + 272);
  v12 = *(v0 + 240);

  return MEMORY[0x2822003E8](v12, 0, 0, v11);
}

uint64_t sub_2413EB0C4()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2413EB1C0, 0, 0);
}

uint64_t sub_2413EB1C0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  if ((*(v2 + 48))(*(v0 + 240), 1, v1) == 1)
  {
    v3 = *(v0 + 264);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 200);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 124);
    v12 = *(v0 + 296);
    v52 = *(v0 + 304);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 144);
    sub_24140E75C();
    v53 = *(v2 + 104);
    v53(v14, v11, v1);
    LOBYTE(v11) = sub_24140E8DC();
    v16 = *(v2 + 8);
    v16(v14, v1);
    v16(v13, v1);
    *(v15 + v52) = v11 & 1;
    if (v11)
    {
      v17 = *(v0 + 312);
      v18 = *(v0 + 296);
      v19 = *(v0 + 144);
      *(v0 + 40) = &type metadata for ImageCreationTip;
      *(v0 + 48) = v18;
      swift_beginAccess();
      sub_2413EC17C(v0 + 16, v19 + v17);
      swift_endAccess();
    }

    v20 = *(v0 + 380);
    v21 = *(v0 + 376);
    v22 = *(v0 + 296);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 208);
    sub_24140E75C();
    v26 = sub_24140E80C();
    (*(*(v26 - 8) + 104))(v24, v21, v26);
    v53(v24, v20, v25);
    LOBYTE(v20) = sub_24140E8DC();
    v16(v24, v25);
    v16(v23, v25);
    if (v20)
    {
      v27 = *(v0 + 200);
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);
      v31 = *(v0 + 160);
      v30 = *(v0 + 168);
      v32 = *(v0 + 152);
      v33 = sub_24140EFBC();
      v35 = v34;
      sub_24140EF6C();
      *(v0 + 128) = v33;
      *(v0 + 136) = v35;
      *(v0 + 112) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 1;
      v36 = sub_2413EC134(&qword_27E5427C8, MEMORY[0x277D85928]);
      sub_24140EF4C();
      sub_2413EC134(&qword_27E5427D0, MEMORY[0x277D858F8]);
      sub_24140EEAC();
      v37 = *(v31 + 8);
      *(v0 + 336) = v37;
      *(v0 + 344) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37(v30, v32);
      v38 = *(MEMORY[0x277D85A58] + 4);
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v39[1] = sub_2413EB728;
      v40 = *(v0 + 200);
      v42 = *(v0 + 176);
      v41 = *(v0 + 184);

      return MEMORY[0x2822008C8](v42, v0 + 104, v41, v36);
    }

    else
    {
      v43 = *(*(v0 + 144) + *(v0 + 320));
      *(v0 + 360) = v43;
      if (v43)
      {
        sub_24140ECBC();
        v44 = v43;
        *(v0 + 368) = sub_24140ECAC();
        v46 = sub_24140EC8C();

        return MEMORY[0x2822009F8](sub_2413EBB34, v46, v45);
      }

      else
      {
        sub_2413E8560(*(v0 + 240), &qword_27E5427A8, &qword_241412AC8);
        v47 = *(MEMORY[0x277D85798] + 4);
        v48 = swift_task_alloc();
        *(v0 + 328) = v48;
        *v48 = v0;
        v48[1] = sub_2413EB0C4;
        v49 = *(v0 + 288);
        v50 = *(v0 + 272);
        v51 = *(v0 + 240);

        return MEMORY[0x2822003E8](v51, 0, 0, v50);
      }
    }
  }
}

uint64_t sub_2413EB728()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[42];
    v4 = v2[43];
    v6 = v2[22];
    v7 = v2[19];

    v5(v6, v7);
    v8 = sub_2413EB9D8;
  }

  else
  {
    v9 = v2[43];
    v11 = v2[24];
    v10 = v2[25];
    v12 = v2[23];
    (v2[42])(v2[22], v2[19]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_2413EB894;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2413EB894()
{
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EBB34, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_2413EB0C4;
    v7 = v0[36];
    v8 = v0[34];
    v9 = v0[30];

    return MEMORY[0x2822003E8](v9, 0, 0, v8);
  }
}

uint64_t sub_2413EB9D8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EBB34, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_2413EB0C4;
    v7 = v0[36];
    v8 = v0[34];
    v9 = v0[30];

    return MEMORY[0x2822003E8](v9, 0, 0, v8);
  }
}

uint64_t sub_2413EBB34()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  [v2 reloadSpecifiers];

  return MEMORY[0x2822009F8](sub_2413EBBB0, 0, 0);
}

uint64_t sub_2413EBBB0()
{
  sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_2413EB0C4;
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[30];

  return MEMORY[0x2822003E8](v5, 0, 0, v4);
}

id TipsManager.init()()
{
  v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip] = 0;
  v1 = &v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413EBF38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_2413E9D08(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2413EC02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413EACBC(a1, v4, v5, v6);
}

unint64_t sub_2413EC0E0()
{
  result = qword_27E5427C0;
  if (!qword_27E5427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427C0);
  }

  return result;
}

uint64_t sub_2413EC134(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2413EC17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A0, &unk_241412A98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2413EC1EC()
{
  result = qword_27E5427D8;
  if (!qword_27E5427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427D8);
  }

  return result;
}

uint64_t sub_2413EC240()
{
  v0 = [objc_opt_self() assistantLanguageTitlesDictionary];
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = sub_24140EBBC();

  if (!v2)
  {
    goto LABEL_9;
  }

  sub_24140E7AC();
  sub_24140EE3C();
  if (!*(v2 + 16) || (v3 = sub_2413EC6F4(&v6), (v4 & 1) == 0))
  {

    sub_2413EC738(&v6);
LABEL_9:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  sub_2413EC78C(*(v2 + 56) + 32 * v3, &v7);
  sub_2413EC738(&v6);

  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_2413EC384(&v7);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 0;
}

uint64_t sub_2413EC384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427E0, &unk_241412AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2413EC3EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 sf_deviceType];

  sub_24140EC1C();
  v11 = sub_24140EC3C();
  v13 = v12;

  MEMORY[0x245CE5AF0](v11, v13);

  sub_2413ECA08();
  v22 = sub_2413ECA5C();
  v23 = MEMORY[0x277D835C8];
  sub_24140ED4C();

  if (!a4)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_24140E19C();
  v19 = v18;

  if (v17 == 95 && v19 == 0xE100000000000000 || (sub_24140EF1C() & 1) != 0)
  {

    v20 = [v15 bundleForClass_];
    sub_24140E19C();
  }

  if (*(a2 + 16))
  {
LABEL_7:
    sub_2413F3B3C(a2);
    sub_24140EC2C();
  }

LABEL_8:
  v21 = sub_24140EC0C();

  [a1 setProperty:v21 forKey:*MEMORY[0x277D3FF88]];
}

unint64_t sub_2413EC6F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24140EE1C();

  return sub_2413EC8E4(a1, v5);
}

uint64_t sub_2413EC78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2413EC7E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24140E4BC();
  sub_2413ECD14(&qword_28120FD00);
  v5 = sub_24140EBCC();

  return sub_2413ECAB0(a1, v5);
}

unint64_t sub_2413EC86C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24140EF8C();
  sub_24140EC5C();
  v6 = sub_24140EFAC();

  return sub_2413ECC5C(a1, a2, v6);
}

unint64_t sub_2413EC8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2413EC9AC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CE5CB0](v9, a1);
      sub_2413EC738(v9);
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

unint64_t sub_2413ECA08()
{
  result = qword_27E5427E8;
  if (!qword_27E5427E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427E8);
  }

  return result;
}

unint64_t sub_2413ECA5C()
{
  result = qword_27E5427F0;
  if (!qword_27E5427F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427F0);
  }

  return result;
}

unint64_t sub_2413ECAB0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24140E4BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2413ECD14(&qword_28120FCF8);
      v16 = sub_24140EBDC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2413ECC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24140EF1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2413ECD14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24140E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2413ECD58(unint64_t a1)
{
  if (a1 < 0xE && ((0x3FBFu >> a1) & 1) != 0)
  {
    return *(&off_278CD20C8 + a1);
  }

  result = sub_24140EF2C();
  __break(1u);
  return result;
}

unint64_t sub_2413ECDD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2413EE900(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2413ECE04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542840, &qword_241412C68);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241412AF0;
  v3 = v18 + v2;
  v4 = *(v0 + 48);
  v5 = *MEMORY[0x277D0E110];
  v6 = sub_24140E4BC();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 1;
  v8 = *(v0 + 48);
  v7(v3 + v1, *MEMORY[0x277D0E1B8], v6);
  *(v3 + v1 + v8) = 4;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, *MEMORY[0x277D0E1D0], v6);
  *(v3 + 2 * v1 + v9) = 4;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, *MEMORY[0x277D0E130], v6);
  *(v3 + 3 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, *MEMORY[0x277D0E120], v6);
  *(v3 + 4 * v1 + v11) = 2;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, *MEMORY[0x277D0E1A0], v6);
  *(v3 + 5 * v1 + v12) = 2;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, *MEMORY[0x277D0E188], v6);
  *(v3 + 6 * v1 + v13) = 8;
  v14 = v3 + 7 * v1;
  v15 = *(v0 + 48);
  v7(v14, *MEMORY[0x277D0E210], v6);
  *(v14 + v15) = 16;
  v16 = sub_2413EE628(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27E5427F8 = v16;
  return result;
}

id GMAnalyticsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAnalyticsProvider.init()()
{
  v0 = sub_24140E57C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24140E40C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24140E52C();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24140E5DC();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24140E50C();
  v30 = &off_285317470;
  __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_24140E3DC();
  sub_24140E3EC();
  (*(v4 + 8))(v7, v22);
  (*(v24 + 104))(v3, *MEMORY[0x277D0E2B8], v25);
  sub_24140E51C();
  sub_24140E5CC();
  (*(v8 + 8))(v11, v23);
  sub_24140E53C();
  (*(v12 + 8))(v15, v21);
  v16 = v26;
  sub_2413EE918(&v28, &v26[OBJC_IVAR___GMAnalyticsProvider_gmAvailabilityProvider]);
  v17 = &v16[OBJC_IVAR___GMAnalyticsProvider_sendFunction];
  *v17 = sub_2413ED460;
  v17[1] = 0;
  v18 = type metadata accessor for GMAnalyticsProvider();
  v27.receiver = v16;
  v27.super_class = v18;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_2413ED460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24140EC0C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2413ED520;
  v10[3] = &block_descriptor;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_2413ED520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2413EEAA0(0, &qword_27E542830, 0x277D82BB8);
    v5 = sub_24140EBAC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_2413ED630(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2413ED660@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2413ED68C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2413ED764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2413EECE0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2413ED7A4(uint64_t a1)
{
  v4 = *&v1[OBJC_IVAR___GMAnalyticsProvider_sendFunction];
  v3 = *&v1[OBJC_IVAR___GMAnalyticsProvider_sendFunction + 8];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v1;
  v6 = v1;
  LOBYTE(a1) = v4(0xD00000000000002CLL, 0x80000002414196F0, sub_2413EE954, v5);

  return a1 & 1;
}

uint64_t sub_2413ED850(unint64_t a1, uint64_t a2)
{
  v90 = a2;
  v91 = sub_24140E4BC();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E50C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24140E4DC();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542818, &qword_241412C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241412B00;
  *(inited + 32) = 7627617;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v80 = sub_2413EE7FC(inited);
  swift_setDeallocating();
  sub_2413E8560(inited + 32, &qword_27E542820, &unk_241412C50);
  v16 = sub_2413ECD58(a1);
  v87 = *(v16 + 16);
  v88 = v16;
  if (!v87)
  {
LABEL_51:

    return v80;
  }

  v86 = (v90 + OBJC_IVAR___GMAnalyticsProvider_gmAvailabilityProvider);
  v84 = (v8 + 88);
  v85 = (v8 + 16);
  v83 = *MEMORY[0x277D0DFB0];
  v77 = (v8 + 8);
  v76 = (v8 + 96);
  v17 = 0;
  v75 = (v12 + 32);
  v74 = (v12 + 8);
  v90 = v3 + 16;
  v18 = (v3 + 8);
  v82 = v7;
  v81 = v11;
  while (v17 < *(v88 + 16))
  {
    v19 = __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    (*v85)(v11, v19, v7);
    v20 = (*v84)(v11, v7);
    if (v20 == v83)
    {
      (*v76)(v11, v7);
      v21 = v78;
      v22 = v79;
      (*v75)(v78, v11, v79);
      v23 = sub_24140E4CC();
      (*v74)(v21, v22);
    }

    else
    {
      (*v77)(v11, v7);
      v23 = MEMORY[0x277D84FA0];
    }

    v89 = v17 + 1;
    v24 = 1 << *(v23 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v23 + 56);
    v27 = (v24 + 63) >> 6;
    sub_24140E7AC();
    v28 = 0;
    for (i = MEMORY[0x277D84F90]; v26; *&i[8 * v37 + 32] = v73)
    {
      while (1)
      {
LABEL_19:
        (*(v3 + 16))(v6, *(v23 + 48) + *(v3 + 72) * (__clz(__rbit64(v26)) | (v28 << 6)), v91);
        if (qword_27E5426A8 != -1)
        {
          swift_once();
        }

        v26 &= v26 - 1;
        v31 = off_27E5427F8;
        if (*(off_27E5427F8 + 2))
        {
          v32 = sub_2413EC7E8(v6);
          if (v33)
          {
            break;
          }
        }

        (*v18)(v6, v91);
        if (!v26)
        {
          goto LABEL_15;
        }
      }

      v34 = *(v31[7] + 8 * v32);
      (*v18)(v6, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        i = sub_2413F51D4(0, *(i + 2) + 1, 1, i);
      }

      v37 = *(i + 2);
      v36 = *(i + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v72 = v37 + 1;
        v39 = sub_2413F51D4((v36 > 1), v37 + 1, 1, i);
        v38 = v72;
        i = v39;
      }

      *(i + 2) = v38;
    }

    while (1)
    {
LABEL_15:
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v23 + 56 + 8 * v30);
      ++v28;
      if (v26)
      {
        v28 = v30;
        goto LABEL_19;
      }
    }

    v40 = *(i + 2);
    if (!v40)
    {
      v42 = 0;
      v7 = v82;
      v11 = v81;
      goto LABEL_38;
    }

    v7 = v82;
    v11 = v81;
    if (v40 <= 3)
    {
      v41 = 0;
      v42 = 0;
LABEL_36:
      v48 = v40 - v41;
      v49 = &i[8 * v41 + 32];
      do
      {
        v50 = *v49;
        v49 += 8;
        *&v42 |= v50;
        --v48;
      }

      while (v48);
      goto LABEL_38;
    }

    v41 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    v43 = (i + 48);
    v44 = 0uLL;
    v45 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    v46 = 0uLL;
    do
    {
      v44 = vorrq_s8(v43[-1], v44);
      v46 = vorrq_s8(*v43, v46);
      v43 += 2;
      v45 -= 4;
    }

    while (v45);
    v47 = vorrq_s8(v46, v44);
    v42 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
    if (v40 != v41)
    {
      goto LABEL_36;
    }

LABEL_38:

    v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v52 = sub_2413EEAA0(0, &qword_27E542828, 0x277CCABB0);
    v94 = v92;
    v93 = v51;
    v95 = v52;
    if (v52)
    {
      sub_2413EEAA0(0, &qword_27E542830, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v53 = v92;
        v54 = v80;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v54;
        v56 = sub_2413EC86C(7631717, 0xE300000000000000);
        v58 = *(v54 + 16);
        v59 = (v57 & 1) == 0;
        v60 = __OFADD__(v58, v59);
        v61 = v58 + v59;
        if (v60)
        {
          goto LABEL_54;
        }

        v62 = v57;
        if (*(v54 + 24) >= v61)
        {
          if ((v55 & 1) == 0)
          {
            v70 = v56;
            sub_2413EE4BC();
            v56 = v70;
          }
        }

        else
        {
          sub_2413EE218(v61, v55);
          v56 = sub_2413EC86C(7631717, 0xE300000000000000);
          if ((v62 & 1) != (v63 & 1))
          {
            goto LABEL_56;
          }
        }

        v64 = v93;
        v80 = v93;
        if (v62)
        {
          v65 = v93[7];
          v66 = *(v65 + 8 * v56);
          *(v65 + 8 * v56) = v53;

          v53 = v66;
        }

        else
        {
          v93[(v56 >> 6) + 8] |= 1 << v56;
          v67 = (v64[6] + 16 * v56);
          *v67 = 7631717;
          v67[1] = 0xE300000000000000;
          *(v64[7] + 8 * v56) = v53;
          v68 = v64[2];
          v60 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v60)
          {
            goto LABEL_55;
          }

          v64[2] = v69;
        }
      }
    }

    else
    {
      sub_2413E8560(&v93, &qword_27E5427E0, &unk_241412AE0);
    }

    v17 = v89;
    if (v89 == v87)
    {
      goto LABEL_51;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_24140EF3C();
  __break(1u);
  return result;
}

id GMAnalyticsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAnalyticsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413EE218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
  v39 = a2;
  result = sub_24140EECC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];
        sub_24140E7AC();
        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24140EF8C();
      sub_24140EC5C();
      result = sub_24140EFAC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_2413EE4BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
  v2 = *v0;
  v3 = sub_24140EEBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_24140E7AC();
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2413EE628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542850, &qword_241412C78);
    v8 = sub_24140EEDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2413EEAE8(v10, v6);
      result = sub_2413EC7E8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24140E4BC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2413EE7FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
    v3 = sub_24140EEDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_24140E7AC();
      v8 = v7;
      result = sub_2413EC86C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2413EE900(unint64_t result)
{
  if (result > 0xD || result == 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2413EE918(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2413EE960()
{
  result = qword_27E542810;
  if (!qword_27E542810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542810);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2413EEAA0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2413EEAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2413EEB84()
{
  result = qword_27E542858;
  if (!qword_27E542858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542858);
  }

  return result;
}

unint64_t sub_2413EEBDC()
{
  result = qword_27E542860;
  if (!qword_27E542860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542860);
  }

  return result;
}

unint64_t sub_2413EEC34()
{
  result = qword_27E542868;
  if (!qword_27E542868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542868);
  }

  return result;
}

unint64_t sub_2413EEC8C()
{
  result = qword_27E542870;
  if (!qword_27E542870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542870);
  }

  return result;
}

uint64_t sub_2413EECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2413EED40@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542898, &qword_241412F08);
  a1[4] = sub_2413EF484(&qword_27E5428A0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2413EF484(&qword_27E5428A8);
  return sub_24140E1AC();
}

uint64_t sub_2413EEE30()
{
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return MEMORY[0x2821336E0](0xD000000000000014, 0x80000002414197A0, v1);
}

uint64_t sub_2413EEEB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = sub_24140E8BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27E543AE8);
  (*(v1 + 16))(v4, v10, v0);
  sub_24140E8CC();
  sub_24140E79C();
  (*(v6 + 8))(v9, v5);
  v11 = sub_24140E7AC();

  return v11;
}

uint64_t sub_2413EF0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542880, &qword_241412EF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - v3;
  v5 = sub_24140E7EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542888, &qword_241412EF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_24140E7FC();
  v15 = MEMORY[0x277CE1A00];
  MEMORY[0x245CE5640](v9, v5, MEMORY[0x277CE1A00]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x245CE5660](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_24140E7CC();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

unint64_t sub_2413EF374()
{
  result = qword_27E542878;
  if (!qword_27E542878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542878);
  }

  return result;
}

uint64_t sub_2413EF3C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  __swift_allocate_value_buffer(v0, qword_27E543AE8);
  __swift_project_value_buffer(v0, qword_27E543AE8);
  sub_2413EF538();
  return sub_24140E8FC();
}

uint64_t sub_2413EF484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542898, &qword_241412F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_2413EF538()
{
  v0 = sub_24140E57C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  (MEMORY[0x28223BE20])();
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24140E40C();
  v23 = *(v26 - 8);
  v3 = *(v23 + 64);
  (MEMORY[0x28223BE20])();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24140E52C();
  v25 = *(v27 - 8);
  v6 = *(v25 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24140E5DC();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  (MEMORY[0x28223BE20])();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24140E50C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - v19;
  sub_24140E3FC();
  sub_24140E3EC();
  (*(v23 + 8))(v5, v26);
  (*(v29 + 104))(v28, *MEMORY[0x277D0E2B8], v30);
  sub_24140E51C();
  sub_24140E5CC();
  (*(v25 + 8))(v8, v27);
  sub_24140E53C();
  (*(v9 + 8))(v12, v24);
  (*(v14 + 104))(v18, *MEMORY[0x277D0E278], v13);
  LOBYTE(v5) = sub_24140E4FC();
  v21 = *(v14 + 8);
  v21(v18, v13);
  v21(v20, v13);
  return v5 & 1;
}

uint64_t sub_2413EF960(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24140E72C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_24140E7AC();
  return sub_24140E71C();
}

uint64_t sub_2413EF9E8()
{
  v0 = sub_24140E72C();
  __swift_allocate_value_buffer(v0, qword_27E543B18);
  __swift_project_value_buffer(v0, qword_27E543B18);
  return sub_24140E71C();
}

uint64_t sub_2413EFA6C()
{
  v0 = sub_24140E72C();
  __swift_allocate_value_buffer(v0, qword_27E543B30);
  v1 = __swift_project_value_buffer(v0, qword_27E543B30);
  if (qword_27E5426C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E543B18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2413EFB34()
{
  v1[7] = v0;
  v2 = sub_24140E33C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_24140E36C();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413EFC80, 0, 0);
}

uint64_t sub_2413EFC80()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  v0[18] = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  v0[19] = *(v1 + v2);
  v3 = *(MEMORY[0x277D09410] + 4);

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2413EFD40;
  v5 = v0[17];

  return MEMORY[0x28215FB40](v5, 1);
}

uint64_t sub_2413EFD40()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_2413F0160;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_2413EFE5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2413EFE5C()
{
  v41 = v0;
  if (qword_27E5426C8 != -1)
  {
    swift_once();
  }

  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[5].super_class;
  v4 = v0[6].receiver;
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_27E543B30);
  v6 = v4[2];
  v6(receiver, super_class, v3);
  v7 = sub_24140E70C();
  v8 = sub_24140ED8C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8].receiver;
  v11 = v0[5].super_class;
  v12 = v0[6].receiver;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v13 = 136315138;
    sub_2413F16CC();
    v37 = sub_24140EEFC();
    v39 = v6;
    v15 = v14;
    v16 = v11;
    v17 = v12[1];
    v17(v10, v16);
    v18 = sub_2413F10BC(v37, v15, &v40);
    v6 = v39;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2413B9000, v7, v8, "Successfully got active location sharing device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x245CE6B00](v38, -1, -1);
    MEMORY[0x245CE6B00](v13, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = v12[1];
    v17(v10, v19);
  }

  v20 = v0[8].super_class;
  v21 = v0[7].super_class;
  v22 = v0[5].super_class;
  v6(v21, v20, v22);
  v23 = type metadata accessor for AssistantDevice();
  v24 = objc_allocWithZone(v23);
  v25 = sub_24140E35C();
  v26 = &v24[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier];
  *v26 = v25;
  v26[1] = v27;
  v24[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_isThisDevice] = sub_24140E34C() & 1;
  v0[2].receiver = v24;
  v0[2].super_class = v23;
  v28 = objc_msgSendSuper2(v0 + 2, sel_init);
  v17(v21, v22);
  v17(v20, v22);
  v30 = v0[8].receiver;
  v29 = v0[8].super_class;
  v32 = v0[7].receiver;
  v31 = v0[7].super_class;
  v33 = v0[6].super_class;
  v34 = v0[5].receiver;

  v35 = v0->super_class;

  return v35(v28);
}

uint64_t sub_2413F0160()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  *(v0 + 48) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64)) == *MEMORY[0x277D090B0])
    {

      if (qword_27E5426C8 != -1)
      {
        swift_once();
      }

      v6 = sub_24140E72C();
      *(v0 + 176) = __swift_project_value_buffer(v6, qword_27E543B30);
      v7 = sub_24140E70C();
      v8 = sub_24140ED8C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2413B9000, v7, v8, "Error getting cached location sharing device, trying not cached.", v9, 2u);
        MEMORY[0x245CE6B00](v9, -1, -1);
      }

      v10 = *(v0 + 144);
      v11 = *(v0 + 56);

      *(v0 + 184) = *(v11 + v10);
      v12 = *(MEMORY[0x277D09410] + 4);

      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_2413F0520;
      v14 = *(v0 + 112);

      return MEMORY[0x28215FB40](v14, 0);
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  if (qword_27E5426C8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 168);
  v16 = sub_24140E72C();
  __swift_project_value_buffer(v16, qword_27E543B30);
  v17 = v15;
  v18 = sub_24140E70C();
  v19 = sub_24140ED7C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 168);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    v23 = sub_24140E1BC();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_2413B9000, v18, v19, "Error getting active location sharing device: %{public}@", v21, 0xCu);
    sub_2413F1664(v22);
    MEMORY[0x245CE6B00](v22, -1, -1);
    MEMORY[0x245CE6B00](v21, -1, -1);
  }

  v24 = *(v0 + 168);

  swift_willThrow();
  v25 = *(v0 + 168);
  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2413F0520()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_2413F0908;
  }

  else
  {
    v6 = sub_2413F0654;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2413F0654()
{
  v38 = v0;
  receiver = v0[11].receiver;
  v2 = *(v0[6].receiver + 2);
  v2(v0[6].super_class, v0[7].receiver, v0[5].super_class);
  v3 = sub_24140E70C();
  v4 = sub_24140ED8C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6].receiver;
  super_class = v0[6].super_class;
  v8 = v0[5].super_class;
  if (v5)
  {
    v36 = v2;
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136315138;
    sub_2413F16CC();
    v34 = sub_24140EEFC();
    v11 = v10;
    v12 = v8;
    v13 = v7[1];
    v13(super_class, v12);
    v14 = sub_2413F10BC(v34, v11, &v37);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2413B9000, v3, v4, "Successfully got non-cached active location sharing device: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CE6B00](v35, -1, -1);
    v15 = v9;
    v2 = v36;
    MEMORY[0x245CE6B00](v15, -1, -1);
  }

  else
  {

    v16 = v8;
    v13 = v7[1];
    v13(super_class, v16);
  }

  v17 = v0[7].receiver;
  v18 = v0[7].super_class;
  v19 = v0[5].super_class;
  v2(v18, v17, v19);
  v20 = type metadata accessor for AssistantDevice();
  v21 = objc_allocWithZone(v20);
  v22 = sub_24140E35C();
  v23 = &v21[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier];
  *v23 = v22;
  v23[1] = v24;
  v21[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_isThisDevice] = sub_24140E34C() & 1;
  v0[1].receiver = v21;
  v0[1].super_class = v20;
  v25 = objc_msgSendSuper2(v0 + 1, sel_init);
  v13(v18, v19);
  v13(v17, v19);

  v27 = v0[8].receiver;
  v26 = v0[8].super_class;
  v29 = v0[7].receiver;
  v28 = v0[7].super_class;
  v30 = v0[6].super_class;
  v31 = v0[5].receiver;

  v32 = v0->super_class;

  return v32(v25);
}

uint64_t sub_2413F0908()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2413F0B2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2413F0BD4;

  return sub_2413EFB34();
}

uint64_t sub_2413F0BD4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_24140E1BC();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_24140E30C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E31C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  (*(v3 + 104))(v6, *MEMORY[0x277D09060], v2);
  sub_24140E32C();
  v10 = sub_24140E38C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = sub_24140E39C();
  Session = type metadata accessor for FindMyLocateSession();
  v15.receiver = v1;
  v15.super_class = Session;
  return objc_msgSendSuper2(&v15, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F10BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_24140E7AC();
  v6 = sub_2413F1188(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2413EC78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2413F1188(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2413F1294(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24140EE7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2413F1294(uint64_t a1, unint64_t a2)
{
  v4 = sub_2413F12E0(a1, a2);
  sub_2413F1410(&unk_285316F78);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2413F12E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2413F14FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24140EE7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24140EC7C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2413F14FC(v10, 0);
        result = sub_24140EE5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2413F1410(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2413F1570(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2413F14FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428D8, &qword_241412F98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2413F1570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428D8, &qword_241412F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2413F1664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542720, &unk_241412F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2413F16CC()
{
  result = qword_27E5428D0;
  if (!qword_27E5428D0)
  {
    sub_24140E36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5428D0);
  }

  return result;
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F1880;

  return v6();
}

uint64_t sub_2413F1880(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2413F197C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E7CA4;

  return sub_2413F0B2C(v2, v3);
}

uint64_t sub_2413F1A28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2413E85C0;

  return sub_241405AAC(v2, v3, v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2413F1B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2413E85C0;

  return sub_241405B94(a1, v4, v5, v7);
}

void sub_2413F1BF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  if (*(v0 + 16))
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v5 = sub_24140E72C();
    __swift_project_value_buffer(v5, qword_28120FD70);
    v24 = sub_24140E70C();
    v6 = sub_24140ED5C();
    if (os_log_type_enabled(v24, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v25);
      _os_log_impl(&dword_2413B9000, v24, v6, "%s #GMS Already downloading", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245CE6B00](v8, -1, -1);
      MEMORY[0x245CE6B00](v7, -1, -1);
    }

    else
    {
      v23 = v24;
    }
  }

  else
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v9 = sub_24140E72C();
    __swift_project_value_buffer(v9, qword_28120FD70);
    v10 = sub_24140E70C();
    v11 = sub_24140ED5C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v25);
      _os_log_impl(&dword_2413B9000, v10, v11, "%s #GMS Starting download", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CE6B00](v13, -1, -1);
      MEMORY[0x245CE6B00](v12, -1, -1);
    }

    v14 = sub_24140ECDC();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v0;

    v16 = sub_2413F29D8(0, 0, v4, &unk_241412FD8, v15);
    v17 = *(v0 + 16);
    *(v0 + 16) = v16;

    v18 = sub_24140E70C();
    v19 = sub_24140ED5C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2413B9000, v18, v19, "#GMS Availability: Forcing download of NL Router", v20, 2u);
      MEMORY[0x245CE6B00](v20, -1, -1);
    }

    v21 = [objc_opt_self() sharedManager];
    v22 = sub_24140EC0C();
    [v21 updateAssetsForSubscriber:v22 subscriptionName:0 policies:0 queue:0 progress:0 completion:0];
  }
}

uint64_t sub_2413F2048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428E0, &qword_241412FE0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428E8, &qword_241412FE8);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413F217C, 0, 0);
}

uint64_t sub_2413F217C()
{
  v1 = v0[14];
  v2 = sub_24140E3CC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[15] = sub_24140E3BC();
  sub_24140E3AC();
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  sub_24140ECEC();
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2413F2438;
  v10 = v0[11];
  v11 = v0[9];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v11);
}

uint64_t sub_2413F2438()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2413F2534, 0, 0);
}

uint64_t sub_2413F2534()
{
  v39 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 48))
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_9:
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v11 = sub_24140E72C();
    __swift_project_value_buffer(v11, qword_28120FD70);
    v12 = sub_24140E70C();
    v13 = sub_24140ED5C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2413B9000, v12, v13, "#GMS Availability: Models Downloaded", v19, 2u);
      MEMORY[0x245CE6B00](v19, -1, -1);
    }

    (*(v18 + 8))(v15, v17);
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v22 + 16);
    *(v22 + 16) = 0;

    v24 = *(v0 + 8);

    return v24();
  }

  if (sub_24140ED1C())
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v2 = sub_24140E72C();
    __swift_project_value_buffer(v2, qword_28120FD70);
    v3 = sub_24140E70C();
    v4 = sub_24140ED5C();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v38);
      _os_log_impl(&dword_2413B9000, v3, v4, "%s #GMS Download task was cancelled. Exiting", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CE6B00](v10, -1, -1);
      MEMORY[0x245CE6B00](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_9;
  }

  sub_2413F2D84();
  v26 = sub_24140EDCC();
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v27 = sub_24140E72C();
  __swift_project_value_buffer(v27, qword_28120FD70);
  v28 = v26;
  v29 = sub_24140E70C();
  v30 = sub_24140ED5C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_2413B9000, v29, v30, "#GMS download percentage: %@", v31, 0xCu);
    sub_2413E8560(v32, &qword_27E542720, &unk_241412F30);
    MEMORY[0x245CE6B00](v32, -1, -1);
    MEMORY[0x245CE6B00](v31, -1, -1);
    v28 = v29;
    v29 = v33;
  }

  v34 = *(MEMORY[0x277D85798] + 4);
  v35 = swift_task_alloc();
  *(v0 + 128) = v35;
  *v35 = v0;
  v35[1] = sub_2413F2438;
  v36 = *(v0 + 88);
  v37 = *(v0 + 72);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v37);
}

uint64_t sub_2413F29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2413E8158(a3, v24 - v10);
  v12 = sub_24140ECDC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2413E8560(v11, &qword_27E542718, &qword_241412930);
  }

  else
  {
    sub_24140ECCC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24140EC8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24140EC4C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2413E8560(a3, &qword_27E542718, &qword_241412930);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2413E8560(a3, &qword_27E542718, &qword_241412930);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2413F2C74()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2413F2CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413F2048(a1, v4, v5, v6);
}

unint64_t sub_2413F2D84()
{
  result = qword_27E542828;
  if (!qword_27E542828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E542828);
  }

  return result;
}

id ExternalAISettingsManager.__allocating_init(parentController:settings:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  objc_allocWithZone(sub_24140E6FC());
  v7 = a1;
  v8 = a2;
  *&v6[OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager] = sub_24140E6EC();
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ExternalAISettingsManager.init(parentController:settings:)(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(sub_24140E6FC());
  v6 = a1;
  v7 = a2;
  *&v3[OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager] = sub_24140E6EC();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ExternalAISettingsManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t sub_2413F2FF8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager);
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = v2;
  v6 = a1;
  v7 = sub_24140E6DC();

  return v7 & 1;
}

id ExternalAISettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExternalAISettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternalAISettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F3218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542910, &qword_241413058);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-v5];
  v7 = *(a1 + OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager);
  v8 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  swift_beginAccess();
  sub_2413F3ACC(v7 + v8, v12);
  sub_24140E78C();
  v9 = [objc_opt_self() clearColor];
  v12[0] = sub_24140EADC();
  sub_2413F3A84(&qword_27E542918, &qword_27E542910, &qword_241413058);
  sub_24140EA2C();

  return (*(v3 + 8))(v6, v2);
}

id sub_2413F344C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v11 = qword_27E542760;
  *&v5[v10] = qword_27E542760;
  v12 = v11;
  if (a3)
  {
    v13 = sub_24140EC0C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_specifier_, a1, v13, a4);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_2413F37C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542900, &qword_241413048);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  [v1 setSelectionStyle_];
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542908, &qword_241413050);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542910, &qword_241413058);
  v8 = sub_2413F3A84(&qword_27E542918, &qword_27E542910, &qword_241413058);
  v14[0] = v7;
  v14[1] = MEMORY[0x277CE0F78];
  v14[2] = v8;
  v15 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_24140E9BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542920, &unk_241413060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241413020;
  LOBYTE(v7) = sub_24140E9DC();
  *(inited + 32) = v7;
  v10 = sub_24140E9FC();
  *(inited + 33) = v10;
  sub_24140E9EC();
  sub_24140E9EC();
  if (sub_24140E9EC() != v7)
  {
    sub_24140E9EC();
  }

  sub_24140E9EC();
  if (sub_24140E9EC() != v10)
  {
    sub_24140E9EC();
  }

  v15 = v2;
  v16 = sub_2413F3A84(&qword_27E542928, &qword_27E542900, &qword_241413048);
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_24140E9AC();
  (*(v3 + 8))(v6, v2);
  return MEMORY[0x245CE5C20](v14);
}

uint64_t sub_2413F3A84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2413F3ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A0, &unk_241412A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413F3B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2413F53E4(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      sub_24140E7AC();
      if (v8 >= v9 >> 1)
      {
        sub_2413F53E4((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_2413F690C();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_2413EE918(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id GMFooterUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMFooterUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMFooterUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2413F3D04()
{
  v0 = sub_2413F5F9C(&unk_285316FA0);
  swift_arrayDestroy();
  return v0;
}

void sub_2413F3DDC(void *a1, void *a2)
{
  if (qword_28120FD68 != -1)
  {
    v63 = a1;
    v64 = a2;
    swift_once();
    a1 = v63;
    a2 = v64;
  }

  v66 = a2;
  v67 = a1;
  v2 = qword_28120FCD8;
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (qword_27E5426B8 != -1)
  {
    swift_once();
  }

  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_27E543B00);
  v6 = sub_24140E70C();
  v7 = sub_24140ED8C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2413F10BC(0xD000000000000021, 0x8000000241419C90, &v68);
    *(v8 + 12) = 2080;
    v10 = GMEligibilityContext.description.getter(*(v2 + v3));
    v12 = sub_2413F10BC(v10, v11, &v68);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Choosing footer for eligibility: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v9, -1, -1);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedPreferences];
  v15 = [v14 languageCode];

  if (!v15 || (sub_24140EC1C(), v15, v16 = sub_2413EC240(), v18 = v17, , !v18))
  {
    sub_2413EC3EC(v67, MEMORY[0x277D84F90], 0xD000000000000014, 0x8000000241419520, 0xD000000000000027, 0x8000000241419A40);
    [v66 reloadSpecifier_];
    return;
  }

  switch(v4)
  {
    case 2:

      v19 = "GM_MODEL_INELIGIBLE_COUNTRY";
      v20 = MEMORY[0x277D84F90];
      v21 = 0xD000000000000025;
      goto LABEL_34;
    case 3:
    case 11:

      v19 = "GM_MODEL_ENQUEUED{DEVICE}";
      v20 = MEMORY[0x277D84F90];
      v21 = 0xD00000000000001FLL;
      goto LABEL_34;
    case 4:
    case 10:

      v19 = "GM_MODEL_DOWNLOADING{DEVICE}";
      v20 = MEMORY[0x277D84F90];
      v21 = 0xD000000000000019;
      goto LABEL_34;
    case 5:
    case 25:
    case 26:

      goto LABEL_20;
    case 6:

      v19 = "GM_MODEL_TURN_ON{DEVICE}";
      v21 = 0xD000000000000010;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_34;
    case 7:
    case 8:
    case 9:

      type metadata accessor for GMFooterUtility();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = [objc_opt_self() bundleForClass_];
      v65 = 0xE000000000000000;
      v46 = sub_24140E19C();
      v48 = v47;

      v32 = v67;
      sub_2413F48B0(v46, v48, v67);

      goto LABEL_37;
    case 12:
    case 21:

      v19 = "GM_MODEL_NOT_YET_QUEUED{DEVICE}";
      v20 = MEMORY[0x277D84F90];
      v21 = 0xD000000000000018;
      goto LABEL_34;
    case 14:

      v19 = "GM_MODEL_SHARED_IPAD";
      v20 = MEMORY[0x277D84F90];
      v21 = 0xD00000000000001BLL;
      goto LABEL_34;
    case 15:

      v26 = sub_2413F554C();
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_241412B00;
        *(inited + 32) = v28;
        v31 = inited + 32;
        *(inited + 40) = v29;
        v32 = v67;
        sub_2413EC3EC(v67, inited, 0xD000000000000014, 0x8000000241419520, 0xD000000000000024, 0x8000000241419AA0);
        swift_setDeallocating();
        sub_2413F6104(v31);
        goto LABEL_37;
      }

      v49 = sub_24140E70C();
      v50 = sub_24140ED7C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2413B9000, v49, v50, "Could not identify ineligible device language", v51, 2u);
        MEMORY[0x245CE6B00](v51, -1, -1);
      }

      v43 = v66;
      v32 = v67;
      goto LABEL_38;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_241412B00;
      *(v40 + 32) = v16;
      v41 = v40 + 32;
      *(v40 + 40) = v18;
      v32 = v67;
      sub_2413EC3EC(v67, v40, 0xD000000000000014, 0x8000000241419520, 0xD000000000000021, 0x8000000241419AD0);
      swift_setDeallocating();
      sub_2413F6104(v41);
      goto LABEL_37;
    case 17:

      v33 = [v13 &selRef_footerViewForSection_];
      v34 = [v33 &selRef_stopAnimating];

      if (!v34)
      {
        sub_2413F59E0();
LABEL_45:
        v32 = v67;
        if (!v39)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v35 = sub_24140EC1C();
      v37 = v36;

      v38 = sub_2413F59E0();
      if (!v37)
      {
        goto LABEL_45;
      }

      v32 = v67;
      if (!v39)
      {
LABEL_46:

        goto LABEL_47;
      }

      if (v35 == v38 && v39 == v37)
      {

LABEL_49:
        sub_2413EC3EC(v32, MEMORY[0x277D84F90], 0xD000000000000014, 0x8000000241419520, 0x4C45444F4D5F4D47, 0xEE005954504D455FLL);
        return;
      }

      v62 = sub_24140EF1C();

      if (v62)
      {
        goto LABEL_49;
      }

LABEL_47:
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_24140EE6C();

      v68 = 0xD00000000000002BLL;
      v69 = 0x8000000241419A70;
      v52 = [objc_opt_self() currentDevice];
      v53 = [v52 sf_deviceType];

      sub_24140EC1C();
      v54 = sub_24140EC3C();
      v56 = v55;

      MEMORY[0x245CE5AF0](v54, v56);

      type metadata accessor for GMFooterUtility();
      v57 = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass_];
      v65 = 0xE000000000000000;
      v59 = sub_24140E19C();
      v61 = v60;

      sub_2413F4BB4(v59, v61, v32);

LABEL_37:
      v43 = v66;
LABEL_38:
      [v43 reloadSpecifier_];
      return;
    case 19:

      v20 = MEMORY[0x277D84F90];
      v25 = 0x8000000241419B00;
      v32 = v67;
      v42 = v67;
      v21 = 0xD000000000000014;
      goto LABEL_36;
    case 23:
    case 24:

      if (sub_2413F5E0C())
      {
        v19 = "D_LATER_WIFI{DEVICE}";
        v20 = MEMORY[0x277D84F90];
        v21 = 0xD00000000000001CLL;
      }

      else
      {
        v19 = "GM_MODEL_OUT_OF_SPACE_PRE_JOIN";
        v20 = MEMORY[0x277D84F90];
        v21 = 0xD000000000000024;
      }

LABEL_34:
      v25 = v19 | 0x8000000000000000;
      goto LABEL_35;
    default:

      v22 = sub_24140E70C();
      v23 = sub_24140ED8C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2413B9000, v22, v23, "Defaulting to empty", v24, 2u);
        MEMORY[0x245CE6B00](v24, -1, -1);
      }

LABEL_20:
      v20 = MEMORY[0x277D84F90];
      v21 = 0x4C45444F4D5F4D47;
      v25 = 0xEE005954504D455FLL;
LABEL_35:
      v32 = v67;
      v42 = v67;
LABEL_36:
      sub_2413EC3EC(v42, v20, 0xD000000000000014, 0x8000000241419520, v21, v25);
      goto LABEL_37;
  }
}

id sub_2413F48B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542940, &qword_2414130A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24140E19C();
  v16 = v15;

  v32 = a1;
  v33 = a2;
  sub_24140E7AC();
  MEMORY[0x245CE5AF0](32, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v14, v16);
  v18 = v32;
  v17 = v33;
  sub_2413EC3EC(a3, MEMORY[0x277D84F90], 0, 0, v32, v33);
  sub_2413F6808();
  v19 = swift_getObjCClassFromMetadata();
  v20 = NSStringFromClass(v19);
  if (!v20)
  {
    sub_24140EC1C();
    v20 = sub_24140EC0C();
  }

  [a3 setProperty:v20 forKey:*MEMORY[0x277D3FF48]];

  v32 = v18;
  v33 = v17;
  v30 = v14;
  v31 = v16;
  v21 = sub_24140E2FC();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_2413F6854();
  v22 = sub_24140EDFC();
  v24 = v23;
  v26 = v25;
  sub_2413E8560(v11, &qword_27E542940, &qword_2414130A8);

  if (v26)
  {
  }

  v32 = v22;
  v33 = v24;
  v30 = v18;
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542958, &qword_2414130B0);
  sub_2413F68A8();
  v28 = sub_24140EDDC();
  return [a3 addFooterHyperlinkWithRange:v28 target:v29 action:{v4, sel_openStorageManagement}];
}

id sub_2413F4BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542940, &qword_2414130A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24140E19C();
  v16 = v15;

  v63 = a1;
  v64 = a2;
  sub_24140E7AC();
  MEMORY[0x245CE5AF0](32, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v14, v16);
  v18 = v63;
  v17 = v64;
  v19 = [objc_opt_self() sharedPreferences];
  v20 = [v19 languageCode];

  if (!v20)
  {
LABEL_13:
  }

  v59 = v11;
  v60 = a3;
  sub_24140EC1C();

  v21 = sub_2413F554C();
  if (!v22 || (v23 = v21, v24 = v22, v58 = v4, v25 = sub_2413EC240(), v27 = v26, , !v27))
  {

    goto LABEL_13;
  }

  v56 = v25;
  v57 = v18;
  v28 = sub_2413F52D8(0, 1, 1, MEMORY[0x277D84F90]);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    v28 = sub_2413F52D8((v29 > 1), v30 + 1, 1, v28);
    v29 = *(v28 + 3);
    v31 = v29 >> 1;
  }

  *(v28 + 2) = v32;
  v33 = &v28[16 * v30];
  *(v33 + 4) = v23;
  *(v33 + 5) = v24;
  v34 = v30 + 2;
  if (v31 < (v30 + 2))
  {
    v28 = sub_2413F52D8((v29 > 1), v30 + 2, 1, v28);
  }

  v35 = v56;
  v36 = v57;
  *(v28 + 2) = v34;
  v37 = &v28[16 * v32];
  *(v37 + 4) = v35;
  *(v37 + 5) = v27;
  v38 = v60;
  sub_2413EC3EC(v60, v28, 0xD000000000000014, 0x8000000241419520, v36, v17);
  sub_2413F6808();
  v39 = swift_getObjCClassFromMetadata();
  v40 = NSStringFromClass(v39);
  if (!v40)
  {
    sub_24140EC1C();
    v40 = sub_24140EC0C();
  }

  [v38 setProperty:v40 forKey:*MEMORY[0x277D3FF48]];

  sub_2413F3B3C(v28);

  v41 = sub_24140EC2C();
  v43 = v42;

  v63 = v41;
  v64 = v43;
  v61 = v14;
  v62 = v16;
  v44 = sub_24140E2FC();
  v45 = v59;
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  sub_2413F6854();
  sub_24140E7AC();
  v46 = sub_24140EDFC();
  v48 = v47;
  v50 = v49;
  sub_2413E8560(v45, &qword_27E542940, &qword_2414130A8);

  v51 = v58;
  if (v50)
  {
  }

  v63 = v46;
  v64 = v48;
  v61 = v41;
  v62 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542958, &qword_2414130B0);
  sub_2413F68A8();
  v53 = sub_24140EDDC();
  return [v38 addFooterHyperlinkWithRange:v53 target:v54 action:{v51, sel_openAppleIntelligenceURL}];
}

uint64_t sub_2413F5098()
{
  if (qword_27E5426F0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    sub_24140ED0C();
  }

  return result;
}

id GMFooterUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMFooterUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2413F51D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542998, &unk_2414130E0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2413F52D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2413F53E4(void *a1, int64_t a2, char a3)
{
  result = sub_2413F5404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2413F5404(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542980, &qword_2414130C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542988, &qword_2414130D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2413F554C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542968, &qword_2414130B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v46 = &v42 - v2;
  v3 = sub_24140E2DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = sub_24140E2FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542970, &qword_2414130C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v42 - v23;
  sub_24140E2AC();
  sub_24140E2EC();
  v25 = *(v12 + 8);
  v47 = v11;
  v45 = v25;
  v25(v20, v11);
  sub_24140E2BC();
  v26 = *(v4 + 8);
  v26(v10, v3);
  v27 = sub_24140E26C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 1, v27) == 1)
  {
    v29 = &qword_27E542970;
    v30 = &qword_2414130C0;
LABEL_5:
    sub_2413E8560(v24, v29, v30);
    return 0;
  }

  v42 = sub_24140E25C();
  v43 = v31;
  (*(v28 + 8))(v24, v27);
  sub_24140E2AC();
  sub_24140E2EC();
  v32 = v47;
  v33 = v45;
  v45(v18, v47);
  v24 = v46;
  sub_24140E2CC();
  v26(v8, v3);
  v34 = sub_24140E29C();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {

    v29 = &qword_27E542968;
    v30 = &qword_2414130B8;
    goto LABEL_5;
  }

  v37 = sub_24140E25C();
  v39 = v38;
  (*(v35 + 8))(v24, v34);
  v40 = v44;
  sub_24140E2AC();
  v48 = v42;
  v49 = v43;
  MEMORY[0x245CE5AF0](95, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v37, v39);

  v41 = sub_24140E27C();

  v33(v40, v32);
  return v41;
}

uint64_t sub_2413F59E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542968, &qword_2414130B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v43 = &v38 - v2;
  v3 = sub_24140E2DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_24140E2FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542970, &qword_2414130C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v38 - v20;
  sub_24140E2AC();
  sub_24140E2EC();
  v22 = *(v11 + 8);
  v22(v17, v10);
  sub_24140E2BC();
  v23 = *(v4 + 8);
  v42 = v3;
  v23(v9, v3);
  v24 = sub_24140E26C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v21, 1, v24) == 1)
  {
    v26 = &qword_27E542970;
    v27 = &qword_2414130C0;
    v28 = v21;
LABEL_5:
    sub_2413E8560(v28, v26, v27);
    return 0;
  }

  v39 = sub_24140E25C();
  v40 = v29;
  (*(v25 + 8))(v21, v24);
  sub_24140E2AC();
  v30 = v41;
  sub_24140E2EC();
  v22(v15, v10);
  v31 = v43;
  sub_24140E2CC();
  v23(v30, v42);
  v32 = sub_24140E29C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {

    v26 = &qword_27E542968;
    v27 = &qword_2414130B8;
    v28 = v31;
    goto LABEL_5;
  }

  v35 = sub_24140E25C();
  v37 = v36;
  (*(v33 + 8))(v31, v32);
  v44 = v39;
  v45 = v40;
  MEMORY[0x245CE5AF0](45, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v35, v37);

  return v44;
}

uint64_t sub_2413F5E0C()
{
  v0 = sub_24140E46C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_24140E43C();
  sub_24140E42C();
  sub_24140E41C();

  sub_24140E47C();
  (*(v1 + 104))(v5, *MEMORY[0x277D61DE0], v0);
  v8 = sub_24140E45C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    v10 = sub_24140E44C();

    v11 = v10 ^ 1;
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2413F5F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542990, &qword_2414130D8);
    v3 = sub_24140EE4C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_24140EF8C();
      sub_24140E7AC();
      sub_24140EC5C();
      result = sub_24140EFAC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_24140EF1C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2413F6808()
{
  result = qword_27E542948;
  if (!qword_27E542948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E542948);
  }

  return result;
}

unint64_t sub_2413F6854()
{
  result = qword_27E542950;
  if (!qword_27E542950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542950);
  }

  return result;
}

unint64_t sub_2413F68A8()
{
  result = qword_27E542960;
  if (!qword_27E542960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542958, &qword_2414130B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542960);
  }

  return result;
}

unint64_t sub_2413F690C()
{
  result = qword_27E542978;
  if (!qword_27E542978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542978);
  }

  return result;
}

uint64_t sub_2413F696C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_24140E5DC();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_2413F69F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_24140E5DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t sub_2413F6B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_24140E5DC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

id GMAvailabilityProvider.init(provider:)(uint64_t a1)
{
  v2 = sub_24140E57C();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24140E40C();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24140E52C();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v35 - v14;
  v16 = sub_24140E5DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v37 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v35 - v21;
  v23 = a1;
  sub_2413F709C(a1, v15);
  v24 = *(v17 + 48);
  v25 = v24(v15, 1, v16);
  v38 = v5;
  if (v25 == 1)
  {
    v36 = a1;
    sub_24140E3DC();
    v26 = sub_24140E3EC();
    v35[0] = v27;
    v35[1] = v26;
    (*(v41 + 8))(v8, v5);
    v28 = *MEMORY[0x277D0E2B8];
    (*(v44 + 104))(v43, v28, v45);
    sub_24140E51C();
    sub_24140E5CC();
    (*(v40 + 8))(v11, v42);
    if (v24(v15, 1, v16) != 1)
    {
      sub_2413F710C(v15);
    }

    v23 = v36;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v28 = *MEMORY[0x277D0E2B8];
  }

  v29 = *(v17 + 32);
  v30 = v39;
  v29(&v39[OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider], v22, v16);
  sub_24140E3FC();
  sub_24140E3EC();
  (*(v41 + 8))(v8, v38);
  (*(v44 + 104))(v43, v28, v45);
  sub_24140E51C();
  v31 = v37;
  sub_24140E5CC();
  (*(v40 + 8))(v11, v42);
  v29(&v30[OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_diffusionModelProvider], v31, v16);
  v32 = type metadata accessor for GMAvailabilityProvider();
  v46.receiver = v30;
  v46.super_class = v32;
  v33 = objc_msgSendSuper2(&v46, sel_init);
  sub_2413F710C(v23);
  return v33;
}

uint64_t sub_2413F709C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413F710C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GMAvailabilityProvider()
{
  result = qword_28120FD58;
  if (!qword_28120FD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2413F71DC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F7304;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7304()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2413F73E4, 0, 0);
}

uint64_t sub_2413F73E4()
{
  v1 = *(v0 + 144);
  v2 = [v1 status];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F745C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_2413F74F4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F761C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F761C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2413F76FC, 0, 0);
}

uint64_t sub_2413F76FC()
{
  v1 = *(v0 + 144);
  v2 = [v1 unavailabiltyReasons];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F7774()
{
  v1 = sub_24140E5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  sub_24140E53C();
  return (*(v2 + 8))(v5, v1);
}

id GMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F7A14()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F7304;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_20;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7B58()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F761C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7C80()
{
  v1 = sub_24140E5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_24140E53C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2413F7DAC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_24140E5DC();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t dispatch thunk of GMAvailabilityProviding.availabilityStatus()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413F8554;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GMAvailabilityProviding.unavailabilityReason()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413F8554;

  return v9(a1, a2);
}

uint64_t sub_2413F80A8()
{
  result = sub_24140E5DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GMAvailabilityProvider.availabilityStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F82EC;

  return v6();
}

uint64_t sub_2413F82EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of GMAvailabilityProvider.unavailabilityReason()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F8554;

  return v6();
}

uint64_t sub_2413F8578()
{
  v1 = *(v0 + 48);
  sub_24140E65C();
  v2 = v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName;
  v3 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName);
  v4 = *(v2 + 8);
  v5 = *(MEMORY[0x277CFB428] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2413F8638;

  return MEMORY[0x28214D5D0](v3, v4);
}

uint64_t sub_2413F8638(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_2413F87CC;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_2413F8760;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2413F8760()
{
  v1 = *(v0 + 72);
  v2 = sub_24140E66C();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F87CC()
{
  v20 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_24140EF7C();
    v14 = sub_2413F10BC(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2413B9000, v4, v5, "#gmenrollment Error trying to enroll into queue %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CE6B00](v8, -1, -1);
    MEMORY[0x245CE6B00](v7, -1, -1);
  }

  v15 = v0[8];
  sub_24140E62C();
  v16 = sub_24140E5EC();

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_2413F89B8()
{
  v1 = *(v0 + 48);
  sub_24140E65C();
  v2 = v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName;
  v3 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName);
  v4 = *(v2 + 8);
  v5 = *(MEMORY[0x277CFB420] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2413F8A78;

  return MEMORY[0x28214D5C8](v3, v4);
}

uint64_t sub_2413F8A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_2413F8BA0;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_2413F9478;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2413F8BA0()
{
  v20 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_24140EF7C();
    v14 = sub_2413F10BC(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2413B9000, v4, v5, "#gmenrollment Error trying to get ticket status %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CE6B00](v8, -1, -1);
    MEMORY[0x245CE6B00](v7, -1, -1);
  }

  v15 = v0[8];
  sub_24140E62C();
  v16 = sub_24140E5EC();

  v17 = v0[1];

  return v17(v16);
}

id GMEnrollmentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMEnrollmentProvider.init()()
{
  v1 = &v0[OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName];
  *v1 = 0x6C6C2E64756F6C63;
  *(v1 + 1) = 0xE90000000000006DLL;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GMEnrollmentProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GMEnrollmentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F8EAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F82EC;

  return sub_2413F8558();
}

uint64_t sub_2413F8F3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F8554;

  return sub_2413F8998();
}

uint64_t dispatch thunk of GMEnrollmentProviding.enroll()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413F8554;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GMEnrollmentProviding.status()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413F8554;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GMEnrollmentProvider.enroll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F82EC;

  return v6();
}

uint64_t dispatch thunk of GMEnrollmentProvider.status()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F8554;

  return v6();
}

unint64_t sub_2413F949C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2413F999C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t GMEligibilityContext.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x6E6564646968;
    case 2:
    case 7:
    case 14:
      v3 = 9;
      goto LABEL_23;
    case 3:
      return 0xD000000000000013;
    case 4:
      return 0x6465756575716E65;
    case 5:
      return 0x6E45657669746361;
    case 6:
      return 0x646574696D696CLL;
    case 8:
      v3 = 13;
      goto LABEL_23;
    case 9:
      return 0xD000000000000017;
    case 10:
    case 23:
      v3 = 11;
      goto LABEL_23;
    case 11:
    case 22:
      return 0xD00000000000001FLL;
    case 12:
    case 15:
      v3 = 10;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0xD000000000000030;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x5049646572616873;
      break;
    case 20:
      result = 0x646574704F746F6ELL;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000020;
      break;
    case 26:
      result = 0xD00000000000002ELL;
      break;
    default:
      result = sub_24140EF2C();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_2413F97E4()
{
  v0 = sub_24140E61C();
  v2 = v1;
  sub_24140E62C();
  v3 = sub_24140E5FC();
  v4 = sub_24140E61C();
  v6 = v5;

  if (v4 == v0 && v6 == v2)
  {

LABEL_5:

    return 5;
  }

  v7 = sub_24140EF1C();

  if (v7)
  {
    goto LABEL_5;
  }

  v9 = sub_24140E60C();
  v10 = sub_24140E61C();
  v12 = v11;

  if (v10 == v0 && v12 == v2)
  {

LABEL_10:

    return 4;
  }

  v13 = sub_24140EF1C();

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = sub_24140E5EC();
  v15 = sub_24140E61C();
  v17 = v16;

  if (v15 == v0 && v17 == v2)
  {

    return 3;
  }

  else
  {
    v18 = sub_24140EF1C();

    if (v18)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_2413F999C(unint64_t result)
{
  if (result > 0x1A)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2413F99B0()
{
  result = qword_27E5429B8;
  if (!qword_27E5429B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5429B8);
  }

  return result;
}

uint64_t sub_2413F9A14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429C8, &qword_241413460);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429D0, &qword_241413468);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429D8, &qword_241413470);
  sub_2413F3A84(&qword_27E5429E0, &qword_27E5429D8, &qword_241413470);
  sub_24140EA0C();
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  v12 = sub_24140EA1C();
  v14 = v13;
  v16 = v15;
  v17 = sub_2413F3A84(&qword_27E5429F0, &qword_27E5429C8, &qword_241413460);
  sub_24140EABC();
  sub_2413FE310(v12, v14, v16 & 1);

  (*(v38 + 8))(v6, v3);
  v43[0] = v3;
  v43[1] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v41;
  v19 = v39;
  sub_24140EA3C();
  (*(v40 + 8))(v11, v19);
  v20 = swift_allocObject();
  v21 = v2[3];
  *(v20 + 3) = v2[2];
  *(v20 + 4) = v21;
  v22 = v2[5];
  *(v20 + 5) = v2[4];
  *(v20 + 6) = v22;
  v23 = v2[1];
  *(v20 + 1) = *v2;
  *(v20 + 2) = v23;
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429F8, &qword_241413478) + 36));
  v25 = v18;
  *v24 = sub_2413FE320;
  v24[1] = v20;
  v24[2] = 0;
  v24[3] = 0;
  v26 = objc_opt_self();
  sub_2413FE144(v2, v43);
  v27 = [v26 defaultCenter];
  v28 = *MEMORY[0x277CEF110];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A00, &qword_241413480);
  v30 = *(v29 + 52);
  v31 = v28;
  sub_24140EDAC();

  v32 = swift_allocObject();
  v33 = v2[3];
  *(v32 + 3) = v2[2];
  *(v32 + 4) = v33;
  v34 = v2[5];
  *(v32 + 5) = v2[4];
  *(v32 + 6) = v34;
  v35 = v2[1];
  *(v32 + 1) = *v2;
  *(v32 + 2) = v35;
  v36 = (v25 + *(v29 + 56));
  *v36 = sub_2413FE3B0;
  v36[1] = v32;
  return sub_2413FE144(v2, v43);
}

uint64_t sub_2413F9E94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A38, &qword_2414134B8);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A40, &qword_2414134C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A48, &qword_2414134C8);
  v78 = *(v71 - 8);
  v11 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v71);
  v82 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A50, &qword_2414134D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v81 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A58, &qword_2414134D8);
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = v76[8];
  v24 = MEMORY[0x28223BE20](v22);
  v75 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v72 = v65 - v26;
  sub_2413FA88C();
  v79 = a1;
  v87 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB0C();
  v27 = MEMORY[0x277D839B0];
  v28 = MEMORY[0x277D839C8];
  v73 = v21;
  v74 = v15;
  if (v83)
  {
    (*(v78 + 56))(v21, 1, 1, v71);
  }

  else
  {
    sub_24140E95C();
    v66 = v3;
    sub_2413FE2C4();
    sub_24140EDBC();
    v29 = sub_24140EA1C();
    v65[1] = v65;
    *&v87 = v29;
    *(&v87 + 1) = v30;
    v88 = v31 & 1;
    v89 = v32;
    MEMORY[0x28223BE20](v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A60, &qword_2414134E0);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A68, &qword_2414134E8);
    v34 = sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8);
    v83 = v33;
    v84 = v27;
    v85 = v34;
    v86 = v28;
    swift_getOpaqueTypeConformance2();
    sub_24140EB6C();
    v35 = v78;
    v3 = v66;
    v36 = v71;
    (*(v78 + 32))(v21, v15, v71);
    (*(v35 + 56))(v21, 0, 1, v36);
  }

  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  *&v87 = sub_24140EA1C();
  *(&v87 + 1) = v37;
  v88 = v38 & 1;
  v89 = v39;
  MEMORY[0x28223BE20](v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A60, &qword_2414134E0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A68, &qword_2414134E8);
  v41 = sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8);
  v83 = v40;
  v84 = v27;
  v85 = v41;
  v86 = v28;
  v42 = 1;
  swift_getOpaqueTypeConformance2();
  sub_24140EB6C();
  v43 = sub_24140EC0C();
  v44 = sub_24140EC0C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v43, v44, 0);

  if (AppBooleanValue)
  {
    v46 = v67;
    sub_2413FAB74();
    v47 = v68;
    (*(v68 + 32))(v80, v46, v3);
    v42 = 0;
  }

  else
  {
    v47 = v68;
  }

  v48 = v80;
  (*(v47 + 56))(v80, v42, 1, v3);
  v49 = v75;
  v50 = v76[2];
  v51 = v77;
  v50(v75, v72, v77);
  sub_2413FE544(v73, v81, &qword_27E542A50, &qword_2414134D0);
  v52 = v78;
  v53 = v48;
  v54 = *(v78 + 16);
  v55 = v71;
  v54(v74, v82, v71);
  v56 = v53;
  v57 = v69;
  sub_2413FE544(v56, v69, &qword_27E542A40, &qword_2414134C0);
  v58 = v70;
  v50(v70, v49, v51);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A78, &qword_2414134F0);
  sub_2413FE544(v81, &v58[v59[12]], &qword_27E542A50, &qword_2414134D0);
  v60 = v74;
  v54(&v58[v59[16]], v74, v55);
  sub_2413FE544(v57, &v58[v59[20]], &qword_27E542A40, &qword_2414134C0);
  sub_2413E8560(v80, &qword_27E542A40, &qword_2414134C0);
  v61 = *(v52 + 8);
  v61(v82, v55);
  sub_2413E8560(v73, &qword_27E542A50, &qword_2414134D0);
  v62 = v77;
  v63 = v76[1];
  v63(v72, v77);
  sub_2413E8560(v57, &qword_27E542A40, &qword_2414134C0);
  v61(v60, v55);
  sub_2413E8560(v81, &qword_27E542A50, &qword_2414134D0);
  return (v63)(v75, v62);
}

uint64_t sub_2413FA88C()
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  sub_24140EA1C();
  sub_24140E95C();
  sub_24140EDBC();
  sub_24140EA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AF8, &qword_241413548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B00, &qword_241413550);
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B08, &qword_241413558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B10, &qword_241413560);
  sub_24140E94C();
  sub_2413F3A84(&qword_27E542B18, &qword_27E542B10, &qword_241413560);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2413FE664(&qword_27E542710);
  swift_getOpaqueTypeConformance2();
  return sub_24140EB5C();
}

uint64_t sub_2413FAB74()
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  v22 = sub_24140EA1C();
  v23 = v0;
  v24 = v1 & 1;
  v25 = v2;
  v3 = sub_24140E96C();
  v21 = 1;
  sub_2413FD83C(&v13);
  v28 = *&v14[16];
  v29 = *&v14[32];
  v26 = v13;
  v27 = *v14;
  v31[2] = *&v14[16];
  v31[3] = *&v14[32];
  v31[4] = *&v14[48];
  v31[1] = *v14;
  v30 = *&v14[48];
  v31[0] = v13;
  sub_2413FE41C(&v26, &v16);
  sub_2413E8560(v31, &qword_27E542A80, &qword_2414134F8);
  *&v20[7] = v26;
  *&v20[71] = v30;
  *&v20[55] = v29;
  *&v20[39] = v28;
  *&v20[23] = v27;
  *&v14[33] = *&v20[32];
  *&v14[49] = *&v20[48];
  *v15 = *&v20[64];
  *&v14[1] = *v20;
  v13 = v3;
  v14[0] = v21;
  *&v15[15] = *(&v30 + 1);
  *&v14[17] = *&v20[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A88, &qword_241413500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A90, &qword_241413508);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A98, &qword_241413510);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542AA0, &qword_241413518);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542AA8, &qword_241413520);
  v7 = sub_24140E94C();
  v8 = sub_2413F3A84(&qword_27E542AB0, &qword_27E542AA8, &qword_241413520);
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v5;
  v17 = OpaqueTypeConformance2;
  v10 = swift_getOpaqueTypeConformance2();
  v11 = sub_2413FE494();
  v16 = v4;
  v17 = &type metadata for SiriResponses.CarAudioRoute;
  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_2413F3A84(&qword_27E542AC0, &qword_27E542A90, &qword_241413508);
  return sub_24140EB5C();
}

uint64_t sub_2413FAED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A20, &unk_2414134A0);
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = &v42 - v3;
  v43 = sub_24140E1DC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24140E2FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_24140EBFC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = sub_24140E1EC();
  v12 = *(v44 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v44);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = sub_24140E24C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v48 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24140E23C();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_2413E8560(v21, &qword_27E542938, &qword_2414130A0);
  }

  (*(v23 + 32))(v48, v21, v22);
  sub_24140EBEC();
  sub_24140E2AC();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v43);
  sub_24140E1FC();
  v43 = v22;
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v27 = qword_28120FCD8;
  v28 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *(v27 + v28);
  sub_24140E1CC();
  v29 = v0[3];
  v52 = v0[2];
  v53 = v29;
  v30 = v0[5];
  v54 = v0[4];
  v55 = v30;
  v31 = v0[1];
  v50 = *v0;
  v51 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A28, &qword_2414134B0);
  v32 = *(v12 + 72);
  v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_241413020;
  v35 = v34 + v33;
  v36 = *(v12 + 16);
  v37 = v44;
  v36(v35, v16, v44);
  v38 = v49;
  v36(v35 + v32, v49, v37);
  sub_2413FE3B8();
  v39 = v45;
  v40 = v48;
  sub_24140EA5C();

  (*(v46 + 8))(v39, v47);
  v41 = *(v12 + 8);
  v41(v16, v37);
  v41(v38, v37);
  return (*(v23 + 8))(v40, v43);
}

uint64_t sub_2413FB530()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedPreferences];
  [v3 synchronize];

  v4 = [v2 sharedPreferences];
  [v4 useDeviceSpeakerForTTS];

  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A10, &qword_241413490);
  sub_24140EB1C();
  v5 = [v2 sharedPreferences];
  v6 = [v5 bluetoothPreferredCarAudioRoute];

  if (v6)
  {
    sub_24140EC1C();
  }

  sub_24140EEEC();

  v7 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB1C();
  v8 = [v2 sharedPreferences];
  [v8 siriResponseShouldAlwaysPrint];

  v12 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB1C();
  v9 = [v2 sharedPreferences];
  [v9 alwaysShowRecognizedSpeech];

  v13 = v1[3];
  sub_24140EB1C();
  v14 = v1[4];
  sub_24140EB1C();
  [objc_opt_self() saeAvailable];
  v15 = v1[5];
  return sub_24140EB1C();
}

uint64_t sub_2413FB7B4(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() saeAvailable];
  v4 = *(a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  return sub_24140EB1C();
}

uint64_t sub_2413FB824@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_24140E94C();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B10, &qword_241413560);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B08, &qword_241413558);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B00, &qword_241413550);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v35 = v30 - v19;
  v33 = sub_24140E95C();
  v32 = v20;
  v30[3] = v21;
  v31 = v22;
  v47 = *a1;
  v48 = v47;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A10, &qword_241413490);
  sub_24140EB2C();
  v43 = a1;
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B20, &qword_241413568);
  sub_2413FE664(&qword_27E542B28);
  sub_2413F3A84(&qword_27E542B30, &qword_27E542B20, &qword_241413568);
  sub_24140EB3C();
  sub_24140E93C();
  v23 = sub_2413F3A84(&qword_27E542B18, &qword_27E542B10, &qword_241413560);
  v24 = MEMORY[0x277CDDDA0];
  v25 = v38;
  sub_24140EA8C();
  (*(v39 + 8))(v7, v25);
  (*(v36 + 8))(v11, v8);
  *&v44 = v8;
  *(&v44 + 1) = v25;
  v45 = v23;
  v46 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_24140EA9C();
  (*(v37 + 8))(v15, v12);
  v44 = v48;
  sub_24140EB0C();
  *&v44 = v12;
  *(&v44 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2413FE664(&qword_27E542710);
  v28 = v40;
  sub_24140EACC();
  return (*(v41 + 8))(v27, v28);
}

uint64_t sub_2413FBD70@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B38, &qword_241413570);
  v37 = *(v1 - 8);
  v2 = v37[8];
  v3 = MEMORY[0x28223BE20](v1);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v34 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v34 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  *v16 = sub_24140EA1C();
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  *(v16 + 3) = v19;
  *(v16 + 4) = 3;
  v16[40] = 1;
  sub_24140E95C();
  sub_24140EDBC();
  *v14 = sub_24140EA1C();
  *(v14 + 1) = v20;
  v14[16] = v21 & 1;
  *(v14 + 3) = v22;
  *(v14 + 4) = 1;
  v14[40] = 1;
  sub_24140E95C();
  sub_24140EDBC();
  *v11 = sub_24140EA1C();
  *(v11 + 1) = v23;
  v11[16] = v24 & 1;
  *(v11 + 3) = v25;
  *(v11 + 4) = 2;
  v11[40] = 1;
  v26 = v38;
  v27 = v37[2];
  v27(v38, v16, v1);
  v28 = v34;
  v27(v34, v14, v1);
  v29 = v35;
  v27(v35, v11, v1);
  v30 = v36;
  v27(v36, v26, v1);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B40, &qword_241413578);
  v27(&v30[*(v31 + 48)], v28, v1);
  v27(&v30[*(v31 + 64)], v29, v1);
  v32 = v37[1];
  v32(v11, v1);
  v32(v14, v1);
  v32(v16, v1);
  v32(v29, v1);
  v32(v28, v1);
  return (v32)(v38, v1);
}

void sub_2413FC1FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedPreferences];
  [v3 setUseDeviceSpeakerForTTS_];
}

uint64_t sub_2413FC26C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A68, &qword_2414134E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-v5];
  v11 = *(a1 + 32);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB2C();
  v9 = a1;
  sub_24140EB4C();
  v10 = v12;
  sub_24140EB0C();
  LOBYTE(v10) = v11;
  sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8);
  sub_24140EACC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2413FC450@<X0>(uint64_t a1@<X8>)
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  result = sub_24140EA1C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2413FC534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A68, &qword_2414134E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-v5];
  v11 = *(a1 + 48);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB2C();
  v9 = a1;
  sub_24140EB4C();
  v10 = v12;
  sub_24140EB0C();
  LOBYTE(v10) = v11;
  sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8);
  sub_24140EACC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2413FC718@<X0>(uint64_t a1@<X8>)
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  result = sub_24140EA1C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_2413FC7FC(uint64_t a1, unsigned __int8 *a2, SEL *a3)
{
  v4 = *a2;
  v5 = [objc_opt_self() sharedPreferences];
  [v5 *a3];
}

uint64_t sub_2413FC86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_24140E94C();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AA8, &qword_241413520);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AA0, &qword_241413518);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A98, &qword_241413510);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v31 - v20;
  v31[2] = sub_24140E95C();
  v31[1] = v22;
  v31[0] = v23;
  v44 = *(a1 + 16);
  v45 = v44;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB2C();
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AC8, &qword_241413528);
  sub_2413FE4F0();
  sub_2413F3A84(&qword_27E542AD8, &qword_27E542AC8, &qword_241413528);
  sub_24140EB3C();
  sub_24140E93C();
  v24 = sub_2413F3A84(&qword_27E542AB0, &qword_27E542AA8, &qword_241413520);
  v25 = MEMORY[0x277CDDDA0];
  v26 = v35;
  sub_24140EA8C();
  (*(v36 + 8))(v7, v26);
  (*(v32 + 8))(v11, v8);
  *&v41 = v8;
  *(&v41 + 1) = v26;
  v42 = v24;
  v43 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_24140EA9C();
  (*(v34 + 8))(v16, v28);
  v41 = v45;
  sub_24140EB0C();
  *&v41 = v28;
  *(&v41 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2413FE494();
  v29 = v37;
  sub_24140EACC();
  return (*(v38 + 8))(v21, v29);
}

uint64_t sub_2413FCD64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AE0, &qword_241413530);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AE8, &qword_241413538);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  sub_24140E95C();
  v45 = sub_2413FE2C4();
  sub_24140EDBC();
  *v18 = sub_24140EA1C();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  v47 = v18;
  *(v18 + 16) = 258;
  v49 = *(v40 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB0C();
  v39 = "@32@0:8@16@24";
  if (v48 == 1)
  {
    sub_24140E95C();
    sub_24140EDBC();
    *v16 = sub_24140EA1C();
    *(v16 + 1) = v22;
    v16[16] = v23 & 1;
    *(v16 + 3) = v24;
    *(v16 + 16) = 257;
    v25 = v46;
    (*(v8 + 32))(v46, v16, v7);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v46;
  }

  v27 = v7;
  (*(v8 + 56))(v25, v26, 1, v7);
  sub_24140E95C();
  sub_24140EDBC();
  *v16 = sub_24140EA1C();
  *(v16 + 1) = v28;
  v16[16] = v29 & 1;
  *(v16 + 3) = v30;
  *(v16 + 16) = 256;
  v31 = *(v8 + 16);
  v32 = v42;
  v31(v42, v47, v7);
  v33 = v44;
  sub_2413FE544(v25, v44, &qword_27E542AE0, &qword_241413530);
  v34 = v41;
  v31(v41, v16, v27);
  v35 = v43;
  v31(v43, v32, v27);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AF0, &qword_241413540);
  sub_2413FE544(v33, &v35[*(v36 + 48)], &qword_27E542AE0, &qword_241413530);
  v31(&v35[*(v36 + 64)], v34, v27);
  v37 = *(v8 + 8);
  v37(v16, v27);
  sub_2413E8560(v46, &qword_27E542AE0, &qword_241413530);
  v37(v47, v27);
  v37(v34, v27);
  sub_2413E8560(v33, &qword_27E542AE0, &qword_241413530);
  return (v37)(v32, v27);
}

void sub_2413FD2D8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedPreferences];
  v4 = sub_24140EC0C();

  [v3 setBluetoothPreferredCarAudioRoute_];
}

uint64_t sub_2413FD3B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7053656369766544;
  v4 = 0xED000072656B6165;
  if (v2 != 1)
  {
    v3 = 1346646593;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 5260872;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x7053656369766544;
  v8 = 0xED000072656B6165;
  if (*a2 != 1)
  {
    v7 = 1346646593;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 5260872;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24140EF1C();
  }

  return v11 & 1;
}

uint64_t sub_2413FD4B8()
{
  v1 = *v0;
  sub_24140EF8C();
  sub_24140EC5C();

  return sub_24140EFAC();
}

uint64_t sub_2413FD558()
{
  *v0;
  *v0;
  sub_24140EC5C();
}

uint64_t sub_2413FD5E4()
{
  v1 = *v0;
  sub_24140EF8C();
  sub_24140EC5C();

  return sub_24140EFAC();
}

uint64_t sub_2413FD680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2413FDFC0();
  *a2 = result;
  return result;
}

void sub_2413FD6B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xED000072656B6165;
  v5 = 0x7053656369766544;
  if (v2 != 1)
  {
    v5 = 1346646593;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5260872;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2413FD70C()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB0C();
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  return sub_24140EA1C();
}

uint64_t sub_2413FD83C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2413FD70C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (AFIsInternalInstall())
  {
    sub_24140E95C();
    sub_2413FE2C4();
    sub_24140EDBC();
    v9 = sub_24140EA1C();
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
    sub_2413E6D94(v9, v10, v14 & 1);
    sub_24140E7AC();
    sub_2413FE310(v9, v11, v15);

    sub_2413E6D94(v9, v11, v15);
    sub_24140E7AC();
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  sub_2413E6D94(v2, v4, v6 & 1);
  sub_24140E7AC();
  sub_2413FE5AC(0, v16, v9, v11, v15, v13);
  sub_2413FE5F8(0, v16, v9, v11, v15, v13);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = v16;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = v15;
  *(a1 + 72) = v13;
  sub_2413FE5F8(0, v16, v9, v11, v15, v13);
  sub_2413FE310(v2, v4, v6 & 1);
}

uint64_t sub_2413FDA78@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_2413F9A14(a1);
}

id sub_2413FDABC()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SiriResponsesController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_2413FE00C(v15);
  v13[8] = v15[2];
  v13[9] = v15[3];
  v13[10] = v15[4];
  v13[11] = v15[5];
  v13[6] = v15[0];
  v13[7] = v15[1];
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429C0, &unk_241413380));
  sub_2413FE144(v15, v13);
  v3 = sub_24140E97C();
  v4 = [v3 view];
  if (!v4)
  {
    v5 = v3;
    goto LABEL_6;
  }

  v5 = v4;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v8 = result;
      [result bounds];
      v10 = v9;
      v12 = v11;

      [v5 setFrame_];
      [v5 setAutoresizingMask_];
      [v1 addChildViewController_];
      [v3 didMoveToParentViewController_];

LABEL_6:
      return sub_2413FE17C(v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SiriResponsesController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24140EC0C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SiriResponsesController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_24140EC0C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SiriResponsesController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id SiriResponsesController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriResponsesController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriResponsesController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SiriResponsesController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriResponsesController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413FDFC0()
{
  v0 = sub_24140EEEC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2413FE00C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  result = sub_24140EAFC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2413FE1C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2413FE224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2413FE2C4()
{
  result = qword_27E5429E8;
  if (!qword_27E5429E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5429E8);
  }

  return result;
}

uint64_t sub_2413FE310(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_2413FE3B8()
{
  result = qword_27E542A30;
  if (!qword_27E542A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542A30);
  }

  return result;
}

uint64_t sub_2413FE41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A80, &qword_2414134F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2413FE494()
{
  result = qword_27E542AB8;
  if (!qword_27E542AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542AB8);
  }

  return result;
}

unint64_t sub_2413FE4F0()
{
  result = qword_27E542AD0;
  if (!qword_27E542AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542AD0);
  }

  return result;
}

uint64_t sub_2413FE544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2413FE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2413E6D94(a3, a4, a5 & 1);

    return sub_24140E7AC();
  }

  return result;
}

uint64_t sub_2413FE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2413FE310(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2413FE664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AFUseDeviceSpeakerForTTS();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriResponses.CarAudioRoute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriResponses.CarAudioRoute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2413FE81C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24140E4BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]), v9 = sub_24140EBCC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2414087E8(&qword_28120FCF8, MEMORY[0x277D0E218]);
      v17 = sub_24140EBDC();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2413FEA34(uint64_t a1, uint64_t a2)
{
  v3 = sub_24140E48C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2414087E8(&qword_27E542BA0, MEMORY[0x277D0E038]), v9 = sub_24140EBCC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2414087E8(&qword_27E542BA8, MEMORY[0x277D0E038]);
      v17 = sub_24140EBDC();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2413FED4C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2413FEDAC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___GMSpecifierController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2413FEE44;
}

void sub_2413FEE44(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id GMSpecifierController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMSpecifierController.init()()
{
  v1 = v0;
  v2 = sub_24140E50C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  v11 = sub_24140E5DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = type metadata accessor for GMAvailabilityProvider();
  v13 = objc_allocWithZone(v12);
  v14 = GMAvailabilityProvider.init(provider:)(v10);
  v15 = &v1[OBJC_IVAR___GMSpecifierController_availabilityProvider];
  *(v15 + 3) = v12;
  *(v15 + 4) = &protocol witness table for GMAvailabilityProvider;
  *v15 = v14;
  sub_24140869C(v15, v29);
  v16 = v30;
  v17 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v17 + 24))(v16, v17);
  (*(v3 + 32))(&v1[OBJC_IVAR___GMSpecifierController_availability], v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = type metadata accessor for GMOptInStatusProvider();
  v19 = [objc_allocWithZone(v18) init];
  v20 = &v1[OBJC_IVAR___GMSpecifierController_optInStatusProvider];
  *(v20 + 3) = v18;
  *(v20 + 4) = &protocol witness table for GMOptInStatusProvider;
  *v20 = v19;
  v21 = type metadata accessor for GMEnrollmentProvider();
  v22 = [objc_allocWithZone(v21) init];
  v23 = &v1[OBJC_IVAR___GMSpecifierController_enrollmentProvider];
  *(v23 + 3) = v21;
  *(v23 + 4) = &protocol witness table for GMEnrollmentProvider;
  *v23 = v22;
  *&v1[OBJC_IVAR___GMSpecifierController_analytics] = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
  v24 = type metadata accessor for GMSpecifierController();
  v28.receiver = v1;
  v28.super_class = v24;
  v25 = objc_msgSendSuper2(&v28, sel_init);
  sub_241403C68();
  sub_2414049B8();

  return v25;
}

uint64_t type metadata accessor for GMSpecifierController()
{
  result = qword_28120FCC0;
  if (!qword_28120FCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GMSpecifierController.__allocating_init(availabilityProvider:optInStatus:enrollmentProvider:analytics:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v21 = a3;
  v7 = sub_24140E50C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  sub_24140869C(a1, &v12[OBJC_IVAR___GMSpecifierController_availabilityProvider]);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v13 + 24))(v14, v13);
  (*(v8 + 32))(&v12[OBJC_IVAR___GMSpecifierController_availability], v11, v7);
  v15 = v20;
  sub_24140869C(v20, &v12[OBJC_IVAR___GMSpecifierController_optInStatusProvider]);
  v16 = v21;
  sub_24140869C(v21, &v12[OBJC_IVAR___GMSpecifierController_enrollmentProvider]);
  *&v12[OBJC_IVAR___GMSpecifierController_analytics] = a4;
  v22.receiver = v12;
  v22.super_class = v4;
  v17 = a4;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  sub_241403C68();
  sub_2414049B8();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

id GMSpecifierController.init(availabilityProvider:optInStatus:enrollmentProvider:analytics:)(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v21 = a3;
  v8 = sub_24140E50C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  sub_24140869C(a1, &v4[OBJC_IVAR___GMSpecifierController_availabilityProvider]);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 24))(v13, v14);
  (*(v9 + 32))(&v4[OBJC_IVAR___GMSpecifierController_availability], v12, v8);
  sub_24140869C(a2, &v4[OBJC_IVAR___GMSpecifierController_optInStatusProvider]);
  v15 = v21;
  sub_24140869C(v21, &v4[OBJC_IVAR___GMSpecifierController_enrollmentProvider]);
  *&v4[OBJC_IVAR___GMSpecifierController_analytics] = a4;
  v16 = type metadata accessor for GMSpecifierController();
  v22.receiver = v4;
  v22.super_class = v16;
  v17 = a4;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  sub_241403C68();
  sub_2414049B8();

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t sub_2413FF634()
{
  v1[5] = v0;
  v2 = sub_24140E4DC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_24140E4AC();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_24140E50C();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413FF7B8, 0, 0);
}

uint64_t sub_2413FF7B8()
{
  v1 = (*(v0 + 40) + OBJC_IVAR___GMSpecifierController_enrollmentProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_2413FF8E8;

  return v8(v2, v3);
}

uint64_t sub_2413FF8E8(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_2413FF9E8, 0, 0);
}

uint64_t sub_2413FF9E8()
{
  v1 = (v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v34 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  v6 = *(v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 24);
  v7 = *(v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider), v6);
  (*(v7 + 24))(v6, v7);
  v8 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  (*(v3 + 40))(v5 + v8, v2, v4);
  swift_endAccess();
  (*(v3 + 16))(v34, v5 + v8, v4);
  v9 = (*(v3 + 88))(v34, v4);
  if (v9 == *MEMORY[0x277D0DFA8])
  {
    v1 = (v0 + 88);
    v10 = *(v0 + 88);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v14 = (v0 + 80);
    v13 = *(v0 + 80);
    v16 = (v0 + 72);
    v15 = *(v0 + 72);
    (*(*(v0 + 104) + 96))(v12, *(v0 + 96));
    (*(v13 + 32))(v10, v12, v15);
    v17 = v11;
    v18 = sub_24140674C(v10, v11);
  }

  else
  {
    v19 = *(v0 + 136);
    if (v9 == *MEMORY[0x277D0DFB0])
    {
      v1 = (v0 + 64);
      v20 = *(v0 + 64);
      v21 = *(v0 + 112);
      v14 = (v0 + 56);
      v22 = *(v0 + 56);
      v16 = (v0 + 48);
      v23 = *(v0 + 48);
      (*(*(v0 + 104) + 96))(v21, *(v0 + 96));
      (*(v22 + 32))(v20, v21, v23);
      v18 = sub_241406AA0(v20, v19);
    }

    else
    {
      v24 = *(v0 + 136);
      v18 = sub_2413F97E4();
      v16 = (v0 + 96);
      v14 = (v0 + 104);
    }
  }

  v25 = *v1;
  v26 = *v16;
  v27 = *v14;
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 88);
  v31 = *(v0 + 64);

  (*(v27 + 8))(v25, v26);

  v32 = *(v0 + 8);

  return v32(v18);
}

uint64_t sub_2413FFE2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2414088EC;

  return sub_2413FF634();
}

uint64_t sub_2413FFED4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2413FFEF8, 0, 0);
}

uint64_t sub_2413FFEF8()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    sub_241402D00();
  }

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2413FFF9C;
  v3 = *(v0 + 16);

  return sub_241400488();
}

uint64_t sub_2413FFF9C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}