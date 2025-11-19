uint64_t sub_24179CFF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24179D018(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24179D044()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_24179D084@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_24179D0D8(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

id aiBundle()
{
  v0 = aiBundle_AIBundle;
  if (!aiBundle_AIBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = aiBundle_AIBundle;
    aiBundle_AIBundle = v1;

    v0 = aiBundle_AIBundle;
  }

  return v0;
}

id audiogramIngestionImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = a1;
  v3 = aiBundle();
  v4 = [v1 imageNamed:v2 inBundle:v3];

  return v4;
}

id aiLocString(void *a1)
{
  v1 = a1;
  v2 = aiBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"AudiogramIngestion"];

  return v3;
}

id aiYodelLocString(void *a1)
{
  v1 = a1;
  v2 = aiBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"AudiogramIngestion-Yodel"];

  return v3;
}

id validateHearingLevel(void *a1)
{
  v1 = a1;
  [v1 doubleValue];
  if (v2 > 120.0 || ([v1 doubleValue], v3 < -20.0))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    v1 = v4;
LABEL_4:
    v5 = v1;
    v1 = v5;
    goto LABEL_5;
  }

  if (!v1)
  {
    goto LABEL_4;
  }

  [v1 doubleValue];
  if (v7 != 0.0)
  {
    goto LABEL_4;
  }

  v5 = &unk_2853655D8;
LABEL_5:

  return v5;
}

id snapToValidFrequency(void *a1)
{
  v1 = a1;
  if ([AIAudiogramValidFrequencies containsObject:v1])
  {
    v2 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy_;
    v11 = __Block_byref_object_dispose_;
    v12 = 0;
    v3 = [v1 intValue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __snapToValidFrequency_block_invoke;
    v5[3] = &unk_278CEC128;
    v6 = v3;
    v5[4] = &v7;
    [AIAudiogramValidFrequencies enumerateObjectsUsingBlock:v5];
    v2 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v2;
}

void sub_24179D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void __snapToValidFrequency_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = v8 - [v7 intValue];
  if (v9 < 0)
  {
    v9 = -v9;
  }

  if (vcvtd_n_f64_s32([v7 intValue], 3uLL) >= v9)
  {
    v11 = AXLogAudiogram();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v13[0] = 67109378;
      v13[1] = v12;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_24179B000, v11, OS_LOG_TYPE_INFO, "Shifting frequency %i -> %@", v13, 0x12u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10 >= [v7 intValue])
    {
      goto LABEL_10;
    }
  }

  *a4 = 1;
LABEL_10:
}

id labelForSymbolType(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 8)
  {
    if (a1 != 4)
    {
      if (a1 != 8)
      {
        goto LABEL_12;
      }

      v3 = @"AudiogramIngestionSymbolSquareTitle";
      goto LABEL_11;
    }

    v4 = @"AudiogramIngestionSymbolCircleTitle";
LABEL_9:
    v2 = aiLocString(v4);
    goto LABEL_12;
  }

  if (a1 != 9)
  {
    if (a1 != 11)
    {
      goto LABEL_12;
    }

    v4 = @"AudiogramIngestionSymbolCrossTitle";
    goto LABEL_9;
  }

  v3 = @"AudiogramIngestionSymbolTriangleTitle";
LABEL_11:
  v2 = aiYodelLocString(v3);
LABEL_12:

  return v2;
}

id filledImageForSymbolType(uint64_t a1)
{
  v3 = a1 - 4;
  if (a1 - 4) <= 7 && ((0xB1u >> v3))
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:{off_278CEC1A8[v3], v1}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id unfilledImageForSymbolType(uint64_t a1)
{
  v3 = a1 - 4;
  if (a1 - 4) <= 7 && ((0xB1u >> v3))
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:{off_278CEC1E8[v3], v1}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id metadataForHKAudiogramSample()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v0 = getHKMetadataKeyWasUserEnteredSymbolLoc_ptr;
  v13 = getHKMetadataKeyWasUserEnteredSymbolLoc_ptr;
  if (!getHKMetadataKeyWasUserEnteredSymbolLoc_ptr)
  {
    v1 = HealthKitLibrary();
    v11[3] = dlsym(v1, "HKMetadataKeyWasUserEntered");
    getHKMetadataKeyWasUserEnteredSymbolLoc_ptr = v11[3];
    v0 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v0)
  {
    goto LABEL_10;
  }

  v2 = *v0;
  v14 = v2;
  v3 = MEMORY[0x277CBEC38];
  v16[0] = MEMORY[0x277CBEC38];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_ptr;
  v13 = get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_ptr;
  if (!get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_ptr)
  {
    v5 = HealthKitLibrary();
    v11[3] = dlsym(v5, "_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstParty");
    get_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstPartySymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
LABEL_10:
    metadataForHKAudiogramSample_cold_1();
    __break(1u);
  }

  v15 = *v4;
  v16[1] = v3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = v15;
  v8 = [v6 dictionaryWithObjects:v16 forKeys:&v14 count:2];

  return v8;
}

void sub_24179D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHKMetadataKeyWasUserEnteredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKMetadataKeyWasUserEntered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKMetadataKeyWasUserEnteredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HealthKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CEC170;
    v5 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_24179E448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24179FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417A0408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getHKUnitClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass;
  v7 = getHKUnitClass_softClass;
  if (!getHKUnitClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417A071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417A0BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417A0CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKQuantityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKQuantityClass_softClass;
  v7 = getHKQuantityClass_softClass;
  if (!getHKQuantityClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKQuantityClass_block_invoke;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKQuantityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417A12E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSensitivityTestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSensitivityTestClass_softClass;
  v7 = getHKAudiogramSensitivityTestClass_softClass;
  if (!getHKAudiogramSensitivityTestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSensitivityTestClass_block_invoke;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSensitivityTestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417A13C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_0();
  }
}

void HealthKitLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CEC338;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getHKSingleAudiogramChartViewControllerClass_block_invoke(uint64_t a1)
{
  HealthUILibrary();
  result = objc_getClass("HKSingleAudiogramChartViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSingleAudiogramChartViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKSingleAudiogramChartViewControllerClass_block_invoke_cold_1();
    return HealthUILibrary();
  }

  return result;
}

uint64_t HealthUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HealthUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CEC350;
    v5 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HealthUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getHKAudiogramSampleClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKAudiogramSample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSampleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSampleClass_block_invoke_cold_1();
    return __getHKUnitClass_block_invoke(v3);
  }

  return result;
}

Class __getHKUnitClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKUnitClass_block_invoke_cold_1();
    return __getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthUILibrary();
  result = dlsym(v2, "HKAudiogramEarLocalizedDisplayNameForEar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKQuantityClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityTestClass_block_invoke(v3);
  }

  return result;
}

Class __getHKAudiogramSensitivityTestClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKAudiogramSensitivityTest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityTestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSensitivityTestClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityPointClass_block_invoke(v3);
  }

  return result;
}

void __getHKAudiogramSensitivityPointClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  HealthKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKAudiogramSensitivityPoint");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityPointClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getHKAudiogramSensitivityPointClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2417A2604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKUnitClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass_0;
  v7 = getHKUnitClass_softClass_0;
  if (!getHKUnitClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke_0;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417A4120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417A44DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getHKHealthStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_1();
  }
}

void HealthKitLibrary_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CEC3E0;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getHKSingleAudiogramChartViewControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CEC3F8;
    v6 = 0;
    HealthUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (HealthUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKSingleAudiogramChartViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKSingleAudiogramChartViewControllerClass_block_invoke_cold_1();
  }

  getHKSingleAudiogramChartViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getHKUnitClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_1();
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKUnitClass_block_invoke_cold_1();
    return [(AIAudiogramCropResult *)v3 description];
  }

  return result;
}

void sub_2417A7F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AX_CGRectGetCenter(double a1, double a2, double a3, double a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getAX_CGRectGetCenterSymbolLoc_ptr;
  v15 = getAX_CGRectGetCenterSymbolLoc_ptr;
  if (!getAX_CGRectGetCenterSymbolLoc_ptr)
  {
    v9 = AccessibilityUtilitiesLibrary();
    v13[3] = dlsym(v9, "AX_CGRectGetCenter");
    getAX_CGRectGetCenterSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    v11 = metadataForHKAudiogramSample_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  return v8(a1, a2, a3, a4);
}

uint64_t soft_AX_CGPointGetDistanceToPoint(double a1, double a2, double a3, double a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getAX_CGPointGetDistanceToPointSymbolLoc_ptr;
  v15 = getAX_CGPointGetDistanceToPointSymbolLoc_ptr;
  if (!getAX_CGPointGetDistanceToPointSymbolLoc_ptr)
  {
    v9 = AccessibilityUtilitiesLibrary();
    v13[3] = dlsym(v9, "AX_CGPointGetDistanceToPoint");
    getAX_CGPointGetDistanceToPointSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    v11 = metadataForHKAudiogramSample_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  return v8(a1, a2, a3, a4);
}

void sub_2417A8CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2417A9434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_2417A9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_2417AA31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417AA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417AA884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417AA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKUnitClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass_1;
  v7 = getHKUnitClass_softClass_1;
  if (!getHKUnitClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke_1;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417ABAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKQuantityClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKQuantityClass_softClass_0;
  v7 = getHKQuantityClass_softClass_0;
  if (!getHKQuantityClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKQuantityClass_block_invoke_0;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKQuantityClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417AC348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSensitivityPointClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSensitivityPointClass_softClass_0;
  v7 = getHKAudiogramSensitivityPointClass_softClass_0;
  if (!getHKAudiogramSensitivityPointClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSensitivityPointClass_block_invoke_0;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSensitivityPointClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417AC554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSampleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSampleClass_softClass_0;
  v7 = getHKAudiogramSampleClass_softClass_0;
  if (!getHKAudiogramSampleClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSampleClass_block_invoke_0;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSampleClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417AC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSensitivityTestClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSensitivityTestClass_softClass_0;
  v7 = getHKAudiogramSensitivityTestClass_softClass_0;
  if (!getHKAudiogramSensitivityTestClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSensitivityTestClass_block_invoke_0;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSensitivityTestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417AF32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CECA80;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getHKUnitClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKUnit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKUnitClass_block_invoke_cold_1();
    HealthKitLibrary_2();
  }
}

void HealthKitLibrary_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CECA98;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getHKQuantityClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityPointClass_block_invoke_0(v3);
  }

  return result;
}

Class __getHKAudiogramSensitivityPointClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("HKAudiogramSensitivityPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityPointClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSensitivityPointClass_block_invoke_cold_1();
    return __getHKAudiogramSampleClass_block_invoke_0(v3);
  }

  return result;
}

Class __getHKAudiogramSampleClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("HKAudiogramSample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSampleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSampleClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityTestClass_block_invoke_0(v3);
  }

  return result;
}

void __getHKAudiogramSensitivityTestClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKAudiogramSensitivityTest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityTestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKAudiogramSensitivityTestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_0();
  }
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2417B3B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CECB18;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (HealthKitLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void __getHKUnitPreferenceControllerClass_block_invoke(uint64_t a1)
{
  HealthUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKUnitPreferenceController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitPreferenceControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKUnitPreferenceControllerClass_block_invoke_cold_1();
    HealthUILibrary_0();
  }
}

void HealthUILibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthUILibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CECB30;
    v3 = 0;
    HealthUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthUILibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getHKSampleTypeUpdateControllerClass_block_invoke(uint64_t a1)
{
  HealthUILibrary_0();
  result = objc_getClass("HKSampleTypeUpdateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSampleTypeUpdateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKSampleTypeUpdateControllerClass_block_invoke_cold_1();
    return __getHKAudiogramChartViewControllerClass_block_invoke(v3);
  }

  return result;
}

AIAudiogramLoadingViewController *__getHKAudiogramChartViewControllerClass_block_invoke(uint64_t a1)
{
  HealthUILibrary_0();
  result = objc_getClass("HKAudiogramChartViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramChartViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramChartViewControllerClass_block_invoke_cold_1();
    return [(AIAudiogramLoadingViewController *)v3 initWithTitle:v4 style:v5, v6];
  }

  return result;
}

void sub_2417B57BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getHKUnitClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass_2;
  v7 = getHKUnitClass_softClass_2;
  if (!getHKUnitClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke_2;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417B59EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417B6688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417B821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id Soft_HKAudiogramEarLocalizedDisplayNameForEar(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr_0;
  v10 = getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr_0;
  if (!getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke_0;
    v6[3] = &unk_278CEC150;
    v6[4] = &v7;
    __getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke_0(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = metadataForHKAudiogramSample_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(a1, 0);

  return v3;
}

void sub_2417B9280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id getHKQuantityClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKQuantityClass_softClass_1;
  v7 = getHKQuantityClass_softClass_1;
  if (!getHKQuantityClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKQuantityClass_block_invoke_1;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKQuantityClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417B9444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKUnitClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKUnit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKUnitClass_block_invoke_cold_1();
    HealthKitLibrary_3();
  }
}

void HealthKitLibrary_3()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_4)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_4;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CECC38;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_4)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_4 = result;
  return result;
}

Class __getHKAudiogramSampleClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_3();
  result = objc_getClass("HKAudiogramSample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSampleClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSampleClass_block_invoke_cold_1();
    return __getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HealthUILibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CECC50;
    v7 = 0;
    HealthUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v3 = v5[0];
    v2 = HealthUILibraryCore_frameworkLibrary_2;
    if (HealthUILibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = HealthUILibraryCore_frameworkLibrary_2;
LABEL_5:
  result = dlsym(v2, "HKAudiogramEarLocalizedDisplayNameForEar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getHKQuantityClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_3();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityPointClass_block_invoke_1(v3);
  }

  return result;
}

AIAudiogramAxis *__getHKAudiogramSensitivityPointClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_3();
  result = objc_getClass("HKAudiogramSensitivityPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityPointClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSensitivityPointClass_block_invoke_cold_1();
    return [(AIAudiogramAxis *)v3 initWithAxis:v4 values:v5, v6];
  }

  return result;
}

void sub_2417BA20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2417BABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417BF2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak(&a40);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2417BFD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getHKHealthStoreClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CECD60;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v4[0];
    if (HealthKitLibraryCore_frameworkLibrary_5)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void __getHKSampleTypeUpdateControllerClass_block_invoke_0(uint64_t a1)
{
  HealthUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKSampleTypeUpdateController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSampleTypeUpdateControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKSampleTypeUpdateControllerClass_block_invoke_cold_1();
    HealthUILibrary_1();
  }
}

void HealthUILibrary_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_3)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthUILibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CECD78;
    v3 = 0;
    HealthUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthUILibraryCore_frameworkLibrary_3)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getHKUnitPreferenceControllerClass_block_invoke_0(uint64_t a1)
{
  HealthUILibrary_1();
  result = objc_getClass("HKUnitPreferenceController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitPreferenceControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKUnitPreferenceControllerClass_block_invoke_cold_1();
    return __getHKAudiogramChartViewControllerClass_block_invoke_0(v3);
  }

  return result;
}

Class __getHKAudiogramChartViewControllerClass_block_invoke_0(uint64_t a1)
{
  HealthUILibrary_1();
  result = objc_getClass("HKAudiogramChartViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramChartViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramChartViewControllerClass_block_invoke_cold_1();
    return __getAXPerformSafeBlockSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAXPerformSafeBlockSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CECD90;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "AXPerformSafeBlock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformSafeBlockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_2417C32E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2417C396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417C6AD8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getHKUnitClass_3()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass_3;
  v7 = getHKUnitClass_softClass_3;
  if (!getHKUnitClass_softClass_3)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke_3;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417C6E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417C7AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2417C89D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSampleClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSampleClass_softClass_2;
  v7 = getHKAudiogramSampleClass_softClass_2;
  if (!getHKAudiogramSampleClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSampleClass_block_invoke_2;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSampleClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417CAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKQuantityClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKQuantityClass_softClass_2;
  v7 = getHKQuantityClass_softClass_2;
  if (!getHKQuantityClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKQuantityClass_block_invoke_2;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKQuantityClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417CBC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKAudiogramSensitivityTestClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKAudiogramSensitivityTestClass_softClass_1;
  v7 = getHKAudiogramSensitivityTestClass_softClass_1;
  if (!getHKAudiogramSensitivityTestClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKAudiogramSensitivityTestClass_block_invoke_1;
    v3[3] = &unk_278CEC150;
    v3[4] = &v4;
    __getHKAudiogramSensitivityTestClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2417CBD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKUnitClass_block_invoke_3(uint64_t a1)
{
  HealthKitLibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKUnit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKUnitClass_block_invoke_cold_1();
    HealthKitLibrary_4();
  }
}

void HealthKitLibrary_4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_6)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_6;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CED0E0;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_6)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void __getPHPickerConfigurationClass_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPickerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHPickerConfigurationClass_block_invoke_cold_1();
    PhotosUILibrary();
  }
}

void PhotosUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PhotosUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CED0F8;
    v3 = 0;
    PhotosUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPHPickerFilterClass_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  result = objc_getClass("PHPickerFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHPickerFilterClass_block_invoke_cold_1();
    return __getPHPickerViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getPHPickerViewControllerClass_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  result = objc_getClass("PHPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHPickerViewControllerClass_block_invoke_cold_1();
    return __getHKAudiogramSampleClass_block_invoke_2(v3);
  }

  return result;
}

Class __getHKAudiogramSampleClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_4();
  result = objc_getClass("HKAudiogramSample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSampleClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSampleClass_block_invoke_cold_1();
    return __getHKQuantityClass_block_invoke_2(v3);
  }

  return result;
}

Class __getHKQuantityClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_4();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityTestClass_block_invoke_1(v3);
  }

  return result;
}

Class __getHKAudiogramSensitivityTestClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_4();
  result = objc_getClass("HKAudiogramSensitivityTest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityTestClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSensitivityTestClass_block_invoke_cold_1();
    return __getHKAudiogramSensitivityPointClass_block_invoke_2(v3);
  }

  return result;
}

AIAudiogramAssetManager *__getHKAudiogramSensitivityPointClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_4();
  result = objc_getClass("HKAudiogramSensitivityPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKAudiogramSensitivityPointClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKAudiogramSensitivityPointClass_block_invoke_cold_1();
    return [(AIAudiogramAssetManager *)v3 initWithDelegate:v4, v5];
  }

  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CED158;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2417CDB7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2417CDB9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

id sub_2417CDBDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2417E43DC();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_2417E43BC();
      sub_2417E43EC();
      sub_2417E43FC();
      sub_2417E43CC();
      --v2;
    }

    while (v2);
  }

  sub_2417CE54C();
  v6 = sub_2417E422C();

  v7 = [v1 objectForKeyedSubscript_];

  return v7;
}

void sub_2417CDCF0(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        CGAffineTransformMakeRotation(&v26, 3.14159265);
        CGAffineTransformScale(&v25, &v26, -1.0, -1.0);
        v23 = *&v25.c;
        v24 = *&v25.a;
        v11 = *&v25.tx;
        goto LABEL_21;
      }

      if (a1 != 8)
      {
        goto LABEL_22;
      }

      v13 = 1.57079633;
LABEL_19:
      CGAffineTransformMakeRotation(&v26, v13);
      goto LABEL_20;
    }

    if (a1 != 5)
    {
      v13 = -1.57079633;
      goto LABEL_19;
    }

    v12 = -1.0;
LABEL_16:
    CGAffineTransformMakeScale(&v26, v12, -1.0);
    goto LABEL_20;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v13 = 3.14159265;
      goto LABEL_19;
    }

    v12 = 1.0;
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v23 = xmmword_2417E8420;
    v24 = xmmword_2417E8430;
    v11 = 0uLL;
LABEL_21:
    v22 = v11;
    CGAffineTransformMakeTranslation(&v26, -0.5, -0.5);
    v27.origin.x = a4;
    v27.origin.y = a5;
    v27.size.width = a6;
    v27.size.height = a7;
    v28 = CGRectApplyAffineTransform(v27, &v26);
    *&v26.a = v24;
    *&v26.c = v23;
    *&v26.tx = v22;
    v29 = CGRectApplyAffineTransform(v28, &v26);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    CGAffineTransformMakeTranslation(&v26, 0.5, 0.5);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectApplyAffineTransform(v30, &v26);
    v18 = v31.origin.x;
    v19 = v31.origin.y;
    v20 = v31.size.width;
    v21 = v31.size.height;
    CGRectGetMinX(v31);
    v32.origin.x = v18;
    v32.origin.y = v19;
    v32.size.width = v20;
    v32.size.height = v21;
    CGRectGetMinY(v32);
    v33.origin.x = v18;
    v33.origin.y = v19;
    v33.size.width = v20;
    v33.size.height = v21;
    CGRectGetWidth(v33);
    v34.origin.x = v18;
    v34.origin.y = v19;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetHeight(v34);
    return;
  }

  if (a1 == 2)
  {
    CGAffineTransformMakeScale(&v26, -1.0, 1.0);
LABEL_20:
    v23 = *&v26.c;
    v24 = *&v26.a;
    v11 = *&v26.tx;
    goto LABEL_21;
  }

LABEL_22:
  type metadata accessor for CGImagePropertyOrientation(0);
  sub_2417E451C();
  __break(1u);
}

void sub_2417CDFA0(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(v2);
  BitsPerPixel = CGImageGetBitsPerPixel(v2);
  v7 = a1 * BitsPerPixel;
  if ((a1 * BitsPerPixel) >> 64 != v7 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = CGImageGetBitsPerComponent(v2);
  if (!v8)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v9 = v8;
  if (v7 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_25;
  }

  v11 = CGImageGetColorSpace(v2);
  if (!v11)
  {
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v12 = v11;
  BitmapInfo = CGImageGetBitmapInfo(v2);
  v14 = __CGBitmapContextCreate(a1, a2, BitsPerComponent, v7 / v9, v12, BitmapInfo);

  if (v14)
  {
    CGContextSetInterpolationQuality(v14, kCGInterpolationHigh);
    v15 = v14;
    sub_2417E42DC();

    CGBitmapContextCreateImage(v15);
  }
}

uint64_t sub_2417CE178(uint64_t a1, id *a2)
{
  result = sub_2417E417C();
  *a2 = 0;
  return result;
}

uint64_t sub_2417CE1F0(uint64_t a1, id *a2)
{
  v3 = sub_2417E418C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2417CE270@<X0>(uint64_t *a1@<X8>)
{
  sub_2417E419C();
  v2 = sub_2417E416C();

  *a1 = v2;
  return result;
}

uint64_t sub_2417CE2B4()
{
  v0 = sub_2417E419C();
  v1 = MEMORY[0x245CEF780](v0);

  return v1;
}

uint64_t sub_2417CE2F0()
{
  sub_2417E419C();
  sub_2417E41CC();
}

uint64_t sub_2417CE344()
{
  sub_2417E419C();
  sub_2417E452C();
  sub_2417E41CC();
  v0 = sub_2417E454C();

  return v0;
}

uint64_t sub_2417CE3B8()
{
  v0 = sub_2417E419C();
  v2 = v1;
  if (v0 == sub_2417E419C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2417E450C();
  }

  return v5 & 1;
}

uint64_t sub_2417CE440@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2417E416C();

  *a1 = v2;
  return result;
}

uint64_t sub_2417CE488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2417E419C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2417CE4B4(uint64_t a1)
{
  v2 = sub_2417CE6A8(&qword_27E54B3D0);
  v3 = sub_2417CE6A8(&qword_27E54B3D8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2417CE54C()
{
  result = qword_27E54B440;
  if (!qword_27E54B440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E54B440);
  }

  return result;
}

void sub_2417CE5F4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2417CE6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2417CE728()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency];
  if (!v2)
  {
    v9 = [v0 textLabel];
    if (!v9)
    {
      return;
    }

    v36 = v9;
    [v9 setText_];
    goto LABEL_9;
  }

  v36 = v2;
  if (sub_2417E42AC() >= 1000)
  {
    v10 = sub_2417E416C();
    v11 = aiLocString(v10);

    v6 = sub_2417E419C();
    v8 = v12;

    if (__ROR8__(0x1CAC083126E978D5 * sub_2417E42AC() + 0x10624DD2F1A9FB8, 3) < 0x4189374BC6A7EFuLL)
    {
      v28 = [v36 integerValue] / 1000;
      v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B3F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2417E8670;
    [v36 doubleValue];
    v14 = MEMORY[0x277D83A80];
    *(v13 + 56) = MEMORY[0x277D839F8];
    *(v13 + 64) = v14;
    *(v13 + 32) = v15 / 1000.0;
    v16 = sub_2417E41BC();
    v18 = v17;
    v19 = [v1 textLabel];
    if (!v19)
    {

      goto LABEL_19;
    }

    v20 = v19;
    v21 = sub_2417E416C();
    v22 = aiLocString(v21);

    sub_2417E419C();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2417E8680;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = sub_2417CEE34();
    *(v23 + 32) = v16;
    *(v23 + 40) = v18;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    *(v23 + 64) = v25;
    *(v23 + 72) = v6;
    *(v23 + 80) = v8;
    sub_2417E41BC();

    v26 = sub_2417E416C();

    [v20 setText_];

LABEL_9:
    v27 = v36;
LABEL_14:

    return;
  }

  v3 = v36;
  v4 = sub_2417E416C();
  v5 = aiLocString(v4);

  v6 = sub_2417E419C();
  v8 = v7;

LABEL_12:
  v29 = [v1 textLabel];
  if (v29)
  {
    v30 = v29;
    v31 = sub_2417E416C();
    v32 = aiLocString(v31);

    sub_2417E419C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B3F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2417E8680;
    *(v33 + 56) = sub_2417CE54C();
    *(v33 + 64) = sub_2417CEE88();
    *(v33 + 32) = v3;
    *(v33 + 96) = MEMORY[0x277D837D0];
    *(v33 + 104) = sub_2417CEE34();
    *(v33 + 72) = v6;
    *(v33 + 80) = v8;
    v35 = v3;
    sub_2417E41BC();

    v34 = sub_2417E416C();

    [v30 setText_];

    v27 = v35;
    goto LABEL_14;
  }

LABEL_19:
}

id sub_2417CED84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramFrequencySelectionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2417CEE34()
{
  result = qword_27E54B3F8;
  if (!qword_27E54B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B3F8);
  }

  return result;
}

unint64_t sub_2417CEE88()
{
  result = qword_27E54B450;
  if (!qword_27E54B450)
  {
    sub_2417CE54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B450);
  }

  return result;
}

char *AudiogramFrequencySelectionViewController.init(title:detailText:selectedFrequencies:delegate:isModal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_tableViewHeightConstraint] = 0;
  *&v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_audiogram] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_frequencies] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies] = v10;
  v11 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_continueButton;
  *&v7[v11] = [objc_opt_self() boldButton];
  *&v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton] = 0;
  v7[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal] = a7;
  v12 = sub_2417E416C();

  v13 = sub_2417E416C();

  v38.receiver = v7;
  v38.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  v14 = objc_msgSendSuper2(&v38, sel_initWithTitle_detailText_symbolName_adoptTableViewScrollView_, v12, v13, 0, 1);

  swift_unknownObjectWeakAssign();
  v15 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies;
  swift_beginAccess();
  *&v14[v15] = a5;
  v16 = v14;

  v17 = AIAudiogramValidFrequencies;
  sub_2417CE54C();
  v18 = v17;
  sub_2417E423C();

  v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v16 action:sel_cancelTapped_];
  if (a7)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v16 action:sel_doneTapped_];
    v21 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton;
    v22 = *&v16[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton];
    *&v16[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton] = v20;

    v23 = v16;
    v24 = [v23 navigationItem];
    v25 = *&v16[v21];
    [v24 setRightBarButtonItem_];

    [v23 setModalInPresentation_];
  }

  else
  {
    v26 = [v16 navigationItem];
    [v26 setRightBarButtonItem_];

    v27 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_continueButton;
    v28 = *&v16[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_continueButton];
    v29 = sub_2417E416C();
    v30 = aiLocString(v29);

    sub_2417E419C();
    v31 = sub_2417E416C();

    [v28 setTitle:v31 forState:0];

    v32 = *&v16[v27];
    v33 = v16;
    [v32 addTarget:v33 action:sel_continueToIndividualSensitivityPointInput_ forControlEvents:64];
    v34 = [v33 buttonTray];

    [v34 addButton_];
    sub_2417CFB1C();
  }

  v35 = v16;
  v36 = [v35 navigationItem];
  [v36 setBackButtonDisplayMode_];

  swift_unknownObjectRelease();
  return v35;
}

void AudiogramFrequencySelectionViewController.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v2 = [objc_opt_self() boldButton];
  sub_2417E441C();
  __break(1u);
}

void AudiogramFrequencySelectionViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_tableViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_audiogram) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_frequencies) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies) = v1;
  v2 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_continueButton;
  *(v0 + v2) = [objc_opt_self() boldButton];
  *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton) = 0;
  sub_2417E441C();
  __break(1u);
}

id sub_2417CF5D8(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong getCurrentSelectedFrequencies];
    swift_unknownObjectRelease();
    sub_2417CE54C();
    v5 = sub_2417E424C();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies;
  swift_beginAccess();
  *&v1[v6] = v5;

  result = [v1 tableView];
  if (result)
  {
    v8 = result;
    [result reloadData];

    return sub_2417CFB1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2417CF738()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = [v0 headerView];
  LODWORD(v2) = 1036831949;
  [v1 setTitleHyphenationFactor_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v4 = [v0 tableView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setDataSource_];

  v6 = [v0 tableView];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setDelegate_];

  v8 = [v0 tableView];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [objc_opt_self() systemGroupedBackgroundColor];
  [v11 setBackgroundColor_];

  v13 = [v0 tableView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  type metadata accessor for AudiogramFrequencySelectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v16)
  {
    sub_2417E419C();
    v16 = sub_2417E416C();
  }

  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];
}

id sub_2417CFB1C()
{
  v1 = *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_continueButton);
  v2 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    v4 = sub_2417E442C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v1 setEnabled_];
  result = *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton);
  if (result)
  {
    v6 = *(v0 + v2);
    if (v6 >> 62)
    {
      v8 = *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_doneButton);
      v7 = sub_2417E442C();
      result = v8;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return [result setEnabled_];
  }

  return result;
}

unint64_t sub_2417CFC08(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D75B48]) init];
  result = sub_2417E40CC();
  v6 = *(v1 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_frequencies);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v21 = result;

    v7 = MEMORY[0x245CEF900](v21, v6);

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 8 * result + 32);
LABEL_5:
  type metadata accessor for AudiogramFrequencySelectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    sub_2417E419C();
    v9 = sub_2417E416C();
  }

  v10 = sub_2417E40AC();
  v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:v10];

  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency);
    *(v12 + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency) = v7;
    v15 = v7;

    sub_2417CE728();
    v16 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies;
    v17 = swift_beginAccess();
    v18 = *(v2 + v16);
    v23 = v15;
    MEMORY[0x28223BE20](v17);
    v22[2] = &v23;

    v19 = sub_2417D11B4(sub_2417D1440, v22, v18);

    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 0;
    }

    [v13 setAccessoryType_];

    return v13;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_2417CFF60()
{
  v1 = *(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_frequencies);
  if (v1 >> 62)
  {
    return sub_2417E442C();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_2417CFFD0(void *a1)
{
  v2 = v1;
  v4 = sub_2417E40AC();
  [a1 deselectRowAtIndexPath:v4 animated:1];

  v5 = sub_2417E40AC();
  v52 = [a1 cellForRowAtIndexPath_];

  if (v52)
  {
    type metadata accessor for AudiogramFrequencySelectionCell();
    v6 = swift_dynamicCastClass();
    if (v6 && (v7 = *(v6 + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency)) != 0)
    {
      v8 = v6;
      v9 = OBJC_IVAR___AIAudiogramFrequencySelectionViewController_selectedFrequencies;
      v10 = swift_beginAccess();
      v11 = *&v2[v9];
      aBlock = v7;
      MEMORY[0x28223BE20](v10);
      v49[2] = &aBlock;
      v12 = v7;

      v13 = sub_2417D11B4(sub_2417D1688, v49, v11);

      if (v13)
      {
        v14 = *&v2[v9];

        v15 = sub_2417D0758(v12, v14);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          if (v2[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal] == 1)
          {
            v18 = sub_2417E416C();
            v19 = aiLocString(v18);

            sub_2417E419C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B3F0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_2417E8670;
            *(v20 + 56) = sub_2417CE54C();
            *(v20 + 64) = sub_2417CEE88();
            *(v20 + 32) = v12;
            v21 = v12;
            sub_2417E41BC();

            v22 = sub_2417E416C();
            v23 = aiLocString(v22);

            sub_2417E419C();
            v24 = sub_2417E416C();

            v25 = sub_2417E416C();

            v50 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:0];
            v51 = v15;
            v26 = v50;

            v27 = sub_2417E416C();
            v28 = aiLocString(v27);

            sub_2417E419C();
            v29 = sub_2417E416C();

            v57 = nullsub_1;
            v58 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v54 = 1107296256;
            v55 = sub_2417D084C;
            v56 = &block_descriptor;
            v30 = _Block_copy(&aBlock);

            v31 = objc_opt_self();
            v32 = [v31 actionWithTitle:v29 style:1 handler:v30];
            _Block_release(v30);

            [v26 addAction_];
            v33 = sub_2417E416C();
            v34 = aiLocString(v33);

            sub_2417E419C();
            v35 = swift_allocObject();
            v36 = v51;
            v35[2] = v2;
            v35[3] = v36;
            v35[4] = v8;
            v37 = v2;
            v38 = v52;
            v39 = sub_2417E416C();

            v57 = sub_2417D14CC;
            v58 = v35;
            aBlock = MEMORY[0x277D85DD0];
            v54 = 1107296256;
            v55 = sub_2417D084C;
            v56 = &block_descriptor_4;
            v40 = _Block_copy(&aBlock);

            v41 = [v31 actionWithTitle:v39 style:0 handler:v40];
            _Block_release(v40);

            v42 = v50;
            [v50 addAction_];

            [v37 presentViewController:v42 animated:1 completion:0];
          }

          else
          {
            swift_beginAccess();
            v45 = sub_2417D09AC(v15);
            swift_endAccess();

            [v8 setAccessoryType_];
          }
        }
      }

      else
      {
        swift_beginAccess();
        v43 = v12;
        MEMORY[0x245CEF790]();
        if (*((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2417E425C();
        }

        sub_2417E427C();
        swift_endAccess();
        [v8 setAccessoryType_];
        if (v2[OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal] == 1)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong didSelectNodeToAddWithSelectedFrequency_];
            swift_unknownObjectRelease();
          }
        }
      }

      sub_2417CFB1C();
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        v47 = v46;
        sub_2417CE54C();

        v48 = sub_2417E422C();

        [v47 updateSelectedFrequenciesWithSelectedFrequencies_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

unint64_t sub_2417D0758(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_2417E442C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245CEF900](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_2417CE54C();
    v8 = sub_2417E432C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_2417D084C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2417D08B4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  v6 = sub_2417D09AC(a3);
  swift_endAccess();

  [a4 setAccessoryType_];
  sub_2417CFB1C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_2417CE54C();

    v9 = sub_2417E422C();

    [v8 updateSelectedFrequenciesWithSelectedFrequencies_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2417D09AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2417D1388(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_2417D0B38()
{
  if (*(v0 + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal) == 1)
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result showIndividualFirstSensitivityPointInputViewController];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id AudiogramFrequencySelectionViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2417E416C();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_2417E416C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_2417E416C();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id AudiogramFrequencySelectionViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_2417E416C();

  if (a4)
  {
    v10 = sub_2417E416C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id AudiogramFrequencySelectionViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_2417E416C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2417E416C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2417E416C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id AudiogramFrequencySelectionViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_2417E416C();

  if (a4)
  {
    v12 = sub_2417E416C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id sub_2417D10DC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_2417D11B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245CEF900](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2417E442C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2417D12DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2417D1388(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2417E442C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id AudiogramDetectorResult.__allocating_init(graph:symbols:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_graph] = a1;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_symbols] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AudiogramDetectorResult.init(graph:symbols:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_graph] = a1;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_symbols] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudiogramDetectorResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AudiogramDetectorResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AudiogramSymbolDetectorResult.labelName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName);

  return v1;
}

uint64_t sub_2417D1A88()
{
  sub_2417E436C();
  MEMORY[0x245CEF750](0xD000000000000023, 0x80000002417EC3B0);
  type metadata accessor for CGRect(0);
  sub_2417E440C();
  MEMORY[0x245CEF750](0x614E6C6562616C20, 0xEB000000003A656DLL);
  MEMORY[0x245CEF750](*(v0 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName), *(v0 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName + 8));
  MEMORY[0x245CEF750](0x656469666E6F6320, 0xEC0000003A65636ELL);
  sub_2417E428C();
  MEMORY[0x245CEF750](62, 0xE100000000000000);
  return 0;
}

void sub_2417D1BC8(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box);
  v8 = *(v4 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8);
  v9 = *(v4 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16);
  v10 = *(v4 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24);
  CGAffineTransformMakeTranslation(&v24, -0.5, -0.5);
  v25.origin.x = v7;
  v25.origin.y = v8;
  v25.size.width = v9;
  v25.size.height = v10;
  v26 = CGRectApplyAffineTransform(v25, &v24);
  v24.a = 1.0;
  v24.b = 0.0;
  v24.c = 0.0;
  v24.d = 1.0;
  v24.tx = 0.0;
  v24.ty = 0.0;
  v27 = CGRectApplyAffineTransform(v26, &v24);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  CGAffineTransformMakeTranslation(&v24, 0.5, 0.5);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v29 = CGRectApplyAffineTransform(v28, &v24);
  v15 = v29.origin.x;
  v16 = v29.origin.y;
  v17 = v29.size.width;
  v18 = v29.size.height;
  v19 = CGRectGetMinX(v29) * a1;
  v30.origin.x = v15;
  v30.origin.y = v16;
  v30.size.width = v17;
  v30.size.height = v18;
  v20 = CGRectGetMinY(v30) * a2;
  v31.origin.x = v15;
  v31.origin.y = v16;
  v31.size.width = v17;
  v31.size.height = v18;
  v21 = CGRectGetWidth(v31) * a1;
  v32.origin.x = v15;
  v32.origin.y = v16;
  v32.size.width = v17;
  v32.size.height = v18;
  v33.size.height = CGRectGetHeight(v32) * a2;
  v33.origin.x = v19;
  v33.origin.y = v20;
  v33.size.width = v21;
  CGRectOffset(v33, a3, a4);
}

uint64_t sub_2417D1FC8()
{
  v1 = *v0;
  sub_2417E452C();
  MEMORY[0x245CEFAB0](v1);
  return sub_2417E454C();
}

uint64_t sub_2417D203C()
{
  v1 = *v0;
  sub_2417E452C();
  MEMORY[0x245CEFAB0](v1);
  return sub_2417E454C();
}

uint64_t sub_2417D2080()
{
  v1 = 0x6D614E6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_2417D20DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2417D51F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2417D211C(uint64_t a1)
{
  v2 = sub_2417D4A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2417D2158(uint64_t a1)
{
  v2 = sub_2417D4A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2417D21C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2417D4A2C();
  sub_2417E456C();
  v9 = *(v3 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16);
  v12 = *(v3 + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box);
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGRect(0);
  sub_2417D4A80(&qword_27E54B620);
  sub_2417E44CC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_2417E449C();
  LOBYTE(v12) = 2;
  sub_2417E44AC();
  return (*(v6 + 8))(v8, v5);
}

id AudiogramSymbolDetectorResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2417D4A2C();
  sub_2417E455C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for AudiogramSymbolDetectorResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_2417D4A80(&qword_27E54B630);
    sub_2417E448C();
    v9 = &v1[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box];
    v10 = v19;
    *v9 = v18;
    *(v9 + 1) = v10;
    LOBYTE(v18) = 1;
    v11 = sub_2417E445C();
    v13 = &v1[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v18) = 2;
    sub_2417E446C();
    *&v1[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_confidence] = v15;
    v16 = type metadata accessor for AudiogramSymbolDetectorResult();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2417D2694@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiogramSymbolDetectorResult();
  result = sub_2417E437C();
  *a1 = result;
  return result;
}

double sub_2417D2784()
{
  v1 = v0 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box;
  swift_beginAccess();
  return *v1;
}

id sub_2417D2854(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2417E416C();

  return v5;
}

uint64_t sub_2417D28C4()
{
  sub_2417E436C();
  MEMORY[0x245CEF750](0xD000000000000022, 0x80000002417EC420);
  swift_beginAccess();
  type metadata accessor for CGRect(0);
  sub_2417E440C();
  MEMORY[0x245CEF750](0x656469666E6F6320, 0xEC0000003A65636ELL);
  sub_2417E428C();
  MEMORY[0x245CEF750](62, 0xE100000000000000);
  return 0;
}

CGFloat sub_2417D29D8(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  CGAffineTransformMakeTranslation(&v18, -0.5, -0.5);
  v19.origin.x = v4;
  v19.origin.y = v5;
  v19.size.width = v6;
  v19.size.height = v7;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  *&v18.a = 0x3FF0000000000000uLL;
  v18.c = 0.0;
  v18.d = 1.0;
  *&v18.tx = 0uLL;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGAffineTransformMakeTranslation(&v18, 0.5, 0.5);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23 = CGRectApplyAffineTransform(v22, &v18);
  v12 = v23.origin.x;
  v13 = v23.origin.y;
  v14 = v23.size.width;
  v15 = v23.size.height;
  v16 = CGRectGetMinX(v23) * a1;
  v24.origin.x = v12;
  v24.origin.y = v13;
  v24.size.width = v14;
  v24.size.height = v15;
  CGRectGetMinY(v24);
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  CGRectGetWidth(v25);
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  CGRectGetHeight(v26);
  return v16;
}

void sub_2417D2CEC()
{
  v0 = sub_2417E409C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E408C();
  v4 = type metadata accessor for MindNetModelBoundingBox();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
  sub_2417E408C();
  v7 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence] = 0;
  swift_beginAccess();
  (*(v1 + 24))(&v5[v6], v3, v0);
  swift_endAccess();
  *&v5[v7] = 0;
  v8 = &v5[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
  *v8 = 0;
  *(v8 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v8 + 1) = _Q0;
  v14 = &v5[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className];
  *v14 = 0x6870617267;
  *(v14 + 1) = 0xE500000000000000;
  v27.receiver = v5;
  v27.super_class = v4;
  v15 = objc_msgSendSuper2(&v27, sel_init);
  (*(v1 + 8))(v3, v0);
  v16 = type metadata accessor for AudiogramGraphDetectorResult();
  v17 = objc_allocWithZone(v16);
  v18 = &v15[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
  MinX = CGRectGetMinX(*&v15[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect]);
  MinY = CGRectGetMinY(*v18);
  Width = CGRectGetWidth(*v18);
  Height = CGRectGetHeight(*v18);
  v23 = &v17[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box];
  *v23 = MinX;
  v23[1] = MinY;
  v23[2] = Width;
  v23[3] = Height;
  *&v17[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence] = *&v15[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence];
  v26.receiver = v17;
  v26.super_class = v16;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  qword_27E54B5E0 = v24;
}

id static AudiogramGraphDetectorResult.defaultResult.getter()
{
  if (qword_27E54B388 != -1)
  {
    swift_once();
  }

  v1 = qword_27E54B5E0;

  return v1;
}

uint64_t sub_2417D3070()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_2417D30A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v5 || (sub_2417E450C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2417E450C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2417D3198(uint64_t a1)
{
  v2 = sub_2417D4AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2417D31D4(uint64_t a1)
{
  v2 = sub_2417D4AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2417D3228(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2417D3264(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2417D4AE8();
  sub_2417E456C();
  v9 = (v3 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  v10 = v9[1];
  v13 = *v9;
  v14 = v10;
  v12[15] = 0;
  type metadata accessor for CGRect(0);
  sub_2417D4A80(&qword_27E54B620);
  sub_2417E44CC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_2417E44AC();
  }

  return (*(v6 + 8))(v8, v5);
}

void *AudiogramGraphDetectorResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2417D4AE8();
  sub_2417E455C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for AudiogramGraphDetectorResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v18 = 0;
    sub_2417D4A80(&qword_27E54B630);
    sub_2417E448C();
    v10 = &v3[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box];
    v11 = v17;
    *v10 = v16;
    *(v10 + 1) = v11;
    LOBYTE(v16) = 1;
    sub_2417E446C();
    *&v3[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence] = v13;
    v14 = type metadata accessor for AudiogramGraphDetectorResult();
    v15.receiver = v3;
    v15.super_class = v14;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_2417D36C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiogramGraphDetectorResult();
  result = sub_2417E437C();
  *a1 = result;
  return result;
}

uint64_t sub_2417D3740@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

char *sub_2417D37C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2417D38C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B8);
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

char *sub_2417D39CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2417D3AD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2417D3B58(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2417D4834(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2417D3BD4(v6);
  return sub_2417E43CC();
}

uint64_t sub_2417D3BD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2417E44EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AudiogramGraphDetectorResult();
        v6 = sub_2417E426C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2417D3D48(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2417D3CD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2417D3CD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence) >= *(v7 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2417D3D48(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_2417D4588(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_2417D42E0((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2417D4588(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_2417D44FC(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2417D37C4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2417D37C4((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_2417D42E0((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2417D4588(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_2417D44FC(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(*v27 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence) >= *(v25 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_2417D42E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(*v17 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence) < *(v21 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v4 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence) >= *(*v6 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2417D44FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2417D4588(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void (*sub_2417D459C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CEF900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2417D461C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2417D4624(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2417E442C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2417D3AD0(v3, 0);
  sub_2417D46B8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2417D46B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2417E442C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2417E442C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2417D57F0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B690);
            v9 = sub_2417D459C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AudiogramGraphDetectorResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void _s18AudiogramIngestion0A20SymbolDetectorResultC21boundingBoxForSymbolsySo6CGRectVSayACGFZ_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2417E442C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245CEF900](0, a1);
      v3 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v3 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(a1 + 32);
    }

    v5 = 0;
    x = *&v4[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box];
    y = *&v4[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8];
    width = *&v4[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16];
    height = *&v4[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245CEF900](v5, a1);
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(a1 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13.origin.x = x;
      v13.origin.y = y;
      v13.size.width = width;
      v13.size.height = height;
      v14 = CGRectUnion(v13, *&v10[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box]);
      x = v14.origin.x;
      y = v14.origin.y;
      width = v14.size.width;
      height = v14.size.height;

      ++v5;
      if (v12 == i)
      {

        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2417D4A2C()
{
  result = qword_27E54B618;
  if (!qword_27E54B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B618);
  }

  return result;
}

uint64_t sub_2417D4A80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2417D4AE8()
{
  result = qword_27E54B650;
  if (!qword_27E54B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudiogramGraphDetectorResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiogramGraphDetectorResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudiogramSymbolDetectorResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudiogramSymbolDetectorResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2417D4FEC()
{
  result = qword_27E54B660;
  if (!qword_27E54B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B660);
  }

  return result;
}

unint64_t sub_2417D5044()
{
  result = qword_27E54B668;
  if (!qword_27E54B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B668);
  }

  return result;
}

unint64_t sub_2417D509C()
{
  result = qword_27E54B670;
  if (!qword_27E54B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B670);
  }

  return result;
}

unint64_t sub_2417D50F4()
{
  result = qword_27E54B678;
  if (!qword_27E54B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B678);
  }

  return result;
}

unint64_t sub_2417D514C()
{
  result = qword_27E54B680;
  if (!qword_27E54B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B680);
  }

  return result;
}

unint64_t sub_2417D51A4()
{
  result = qword_27E54B688;
  if (!qword_27E54B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B688);
  }

  return result;
}

uint64_t sub_2417D51F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_2417E450C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6C6562616CLL && a2 == 0xE900000000000065 || (sub_2417E450C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_2417E450C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2417D5320(unint64_t a1, double a2)
{
  v2 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

  while (1)
  {

    v45[0] = sub_2417D4624(v3);
    sub_2417D3B58(v45);
    v47 = v45[0];

    if (sub_2417E442C() < 1)
    {
      goto LABEL_49;
    }

    while (1)
    {
LABEL_6:
      v4 = sub_2417D1684(0);
      MEMORY[0x245CEF790]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2417E425C();
      }

      sub_2417E427C();
      v5 = v47;
      v38 = v48;
      v46 = v2;
      v6 = v47 >> 62 ? sub_2417E442C() : *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = &v4[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box];
      swift_beginAccess();
      if (v6)
      {
        break;
      }

      v36 = v2;
LABEL_37:

      v47 = v36;
      if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
      {
        if (sub_2417E442C() <= 0)
        {
LABEL_43:

          return v38;
        }
      }

      else if (*(v36 + 16) <= 0)
      {
        goto LABEL_43;
      }
    }

    v2 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245CEF900](v2, v5);
      }

      else
      {
        if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v9 = *(v5 + 8 * v2 + 32);
      }

      v10 = v9;
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v11 = &v9[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box];
      swift_beginAccess();
      v49.origin.x = v11->origin.x;
      y = v11->origin.y;
      width = v11->size.width;
      height = v11->size.height;
      v60 = *v7;
      v43 = v60.origin.y;
      x = v7->origin.x;
      v42 = v60.size.width;
      v40 = v11->origin.x;
      v41 = v60.size.height;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v50 = CGRectIntersection(v49, *v7);
      v15 = v50.origin.x;
      v16 = v50.origin.y;
      v17 = v50.size.width;
      v18 = v50.size.height;
      v19 = CGRectGetHeight(v50);
      v51.origin.x = v15;
      v51.origin.y = v16;
      v51.size.width = v17;
      v51.size.height = v18;
      v20 = v19 * CGRectGetWidth(v51);
      v52.origin.x = v40;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v21 = CGRectGetHeight(v52);
      v53.origin.x = v40;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      v22 = v21 * CGRectGetWidth(v53);
      v54.origin.x = x;
      v54.origin.y = v43;
      v54.size.width = v42;
      v54.size.height = v41;
      v23 = CGRectGetHeight(v54);
      v55.origin.x = x;
      v55.origin.y = v43;
      v55.size.width = v42;
      v55.size.height = v41;
      if (v20 / (v22 + v23 * CGRectGetWidth(v55) - v20) <= a2)
      {
        sub_2417E43BC();
        sub_2417E43EC();
        v8 = v2 + 1;
        sub_2417E43FC();
        sub_2417E43CC();
      }

      else
      {
        v56 = CGRectUnion(*v7, *v11);
        v24 = v56.origin.x;
        v25 = v56.origin.y;
        v26 = v56.size.width;
        v27 = v56.size.height;
        MinX = CGRectGetMinX(v56);
        if (MinX < 0.0)
        {
          MinX = 0.0;
        }

        v29 = fmin(MinX, 1.0);
        v57.origin.x = v24;
        v57.origin.y = v25;
        v57.size.width = v26;
        v57.size.height = v27;
        MinY = CGRectGetMinY(v57);
        if (MinY < 0.0)
        {
          MinY = 0.0;
        }

        v31 = fmin(MinY, 1.0);
        v58.origin.x = v24;
        v58.origin.y = v25;
        v58.size.width = v26;
        v58.size.height = v27;
        v32 = CGRectGetWidth(v58);
        if (v32 < 0.0)
        {
          v32 = 0.0;
        }

        if (v32 >= 1.0 - v29)
        {
          v33 = 1.0 - v29;
        }

        else
        {
          v33 = v32;
        }

        v59.origin.x = v24;
        v59.origin.y = v25;
        v59.size.width = v26;
        v59.size.height = v27;
        v34 = CGRectGetHeight(v59);

        if (v34 < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v34;
        }

        v7->origin.x = v29;
        v7->origin.y = v31;
        if (v35 >= 1.0 - v31)
        {
          v35 = 1.0 - v31;
        }

        v7->size.width = v33;
        v7->size.height = v35;
      }

      ++v2;
      if (v8 == v6)
      {
        v36 = v46;
        v2 = MEMORY[0x277D84F90];
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    if (sub_2417E442C() < 1)
    {
    }
  }

  if (*(v45[0] + 16) >= 1)
  {
    goto LABEL_6;
  }

LABEL_49:

  return MEMORY[0x277D84F90];
}

unint64_t sub_2417D57F0()
{
  result = qword_27E54B698;
  if (!qword_27E54B698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E54B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B698);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2417D58E8()
{
  v1 = *v0;
  sub_2417E452C();
  MEMORY[0x245CEFAB0](v1);
  return sub_2417E454C();
}

uint64_t sub_2417D595C()
{
  v1 = *v0;
  sub_2417E452C();
  MEMORY[0x245CEFAB0](v1);
  return sub_2417E454C();
}

unint64_t sub_2417D59B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2417D59F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2417D59F0(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2417D5A04()
{
  result = qword_27E54B6C0;
  if (!qword_27E54B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B6C0);
  }

  return result;
}

unint64_t sub_2417D5A5C()
{
  result = qword_27E54B6C8;
  if (!qword_27E54B6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E54B6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B6C8);
  }

  return result;
}

uint64_t sub_2417D5AD0(uint64_t a1)
{
  v2 = sub_2417E434C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2417D8D24(v2, *(a1 + 36), 0, a1);

  return v4;
}

id AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(uint64_t a1, double a2, double a3, float a4)
{
  v9 = sub_2417E410C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model] = 0;
  v13 = OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_url;
  v14 = sub_2417E407C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  sub_2417E40FC();
  (*(v10 + 32))(&v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_logger], v12, v9);
  v16 = &v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize];
  *v16 = a2;
  v16[1] = a3;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_confidenceThreshold] = a4;
  v17 = type metadata accessor for AudiogramDetectorModel(0);
  v20.receiver = v4;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_2417D5FF8();

  (*(v15 + 8))(a1, v14);
  return v18;
}

void sub_2417D5FF8()
{
  v1 = v0;
  v2 = sub_2417E407C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  sub_2417D9544(0, &qword_27E54B760);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_url], v2);
  v7 = sub_2417D8D78(v5, v6);
  if (v7)
  {
    v16 = v7;

    v17 = *&v1[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model];
    *&v1[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model] = v16;
  }

  else
  {
    v8 = sub_2417E430C();
    v9 = v1;
    v10 = sub_2417E40EC();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315138;
      sub_2417D958C();
      v13 = sub_2417E44FC();
      v15 = sub_2417D84B4(v13, v14, v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24179B000, v10, v8, "Failed to load model from url %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CF05F0](v12, -1, -1);
      MEMORY[0x245CF05F0](v11, -1, -1);
    }
  }
}

id AudiogramDetectorModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramSymbolDetectorModel.__allocating_init(modelUrl:modelInputSize:confidenceThreshold:classNames:collisionMitigationClassNames:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, float a6)
{
  v13 = sub_2417E407C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v6);
  *&v17[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_classNames] = a2;
  *&v17[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_collisionMitigationClassNames] = a3;
  (*(v14 + 16))(v16, a1, v13);
  v18 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v16, a4, a5, a6);
  (*(v14 + 8))(a1, v13);
  return v18;
}

id AudiogramSymbolDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:classNames:collisionMitigationClassNames:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, float a6)
{
  v13 = sub_2417E407C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_classNames) = a2;
  *(v6 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_collisionMitigationClassNames) = a3;
  (*(v14 + 16))(v16, a1, v13);
  v17 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v16, a4, a5, a6);
  (*(v14 + 8))(a1, v13);
  return v17;
}

uint64_t sub_2417D67D8(CGImage *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93[4] = *MEMORY[0x277D85DE8];
  v8 = OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model;
  v9 = *&v3[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model];
  if (!v9)
  {
    sub_2417D5FF8();
    v9 = *&v3[v8];
    if (!v9)
    {
      v48 = sub_2417E430C();
      v10 = sub_2417E40EC();
      if (os_log_type_enabled(v10, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_24179B000, v10, v48, "Failed to find symbols, model is nil", v49, 2u);
        MEMORY[0x245CF05F0](v49, -1, -1);
      }

      goto LABEL_21;
    }
  }

  v10 = v9;
  v11 = [v10 modelDescription];
  v12 = [v11 inputDescriptionsByName];

  sub_2417D9544(0, &qword_27E54B6F0);
  v13 = sub_2417E415C();

  v14 = sub_2417D5AD0(v13);
  v16 = v15;

  if (!v16)
  {
    v40 = sub_2417E430C();
    v41 = sub_2417E40EC();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24179B000, v41, v40, "Failed to find symbols, no input key names found", v42, 2u);
LABEL_19:
      MEMORY[0x245CF05F0](v42, -1, -1);
    }

LABEL_20:

LABEL_21:
    return 0;
  }

  v17 = (a3 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_2417CDCF0(a2, Width, Height, v18, v19, v20, v21);
  v24 = CGImageCreateWithImageInRect(a1, v94);
  if (!v24)
  {

    v43 = sub_2417E430C();
    v41 = sub_2417E40EC();
    if (os_log_type_enabled(v41, v43))
    {
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93[0] = v44;
      *v42 = 136315138;
      v45 = sub_2417E431C();
      v47 = sub_2417D84B4(v45, v46, v93);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24179B000, v41, v43, "Failed to find symbols, unable to crop image to graph rect %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x245CF05F0](v44, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v25 = v24;
  v27 = *&v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize];
  v26 = *&v4[OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize + 8];
  sub_2417CDFA0(v27, v26);
  if (!v28)
  {

    v50 = sub_2417E430C();
    v51 = sub_2417E40EC();
    if (os_log_type_enabled(v51, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24179B000, v51, v50, "Failed to find symbols, unable to resize image", v52, 2u);
      MEMORY[0x245CF05F0](v52, -1, -1);
    }

    goto LABEL_34;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v92 = v10;
  if (v26 >= 9.22337204e18)
  {
    goto LABEL_66;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v93[0] = 0;
  v10 = v29;
  v31 = [v30 featureValueWithCGImage:v10 orientation:a2 pixelsWide:v27 pixelsHigh:v26 pixelFormatType:32 options:0 error:v93];
  v91 = v25;
  if (!v31)
  {
    v53 = v93[0];
    v54 = sub_2417E404C();

    swift_willThrow();
    v55 = v10;
    v10 = 0;
    v25 = v55;
LABEL_28:

LABEL_30:
    v56 = sub_2417E430C();

    v57 = sub_2417E40EC();

    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v93[0] = v59;
      *v58 = 136315138;
      v60 = sub_2417D84B4(v14, v16, v93);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_24179B000, v57, v56, "Failed to find symbols, unable to create model input with input name %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x245CF05F0](v59, -1, -1);
      MEMORY[0x245CF05F0](v58, -1, -1);
    }

    else
    {
    }

LABEL_34:
    return 0;
  }

  v32 = v31;
  v33 = v93[0];

  v34 = [v32 imageBufferValue];
  if (!v34)
  {
    v25 = v10;
    v10 = 0;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2417E8670;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v36 = v34;

  v37 = [v30 featureValueWithPixelBuffer_];
  *(inited + 72) = sub_2417D9544(0, &qword_27E54B700);
  *(inited + 48) = v37;
  sub_2417D8ED8(inited);
  swift_setDeallocating();
  sub_2417D9008(inited + 32);
  v38 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v39 = sub_2417D83CC();
  v62 = v39;
  v90 = v36;
  if (!v39)
  {
    v25 = v10;
    v55 = v36;
    v10 = v36;
    goto LABEL_28;
  }

  v93[0] = 0;
  v89 = [v92 predictionFromFeatures:v62 error:v93];
  if (!v89)
  {
    v81 = v93[0];
    v82 = sub_2417E404C();

    swift_willThrow();
    v83 = sub_2417E430C();
    v84 = sub_2417E40EC();
    if (os_log_type_enabled(v84, v83))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_24179B000, v84, v83, "Failed to find symbols, model output is nil", v85, 2u);
      MEMORY[0x245CF05F0](v85, -1, -1);
    }

    goto LABEL_21;
  }

  v88 = v62;
  v63 = v93[0];
  v64 = [v89 featureNames];
  v65 = sub_2417E429C();

  v66 = 0;
  v67 = 0;
  v68 = v65 + 56;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v65 + 56);
  v72 = (v69 + 63) >> 6;
  while (v71)
  {
LABEL_47:
    v71 &= v71 - 1;

    if (sub_2417D7338())
    {
      v74 = sub_2417E416C();

      v75 = [v89 featureValueForName_];

      if (v75)
      {
        v76 = [v75 multiArrayValue];

        if (v76)
        {

          v66 = v76;
        }
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v73 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v73 >= v72)
    {
      break;
    }

    v71 = *(v68 + 8 * v73);
    ++v67;
    if (v71)
    {
      v67 = v73;
      goto LABEL_47;
    }
  }

  if (!v66)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v77 = sub_2417E42FC();
  v78 = v4;
  v79 = sub_2417E40EC();
  if (os_log_type_enabled(v79, v77))
  {
    v80 = swift_slowAlloc();
    *v80 = 134218240;
    *(v80 + 4) = (*(&v78->isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_classNames))[2];
    *(v80 + 12) = 2048;
    *(v80 + 14) = (*(&v78->isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_collisionMitigationClassNames))[2];

    _os_log_impl(&dword_24179B000, v79, v77, "Got symbol prediction matrix, processing predictions for %ld classes, %ld collision mitigation classes", v80, 0x16u);
    MEMORY[0x245CF05F0](v80, -1, -1);
  }

  else
  {

    v79 = v78;
  }

  sub_2417E1EA4(v66, *(&v78->isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_classNames), *(&v78->isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_collisionMitigationClassNames), *(&v78->isa + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_confidenceThreshold));
  v87 = v86;
  swift_unknownObjectRelease();

  return v87;
}

uint64_t sub_2417D7338()
{

  v0 = sub_2417E41EC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_2417E41EC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_2417E450C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_2417E41EC();
      v3 = v5;
    }

    while (v5);
  }

  sub_2417E41EC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_2417D75FC()
{
}

id sub_2417D7654(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2417D76E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68[1] = *MEMORY[0x277D85DE8];
  v5 = OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model;
  v6 = *(v2 + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model);
  if (!v6)
  {
    sub_2417D5FF8();
    v6 = *(v2 + v5);
    if (!v6)
    {
      v33 = sub_2417E430C();
      v7 = sub_2417E40EC();
      if (os_log_type_enabled(v7, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24179B000, v7, v33, "Failed to find graphs, model is nil", v34, 2u);
        MEMORY[0x245CF05F0](v34, -1, -1);
      }

      goto LABEL_20;
    }
  }

  v7 = v6;
  v8 = [v7 modelDescription];
  v9 = [v8 inputDescriptionsByName];

  sub_2417D9544(0, &qword_27E54B6F0);
  v10 = sub_2417E415C();

  v11 = sub_2417D5AD0(v10);
  v13 = v12;

  if (!v13)
  {
    v29 = sub_2417E430C();
    v30 = sub_2417E40EC();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Failed to find graphs, no input key names found";
LABEL_18:
      _os_log_impl(&dword_24179B000, v30, v29, v32, v31, 2u);
      MEMORY[0x245CF05F0](v31, -1, -1);
    }

LABEL_19:

LABEL_20:
    return 0;
  }

  v15 = *(v3 + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize);
  v14 = *(v3 + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize + 8);
  sub_2417CDFA0(v15, v14);
  if (!v16)
  {

    v29 = sub_2417E430C();
    v30 = sub_2417E40EC();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Failed to find graphs, unable to resize image";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_59;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v68[0] = 0;
  v19 = v17;
  v20 = [v18 featureValueWithCGImage:v19 orientation:a2 pixelsWide:v15 pixelsHigh:v14 pixelFormatType:32 options:0 error:v68];
  if (!v20)
  {
    v35 = v68[0];
    v36 = sub_2417E404C();

    swift_willThrow();
    v37 = 0;
    v25 = v19;
LABEL_24:

LABEL_26:
    v38 = sub_2417E430C();

    v39 = sub_2417E40EC();

    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v68[0] = v41;
      *v40 = 136315138;
      v42 = sub_2417D84B4(v11, v13, v68);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_24179B000, v39, v38, "Failed to find graphs, unable to create model input with input name %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x245CF05F0](v41, -1, -1);
      MEMORY[0x245CF05F0](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v21 = v20;
  v22 = v68[0];

  v23 = [v21 imageBufferValue];
  if (!v23)
  {
    v37 = 0;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2417E8670;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v25 = v23;

  v26 = [v18 featureValueWithPixelBuffer_];
  *(inited + 72) = sub_2417D9544(0, &qword_27E54B700);
  *(inited + 48) = v26;
  sub_2417D8ED8(inited);
  swift_setDeallocating();
  sub_2417D9008(inited + 32);
  v27 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v28 = sub_2417D83CC();
  v44 = v28;
  if (!v28)
  {
    v37 = v25;
    goto LABEL_24;
  }

  v68[0] = 0;
  v67 = [v7 predictionFromFeatures:v44 error:v68];
  if (!v67)
  {
    v59 = v68[0];
    v60 = sub_2417E404C();

    swift_willThrow();
    v61 = sub_2417E430C();
    v62 = sub_2417E40EC();
    if (os_log_type_enabled(v62, v61))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_24179B000, v62, v61, "Failed to find graphs, model output is nil", v63, 2u);
      MEMORY[0x245CF05F0](v63, -1, -1);
    }

    goto LABEL_30;
  }

  v64 = v44;
  v65 = v25;
  v45 = v68[0];
  v46 = [v67 featureNames];
  v47 = sub_2417E429C();

  v66 = 0;
  v48 = 0;
  v49 = v47 + 56;
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v47 + 56);
  v53 = (v50 + 63) >> 6;
  while (v52)
  {
LABEL_43:
    v52 &= v52 - 1;

    if (sub_2417D7338())
    {
      v55 = sub_2417E416C();

      v56 = [v67 featureValueForName_];

      if (v56)
      {
        v57 = [v56 multiArrayValue];

        if (v57)
        {

          v66 = v57;
        }
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v54);
    ++v48;
    if (v52)
    {
      v48 = v54;
      goto LABEL_43;
    }
  }

  if (!v66)
  {
    swift_unknownObjectRelease();

LABEL_30:
    return 0;
  }

  v58 = sub_2417E21FC(v66, *(v3 + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_confidenceThreshold));
  swift_unknownObjectRelease();

  return v58;
}

id AudiogramGraphDetectorModel.__allocating_init(modelUrl:modelInputSize:confidenceThreshold:)(uint64_t a1, double a2, double a3, float a4)
{
  v9 = sub_2417E407C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v4);
  (*(v10 + 16))(v12, a1, v9);
  v14 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v12, a2, a3, a4);
  (*(v10 + 8))(a1, v9);
  return v14;
}

id AudiogramGraphDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(uint64_t a1, double a2, double a3, float a4)
{
  v8 = sub_2417E407C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v11, a2, a3, a4);
  (*(v9 + 8))(a1, v8);
  return v12;
}

id sub_2417D83CC()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2417E414C();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2417E404C();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_2417D84B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2417D8580(v11, 0, 0, 1, a1, a2);
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
    sub_2417D94E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2417D8580(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2417D868C(a5, a6);
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
    result = sub_2417E43AC();
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

uint64_t sub_2417D868C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2417D86D8(a1, a2);
  sub_2417D8808(&unk_28535EA88);
  return v3;
}

uint64_t sub_2417D86D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2417D88F4(v5, 0);
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

  result = sub_2417E43AC();
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
        v10 = sub_2417E41FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2417D88F4(v10, 0);
        result = sub_2417E435C();
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

uint64_t sub_2417D8808(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2417D8968(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2417D88F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B758);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2417D8968(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B758);
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

unint64_t sub_2417D8A5C(uint64_t a1, uint64_t a2)
{
  sub_2417E452C();
  sub_2417E41CC();
  v4 = sub_2417E454C();

  return sub_2417D8B68(a1, a2, v4);
}

unint64_t sub_2417D8AD4(uint64_t a1)
{
  sub_2417E419C();
  sub_2417E452C();
  sub_2417E41CC();
  v2 = sub_2417E454C();

  return sub_2417D8C20(a1, v2);
}

unint64_t sub_2417D8B68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2417E450C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2417D8C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2417E419C();
      v8 = v7;
      if (v6 == sub_2417E419C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2417E450C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2417D8D24(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_2417D8D78(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2417E405C();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2417E407C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_2417E404C();

    swift_willThrow();
    v11 = sub_2417E407C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_2417D8ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B750);
    v3 = sub_2417E443C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2417D9480(v4, &v13, &qword_27E54B708);
      v5 = v13;
      v6 = v14;
      result = sub_2417D8A5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2417D9470(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2417D9008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2417D9090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B740);
    v3 = sub_2417E443C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2417D9480(v4, &v11, &qword_27E54B748);
      v5 = v11;
      result = sub_2417D8AD4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2417D9470(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_2417D91D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2417D9218()
{
  result = sub_2417E407C();
  if (v1 <= 0x3F)
  {
    result = sub_2417E410C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_OWORD *sub_2417D9470(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2417D9480(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2417D94E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2417D9544(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2417D958C()
{
  result = qword_27E54B768;
  if (!qword_27E54B768)
  {
    sub_2417E407C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B768);
  }

  return result;
}

id sub_2417D95F4(uint64_t a1, unint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_percentageOfSymbolSize] = 0x3FC999999999999ALL;
  v5 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = unfilledImageForSymbolType(a1);
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_symbolImage] = v6;
  v7 = labelForSymbolType(a1);
  v8 = sub_2417E419C();
  v10 = v9;

  v11 = &v2[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_symbolTitle];
  *v11 = v8;
  v11[1] = v10;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_symbol] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for AIAudiogramSymbolChoiceButton();
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v14 = v12;
  v15 = [v13 initWithInteger_];
  v19 = v15;
  v18[2] = &v19;
  LOBYTE(v12) = sub_2417D11B4(sub_2417DA2F0, v18, a2);

  [v14 setSelected_];

  sub_2417D9880();
  sub_2417D9B7C();

  v16 = sub_2417E416C();

  [v14 setAccessibilityLabel_];

  return v14;
}

void sub_2417D9880()
{
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  [v0 setBackgroundColor_];

  v2 = [v0 layer];
  [v2 setCornerRadius_];

  v3 = [v0 layer];
  [v3 setBorderWidth_];

  v4 = [objc_opt_self() deviceIsPad];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2417E8D60;
  if (v4)
  {
    v7 = [v0 heightAnchor];
    v8 = [v0 widthAnchor];
    v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 multiplier:0.6];
  }

  else
  {
    v7 = [v0 widthAnchor];
    v8 = [v0 heightAnchor];
    v9 = [v7 constraintEqualToAnchor_];
  }

  v10 = v9;

  *(v6 + 32) = v10;
  sub_2417DA2A4();
  v11 = sub_2417E422C();

  [v5 activateConstraints_];

  sub_2417D9AA8();
}

void sub_2417D9AA8()
{
  v1 = [v0 layer];
  v2 = [v0 isSelected];
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (!v2)
  {
    v4 = &selRef_clearColor;
  }

  v5 = [v3 *v4];
  v6 = [v5 CGColor];

  [v1 setBorderColor_];
}

void sub_2417D9B7C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = [objc_opt_self() configurationWithWeight_];
  [v2 setPreferredSymbolConfiguration_];
  v3 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  v4 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol];

  v5 = sub_2417E416C();

  [v4 setText_];

  [*&v0[v3] setTextAlignment_];
  v6 = *&v0[v3];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondaryLabelColor];
  [v8 setTextColor_];

  v10 = *&v1[v3];
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D769D0];
  v13 = v10;
  v14 = [v11 preferredFontForTextStyle_];
  [v13 setFont_];

  [*&v1[v3] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v3] setAdjustsFontForContentSizeCategory_];
  [*&v1[v3] setNumberOfLines_];
  [v1 addSubview_];
  [v1 addSubview_];
  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2417E8D70;
  v16 = [v2 widthAnchor];
  v17 = [v1 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.2];

  *(v15 + 32) = v18;
  v19 = [v2 heightAnchor];
  v20 = [v2 widthAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  v22 = [v2 centerXAnchor];
  v23 = [v1 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [v2 centerYAnchor];
  v26 = [v1 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v15 + 56) = v27;
  v28 = [*&v1[v3] topAnchor];
  v29 = [v2 bottomAnchor];

  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:10.0];
  *(v15 + 64) = v30;
  v31 = [*&v1[v3] bottomAnchor];
  v32 = [v1 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-10.0];

  *(v15 + 72) = v33;
  v34 = [*&v1[v3] centerXAnchor];
  v35 = [v1 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v15 + 80) = v36;
  v37 = [*&v1[v3] leadingAnchor];
  v38 = [v1 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v15 + 88) = v39;
  v40 = [*&v1[v3] trailingAnchor];
  v41 = [v1 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v15 + 96) = v42;
  sub_2417DA2A4();
  v45 = sub_2417E422C();

  [v43 activateConstraints_];
}

id sub_2417DA1EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AIAudiogramSymbolChoiceButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2417DA2A4()
{
  result = qword_27E54B7E0;
  if (!qword_27E54B7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E54B7E0);
  }

  return result;
}

id AudiogramDebugViewController.__allocating_init(image:debugInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView] = 0;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView] = 0;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider] = 0;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel] = 0;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_image] = a1;
  *&v5[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_debugInfo] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id AudiogramDebugViewController.init(image:debugInfo:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView] = 0;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView] = 0;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider] = 0;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel] = 0;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_image] = a1;
  *&v2[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_debugInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudiogramDebugViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2417DA53C()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for AudiogramDebugViewController();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v1 = sub_2417E416C();
  [v0 setTitle_];

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 setPrefersLargeTitles_];
  }

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = v5;
  v7 = [objc_opt_self() whiteColor];
  [v6 setBackgroundColor_];

  v8 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v8 configureWithOpaqueBackground];
  v9 = [v0 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationBar];

    [v11 setScrollEdgeAppearance_];
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView;
  v14 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView];
  *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView] = v12;
  v15 = v12;

  if (!v15)
  {
    goto LABEL_28;
  }

  [v15 setDelegate_];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*&v0[v13])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  [v16 addSubview_];

  v18 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_image];
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v20 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView;
  v21 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView];
  *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView] = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v18 size];
  [v22 setFrame_];

  v25 = *&v0[v13];
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*&v0[v20])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v25 addSubview_];
  v26 = *&v0[v13];
  if (!v26)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v27 = v26;
  [v18 size];
  [v27 setContentSize_];

  sub_2417DB150();
  v28 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_debugInfo];
  if (v28 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2417E442C())
  {
    v30 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x245CEF900](v30, v28);
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_2417DAB44(v31);

      ++v30;
      if (v33 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
}

id sub_2417DA960(char a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for AudiogramDebugViewController();
  result = objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView;
  v5 = *&v1[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  result = *&v1[v4];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result frame];
  result = *&v1[v4];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v16;
  v19 = v17;
  [result contentSize];
  result = *&v1[v4];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v18 / v20;
  [result contentSize];
  if (v19 / v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19 / v22;
  }

  result = *&v1[v4];
  if (!result)
  {
    goto LABEL_18;
  }

  [result setMinimumZoomScale_];
  result = *&v1[v4];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [result setMaximumZoomScale_];
  result = *&v1[v4];
  if (result)
  {
    return [result setZoomScale_];
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2417DAB44(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_image) size];
  v4 = v3;
  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = *(a1 + OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_graph) + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  CGAffineTransformMakeTranslation(&v72, -0.5, -0.5);
  v73.origin.x = v9;
  v73.origin.y = v10;
  v73.size.width = v11;
  v73.size.height = v12;
  v74 = CGRectApplyAffineTransform(v73, &v72);
  v72.a = 1.0;
  v72.b = 0.0;
  v72.c = 0.0;
  v72.d = 1.0;
  v72.tx = 0.0;
  v72.ty = 0.0;
  v75 = CGRectApplyAffineTransform(v74, &v72);
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  CGAffineTransformMakeTranslation(&v72, 0.5, 0.5);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v77 = CGRectApplyAffineTransform(v76, &v72);
  v17 = v77.origin.x;
  v18 = v77.origin.y;
  v19 = v77.size.width;
  v20 = v77.size.height;
  v21 = v4 * CGRectGetMinX(v77);
  v78.origin.x = v17;
  v78.origin.y = v18;
  v78.size.width = v19;
  v78.size.height = v20;
  v22 = v6 * CGRectGetMinY(v78);
  v79.origin.x = v17;
  v79.origin.y = v18;
  v79.size.width = v19;
  v79.size.height = v20;
  v23 = v4 * CGRectGetWidth(v79);
  v80.origin.x = v17;
  v80.origin.y = v18;
  v80.size.width = v19;
  v80.size.height = v20;
  v24 = v6 * CGRectGetHeight(v80);
  v71 = v23;
  [v7 setFrame_];
  v25 = [v7 layer];
  [v25 setBorderWidth_];

  v26 = [v7 layer];
  v27 = [objc_opt_self() blackColor];
  v28 = [v27 CGColor];

  [v26 setBorderColor_];
  v29 = *(v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView);
  if (v29)
  {
    [v29 addSubview_];
    v30 = 8.0;
    if (v6 < 1000.0)
    {
      v30 = 4.0;
    }

    if (v6 < 400.0)
    {
      v30 = 2.0;
    }

    v70 = v30;
    v31 = *(a1 + OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_symbols);
    if (v31 >> 62)
    {
LABEL_20:
      v32 = sub_2417E442C();
      if (v32)
      {
LABEL_8:
        v33 = 0;
        v34 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider;
        v35 = v31 & 0xC000000000000001;
        v36 = v31 & 0xFFFFFFFFFFFFFF8;
        v68 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider;
        v69 = v1;
        v66 = v31;
        v67 = v31 & 0xC000000000000001;
        while (1)
        {
          if (v35)
          {
            v37 = MEMORY[0x245CEF900](v33, v31);
          }

          else
          {
            if (v33 >= *(v36 + 16))
            {
              goto LABEL_19;
            }

            v37 = *(v31 + 8 * v33 + 32);
          }

          v38 = v37;
          v39 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v40 = *(v1 + v34);
          if (!v40)
          {
            break;
          }

          v41 = *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_confidence];
          [v40 value];
          if (v42 <= v41)
          {
            v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
            v44 = *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box];
            v45 = *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8];
            v46 = *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16];
            v47 = *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24];
            CGAffineTransformMakeTranslation(&v72, -0.5, -0.5);
            v81.origin.x = v44;
            v81.origin.y = v45;
            v81.size.width = v46;
            v81.size.height = v47;
            v82 = CGRectApplyAffineTransform(v81, &v72);
            v72.b = 0.0;
            v72.c = 0.0;
            v72.a = 1.0;
            v72.d = 1.0;
            v72.tx = 0.0;
            v72.ty = 0.0;
            v83 = CGRectApplyAffineTransform(v82, &v72);
            v48 = v83.origin.x;
            v49 = v83.origin.y;
            v50 = v83.size.width;
            v51 = v83.size.height;
            CGAffineTransformMakeTranslation(&v72, 0.5, 0.5);
            v84.origin.x = v48;
            v84.origin.y = v49;
            v84.size.width = v50;
            v84.size.height = v51;
            v85 = CGRectApplyAffineTransform(v84, &v72);
            v52 = v85.origin.x;
            v53 = v85.origin.y;
            v54 = v85.size.width;
            v55 = v85.size.height;
            v56 = v71 * CGRectGetMinX(v85);
            v86.origin.x = v52;
            v86.origin.y = v53;
            v86.size.width = v54;
            v86.size.height = v55;
            v57 = v24 * CGRectGetMinY(v86);
            v87.origin.x = v52;
            v87.origin.y = v53;
            v87.size.width = v54;
            v87.size.height = v55;
            v58 = v71 * CGRectGetWidth(v87);
            v88.origin.x = v52;
            v88.origin.y = v53;
            v88.size.width = v54;
            v88.size.height = v55;
            [v43 setFrame_];
            v59 = v32;
            v60 = v7;
            v61 = [v43 layer];
            [v61 setBorderWidth_];

            v62 = [v43 layer];
            v63 = sub_2417DCB6C(*&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName], *&v38[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName + 8]);
            v64 = v36;
            v65 = [v63 CGColor];

            v35 = v67;
            [v62 setBorderColor_];

            v7 = v60;
            v32 = v59;
            v31 = v66;

            v36 = v64;
            [v7 addSubview_];

            v34 = v68;
            v1 = v69;
          }

          ++v33;
          if (v39 == v32)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_2417DB150()
{
  v1 = 0x277D75000uLL;
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setAxis_];
  [v2 setSpacing_];
  [v2 setLayoutMarginsRelativeArrangement_];
  v3 = v2;
  [v3 setLayoutMargins_];
  v111 = objc_opt_self();
  v4 = [v111 systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_2417E416C();
  [v6 setText_];

  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel;
  v10 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel];
  *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel] = v8;
  v11 = v8;

  if (!v11)
  {
    __break(1u);
    goto LABEL_107;
  }

  v12 = sub_2417E416C();
  [v11 setText_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  v14 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider;
  v15 = *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider];
  *&v0[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider] = v13;
  v16 = v13;

  if (!v16)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  LODWORD(v17) = 1050253722;
  [v16 setValue_];

  v19 = *&v0[v14];
  if (!v19)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  LODWORD(v18) = 1045220557;
  [v19 setMinimumValue_];
  v21 = *&v0[v14];
  if (!v21)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  LODWORD(v20) = 1.0;
  [v21 setMaximumValue_];
  v22 = *&v0[v14];
  if (!v22)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v108 = v3;
  [v22 addTarget:v0 action:sel_sliderValueChanged_ forControlEvents:4096];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2417E8DB0;
  *(inited + 32) = v6;
  v24 = *&v0[v14];
  if (!v24)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v25 = inited;
  *(inited + 40) = v24;
  v109 = v0;
  v26 = *&v0[v9];
  if (!v26)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  *(inited + 48) = v26;
  v27 = inited & 0xC000000000000001;
  v28 = inited & 0xFFFFFFFFFFFFFF8;
  v112 = v5;
  v29 = v6;
  v30 = v24;
  v31 = v26;
  if (v27)
  {
    goto LABEL_99;
  }

  v32 = v112;
  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_96;
  }

  v33 = v29;
  while (1)
  {
    [v32 addArrangedSubview_];

    if (v27)
    {
      v34 = MEMORY[0x245CEF900](1, v25);
    }

    else
    {
      if (*(v28 + 16) < 2uLL)
      {
        goto LABEL_96;
      }

      v34 = *(v25 + 40);
    }

    v35 = v34;
    [v32 addArrangedSubview_];

    v105 = v29;
    if (v27)
    {
      v36 = MEMORY[0x245CEF900](2, v25);
    }

    else
    {
      if (*(v28 + 16) < 3uLL)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v36 = *(v25 + 48);
    }

    v37 = v36;
    [v32 addArrangedSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();

    v38 = [objc_allocWithZone(*(v1 + 2664)) init];
    [v38 setAxis_];
    [v38 setSpacing_];
    v106 = v38;
    [v38 setDistribution_];
    v25 = [objc_allocWithZone(*(v1 + 2664)) init];
    [v25 setAxis_];
    [v25 setSpacing_];
    v39 = [objc_allocWithZone(*(v1 + 2664)) init];
    [v39 setAxis_];
    [v39 setSpacing_];
    v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v41 = sub_2417E416C();
    [v40 setText_];

    v42 = v40;
    v43 = [v42 layer];
    [v43 setBorderWidth_];

    v44 = [v42 layer];
    v45 = [v111 blackColor];
    v46 = [v45 CGColor];

    [v44 setBorderColor_];
    v104 = v42;
    [v25 addArrangedSubview_];
    v47 = 0x20u;
    do
    {
      v67 = *(&unk_28535EA08 + v47);
      v68 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      if (v67 > 5)
      {
        if (v67 > 8)
        {
          switch(v67)
          {
            case 9:
              v48 = 0xE800000000000000;
              v49 = 0x656C676E61697274;
              break;
            case 10:
              v48 = 0xE100000000000000;
              v49 = 118;
              break;
            case 11:
              v48 = 0xE100000000000000;
              v49 = 120;
              break;
            default:
              goto LABEL_117;
          }
        }

        else if (v67 == 6)
        {
          v49 = 0x6965635F6E65706FLL;
          v48 = 0xE90000000000006CLL;
        }

        else if (v67 == 7)
        {
          v49 = 0x6568635F6E65706FLL;
          v48 = 0xEC0000006E6F7276;
        }

        else
        {
          v48 = 0xE600000000000000;
          v49 = 0x657261757173;
        }
      }

      else if (v67 > 2)
      {
        if (v67 == 3)
        {
          v49 = 0x635F6465736F6C63;
          v48 = 0xEE006E6F72766568;
        }

        else if (v67 == 4)
        {
          v48 = 0xE100000000000000;
          v49 = 111;
        }

        else
        {
          v49 = 0x6172625F6E65706FLL;
          v48 = 0xEC00000074656B63;
        }
      }

      else if (v67)
      {
        if (v67 == 1)
        {
          v49 = 0x625F6465736F6C63;
          v48 = 0xEE0074656B636172;
        }

        else
        {
          if (v67 != 2)
          {
            goto LABEL_117;
          }

          v49 = 0x635F6465736F6C63;
          v48 = 0xEB000000006C6965;
        }
      }

      else
      {
        v48 = 0xE500000000000000;
        v49 = 0x7465726163;
      }

      v47 += 8;
      MEMORY[0x245CEF750](v49, v48);

      v50 = sub_2417E416C();

      [v68 setText_];

      v51 = 118;
      if (v67 != 10)
      {
        v51 = 120;
      }

      v52 = 0xE100000000000000;
      if (v67 == 9)
      {
        v51 = 0x656C676E61697274;
        v52 = 0xE800000000000000;
      }

      v53 = 0x6568635F6E65706FLL;
      if (v67 != 7)
      {
        v53 = 0x657261757173;
      }

      v54 = 0xEC0000006E6F7276;
      if (v67 != 7)
      {
        v54 = 0xE600000000000000;
      }

      if (v67 == 6)
      {
        v53 = 0x6965635F6E65706FLL;
        v54 = 0xE90000000000006CLL;
      }

      if (v67 <= 8)
      {
        v51 = v53;
        v52 = v54;
      }

      v55 = 0x6172625F6E65706FLL;
      if (v67 == 4)
      {
        v55 = 111;
      }

      v56 = 0xEC00000074656B63;
      if (v67 == 4)
      {
        v56 = 0xE100000000000000;
      }

      if (v67 == 3)
      {
        v55 = 0x635F6465736F6C63;
        v56 = 0xEE006E6F72766568;
      }

      v57 = 0x625F6465736F6C63;
      if (v67 != 1)
      {
        v57 = 0x635F6465736F6C63;
      }

      v58 = 0xEE0074656B636172;
      if (v67 != 1)
      {
        v58 = 0xEB000000006C6965;
      }

      if (!v67)
      {
        v57 = 0x7465726163;
        v58 = 0xE500000000000000;
      }

      if (v67 <= 2)
      {
        v55 = v57;
        v56 = v58;
      }

      if (v67 <= 5)
      {
        v59 = v55;
      }

      else
      {
        v59 = v51;
      }

      if (v67 <= 5)
      {
        v60 = v56;
      }

      else
      {
        v60 = v52;
      }

      v61 = sub_2417DCB6C(v59, v60);

      [v68 setTextColor_];
      v62 = v68;
      v63 = [v62 layer];
      [v63 setBorderWidth_];

      v64 = [v62 layer];
      v65 = [v61 CGColor];
      [v64 setBorderColor_];

      if (v67 >= 6)
      {
        v66 = v39;
      }

      else
      {
        v66 = v25;
      }

      [v66 addArrangedSubview_];
    }

    while (v47 != 128);
    v69 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v39 addArrangedSubview_];

    v29 = v110;
    v70 = swift_initStackObject();
    v111 = 2;
    *(v70 + 16) = xmmword_2417E8DC0;
    *(v70 + 32) = v25;
    v27 = v70 + 32;
    *(v70 + 40) = v39;
    v28 = v70 & 0xFFFFFFFFFFFFFF8;
    v71 = v106;
    v72 = v25;
    v1 = v39;
    if ((v70 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x245CEF900](0, v70);
      v73 = v109;
    }

    else
    {
      v73 = v109;
      if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v25 = v72;
    }

    [v71 addArrangedSubview_];

    v107 = v72;
    v103 = v1;
    if ((v70 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x245CEF900](1, v70);
    }

    else
    {
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_97;
      }

      v74 = *(v70 + 40);
    }

    v75 = v74;
    [v71 addArrangedSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();

    v1 = swift_initStackObject();
    *(v1 + 16) = xmmword_2417E8DC0;
    *(v1 + 32) = v112;
    v27 = v1 + 32;
    *(v1 + 40) = v71;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v108;
    v76 = v112;
    v77 = v71;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x245CEF900](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v78 = v76;
    }

    v79 = v78;
    [v25 addArrangedSubview_];

    if ((v1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v80 = *(v1 + 40);
      goto LABEL_91;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v33 = MEMORY[0x245CEF900](0, v25);
    v32 = v112;
  }

  v80 = MEMORY[0x245CEF900](1, v1);
LABEL_91:
  v81 = v80;
  [v25 addArrangedSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v82 = [v73 view];
  if (!v82)
  {
    goto LABEL_113;
  }

  v83 = v82;
  [v82 addSubview_];

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_2417E8DB0;
  v85 = [v25 leadingAnchor];
  v86 = [v73 view];
  if (!v86)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v87 = v86;
  v88 = v73;
  v89 = [v86 leadingAnchor];

  v90 = [v85 constraintEqualToAnchor_];
  *(v84 + 32) = v90;
  v91 = [v25 trailingAnchor];
  v92 = [v88 view];
  if (!v92)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v93 = v92;
  v94 = [v92 trailingAnchor];

  v95 = [v91 constraintEqualToAnchor_];
  *(v84 + 40) = v95;
  v96 = [v25 bottomAnchor];

  v97 = [v88 view];
  if (v97)
  {
    v98 = v97;
    v99 = objc_opt_self();
    v100 = [v98 bottomAnchor];

    v101 = [v96 constraintEqualToAnchor_];
    *(v84 + 48) = v101;
    sub_2417D9544(0, &qword_27E54B7E0);
    v102 = sub_2417E422C();

    [v99 activateConstraints_];

    return;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  sub_2417E451C();
  __break(1u);
}

void sub_2417DC068(void *a1)
{
  [a1 value];
  v3 = *(v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel);
  if (!v3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B3F0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83A90];
  *(v5 + 16) = xmmword_2417E8670;
  v7 = MEMORY[0x277D83B08];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v4;
  v8 = v3;
  sub_2417E41BC();
  v9 = sub_2417E416C();

  [v8 setText_];

  v93 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView;
  v10 = *(v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView);
  if (!v10)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v11 = [v10 subviews];
  sub_2417D9544(0, &unk_27E54B7D0);
  v12 = sub_2417E424C();

  v96 = v1;
  if (v12 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2417E442C())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245CEF900](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v18 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_debugInfo);
  if (v19 >> 62)
  {
LABEL_48:
    v20 = sub_2417E442C();
    if (v20)
    {
LABEL_18:
      v21 = 0;
      v100 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider;
      v92 = v19 & 0xC000000000000001;
      v90 = OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_image;
      v91 = v19 & 0xFFFFFFFFFFFFFF8;
      v88 = v19;
      v89 = (v19 + 32);
      v87 = v20;
      while (1)
      {
        if (v92)
        {
          v22 = MEMORY[0x245CEF900](v21, v19);
        }

        else
        {
          if (v21 >= *(v91 + 16))
          {
            goto LABEL_47;
          }

          v22 = *&v89[8 * v21];
        }

        v23 = v22;
        v24 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (v24)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        [*(v18 + v90) size];
        v27 = v26;
        v29 = v28;
        v30 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        v31 = *&v23[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_graph] + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box;
        swift_beginAccess();
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        v35 = *(v31 + 24);
        CGAffineTransformMakeTranslation(&v101, -0.5, -0.5);
        v102.origin.x = v32;
        v102.origin.y = v33;
        v102.size.width = v34;
        v102.size.height = v35;
        v103 = CGRectApplyAffineTransform(v102, &v101);
        v101.b = 0.0;
        v101.c = 0.0;
        v101.a = 1.0;
        v101.d = 1.0;
        v101.tx = 0.0;
        v101.ty = 0.0;
        v104 = CGRectApplyAffineTransform(v103, &v101);
        x = v104.origin.x;
        y = v104.origin.y;
        width = v104.size.width;
        height = v104.size.height;
        CGAffineTransformMakeTranslation(&v101, 0.5, 0.5);
        v105.origin.x = x;
        v105.origin.y = y;
        v105.size.width = width;
        v105.size.height = height;
        v106 = CGRectApplyAffineTransform(v105, &v101);
        v40 = v106.origin.x;
        v41 = v106.origin.y;
        v42 = v106.size.width;
        v43 = v106.size.height;
        v44 = v27 * CGRectGetMinX(v106);
        v107.origin.x = v40;
        v107.origin.y = v41;
        v107.size.width = v42;
        v107.size.height = v43;
        v45 = v29 * CGRectGetMinY(v107);
        v108.origin.x = v40;
        v108.origin.y = v41;
        v108.size.width = v42;
        v108.size.height = v43;
        v46 = v27 * CGRectGetWidth(v108);
        v109.origin.x = v40;
        v109.origin.y = v41;
        v109.size.width = v42;
        v109.size.height = v43;
        v47 = v29 * CGRectGetHeight(v109);
        v99 = v46;
        [v30 setFrame_];
        v48 = [v30 layer];
        [v48 setBorderWidth_];

        v49 = [v30 layer];
        v50 = [objc_opt_self() blackColor];
        v51 = [v50 CGColor];

        [v49 setBorderColor_];
        v52 = *(v18 + v93);
        if (!v52)
        {
          break;
        }

        v95 = v25;
        [v52 addSubview_];
        v53 = 4.0;
        if (v29 >= 1000.0)
        {
          v53 = 8.0;
        }

        if (v29 < 400.0)
        {
          v53 = 2.0;
        }

        v98 = v53;
        v54 = *&v23[OBJC_IVAR____TtC18AudiogramIngestion23AudiogramDetectorResult_symbols];
        v55 = v30;
        v94 = v23;
        if (v54 >> 62)
        {
          v56 = sub_2417E442C();
          if (v56)
          {
LABEL_31:
            v57 = 0;
            v58 = v54 & 0xC000000000000001;
            v59 = v54 & 0xFFFFFFFFFFFFFF8;
            v97 = v56;
            while (1)
            {
              if (v58)
              {
                v60 = MEMORY[0x245CEF900](v57, v54);
              }

              else
              {
                if (v57 >= *(v59 + 16))
                {
                  goto LABEL_45;
                }

                v60 = *(v54 + 8 * v57 + 32);
              }

              v61 = v60;
              v62 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                __break(1u);
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              v63 = *(v18 + v100);
              if (!v63)
              {
                break;
              }

              v64 = *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_confidence];
              [v63 value];
              if (v65 <= v64)
              {
                v66 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
                v67 = *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box];
                v68 = *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8];
                v69 = *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16];
                v70 = *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24];
                CGAffineTransformMakeTranslation(&v101, -0.5, -0.5);
                v110.origin.x = v67;
                v110.origin.y = v68;
                v110.size.width = v69;
                v110.size.height = v70;
                v111 = CGRectApplyAffineTransform(v110, &v101);
                v101.b = 0.0;
                v101.c = 0.0;
                v101.a = 1.0;
                v101.d = 1.0;
                v101.tx = 0.0;
                v101.ty = 0.0;
                v112 = CGRectApplyAffineTransform(v111, &v101);
                v71 = v112.origin.x;
                v72 = v112.origin.y;
                v73 = v112.size.width;
                v74 = v112.size.height;
                CGAffineTransformMakeTranslation(&v101, 0.5, 0.5);
                v113.origin.x = v71;
                v113.origin.y = v72;
                v113.size.width = v73;
                v113.size.height = v74;
                v114 = CGRectApplyAffineTransform(v113, &v101);
                v75 = v114.origin.x;
                v76 = v114.origin.y;
                v77 = v114.size.width;
                v78 = v114.size.height;
                v79 = v99 * CGRectGetMinX(v114);
                v115.origin.x = v75;
                v115.origin.y = v76;
                v115.size.width = v77;
                v115.size.height = v78;
                v80 = v47 * CGRectGetMinY(v115);
                v116.origin.x = v75;
                v116.origin.y = v76;
                v116.size.width = v77;
                v116.size.height = v78;
                v81 = v99 * CGRectGetWidth(v116);
                v117.origin.x = v75;
                v117.origin.y = v76;
                v117.size.width = v77;
                v117.size.height = v78;
                [v66 setFrame_];
                v19 = v55;
                v82 = [v66 layer];
                [v82 setBorderWidth_];

                v83 = [v66 &selRef_setAssetManager_];
                v84 = v59;
                v85 = sub_2417DCB6C(*&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName], *&v61[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName + 8]);
                v86 = [v85 CGColor];

                v59 = v84;
                [v83 setBorderColor_];

                v55 = v19;
                v18 = v96;
                [v19 addSubview_];

                v56 = v97;
                v58 = v54 & 0xC000000000000001;
              }

              ++v57;
              if (v62 == v56)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            break;
          }
        }

        else
        {
          v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v56)
          {
            goto LABEL_31;
          }
        }

LABEL_19:

        v19 = v88;
        v21 = v95;
        if (v95 == v87)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_18;
    }
  }
}