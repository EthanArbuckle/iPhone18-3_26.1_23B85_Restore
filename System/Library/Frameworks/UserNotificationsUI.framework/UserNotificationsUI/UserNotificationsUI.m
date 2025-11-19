id _UNNotificationContentExtensionHostInterface()
{
  if (_UNNotificationContentExtensionHostInterface_onceToken != -1)
  {
    _UNNotificationContentExtensionHostInterface_cold_1();
  }

  v1 = _UNNotificationContentExtensionHostInterface___interface;

  return v1;
}

id _UNNotificationContentExtensionVendorInterface()
{
  if (_UNNotificationContentExtensionVendorInterface_onceToken != -1)
  {
    _UNNotificationContentExtensionVendorInterface_cold_1();
  }

  v1 = _UNNotificationContentExtensionVendorInterface___interface;

  return v1;
}

uint64_t MediaSafetyNetLibraryCore()
{
  if (!MediaSafetyNetLibraryCore_frameworkLibrary)
  {
    MediaSafetyNetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MediaSafetyNetLibraryCore_frameworkLibrary;
}

uint64_t __MediaSafetyNetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaSafetyNetLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMSNMonitorEndExceptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorEndException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorEndExceptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaSafetyNetLibrary()
{
  v0 = MediaSafetyNetLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getMSNMonitorBeginExceptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaSafetyNetLibrary();
  result = dlsym(v2, "MSNMonitorBeginException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSNMonitorBeginExceptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UNRegisterUserNotificationsUILogging()
{
  if (UNRegisterUserNotificationsUILogging_onceToken != -1)
  {
    UNRegisterUserNotificationsUILogging_cold_1();
  }
}

uint64_t __UNRegisterUserNotificationsUILogging_block_invoke()
{
  v0 = os_log_create("com.apple.UserNotificationsUI", "Extensions");
  v1 = UNLogExtensions;
  UNLogExtensions = v0;

  v2 = os_log_create("com.apple.UserNotificationsUI", "Extensions-host");
  v3 = UNLogExtensionsHost;
  UNLogExtensionsHost = v2;

  v4 = os_log_create("com.apple.UserNotificationsUI", "Extensions-service");
  v5 = UNLogExtensionsService;
  UNLogExtensionsService = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void sub_23AB80868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

void sub_23AB81A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTMaterialViewClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MaterialKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MaterialKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278B71968;
    v6 = 0;
    MaterialKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MaterialKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MTMaterialView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTMaterialViewClass_block_invoke_cold_1();
  }

  getMTMaterialViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MaterialKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MaterialKitLibraryCore_frameworkLibrary = result;
  return result;
}