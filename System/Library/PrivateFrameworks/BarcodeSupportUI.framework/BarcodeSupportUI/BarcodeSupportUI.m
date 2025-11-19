uint64_t BCS_LOG_CHANNEL_PREFIXBarcodeScanner()
{
  if (BCS_LOG_CHANNEL_PREFIXBarcodeScanner_onceToken != -1)
  {
    BCS_LOG_CHANNEL_PREFIXBarcodeScanner_cold_1();
  }

  return BCS_LOG_CHANNEL_PREFIXBarcodeScanner_log;
}

uint64_t BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle()
{
  if (BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_onceToken != -1)
  {
    BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_cold_1();
  }

  return BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_log;
}

void sub_2419EE868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_2419F1ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2419F1CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419F8A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getLICreateIconFromCachedBitmapSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileIconsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileIconsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D021C8;
    v7 = 0;
    MobileIconsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileIconsLibraryCore_frameworkLibrary;
  if (!MobileIconsLibraryCore_frameworkLibrary)
  {
    __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "LICreateIconFromCachedBitmap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLICreateIconFromCachedBitmapSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileIconsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileIconsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getDDUIEventForResultsSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __DataDetectorsUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D02200;
    v7 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = DataDetectorsUILibraryCore_frameworkLibrary;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "DDUIEventForResults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDUIEventForResultsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2419FB698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419FCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419FCDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISIconClass_block_invoke_cold_1();
  }

  getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IconServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IconServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278D023A8;
    v5 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    IconServicesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISImageDescriptorClass_block_invoke_cold_1();
  }

  getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDDUIEventForResultsSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __DataDetectorsUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D023C0;
    v7 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = DataDetectorsUILibraryCore_frameworkLibrary_0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "DDUIEventForResults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDUIEventForResultsSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getFBSSystemServiceClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSSystemService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSSystemServiceClass_block_invoke_cold_1();
  }

  getFBSSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278D023D8;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    FrontBoardServicesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileCoreServicesLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = MobileCoreServicesLibraryCore_frameworkLibrary;
  v6 = MobileCoreServicesLibraryCore_frameworkLibrary;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278D023F0;
    v8 = *off_278D02400;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MobileCoreServicesLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_2419FD8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MobileCoreServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MobileCoreServicesLibrary()
{
  v1 = 0;
  result = MobileCoreServicesLibraryCore();
  if (!result)
  {
    MobileCoreServicesLibrary_cold_1(&v1);
  }

  return result;
}

id getLSApplicationProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLSApplicationProxyClass_softClass;
  v7 = getLSApplicationProxyClass_softClass;
  if (!getLSApplicationProxyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLSApplicationProxyClass_block_invoke;
    v3[3] = &unk_278D021A8;
    v3[4] = &v4;
    __getLSApplicationProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2419FDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLSApplicationProxyClass_block_invoke(uint64_t a1)
{
  MobileCoreServicesLibrary();
  result = objc_getClass("LSApplicationProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationProxyClass_block_invoke_cold_1();
  }

  getLSApplicationProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2419FF300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AppC3DUpdateCallbackHandler(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v14 = a1;
  v12 = [a7 objectForKey:@"orientation"];
  v13 = [v12 longValue];

  [v14 didReceiveAppC3DUpdate:a2 orientation:v13 error:a8 timestamp:a3];
}

void sub_241A00198(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = *(*(sub_241A04370() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_241A04360();
  v1[3] = sub_241A04380();
  v1[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_241A04390();
  sub_241A043E0();
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

void sub_241A01AEC(void *a1)
{
  v2 = *(*(sub_241A04370() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = a1;
  sub_241A04360();
  v4[3] = sub_241A04380();
  v4[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_241A04390();
  sub_241A043E0();
}

uint64_t static BCSSecureCaptureSession.setSession(session:)(uint64_t a1)
{
  qword_27E551F28 = a1;
}

uint64_t sub_241A01C30()
{
  v1 = qword_27E551F28;
  v0[3] = qword_27E551F28;
  if (v1)
  {
    v2 = *(MEMORY[0x277CD4888] + 4);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_241A01D14;
    v4 = v0[2];

    return MEMORY[0x282123370](v4);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_241A01D14()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241A01E50, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_241A01E50()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_241A02038(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return MEMORY[0x2822009F8](sub_241A020B4, 0, 0);
}

uint64_t sub_241A020B4()
{
  v1 = qword_27E551F28;
  *(v0 + 32) = qword_27E551F28;
  if (v1)
  {
    v2 = *(MEMORY[0x277CD4888] + 4);

    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_241A021BC;
    v4 = *(v0 + 16);

    return MEMORY[0x282123370](v4);
  }

  else
  {
    v5 = *(v0 + 24);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v0 + 24));
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_241A021BC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241A0231C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 32);

    v5 = *(v3 + 24);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v3 + 24));
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_241A0231C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_241A04320();

  (*(v3 + 16))(v3, v4);
  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_241A02410(void (*a1)(void))
{
  sub_241A04340();
  sub_241A04330();
  a1();
}

uint64_t sub_241A02478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_241A04340();
  sub_241A04330();
  a3();
}

id BCSSecureCaptureSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BCSSecureCaptureSession.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BCSSecureCaptureSession();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BCSSecureCaptureSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BCSSecureCaptureSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_241A02614()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241A02654()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241A02708;

  return sub_241A02038(v2, v3);
}

uint64_t sub_241A02708()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241A027FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_241A032D0;

  return v7();
}

uint64_t sub_241A028E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_241A032D0;

  return sub_241A027FC(v2, v3, v5);
}

uint64_t sub_241A029A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_241A02708;

  return v8();
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241A02AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241A032D0;

  return sub_241A029A4(a1, v4, v5, v7);
}

uint64_t sub_241A02B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_241A02E58(a3, v24 - v10);
  v12 = sub_241A043D0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_241A02EC8(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_241A043C0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_241A043B0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_241A043A0() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_241A02EC8(a3);

    return v22;
  }

LABEL_8:
  sub_241A02EC8(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_241A02E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241A02EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241A02F30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241A03028;

  return v7(a1);
}

uint64_t sub_241A03028()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241A03120()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241A03158(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241A032D0;

  return sub_241A02F30(a1, v5);
}

uint64_t sub_241A03210(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241A02708;

  return sub_241A02F30(a1, v5);
}

void __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileIconsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSAlertController.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DataDetectorsUISoftLink.h" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getISIconClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:50 description:{@"Unable to find class %s", "ISIcon"}];

  __break(1u);
}

void IconServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IconServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSActionCoordinator.m" lineNumber:49 description:{@"%s", *a1}];

  __break(1u);
}

void __getISImageDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:52 description:{@"Unable to find class %s", "ISImageDescriptor"}];

  __break(1u);
}

void __getFBSSystemServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSSystemServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:44 description:{@"Unable to find class %s", "FBSSystemService"}];

  __break(1u);
}

void FrontBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSActionCoordinator.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void MobileCoreServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileCoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MobileCoreServicesSoftLink.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void __getLSApplicationProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLSApplicationProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MobileCoreServicesSoftLink.m" lineNumber:12 description:{@"Unable to find class %s", "LSApplicationProxy"}];

  __break(1u);
  sub_241A04320();
}