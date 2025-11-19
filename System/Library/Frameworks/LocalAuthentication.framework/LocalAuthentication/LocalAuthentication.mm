void sub_1A784F90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A784FA30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
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

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A78508F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7850AC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7850C74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7850E28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7850FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7851144(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A78512D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A78515E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A78517C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A78519B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getTKBERTLVRecordClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getTKBERTLVRecordClass_softClass;
  v6 = getTKBERTLVRecordClass_softClass;
  if (!getTKBERTLVRecordClass_softClass)
  {
    CryptoTokenKitLibraryCore();
    v4[3] = objc_getClass("TKBERTLVRecord");
    getTKBERTLVRecordClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A7852484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A78528A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTKBERTLVRecordClass_block_invoke(uint64_t a1)
{
  CryptoTokenKitLibraryCore();
  result = objc_getClass("TKBERTLVRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKBERTLVRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CryptoTokenKitLibraryCore()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!CryptoTokenKitLibraryCore_frameworkLibrary)
  {
    CryptoTokenKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __CryptoTokenKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CryptoTokenKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getTKTLVRecordClass_block_invoke(uint64_t a1)
{
  CryptoTokenKitLibraryCore();
  result = objc_getClass("TKTLVRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKTLVRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{
  v3 = *(a1 + 16);

  return [v3 addObject:v1];
}

void sub_1A7853960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id LA_LOG()
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v1 = LA_LOG_log;

  return v1;
}

void sub_1A7854A40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

id LA_LOG_0()
{
  if (LA_LOG_once_0 != -1)
  {
    LA_LOG_cold_1_0();
  }

  v1 = LA_LOG_log_0;

  return v1;
}

void sub_1A7857F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getLAContextUITrampolineClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary)
  {
    LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("LAContextUITrampoline");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLAContextUITrampolineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LocalAuthenticationEmbeddedUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationEmbeddedUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A785A358(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A785A674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A785ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A785AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A785B288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A785B52C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A785B9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A785BDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A785C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A785C9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A785CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A785D028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id LA_LOG_1()
{
  if (LA_LOG_once_1 != -1)
  {
    LA_LOG_cold_1_1();
  }

  v1 = LA_LOG_log_1;

  return v1;
}

id LA_LOG_2()
{
  if (LA_LOG_once_2 != -1)
  {
    LA_LOG_cold_1_2();
  }

  v1 = LA_LOG_log_2;

  return v1;
}

void sub_1A78600E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7861784(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7863EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A78640BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A786435C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

id LA_LOG_laabio()
{
  if (LA_LOG_laabio_once != -1)
  {
    LA_LOG_laabio_cold_1();
  }

  v1 = LA_LOG_laabio_log;

  return v1;
}

id LA_LOG_3()
{
  if (LA_LOG_once_4 != -1)
  {
    LA_LOG_cold_1_3();
  }

  v1 = LA_LOG_log_4;

  return v1;
}

void sub_1A78695E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1A78699DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A786A3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A786A4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A786A628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A786A768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A786A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A786AA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A786ACA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A786AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A786B0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A786B510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

uint64_t _LAMKBLockDevice(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMKBLockDeviceSymbolLoc_ptr;
  v12 = getMKBLockDeviceSymbolLoc_ptr;
  if (!getMKBLockDeviceSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBLockDeviceSymbolLoc_block_invoke;
    v14 = &unk_1E77CB120;
    v15 = &v9;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBLockDevice");
    *(v15[1] + 24) = v4;
    getMKBLockDeviceSymbolLoc_ptr = *(v15[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v5 = v2(a1);
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBLockDevice";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 1024;
    LODWORD(v14) = v5;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:options:%@ -> %d", buf, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _LAMKBUnlockDevice(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMKBUnlockDeviceSymbolLoc_ptr;
  v14 = getMKBUnlockDeviceSymbolLoc_ptr;
  if (!getMKBUnlockDeviceSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBUnlockDeviceSymbolLoc_block_invoke;
    v16 = &unk_1E77CB120;
    v17 = &v11;
    v5 = MobileKeyBagLibrary();
    v6 = dlsym(v5, "MKBUnlockDevice");
    *(v17[1] + 24) = v6;
    getMKBUnlockDeviceSymbolLoc_ptr = *(v17[1] + 24);
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v7 = v4(a1, a2);
  v8 = +[_LAMKBLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBUnlockDevice";
    *&buf[12] = 2112;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    LODWORD(v16) = v7;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "%s:options:%@ -> %d", buf, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _LAMKBGetDeviceConfigurations(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMKBGetDeviceConfigurationsSymbolLoc_ptr;
  v12 = getMKBGetDeviceConfigurationsSymbolLoc_ptr;
  if (!getMKBGetDeviceConfigurationsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBGetDeviceConfigurationsSymbolLoc_block_invoke;
    v14 = &unk_1E77CB120;
    v15 = &v9;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBGetDeviceConfigurations");
    *(v15[1] + 24) = v4;
    getMKBGetDeviceConfigurationsSymbolLoc_ptr = *(v15[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v5 = v2(a1);
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBGetDeviceConfigurations";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 2112;
    v14 = v5;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:options:%@ -> %@", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _LAMKBGetDeviceLockState(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v12 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v14 = &unk_1E77CB120;
    v15 = &v9;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBGetDeviceLockState");
    *(v15[1] + 24) = v4;
    getMKBGetDeviceLockStateSymbolLoc_ptr = *(v15[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v5 = v2(a1);
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBGetDeviceLockState";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 1024;
    LODWORD(v14) = v5;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:options:%@ -> %d", buf, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _LAMKBGetDeviceLockStateInfo(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMKBGetDeviceLockStateInfoSymbolLoc_ptr;
  v12 = getMKBGetDeviceLockStateInfoSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateInfoSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBGetDeviceLockStateInfoSymbolLoc_block_invoke;
    v14 = &unk_1E77CB120;
    v15 = &v9;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBGetDeviceLockStateInfo");
    *(v15[1] + 24) = v4;
    getMKBGetDeviceLockStateInfoSymbolLoc_ptr = *(v15[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v5 = v2(a1);
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBGetDeviceLockStateInfo";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 2112;
    v14 = v5;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:options:%@ -> %@", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _LAMKBDeviceUnlockedSinceBoot()
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v11 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v13 = &unk_1E77CB120;
    v14 = &v8;
    v1 = MobileKeyBagLibrary();
    v2 = dlsym(v1, "MKBDeviceUnlockedSinceBoot");
    *(v14[1] + 24) = v2;
    getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(v14[1] + 24);
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v4 = v0(v3);
  v5 = +[_LAMKBLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_LAMKBDeviceUnlockedSinceBoot";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "%s:: -> %d", buf, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _LAMKBDeviceLockAssertion(uint64_t a1, uint64_t *a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  v15 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  if (!getMKBDeviceLockAssertionSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBDeviceLockAssertionSymbolLoc_block_invoke;
    v17 = &unk_1E77CB120;
    v18[0] = &v12;
    v5 = MobileKeyBagLibrary();
    v6 = dlsym(v5, "MKBDeviceLockAssertion");
    *(*(v18[0] + 8) + 24) = v6;
    getMKBDeviceLockAssertionSymbolLoc_ptr = *(*(v18[0] + 8) + 24);
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v7 = v4(a1, a2);
  v8 = +[_LAMKBLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v9 = *a2;
    }

    else
    {
      v9 = 0;
    }

    *buf = 136315906;
    *&buf[4] = "_LAMKBDeviceLockAssertion";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 2112;
    v17 = v7;
    LOWORD(v18[0]) = 2112;
    *(v18 + 2) = v9;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "%s:options:%@ -> %@ (%@)", buf, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _LAMKBKeyBagKeyStashCreateWithOpts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v8 = getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr;
  v19 = getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr;
  if (!getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_block_invoke;
    *&v21 = &unk_1E77CB120;
    *(&v21 + 1) = &v16;
    v9 = MobileKeyBagLibrary();
    v10 = dlsym(v9, "MKBKeyBagKeyStashCreateWithOpts");
    *(*(*(&v21 + 1) + 8) + 24) = v10;
    getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr = *(*(*(&v21 + 1) + 8) + 24);
    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v8)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v11 = v8(a1, a2, a3, a4);
  v12 = +[_LAMKBLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "<...>";
    *buf = 136316418;
    *&buf[4] = "_LAMKBKeyBagKeyStashCreateWithOpts";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    if (!a4)
    {
      v13 = "NULL";
    }

    *&buf[22] = 1024;
    LODWORD(v21) = a2;
    WORD2(v21) = 2112;
    *(&v21 + 6) = a3;
    HIWORD(v21) = 2080;
    v22 = v13;
    v23 = 1024;
    v24 = v11;
    _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_INFO, "%s:options:%@ stash_mode:%d ACMRef:%@ passcode:%s -> %d", buf, 0x36u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _LAMKBKeyBagKeyStashCommit()
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = getMKBKeyBagKeyStashCommitSymbolLoc_ptr;
  v11 = getMKBKeyBagKeyStashCommitSymbolLoc_ptr;
  if (!getMKBKeyBagKeyStashCommitSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBKeyBagKeyStashCommitSymbolLoc_block_invoke;
    v13 = &unk_1E77CB120;
    v14 = &v8;
    v1 = MobileKeyBagLibrary();
    v2 = dlsym(v1, "MKBKeyBagKeyStashCommit");
    *(v14[1] + 24) = v2;
    getMKBKeyBagKeyStashCommitSymbolLoc_ptr = *(v14[1] + 24);
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v4 = v0(v3);
  v5 = +[_LAMKBLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_LAMKBKeyBagKeyStashCommit";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "%s:: -> %d", buf, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _LAMKBKeyBagKeyStashVerify()
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = getMKBKeyBagKeyStashVerifySymbolLoc_ptr;
  v11 = getMKBKeyBagKeyStashVerifySymbolLoc_ptr;
  if (!getMKBKeyBagKeyStashVerifySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBKeyBagKeyStashVerifySymbolLoc_block_invoke;
    v13 = &unk_1E77CB120;
    v14 = &v8;
    v1 = MobileKeyBagLibrary();
    v2 = dlsym(v1, "MKBKeyBagKeyStashVerify");
    *(v14[1] + 24) = v2;
    getMKBKeyBagKeyStashVerifySymbolLoc_ptr = *(v14[1] + 24);
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v4 = v0(v3);
  v5 = +[_LAMKBLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_LAMKBKeyBagKeyStashVerify";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "%s:: -> %@", buf, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _LAMKBEventsRegister(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___LAMKBEventsRegister_block_invoke;
  v15[3] = &unk_1E77CC358;
  v5 = v4;
  v16 = v5;
  v6 = v3;
  v7 = v15;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = getMKBEventsRegisterSymbolLoc_ptr;
  v20 = getMKBEventsRegisterSymbolLoc_ptr;
  if (!getMKBEventsRegisterSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBEventsRegisterSymbolLoc_block_invoke;
    v22 = &unk_1E77CB120;
    v23 = &v17;
    v9 = MobileKeyBagLibrary();
    v10 = dlsym(v9, "MKBEventsRegister");
    *(v23[1] + 24) = v10;
    getMKBEventsRegisterSymbolLoc_ptr = *(v23[1] + 24);
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v8)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v11 = v8(v6, v7);

  v12 = +[_LAMKBLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBEventsRegister";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2048;
    v22 = v11;
    _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_INFO, "%s:queue:%@ -> %p", buf, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1A786DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LAMKBEventsUnregister(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMKBEventsUnregisterSymbolLoc_ptr;
  v10 = getMKBEventsUnregisterSymbolLoc_ptr;
  if (!getMKBEventsUnregisterSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBEventsUnregisterSymbolLoc_block_invoke;
    v12 = &unk_1E77CB120;
    v13 = &v7;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBEventsUnregister");
    *(v13[1] + 24) = v4;
    getMKBEventsUnregisterSymbolLoc_ptr = *(v13[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v2(a1);
  v5 = +[_LAMKBLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_LAMKBEventsUnregister";
    *&buf[12] = 2048;
    *&buf[14] = a1;
    _os_log_impl(&dword_1A784E000, v5, OS_LOG_TYPE_INFO, "%s:ref:%p", buf, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _LAMKBKeyBagPerformRecovery(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getMKBKeyBagPerformRecoverySymbolLoc_ptr;
  v15 = getMKBKeyBagPerformRecoverySymbolLoc_ptr;
  if (!getMKBKeyBagPerformRecoverySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBKeyBagPerformRecoverySymbolLoc_block_invoke;
    v17 = &unk_1E77CB120;
    v18 = &v12;
    v5 = MobileKeyBagLibrary();
    v6 = dlsym(v5, "MKBKeyBagPerformRecovery");
    *(v18[1] + 24) = v6;
    getMKBKeyBagPerformRecoverySymbolLoc_ptr = *(v18[1] + 24);
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v7 = v4(a1, a2);
  v8 = +[_LAMKBLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = "<...>";
    *&buf[4] = "_LAMKBKeyBagPerformRecovery";
    *&buf[12] = 2080;
    *buf = 136315906;
    if (!a1)
    {
      v9 = "NULL";
    }

    *&buf[14] = v9;
    *&buf[22] = 2112;
    v17 = a2;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v7;
    _os_log_impl(&dword_1A784E000, v8, OS_LOG_TYPE_INFO, "%s:secret:%s option:%@ -> %d", buf, 0x26u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _LAMKBPrewarmSPS(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMKBPrewarmSPSSymbolLoc_ptr;
  v12 = getMKBPrewarmSPSSymbolLoc_ptr;
  if (!getMKBPrewarmSPSSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBPrewarmSPSSymbolLoc_block_invoke;
    v14 = &unk_1E77CB120;
    v15 = &v9;
    v3 = MobileKeyBagLibrary();
    v4 = dlsym(v3, "MKBPrewarmSPS");
    *(v15[1] + 24) = v4;
    getMKBPrewarmSPSSymbolLoc_ptr = *(v15[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    _LAMKBLockDevice_cold_1();
    __break(1u);
  }

  v5 = v2(a1);
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "_LAMKBPrewarmSPS";
    *&buf[12] = 2112;
    *&buf[14] = a1;
    *&buf[22] = 1024;
    LODWORD(v14) = v5;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:options:%@ -> %d", buf, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void *__getMKBLockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBLockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBLockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileKeyBagLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77CC378;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileKeyBagLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMKBUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBGetDeviceConfigurationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBGetDeviceConfigurations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceConfigurationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBGetDeviceLockStateInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBGetDeviceLockStateInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBDeviceLockAssertionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceLockAssertionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBKeyBagKeyStashCreateWithOpts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBKeyBagKeyStashCommitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBKeyBagKeyStashCommit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBKeyBagKeyStashCommitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBKeyBagKeyStashVerifySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBKeyBagKeyStashVerify");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBKeyBagKeyStashVerifySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBEventsRegisterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBEventsRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBEventsRegisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBEventsUnregisterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBEventsUnregister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBEventsUnregisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBKeyBagPerformRecoverySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBKeyBagPerformRecovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBKeyBagPerformRecoverySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKBPrewarmSPSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBPrewarmSPS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBPrewarmSPSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A786EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

id LA_LOG_4()
{
  if (LA_LOG_once_5 != -1)
  {
    LA_LOG_cold_1_4();
  }

  v1 = LA_LOG_log_5;

  return v1;
}

__CFString *NSStringFromLARatchetStateRawValue(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_1F1A66748;
  }

  else
  {
    return off_1E77CC438[a1];
  }
}

__CFString *NSStringFromLARatchetStateDuration(double a1)
{
  if (*MEMORY[0x1E69AD0C8] == a1)
  {
    v2 = @"INF";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ds", a1];
  }

  return v2;
}

id LA_LOG_5()
{
  if (LA_LOG_once_6 != -1)
  {
    LA_LOG_cold_1_5();
  }

  v1 = LA_LOG_log_6;

  return v1;
}

void sub_1A7873084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7873CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKDeviceDescriptorClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDeviceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKDeviceDescriptorClass_block_invoke_cold_1();
    return BiometricKitLibrary();
  }

  return result;
}

uint64_t BiometricKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77CC4D8;
    v6 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiometricKitLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __BiometricKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBKDeviceClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKDeviceClass_block_invoke_cold_1();
    return __getBKErrorDomainSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getBKErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiometricKitLibrary();
  result = dlsym(v2, "BKErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBKMatchPearlOperationClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKMatchPearlOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKMatchPearlOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKMatchPearlOperationClass_block_invoke_cold_1();
    return __getBKMatchOperationClass_block_invoke(v3);
  }

  return result;
}

Class __getBKMatchOperationClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKMatchOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKMatchOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKMatchOperationClass_block_invoke_cold_1();
    return __getBKFaceDetectOperationClass_block_invoke(v3);
  }

  return result;
}

Class __getBKFaceDetectOperationClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKFaceDetectOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKFaceDetectOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKFaceDetectOperationClass_block_invoke_cold_1();
    return __getBKFingerDetectOperationClass_block_invoke(v3);
  }

  return result;
}

Class __getBKFingerDetectOperationClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKFingerDetectOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKFingerDetectOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKFingerDetectOperationClass_block_invoke_cold_1();
    return __getBKPresenceDetectOperationClass_block_invoke(v3);
  }

  return result;
}

void __getBKPresenceDetectOperationClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BKPresenceDetectOperation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKPresenceDetectOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKPresenceDetectOperationClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_3();
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1A7875B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7877444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1A7878CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A78798A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7879AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7879DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A787A10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1A787A488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A787A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A787AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A787B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A787B6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A787CC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A787D770(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A787D9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t LACopyExternalizedContext(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 externalizedContext];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t LADomainStateCompanion.availableCompanionTypes.getter()
{
  v1 = [v0 availableCompanionTypes];
  sub_1A787F648();
  sub_1A78804A0(&qword_1EB2A4340, sub_1A787F648);
  v2 = sub_1A7884BEC();

  v3 = sub_1A787F694(v2);

  v4 = sub_1A7880308(v3);

  return v4;
}

unint64_t sub_1A787F648()
{
  result = qword_1EB2A4338;
  if (!qword_1EB2A4338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2A4338);
  }

  return result;
}

uint64_t sub_1A787F694(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A7884C1C();
    sub_1A787F648();
    sub_1A78804A0(&qword_1EB2A4340, sub_1A787F648);
    result = sub_1A7884C0C();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1A788044C();
      return v10;
    }

    while (1)
    {
      v16 = [v15 integerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A7880204(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v1 = v19;
      if (v18 >= v17 >> 1)
      {
        result = sub_1A7880204((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v5 = v13;
      v6 = v14;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1A7884C2C())
      {
        sub_1A787F648();
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A787F918()
{
  v1 = *v0;
  sub_1A7884C6C();
  MEMORY[0x1AC55BB80](v1);
  return sub_1A7884C8C();
}

uint64_t sub_1A787F98C()
{
  v1 = *v0;
  sub_1A7884C6C();
  MEMORY[0x1AC55BB80](v1);
  return sub_1A7884C8C();
}

void *sub_1A787F9E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A787FA00(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1A7884C6C();
  MEMORY[0x1AC55BB80](a2);
  v7 = sub_1A7884C8C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1A787FD48(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A787FAF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A4350, &qword_1A7888E68);
  result = sub_1A7884C4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1A7884C6C();
      MEMORY[0x1AC55BB80](v18);
      result = sub_1A7884C8C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_1A787FD48(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A787FAF8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1A787FEA4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A787FFE4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1A7884C6C();
  MEMORY[0x1AC55BB80](a1);
  v10 = sub_1A7884C8C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for LACompanionType();
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A7884C5C();
  __break(1u);
}

void *sub_1A787FEA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A4350, &qword_1A7888E68);
  v2 = *v0;
  v3 = sub_1A7884C3C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A787FFE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A4350, &qword_1A7888E68);
  result = sub_1A7884C4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1A7884C6C();
      MEMORY[0x1AC55BB80](v17);
      result = sub_1A7884C8C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_1A7880204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A4358, &qword_1A7888E70);
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

uint64_t sub_1A7880308(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for LACompanionType();
  v4 = v3;
  v5 = sub_1A78804A0(&qword_1EB2A4348, type metadata accessor for LACompanionType);
  result = MEMORY[0x1AC55BB00](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1A787FA00(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void type metadata accessor for LACompanionType()
{
  if (!qword_1EB2A4360)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB2A4360);
    }
  }
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

uint64_t sub_1A78804A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A78804F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A7880534();
  result = sub_1A7884BDC();
  *a1 = result;
  return result;
}

unint64_t sub_1A7880534()
{
  result = qword_1EB2A4370;
  if (!qword_1EB2A4370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2A4370);
  }

  return result;
}

BOOL LAUpdateAccessControl(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:&unk_1F1A6FD40];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = SecAccessControlGetConstraints();
      if (v8)
      {
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __LAUpdateAccessControl_block_invoke;
        v13[3] = &unk_1E77CCB10;
        v14 = v8;
        v16 = &v17;
        v10 = v9;
        v15 = v10;
        [v7 enumerateKeysAndObjectsUsingBlock:v13];
        if (!v18[3])
        {
          SecAccessControlSetConstraints();
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v18[3];
  if (a3)
  {
    *a3 = v11;
  }

  else if (v11)
  {
    CFRelease(v18[3]);
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v5);

  return v11 == 0;
}

void sub_1A7880730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LAUpdateAccessControl_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!*(a1 + 32))
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = @"Invalid update request.";
LABEL_9:
    makeCFError(v13, -1000, (v12 + 24));
    *a4 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_opt_class();
    if (v14 == objc_opt_class())
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
      goto LABEL_10;
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = @"Invalid update value type.";
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = @"Invalid update value type, expecting dictionary.";
    goto LABEL_9;
  }

  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __LAUpdateAccessControl_block_invoke_2;
  v15[3] = &unk_1E77CCAE8;
  v16 = v10;
  v11 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];

LABEL_10:
}

void makeCFError(void *a1, uint64_t a2, uint64_t *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = a1;
    v6 = MEMORY[0x1E695DF20];
    v7 = a1;
    v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v5 errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:a2 userInfo:v8];

    *a3 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL LAEvaluateAndUpdateACL(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = LA_LOG_coreauthd_client();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138412802;
    *&v27[4] = a1;
    *&v27[12] = 2112;
    *&v27[14] = a3;
    v28 = 2112;
    v29 = a4;
    _os_log_impl(&dword_1A784E000, v13, OS_LOG_TYPE_DEFAULT, "LAEvaluateAndUpdateACL(%@, %@, %@)", v27, 0x20u);
  }

  v14 = LAContextFromCFType(a1, a6);
  if (!a1)
  {
    goto LABEL_13;
  }

  v15 = CFGetTypeID(a3);
  if (v15 != CFStringGetTypeID())
  {
    v22 = @"Invalid operation type.";
LABEL_12:
    makeCFError(v22, -1006, a6);
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    v22 = @"Invalid 'ACL' argument.";
    goto LABEL_12;
  }

  v16 = *MEMORY[0x1E695E480];
  v17 = SecAccessControlCreateFromData();
  if (v17)
  {
    *v27 = 0;
    v18 = [v14 evaluateAccessControl:v17 aksOperation:a3 options:a4 error:v27];
    v19 = *v27;
    v20 = v19;
    v21 = v18 != 0;
    if (v18)
    {
      if (a5)
      {
        *a5 = SecAccessControlCopyData();
      }
    }

    else if (a6)
    {
      *a6 = v19;
    }
  }

  else
  {
    makeCFError(@"Invalid 'ACL' argument.", -1006, a6);
    v21 = 0;
  }

LABEL_14:
  v23 = LA_LOG_coreauthd_client();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v24 = *a6;
    }

    else
    {
      v24 = 0;
    }

    *v27 = 67109378;
    *&v27[4] = v21;
    *&v27[8] = 2112;
    *&v27[10] = v24;
    _os_log_impl(&dword_1A784E000, v23, OS_LOG_TYPE_DEFAULT, "LAEvaluateAndUpdateACL -> %d, %@", v27, 0x12u);
  }

  objc_autoreleasePoolPop(v12);
  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

id LA_LOG_coreauthd_client()
{
  if (LA_LOG_coreauthd_client_once != -1)
  {
    LA_LOG_coreauthd_client_cold_1();
  }

  v1 = LA_LOG_coreauthd_client_log;

  return v1;
}

uint64_t LAEvaluatePolicy(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LAEvaluatePolicy_block_invoke;
  block[3] = &unk_1E77CCB38;
  v12 = a2;
  block[6] = a3;
  block[7] = a4;
  block[4] = &v13;
  block[5] = a1;
  dispatch_block_perform(DISPATCH_BLOCK_DETACHED, block);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v8);
  return v9;
}

void __LAEvaluatePolicy_block_invoke(uint64_t a1)
{
  v2 = LACopyResultOfPolicyEvaluation(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = v2 != 0;
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t LACopyResultOfPolicyEvaluation(void *a1, int a2, uint64_t a3, uint64_t *a4)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = LA_LOG_coreauthd_client();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138412802;
    *&v19[4] = a1;
    v20 = 1024;
    *v21 = a2;
    v21[2] = 2112;
    *&v21[3] = a3;
    _os_log_impl(&dword_1A784E000, v9, OS_LOG_TYPE_DEFAULT, "LACopyResultOfPolicyEvaluation(%@, %d, %@)", v19, 0x1Cu);
  }

  v10 = LAContextFromCFType(a1, a4);
  v11 = v10;
  if (v10)
  {
    *v19 = 0;
    v12 = [v10 evaluatePolicy:a2 options:a3 error:v19];
    v13 = *v19;
    v14 = v13;
    if (a4 && !v12)
    {
      *a4 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = LA_LOG_coreauthd_client();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v16 = *a4;
    }

    else
    {
      v16 = 0;
    }

    *v19 = 138412546;
    *&v19[4] = v12;
    v20 = 2112;
    *v21 = v16;
    _os_log_impl(&dword_1A784E000, v15, OS_LOG_TYPE_DEFAULT, "LACopyResultOfPolicyEvaluation -> %@, %@", v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t LASetCredential(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = LAContextFromCFType(a1, a4);
  v10 = [v9 setCredential:a2 type:a3];

  objc_autoreleasePoolPop(v8);
  return v10;
}

id LAContextFromCFType(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (v3 && (getLAContextClass(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    makeCFError(@"Invalid 'context' argument.", -1006, a2);
    v4 = 0;
  }

  return v4;
}

uint64_t LAIsCredentialSet(void *a1, int a2, uint64_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = LAContextFromCFType(a1, a3);
  v8 = [v7 isCredentialSet:a2];

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t LACreateNewContextWithACMContext(void *a1, uint64_t *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = LA_LOG_coreauthd_client();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LACreateNewContextWithACMContext_cold_1(v10);
    }

    makeCFError(@"Invalid acmContext.", -1006, a2);
    v7 = 0;
  }

  else
  {
    v6 = [objc_alloc(getLAContextClass()) initWithExternalizedContext:v5];
    v7 = v6;
    if (a2 && !v6)
    {
      v8 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"Failed to create LAContext";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a2 = [v8 errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v9];
    }
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_1E77CB120;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A7881330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LACopyACMContext(void *a1, uint64_t *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = LAContextFromCFType(a1, a2);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [v5 externalizedContext];
  v8 = v7;
  if (a2 && !v7)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"Failed to get externalized context from LAContext";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a2 = [v9 errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v10];

LABEL_5:
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL LAEvaluateACL(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  updated = LAEvaluateAndUpdateACL(a1, a2, a3, a4, 0, a5);
  objc_autoreleasePoolPop(v10);
  return updated;
}

uint64_t LACreateNewContextWithACMContextInSession(int a1, uint64_t a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = a1;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(getLAContextClass()) initWithExternalizedContext:a2 userSession:&v12];
  v7 = v6;
  if (a3 && !v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"Failed to create LAContext";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v8 errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v9];
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E77CCB58;
    v7 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _LAMKBLockDevice_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return LA_LOG_cold_1_4(v0);
}