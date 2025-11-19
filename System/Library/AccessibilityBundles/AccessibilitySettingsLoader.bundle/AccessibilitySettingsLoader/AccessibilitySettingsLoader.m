void sub_29BAE03CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getZoomServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getZoomServicesClass_softClass;
  v7 = getZoomServicesClass_softClass;
  if (!getZoomServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getZoomServicesClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getZoomServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE05CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXDeviceHasHomeButton()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  v6 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  if (!getAXDeviceHasHomeButtonSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXDeviceHasHomeButton");
    getAXDeviceHasHomeButtonSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXDeviceHasHomeButton_cold_1();
  }

  return v0();
}

void sub_29BAE07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXDeviceIsPad()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXDeviceIsPadSymbolLoc_ptr;
  v6 = getAXDeviceIsPadSymbolLoc_ptr;
  if (!getAXDeviceIsPadSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXDeviceIsPad");
    getAXDeviceIsPadSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXDeviceIsPad_cold_1();
  }

  return v0();
}

void sub_29BAE08B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsSpringBoard()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsSpringBoardSymbolLoc_ptr;
  v6 = getAXProcessIsSpringBoardSymbolLoc_ptr;
  if (!getAXProcessIsSpringBoardSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXProcessIsSpringBoard");
    getAXProcessIsSpringBoardSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsSpringBoard_cold_1();
  }

  return v0();
}

void sub_29BAE0D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE1008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft___ax_verbose_encode_with_type_encoding_group_class(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_ptr;
  v8 = get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_ptr;
  if (!get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_ptr)
  {
    v3 = AccessibilityUtilitiesLibrary();
    v6[3] = dlsym(v3, "__ax_verbose_encode_with_type_encoding_group_class");
    get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    soft___ax_verbose_encode_with_type_encoding_group_class_cold_1();
  }

  return v2(a1, "__CGPoint__");
}

void sub_29BAE16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsInCallService()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsInCallServiceSymbolLoc_ptr;
  v6 = getAXProcessIsInCallServiceSymbolLoc_ptr;
  if (!getAXProcessIsInCallServiceSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXProcessIsInCallService");
    getAXProcessIsInCallServiceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsInCallService_cold_1();
  }

  return v0();
}

void sub_29BAE17C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXUIKeyboardIsOnScreen()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr;
  v6 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr;
  if (!getAXUIKeyboardIsOnScreenSymbolLoc_ptr)
  {
    v1 = AccessibilityUIUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXUIKeyboardIsOnScreen");
    getAXUIKeyboardIsOnScreenSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXUIKeyboardIsOnScreen_cold_1();
  }

  return v0();
}

void sub_29BAE1C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_ptr;
  v6 = getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_ptr;
  if (!getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_ptr)
  {
    v1 = AccessibilityUIUtilitiesLibrary();
    v4[3] = dlsym(v1, "AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside");
    getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside_cold_1();
  }

  return v0();
}

void sub_29BAE1CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id soft_AXUIKeyboardWindow()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXUIKeyboardWindowSymbolLoc_ptr;
  v7 = getAXUIKeyboardWindowSymbolLoc_ptr;
  if (!getAXUIKeyboardWindowSymbolLoc_ptr)
  {
    v1 = AccessibilityUIUtilitiesLibrary();
    v5[3] = dlsym(v1, "AXUIKeyboardWindow");
    getAXUIKeyboardWindowSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    soft_AXUIKeyboardWindow_cold_1();
  }

  v2 = v0();

  return v2;
}

void sub_29BAE1E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double soft_AXUIConvertRectFromScreenToContextSpace(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v10 = getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_ptr;
  v17 = getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_ptr;
  if (!getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_ptr)
  {
    v11 = AccessibilityUIUtilitiesLibrary();
    v15[3] = dlsym(v11, "AXUIConvertRectFromScreenToContextSpace");
    getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_ptr = v15[3];
    v10 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v10)
  {
    soft_AXUIConvertRectFromScreenToContextSpace_cold_1();
  }

  v12 = v10(v9, a2, a3, a4, a5);

  return v12;
}

void sub_29BAE23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE2680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXBackBoardServerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXBackBoardServerClass_softClass;
  v7 = getAXBackBoardServerClass_softClass;
  if (!getAXBackBoardServerClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXBackBoardServerClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXBackBoardServerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE27E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_AXPerformSafeBlock(void *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v2 = getAXPerformSafeBlockSymbolLoc_ptr;
  v7 = getAXPerformSafeBlockSymbolLoc_ptr;
  if (!getAXPerformSafeBlockSymbolLoc_ptr)
  {
    v3 = AccessibilityUtilitiesLibrary();
    v5[3] = dlsym(v3, "AXPerformSafeBlock");
    getAXPerformSafeBlockSymbolLoc_ptr = v5[3];
    v2 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v2)
  {
    soft_AXPerformSafeBlock_cold_1();
  }

  v2(v1);
}

void sub_29BAE33BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v7 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE3AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id soft___UIAccessibilityCastAsClass(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = get__UIAccessibilityCastAsClassSymbolLoc_ptr;
  v13 = get__UIAccessibilityCastAsClassSymbolLoc_ptr;
  if (!get__UIAccessibilityCastAsClassSymbolLoc_ptr)
  {
    v7 = AccessibilityUtilitiesLibrary();
    v11[3] = dlsym(v7, "__UIAccessibilityCastAsClass");
    get__UIAccessibilityCastAsClassSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    soft___UIAccessibilityCastAsClass_cold_1();
  }

  v8 = v6(a1, v5, 1, a3);

  return v8;
}

void sub_29BAE4568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id soft_AXSafeClassFromString(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAXSafeClassFromStringSymbolLoc_ptr;
  v9 = getAXSafeClassFromStringSymbolLoc_ptr;
  if (!getAXSafeClassFromStringSymbolLoc_ptr)
  {
    v3 = AccessibilityUtilitiesLibrary();
    v7[3] = dlsym(v3, "AXSafeClassFromString");
    getAXSafeClassFromStringSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_AXSafeClassFromString_cold_1();
  }

  v4 = v2(v1);

  return v4;
}

void sub_29BAE4690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE4CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE4F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXProcessIsAXUIServerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsAXUIServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsAXUIServerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A618;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class __getZoomServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!operator||)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __ZoomServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F29A650;
    v6 = 0;
    operator|| = _sl_dlopen();
  }

  if (!operator||)
  {
    __getZoomServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("ZoomServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getZoomServicesClass_block_invoke_cold_1();
  }

  getZoomServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __ZoomServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  operator|| = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceIsPadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXDeviceIsPad");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceIsPadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSpringBoardSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsSpringBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSpringBoardSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXValidationManagerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXValidationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXValidationManagerClass_block_invoke_cold_1();
  }

  getAXValidationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "__ax_verbose_encode_with_type_encoding_group_class");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get__ax_verbose_encode_with_type_encoding_group_classSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsInCallServiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsInCallService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsInCallServiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXPerformValidationChecksSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXPerformValidationChecks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformValidationChecksSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIKeyboardIsOnScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardIsOnScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A668;
    v5 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    AccessibilityUIUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInsideSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXUIKeyboardWindowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIKeyboardWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardWindowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIConvertRectFromScreenToContextSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIConvertRectFromScreenToContextSpaceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXUIRectForZoomFocusChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIRectForZoomFocusChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIRectForZoomFocusChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXBackBoardServerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBackBoardServerClass_block_invoke_cold_1();
  }

  getAXBackBoardServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXPerformSafeBlockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXPerformSafeBlock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformSafeBlockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSafeClassFromStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXSafeClassFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSafeClassFromStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29BAE5D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSpeakTypingServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSpeakTypingServicesClass_softClass;
  v7 = getSpeakTypingServicesClass_softClass;
  if (!getSpeakTypingServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getSpeakTypingServicesClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getSpeakTypingServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE5FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE6430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTTSSpeechSynthesizerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __TextToSpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F29A6A8;
    v6 = 0;
    TextToSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    __getTTSSpeechSynthesizerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("TTSSpeechSynthesizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTTSSpeechSynthesizerClass_block_invoke_cold_1();
  }

  getTTSSpeechSynthesizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __TextToSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextToSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class __getSpeakTypingServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!SpeakTypingServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __SpeakTypingServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F29A6C0;
    v6 = 0;
    SpeakTypingServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpeakTypingServicesLibraryCore_frameworkLibrary)
  {
    __getSpeakTypingServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SpeakTypingServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakTypingServicesClass_block_invoke_cold_1();
  }

  getSpeakTypingServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __SpeakTypingServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeakTypingServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXSafeClassFromStringSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_0();
  result = dlsym(v2, "AXSafeClassFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSafeClassFromStringSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_0()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A6D8;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_0();
  result = dlsym(v2, "AXLanguageCanonicalFormToGeneralLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29BAE6FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE75AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsSystemApplication()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsSystemApplicationSymbolLoc_ptr;
  v6 = getAXProcessIsSystemApplicationSymbolLoc_ptr;
  if (!getAXProcessIsSystemApplicationSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary_1();
    v4[3] = dlsym(v1, "AXProcessIsSystemApplication");
    getAXProcessIsSystemApplicationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsSystemApplication_cold_1();
  }

  return v0();
}

void sub_29BAE76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXBackBoardServerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXBackBoardServerClass_softClass_0;
  v7 = getAXBackBoardServerClass_softClass_0;
  if (!getAXBackBoardServerClass_softClass_0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXBackBoardServerClass_block_invoke_0;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXBackBoardServerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE7794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE7B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsSpringBoard_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsSpringBoardSymbolLoc_ptr_0;
  v6 = getAXProcessIsSpringBoardSymbolLoc_ptr_0;
  if (!getAXProcessIsSpringBoardSymbolLoc_ptr_0)
  {
    v1 = AccessibilityUtilitiesLibrary_1();
    v4[3] = dlsym(v1, "AXProcessIsSpringBoard");
    getAXProcessIsSpringBoardSymbolLoc_ptr_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsSpringBoard_cold_1();
  }

  return v0();
}

void sub_29BAE7C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXSettingsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass_0;
  v7 = getAXSettingsClass_softClass_0;
  if (!getAXSettingsClass_softClass_0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke_0;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE7D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXValidationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXValidationManagerClass_softClass_0;
  v7 = getAXValidationManagerClass_softClass_0;
  if (!getAXValidationManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXValidationManagerClass_block_invoke_0;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXValidationManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAE7FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXPerformValidationChecks()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXPerformValidationChecksSymbolLoc_ptr_0;
  v6 = getAXPerformValidationChecksSymbolLoc_ptr_0;
  if (!getAXPerformValidationChecksSymbolLoc_ptr_0)
  {
    v1 = AccessibilityUtilitiesLibrary_1();
    v4[3] = dlsym(v1, "AXPerformValidationChecks");
    getAXPerformValidationChecksSymbolLoc_ptr_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_3_cold_1();
  }

  return v0();
}

void sub_29BAE80E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE8248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE8690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXResourceLoaderClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_1();
  result = objc_getClass("AXResourceLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXResourceLoaderClass_block_invoke_cold_1();
  }

  getAXResourceLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_1()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A740;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_1;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXProcessIsSystemApplicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXProcessIsSystemApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSystemApplicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXBackBoardServerClass_block_invoke_0(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_1();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBackBoardServerClass_block_invoke_cold_1();
  }

  getAXBackBoardServerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSpringBoardSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXProcessIsSpringBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSpringBoardSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXCurrentProcessExistsInLoginSessionSBOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXCurrentProcessExistsInLoginSessionSBOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXCurrentProcessExistsInLoginSessionSBOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXSettingsClass_block_invoke_0(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_1();
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceIsPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXDeviceIsPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceIsPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSetupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXProcessIsSetup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSetupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsPreBoardSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXProcessIsPreBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsPreBoardSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsCheckerBoardSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXProcessIsCheckerBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsCheckerBoardSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXLoadAccessibilityDebuggerIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXLoadAccessibilityDebuggerIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLoadAccessibilityDebuggerIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXBinaryMonitorClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_1();
  result = objc_getClass("AXBinaryMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBinaryMonitorClass_block_invoke_cold_1();
  }

  getAXBinaryMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXValidationManagerClass_block_invoke_0(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_1();
  result = objc_getClass("AXValidationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXValidationManagerClass_block_invoke_cold_1();
  }

  getAXValidationManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXPerformValidationChecksSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXPerformValidationChecks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformValidationChecksSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMADisplayFilterSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_29F29A758;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    __getkMADisplayFilterSettingsChangedNotificationSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "kMADisplayFilterSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMADisplayFilterSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_1();
  result = dlsym(v2, "AXSpringBoardUserChangedAudioRouteNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _handleGuidedAccessActiveStatusDidChangeBroadcastNotification()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDBA068] defaultCenter];
  [v1 postNotificationName:*MEMORY[0x29EDC7EC8] object:0];

  objc_autoreleasePoolPop(v0);
}

BOOL _hasBooleanEntitlement(__SecTask *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  if (error)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = a1;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = error;
      _os_log_error_impl(&dword_29BADF000, v5, OS_LOG_TYPE_ERROR, "Unable to check if task %@ has entitlement %@: %@", buf, 0x20u);
    }

    CFRelease(error);
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29BAE9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE9714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAE9960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXReplayerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_2();
  result = objc_getClass("AXReplayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXReplayerClass_block_invoke_cold_1();
  }

  getAXReplayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_2()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A7D8;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_2;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_2)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class __getAXBackBoardServerClass_block_invoke_1(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_2();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBackBoardServerClass_block_invoke_cold_1();
  }

  getAXBackBoardServerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSpringBoardSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_2();
  result = dlsym(v2, "AXProcessIsSpringBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSpringBoardSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _axSettingsHandlePreferenceChanged(int a1, int a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x29EDC8448], 0))
  {
    if (CFStringCompare(theString1, *MEMORY[0x29EDC8450], 0))
    {
      return;
    }

    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_ptr;
    v11 = getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_ptr;
    if (!getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_ptr)
    {
      v6 = AccessibilityLibrary();
      v9[3] = dlsym(v6, "AXMFiHearingDeviceStreamingEarDidChangeNotification");
      getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_ptr = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      _axSettingsHandlePreferenceChanged_cold_1();
    }
  }

  else
  {
    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_ptr;
    v11 = getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_ptr;
    if (!getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_ptr)
    {
      v7 = AccessibilityLibrary();
      v9[3] = dlsym(v7, "AXMFiHearingDevicePairedUUIDsDidChangeNotification");
      getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_ptr = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      _axSettingsHandlePreferenceChanged_cold_2();
    }
  }

  [v4 postNotificationName:*v5 object:0];
}

void sub_29BAEA278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityLibrary();
  result = dlsym(v2, "AXMFiHearingDevicePairedUUIDsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMFiHearingDevicePairedUUIDsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityLibrary()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A7F0;
    v5 = 0;
    AccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityLibraryCore_frameworkLibrary;
  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    AccessibilityLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityLibrary();
  result = dlsym(v2, "AXMFiHearingDeviceStreamingEarDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMFiHearingDeviceStreamingEarDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getSpeakThisServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSpeakThisServicesClass_softClass;
  v7 = getSpeakThisServicesClass_softClass;
  if (!getSpeakThisServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getSpeakThisServicesClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getSpeakThisServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAEA940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSpeakThisServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __SpeakThisServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F29A828;
    v6 = 0;
    SpeakThisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    __getSpeakThisServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SpeakThisServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakThisServicesClass_block_invoke_cold_1();
  }

  getSpeakThisServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __SpeakThisServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeakThisServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _handleInvertColorsPreload()
{
  v0 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_29BADF000, v0, OS_LOG_TYPE_INFO, "Handling invert colors pre-load", v2, 2u);
  }

  _AXSInvertColorsReloadPreferenceImmediately();
  +[AXInvertColorsController loadInvertColorsBundle];
  return _AXSInvertColorsMarkInvertColorsPreloadComplete();
}

void sub_29BAEB3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsAssistiveTouch()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsAssistiveTouchSymbolLoc_ptr;
  v6 = getAXProcessIsAssistiveTouchSymbolLoc_ptr;
  if (!getAXProcessIsAssistiveTouchSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary_3();
    v4[3] = dlsym(v1, "AXProcessIsAssistiveTouch");
    getAXProcessIsAssistiveTouchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsAssistiveTouch_cold_1();
  }

  return v0();
}

void sub_29BAEBB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsSpringBoard_1()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXProcessIsSpringBoardSymbolLoc_ptr_2;
  v6 = getAXProcessIsSpringBoardSymbolLoc_ptr_2;
  if (!getAXProcessIsSpringBoardSymbolLoc_ptr_2)
  {
    v1 = AccessibilityUtilitiesLibrary_3();
    v4[3] = dlsym(v1, "AXProcessIsSpringBoard");
    getAXProcessIsSpringBoardSymbolLoc_ptr_2 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXProcessIsSpringBoard_cold_1();
  }

  return v0();
}

void sub_29BAEBC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAEC4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary_0();
  result = dlsym(v2, "AXUIKeyboardIsOnScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary_0()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A898;
    v5 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0)
  {
    AccessibilityUIUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXUIKeyboardScreenFrameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary_0();
  result = dlsym(v2, "AXUIKeyboardScreenFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardScreenFrameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsAssistiveTouchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_3();
  result = dlsym(v2, "AXProcessIsAssistiveTouch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsAssistiveTouchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_3()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A8B0;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_3;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_3)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXProcessIsSpringBoardSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_3();
  result = dlsym(v2, "AXProcessIsSpringBoard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSpringBoardSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSpotlightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_3();
  result = dlsym(v2, "AXProcessIsSpotlight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSpotlightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSetupSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_3();
  result = dlsym(v2, "AXProcessIsSetup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSetupSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void typingFeedback()
{
  v0 = +[SpeakTypingManager sharedInstance];
  [v0 updateForCurrentTypingFeedbackStatus];
}

void quickTypePredictionFeedback()
{
  v0 = +[SpeakTypingManager sharedInstance];
  [v0 updateForCurrentQuickTypeFeedbackStatus];
}

void wordFeedback()
{
  v0 = +[SpeakTypingManager sharedInstance];
  [v0 updateForCurrentWordFeedbackStatus];
}

id getSpeakTypingServicesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSpeakTypingServicesClass_softClass_0;
  v7 = getSpeakTypingServicesClass_softClass_0;
  if (!getSpeakTypingServicesClass_softClass_0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getSpeakTypingServicesClass_block_invoke_0;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getSpeakTypingServicesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAECFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_AXPerformSafeBlock_0(void *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v2 = getAXPerformSafeBlockSymbolLoc_ptr_0;
  v7 = getAXPerformSafeBlockSymbolLoc_ptr_0;
  if (!getAXPerformSafeBlockSymbolLoc_ptr_0)
  {
    v3 = AccessibilityUtilitiesLibrary_4();
    v5[3] = dlsym(v3, "AXPerformSafeBlock");
    getAXPerformSafeBlockSymbolLoc_ptr_0 = v5[3];
    v2 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v2)
  {
    soft_AXPerformSafeBlock_cold_1();
  }

  v2(v1);
}

void sub_29BAED104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAED330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BAED724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXValidationManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXValidationManagerClass_softClass_1;
  v7 = getAXValidationManagerClass_softClass_1;
  if (!getAXValidationManagerClass_softClass_1)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXValidationManagerClass_block_invoke_1;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXValidationManagerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BAED804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXPerformValidationChecks_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXPerformValidationChecksSymbolLoc_ptr_1;
  v6 = getAXPerformValidationChecksSymbolLoc_ptr_1;
  if (!getAXPerformValidationChecksSymbolLoc_ptr_1)
  {
    v1 = AccessibilityUtilitiesLibrary_4();
    v4[3] = dlsym(v1, "AXPerformValidationChecks");
    getAXPerformValidationChecksSymbolLoc_ptr_1 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_3_cold_1();
  }

  return v0();
}

void sub_29BAEDA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSpeakTypingServicesClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!SpeakTypingServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __SpeakTypingServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F29A938;
    v6 = 0;
    SpeakTypingServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SpeakTypingServicesLibraryCore_frameworkLibrary_0)
  {
    __getSpeakTypingServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SpeakTypingServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakTypingServicesClass_block_invoke_cold_1();
  }

  getSpeakTypingServicesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __SpeakTypingServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeakTypingServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXPerformSafeBlockSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_4();
  result = dlsym(v2, "AXPerformSafeBlock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformSafeBlockSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_4()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A950;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_4;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_4)
  {
    AccessibilityUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXUIApplicationWindowsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary_1();
  result = dlsym(v2, "AXUIApplicationWindows");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIApplicationWindowsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary_1()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F29A968;
    v5 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_1;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_1)
  {
    AccessibilityUIUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXUIKeyboardWindowSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary_1();
  result = dlsym(v2, "AXUIKeyboardWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardWindowSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXProcessIsSafariSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_4();
  result = dlsym(v2, "AXProcessIsSafari");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsSafariSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXResourceLoaderClass_block_invoke_0(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_4();
  result = objc_getClass("AXResourceLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXResourceLoaderClass_block_invoke_cold_1();
  }

  getAXResourceLoaderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXValidationManagerClass_block_invoke_1(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_4();
  result = objc_getClass("AXValidationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXValidationManagerClass_block_invoke_cold_1();
  }

  getAXValidationManagerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXPerformValidationChecksSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_4();
  result = dlsym(v2, "AXPerformValidationChecks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformValidationChecksSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXBinaryMonitorClass_block_invoke_0(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_4();
  result = objc_getClass("AXBinaryMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBinaryMonitorClass_block_invoke_cold_1();
  }

  getAXBinaryMonitorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29BAEEDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_5)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_5;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_29F29A980;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_5;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_5)
  {
    __getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "AXSpringBoardUserChangedAudioRouteNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void soft_AXDeviceHasHomeButton_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXDeviceHasHomeButton(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:65 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXDeviceIsPad_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXDeviceIsPad(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:64 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXProcessIsSpringBoard_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsSpringBoard(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:68 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft___ax_verbose_encode_with_type_encoding_group_class_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{"char *soft___ax_verbose_encode_with_type_encoding_group_class(__unsafe_unretained Class, const char *)"}];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:74 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXProcessIsInCallService_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsInCallService(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:66 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXUIKeyboardIsOnScreen_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXUIKeyboardIsOnScreen(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"CGRect soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXUIKeyboardWindow_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"UIWindow *soft_AXUIKeyboardWindow(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXUIConvertRectFromScreenToContextSpace_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{"CGRect soft_AXUIConvertRectFromScreenToContextSpace(UIWindow *__strong, CGRect)"}];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXPerformSafeBlock_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void soft_AXPerformSafeBlock(__strong dispatch_block_t)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:72 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft___UIAccessibilityCastAsClass_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{"id soft___UIAccessibilityCastAsClass(__unsafe_unretained Class, __strong id, BOOL, BOOL *)"}];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXSafeClassFromString_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class soft_AXSafeClassFromString(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
}

void AccessibilityUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getZoomServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getZoomServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:96 description:{@"Unable to find class %s", "ZoomServices"}];

  __break(1u);
}

void __getZoomServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *ZoomServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXValidationManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXValidationManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:52 description:{@"Unable to find class %s", "AXValidationManager"}];

  __break(1u);
}

void AccessibilityUIUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AccessibilityUIUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXBackBoardServerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXBackBoardServerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:54 description:{@"Unable to find class %s", "AXBackBoardServer"}];

  __break(1u);
}

void __getAXSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:50 description:{@"Unable to find class %s", "AXSettings"}];

  __break(1u);
}

void __getTTSSpeechSynthesizerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getTTSSpeechSynthesizerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:89 description:{@"Unable to find class %s", "TTSSpeechSynthesizer"}];

  __break(1u);
}

void __getTTSSpeechSynthesizerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *TextToSpeechLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getSpeakTypingServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getSpeakTypingServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:47 description:{@"Unable to find class %s", "SpeakTypingServices"}];

  __break(1u);
}

void __getSpeakTypingServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpeakTypingServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void soft_AXProcessIsSystemApplication_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsSystemApplication(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:77 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAXResourceLoaderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXResourceLoaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:56 description:{@"Unable to find class %s", "AXResourceLoader"}];

  __break(1u);
}

void __getAXBinaryMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXBinaryMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:60 description:{@"Unable to find class %s", "AXBinaryMonitor"}];

  __break(1u);
}

void __getkMADisplayFilterSettingsChangedNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *MediaAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXReplayerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXReplayerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:58 description:{@"Unable to find class %s", "AXReplayer"}];

  __break(1u);
}

void _axSettingsHandlePreferenceChanged_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSNotificationName getAXMFiHearingDeviceStreamingEarDidChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void _axSettingsHandlePreferenceChanged_cold_2()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSNotificationName getAXMFiHearingDevicePairedUUIDsDidChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void AccessibilityLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getSpeakThisServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:100 description:{@"Unable to find class %s", "SpeakThisServices"}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpeakThisServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void soft_AXProcessIsAssistiveTouch_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsAssistiveTouch(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:75 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MPAVRoutingControllerAccessibility.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
  ASTLogCommon();
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x2A1C5B418](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}