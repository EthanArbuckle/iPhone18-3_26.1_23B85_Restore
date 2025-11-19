uint64_t sub_23F5276C0()
{
  MEMORY[0x245CB0620](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23F5276F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23F527730()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23F527794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA00, &qword_23F58D748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_23F52789C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23F527904()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23F527958()
{
  MEMORY[0x245CB0620](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23F527990()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23F5279D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23F527A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_23F527A90()
{
  MEMORY[0x245CB0620](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23F527B48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1F8, &unk_23F58EED0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id ANLogHandleANAnalyticsDailyAnnouncements()
{
  if (ANLogHandleANAnalyticsDailyAnnouncements_once != -1)
  {
    ANLogHandleANAnalyticsDailyAnnouncements_cold_1();
  }

  v1 = ANLogHandleANAnalyticsDailyAnnouncements_logger;

  return v1;
}

uint64_t __ANLogHandleANAnalyticsDailyAnnouncements_block_invoke()
{
  ANLogHandleANAnalyticsDailyAnnouncements_logger = os_log_create("com.apple.intercom", "ANAnalyticsDailyAnnouncements");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleUserNotificationsController()
{
  if (ANLogHandleUserNotificationsController_once != -1)
  {
    ANLogHandleUserNotificationsController_cold_1();
  }

  v1 = ANLogHandleUserNotificationsController_logger;

  return v1;
}

void sub_23F52E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F52E5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleUserNotificationsController_block_invoke()
{
  ANLogHandleUserNotificationsController_logger = os_log_create("com.apple.intercom", "UserNotificationsController");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnounceServiceListener()
{
  if (ANLogHandleAnnounceServiceListener_once != -1)
  {
    ANLogHandleAnnounceServiceListener_cold_1();
  }

  v1 = ANLogHandleAnnounceServiceListener_logger;

  return v1;
}

void sub_23F530794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAnnounceServiceListener_block_invoke()
{
  ANLogHandleAnnounceServiceListener_logger = os_log_create("com.apple.intercom", "AnnounceServiceListener");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandlePlaybackSessionServiceListener()
{
  if (ANLogHandlePlaybackSessionServiceListener_once != -1)
  {
    ANLogHandlePlaybackSessionServiceListener_cold_1();
  }

  v1 = ANLogHandlePlaybackSessionServiceListener_logger;

  return v1;
}

void sub_23F5336D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 176));
  objc_destroyWeak((v3 - 168));
  _Unwind_Resume(a1);
}

void sub_23F533A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F5340D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __ANLogHandlePlaybackSessionServiceListener_block_invoke()
{
  ANLogHandlePlaybackSessionServiceListener_logger = os_log_create("com.apple.intercom", "PlaybackSessionServiceListener");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleSystemNotificationObserver()
{
  if (ANLogHandleSystemNotificationObserver_once != -1)
  {
    ANLogHandleSystemNotificationObserver_cold_1();
  }

  v1 = ANLogHandleSystemNotificationObserver_logger;

  return v1;
}

uint64_t _LanguageChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = ANLogHandleSystemNotificationObserver();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = &stru_2851BDB18;
    v13 = 2112;
    v14 = a3;
    v15 = 2112;
    v16 = a5;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@SystemNotificationObserver %@ notification received with user info %@.", &v11, 0x20u);
  }

  result = [a2 _languageDidChange];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ANLogHandleSystemNotificationObserver_block_invoke()
{
  ANLogHandleSystemNotificationObserver_logger = os_log_create("com.apple.intercom", "SystemNotificationObserver");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleRapportEventStreamHandler()
{
  if (ANLogHandleRapportEventStreamHandler_once != -1)
  {
    ANLogHandleRapportEventStreamHandler_cold_1();
  }

  v1 = ANLogHandleRapportEventStreamHandler_logger;

  return v1;
}

uint64_t __ANLogHandleRapportEventStreamHandler_block_invoke()
{
  ANLogHandleRapportEventStreamHandler_logger = os_log_create("com.apple.intercom", "RapportEventStreamHandler");

  return MEMORY[0x2821F96F8]();
}

void sub_23F537A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_23F538408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ANLogHandleTonePlayerServiceListener()
{
  if (ANLogHandleTonePlayerServiceListener_once != -1)
  {
    ANLogHandleTonePlayerServiceListener_cold_1();
  }

  v1 = ANLogHandleTonePlayerServiceListener_logger;

  return v1;
}

void sub_23F5391B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleTonePlayerServiceListener_block_invoke()
{
  ANLogHandleTonePlayerServiceListener_logger = os_log_create("com.apple.intercom", "TonePlayerServiceListener");

  return MEMORY[0x2821F96F8]();
}

void sub_23F539F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F53A374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F53A96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23F53B188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F53B574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F53B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F53B878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_23F53BB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAudioProcessing_block_invoke()
{
  ANLogHandleAudioProcessing_logger = os_log_create("com.apple.intercom", "AudioProcessing");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id ANLogHandleAnnounceReachabilityServiceListener()
{
  if (ANLogHandleAnnounceReachabilityServiceListener_once != -1)
  {
    ANLogHandleAnnounceReachabilityServiceListener_cold_1();
  }

  v1 = ANLogHandleAnnounceReachabilityServiceListener_logger;

  return v1;
}

void sub_23F53FCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_23F54001C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAnnounceReachabilityServiceListener_block_invoke()
{
  ANLogHandleAnnounceReachabilityServiceListener_logger = os_log_create("com.apple.intercom", "AnnounceReachabilityServiceListener");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementStorageManager()
{
  if (ANLogHandleAnnouncementStorageManager_once != -1)
  {
    ANLogHandleAnnouncementStorageManager_cold_1();
  }

  v1 = ANLogHandleAnnouncementStorageManager_logger;

  return v1;
}

uint64_t __ANLogHandleAnnouncementStorageManager_block_invoke()
{
  ANLogHandleAnnouncementStorageManager_logger = os_log_create("com.apple.intercom", "AnnouncementStorageManager");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleHomeManager_HomeContext()
{
  if (ANLogHandleHomeManager_HomeContext_once != -1)
  {
    ANLogHandleHomeManager_HomeContext_cold_1();
  }

  v1 = ANLogHandleHomeManager_HomeContext_logger;

  return v1;
}

void sub_23F54610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ANLogHandlePlaybackManager()
{
  if (ANLogHandlePlaybackManager_once != -1)
  {
    ANLogHandlePlaybackManager_cold_1();
  }

  v1 = ANLogHandlePlaybackManager_logger;

  return v1;
}

uint64_t __ANLogHandlePlaybackManager_block_invoke()
{
  ANLogHandlePlaybackManager_logger = os_log_create("com.apple.intercom", "PlaybackManager");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleHomeManager()
{
  if (ANLogHandleHomeManager_once != -1)
  {
    ANLogHandleHomeManager_cold_1();
  }

  v1 = ANLogHandleHomeManager_logger;

  return v1;
}

void sub_23F549A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __ANLogHandleHomeManager_block_invoke()
{
  ANLogHandleHomeManager_logger = os_log_create("com.apple.intercom", "HomeManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ANLogHandleAnalytics_block_invoke()
{
  ANLogHandleAnalytics_logger = os_log_create("com.apple.intercom", "Analytics");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleHome_Announce()
{
  if (ANLogHandleHome_Announce_once != -1)
  {
    ANLogHandleHome_Announce_cold_1();
  }

  v1 = ANLogHandleHome_Announce_logger;

  return v1;
}

void sub_23F54F9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F551390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id location)
{
  objc_destroyWeak((v51 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F553630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F553808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F554110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ANLogHandleAnalyticsDaily()
{
  if (ANLogHandleAnalyticsDaily_once != -1)
  {
    ANLogHandleAnalyticsDaily_cold_1();
  }

  v1 = ANLogHandleAnalyticsDaily_logger;

  return v1;
}

void sub_23F55464C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F554A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F555E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAnalyticsDaily_block_invoke()
{
  ANLogHandleAnalyticsDaily_logger = os_log_create("com.apple.intercom", "AnalyticsDaily");

  return MEMORY[0x2821F96F8]();
}

void sub_23F5574D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F5577DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F558154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F55AF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleBackgroundActivity_block_invoke()
{
  ANLogHandleBackgroundActivity_logger = os_log_create("com.apple.intercom", "BackgroundActivity");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleMessengerDestination()
{
  if (ANLogHandleMessengerDestination_once != -1)
  {
    ANLogHandleMessengerDestination_cold_1();
  }

  v1 = ANLogHandleMessengerDestination_logger;

  return v1;
}

uint64_t __ANLogHandleMessengerDestination_block_invoke()
{
  ANLogHandleMessengerDestination_logger = os_log_create("com.apple.intercom", "MessengerDestination");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleMessenger_Announcement()
{
  if (ANLogHandleMessenger_Announcement_once != -1)
  {
    ANLogHandleMessenger_Announcement_cold_1();
  }

  v1 = ANLogHandleMessenger_Announcement_logger;

  return v1;
}

void sub_23F55F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ANLogHandleRapportConnection()
{
  if (ANLogHandleRapportConnection_once != -1)
  {
    ANLogHandleRapportConnection_cold_1();
  }

  v1 = ANLogHandleRapportConnection_logger;

  return v1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F5605E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23F560AE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23F560EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23F561378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_23F561AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F561FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23F562518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23F5628E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23F56324C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F56364C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F563A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F56485C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleRapportConnection_block_invoke()
{
  ANLogHandleRapportConnection_logger = os_log_create("com.apple.intercom", "RapportConnection");

  return MEMORY[0x2821F96F8]();
}

void sub_23F564F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id ANLogHandleValidationHelper()
{
  if (ANLogHandleValidationHelper_once != -1)
  {
    ANLogHandleValidationHelper_cold_1();
  }

  v1 = ANLogHandleValidationHelper_logger;

  return v1;
}

uint64_t __ANLogHandleValidationHelper_block_invoke()
{
  ANLogHandleValidationHelper_logger = os_log_create("com.apple.intercom", "ValidationHelper");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementDataItem_AudioProcessing()
{
  if (ANLogHandleAnnouncementDataItem_AudioProcessing_once != -1)
  {
    ANLogHandleAnnouncementDataItem_AudioProcessing_cold_1();
  }

  v1 = ANLogHandleAnnouncementDataItem_AudioProcessing_logger;

  return v1;
}

void sub_23F566F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak((v17 - 96));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F56A080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id ANLogHandleAnnouncementStatePublisher()
{
  if (ANLogHandleAnnouncementStatePublisher_once != -1)
  {
    ANLogHandleAnnouncementStatePublisher_cold_1();
  }

  v1 = ANLogHandleAnnouncementStatePublisher_logger;

  return v1;
}

uint64_t __ANLogHandleAnnouncementStatePublisher_block_invoke()
{
  ANLogHandleAnnouncementStatePublisher_logger = os_log_create("com.apple.intercom", "AnnouncementStatePublisher");

  return MEMORY[0x2821F96F8]();
}

void sub_23F56D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ANLogHandleIDSConnection()
{
  if (ANLogHandleIDSConnection_once != -1)
  {
    ANLogHandleIDSConnection_cold_1();
  }

  v1 = ANLogHandleIDSConnection_logger;

  return v1;
}

uint64_t __ANLogHandleIDSConnection_block_invoke()
{
  ANLogHandleIDSConnection_logger = os_log_create("com.apple.intercom", "IDSConnection");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleCompanionConnection()
{
  if (ANLogHandleCompanionConnection_once != -1)
  {
    ANLogHandleCompanionConnection_cold_1();
  }

  v1 = ANLogHandleCompanionConnection_logger;

  return v1;
}

void sub_23F56EDFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23F56F148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleCompanionConnection_block_invoke()
{
  ANLogHandleCompanionConnection_logger = os_log_create("com.apple.intercom", "CompanionConnection");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleCoreAnalytics()
{
  if (ANLogHandleCoreAnalytics_once[0] != -1)
  {
    ANLogHandleCoreAnalytics_cold_1();
  }

  v1 = ANLogHandleCoreAnalytics_logger;

  return v1;
}

uint64_t __ANLogHandleCoreAnalytics_block_invoke()
{
  ANLogHandleCoreAnalytics_logger = os_log_create("com.apple.intercom", "CoreAnalytics");

  return MEMORY[0x2821F96F8]();
}

void sub_23F56F8B4(uint64_t a1, unint64_t *a2)
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

void *sub_23F56F900@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id AnnounceServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AnnounceServer.init()()
{
  *&v0[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_systemNotificationObserver] = 0;
  v1 = objc_opt_self();
  if ([v1 isAnnounceEnabled])
  {
  }

  v2 = [objc_allocWithZone(ANPlaybackSessionServiceListener) init];
  *&v0[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_playbackSessionServiceListener] = v2;
  v3 = [objc_allocWithZone(ANAnnounceServiceListener) init];
  *&v0[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_announceServiceListener] = v3;
  v4 = [objc_allocWithZone(ANAnnounceReachabilityServiceListener) init];
  *&v0[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_announceReachabilityServiceListener] = v4;
  v5 = [objc_allocWithZone(ANTonePlayerServiceListener) init];
  *&v0[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_tonePlayerServiceListener] = v5;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for AnnounceServer();
  v6 = objc_msgSendSuper2(&v14, sel_init);
  if ([v1 isAnnounceEnabled])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_23F56FC28;
    v13[5] = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23F56FCA0;
    v13[3] = &block_descriptor;
    v8 = _Block_copy(v13);
    v9 = objc_opt_self();

    v10 = [v9 observer_];
    _Block_release(v8);

    v11 = *&v6[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_systemNotificationObserver];
    *&v6[OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_systemNotificationObserver] = v10;
  }

  return v6;
}

void sub_23F56FBB4(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_23F56FD30(sub_23F56FC30, 0);
    }
  }
}

void sub_23F56FC30()
{
  sub_23F5704C0(0, &qword_27E39C988, 0x277D86200);
  v0 = sub_23F588434();
  sub_23F5883E4();
  sub_23F5881A4();

  exit(0);
}

uint64_t sub_23F56FCA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23F56FD30(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v37 = sub_23F588244();
  v40 = *(v37 - 8);
  v4 = *(v40 + 64);
  (MEMORY[0x28223BE20])();
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23F588264();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  (MEMORY[0x28223BE20])();
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23F588234();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (MEMORY[0x28223BE20])();
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_23F588284();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - v19;
  v21 = [objc_opt_self() sharedController];
  [v21 cleanForExit];

  v22 = [objc_opt_self() sharedCoordinator];
  [v22 cleanForExit];

  [*(v2 + OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_playbackSessionServiceListener) cleanForExit];
  [*(v2 + OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_announceServiceListener) cleanForExit];
  [*(v2 + OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_announceReachabilityServiceListener) cleanForExit];
  [*(v2 + OBJC_IVAR____TtC14AnnounceDaemon14AnnounceServer_tonePlayerServiceListener) cleanForExit];
  sub_23F5704C0(0, &qword_27E39C968, 0x277D85C78);
  v23 = sub_23F588404();
  sub_23F588274();
  *v13 = 1;
  (*(v10 + 104))(v13, *MEMORY[0x277D85188], v9);
  MEMORY[0x245CAF700](v18, v13);
  (*(v10 + 8))(v13, v9);
  v24 = *(v14 + 8);
  v32[1] = v14 + 8;
  v25 = v33;
  v24(v18, v33);
  v26 = swift_allocObject();
  *(v26 + 16) = v35;
  *(v26 + 24) = a2;
  aBlock[4] = sub_23F57034C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F570240;
  aBlock[3] = &block_descriptor_10;
  v27 = _Block_copy(aBlock);

  v28 = v34;
  sub_23F588254();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23F570374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C978, &qword_23F58D6C8);
  sub_23F570414();
  v30 = v36;
  v29 = v37;
  sub_23F588444();
  MEMORY[0x245CAF860](v20, v28, v30, v27);
  _Block_release(v27);

  (*(v40 + 8))(v30, v29);
  (*(v38 + 8))(v28, v39);
  return (v24)(v20, v25);
}

uint64_t sub_23F570240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id AnnounceServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnnounceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23F57034C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_23F570374()
{
  result = qword_27E39C970;
  if (!qword_27E39C970)
  {
    sub_23F588244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39C970);
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

unint64_t sub_23F570414()
{
  result = qword_27E39C980;
  if (!qword_27E39C980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39C978, &qword_23F58D6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39C980);
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

uint64_t sub_23F5704C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23F570510()
{
  v0 = sub_23F5881D4();
  __swift_allocate_value_buffer(v0, qword_27E39C990);
  __swift_project_value_buffer(v0, qword_27E39C990);
  return sub_23F5881C4();
}

uint64_t ANUserNotificationController.content(announcement:groupAnnouncements:home:threadIdentifier:isReplacement:suspendExpiration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 177) = a7;
  *(v8 + 176) = a6;
  *(v8 + 64) = a5;
  *(v8 + 72) = v7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_23F588074();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9C0, &qword_23F58D6F0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23F5706B0, 0, 0);
}

char *sub_23F5706B0()
{
  v116 = v0;
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 BOOLForDefault_];

  if (v4)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    v6 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9C8, &qword_23F58D6F8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23F58D6D0;
    *(v7 + 32) = v6;
    v8 = v6;
  }

  v9 = objc_opt_self();
  sub_23F5704C0(0, &qword_27E39C9D0, 0x277CEAB48);
  v10 = sub_23F588344();

  v11 = [v9 uniqueAnnouncersInAnnouncements_];

  v12 = v11;
  if (!v11)
  {
    sub_23F5704C0(0, &qword_27E39C9D8, 0x277CEABB0);
    sub_23F588354();
    v12 = sub_23F588344();
  }

  v13 = *(v1 + 72);
  v14 = *(v1 + 48);
  v15 = sub_23F5704C0(0, &qword_27E39C9D8, 0x277CEABB0);
  v16 = sub_23F588354();
  v17 = [v13 contentBodyForAnnouncers:v12 inHome:v14];

  v18 = sub_23F5882D4();
  v20 = v19;

  *(v1 + 16) = v18;
  *(v1 + 24) = v20;
  if (qword_27E39C8D0 != -1)
  {
    swift_once();
  }

  v21 = sub_23F5881D4();
  *(v1 + 128) = __swift_project_value_buffer(v21, qword_27E39C990);

  v22 = sub_23F5881B4();
  v23 = sub_23F5883E4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v114 = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x245CAF7D0](v16, v15);
    v28 = sub_23F572A60(v26, v27, &v114);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_23F525000, v22, v23, "Unique Participant Announcers: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x245CB05A0](v25, -1, -1);
    MEMORY[0x245CB05A0](v24, -1, -1);
  }

  if (v16 >> 62)
  {
    v29 = sub_23F588514();
    if (v29)
    {
      goto LABEL_12;
    }

LABEL_29:

    v32 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_29;
  }

LABEL_12:
  v114 = MEMORY[0x277D84F90];
  result = sub_23F573008(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
    __break(1u);
    return result;
  }

  v106 = v2;
  v31 = 0;
  v32 = v114;
  v33 = v16;
  v107 = v16 & 0xC000000000000001;
  v109 = v16;
  v110 = v1;
  v108 = v29;
  do
  {
    if (v107)
    {
      v34 = MEMORY[0x245CAF910](v31, v33);
    }

    else
    {
      v34 = *(v33 + 8 * v31 + 32);
    }

    v35 = v34;
    v36 = [*(v1 + 32) productType];
    v37 = [v35 isUser];
    v38 = v37;
    v39 = *(v1 + 48);
    if (v37)
    {
      v40 = sub_23F5756DC(*(v1 + 48));
      v112 = v41;
      v42 = sub_23F5758D8(v39);

      v43 = v42 == 0;
      if (v42)
      {
        v44 = 0;
      }

      else
      {
        v42 = 0xD000000000000017;
        v44 = 0x800000023F5910F0;
      }
    }

    else
    {
      v45 = sub_23F575B04(*(v1 + 48));
      v112 = v46;
      v40 = v45;

      v43 = 1;
      if (v36 == 3348380076)
      {
        v42 = 0xD000000000000011;
        v44 = 0x800000023F5910D0;
      }

      else
      {
        v42 = 0x2E646F70656D6F68;
        v44 = 0xEC0000006C6C6966;
      }
    }

    v114 = v32;
    v48 = *(v32 + 16);
    v47 = *(v32 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_23F573008((v47 > 1), v48 + 1, 1);
      v32 = v114;
    }

    ++v31;
    *(v32 + 16) = v48 + 1;
    v49 = v32 + 48 * v48;
    v1 = v110;
    *(v49 + 32) = v40;
    *(v49 + 40) = v112;
    *(v49 + 48) = v38;
    *(v49 + 56) = v42;
    *(v49 + 64) = v44;
    *(v49 + 72) = v43;
    v33 = v109;
  }

  while (v108 != v31);

  v2 = v106;
LABEL_30:
  *(v1 + 136) = v32;

  v50 = sub_23F5881B4();
  v51 = sub_23F5883E4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v114 = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x245CAF7D0](v32, &type metadata for Announcer);
    v56 = sub_23F572A60(v54, v55, &v114);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_23F525000, v50, v51, "Announcers: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245CB05A0](v53, -1, -1);
    MEMORY[0x245CB05A0](v52, -1, -1);
  }

  v57 = [v2 sharedInstance];
  v58 = [v57 BOOLForDefault_];

  if (v58)
  {
    v59 = [*(v1 + 32) transcriptionText];
    if (v59)
    {
      v60 = v59;
      v61 = sub_23F5882D4();
      v63 = v62;

      v114 = 2230794;
      v115 = 0xE300000000000000;
      MEMORY[0x245CAF790](v61, v63);

      MEMORY[0x245CAF790](34, 0xE100000000000000);
      MEMORY[0x245CAF790](v114, v115);
    }
  }

  v64 = *(v1 + 120);
  v65 = *(v1 + 177);
  *(v1 + 144) = sub_23F573768(*(v1 + 32), *(v1 + 40));
  v66 = sub_23F5880A4();
  *(v1 + 152) = v66;
  v67 = *(v66 - 8);
  *(v1 + 160) = v67;
  v68 = *(v67 + 56);
  v68(v64, 1, 1, v66);
  if ((v65 & 1) == 0)
  {
    v70 = *(v1 + 112);
    v69 = *(v1 + 120);
    v71 = [v2 sharedInstance];
    v72 = [v71 numberForDefault_];

    [v72 doubleValue];
    sub_23F588094();

    sub_23F5741F8(v69, &qword_27E39C9C0, &qword_23F58D6F0);
    v68(v70, 0, 1, v66);
    sub_23F573CF0(v70, v69);
  }

  if (*(v1 + 176))
  {
    v73 = *(v1 + 48);
    v74 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v75 = [v73 name];
    if (!v75)
    {
      sub_23F5882D4();
      v75 = sub_23F5882C4();
    }

    [v74 setTitle_];

    v76 = sub_23F5882C4();
    [v74 setCategoryIdentifier_];

    v77 = *(v1 + 16);
    v78 = *(v1 + 24);
    v79 = sub_23F5882C4();

    [v74 setBody_];

    v80 = [objc_opt_self() defaultSound];
    v81 = *(v1 + 160);
    v82 = *(v1 + 144);
    v111 = *(v1 + 120);
    v113 = *(v1 + 152);
    v83 = *(v1 + 96);
    v84 = *(v1 + 104);
    v86 = *(v1 + 80);
    v85 = *(v1 + 88);
    v87 = *(v1 + 32);
    [v74 setSound_];

    [v74 setShouldSuppressScreenLightUp_];
    v88 = sub_23F5882A4();

    [v74 setUserInfo_];

    v89 = [v87 defaultActionURL];
    sub_23F588064();

    v90 = sub_23F588054();
    (*(v85 + 8))(v83, v86);
    [v74 setDefaultActionURL_];

    sub_23F574188(v111, v84);
    if ((*(v81 + 48))(v84, 1, v113) == 1)
    {
      v91 = 0;
    }

    else
    {
      v93 = *(v1 + 152);
      v94 = *(v1 + 160);
      v95 = *(v1 + 104);
      v91 = sub_23F588084();
      (*(v94 + 8))(v95, v93);
    }

    v96 = *(v1 + 136);
    v97 = *(v1 + 56);
    v98 = *(v1 + 64);
    [v74 setExpirationDate_];

    v99 = sub_23F5882C4();
    [v74 setThreadIdentifier_];

    [v74 setShouldBackgroundDefaultAction_];
    [v74 setShouldSuppressDefaultAction_];
    [v74 setShouldPreventNotificationDismissalAfterDefaultAction_];
    [v74 setInterruptionLevel_];
    v100 = v74;
    v101 = sub_23F581468();

    v102 = *(v1 + 112);
    v104 = *(v1 + 96);
    v103 = *(v1 + 104);
    sub_23F5741F8(*(v1 + 120), &qword_27E39C9C0, &qword_23F58D6F0);

    v105 = *(v1 + 8);

    return v105(v101);
  }

  else
  {
    v92 = swift_task_alloc();
    *(v1 + 168) = v92;
    *v92 = v1;
    v92[1] = sub_23F57140C;

    return sub_23F573D60();
  }
}

uint64_t sub_23F57140C(char a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 178) = a1;

  return MEMORY[0x2822009F8](sub_23F57150C, 0, 0);
}

uint64_t sub_23F57150C()
{
  v1 = *(v0 + 178);
  v2 = *(v0 + 48);
  v3 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v4 = [v2 name];
  if (!v4)
  {
    sub_23F5882D4();
    v4 = sub_23F5882C4();
  }

  [v3 setTitle_];

  v5 = sub_23F5882C4();
  [v3 setCategoryIdentifier_];

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = sub_23F5882C4();

  [v3 setBody_];

  if (v1)
  {
    v9 = [objc_opt_self() defaultSound];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 152);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v34 = *(v0 + 80);
  v15 = *(v0 + 32);
  [v3 setSound_];

  [v3 setShouldSuppressScreenLightUp_];
  v16 = sub_23F5882A4();

  [v3 setUserInfo_];

  v17 = [v15 defaultActionURL];
  sub_23F588064();

  v18 = sub_23F588054();
  (*(v14 + 8))(v12, v34);
  [v3 setDefaultActionURL_];

  sub_23F574188(v35, v13);
  if ((*(v10 + 48))(v13, 1, v36) == 1)
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    v22 = *(v0 + 104);
    v19 = sub_23F588084();
    (*(v21 + 8))(v22, v20);
  }

  v23 = *(v0 + 136);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  [v3 setExpirationDate_];

  v26 = sub_23F5882C4();
  [v3 setThreadIdentifier_];

  [v3 setShouldBackgroundDefaultAction_];
  [v3 setShouldSuppressDefaultAction_];
  [v3 setShouldPreventNotificationDismissalAfterDefaultAction_];
  [v3 setInterruptionLevel_];
  v27 = v3;
  v28 = sub_23F581468();

  v29 = *(v0 + 112);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  sub_23F5741F8(*(v0 + 120), &qword_27E39C9C0, &qword_23F58D6F0);

  v32 = *(v0 + 8);

  return v32(v28);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23F571BF4(void *a1, int a2, void *a3, int a4, char a5, char a6, void *aBlock, void *a8)
{
  v8[3] = a3;
  v8[4] = a8;
  v8[2] = a1;
  v8[5] = _Block_copy(aBlock);
  sub_23F5704C0(0, &qword_27E39C9D0, 0x277CEAB48);
  v14 = sub_23F588354();
  v8[6] = v14;
  v15 = sub_23F5882D4();
  v17 = v16;
  v8[7] = v16;
  v18 = a1;
  v19 = a3;
  a8;
  v20 = swift_task_alloc();
  v8[8] = v20;
  *v20 = v8;
  v20[1] = sub_23F571D4C;

  return ANUserNotificationController.content(announcement:groupAnnouncements:home:threadIdentifier:isReplacement:suspendExpiration:)(v18, v14, v19, v15, v17, a5, a6);
}

uint64_t sub_23F571D4C(void *a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v12 = *v1;

  (v6)[2](v6, a1);
  _Block_release(v6);

  v10 = *(v12 + 8);

  return v10();
}

unint64_t sub_23F571F10(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_23F588514();
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
      v6 = MEMORY[0x245CAF910](v5, a2);
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
    sub_23F5704C0(0, &qword_27E39C9D0, 0x277CEAB48);
    v8 = sub_23F588414();

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

uint64_t sub_23F572020()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_23F572090, 0, 0);
}

uint64_t sub_23F572090()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9F8, &qword_23F58D740);
  *v3 = v0;
  v3[1] = sub_23F57218C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x29287472617473, 0xE700000000000000, sub_23F5746B0, v1, v4);
}

uint64_t sub_23F57218C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23F5722C8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23F5722A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23F5722C8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

uint64_t sub_23F572330()
{
  v0 = sub_23F5881D4();
  __swift_allocate_value_buffer(v0, qword_27E39C9A8);
  __swift_project_value_buffer(v0, qword_27E39C9A8);
  return sub_23F5881C4();
}

id sub_23F5723B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA00, &qword_23F58D748);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  if (qword_27E39C8D8 != -1)
  {
    swift_once();
  }

  v11 = sub_23F5881D4();
  __swift_project_value_buffer(v11, qword_27E39C9A8);
  v12 = sub_23F5881B4();
  v13 = sub_23F5883E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23F525000, v12, v13, "Checking if best device to alert", v14, 2u);
    MEMORY[0x245CB05A0](v14, -1, -1);
  }

  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  *(v17 + v16) = a2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_23F5746B8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F5729AC;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [v19 setCompletionHandler_];
  _Block_release(v18);
  return [v19 start];
}

id sub_23F572658(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_27E39C8D8 != -1)
  {
    swift_once();
  }

  v9 = sub_23F5881D4();
  __swift_project_value_buffer(v9, qword_27E39C9A8);
  v10 = sub_23F5881B4();
  v11 = sub_23F5883E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = a2 & 1;
    _os_log_impl(&dword_23F525000, v10, v11, "Best device: %{BOOL,public}d", v12, 8u);
    MEMORY[0x245CB05A0](v12, -1, -1);
  }

  if (a1)
  {
    v13 = a1;
    v14 = sub_23F5881B4();
    v15 = sub_23F5883D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_23F525000, v14, v15, "Scan error: %@", v16, 0xCu);
      sub_23F5741F8(v17, &qword_27E39C9E0, &unk_23F58E820);
      MEMORY[0x245CB05A0](v17, -1, -1);
      MEMORY[0x245CB05A0](v16, -1, -1);
    }

    v20 = sub_23F5881B4();
    v21 = sub_23F5883C4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA08, &qword_23F58D750);
      v24 = sub_23F5882F4();
      v26 = sub_23F572A60(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23F525000, v20, v21, "Info dictionary: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x245CB05A0](v23, -1, -1);
      MEMORY[0x245CB05A0](v22, -1, -1);
    }

    v28[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA00, &qword_23F58D748);
    sub_23F588384();
  }

  else
  {
    LOBYTE(v28[0]) = a2 & 1;
    v28[1] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA00, &qword_23F58D748);
    sub_23F588394();
  }

  return [a5 invalidate];
}

uint64_t sub_23F5729AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_23F5882B4();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v7(a2, a3, v8);
}

uint64_t sub_23F572A60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23F572B2C(v11, 0, 0, 1, a1, a2);
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
    sub_23F574650(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23F572B2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23F572C38(a5, a6);
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
    result = sub_23F5884B4();
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

uint64_t sub_23F572C38(uint64_t a1, unint64_t a2)
{
  v4 = sub_23F572C84(a1, a2);
  sub_23F572DB4(&unk_2851BCC18);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23F572C84(uint64_t a1, unint64_t a2)
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

  v6 = sub_23F572EA0(v5, 0);
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

  result = sub_23F5884B4();
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
        v10 = sub_23F588334();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23F572EA0(v10, 0);
        result = sub_23F588484();
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

uint64_t sub_23F572DB4(uint64_t result)
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

  result = sub_23F572F14(result, v12, 1, v3);
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

void *sub_23F572EA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9F0, &qword_23F58D730);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23F572F14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9F0, &qword_23F58D730);
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

char *sub_23F573008(char *a1, int64_t a2, char a3)
{
  result = sub_23F573028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23F573028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA28, &unk_23F58D760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23F573144(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA20, &qword_23F58EEC0);
  result = sub_23F588534();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_23F574800((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_23F574864(v24, &v38);
        sub_23F574650(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_23F588454();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_23F574800(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_23F5733FC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23F5844B0(a2);
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
      sub_23F5735C4();
      goto LABEL_7;
    }

    sub_23F573144(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_23F5844B0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23F574864(a2, v22);
      return sub_23F573548(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_23F588594();
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

  return sub_23F574800(a1, v17);
}

_OWORD *sub_23F573548(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23F574800(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_23F5735C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA20, &qword_23F58EEC0);
  v2 = *v0;
  v3 = sub_23F588524();
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
        v18 = 40 * v17;
        sub_23F574864(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23F574650(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23F574800(v22, (*(v4 + 56) + v17));
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

uint64_t sub_23F573768(id a1, unint64_t a2)
{
  i = sub_23F58567C(MEMORY[0x277D84F90]);
  v5 = *MEMORY[0x277CEAAE8];
  sub_23F5882D4();
  *(&v46 + 1) = v6;
  v7 = MEMORY[0x277D837D0];
  sub_23F588474();
  v47 = MEMORY[0x277D83E88];
  *&v46 = 0;
  sub_23F574800(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23F5733FC(v45, v48, isUniquelyReferenced_nonNull_native);
  sub_23F574810(v48);
  v9 = *MEMORY[0x277CEAAD8];
  *&v46 = sub_23F5882D4();
  *(&v46 + 1) = v10;
  sub_23F588474();
  v11 = [objc_opt_self() shared];
  v12 = [v11 allHomes];

  sub_23F5704C0(0, &qword_27E39CA10, 0x277CD1A60);
  v13 = sub_23F588354();

  if (v13 >> 62)
  {
LABEL_25:
    v14 = sub_23F588514();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83B88];
  v47 = MEMORY[0x277D83B88];
  *&v46 = v14;
  sub_23F574800(&v46, v45);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_23F5733FC(v45, v48, v16);
  result = sub_23F574810(v48);
  if (a2 >> 62)
  {
    result = sub_23F588514();
    v18 = result;
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x245CAF910](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(a2 + 32);
  }

  v20 = v19;
  v21 = *MEMORY[0x277CEAAF8];
  *&v46 = sub_23F5882D4();
  *(&v46 + 1) = v22;
  sub_23F588474();
  v23 = [v20 remoteSessionDictionary];
  v24 = sub_23F5882B4();

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA18, &qword_23F58D758);
  *&v46 = v24;
  sub_23F574800(&v46, v45);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_23F5733FC(v45, v48, v25);

  sub_23F574810(v48);
LABEL_9:
  v26 = *MEMORY[0x277CEAAE0];
  *&v46 = sub_23F5882D4();
  *(&v46 + 1) = v27;
  sub_23F588474();
  a1 = [a1 identifier];
  v28 = sub_23F5882D4();
  v30 = v29;

  v47 = v7;
  *&v46 = v28;
  *(&v46 + 1) = v30;
  sub_23F574800(&v46, v45);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_23F5733FC(v45, v48, v31);
  sub_23F574810(v48);
  v7 = i;
  if (v18)
  {
    for (i = 0; ; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x245CAF910](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v32 = *(a2 + 8 * i + 32);
      }

      a1 = v32;
      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (![v32 hasPlayed])
      {
        break;
      }

      if (v33 == v18)
      {
        return v7;
      }
    }

    v34 = [a1 remoteSessionDictionary];
    v35 = sub_23F5882B4();

    v36 = sub_23F571F10(a1, a2);
    if ((v37 & 1) == 0)
    {
      v38 = v36;
      v39 = *MEMORY[0x277CEAA20];
      *&v46 = sub_23F5882D4();
      *(&v46 + 1) = v40;
      sub_23F588474();
      v47 = v15;
      *&v46 = v38;
      sub_23F574800(&v46, v45);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      sub_23F5733FC(v45, v48, v41);
      sub_23F574810(v48);
    }

    v42 = *MEMORY[0x277CEAB00];
    *&v46 = sub_23F5882D4();
    *(&v46 + 1) = v43;
    sub_23F588474();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA18, &qword_23F58D758);
    *&v46 = v35;
    sub_23F574800(&v46, v45);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_23F5733FC(v45, v48, v44);

    sub_23F574810(v48);
  }

  return v7;
}

uint64_t sub_23F573CF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9C0, &qword_23F58D6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23F573D7C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 BOOLForDefault_];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D54C40]) init];
    v0[2] = v3;
    [v3 setType_];
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_23F573F74;

    return sub_23F572020();
  }

  else
  {
    if (qword_27E39C8D0 != -1)
    {
      swift_once();
    }

    v6 = sub_23F5881D4();
    __swift_project_value_buffer(v6, qword_27E39C990);
    v7 = sub_23F5881B4();
    v8 = sub_23F5883E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23F525000, v7, v8, "Coordinated Alerts disabled", v9, 2u);
      MEMORY[0x245CB05A0](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(1);
  }
}

uint64_t sub_23F573F74(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_23F574118;
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    v7 = sub_23F5740B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23F5740B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23F574118()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_23F574188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9C0, &qword_23F58D6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23F5741F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_23F5742A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 49);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_23F5748C0;

  return sub_23F571BF4(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23F574390()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23F5748C0;

  return sub_23F579F48(v2, v3, v5);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23F574490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23F57455C;

  return sub_23F57A030(a1, v4, v5, v7);
}

uint64_t sub_23F57455C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23F574650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_23F5746B8(void *a1, char a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA00, &qword_23F58D748) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_23F572658(a1, a2, a3, v3 + v8, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

_OWORD *sub_23F574800(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_23F5748C8()
{
  sub_23F5704C0(0, &qword_27E39C9D0, 0x277CEAB48);
  v0 = sub_23F588354();
  _sSo14ANAnnouncementC14AnnounceDaemonE8contexts4fromSaySo0A7ContextCGSayABG_tFZ_0(v0);

  sub_23F5704C0(0, &qword_27E39CA30, 0x277CEAB58);
  v1 = sub_23F588344();

  return v1;
}

uint64_t _sSo14ANAnnouncementC14AnnounceDaemonE8contexts4fromSaySo0A7ContextCGSayABG_tFZ_0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = sub_23F588514();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_23F5884E4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v12 = v1 & 0xC000000000000001;
      v5 = v1;
      do
      {
        if (v12)
        {
          v6 = MEMORY[0x245CAF910](v4, v1);
        }

        else
        {
          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v6;
        ++v4;
        v8 = [v6 remoteSessionDictionary];
        sub_23F5882B4();

        v9 = objc_allocWithZone(MEMORY[0x277CEAB58]);
        v10 = sub_23F5882A4();

        [v9 initWithDictionary_];

        sub_23F5884C4();
        v11 = *(v13 + 16);
        sub_23F5884F4();
        sub_23F588504();
        sub_23F5884D4();
        v1 = v5;
      }

      while (v2 != v4);
      return v13;
    }
  }

  return result;
}

unint64_t sub_23F574B20()
{
  result = qword_27E39CA38;
  if (!qword_27E39CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA38);
  }

  return result;
}

uint64_t sub_23F574B74()
{
  sub_23F5885F4();
  sub_23F588314();
  return sub_23F588624();
}

uint64_t sub_23F574BE8()
{
  sub_23F5885F4();
  sub_23F588314();
  return sub_23F588624();
}

uint64_t sub_23F574C3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23F588554();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_23F574CB4()
{
  result = qword_27E39CA40;
  if (!qword_27E39CA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39CA48, &qword_23F58D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA40);
  }

  return result;
}

unint64_t sub_23F574D2C()
{
  result = qword_27E39CA50;
  if (!qword_27E39CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA50);
  }

  return result;
}

unint64_t sub_23F574D84()
{
  result = qword_27E39CA58;
  if (!qword_27E39CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA58);
  }

  return result;
}

unint64_t sub_23F574DDC()
{
  result = qword_27E39CA60;
  if (!qword_27E39CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA60);
  }

  return result;
}

unint64_t sub_23F574E40()
{
  result = qword_27E39CA68;
  if (!qword_27E39CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA68);
  }

  return result;
}

unint64_t sub_23F574E94()
{
  result = qword_27E39CA70;
  if (!qword_27E39CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA70);
  }

  return result;
}

unint64_t sub_23F574EE8()
{
  result = qword_27E39CA78;
  if (!qword_27E39CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA78);
  }

  return result;
}

unint64_t sub_23F574F40()
{
  result = qword_27E39CA80;
  if (!qword_27E39CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA80);
  }

  return result;
}

uint64_t sub_23F574F94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAA8, &qword_23F58DA38);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAB0, &unk_23F58DA40) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58D770;
  sub_23F587FB4();
  v4 = sub_23F585850(v3);
  swift_setDeallocating();
  sub_23F575454(v3 + v2);
  result = swift_deallocClassInstance();
  qword_27E39FC90 = v4;
  return result;
}

unint64_t sub_23F575114()
{
  result = qword_27E39CA88;
  if (!qword_27E39CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA88);
  }

  return result;
}

uint64_t sub_23F575168(uint64_t a1)
{
  v2 = sub_23F575114();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F5751B8()
{
  result = qword_27E39CA90;
  if (!qword_27E39CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA90);
  }

  return result;
}

unint64_t sub_23F575210()
{
  result = qword_27E39CA98;
  if (!qword_27E39CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CA98);
  }

  return result;
}

unint64_t sub_23F575268()
{
  result = qword_27E39CAA0;
  if (!qword_27E39CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CAA0);
  }

  return result;
}

uint64_t sub_23F5752BC()
{
  if (qword_27E39C8E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23F575318(uint64_t a1)
{
  v2 = sub_23F574F40();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for AnnouncementSoundType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnnouncementSoundType(_WORD *result, int a2, int a3)
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

uint64_t sub_23F575454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAB0, &unk_23F58DA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23F5754C4()
{
  v0 = type metadata accessor for ANContactStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CBDAC0]) init];
  v4 = *MEMORY[0x277CEAC18];
  sub_23F5882D4();
  sub_23F588304();

  v5 = tcc_identity_create();

  [v3 setAssumedIdentity_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(MEMORY[0x277CBDAB8]) initWithConfiguration_];
  v6 = sub_23F588134();

  qword_27E39CAB8 = v6;
}

uint64_t sub_23F5755A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CBDAC0]) init];
  v4 = *MEMORY[0x277CEAC18];
  sub_23F5882D4();
  sub_23F588304();

  v5 = tcc_identity_create();

  [v3 setAssumedIdentity_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(MEMORY[0x277CBDAB8]) initWithConfiguration_];
  v6 = sub_23F588134();

  return v6;
}

uint64_t sub_23F5756AC()
{
  sub_23F588164();

  return swift_deallocClassInstance();
}

uint64_t sub_23F5756DC(void *a1)
{
  v3 = [v1 homeKitID];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 hmu:v3 userWithUniqueIdentifierUUIDString:?];

    if (v5)
    {
LABEL_5:
      v8 = [v5 userID];
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v6 = [v1 homeKitUserID];
  if (v6)
  {
    v7 = v6;
    v5 = [a1 hmu:v6 userWithUniqueIdentifierUUIDString:?];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_8:
  v8 = [v1 userID];
  if (!v8)
  {
    if (v5)
    {
      v12 = [v5 name];
      v13 = sub_23F5882D4();

      return v13;
    }

    else
    {
      v14 = sub_23F5882C4();
      v15 = ANLocalizedString();

      v16 = sub_23F5882D4();
      return v16;
    }
  }

LABEL_9:
  v9 = v8;
  sub_23F5882D4();

  if (qword_27E39C8E8 != -1)
  {
    swift_once();
  }

  v10 = sub_23F588144();

  return v10;
}

id sub_23F5758D8(void *a1)
{
  v2 = v1;
  v4 = [v2 homeKitID];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 hmu:v4 userWithUniqueIdentifierUUIDString:?];

    if (v6)
    {
LABEL_5:
      v9 = [v6 userID];
      if (v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v7 = [v2 homeKitUserID];
  if (v7)
  {
    v8 = v7;
    v6 = [a1 hmu:v7 userWithUniqueIdentifierUUIDString:?];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v9 = [v2 userID];
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_9:
  v10 = v9;
  sub_23F5882D4();

  if (qword_27E39C8E8 != -1)
  {
    swift_once();
  }

  v11 = sub_23F588154();

  if (!v11)
  {
LABEL_13:
    if (v6)
    {
      v12 = v6;
      v11 = [v12 name];
    }

    else
    {
      v11 = [v2 userID];
      if (!v11)
      {
        return v11;
      }

      v12 = 0;
    }

    sub_23F5882D4();

    v11 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v13 = sub_23F5882C4();

    [v11 setFirstName_];

    return v11;
  }

  return v11;
}

uint64_t sub_23F575B04(void *a1)
{
  v3 = [v1 homeKitID];
  if (!v3 || (v4 = v3, v5 = [a1 hmu:v3 userWithUniqueIdentifierUUIDString:?], v4, !v5))
  {
    v6 = [v1 homeKitUserID];
    if (!v6)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v7 = v6;
    v5 = [a1 hmu:v6 userWithUniqueIdentifierUUIDString:?];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v8 = [v5 userID];
  if (v8)
  {
LABEL_9:
    v9 = v8;
    sub_23F5882D4();

    if (qword_27E39C8E8 != -1)
    {
      swift_once();
    }

    v10 = sub_23F588144();

    return v10;
  }

LABEL_8:
  v8 = [v1 userID];
  if (v8)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    v12 = [v5 name];
    v10 = sub_23F5882D4();

    return v10;
  }

  v13 = [v1 homeKitID];
  if (v13 && (v14 = v13, v15 = [a1 hmu:v13 accessoryWithUniqueIdentifierUUIDString:?], v14, v15) && (v16 = objc_msgSend(v15, sel_room), v15, v16))
  {
    v17 = [v16 name];

    v18 = sub_23F5882D4();
    return v18;
  }

  else
  {
    v19 = sub_23F5882C4();
    v20 = ANLocalizedString();

    v21 = sub_23F5882D4();
    return v21;
  }
}

Swift::String __swiftcall ANParticipant.name(in:)(HMHome in)
{
  v3 = [v1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23F5882D4();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = v5;
      v10 = v7;
      goto LABEL_14;
    }
  }

  if ([v1 isAccessory])
  {

    v9 = sub_23F575B04(in.super.isa);
  }

  else
  {

    v9 = sub_23F5756DC(in.super.isa);
  }

LABEL_14:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t type metadata accessor for ANContactStore()
{
  result = qword_27E39CAD0;
  if (!qword_27E39CAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23F575F24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ANParticipant.name(in:)(v4);

  v6 = sub_23F5882C4();

  return v6;
}

id sub_23F575FA0(void *a1)
{
  v1 = a1;
  RPCompanionLinkDevice.customDescription.getter();

  v2 = sub_23F5882C4();

  return v2;
}

uint64_t RPCompanionLinkDevice.customDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = 0xE000000000000000;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_23F588494();
  MEMORY[0x245CAF790](0x6D614E202020200ALL, 0xEB00000000203A65);
  v10 = [v0 name];
  if (v10)
  {
    v11 = v10;
    v12 = sub_23F5882D4();
    v9 = v13;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x245CAF790](v12, v9);

  MEMORY[0x245CAF790](0xD000000000000011, 0x800000023F5912E0);
  v14 = [v1 identifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_23F5882D4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  MEMORY[0x245CAF790](v16, v18);

  MEMORY[0x245CAF790](0xD000000000000013, 0x800000023F591300);
  v19 = [v1 idsDeviceIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_23F5882D4();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  MEMORY[0x245CAF790](v21, v23);

  MEMORY[0x245CAF790](0xD000000000000011, 0x800000023F591320);
  v24 = [v1 homeKitIdentifier];
  if (v24)
  {
    v25 = v24;
    sub_23F5880D4();

    v26 = sub_23F5880E4();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  }

  else
  {
    v26 = sub_23F5880E4();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  }

  sub_23F5766C0(v6, v8);
  sub_23F5880E4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    sub_23F576730(v8);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = sub_23F5880B4();
    v29 = v31;
    (*(v27 + 8))(v8, v26);
    v28 = v30;
  }

  MEMORY[0x245CAF790](v28, v29);

  MEMORY[0x245CAF790](0x6C46202020200A2CLL, 0xED0000203A736761);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE8, &qword_23F58DA80);
  v32 = swift_allocObject();
  v62 = xmmword_23F58D770;
  *(v32 + 16) = xmmword_23F58D770;
  v33 = [v1 flags];
  v34 = MEMORY[0x277D84D30];
  *(v32 + 56) = MEMORY[0x277D84CC0];
  *(v32 + 64) = v34;
  *(v32 + 32) = v33;
  v35 = sub_23F5882E4();
  MEMORY[0x245CAF790](v35);

  MEMORY[0x245CAF790](0xD000000000000014, 0x800000023F591340);
  v36 = swift_allocObject();
  *(v36 + 16) = v62;
  v37 = [v1 statusFlags];
  v38 = MEMORY[0x277D84D90];
  *(v36 + 56) = MEMORY[0x277D84D38];
  *(v36 + 64) = v38;
  *(v36 + 32) = v37;
  v39 = sub_23F5882E4();
  MEMORY[0x245CAF790](v39);

  MEMORY[0x245CAF790](0x6F4D202020200A2CLL, 0xED0000203A6C6564);
  v40 = [v1 model];
  if (v40)
  {
    v41 = v40;
    v42 = sub_23F5882D4();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  MEMORY[0x245CAF790](v42, v44);

  MEMORY[0x245CAF790](0xD00000000000001ALL, 0x800000023F591360);
  v45 = [v1 supportsAnnounce];
  v46 = v45 == 0;
  if (v45)
  {
    v47 = 1702195828;
  }

  else
  {
    v47 = 0x65736C6166;
  }

  if (v46)
  {
    v48 = 0xE500000000000000;
  }

  else
  {
    v48 = 0xE400000000000000;
  }

  MEMORY[0x245CAF790](v47, v48);

  MEMORY[0x245CAF790](0xD000000000000016, 0x800000023F591380);
  v49 = [v1 homeKitUserIdentifiers];
  if (v49)
  {
    v50 = v49;
    v51 = sub_23F588354();
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v52 = MEMORY[0x245CAF7D0](v51, v26);
  v54 = v53;

  MEMORY[0x245CAF790](v52, v54);

  MEMORY[0x245CAF790](0xD000000000000015, 0x800000023F5913A0);
  v55 = [v1 serviceTypes];
  if (v55)
  {
    v56 = v55;
    v57 = sub_23F588354();
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v58 = MEMORY[0x245CAF7D0](v57, MEMORY[0x277D837D0]);
  v60 = v59;

  MEMORY[0x245CAF790](v58, v60);

  return v63;
}

uint64_t sub_23F5766C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23F576730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23F576978(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_23F576A08(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_23F576A8C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_23F576AF0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23F577284(*a1);
  v5 = v4;
  if (v3 == sub_23F577284(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23F588574();
  }

  return v8 & 1;
}

unint64_t sub_23F576B7C()
{
  result = qword_27E39CE70;
  if (!qword_27E39CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CE70);
  }

  return result;
}

uint64_t sub_23F576BD0()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F577284(v1);
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F576C34()
{
  sub_23F577284(*v0);
  sub_23F588314();
}

uint64_t sub_23F576C88()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F577284(v1);
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F576CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23F5775D4();
  *a2 = result;
  return result;
}

unint64_t sub_23F576D18@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23F577284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23F576D48()
{
  result = qword_27E39CE78;
  if (!qword_27E39CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39CE80, &qword_23F58DB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CE78);
  }

  return result;
}

unint64_t sub_23F576DC0()
{
  result = qword_27E39CE88;
  if (!qword_27E39CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CE88);
  }

  return result;
}

unint64_t sub_23F576E18()
{
  result = qword_27E39CE90;
  if (!qword_27E39CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CE90);
  }

  return result;
}

unint64_t sub_23F576E70()
{
  result = qword_27E39CE98;
  if (!qword_27E39CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CE98);
  }

  return result;
}

unint64_t sub_23F576EC8()
{
  result = qword_27E39CEA0;
  if (!qword_27E39CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEA0);
  }

  return result;
}

unint64_t sub_23F576F1C()
{
  result = qword_27E39CEA8;
  if (!qword_27E39CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEA8);
  }

  return result;
}

unint64_t sub_23F576F70()
{
  result = qword_27E39CEB0;
  if (!qword_27E39CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEB0);
  }

  return result;
}

unint64_t sub_23F576FC8()
{
  result = qword_27E39CEB8;
  if (!qword_27E39CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEB8);
  }

  return result;
}

unint64_t sub_23F577088()
{
  result = qword_27E39CEC0;
  if (!qword_27E39CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEC0);
  }

  return result;
}

uint64_t sub_23F5770DC(uint64_t a1)
{
  v2 = sub_23F577088();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F57712C()
{
  result = qword_27E39CEC8;
  if (!qword_27E39CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEC8);
  }

  return result;
}

unint64_t sub_23F577184()
{
  result = qword_27E39CED0;
  if (!qword_27E39CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CED0);
  }

  return result;
}

unint64_t sub_23F5771DC()
{
  result = qword_27E39CED8;
  if (!qword_27E39CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CED8);
  }

  return result;
}

uint64_t sub_23F577234(uint64_t a1)
{
  v2 = sub_23F576FC8();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23F577284(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
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
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD00000000000002BLL;
      break;
    case 14:
      result = 0xD000000000000026;
      break;
    default:
      return result;
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

uint64_t sub_23F5775D4()
{
  v0 = sub_23F588554();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23F577620()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CEE0, &qword_23F58DD88);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CEE8, &unk_23F58DD90);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58DA90;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23F587FB4();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23F587FB4();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_23F587FB4();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_23F587FB4();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_23F587FB4();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_23F587FB4();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_23F587FB4();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_23F587FB4();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_23F587FB4();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_23F587FB4();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_23F587FB4();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_23F587FB4();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_23F587FB4();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_23F587FB4();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_23F587FB4();
  v20 = sub_23F585A1C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v20;
}

uint64_t sub_23F5779FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746165706572;
  }

  else
  {
    v4 = 1684104562;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746165706572;
  }

  else
  {
    v6 = 1684104562;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23F588574();
  }

  return v9 & 1;
}

unint64_t sub_23F577A9C()
{
  result = qword_27E39CEF0;
  if (!qword_27E39CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEF0);
  }

  return result;
}

uint64_t sub_23F577AF0()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F577B68()
{
  *v0;
  sub_23F588314();
}

uint64_t sub_23F577BCC()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F577C40@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23F588554();

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

void sub_23F577CA0(uint64_t *a1@<X8>)
{
  v2 = 1684104562;
  if (*v1)
  {
    v2 = 0x746165706572;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_23F577CD8()
{
  result = qword_27E39CEF8;
  if (!qword_27E39CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39CF00, &qword_23F58DE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CEF8);
  }

  return result;
}

unint64_t sub_23F577D50()
{
  result = qword_27E39CF08;
  if (!qword_27E39CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF08);
  }

  return result;
}

unint64_t sub_23F577DA8()
{
  result = qword_27E39CF10;
  if (!qword_27E39CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF10);
  }

  return result;
}

unint64_t sub_23F577E00()
{
  result = qword_27E39CF18;
  if (!qword_27E39CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF18);
  }

  return result;
}

unint64_t sub_23F577E58()
{
  result = qword_27E39CF20;
  if (!qword_27E39CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF20);
  }

  return result;
}

unint64_t sub_23F577EAC()
{
  result = qword_27E39CF28;
  if (!qword_27E39CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF28);
  }

  return result;
}

unint64_t sub_23F577F00()
{
  result = qword_27E39CF30;
  if (!qword_27E39CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF30);
  }

  return result;
}

unint64_t sub_23F577F58()
{
  result = qword_27E39CF38;
  if (!qword_27E39CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF38);
  }

  return result;
}

unint64_t sub_23F578018()
{
  result = qword_27E39CF40;
  if (!qword_27E39CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF40);
  }

  return result;
}

uint64_t sub_23F57806C(uint64_t a1)
{
  v2 = sub_23F578018();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F5780BC()
{
  result = qword_27E39CF48;
  if (!qword_27E39CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF48);
  }

  return result;
}

unint64_t sub_23F578114()
{
  result = qword_27E39CF50;
  if (!qword_27E39CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF50);
  }

  return result;
}

unint64_t sub_23F57816C()
{
  result = qword_27E39CF58;
  if (!qword_27E39CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF58);
  }

  return result;
}

unint64_t sub_23F5781C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF60, &qword_23F58E060);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF68, &qword_23F58EE90);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58DDA0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23F587FB4();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23F587FB4();
  v7 = sub_23F585C04(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_23F578304(uint64_t a1)
{
  v2 = sub_23F577F58();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for ReadActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReadActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ANPlaybackManager.play(tonePlayer:toneFileURL:trackPlayer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23F57455C;

  return sub_23F578BB0(a1, a2, a3);
}

uint64_t sub_23F578574(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF80, &qword_23F58E098);
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

uint64_t sub_23F5787C4(void *a1, uint64_t a2, void *a3, const void *a4, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v11 = sub_23F588074();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[5] = v14;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF70, &qword_23F58E088) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v5[6] = v16;
  v5[7] = _Block_copy(a4);
  if (a2)
  {
    sub_23F588064();
    (*(v12 + 32))(v16, v14, v11);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v12 + 56))(v16, v17, 1, v11);
  v18 = a1;
  v19 = a3;
  v20 = a5;
  v21 = swift_task_alloc();
  v5[8] = v21;
  *v21 = v5;
  v21[1] = sub_23F5789C4;

  return sub_23F578BB0(a1, v16, v19);
}

uint64_t sub_23F5789C4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  sub_23F5794DC(v6);

  v11 = v3[7];
  if (v2)
  {
    v12 = sub_23F588034();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[7], 0);
  }

  v14 = v4[6];
  v13 = v4[7];
  v15 = v4[5];
  _Block_release(v13);

  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_23F578BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF70, &qword_23F58E088) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v5 = sub_23F588074();
  v3[38] = v5;
  v6 = *(v5 - 8);
  v3[39] = v6;
  v7 = *(v6 + 64) + 15;
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23F578CAC, 0, 0);
}

uint64_t sub_23F578CAC()
{
  v1 = v0[34];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  sub_23F57955C(v0[35], v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_23F5794DC(v0[37]);
LABEL_4:
    v5 = v0[36];
    v0[2] = v0;
    v0[3] = sub_23F579158;
    v6 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF78, &qword_23F58E090);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_23F578574;
    v0[21] = &block_descriptor_1;
    v0[22] = v6;
    [v5 playWithCompletionHandler_];
    v7 = v0 + 2;
    goto LABEL_6;
  }

  (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
  v8 = v1;
  v9 = sub_23F588054();
  v0[41] = v9;
  v0[10] = v0;
  v0[11] = sub_23F578F00;
  v10 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF78, &qword_23F58E090);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_23F578574;
  v0[29] = &block_descriptor_16;
  v0[30] = v10;
  [v8 playSystemSoundWithFileURL:v9 completionHandler:v0 + 26];
  v7 = v0 + 10;
LABEL_6:

  return MEMORY[0x282200938](v7);
}

uint64_t sub_23F578F00()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_23F5792D8;
  }

  else
  {
    v3 = sub_23F579010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23F579010()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  (*(v4 + 8))(v1, v3);
  v5 = *(v0 + 288);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23F579158;
  v6 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF78, &qword_23F58E090);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_23F578574;
  *(v0 + 168) = &block_descriptor_1;
  *(v0 + 176) = v6;
  [v5 playWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23F579158()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_23F579394;
  }

  else
  {
    v3 = sub_23F579268;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23F579268()
{
  v1 = v0[40];
  v2 = v0[37];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23F5792D8()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v6 = v0[34];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_23F579394()
{
  v1 = v0[43];
  swift_willThrow();
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23F579414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23F5748C0;

  return sub_23F5787C4(v2, v3, v4, v5, v6);
}

uint64_t sub_23F5794DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF70, &qword_23F58E088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23F57955C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF70, &qword_23F58E088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ANAnnounceServiceListener.send(_:connection:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23F5796CC;

  return (sub_23F57A604)(a1, a2);
}

uint64_t sub_23F5796CC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23F57995C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_23F579A44;

  return sub_23F57A604(v8, a2);
}

uint64_t sub_23F579A44(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_23F588034();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t ANAnnounceServiceListener.sendReply(_:connection:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23F57C0C0;

  return (sub_23F57AE1C)(a1, a2);
}

uint64_t sub_23F579E60(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_23F57C0BC;

  return sub_23F57AE1C(v8, a2);
}

uint64_t sub_23F579F48(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23F5748C0;

  return v7();
}

uint64_t sub_23F57A030(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23F57455C;

  return v8();
}

uint64_t sub_23F57A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23F57C000(a3, v25 - v11, &qword_27E39C9E8, &qword_23F58D708);
  v13 = sub_23F5883B4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23F5741F8(v12, &qword_27E39C9E8, &qword_23F58D708);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23F5883A4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23F588374();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23F588304() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23F5741F8(a3, &qword_27E39C9E8, &qword_23F58D708);

    return v23;
  }

LABEL_8:
  sub_23F5741F8(a3, &qword_27E39C9E8, &qword_23F58D708);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23F57A414(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23F57A50C;

  return v7(a1);
}

uint64_t sub_23F57A50C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23F57A604(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_23F588074();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23F57A714, 0, 0);
}

uint64_t sub_23F57A714()
{
  v1 = v0[4];
  if (!v1 || (v2 = [v1 clientID]) == 0)
  {
    v2 = 0;
  }

  v3 = v0[3];
  [v3 setClientID_];

  v4 = [objc_opt_self() sharedCoordinator];
  v0[11] = v4;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_23F57C068();
  *v7 = v0;
  v7[1] = sub_23F57A874;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_23F57C0C4, v5, v8);
}

uint64_t sub_23F57A874()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23F57AAE0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_23F57A990;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23F57A990()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);

  v14 = *(v0 + 16);
  v8 = objc_opt_self();
  v9 = [v7 content];
  v10 = [v9 audioFileURL];

  sub_23F588064();
  v11 = sub_23F588054();
  (*(v2 + 8))(v1, v3);
  [v8 removeItem_];

  v12 = *(v0 + 8);

  return v12(v14);
}

uint64_t sub_23F57AAE0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  v3 = [v2 content];
  v4 = [v3 endpointIdentifier];

  if (v4)
  {
    v5 = *(v0 + 48);
    sub_23F5880D4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 112);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = sub_23F5880E4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, v6, 1, v11);
  sub_23F5766C0(v9, v8);
  v13 = [objc_opt_self() shared];
  v14 = sub_23F588034();
  v15 = [v14 code];

  sub_23F57C000(v8, v10, &qword_27E39CAE0, &unk_23F58EAD0);
  v16 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v17 = *(v0 + 40);
    v16 = sub_23F5880C4();
    (*(v12 + 8))(v17, v11);
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  v33 = *(v0 + 40);
  v22 = *(v0 + 24);
  v23 = [objc_opt_self() contextWithEndpointID_];

  [v13 error:v15 context:v23];
  swift_willThrow();
  sub_23F5741F8(v21, &qword_27E39CAE0, &unk_23F58EAD0);
  v24 = objc_opt_self();
  v25 = [v22 content];
  v26 = [v25 audioFileURL];

  sub_23F588064();
  v27 = sub_23F588054();
  (*(v19 + 8))(v20, v31);
  [v24 removeItem_];

  v28 = *(v0 + 8);
  v29 = *(v0 + 112);

  return v28();
}

uint64_t sub_23F57AE1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_23F588074();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23F57AF44, 0, 0);
}

uint64_t sub_23F57AF44()
{
  v1 = [*(v0 + 24) destination];
  v2 = [v1 announcementIdentifier];

  if (v2)
  {
    sub_23F5882D4();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v0 + 24) content];
  v6 = [v5 endpointIdentifier];

  if (v6)
  {
    v7 = *(v0 + 88);
    sub_23F5880D4();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = sub_23F5880E4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, v8, 1, v11);
  sub_23F5766C0(v10, v9);
  v71 = v12;
  if (v4)
  {
    goto LABEL_19;
  }

  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v15 = [objc_opt_self() sharedCoordinator];
  sub_23F57C000(v13, v14, &qword_27E39CAE0, &unk_23F58EAD0);
  v73 = *(v12 + 48);
  if (v73(v14, 1, v11) == 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = *(v0 + 80);
    v16 = sub_23F5880C4();
    v18 = *(v12 + 8);
    v12 += 8;
    v18(v17, v11);
  }

  v19 = [v15 allAnnouncementsSortedByReceiptForEndpointID_];

  sub_23F57C068();
  v20 = sub_23F588354();

  if (!(v20 >> 62))
  {
    v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_31:

    goto LABEL_32;
  }

  v28 = sub_23F588514();
  if (!v28)
  {
    goto LABEL_31;
  }

LABEL_13:
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_39;
  }

  v12 = v71;
  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v31 = MEMORY[0x245CAF910](v30, v20);
    goto LABEL_18;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    __break(1u);
    return MEMORY[0x2822008A0](v30, v21, v22, v23, v24, v25, v26, v27);
  }

  v31 = *(v20 + 8 * v30 + 32);
LABEL_18:
  v32 = v31;

  v33 = [v32 identifier];

  sub_23F5882D4();
LABEL_19:
  v34 = *(v0 + 96);
  v35 = *(v0 + 72);
  v36 = objc_opt_self();
  v37 = [v36 sharedCoordinator];
  v38 = sub_23F5882C4();

  sub_23F57C000(v34, v35, &qword_27E39CAE0, &unk_23F58EAD0);
  v73 = *(v12 + 48);
  if (v73(v35, 1, v11) == 1)
  {
    v39 = 0;
  }

  else
  {
    v40 = *(v0 + 72);
    v39 = sub_23F5880C4();
    (*(v12 + 8))(v40, v11);
  }

  v41 = [v37 announcementForID:v38 endpointID:v39];
  *(v0 + 104) = v41;

  if (v41)
  {
    v42 = *(v0 + 32);
    if (!v42 || (v43 = [v42 clientID]) == 0)
    {
      v43 = 0;
    }

    v44 = *(v0 + 24);
    [v44 setClientID_];

    v45 = [v44 destination];
    [v45 setAnnouncement_];

    v46 = [v36 sharedCoordinator];
    *(v0 + 112) = v46;
    v47 = swift_task_alloc();
    *(v0 + 120) = v47;
    *(v47 + 16) = v46;
    *(v47 + 24) = v44;
    v48 = *(MEMORY[0x277D85A40] + 4);
    v49 = swift_task_alloc();
    *(v0 + 128) = v49;
    v27 = sub_23F57C068();
    *v49 = v0;
    v49[1] = sub_23F57B74C;
    v25 = sub_23F57C0B4;
    v23 = 0x293A5F28646E6573;
    v30 = v0 + 16;
    v21 = 0;
    v22 = 0;
    v24 = 0xE800000000000000;
    v26 = v47;

    return MEMORY[0x2822008A0](v30, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_32:
  [objc_opt_self() an:1008 errorWithCode:*MEMORY[0x277CEA9D0] component:?];
  swift_willThrow();
  v50 = *(v0 + 96);
  v51 = *(v0 + 64);
  v52 = [objc_opt_self() shared];
  v53 = sub_23F588034();
  v54 = [v53 code];

  sub_23F57C000(v50, v51, &qword_27E39CAE0, &unk_23F58EAD0);
  if (v73(v51, 1, v11) == 1)
  {
    v55 = 0;
  }

  else
  {
    v56 = *(v0 + 64);
    v55 = sub_23F5880C4();
    (*(v71 + 8))(v56, v11);
  }

  v57 = *(v0 + 96);
  v69 = *(v0 + 88);
  v70 = *(v0 + 80);
  v58 = *(v0 + 56);
  v72 = *(v0 + 72);
  v74 = *(v0 + 64);
  v59 = *(v0 + 48);
  v68 = *(v0 + 40);
  v60 = *(v0 + 24);
  v61 = [objc_opt_self() contextWithEndpointID_];

  [v52 error:v54 context:v61];
  swift_willThrow();
  sub_23F5741F8(v57, &qword_27E39CAE0, &unk_23F58EAD0);
  v62 = objc_opt_self();
  v63 = [v60 content];
  v64 = [v63 audioFileURL];

  sub_23F588064();
  v65 = sub_23F588054();
  (*(v59 + 8))(v58, v68);
  [v62 removeItem_];

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_23F57B74C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_23F57B9EC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_23F57B868;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23F57B868()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v15 = *(v0 + 72);
  v16 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);

  v17 = *(v0 + 16);
  sub_23F5741F8(v3, &qword_27E39CAE0, &unk_23F58EAD0);
  v9 = objc_opt_self();
  v10 = [v8 content];
  v11 = [v10 audioFileURL];

  sub_23F588064();
  v12 = sub_23F588054();
  (*(v6 + 8))(v5, v7);
  [v9 removeItem_];

  v13 = *(v0 + 8);

  return v13(v17);
}

uint64_t sub_23F57B9EC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = [objc_opt_self() shared];
  v7 = sub_23F588034();
  v8 = [v7 code];

  sub_23F57C000(v4, v5, &qword_27E39CAE0, &unk_23F58EAD0);
  v9 = sub_23F5880E4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v5, 1, v9) != 1)
  {
    v12 = *(v0 + 64);
    v11 = sub_23F5880C4();
    (*(v10 + 8))(v12, v9);
  }

  v13 = *(v0 + 96);
  v25 = *(v0 + 88);
  v26 = *(v0 + 80);
  v14 = *(v0 + 56);
  v27 = *(v0 + 72);
  v28 = *(v0 + 64);
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v18 = [objc_opt_self() contextWithEndpointID_];

  [v6 error:v8 context:v18];
  swift_willThrow();
  sub_23F5741F8(v13, &qword_27E39CAE0, &unk_23F58EAD0);
  v19 = objc_opt_self();
  v20 = [v17 content];
  v21 = [v20 audioFileURL];

  sub_23F588064();
  v22 = sub_23F588054();
  (*(v15 + 8))(v14, v16);
  [v19 removeItem_];

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23F57BCC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23F5748C0;

  return sub_23F579E60(v2, v3, v5, v4);
}

uint64_t sub_23F57BD80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23F5748C0;

  return sub_23F57A414(a1, v5);
}

uint64_t sub_23F57BE38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23F57455C;

  return sub_23F57A414(a1, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23F57BF40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23F5748C0;

  return sub_23F57995C(v2, v3, v5, v4);
}

uint64_t sub_23F57C000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_23F57C068()
{
  result = qword_27E39C9D0;
  if (!qword_27E39C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E39C9D0);
  }

  return result;
}

unint64_t sub_23F57C0D8()
{
  result = qword_27E39CF88;
  if (!qword_27E39CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF88);
  }

  return result;
}

uint64_t sub_23F57C138()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_23F588314();
}

uint64_t sub_23F57C25C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23F57CA04();
  *a2 = result;
  return result;
}

void sub_23F57C28C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xD000000000000019;
  v6 = 0x800000023F590D50;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001CLL;
    v6 = 0x800000023F590F00;
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

unint64_t sub_23F57C37C()
{
  result = qword_27E39CF90;
  if (!qword_27E39CF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39CF98, &qword_23F58E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CF90);
  }

  return result;
}

unint64_t sub_23F57C3F4()
{
  result = qword_27E39CFA0;
  if (!qword_27E39CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFA0);
  }

  return result;
}

unint64_t sub_23F57C44C()
{
  result = qword_27E39CFA8;
  if (!qword_27E39CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFA8);
  }

  return result;
}

unint64_t sub_23F57C4A4()
{
  result = qword_27E39CFB0;
  if (!qword_27E39CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFB0);
  }

  return result;
}

unint64_t sub_23F57C4FC()
{
  result = qword_27E39CFB8;
  if (!qword_27E39CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFB8);
  }

  return result;
}

unint64_t sub_23F57C550()
{
  result = qword_27E39CFC0;
  if (!qword_27E39CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFC0);
  }

  return result;
}

unint64_t sub_23F57C5A4()
{
  result = qword_27E39CFC8;
  if (!qword_27E39CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFC8);
  }

  return result;
}

unint64_t sub_23F57C5FC()
{
  result = qword_27E39CFD0;
  if (!qword_27E39CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFD0);
  }

  return result;
}

unint64_t sub_23F57C6BC()
{
  result = qword_27E39CFD8;
  if (!qword_27E39CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFD8);
  }

  return result;
}

uint64_t sub_23F57C710(uint64_t a1)
{
  v2 = sub_23F57C6BC();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F57C760()
{
  result = qword_27E39CFE0;
  if (!qword_27E39CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFE0);
  }

  return result;
}

unint64_t sub_23F57C7B8()
{
  result = qword_27E39CFE8;
  if (!qword_27E39CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFE8);
  }

  return result;
}

unint64_t sub_23F57C810()
{
  result = qword_27E39CFF0;
  if (!qword_27E39CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39CFF0);
  }

  return result;
}

uint64_t sub_23F57C868(uint64_t a1)
{
  v2 = sub_23F57C5FC();

  return MEMORY[0x28210C300](a1, v2);
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

uint64_t sub_23F57CA04()
{
  v0 = sub_23F588554();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23F57CA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CFF8, &qword_23F58E3F8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D000, &qword_23F58E400);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58E120;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23F587FB4();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23F587FB4();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_23F587FB4();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_23F587FB4();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_23F587FB4();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_23F587FB4();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_23F587FB4();
  v12 = sub_23F585DEC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t sub_23F57CCB4(void *a1)
{
  v1 = a1;
  isAnnounce = HMAccessory.an_isAnnounceEnabled.getter();

  return isAnnounce & 1;
}

uint64_t HMAccessory.an_isAnnounceEnabled.getter()
{
  if (([v0 hmu_isEndpoint] & 1) != 0 || (v1 = sub_23F57D2D4(), v1 == 2))
  {
    v1 = sub_23F57CFF8();
  }

  if (qword_27E39C920 != -1)
  {
    swift_once();
  }

  v2 = sub_23F5881D4();
  __swift_project_value_buffer(v2, qword_27E39FCA0);
  v3 = v0;
  v4 = sub_23F5881B4();
  v5 = sub_23F5883E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v1 & 1;
    v8 = v3;
    _os_log_impl(&dword_23F525000, v4, v5, "Announce Enabled Setting For Accessory %@: %{BOOL}d", v6, 0x12u);
    sub_23F57D964(v7);
    MEMORY[0x245CB05A0](v7, -1, -1);
    MEMORY[0x245CB05A0](v6, -1, -1);
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 BOOLForDefault_];

  if (v10)
  {
    v11 = v3;
    v12 = sub_23F5881B4();
    v13 = sub_23F5883E4();

    if (!os_log_type_enabled(v12, v13))
    {
      v10 = 1;
LABEL_18:

      return v10;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    v17 = "[Override] Force Allow Announce For Accessory %@ Enabled";
LABEL_16:
    _os_log_impl(&dword_23F525000, v12, v13, v17, v14, 0xCu);
    sub_23F57D964(v15);
    MEMORY[0x245CB05A0](v15, -1, -1);
    MEMORY[0x245CB05A0](v14, -1, -1);
    goto LABEL_18;
  }

  if ((v1 & 1) == 0)
  {
    v18 = v3;
    v12 = sub_23F5881B4();
    v13 = sub_23F5883E4();

    if (!os_log_type_enabled(v12, v13))
    {
      v10 = 0;
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v18;
    *v15 = v18;
    v19 = v18;
    v17 = "Announce is DISABLED For Accessory %@";
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_23F57CFF8()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 accessorySettingsCache];

  v3 = [v2 settingsForAccessory_];
  if (!v3)
  {
    if (qword_27E39C920 != -1)
    {
      swift_once();
    }

    v14 = sub_23F5881D4();
    __swift_project_value_buffer(v14, qword_27E39FCA0);
    v15 = sub_23F5881B4();
    v16 = sub_23F5883D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23F525000, v15, v16, "Settings not found in settings from data source", v17, 2u);
      MEMORY[0x245CB05A0](v17, -1, -1);

      return 2;
    }

    return 2;
  }

  sub_23F5704C0(0, &qword_27E39D010, 0x277CD1AD0);
  v4 = sub_23F5882B4();

  if (!*(v4 + 16) || (v5 = sub_23F58465C(0xD000000000000015, 0x800000023F591730), (v6 & 1) == 0))
  {

LABEL_7:
    if (qword_27E39C920 != -1)
    {
      swift_once();
    }

    v10 = sub_23F5881D4();
    __swift_project_value_buffer(v10, qword_27E39FCA0);
    v11 = sub_23F5881B4();
    v12 = sub_23F5883D4();
    if (os_log_type_enabled(v11, v12))
    {
      v9 = 2;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23F525000, v11, v12, "Announce setting not found in settings from data source", v13, 2u);
      MEMORY[0x245CB05A0](v13, -1, -1);

      return v9;
    }

    return 2;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = [v8 BOOLValue];

  return v9;
}

uint64_t sub_23F57D2D4()
{
  v1 = [v0 an_announceSettingFromAccessorySettings];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];
  }

  else
  {
    if (qword_27E39C920 != -1)
    {
      swift_once();
    }

    v4 = sub_23F5881D4();
    __swift_project_value_buffer(v4, qword_27E39FCA0);
    v5 = sub_23F5881B4();
    v6 = sub_23F5883D4();
    if (os_log_type_enabled(v5, v6))
    {
      v3 = 2;
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23F525000, v5, v6, "Announce setting not found in accessory settings", v7, 2u);
      MEMORY[0x245CB05A0](v7, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v3;
}

uint64_t sub_23F57D3F8(void *a1)
{
  v1 = a1;
  v2 = HMAccessory.an_supportsAnnounce.getter();

  return v2 & 1;
}

uint64_t HMAccessory.an_supportsAnnounce.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 BOOLForDefault_];

  if (!v3)
  {
    return [v1 supportsAnnounce];
  }

  if (qword_27E39C920 != -1)
  {
    swift_once();
  }

  v4 = sub_23F5881D4();
  __swift_project_value_buffer(v4, qword_27E39FCA0);
  v5 = v1;
  v6 = sub_23F5881B4();
  v7 = sub_23F5883E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 1024;
    *(v8 + 14) = [v5 supportsAnnounce];
    _os_log_impl(&dword_23F525000, v6, v7, "Supports Announce for Accessory %@: %{BOOL}d", v8, 0x12u);
    sub_23F57D964(v9);
    MEMORY[0x245CB05A0](v9, -1, -1);
    MEMORY[0x245CB05A0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v11 = v5;
  v12 = sub_23F5881B4();
  v13 = sub_23F5883E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_23F525000, v12, v13, "[Override] Force Announce Supported For Accessory %@ Enabled", v14, 0xCu);
    sub_23F57D964(v15);
    MEMORY[0x245CB05A0](v15, -1, -1);
    MEMORY[0x245CB05A0](v14, -1, -1);
  }

  return 1;
}

uint64_t sub_23F57D68C(void *a1)
{
  v1 = a1;
  if ([v1 an_supportsAnnounce])
  {
    v2 = [v1 device];

    if (!v2)
    {
      return 0;
    }

    v3 = 1;
    v1 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t HMAccessory.an_isAppleAnnounceAccessory.getter()
{
  result = [v0 an_supportsAnnounce];
  if (result)
  {
    result = [v0 device];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

id sub_23F57D7E0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_23F5704C0(0, &qword_27E39D008, 0x277CD1650);
  v5 = sub_23F588354();
  sub_23F57DB40(v5, a4);

  v6 = sub_23F588344();

  return v6;
}

id sub_23F57D87C()
{
  sub_23F5704C0(0, &qword_27E39D008, 0x277CD1650);
  v0 = sub_23F588354();
  _sSo11HMAccessoryC14AnnounceDaemonE023announceAccessoriesWithB7Enabled4fromSayABGAF_tFZ_0(v0);

  v1 = sub_23F588344();

  return v1;
}

uint64_t sub_23F57D964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E0, &unk_23F58E820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo11HMAccessoryC14AnnounceDaemonE023announceAccessoriesWithB7Enabled4fromSayABGAF_tFZ_0(unint64_t a1)
{
  v1 = a1;
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23F588514())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef__endpointIDForPlaybackManager_;
    v7 = &selRef__endpointIDForPlaybackManager_;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x245CAF910](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 v6[189]] && (objc_msgSend(v9, v7[181]) & 1) != 0)
      {
        sub_23F5884C4();
        v11 = v4;
        v12 = i;
        v13 = v1;
        v14 = v6;
        v15 = *(v17 + 16);
        sub_23F5884F4();
        v6 = v14;
        v1 = v13;
        i = v12;
        v4 = v11;
        sub_23F588504();
        sub_23F5884D4();
        v7 = &selRef__endpointIDForPlaybackManager_;
      }

      else
      {
      }

      ++v3;
      if (v10 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23F57DB40(unint64_t a1, SEL *a2)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23F588514())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CAF910](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v6 *a2])
      {
        sub_23F5884C4();
        v9 = *(v11 + 16);
        sub_23F5884F4();
        sub_23F588504();
        sub_23F5884D4();
      }

      else
      {
      }

      if (v8 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

id SiriReferenceResolutionDonation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriReferenceResolutionDonation.init()()
{
  v1 = sub_23F5881D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ANLogWithCategory();
  sub_23F5881E4();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC14AnnounceDaemon31SiriReferenceResolutionDonation_logger, v5, v1);
  v7 = type metadata accessor for SiriReferenceResolutionDonation();
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t type metadata accessor for SiriReferenceResolutionDonation()
{
  result = qword_28130B450;
  if (!qword_28130B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23F57DF00(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D018, &qword_23F58E410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D020, &qword_23F58E418);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  v42 = sub_23F588214();
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v44 = v2;
  v16 = sub_23F5881B4();
  v17 = sub_23F5883E4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v45 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_23F572A60(a1, a2, &v45);
    _os_log_impl(&dword_23F525000, v16, v17, "Start Donation [AnnouncementID = %s]", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CB05A0](v19, -1, -1);
    MEMORY[0x245CB05A0](v18, -1, -1);
  }

  v20 = sub_23F588124();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_23F588114();
  sub_23F588104();
  if (MEMORY[0x245CAF560](v23))
  {
    v24 = *MEMORY[0x277CEAC18];
    sub_23F5882D4();
    v25 = sub_23F5881F4();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);

    v41 = v15;
    sub_23F588204();
    sub_23F588194();
    sub_23F588184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D028, &unk_23F58E420);
    v40 = a1;
    v26 = v12;
    v27 = *(v12 + 72);
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_23F58D770;
    v30 = v15;
    v31 = v42;
    (*(v12 + 16))(v29 + v28, v30, v42);
    v32 = sub_23F588224();
    v33 = v43;
    (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v40;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = a2;

    sub_23F588174();

    sub_23F57E7F4(v33);
    (*(v26 + 8))(v41, v31);
  }

  else
  {
    v44 = sub_23F5881B4();
    v37 = sub_23F5883D4();
    if (os_log_type_enabled(v44, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23F525000, v44, v37, "Failed to create uso entity", v38, 2u);
      MEMORY[0x245CB05A0](v38, -1, -1);
    }

    v39 = v44;
  }
}

void sub_23F57E454(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;

    if (a2)
    {
      sub_23F57E940(a1, 1);
      v11 = sub_23F5881B4();
      v12 = sub_23F5883D4();

      sub_23F57E94C(a1, 1);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22 = v14;
        *v13 = 136315394;
        *(v13 + 4) = sub_23F572A60(a4, a5, &v22);
        *(v13 + 12) = 2080;
        swift_getErrorValue();
        v15 = sub_23F5885A4();
        v17 = sub_23F572A60(v15, v16, &v22);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_23F525000, v11, v12, "Finished Donation [AnnouncementID = %s] with Error %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CB05A0](v14, -1, -1);
        MEMORY[0x245CB05A0](v13, -1, -1);
      }
    }

    else
    {
      v18 = sub_23F5881B4();
      v19 = sub_23F5883E4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_23F572A60(a4, a5, &v22);
        _os_log_impl(&dword_23F525000, v18, v19, "Finished Donation Successfully [AnnouncementID = %s]", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x245CB05A0](v21, -1, -1);
        MEMORY[0x245CB05A0](v20, -1, -1);
      }
    }
  }
}

id SiriReferenceResolutionDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriReferenceResolutionDonation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23F57E7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D018, &qword_23F58E410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23F57E864()
{
  result = sub_23F5881D4();
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

id sub_23F57E940(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_23F57E94C(id a1, char a2)
{
  if (a2)
  {
  }
}

id AppIntentsConnectionListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentsConnectionListener.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBA598]) initWithBundleIdentifier_];
  *&v0[OBJC_IVAR___ANAppIntentsConnectionListener_connectionListener] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppIntentsConnectionListener();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AppIntentsConnectionListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentsConnectionListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23F57EAD8()
{
  v0 = sub_23F5881D4();
  __swift_allocate_value_buffer(v0, qword_27E39D038);
  __swift_project_value_buffer(v0, qword_27E39D038);
  return sub_23F5881C4();
}

id DemoStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DemoStateManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoStateManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DemoStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoStateManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23F57ED04(SEL *a1, const char *a2, const char *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    if (qword_27E39C910 != -1)
    {
      swift_once();
    }

    v21 = sub_23F5881D4();
    __swift_project_value_buffer(v21, qword_27E39D038);
    v22 = sub_23F5881B4();
    v23 = sub_23F5883D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23F525000, v22, v23, a3, v24, 2u);
      MEMORY[0x245CB05A0](v24, -1, -1);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v32[0] = 0;
  v8 = [v6 isSecureDemoModeEnabled_];
  v9 = v32[0];
  if (v32[0] || (v10 = v8, v32[0] = 0, v11 = [v7 *a1], (v9 = v32[0]) != 0))
  {
    swift_willThrow();
    v12 = v9;
    if (qword_27E39C910 != -1)
    {
      swift_once();
    }

    v13 = sub_23F5881D4();
    __swift_project_value_buffer(v13, qword_27E39D038);
    v14 = v12;
    v15 = sub_23F5881B4();
    v16 = sub_23F5883D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_23F525000, v15, v16, "Failed to determine demo state: %@", v17, 0xCu);
      sub_23F57D964(v18);
      MEMORY[0x245CB05A0](v18, -1, -1);
      MEMORY[0x245CB05A0](v17, -1, -1);
    }

    else
    {
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v27 = v11;
  if (qword_27E39C910 != -1)
  {
    swift_once();
  }

  v28 = sub_23F5881D4();
  __swift_project_value_buffer(v28, qword_27E39D038);
  v29 = sub_23F5881B4();
  v30 = sub_23F5883C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109376;
    *(v31 + 4) = v10;
    *(v31 + 8) = 1024;
    *(v31 + 10) = v27;
    _os_log_impl(&dword_23F525000, v29, v30, a2, v31, 0xEu);
    MEMORY[0x245CB05A0](v31, -1, -1);
  }

  result = v27 & v10;
LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F57F0CC()
{
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

unint64_t sub_23F57F1F0()
{
  result = qword_27E39D050;
  if (!qword_27E39D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D050);
  }

  return result;
}

uint64_t sub_23F57F24C()
{
  *v0;
  *v0;
  *v0;
  sub_23F588314();
}

uint64_t sub_23F57F350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23F57FAD8();
  *a2 = result;
  return result;
}

void sub_23F57F380(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (v2 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x800000023F590D50;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (v2 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_23F57F450()
{
  result = qword_27E39D058;
  if (!qword_27E39D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39D060, &qword_23F58E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D058);
  }

  return result;
}

unint64_t sub_23F57F4C8()
{
  result = qword_27E39D068;
  if (!qword_27E39D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D068);
  }

  return result;
}

unint64_t sub_23F57F520()
{
  result = qword_27E39D070;
  if (!qword_27E39D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D070);
  }

  return result;
}

unint64_t sub_23F57F578()
{
  result = qword_27E39D078;
  if (!qword_27E39D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D078);
  }

  return result;
}

unint64_t sub_23F57F5D0()
{
  result = qword_27E39D080;
  if (!qword_27E39D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D080);
  }

  return result;
}

unint64_t sub_23F57F624()
{
  result = qword_27E39D088;
  if (!qword_27E39D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D088);
  }

  return result;
}

unint64_t sub_23F57F678()
{
  result = qword_27E39D090;
  if (!qword_27E39D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D090);
  }

  return result;
}

unint64_t sub_23F57F6D0()
{
  result = qword_27E39D098;
  if (!qword_27E39D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D098);
  }

  return result;
}

unint64_t sub_23F57F790()
{
  result = qword_27E39D0A0;
  if (!qword_27E39D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D0A0);
  }

  return result;
}

uint64_t sub_23F57F7E4(uint64_t a1)
{
  v2 = sub_23F57F790();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F57F834()
{
  result = qword_27E39D0A8;
  if (!qword_27E39D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D0A8);
  }

  return result;
}

unint64_t sub_23F57F88C()
{
  result = qword_27E39D0B0;
  if (!qword_27E39D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D0B0);
  }

  return result;
}

unint64_t sub_23F57F8E4()
{
  result = qword_27E39D0B8;
  if (!qword_27E39D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D0B8);
  }

  return result;
}

uint64_t sub_23F57F93C(uint64_t a1)
{
  v2 = sub_23F57F6D0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for StopAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StopAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23F57FAD8()
{
  v0 = sub_23F588554();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23F57FB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D0C0, &qword_23F58E7B8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D0C8, &qword_23F58E7C0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58E4E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23F587FB4();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23F587FB4();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_23F587FB4();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_23F587FB4();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_23F587FB4();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_23F587FB4();
  v11 = sub_23F585FD4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v11;
}

id sub_23F57FD88()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 hasCurrentCalls];

  v2 = sub_23F5881B4();
  v3 = sub_23F5883E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_23F525000, v2, v3, "Call Center Has Calls = %{BOOL}d", v4, 8u);
    MEMORY[0x245CB05A0](v4, -1, -1);
  }

  return v1;
}

uint64_t sub_23F57FF6C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23F57FFCC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___ANTelephonyObserver_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_23F580064;
}

void sub_23F580064(uint64_t a1, char a2)
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

id TelephonyObserver.init(queue:)(void *a1)
{
  v3 = sub_23F5881D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_23F5881C4();
  (*(v4 + 32))(v1 + OBJC_IVAR___ANTelephonyObserver_logger, v7, v3);
  v8 = type metadata accessor for TelephonyObserver();
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_23F580278(a1);

  return v9;
}

void sub_23F580278(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = &selRef_initWithContentsOfURL_;
  v4 = [v2 sharedAVSystemController];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v6 = *MEMORY[0x277D26B50];
  v7 = *MEMORY[0x277D26DD0];
  aBlock[0] = 0;
  v8 = [v4 setAttribute:v6 forKey:v7 error:aBlock];

  if (v8)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_23F588044();

    swift_willThrow();
    v12 = v11;
    v13 = sub_23F5881B4();
    v14 = sub_23F5883D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446466;
      v17 = sub_23F5882D4();
      v19 = sub_23F572A60(v17, v18, aBlock);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_23F5885A4();
      v22 = sub_23F572A60(v20, v21, aBlock);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_23F525000, v13, v14, "Failed to set attribute %{public}s on AVSystemController: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CB05A0](v16, -1, -1);
      v23 = v15;
      v3 = &selRef_initWithContentsOfURL_;
      MEMORY[0x245CB05A0](v23, -1, -1);
    }

    else
    {
    }
  }

  v24 = [objc_opt_self() defaultCenter];
  v25 = [v2 v3[457]];
  if (a1)
  {
    sub_23F5704C0(0, &qword_27E39C968, 0x277D85C78);
    v26 = sub_23F588404();
    v27 = sub_23F588414();

    if (v27)
    {
      v28 = [objc_opt_self() mainQueue];
    }

    else
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
      [v28 setUnderlyingQueue_];
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23F581218;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F580F14;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  v31 = [v24 addObserverForName:v6 object:v25 queue:v28 usingBlock:v30];
  _Block_release(v30);
  swift_unknownObjectRelease();

  v32 = *MEMORY[0x277D85DE8];
}

id TelephonyObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D26B50];
  v3 = [objc_opt_self() sharedAVSystemController];
  [v1 removeObserver:v0 name:v2 object:v3];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for TelephonyObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id TelephonyObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_23F580A9C(uint64_t a1)
{
  v2 = sub_23F588024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = OBJC_IVAR___ANTelephonyObserver_logger;
  (*(v3 + 16))(v6, a1, v2);
  v10 = sub_23F5881B4();
  v11 = sub_23F5883E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33[2] = v9;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33[1] = a1;
    v15 = v14;
    v34[0] = v14;
    *v13 = 136315138;
    sub_23F581238();
    v16 = sub_23F588564();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    v19 = sub_23F572A60(v16, v18, v34);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_23F525000, v10, v11, "Call Changed Notification: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x245CB05A0](v15, -1, -1);
    MEMORY[0x245CB05A0](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v20 = sub_23F588014();
  if (!v20)
  {

    v35 = 0u;
    v36 = 0u;
    goto LABEL_17;
  }

  v21 = v20;
  v22 = *MEMORY[0x277D26B58];
  v33[3] = sub_23F5882D4();
  v33[4] = v23;
  sub_23F588474();
  if (!*(v21 + 16) || (v24 = sub_23F5844B0(v34), (v25 & 1) == 0))
  {

    sub_23F574810(v34);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_15;
  }

  sub_23F574650(*(v21 + 56) + 32 * v24, &v35);
  sub_23F574810(v34);

  if (!*(&v36 + 1))
  {
LABEL_15:

LABEL_17:
    sub_23F5741F8(&v35, &qword_27E39D0E8, &qword_23F58E818);
    return;
  }

  sub_23F5704C0(0, &qword_27E39D0F0, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v26 = v34[0];
    v27 = sub_23F5881B4();
    v28 = sub_23F5883E4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_23F525000, v27, v28, "Active: %@", v29, 0xCu);
      sub_23F5741F8(v30, &qword_27E39C9E0, &unk_23F58E820);
      MEMORY[0x245CB05A0](v30, -1, -1);
      MEMORY[0x245CB05A0](v29, -1, -1);
    }

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      [v32 observer:v8 didUpdateActiveCallStatus:{objc_msgSend(v26, sel_BOOLValue)}];

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

uint64_t sub_23F580F14(uint64_t a1)
{
  v2 = sub_23F588024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23F588004();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t type metadata accessor for TelephonyObserver()
{
  result = qword_27E39D0D8;
  if (!qword_27E39D0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23F58105C()
{
  result = sub_23F5881D4();
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23F581238()
{
  result = qword_27E39D0F8;
  if (!qword_27E39D0F8)
  {
    sub_23F588024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D0F8);
  }

  return result;
}

uint64_t static ANMGProductTypeUtility.productTypeToSystemImageName(_:)(uint64_t a1)
{
  if (a1 == 3348380076)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x2E646F70656D6F68;
  }
}

id ANMGProductTypeUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ANMGProductTypeUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ANMGProductTypeUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ANMGProductTypeUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ANMGProductTypeUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23F581468()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CD3F20]) init];
  v7[0] = 0;
  v2 = [v0 contentByUpdatingWithProvider:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_23F588044();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23F581564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_23F5815AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23F58160C()
{
  result = qword_27E39D100;
  if (!qword_27E39D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D100);
  }

  return result;
}

uint64_t sub_23F581660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if (v5)
    {
      if ((v9 & 1) == 0 || (v3 != v7 || v4 != v8) && (sub_23F588574() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v9)
      {
        return 0;
      }

      sub_23F581BA0();
      if ((sub_23F588414() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  v10 = sub_23F588574();
  result = 0;
  if ((v10 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23F581760()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_23F5885F4();
  sub_23F588314();
  sub_23F588614();
  if (v6)
  {
    MEMORY[0x245CAFA70](1);
    sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    sub_23F588424();
  }

  return sub_23F588624();
}

uint64_t sub_23F581814()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_23F588314();
  sub_23F588614();
  if (v6)
  {
    MEMORY[0x245CAFA70](1);

    return sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    return sub_23F588424();
  }
}

uint64_t sub_23F5818BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_23F5885F4();
  sub_23F588314();
  sub_23F588614();
  if (v6)
  {
    MEMORY[0x245CAFA70](1);
    sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    sub_23F588424();
  }

  return sub_23F588624();
}

uint64_t sub_23F58196C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_23F581BA0();
      return sub_23F588414() & 1;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  v4 = *a1;

  return sub_23F588574();
}

uint64_t sub_23F581A14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_23F5885F4();
  if (v3)
  {
    MEMORY[0x245CAFA70](1);
    sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    sub_23F588424();
  }

  return sub_23F588624();
}

uint64_t sub_23F581A98()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x245CAFA70](1);

    return sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    return sub_23F588424();
  }
}

uint64_t sub_23F581B20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_23F5885F4();
  if (v3)
  {
    MEMORY[0x245CAFA70](1);
    sub_23F588314();
  }

  else
  {
    MEMORY[0x245CAFA70](0);
    sub_23F588424();
  }

  return sub_23F588624();
}

unint64_t sub_23F581BA0()
{
  result = qword_27E39D108;
  if (!qword_27E39D108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E39D108);
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

uint64_t sub_23F581C00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23F581C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_23F581CAC()
{
  result = qword_27E39D110;
  if (!qword_27E39D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D110);
  }

  return result;
}

id OS_dispatch_queue.operationQueue.getter()
{
  v1 = v0;
  sub_23F581DB8();
  v2 = sub_23F588404();
  v3 = sub_23F588414();

  if (v3)
  {
    v4 = [objc_opt_self() mainQueue];

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v6 setUnderlyingQueue_];
    return v6;
  }
}

unint64_t sub_23F581DB8()
{
  result = qword_27E39C968;
  if (!qword_27E39C968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E39C968);
  }

  return result;
}

uint64_t sub_23F581E04()
{
  v0 = sub_23F5881D4();
  __swift_allocate_value_buffer(v0, qword_27E39D118);
  v1 = __swift_project_value_buffer(v0, qword_27E39D118);
  if (qword_27E39C928 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E39FCB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_23F581EF0()
{
  result = qword_27E39D008;
  if (!qword_27E39D008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E39D008);
  }

  return result;
}

id sub_23F581F54(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_23F581EF0();
  v5 = sub_23F588344();

  return v5;
}

uint64_t sub_23F581FCC(SEL *a1)
{
  v3 = [v1 accessories];
  sub_23F581EF0();
  v4 = sub_23F588354();

  v13 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23F588514())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CAF910](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 *a1])
      {
        sub_23F5884C4();
        v10 = *(v13 + 16);
        sub_23F5884F4();
        sub_23F588504();
        sub_23F5884D4();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v11 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  return v11;
}

uint64_t HMHome.an_announceNotificationsEnabledForCurrentUserWithOverrideHomeLocationStatus(_:)(uint64_t a1)
{
  v2 = [v1 homeLocationStatus];
  if (qword_27E39C918 != -1)
  {
    swift_once();
  }

  v3 = sub_23F5881D4();
  __swift_project_value_buffer(v3, qword_27E39D118);
  v4 = v1;
  v5 = sub_23F5881B4();
  v6 = sub_23F5883E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v50 = v9;
    *v7 = 136316162;
    v10 = 0xE700000000000000;
    v11 = 2036430657;
    v12 = 0x656D6F48207441;
    if (a1 == 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v12 = 0x6E776F6E6B6E55;
    }

    if (a1 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v11 = v12;
    }

    if (a1 == 3)
    {
      v13 = 0x482079627261654ELL;
    }

    else
    {
      v13 = v11;
    }

    if (a1 == 3)
    {
      v14 = 0xEB00000000656D6FLL;
    }

    else
    {
      v14 = v10;
    }

    v15 = sub_23F572A60(v13, v14, &v50);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    *(v7 + 22) = 2080;
    if (v2 == 3)
    {
      v17 = 0x482079627261654ELL;
      v18 = 0xEB00000000656D6FLL;
    }

    else
    {
      v16 = 0x656D6F48207441;
      if (v2 != 1)
      {
        v16 = 0x6E776F6E6B6E55;
      }

      if (v2 == 2)
      {
        v17 = 2036430657;
      }

      else
      {
        v17 = v16;
      }

      if (v2 == 2)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }
    }

    v19 = sub_23F572A60(v17, v18, &v50);

    *(v7 + 24) = v19;
    *(v7 + 32) = 2048;
    *(v7 + 34) = v2;
    *(v7 + 42) = 2112;
    *(v7 + 44) = v4;
    *v8 = v4;
    v20 = v4;
    _os_log_impl(&dword_23F525000, v5, v6, "Override Home Location Status: %s (%ld), Current Home Location Status: %s (%ld), Home: %@", v7, 0x34u);
    sub_23F57D964(v8);
    MEMORY[0x245CB05A0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CB05A0](v9, -1, -1);
    MEMORY[0x245CB05A0](v7, -1, -1);
  }

  else
  {
  }

  v21 = [v4 currentUser];
  v22 = [v21 announceUserSettings];

  if (!v22)
  {
    return 0;
  }

  v23 = [v22 deviceNotificationMode];

  v24 = sub_23F5881B4();
  v25 = sub_23F5883E4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v26 = 136446210;
    v28 = HMAnnounceDeviceNotificationMode.description.getter(v23);
    v30 = sub_23F572A60(v28, v29, &v50);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_23F525000, v24, v25, "Current User Announce Notification Mode: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245CB05A0](v27, -1, -1);
    MEMORY[0x245CB05A0](v26, -1, -1);
  }

  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 BOOLForDefault_];

  if (!v32)
  {
    if (v23 >= 2)
    {
      if (v23 == 3)
      {
        return 1;
      }

      if (v23 == 2)
      {
        result = 1;
        if (v2 == 1 || a1 == 1)
        {
          return result;
        }

        v37 = v4;
        v38 = sub_23F5881B4();
        v39 = sub_23F5883D4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v2;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v50 = v43;
          *v41 = 138412802;
          *(v41 + 4) = v37;
          *v42 = v37;
          *(v41 + 12) = 2080;
          if (v40 == 3)
          {
            v44 = 3;
            v46 = 0x482079627261654ELL;
            v45 = 0xEB00000000656D6FLL;
          }

          else
          {
            v44 = v40;
            if (v40 == 2)
            {
              v45 = 0xE400000000000000;
              v46 = 2036430657;
            }

            else
            {
              v46 = 0x6E776F6E6B6E55;
              v45 = 0xE700000000000000;
            }
          }

          v47 = v37;
          v48 = sub_23F572A60(v46, v45, &v50);

          *(v41 + 14) = v48;
          *(v41 + 22) = 2048;
          *(v41 + 24) = v44;
          _os_log_impl(&dword_23F525000, v38, v39, "Current User is not in Home %@ (Current Home Location Status = %s (%ld). Not posting user notification.", v41, 0x20u);
          sub_23F57D964(v42);
          MEMORY[0x245CB05A0](v42, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x245CB05A0](v43, -1, -1);
          MEMORY[0x245CB05A0](v41, -1, -1);
        }
      }
    }

    return 0;
  }

  v33 = sub_23F5881B4();
  v34 = sub_23F5883E4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_23F525000, v33, v34, "[Override] Force Announce Notifications Enabled", v35, 2u);
    MEMORY[0x245CB05A0](v35, -1, -1);
  }

  return 1;
}

uint64_t sub_23F5827C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = HMHome.an_announceNotificationsEnabledForCurrentUserWithOverrideHomeLocationStatus(_:)(a3);

  return a3 & 1;
}

uint64_t HMAnnounceDeviceNotificationMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = 0x656D6F48207441;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v4 = 0x737961776C41;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!a1)
  {
    v1 = 0x74655320746F4ELL;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
LABEL_8:
    v1 = 0x6E776F6E6B6E55;
LABEL_11:
    v4 = v1;
    goto LABEL_12;
  }

  v4 = 0x726576654ELL;
LABEL_12:
  v2 = sub_23F588564();
  MEMORY[0x245CAF790](v2);

  MEMORY[0x245CAF790](41, 0xE100000000000000);
  MEMORY[0x245CAF790](10272, 0xE200000000000000);

  return v4;
}

uint64_t HMHomeLocation.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x656D6F48207441;
  }

  if (a1 == 2)
  {
    v1 = 2036430657;
  }

  if (a1 == 3)
  {
    return 0x482079627261654ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23F5829A8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v2 = 0x656D6F48207441;
  }

  if (v1 == 2)
  {
    v2 = 2036430657;
  }

  if (v1 == 3)
  {
    return 0x482079627261654ELL;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23F582A40()
{
  result = qword_28130B468;
  if (!qword_28130B468)
  {
    sub_23F5880E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130B468);
  }

  return result;
}

id sub_23F582AB0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23F5882C4();

  return v5;
}

uint64_t _sSo6HMRoomC14AnnounceDaemonE11descriptionSSvg_0()
{
  v1 = v0;
  v2 = sub_23F5880E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23F588494();

  v14 = 0x203D20656D614E5BLL;
  v15 = 0xE800000000000000;
  v7 = [v0 name];
  v8 = sub_23F5882D4();
  v10 = v9;

  MEMORY[0x245CAF790](v8, v10);

  MEMORY[0x245CAF790](0x69746E656449202CLL, 0xEF203D2072656966);
  v11 = [v1 uniqueIdentifier];
  sub_23F5880D4();

  sub_23F582A40();
  v12 = sub_23F588564();
  MEMORY[0x245CAF790](v12);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x245CAF790](93, 0xE100000000000000);
  return v14;
}

NSObject *sub_23F582D08(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6 = sub_23F5880E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAE0, &unk_23F58EAD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17[-v13];
  if (a4)
  {
    sub_23F5880D4();
    (*(v7 + 32))(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  v15 = sub_23F582FD0(a3);
  sub_23F5741F8(v14, &qword_27E39CAE0, &unk_23F58EAD0);

  return v15;
}

uint64_t sub_23F582F08()
{
  v1 = *v0;
  sub_23F5885F4();
  MEMORY[0x245CAFA70](v1);
  return sub_23F588624();
}

uint64_t sub_23F582F7C()
{
  v1 = *v0;
  sub_23F5885F4();
  MEMORY[0x245CAFA70](v1);
  return sub_23F588624();
}

NSObject *sub_23F582FD0(NSObject *a1)
{
  v2 = sub_23F5881D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23F5881C4();
  if (a1 && (v7 = [objc_opt_self() retrieveSessionWithID_]) != 0)
  {
    v8 = v7;
    a1 = v7;
    v9 = sub_23F5881B4();
    v10 = sub_23F5883E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = a1;
      *v12 = v8;
      v13 = v12;
      *(v11 + 12) = 1024;
      *(v11 + 14) = [a1 opaqueSessionID];

      _os_log_impl(&dword_23F525000, v9, v10, "Using Proxy Audio Session %@) (ID = %u)", v11, 0x12u);
      sub_23F5741F8(v13, &qword_27E39C9E0, &unk_23F58E820);
      MEMORY[0x245CB05A0](v13, -1, -1);
      MEMORY[0x245CB05A0](v11, -1, -1);
    }

    else
    {

      v9 = a1;
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_23F583258();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    (*(v3 + 8))(v6, v2);
  }

  return a1;
}

unint64_t sub_23F583258()
{
  result = qword_27E39D130;
  if (!qword_27E39D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D130);
  }

  return result;
}

uint64_t _s19AVAudioSessionErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19AVAudioSessionErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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