void sub_100005270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000186AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  v17 = *(v15 + 40);
  v18 = __CurrentTestName;
  v19 = [v16 name];
  [v17 failedTest:v18 withFailure:v19];

  objc_end_catch();
}

id PHFaceTimeApplicationIsRemoved()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v7 = 0;
  v1 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v0 allowPlaceholder:0 error:&v7];
  v2 = v7;
  v3 = v2;
  if (v1)
  {
    v4 = [v1 applicationState];
    v5 = [v4 isRemovedSystemApp];
  }

  else
  {
    if (!v2)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      PHFaceTimeApplicationIsRemoved_cold_1(v0, v3, v4);
    }

    v5 = 0;
  }

LABEL_8:
  return v5;
}

void sub_100020D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100021078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002D83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002E930(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = +[(PHApplicationServices *)MPApplicationServices];
  LODWORD(argv) = UIApplicationMain(argc, argv, 0, 0);
  objc_autoreleasePoolPop(v5);
  return argv;
}

void sub_10002FE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_10002FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000308AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100032638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(uint64_t a1, void *a2)
{
  v7[0] = @"PHPhoneTabBarControllerTabViewDidAppearNotificationSenderKey";
  v7[1] = @"PHPhoneTabBarControllerTabViewDidAppearNotificationTabTypeKey";
  v8[0] = a2;
  v3 = a2;
  v4 = [NSNumber numberWithInt:a1];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

void CTCarrierSettingsNewCarrierNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  PHVoicemailUIRequirementDidChange();
  [v2 _updateBottomTabs];
}

void sub_1000424F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100043764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, id a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a29);
  _Unwind_Resume(a1);
}

void sub_100045F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100047234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10004D0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004D43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000527D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_100053710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000549E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id RTTUIConversationViewControllerClass()
{
  if (RTTUIConversationViewControllerClass_onceToken != -1)
  {
    RTTUIConversationViewControllerClass_cold_1();
  }

  v1 = RTTUIConversationViewControllerClass_sRTTUIConversationViewControllerClass;

  return v1;
}

id RTTUIUtilitiesClass()
{
  if (RTTUIUtilitiesClass_onceToken != -1)
  {
    RTTUIUtilitiesClass_cold_1();
  }

  v1 = RTTUIUtilitiesClass_sRTTUIUtilitiesClass;

  return v1;
}

void sub_10005F4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _PHVoicemailNavigationController_HandleCTIndicatorsVoicemailNotification(uint64_t a1, void *a2)
{
  v3 = [NSNotification notificationWithName:"notificationWithName:object:userInfo:" object:? userInfo:?];
  [a2 _handleCTIndicatorsVoicemailNotification:v3];
}

unint64_t PhoneAggregateBadges(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  if ((a3 & 1) == 0)
  {
    v3 = 0;
  }

  return v3 | a1 & 0xFFFFFFFFFFFFFF00;
}

void PhoneBadgeChanged(void *a1)
{
  v1 = a1;
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received badge changed notification: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = v3;
    v5 = v1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [NSException raise:@"PhoneBadgeChanged called with invalid object" format:@"PhoneBadgeChanged called with invalid object: %@", v1];
      goto LABEL_9;
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = objc_opt_class();
    v3 = v4;
  }

  [v3 postNotificationName:@"com.apple.mobilephone.BadgeChanged" object:v5];

LABEL_9:
}

void sub_100064470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000650A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000657D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006CEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D4E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getPSSimStatusCacheClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!SettingsCellularLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __SettingsCellularLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_100286560;
    v5 = 0;
    SettingsCellularLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SettingsCellularLibraryCore_frameworkLibrary)
  {
    __getPSSimStatusCacheClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PSSimStatusCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSSimStatusCacheClass_block_invoke_cold_1();
  }

  getPSSimStatusCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SettingsCellularLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SettingsCellularLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id _voicemailCheckQueue()
{
  if (_voicemailCheckQueue_s_voicemailOnceToken != -1)
  {
    _voicemailCheckQueue_cold_1();
  }

  v1 = _voicemailCheckQueue_s_voicemailQueue;

  return v1;
}

void ___voicemailCheckQueue_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mobilephone.PHVoicemailUtilities.voicemailCheck", v3);
  v2 = _voicemailCheckQueue_s_voicemailQueue;
  _voicemailCheckQueue_s_voicemailQueue = v1;
}

uint64_t _PHHasEnhancedVoicemail(int a1)
{
  v2 = +[(PHApplicationServices *)MPApplicationServices];
  v3 = [v2 accountManager];
  v4 = [v3 isAnyAccountSubscribed];

  return (a1 | v4) & 1;
}

uint64_t PHHasEnhancedVoicemail()
{
  v0 = [UIApp launchedToTest];

  return _PHHasEnhancedVoicemail(v0);
}

void PHHasEnhancedVoicemailAsync(void *a1)
{
  v1 = a1;
  v2 = [UIApp launchedToTest];
  v3 = _voicemailCheckQueue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __PHHasEnhancedVoicemailAsync_block_invoke;
  v5[3] = &unk_1002865E0;
  v7 = v2;
  v6 = v1;
  v4 = v1;
  dispatch_async(v3, v5);
}

uint64_t __PHHasEnhancedVoicemailAsync_block_invoke(uint64_t a1)
{
  _PHHasEnhancedVoicemail(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

BOOL _voicemailShouldBeHidden()
{
  if (TUCallScreeningEnabled())
  {
    v0 = 0;
  }

  else
  {
    v1 = +[(PHApplicationServices *)MPApplicationServices];
    v2 = [v1 accountManager];

    v3 = +[(PHApplicationServices *)MPApplicationServices];
    v4 = [v3 voicemailManager];

    if ([v2 estimatedAccountCount])
    {
      v0 = 0;
    }

    else
    {
      v0 = [v4 estimatedCount] != 0;
    }
  }

  v5 = [NSNumber numberWithBool:v0];
  PHPreferencesSetValue();

  return v0;
}

uint64_t PHShouldHideVoicemailUI()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  if ([UIApp showsPhoneVoicemail])
  {
    v0 = _voicemailCheckQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __PHShouldHideVoicemailUI_block_invoke;
    block[3] = &unk_100286540;
    block[4] = &v4;
    dispatch_sync(v0, block);

    v1 = *(v5 + 24);
  }

  else
  {
    v1 = 1;
    *(v5 + 24) = 1;
  }

  _Block_object_dispose(&v4, 8);
  return v1 & 1;
}

void sub_100075A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __PHShouldHideVoicemailUI_block_invoke(uint64_t a1)
{
  result = _voicemailShouldBeHidden();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t PHShouldOptimisticallyHideVoicemailUI(void *a1)
{
  v1 = a1;
  if ([UIApp showsPhoneVoicemail])
  {
    v2 = PHPreferencesGetValue();
    v3 = v2;
    if (v2)
    {
      ShouldBeHidden = [v2 BOOLValue];
      v5 = _voicemailCheckQueue();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = __PHShouldOptimisticallyHideVoicemailUI_block_invoke;
      v7[3] = &unk_1002865E0;
      v9 = ShouldBeHidden;
      v8 = v1;
      dispatch_async(v5, v7);
    }

    else
    {
      ShouldBeHidden = _voicemailShouldBeHidden();
    }
  }

  else
  {
    ShouldBeHidden = 1;
  }

  return ShouldBeHidden;
}

void __PHShouldOptimisticallyHideVoicemailUI_block_invoke(uint64_t a1)
{
  ShouldBeHidden = _voicemailShouldBeHidden();
  if (*(a1 + 40) != ShouldBeHidden)
  {
    v3 = ShouldBeHidden;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __PHShouldOptimisticallyHideVoicemailUI_block_invoke_2;
    v4[3] = &unk_1002865E0;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

id PHVoicemailCellDateFormatter()
{
  v0 = __PHVoicemailUtilities_CellDateFormatter;
  if (!__PHVoicemailUtilities_CellDateFormatter)
  {
    v1 = objc_alloc_init(NSDateFormatter);
    v2 = __PHVoicemailUtilities_CellDateFormatter;
    __PHVoicemailUtilities_CellDateFormatter = v1;

    [__PHVoicemailUtilities_CellDateFormatter setTimeStyle:1];
    [__PHVoicemailUtilities_CellDateFormatter setDateStyle:3];
    v0 = __PHVoicemailUtilities_CellDateFormatter;
  }

  return v0;
}

id PHVoicemailDetailPageDateFormatter()
{
  v0 = __PHVoicemailUtilities_DetailPageDateFormatter;
  if (!__PHVoicemailUtilities_DetailPageDateFormatter)
  {
    v1 = objc_alloc_init(NSDateFormatter);
    v2 = __PHVoicemailUtilities_DetailPageDateFormatter;
    __PHVoicemailUtilities_DetailPageDateFormatter = v1;

    [__PHVoicemailUtilities_DetailPageDateFormatter setTimeStyle:2];
    [__PHVoicemailUtilities_DetailPageDateFormatter setDateStyle:3];
    v0 = __PHVoicemailUtilities_DetailPageDateFormatter;
  }

  return v0;
}

id PHVoicemailDurationFormatter()
{
  if (PHVoicemailDurationFormatter_onceToken != -1)
  {
    PHVoicemailDurationFormatter_cold_1();
  }

  v1 = PHVoicemailDurationFormatter_voicemailDurationFormatter;

  return v1;
}

id PHVoicemailFormatTime(double a1)
{
  v1 = &stru_10028F310;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  else
  {
    v1 = @"-";
    v2 = -a1;
  }

  v3 = v1;
  v4 = PHVoicemailDurationFormatter();
  v5 = [v4 stringFromTimeInterval:v2];

  v6 = [NSString stringWithFormat:@"%@%@", v3, v5];

  return v6;
}

float PHVoicemailLowQualityConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.6878;
  }

  return v3;
}

float PHVoicemailConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.45096;
  }

  return v3;
}

float PHVoicemailConfidenceThresholdForSegment()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.3;
  }

  return v3;
}

id PHVoicemailTranscriptAttributedPrefix()
{
  if (PHVoicemailTranscriptAttributedPrefix_onceToken != -1)
  {
    PHVoicemailTranscriptAttributedPrefix_cold_1();
  }

  v1 = PHVoicemailTranscriptAttributedPrefix_attributedPrefix;

  return v1;
}

id PHVoicemailTranscriptAttributedSuffix()
{
  if (PHVoicemailTranscriptAttributedSuffix_onceToken != -1)
  {
    PHVoicemailTranscriptAttributedSuffix_cold_1();
  }

  v1 = PHVoicemailTranscriptAttributedSuffix_attributedSuffix;

  return v1;
}

id PHVoicemailFormatTranscript(void *a1, int a2)
{
  v3 = a1;
  v4 = [NSMutableAttributedString alloc];
  v5 = [v3 transcriptionString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_10028F310;
  }

  v8 = [v4 initWithString:v7];

  v9 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  [v8 addAttribute:NSForegroundColorAttributeName value:v9 range:{0, objc_msgSend(v8, "length")}];

  v10 = +[NSBundle mainBundle];
  v44 = [v10 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_LOW_CONFIDENCE_WORD_REPLACEMENT" value:&stru_10028F310 table:@"General"];

  v11 = +[NSBundle mainBundle];
  v40 = [v11 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_LOW_CONFIDENCE_WORD_REPLACEMENT_CHARACTER" value:&stru_10028F310 table:@"General"];

  if (a2 == 1)
  {
    [UIColor colorWithWhite:0.92 alpha:1.0];
  }

  else
  {
    [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  }
  v43 = ;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v3;
  obj = [v3 segments];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v48;
    v42 = v8;
    v41 = a2;
    do
    {
      v17 = 0;
      v45 = v13;
      do
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        if ([v18 confidenceRating])
        {
          if ([v18 confidenceRating] != 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          [v18 confidence];
          if (v30 >= PHVoicemailConfidenceThresholdForSegment())
          {
LABEL_22:
            v15 = 0;
            goto LABEL_28;
          }
        }

        v19 = [v18 substringRange];
        v21 = v20;
        v22 = v14;
        v23 = &v19[-v14];
        if (((a2 != 1) & v15) != 0)
        {
          if (v23 && &v23[v20 + 1] < [v8 length])
          {
            v24 = [v8 string];
            v25 = [v24 substringWithRange:{v23 - 1, 1}];
            v26 = [v25 isEqualToString:@" "];

            v8 = v42;
            v27 = [v42 string];
            v28 = [v27 substringWithRange:{&v23[v21], 1}];

            v29 = [v28 isEqualToString:@" "];
            v21 += v29 & v26;
            if ((v29 & v26) != 0)
            {
              --v23;
            }

            a2 = v41;
          }

          [v8 replaceCharactersInRange:v23 withString:{v21, &stru_10028F310}];
        }

        else
        {
          if (a2 == 1)
          {
            v32 = +[NSString string];
            v33 = [v32 stringByPaddingToLength:v21 withString:v40 startingAtIndex:0];

            v34 = [NSString stringWithFormat:@"%@⁠", v40];
            v35 = [v33 stringByReplacingOccurrencesOfString:v40 withString:v34];
            v31 = [v35 stringByTrimmingLastCharacter];

            v8 = v42;
            a2 = v41;
          }

          else
          {
            v31 = v44;
          }

          [v8 replaceCharactersInRange:v23 withString:{v21, v31}];
          [v8 addAttribute:NSForegroundColorAttributeName value:v43 range:{v23, objc_msgSend(v31, "length")}];
          [v18 substringRange];
          v44 = v31;
          v21 = v36 - [v31 length];
        }

        v14 = v21 + v22;
        v15 = 1;
        v13 = v45;
LABEL_28:
        v17 = v17 + 1;
      }

      while (v13 != v17);
      v13 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v13);
  }

  v37 = v8;
  return v8;
}

uint64_t PHVoicemailFeedbackReportingAvailable()
{
  v0 = +[NSLocale currentLocale];
  v1 = [v0 localeIdentifier];

  if ([v1 isEqualToString:@"en_CA"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"en_US"];
  }

  return v2;
}

void sub_100076E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100077524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100080D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000841CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _pressesContainSelect(void *a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] == 4)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void PHRecentCallDetailsViewResetFormattersBlock_block_invoke(id a1, NSNotification *a2)
{
  v2 = sPHRecentCallDetailsViewCalendar;
  sPHRecentCallDetailsViewCalendar = 0;

  v3 = sPHRecentCallDetailsViewDateFormatter;
  sPHRecentCallDetailsViewDateFormatter = 0;

  v4 = sPHRecentCallDetailsViewTimeFormatter;
  sPHRecentCallDetailsViewTimeFormatter = 0;

  v5 = sPHRecentCallDetailsViewNumberFormatter;
  sPHRecentCallDetailsViewNumberFormatter = 0;

  dispatch_async(&_dispatch_main_q, &__block_literal_global_64);
}

void PHRecentCallDetailsViewResetFormattersBlock_block_invoke_2(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PHRecentCallDetailsViewFormattersDidChangeNotification" object:0];
}

void sub_100091808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_10009242C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100092934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100093078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000934FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000936F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100093CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000947E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_10009D5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009DE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009DFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009E1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009EAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009ECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009EF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A3CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___defaultContactsKeyDescriptors_block_invoke(id a1)
{
  v4[0] = CNContactPhoneNumbersKey;
  v4[1] = CNContactEmailAddressesKey;
  v1 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v4[2] = v1;
  v4[3] = CNContactSocialProfilesKey;
  v2 = [NSArray arrayWithObjects:v4 count:4];
  v3 = _defaultContactsKeyDescriptors_keyDescriptors;
  _defaultContactsKeyDescriptors_keyDescriptors = v2;
}

id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

id PHOversizedLog()
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v1 = PHOversizedLog_PHOversizedLog;

  return v1;
}

id PHOversizedLogQueue()
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v1 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v1;
}

BOOL MPVoicemailTableViewController.isAccountProvisioningRequiredForAtLeastOneAccount.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
LABEL_32:
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall == 1)
  {
    v1 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD000000000000014, 0x80000001002405D0, 0, 0);
    if (v1 != 2 && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0;
    *(v3 + 72) = 2;
    swift_willThrow();
  }

  v4 = [v0 voicemailController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 accountManager];

    v7 = [v6 accounts];
    swift_unknownObjectRelease();
    type metadata accessor for VoicemailAccount();
    v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v0 = &_swiftEmptyArrayStorage;
  }

  if (v0 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
LABEL_13:
  if (v9 != v8)
  {
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v9 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = *(v0 + 8 * v9 + 32);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (v11[OBJC_IVAR___MPVoicemailAccount_hasHandle] == 1)
      {
        v13 = v11[OBJC_IVAR___MPVoicemailAccount_provisioned];

        if ((v13 & 1) == 0)
        {
          v9 = v12;
          if (!__OFADD__(v10++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v12 != v8);
  }

  return v10 != 0;
}

Swift::Void __swiftcall MPVoicemailTableViewController.startObservingPreferences()()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (static Defaults.isInternalInstall)
    {
      v2 = objc_allocWithZone(NSUserDefaults);

      v3 = [v2 init];
      v4 = type metadata accessor for Defaults.Observation();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
      *v6 = 0xD000000000000014;
      *(v6 + 1) = 0x80000001002405D0;
      *&v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = v3;
      v7 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
      *v7 = partial apply for closure #1 in MPVoicemailTableViewController.startObservingPreferences();
      v7[1] = v1;
      v13.receiver = v5;
      v13.super_class = v4;
      v8 = v3;

      v9 = objc_msgSendSuper2(&v13, "init");
      v10 = String._bridgeToObjectiveC()();
      [v8 addObserver:v9 forKeyPath:v10 options:0 context:{0, v13.receiver, v13.super_class}];

      v11 = [v0 observations];
      [v11 insertObject:v9 atIndex:0];
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      *(v12 + 72) = 2;
      swift_willThrow();
    }
  }
}

void closure #1 in MPVoicemailTableViewController.startObservingPreferences()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong loadTableHeaderView];
  }
}

Swift::Void __swiftcall MPVoicemailTableViewController.stopObservingPreferences()()
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray);
  v1 = NSArray.init(arrayLiteral:)();
  [v0 setObservations:v1];
}

Swift::Void __swiftcall MPVoicemailTableViewController.voicemailMessageTableViewCell(tableViewCell:dialRequestButtonTappedForRowWithIndexPath:)(PHVoicemailMessageTableViewCell *tableViewCell, NSIndexPath dialRequestButtonTappedForRowWithIndexPath)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 messageAtIndex:{-[objc_class row](dialRequestButtonTappedForRowWithIndexPath.super.isa, "row")}];
  if (!v10)
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.mobilePhone);
    v50 = dialRequestButtonTappedForRowWithIndexPath.super.isa;
    v51 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v51, v42))
    {

      v44 = v50;
LABEL_29:

      return;
    }

    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = [(objc_class *)v50 row];

    _os_log_impl(&_mh_execute_header, v51, v42, "Failed to get the voicemail message at index: %ld", v43, 0xCu);

LABEL_28:
    v44 = v51;
    goto LABEL_29;
  }

  v11 = v10;
  v12 = [v3 voicemailController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 callProviderManager];

    if (v14)
    {
      v50 = v7;
      v51 = [objc_allocWithZone(TUFeatureFlags) init];
      v15 = one-time initialization token for mobilePhone;
      v16 = v14;
      swift_unknownObjectRetain();
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.mobilePhone);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Requesting to stop playback to initiate call", v20, 2u);
      }

      [v3 voicemailMessageTableViewCell:tableViewCell didRequestPlayState:0];
      v21 = VoicemailTableViewModel.dialRequest.getter(v51, v16, v11);
      if (v21)
      {
        v22 = v21;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v52 = v22;
          aBlock[0] = v26;
          *v25 = 136315138;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUDialRequest);
          v49 = v16;
          v27 = v22;
          v28 = String.init<A>(reflecting:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, aBlock);
          v16 = v49;

          *(v25 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v23, v24, "Initiating voicemail call with dial request: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        v31 = [objc_opt_self() sharedApplication];
        v32 = [v22 URL];
        if (v32)
        {
          v33 = v32;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v34);
          v36 = v35;
          (*(v50 + 1))(v9, v6);
        }

        else
        {
          v36 = 0;
        }

        aBlock[4] = PHVoicemailInboxListViewController.refreshTableHeaderView();
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor;
        v48 = _Block_copy(aBlock);
        [v31 openURL:v36 withCompletionHandler:v48];
        _Block_release(v48);
        swift_unknownObjectRelease_n();

        return;
      }

      swift_unknownObjectRelease();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Failed to dial back, dialRequest is nil", v47, 2u);
      }

      swift_unknownObjectRelease();
      goto LABEL_28;
    }
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.mobilePhone);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to dial back, callProviderManager is nil", v40, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void MPVoicemailTableViewController.startDialRequestFor(message:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 voicemailController];
  if (v7 && (v8 = v7, v9 = [v7 callProviderManager], v8, v9))
  {
    v42 = [objc_allocWithZone(TUFeatureFlags) init];
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = VoicemailTableViewModel.dialRequest.getter(v42, v10, a1);
    if (v11)
    {
      v12 = v11;
      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.mobilePhone);
      v14 = v12;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v41 = v10;
        v18 = v17;
        v19 = swift_slowAlloc();
        v40 = v4;
        v20 = v19;
        v43 = v14;
        aBlock[0] = v19;
        *v18 = 136315138;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUDialRequest);
        v21 = v14;
        v22 = String.init<A>(reflecting:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v15, v16, "Initiating voicemail call with dial request: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v4 = v40;

        v10 = v41;
      }

      v25 = [objc_opt_self() sharedApplication];
      v26 = [v14 URL];
      if (v26)
      {
        v27 = v26;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v28);
        v30 = v29;
        (*(v4 + 8))(v6, v3);
      }

      else
      {
        v30 = 0;
      }

      aBlock[4] = PHVoicemailInboxListViewController.refreshTableHeaderView();
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_28;
      v39 = _Block_copy(aBlock);
      [v25 openURL:v30 withCompletionHandler:v39];
      _Block_release(v39);
      swift_unknownObjectRelease();

      return;
    }

    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.mobilePhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to dial back, dialRequest is nil", v37, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.mobilePhone);
    v42 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v42, v32, "Failed to dial back, callProviderManager is nil", v33, 2u);
    }
  }

  v38 = v42;
}

Swift::Void __swiftcall MPVoicemailTableViewController.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView _, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    [v2 reloadDataIfNeeded];
  }
}

uint64_t closure #1 in MPVoicemailTableViewController.configureLegacyVoicemailCell(_:for:showLabel:onCallTapped:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v7 = *(type metadata accessor for LegacyVoicemailCellView() + 28);
  *(a5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v8 = a1;
}

id variable initialization expression of VoicemailSearchViewCell.transcriptView()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of VoicemailSearchViewCell.avatarViewControllerSettings()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 contactStore];

  v2 = [objc_opt_self() settingsWithContactStore:v1 threeDTouchEnabled:0];
  return v2;
}

id variable initialization expression of VoicemailSearchViewCell.contactStore()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

uint64_t variable initialization expression of VoicemailSearchViewCell.unreadIndicatorImageView()
{
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  v0 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  return VoicemailUnreadIndicator.init(diameter:)();
}

id default argument 3 of VoicemailTranscriptProcessor.processTranscriptText(from:searchText:maxLines:font:containerWidth:)()
{
  v0 = [objc_opt_self() telephonyUISubheadlineShortFont];

  return v0;
}

double default argument 4 of VoicemailTranscriptProcessor.processTranscriptText(from:searchText:maxLines:font:containerWidth:)()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v2;
  v10 = v4;
  v11 = v6;
  v12 = v8;

  return CGRectGetWidth(*&v9);
}

id variable initialization expression of VoicemailSearchMetadataView.callButton()
{
  v0 = objc_allocWithZone(TPAccessoryButton);

  return [v0 init];
}

id variable initialization expression of VoicemailSearchMetadataView.titleStack()
{
  v0 = objc_allocWithZone(UIStackView);

  return [v0 init];
}

id variable initialization expression of VoicemailSearchMetadataView.dateLabel()
{
  v0 = objc_allocWithZone(UIDateLabel);

  return [v0 init];
}

id variable initialization expression of VoicemailSearchMetadataView.badgeView()
{
  v0 = objc_allocWithZone(TPBadgeView);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithTitle:v1];

  return v2;
}

uint64_t variable initialization expression of VoicemailSearchMetadataView.unreadIndicatorImageView()
{
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
  v0 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  return VoicemailUnreadIndicator.init(diameter:)();
}

id variable initialization expression of OrientationMonitorAccelerometer.accelerometer()
{
  v0 = objc_allocWithZone(BKSAccelerometer);

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error()
{
  result = lazy protocol witness table cache variable for type Defaults.Error and conformance Defaults.Error;
  if (!lazy protocol witness table cache variable for type Defaults.Error and conformance Defaults.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Defaults.Error and conformance Defaults.Error);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.editMode : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v2 - 8);
  outlined init with copy of Binding<EditMode>?(a1, &v5 - v3, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  return EnvironmentValues.editMode.setter();
}

uint64_t key path setter for EnvironmentValues.sizeCategory : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t variable initialization expression of VoicemailAccountManager.cacheDefaults()
{
  [swift_getObjCClassFromMetadata() empty];

  return swift_unknownObjectRetain();
}

uint64_t variable initialization expression of VoicemailAccountManager._cache@<X0>(uint64_t a1@<X8>)
{
  v4 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + 8;
  v2 = type metadata accessor for Optional();
  return (*(*(v2 - 8) + 32))(v1, &v4, v2);
}

uint64_t variable initialization expression of VoicemailAccountManager.updatesPublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  swift_allocObject();
  return PassthroughSubject.init()();
}

id default argument 0 of VoicemailAccountManager.updateCache(for:uuid:)()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v1 = static VoicemailAccountManagerUpdate.all;

  return v1;
}

void variable initialization expression of VoicemailAccountManagerWithDelegateDecorator._vmd(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t variable initialization expression of PhoneVoicemailBadgeController.unreadVoicemailCount()
{
  v0 = type metadata accessor for VoicemailBadge();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count] = 0;
  v1[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  objc_msgSendSuper2(&v3, "init");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of ObservableRecentsController.localizedRecentCallInfoCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone10ValueCacheCySSAA27ObservableRecentsControllerC23LocalizedRecentCallInfoVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSCache) init];
  return v0;
}

void variable initialization expression of FTMessage.dirtyFolder(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t variable initialization expression of FTMessage._transcript()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyCy_AA17TranscriptMessage_pSgGMd);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = implicit closure #1 in variable initialization expression of FTMessage._transcript;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t variable initialization expression of OpenMobilePhoneAppDeepLinks._target()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy11MobilePhone0efA9DeepLinksOGMd);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 5;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

id variable initialization expression of ValueCache.cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSCacheCMd);
  type metadata accessor for BoxedKey();
  type metadata accessor for BoxedValue();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id NSCache.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t variable initialization expression of LegacyMailboxService.queue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInteractive.getter();
  v8 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of VoicemailSearchViewCell.metadataView(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t variable initialization expression of RecentCallView._editMode@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of FaceTimeVoicemailManager.operationQueue()
{
  v0 = type metadata accessor for TaskPriority();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for TaskQueue();
  static TaskPriority.high.getter();
  return TaskQueue.__allocating_init(priority:)();
}

uint64_t default argument 2 of FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MessageStoreController();
  result = static MessageStoreController.shared.getter();
  a1[3] = v2;
  a1[4] = &protocol witness table for MessageStoreController;
  *a1 = result;
  return result;
}

void variable initialization expression of CallReportingViewModel.recentsController()
{
  v0 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v1 = [swift_dynamicCastObjCClassUnconditional() recentsController];

  if (!v1)
  {
    __break(1u);
  }
}

uint64_t variable initialization expression of CallReportingViewModel.reportAlertTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240840;
  v3._countAndFlagsBits = 0xD000000000000020;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportAlertReport()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240890;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportBlockFTAlertTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x80000001002408B0;
  v3._countAndFlagsBits = 0xD000000000000026;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportAlertCancel()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240870;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportBlockFTAlertBlock()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x80000001002408E0;
  v3._countAndFlagsBits = 0xD000000000000021;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportBlockFTAlertReportBlock()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240910;
  v3._countAndFlagsBits = 0xD000000000000028;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.blockAllButtonTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240940;
  v3._countAndFlagsBits = 0xD000000000000025;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.blockAllAlertTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240970;
  v3._countAndFlagsBits = 0xD000000000000034;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.blockUnknownButtonTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x80000001002409B0;
  v3._countAndFlagsBits = 0xD000000000000029;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportInitiatorAlertTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x80000001002409E0;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportInitiatorAlert()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240A10;
  v3._countAndFlagsBits = 0xD000000000000025;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of CallReportingViewModel.reportGroupInitiatorAlertTitle()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240A40;
  v3._countAndFlagsBits = 0xD000000000000022;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of VoicemailSearchTableViewController.folderName(uint64_t a1, void *a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x746E656365524850;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v6.value._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t variable initialization expression of ObservableRecentsController._contactsChangedDate@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of VoicemailBadgeCalculator.currentBadge()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo10PhoneBadgeas5NeverOGMd);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of VoicemailAccountManagerWithDelegateDecorator.updatesPublisher(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_allocObject();
  return PassthroughSubject.init()();
}

uint64_t static Color.tertiary.getter()
{
  v0 = [objc_opt_self() tertiaryLabelColor];

  return Color.init(_:)();
}

id variable initialization expression of PHRingLayer.fillColor(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [v1 CGColor];

  return v2;
}

id variable initialization expression of VoicemailTranscriptProcessor.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

uint64_t VoicemailAccountManagerComposer.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.mobilePhone);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t variable initialization expression of VMDVoicemailCountSource.countChangedPublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  return PassthroughSubject.init()();
}

uint64_t variable initialization expression of RecentCallView._recentsController()
{
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);

  return EnvironmentObject.init()();
}

id variable initialization expression of RecentsDetailPresenter.featureflags()
{
  v0 = objc_allocWithZone(TUFeatureFlags);

  return [v0 init];
}

void variable initialization expression of ApplicationServices.accountManager_mutex(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
}

void *_sSo12UIFontWeightaSYSCSY8rawValuexSg03RawD0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance PHTabViewType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIFontWeight@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIContentSizeCategory(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIContentSizeCategory(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIContentSizeCategory@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIContentSizeCategory()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo21UIContentSizeCategoryaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontTextStyle()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIContentSizeCategory@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIMenuIdentifier()
{
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone17SymbolDescriptionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = objc_allocWithZone(NSUserDefaults);

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithSuiteName:v9];

    if (!v10)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v16 = a3;
      *(v16 + 8) = a4;
      *(v16 + 72) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v10 = [objc_allocWithZone(NSUserDefaults) init];
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  outlined init with copy of Binding<EditMode>?(v20, &v18, &_sypSgMd);
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v20);

      return v17 & 1;
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      v15 = v14;
      *v14 = a1;
      v14[1] = a2;
      v14[2] = a3;
      v14[3] = a4;
      outlined init with copy of Binding<EditMode>?(v20, (v14 + 4), &_sypSgMd);
      v15[8] = &type metadata for Bool;
      *(v15 + 72) = 1;
      swift_willThrow();

      return outlined destroy of Any?(v20);
    }
  }

  else
  {
    outlined destroy of Any?(v20);

    outlined destroy of Any?(&v18);
    return 2;
  }
}

{
  if (a4)
  {
    v8 = objc_allocWithZone(NSUserDefaults);

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithSuiteName:v9];

    if (!v10)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v16 = a3;
      *(v16 + 8) = a4;
      *(v16 + 72) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v10 = [objc_allocWithZone(NSUserDefaults) init];
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  outlined init with copy of Binding<EditMode>?(v20, &v18, &_sypSgMd);
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v20);

      return v17;
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      v15 = v14;
      *v14 = a1;
      v14[1] = a2;
      v14[2] = a3;
      v14[3] = a4;
      outlined init with copy of Binding<EditMode>?(v20, (v14 + 4), &_sypSgMd);
      v15[8] = &type metadata for String;
      *(v15 + 72) = 1;
      swift_willThrow();

      return outlined destroy of Any?(v20);
    }
  }

  else
  {
    outlined destroy of Any?(v20);

    outlined destroy of Any?(&v18);
    return 0;
  }
}

uint64_t sub_1000AD60C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t specialized MPVoicemailTableViewController.configureLegacyVoicemailCell(_:for:showLabel:onCallTapped:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVy11MobilePhone23LegacyVoicemailCellViewVAA05EmptyJ0VGMd);
  v10 = *(v9 - 8);
  v11 = (__chkstk_darwin)();
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v18[-v14];
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  type metadata accessor for LegacyVoicemailCellView();
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(&lazy protocol witness table cache variable for type LegacyVoicemailCellView and conformance LegacyVoicemailCellView, type metadata accessor for LegacyVoicemailCellView);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.leading.getter();
  UIHostingConfiguration.margins(_:_:)();
  v16 = *(v10 + 8);
  v16(v13, v9);
  static Edge.Set.trailing.getter();
  v23[3] = v9;
  v23[4] = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type UIHostingConfiguration<LegacyVoicemailCellView, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVy11MobilePhone23LegacyVoicemailCellViewVAA05EmptyJ0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v23);
  UIHostingConfiguration.margins(_:_:)();
  v16(v15, v9);
  return UITableViewCell.contentConfiguration.setter();
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

uint64_t sub_1000AD94C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000ADAB0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks()
{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks);
  }

  return result;
}

uint64_t type metadata accessor for NSMutableArray(uint64_t a1, unint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000AE528()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined init with copy of Binding<EditMode>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _sSo7CGPointVwet_0(uint64_t a1, int a2)
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

uint64_t _sSo7CGPointVwst_0(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGColorRef(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t key path getter for VoicemailSearchViewCell.callButtonTapHandler : VoicemailSearchViewCell@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v4);
}

uint64_t key path setter for VoicemailSearchViewCell.callButtonTapHandler : VoicemailSearchViewCell(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t VoicemailSearchViewCell.callButtonTapHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(*v1);
  return v2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t VoicemailSearchViewCell.callButtonTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t one-time initialization function for transcriptProcessor()
{
  type metadata accessor for VoicemailTranscriptProcessor();
  swift_allocObject();
  result = VoicemailTranscriptProcessor.init()();
  static VoicemailSearchViewCell.transcriptProcessor = result;
  return result;
}

uint64_t VoicemailSearchViewCell.commonConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___commonConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___commonConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___commonConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209A70;
    v3 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarView];
    v4 = [v3 topAnchor];
    v5 = [v0 contentView];
    v6 = [v5 topAnchor];

    static SearchLayout.CellSpacingConstants.verticalLayoutMargin.getter();
    v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:?];

    *(v2 + 32) = v7;
    v8 = [v3 heightAnchor];
    static SearchLayout.CellSpacingConstants.avatarRadius.getter();
    v9 = [v8 constraintEqualToConstant:?];

    *(v2 + 40) = v9;
    v10 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView];
    v11 = [v10 topAnchor];
    v12 = [v0 contentView];
    v13 = [v12 topAnchor];

    static SearchLayout.CellSpacingConstants.verticalLayoutMargin.getter();
    v14 = [v11 constraintEqualToAnchor:v13 constant:?];

    *(v2 + 48) = v14;
    v15 = [v10 trailingAnchor];
    v16 = [v0 contentView];
    v17 = [v16 layoutMarginsGuide];

    v18 = [v17 trailingAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];

    *(v2 + 56) = v19;
    v20 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView];
    v21 = [v20 leadingAnchor];
    v22 = [v10 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v2 + 64) = v23;
    v24 = [v20 trailingAnchor];
    v25 = [v10 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    *(v2 + 72) = v26;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t VoicemailSearchViewCell.axConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___axConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___axConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___axConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209A80;
    v3 = [*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView] leadingAnchor];
    v4 = [v0 contentView];
    v5 = [v4 layoutMarginsGuide];

    v6 = [v5 leadingAnchor];
    v7 = [v3 constraintEqualToAnchor:v6];

    *(v2 + 32) = v7;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t VoicemailSearchViewCell.nonAXConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___nonAXConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___nonAXConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___nonAXConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209A70;
    v3 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarView];
    v4 = [v3 leadingAnchor];
    v5 = [v0 contentView];
    v6 = [v5 layoutMarginsGuide];

    v7 = [v6 leadingAnchor];
    v8 = [v4 constraintEqualToAnchor:v7];

    *(v2 + 32) = v8;
    v9 = [v3 widthAnchor];
    static SearchLayout.CellSpacingConstants.avatarRadius.getter();
    v10 = [v9 constraintEqualToConstant:?];

    *(v2 + 40) = v10;
    v11 = [v3 centerYAnchor];
    v12 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView];
    v13 = [v12 centerYAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];

    *(v2 + 48) = v14;
    v15 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView];
    v16 = [v15 leadingAnchor];
    v17 = [v3 leadingAnchor];
    static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
    v19 = [v16 constraintEqualToAnchor:v17 constant:-v18];

    *(v2 + 56) = v19;
    v20 = [v15 bottomAnchor];
    v21 = [v3 bottomAnchor];
    static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
    v22 = [v20 constraintEqualToAnchor:v21 constant:?];

    *(v2 + 64) = v22;
    v23 = [v12 leadingAnchor];
    v24 = [v3 trailingAnchor];
    static SearchLayout.CellSpacingConstants.gridColumnSpacing.getter();
    v25 = [v23 constraintEqualToAnchor:v24 constant:?];

    *(v2 + 72) = v25;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t VoicemailSearchViewCell.transcriptViewVisibleConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewVisibleConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewVisibleConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewVisibleConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209A90;
    v3 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView];
    v4 = [v3 bottomAnchor];
    v5 = [v0 contentView];
    v6 = [v5 bottomAnchor];

    static SearchLayout.CellSpacingConstants.verticalLayoutMargin.getter();
    v8 = [v4 constraintEqualToAnchor:v6 constant:-v7];

    *(v2 + 32) = v8;
    v9 = [v3 topAnchor];
    v10 = [*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView] bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:4.0];

    *(v2 + 40) = v11;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t VoicemailSearchViewCell.transcriptViewHiddenConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewHiddenConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewHiddenConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewHiddenConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209A80;
    v3 = [*&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView] bottomAnchor];
    v4 = [v0 contentView];
    v5 = [v4 bottomAnchor];

    static SearchLayout.CellSpacingConstants.verticalLayoutMargin.getter();
    v7 = [v3 constraintEqualToAnchor:v5 constant:-v6];

    *(v2 + 32) = v7;
    *&v0[v1] = v2;
  }

  return v2;
}

BOOL VoicemailSearchViewCell.shouldShowTranscriptView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 transcriptViewModel];
  if (!v3)
  {
LABEL_6:

    return 0;
  }

  v4 = v3;
  if ([v2 showsTranscriptionView] & 1) == 0 || (objc_msgSend(v2, "showsRestrictedAlertView"))
  {

    goto LABEL_6;
  }

  v6 = [v4 confidence];

  return v6 != 0;
}

id VoicemailSearchViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id VoicemailSearchViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v8 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView;
  *&v4[v8] = [objc_allocWithZone(type metadata accessor for VoicemailSearchMetadataView()) init];
  v9 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = &v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item] = 0;
  v11 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarViewControllerSettings;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 contactStore];

  v14 = [objc_opt_self() settingsWithContactStore:v13 threeDTouchEnabled:0];
  *&v4[v11] = v14;
  v15 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_contactStore;
  *&v4[v15] = [objc_allocWithZone(CNContactStore) init];
  v16 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView;
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  v17 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  *&v4[v16] = VoicemailUnreadIndicator.init(diameter:)();
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___commonConstraints] = 0;
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___axConstraints] = 0;
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___nonAXConstraints] = 0;
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewVisibleConstraints] = 0;
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewHiddenConstraints] = 0;
  v18 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:*&v4[v11]];
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarViewController] = v18;
  v19 = [v18 view];
  *&v4[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarView] = v19;
  if (a3)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, "initWithStyle:reuseIdentifier:", a1, v20);

  v22 = v21;
  VoicemailSearchViewCell.setupViews()();
  [v22 setPreservesSuperviewLayoutMargins:1];
  v23 = [v22 contentView];
  [v23 setPreservesSuperviewLayoutMargins:1];

  v24 = [objc_opt_self() defaultCenter];
  [v24 addObserver:v22 selector:"handleContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  return v22;
}

void VoicemailSearchViewCell.setupViews()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setNumberOfLines:2];
  [v4 setLineBreakMode:4];
  v7 = [objc_opt_self() telephonyUISubheadlineShortFont];
  [v4 setFont:v7];

  v8 = [v5 secondaryLabelColor];
  [v4 setTextColor:v8];

  v9 = *&v1[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView];
  static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
  v10 = [v5 systemBackgroundColor];
  v11 = [v10 CGColor];

  VoicemailUnreadIndicator.configureBorder(borderWidth:borderColor:)();
  v12 = [v1 contentView];
  [v12 setClipsToBounds:1];

  v13 = [v1 contentView];
  [v13 addSubview:v2];

  v14 = [v1 contentView];
  [v14 addSubview:v9];

  v15 = [v1 contentView];
  [v15 addSubview:v3];

  v16 = [v1 contentView];
  [v16 addSubview:v4];

  v17 = objc_opt_self();
  VoicemailSearchViewCell.commonConstraints.getter();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  VoicemailSearchViewCell.layoutForAccessibility()();
}

id VoicemailSearchTableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void VoicemailSearchViewCell.layoutForAccessibility()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarView];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  [v1 setHidden:v2 & 1];
  v4 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView];
  v5 = *&v0[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item];
  if (v5)
  {
    v6 = v5;
    if ([v6 isRead])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v0 traitCollection];
      v9 = [v8 preferredContentSizeCategory];

      v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
      v6 = v9;
    }
  }

  else
  {
    v7 = 1;
  }

  [v4 setHidden:v7 & 1];

  VoicemailSearchViewCell.updateConstraintsForAccessibility()();
}

Swift::Void __swiftcall VoicemailSearchViewCell.configureWithVoicemailMessageViewModel(item:contact:)(MPVoicemailMessageViewModel *item, CNContact contact)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item;
  v7 = *&v3[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item];
  *&v3[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item] = item;

  v8 = *&v3[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarViewController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100209A80;
  *(v9 + 32) = contact;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v10 = item;
  v11 = contact.super.isa;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setContacts:isa];

  VoicemailSearchMetadataView.configure(with:)(v10);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for transcriptProcessor != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() telephonyUISubheadlineShortFont];
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v33.origin.x = v16;
  v33.origin.y = v18;
  v33.size.width = v20;
  v33.size.height = v22;
  Width = CGRectGetWidth(v33);
  v24 = VoicemailTranscriptProcessor.processTranscriptText(from:searchText:maxLines:font:containerWidth:)(item, 0, 0xE000000000000000, 2, v13, Width);

  v25 = *&v3[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView];
  if (v24)
  {

    v26 = String._bridgeToObjectiveC()();

    [v25 setText:v26];
  }

  else
  {
    v26 = String._bridgeToObjectiveC()();
    [v25 setText:v26];
  }

  [v25 setUserInteractionEnabled:0];
  v27 = *&v3[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView];
  v28 = *&v3[v6];
  if (v28)
  {
    v29 = v28;
    if ([v29 isRead])
    {
      v30 = 1;
    }

    else
    {
      v31 = [v3 traitCollection];
      v32 = [v31 preferredContentSizeCategory];

      v30 = UIContentSizeCategory.isAccessibilityCategory.getter();
      v29 = v32;
    }
  }

  else
  {
    v30 = 1;
  }

  [v27 setHidden:v30 & 1];
  VoicemailSearchViewCell.loadConstraintsForTranscriptView()();
}

void VoicemailSearchViewCell.loadConstraintsForTranscriptView()()
{
  [*(v0 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView) setHidden:!VoicemailSearchViewCell.shouldShowTranscriptView.getter()];
  v1 = VoicemailSearchViewCell.shouldShowTranscriptView.getter();
  v2 = objc_opt_self();
  if (v1)
  {
    VoicemailSearchViewCell.transcriptViewVisibleConstraints.getter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:isa];

    VoicemailSearchViewCell.transcriptViewHiddenConstraints.getter();
  }

  else
  {
    VoicemailSearchViewCell.transcriptViewHiddenConstraints.getter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v4 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:v4];

    VoicemailSearchViewCell.transcriptViewVisibleConstraints.getter();
  }

  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:v5];
}

void VoicemailSearchViewCell.updateConstraintsForAccessibility()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = objc_opt_self();
  if (v3)
  {
    VoicemailSearchViewCell.axConstraints.getter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:isa];

    VoicemailSearchViewCell.nonAXConstraints.getter();
  }

  else
  {
    VoicemailSearchViewCell.nonAXConstraints.getter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v6 = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:v6];

    VoicemailSearchViewCell.axConstraints.getter();
  }

  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:v7];
}

double static VoicemailSearchViewCell.separatorInset(for:)()
{
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    static SearchLayout.CellSpacingConstants.leftSeperatorInsetWithAX.getter();
  }

  else
  {
    static SearchLayout.CellSpacingConstants.leftSeperatorInsetWithoutAX.getter();
  }

  return 0.0;
}

Swift::Void __swiftcall VoicemailSearchViewCell.highlight(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  VoicemailSearchMetadataView.highlight(text:)(text);
  if (one-time initialization token for transcriptProcessor != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 telephonyUISubheadlineShortFont];
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  Width = CGRectGetWidth(v24);
  v22 = VoicemailTranscriptProcessor.processTranscriptText(from:searchText:maxLines:font:containerWidth:)(v4, countAndFlagsBits, object, 2, v7, Width);

  if (v22)
  {
    v18 = *&v22[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_attributedText];
    v19 = *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView);
    if (v18)
    {
      v20 = v18;
      [v19 setAttributedText:v20];
    }

    else
    {

      v20 = String._bridgeToObjectiveC()();

      [v19 setText:v20];
    }
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView);
    v22 = String._bridgeToObjectiveC()();
    [v21 setText:?];
  }
}

Swift::Int __swiftcall VoicemailSearchViewCell.numberOfCharsLabelCanHold(text:)(Swift::String text)
{
  result = String.count.getter();
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2 >= 1)
  {
    v33 = objc_opt_self();
    result = objc_opt_self();
    v32 = result;
    v3 = 0;
    while (!__OFADD__(v3, v2))
    {
      v4 = (v3 + v2) / 2;
      String.index(_:offsetBy:)();
      String.subscript.getter();
      static String._fromSubstring(_:)();

      v5 = [v33 mainScreen];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v34.origin.x = v7;
      v34.origin.y = v9;
      v34.size.width = v11;
      v34.size.height = v13;
      Width = CGRectGetWidth(v34);
      v15 = [v32 telephonyUISubheadlineShortFont];
      v16 = String._bridgeToObjectiveC()();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100209AA0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIFont);
      *(inited + 40) = v15;
      v18 = NSFontAttributeName;
      v19 = v15;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (NSAttributedStringKey, Any)(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 boundingRectWithSize:3 options:isa attributes:0 context:{Width, 1.79769313e308}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v35.origin.x = v22;
      v35.origin.y = v24;
      v35.size.width = v26;
      v35.size.height = v28;
      v29 = ceil(CGRectGetHeight(v35));
      [v19 lineHeight];
      v31 = v30;

      if (v29 / v31 > 2.0)
      {
        v2 = v4 - 1;
      }

      else
      {
        v3 = v4 + 1;
      }

      if (v3 >= v2)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return -(-v2 >> 1);
}

Swift::String __swiftcall VoicemailSearchViewCell.truncate(text:with:for:)(Swift::String text, Swift::String with, Swift::Int a3)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v6 = text._object;
  v7 = text._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  if (String.count.getter() <= a3)
  {
  }

  else
  {
    v54 = v7;
    v55 = v6;
    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.applyingTransform(_:reverse:)(NSStringTransformStripDiacritics, 0);
    if (v11.value._object)
    {
      v7 = v11.value._countAndFlagsBits;
      v6 = v11.value._object;
    }

    else
    {
    }

    v54 = countAndFlagsBits;
    v55 = object;
    v12 = StringProtocol.applyingTransform(_:reverse:)(NSStringTransformStripDiacritics, 0);
    if (v12.value._object)
    {
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    else
    {
    }

    v54 = 25180;
    v55 = 0xE200000000000000;
    v13._countAndFlagsBits = countAndFlagsBits;
    v13._object = object;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0x625C2A775CLL;
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15 = v54;
    v16 = v55;
    v54 = v7;
    v55 = v6;
    v60 = v15;
    v61 = v16;
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = StringProtocol.range<A>(of:options:range:locale:)();
    v20 = v19;
    v22 = v21;
    outlined destroy of (NSAttributedStringKey, Any)(v10, &_s10Foundation6LocaleVSgMd);

    if ((v22 & 1) == 0)
    {
      v23 = v18;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v26 = 136315138;
        v52 = v23;
        v53 = v20;
        v58 = v23;
        v54 = 0;
        v55 = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v27._countAndFlagsBits = 3943982;
        v27._object = 0xE300000000000000;
        String.append(_:)(v27);
        _print_unlocked<A, B>(_:_:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v60);

        *(v26 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "VoicemailSearchViewCell: searchTextRange: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
      }

      v29 = String.distance(from:to:)();
      v30 = String.distance(from:to:)();
      v32 = v30 - v29;
      if (__OFSUB__(v30, v29))
      {
        __break(1u);
      }

      else
      {
        v33 = __OFSUB__(a3, v32);
        v34 = a3 - v32;
        if (!v33)
        {
          v35 = v30;
          v30 = String.count.getter();
          v36 = v30 - v35;
          if (!__OFSUB__(v30, v35))
          {
            v37 = v34 / 2;
            if (v36 < v34 / 2)
            {
              v33 = __OFSUB__(v34, v36);
              v38 = v34 - v36;
              if (v33)
              {
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

              v39 = v29 - v38;
              if (!__OFSUB__(v29, v38))
              {
                goto LABEL_21;
              }

              __break(1u);
            }

            v39 = v29 - v37;
            if (__OFSUB__(v29, v37))
            {
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_21:
            v60 = 0;
            v61 = 0xE000000000000000;
            v30 = String.index(_:offsetBy:)();
            v40 = HIBYTE(v6) & 0xF;
            if ((v6 & 0x2000000000000000) == 0)
            {
              v40 = v7 & 0xFFFFFFFFFFFFLL;
            }

            if (4 * v40 >= v30 >> 14)
            {
              String.subscript.getter();

              v41 = static String._fromSubstring(_:)();
              v43 = v42;

              if (v39 >= 1)
              {
                v44._countAndFlagsBits = 0xA680E29C80E2;
                v44._object = 0xA600000000000000;
                String.append(_:)(v44);
                v54 = v41;
                v55 = v43;
                v58 = 32;
                v59 = 0xE100000000000000;
                v45 = StringProtocol.components<A>(separatedBy:)();

                v46 = *(v45 + 16);
                v54 = v45;
                v55 = v45 + 32;
                v56 = v46 != 0;
                v57 = (2 * v46) | 1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd);
                lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
                v41 = BidirectionalCollection<>.joined(separator:)();
                v43 = v47;
              }

              v48._countAndFlagsBits = v41;
              v48._object = v43;
              String.append(_:)(v48);

              v7 = v60;
              v6 = v61;
              goto LABEL_27;
            }

            goto LABEL_31;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_27:
  v30 = v7;
  v31 = v6;
LABEL_34:
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

Swift::Void __swiftcall VoicemailSearchViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  LODWORD(isa) = [v3 hasDifferentColorAppearanceComparedToTraitCollection:isa];

  if (isa)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView] layer];
    v5 = [objc_opt_self() systemBackgroundColor];
    v6 = [v5 CGColor];

    [v4 setBorderColor:v6];
  }
}

id MessageID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized VoicemailSearchViewCell.init(coder:)()
{
  v1 = v0;
  Logger.init(subsystem:category:)();
  v2 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_metadataView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for VoicemailSearchMetadataView()) init];
  v3 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_transcriptView;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = (v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_item) = 0;
  v5 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_avatarViewControllerSettings;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 contactStore];

  v8 = [objc_opt_self() settingsWithContactStore:v7 threeDTouchEnabled:0];
  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_contactStore;
  *(v1 + v9) = [objc_allocWithZone(CNContactStore) init];
  v10 = OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_unreadIndicatorImageView;
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  v11 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  *(v1 + v10) = VoicemailUnreadIndicator.init(diameter:)();
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___commonConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___axConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___nonAXConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewVisibleConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell____lazy_storage___transcriptViewHiddenConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t type metadata accessor for VoicemailSearchViewCell()
{
  result = type metadata singleton initialization cache for VoicemailSearchViewCell;
  if (!type metadata singleton initialization cache for VoicemailSearchViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailSearchViewCell()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B1E28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = String.init<A>(reflecting:)();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t one-time initialization function for nickname(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for recordingSession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.recordingSession);
  __swift_project_value_buffer(v0, static Logger.recordingSession);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for iPadMenuBarForPhoneFaceTime()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.iPadMenuBarForPhoneFaceTime);
  __swift_project_value_buffer(v0, static Logger.iPadMenuBarForPhoneFaceTime);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for iPadMenuBarForICS()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.iPadMenuBarForICS);
  __swift_project_value_buffer(v0, static Logger.iPadMenuBarForICS);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for mobilePhone()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.mobilePhone = result;
  return result;
}

uint64_t *OS_os_log.mobilePhone.unsafeMutableAddressor()
{
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  return &static OS_os_log.mobilePhone;
}

uint64_t one-time initialization function for faceTime()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.faceTime = result;
  return result;
}

uint64_t *OS_os_log.faceTime.unsafeMutableAddressor()
{
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  return &static OS_os_log.faceTime;
}

uint64_t one-time initialization function for inCallService()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.inCallService = result;
  return result;
}

uint64_t *OS_os_log.inCallService.unsafeMutableAddressor()
{
  if (one-time initialization token for inCallService != -1)
  {
    swift_once();
  }

  return &static OS_os_log.inCallService;
}

id static OS_os_log.mobilePhone.getter(void *a1, void **a2)
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

uint64_t one-time initialization function for inCallService(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.mobilePhone.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.inCallService.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t String.init(namedPropertyValues:for:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v36 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = a1 + 32;
    do
    {
      outlined init with copy of Binding<EditMode>?(v6, &v33, &_sSS4name_ypSg5valuetMd);
      v31 = v33;
      v32 = v34;

      v7._countAndFlagsBits = 61;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      outlined init with copy of Binding<EditMode>?(&v35, &v28, &_sypSgMd);
      if (v29)
      {
        outlined init with take of Any(&v28, v30);
        outlined init with copy of Any(v30, &v28);
        v8 = String.init<A>(reflecting:)();
        v10 = v9;
        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      else
      {
        outlined destroy of (NSAttributedStringKey, Any)(&v28, &_sypSgMd);
        v10 = 0xE300000000000000;
        v8 = 7104878;
      }

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 41;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = v31;
      v14 = v32;
      outlined destroy of (NSAttributedStringKey, Any)(&v33, &_sSS4name_ypSg5valuetMd);
      v36 = v5;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v5 = v36;
      }

      v5[2] = v16 + 1;
      v17 = &v5[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      v6 += 48;
      --v4;
    }

    while (v4);

    v2 = a2;
  }

  else
  {

    v5 = &_swiftEmptyArrayStorage;
  }

  v33 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v33 = 60;
  v34 = 0xE100000000000000;
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  swift_getDynamicType();
  v21._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v18;
  v23._object = v20;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v25;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11MobilePhone9MessageIDC_AC0F0_ptGMd, &_ss23_ContiguousArrayStorageCy11MobilePhone9MessageIDC_AC0F0_ptGMR, &_s11MobilePhone9MessageIDC_AA0C0_ptMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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
    v10 = _swiftEmptyArrayStorage;
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11MobilePhone7Message_pGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone7Message_pGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

id VoicemailAccountManagerDataProtocol.init(cache:anyAccountSubscribed:online:isMessageWaiting:storageUsage:transcriptionEnabled:transcriptionProgress:accounts:)(id a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, id a5, char a6, unsigned __int8 a7, void *a8, uint64_t a9)
{
  if (a2 == 2)
  {
    v16 = [a1 anyAccountSubscribed];
  }

  else
  {
    v16 = a2;
  }

  if (a3 == 2)
  {
    a3 = [a1 online];
  }

  if (a4 == 2)
  {
    a4 = [a1 isMessageWaiting];
  }

  if (a6)
  {
    a5 = [a1 storageUsage];
  }

  if (a7 == 2)
  {
    a7 = [a1 transcriptionEnabled];
  }

  v26 = a4;
  v17 = a8;
  if (!a8)
  {
    v17 = [a1 transcriptionProgress];
  }

  v18 = a7;
  v19 = a5;
  v20 = a8;
  if (!a9)
  {
    v21 = [a1 accounts];
    type metadata accessor for VoicemailAccount();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for VoicemailAccount();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v22 initWithAnyAccountSubscribed:v16 & 1 online:a3 & 1 isMessageWaiting:v26 & 1 storageUsage:v19 transcriptionEnabled:v18 & 1 transcriptionProgress:v17 accounts:isa];

  swift_unknownObjectRelease();
  return v24;
}

id VoicemailAccountManagerDataProtocol.init(cache:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = [a1 anyAccountSubscribed];
  v4 = [a1 online];
  v5 = [a1 isMessageWaiting];
  v6 = [a1 storageUsage];
  v7 = [a1 transcriptionEnabled];
  v8 = [a1 transcriptionProgress];
  v9 = [a1 accounts];
  v10 = [v2 initWithAnyAccountSubscribed:v3 online:v4 isMessageWaiting:v5 storageUsage:v6 transcriptionEnabled:v7 transcriptionProgress:v8 accounts:v9];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t closure #2 in variable initialization expression of static SpringBoardOrientationObserver.springBoardOrientationNotify@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t SpringBoardOrientationObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for SpringBoardOrientationObserver.onOrientationLock : SpringBoardOrientationObserver@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned SpringBoardOrientationObserver.OrientationStatus) -> ();
  a2[1] = v6;
}

uint64_t key path setter for SpringBoardOrientationObserver.onOrientationLock : SpringBoardOrientationObserver(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SpringBoardOrientationObserver.OrientationStatus) -> (@out ());
  v6[1] = v5;
}

uint64_t SpringBoardOrientationObserver.onOrientationLock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SpringBoardOrientationObserver.onOrientationLock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SpringBoardOrientationObserverWrapper.isLocked.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18PHCFNotifyObserverCySbGMd);
  swift_initStaticObject();
  return specialized PHCFNotifyObserver.getCurrentValue()() & 1;
}

uint64_t SpringBoardOrientationObserverWrapper.currentOrientation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18PHCFNotifyObserverCySo19UIDeviceOrientationVGMd);
  swift_initStaticObject();
  return specialized PHCFNotifyObserver.getCurrentValue()();
}

uint64_t SpringBoardOrientationObserver.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = (v2 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  *v3 = PHVoicemailInboxListViewController.refreshTableHeaderView();
  v3[1] = 0;
  *(v2 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver____lazy_storage___cfObserver) = 0;
  v4 = OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t SpringBoardOrientationObserver.init(logger:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  *v3 = PHVoicemailInboxListViewController.refreshTableHeaderView();
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver____lazy_storage___cfObserver) = 0;
  v4 = OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t specialized PHCFNotifyObserver.getCurrentValue()()
{
  if (*(v0 + 20) == 1)
  {
    out_token[0] = -1;
    v1 = String.utf8CString.getter();
    v2 = notify_register_check((v1 + 32), out_token);

    if (v2)
    {
      if (*(v0 + 20))
      {
        v3 = *(v0 + 40);
        return v3 & 1;
      }
    }

    else
    {
      *(v0 + 16) = out_token[0];
      *(v0 + 20) = 0;
    }
  }

  v4 = *(v0 + 16);
  *out_token = (*(v0 + 48))(v0 + 40);
  notify_get_state(v4, out_token);
  (*(v0 + 64))(&v7, *out_token);
  v3 = v7;
  if (v7 == 2)
  {
    v3 = *(v0 + 40);
  }

  return v3 & 1;
}

{
  if (*(v0 + 20) == 1)
  {
    LODWORD(out_token) = -1;
    v1 = String.utf8CString.getter();
    v2 = notify_register_check((v1 + 32), &out_token);

    if (v2)
    {
      if (*(v0 + 20))
      {
        return *(v0 + 40);
      }
    }

    else
    {
      *(v0 + 16) = out_token;
      *(v0 + 20) = 0;
    }
  }

  v4 = *(v0 + 16);
  v6 = (*(v0 + 48))(v0 + 40);
  notify_get_state(v4, &v6);
  (*(v0 + 64))(&out_token, v6);
  if (v8)
  {
    p_out_token = (v0 + 40);
  }

  else
  {
    p_out_token = &out_token;
  }

  return *p_out_token;
}

uint64_t SpringBoardOrientationObserver.deinit()
{
  v1 = OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SpringBoardOrientationObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpringBoardOrientationObserver()
{
  result = type metadata singleton initialization cache for SpringBoardOrientationObserver;
  if (!type metadata singleton initialization cache for SpringBoardOrientationObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SpringBoardOrientationObserver()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringBoardOrientationObserver.OrientationStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpringBoardOrientationObserver.OrientationStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for SpringBoardOrientationObserver.OrientationStatus(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SpringBoardOrientationObserver.OrientationStatus(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000B4780()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SpringBoardOrientationObserver.OrientationStatus) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

id MessageID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall VoicemailSearchMetadataView.configure(with:)(MPVoicemailMessageViewModel *with)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel];
  v9 = [(MPVoicemailMessageViewModel *)with localizedTitle];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v9];

  v10 = [objc_opt_self() dynamicLabelColor];
  [v8 setTextColor:v10];

  v11 = *&v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel];
  v12 = [(MPVoicemailMessageViewModel *)with localizedDuration];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v36[0] = v13;
  v36[1] = v15;
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = [(MPVoicemailMessageViewModel *)with localizedSubtitle];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22 = String._bridgeToObjectiveC()();

  [v11 setText:v22];

  v23 = *&v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_dateLabel];
  v24 = [(MPVoicemailMessageViewModel *)with date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v23 setDate:isa];

  v26 = [(MPVoicemailMessageViewModel *)with localizedSenderIdentityTitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = String.count.getter();

  if (v27)
  {
    v28 = [(MPVoicemailMessageViewModel *)with localizedSenderIdentityTitle];
    if (!v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = &v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView];
    v30 = *&v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView];
    [v30 setTitle:v28];
  }

  else
  {
    v29 = &v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView];
  }

  [*v29 setHidden:v27 == 0];
  v31 = [v2 traitCollection];
  v32 = [v31 preferredContentSizeCategory];

  v33 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v34 = *&v2[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_unreadIndicatorImageView];
  v35 = (v33 & 1) == 0 || [(MPVoicemailMessageViewModel *)with isRead];
  [v34 setHidden:v35];
}

Swift::Void __swiftcall VoicemailSearchMetadataView.highlight(text:)(Swift::String text)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel);
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 attributedStringToHighlightText:v5];

    [v2 setAttributedText:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel);
  v8 = [v7 text];
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 attributedStringToHighlightText:v10];

    [v7 setAttributedText:v11];
  }
}

void VoicemailSearchMetadataView.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VoicemailSearchMetadataView.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return VoicemailSearchMetadataView.delegate.modify;
}

void VoicemailSearchMetadataView.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t VoicemailSearchMetadataView.commonConstraints.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView____lazy_storage___commonConstraints;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView____lazy_storage___commonConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView____lazy_storage___commonConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100209C00;
    v3 = [*&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView] centerYAnchor];
    v4 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleStack];
    v5 = [v4 centerYAnchor];
    v6 = [v3 constraintEqualToAnchor:v5];

    *(v2 + 32) = v6;
    v7 = [*&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel] centerYAnchor];
    v8 = [v4 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v2 + 40) = v9;
    v10 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer];
    v11 = [v10 topAnchor];
    v12 = [v0 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v2 + 48) = v13;
    v14 = [v10 bottomAnchor];
    v15 = [v0 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v2 + 56) = v16;
    v17 = [v10 leadingAnchor];
    v18 = [v0 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v2 + 64) = v19;
    v20 = [v10 trailingAnchor];
    v21 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_callButton];
    v22 = [v21 leadingAnchor];
    static SearchLayout.CellSpacingConstants.accessoryButtonSpacing.getter();
    v24 = [v20 constraintEqualToAnchor:v22 constant:-v23];

    *(v2 + 72) = v24;
    v25 = [v21 trailingAnchor];
    v26 = [v0 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v2 + 80) = v27;
    v28 = [v21 centerYAnchor];
    v29 = [v0 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v2 + 88) = v30;
    *&v0[v1] = v2;
  }

  return v2;
}

id VoicemailSearchMetadataView.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_callButton;
  *&v0[v3] = [objc_allocWithZone(TPAccessoryButton) init];
  v4 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer;
  *&v0[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_textContainer;
  *&v0[v5] = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel;
  *&v0[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleStack;
  *&v0[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleStack;
  *&v0[v8] = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel;
  *&v0[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_dateLabel;
  *&v0[v10] = [objc_allocWithZone(UIDateLabel) init];
  v11 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView;
  v12 = objc_allocWithZone(TPBadgeView);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithTitle:v13];

  *&v1[v11] = v14;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_unreadIndicatorImageView;
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
  v16 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  *&v1[v15] = VoicemailUnreadIndicator.init(diameter:)();
  *&v1[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView____lazy_storage___commonConstraints] = 0;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  VoicemailSearchMetadataView.setupViews()();

  return v17;
}

void VoicemailSearchMetadataView.setupViews()()
{
  v1 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() systemImageNamed:v1];

  v2 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_callButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 configureForImage:v25];
  [v2 addTarget:v0 action:"didTapCall" forControlEvents:64];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  [v0 addSubview:v2];
  v4 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_self();
  v6 = [v5 telephonyUIBodyShortEmphasizedFont];
  [v4 setFont:v6];

  v7 = objc_opt_self();
  v8 = [v7 dynamicLabelColor];
  [v4 setTextColor:v8];

  LODWORD(v9) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v9];
  v10 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleStack];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAxis:0];
  [v10 setAlignment:3];
  static SearchLayout.CellSpacingConstants.gridColumnSpacing.getter();
  [v10 setSpacing:?];
  [v10 addArrangedSubview:*&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_unreadIndicatorImageView]];
  [v10 addArrangedSubview:v4];
  v11 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v5 telephonyUISubheadlineShortFont];
  [v11 setFont:v12];

  v13 = [v7 secondaryLabelColor];
  [v11 setTextColor:v13];

  v14 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView;
  v15 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView];
  v16 = [v7 dynamicTertiaryLabelColor];
  [v15 setTintColor:v16];

  [*&v0[v14] setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleStack];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAxis:0];
  [v17 setAlignment:3];
  [v17 setSpacing:4.0];
  [v11 effectiveFirstBaselineOffsetFromTop];
  [v17 setCustomFirstBaselineOffsetFromTop:?];
  [v17 addArrangedSubview:*&v0[v14]];
  [v17 addArrangedSubview:v11];
  v18 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_dateLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v5 telephonyUISubheadlineShortFont];
  [v18 setFont:v19];

  v20 = [v7 dynamicSecondaryLabelColor];
  [v18 setTextColor:v20];

  v21 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_textContainer];
  [v21 addArrangedSubview:v10];
  [v21 addArrangedSubview:v17];
  [v21 setAxis:1];
  static SearchLayout.CellSpacingConstants.gridRowSpacing.getter();
  [v21 setSpacing:?];
  [v21 setAlignment:1];
  [v21 setDistribution:0];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer];
  [v22 addArrangedSubview:v21];
  [v22 addArrangedSubview:v18];
  [v22 setDistribution:0];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v22];
  v23 = objc_opt_self();
  VoicemailSearchMetadataView.commonConstraints.getter();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];

  VoicemailSearchMetadataView.updateLayoutForAccessibility()();
}

id VoicemailSearchMetadataView.updateLayoutForAccessibility()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel];
  if (v3)
  {
    [*&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel] setNumberOfLines:0];
    v5 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer];
    [v5 setAxis:1];
    [v5 setAlignment:1];
    static SearchLayout.CellSpacingConstants.gridRowSpacing.getter();
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    [v4 setNumberOfLines:v8];
    v5 = *&v0[OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer];
    [v5 setAxis:0];
    [v5 setAlignment:3];
    static SearchLayout.CellSpacingConstants.dateLabelSpacing.getter();
  }

  return [v5 setSpacing:?];
}

Swift::Void __swiftcall VoicemailSearchMetadataView.showSimLineBadgeView(simLabel:)(Swift::String simLabel)
{
  v2 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView;
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView);
  v4 = String._bridgeToObjectiveC()();
  [v3 setTitle:v4];

  v5 = *(v1 + v2);

  [v5 setHidden:0];
}

Swift::Void __swiftcall VoicemailSearchMetadataView.didTapCall()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler);
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);

    if (v3)
    {
      v3();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    }
  }
}

id VoicemailSearchMetadataView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

void specialized VoicemailSearchMetadataView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_callButton;
  *(v0 + v2) = [objc_allocWithZone(TPAccessoryButton) init];
  v3 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_metadataContainer;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_textContainer;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_titleStack;
  *(v0 + v6) = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleStack;
  *(v0 + v7) = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_subtitleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_dateLabel;
  *(v0 + v9) = [objc_allocWithZone(UIDateLabel) init];
  v10 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_badgeView;
  v11 = objc_allocWithZone(TPBadgeView);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithTitle:v12];

  *(v1 + v10) = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView_unreadIndicatorImageView;
  static SearchLayout.CellSpacingConstants.unreadIndicatorDiameter.getter();
  static SearchLayout.CellSpacingConstants.unreadIndicatorBorderWidth.getter();
  v15 = objc_allocWithZone(type metadata accessor for VoicemailUnreadIndicator());
  *(v1 + v14) = VoicemailUnreadIndicator.init(diameter:)();
  *(v1 + OBJC_IVAR____TtC11MobilePhone27VoicemailSearchMetadataView____lazy_storage___commonConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B6388@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t outlined destroy of Notification?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t RecentsCellConfigurator.recentsReminderActionProvider.getter()
{
  v1 = OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider;
  if (*(v0 + OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR___MPRecentsCellConfigurator_recentsController) callProviderManager];
    type metadata accessor for RecentsReminderActionProvider();
    swift_allocObject();
    v4 = v0;
    v2 = RecentsReminderActionProvider.init(callProviderManager:)();
    lazy protocol witness table accessor for type RecentsCellConfigurator and conformance RecentsCellConfigurator(&lazy protocol witness table cache variable for type RecentsCellConfigurator and conformance RecentsCellConfigurator);
    swift_unknownObjectRetain();
    dispatch thunk of RecentsReminderActionProvider.delegate.setter();
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t type metadata accessor for RecentsCellConfigurator()
{
  result = type metadata singleton initialization cache for RecentsCellConfigurator;
  if (!type metadata singleton initialization cache for RecentsCellConfigurator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*RecentsCellConfigurator.recentsReminderActionProvider.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = RecentsCellConfigurator.recentsReminderActionProvider.getter();
  return RecentsCellConfigurator.recentsReminderActionProvider.modify;
}

uint64_t RecentsCellConfigurator.remindMeActionConfigurator.getter()
{
  v1 = OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator;
  if (*(v0 + OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator))
  {
    v2 = *(v0 + OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator);
  }

  else
  {
    RecentsCellConfigurator.recentsReminderActionProvider.getter();
    type metadata accessor for RecentsRemindMeActionConfigurator();
    swift_allocObject();
    v2 = RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

void RecentsCellConfigurator.tableView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPLegacyRecentsTableViewCell);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = String._bridgeToObjectiveC()();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];
  }
}

void (*RecentsCellConfigurator.tableView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MPRecentsCellConfigurator_tableView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RecentsCellConfigurator.tableView.modify;
}

void RecentsCellConfigurator.tableView.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPLegacyRecentsTableViewCell);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = String._bridgeToObjectiveC()();
      [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];
    }
  }

  free(v3);
}

id static RecentsCellConfigurator.separatorInsets(for:isEditing:)(uint64_t a1, char a2)
{
  v4 = objc_opt_self();

  return [v4 separatorInsetForContentSizeCategory:a1 isEditing:a2 & 1];
}

id RecentsCellConfigurator.__allocating_init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = v13;
  v43 = v14;
  v20 = objc_allocWithZone(v14);
  v21 = &v20[OBJC_IVAR___MPRecentsCellConfigurator_cellIdentifier];
  *v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21[1] = v22;
  v23 = OBJC_IVAR___MPRecentsCellConfigurator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.mobilePhone);
  (*(*(v24 - 8) + 16))(&v20[v23], v25, v24);
  swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider] = 0;
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPLegacyRecentsTableViewCell);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v27 = String._bridgeToObjectiveC()();

  [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_recentsController] = a2;
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_featureFlags] = a3;
  v20[OBJC_IVAR___MPRecentsCellConfigurator_tapTargets] = a4 & 1;
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_callReportingViewModel] = a5;
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_reportFlowPresenter] = a6;
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_contactsService] = a7;
  v28 = objc_opt_self();
  v41 = a2;
  v29 = a3;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = [v28 sharedInstance];
  v34 = [v33 contactStore];

  v35 = [objc_opt_self() settingsWithContactStore:v34 threeDTouchEnabled:1];
  *&v20[OBJC_IVAR___MPRecentsCellConfigurator_avatarViewControllerSettings] = v35;
  v36 = &v20[OBJC_IVAR___MPRecentsCellConfigurator_placeCallAction];
  *v36 = a9;
  v36[1] = a10;
  v37 = &v20[OBJC_IVAR___MPRecentsCellConfigurator_removeCallsAtIndexPaths];
  *v37 = a11;
  v37[1] = a12;
  swift_unknownObjectWeakAssign();
  v45.receiver = v20;
  v45.super_class = v43;

  v38 = objc_msgSendSuper2(&v45, "init");

  return v38;
}

id RecentsCellConfigurator.init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = specialized RecentsCellConfigurator.init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12);

  return v19;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexPath();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id RecentsCellConfigurator.cell(for:recentCall:)(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MPLegacyRecentsTableViewCell) init];
  }

  v6 = Strong;
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [v6 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  if (!v9)
  {
    return [objc_allocWithZone(MPLegacyRecentsTableViewCell) init];
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    return [objc_allocWithZone(MPLegacyRecentsTableViewCell) init];
  }

  v11 = v10;
  if ([*(v3 + OBJC_IVAR___MPRecentsCellConfigurator_featureFlags) phoneRecentsAvatarsEnabled])
  {
    v12 = [v11 avatarViewController];
    if (!v12)
    {
      v12 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:*(v3 + OBJC_IVAR___MPRecentsCellConfigurator_avatarViewControllerSettings)];
      [v11 setAvatarViewController:v12];
      v13 = [v12 view];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        [v14 setAllowStaleRendering:1];
      }
    }

    ContactsService.avatarContacts(for:)(a2);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setContacts:v15];

    v16 = [v12 view];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = [a2 uniqueId];
      if (!v19)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = String._bridgeToObjectiveC()();
      }

      [v18 setContextToken:v19];
    }

    else
    {
      v19 = v12;
      v12 = v16;
    }
  }

  v21 = *(v3 + OBJC_IVAR___MPRecentsCellConfigurator_tapTargets);
  [v11 setTapTargets:*(v3 + OBJC_IVAR___MPRecentsCellConfigurator_tapTargets)];
  v22 = [*(v3 + OBJC_IVAR___MPRecentsCellConfigurator_recentsController) itemForRecentCall:a2 presentationStyle:0];
  [v11 configureWithRecentsItem:v22 recentCall:a2];
  if (v21 == 1)
  {
    v23 = [a2 validRemoteParticipantHandles];
    v27 = 1;
    if (v23)
    {
      v24 = v23;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      lazy protocol witness table accessor for type CHHandle and conformance NSObject();
      v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = (v25 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v25 + 16);

      if (!v26)
      {
        v27 = 0;
      }
    }

    [v11 enableCallButton:v27];
    v29 = *(v3 + OBJC_IVAR___MPRecentsCellConfigurator_placeCallAction);
    v28 = *(v3 + OBJC_IVAR___MPRecentsCellConfigurator_placeCallAction + 8);
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v28;
    v30[4] = a2;
    aBlock[4] = partial apply for closure #2 in RecentsCellConfigurator.cell(for:recentCall:);
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_0;
    v31 = _Block_copy(aBlock);

    v32 = a2;

    [v11 setCallButtonTappedHandler:v31];

    _Block_release(v31);
  }

  else
  {
  }

  return v11;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

id RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentsItem();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v46 = &_swiftEmptyArrayStorage;
  v12 = *(v2 + OBJC_IVAR___MPRecentsCellConfigurator_removeCallsAtIndexPaths);
  v11 = *(v2 + OBJC_IVAR___MPRecentsCellConfigurator_removeCallsAtIndexPaths + 8);
  (*(v9 + 16))(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  (*(v9 + 32))(v14 + v13, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = partial apply for closure #1 in RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();

  v17 = [v16 contextualActionWithStyle:1 title:0 handler:v15];
  _Block_release(v15);

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  [v17 setImage:v19];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = [*(v3 + OBJC_IVAR___MPRecentsCellConfigurator_recentsController) itemForRecentCall:a2];
  v21 = *(v3 + OBJC_IVAR___MPRecentsCellConfigurator_contactsService);
  v22 = *&v21[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24 = [v22 contactByHandleForRecentCall:a2 keyDescriptors:isa];

  if (v24)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v25 = 0;
  }

  v26 = [a2 validRemoteParticipantHandles];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = a2;
    v30 = v21;
    specialized Sequence.compactMap<A>(_:)(v28, v25, v29, v30);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v31 = a2;
  v32 = v20;
  v33 = v42;
  RecentsItem.init(from:recentsItem:contacts:)();
  RecentsCellConfigurator.remindMeActionConfigurator.getter();
  lazy protocol witness table accessor for type RecentsCellConfigurator and conformance RecentsCellConfigurator(&lazy protocol witness table cache variable for type RecentsCellConfigurator and conformance RecentsCellConfigurator);
  swift_unknownObjectRetain();
  dispatch thunk of RecentsRemindMeActionConfigurator.delegate.setter();

  v34 = dispatch thunk of RecentsRemindMeActionConfigurator.remindMeAction(for:)();

  if (v34)
  {
    v35 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v36 = RecentsCellConfigurator.reportSwipeAction(for:)(v31);
  if (v36)
  {
    v37 = v36;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIContextualAction);
  v38 = Array._bridgeToObjectiveC()().super.isa;

  v39 = [objc_opt_self() configurationWithActions:v38];

  (*(v43 + 8))(v33, v44);
  return v39;
}

uint64_t closure #1 in RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100209AA0;
  (*(v10 + 16))(v12 + v11, a7, v9);
  a5(v12);
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v8);
}

id RecentsCellConfigurator.reportSwipeAction(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((CallReportingViewModel.shouldShowReportAction(for:)(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = CallReportingViewModel.reportingFlow(for:)(a1);
  if (v8 == 6)
  {
    return 0;
  }

  v10 = v8;
  v11 = *(v2 + OBJC_IVAR___MPRecentsCellConfigurator_reportFlowPresenter);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + OBJC_IVAR___MPRecentsCellConfigurator_logger, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  (*(v5 + 32))(v14 + v12, v7, v4);
  *(v14 + v13) = v11;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = partial apply for closure #1 in RecentsCellConfigurator.reportSwipeAction(for:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();
  v17 = v11;
  v18 = a1;
  v19 = [v16 contextualActionWithStyle:0 title:0 handler:v15];
  _Block_release(v15);

  v20 = [objc_opt_self() systemOrangeColor];
  [v19 setBackgroundColor:v20];

  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21];

  [v19 setImage:v22];
  return v19;
}

id @objc RecentsCellConfigurator.cell(for:recentCall:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(char *, id))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a4;
  v13 = a1;
  v14 = a5(v11, v12);

  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t RecentsCellConfigurator.configure(cardController:for:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___MPRecentsCellConfigurator_recentsController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100209A80;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v5 contactForRecentCall:a2 keyDescriptors:isa];

  if (!v8)
  {
    return 2;
  }

  [a1 setContact:v8];
  v9 = [a2 identityExtension];
  if (!v9 || ((v9, v10 = [v8 phoneNumbers], __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v11 >> 62) ? (v12 = _CocoaArrayWrapper.endIndex.getter()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v12 != 1))
  {
    v22 = [v5 itemForRecentCall:a2];
    v21 = [v22 localizedSubtitle];

    [a1 setMessage:v21];
LABEL_20:

    return 0;
  }

  v13 = [v8 phoneNumbers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_18:
    v21 = 0;
    v17 = 0;
LABEL_19:

    [a1 setMessage:v21];

    goto LABEL_20;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_11:
    v17 = v16;

    v18 = [v17 value];
    v19 = [v18 formattedInternationalStringValue];

    if (!v19)
    {
      v20 = [v17 value];
      v19 = [v20 stringValue];
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = String._bridgeToObjectiveC()();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RecentsCellConfigurator.reportSwipeAction(for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a5 <= 2)
  {
    switch(a5)
    {
      case 0:
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "MPRecentsTableViewController: we are showing the native spam reporting and blocking for facetime", v15, 2u);
        }

        ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(a8);
        return a3(1);
      case 1:
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "MPRecentsTableViewController: we are showing the carrier reporting and blocking option", v12, 2u);
        }

        ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(a8);
        return a3(1);
      case 2:
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "MPRecentsTableViewController: we are showing the third party reporting and blocking option", v18, 2u);
        }

        ReportFlowPresenter.showReportingExtension(for:)(a8);
        return a3(1);
    }
  }

  else
  {
    if (a5 <= 4)
    {
      if (a5 == 3)
      {
        ReportFlowPresenter.presentBlockAllAlert(for:)(a8);
      }

      else
      {
        ReportFlowPresenter.presentBlockUnknownAlert(for:)(a8);
      }

      return a3(1);
    }

    if (a5 == 5)
    {
      ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(a8);
      return a3(1);
    }

    if (a5 == 6)
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "MPRecentsTableViewController: we are showing none flow", v21, 2u);
      }

      return a3(1);
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t RecentsCellConfigurator.update(reminderUUID:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentsItem();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  outlined init with copy of UUID?(a1, &v38 - v13);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v40 = a1;
  v41 = v3;
  if (v17)
  {
    v39 = v16;
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v18 = 136315394;
    outlined init with copy of UUID?(v14, v12);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v12, 1, v19) == 1)
    {
      outlined destroy of UUID?(v12);
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v22 = UUID.uuidString.getter();
      v21 = v24;
      (*(v20 + 8))(v12, v19);
    }

    outlined destroy of UUID?(v14);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v44);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = Array.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v44);

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v39, "Asked to update reminderUUID: %s for items: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = outlined destroy of UUID?(v14);
  }

  v44 = &_swiftEmptyArrayStorage;
  v29 = *(a2 + 16);
  if (v29)
  {
    v30 = *(v42 + 2);
    v31 = a2 + ((v42[80] + 32) & ~v42[80]);
    v32 = *(v42 + 9);
    v33 = (v42 + 8);
    v42 = &_swiftEmptyArrayStorage;
    do
    {
      v34 = v43;
      v30(v8, v31, v43);
      v35 = RecentsItem.recentCall.getter();
      v23 = (*v33)(v8, v34);
      if (v35)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v23 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v42 = v44;
      }

      v31 += v32;
      --v29;
    }

    while (v29);
  }

  else
  {
    v42 = &_swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v23);
  v36 = v40;
  *(&v38 - 2) = v41;
  *(&v38 - 1) = v36;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in RecentsCellConfigurator.update(reminderUUID:for:), (&v38 - 4), v42);
}

void closure #1 in RecentsCellConfigurator.update(reminderUUID:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = *a1;
  v10 = *(a2 + OBJC_IVAR___MPRecentsCellConfigurator_recentsController);
  outlined init with copy of UUID?(a3, v14 - v7);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  [v10 updateReminderUUID:isa forRecentCall:v9];
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  specialized Sequence.forEach(_:)(a1, a2, a3);
}

{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

UIViewController_optional __swiftcall RecentsCellConfigurator.presentingViewControllerForRemindMeActionConfigurator()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  result.value.super.super.isa = Strong;
  result.is_nil = v1;
  return result;
}

id TUHandle.init(_:)(void *a1)
{
  v2 = [a1 type];
  if (v2 > 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_100209D38[v2];
  }

  v4 = [a1 value];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v3 value:v4];

  return v5;
}

id specialized RecentsCellConfigurator.init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v17 = &v11[OBJC_IVAR___MPRecentsCellConfigurator_cellIdentifier];
  *v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v18;
  v19 = OBJC_IVAR___MPRecentsCellConfigurator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.mobilePhone);
  (*(*(v20 - 8) + 16))(&v11[v19], v21, v20);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider] = 0;
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPLegacyRecentsTableViewCell);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v23 = String._bridgeToObjectiveC()();

  [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v23];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_recentsController] = a2;
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_featureFlags] = a3;
  v11[OBJC_IVAR___MPRecentsCellConfigurator_tapTargets] = a4 & 1;
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_callReportingViewModel] = a5;
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_reportFlowPresenter] = a6;
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_contactsService] = a7;
  v24 = objc_opt_self();
  v25 = a2;
  v26 = a3;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = [v24 sharedInstance];
  v31 = [v30 contactStore];

  v32 = [objc_opt_self() settingsWithContactStore:v31 threeDTouchEnabled:1];
  *&v11[OBJC_IVAR___MPRecentsCellConfigurator_avatarViewControllerSettings] = v32;
  v33 = &v11[OBJC_IVAR___MPRecentsCellConfigurator_placeCallAction];
  *v33 = a8;
  v33[1] = a9;
  v34 = &v11[OBJC_IVAR___MPRecentsCellConfigurator_removeCallsAtIndexPaths];
  *v34 = a10;
  v34[1] = a11;
  swift_unknownObjectWeakAssign();
  v40.receiver = v11;
  v40.super_class = ObjectType;

  return objc_msgSendSuper2(&v40, "init");
}

uint64_t sub_1000B9634()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CHHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CHHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CHHandle and conformance NSObject)
  {
    type metadata accessor for NSMutableArray(255, &lazy cache variable for type metadata for CHHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CHHandle and conformance NSObject);
  }

  return result;
}

uint64_t sub_1000B9724()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return closure #1 in RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t lazy protocol witness table accessor for type RecentsCellConfigurator and conformance RecentsCellConfigurator(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecentsCellConfigurator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    result = Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_40:
      outlined consume of Set<CHHandle>.Iterator._Variant();
      return &_swiftEmptyArrayStorage;
    }

    while (1)
    {
      v36 = v16;
      if (a2)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v18 = v17;
          v19 = __CocoaDictionary.lookup(_:)();

          if (v19)
          {
            type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
            swift_dynamicCast();
            if (v37)
            {
              goto LABEL_36;
            }
          }
        }

        else if (*(a2 + 16))
        {
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
          if (v21)
          {
            if (*(*(a2 + 56) + 8 * v20))
            {
              goto LABEL_36;
            }
          }
        }
      }

      v22 = v17;
      v23 = [v22 type];
      if (v23 > 3)
      {
        v24 = 1;
      }

      else
      {
        v24 = qword_100209D38[v23];
      }

      v25 = [v22 value];
      if (!v25)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();
      }

      v26 = [objc_allocWithZone(TUHandle) initWithType:v24 value:v25];

      v27 = [a3 isoCountryCode];
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v17 = [*(a4 + OBJC_IVAR___MPContactsService_dataProvider) metadataCache];
      if (v30)
      {
        v31 = String._bridgeToObjectiveC()();
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_opt_self() contactForHandle:v26 isoCountryCode:v31 metadataCache:v17];

LABEL_36:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v15;
      v9 = v36;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        swift_dynamicCast();
        v17 = v37;
        v15 = v8;
        v16 = v9;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_40;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_40;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B9E2C@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsCellConfigurator.recentsReminderActionProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B9E58(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider) = *a1;
}

uint64_t sub_1000B9EA4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1000B9F00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecentsCellConfigurator.tableView.setter(v1);
}

uint64_t type metadata completion function for RecentsCellConfigurator()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BA018()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA074()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in RecentsCellConfigurator.reportSwipeAction(for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for Logger() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + 16);
  v13 = *(v4 + v11);
  v14 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in RecentsCellConfigurator.reportSwipeAction(for:)(a1, a2, a3, a4, v12, v4 + v10, v13, v14);
}

uint64_t key path getter for OrientationMonitorAccelerometer.onOrientationChange : OrientationMonitorAccelerometer@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 104))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UIDeviceOrientation) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for OrientationMonitorAccelerometer.onOrientationChange : OrientationMonitorAccelerometer(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIDeviceOrientation) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 112);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v3);
  return v7(v6, v5);
}

uint64_t OrientationMonitorAccelerometer.onOrientationChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v1);
  return v1;
}

uint64_t OrientationMonitorAccelerometer.onOrientationChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

id (*OrientationMonitorAccelerometer.orientationEventsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = [v3 orientationEventsEnabled];
  return OrientationMonitorAccelerometer.orientationEventsEnabled.modify;
}

id (*OrientationMonitorAccelerometer.passiveOrientationEvents.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = [v3 passiveOrientationEvents];
  return OrientationMonitorAccelerometer.passiveOrientationEvents.modify;
}

unint64_t OrientationMonitorAccelerometer.currentDeviceOrientation.getter()
{
  result = [*(v0 + 32) currentDeviceOrientation];
  if (result >= 7)
  {
    return 1;
  }

  return result;
}

uint64_t OrientationMonitorAccelerometer.__allocating_init(onOrientationChange:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  OrientationMonitorAccelerometer.init(onOrientationChange:)(a1, a2);
  return v4;
}

void *OrientationMonitorAccelerometer.init(onOrientationChange:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = 0;
  v5 = [objc_allocWithZone(BKSAccelerometer) init];
  v2[4] = v5;
  v2[5] = 0;
  swift_beginAccess();
  v6 = v2[2];
  v2[2] = a1;
  v2[3] = a2;
  v7 = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = type metadata accessor for AccelerometerDelegate();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate_onOrientationChange];
  *v11 = partial apply for closure #1 in OrientationMonitorAccelerometer.init(onOrientationChange:);
  v11[1] = v8;
  *&v10[OBJC_IVAR____TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate_accelerometer] = v7;
  v17.receiver = v10;
  v17.super_class = v9;
  v12 = v7;
  swift_retain_n();
  v13 = objc_msgSendSuper2(&v17, "init");
  v14 = v13;
  [v12 setDelegate:v14];

  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);

  v15 = v2[5];
  v2[5] = v13;

  return v2;
}

uint64_t sub_1000BA7BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in OrientationMonitorAccelerometer.init(onOrientationChange:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 104))(result);

    if (v3)
    {
      v3(a1);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    }
  }

  return result;
}

uint64_t OrientationMonitorAccelerometer.deinit()
{
  [*(v0 + 32) setOrientationEventsEnabled:0];
  [*(v0 + 32) setPassiveOrientationEvents:1];
  [*(v0 + 32) setDelegate:0];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));

  return v0;
}

uint64_t OrientationMonitorAccelerometer.__deallocating_deinit()
{
  [*(v0 + 32) setOrientationEventsEnabled:0];
  [*(v0 + 32) setPassiveOrientationEvents:1];
  [*(v0 + 32) setDelegate:0];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000BA9C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000BAA5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

id AccelerometerDelegate.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate_accelerometer] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccelerometerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized AccelerometerDelegate.accelerometer(_:didChange:)(unint64_t a1)
{
  if (a1 >= 7)
  {
    a1 = 1;
  }

  return (*(v1 + OBJC_IVAR____TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate_onOrientationChange))(a1);
}

uint64_t sub_1000BAD00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t Defaults.showCallProvisioning.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall)
  {
    v0 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD000000000000014, 0x80000001002405D0, 0, 0);
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 72) = 2;
    swift_willThrow();

    v0 = 0;
  }

  return v0 & 1;
}

id Defaults.subscribe(to:onChange:)(unsigned __int8 a1, uint64_t a2, id a3)
{
  if ((a1 & 0xFE) != 2)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Defaults.isInternalInstall & 1) == 0)
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v6 = a1;
    v7 = 0xD000000000000014;
    if (v6 > 4 || ((1 << v6) & 0x13) == 0)
    {
      v13 = [objc_allocWithZone(NSUserDefaults) init];
      if (v6 > 4)
      {
        v14 = "ShowLiveVoicemailOnboarding";
        v17 = "alForFavoriteKnownContact";
        v18 = 0xD000000000000027;
        if (v6 != 6)
        {
          v18 = 0xD000000000000016;
          v17 = "alForSaveUnknownContact";
        }

        if (v6 == 5)
        {
          v7 = 0xD000000000000029;
        }

        else
        {
          v7 = v18;
        }

        if (v6 != 5)
        {
          v14 = v17;
        }

        goto LABEL_32;
      }

      if (v6 != 2)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v11 = objc_allocWithZone(NSUserDefaults);

    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithSuiteName:v12];

    if (v13)
    {
      swift_bridgeObjectRelease_n();
      if (v6 <= 1)
      {
        v14 = "ardd.orientation";
        if (v6)
        {
          v7 = 0xD000000000000018;
        }

        else
        {
          v7 = 0xD000000000000015;
        }

        if (v6)
        {
          v14 = "CallScreeningDisabled";
        }

        goto LABEL_32;
      }

      if (v6 != 2)
      {
        if (v6 != 3)
        {
          v14 = "ShowCallProvisioningRequired";
          v7 = 0xD00000000000001BLL;
LABEL_32:
          v19 = v14 | 0x8000000000000000;
          v20 = type metadata accessor for Defaults.Observation();
          v21 = objc_allocWithZone(v20);
          v22 = &v21[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
          *v22 = v7;
          v22[1] = v19;
          *&v21[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = v13;
          v23 = &v21[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
          *v23 = a2;
          *(v23 + 1) = a3;
          v27.receiver = v21;
          v27.super_class = v20;

          v24 = v13;

          a3 = objc_msgSendSuper2(&v27, "init");
          v25 = String._bridgeToObjectiveC()();

          [v24 addObserver:a3 forKeyPath:v25 options:0 context:0];

          return a3;
        }

LABEL_31:
        v14 = "ShowCallProvisioning";
        v7 = 0xD00000000000001CLL;
        goto LABEL_32;
      }

LABEL_30:
      v14 = "LiveVoiceMailAccountUUID";
      goto LABEL_32;
    }

    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v16 = v8;
    *(v16 + 8) = v10;
    *(v16 + 72) = 0;
    swift_willThrow();
  }

  return a3;
}

id one-time initialization function for featureFlags()
{
  result = [objc_allocWithZone(TUFeatureFlags) init];
  featureFlags = result;
  return result;
}

{
  result = [objc_allocWithZone(TUFeatureFlags) init];
  featureFlags = result;
  return result;
}

uint64_t Defaults.Key.suiteName.getter(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 4u && ((1 << a1) & 0x13) != 0)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Defaults.Key.throwIfInUnsupportedEnvironment()()
{
  if ((v0 & 0xFE) == 2)
  {
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Defaults.isInternalInstall != 1)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v1 = 0u;
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
      *(v1 + 48) = 0u;
      *(v1 + 64) = 0;
      *(v1 + 72) = 2;
      swift_willThrow();
    }
  }
}

char *Defaults.isInternalInstall.unsafeMutableAddressor()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  return &static Defaults.isInternalInstall;
}

unint64_t Defaults.Key.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000027;
    if (a1 != 6)
    {
      v4 = 0xD000000000000016;
    }

    v5 = 0xD000000000000029;
    if (a1 == 4)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 == 2)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000018;
    if (!a1)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Defaults.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Defaults.Key.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Defaults.Key.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Defaults.Key()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Defaults.Key.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Defaults.Key()
{
  Defaults.Key.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Defaults.Key()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Defaults.Key.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Defaults.Key@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Defaults.Key.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Defaults.Key@<X0>(unint64_t *a1@<X8>)
{
  result = Defaults.Key.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id Defaults.Observation.__allocating_init(userDefault:key:onChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = a1;
  v13 = &v11[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
  *v13 = a4;
  *(v13 + 1) = a5;
  v18.receiver = v11;
  v18.super_class = v5;

  v14 = a1;

  v15 = objc_msgSendSuper2(&v18, "init");
  v16 = String._bridgeToObjectiveC()();

  [v14 addObserver:v15 forKeyPath:v16 options:0 context:{0, v18.receiver, v18.super_class}];

  return v15;
}

id Defaults.Observation.init(userDefault:key:onChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
  *v7 = a2;
  *(v7 + 1) = a3;
  *&v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = a1;
  v8 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
  *v8 = a4;
  *(v8 + 1) = a5;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for Defaults.Observation();

  v9 = a1;

  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = String._bridgeToObjectiveC()();

  [v9 addObserver:v10 forKeyPath:v11 options:0 context:{0, v13.receiver, v13.super_class}];

  return v10;
}

id Defaults.Observation.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault];
  v2 = v0;

  v3 = String._bridgeToObjectiveC()();

  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for Defaults.Observation();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t Defaults.liveVoiceMailAccountUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD000000000000018, 0x80000001002405B0, v6, v7);
  v9 = v8;

  if (v9)
  {
    UUID.init(uuidString:)();
  }

  else
  {
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v17 = objc_allocWithZone(NSUserDefaults);

    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 initWithSuiteName:v18];

    if (v19)
    {
      swift_bridgeObjectRelease_n();
      v33[0] = v11;
      v33[1] = v13;

      v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v21 = String._bridgeToObjectiveC()();
      [v19 setObject:v20 forKey:v21];
      swift_unknownObjectRelease();

      UUID.init(uuidString:)();
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      v22 = swift_allocError();
      *v23 = v14;
      *(v23 + 8) = v16;
      *(v23 + 72) = 0;
      swift_willThrow();

      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.mobilePhone);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v27 = 136315138;
        v33[2] = v22;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v29 = String.init<A>(reflecting:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v33);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Defaults error: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
      }

      return (*(v3 + 56))(a1, 1, 1, v2);
    }
  }
}

uint64_t Defaults.value<A>(of:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 & 0xFE) == 2)
  {
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Defaults.isInternalInstall & 1) == 0)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      *(v12 + 72) = 2;
      return swift_willThrow();
    }
  }

  v6 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v9 = 0;
      v11 = 0;
      if (v6 == 6)
      {
        v7 = 0xD000000000000027;
      }

      else
      {
        v7 = 0xD000000000000016;
      }

      if (v6 == 6)
      {
        v8 = "alForFavoriteKnownContact";
      }

      else
      {
        v8 = "alForSaveUnknownContact";
      }

      goto LABEL_31;
    }

    if (a1 != 4)
    {
      v9 = 0;
      v11 = 0;
      v8 = "ShowLiveVoicemailOnboarding";
      v7 = 0xD000000000000029;
      goto LABEL_31;
    }

    v8 = "ShowCallProvisioningRequired";
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 > 1u)
    {
      v9 = 0;
      v11 = 0;
      if (v6 == 2)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0xD00000000000001CLL;
      }

      if (v6 == 2)
      {
        v8 = "LiveVoiceMailAccountUUID";
      }

      else
      {
        v8 = "ShowCallProvisioning";
      }

      goto LABEL_31;
    }

    if (a1)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a1)
    {
      v8 = "CallScreeningDisabled";
    }

    else
    {
      v8 = "ardd.orientation";
    }
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
LABEL_31:
  Defaults.getValueFromUserDefaults<A>(key:suiteName:)(v7, v8 | 0x8000000000000000, v9, v11, a2, a3);
}

uint64_t Defaults.set<A>(_:for:suiteName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (!a3)
  {
    v12 = [objc_allocWithZone(NSUserDefaults) init];
    goto LABEL_5;
  }

  v10 = objc_allocWithZone(NSUserDefaults);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithSuiteName:v11];

  if (v12)
  {

LABEL_5:
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:v13 forKey:v14];
    swift_unknownObjectRelease();

    return (*(*(a4 - 8) + 16))(a5, a1, a4);
  }

  lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
  swift_allocError();
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 72) = 0;
  return swift_willThrow();
}

Swift::Bool __swiftcall VMGreetingChangeViewController.liveVoicemailEnabled()()
{
  if (one-time initialization token for featureFlags != -1)
  {
    swift_once();
  }

  return TUCallScreeningEnabled();
}

uint64_t Defaults.showCallProvisioningRequired.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall)
  {
    v0 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001CLL, 0x80000001002405F0, 0, 0);
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 72) = 2;
    swift_willThrow();

    v0 = 0;
  }

  return v0 & 1;
}

uint64_t Defaults.showLiveVoicemailOnboarding.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001BLL, 0x8000000100240610, v0, v1);

  return (v2 == 2) | (v2 & 1);
}

uint64_t key path getter for Defaults.showLiveVoicemailOnboarding : Defaults@<X0>(_BYTE *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001BLL, 0x8000000100240610, v2, v3);

  *a1 = (v4 == 2) | v4 & 1;
  return result;
}

void (*Defaults.showLiveVoicemailOnboarding.modify(_BYTE *a1))(char *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001BLL, 0x8000000100240610, v2, v3);

  *a1 = (v4 == 2) | v4 & 1;
  return Defaults.showLiveVoicemailOnboarding.modify;
}

uint64_t Defaults.getValueFromUserDefaults<A>(key:suiteName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v39 - v13;
  v14 = type metadata accessor for Optional();
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  if (a4)
  {
    v42 = &v39 - v15;
    v17 = a1;
    v18 = v11;
    v19 = a2;
    v20 = a5;
    v21 = v12;
    v22 = objc_allocWithZone(NSUserDefaults);

    v23 = a3;
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 initWithSuiteName:v24];
    v26 = a4;
    v27 = v25;

    if (!v27)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v38 = v23;
      *(v38 + 8) = v26;
      *(v38 + 72) = 0;
      return swift_willThrow();
    }

    v40 = v26;
    v41 = v23;

    v12 = v21;
    a5 = v20;
    a2 = v19;
    v11 = v18;
    a1 = v17;
    v16 = v42;
  }

  else
  {
    v40 = 0;
    v41 = a3;
    v27 = [objc_allocWithZone(NSUserDefaults) init];
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 objectForKey:v28];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v30 = v49;
  v48[0] = v46;
  v48[1] = v47;
  outlined init with copy of Any?(v48, &v46);
  if (!*(&v47 + 1))
  {

    outlined destroy of Any?(&v46);
    (*(*(a5 - 8) + 56))(v16, 1, 1, a5);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {

    v31 = v30;
    v32 = *(a5 - 8);
    v33 = *(v32 + 56);
    v33(v31, 0, 1, a5);
    (*(v32 + 32))(v16, v31, a5);
    v33(v16, 0, 1, a5);
LABEL_12:
    (*(v12 + 56))(v16, 0, 1, v11);
    outlined destroy of Any?(v48);
    return (*(v12 + 32))(v45, v16, v11);
  }

  (*(*(a5 - 8) + 56))(v30, 1, 1, a5);
  (*(v12 + 8))(v30, v11);
  (*(v12 + 56))(v16, 1, 1, v11);
  (*(v43 + 8))(v16, v44);
  lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
  swift_allocError();
  v36 = v35;
  *v35 = a1;
  v35[1] = a2;
  v37 = v40;
  v35[2] = v41;
  v35[3] = v37;
  outlined init with copy of Any?(v48, (v35 + 4));
  v36[8] = a5;
  *(v36 + 72) = 1;
  swift_willThrow();

  return outlined destroy of Any?(v48);
}

uint64_t Defaults.set<A>(_:for:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xFE) == 2)
  {
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Defaults.isInternalInstall & 1) == 0)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0;
      *(v14 + 72) = 2;
      return swift_willThrow();
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v11 = 0;
      v13 = 0;
      goto LABEL_15;
    }

    if (a2 != 4)
    {
      v11 = 0;
      v13 = 0;
      goto LABEL_15;
    }
  }

  else if (a2 > 1u)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
LABEL_15:
  Defaults.set<A>(_:for:suiteName:)(a1, v11, v13, a3, v9);
  if (!v3)
  {
    (*(v7 + 8))(v9, a3);
  }
}

void one-time initialization function for isInternalInstall()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isInternalInstall];
  }

  else
  {
    v2 = 0;
  }

  static Defaults.isInternalInstall = v2;
}

uint64_t Defaults.isInternalInstall.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static Defaults.isInternalInstall;
}

uint64_t static Defaults.isInternalInstall.setter(char a1)
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static Defaults.isInternalInstall = a1 & 1;
  return result;
}

uint64_t (*static Defaults.isInternalInstall.modify())()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return VoicemailSearchViewCell.callButtonTapHandler.modify;
}

unint64_t specialized Defaults.Key.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Defaults.Key.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void specialized Defaults.showLiveVoicemailOnboarding.setter(char a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(NSUserDefaults);

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    swift_bridgeObjectRelease_n();
    LOBYTE(v19) = a1 & 1;
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v9 = String._bridgeToObjectiveC()();
    [v7 setObject:v8 forKey:v9];
    swift_unknownObjectRelease();
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v10 = v2;
    *(v10 + 8) = v4;
    *(v10 + 72) = 0;
    swift_willThrow();

    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.mobilePhone);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error setting showLiveVoicemailOnboarding: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
    }
  }
}

uint64_t specialized Defaults.BOOL(for:)(unsigned __int8 a1)
{
  v1 = a1;
  if ((a1 & 0xFE) == 2)
  {
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Defaults.isInternalInstall & 1) == 0)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0;
      *(v9 + 72) = 2;
      swift_willThrow();
      return v1 & 1;
    }
  }

  if (v1 <= 3u)
  {
    if (v1 <= 1u)
    {
      if (v1)
      {
        v2 = "CallScreeningDisabled";
      }

      else
      {
        v2 = "ardd.orientation";
      }

      goto LABEL_12;
    }

LABEL_18:
    v8 = [objc_allocWithZone(NSUserDefaults) init];
    goto LABEL_19;
  }

  if (v1 != 4)
  {
    goto LABEL_18;
  }

  v2 = "ShowCallProvisioningRequired";
LABEL_12:
  v1 = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(NSUserDefaults);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8)
  {
    swift_bridgeObjectRelease_n();
LABEL_19:
    v11 = String._bridgeToObjectiveC()();

    v1 = [v8 BOOLForKey:v11];

    return v1 & 1;
  }

  lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
  swift_allocError();
  *v10 = v3;
  *(v10 + 8) = v5;
  *(v10 + 72) = 0;
  swift_willThrow();

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type Defaults.Key and conformance Defaults.Key()
{
  result = lazy protocol witness table cache variable for type Defaults.Key and conformance Defaults.Key;
  if (!lazy protocol witness table cache variable for type Defaults.Key and conformance Defaults.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Defaults.Key and conformance Defaults.Key);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Defaults.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}