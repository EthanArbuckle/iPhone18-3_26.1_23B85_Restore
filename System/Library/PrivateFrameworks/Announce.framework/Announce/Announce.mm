uint64_t sub_2237CA2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2237CA390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2237CA440()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2237CA548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2237CA5A0()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA5D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2237CA618()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2237CA764()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA7A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2237CA7F0()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA880()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2237CA8C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id ANLogHandleAnnouncement()
{
  if (ANLogHandleAnnouncement_once != -1)
  {
    ANLogHandleAnnouncement_cold_1();
  }

  v1 = ANLogHandleAnnouncement_logger;

  return v1;
}

uint64_t __ANLogHandleAnnouncement_block_invoke()
{
  ANLogHandleAnnouncement_logger = os_log_create("com.apple.intercom", "Announcement");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ANLogHandleVolumeController_block_invoke()
{
  ANLogHandleVolumeController_logger = os_log_create("com.apple.intercom", "VolumeController");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleLocalPlaybackSession()
{
  if (ANLogHandleLocalPlaybackSession_once != -1)
  {
    ANLogHandleLocalPlaybackSession_cold_1();
  }

  v1 = ANLogHandleLocalPlaybackSession_logger;

  return v1;
}

void sub_2237D13F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_2237D1740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D1C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237D2034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2237D25B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237D27C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2237D2A2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleLocalPlaybackSession_block_invoke()
{
  ANLogHandleLocalPlaybackSession_logger = os_log_create("com.apple.intercom", "LocalPlaybackSession");

  return MEMORY[0x2821F96F8]();
}

os_log_t ANLogWithCategory(char *category)
{
  v1 = os_log_create("com.apple.intercom", category);

  return v1;
}

uint64_t ANLogBuildCategoryName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    v6 = v5;
    if (([v4 an_isLocalDevice] & 1) == 0)
    {
      v7 = [v4 UUIDString];
      v8 = [v7 componentsSeparatedByString:@"-"];

      v9 = [v8 firstObject];
      v10 = v9;
      v11 = &stru_2836DAA20;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v6 = [v5 stringByAppendingFormat:@"-%@", v12];
    }
  }

  v13 = [v6 cStringUsingEncoding:134217984];

  return v13;
}

void sub_2237D3608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ANLogHandleAnnounce()
{
  if (ANLogHandleAnnounce_once != -1)
  {
    ANLogHandleAnnounce_cold_1();
  }

  v1 = ANLogHandleAnnounce_logger;

  return v1;
}

void sub_2237D4848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_2237D4C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D50CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D61A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D63DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAnnounce_block_invoke()
{
  ANLogHandleAnnounce_logger = os_log_create("com.apple.intercom", "Announce");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ANLogHandleUtils_block_invoke()
{
  ANLogHandleUtils_logger = os_log_create("com.apple.intercom", "Utils");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementContext()
{
  if (ANLogHandleAnnouncementContext_once != -1)
  {
    ANLogHandleAnnouncementContext_cold_1();
  }

  v1 = ANLogHandleAnnouncementContext_logger;

  return v1;
}

uint64_t __ANLogHandleAnnouncementContext_block_invoke()
{
  ANLogHandleAnnouncementContext_logger = os_log_create("com.apple.intercom", "AnnouncementContext");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementDataItem()
{
  if (ANLogHandleAnnouncementDataItem_once != -1)
  {
    ANLogHandleAnnouncementDataItem_cold_1();
  }

  v1 = ANLogHandleAnnouncementDataItem_logger;

  return v1;
}

uint64_t __ANLogHandleAnnouncementDataItem_block_invoke()
{
  ANLogHandleAnnouncementDataItem_logger = os_log_create("com.apple.intercom", "AnnouncementDataItem");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAudioProcessor()
{
  if (ANLogHandleAudioProcessor_once != -1)
  {
    ANLogHandleAudioProcessor_cold_1();
  }

  v1 = ANLogHandleAudioProcessor_logger;

  return v1;
}

uint64_t __ANLogHandleAudioProcessor_block_invoke()
{
  ANLogHandleAudioProcessor_logger = os_log_create("com.apple.intercom", "AudioProcessor");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAudioSession()
{
  if (ANLogHandleAudioSession_once != -1)
  {
    ANLogHandleAudioSession_cold_1();
  }

  v1 = ANLogHandleAudioSession_logger;

  return v1;
}

uint64_t __ANLogHandleAudioSession_block_invoke()
{
  ANLogHandleAudioSession_logger = os_log_create("com.apple.intercom", "AudioSession");

  return MEMORY[0x2821F96F8]();
}

void sub_2237DCC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2237DCD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237DCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ANLogHandleXPCTransactionManager()
{
  if (ANLogHandleXPCTransactionManager_once != -1)
  {
    ANLogHandleXPCTransactionManager_cold_1();
  }

  v1 = ANLogHandleXPCTransactionManager_logger;

  return v1;
}

void sub_2237DDA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleXPCTransactionManager_block_invoke()
{
  ANLogHandleXPCTransactionManager_logger = os_log_create("com.apple.intercom", "XPCTransactionManager");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleRemotePlaybackSession()
{
  if (ANLogHandleRemotePlaybackSession_once != -1)
  {
    ANLogHandleRemotePlaybackSession_cold_1();
  }

  v1 = ANLogHandleRemotePlaybackSession_logger;

  return v1;
}

void sub_2237DEAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237DF1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237DF3F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2237DF658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleRemotePlaybackSession_block_invoke()
{
  ANLogHandleRemotePlaybackSession_logger = os_log_create("com.apple.intercom", "RemotePlaybackSession");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleFiles()
{
  if (ANLogHandleFiles_once != -1)
  {
    ANLogHandleFiles_cold_1();
  }

  v1 = ANLogHandleFiles_logger;

  return v1;
}

uint64_t __ANLogHandleFiles_block_invoke()
{
  ANLogHandleFiles_logger = os_log_create("com.apple.intercom", "Files");

  return MEMORY[0x2821F96F8]();
}

id ANLocalizedString(void *a1)
{
  v1 = a1;
  v2 = +[_ANBundleHelper currentBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_2836DAA20 table:@"ANSensitiveStrings-Announce"];

  return v3;
}

id ANLocalizedStringWithFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = ANLocalizedString(v10);

  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v11 initWithFormat:v12 locale:v13 arguments:&a9];

  return v14;
}

void *ANLocalizedStringWithDefaultValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ANLocalizedString(v4);
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

void sub_2237E1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237E1954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id ANLogHandleTonePlayerService()
{
  if (ANLogHandleTonePlayerService_once[0] != -1)
  {
    ANLogHandleTonePlayerService_cold_1();
  }

  v1 = ANLogHandleTonePlayerService_logger;

  return v1;
}

uint64_t __ANLogHandleTonePlayerService_block_invoke()
{
  ANLogHandleTonePlayerService_logger = os_log_create("com.apple.intercom", "TonePlayerService");

  return MEMORY[0x2821F96F8]();
}

BOOL sub_2237E49F0(void *a1, uint64_t *a2)
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

void *sub_2237E4A20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2237E4A4C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2237E4B38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2237E4B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2237E4C9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2237E4BF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2237E4C9C(uint64_t a1)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237E4CEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2237E4D0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_2237E4D60(uint64_t a1, unint64_t *a2)
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

uint64_t get_enum_tag_for_layout_string_8Announce31RecipientResolutionResponseCodeO13FailureReasonO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Announce31RecipientResolutionResponseCodeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2237E4E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237E4E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2237E4EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237E4EE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2237E4F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_2237E4F8C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t ANPlaybackOptions.description.getter(uint64_t a1)
{
  v2 = sub_223800F70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = 91;
  v77 = 0xE100000000000000;
  sub_223800F60();
  v7 = sub_2237E6E44();
  v8 = *(v7 + 16);
  v63 = v3;
  v64 = v2;
  v66 = v6;
  if (v8)
  {
    v9 = sub_2237E55FC(v8, 0);
    v10 = sub_2237E6BEC(&v75, v9 + 4, v8, v7);
    sub_2237E7128();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  v65 = v9;
  v11 = v9[2];
  if (v11)
  {
    v12 = v65 + 4;
    v13 = "unknown options present!";
    v14 = "terInterruptionEnds";
    v15 = "playAnnounceIntroTone";
    v16 = "startPlaybackAtDeadline";
    v73 = "useAnchoredTrackPlayer";
    v74 = "noAnnounceInBetweenTone";
    v71 = "playHeardAnnouncements";
    v72 = "continuePlayingNewAnnouncements";
    v69 = "useSmartSiriVolume";
    v70 = "playUnheardAnnouncements";
    v67 = 0xD000000000000012;
    v68 = 0xD000000000000015;
    do
    {
      v18 = *v12++;
      v17 = v18;
      if ((v18 & ~a1) == 0)
      {
        v19 = MEMORY[0x277D84F98];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v19;
        sub_2237E5D04(0xD000000000000023, v13 | 0x8000000000000000, 1, isUniquelyReferenced_nonNull_native);
        v21 = v75;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v21;
        sub_2237E5D04(v68, v14 | 0x8000000000000000, 2, v22);
        v23 = v75;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v23;
        sub_2237E5D04(0xD000000000000017, v15 | 0x8000000000000000, 4, v24);
        v25 = v75;
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v25;
        sub_2237E5D04(0xD000000000000017, v16 | 0x8000000000000000, 8, v26);
        v27 = v75;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v27;
        sub_2237E5D04(0xD000000000000016, v74 | 0x8000000000000000, 16, v28);
        v29 = v75;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v29;
        sub_2237E5D04(0xD00000000000001FLL, v73 | 0x8000000000000000, 32, v30);
        v31 = v75;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v31;
        sub_2237E5D04(0xD000000000000016, v72 | 0x8000000000000000, 64, v32);
        v33 = v75;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v33;
        sub_2237E5D04(0xD000000000000018, v71 | 0x8000000000000000, 128, v34);
        v35 = v75;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v35;
        sub_2237E5D04(v67, v70 | 0x8000000000000000, 256, v36);
        v37 = v75;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v37;
        sub_2237E5D04(0xD00000000000001ELL, v69 | 0x8000000000000000, 512, v38);
        v39 = v75;
        if (*(v75 + 16) && (v40 = sub_2237E5704(v17), (v41 & 1) != 0))
        {
          v42 = (*(v39 + 56) + 16 * v40);
          v43 = a1;
          v44 = v16;
          v45 = v15;
          v46 = v14;
          v47 = v13;
          v48 = *v42;
          v49 = v42[1];

          sub_223801010();
          v13 = v47;
          v14 = v46;
          v15 = v45;
          v16 = v44;
          a1 = v43;
        }

        else
        {
        }
      }

      --v11;
    }

    while (v11);
  }

  v50 = sub_2237E6E44();
  v51 = v50;
  v52 = *(v50 + 16);
  if (v52)
  {
    v53 = sub_2237E55FC(*(v50 + 16), 0);
    v54 = sub_2237E6BEC(&v75, v53 + 4, v52, v51);
    sub_2237E7128();
    if (v54 == v52)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v53 = MEMORY[0x277D84F90];
LABEL_17:
  v55 = v53[2];
  v56 = v66;
  if (v55)
  {
    v57 = 0;
    v58 = 4;
    do
    {
      v59 = v53[v58];
      if ((v59 & ~v57) == 0)
      {
        v59 = 0;
      }

      v57 |= v59;
      ++v58;
      --v55;
    }

    while (v55);

    v60 = ~v57;
  }

  else
  {

    v60 = -1;
  }

  v61 = v63;
  if ((v60 & a1) != 0)
  {
    sub_223801010();
  }

  MEMORY[0x223DEB9F0](93, 0xE100000000000000);
  (*(v61 + 8))(v56, v64);
  return v76;
}

void *sub_2237E5514@<X0>(void *a1@<X8>)
{
  result = _sSo17ANPlaybackOptionsV8AnnounceE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2237E5544()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E55B8()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

void *sub_2237E55FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A470, &unk_2238045E0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2237E5680(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_2237E5704(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2238012E0();
  MEMORY[0x223DEBCB0](a1);
  v4 = sub_223801300();

  return sub_2237E5E64(a1, v4);
}

unint64_t sub_2237E5770(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2238012E0();
  SendAnnouncementIntentResponseCode.rawValue.getter(v4);
  sub_223801020();

  v5 = sub_223801300();

  return sub_2237E5ED0(a1, v5);
}

unint64_t sub_2237E57FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_223801180();

  return sub_2237E6384(a1, v5);
}

unint64_t sub_2237E5840(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2237F7F14();

  return sub_2237E644C(a1, v4);
}

unint64_t sub_2237E5884(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2238012E0();
  sub_223801020();

  v5 = sub_223801300();

  return sub_2237E66E8(a1 & 1, v5);
}

unint64_t sub_2237E5930(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2238012E0();
  sub_223801020();

  v4 = sub_223801300();

  return sub_2237E6830(a1, v4);
}

uint64_t sub_2237E5A68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A468, &qword_2238045D8);
  v37 = a2;
  result = sub_223801220();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_2238012E0();
      MEMORY[0x223DEBCB0](v22);
      result = sub_223801300();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2237E5D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2237E5704(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2237E5A68(v16, a4 & 1);
      v20 = *v5;
      result = sub_2237E5704(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        type metadata accessor for ANPlaybackOptions(0);
        result = sub_223801280();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2237E6A84();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_2237E5E64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2237E5ED0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000646569;
      v8 = 0x6669636570736E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x7964616572;
          break;
        case 2:
          v8 = 0x6572676F72506E69;
          v7 = 0xEA00000000007373;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x73736563637573;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6572756C696166;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x80000002238095E0;
          break;
        case 6:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000223809600;
          break;
        case 7:
          v8 = 0xD000000000000026;
          v7 = 0x8000000223809620;
          break;
        case 8:
          v8 = 0xD000000000000022;
          v7 = 0x8000000223809650;
          break;
        case 9:
          v8 = 0xD00000000000002ALL;
          v7 = 0x8000000223809680;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x80000002238096B0;
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v7 = 0x80000002238096D0;
          break;
        case 0xC:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000223809700;
          break;
        case 0xD:
          v8 = 0xD00000000000002BLL;
          v7 = 0x8000000223809720;
          break;
        case 0xE:
          v8 = 0xD000000000000026;
          v7 = 0x8000000223809750;
          break;
        default:
          break;
      }

      v9 = 0x6669636570736E75;
      v10 = 0xEB00000000646569;
      switch(a1)
      {
        case 1:
          v10 = 0xE500000000000000;
          if (v8 == 0x7964616572)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          v10 = 0xEA00000000007373;
          if (v8 != 0x6572676F72506E69)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x73736563637573)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v10 = 0xE700000000000000;
          if (v8 != 0x6572756C696166)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v10 = 0x80000002238095E0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v10 = 0x8000000223809600;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v10 = 0x8000000223809620;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v10 = 0x8000000223809650;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v10 = 0x8000000223809680;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v9 = 0xD000000000000010;
          v10 = 0x80000002238096B0;
          goto LABEL_44;
        case 11:
          v10 = 0x80000002238096D0;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v10 = 0x8000000223809700;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 13:
          v10 = 0x8000000223809720;
          if (v8 != 0xD00000000000002BLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          v10 = 0x8000000223809750;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
LABEL_44:
          if (v8 != v9)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_46:
          v11 = sub_223801270();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2237E6384(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2237E7288(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DEBB50](v9, a1);
      sub_2237E72E4(v9);
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

unint64_t sub_2237E644C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7964616572;
          }

          else
          {
            v7 = 0x6572676F72506E69;
          }

          if (v6 == 1)
          {
            v8 = 0xE500000000000000;
          }

          else
          {
            v8 = 0xEA00000000007373;
          }
        }

        else
        {
          v7 = 0x6669636570736E75;
          v8 = 0xEB00000000646569;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000002238095E0;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
          v8 = 0x8000000223809780;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x73736563637573;
        }

        else
        {
          v7 = 0x6572756C696166;
        }

        v8 = 0xE700000000000000;
      }

      v9 = 0xD00000000000001CLL;
      if (v5 == 5)
      {
        v9 = 0xD000000000000019;
        v10 = 0x80000002238095E0;
      }

      else
      {
        v10 = 0x8000000223809780;
      }

      v11 = 0x73736563637573;
      if (v5 != 3)
      {
        v11 = 0x6572756C696166;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v5 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v5 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v5)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v5 <= 2 ? v12 : v9;
      v15 = v5 <= 2 ? v13 : v10;
      if (v7 == v14 && v8 == v15)
      {
        break;
      }

      v16 = sub_223801270();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
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

unint64_t sub_2237E66E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      v7 = 0x80000002238097B0;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 0x6E776F6E6B6E75;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002238097B0 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_223801270();

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

unint64_t sub_2237E6830(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x73736563637573;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6572756C696166;
          }

          else
          {
            v8 = 0xD000000000000019;
          }

          if (v7 == 4)
          {
            v9 = 0xE700000000000000;
          }

          else
          {
            v9 = 0x80000002238095E0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7964616572;
        }

        else
        {
          v8 = 0x6572676F72506E69;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xEA00000000007373;
        }
      }

      else
      {
        v8 = 0x6669636570736E75;
        v9 = 0xEB00000000646569;
      }

      v10 = 0xD000000000000019;
      if (v6 == 4)
      {
        v10 = 0x6572756C696166;
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0x80000002238095E0;
      }

      if (v6 == 3)
      {
        v10 = 0x73736563637573;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v6 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_223801270();

      if ((v16 & 1) == 0)
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

void *sub_2237E6A84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A468, &qword_2238045D8);
  v2 = *v0;
  v3 = sub_223801210();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_2237E6BEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2237E6CEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2237E6E44()
{
  v0 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000023, 0x80000002238098A0, 1, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000015, 0x80000002238098D0, 2, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000017, 0x80000002238098F0, 4, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000017, 0x8000000223809910, 8, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000016, 0x8000000223809930, 16, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD00000000000001FLL, 0x8000000223809950, 32, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000016, 0x8000000223809970, 64, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000018, 0x8000000223809990, 128, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000012, 0x80000002238099B0, 256, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD00000000000001ELL, 0x80000002238099D0, 512, v10);
  return v0;
}

void *_sSo17ANPlaybackOptionsV8AnnounceE8allCasesSayABGvgZ_0()
{
  v0 = sub_2237E6E44();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2237E55FC(*(v0 + 16), 0);
  v4 = sub_2237E6BEC(&v6, v3 + 4, v2, v1);
  sub_2237E7128();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_2237E7134()
{
  result = qword_27D09A450;
  if (!qword_27D09A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A458, &qword_223804528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A450);
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

unint64_t sub_2237E71E4()
{
  result = qword_27D09A420;
  if (!qword_27D09A420)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A420);
  }

  return result;
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

unint64_t sub_2237E733C()
{
  result = 0x6669636570736E75;
  switch(*v0)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD000000000000026;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

Announce::SendAnnouncementIntentResponseCode_optional __swiftcall SendAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237E7568(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SendAnnouncementIntentResponseCode.description.getter();
  v4 = v3;
  if (v2 == SendAnnouncementIntentResponseCode.description.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_223801270();
  }

  return v7 & 1;
}

uint64_t sub_2237E7604()
{
  v1 = *v0;
  v2 = sub_2238012E0();
  SendAnnouncementIntentResponseCode.description.getter(v2);
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237E766C(uint64_t a1)
{
  v3 = *v1;
  SendAnnouncementIntentResponseCode.description.getter(a1);
  sub_223801020();
}

uint64_t sub_2237E76D0()
{
  v1 = *v0;
  v2 = sub_2238012E0();
  SendAnnouncementIntentResponseCode.description.getter(v2);
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237E7740@<X0>(uint64_t *a1@<X8>)
{
  result = SendAnnouncementIntentResponseCode.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2237E77BC(uint64_t a1)
{
  v2 = sub_2237E7FA4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237E780C(uint64_t a1)
{
  v2 = sub_2237E7F00();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t _s8Announce34SendAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4E8, &qword_223804930);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4F0, &qword_223804938);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2238045F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_223800E60();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_223800E60();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_223800E60();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_223800E60();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_223800E60();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_223800E60();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_223800E60();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_223800E60();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_223800E60();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_223800E60();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_223800E60();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_223800E60();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_223800E60();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_223800E60();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_223800E60();
  v20 = sub_2237F8958(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v20;
}

unint64_t sub_2237E7C2C()
{
  result = qword_27D09A478;
  if (!qword_27D09A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A478);
  }

  return result;
}

unint64_t sub_2237E7C84()
{
  result = qword_27D09A480;
  if (!qword_27D09A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A488, &qword_2238046A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A480);
  }

  return result;
}

unint64_t sub_2237E7CEC()
{
  result = qword_27D09A490;
  if (!qword_27D09A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A490);
  }

  return result;
}

unint64_t sub_2237E7D44()
{
  result = qword_27D09A498;
  if (!qword_27D09A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A498);
  }

  return result;
}

unint64_t sub_2237E7D9C()
{
  result = qword_27D09A4A0;
  if (!qword_27D09A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4A0);
  }

  return result;
}

unint64_t sub_2237E7E00()
{
  result = qword_27D09A4A8;
  if (!qword_27D09A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4A8);
  }

  return result;
}

unint64_t sub_2237E7E54()
{
  result = qword_27D09A4B0;
  if (!qword_27D09A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4B0);
  }

  return result;
}

unint64_t sub_2237E7EA8()
{
  result = qword_27D09A4B8;
  if (!qword_27D09A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4B8);
  }

  return result;
}

unint64_t sub_2237E7F00()
{
  result = qword_27D09A4C0;
  if (!qword_27D09A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4C0);
  }

  return result;
}

unint64_t sub_2237E7FA4()
{
  result = qword_27D09A4C8;
  if (!qword_27D09A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4C8);
  }

  return result;
}

unint64_t sub_2237E7FFC()
{
  result = qword_27D09A4D0;
  if (!qword_27D09A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4D0);
  }

  return result;
}

unint64_t sub_2237E8054()
{
  result = qword_27D09A4D8;
  if (!qword_27D09A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4D8);
  }

  return result;
}

unint64_t sub_2237E80AC()
{
  result = qword_27D09A4E0;
  if (!qword_27D09A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AnnouncementResolutionResponseCode.FailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E8300()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E8374()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

BOOL static AnnouncementResolutionResponseCode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_2237E840C()
{
  result = qword_27D09A4F8;
  if (!qword_27D09A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4F8);
  }

  return result;
}

BOOL sub_2237E8460(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for AnnouncementResolutionResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnouncementResolutionResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2237E85F0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2237E8604(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnouncementResolutionResponseCode.FailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnouncementResolutionResponseCode.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2237E87BC()
{
  MEMORY[0x223DEC650](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SendAnnouncementIntentError.hashValue.getter()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t SendAnnouncementIntentRequest.init(endpointID:home:rooms:zones:speechDataURL:sharedUserID:replyToAnnouncementID:transcription:isReply:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v18 = type metadata accessor for SendAnnouncementIntentRequest(0);
  result = sub_2237F0D9C(a7, a9 + v18[8], &qword_27D09A500, &unk_223804AE0);
  v20 = (a9 + v18[9]);
  *v20 = a8;
  v20[1] = a10;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  v22 = (a9 + v18[11]);
  *v22 = a13;
  v22[1] = a14;
  *(a9 + v18[12]) = a15;
  return result;
}

uint64_t sub_2237E89CC()
{
  if (![objc_opt_self() isInternalBuild])
  {
    v7 = 0;
    return v7 & 1;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_223800FE0();
  if (!v2)
  {

    goto LABEL_11;
  }

  if (v1 == v3 && v2 == v4)
  {
    goto LABEL_17;
  }

  v6 = sub_223801270();

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v8 = (v0 + *(type metadata accessor for SendAnnouncementIntentRequest(0) + 40));
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_223800FE0();
    if (!v10)
    {
      v7 = 0;
      goto LABEL_19;
    }

    if (v9 != v11 || v10 != v12)
    {
      v7 = sub_223801270();
LABEL_19:

      return v7 & 1;
    }

LABEL_17:
    v7 = 1;
    goto LABEL_19;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t SendAnnouncementIntentResponse.transcriptionText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SendAnnouncementIntentResponse.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  sub_2238011C0();

  v5 = SendAnnouncementIntentResponseCode.description.getter(v4);
  MEMORY[0x223DEB9F0](v5);

  MEMORY[0x223DEB9F0](0x64726F6365720A2CLL, 0xEB00000000203A73);
  v6 = MEMORY[0x223DEBA40](v2, &type metadata for AnnouncementRecord);
  MEMORY[0x223DEB9F0](v6);

  MEMORY[0x223DEB9F0](0xD000000000000011, 0x8000000223809A20);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DEB9F0](v7, v8);

  return 0x203A65646F63;
}

uint64_t sub_2237E8C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 256) = a6;
  *(v8 + 264) = v7;
  *(v8 + 448) = a7;
  *(v8 + 240) = a4;
  *(v8 + 248) = a5;
  *(v8 + 224) = a2;
  *(v8 + 232) = a3;
  *(v8 + 216) = a1;
  v9 = sub_223800FA0();
  *(v8 + 272) = v9;
  v10 = *(v9 - 8);
  *(v8 + 280) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0) - 8) + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v13 = sub_223800F00();
  *(v8 + 360) = v13;
  v14 = *(v13 - 8);
  *(v8 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237E8E3C, 0, 0);
}

uint64_t sub_2237E8E3C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_2237F0D34(*(v0 + 256), v3, &qword_27D09A500, &unk_223804AE0);
  v4 = *(v2 + 48);
  *(v0 + 392) = v4;
  *(v0 + 400) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_2237F0360(*(v0 + 352), &qword_27D09A500, &unk_223804AE0);
  }

  else
  {
    (*(*(v0 + 368) + 32))(*(v0 + 384), *(v0 + 352), *(v0 + 360));
    *(v0 + 168) = sub_223800EE0();
    *(v0 + 176) = v5;
    *(v0 + 184) = sub_223800FE0();
    *(v0 + 192) = v6;
    sub_2237F022C();
    v7 = sub_223801150();

    if (v7)
    {
      v8 = *(v0 + 264);
      sub_2237F6C2C(*(v0 + 336));
      v9 = sub_223800F80();
      v10 = sub_223801110();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2237C8000, v9, v10, "Returning test success", v11, 2u);
        MEMORY[0x223DEC5C0](v11, -1, -1);
      }

      v12 = *(v0 + 384);
      v13 = *(v0 + 360);
      v14 = *(v0 + 368);
      v15 = *(v0 + 336);
      v16 = *(v0 + 272);
      v17 = *(v0 + 280);

      (*(v17 + 8))(v15, v16);
      (*(v14 + 8))(v12, v13);
      v18 = 4;
      goto LABEL_23;
    }

    (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
  }

  v19 = *(v0 + 264);
  v20 = *(v0 + 448);

  if (v20 == 1)
  {
    v21 = *(v0 + 248);
    if (v21)
    {
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = *(v0 + 240) & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = *(v0 + 264);
        v24 = sub_2237F62CC(*(v0 + 224), *(v0 + 232));
        *(v0 + 408) = v24;
        v25 = sub_223800FD0();
        *(v0 + 416) = v25;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = sub_2237E949C;
        v26 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A508, &unk_223804AF8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2237E9F7C;
        *(v0 + 104) = &block_descriptor;
        *(v0 + 112) = v26;
        [v24 announcementForID:v25 reply:v0 + 80];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    v39 = *(v0 + 264);
    sub_2237F6C2C(*(v0 + 320));
    v40 = sub_223800F80();
    v41 = sub_223801100();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2237C8000, v40, v41, "Announcement Identifier is empty for reply", v42, 2u);
      MEMORY[0x223DEC5C0](v42, -1, -1);
    }

    v43 = *(v0 + 320);
    v44 = *(v0 + 272);
    v45 = *(v0 + 280);

    (*(v45 + 8))(v43, v44);
    v18 = 1;
    goto LABEL_23;
  }

  v28 = *(v0 + 392);
  v27 = *(v0 + 400);
  v29 = *(v0 + 360);
  v30 = *(v0 + 344);
  sub_2237F0D34(*(v0 + 256), v30, &qword_27D09A500, &unk_223804AE0);
  if (v28(v30, 1, v29) == 1)
  {
    v31 = *(v0 + 288);
    v32 = *(v0 + 264);
    sub_2237F0360(*(v0 + 344), &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v31);
    v33 = sub_223800F80();
    v34 = sub_223801100();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2237C8000, v33, v34, "Resolving Announcement failed for no Speech Data URL.", v35, 2u);
      MEMORY[0x223DEC5C0](v35, -1, -1);
    }

    v37 = *(v0 + 280);
    v36 = *(v0 + 288);
    v38 = *(v0 + 272);

    (*(v37 + 8))(v36, v38);
    v18 = 0;
LABEL_23:
    v47 = *(v0 + 376);
    v46 = *(v0 + 384);
    v49 = *(v0 + 344);
    v48 = *(v0 + 352);
    v51 = *(v0 + 328);
    v50 = *(v0 + 336);
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v55 = *(v0 + 296);
    v54 = *(v0 + 304);
    v60 = *(v0 + 288);
    **(v0 + 216) = v18;

    v56 = *(v0 + 8);

    return v56();
  }

  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 344), *(v0 + 360));
  v57 = swift_task_alloc();
  *(v0 + 424) = v57;
  *v57 = v0;
  v57[1] = sub_2237E9924;
  v58 = *(v0 + 376);

  return sub_2237EFE2C(v58);
}

uint64_t sub_2237E949C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237E957C, 0, 0);
}

uint64_t sub_2237E957C()
{
  v44 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 416);

  if (!v1)
  {
    v16 = *(v0 + 264);
    v17 = *(v0 + 248);
    sub_2237F6C2C(*(v0 + 328));

    v18 = sub_223800F80();
    v19 = sub_223801100();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 328);
    v22 = *(v0 + 272);
    v23 = *(v0 + 280);
    if (v20)
    {
      v25 = *(v0 + 240);
      v24 = *(v0 + 248);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2237EF884(v25, v24, &v43);
      _os_log_impl(&dword_2237C8000, v18, v19, "Could not find reply-to announcement: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DEC5C0](v27, -1, -1);
      MEMORY[0x223DEC5C0](v26, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    v15 = 1;
    goto LABEL_9;
  }

  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 360);
  v6 = *(v0 + 344);
  sub_2237F0D34(*(v0 + 256), v6, &qword_27D09A500, &unk_223804AE0);
  if (v4(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 264);
    sub_2237F0360(*(v0 + 344), &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v7);
    v9 = sub_223800F80();
    v10 = sub_223801100();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2237C8000, v9, v10, "Resolving Announcement failed for no Speech Data URL.", v11, 2u);
      MEMORY[0x223DEC5C0](v11, -1, -1);
    }

    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v14 = *(v0 + 272);

    (*(v13 + 8))(v12, v14);
    v15 = 0;
LABEL_9:
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    v33 = *(v0 + 328);
    v32 = *(v0 + 336);
    v35 = *(v0 + 312);
    v34 = *(v0 + 320);
    v37 = *(v0 + 296);
    v36 = *(v0 + 304);
    v42 = *(v0 + 288);
    **(v0 + 216) = v15;

    v38 = *(v0 + 8);

    return v38();
  }

  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 344), *(v0 + 360));
  v40 = swift_task_alloc();
  *(v0 + 424) = v40;
  *v40 = v0;
  v40[1] = sub_2237E9924;
  v41 = *(v0 + 376);

  return sub_2237EFE2C(v41);
}

uint64_t sub_2237E9924(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_2237E9CE8;
  }

  else
  {
    v5 = sub_2237E9A3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2237E9A3C()
{
  v1 = *(v0 + 264);
  sub_2237F6C2C(*(v0 + 312));
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 432);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2237C8000, v2, v3, "Speech Data Length: %{public}f", v5, 0xCu);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }

  v6 = *(v0 + 432);
  v7 = *(v0 + 312);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);

  v10 = *(v9 + 8);
  v10(v7, v8);
  if (v6 >= 60.0)
  {
    v12 = *(v0 + 264);
    sub_2237F6C2C(*(v0 + 296));
    v13 = sub_223800F80();
    v14 = sub_223801110();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = 60;
      _os_log_impl(&dword_2237C8000, v13, v14, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v15, 8u);
      MEMORY[0x223DEC5C0](v15, -1, -1);
    }

    v17 = *(v0 + 368);
    v16 = *(v0 + 376);
    v18 = *(v0 + 360);
    v19 = *(v0 + 296);
    v20 = *(v0 + 272);

    v10(v19, v20);
    (*(v17 + 8))(v16, v18);
    v11 = 3;
  }

  else
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v11 = 4;
  }

  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v28 = *(v0 + 312);
  v27 = *(v0 + 320);
  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v33 = *(v0 + 288);
  **(v0 + 216) = v11;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2237E9CE8()
{
  v42 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 264);
  sub_2237F6C2C(*(v0 + 304));
  v3 = v1;
  v4 = sub_223800F80();
  v5 = sub_223801100();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 368);
    v38 = *(v0 + 360);
    v39 = *(v0 + 376);
    v8 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = sub_223801290();
    v16 = sub_2237EF884(v14, v15, &v41);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2237C8000, v4, v5, "Failed to retrieve duration %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DEC5C0](v10, -1, -1);
    MEMORY[0x223DEC5C0](v9, -1, -1);

    (*(v8 + 8))(v37, v36);
    (*(v7 + 8))(v39, v38);
  }

  else
  {
    v17 = *(v0 + 440);
    v19 = *(v0 + 368);
    v18 = *(v0 + 376);
    v20 = *(v0 + 360);
    v21 = *(v0 + 304);
    v22 = *(v0 + 272);
    v23 = *(v0 + 280);

    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
  }

  v25 = *(v0 + 376);
  v24 = *(v0 + 384);
  v27 = *(v0 + 344);
  v26 = *(v0 + 352);
  v29 = *(v0 + 328);
  v28 = *(v0 + 336);
  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  v33 = *(v0 + 296);
  v32 = *(v0 + 304);
  v40 = *(v0 + 288);
  **(v0 + 216) = 2;

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2237E9F7C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void sub_2237E9FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v46 = a7;
  v47 = a8;
  v50 = a3;
  v51 = a4;
  v44 = a1;
  v45 = a2;
  v13 = sub_223800FA0();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  if (!a6)
  {
    goto LABEL_7;
  }

  if (sub_223800FE0() == a5 && v23 == a6)
  {
  }

  else
  {
    v25 = sub_223801270();

    if ((v25 & 1) == 0)
    {
LABEL_7:

      sub_2237F6C2C(v20);
      v26 = sub_223800F80();
      v27 = sub_223801110();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2237C8000, v26, v27, "SendAnnouncementIntentPerformer resolving recipients", v28, 2u);
        MEMORY[0x223DEC5C0](v28, -1, -1);
      }

      v29 = *(v48 + 8);
      v30 = v20;
      v31 = v49;
      v29(v30, v49);
      v32 = a6;
      v34 = v46;
      v33 = v47;
      v35 = sub_2237F0280(a5, v32, v46, v47);
      if (sub_2237EA3D0(v50, v51, v35))
      {
        sub_2237F6C2C(v17);
        v36 = sub_223800F80();
        v37 = sub_223801100();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_2237C8000, v36, v37, "Attempting to announce to the same room containing self", v38, 2u);
          MEMORY[0x223DEC5C0](v38, -1, -1);
        }

        v29(v17, v31);
        *a9 = 1;
        *(a9 + 8) = 0;
        *(a9 + 16) = 0;
        *(a9 + 24) = 0;
        *(a9 + 32) = 1;
      }

      else
      {
        if (a10)
        {
          sub_2237EA6CC(v44, v45, v50, v51, v34, v33, v35, a9);
        }

        else
        {
          sub_2237EADC0(v50, v51, v34, v33, v35, a9);
        }
      }

      return;
    }
  }

  sub_2237F6C2C(v22);
  v39 = sub_223800F80();
  v40 = sub_223801110();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2237C8000, v39, v40, "Returning test success", v41, 2u);
    MEMORY[0x223DEC5C0](v41, -1, -1);
  }

  (*(v48 + 8))(v22, v49);
  *a9 = sub_223800FE0();
  *(a9 + 8) = v42;
  v43 = MEMORY[0x277D84F90];
  *(a9 + 16) = MEMORY[0x277D84F90];
  *(a9 + 24) = v43;
  *(a9 + 32) = 0;
}

id sub_2237EA3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = [a3 roomNames];
  v17 = sub_223801070();

  v18 = *(v17 + 16);

  if (v18 != 1)
  {
    return 0;
  }

  v19 = [a3 roomNames];
  v20 = sub_223801070();

  if (v20[2])
  {
    v22 = v20[4];
    v21 = v20[5];

    v23 = sub_223800F40();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v15, 1, 1, v23);
    if (a2)
    {
      sub_223800F10();
      sub_2237F0360(v15, &unk_27D09A9C0, &qword_223804B08);
      sub_2237F0D9C(v13, v15, &unk_27D09A9C0, &qword_223804B08);
    }

    v25 = sub_2237F62CC(a1, a2);
    sub_2237F0D34(v15, v10, &unk_27D09A9C0, &qword_223804B08);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_223800F20();
      (*(v24 + 8))(v10, v23);
    }

    v28 = sub_223800FD0();

    v29 = [v25 isEndpointWithUUID:v26 inRoomWithName:v28];

    sub_2237F0360(v15, &unk_27D09A9C0, &qword_223804B08);
    return v29;
  }

  else
  {

    return 0;
  }
}

void sub_2237EA6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v66 = a2;
  v67 = a3;
  v65[1] = a1;
  v69 = a8;
  v68 = sub_223800FA0();
  v12 = *(v68 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v68);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v65 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v65 - v20;
  v74 = MEMORY[0x277D84F90];
  if (a5)
  {

    sub_2237EF584(v22);
  }

  if (a6)
  {

    sub_2237EF584(v23);
  }

  if (!*(v74 + 16))
  {

    sub_2237F6C2C(v21);
    v32 = sub_223800F80();
    v33 = sub_223801110();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2237C8000, v32, v33, "Skipping Resolve Recipients for Reply without recipients", v34, 2u);
      MEMORY[0x223DEC5C0](v34, -1, -1);
    }

    (v12[1])(v21, v68);
    goto LABEL_15;
  }

  v24 = [a7 homeName];
  v25 = sub_223800FE0();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_2237F6C2C(v16);
    v29 = sub_223800F80();
    v30 = sub_223801110();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2237C8000, v29, v30, "Recipients contain home name. No additional resolution required.", v31, 2u);
      MEMORY[0x223DEC5C0](v31, -1, -1);
    }

    (v12[1])(v16, v68);
LABEL_15:
    v35 = v69;
    *v69 = 0u;
    v35[1] = 0u;
    v36 = 2;
LABEL_16:
    *(v35 + 32) = v36;
    return;
  }

  v37 = sub_2237F6E84(v67, a4);
  v38 = [v37 lastPlayedAnnouncementInfo];
  v39 = sub_223800FB0();

  v70 = sub_223800FE0();
  v71 = v40;
  sub_2238011A0();
  if (!*(v39 + 16) || (v41 = sub_2237E57FC(&v72), (v42 & 1) == 0))
  {

    sub_2237E72E4(&v72);
    if (!v66)
    {
LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_26;
  }

  sub_2237F01C8(*(v39 + 56) + 32 * v41, v73);
  sub_2237E72E4(&v72);

  if (swift_dynamicCast())
  {
    v43 = v71;
  }

  else
  {
    v43 = 0;
  }

  if (v66)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (!v43)
  {
LABEL_33:
    sub_2237F6C2C(v19);
    v56 = sub_223800F80();
    v57 = sub_223801100();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2237C8000, v56, v57, "Contains Recipients with no announcement identifier. Unable to determine context for home.", v58, 2u);
      MEMORY[0x223DEC5C0](v58, -1, -1);
    }

    (v12[1])(v19, v68);
    goto LABEL_38;
  }

LABEL_27:
  v44 = sub_2237F62CC(v67, a4);
  v45 = sub_223800FD0();

  v46 = [v44 announcementForID_];

  if (!v46)
  {
LABEL_37:

LABEL_38:
    v35 = v69;
    *v69 = 4;
    *(v35 + 1) = 0;
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = 1;
    goto LABEL_16;
  }

  v47 = [v44 contextFromAnnouncement_];
  if (!v47)
  {

    goto LABEL_37;
  }

  v48 = v47;
  v49 = [v47 homeName];
  v50 = sub_223800FE0();
  v19 = v51;

  v52 = [v48 rooms];
  v53 = sub_223800FB0();

  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = sub_2237E5680(*(v53 + 16), 0);
    v12 = sub_2237E6CEC(&v72, v55 + 4, v54, v53);
    sub_2237E7128();
    if (v12 != v54)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v59 = [v48 zones];
  v60 = sub_223800FB0();

  v61 = *(v60 + 16);
  if (!v61)
  {

    v62 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v62 = sub_2237E5680(*(v60 + 16), 0);
  v63 = sub_2237E6CEC(&v72, v62 + 4, v61, v60);
  sub_2237E7128();
  if (v63 == v61)
  {

LABEL_44:
    v64 = v69;
    *v69 = v50;
    *(v64 + 1) = v19;
    *(v64 + 2) = v55;
    *(v64 + 3) = v62;
    *(v64 + 32) = 0;
    return;
  }

  __break(1u);
}

void sub_2237EADC0(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v71 = a3;
  v72 = a4;
  v73 = a6;
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v66 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = sub_2237F62CC(a1, a2);
  v24 = [v23 homeNamesForContext_];
  v25 = sub_223801070();

  v74 = v6;
  sub_2237F6C2C(v22);

  v26 = sub_223800F80();
  v27 = sub_223801110();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v69 = v11;
    v30 = v29;
    v75 = v29;
    *v28 = 136315138;
    v31 = MEMORY[0x223DEBA40](v25, MEMORY[0x277D837D0]);
    v67 = v20;
    v68 = v10;
    v33 = v15;
    v34 = v25;
    v35 = v23;
    v36 = sub_2237EF884(v31, v32, &v75);
    v37 = v68;

    *(v28 + 4) = v36;
    v23 = v35;
    v25 = v34;
    v15 = v33;
    _os_log_impl(&dword_2237C8000, v26, v27, "Found Homes: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v38 = v30;
    v39 = v69;
    MEMORY[0x223DEC5C0](v38, -1, -1);
    MEMORY[0x223DEC5C0](v28, -1, -1);

    v40 = *(v39 + 8);
    v10 = v37;
    v41 = v37;
    v20 = v67;
    v40(v22, v41);
  }

  else
  {

    v40 = *(v11 + 8);
    v40(v22, v10);
  }

  v42 = v25[2];
  if (v42 == 1)
  {
    v47 = v70;
    sub_2237F6C2C(v70);
    v48 = sub_223800F80();
    v49 = sub_223801110();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2237C8000, v48, v49, "Found Single Home", v50, 2u);
      MEMORY[0x223DEC5C0](v50, -1, -1);
    }

    v40(v47, v10);
    if (v25[2])
    {
      v52 = v25[4];
      v51 = v25[5];

      v53 = v72;

      v54 = v71;

      v55 = MEMORY[0x277D84F90];
      if (v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = MEMORY[0x277D84F90];
      }

      if (v53)
      {
        v55 = v53;
      }

      v57 = v73;
      *v73 = v52;
      v57[1] = v51;
      v57[2] = v56;
      v57[3] = v55;
      *(v57 + 32) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else if (v42)
  {
    sub_2237F6C2C(v15);
    v58 = sub_223800F80();
    v59 = sub_223801110();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2237C8000, v58, v59, "Found Multiple Homes. Need to disambiguate", v60, 2u);
      MEMORY[0x223DEC5C0](v60, -1, -1);
    }

    v40(v15, v10);
    v61 = v72;

    v62 = v71;

    v63 = MEMORY[0x277D84F90];
    if (v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = MEMORY[0x277D84F90];
    }

    if (v61)
    {
      v63 = v61;
    }

    v65 = v73;
    *v73 = v25;
    v65[1] = v64;
    v65[2] = v63;
    v65[3] = 0;
    *(v65 + 32) = 1;
  }

  else
  {

    sub_2237F6C2C(v20);
    v43 = sub_223800F80();
    v44 = sub_223801100();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2237C8000, v43, v44, "Did not find any Homes", v45, 2u);
      MEMORY[0x223DEC5C0](v45, -1, -1);
    }

    v40(v20, v10);
    v46 = v73;
    *v73 = 0u;
    *(v46 + 1) = 0u;
    *(v46 + 32) = 1;
  }
}

uint64_t sub_2237EB340(uint64_t a1, uint64_t a2)
{
  v3[66] = v2;
  v3[65] = a2;
  v3[64] = a1;
  v4 = sub_223800F40();
  v3[67] = v4;
  v5 = *(v4 - 8);
  v3[68] = v5;
  v6 = *(v5 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v9 = sub_223800F00();
  v3[75] = v9;
  v10 = *(v9 - 8);
  v3[76] = v10;
  v11 = *(v10 + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v12 = sub_223800FA0();
  v3[79] = v12;
  v13 = *(v12 - 8);
  v3[80] = v13;
  v14 = *(v13 + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237EB614, 0, 0);
}

uint64_t sub_2237EB614()
{
  v1 = v0[66];
  sub_2237F6C2C(v0[96]);
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "SendAnnouncementIntentPerformer performing intent", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v5 = v0[96];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[65];

  v9 = *(v6 + 8);
  v0[97] = v9;
  v9(v5, v7);
  if (sub_2237E89CC())
  {
    v10 = v0[66];
    sub_2237F6C2C(v0[95]);
    v11 = sub_223800F80();
    v12 = sub_223801110();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2237C8000, v11, v12, "Returning test success", v13, 2u);
      MEMORY[0x223DEC5C0](v13, -1, -1);
    }

    v14 = v0[95];
    v15 = v0[80];
    v16 = v0[79];
    v17 = v0[64];

    v9(v14, v16);
    v18 = sub_223800FE0();
    *v17 = 3;
    *(v17 + 8) = MEMORY[0x277D84F90];
    *(v17 + 16) = v18;
    *(v17 + 24) = v19;
LABEL_11:
    v35 = v0[96];
    v36 = v0[95];
    v37 = v0[94];
    v38 = v0[93];
    v39 = v0[92];
    v40 = v0[91];
    v41 = v0[90];
    v42 = v0[89];
    v43 = v0[88];
    v44 = v0[87];
    v49 = v0[86];
    v50 = v0[85];
    v51 = v0[84];
    v52 = v0[83];
    v53 = v0[82];
    v54 = v0[81];
    v55 = v0[78];
    v56 = v0[77];
    v57 = v0[74];
    v58 = v0[73];
    v59 = v0[72];
    v60 = v0[71];
    v61 = v0[70];
    v62 = v0[69];

    v45 = v0[1];

    return v45();
  }

  v20 = v0[76];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[65];
  v24 = type metadata accessor for SendAnnouncementIntentRequest(0);
  v0[98] = v24;
  sub_2237F0D34(v23 + *(v24 + 32), v22, &qword_27D09A500, &unk_223804AE0);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v25 = v0[82];
    v26 = v0[66];
    sub_2237F0360(v0[74], &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v25);
    v27 = sub_223800F80();
    v28 = sub_223801100();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2237C8000, v27, v28, "No speech data URL", v29, 2u);
      MEMORY[0x223DEC5C0](v29, -1, -1);
    }

    v30 = v0[82];
    v31 = v0[80];
    v32 = v0[79];
    v33 = v0[64];

    v9(v30, v32);
    *v33 = 4;
    v34 = MEMORY[0x277D84F90];
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 8) = v34;
    goto LABEL_11;
  }

  (*(v0[76] + 32))(v0[78], v0[74], v0[75]);
  v47 = swift_task_alloc();
  v0[99] = v47;
  *v47 = v0;
  v47[1] = sub_2237EBB20;
  v48 = v0[78];

  return sub_2237EFE2C(v48);
}

uint64_t sub_2237EBB20(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 792);
  v7 = *v2;
  *(v3 + 800) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v5 = sub_2237EC118;
  }

  else
  {
    v5 = sub_2237EBC38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2237EBC38()
{
  v62 = v0;
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[66];
  sub_2237F6C2C(v0[94]);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_223800F80();
  v7 = sub_223801110();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[97];
  v10 = v0[94];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  if (v8)
  {
    v60 = v0[94];
    v16 = swift_slowAlloc();
    v59 = v12;
    v17 = swift_slowAlloc();
    v61 = v17;
    *v16 = 136315138;
    sub_2237F03C0(&qword_27D09A530, MEMORY[0x277CC9260]);
    v58 = v9;
    v18 = sub_223801250();
    v20 = v19;
    v57 = v7;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_2237EF884(v18, v20, &v61);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2237C8000, v6, v57, "Speech Data URL: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DEC5C0](v17, -1, -1);
    MEMORY[0x223DEC5C0](v16, -1, -1);

    v58(v60, v59);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
    v9(v10, v12);
  }

  v0[102] = v21;
  v23 = v0[66];
  sub_2237F6C2C(v0[92]);
  v24 = sub_223800F80();
  v25 = sub_223801110();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[100];
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v26;
    _os_log_impl(&dword_2237C8000, v24, v25, "Speech Data Length: %f", v27, 0xCu);
    MEMORY[0x223DEC5C0](v27, -1, -1);
  }

  v28 = v0[98];
  v29 = v0[97];
  v30 = v0[92];
  v31 = v0[80];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[65];

  v0[103] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v30, v32);
  v35 = sub_223800EF0();
  v36 = [objc_opt_self() contentWithAudioFileURL_];
  v0[104] = v36;

  v37 = (v34 + *(v28 + 44));
  if (v37[1])
  {
    v38 = *v37;
    v39 = sub_223800FD0();
  }

  else
  {
    v39 = 0;
  }

  v40 = v0[65];
  [v36 setTranscription_];

  v0[105] = *v40;
  v41 = v40[1];
  v0[106] = v41;
  if (v41)
  {
    v42 = v0[73];
    v43 = v0[68];
    v44 = v0[67];
    sub_223800F10();
    if ((*(v43 + 48))(v42, 1, v44) == 1)
    {
      v45 = 0;
    }

    else
    {
      v46 = v0[73];
      v47 = v0[68];
      v48 = v0[67];
      v45 = sub_223800F20();
      (*(v47 + 8))(v46, v48);
    }

    [v36 setEndpointIdentifier_];
  }

  v49 = [v36 endpointIdentifier];
  if (v49)
  {
    v50 = v0[71];
    v51 = v49;
    sub_223800F30();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  (*(v0[68] + 56))(v0[71], v52, 1, v0[67]);
  v53 = swift_task_alloc();
  v0[107] = v53;
  *v53 = v0;
  v53[1] = sub_2237EC47C;
  v54 = v0[72];
  v55 = v0[66];

  return sub_2237EED68(v54);
}

uint64_t sub_2237EC118()
{
  v54 = v0;
  v1 = v0[101];
  v2 = v0[66];
  sub_2237F6C2C(v0[93]);
  v3 = v1;
  v4 = sub_223800F80();
  v5 = sub_223801100();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[101];
    v51 = v0[97];
    v49 = v0[93];
    v7 = v0[80];
    v8 = v0[79];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v53 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[54];
    v11 = v0[55];
    v13 = v0[56];
    v14 = sub_223801290();
    v16 = sub_2237EF884(v14, v15, &v53);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2237C8000, v4, v5, "Failed to retrieve duration %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DEC5C0](v10, -1, -1);
    MEMORY[0x223DEC5C0](v9, -1, -1);

    v51(v49, v8);
    v17 = v6;
  }

  else
  {
    v18 = v0[101];
    v19 = v0[97];
    v20 = v0[93];
    v21 = v0[80];
    v22 = v0[79];

    v19(v20, v22);
    v17 = v18;
  }

  v23 = v0[64];
  (*(v0[76] + 8))(v0[78], v0[75]);
  *v23 = 4;
  v24 = MEMORY[0x277D84F90];
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 8) = v24;
  v25 = v0[96];
  v26 = v0[95];
  v27 = v0[94];
  v28 = v0[93];
  v29 = v0[92];
  v30 = v0[91];
  v31 = v0[90];
  v32 = v0[89];
  v33 = v0[88];
  v34 = v0[87];
  v37 = v0[86];
  v38 = v0[85];
  v39 = v0[84];
  v40 = v0[83];
  v41 = v0[82];
  v42 = v0[81];
  v43 = v0[78];
  v44 = v0[77];
  v45 = v0[74];
  v46 = v0[73];
  v47 = v0[72];
  v48 = v0[71];
  v50 = v0[70];
  v52 = v0[69];

  v35 = v0[1];

  return v35();
}

uint64_t sub_2237EC47C()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 568);
  v4 = *v0;

  sub_2237F0360(v2, &unk_27D09A9C0, &qword_223804B08);

  return MEMORY[0x2822009F8](sub_2237EC5A4, 0, 0);
}

uint64_t sub_2237EC5A4()
{
  v206 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_2237F0360(v1, &unk_27D09A9C0, &qword_223804B08);
  }

  else
  {
    v4 = *(v0 + 728);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 528);
    (*(v2 + 32))(v5, v1, v3);
    sub_2237F6C2C(v4);
    (*(v2 + 16))(v6, v5, v3);
    v8 = sub_223800F80();
    v9 = sub_223801110();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 824);
    v12 = *(v0 + 776);
    v13 = *(v0 + 728);
    v14 = *(v0 + 632);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    if (v10)
    {
      v199 = *(v0 + 728);
      v18 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = v12;
      v205 = v189;
      *v18 = 136315138;
      sub_2237F03C0(&qword_27D09A528, MEMORY[0x277CC95F0]);
      v184 = v14;
      v19 = sub_223801250();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = v22;
      v24 = sub_2237EF884(v19, v21, &v205);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_2237C8000, v8, v9, "MU HMUser ID: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      MEMORY[0x223DEC5C0](v189, -1, -1);
      MEMORY[0x223DEC5C0](v18, -1, -1);

      v193(v199, v184);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v15, v17);
      v23 = v25;
      v12(v13, v14);
    }

    v26 = *(v0 + 832);
    v27 = *(v0 + 560);
    v28 = *(v0 + 536);
    v29 = sub_223800F20();
    [v26 setHomeKitUserIdentifier_];

    v23(v27, v28);
  }

  v30 = *(v0 + 784);
  v31 = *(v0 + 520);
  v33 = v31[4];
  v32 = v31[5];
  v34 = v31[3];
  if (*(v31 + *(v30 + 48)) == 1)
  {
    if (v34)
    {
      if (v32 && *(v32 + 16))
      {
        v35 = v31[3];
        v36 = v31[2];
        if (v33)
        {
          v37 = v31[4];
        }

        v38 = v31[5];
LABEL_29:
        v72 = v31[5];

        v73 = sub_223800FD0();
        v74 = sub_223801060();

        v75 = sub_223801060();

        v76 = [objc_opt_self() destinationWithHomeName:v73 zoneNames:v74 roomNames:v75];

        v53 = v76;
LABEL_47:
        *(v0 + 864) = v53;
        v120 = [objc_opt_self() requestWithContent:*(v0 + 832) destination:v53];
        *(v0 + 872) = v120;
        v121 = [v53 type];

        if (!v121)
        {
          v122 = [v53 roomObjects];
          v123 = sub_223801070();

          v124 = *(v123 + 16);

          if (v124 || (v125 = [v53 zoneObjects], v126 = sub_223801070(), v125, v127 = *(v126 + 16), , v127))
          {
            v128 = *(v0 + 528);
            sub_2237F6C2C(*(v0 + 696));
            v129 = v53;
            v130 = sub_223800F80();
            v131 = sub_223801110();
            v132 = os_log_type_enabled(v130, v131);
            v133 = *(v0 + 824);
            v134 = *(v0 + 776);
            v135 = *(v0 + 696);
            v136 = *(v0 + 632);
            if (v132)
            {
              v203 = *(v0 + 696);
              v137 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v205 = v192;
              *v137 = 134349826;
              v138 = [v129 roomObjects];
              v197 = v136;
              v139 = MEMORY[0x277D84F70];
              v140 = v138;
              v141 = sub_223801070();

              v186 = v134;
              v142 = *(v141 + 16);

              *(v137 + 4) = v142;

              *(v137 + 12) = 2080;
              v143 = [v129 &selRef_stringFromDate_ + 1];
              v144 = sub_223801070();

              v145 = MEMORY[0x223DEBA40](v144, v139 + 8);
              v147 = v146;

              v148 = sub_2237EF884(v145, v147, &v205);

              *(v137 + 14) = v148;
              *(v137 + 22) = 2050;
              v149 = [v129 zoneObjects];
              v150 = sub_223801070();

              v151 = *(v150 + 16);

              *(v137 + 24) = v151;
              *(v137 + 32) = 2080;
              v152 = [v129 zoneObjects];
              v153 = sub_223801070();

              v154 = MEMORY[0x223DEBA40](v153, v139 + 8);
              v156 = v155;

              v157 = sub_2237EF884(v154, v156, &v205);

              *(v137 + 34) = v157;
              _os_log_impl(&dword_2237C8000, v130, v131, "Sending Announcement to Rooms (%{public}ld) = %s, Zones (%{public}ld) = %s ", v137, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x223DEC5C0](v192, -1, -1);
              MEMORY[0x223DEC5C0](v137, -1, -1);

              v186(v203, v197);
            }

            else
            {

              v134(v135, v136);
            }
          }

          else
          {
            v161 = *(v0 + 528);
            sub_2237F6C2C(*(v0 + 688));
            v162 = v53;
            v163 = sub_223800F80();
            v164 = sub_223801110();

            v165 = os_log_type_enabled(v163, v164);
            v166 = *(v0 + 776);
            v167 = *(v0 + 688);
            v168 = *(v0 + 632);
            if (v165)
            {
              v204 = *(v0 + 824);
              v169 = swift_slowAlloc();
              v198 = v166;
              v170 = swift_slowAlloc();
              v205 = v170;
              *v169 = 136315138;
              v171 = [v162 homeObject];
              sub_223801160();
              swift_unknownObjectRelease();
              v172 = sub_223800FF0();
              v174 = sub_2237EF884(v172, v173, &v205);

              *(v169 + 4) = v174;
              _os_log_impl(&dword_2237C8000, v163, v164, "[No Room or Zone Names] Sending Announcement to %s", v169, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v170);
              MEMORY[0x223DEC5C0](v170, -1, -1);
              MEMORY[0x223DEC5C0](v169, -1, -1);

              v198(v167, v168);
            }

            else
            {

              v166(v167, v168);
            }
          }
        }

        v158 = *(v0 + 528);
        v159 = sub_2237F62CC(*(v0 + 840), *(v0 + 848));
        *(v0 + 880) = v159;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_2237ED670;
        v160 = swift_continuation_init();
        *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A518, &qword_223804B18);
        *(v0 + 208) = MEMORY[0x277D85DD0];
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_2237EEF7C;
        *(v0 + 232) = &block_descriptor_6;
        *(v0 + 240) = v160;
        [v159 sendRequest:v120 completion:v0 + 208];

        return MEMORY[0x282200938](v0 + 16);
      }

      if (v33 && *(v33 + 16))
      {
        v68 = v31[3];
        v69 = v31[2];
        if (v32)
        {
          v70 = v31[5];
        }

        v71 = v31[4];
        goto LABEL_29;
      }
    }

    v77 = (v31 + *(v30 + 40));
    v78 = *v77;
    v79 = v77[1];
    if (v79)
    {
      v80 = *v77;
      v81 = v77[1];
      v82 = sub_223800FD0();
    }

    else
    {
      v82 = 0;
    }

    v98 = [objc_opt_self() destinationWithReplyToAnnouncementIdentifier_];

    if (!v79)
    {
      goto LABEL_43;
    }

    v99 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v99 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v99)
    {
      v100 = *(v0 + 720);
      v101 = *(v0 + 528);
      v53 = v98;
      sub_2237F6C2C(v100);

      v102 = sub_223800F80();
      v103 = sub_223801110();

      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 776);
      v106 = *(v0 + 720);
      v107 = *(v0 + 632);
      if (v104)
      {
        v202 = *(v0 + 824);
        v108 = swift_slowAlloc();
        v196 = v105;
        v109 = swift_slowAlloc();
        v205 = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_2237EF884(v78, v79, &v205);
        _os_log_impl(&dword_2237C8000, v102, v103, "Sending Reply to Announcement: %s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x223DEC5C0](v109, -1, -1);
        MEMORY[0x223DEC5C0](v108, -1, -1);

        v196(v106, v107);
      }

      else
      {

        v105(v106, v107);
      }
    }

    else
    {
LABEL_43:
      v110 = *(v0 + 712);
      v111 = *(v0 + 528);
      v53 = v98;
      sub_2237F6C2C(v110);
      v112 = sub_223800F80();
      v113 = sub_223801110();
      v114 = os_log_type_enabled(v112, v113);
      v115 = *(v0 + 824);
      v116 = *(v0 + 776);
      v117 = *(v0 + 712);
      v118 = *(v0 + 632);
      if (v114)
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_2237C8000, v112, v113, "Sending Reply to latest Announcement", v119, 2u);
        MEMORY[0x223DEC5C0](v119, -1, -1);
      }

      v116(v117, v118);
    }

    goto LABEL_47;
  }

  v39 = *(v0 + 848);
  v40 = *(v0 + 840);
  v41 = *(v0 + 528);
  v42 = sub_2237F0280(v31[2], v34, v31[4], v32);
  v43 = sub_2237F62CC(v40, v39);
  v44 = [v43 homeNamesForContext_];

  v45 = sub_223801070();
  if (v45[2] == 1)
  {
    v47 = v45[4];
    v46 = v45[5];

    v48 = sub_223800FD0();

    [v42 setHomeName_];

    v49 = [v42 homeName];
    if (!v49)
    {
      sub_223800FE0();
      v49 = sub_223800FD0();
    }

    v50 = [v42 zoneNames];
    if (!v50)
    {
      sub_223801070();
      v50 = sub_223801060();
    }

    v51 = [v42 roomNames];
    if (!v51)
    {
      sub_223801070();
      v51 = sub_223801060();
    }

    v52 = [objc_opt_self() destinationWithHomeName:v49 zoneNames:v50 roomNames:v51];

    v53 = v52;
    goto LABEL_47;
  }

  v54 = *(v0 + 528);
  sub_2237F6C2C(*(v0 + 704));

  v55 = sub_223800F80();
  v56 = sub_223801100();

  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 832);
  v59 = *(v0 + 776);
  v60 = *(v0 + 704);
  v61 = *(v0 + 632);
  if (v57)
  {
    v200 = *(v0 + 824);
    v62 = swift_slowAlloc();
    v194 = v59;
    v63 = swift_slowAlloc();
    v205 = v63;
    *v62 = 136315138;
    v187 = v60;
    v190 = v58;
    v64 = MEMORY[0x223DEBA40](v45, MEMORY[0x277D837D0]);
    v66 = v65;

    v67 = sub_2237EF884(v64, v66, &v205);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_2237C8000, v55, v56, "Did not find exactly one home for recipients: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x223DEC5C0](v63, -1, -1);
    MEMORY[0x223DEC5C0](v62, -1, -1);

    v194(v187, v61);
  }

  else
  {

    v59(v60, v61);
  }

  v83 = *(v0 + 512);
  v84 = *(v0 + 608) + 8;
  (*(v0 + 816))(*(v0 + 624), *(v0 + 600));
  *v83 = 4;
  v85 = MEMORY[0x277D84F90];
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  *(v83 + 8) = v85;
  v86 = *(v0 + 768);
  v87 = *(v0 + 760);
  v88 = *(v0 + 752);
  v89 = *(v0 + 744);
  v90 = *(v0 + 736);
  v91 = *(v0 + 728);
  v92 = *(v0 + 720);
  v93 = *(v0 + 712);
  v94 = *(v0 + 704);
  v95 = *(v0 + 696);
  v175 = *(v0 + 688);
  v176 = *(v0 + 680);
  v177 = *(v0 + 672);
  v178 = *(v0 + 664);
  v179 = *(v0 + 656);
  v180 = *(v0 + 648);
  v181 = *(v0 + 624);
  v182 = *(v0 + 616);
  v183 = *(v0 + 592);
  v185 = *(v0 + 584);
  v188 = *(v0 + 576);
  v191 = *(v0 + 568);
  v195 = *(v0 + 560);
  v201 = *(v0 + 552);

  v96 = *(v0 + 8);

  return v96();
}

uint64_t sub_2237ED670()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  if (v2)
  {
    v3 = sub_2237EE98C;
  }

  else
  {
    v3 = sub_2237ED780;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2237ED780()
{
  v94 = v0;
  v1 = *(v0 + 488);
  *(v0 + 896) = v1;
  v2 = [v1 deliveredAnnouncementID];
  if (!v2)
  {
    sub_223800FE0();
    v2 = sub_223800FD0();
  }

  *(v0 + 904) = v2;
  v3 = *(v0 + 680);
  v4 = *(v0 + 528);
  *(v0 + 912) = sub_223800FE0();
  *(v0 + 920) = v5;
  sub_2237F6C2C(v3);
  v6 = v1;
  v7 = sub_223800F80();
  v8 = sub_223801110();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 824);
  v11 = *(v0 + 776);
  v12 = *(v0 + 680);
  v13 = *(v0 + 632);
  if (v9)
  {
    v90 = v2;
    v14 = swift_slowAlloc();
    v87 = v12;
    v15 = swift_slowAlloc();
    v93 = v15;
    *v14 = 136315138;
    v16 = v6;
    v17 = [v16 description];
    v82 = v11;
    v18 = sub_223800FE0();
    v20 = v19;

    v21 = sub_2237EF884(v18, v20, &v93);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_2237C8000, v7, v8, "Announcement sent successfully! Result = %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DEC5C0](v15, -1, -1);
    v22 = v14;
    v2 = v90;
    MEMORY[0x223DEC5C0](v22, -1, -1);

    v82(v87, v13);
  }

  else
  {

    v11(v12, v13);
  }

  v23 = [*(v0 + 832) transcription];
  if (v23)
  {

    v24 = *(v0 + 832);
    v25 = *(v0 + 528);
    sub_2237F6C2C(*(v0 + 664));
    v26 = v24;
    v27 = sub_223800F80();
    v28 = sub_223801110();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 832);
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      v31 = [v29 transcription];
      if (v31)
      {

        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      v36 = *(v0 + 832);
      *(v30 + 4) = v32;

      _os_log_impl(&dword_2237C8000, v27, v28, "Transcription: %{BOOL}d", v30, 8u);
      MEMORY[0x223DEC5C0](v30, -1, -1);
      v35 = *(v0 + 832);
    }

    else
    {

      v35 = *(v0 + 832);
      v27 = v35;
    }

    v37 = *(v0 + 920);
    v38 = *(v0 + 912);
    v39 = *(v0 + 896);
    v40 = *(v0 + 824);
    v41 = *(v0 + 776);
    v42 = *(v0 + 664);
    v43 = *(v0 + 632);

    v41(v42, v43);
    v44 = [v39 destination];
    v45 = sub_2237EF0B0(v38, v37);

    v46 = [v35 transcription];
    v47 = *(v0 + 896);
    v48 = *(v0 + 880);
    v49 = *(v0 + 872);
    v50 = *(v0 + 864);
    v51 = *(v0 + 832);
    v52 = *(v0 + 624);
    v53 = *(v0 + 608);
    v54 = *(v0 + 600);
    if (v46)
    {
      v85 = *(v0 + 896);
      v91 = v45;
      v55 = v46;
      v88 = *(v0 + 816);
      v83 = *(v0 + 832);
      v56 = sub_223800FE0();
      v58 = v57;

      v45 = v91;
      v88(v52, v54);
    }

    else
    {
      (*(v0 + 816))(*(v0 + 624), *(v0 + 600));

      v56 = 0;
      v58 = 0;
    }

    v59 = *(v0 + 512);
    *v59 = 3;
    *(v59 + 8) = v45;
    *(v59 + 16) = v56;
    *(v59 + 24) = v58;
    v60 = *(v0 + 768);
    v61 = *(v0 + 760);
    v62 = *(v0 + 752);
    v63 = *(v0 + 744);
    v64 = *(v0 + 736);
    v65 = *(v0 + 728);
    v66 = *(v0 + 720);
    v67 = *(v0 + 712);
    v68 = *(v0 + 704);
    v69 = *(v0 + 696);
    v72 = *(v0 + 688);
    v73 = *(v0 + 680);
    v74 = *(v0 + 672);
    v75 = *(v0 + 664);
    v76 = *(v0 + 656);
    v77 = *(v0 + 648);
    v78 = *(v0 + 624);
    v79 = *(v0 + 616);
    v80 = *(v0 + 592);
    v81 = *(v0 + 584);
    v84 = *(v0 + 576);
    v86 = *(v0 + 568);
    v89 = *(v0 + 560);
    v92 = *(v0 + 552);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    v33 = *(v0 + 880);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 504;
    *(v0 + 88) = sub_2237EDE30;
    v34 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A508, &unk_223804AF8);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_2237E9F7C;
    *(v0 + 296) = &block_descriptor_9;
    *(v0 + 304) = v34;
    [v33 announcementForID:v2 reply:v0 + 272];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_2237EDE30()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237EDF10, 0, 0);
}

uint64_t sub_2237EDF10()
{
  v1 = v0[113];
  v2 = v0[63];
  v0[116] = v2;

  if (v2)
  {
    v3 = v0[66];
    sub_2237F6C2C(v0[84]);
    v4 = sub_223800F80();
    v5 = sub_223801110();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2237C8000, v4, v5, "Starting transcription", v6, 2u);
      MEMORY[0x223DEC5C0](v6, -1, -1);
    }

    v7 = v0[103];
    v8 = v0[97];
    v9 = v0[84];
    v10 = v0[79];

    v8(v9, v10);
    v0[18] = v0;
    v0[23] = v0 + 117;
    v0[19] = sub_2237EE490;
    v11 = swift_continuation_init();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A520, &qword_223804B20);
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_2237EF054;
    v0[45] = &block_descriptor_12;
    v0[46] = v11;
    [v2 processAudioTranscription_];

    return MEMORY[0x282200938](v0 + 18);
  }

  else
  {
    v12 = v0[104];
    v13 = v0[66];
    sub_2237F6C2C(v0[83]);
    v14 = v12;
    v15 = sub_223800F80();
    v16 = sub_223801110();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[104];
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      v19 = [v17 transcription];
      if (v19)
      {

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      v22 = v0[104];
      *(v18 + 4) = v20;

      _os_log_impl(&dword_2237C8000, v15, v16, "Transcription: %{BOOL}d", v18, 8u);
      MEMORY[0x223DEC5C0](v18, -1, -1);
      v21 = v0[104];
    }

    else
    {

      v21 = v0[104];
      v15 = v21;
    }

    v23 = v0[115];
    v24 = v0[114];
    v25 = v0[112];
    v26 = v0[103];
    v27 = v0[97];
    v28 = v0[83];
    v29 = v0[79];

    v27(v28, v29);
    v30 = [v25 destination];
    v31 = sub_2237EF0B0(v24, v23);

    v32 = [v21 transcription];
    v33 = v0[112];
    v34 = v0[110];
    v35 = v0[109];
    v36 = v0[108];
    v37 = v0[104];
    v38 = v0[78];
    v39 = v0[76];
    v40 = v0[75];
    if (v32)
    {
      v70 = v0[112];
      v72 = v0[102];
      v74 = v31;
      v41 = v32;
      v68 = v0[104];
      v42 = sub_223800FE0();
      v44 = v43;

      v31 = v74;
      v72(v38, v40);
    }

    else
    {
      (v0[102])(v0[78], v0[75]);

      v42 = 0;
      v44 = 0;
    }

    v45 = v0[64];
    *v45 = 3;
    *(v45 + 8) = v31;
    *(v45 + 16) = v42;
    *(v45 + 24) = v44;
    v46 = v0[96];
    v47 = v0[95];
    v48 = v0[94];
    v49 = v0[93];
    v50 = v0[92];
    v51 = v0[91];
    v52 = v0[90];
    v53 = v0[89];
    v54 = v0[88];
    v55 = v0[87];
    v58 = v0[86];
    v59 = v0[85];
    v60 = v0[84];
    v61 = v0[83];
    v62 = v0[82];
    v63 = v0[81];
    v64 = v0[78];
    v65 = v0[77];
    v66 = v0[74];
    v67 = v0[73];
    v69 = v0[72];
    v71 = v0[71];
    v73 = v0[70];
    v75 = v0[69];

    v56 = v0[1];

    return v56();
  }
}

uint64_t sub_2237EE490()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237EE570, 0, 0);
}

uint64_t sub_2237EE570()
{
  v1 = v0[116];
  v2 = v0[104];
  v3 = [v1 transcriptionText];
  [v2 setTranscription_];

  v4 = v0[104];
  v5 = v0[66];
  sub_2237F6C2C(v0[83]);
  v6 = v4;
  v7 = sub_223800F80();
  v8 = sub_223801110();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[104];
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = [v9 transcription];
    if (v11)
    {

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    v14 = v0[104];
    *(v10 + 4) = v12;

    _os_log_impl(&dword_2237C8000, v7, v8, "Transcription: %{BOOL}d", v10, 8u);
    MEMORY[0x223DEC5C0](v10, -1, -1);
    v13 = v0[104];
  }

  else
  {

    v13 = v0[104];
    v7 = v13;
  }

  v15 = v0[115];
  v16 = v0[114];
  v17 = v0[112];
  v18 = v0[103];
  v19 = v0[97];
  v20 = v0[83];
  v21 = v0[79];

  v19(v20, v21);
  v22 = [v17 destination];
  v23 = sub_2237EF0B0(v16, v15);

  v24 = [v13 transcription];
  v25 = v0[112];
  v26 = v0[110];
  v27 = v0[109];
  v28 = v0[108];
  v29 = v0[104];
  v30 = v0[78];
  v31 = v0[76];
  v32 = v0[75];
  if (v24)
  {
    v62 = v0[112];
    v64 = v0[102];
    v66 = v23;
    v33 = v24;
    v60 = v0[104];
    v34 = sub_223800FE0();
    v36 = v35;

    v23 = v66;
    v64(v30, v32);
  }

  else
  {
    (v0[102])(v0[78], v0[75]);

    v34 = 0;
    v36 = 0;
  }

  v37 = v0[64];
  *v37 = 3;
  *(v37 + 8) = v23;
  *(v37 + 16) = v34;
  *(v37 + 24) = v36;
  v38 = v0[96];
  v39 = v0[95];
  v40 = v0[94];
  v41 = v0[93];
  v42 = v0[92];
  v43 = v0[91];
  v44 = v0[90];
  v45 = v0[89];
  v46 = v0[88];
  v47 = v0[87];
  v50 = v0[86];
  v51 = v0[85];
  v52 = v0[84];
  v53 = v0[83];
  v54 = v0[82];
  v55 = v0[81];
  v56 = v0[78];
  v57 = v0[77];
  v58 = v0[74];
  v59 = v0[73];
  v61 = v0[72];
  v63 = v0[71];
  v65 = v0[70];
  v67 = v0[69];

  v48 = v0[1];

  return v48();
}

uint64_t sub_2237EE98C()
{
  v62 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 648);
  v4 = *(v0 + 528);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v5 = v1;
  v6 = sub_223800F80();
  v7 = sub_223801100();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 888);
    v55 = *(v0 + 872);
    v57 = *(v0 + 864);
    v59 = *(v0 + 832);
    v51 = *(v0 + 776);
    v53 = *(v0 + 824);
    v9 = *(v0 + 648);
    v10 = *(v0 + 632);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v61[0] = v12;
    *v11 = 136446466;
    swift_getErrorValue();
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v15 = *(v0 + 472);
    v16 = sub_223801290();
    v18 = sub_2237EF884(v16, v17, v61);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_2237EF884(0x6572756C696166, 0xE700000000000000, v61);
    _os_log_impl(&dword_2237C8000, v6, v7, "Send Announcement failed with error: %{public}s, Intent Response Code: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DEC5C0](v12, -1, -1);
    MEMORY[0x223DEC5C0](v11, -1, -1);

    v51(v9, v10);
  }

  else
  {
    v19 = *(v0 + 888);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    v22 = *(v0 + 832);
    v23 = *(v0 + 824);
    v24 = *(v0 + 776);
    v25 = *(v0 + 648);
    v26 = *(v0 + 632);

    v24(v25, v26);
  }

  v27 = *(v0 + 512);
  v28 = *(v0 + 608) + 8;
  (*(v0 + 816))(*(v0 + 624), *(v0 + 600));
  *v27 = 4;
  v29 = MEMORY[0x277D84F90];
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 8) = v29;
  v30 = *(v0 + 768);
  v31 = *(v0 + 760);
  v32 = *(v0 + 752);
  v33 = *(v0 + 744);
  v34 = *(v0 + 736);
  v35 = *(v0 + 728);
  v36 = *(v0 + 720);
  v37 = *(v0 + 712);
  v38 = *(v0 + 704);
  v39 = *(v0 + 696);
  v42 = *(v0 + 688);
  v43 = *(v0 + 680);
  v44 = *(v0 + 672);
  v45 = *(v0 + 664);
  v46 = *(v0 + 656);
  v47 = *(v0 + 648);
  v48 = *(v0 + 624);
  v49 = *(v0 + 616);
  v50 = *(v0 + 592);
  v52 = *(v0 + 584);
  v54 = *(v0 + 576);
  v56 = *(v0 + 568);
  v58 = *(v0 + 560);
  v60 = *(v0 + 552);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2237EED68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223800FA0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237EEE28, 0, 0);
}

uint64_t sub_2237EEE28()
{
  v1 = v0[3];
  sub_2237F6C2C(v0[6]);
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "Skipping MU Check", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  (*(v6 + 8))(v5, v7);
  v9 = sub_223800F40();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2237EEF7C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A580, &qword_223804CF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2237EF054(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

char *sub_2237EF0B0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 type];
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    return result;
  }

  v7 = [v2 homeObject];
  sub_223801160();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = [v2 roomObjects];
  v9 = sub_223801070();

  v10 = sub_2237EF770(v9);

  if (!v10)
  {
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v11 = [v2 zoneObjects];
  v12 = sub_223801070();

  v13 = sub_2237EF770(v12);

  if (!v13)
  {

    goto LABEL_15;
  }

  v39 = MEMORY[0x277D84F90];
  v34 = a1;
  if (*(v10 + 16) || *(v13 + 16))
  {

    v14 = *(v10 + 16);
    v33 = v13;
    if (v14)
    {
      v36 = MEMORY[0x277D84F90];
      sub_2237FBDF0(0, v14, 0);
      v15 = v36;
      v16 = (v10 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v20 = *(v36 + 16);
        v19 = *(v36 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_2237FBDF0((v19 > 1), v20 + 1, 1);
        }

        *(v36 + 16) = v20 + 1;
        v21 = v36 + 56 * v20;
        *(v21 + 32) = v34;
        *(v21 + 40) = a2;
        *(v21 + 48) = 0;
        *(v21 + 56) = 1;
        *(v21 + 64) = v17;
        *(v21 + 72) = v18;
        *(v21 + 80) = 1;
        v16 += 2;
        --v14;
      }

      while (v14);

      v13 = v33;
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_2237EF678(v15);
    v22 = *(v13 + 16);
    if (v22)
    {
      v37 = MEMORY[0x277D84F90];
      sub_2237FBDF0(0, v22, 0);
      v23 = v37;
      v24 = (v13 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v28 = *(v37 + 16);
        v27 = *(v37 + 24);

        if (v28 >= v27 >> 1)
        {
          sub_2237FBDF0((v27 > 1), v28 + 1, 1);
        }

        *(v37 + 16) = v28 + 1;
        v29 = v37 + 56 * v28;
        *(v29 + 32) = v34;
        *(v29 + 40) = a2;
        *(v29 + 48) = 0;
        *(v29 + 56) = 1;
        *(v29 + 64) = v25;
        *(v29 + 72) = v26;
        *(v29 + 80) = 2;
        v24 += 2;
        --v22;
      }

      while (v22);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    sub_2237EF678(v23);
    return v39;
  }

  else
  {

    result = sub_2237FBADC(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(result + 2);
    v30 = *(result + 3);
    if (v31 >= v30 >> 1)
    {
      result = sub_2237FBADC((v30 > 1), v31 + 1, 1, result);
    }

    *(result + 2) = v31 + 1;
    v32 = &result[56 * v31];
    *(v32 + 4) = v34;
    *(v32 + 5) = a2;
    *(v32 + 6) = 0;
    v32[56] = 1;
    *(v32 + 8) = v35;
    *(v32 + 9) = v38;
    v32[80] = 0;
  }

  return result;
}

id SendAnnouncementIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendAnnouncementIntentPerformer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendAnnouncementIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id SendAnnouncementIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendAnnouncementIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2237EF584(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2237FB9D0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_2237EF678(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2237FBADC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_2237EF770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2237FBE10(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2237F01C8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2237FBE10((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2237EF884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2237EF950(v11, 0, 0, 1, a1, a2);
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
    sub_2237F01C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2237EF950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2237EFA5C(a5, a6);
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
    result = sub_2238011F0();
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

uint64_t sub_2237EFA5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2237EFAA8(a1, a2);
  sub_2237EFBD8(&unk_2836D9928);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2237EFAA8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2237EFCC4(v5, 0);
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

  result = sub_2238011F0();
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
        v10 = sub_223801040();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2237EFCC4(v10, 0);
        result = sub_2238011B0();
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

uint64_t sub_2237EFBD8(uint64_t result)
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

  result = sub_2237EFD38(result, v12, 1, v3);
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

void *sub_2237EFCC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A588, &qword_223804CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2237EFD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A588, &qword_223804CF8);
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

uint64_t sub_2237EFE4C()
{
  v1 = v0[2];
  v2 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v3 = sub_223800EF0();
  v0[3] = [v2 initWithURL:v3 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A590, &qword_223804D00);
  v4 = sub_223800F50();
  v0[4] = v4;
  v5 = *(MEMORY[0x277D82DC0] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2237EFF58;

  return MEMORY[0x2821FAF00](v0 + 7, v4, 0, 0);
}

uint64_t sub_2237EFF58()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2237F0100;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2237F0074;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2237F0074()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);
  *(v0 + 80) = *(v0 + 56);
  *(v0 + 88) = v3;
  *(v0 + 96) = v2;
  Seconds = CMTimeGetSeconds((v0 + 80));

  v5 = *(v0 + 8);
  v6.n128_f64[0] = Seconds;

  return v5(v6);
}

uint64_t sub_2237F0100()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
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

uint64_t sub_2237F01C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2237F022C()
{
  result = qword_27D09A510;
  if (!qword_27D09A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A510);
  }

  return result;
}

void *sub_2237F0280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(ANHomeContext) init];
  v8 = a2;
  v9 = v7;
  if (v8)
  {
    v10 = sub_223800FD0();
    [v9 setHomeName_];
  }

  if (a3)
  {
    v11 = sub_223801060();
    [v9 setRoomNames_];
  }

  if (a4)
  {
    v12 = sub_223801060();
    [v9 setZoneNames_];
  }

  return v9;
}

uint64_t sub_2237F0360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2237F03C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2237F0428(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2237F0464()
{
  result = qword_27D09A538;
  if (!qword_27D09A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SendAnnouncementIntentError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2237F063C()
{
  sub_2237F06F0();
  if (v0 <= 0x3F)
  {
    sub_2237F0740();
    if (v1 <= 0x3F)
    {
      sub_2237F07A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2237F06F0()
{
  if (!qword_27D09A550)
  {
    v0 = sub_223801140();
    if (!v1)
    {
      atomic_store(v0, &qword_27D09A550);
    }
  }
}

void sub_2237F0740()
{
  if (!qword_27D09A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A560, "&|");
    v0 = sub_223801140();
    if (!v1)
    {
      atomic_store(v0, &qword_27D09A558);
    }
  }
}

void sub_2237F07A4()
{
  if (!qword_27D09A568)
  {
    sub_223800F00();
    v0 = sub_223801140();
    if (!v1)
    {
      atomic_store(v0, &qword_27D09A568);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2237F0808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2237F0850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SendAnnouncementIntentPerformer.resolveAnnouncement(endpointID:announcementID:speechDataURL:isReply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_2237F0E1C;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of SendAnnouncementIntentPerformer.performIntent(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2237F0BFC;

  return v10(a1, a2);
}

uint64_t sub_2237F0BFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2237F0D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2237F0D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ANAnnouncePlaybackState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E69726170657270;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7075727265746E69;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E6979616C70;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x646570706F7473;
  }
}

uint64_t sub_2237F0ED0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6E69726170657270;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7075727265746E69;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E6979616C70;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x646570706F7473;
  }
}

uint64_t AnnounceService.__allocating_init(logger:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223800FA0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  v11 = swift_allocObject();
  v12 = v5[2];
  v12(v11 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, a1, v4);
  v12(v8, a1, v4);
  v13 = type metadata accessor for AnnouncePlaybackHelper();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession] = 0;
  *&v14[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer] = 0;
  v12(&v14[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_logger], v8, v4);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v5[1];
  v16(a1, v4);
  v16(v8, v4);
  *(v11 + OBJC_IVAR____TtC8Announce15AnnounceService_helper) = v15;
  return v11;
}

uint64_t AnnounceService.init(logger:)(uint64_t a1)
{
  v3 = sub_223800FA0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[2];
  v8(v1 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, a1, v3);
  v8(v7, a1, v3);
  v9 = type metadata accessor for AnnouncePlaybackHelper();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession] = 0;
  *&v10[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer] = 0;
  v8(&v10[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_logger], v7, v3);
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v4[1];
  v12(a1, v3);
  v12(v7, v3);
  *(v1 + OBJC_IVAR____TtC8Announce15AnnounceService_helper) = v11;
  return v1;
}

uint64_t AnnounceService.deinit()
{
  v1 = OBJC_IVAR____TtC8Announce15AnnounceService_logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AnnounceService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Announce15AnnounceService_logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AnnounceService.playAnnouncementSentTone(endpointID:audioSessionID:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 88) = a3;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2237F1428, 0, 0);
}

uint64_t sub_2237F1428()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC8Announce15AnnounceService_helper);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2237F14D0;
  v3 = *(v0 + 88);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  return sub_2237FCAA8(v5, v4, v3);
}

uint64_t sub_2237F14D0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2237F1604, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2237F1604()
{
  v19 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_223800F80();
  v5 = sub_223801100();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_223801290();
    v14 = sub_2237EF884(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2237C8000, v4, v5, "Failed to Play Announcement Sound: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DEC5C0](v8, -1, -1);
    MEMORY[0x223DEC5C0](v7, -1, -1);
  }

  else
  {
    v15 = v0[10];
  }

  v16 = v0[1];

  return v16();
}

uint64_t AnnounceService.stopAnnouncement(endpointID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2237F17B4, 0, 0);
}

uint64_t sub_2237F17B4()
{
  v22 = v0;
  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_223800F80();
  v4 = sub_223801110();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v0[3] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A598, &unk_223805380);
    v9 = sub_223800FF0();
    v11 = sub_2237EF884(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2237C8000, v3, v4, "EndpointID = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DEC5C0](v8, -1, -1);
    MEMORY[0x223DEC5C0](v7, -1, -1);
  }

  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  v15 = *(v13 + OBJC_IVAR____TtC8Announce15AnnounceService_helper);
  v16 = sub_2237FD0F4();
  v0[7] = v16;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v13;
  v18 = *(MEMORY[0x277D859E0] + 4);
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_2237F19EC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2237F19EC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2237F1B04, 0, 0);
}

uint64_t sub_2237F1B04()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2237F1B64(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() stopCommand];
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_2237F21E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237F469C;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [a2 sendPlaybackCommand:v9 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2237F1D74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_223800FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v6 + 16))(v12, Strong + OBJC_IVAR____TtC8Announce15AnnounceService_logger, v5);
      v14 = a1;

      v15 = a1;
      v16 = sub_223800F80();
      v17 = sub_223801100();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v29[1] = a3;
        v19 = v18;
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_223801290();
        v23 = sub_2237EF884(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2237C8000, v16, v17, "Stop Announcement failed with error: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223DEC5C0](v20, -1, -1);
        MEMORY[0x223DEC5C0](v19, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v12, v5);
    }
  }

  else
  {
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (v24)
    {
      (*(v6 + 16))(v10, v24 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, v5);

      v25 = sub_223800F80();
      v26 = sub_223801110();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2237C8000, v25, v26, "Stop Announcement completed successfully", v27, 2u);
        MEMORY[0x223DEC5C0](v27, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  return sub_2238010C0();
}

uint64_t type metadata accessor for AnnounceService()
{
  result = qword_27D09A5A0;
  if (!qword_27D09A5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237F2118()
{
  result = sub_223800FA0();
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

uint64_t sub_2237F21E0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2237F1D74(a1, v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F2278(void *a1)
{
  v1 = a1;
  v2 = [v1 processName];
  v3 = sub_223800FE0();
  v5 = v4;

  v6 = v3 == 0x616F42646E756F53 && v5 == 0xEA00000000006472;
  if (v6 || (sub_223801270() & 1) != 0 || (v3 == 0x64627568656D6F68 ? (v7 = v5 == 0xE800000000000000) : (v7 = 0), v7))
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_223801270();
  }

  return v8 & 1;
}

uint64_t NSProcessInfo.isAutoPlaybackProcess.getter()
{
  v1 = [v0 processName];
  v2 = sub_223800FE0();
  v4 = v3;

  v5 = v2 == 0x616F42646E756F53 && v4 == 0xEA00000000006472;
  if (v5 || (sub_223801270() & 1) != 0 || (v2 == 0x64627568656D6F68 ? (v6 = v4 == 0xE800000000000000) : (v6 = 0), v6))
  {

    return 1;
  }

  else
  {
    v7 = sub_223801270();

    return v7 & 1;
  }
}

uint64_t sub_2237F2460()
{
  type metadata accessor for ReadAnnouncementHistory();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  off_27D09A5B8 = result;
  return result;
}

uint64_t static ReadAnnouncementHistory.shared.getter()
{
  if (qword_27D09A400 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2237F24F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_2237F2554()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2237F258C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ReadAnnouncementHistory.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ReadAnnouncementHistory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2237F2744(_BYTE *a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 184) = a4;
  *(v5 + 192) = v4;
  *(v5 + 176) = a3;
  *(v5 + 296) = a2;
  v7 = sub_223800FA0();
  *(v5 + 200) = v7;
  v8 = *(v7 - 8);
  *(v5 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08) - 8) + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 300) = *a1;

  return MEMORY[0x2822009F8](sub_2237F2874, 0, 0);
}

uint64_t sub_2237F2874()
{
  v1 = *(v0 + 248);
  if (*(v0 + 300) == 1)
  {
    v2 = *(v0 + 184);
    v3 = [objc_allocWithZone(ANTonePlayerService) init];
    *(v0 + 256) = v3;
    v4 = sub_223800F40();
    v5 = *(v4 - 8);
    (*(v5 + 56))(v1, 1, 1, v4);
    if (v2)
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v8 = *(v0 + 176);
      v9 = *(v0 + 184);
      sub_223800F10();
      sub_2237F3198(v6);
      sub_2237F32E8(v7, v6);
    }

    v10 = *(v0 + 192);
    sub_2237F6C2C(*(v0 + 224));
    v11 = sub_223800F80();
    v12 = sub_223801110();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 296);
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_2237C8000, v11, v12, "Siri Audio Session ID: %u", v14, 8u);
      MEMORY[0x223DEC5C0](v14, -1, -1);
    }

    v15 = *(v0 + 248);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);

    v20 = *(v19 + 8);
    *(v0 + 264) = v20;
    *(v0 + 272) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v17, v18);
    sub_2237F3064(v15, v16);
    if ((*(v5 + 48))(v16, 1, v4) == 1)
    {
      v21 = 0;
    }

    else
    {
      v29 = *(v0 + 232);
      v21 = sub_223800F20();
      (*(v5 + 8))(v29, v4);
    }

    *(v0 + 280) = v21;
    v30 = *(v0 + 296);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2237F2C24;
    v31 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2237F30D4;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v31;
    [v3 playTone:0 audioSessionID:v30 endpointUUID:v21 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    sub_2237F3010();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2237F2C24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_2237F2DE0;
  }

  else
  {
    v3 = sub_2237F2D34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2237F2D34()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);

  sub_2237F3198(v2);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2237F2DE0()
{
  v38 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v5 = v1;
  v6 = sub_223800F80();
  v7 = sub_223801100();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v35 = *(v0 + 248);
    v36 = *(v0 + 272);
    v33 = *(v0 + 216);
    v34 = *(v0 + 264);
    v10 = *(v0 + 200);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = sub_223801290();
    v18 = sub_2237EF884(v16, v17, &v37);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2237C8000, v6, v7, "Failed to Play Announcement Sound: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DEC5C0](v12, -1, -1);
    MEMORY[0x223DEC5C0](v11, -1, -1);

    v34(v33, v10);
    v19 = v35;
  }

  else
  {
    v20 = *(v0 + 288);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);

    v22(v24, v25);
    v19 = v23;
  }

  sub_2237F3198(v19);
  v27 = *(v0 + 240);
  v26 = *(v0 + 248);
  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  v30 = *(v0 + 216);

  v31 = *(v0 + 8);

  return v31();
}

unint64_t sub_2237F3010()
{
  result = qword_27D09A5C0;
  if (!qword_27D09A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5C0);
  }

  return result;
}

uint64_t sub_2237F3064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237F30D4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A580, &qword_223804CF0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2237F3198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PlayAnnouncementSoundIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayAnnouncementSoundIntentPerformer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayAnnouncementSoundIntentPerformer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlayAnnouncementSoundIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayAnnouncementSoundIntentPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2237F32E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PlayAnnouncementSoundIntentPerformer()
{
  result = qword_27D09A5C8;
  if (!qword_27D09A5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PlayAnnouncementSoundIntentPerformer.performIntent(soundType:siriAudioSessionID:endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xF8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2237F0BFC;

  return v14(a1, a2, a3, a4);
}

unint64_t AnnouncementRecord.Originator.description.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = 1836019538;
    }

    else
    {
      v1 = 1701736282;
    }
  }

  else
  {
    v1 = 1701670728;
  }

  v3 = v1 & 0xFFFF0000FFFFFFFFLL | 0x282000000000;
  MEMORY[0x223DEB9F0](*v0, *(v0 + 8));
  MEMORY[0x223DEB9F0](41, 0xE100000000000000);
  return v3;
}

uint64_t AnnouncementRecord.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnnouncementRecord.duration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AnnouncementRecord.originator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_2237F3600(v2, v3, v4);
}

uint64_t sub_2237F3600(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2237F3614(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2237F3614(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t AnnouncementRecord.description.getter()
{
  v1 = 1701736302;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  sub_2238011C0();
  MEMORY[0x223DEB9F0](0x696669746E656469, 0xEC000000203A7265);
  if (v3)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  v10 = 0xE400000000000000;
  if (!v3)
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x223DEB9F0](v9, v3);

  MEMORY[0x223DEB9F0](0x6F6974617275640ALL, 0xEB00000000203A6ELL);
  sub_2238010F0();
  MEMORY[0x223DEB9F0](0x616E696769726F0ALL, 0xED0000203A726F74);
  if (v8 != 255)
  {
    v1 = AnnouncementRecord.Originator.description.getter();
    v10 = v11;
  }

  MEMORY[0x223DEB9F0](v1, v10);

  return 0;
}

uint64_t AnnouncementRecord.originatorName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v3 == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 32);
  }

  if (v3 != 255)
  {
    v5 = *(v0 + 40);
  }

  sub_2237F3600(v1, v2, v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_8Announce18AnnouncementRecordV10OriginatorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2237F3820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_2237F387C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237F3904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237F394C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2237F39AC()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x73736563637573;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7964616572;
  if (v1 != 1)
  {
    v5 = 0x6572676F72506E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Announce::ReadAnnouncementIntentResponseCode_optional __swiftcall ReadAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237F3B14()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_223801020();
}

void sub_2237F3C44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xD000000000000019;
  v6 = 0x80000002238095E0;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001CLL;
    v6 = 0x8000000223809780;
  }

  v7 = 0x73736563637573;
  if (v2 != 3)
  {
    v7 = 0x6572756C696166;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE700000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7964616572;
  if (v2 != 1)
  {
    v9 = 0x6572676F72506E69;
    v8 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2237F3D7C(uint64_t a1)
{
  v2 = sub_2237F43E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237F3DCC(uint64_t a1)
{
  v2 = sub_2237F4340();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t _s8Announce34ReadAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A648, &qword_223805370);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A650, &qword_223805378);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_223805050;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_223800E60();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_223800E60();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_223800E60();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_223800E60();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_223800E60();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_223800E60();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_223800E60();
  v12 = sub_2237F8B40(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

unint64_t sub_2237F4078()
{
  result = qword_27D09A5D8;
  if (!qword_27D09A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5D8);
  }

  return result;
}

unint64_t sub_2237F40D0()
{
  result = qword_27D09A5E0;
  if (!qword_27D09A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A5E8, &qword_223805100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5E0);
  }

  return result;
}

unint64_t sub_2237F4138()
{
  result = qword_27D09A5F0;
  if (!qword_27D09A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5F0);
  }

  return result;
}

unint64_t sub_2237F4190()
{
  result = qword_27D09A5F8;
  if (!qword_27D09A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5F8);
  }

  return result;
}

unint64_t sub_2237F41E8()
{
  result = qword_27D09A600;
  if (!qword_27D09A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A600);
  }

  return result;
}

unint64_t sub_2237F4240()
{
  result = qword_27D09A608;
  if (!qword_27D09A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A608);
  }

  return result;
}

unint64_t sub_2237F4294()
{
  result = qword_27D09A610;
  if (!qword_27D09A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A610);
  }

  return result;
}

unint64_t sub_2237F42E8()
{
  result = qword_27D09A618;
  if (!qword_27D09A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A618);
  }

  return result;
}

unint64_t sub_2237F4340()
{
  result = qword_27D09A620;
  if (!qword_27D09A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A620);
  }

  return result;
}

unint64_t sub_2237F43E4()
{
  result = qword_27D09A628;
  if (!qword_27D09A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A628);
  }

  return result;
}

unint64_t sub_2237F443C()
{
  result = qword_27D09A630;
  if (!qword_27D09A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A630);
  }

  return result;
}

unint64_t sub_2237F4494()
{
  result = qword_27D09A638;
  if (!qword_27D09A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A638);
  }

  return result;
}

unint64_t sub_2237F44EC()
{
  result = qword_27D09A640;
  if (!qword_27D09A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2237F469C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2237F4724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_223800FA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237F6C2C(v12);

  v13 = sub_223800F80();
  v14 = sub_223801110();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = a3;
    v35 = v17;
    v32 = v17;
    *v16 = 136315138;
    aBlock = a1;
    v37 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A598, &unk_223805380);
    v18 = sub_223800FF0();
    v20 = sub_2237EF884(v18, v19, &v35);
    v31 = v8;
    v21 = a4;
    v22 = v20;

    *(v16 + 4) = v22;
    a4 = v21;
    _os_log_impl(&dword_2237C8000, v13, v14, "EndpointID = %s", v16, 0xCu);
    v23 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    v24 = v23;
    a3 = v34;
    MEMORY[0x223DEC5C0](v24, -1, -1);
    MEMORY[0x223DEC5C0](v16, -1, -1);

    (*(v33 + 8))(v12, v31);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_2237F6E84(a1, a2);
  v26 = [objc_opt_self() stopCommand];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a3;
  v28[4] = a4;
  v40 = sub_2237F4EE8;
  v41 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2237F469C;
  v39 = &block_descriptor_2;
  v29 = _Block_copy(&aBlock);

  [v25 sendPlaybackCommand:v26 completionHandler:v29];
  _Block_release(v29);
}

void sub_2237F4A74(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_223800FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v56 = a4;
    if (a1)
    {
      v20 = Strong;
      v21 = a1;
      sub_2237F6C2C(v15);

      v22 = a1;
      v23 = sub_223800F80();
      v24 = sub_223801100();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v54 = v7;
        v26 = v25;
        v27 = swift_slowAlloc();
        v55 = a3;
        v28 = v27;
        v57[0] = v27;
        *v26 = 136315138;
        swift_getErrorValue();
        v29 = sub_223801290();
        v31 = sub_2237EF884(v29, v30, v57);
        v53 = v8;
        v32 = v31;

        *(v26 + 4) = v32;
        _os_log_impl(&dword_2237C8000, v23, v24, "Stop Announcement failed with error: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v33 = v28;
        a3 = v55;
        MEMORY[0x223DEC5C0](v33, -1, -1);
        v34 = v26;
        v7 = v54;
        MEMORY[0x223DEC5C0](v34, -1, -1);

        v35 = v53;
      }

      else
      {

        v35 = v8;
      }

      v44 = *(v35 + 8);
      v44(v15, v7);
    }

    else
    {
      v36 = Strong;
      sub_2237F6C2C(v17);

      v37 = sub_223800F80();
      v38 = sub_223801110();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v8;
        v40 = v7;
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2237C8000, v37, v38, "Stop Announcement completed successfully", v41, 2u);
        v42 = v41;
        v7 = v40;
        MEMORY[0x223DEC5C0](v42, -1, -1);

        v43 = v39;
      }

      else
      {

        v43 = v8;
      }

      v44 = *(v43 + 8);
      v44(v17, v7);
    }

    v45 = v19;
    sub_2237F6C2C(v12);

    v46 = sub_223800F80();
    v47 = sub_223801110();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v7;
      v49 = a3;
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (qword_27D09A400 != -1)
      {
        swift_once();
      }

      v51 = off_27D09A5B8;
      swift_beginAccess();
      *(v50 + 4) = *(v51[2] + 16);
      _os_log_impl(&dword_2237C8000, v46, v47, "Records in Stop Response: %ld", v50, 0xCu);
      MEMORY[0x223DEC5C0](v50, -1, -1);
      a3 = v49;
      v7 = v48;
    }

    v44(v12, v7);
    v58 = 3;
    a3(&v58);
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2237F4F30, 0, 0);
}

uint64_t sub_2237F4F30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2237F5038;
  v7 = v0[2];

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000011, 0x8000000223809C30, sub_2237F5390, v4, &type metadata for StopAnnouncementIntentResponseCode);
}

uint64_t sub_2237F5038()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2237F5148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_2237F4724(a3, a4, sub_2237F5590, v13);
}

id StopAnnouncementIntentPerfomer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StopAnnouncementIntentPerfomer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentPerfomer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StopAnnouncementIntentPerfomer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentPerfomer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StopAnnouncementIntentPerfomer()
{
  result = qword_27D09A658;
  if (!qword_27D09A658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StopAnnouncementIntentPerfomer.performIntent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x100);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2237F0BFC;

  return v12(a1, a2, a3);
}

uint64_t sub_2237F5590(char *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  return sub_2238010C0();
}

Announce::AnnouncementSoundType_optional __swiftcall AnnouncementSoundType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AnnouncementSoundType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_2237F56E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x80000002238097B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = 0x80000002238097B0;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_223801270();
  }

  return v9 & 1;
}

uint64_t sub_2237F5794()
{
  v1 = *v0;
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F581C()
{
  *v0;
  sub_223801020();
}

uint64_t sub_2237F5890()
{
  v1 = *v0;
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F5914@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_223801240();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2237F5974(unint64_t *a1@<X8>)
{
  v2 = 0x80000002238097B0;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2237F59E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A6E8, &qword_2238056A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A6F0, &unk_2238056A8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2238053D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_223800E60();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_223800E60();
  v7 = sub_2237F8D28(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D09A670 = v7;
  return result;
}

uint64_t static AnnouncementSoundType.caseDisplayRepresentations.getter()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AnnouncementSoundType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27D09A670 = a1;
}

uint64_t (*static AnnouncementSoundType.caseDisplayRepresentations.modify())()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}