BOOL sub_236E29C3C(void *a1, uint64_t *a2)
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

void *sub_236E29C6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_236E29C98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_236E29DA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236E29DC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  type metadata accessor for _BackgroundDownloaderExtensionConfiguration();
  return swift_getWitnessTable();
}

uint64_t sub_236E29E18()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_236E29E98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _BackgroundDownloaderExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_236E29EE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_236E29F38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236E29F70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E29FA8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87F10, &unk_236E84E80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_236E2A074()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A0F8()
{
  v1 = type metadata accessor for AssetPack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 40);
  if (v8 >> 60 != 15)
  {
    sub_236E38C74(*(v6 + 32), v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[8];
  v11 = sub_236E81AD4();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[9];
  v13 = sub_236E819F4();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = *(v6 + v1[10] + 8);

  v15 = v1[12];
  v16 = sub_236E81C64();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_236E2A2A8()
{
  v1 = type metadata accessor for AssetPack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 40);
  if (v8 >> 60 != 15)
  {
    sub_236E38C74(*(v6 + 32), v8);
  }

  v9 = v1[8];
  v10 = sub_236E81AD4();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v1[9];
  v12 = sub_236E819F4();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = *(v6 + v1[10] + 8);

  v14 = v1[12];
  v15 = sub_236E81C64();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_236E2A444()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A47C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_236E2A4CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A514()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A5E4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_236E81AD4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_236E819F4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_236E81C64();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_236E2A750(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_236E81AD4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_236E819F4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_236E81C64();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_236E2A8D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A914()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A968()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A9A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_236E2B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_236E2B8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_236E2C5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236E2C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236E2CB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 120), 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_5(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 8, 1);
}

id BASystemLogObject()
{
  if (BASystemLogObject_onceToken != -1)
  {
    BASystemLogObject_cold_1();
  }

  v1 = BASystemLogObject_obj;

  return v1;
}

uint64_t __BASystemLogObject_block_invoke()
{
  BASystemLogObject_obj = os_log_create("com.apple.backgroundassets", "system");

  return MEMORY[0x2821F96F8]();
}

id BAClientLogObject()
{
  if (BAClientLogObject_onceToken != -1)
  {
    BAClientLogObject_cold_1();
  }

  v1 = BAClientLogObject_obj;

  return v1;
}

uint64_t __BAClientLogObject_block_invoke()
{
  BAClientLogObject_obj = os_log_create("com.apple.backgroundassets", "client");

  return MEMORY[0x2821F96F8]();
}

id BAClientConnectionLogObject()
{
  if (BAClientConnectionLogObject_onceToken != -1)
  {
    BAClientConnectionLogObject_cold_1();
  }

  v1 = BAClientConnectionLogObject_obj;

  return v1;
}

uint64_t __BAClientConnectionLogObject_block_invoke()
{
  BAClientConnectionLogObject_obj = os_log_create("com.apple.backgroundassets", "client_connection");

  return MEMORY[0x2821F96F8]();
}

__CFString *BADownloadNecessityToString(uint64_t a1)
{
  v1 = @"<Unknown>";
  if (a1 == 1)
  {
    v1 = @"Essential";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Optional";
  }
}

__CFString *BAContentRequestToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_278A0D128[a1 - 1];
  }
}

id NSErrorWithBAErrorDomainCodeUnderlying(void *a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (a3)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    a3 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  v8 = NSErrorWithBAErrorDomainCodeUserInfo(v5, a2, a3);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void NSErrorWithBAErrorDomainCodeUserInfo(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
  if ([v5 isEqualToString:@"BAErrorDomain"])
  {
    v9 = @"BAError";
LABEL_5:
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];
    if (v6)
    {
      v11 = [v6 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = v11;
    [v11 setObject:v10 forKey:*MEMORY[0x277CCA470]];
    v13 = MEMORY[0x277CCA9B8];
    v14 = [v12 copy];
    v15 = [v13 errorWithDomain:v5 code:a2 userInfo:v14];

    v16 = v15;
    return;
  }

  if ([v5 isEqualToString:@"BAURLDownloadErrorDomain"])
  {
    v9 = @"BAURLDownloadError";
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    NSErrorWithBAErrorDomainCodeUserInfo_cold_1();
  }

  qword_27DE88540 = "BUG IN BackgroundAssets: NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  qword_27DE88570 = 6;
  __break(0xB001u);
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  result = *(v0 + 2776);
  v3 = *v1;
  return result;
}

__CFString *BAAppStoreProgressObserverStateString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unrecognized App";
  }

  else
  {
    return off_278A0D180[a1 - 1];
  }
}

void sub_236E32CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(double a1)
{
  *(v1 - 80) = a1;
  *(v1 - 72) = __Block_byref_object_copy__1;
  *(v1 - 64) = __Block_byref_object_dispose__1;
  *(v1 - 56) = 0;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  v23 = *(a22 + 24);

  _Block_object_dispose(&a21, 8);
}

void OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
}

id OUTLINED_FUNCTION_7_0(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 16, 1);
}

id OUTLINED_FUNCTION_8_0(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 24, 1);
}

void OUTLINED_FUNCTION_11_0()
{

  _Block_object_dispose((v0 - 96), 8);
}

void OUTLINED_FUNCTION_12_0()
{

  _Block_object_dispose((v0 - 112), 8);
}

id OUTLINED_FUNCTION_5_1(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 40, 1);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t result, float a2)
{
  *(v3 - 128) = a2;
  v4 = v3 - 128;
  *(v4 + 4) = v2;
  *(v3 - 116) = 2114;
  *(v4 + 14) = result;
  return result;
}

id OUTLINED_FUNCTION_13(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 56, 1);
}

id OUTLINED_FUNCTION_14(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 48, 1);
}

id OUTLINED_FUNCTION_15(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 64, 1);
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_19(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  dispatch_sync(v14, &block);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 128), 2u);
}

void OUTLINED_FUNCTION_21(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_INFO, a4, &buf, 0xCu);
}

void OUTLINED_FUNCTION_22(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id ManagedDownloaderExtension.configuration.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  result = sub_236E3A334(v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void ManagedDownloaderExtension.downloads(for:manifestURL:extensionInfo:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v190 = a5;
  v191 = a4;
  *&v193 = sub_236E81AB4();
  v192 = *(v193 - 8);
  v8 = *(v192 + 64);
  v9 = MEMORY[0x28223BE20](v193);
  v186 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v184 = &v177 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v187 = &v177 - v14;
  MEMORY[0x28223BE20](v13);
  v194 = &v177 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v189 = (&v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v177 - v21;
  MEMORY[0x28223BE20](v20);
  v197 = &v177 - v23;
  v24 = sub_236E819F4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v195 = sub_236E81DA4();
    v29 = __swift_project_value_buffer(v195, qword_27DE87A98);
    v30 = sub_236E820E4();
    v31 = *(v25 + 16);
    v198 = a2;
    v31(v28, a2, v24);
    v32 = a3;
    v33 = sub_236E81D84();

    v34 = os_log_type_enabled(v33, v30);
    v188 = a1;
    v196 = v22;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v199 = v29;
      v37 = v36;
      v183 = swift_slowAlloc();
      v202 = v183;
      *v35 = 136446722;
      v208 = a1;
      type metadata accessor for BAContentRequest(0);
      v38 = sub_236E81ED4();
      v40 = sub_236E381CC(v38, v39, &v202);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      sub_236E38F84(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v41 = sub_236E82484();
      v43 = v42;
      (*(v25 + 8))(v28, v24);
      v44 = sub_236E381CC(v41, v43, &v202);

      *(v35 + 14) = v44;
      *(v35 + 22) = 2114;
      *(v35 + 24) = v32;
      *v37 = v32;
      v45 = v32;
      _os_log_impl(&dword_236E28000, v33, v30, "Downloads for: %{public}s manifest URL: %{public}s extension info: %{public}@", v35, 0x20u);
      sub_236E38DBC(v37, &qword_27DE88170, &qword_236E853C0);
      v46 = v37;
      v29 = v199;
      MEMORY[0x2383C0E50](v46, -1, -1);
      v47 = v183;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v47, -1, -1);
      MEMORY[0x2383C0E50](v35, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v28, v24);
    }

    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (!v48)
    {
      v79 = sub_236E82104();
      v80 = v32;
      v81 = sub_236E81D84();

      if (os_log_type_enabled(v81, v79))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138543362;
        *(v82 + 4) = v80;
        *v83 = v80;
        v84 = v80;
        _os_log_impl(&dword_236E28000, v81, v79, "The extension info “%{public}@” isn’t managed-downloader-extension info.", v82, 0xCu);
        sub_236E38DBC(v83, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v83, -1, -1);
        MEMORY[0x2383C0E50](v82, -1, -1);
      }

      if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      return;
    }

    v49 = v48;
    v50 = v32;
    v51 = sub_236E81D84();
    v52 = sub_236E82114();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v202 = v54;
      *v53 = 136315138;
      [v49 manifestDataSource];
      v55 = sub_236E82124();
      v57 = sub_236E381CC(v55, v56, &v202);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_236E28000, v51, v52, "The managed downloader extension was launched with a manifest from “%s”.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x2383C0E50](v54, -1, -1);
      MEMORY[0x2383C0E50](v53, -1, -1);
    }

    v198 = sub_236E81A04();
    v183 = v58;
    v180 = v50;
    v59 = sub_236E818E4();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v182 = sub_236E818D4();
    sub_236E818B4();
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v199 = v29;
    v62 = qword_27DE87DC0;
    v63 = sub_236E3BA24();
    v65 = v64;
    v181 = [v49 manifestDataSource];
    v66 = qword_27DE87AE8;

    if (v66 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v195, qword_27DE88410);
    v67 = sub_236E820E4();

    v68 = sub_236E81D84();

    if (os_log_type_enabled(v68, v67))
    {
      v69 = swift_slowAlloc();
      v179 = v62;
      v70 = v69;
      v195 = swift_slowAlloc();
      v202 = v195;
      *v70 = 136446722;
      v71 = v63;
      v72 = sub_236E381CC(v63, v65, &v202);

      *(v70 + 4) = v72;
      *(v70 + 12) = 2082;
      v73 = v181;
      v74 = sub_236E82124();
      v76 = sub_236E381CC(v74, v75, &v202);

      *(v70 + 14) = v76;
      v63 = v71;
      *(v70 + 22) = 1024;
      *(v70 + 24) = 1;
      _os_log_impl(&dword_236E28000, v68, v67, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v70, 0x1Cu);
      v77 = v195;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v77, -1, -1);
      v78 = v70;
      v62 = v179;
      MEMORY[0x2383C0E50](v78, -1, -1);

      v22 = v196;
    }

    else
    {

      v22 = v196;
      v73 = v181;
    }

    v202 = v63;
    v203 = v65;
    LOBYTE(v204) = 1;
    v205 = v73;
    sub_236E38C10();
    v206 = 0;
    v207 = 0;
    v85 = v198;
    v86 = v183;
    sub_236E818C4();
    v87 = v206;

    sub_236E38C64(v87);

    sub_236E38C74(v85, v86);
    v88 = v208;
    LODWORD(v198) = v209;
    v89 = v210;
    v90 = v211;
    v91 = sub_236E81D84();
    v92 = sub_236E82114();
    if (os_log_type_enabled(v91, v92))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_236E28000, v91, v92, "Installing the manifest that Background Assets provided to the managed downloader extension…", v94, 2u);
      MEMORY[0x2383C0E50](v94, -1, -1);
    }

    v202 = v88;
    LOBYTE(v203) = v198;
    v183 = v89;
    v204 = v89;
    v205 = v90;

    sub_236E3E794(&v202);
    v95 = v192;

    v96 = MEMORY[0x277D25B70];
    v97 = v193;
    v98 = v189;
    v179 = v62;
    if (v188 == 1)
    {
      v25 = 1;
      v100 = MEMORY[0x277D25B70];
    }

    else
    {
      if (v188 == 3)
      {
        v25 = 3;
        v99 = 1;
        goto LABEL_31;
      }

      v25 = v188;
      if (v188 != 2)
      {
        v202 = 0;
        v203 = 0xE000000000000000;
        sub_236E82264();
        MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
        v208 = v25;
        type metadata accessor for BAContentRequest(0);
        sub_236E82304();
        MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
        v176 = 0;
        v175 = 87;
        sub_236E82344();
        __break(1u);
        return;
      }

      v100 = MEMORY[0x277D25B78];
    }

    (*(v95 + 104))(v22, *v100, v193);
    v99 = 0;
LABEL_31:
    (*(v95 + 56))(v22, v99, 1, v97);
    sub_236E38CDC(v22, v197);
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      else
      {
        v101 = MEMORY[0x277D84FA0];
      }

      v97 = v193;
      v95 = v192;
      v98 = v189;
    }

    else
    {
      v101 = MEMORY[0x277D84FA0];
    }

    v208 = v101;
    sub_236E38D4C(v197, v98);
    if ((*(v95 + 48))(v98, 1, v97) == 1)
    {
      sub_236E38DBC(v98, &unk_27DE87B00, &unk_236E84540);
      v202 = v88;
      LOBYTE(v203) = v198;
      v204 = v183;
      v205 = v90;
      sub_236E36BE8(&v208, &v202, v25);
      v195 = 0;

      goto LABEL_57;
    }

    v196 = v88;
    v102 = v98;
    v103 = v194;
    (*(v95 + 32))(v194, v102, v97);
    v22 = (v95 + 16);
    v104 = v187;
    v189 = *(v95 + 16);
    v189(v187, v103, v97);
    v182 = *(v95 + 88);
    v105 = v182(v104, v97);
    if (v105 == *v96)
    {
      v106 = sub_236E81D84();
      v107 = sub_236E82114();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_236E28000, v106, v107, "Scheduling essential and prefetch asset packs for a first installation to be downloaded…", v108, 2u);
        MEMORY[0x2383C0E50](v108, -1, -1);
      }

      v110 = v185;
    }

    else
    {
      if (v105 == *MEMORY[0x277D25B78])
      {
        v111 = sub_236E81D84();
        v112 = sub_236E82114();
        v113 = os_log_type_enabled(v111, v112);
        v114 = v196;
        if (v113)
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_236E28000, v111, v112, "Scheduling essential and prefetch asset packs for a subsequent update to be downloaded…", v115, 2u);
          MEMORY[0x2383C0E50](v115, -1, -1);
        }

        v110 = v185;
        goto LABEL_48;
      }

      v116 = sub_236E82104();
      v117 = v184;
      v189(v184, v194, v97);
      v118 = v97;
      v119 = sub_236E81D84();
      LODWORD(v195) = v116;
      v120 = v116;
      v121 = v119;
      if (os_log_type_enabled(v119, v120))
      {
        v122 = swift_slowAlloc();
        v181 = v122;
        v178 = swift_slowAlloc();
        v202 = v178;
        *v122 = 136446210;
        sub_236E38F84(&unk_27DE88520, MEMORY[0x277D25B80]);
        v123 = sub_236E82484();
        v125 = v124;
        v126 = v117;
        v127 = *(v192 + 8);
        v127(v126, v118);
        v128 = sub_236E381CC(v123, v125, &v202);

        v129 = v181;
        *(v181 + 4) = v128;
        _os_log_impl(&dword_236E28000, v121, v195, "The installation event type “%{public}s” is unknown.", v129, 0xCu);
        v130 = v178;
        __swift_destroy_boxed_opaque_existential_0(v178);
        MEMORY[0x2383C0E50](v130, -1, -1);
        MEMORY[0x2383C0E50](v181, -1, -1);

        v131 = v193;
      }

      else
      {

        v132 = v117;
        v127 = *(v192 + 8);
        v127(v132, v97);
        v131 = v97;
      }

      v110 = v185;
      v109 = (v127)(v187, v131);
    }

    v114 = v196;
LABEL_48:
    MEMORY[0x28223BE20](v109);
    v133 = v190;
    *(&v177 - 10) = v191;
    *(&v177 - 9) = v133;
    *(&v177 - 8) = v114;
    *(&v177 - 56) = v198;
    *(&v177 - 6) = v183;
    *(&v177 - 5) = v90;
    *(&v177 - 4) = v194;
    *(&v177 - 3) = v110;
    v175 = v25;
    v134 = sub_236E37CD0(sub_236E38E70, (&v177 - 12));
    v195 = 0;
    sub_236E38EAC(v134);

    v135 = v193;
    v136 = v186;
    v137 = v182;
    v189(v186, v194, v193);
    if (v137(v136, v135) == *MEMORY[0x277D25B78])
    {
      v138 = *(v192 + 8);
      v138(v136, v135);
      v202 = v114;
      LOBYTE(v203) = v198;
      v204 = v183;
      v205 = v90;
      v139 = v195;
      sub_236E36BE8(&v208, &v202, v25);
      v195 = v139;
      if (v139)
      {

        v140 = sub_236E820F4();
        v141 = v195;
        v142 = v195;
        v143 = sub_236E81D84();

        if (os_log_type_enabled(v143, v140))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *v144 = 138543362;
          v146 = v195;
          v147 = v195;
          v148 = _swift_stdlib_bridgeErrorToNSError();
          *(v144 + 4) = v148;
          *v145 = v148;
          _os_log_impl(&dword_236E28000, v143, v140, "Update downloads couldn’t be added: %{public}@", v144, 0xCu);
          sub_236E38DBC(v145, &qword_27DE88170, &qword_236E853C0);
          MEMORY[0x2383C0E50](v145, -1, -1);
          MEMORY[0x2383C0E50](v144, -1, -1);
        }

        else
        {
        }

        v195 = 0;
      }

      else
      {
      }

      v138(v194, v193);
    }

    else
    {

      v149 = *(v192 + 8);
      v149(v136, v135);
      v149(v194, v135);
    }

LABEL_57:
    v192 = v208;
    if ((v208 & 0xC000000000000001) != 0)
    {

      sub_236E821D4();
      sub_236E38E1C();
      sub_236E38F84(&qword_27DE87B20, sub_236E38E1C);
      sub_236E820C4();
      v151 = v202;
      a3 = v203;
      a2 = v204;
      a1 = v205;
      v28 = v206;
    }

    else
    {
      v152 = -1 << *(v208 + 32);
      a3 = (v208 + 56);
      a2 = ~v152;
      v153 = -v152;
      v154 = v153 < 64 ? ~(-1 << v153) : -1;
      v28 = (v154 & *(v208 + 56));
      a1 = 0;
    }

    v191 = a2;
    v24 = (a2 + 64) >> 6;
    *&v150 = 136446466;
    v193 = v150;
    v194 = a3;
    if (v151 < 0)
    {
      break;
    }

    while (1)
    {
      v158 = a1;
      v159 = v28;
      v157 = a1;
      if (!v28)
      {
        break;
      }

LABEL_70:
      v25 = (v159 - 1) & v159;
      v156 = *(*(v151 + 48) + ((v157 << 9) | (8 * __clz(__rbit64(v159)))));
LABEL_71:
      if (!v156)
      {
        goto LABEL_83;
      }

      v160 = v156;
      a2 = sub_236E81D84();
      v22 = sub_236E82114();

      if (os_log_type_enabled(a2, v22))
      {
        v161 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v201 = v196;
        *v161 = v193;
        v162 = [v160 isEssential];
        v163 = v162 == 0;
        if (v162)
        {
          v164 = 0x6169746E65737365;
        }

        else
        {
          v164 = 0x6863746566657270;
        }

        v198 = v25;
        if (v163)
        {
          v165 = 0xE800000000000000;
        }

        else
        {
          v165 = 0xE90000000000006CLL;
        }

        v166 = sub_236E381CC(v164, v165, &v201);

        *(v161 + 4) = v166;
        *(v161 + 12) = 2082;
        v167 = [v160 identifier];
        v25 = sub_236E81E94();
        v168 = v24;
        v169 = v151;
        v171 = v170;

        v172 = sub_236E381CC(v25, v171, &v201);
        v151 = v169;
        v24 = v168;

        *(v161 + 14) = v172;
        _os_log_impl(&dword_236E28000, a2, v22, "Scheduling the %{public}s asset pack with the ID “%{public}s” to be downloaded…", v161, 0x16u);
        v173 = v196;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](v173, -1, -1);
        v174 = v161;
        a3 = v194;
        MEMORY[0x2383C0E50](v174, -1, -1);

        a1 = v157;
        v28 = v198;
        if (v151 < 0)
        {
          goto LABEL_64;
        }
      }

      else
      {

        a1 = v157;
        v28 = v25;
        if (v151 < 0)
        {
          goto LABEL_64;
        }
      }
    }

    while (1)
    {
      v157 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      if (v157 >= v24)
      {
        goto LABEL_83;
      }

      v159 = *&a3[8 * v157];
      ++v158;
      if (v159)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
  }

LABEL_64:
  v155 = sub_236E82204();
  if (v155)
  {
    v200 = v155;
    sub_236E38E1C();
    swift_dynamicCast();
    v156 = v201;
    v157 = a1;
    v25 = v28;
    goto LABEL_71;
  }

LABEL_83:
  sub_236E38DBC(v197, &unk_27DE87B00, &unk_236E84540);

  sub_236E38E68();
}

uint64_t sub_236E3660C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_236E84530;
  v12 = v11 + v10;
  v13 = sub_236E81AB4();
  v26 = *(*(v13 - 8) + 16);
  v26(v12, a2, v13);
  v14 = *MEMORY[0x277D25B98];
  v15 = sub_236E81AC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  v17(v12, v14, v15);
  v18 = *(v16 + 56);
  v18(v12, 0, 1, v15);
  v26(v12 + v9, a2, v13);
  v17(v12 + v9, *MEMORY[0x277D25B90], v15);
  v18(v12 + v9, 0, 1, v15);
  v19 = sub_236E6FE9C(v11);

  v20 = sub_236E7B708(v19, a1);

  v21 = sub_236E368D8(a3, a6, a7);
  v23 = sub_236E7A938(v21, v22, v20);

  v24 = sub_236E7871C(v23, a4);

  *a5 = v24;
  return result;
}

uint64_t (*sub_236E368D8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_236E392DC;
}

void sub_236E369F8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_236E821D4();
    sub_236E38E1C();
    sub_236E38F84(&qword_27DE87B20, sub_236E38E1C);
    sub_236E820C4();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_236E38E68();
      return;
    }

    while (1)
    {
      sub_236E53944(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_236E82204())
      {
        sub_236E38E1C();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_236E36BE8(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a2;
  v28 = *(a2 + 8);
  v4 = *(a2 + 24);
  v27 = *(a2 + 16);
  v5 = *a1;
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE87A98);
  v7 = sub_236E820E4();

  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136446722;
    sub_236E38E1C();
    sub_236E38F84(&qword_27DE87B20, sub_236E38E1C);
    v11 = sub_236E820A4();
    v13 = sub_236E381CC(v11, v12, &v35);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;

    sub_236E82264();

    v32 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E38F84(&qword_27DE88020, type metadata accessor for AssetPack);
    v14 = sub_236E820A4();
    MEMORY[0x2383BFD30](v14);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v15 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v35);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    v31 = a3;
    type metadata accessor for BAContentRequest(0);
    v16 = sub_236E81ED4();
    v18 = sub_236E381CC(v16, v17, &v35);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_236E28000, v8, v7, "Add update downloads to: %{public}s for: %{public}s content request: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  v19 = sub_236E81D84();
  v20 = sub_236E82114();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_236E28000, v19, v20, "Checking for asset-pack updates…", v21, 2u);
    MEMORY[0x2383C0E50](v21, -1, -1);
  }

  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v31 = v3;
  LOBYTE(v32) = v28;
  v33 = v27;
  v34 = v4;
  v22 = sub_236E4741C(&v31, a3);
  if (!v29)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = v22;
      if (!sub_236E821E4())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = v22;
      if (!*(v22 + 16))
      {
LABEL_14:
        v24 = sub_236E81D84();
        v25 = sub_236E82114();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_236E28000, v24, v25, "All asset packs are up to date.", v26, 2u);
          MEMORY[0x2383C0E50](v26, -1, -1);
        }
      }
    }

    sub_236E369F8(v23);
  }
}

uint64_t ManagedDownloaderExtension.backgroundDownload(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E37164, 0, 0);
}

uint64_t sub_236E37164()
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87A98);
  v4 = sub_236E820E4();
  v5 = v1;
  v6 = v2;
  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v4))
  {
    v9 = v0[20];
    v8 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&dword_236E28000, v7, v4, "Background download: %{public}@ did receive: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v14 = v0[25];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[22];
  v25 = v0[20];
  v26 = v0[21];

  v19 = *(*(v17 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v0[27] = v22;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236E374C4;
  swift_continuation_init();
  v0[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87B40, &qword_236E84560);
  sub_236E81FD4();
  (*(v14 + 32))(boxed_opaque_existential_0, v15, v16);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236E37620;
  v0[13] = &block_descriptor;
  [v22 download:v25 didReceiveChallenge:v26 completionHandler:v0 + 10];
  (*(v14 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236E374C4()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E375A4, 0, 0);
}

uint64_t sub_236E375A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_236E37620(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  return sub_236E81FE4();
}

void ManagedDownloaderExtension.backgroundDownload(_:failedWithError:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v7 = sub_236E81DA4();
  __swift_project_value_buffer(v7, qword_27DE87A98);
  v8 = sub_236E820E4();
  v9 = a1;
  v10 = a2;
  v11 = sub_236E81D84();

  if (os_log_type_enabled(v11, v8))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2114;
    v14 = v9;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    v13[1] = v16;
    _os_log_impl(&dword_236E28000, v11, v8, "Background download: %{public}@ failed with error: %{public}@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v13, -1, -1);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  v17 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = sub_236E81984();
  [v20 download:v9 failedWithError:v21];
  swift_unknownObjectRelease();
}

void ManagedDownloaderExtension.backgroundDownload(_:finishedWithFileURL:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v7 = sub_236E819F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  __swift_project_value_buffer(v12, qword_27DE87A98);
  v13 = sub_236E820E4();
  (*(v8 + 16))(v11, a2, v7);
  v14 = a1;
  v15 = sub_236E81D84();

  v35 = v13;
  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v33 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = v20;
    *v17 = 138543618;
    *(v17 + 4) = v14;
    *v19 = v14;
    *(v17 + 12) = 2082;
    sub_236E38F84(&unk_27DE87B30, MEMORY[0x277CC9260]);
    v21 = v14;
    v22 = sub_236E82484();
    v24 = v23;
    (*(v8 + 8))(v11, v7);
    v25 = sub_236E381CC(v22, v24, &v37);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_236E28000, v15, v35, "Background download: %{public}@ finished with file URL: %{public}s", v17, 0x16u);
    sub_236E38DBC(v19, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2383C0E50](v20, -1, -1);
    v26 = v17;
    a4 = v33;
    MEMORY[0x2383C0E50](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v27 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v31 = sub_236E819B4();
  [v30 download:v14 finishedWithFileURL:v31];
  swift_unknownObjectRelease();
}

uint64_t sub_236E37C50()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE87A98);
  __swift_project_value_buffer(v0, qword_27DE87A98);
  return sub_236E81D94();
}

uint64_t sub_236E37CD0(void (*a1)(void *__return_ptr, void), uint64_t a2)
{
  v4 = v2;
  v52 = sub_236E81CF4();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_236E81C94();
  v53 = *(v50 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  __swift_project_value_buffer(v12, qword_27DE87DC8);
  v13 = sub_236E820E4();
  v14 = sub_236E81D84();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v55 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_236E381CC(0x6F6974636E754628, 0xEA0000000000296ELL, &v55);
    _os_log_impl(&dword_236E28000, v14, v13, "With versions of all downloaded asset packs: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2383C0E50](v17, -1, -1);
    v18 = v16;
    v7 = v15;
    MEMORY[0x2383C0E50](v18, -1, -1);
  }

  v19 = *(v4 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v20 = *(v4 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v21 = *(v4 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v22 = *(v4 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v23 = *(v4 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  result = sub_236E81BB4();
  if (!v3)
  {
    v44 = 0;
    v25 = *(result + 16);
    if (v25)
    {
      v42[2] = a2;
      v43 = a1;
      v55 = MEMORY[0x277D84F90];
      v26 = result;
      sub_236E56828(0, v25, 0);
      v27 = v55;
      v28 = *(v53 + 16);
      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v42[1] = v26;
      v30 = v26 + v29;
      v47 = *(v53 + 72);
      v48 = v28;
      v53 += 16;
      v45 = (v53 - 8);
      v46 = (v7 + 8);
      do
      {
        v31 = v49;
        v32 = v50;
        v48(v49, v30, v50);
        v33 = v51;
        sub_236E81C84();
        v54 = sub_236E81CA4();
        v35 = v34;
        (*v46)(v33, v52);
        v36 = sub_236E81C74();
        (*v45)(v31, v32);
        v55 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_236E56828((v37 > 1), v38 + 1, 1);
          v27 = v55;
        }

        *(v27 + 16) = v38 + 1;
        v39 = (v27 + 24 * v38);
        v39[4] = v54;
        v39[5] = v35;
        v39[6] = v36;
        v30 += v47;
        --v25;
      }

      while (v25);

      a1 = v43;
      if (*(v27 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88040, &qword_236E85140);
        v40 = sub_236E82384();
        goto LABEL_15;
      }
    }

    v40 = MEMORY[0x277D84F98];
LABEL_15:
    v55 = v40;
    v41 = v44;
    sub_236E56ABC(v27, 1, &v55);
    if (v41)
    {

      __break(1u);
    }

    else
    {

      a1(&v56, v55);

      return v56;
    }
  }

  return result;
}

uint64_t sub_236E3818C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_236E39260(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_236E381CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236E38298(v11, 0, 0, 1, a1, a2);
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
    sub_236E3908C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_236E38298(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_236E383A4(a5, a6);
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
    result = sub_236E822A4();
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

uint64_t sub_236E383A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_236E383F0(a1, a2);
  sub_236E38520(&unk_2849D8740);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_236E383F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_236E6D748(v5, 0);
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

  result = sub_236E822A4();
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
        v10 = sub_236E81F34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236E6D748(v10, 0);
        result = sub_236E82254();
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

uint64_t sub_236E38520(uint64_t result)
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

  result = sub_236E3860C(result, v12, 1, v3);
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

char *sub_236E3860C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87BA0, &unk_236E848D0);
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

uint64_t _s16BackgroundAssets26ManagedDownloaderExtensionPAAE14shouldDownloadySbAA9AssetPackVF_0(uint64_t a1)
{
  v2 = type metadata accessor for AssetPack(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE87A98);
  v7 = sub_236E820E4();
  sub_236E393B0(a1, v5);
  v8 = sub_236E81D84();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = AssetPack.description.getter();
    v13 = v12;
    sub_236E39414(v5);
    v14 = sub_236E381CC(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_236E28000, v8, v7, "Should download: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  else
  {

    sub_236E39414(v5);
  }

  return 1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_236E38944(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_236E821E4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87BB0, &qword_236E85020);
      v3 = sub_236E82244();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_236E821E4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x2383C0080](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_236E82134();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_236E38E1C();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_236E82144();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_236E82134();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_236E38E1C();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_236E82144();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_236E38C10()
{
  result = qword_27DE87B10;
  if (!qword_27DE87B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE87B10);
  }

  return result;
}

uint64_t sub_236E38C64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_236E38C74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_236E38CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E38D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E38DBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_236E38E1C()
{
  result = qword_27DE88510;
  if (!qword_27DE88510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE88510);
  }

  return result;
}

uint64_t sub_236E38E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  return sub_236E3660C(a1, *(v2 + 64), *(v2 + 72), *(v2 + 80), a2, *(v2 + 16), *(v2 + 24));
}

void sub_236E38EAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_236E821E4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2383C0080](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_236E53944(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_236E38F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_236E3908C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236E39260(uint64_t a1)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_236E393B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E39414(uint64_t a1)
{
  v2 = type metadata accessor for AssetPack(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_236E39498(uint64_t a1, unint64_t *a2)
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

id BADownloaderExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  result = sub_236E3A334(v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_236E39720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*((*MEMORY[0x277D85000] & *v3) + 0x58) + 16);
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v6 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x60);
  return v4(a1, a2, a3, v5);
}

id sub_236E397A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_236E819F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v13 = a5;
  v14 = a1;
  sub_236E39720(a3, v12, v13);

  (*(v9 + 8))(v12, v8);
  sub_236E38E1C();
  sub_236E3AA4C();
  v15 = sub_236E82094();

  return v15;
}

uint64_t sub_236E398F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_236E82034();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  v16 = a1;
  v17 = a2;

  sub_236E5B828(0, 0, v12, &unk_236E84C60, v14);
}

uint64_t sub_236E39A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v13 = *(v12 + 24);
  v14 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v18 = (v13 + *v13);
  v15 = v13[1];
  v16 = swift_task_alloc();
  v8[4] = v16;
  *v16 = v8;
  v16[1] = sub_236E39BB4;

  return v18(a5, a6, v14, v12);
}

uint64_t sub_236E39BB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_236E39CB4, 0, 0);
}

uint64_t sub_236E39CB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_236E39D24(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_236E398F0(v10, v11, sub_236E3AA34, v9);
}

uint64_t sub_236E39DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 32);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v5 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  return v3(a1, a2, v4);
}

void sub_236E39E60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_236E39DE0(v6, v8);
}

uint64_t sub_236E39ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 40);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v5 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  return v3(a1, a2, v4);
}

uint64_t sub_236E39F54(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_236E819F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v10 = a3;
  v11 = a1;
  sub_236E39ED4(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_236E3A050()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 48);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  return v1(v2);
}

void sub_236E3A0D0(void *a1)
{
  v1 = a1;
  sub_236E3A050();
}

void sub_236E3A118(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_236E3AA04();
}

id sub_236E3A158()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _BackgroundDownloadHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_236E3A22C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _BackgroundDownloadHandler();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_236E3A2F8(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _BackgroundDownloadHandler());
  return sub_236E3A22C(a1);
}

id sub_236E3A334(uint64_t a1)
{
  type metadata accessor for _BackgroundDownloadHandler();
  v6 = sub_236E3A2F8(a1);
  v2 = objc_allocWithZone(BADownloaderExtensionConnection);
  v3 = v6;
  v4 = [v2 initWithPrincipalObject_];

  swift_unknownObjectRelease();
  return v4;
}

uint64_t dispatch thunk of BADownloaderExtension.backgroundDownload(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_236E3A518;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_236E3A518(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_236E3A65C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_236E3A720()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_236E3A774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236E3A7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236E3A7F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_236E3A834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236E3A910;

  return sub_236E39A2C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_236E3A910()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_236E3AA4C()
{
  result = qword_27DE87B20;
  if (!qword_27DE87B20)
  {
    sub_236E38E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE87B20);
  }

  return result;
}

unint64_t AssetPackManager.DownloadStatusUpdate.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPack(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E57598(v1, v9, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_236E57708(v9, v5, type metadata accessor for AssetPack);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_236E82264();

      v11 = 0x8000000236E89FE0;
      v12 = 0xD000000000000022;
    }

    else
    {
      sub_236E57708(v9, v5, type metadata accessor for AssetPack);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_236E82264();

      v11 = 0x8000000236E8A010;
      v12 = 0xD000000000000021;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881A0, &qword_236E85480) + 48)];
    sub_236E57708(v9, v5, type metadata accessor for AssetPack);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_236E82264();

    v25 = 0xD000000000000027;
    v26 = 0x8000000236E89FB0;
    v14 = AssetPack.description.getter();
    MEMORY[0x2383BFD30](v14);

    MEMORY[0x2383BFD30](32, 0xE100000000000000);
    v15 = [v13 description];
    v16 = sub_236E81E94();
    v18 = v17;

    MEMORY[0x2383BFD30](v16, v18);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_236E57708(v9, v5, type metadata accessor for AssetPack);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_236E82264();

      v11 = 0x8000000236E89F80;
      v12 = 0xD000000000000024;
LABEL_10:
      v25 = v12;
      v26 = v11;
      v21 = AssetPack.description.getter();
      MEMORY[0x2383BFD30](v21);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);
      goto LABEL_11;
    }

    v19 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48)];
    sub_236E57708(v9, v5, type metadata accessor for AssetPack);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E89F50);
    v20 = AssetPack.description.getter();
    MEMORY[0x2383BFD30](v20);

    MEMORY[0x2383BFD30](32, 0xE100000000000000);
    swift_getErrorValue();
    sub_236E824C4();
    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

LABEL_11:
  v22 = v25;
  sub_236E56DCC(v5, type metadata accessor for AssetPack);
  return v22;
}

NSObject *sub_236E3AF30()
{
  v0 = type metadata accessor for AssetPackManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_236E3BE54();
  qword_27DE87DC0 = result;
  return result;
}

uint64_t static AssetPackManager.shared.getter()
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_236E3B000()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "All asset packs", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_236E3B15C;

  return sub_236E599E0(v0 + 16);
}

uint64_t sub_236E3B15C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_236E3B2F4;
  }

  else
  {
    v6 = sub_236E3B288;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E3B288()
{
  v1 = v0[2];
  v2 = v0[5];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_236E3B32C()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "All asset pack records", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = sub_236E820D4();
  v6 = sub_236E81D84();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_236E28000, v6, v5, "Retrieving all asset-pack records…", v7, 2u);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v8 = *(v0 + 16);

  v9 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v10 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v11 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v12 = v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID;
  v13 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v14 = *(v12 + 8);
  v15 = *(MEMORY[0x277D25C20] + 4);
  v16 = swift_task_alloc();
  *(v0 + 24) = v16;
  *v16 = v0;
  v16[1] = sub_236E3B528;

  return MEMORY[0x282184AE0](v10, v11, v13, v14, 0);
}

uint64_t sub_236E3B528(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

NSObject *sub_236E3B628()
{
  v2 = v0;
  v48 = sub_236E81CF4();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_236E81C94();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v9 = sub_236E81DA4();
  __swift_project_value_buffer(v9, qword_27DE87DC8);
  v10 = sub_236E820E4();
  v11 = sub_236E81D84();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_236E28000, v11, v10, "IDs of downloaded asset packs", v12, 2u);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  v13 = sub_236E820D4();
  v14 = sub_236E81D84();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_236E28000, v14, v13, "Retrieving all asset-pack records…", v15, 2u);
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v17 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v18 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v19 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v20 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  v21 = sub_236E81BB4();
  if (!v1)
  {
    v39[2] = 0;
    v22 = *(v21 + 16);
    if (v22)
    {
      v49 = MEMORY[0x277D84F90];
      v23 = v21;
      sub_236E56848(0, v22, 0);
      v24 = v49;
      v26 = *(v6 + 16);
      v25 = v6 + 16;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v39[1] = v23;
      v28 = v23 + v27;
      v42 = *(v25 + 56);
      v43 = v26;
      v44 = v25;
      v40 = (v25 - 8);
      v41 = (v3 + 8);
      do
      {
        v30 = v45;
        v29 = v46;
        v43(v45, v28, v46);
        v31 = v47;
        sub_236E81C84();
        v32 = sub_236E81CA4();
        v34 = v33;
        (*v41)(v31, v48);
        (*v40)(v30, v29);
        v49 = v24;
        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_236E56848((v35 > 1), v36 + 1, 1);
          v24 = v49;
        }

        *(v24 + 16) = v36 + 1;
        v37 = v24 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v28 += v42;
        --v22;
      }

      while (v22);
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v14 = sub_236E56D34(v24);
  }

  return v14;
}

uint64_t sub_236E3BA24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87EC8, &qword_236E84D48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-v4];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE87DC8);
  v7 = sub_236E820E4();
  v8 = sub_236E81D84();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236E28000, v8, v7, "App group ID", v9, 2u);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v5, &unk_27DE87EC8, &qword_236E84D48);
  v10 = sub_236E81D74();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) != 1)
  {
    goto LABEL_15;
  }

  sub_236E38DBC(v5, &unk_27DE87EC8, &qword_236E84D48);
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 infoDictionary];

  if (!v13)
  {
    goto LABEL_12;
  }

  v10 = MEMORY[0x277D84F70];
  v14 = sub_236E81E64();

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  v15 = sub_236E7B334(0x6F72477070414142, 0xEC00000044497075);
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_236E3908C(*(v14 + 56) + 32 * v15, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v5 = sub_236E82104();
    v18 = sub_236E81D84();
    if (os_log_type_enabled(v18, v5))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_236E28000, v18, v5, "The main bundle’s info dictionary lacks a string value for the key “BAAppGroupID”.", v19, 2u);
      MEMORY[0x2383C0E50](v19, -1, -1);
    }

    sub_236E82344();
    __break(1u);
LABEL_15:
    v17 = sub_236E81D04();
    (*(v11 + 8))(v5, v10);
    return v17;
  }

  v17 = v21;
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  return v17;
}

uint64_t sub_236E3BDD4()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE87DC8);
  __swift_project_value_buffer(v0, qword_27DE87DC8);
  return sub_236E81D94();
}

NSObject *sub_236E3BE54()
{
  v1 = v0;
  v145 = *MEMORY[0x277D85DE8];
  v2.isa = v0->isa;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v122 - v4;
  v134 = sub_236E81E34();
  v133 = *(v134 - 1);
  v6 = *(v133 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87EC8, &qword_236E84D48) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v131 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v135 = &v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v125 = (&v122 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v126 = (&v122 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v129 = (&v122 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v122 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EF0, &qword_236E84E30);
  v27 = *(v26 - 8);
  v28 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v30 = &v122 - v29;
  swift_defaultActor_initialize();
  v31 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_statusUpdates;
  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v132 = v8;
  v32 = *(v27 + 16);
  v137 = qword_27DE8B0F0;
  v32(v30, qword_27DE8B0F0 + OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_stream, v26);
  sub_236E58664(&qword_27DE87EF8, &qword_27DE87EF0, &qword_236E84E30);
  v33 = sub_236E82084();
  (*(v27 + 8))(v30, v26);
  *(&v1->isa + v31) = v33;
  v34 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference;
  v35 = v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference;
  v36 = swift_unknownObjectWeakInit();
  *(&v1->isa + v34) = 0;
  *(v35 + 1) = 0;
  sub_236E59410(v36, (v35 + 8));
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v37 = sub_236E81DA4();
  v38 = __swift_project_value_buffer(v37, qword_27DE87DC8);
  v39 = sub_236E820E4();
  v40 = sub_236E81D84();
  if (os_log_type_enabled(v40, v39))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_236E28000, v40, v39, "Init", v33, 2u);
    MEMORY[0x2383C0E50](v33, -1, -1);
  }

  v41 = sub_236E81D84();
  v42 = sub_236E82114();
  if (os_log_type_enabled(v41, v42))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_236E28000, v41, v42, "Initializing the asset-pack manager…", v33, 2u);
    MEMORY[0x2383C0E50](v33, -1, -1);
  }

  v43 = [objc_opt_self() mainBundle];
  v44 = [v43 bundleIdentifier];

  if (!v44)
  {
    goto LABEL_60;
  }

  v45 = sub_236E81E94();
  v47 = v46;

  v48 = SecTaskCreateFromSelf(0);
  if (!v48)
  {
    v107 = sub_236E82104();
    v1 = sub_236E81D84();
    if (os_log_type_enabled(v1, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_236E28000, v1, v107, "A security task couldn’t be created.", v108, 2u);
      MEMORY[0x2383C0E50](v108, -1, -1);
    }

    goto LABEL_59;
  }

  v49 = v48;
  v144 = 0;
  v50 = SecTaskCopyTeamIdentifier();
  v140 = v38;
  v127 = v5;
  if (v50)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v142 = 0;
      v143 = 0;
      sub_236E81E84();

      v50 = v143;
      if (v143)
      {
        v51 = v142;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v51 = 0;
    v50 = 0;
  }

  else
  {
    v51 = 0;
  }

LABEL_18:
  if (v144)
  {
    v109 = v144;
    v110 = sub_236E820F4();
    v1 = v109;
    v111 = sub_236E81D84();

    if (os_log_type_enabled(v111, v110))
    {
      v112 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v112 = 138543362;
      type metadata accessor for CFError(0);
      sub_236E57620(&qword_27DE88068, type metadata accessor for CFError);
      swift_allocError();
      *v113 = v1;
      v114 = v1;
      v115 = _swift_stdlib_bridgeErrorToNSError();
      *(v112 + 4) = v115;
      *v33 = v115;
      _os_log_impl(&dword_236E28000, v111, v110, "The team ID couldn’t be copied: %{public}@", v112, 0xCu);
      sub_236E38DBC(v33, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v33, -1, -1);
      MEMORY[0x2383C0E50](v112, -1, -1);
    }

    v142 = 0;
    v143 = 0xE000000000000000;
    sub_236E82264();
    MEMORY[0x2383BFD30](0x1000000000000022, 0x8000000236E8A6D0);
    v141 = v1;
    type metadata accessor for CFError(0);
    sub_236E82304();
    goto LABEL_60;
  }

  v136 = v49;
  if (!v50)
  {
    if (os_variant_allows_internal_security_policies())
    {
      v52 = sub_236E81D84();
      v53 = sub_236E82114();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_236E28000, v52, v53, "The executable lacks a team ID, but internal security policies are allowed.", v54, 2u);
        MEMORY[0x2383C0E50](v54, -1, -1);
      }

      goto LABEL_24;
    }

    v116 = sub_236E82104();
    v1 = sub_236E81D84();
    if (os_log_type_enabled(v1, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_236E28000, v1, v116, "The process lacks a team ID.", v117, 2u);
      MEMORY[0x2383C0E50](v117, -1, -1);
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_24:
  isa = v2.isa;
  v55 = (v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  *v55 = v51;
  v55[1] = v50;
  sub_236E81C54();
  v56 = sub_236E81C44();
  v139 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper;
  *(&v1->isa + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper) = v56;

  sub_236E81C24();
  v122 = v45;
  v124 = v47;

  v33 = sub_236E81D74();
  v57 = *(v33 - 1);
  (*(v57 + 56))(v25, 0, 1, v33);
  v58 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
  sub_236E59508(v25, v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, &unk_27DE87EC8, &qword_236E84D48);
  v59 = v129;
  sub_236E593A8(v1 + v58, v129, &unk_27DE87EC8, &qword_236E84D48);
  v25 = *(v57 + 48);
  v60 = (v25)(v59, 1, v33);
  v123 = v57;
  if (v60 == 1)
  {
LABEL_25:
    sub_236E38DBC(v59, &unk_27DE87EC8, &qword_236E84D48);
    goto LABEL_29;
  }

  v61 = sub_236E81D44();
  v62 = v57;
  v63 = v61;
  v64 = *(v62 + 8);
  (v64)(v59, v33);
  if (v63)
  {
    v129 = v64;
    v59 = v126;
    sub_236E593A8(v1 + v58, v126, &unk_27DE87EC8, &qword_236E84D48);
    if ((v25)(v59, 1, v33) == 1)
    {
      goto LABEL_25;
    }

    v65 = sub_236E81D54();
    (v129)(v59, v33);
    if (v65)
    {
      while (1)
      {
        v118 = v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
        v1 = v125;
        sub_236E593A8(v118, v125, &unk_27DE87EC8, &qword_236E84D48);
        if ((v25)(v1, 1, v33) == 1)
        {
          sub_236E38DBC(v125, &unk_27DE87EC8, &qword_236E84D48);
        }

        else
        {
          v119 = v125;
          v1 = sub_236E81D64();
          v121 = v120;
          (v129)(v119, v33);
          if (v121)
          {
            v142 = 0;
            v143 = 0xE000000000000000;
            sub_236E82264();
            MEMORY[0x2383BFD30](0x1000000000000013, 0x8000000236E8A800);
            MEMORY[0x2383BFD30](v1, v121);
            MEMORY[0x2383BFD30](0x100000000000002BLL, 0x8000000236E8A820);
          }
        }

LABEL_60:
        sub_236E82344();
        __break(1u);
      }
    }
  }

LABEL_29:
  v66 = v130;
  sub_236E593A8(v1 + v58, v130, &unk_27DE87EC8, &qword_236E84D48);
  if ((v25)(v66, 1, v33) == 1)
  {
    sub_236E38DBC(v66, &unk_27DE87EC8, &qword_236E84D48);
    v67 = v124;

    v68 = v67;
    v69 = v122;
  }

  else
  {
    v69 = sub_236E81D14();
    v68 = v70;
    (*(v123 + 8))(v66, v33);
  }

  v71 = (v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  *v71 = v69;
  v71[1] = v68;

  v72 = *(&v1->isa + v139);
  v73 = *v55;
  v74 = v55[1];

  v75 = v132;
  sub_236E81BF4();

  (*(v133 + 32))(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath, v75, v134);
  v77 = *v55;
  v76 = v55[1];
  v78 = v135;
  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v135, &unk_27DE87EC8, &qword_236E84D48);
  v79 = sub_236E81D74();
  v80 = *(v79 - 8);
  v134 = *(v80 + 48);
  LODWORD(v72) = v134(v78, 1, v79);

  if (v72 == 1)
  {
    sub_236E38DBC(v78, &unk_27DE87EC8, &qword_236E84D48);
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v81 = sub_236E81D04();
    v82 = v83;
    (*(v80 + 8))(v78, v79);
  }

  v84 = *(&v1->isa + v139);
  type metadata accessor for ManifestCache();
  v85 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v85 + 112) = 0u;
  *(v85 + 128) = 0u;
  *(v85 + 144) = v77;
  *(v85 + 152) = v76;
  *(v85 + 160) = v81;
  *(v85 + 168) = v82;
  *(v85 + 176) = v84;
  *(&v1->isa + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache) = v85;
  v86 = sub_236E81D84();
  v87 = sub_236E82114();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_236E28000, v86, v87, "The asset-pack manager has been initialized.", v88, 2u);
    MEMORY[0x2383C0E50](v88, -1, -1);
  }

  v89 = [objc_opt_self() sharedManager];
  [v89 setDelegate_];

  v90 = sub_236E81D84();
  v91 = sub_236E82114();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_236E28000, v90, v91, "The system download-manager delegate has been assigned to the download manager.", v92, 2u);
    MEMORY[0x2383C0E50](v92, -1, -1);
  }

  v93 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
  v94 = v138;
  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v138, &unk_27DE87EC8, &qword_236E84D48);
  v95 = v134;
  if (v134(v94, 1, v79) == 1)
  {
    sub_236E38DBC(v94, &unk_27DE87EC8, &qword_236E84D48);
  }

  else
  {
    sub_236E81D34();
    v97 = v96;
    (*(v80 + 8))(v94, v79);
    if (v97)
    {

      goto LABEL_47;
    }
  }

  v98 = v1 + v93;
  v99 = v131;
  sub_236E593A8(v98, v131, &unk_27DE87EC8, &qword_236E84D48);
  if (v95(v99, 1, v79) == 1)
  {
    sub_236E38DBC(v99, &unk_27DE87EC8, &qword_236E84D48);
  }

  else
  {
    v100 = sub_236E81D24();
    (*(v80 + 8))(v99, v79);
    if (v100 == 1)
    {
      v101 = sub_236E82034();
      v102 = v127;
      (*(*(v101 - 8) + 56))(v127, 1, 1, v101);
      v103 = swift_allocObject();
      v103[2] = 0;
      v103[3] = 0;
      v104 = isa;
      v103[4] = v1;
      v103[5] = v104;

      sub_236E5BB28(0, 0, v102, &unk_236E85168, v103);
    }
  }

LABEL_47:
  if (v144)
  {
  }

  v105 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_236E3D62C()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E81D84();
  v3 = sub_236E82114();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v2, v3, "The app was installed for internal beta testing; checking for updates automatically…", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_236E3D778;
  v6 = *(v0 + 16);

  return sub_236E444A4();
}

uint64_t sub_236E3D778()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (!v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_236E3D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E3D930, v3, 0);
}

uint64_t sub_236E3D930()
{
  v13 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_236E81DA4();
  v0[11] = __swift_project_value_buffer(v2, qword_27DE87DC8);
  v3 = sub_236E820E4();

  v4 = sub_236E81D84();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_236E381CC(v6, v5, &v12);
    _os_log_impl(&dword_236E28000, v4, v3, "Asset pack with ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v9 = *(v0[9] + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_236E3DB04;

  return sub_236E599E0((v0 + 2));
}

uint64_t sub_236E3DB04()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_236E3DF50;
  }

  else
  {
    v6 = sub_236E3DC30;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E3DC30()
{
  v31 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v28 = *(v0 + 16);
  v29 = v4;
  v30 = *(v0 + 32);
  sub_236E70DE0(v2, v3, v1);

  v5 = type metadata accessor for AssetPack(0);
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  v7 = *(v0 + 80);
  if (v6 == 1)
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_236E38DBC(v7, &unk_27DE87E00, &unk_236E84CA0);
    type metadata accessor for ManagedBackgroundAssetsError();
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
    v10 = swift_allocError();
    *v11 = v8;
    v11[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    v14 = sub_236E820F4();

    v15 = v10;
    v16 = sub_236E81D84();

    if (os_log_type_enabled(v16, v14))
    {
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_236E381CC(v18, v17, &v28);
      *(v19 + 12) = 2114;
      v22 = v10;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_236E28000, v16, v14, "The asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v19, 0x16u);
      sub_236E38DBC(v20, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2383C0E50](v21, -1, -1);
      MEMORY[0x2383C0E50](v19, -1, -1);
    }

    v24 = *(v0 + 80);
    swift_willThrow();

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 80);
    sub_236E57708(v7, *(v0 + 48), type metadata accessor for AssetPack);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_236E3DF50()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = sub_236E820F4();

  v5 = v1;
  v6 = sub_236E81D84();

  if (os_log_type_enabled(v6, v4))
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_236E381CC(v8, v7, &v17);
    *(v9 + 12) = 2114;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_236E28000, v6, v4, "The asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  v14 = v0[10];
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_236E3E11C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v67 = a1;
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  __swift_project_value_buffer(v11, qword_27DE87DC8);
  v12 = sub_236E820E4();

  v13 = sub_236E81D84();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_236E381CC(v67, a2, &v57);
    _os_log_impl(&dword_236E28000, v13, v12, "Asset pack from local manifest cache with ID: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383C0E50](v15, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  v16 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v17 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v18 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v19 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v20 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  result = sub_236E81B04();
  if (!v4)
  {
    v23 = v22;
    if (v22 >> 60 == 15)
    {
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      v24 = result;
      v54 = 0;
      v25 = sub_236E818E4();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_236E59298(v24, v23);
      v55 = sub_236E818D4();
      sub_236E818B4();
      v28 = sub_236E3BA24();
      v30 = v29;
      v31 = qword_27DE87AE8;

      if (v31 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v11, qword_27DE88410);
      v32 = sub_236E820E4();

      v33 = sub_236E81D84();

      v53 = v33;
      if (os_log_type_enabled(v33, v32))
      {
        v34 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57 = v51;
        *v34 = 136446722;
        v35 = sub_236E381CC(v28, v30, &v57);
        v52 = v28;
        v36 = v35;

        *(v34 + 4) = v36;
        *(v34 + 12) = 2082;
        v37 = sub_236E82124();
        v39 = v10;
        v40 = v24;
        v41 = v32;
        v42 = sub_236E381CC(v37, v38, &v57);
        v28 = v52;

        *(v34 + 14) = v42;
        *(v34 + 22) = 1024;
        *(v34 + 24) = 1;
        v43 = v41;
        v24 = v40;
        v10 = v39;
        v44 = v53;
        _os_log_impl(&dword_236E28000, v53, v43, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v34, 0x1Cu);
        v45 = v51;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](v45, -1, -1);
        MEMORY[0x2383C0E50](v34, -1, -1);
      }

      else
      {
      }

      v57 = v28;
      v58 = v30;
      LOBYTE(v59) = 1;
      v60 = 2;
      sub_236E38C10();
      v61 = 0;
      v62 = 0;
      v46 = v54;
      sub_236E818C4();
      v47 = v61;

      sub_236E38C64(v47);
      if (v46)
      {

        sub_236E592EC(v24, v23);
        return sub_236E592EC(v24, v23);
      }

      else
      {
        v57 = v63;
        LOBYTE(v58) = v64;
        v59 = v65;
        v60 = v66;
        v48 = v67;
        sub_236E70DE0(v67, a2, v10);

        v49 = type metadata accessor for AssetPack(0);
        if ((*(*(v49 - 8) + 48))(v10, 1, v49) == 1)
        {
          sub_236E38DBC(v10, &unk_27DE87E00, &unk_236E84CA0);
          type metadata accessor for ManagedBackgroundAssetsError();
          sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
          swift_allocError();
          *v50 = v48;
          v50[1] = a2;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_236E592EC(v24, v23);
          return sub_236E592EC(v24, v23);
        }

        else
        {
          sub_236E592EC(v24, v23);

          sub_236E592EC(v24, v23);
          return sub_236E57708(v10, v56, type metadata accessor for AssetPack);
        }
      }
    }
  }

  return result;
}

uint64_t sub_236E3E794(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_236E81904();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[3];
  v35 = a1[2];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v9 = sub_236E81DA4();
  __swift_project_value_buffer(v9, qword_27DE87DC8);
  v10 = sub_236E820E4();

  v11 = sub_236E81D84();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v12 = 136446210;

    sub_236E82264();

    type metadata accessor for AssetPack(0);
    sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack);
    v13 = sub_236E820A4();
    MEMORY[0x2383BFD30](v13);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v14 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v37);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_236E28000, v11, v10, "Install manifest: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v2 = v1;
    MEMORY[0x2383C0E50](v32, -1, -1);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  v15 = sub_236E81944();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_236E81934();
  sub_236E818F4();
  sub_236E81914();
  sub_236E59354();
  v18 = sub_236E81924();
  if (!v2)
  {
    v20 = v18;
    v21 = v19;

    v22 = sub_236E81D84();
    v23 = sub_236E82114();

    if (os_log_type_enabled(v22, v23))
    {
      v33 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v33 = 136446210;

      sub_236E82264();

      type metadata accessor for AssetPack(0);
      sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack);
      v24 = sub_236E820A4();
      MEMORY[0x2383BFD30](v24);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);

      v25 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v37);

      *(v33 + 4) = v25;
      _os_log_impl(&dword_236E28000, v22, v23, "Installing the manifest “%{public}s”…", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x2383C0E50](v36, -1, -1);
      MEMORY[0x2383C0E50](v33, -1, -1);
    }

    v26 = *(v34 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v27 = *(v34 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
    v28 = *(v34 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
    v29 = *(v34 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
    v30 = *(v34 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
    sub_236E81B34();
    sub_236E38C74(v20, v21);
  }
}

uint64_t sub_236E3ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for ManagedBackgroundAssetsError();
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = sub_236E81CF4();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = sub_236E81C94();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E18, &qword_236E84CB8) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_236E3EEE0, v3, 0);
}

uint64_t sub_236E3EEE0()
{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_236E81DA4();
  v0[21] = __swift_project_value_buffer(v2, qword_27DE87DC8);
  v3 = sub_236E820E4();

  v4 = sub_236E81D84();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_236E381CC(v6, v5, v13);
    _os_log_impl(&dword_236E28000, v4, v3, "Status of asset pack with ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v9 = *(v0[7] + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_236E3F0D8;
  v11 = *MEMORY[0x277D85DE8];

  return sub_236E5A46C();
}

uint64_t sub_236E3F0D8()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[7];
    v5 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_236E3FD04, v4, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[24] = v6;
    *v6 = v3;
    v6[1] = sub_236E3F294;
    v7 = v3[7];
    v8 = *MEMORY[0x277D85DE8];

    return sub_236E3B30C();
  }
}

uint64_t sub_236E3F294(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_236E3FEC8;
  }

  else
  {
    v8 = sub_236E3F3F4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_236E3F3F4()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v26 = *(v1 + 16);
  if (v26)
  {
    v2 = 0;
    v3 = v0[16];
    v27 = (v0[13] + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[14];
      v5 = v0[12];
      v7 = v0[5];
      v6 = v0[6];
      (*(v3 + 16))(v0[18], v0[25] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[15]);
      sub_236E81C84();
      v8 = sub_236E81CA4();
      v10 = v9;
      (*v27)(v4, v5);
      if (v8 == v7 && v10 == v6)
      {
        v17 = v0[25];

        goto LABEL_14;
      }

      v12 = v0[5];
      v13 = v0[6];
      v14 = sub_236E824E4();

      if (v14)
      {
        break;
      }

      ++v2;
      (*(v3 + 8))(v0[18], v0[15]);
      if (v26 == v2)
      {
        v15 = v0[25];
        goto LABEL_11;
      }
    }

    v18 = v0[25];
LABEL_14:

    (*(v0[16] + 32))(v0[20], v0[18], v0[15]);
    v16 = 0;
  }

  else
  {
LABEL_11:

    v16 = 1;
  }

  (*(v0[16] + 56))(v0[20], v16, 1, v0[15]);
  v19 = swift_task_alloc();
  v0[27] = v19;
  *v19 = v0;
  v19[1] = sub_236E3F65C;
  v20 = v0[10];
  v21 = v0[6];
  v22 = v0[7];
  v23 = v0[5];
  v24 = *MEMORY[0x277D85DE8];

  return sub_236E3D890(v20, v23, v21);
}

uint64_t sub_236E3F65C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_236E4010C;
  }

  else
  {
    v6 = sub_236E3F7B4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E3F7B4()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  sub_236E57708(v0[10], v0[11], type metadata accessor for AssetPack);
  v1 = [objc_opt_self() sharedManager];
  v0[3] = 0;
  v2 = [v1 fetchCurrentDownloads_];

  v3 = v0[3];
  if (v2)
  {
    v4 = v0 + 20;
    v5 = v0[28];
    v62 = v0[23];
    v63 = v0[20];
    v6 = v0[19];
    v7 = v0[16];
    v64 = v0[15];
    v8 = v0[11];
    sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    v9 = sub_236E81FA4();
    v10 = v3;

    v11 = swift_task_alloc();
    *(v11 + 16) = v8;
    v12 = sub_236E40638(sub_236E5957C, v11, v9);

    if (v62)
    {
      v13 = 32;
    }

    else
    {
      v13 = 33;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v62 == 0;
    }

    sub_236E593A8(v63, v6, &qword_27DE87E18, &qword_236E84CB8);
    if ((*(v7 + 48))(v6, 1, v64) == 1)
    {
      sub_236E38DBC(*v4, &qword_27DE87E18, &qword_236E84CB8);
      v4 = v0 + 19;
    }

    else
    {
      v40 = v0[23];
      v42 = v0[16];
      v41 = v0[17];
      v43 = v0[15];
      v44 = v0[11];
      (*(v42 + 32))(v41, v0[19], v43);
      v45 = sub_236E81C74();
      (*(v42 + 8))(v41, v43);
      v46 = *(v44 + 24);
      v47 = 72;
      if (!v40)
      {
        v47 = 74;
      }

      v48 = v45 != v46 || v46 <= -1;
      v49 = 68;
      if (v48)
      {
        v49 = v47;
      }

      v14 |= v49;
    }

    v50 = v0[11];
    v51 = v0[4];
    sub_236E38DBC(*v4, &qword_27DE87E18, &qword_236E84CB8);
    *v51 = v14;
    sub_236E56DCC(v50, type metadata accessor for AssetPack);
    v53 = v0[19];
    v52 = v0[20];
    v55 = v0[17];
    v54 = v0[18];
    v56 = v0[14];
    v58 = v0[10];
    v57 = v0[11];
    v59 = v0[9];

    v38 = v0[1];
    v60 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = v0[20];
    v16 = v0[11];
    v17 = v3;
    v18 = sub_236E81994();

    swift_willThrow();
    sub_236E38DBC(v15, &qword_27DE87E18, &qword_236E84CB8);
    sub_236E56DCC(v16, type metadata accessor for AssetPack);
    v19 = v0[21];
    v20 = v0[6];
    v21 = sub_236E820F4();

    v22 = v18;
    v23 = sub_236E81D84();

    if (os_log_type_enabled(v23, v21))
    {
      v25 = v0[5];
      v24 = v0[6];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v66[0] = v28;
      *v26 = 136446466;
      *(v26 + 4) = sub_236E381CC(v25, v24, v66);
      *(v26 + 12) = 2114;
      v29 = v18;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v30;
      *v27 = v30;
      _os_log_impl(&dword_236E28000, v23, v21, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v26, 0x16u);
      sub_236E38DBC(v27, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2383C0E50](v28, -1, -1);
      MEMORY[0x2383C0E50](v26, -1, -1);
    }

    v32 = v0[19];
    v31 = v0[20];
    v34 = v0[17];
    v33 = v0[18];
    v35 = v0[14];
    v36 = v0[10];
    v37 = v0[11];
    v65 = v0[9];
    swift_willThrow();

    v38 = v0[1];
    v39 = *MEMORY[0x277D85DE8];
  }

  return v38();
}

uint64_t sub_236E3FD04()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[21];
  v3 = sub_236E820F4();
  v4 = v1;
  v5 = sub_236E81D84();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_236E28000, v5, v3, "The manifest couldn’t be refreshed: %{public}@", v8, 0xCu);
    sub_236E38DBC(v9, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_236E3F294;
  v13 = v0[7];
  v14 = *MEMORY[0x277D85DE8];

  return sub_236E3B30C();
}

uint64_t sub_236E3FEC8()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[6];
  v4 = sub_236E820F4();

  v5 = v1;
  v6 = sub_236E81D84();

  if (os_log_type_enabled(v6, v4))
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_236E381CC(v8, v7, v25);
    *(v9 + 12) = 2114;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_236E28000, v6, v4, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[14];
  v20 = v0[10];
  v19 = v0[11];
  v24 = v0[9];
  swift_willThrow();

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_236E4010C()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  *(v0 + 16) = v1;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = *v6;
    v8 = v6[1];
    if (v7 == *(v0 + 40) && v8 == *(v0 + 48))
    {
    }

    else
    {
      v10 = sub_236E824E4();

      if ((v10 & 1) == 0)
      {
LABEL_9:
        v11 = *(v0 + 160);
LABEL_10:
        sub_236E38DBC(v11, &qword_27DE87E18, &qword_236E84CB8);
        goto LABEL_11;
      }
    }

    v35 = *(v0 + 160);
    if ((*(*(v0 + 128) + 48))(v35, 1, *(v0 + 120)) != 1)
    {
      v36 = *(v0 + 32);

      sub_236E38DBC(v35, &qword_27DE87E18, &qword_236E84CB8);
      *v36 = 16;

      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v40 = *(v0 + 136);
      v39 = *(v0 + 144);
      v41 = *(v0 + 112);
      v43 = *(v0 + 80);
      v42 = *(v0 + 88);
      v44 = *(v0 + 72);

      v32 = *(v0 + 8);
      v45 = *MEMORY[0x277D85DE8];
      goto LABEL_14;
    }

    v11 = v35;
    goto LABEL_10;
  }

  sub_236E38DBC(*(v0 + 160), &qword_27DE87E18, &qword_236E84CB8);
  sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
LABEL_11:

  v12 = *(v0 + 224);
  v13 = *(v0 + 168);
  v14 = *(v0 + 48);
  v15 = sub_236E820F4();

  v16 = v12;
  v17 = sub_236E81D84();

  if (os_log_type_enabled(v17, v15))
  {
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47[0] = v22;
    *v20 = 136446466;
    *(v20 + 4) = sub_236E381CC(v19, v18, v47);
    *(v20 + 12) = 2114;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v24;
    *v21 = v24;
    _os_log_impl(&dword_236E28000, v17, v15, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v20, 0x16u);
    sub_236E38DBC(v21, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x2383C0E50](v22, -1, -1);
    MEMORY[0x2383C0E50](v20, -1, -1);
  }

  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v29 = *(v0 + 112);
  v31 = *(v0 + 80);
  v30 = *(v0 + 88);
  v46 = *(v0 + 72);
  swift_willThrow();

  v32 = *(v0 + 8);
  v33 = *MEMORY[0x277D85DE8];
LABEL_14:

  return v32();
}

void *sub_236E40524(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_236E821E4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383C0080](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_236E40638(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x2383C0080](v5, a3);
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
      v13 = sub_236E821E4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_236E40760(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v7 = sub_236E81DA4();
  __swift_project_value_buffer(v7, qword_27DE87DC8);
  v8 = sub_236E820E4();

  v9 = sub_236E81D84();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_236E381CC(a1, a2, &v17);
    _os_log_impl(&dword_236E28000, v9, v8, "Downloaded version of asset pack with ID: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v12 = sub_236E570CC(v4, a1, a2);
  v14 = v13;

  if (!v3 && (v14 & 1) != 0)
  {
    type metadata accessor for ManagedBackgroundAssetsError();
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_236E40974(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E30, &qword_236E84CD8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E38, &qword_236E84CE0);
  v2[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E40, &qword_236E84CE8);
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_236E81CF4();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_236E40C80, v1, 0);
}

uint64_t sub_236E40C80()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[6];
  v3 = sub_236E81DA4();
  v0[36] = __swift_project_value_buffer(v3, qword_27DE87DC8);
  v4 = sub_236E820E4();
  sub_236E57598(v2, v1, type metadata accessor for AssetPack);
  v5 = sub_236E81D84();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[35];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136446210;
    v10 = AssetPack.description.getter();
    v12 = v11;
    sub_236E56DCC(v7, type metadata accessor for AssetPack);
    v13 = sub_236E381CC(v10, v12, v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_236E28000, v5, v4, "Ensure local availability of: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  else
  {

    sub_236E56DCC(v7, type metadata accessor for AssetPack);
  }

  v14 = v0[21];
  v15 = v0[6];
  v16 = v0[7];
  v17 = *(v16 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v18 = *(v16 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v19 = *(v16 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v20 = *(v16 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  v0[37] = *v15;
  v0[38] = v15[1];

  sub_236E81CD4();
  v0[39] = *(v16 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v21 = *(MEMORY[0x277D25C38] + 4);
  v22 = swift_task_alloc();
  v0[40] = v22;
  *v22 = v0;
  v22[1] = sub_236E40F68;
  v23 = v0[21];
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282184B00](v23);
}

uint64_t sub_236E40F68(char a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = v1;

  v7 = *(v4 + 56);
  if (v1)
  {
    v8 = sub_236E439C4;
  }

  else
  {
    *(v4 + 384) = a1 & 1;
    v8 = sub_236E410D4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_236E410D4()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 384) == 1)
  {
    v1 = *(v0 + 288);
    sub_236E57598(*(v0 + 48), *(v0 + 272), type metadata accessor for AssetPack);
    v2 = sub_236E81D84();
    v3 = sub_236E82114();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 272);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22[0] = v7;
      *v6 = 136446210;
      v8 = *v5;
      v9 = v5[1];

      sub_236E56DCC(v5, type metadata accessor for AssetPack);
      v10 = sub_236E381CC(v8, v9, v22);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_236E28000, v2, v3, "Making the unavailable, already downloaded asset pack with the ID “%{public}s” available instead of redownloading it…", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2383C0E50](v7, -1, -1);
      MEMORY[0x2383C0E50](v6, -1, -1);
    }

    else
    {

      sub_236E56DCC(v5, type metadata accessor for AssetPack);
    }

    if (qword_27DE87AC0 != -1)
    {
      swift_once();
    }

    sub_236E5BDD4(*(v0 + 48));
    v17 = *(MEMORY[0x277D25BF8] + 4);
    v18 = swift_task_alloc();
    *(v0 + 336) = v18;
    *v18 = v0;
    v18[1] = sub_236E413CC;
    v19 = *(v0 + 312);
    v20 = *(v0 + 168);
    v21 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282184AA0](1, v20);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    *v11 = v0;
    v11[1] = sub_236E416D0;
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 56);
    v15 = *MEMORY[0x277D85DE8];

    return sub_236E3ECD4(v0 + 16, v12, v13);
  }
}

uint64_t sub_236E413CC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_236E43D30;
  }

  else
  {
    v6 = sub_236E41524;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E41524()
{
  v25 = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[10];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_236E416D0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_236E4409C;
  }

  else
  {
    v6 = sub_236E41828;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E41828()
{
  v234 = v0;
  v233[1] = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  if ((v1 & 0x40) != 0)
  {
    v13 = v0[36];
    sub_236E57598(v0[6], v0[33], type metadata accessor for AssetPack);
    v14 = sub_236E81D84();
    v15 = sub_236E82114();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[33];
    v18 = v0[20];
    v19 = v0[21];
    v20 = v0[19];
    if (v16)
    {
      v229 = v0[21];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v233[0] = v22;
      *v21 = 136446210;
      v23 = *v17;
      v24 = v17[1];

      sub_236E56DCC(v17, type metadata accessor for AssetPack);
      v25 = sub_236E381CC(v23, v24, v233);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_236E28000, v14, v15, "The asset pack with the ID “%{public}s” is already downloaded.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2383C0E50](v22, -1, -1);
      MEMORY[0x2383C0E50](v21, -1, -1);

      (*(v18 + 8))(v229, v20);
    }

    else
    {

      sub_236E56DCC(v17, type metadata accessor for AssetPack);
      (*(v18 + 8))(v19, v20);
    }

    v37 = v0[34];
    v36 = v0[35];
    v38 = v0[32];
    v39 = v0[33];
    v41 = v0[30];
    v40 = v0[31];
    v43 = v0[28];
    v42 = v0[29];
    v45 = v0[26];
    v44 = v0[27];
    v209 = v0[25];
    v211 = v0[24];
    v213 = v0[23];
    v215 = v0[22];
    v217 = v0[21];
    v219 = v0[18];
    v221 = v0[15];
    v223 = v0[13];
    v225 = v0[12];
    v227 = v0[11];
    v230 = v0[10];

    v46 = v0[1];
    v47 = *MEMORY[0x277D85DE8];
    goto LABEL_62;
  }

  v2 = v0[6];
  if ((v1 & 0x20) == 0)
  {
    v3 = v0[36];
    if ((v1 & 1) == 0)
    {
      sub_236E57598(v2, v0[27], type metadata accessor for AssetPack);
      v4 = sub_236E81D84();
      v5 = sub_236E82114();
      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[27];
      if (v6)
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v233[0] = v9;
        *v8 = 136446210;
        v10 = *v7;
        v11 = v7[1];

        sub_236E56DCC(v7, type metadata accessor for AssetPack);
        v12 = sub_236E381CC(v10, v11, v233);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_236E28000, v4, v5, "The asset pack with the ID “%{public}s” can’t be downloaded.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x2383C0E50](v9, -1, -1);
        MEMORY[0x2383C0E50](v8, -1, -1);
      }

      else
      {

        sub_236E56DCC(v7, type metadata accessor for AssetPack);
      }

      v86 = v0[20];
      v85 = v0[21];
      v87 = v0[19];
      v88 = v0[6];
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);
      v84 = swift_allocError();
      sub_236E57598(v88, v89, type metadata accessor for AssetPack);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_40;
    }

    sub_236E57598(v2, v0[28], type metadata accessor for AssetPack);
    v48 = sub_236E81D84();
    v49 = sub_236E82114();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[28];
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v233[0] = v53;
      *v52 = 136446210;
      v54 = *v51;
      v55 = v51[1];

      sub_236E56DCC(v51, type metadata accessor for AssetPack);
      v56 = sub_236E381CC(v54, v55, v233);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_236E28000, v48, v49, "Scheduling the asset pack with the ID “%{public}s” to be downloaded…", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x2383C0E50](v53, -1, -1);
      MEMORY[0x2383C0E50](v52, -1, -1);
    }

    else
    {

      sub_236E56DCC(v51, type metadata accessor for AssetPack);
    }

    v90 = v0[6];
    v91 = AssetPack.download(for:)(0, 1);
    v92 = [objc_opt_self() sharedManager];
    v0[3] = 0;
    v93 = [v92 startForegroundDownload:v91 error:v0 + 3];

    v94 = v0[3];
    if ((v93 & 1) == 0)
    {
      v86 = v0[20];
      v85 = v0[21];
      v87 = v0[19];
      v106 = v94;
      v84 = sub_236E81994();

      swift_willThrow();
LABEL_40:
      (*(v86 + 8))(v85, v87);
      goto LABEL_58;
    }

    v95 = v0[36];
    sub_236E57598(v0[6], v0[26], type metadata accessor for AssetPack);
    v96 = v94;
    v97 = sub_236E81D84();
    v98 = sub_236E82114();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v0[26];
    if (v99)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

  v26 = v0[36];
  sub_236E57598(v2, v0[32], type metadata accessor for AssetPack);
  v27 = sub_236E81D84();
  v28 = sub_236E82114();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[32];
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v233[0] = v32;
    *v31 = 136446210;
    v33 = *v30;
    v34 = v30[1];

    sub_236E56DCC(v30, type metadata accessor for AssetPack);
    v35 = sub_236E381CC(v33, v34, v233);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_236E28000, v27, v28, "The asset pack with the ID “%{public}s” is currently being downloaded.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x2383C0E50](v32, -1, -1);
    MEMORY[0x2383C0E50](v31, -1, -1);
  }

  else
  {

    sub_236E56DCC(v30, type metadata accessor for AssetPack);
  }

  v57 = v0[36];
  sub_236E57598(v0[6], v0[31], type metadata accessor for AssetPack);
  v58 = sub_236E81D84();
  v59 = sub_236E82114();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v0[31];
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v233[0] = v63;
    *v62 = 136446210;
    v64 = *v61;
    v65 = v61[1];

    sub_236E56DCC(v61, type metadata accessor for AssetPack);
    v66 = sub_236E381CC(v64, v65, v233);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_236E28000, v58, v59, "Fetching the current download with the ID “%{public}s”…", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x2383C0E50](v63, -1, -1);
    MEMORY[0x2383C0E50](v62, -1, -1);
  }

  else
  {

    sub_236E56DCC(v61, type metadata accessor for AssetPack);
  }

  v67 = objc_opt_self();
  v68 = [v67 sharedManager];
  v0[4] = 0;
  v69 = [v68 fetchCurrentDownloads_];

  v70 = v0[4];
  if (!v69)
  {
    v81 = v0[20];
    v80 = v0[21];
    v82 = v0[19];
    v83 = v70;
    v84 = sub_236E81994();

    swift_willThrow();
    (*(v81 + 8))(v80, v82);
LABEL_58:
    v156 = v0[36];
    v157 = v0[22];
    v158 = v0[6];
    v159 = sub_236E820F4();
    sub_236E57598(v158, v157, type metadata accessor for AssetPack);
    v160 = v84;
    v161 = sub_236E81D84();

    v162 = os_log_type_enabled(v161, v159);
    v163 = v0[22];
    if (v162)
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v233[0] = v166;
      *v164 = 136446466;
      v167 = AssetPack.description.getter();
      v169 = v168;
      sub_236E56DCC(v163, type metadata accessor for AssetPack);
      v170 = sub_236E381CC(v167, v169, v233);

      *(v164 + 4) = v170;
      *(v164 + 12) = 2114;
      v171 = v84;
      v172 = _swift_stdlib_bridgeErrorToNSError();
      *(v164 + 14) = v172;
      *v165 = v172;
      _os_log_impl(&dword_236E28000, v161, v159, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v164, 0x16u);
      sub_236E38DBC(v165, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v165, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v166);
      MEMORY[0x2383C0E50](v166, -1, -1);
      MEMORY[0x2383C0E50](v164, -1, -1);
    }

    else
    {

      sub_236E56DCC(v163, type metadata accessor for AssetPack);
    }

    v174 = v0[34];
    v173 = v0[35];
    v176 = v0[32];
    v175 = v0[33];
    v177 = v0[30];
    v178 = v0[31];
    v180 = v0[28];
    v179 = v0[29];
    v207 = v0[27];
    v208 = v0[26];
    v210 = v0[25];
    v212 = v0[24];
    v214 = v0[23];
    v216 = v0[22];
    v218 = v0[21];
    v220 = v0[18];
    v222 = v0[15];
    v224 = v0[13];
    v226 = v0[12];
    v228 = v0[11];
    v232 = v0[10];
    swift_willThrow();

    v46 = v0[1];
    v181 = *MEMORY[0x277D85DE8];
LABEL_62:

    return v46();
  }

  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  v71 = sub_236E81FA4();
  v72 = v70;

  v233[0] = MEMORY[0x277D84F90];
  if (v71 >> 62)
  {
    goto LABEL_43;
  }

  v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v67; v73; i = v67)
  {
    v74 = 0;
    v67 = (v71 & 0xC000000000000001);
    while (1)
    {
      if (v67)
      {
        v75 = MEMORY[0x2383C0080](v74, v71);
      }

      else
      {
        if (v74 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v75 = *(v71 + 8 * v74 + 32);
      }

      v76 = v75;
      v77 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (([(BADownload *)v75 isForManagedAssetPack]& 1) != 0)
      {
        sub_236E822B4();
        v78 = *(v233[0] + 16);
        sub_236E822E4();
        sub_236E822F4();
        sub_236E822C4();
      }

      else
      {
      }

      ++v74;
      if (v77 == v73)
      {
        v79 = v233[0];
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v73 = sub_236E821E4();
  }

  v79 = MEMORY[0x277D84F90];
LABEL_45:
  v107 = v0[45];
  v108 = v0[6];

  v109 = swift_task_alloc();
  *(v109 + 16) = v108;
  v110 = sub_236E40524(sub_236E57770, v109, v79);

  v111 = v0[36];
  if (v110)
  {
    v112 = v110;
    v113 = sub_236E81D84();
    v114 = sub_236E82114();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v233[0] = v116;
      *v115 = 136446210;
      v117 = [v112 identifier];
      v118 = sub_236E81E94();
      v120 = v119;

      v121 = sub_236E381CC(v118, v120, v233);

      *(v115 + 4) = v121;
      _os_log_impl(&dword_236E28000, v113, v114, "Promoting the download with the ID “%{public}s” to the foreground…", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x2383C0E50](v116, -1, -1);
      MEMORY[0x2383C0E50](v115, -1, -1);
    }

    v91 = v112;
    v122 = i;
    v123 = BAApplicationGroupIdentifier;
  }

  else
  {
    v124 = v0[30];
    v125 = v0[6];
    v126 = sub_236E82104();
    sub_236E57598(v125, v124, type metadata accessor for AssetPack);
    v127 = sub_236E81D84();
    v128 = os_log_type_enabled(v127, v126);
    v129 = v0[30];
    if (v128)
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v233[0] = v131;
      *v130 = 136446210;
      v132 = *v129;
      v133 = v129[1];

      sub_236E56DCC(v129, type metadata accessor for AssetPack);
      v134 = sub_236E381CC(v132, v133, v233);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_236E28000, v127, v126, "There’s no current download with the ID “%{public}s”; scheduling a new download…", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x2383C0E50](v131, -1, -1);
      MEMORY[0x2383C0E50](v130, -1, -1);
    }

    else
    {

      sub_236E56DCC(v129, type metadata accessor for AssetPack);
    }

    v122 = i;
    v123 = BAApplicationGroupIdentifier;
    v135 = v0[6];
    v91 = AssetPack.download(for:)(0, 1);
    v112 = 0;
  }

  v136 = v112;
  v137 = [v122 v123[411]];
  v0[5] = 0;
  v138 = [v137 startForegroundDownload:v91 error:v0 + 5];

  v139 = v0[5];
  if (!v138)
  {
    v153 = v0[20];
    v152 = v0[21];
    v154 = v0[19];
    v155 = v139;
    v84 = sub_236E81994();

    swift_willThrow();
    (*(v153 + 8))(v152, v154);
    goto LABEL_58;
  }

  v140 = v0[36];
  if (!v110)
  {
    sub_236E57598(v0[6], v0[29], type metadata accessor for AssetPack);
    v183 = v139;
    v97 = sub_236E81D84();
    v98 = sub_236E82114();
    v184 = os_log_type_enabled(v97, v98);
    v100 = v0[29];
    if (v184)
    {
LABEL_38:
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v233[0] = v102;
      *v101 = 136446210;
      v103 = *v100;
      v104 = v100[1];

      sub_236E56DCC(v100, type metadata accessor for AssetPack);
      v105 = sub_236E381CC(v103, v104, v233);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_236E28000, v97, v98, "The asset pack with the ID “%{public}s” was scheduled to be downloaded.", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x2383C0E50](v102, -1, -1);
      MEMORY[0x2383C0E50](v101, -1, -1);

      goto LABEL_68;
    }

LABEL_66:

    sub_236E56DCC(v100, type metadata accessor for AssetPack);
    goto LABEL_68;
  }

  v141 = v139;
  v142 = v91;
  v143 = sub_236E81D84();
  v144 = sub_236E82114();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v233[0] = v146;
    *v145 = 136315138;
    v147 = [v142 identifier];
    v148 = sub_236E81E94();
    v150 = v149;

    v151 = sub_236E381CC(v148, v150, v233);

    *(v145 + 4) = v151;
    _os_log_impl(&dword_236E28000, v143, v144, "The download with the ID “%s” was promoted to the foreground.", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x2383C0E50](v146, -1, -1);
    MEMORY[0x2383C0E50](v145, -1, -1);
  }

  else
  {
  }

LABEL_68:
  v185 = v0[36];
  sub_236E57598(v0[6], v0[25], type metadata accessor for AssetPack);
  v186 = sub_236E81D84();
  v187 = sub_236E82114();
  v188 = os_log_type_enabled(v186, v187);
  v189 = v0[25];
  if (v188)
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v233[0] = v191;
    *v190 = 136446210;
    v192 = *v189;
    v193 = v189[1];

    sub_236E56DCC(v189, type metadata accessor for AssetPack);
    v194 = sub_236E381CC(v192, v193, v233);

    *(v190 + 4) = v194;
    _os_log_impl(&dword_236E28000, v186, v187, "Awaiting status updates for the asset pack with the ID “%{public}s”…", v190, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v191);
    MEMORY[0x2383C0E50](v191, -1, -1);
    MEMORY[0x2383C0E50](v190, -1, -1);
  }

  else
  {

    sub_236E56DCC(v189, type metadata accessor for AssetPack);
  }

  v195 = v0[18];
  v197 = v0[14];
  v196 = v0[15];
  v198 = v0[7];
  sub_236E484E4(v0[37], v0[38]);
  sub_236E58664(&qword_27DE87E50, &qword_27DE87E38, &qword_236E84CE0);
  sub_236E82064();
  v199 = sub_236E57620(&qword_27DE87E58, type metadata accessor for AssetPackManager);
  v0[46] = v199;
  v200 = v0[7];
  sub_236E58664(&qword_27DE87E60, &qword_27DE87E40, &qword_236E84CE8);
  v201 = *(MEMORY[0x277D856D8] + 4);
  v202 = swift_task_alloc();
  v0[47] = v202;
  *v202 = v0;
  v202[1] = sub_236E42E68;
  v203 = v0[18];
  v204 = v0[16];
  v205 = v0[13];
  v206 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200310](v205, v200, v199);
}

uint64_t sub_236E42E68()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;

  if (v0)
  {
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_236E42FC8, v6, 0);
  }

  return result;
}

uint64_t sub_236E42FC8()
{
  v121 = v0;
  v120[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = (*(v0[9] + 48))(v1, 1, v0[8]);
  v3 = v0[36];
  if (v2 == 1)
  {
    v4 = v0[23];
    v5 = v0[6];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_236E57598(v5, v4, type metadata accessor for AssetPack);
    v6 = sub_236E81D84();
    v7 = sub_236E82114();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[19];
    if (v8)
    {
      v117 = v0[21];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v120[0] = v14;
      *v13 = 136446210;
      v15 = *v9;
      v16 = v9[1];

      sub_236E56DCC(v9, type metadata accessor for AssetPack);
      v17 = sub_236E381CC(v15, v16, v120);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_236E28000, v6, v7, "No more status updates are available for the asset pack with the ID “%{public}s”.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2383C0E50](v14, -1, -1);
      MEMORY[0x2383C0E50](v13, -1, -1);

      (*(v10 + 8))(v117, v12);
    }

    else
    {

      sub_236E56DCC(v9, type metadata accessor for AssetPack);
      (*(v10 + 8))(v11, v12);
    }

    v37 = v0[34];
    v36 = v0[35];
    v38 = v0[32];
    v39 = v0[33];
    v41 = v0[30];
    v40 = v0[31];
    v43 = v0[28];
    v42 = v0[29];
    v45 = v0[26];
    v44 = v0[27];
    v97 = v0[25];
    v99 = v0[24];
    v101 = v0[23];
    v103 = v0[22];
    v105 = v0[21];
    v107 = v0[18];
    v109 = v0[15];
    v111 = v0[13];
    v113 = v0[12];
    v115 = v0[11];
    v118 = v0[10];

    v46 = v0[1];
    v47 = *MEMORY[0x277D85DE8];
LABEL_17:

    return v46();
  }

  v18 = v0[24];
  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[6];
  sub_236E57708(v1, v19, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  v22 = sub_236E820D4();
  sub_236E57598(v19, v20, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  sub_236E57598(v21, v18, type metadata accessor for AssetPack);
  v23 = sub_236E81D84();
  v24 = os_log_type_enabled(v23, v22);
  v25 = v0[24];
  v26 = v0[11];
  if (v24)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v120[0] = v28;
    *v27 = 136446466;
    v29 = AssetPackManager.DownloadStatusUpdate.description.getter();
    v31 = v30;
    sub_236E56DCC(v26, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
    v32 = sub_236E381CC(v29, v31, v120);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v33 = *v25;
    v34 = v25[1];

    sub_236E56DCC(v25, type metadata accessor for AssetPack);
    v35 = sub_236E381CC(v33, v34, v120);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_236E28000, v23, v22, "The asset-pack manager received the status update “%{public}s” for the asset pack with the ID “%{public}s”.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v28, -1, -1);
    MEMORY[0x2383C0E50](v27, -1, -1);
  }

  else
  {

    sub_236E56DCC(v25, type metadata accessor for AssetPack);
    sub_236E56DCC(v26, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  }

  v48 = v0[8];
  sub_236E57598(v0[12], v0[10], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v49 = v0[20];
    v50 = v0[21];
    v52 = v0[18];
    v51 = v0[19];
    v53 = v0[16];
    v54 = v0[17];
    v55 = v0[12];
    v56 = v0[10];
    v57 = *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48));
    sub_236E56DCC(v56, type metadata accessor for AssetPack);
    swift_willThrow();
    sub_236E56DCC(v55, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
    (*(v54 + 8))(v52, v53);
    (*(v49 + 8))(v50, v51);
    v58 = v57;
    v59 = v0[36];
    v60 = v0[22];
    v61 = v0[6];
    v62 = sub_236E820F4();
    sub_236E57598(v61, v60, type metadata accessor for AssetPack);
    v63 = v57;
    v64 = sub_236E81D84();

    v65 = os_log_type_enabled(v64, v62);
    v66 = v0[22];
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v120[0] = v69;
      *v67 = 136446466;
      v70 = AssetPack.description.getter();
      v72 = v71;
      sub_236E56DCC(v66, type metadata accessor for AssetPack);
      v73 = sub_236E381CC(v70, v72, v120);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2114;
      v74 = v58;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v75;
      *v68 = v75;
      _os_log_impl(&dword_236E28000, v64, v62, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v67, 0x16u);
      sub_236E38DBC(v68, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x2383C0E50](v69, -1, -1);
      MEMORY[0x2383C0E50](v67, -1, -1);
    }

    else
    {

      sub_236E56DCC(v66, type metadata accessor for AssetPack);
    }

    v85 = v0[34];
    v86 = v0[35];
    v88 = v0[32];
    v87 = v0[33];
    v89 = v0[30];
    v90 = v0[31];
    v92 = v0[28];
    v91 = v0[29];
    v95 = v0[27];
    v96 = v0[26];
    v98 = v0[25];
    v100 = v0[24];
    v102 = v0[23];
    v104 = v0[22];
    v106 = v0[21];
    v108 = v0[18];
    v110 = v0[15];
    v112 = v0[13];
    v114 = v0[12];
    v116 = v0[11];
    v119 = v0[10];
    swift_willThrow();

    v46 = v0[1];
    v93 = *MEMORY[0x277D85DE8];
    goto LABEL_17;
  }

  v76 = v0[10];
  sub_236E56DCC(v0[12], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  sub_236E56DCC(v76, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  v77 = v0[46];
  v78 = v0[7];
  sub_236E58664(&qword_27DE87E60, &qword_27DE87E40, &qword_236E84CE8);
  v79 = *(MEMORY[0x277D856D8] + 4);
  v80 = swift_task_alloc();
  v0[47] = v80;
  *v80 = v0;
  v80[1] = sub_236E42E68;
  v81 = v0[18];
  v82 = v0[16];
  v83 = v0[13];
  v84 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200310](v83, v78, v77);
}

uint64_t sub_236E439C4()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[22];
  v4 = v0[6];
  v5 = sub_236E820F4();
  sub_236E57598(v4, v3, type metadata accessor for AssetPack);
  v6 = v1;
  v7 = sub_236E81D84();

  v8 = os_log_type_enabled(v7, v5);
  v9 = v0[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v10 = 136446466;
    v13 = AssetPack.description.getter();
    v15 = v14;
    sub_236E56DCC(v9, type metadata accessor for AssetPack);
    v16 = sub_236E381CC(v13, v15, v43);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_236E28000, v7, v5, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v10, 0x16u);
    sub_236E38DBC(v11, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  else
  {

    sub_236E56DCC(v9, type metadata accessor for AssetPack);
  }

  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[30];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[18];
  v38 = v0[15];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  swift_willThrow();

  v27 = v0[1];
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

uint64_t sub_236E43D30()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[43];
  v2 = v0[36];
  v3 = v0[22];
  v4 = v0[6];
  v5 = sub_236E820F4();
  sub_236E57598(v4, v3, type metadata accessor for AssetPack);
  v6 = v1;
  v7 = sub_236E81D84();

  v8 = os_log_type_enabled(v7, v5);
  v9 = v0[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v10 = 136446466;
    v13 = AssetPack.description.getter();
    v15 = v14;
    sub_236E56DCC(v9, type metadata accessor for AssetPack);
    v16 = sub_236E381CC(v13, v15, v43);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_236E28000, v7, v5, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v10, 0x16u);
    sub_236E38DBC(v11, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  else
  {

    sub_236E56DCC(v9, type metadata accessor for AssetPack);
  }

  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[30];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[18];
  v38 = v0[15];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  swift_willThrow();

  v27 = v0[1];
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

uint64_t sub_236E4409C()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[45];
  v2 = v0[36];
  v3 = v0[22];
  v4 = v0[6];
  v5 = sub_236E820F4();
  sub_236E57598(v4, v3, type metadata accessor for AssetPack);
  v6 = v1;
  v7 = sub_236E81D84();

  v8 = os_log_type_enabled(v7, v5);
  v9 = v0[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43[0] = v12;
    *v10 = 136446466;
    v13 = AssetPack.description.getter();
    v15 = v14;
    sub_236E56DCC(v9, type metadata accessor for AssetPack);
    v16 = sub_236E381CC(v13, v15, v43);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_236E28000, v7, v5, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v10, 0x16u);
    sub_236E38DBC(v11, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  else
  {

    sub_236E56DCC(v9, type metadata accessor for AssetPack);
  }

  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[30];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];
  v37 = v0[18];
  v38 = v0[15];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  swift_willThrow();

  v27 = v0[1];
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

uint64_t sub_236E44408(id *a1, void *a2)
{
  v3 = [*a1 identifier];
  v4 = sub_236E81E94();
  v6 = v5;

  if (v4 == *a2 && v6 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_236E824E4();
  }

  return v8 & 1;
}

uint64_t sub_236E444A4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1[10] = v0;
  v2 = type metadata accessor for ManagedBackgroundAssetsError();
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v4 = sub_236E81CF4();
  v1[13] = v4;
  v5 = *(v4 - 8);
  v1[14] = v5;
  v6 = *(v5 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = sub_236E81C94();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_236E44704, v0, 0);
}

uint64_t sub_236E44704()
{
  v13 = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  v0[35] = __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "Check for update", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = sub_236E81D84();
  v6 = sub_236E82114();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_236E28000, v5, v6, "Refreshing the manifest…", v7, 2u);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v8 = v0[10];

  v9 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache);
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_236E448FC;
  v11 = *MEMORY[0x277D85DE8];

  return sub_236E5A46C();
}

uint64_t sub_236E448FC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_236E45D8C;
  }

  else
  {
    v6 = sub_236E44A54;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E44A54()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[35];
  v2 = sub_236E81D84();
  v3 = sub_236E82114();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v2, v3, "Checking for asset-pack updates…", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = MEMORY[0x277D84FA0];
  v0[6] = MEMORY[0x277D84FA0];
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_236E44B94;
  v7 = v0[10];
  v8 = *MEMORY[0x277D85DE8];

  return sub_236E3B30C();
}

uint64_t sub_236E44B94(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v7 = *(v3 + 80);
  if (v1)
  {
    v8 = sub_236E45FF8;
  }

  else
  {
    v8 = sub_236E44CF4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_236E44CF4()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 112);
    *(v0 + 336) = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper;
    v5 = *(v3 + 80);
    *(v0 + 432) = v5;
    *(v0 + 344) = 0;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v6 = *(v0 + 272);
    v7 = *(v0 + 216);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v3 + 16);
    *(v0 + 352) = v10;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v1 + ((v5 + 32) & ~v5), v7);
    sub_236E81C84();
    v11 = sub_236E81CA4();
    v13 = v12;
    *(v0 + 368) = v12;
    v14 = *(v4 + 8);
    *(v0 + 376) = v14;
    *(v0 + 384) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v8, v9);
    v15 = swift_task_alloc();
    *(v0 + 392) = v15;
    *v15 = v0;
    v15[1] = sub_236E44FD8;
    v16 = *(v0 + 208);
    v17 = *(v0 + 80);
    v18 = *MEMORY[0x277D85DE8];

    return sub_236E3D890(v16, v11, v13);
  }

  else
  {

    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 232);
    v25 = *(v0 + 240);
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    v29 = *(v0 + 184);
    v28 = *(v0 + 192);
    v34 = *(v0 + 176);
    v35 = *(v0 + 168);
    v36 = *(v0 + 160);
    v37 = *(v0 + 152);
    v38 = *(v0 + 144);
    v39 = *(v0 + 136);
    v40 = *(v0 + 128);
    v41 = *(v0 + 120);
    v42 = *(v0 + 96);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x277D85DE8];
    v32 = MEMORY[0x277D84FA0];
    v33 = MEMORY[0x277D84FA0];

    return v30(v32, v33);
  }
}

uint64_t sub_236E44FD8()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 392);
  v12 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_236E46264;
  }

  else
  {
    v7 = *(v2 + 368);
    v8 = *(v2 + 80);

    v9 = *MEMORY[0x277D85DE8];
    v6 = sub_236E4514C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_236E4514C()
{
  v157 = v0;
  v156[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  v3 = sub_236E81C74();
  v4 = *(v2 + 24);
  if ((v4 & 0x8000000000000000) == 0 && v3 == v4)
  {
    v5 = *(v0 + 280);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = sub_236E820D4();
    sub_236E57598(v6, v7, type metadata accessor for AssetPack);
    v9 = sub_236E81D84();
    v10 = os_log_type_enabled(v9, v8);
    v11 = *(v0 + 272);
    v12 = *(v0 + 216);
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = (*(v0 + 224) + 8);
    if (v10)
    {
      logb = *(v0 + 216);
      v16 = swift_slowAlloc();
      v148 = v14;
      v17 = swift_slowAlloc();
      v156[0] = v17;
      *v16 = 136315138;
      v19 = *v13;
      v18 = v13[1];

      sub_236E56DCC(v13, type metadata accessor for AssetPack);
      v20 = sub_236E381CC(v19, v18, v156);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_236E28000, v9, v8, "The asset pack with the ID “%s” is already up to date.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x2383C0E50](v17, -1, -1);
      MEMORY[0x2383C0E50](v16, -1, -1);

      sub_236E56DCC(v148, type metadata accessor for AssetPack);
      (*v15)(v11, logb);
    }

    else
    {

      sub_236E56DCC(v13, type metadata accessor for AssetPack);
      sub_236E56DCC(v14, type metadata accessor for AssetPack);
      (*v15)(v11, v12);
    }

    goto LABEL_26;
  }

  v21 = *(v0 + 272);
  v22 = sub_236E81C74();
  v24 = *(v0 + 352);
  v23 = *(v0 + 360);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = v4 < 1 || v22 >= v4;
  v28 = *(v0 + 208);
  v29 = *(v0 + 216);
  if (!v27)
  {
    v46 = *(v0 + 264);
    v47 = *(v0 + 184);
    sub_236E57598(*(v0 + 208), *(v0 + 192), type metadata accessor for AssetPack);
    v24(v46, v26, v29);
    sub_236E57598(v28, v47, type metadata accessor for AssetPack);
    v48 = sub_236E81D84();
    v49 = sub_236E82114();
    v50 = os_log_type_enabled(v48, v49);
    v33 = *(v0 + 264);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v36 = *(v0 + 184);
    v37 = *(v0 + 192);
    if (v50)
    {
      log = v48;
      v38 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v156[0] = v149;
      *v38 = 136446722;
      v146 = v35;
      v52 = *v37;
      v51 = v37[1];

      sub_236E56DCC(v37, type metadata accessor for AssetPack);
      v53 = sub_236E381CC(v52, v51, v156);

      *(v38 + 4) = v53;
      *(v38 + 12) = 2048;
      v54 = sub_236E81C74();
      v43 = *(v34 + 8);
      v43(v33, v146);
      *(v38 + 14) = v54;
      *(v38 + 22) = 2048;
      v55 = *(v36 + 24);
      sub_236E56DCC(v36, type metadata accessor for AssetPack);
      *(v38 + 24) = v55;
      v45 = "The asset pack with the ID “%{public}s” will be updated from version %lu to %ld.";
      goto LABEL_14;
    }

LABEL_15:
    sub_236E56DCC(v36, type metadata accessor for AssetPack);
    v43 = *(v34 + 8);
    v43(v33, v35);

    sub_236E56DCC(v37, type metadata accessor for AssetPack);
    goto LABEL_16;
  }

  v30 = *(v0 + 256);
  v31 = *(v0 + 168);
  sub_236E57598(*(v0 + 208), *(v0 + 176), type metadata accessor for AssetPack);
  v24(v30, v26, v29);
  sub_236E57598(v28, v31, type metadata accessor for AssetPack);
  v48 = sub_236E81D84();
  v49 = sub_236E82114();
  v32 = os_log_type_enabled(v48, v49);
  v33 = *(v0 + 256);
  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v36 = *(v0 + 168);
  v37 = *(v0 + 176);
  if (!v32)
  {
    goto LABEL_15;
  }

  log = v48;
  v38 = swift_slowAlloc();
  v149 = swift_slowAlloc();
  v156[0] = v149;
  *v38 = 136446722;
  v145 = v35;
  v40 = *v37;
  v39 = v37[1];

  sub_236E56DCC(v37, type metadata accessor for AssetPack);
  v41 = sub_236E381CC(v40, v39, v156);

  *(v38 + 4) = v41;
  *(v38 + 12) = 2048;
  v42 = sub_236E81C74();
  v43 = *(v34 + 8);
  v43(v33, v145);
  *(v38 + 14) = v42;
  *(v38 + 22) = 2048;
  v44 = *(v36 + 24);
  sub_236E56DCC(v36, type metadata accessor for AssetPack);
  *(v38 + 24) = v44;
  v45 = "The asset pack with the ID “%{public}s” will be rolled back from version %lu to %ld.";
LABEL_14:
  _os_log_impl(&dword_236E28000, log, v49, v45, v38, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v149);
  MEMORY[0x2383C0E50](v149, -1, -1);
  MEMORY[0x2383C0E50](v38, -1, -1);

LABEL_16:
  v56 = *(v0 + 208);
  v57 = AssetPack.download(for:)(0, 1);
  v58 = [objc_opt_self() sharedManager];
  *(v0 + 72) = 0;
  v59 = [v58 startForegroundDownload:v57 error:v0 + 72];

  v60 = *(v0 + 72);
  v61 = *(v0 + 280);
  v62 = *(v0 + 208);
  if (v59)
  {
    sub_236E57598(*(v0 + 208), *(v0 + 160), type metadata accessor for AssetPack);
    v63 = v60;
    v64 = sub_236E81D84();
    v65 = sub_236E82114();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 160);
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v156[0] = v69;
      *v68 = 136446210;
      v70 = v57;
      v71 = *v67;
      v72 = v67[1];

      sub_236E56DCC(v67, type metadata accessor for AssetPack);
      v73 = sub_236E381CC(v71, v72, v156);
      v57 = v70;

      *(v68 + 4) = v73;
      _os_log_impl(&dword_236E28000, v64, v65, "An update to the asset pack with the ID “%{public}s” was scheduled.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x2383C0E50](v69, -1, -1);
      MEMORY[0x2383C0E50](v68, -1, -1);
    }

    else
    {

      sub_236E56DCC(v67, type metadata accessor for AssetPack);
    }

    v93 = *(v0 + 272);
    v94 = *(v0 + 216);
    v95 = *(v0 + 208);
    v96 = *(v0 + 224) + 8;
    v97 = *v95;
    v98 = v95[1];

    sub_236E53B8C((v0 + 32), v97, v98);

    v99 = *(v0 + 40);

    sub_236E56DCC(v95, type metadata accessor for AssetPack);
    v100 = v93;
    v101 = v94;
  }

  else
  {
    v74 = *(v0 + 152);
    v75 = v60;
    v76 = sub_236E81994();

    swift_willThrow();
    v77 = sub_236E820F4();
    sub_236E57598(v62, v74, type metadata accessor for AssetPack);
    v78 = v76;
    v79 = sub_236E81D84();

    v80 = os_log_type_enabled(v79, v77);
    v81 = *(v0 + 272);
    v82 = *(v0 + 224);
    v83 = *(v0 + 208);
    v150 = v83;
    loga = *(v0 + 216);
    v84 = *(v0 + 152);
    if (v80)
    {
      v141 = v57;
      v85 = swift_slowAlloc();
      v143 = v81;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v156[0] = v87;
      *v85 = 136446466;
      v139 = v43;
      v89 = *v84;
      v88 = v84[1];

      sub_236E56DCC(v84, type metadata accessor for AssetPack);
      v90 = sub_236E381CC(v89, v88, v156);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2114;
      v91 = v76;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v92;
      *v86 = v92;
      _os_log_impl(&dword_236E28000, v79, v77, "An update to the asset pack with the ID “%{public}s” couldn’t be scheduled: %{public}@", v85, 0x16u);
      sub_236E38DBC(v86, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v86, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x2383C0E50](v87, -1, -1);
      MEMORY[0x2383C0E50](v85, -1, -1);

      sub_236E56DCC(v150, type metadata accessor for AssetPack);
      v139(v143, loga);
      goto LABEL_26;
    }

    sub_236E56DCC(v84, type metadata accessor for AssetPack);
    sub_236E56DCC(v150, type metadata accessor for AssetPack);
    v100 = v81;
    v101 = loga;
  }

  v43(v100, v101);
LABEL_26:
  v102 = *(v0 + 344) + 1;
  if (v102 == *(v0 + 328))
  {
    v103 = *(v0 + 312);

    v134 = *(v0 + 56);
    v135 = *(v0 + 48);
    v105 = *(v0 + 264);
    v104 = *(v0 + 272);
    v106 = *(v0 + 248);
    v107 = *(v0 + 256);
    v109 = *(v0 + 232);
    v108 = *(v0 + 240);
    v111 = *(v0 + 200);
    v110 = *(v0 + 208);
    v113 = *(v0 + 184);
    v112 = *(v0 + 192);
    v136 = *(v0 + 176);
    v137 = *(v0 + 168);
    v138 = *(v0 + 160);
    v140 = *(v0 + 152);
    v142 = *(v0 + 144);
    v144 = *(v0 + 136);
    v147 = *(v0 + 128);
    v151 = *(v0 + 120);
    logc = *(v0 + 96);

    v114 = *(v0 + 8);
    v115 = *MEMORY[0x277D85DE8];

    return v114(v135, v134);
  }

  else
  {
    *(v0 + 344) = v102;
    v117 = *(v0 + 312);
    if (v102 >= *(v117 + 16))
    {
      __break(1u);
    }

    v118 = *(v0 + 272);
    v119 = *(v0 + 216);
    v120 = *(v0 + 224);
    v121 = *(v0 + 144);
    v122 = *(v0 + 104);
    v123 = *(v0 + 112);
    v124 = *(v120 + 16);
    v120 += 16;
    v125 = v117 + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v120 + 56) * v102;
    *(v0 + 352) = v124;
    *(v0 + 360) = v120 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v124(v118, v125, v119);
    sub_236E81C84();
    v126 = sub_236E81CA4();
    v128 = v127;
    *(v0 + 368) = v127;
    v129 = *(v123 + 8);
    *(v0 + 376) = v129;
    *(v0 + 384) = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v129(v121, v122);
    v130 = swift_task_alloc();
    *(v0 + 392) = v130;
    *v130 = v0;
    v130[1] = sub_236E44FD8;
    v131 = *(v0 + 208);
    v132 = *(v0 + 80);
    v133 = *MEMORY[0x277D85DE8];

    return sub_236E3D890(v131, v126, v128);
  }
}

uint64_t sub_236E45D8C()
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = v0[37];
  v2 = v0[35];
  v3 = sub_236E820F4();
  v4 = v1;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_236E28000, v5, v3, "Checking for updates failed: %{public}@", v6, 0xCu);
    sub_236E38DBC(v7, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v13 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[12];

  swift_willThrow();

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_236E45FF8()
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = v0[40];
  v2 = v0[35];
  v3 = sub_236E820F4();
  v4 = v1;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_236E28000, v5, v3, "Checking for updates failed: %{public}@", v6, 0xCu);
    sub_236E38DBC(v7, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v13 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[12];

  swift_willThrow();

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_236E46264()
{
  v96 = v0;
  v95[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  *(v0 + 64) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v0 + 312);
    v9 = *(v0 + 272);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);

    (*(v11 + 8))(v9, v10);
    v12 = *(v0 + 56);

    v13 = *(v0 + 48);

    sub_236E56DCC(v7, type metadata accessor for ManagedBackgroundAssetsError);
LABEL_10:

    v32 = *(v0 + 400);
    v33 = *(v0 + 280);
    v34 = sub_236E820F4();
    v35 = v32;
    v36 = sub_236E81D84();

    if (os_log_type_enabled(v36, v34))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = v32;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_236E28000, v36, v34, "Checking for updates failed: %{public}@", v37, 0xCu);
      sub_236E38DBC(v38, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v38, -1, -1);
      MEMORY[0x2383C0E50](v37, -1, -1);
    }

    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 248);
    v44 = *(v0 + 256);
    v46 = *(v0 + 232);
    v45 = *(v0 + 240);
    v47 = *(v0 + 208);
    v79 = *(v0 + 200);
    v80 = *(v0 + 192);
    v81 = *(v0 + 184);
    v82 = *(v0 + 176);
    v83 = *(v0 + 168);
    v84 = *(v0 + 160);
    v85 = *(v0 + 152);
    v86 = *(v0 + 144);
    v87 = *(v0 + 136);
    v88 = *(v0 + 128);
    v90 = *(v0 + 120);
    v92 = *(v0 + 96);

    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *MEMORY[0x277D85DE8];

    return v48();
  }

  v15 = *(v0 + 376);
  v14 = *(v0 + 384);
  v16 = *(v0 + 272);
  v17 = *(v0 + 136);
  v18 = *(v0 + 104);
  v20 = *v7;
  v19 = v7[1];
  sub_236E81C84();
  v21 = sub_236E81CA4();
  v23 = v22;
  v15(v17, v18);
  if (v21 == v20 && v23 == v19)
  {
  }

  else
  {
    v25 = sub_236E824E4();

    if ((v25 & 1) == 0)
    {
LABEL_9:
      v26 = *(v0 + 312);
      v27 = *(v0 + 272);
      v28 = *(v0 + 216);
      v29 = *(v0 + 224);

      (*(v29 + 8))(v27, v28);
      v30 = *(v0 + 56);

      v31 = *(v0 + 48);

      goto LABEL_10;
    }
  }

  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 272);
  v54 = *(v0 + 280);
  v55 = *(v0 + 248);
  v56 = *(v0 + 216);

  v52(v55, v53, v56);
  v57 = sub_236E81D84();
  v58 = sub_236E82114();
  if (os_log_type_enabled(v57, v58))
  {
    v91 = *(v0 + 376);
    v93 = *(v0 + 384);
    v59 = *(v0 + 248);
    v60 = *(v0 + 224);
    v94 = *(v0 + 216);
    v61 = *(v0 + 128);
    v89 = *(v0 + 104);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95[0] = v63;
    *v62 = 136446210;
    sub_236E81C84();
    v64 = sub_236E81CA4();
    v66 = v65;
    v91(v61, v89);
    v67 = *(v60 + 8);
    v67(v59, v94);
    v68 = sub_236E381CC(v64, v66, v95);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_236E28000, v57, v58, "There’s no asset pack with the ID “%{public}s” in the latest version of the manifest; removing the downloaded asset pack…", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x2383C0E50](v63, -1, -1);
    MEMORY[0x2383C0E50](v62, -1, -1);
  }

  else
  {
    v69 = *(v0 + 248);
    v70 = *(v0 + 216);
    v71 = *(v0 + 224);

    v67 = *(v71 + 8);
    v67(v69, v70);
  }

  *(v0 + 408) = v67;
  v72 = *(v0 + 272);
  v73 = *(v0 + 120);
  v74 = *(*(v0 + 80) + *(v0 + 336));
  sub_236E81C84();
  v75 = *(MEMORY[0x277D25C08] + 4);
  v76 = swift_task_alloc();
  *(v0 + 416) = v76;
  *v76 = v0;
  v76[1] = sub_236E4687C;
  v77 = *(v0 + 120);
  v78 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282184AC0](v77);
}

uint64_t sub_236E4687C()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[48];
  v6 = v2[47];
  v7 = v2[15];
  v8 = v2[13];
  v9 = v2[10];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_236E46EF8;
  }

  else
  {
    v10 = sub_236E46A2C;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_236E46A2C()
{
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 280);
  (*(v0 + 352))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
  v3 = sub_236E81D84();
  v4 = sub_236E82114();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  if (v5)
  {
    v75 = *(v0 + 384);
    v7 = *(v0 + 240);
    v70 = *(v0 + 376);
    v72 = *(v0 + 216);
    v8 = *(v0 + 128);
    v66 = *(v0 + 104);
    v68 = *(v0 + 224) + 8;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v78[0] = v10;
    *v9 = 136446210;
    sub_236E81C84();
    v11 = sub_236E81CA4();
    v13 = v12;
    v70(v8, v66);
    v6(v7, v72);
    v14 = sub_236E381CC(v11, v13, v78);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_236E28000, v3, v4, "The asset pack with the ID “%{public}s” was removed.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);

    v6(v15, v16);
  }

  v18 = *(v0 + 376);
  v19 = *(v0 + 384);
  v20 = *(v0 + 272);
  v73 = *(v0 + 216);
  v76 = *(v0 + 408);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 224) + 8;
  sub_236E81C84();
  v24 = sub_236E81CA4();
  v26 = v25;
  v18(v21, v22);
  sub_236E53B8C((v0 + 16), v24, v26);
  v27 = *(v0 + 24);

  v76(v20, v73);

  v28 = *(v0 + 344) + 1;
  if (v28 == *(v0 + 328))
  {
    v29 = *(v0 + 312);

    v60 = *(v0 + 56);
    v61 = *(v0 + 48);
    v31 = *(v0 + 264);
    v30 = *(v0 + 272);
    v32 = *(v0 + 248);
    v33 = *(v0 + 256);
    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    v62 = *(v0 + 176);
    v63 = *(v0 + 168);
    v64 = *(v0 + 160);
    v65 = *(v0 + 152);
    v67 = *(v0 + 144);
    v69 = *(v0 + 136);
    v71 = *(v0 + 128);
    v74 = *(v0 + 120);
    v77 = *(v0 + 96);

    v40 = *(v0 + 8);
    v41 = *MEMORY[0x277D85DE8];

    return v40(v61, v60);
  }

  else
  {
    *(v0 + 344) = v28;
    v43 = *(v0 + 312);
    if (v28 >= *(v43 + 16))
    {
      __break(1u);
    }

    v44 = *(v0 + 272);
    v45 = *(v0 + 216);
    v46 = *(v0 + 224);
    v47 = *(v0 + 144);
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);
    v50 = *(v46 + 16);
    v46 += 16;
    v51 = v43 + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v46 + 56) * v28;
    *(v0 + 352) = v50;
    *(v0 + 360) = v46 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v44, v51, v45);
    sub_236E81C84();
    v52 = sub_236E81CA4();
    v54 = v53;
    *(v0 + 368) = v53;
    v55 = *(v49 + 8);
    *(v0 + 376) = v55;
    *(v0 + 384) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v47, v48);
    v56 = swift_task_alloc();
    *(v0 + 392) = v56;
    *v56 = v0;
    v56[1] = sub_236E44FD8;
    v57 = *(v0 + 208);
    v58 = *(v0 + 80);
    v59 = *MEMORY[0x277D85DE8];

    return sub_236E3D890(v57, v52, v54);
  }
}

uint64_t sub_236E46EF8()
{
  v82 = v0;
  v81[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = sub_236E820F4();
  v3(v6, v4, v7);
  v9 = v1;
  v10 = sub_236E81D84();

  v11 = os_log_type_enabled(v10, v8);
  v12 = *(v0 + 424);
  v13 = *(v0 + 408);
  if (v11)
  {
    v71 = *(v0 + 376);
    v73 = *(v0 + 384);
    v79 = *(v0 + 272);
    v14 = *(v0 + 232);
    v15 = *(v0 + 128);
    v65 = *(v0 + 104);
    v67 = *(v0 + 224) + 8;
    v69 = *(v0 + 216);
    v77 = *(v0 + 424);
    v16 = *(v0 + 408);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75 = v8;
    v19 = swift_slowAlloc();
    v81[0] = v19;
    *v17 = 136446466;
    sub_236E81C84();
    v20 = sub_236E81CA4();
    v22 = v21;
    v71(v15, v65);
    v16(v14, v69);
    v23 = sub_236E381CC(v20, v22, v81);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2114;
    v24 = v77;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    *v18 = v25;
    _os_log_impl(&dword_236E28000, v10, v75, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v17, 0x16u);
    sub_236E38DBC(v18, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2383C0E50](v19, -1, -1);
    MEMORY[0x2383C0E50](v17, -1, -1);

    v16(v79, v69);
  }

  else
  {
    v26 = *(v0 + 272);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);

    v13(v27, v29);
    v13(v26, v29);
  }

  v30 = *(v0 + 344) + 1;
  if (v30 == *(v0 + 328))
  {
    v31 = *(v0 + 312);

    v62 = *(v0 + 56);
    v63 = *(v0 + 48);
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    v64 = *(v0 + 176);
    v66 = *(v0 + 168);
    v68 = *(v0 + 160);
    v70 = *(v0 + 152);
    v72 = *(v0 + 144);
    v74 = *(v0 + 136);
    v76 = *(v0 + 128);
    v78 = *(v0 + 120);
    v80 = *(v0 + 96);

    v42 = *(v0 + 8);
    v43 = *MEMORY[0x277D85DE8];

    return v42(v63, v62);
  }

  else
  {
    *(v0 + 344) = v30;
    v45 = *(v0 + 312);
    if (v30 >= *(v45 + 16))
    {
      __break(1u);
    }

    v46 = *(v0 + 272);
    v47 = *(v0 + 216);
    v48 = *(v0 + 224);
    v49 = *(v0 + 144);
    v50 = *(v0 + 104);
    v51 = *(v0 + 112);
    v52 = *(v48 + 16);
    v48 += 16;
    v53 = v45 + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v48 + 56) * v30;
    *(v0 + 352) = v52;
    *(v0 + 360) = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52(v46, v53, v47);
    sub_236E81C84();
    v54 = sub_236E81CA4();
    v56 = v55;
    *(v0 + 368) = v55;
    v57 = *(v51 + 8);
    *(v0 + 376) = v57;
    *(v0 + 384) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v49, v50);
    v58 = swift_task_alloc();
    *(v0 + 392) = v58;
    *v58 = v0;
    v58[1] = sub_236E44FD8;
    v59 = *(v0 + 208);
    v60 = *(v0 + 80);
    v61 = *MEMORY[0x277D85DE8];

    return sub_236E3D890(v59, v54, v56);
  }
}

uint64_t sub_236E4741C(uint64_t a1, NSObject *a2)
{
  v165 = a2;
  v182 = sub_236E81CF4();
  v180 = *(v182 - 8);
  v3 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = v149 - v7;
  v179 = type metadata accessor for AssetPack(0);
  v177 = *(v179 - 8);
  v8 = *(v177 + 8);
  v9 = MEMORY[0x28223BE20](v179);
  v154 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v162 = (v149 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v149 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (v149 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v159 = v149 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v158 = (v149 - v22);
  MEMORY[0x28223BE20](v21);
  v169 = v149 - v23;
  v24 = sub_236E81C94();
  v178 = *(v24 - 8);
  v25 = *(v178 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v166 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v153 = v149 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v149 - v31;
  MEMORY[0x28223BE20](v30);
  v175 = v149 - v33;
  v34 = *a1;
  v173 = *(a1 + 8);
  v35 = *(a1 + 24);
  v172 = *(a1 + 16);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v36 = sub_236E81DA4();
  v37 = __swift_project_value_buffer(v36, qword_27DE87DC8);
  v38 = sub_236E820E4();

  v170 = v37;
  v39 = sub_236E81D84();

  v40 = os_log_type_enabled(v39, v38);
  v161 = v15;
  v160 = v18;
  v157 = v32;
  v174 = v34;
  v171 = v35;
  if (v40)
  {
    v41 = v24;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v190 = v43;
    *v42 = 136446466;
    v186 = 0;
    v187 = 0xE000000000000000;

    sub_236E82264();

    v186 = 0xD000000000000024;
    v187 = 0x8000000236E89E50;
    sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack);
    v44 = sub_236E820A4();
    MEMORY[0x2383BFD30](v44);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v45 = sub_236E381CC(v186, v187, &v190);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    v186 = v165;
    type metadata accessor for BAContentRequest(0);
    v46 = sub_236E81ED4();
    v48 = sub_236E381CC(v46, v47, &v190);

    *(v42 + 14) = v48;
    _os_log_impl(&dword_236E28000, v39, v38, "Update downloads for: %{public}s content request: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v43, -1, -1);
    v49 = v42;
    v24 = v41;
    MEMORY[0x2383C0E50](v49, -1, -1);
  }

  v50 = v175;
  v51 = v178;
  if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
  {
    sub_236E38944(MEMORY[0x277D84F90]);
    v52 = v148;
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  v190 = v52;
  v53 = v184;
  v54 = *(v183 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v55 = *(v183 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v56 = *(v183 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v57 = *(v183 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v58 = *(v183 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  v59 = sub_236E81BB4();
  v155 = v53;
  if (v53 || (v61 = *(v59 + 16)) == 0)
  {

    return v52;
  }

  v64 = *(v51 + 16);
  v63 = v51 + 16;
  v62 = v64;
  v65 = (*(v63 + 64) + 32) & ~*(v63 + 64);
  v149[1] = v59;
  v66 = v59 + v65;
  v168 = *(v63 + 56);
  v180 += 8;
  v167 = (v177 + 48);
  *&v60 = 136315138;
  v156 = v60;
  *&v60 = 136446722;
  v152 = v60;
  *&v60 = 136446466;
  v150 = v60;
  v177 = v64;
  v178 = v63;
  v164 = v24;
  v176 = (v63 - 8);
  do
  {
    v183 = v66;
    v184 = v61;
    v62(v50);
    v186 = v174;
    LOBYTE(v187) = v173;
    v188 = v172;
    v189 = v171;
    v68 = v181;
    sub_236E81C84();
    v69 = sub_236E81CA4();
    v70 = v50;
    v72 = v71;
    v73 = *v180;
    (*v180)(v68, v182);
    v74 = v185;
    sub_236E70DE0(v69, v72, v185);

    if ((*v167)(v74, 1, v179) == 1)
    {
      sub_236E38DBC(v185, &unk_27DE87E00, &unk_236E84CA0);
      v75 = v62;
      v76 = v166;
      v75(v166, v70, v24);
      v77 = sub_236E81D84();
      v78 = sub_236E82114();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = v76;
        v80 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v186 = v163;
        *v80 = v156;
        v81 = v181;
        sub_236E81C84();
        v82 = sub_236E81CA4();
        v84 = v83;
        v73(v81, v182);
        v85 = *v176;
        (*v176)(v79, v24);
        v86 = sub_236E381CC(v82, v84, &v186);

        *(v80 + 4) = v86;
        _os_log_impl(&dword_236E28000, v77, v78, "The asset pack with the ID “%s” is obsolete and therefore can’t be updated.", v80, 0xCu);
        v87 = v163;
        __swift_destroy_boxed_opaque_existential_0(v163);
        MEMORY[0x2383C0E50](v87, -1, -1);
        v88 = v80;
        v50 = v175;
        MEMORY[0x2383C0E50](v88, -1, -1);

        v85(v50, v24);
      }

      else
      {
        v50 = v70;

        v67 = *v176;
        (*v176)(v76, v24);
        v67(v70, v24);
      }
    }

    else
    {
      v89 = v169;
      sub_236E57708(v185, v169, type metadata accessor for AssetPack);
      v90 = sub_236E81C74();
      v91 = *(v89 + 24);
      if (v91 >= 1 && v90 < v91)
      {
        v92 = v89;
        v93 = v89;
        v94 = v158;
        sub_236E57598(v92, v158, type metadata accessor for AssetPack);
        v95 = v157;
        (v62)(v157, v70, v24);
        v96 = v159;
        sub_236E57598(v93, v159, type metadata accessor for AssetPack);
        v97 = sub_236E81D84();
        v98 = sub_236E82114();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v186 = v163;
          *v99 = v152;
          v100 = *v94;
          v101 = v94[1];

          sub_236E56DCC(v94, type metadata accessor for AssetPack);
          v102 = sub_236E381CC(v100, v101, &v186);

          *(v99 + 4) = v102;
          *(v99 + 12) = 2048;
          v103 = sub_236E81C74();
          v104 = v95;
          v105 = *v176;
          (*v176)(v104, v164);
          *(v99 + 14) = v103;
          *(v99 + 22) = 2048;
          v106 = *(v96 + 24);
          sub_236E56DCC(v96, type metadata accessor for AssetPack);
          *(v99 + 24) = v106;
          _os_log_impl(&dword_236E28000, v97, v98, "The asset pack with the ID “%{public}s” will be updated from version %lu to %ld.", v99, 0x20u);
          v107 = v163;
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x2383C0E50](v107, -1, -1);
          v108 = v99;
          v24 = v164;
          MEMORY[0x2383C0E50](v108, -1, -1);

          v109 = v105;
        }

        else
        {
          sub_236E56DCC(v96, type metadata accessor for AssetPack);
          v145 = *v176;
          (*v176)(v95, v24);

          v109 = v145;
          sub_236E56DCC(v94, type metadata accessor for AssetPack);
        }

        v142 = v169;
        goto LABEL_27;
      }

      v110 = sub_236E81C74();
      v111 = v162;
      v112 = v161;
      v113 = v160;
      if (v91 < 0 || v91 < v110)
      {
        sub_236E57598(v89, v162, type metadata accessor for AssetPack);
        v127 = v153;
        (v177)(v153, v175, v24);
        v128 = v154;
        sub_236E57598(v89, v154, type metadata accessor for AssetPack);
        v129 = sub_236E81D84();
        v130 = sub_236E82114();
        v163 = v129;
        v131 = os_log_type_enabled(v129, v130);
        v132 = v176;
        if (v131)
        {
          v133 = v127;
          v134 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v186 = v151;
          *v134 = v152;
          v135 = *v111;
          v136 = v111[1];

          sub_236E56DCC(v111, type metadata accessor for AssetPack);
          v137 = sub_236E381CC(v135, v136, &v186);

          *(v134 + 4) = v137;
          *(v134 + 12) = 2048;
          v138 = sub_236E81C74();
          v139 = *v176;
          (*v176)(v133, v164);
          *(v134 + 14) = v138;
          *(v134 + 22) = 2048;
          v140 = *(v128 + 24);
          v141 = v128;
          v109 = v139;
          v142 = v169;
          sub_236E56DCC(v141, type metadata accessor for AssetPack);
          *(v134 + 24) = v140;
          v143 = v163;
          _os_log_impl(&dword_236E28000, v163, v130, "The asset pack with the ID “%{public}s” will be rolled back from version %lu to %ld.", v134, 0x20u);
          v144 = v151;
          __swift_destroy_boxed_opaque_existential_0(v151);
          MEMORY[0x2383C0E50](v144, -1, -1);
          MEMORY[0x2383C0E50](v134, -1, -1);

          v24 = v164;
        }

        else
        {
          sub_236E56DCC(v128, type metadata accessor for AssetPack);
          v109 = *v132;
          v24 = v164;
          (*v132)(v127, v164);

          sub_236E56DCC(v111, type metadata accessor for AssetPack);
          v142 = v169;
        }

LABEL_27:
        v146 = AssetPack.download(for:)(v165, 0);
        sub_236E53944(&v186, v146);

        sub_236E56DCC(v142, type metadata accessor for AssetPack);
        v50 = v175;
        v109(v175, v24);
        goto LABEL_11;
      }

      v114 = sub_236E820D4();
      sub_236E57598(v89, v113, type metadata accessor for AssetPack);
      sub_236E57598(v89, v112, type metadata accessor for AssetPack);
      v115 = sub_236E81D84();
      v116 = os_log_type_enabled(v115, v114);
      v117 = v176;
      if (v116)
      {
        v118 = swift_slowAlloc();
        v119 = v112;
        LODWORD(v163) = v114;
        v120 = v118;
        v121 = swift_slowAlloc();
        v186 = v121;
        *v120 = v150;
        v122 = *v113;
        v123 = v113[1];

        sub_236E56DCC(v113, type metadata accessor for AssetPack);
        v124 = sub_236E381CC(v122, v123, &v186);

        *(v120 + 4) = v124;
        *(v120 + 12) = 2048;
        v125 = *(v119 + 24);
        sub_236E56DCC(v119, type metadata accessor for AssetPack);
        *(v120 + 14) = v125;
        _os_log_impl(&dword_236E28000, v115, v163, "The asset pack with the ID “%{public}s” is already up to date with version %ld.", v120, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v121);
        MEMORY[0x2383C0E50](v121, -1, -1);
        MEMORY[0x2383C0E50](v120, -1, -1);

        v126 = v169;
        v24 = v164;
      }

      else
      {
        sub_236E56DCC(v112, type metadata accessor for AssetPack);

        sub_236E56DCC(v113, type metadata accessor for AssetPack);
        v126 = v89;
      }

      sub_236E56DCC(v126, type metadata accessor for AssetPack);
      v50 = v175;
      (*v117)(v175, v24);
    }

LABEL_11:
    v66 = v183 + v168;
    v61 = v184 - 1;
    v62 = v177;
  }

  while (v184 != 1);

  return v190;
}

uint64_t sub_236E484E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E68, &qword_236E84CF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  __swift_project_value_buffer(v11, qword_27DE87DC8);
  v12 = sub_236E820E4();

  v13 = sub_236E81D84();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v20 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_236E381CC(a1, a2, &v21);
    _os_log_impl(&dword_236E28000, v13, v12, "Status updates for asset pack with ID: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2383C0E50](v16, -1, -1);
    v3 = v20;
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  v17 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_statusUpdates);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v21 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E70, &qword_236E84D10);
  sub_236E58664(&qword_27DE87E78, &qword_27DE87E70, &qword_236E84D10);
  sub_236E82394();
  sub_236E58664(&qword_27DE87E80, &qword_27DE87E68, &qword_236E84CF8);
  sub_236E82074();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_236E487F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E488BC, 0, 0);
}

uint64_t sub_236E488BC()
{
  v1 = v0[5];
  sub_236E57598(v0[2], v0[6], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
  }

  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  sub_236E57708(v0[6], v3, type metadata accessor for AssetPack);
  v6 = *v3;
  v7 = v3[1];

  sub_236E56DCC(v3, type metadata accessor for AssetPack);
  if (v6 == v5 && v7 == v4)
  {
    v11 = 1;
  }

  else
  {
    v9 = v0[3];
    v10 = v0[4];
    v11 = sub_236E824E4();
  }

  v13 = v0[6];
  v12 = v0[7];

  v14 = v0[1];

  return v14(v11 & 1);
}

uint64_t sub_236E48A4C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E48AE0, 0, 0);
}

uint64_t sub_236E48AE0()
{
  v1 = v0[3];
  sub_236E57598(v0[2], v0[4], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[4];
  v4 = type metadata accessor for AssetPackManager.DownloadStatusUpdate;
  if (EnumCaseMultiPayload == 3)
  {
    v5 = 1;
  }

  else if (EnumCaseMultiPayload == 4)
  {

    v5 = 1;
    v4 = type metadata accessor for AssetPack;
  }

  else
  {
    v5 = 0;
    v4 = type metadata accessor for AssetPackManager.DownloadStatusUpdate;
  }

  sub_236E56DCC(v3, v4);
  v6 = v0[4];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_236E48BF8(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v176 = a4;
  v187 = a2;
  v169 = sub_236E819A4();
  v168 = *(v169 - 8);
  v6 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v166 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v167 = &v163 - v10;
  v11 = sub_236E819F4();
  v171 = *(v11 - 8);
  v172 = v11;
  v12 = *(v171 + 64);
  MEMORY[0x28223BE20](v11);
  v170 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_236E81CF4();
  v179 = *(v14 - 8);
  v180 = v14;
  v15 = *(v179 + 64);
  MEMORY[0x28223BE20](v14);
  v178 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_236E81E34();
  v189 = *(v17 - 8);
  v190 = v17;
  v18 = *(v189 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v173 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v185 = &v163 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v163 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v165 = &v163 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v163 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v163 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v163 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v174 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v163 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v177 = &v163 - v44;
  MEMORY[0x28223BE20](v43);
  v181 = &v163 - v45;
  v46 = 0x27DE87000uLL;
  v184 = a3;
  v175 = v30;
  v164 = v25;
  if (a3)
  {
    v47 = a3;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v48 = sub_236E81DA4();
    __swift_project_value_buffer(v48, qword_27DE87DC8);
    v49 = sub_236E820E4();
    v50 = a1;
    v186 = *(v189 + 16);
    v186(v35, a1, v190);

    v51 = sub_236E81D84();

    if (os_log_type_enabled(v51, v49))
    {
      v52 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v192 = v163;
      *v52 = 136446722;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v53 = v190;
      v54 = sub_236E82484();
      v55 = v47;
      v56 = v53;
      v58 = v57;
      v188 = *(v189 + 8);
      v188(v35, v56);
      v59 = sub_236E381CC(v54, v58, &v192);
      v60 = v187;
      v61 = v49;
      v62 = v176;

      *(v52 + 4) = v59;
      *(v52 + 12) = 2082;
      *(v52 + 14) = sub_236E381CC(v60, v55, &v192);
      *(v52 + 22) = 2082;
      v191 = v62;
      type metadata accessor for ReadingOptions(0);
      v63 = sub_236E81ED4();
      v65 = sub_236E381CC(v63, v64, &v192);

      *(v52 + 24) = v65;
      _os_log_impl(&dword_236E28000, v51, v61, "Contents at: %{public}s searching in asset pack with ID: %{public}s options: %{public}s", v52, 0x20u);
      v66 = v163;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v66, -1, -1);
      MEMORY[0x2383C0E50](v52, -1, -1);
    }

    else
    {

      v188 = *(v189 + 8);
      v188(v35, v190);
      v55 = v47;
    }

    v82 = v177;
    v81 = v178;
    v83 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    sub_236E4EDE4(v187, v55);
    v84 = v183;
    sub_236E81C14();
    v85 = v84;
    v86 = v185;
    if (v84)
    {
      (*(v179 + 8))(v81, v180);
      v46 = v184;
      v87 = v186;
      goto LABEL_43;
    }

    (*(v179 + 8))(v81, v180);
    v87 = v186;
  }

  else
  {
    v180 = a1;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v67 = sub_236E81DA4();
    __swift_project_value_buffer(v67, qword_27DE87DC8);
    v68 = sub_236E820E4();
    v186 = *(v189 + 16);
    v186(v33, v180, v190);
    v69 = sub_236E81D84();
    if (os_log_type_enabled(v69, v68))
    {
      v70 = swift_slowAlloc();
      LODWORD(v179) = v68;
      v71 = v70;
      v72 = swift_slowAlloc();
      v192 = v72;
      *v71 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v73 = v190;
      v74 = sub_236E82484();
      v76 = v75;
      v188 = *(v189 + 8);
      v188(v33, v73);
      v77 = sub_236E381CC(v74, v76, &v192);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2082;
      v191 = v176;
      type metadata accessor for ReadingOptions(0);
      v78 = sub_236E81ED4();
      v80 = sub_236E381CC(v78, v79, &v192);

      *(v71 + 14) = v80;
      _os_log_impl(&dword_236E28000, v69, v179, "Contents at: %{public}s options: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v72, -1, -1);
      MEMORY[0x2383C0E50](v71, -1, -1);
    }

    else
    {

      v188 = *(v189 + 8);
      v188(v33, v190);
    }

    v86 = v185;
    v88 = v183;
    v89 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v90 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
    v91 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
    v92 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
    v93 = *(v182 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
    v50 = v180;
    sub_236E81C04();
    v85 = v88;
    v87 = v186;
    if (v88)
    {
LABEL_48:
      v86 = v173;
      if (qword_27DE87AB8 != -1)
      {
        swift_once();
      }

      v150 = sub_236E81DA4();
      __swift_project_value_buffer(v150, qword_27DE87DC8);
      v151 = sub_236E820F4();
      v87(v86, v50, v190);
      v152 = v85;
      v136 = sub_236E81D84();

      if (os_log_type_enabled(v136, v151))
      {
        v46 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v192 = v187;
        *v46 = 136446466;
        sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
        v154 = v190;
        v155 = sub_236E82484();
        v157 = v156;
        v188(v86, v154);
        v158 = sub_236E381CC(v155, v157, &v192);

        *(v46 + 4) = v158;
        *(v46 + 12) = 2114;
        v159 = v85;
        v160 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v160;
        *v153 = v160;
        _os_log_impl(&dword_236E28000, v136, v151, "The contents at “%{public}s” couldn’t be read: %{public}@", v46, 0x16u);
        sub_236E38DBC(v153, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v153, -1, -1);
        v161 = v187;
        __swift_destroy_boxed_opaque_existential_0(v187);
        MEMORY[0x2383C0E50](v161, -1, -1);
        v149 = v46;
        goto LABEL_52;
      }

LABEL_53:

      v188(v86, v190);
      goto LABEL_54;
    }

    v82 = v42;
  }

  v94 = v181;
  sub_236E59508(v82, v181, &qword_27DE87E90, &unk_236E853B0);
  v95 = v94;
  v96 = v174;
  sub_236E593A8(v95, v174, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v189 + 48))(v96, 1, v190) == 1)
  {
    sub_236E38DBC(v96, &qword_27DE87E90, &unk_236E853B0);
    type metadata accessor for ManagedBackgroundAssetsError();
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
    v85 = swift_allocError();
    v87(v97, v50, v190);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_42;
  }

  v180 = v50;
  v183 = 0;
  v98 = v190;
  v99 = v175;
  (*(v189 + 32))(v175, v96, v190);
  v100 = v87;
  v101 = v165;
  v87(v165, v99, v98);
  v102 = v166;
  (*(v168 + 104))(v166, *MEMORY[0x277CC91D8], v169);
  v103 = v167;
  sub_236E4A0F4(v101, v102, v167);
  v105 = v171;
  v104 = v172;
  if ((*(v171 + 48))(v103, 1, v172) != 1)
  {
    v186 = v100;
    v110 = v170;
    (*(v105 + 32))(v170, v103, v104);
    v111 = v176;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v112 = sub_236E81DA4();
    __swift_project_value_buffer(v112, qword_27DE87DC8);
    v113 = sub_236E820D4();
    v114 = v164;
    v115 = v186;
    v186(v164, v175, v190);
    v87 = v115;
    v116 = sub_236E81D84();
    LODWORD(v182) = v113;
    if (os_log_type_enabled(v116, v113))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v192 = v118;
      *v117 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v119 = v114;
      v120 = v190;
      v121 = sub_236E82484();
      v123 = v122;
      v188(v119, v120);
      v124 = sub_236E381CC(v121, v123, &v192);
      v110 = v170;

      *(v117 + 4) = v124;
      _os_log_impl(&dword_236E28000, v116, v182, "Reading the file at “%{public}s”…", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x2383C0E50](v118, -1, -1);
      v87 = v186;
      MEMORY[0x2383C0E50](v117, -1, -1);

      v85 = v183;
      if ((v111 & 8) != 0)
      {
LABEL_25:
        v125 = sub_236E820D4();
        v126 = sub_236E81D84();
        if (!os_log_type_enabled(v126, v125))
        {
          v110 = v170;
          v86 = v185;
          goto LABEL_34;
        }

        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_236E28000, v126, v125, "Unconditionally mapping the file into memory…", v127, 2u);
        v86 = v185;
        goto LABEL_31;
      }
    }

    else
    {

      v188(v114, v190);
      v85 = v183;
      if ((v111 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    v86 = v185;
    if ((v111 & 1) == 0)
    {
LABEL_35:
      if ((v111 & 2) != 0)
      {
        v129 = sub_236E820D4();
        v130 = sub_236E81D84();
        if (os_log_type_enabled(v130, v129))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_236E28000, v130, v129, "Bypassing file-system caches…", v131, 2u);
          MEMORY[0x2383C0E50](v131, -1, -1);
        }

        v110 = v170;
      }

      v132 = sub_236E81A04();
      if (!v85)
      {
        v46 = v132;
        (*(v171 + 8))(v110, v172);
        v188(v175, v190);
        sub_236E38DBC(v181, &qword_27DE87E90, &unk_236E853B0);
        return v46;
      }

      (*(v171 + 8))(v110, v172);
      v188(v175, v190);
      goto LABEL_41;
    }

    v128 = sub_236E820D4();
    v126 = sub_236E81D84();
    if (!os_log_type_enabled(v126, v128))
    {
      goto LABEL_32;
    }

    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_236E28000, v126, v128, "Conditionally mapping the file into memory…", v127, 2u);
LABEL_31:
    MEMORY[0x2383C0E50](v127, -1, -1);
LABEL_32:
    v110 = v170;
LABEL_34:

    goto LABEL_35;
  }

  sub_236E38DBC(v103, &qword_27DE87E88, &unk_236E84D20);
  type metadata accessor for AssetPackManagerError(0);
  sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);
  v106 = swift_allocError();
  v107 = v190;
  v100(v108, v99, v190);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v109 = v99;
  v85 = v106;
  v188(v109, v107);
  v87 = v100;
  v86 = v185;
LABEL_41:
  v50 = v180;
LABEL_42:
  sub_236E38DBC(v181, &qword_27DE87E90, &unk_236E853B0);
  v46 = v184;
  if (!v184)
  {
    v46 = 0x27DE87000uLL;
    goto LABEL_48;
  }

LABEL_43:
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v133 = sub_236E81DA4();
  __swift_project_value_buffer(v133, qword_27DE87DC8);
  v134 = sub_236E820F4();
  v87(v86, v50, v190);

  v135 = v85;
  v136 = sub_236E81D84();

  if (!os_log_type_enabled(v136, v134))
  {
    goto LABEL_53;
  }

  v137 = v86;
  v138 = swift_slowAlloc();
  v139 = swift_slowAlloc();
  v186 = swift_slowAlloc();
  v192 = v186;
  *v138 = 136446722;
  sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
  v140 = v85;
  v141 = v137;
  v142 = v190;
  v143 = sub_236E82484();
  v145 = v144;
  v188(v141, v142);
  v146 = sub_236E381CC(v143, v145, &v192);

  *(v138 + 4) = v146;
  *(v138 + 12) = 2082;
  *(v138 + 14) = sub_236E381CC(v187, v184, &v192);
  *(v138 + 22) = 2114;
  v147 = v140;
  v148 = _swift_stdlib_bridgeErrorToNSError();
  *(v138 + 24) = v148;
  *v139 = v148;
  _os_log_impl(&dword_236E28000, v136, v134, "The contents at “%{public}s” in the asset pack with the ID “%{public}s” couldn’t be read: %{public}@", v138, 0x20u);
  sub_236E38DBC(v139, &qword_27DE88170, &qword_236E853C0);
  MEMORY[0x2383C0E50](v139, -1, -1);
  v46 = v186;
  swift_arrayDestroy();
  MEMORY[0x2383C0E50](v46, -1, -1);
  v149 = v138;
LABEL_52:
  MEMORY[0x2383C0E50](v149, -1, -1);

LABEL_54:
  swift_willThrow();
  return v46;
}

uint64_t sub_236E4A0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_236E819A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236E81E34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_236E81F14();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_236E819F4();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_236E819D4();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_236E819F4();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

uint64_t sub_236E4A408(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v145 = a2;
  v5 = sub_236E81CF4();
  v141 = *(v5 - 8);
  v6 = *(v141 + 64);
  MEMORY[0x28223BE20](v5);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_236E81E34();
  v8 = *(v150 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v150);
  v136 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v131 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v132 = &v131 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v135 = &v131 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v131 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v131 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v139 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v131 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v31);
  v142 = a3;
  v144 = a1;
  v137 = &v131 - v33;
  v138 = v14;
  if (a3)
  {
    v133 = v32;
    v134 = v5;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v34 = sub_236E81DA4();
    __swift_project_value_buffer(v34, qword_27DE87DC8);
    v35 = sub_236E820E4();
    v149 = *(v8 + 16);
    v149(v23, a1, v150);

    v36 = sub_236E81D84();

    if (os_log_type_enabled(v36, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v143 = v8;
      v39 = v150;
      v40 = v38;
      v151 = v38;
      *v37 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v41 = sub_236E82484();
      v42 = a3;
      v44 = v43;
      v148 = *(v143 + 8);
      v148(v23, v39);
      v45 = sub_236E381CC(v41, v44, &v151);

      *(v37 + 4) = v45;
      *(v37 + 12) = 2082;
      v46 = v145;
      *(v37 + 14) = sub_236E381CC(v145, v42, &v151);
      _os_log_impl(&dword_236E28000, v36, v35, "Descriptor for: %{public}s searching in asset pack with ID: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      v8 = v143;
      MEMORY[0x2383C0E50](v40, -1, -1);
      MEMORY[0x2383C0E50](v37, -1, -1);
    }

    else
    {

      v148 = *(v8 + 8);
      v148(v23, v150);
      v42 = a3;
      v46 = v145;
    }

    v59 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v60 = v140;
    sub_236E4EDE4(v46, v42);
    v61 = v133;
    a1 = v144;
    v62 = v147;
    sub_236E81C14();
    v63 = v62;
    v64 = v149;
    if (v62)
    {
      (*(v141 + 8))(v60, v134);
      v65 = v142;
      v66 = 0x27DE87000;
LABEL_28:
      if (*(v66 + 2744) != -1)
      {
        swift_once();
      }

      v94 = sub_236E81DA4();
      __swift_project_value_buffer(v94, qword_27DE87DC8);
      v95 = sub_236E820F4();
      v96 = v138;
      v64(v138, a1, v150);

      v97 = v63;
      v98 = sub_236E81D84();

      if (os_log_type_enabled(v98, v95))
      {
        v99 = swift_slowAlloc();
        v143 = v8;
        v100 = v99;
        v101 = swift_slowAlloc();
        v102 = v150;
        LODWORD(v147) = v95;
        v103 = v101;
        v149 = swift_slowAlloc();
        v151 = v149;
        *v100 = 136446722;
        sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
        v104 = v65;
        v105 = sub_236E82484();
        v107 = v106;
        v148(v96, v102);
        v108 = sub_236E381CC(v105, v107, &v151);

        *(v100 + 4) = v108;
        *(v100 + 12) = 2082;
        *(v100 + 14) = sub_236E381CC(v145, v104, &v151);
        *(v100 + 22) = 2114;
        v109 = v63;
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 24) = v110;
        *v103 = v110;
        _os_log_impl(&dword_236E28000, v98, v147, "A file descriptor couldn’t be opened for “%{public}s” in the asset pack with the ID “%{public}s”: %{public}@", v100, 0x20u);
        sub_236E38DBC(v103, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v103, -1, -1);
        v111 = v149;
        swift_arrayDestroy();
        v112 = v111;
LABEL_38:
        MEMORY[0x2383C0E50](v112, -1, -1);
        MEMORY[0x2383C0E50](v100, -1, -1);

        return swift_willThrow();
      }

      v113 = v96;
      goto LABEL_40;
    }

    (*(v141 + 8))(v60, v134);
    v67 = v139;
    v68 = v61;
  }

  else
  {
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v47 = sub_236E81DA4();
    __swift_project_value_buffer(v47, qword_27DE87DC8);
    v48 = sub_236E820E4();
    v149 = *(v8 + 16);
    v149(v21, a1, v150);
    v49 = sub_236E81D84();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v150;
      LODWORD(v143) = v48;
      v53 = v51;
      v151 = v51;
      *v50 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v54 = sub_236E82484();
      v56 = v55;
      v148 = *(v8 + 8);
      v148(v21, v52);
      v57 = sub_236E381CC(v54, v56, &v151);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_236E28000, v49, v143, "Descriptor for: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x2383C0E50](v53, -1, -1);
      v58 = v50;
      a1 = v144;
      MEMORY[0x2383C0E50](v58, -1, -1);
    }

    else
    {

      v148 = *(v8 + 8);
      v148(v21, v150);
    }

    v69 = v147;
    v70 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v71 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
    v72 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
    v73 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
    v74 = *(v146 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
    sub_236E81C04();
    v63 = v69;
    v75 = v136;
    v76 = v149;
    v67 = v139;
    if (v69)
    {
      v66 = 0x27DE87000;
      goto LABEL_34;
    }

    v68 = v30;
  }

  v77 = v137;
  sub_236E59508(v68, v137, &qword_27DE87E90, &unk_236E853B0);
  sub_236E593A8(v77, v67, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v8 + 48))(v67, 1, v150) == 1)
  {
    sub_236E38DBC(v67, &qword_27DE87E90, &unk_236E853B0);
    type metadata accessor for ManagedBackgroundAssetsError();
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
    v63 = swift_allocError();
    v149(v78, a1, v150);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_236E38DBC(v77, &qword_27DE87E90, &unk_236E853B0);
    v65 = v142;
    v66 = 0x27DE87000uLL;
    if (v142)
    {
      v64 = v149;
      goto LABEL_28;
    }

    v75 = v136;
    v76 = v149;
LABEL_34:
    if (*(v66 + 2744) != -1)
    {
      swift_once();
    }

    v114 = sub_236E81DA4();
    __swift_project_value_buffer(v114, qword_27DE87DC8);
    v115 = sub_236E820F4();
    v76(v75, a1, v150);
    v116 = v63;
    v98 = sub_236E81D84();

    if (os_log_type_enabled(v98, v115))
    {
      v117 = swift_slowAlloc();
      v143 = v8;
      v100 = v117;
      v118 = swift_slowAlloc();
      v119 = v150;
      v120 = v118;
      v121 = swift_slowAlloc();
      v151 = v121;
      *v100 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v122 = sub_236E82484();
      v123 = v75;
      v124 = v122;
      v126 = v125;
      v148(v123, v119);
      v127 = sub_236E381CC(v124, v126, &v151);

      *(v100 + 4) = v127;
      *(v100 + 12) = 2114;
      v128 = v63;
      v129 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 14) = v129;
      *v120 = v129;
      _os_log_impl(&dword_236E28000, v98, v115, "A file descriptor couldn’t be opened for “%{public}s”: %{public}@", v100, 0x16u);
      sub_236E38DBC(v120, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v120, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v121);
      v112 = v121;
      goto LABEL_38;
    }

    v113 = v75;
LABEL_40:
    v148(v113, v150);
    return swift_willThrow();
  }

  v79 = v135;
  (*(v8 + 32))(v135, v67, v150);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v80 = sub_236E81DA4();
  __swift_project_value_buffer(v80, qword_27DE87DC8);
  v81 = sub_236E820D4();
  v82 = v132;
  v149(v132, v79, v150);
  v83 = sub_236E81D84();
  if (os_log_type_enabled(v83, v81))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v151 = v85;
    *v84 = 136446210;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
    v86 = v150;
    v87 = sub_236E82484();
    v88 = v82;
    v89 = v87;
    v91 = v90;
    v148(v88, v86);
    v92 = sub_236E381CC(v89, v91, &v151);

    *(v84 + 4) = v92;
    _os_log_impl(&dword_236E28000, v83, v81, "Opening a file descriptor for “%{public}s”…", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x2383C0E50](v85, -1, -1);
    v79 = v135;
    MEMORY[0x2383C0E50](v84, -1, -1);
  }

  else
  {

    v93 = (v148)(v82, v150);
  }

  MEMORY[0x28223BE20](v93);
  *(&v131 - 2) = 0;
  *(&v131 - 2) = 16842752;
  sub_236E81DD4();
  v148(v79, v150);
  sub_236E38DBC(v137, &qword_27DE87E90, &unk_236E853B0);
  return v151;
}

uint64_t sub_236E4B3FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a1;
  v90 = a2;
  v4 = sub_236E819A4();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v87[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v87[-v12];
  v105 = sub_236E81E34();
  v13 = *(v105 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v105);
  v103 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v87[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v92 = &v87[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v87[-v24];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v26 = sub_236E81DA4();
  v27 = __swift_project_value_buffer(v26, qword_27DE87DC8);
  v28 = sub_236E820E4();
  v100 = *(v13 + 16);
  v100(v25, v104, v105);
  v29 = sub_236E81D84();
  v30 = os_log_type_enabled(v29, v28);
  v101 = v13;
  v102 = v13 + 16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v106 = v89;
    *v31 = 136446210;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
    v32 = v2;
    v33 = v105;
    v34 = sub_236E82484();
    v88 = v28;
    v35 = v21;
    v36 = v27;
    v38 = v37;
    v39 = v33;
    v3 = v32;
    v99 = *(v101 + 8);
    v99(v25, v39);
    v40 = sub_236E381CC(v34, v38, &v106);
    v27 = v36;
    v21 = v35;

    *(v31 + 4) = v40;
    _os_log_impl(&dword_236E28000, v29, v88, "URL for: %{public}s", v31, 0xCu);
    v41 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x2383C0E50](v41, -1, -1);
    v42 = v31;
    v13 = v101;
    MEMORY[0x2383C0E50](v42, -1, -1);
  }

  else
  {

    v99 = *(v13 + 8);
    v99(v25, v105);
  }

  if ([objc_opt_self() isMainThread])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EB8, &unk_236E851A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_236E84C70;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 32) = 0xD000000000000055;
    v44 = (inited + 32);
    *(inited + 40) = 0x8000000236E8A040;
    sub_236E59658(inited, 32, 0xE100000000000000, 10, 0xE100000000000000);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  v45 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v46 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v47 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v48 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v49 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  v50 = v98;
  sub_236E81C34();
  v51 = v50;
  if (!v50)
  {
    v98 = v27;
    v52 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath;
    v53 = v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath;
    v54 = v105;
    v89 = v3;
    v55 = v100;
    v100(v21, v53, v105);
    v55(v96, v104, v54);
    v56 = v21;
    v57 = v97;
    sub_236E81DE4();
    if ((*(v13 + 48))(v57, 1, v54) == 1)
    {
      sub_236E38DBC(v57, &qword_27DE87E90, &unk_236E853B0);
      v58 = sub_236E81DF4();
      sub_236E57620(&qword_27DE87EA8, MEMORY[0x277D25C80]);
      v51 = swift_allocError();
      v60 = v59;
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EB0, &unk_236E84D30) + 48);
      v62 = v105;
      v55(v60, (v89 + v52), v105);
      v55(&v60[v61], v104, v62);
      (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D25C78], v58);
      swift_willThrow();
    }

    else
    {
      v63 = v92;
      v64 = v105;
      (*(v13 + 32))(v92, v57, v105);
      v55(v56, v63, v64);
      v65 = v91;
      (*(v93 + 104))(v91, *MEMORY[0x277CC91E8], v94);
      v66 = v95;
      sub_236E4A0F4(v56, v65, v95);
      v67 = sub_236E819F4();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v66, 1, v67) != 1)
      {
        v99(v63, v105);
        return (*(v68 + 32))(v90, v66, v67);
      }

      sub_236E38DBC(v66, &qword_27DE87E88, &unk_236E84D20);
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);
      v51 = swift_allocError();
      v69 = v105;
      v55(v70, v63, v105);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v99(v63, v69);
    }
  }

  v71 = sub_236E820F4();
  v100(v103, v104, v105);
  v72 = v51;
  v73 = sub_236E81D84();

  if (os_log_type_enabled(v73, v71))
  {
    v74 = swift_slowAlloc();
    v75 = v105;
    v76 = v74;
    v77 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v106 = v104;
    *v76 = 136446466;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
    v78 = v103;
    v79 = sub_236E82484();
    v81 = v80;
    v99(v78, v75);
    v82 = sub_236E381CC(v79, v81, &v106);

    *(v76 + 4) = v82;
    *(v76 + 12) = 2114;
    v83 = v51;
    v84 = _swift_stdlib_bridgeErrorToNSError();
    *(v76 + 14) = v84;
    *v77 = v84;
    _os_log_impl(&dword_236E28000, v73, v71, "The URL for “%{public}s” couldn’t be retrieved: %{public}@", v76, 0x16u);
    sub_236E38DBC(v77, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v77, -1, -1);
    v85 = v104;
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x2383C0E50](v85, -1, -1);
    MEMORY[0x2383C0E50](v76, -1, -1);
  }

  else
  {

    v99(v103, v105);
  }

  return swift_willThrow();
}

uint64_t sub_236E4BEE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a2;
  v107 = a4;
  v6 = sub_236E81CF4();
  v113 = *(v6 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_236E81E34();
  v10 = *(v123 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v123);
  v110 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v111 = &v106 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v106 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v106 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v112 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v106 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v28);
  v114 = &v106 - v30;
  v121 = a3;
  v122 = a1;
  if (a3)
  {
    v108 = v29;
    v109 = v6;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v31 = sub_236E81DA4();
    __swift_project_value_buffer(v31, qword_27DE87DC8);
    v32 = sub_236E820E4();
    v120 = *(v10 + 16);
    v120(v20, a1, v123);

    v33 = sub_236E81D84();

    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v115 = v10;
      v36 = v123;
      v37 = v35;
      v124 = v35;
      *v34 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v38 = sub_236E82484();
      v40 = v39;
      v116 = *(v115 + 8);
      v116(v20, v36);
      v41 = sub_236E381CC(v38, v40, &v124);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2082;
      v42 = v117;
      *(v34 + 14) = sub_236E381CC(v117, v121, &v124);
      _os_log_impl(&dword_236E28000, v33, v32, "Full path for: %{public}s searching in asset pack with ID: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      v10 = v115;
      MEMORY[0x2383C0E50](v37, -1, -1);
      v43 = v34;
      a3 = v121;
      MEMORY[0x2383C0E50](v43, -1, -1);
    }

    else
    {

      v116 = *(v10 + 8);
      v116(v20, v123);
      v42 = v117;
    }

    v56 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    sub_236E4EDE4(v42, a3);
    v57 = v108;
    v58 = v119;
    sub_236E81C14();
    v59 = v58;
    v60 = v114;
    if (v58)
    {
      (*(v113 + 8))(v9, v109);
      goto LABEL_19;
    }

    (*(v113 + 8))(v9, v109);
    v61 = v112;
    v62 = v57;
  }

  else
  {
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v44 = sub_236E81DA4();
    __swift_project_value_buffer(v44, qword_27DE87DC8);
    v45 = sub_236E820E4();
    v120 = *(v10 + 16);
    v120(v18, a1, v123);
    v46 = sub_236E81D84();
    if (os_log_type_enabled(v46, v45))
    {
      v47 = swift_slowAlloc();
      v115 = v10;
      v48 = v47;
      v49 = swift_slowAlloc();
      v124 = v49;
      *v48 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v50 = v123;
      v51 = sub_236E82484();
      v53 = v52;
      v116 = *(v115 + 8);
      v116(v18, v50);
      v54 = sub_236E381CC(v51, v53, &v124);

      *(v48 + 4) = v54;
      a1 = v122;
      _os_log_impl(&dword_236E28000, v46, v45, "Full path for: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2383C0E50](v49, -1, -1);
      v55 = v48;
      v10 = v115;
      MEMORY[0x2383C0E50](v55, -1, -1);
    }

    else
    {

      v116 = *(v10 + 8);
      v116(v18, v123);
    }

    v61 = v112;
    v63 = v119;
    v64 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v65 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
    v66 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
    v67 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
    v68 = *(v118 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
    sub_236E81C04();
    v59 = v63;
    a3 = v121;
    if (v63)
    {
      goto LABEL_26;
    }

    v62 = v27;
    v60 = v114;
  }

  sub_236E59508(v62, v60, &qword_27DE87E90, &unk_236E853B0);
  sub_236E593A8(v60, v61, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v10 + 48))(v61, 1, v123) != 1)
  {
    sub_236E38DBC(v60, &qword_27DE87E90, &unk_236E853B0);
    return (*(v10 + 32))(v107, v61, v123);
  }

  sub_236E38DBC(v61, &qword_27DE87E90, &unk_236E853B0);
  type metadata accessor for ManagedBackgroundAssetsError();
  sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);
  v59 = swift_allocError();
  v120(v69, v122, v123);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_236E38DBC(v60, &qword_27DE87E90, &unk_236E853B0);
  if (!a3)
  {
    a1 = v122;
LABEL_26:
    v89 = v110;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v90 = sub_236E81DA4();
    __swift_project_value_buffer(v90, qword_27DE87DC8);
    v91 = sub_236E820F4();
    v120(v89, a1, v123);
    v92 = v59;
    v93 = sub_236E81D84();

    if (os_log_type_enabled(v93, v91))
    {
      v94 = swift_slowAlloc();
      v115 = v10;
      v95 = v94;
      v96 = swift_slowAlloc();
      v97 = v123;
      v98 = v96;
      v122 = swift_slowAlloc();
      v124 = v122;
      *v95 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
      v99 = sub_236E82484();
      v101 = v100;
      v116(v89, v97);
      v102 = sub_236E381CC(v99, v101, &v124);

      *(v95 + 4) = v102;
      *(v95 + 12) = 2114;
      v103 = v59;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 14) = v104;
      *v98 = v104;
      _os_log_impl(&dword_236E28000, v93, v91, "The full path for “%{public}s” couldn’t be retrieved: %{public}@", v95, 0x16u);
      sub_236E38DBC(v98, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v98, -1, -1);
      v105 = v122;
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x2383C0E50](v105, -1, -1);
      MEMORY[0x2383C0E50](v95, -1, -1);

      return swift_willThrow();
    }

    v87 = v89;
LABEL_31:
    v116(v87, v123);
    return swift_willThrow();
  }

LABEL_19:
  v70 = v122;
  v71 = v111;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v72 = sub_236E81DA4();
  __swift_project_value_buffer(v72, qword_27DE87DC8);
  v73 = sub_236E820F4();
  v120(v71, v70, v123);

  v74 = v59;
  v75 = sub_236E81D84();

  if (!os_log_type_enabled(v75, v73))
  {

    v87 = v71;
    goto LABEL_31;
  }

  v76 = swift_slowAlloc();
  v122 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v78 = v123;
  LODWORD(v120) = v73;
  v79 = v77;
  v124 = v77;
  *v76 = 136446722;
  sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
  v80 = sub_236E82484();
  v82 = v81;
  v116(v71, v78);
  v83 = sub_236E381CC(v80, v82, &v124);

  *(v76 + 4) = v83;
  *(v76 + 12) = 2082;
  *(v76 + 14) = sub_236E381CC(v117, v121, &v124);
  *(v76 + 22) = 2114;
  v84 = v59;
  v85 = _swift_stdlib_bridgeErrorToNSError();
  *(v76 + 24) = v85;
  v86 = v122;
  *v122 = v85;
  _os_log_impl(&dword_236E28000, v75, v120, "The full path for “%{public}s” in the asset pack with the ID “%{public}s” couldn’t be retrieved: %{public}@", v76, 0x20u);
  sub_236E38DBC(v86, &qword_27DE88170, &qword_236E853C0);
  MEMORY[0x2383C0E50](v86, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x2383C0E50](v79, -1, -1);
  MEMORY[0x2383C0E50](v76, -1, -1);

  return swift_willThrow();
}