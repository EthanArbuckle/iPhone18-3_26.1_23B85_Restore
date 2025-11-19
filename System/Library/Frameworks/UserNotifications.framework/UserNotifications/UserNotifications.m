void UNRegisterUserNotificationsLogging()
{
  if (UNRegisterUserNotificationsLogging_onceToken != -1)
  {
    UNRegisterUserNotificationsLogging_cold_1();
  }
}

uint64_t __UNRegisterUserNotificationsLogging_block_invoke()
{
  v0 = os_log_create(UNLogSubsystem, "AppIntents");
  v1 = UNLogAppIntents;
  UNLogAppIntents = v0;

  v2 = os_log_create(UNLogSubsystem, "AppLaunching");
  v3 = UNLogAppLaunching;
  UNLogAppLaunching = v2;

  v4 = os_log_create(UNLogSubsystem, "AttachmentsService");
  v5 = UNLogAttachmentsService;
  UNLogAttachmentsService = v4;

  v6 = os_log_create(UNLogSubsystem, "AttachmentsRepository");
  v7 = UNLogAttachmentsRepository;
  UNLogAttachmentsRepository = v6;

  v8 = os_log_create(UNLogSubsystem, "Categories");
  v9 = UNLogCategories;
  UNLogCategories = v8;

  v10 = os_log_create(UNLogSubsystem, "CommunicationNotifications");
  v11 = UNLogCommunicationNotifications;
  UNLogCommunicationNotifications = v10;

  v12 = os_log_create(UNLogSubsystem, "Connections");
  v13 = UNLogConnections;
  UNLogConnections = v12;

  v14 = os_log_create(UNLogSubsystem, "ContentProtection");
  v15 = UNLogContentProtection;
  UNLogContentProtection = v14;

  v16 = os_log_create(UNLogSubsystem, "DataProvider");
  v17 = UNLogDataProvider;
  UNLogDataProvider = v16;

  v18 = os_log_create(UNLogSubsystem, "DataProviderFactory");
  v19 = UNLogDataProviderFactory;
  UNLogDataProviderFactory = v18;

  v20 = os_log_create(UNLogSubsystem, "DataStore");
  v21 = UNLogDataStore;
  UNLogDataStore = v20;

  v22 = os_log_create(UNLogSubsystem, "LocalNotifications");
  v23 = UNLogLocalNotifications;
  UNLogLocalNotifications = v22;

  v24 = os_log_create(UNLogSubsystem, "Migration");
  v25 = UNLogMigration;
  UNLogMigration = v24;

  v26 = os_log_create(UNLogSubsystem, "Persistence");
  v27 = UNLogPersistence;
  UNLogPersistence = v26;

  v28 = os_log_create(UNLogSubsystem, "RemoteNotifications");
  v29 = UNLogRemoteNotifications;
  UNLogRemoteNotifications = v28;

  v30 = os_log_create(UNLogSubsystem, "ServiceExtension");
  v31 = UNLogServiceExtension;
  UNLogServiceExtension = v30;

  v32 = os_log_create(UNLogSubsystem, "Settings");
  v33 = UNLogSettings;
  UNLogSettings = v32;

  v34 = os_log_create(UNLogSubsystem, "Spotlight");
  v35 = UNLogSpotlight;
  UNLogSpotlight = v34;

  v36 = os_log_create(UNLogSubsystem, "SystemService");
  v37 = UNLogSystemService;
  UNLogSystemService = v36;

  v38 = os_log_create(UNLogSubsystem, "Utilities");
  v39 = UNLogUtilities;
  UNLogUtilities = v38;

  UNLogPipelineAdapter = os_log_create(UNLogSubsystem, "PipelineAdapter");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B85E49CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
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

uint64_t UNEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t UNEqualStrings(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToString:a2];
  }

  else
  {
    return a1 == a2;
  }
}

__CFString *UNFormatLocalizedStringInBundleWithDefaultValue(void *a1, void *a2, __CFBundle *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v7;
  v11 = v9;
  v12 = [(__CFString *)v10 length];
  if (a3 && v12)
  {
    v13 = CFBundleCopyLocalizedString(a3, v10, v11, 0);
  }

  else if (v11)
  {
    v13 = v11;
  }

  else
  {
    if (!v10)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v13 = v10;
  }

  v14 = v13;
LABEL_9:

  if (-[__CFString length](v14, "length") && [v8 count])
  {
    v15 = UNFormatLocalizedString(v14, v8);
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;

  return v16;
}

void *UNSafeCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

BOOL UNSimilarStrings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if ([v3 isEqualToString:v4])
    {
LABEL_4:
      v6 = 1;
      goto LABEL_9;
    }
  }

  else if (v3 == v4)
  {
    goto LABEL_4;
  }

  if ([v3 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 length] == 0;
  }

LABEL_9:

  return v6;
}

__CFString *UNStringFromNotificationAttachmentDisplayLocation(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_1E7CFF6A8[a1];
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1B85ED804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *UNShowPreviewsSettingString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7CFF7B0[a1];
  }
}

__CFString *UNNotificationSettingString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7CFF798[a1];
  }
}

__CFString *UNNotificationGroupingSettingString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7CFF7E0[a1];
  }
}

__CFString *UNAuthorizationStatusString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7CFF770[a1];
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL UNSimilarArrays(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if ([v3 isEqual:v4])
    {
LABEL_4:
      v6 = 1;
      goto LABEL_9;
    }
  }

  else if (v3 == v4)
  {
    goto LABEL_4;
  }

  if ([v3 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 count] == 0;
  }

LABEL_9:

  return v6;
}

BOOL UNSimilarSets(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if ([v3 isEqual:v4])
    {
LABEL_4:
      v6 = 1;
      goto LABEL_9;
    }
  }

  else if (v3 == v4)
  {
    goto LABEL_4;
  }

  if ([v3 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 count] == 0;
  }

LABEL_9:

  return v6;
}

void UNLogToDeveloper(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a1, a2];
  NSLog(@"%@", v2);
  v3 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1B85E3000, v3, OS_LOG_TYPE_DEFAULT, "Logged to developer: %{public}@", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

id UNNotificationDestinationStrings(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 4) != 0)
  {
    [v2 addObject:@"NotificationCenter"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"LockScreen"];
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"Alert"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"CarPlay"];
  }

LABEL_6:

  return v3;
}

uint64_t UNNotificationAttachmentFamilyFromTypeIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_32;
  }

  if (UTTypeConformsTo(v1, *MEMORY[0x1E6963748]) != 1)
  {
    v4 = *MEMORY[0x1E69637F8];
    if (UTTypeConformsTo(v2, *MEMORY[0x1E69637F8]) == 1)
    {
      if (UTTypeEqual(v2, *MEMORY[0x1E6963808]) || UTTypeEqual(v2, *MEMORY[0x1E69637D8]) || UTTypeEqual(v2, *MEMORY[0x1E6963860]) || UTTypeEqual(v2, @"public.heic") || UTTypeEqual(v2, v4))
      {
        v3 = 2;
        goto LABEL_33;
      }
    }

    else if (UTTypeConformsTo(v2, *MEMORY[0x1E6963850]) == 1 && (UTTypeEqual(v2, *MEMORY[0x1E6963880]) || UTTypeEqual(v2, *MEMORY[0x1E6963828]) || UTTypeEqual(v2, *MEMORY[0x1E6963830]) || UTTypeEqual(v2, *MEMORY[0x1E6963838]) || UTTypeEqual(v2, *MEMORY[0x1E6963720]) || UTTypeEqual(v2, @"com.apple.m4v-video") || UTTypeEqual(v2, @"public.3gpp") || UTTypeEqual(v2, @"public.3gpp2")))
    {
      v3 = 3;
      goto LABEL_33;
    }

LABEL_32:
    v3 = 0;
    goto LABEL_33;
  }

  if (!UTTypeEqual(v2, *MEMORY[0x1E6963750]) && !UTTypeEqual(v2, *MEMORY[0x1E69638E8]) && !UTTypeEqual(v2, *MEMORY[0x1E6963820]) && !UTTypeEqual(v2, *MEMORY[0x1E6963840]) && !UTTypeEqual(v2, @"com.apple.m4a-audio") && !UTTypeEqual(v2, @"com.apple.coreaudio-format") && !UTTypeEqual(v2, @"public.aifc-audio") && !UTTypeEqual(v2, @"org.3gpp.adaptive-multi-rate-audio") && !UTTypeEqual(v2, @"public.au-audio") && !UTTypeEqual(v2, @"public.ac3-audio") && !UTTypeEqual(v2, @"public.enhanced-ac3-audio"))
  {
    goto LABEL_32;
  }

  v3 = 1;
LABEL_33:

  return v3;
}

uint64_t UNNotificationAttachmentFamilyMaximumSize(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1B861B0D0[a1 - 1];
  }
}

__CFString *UNNotificationAttachmentFamilyToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<Invalid>";
  }

  else
  {
    return off_1E7CFF948[a1 - 1];
  }
}

Class __getINSendMessageIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INSendMessageIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINSendMessageIntentClass_block_invoke_cold_1();
  }

  getINSendMessageIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IntentsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __IntentsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7CFF9B0;
    v3 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary)
  {
    IntentsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __IntentsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINStartCallIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INStartCallIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINStartCallIntentClass_block_invoke_cold_1();
  }

  getINStartCallIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1B85F3D4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id UNSafeCastAny(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = UNSafeCast(*(*(&v14 + 1) + 8 * i), v4);
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void *UNSafeConforms(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:a1])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

__CFString *_UNNotificationCommunicationContextCapabilitiesDescription(uint64_t a1)
{
  v1 = &stru_1F308F460;
  if (!a1)
  {
    v1 = @"Unspecified";
  }

  if (a1)
  {
    return @"Video";
  }

  else
  {
    return v1;
  }
}

id UNBundle()
{
  if (UNBundle___onceToken != -1)
  {
    UNBundle_cold_1();
  }

  v1 = UNBundle___userNotificationBundle;

  return v1;
}

uint64_t __UNBundle_block_invoke()
{
  UNBundle___userNotificationBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

id UNLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = UNBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F308F460 table:0];

  return v3;
}

id UNLocalizedFormatStringForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = UNBundle();
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F308F460 table:0];

  return v4;
}

void sub_1B85FE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UNCDaemonEnabled()
{
  if (_os_feature_enabled_impl())
  {
    if (os_variant_has_internal_content() && _os_feature_enabled_impl())
    {
      v0 = UNLogUtilities;
      if (os_log_type_enabled(UNLogUtilities, OS_LOG_TYPE_ERROR))
      {
        UNCDaemonEnabled_cold_1(v0);
      }
    }

    return 0;
  }

  else
  {

    return _os_feature_enabled_impl();
  }
}

uint64_t UNCUseGroupService()
{
  result = UNCUsePipeline();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t UNCUsePipeline()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t UNCRemoteServicesNeeded()
{
  if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
  {
    return 1;
  }

  return UNCDaemonEnabled();
}

void sub_1B8600530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINSendMessageIntentClass_block_invoke_0(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INSendMessageIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINSendMessageIntentClass_block_invoke_cold_1_0();
  }

  getINSendMessageIntentClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IntentsLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __IntentsLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7CFFCE0;
    v3 = 0;
    IntentsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary_0)
  {
    IntentsLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __IntentsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINStartCallIntentClass_block_invoke_0(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INStartCallIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINStartCallIntentClass_block_invoke_cold_1_0();
  }

  getINStartCallIntentClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINReadAnnouncementIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INReadAnnouncementIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINReadAnnouncementIntentClass_block_invoke_cold_1();
  }

  getINReadAnnouncementIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id UNFormatLocalizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF88] data];
  v6 = [v3 UTF8String];
  v7 = v6;
  if (v6)
  {
    v8 = *v6;
    if (*v6)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v22 = v8;
        v11 = v10 + 1;
        v12 = v10[v7 + 1];
        v21 = v10[v7 + 1];
        if (v8 == 37)
        {
          if (v12 == 64)
          {
            if (v9 >= [v4 count])
            {
              [MEMORY[0x1E695DFB0] null];
            }

            else
            {
              [v4 objectAtIndex:v9];
            }
            v15 = ;
            v16 = [v15 description];
            v17 = [v16 dataUsingEncoding:4];

            [v5 appendData:v17];
            ++v9;
LABEL_17:

            goto LABEL_18;
          }

          if ((v12 - 48) <= 9)
          {
            v20 = 0;
            v13 = strtol(&v11[v7], &v20, 10);
            v11 = &v20[~v7];
            if (*v20 != 36 || v20[1] != 64)
            {
              goto LABEL_18;
            }

            v14 = v13 - 1;
            if (v13 - 1 >= [v4 count])
            {
              [MEMORY[0x1E695DFB0] null];
            }

            else
            {
              [v4 objectAtIndex:v14];
            }
            v15 = ;
            v18 = [v15 description];
            v17 = [v18 dataUsingEncoding:4];

            [v5 appendData:v17];
            v11 += 2;
            goto LABEL_17;
          }

          if (v12)
          {
            if (v12 == 37)
            {
              [v5 appendBytes:&v21 length:1];
            }

            goto LABEL_18;
          }
        }

        else
        {
          [v5 appendBytes:&v22 length:1];
        }

        v11 = v10;
LABEL_18:
        v10 = v11 + 1;
        v8 = v11[v7 + 1];
      }

      while (v11[v7 + 1]);
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id OUTLINED_FUNCTION_3(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void __getINSendMessageIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINSendMessageIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_UNNotificationCommunicationContext+INIntent.m" lineNumber:27 description:{@"Unable to find class %s", "INSendMessageIntent"}];

  __break(1u);
}

void IntentsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_UNNotificationCommunicationContext+INIntent.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getINStartCallIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINStartCallIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_UNNotificationCommunicationContext+INIntent.m" lineNumber:28 description:{@"Unable to find class %s", "INStartCallIntent"}];

  __break(1u);
}

void __getINSendMessageIntentClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINSendMessageIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UNNotificationContent.m" lineNumber:41 description:{@"Unable to find class %s", "INSendMessageIntent"}];

  __break(1u);
}

void IntentsLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UNNotificationContent.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getINStartCallIntentClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINStartCallIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UNNotificationContent.m" lineNumber:42 description:{@"Unable to find class %s", "INStartCallIntent"}];

  __break(1u);
}

void __getINReadAnnouncementIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINReadAnnouncementIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UNNotificationContent.m" lineNumber:43 description:{@"Unable to find class %s", "INReadAnnouncementIntent"}];

  __break(1u);
}