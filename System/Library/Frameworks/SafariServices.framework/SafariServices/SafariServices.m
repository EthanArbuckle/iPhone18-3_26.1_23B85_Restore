uint64_t _SFDeviceRegionCodeIsChina()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 countryCode];

  v2 = [v1 isEqualToString:@"CN"];
  return v2;
}

uint64_t _SFShouldShowChineseFeatures()
{
  if (_SFDeviceRegionCodeIsChina())
  {
    return 1;
  }

  return _SFPreferredLanguagesIncludesAnyLanguage(&unk_1F5023EF0);
}

uint64_t _SFShouldShowRussianFeatures()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x1E695D978]];
  if ([v1 isEqualToString:@"RU"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"UA") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"TR") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"KZ") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"BY"))
  {
    v2 = 1;
  }

  else
  {
    v2 = _SFPreferredLanguagesIncludesAnyLanguage(&unk_1F5023F08);
  }

  return v2;
}

uint64_t _SFPreferredLanguagesIncludesAnyLanguage(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [MEMORY[0x1E695DF58] preferredLanguages];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v10 + 1) + 8 * i), v10}];
        v7 = [v6 languageCode];
        v8 = [v1 containsObject:v7];

        if (v8)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void sub_1D4648F0C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXContentBlockers()
{
  if (WBS_LOG_CHANNEL_PREFIXContentBlockers_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXContentBlockers_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXContentBlockers_log;
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

void *__Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *__Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void *__Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t restrictedValueForKey(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = v1;
  if ([v3 isEqualToString:*MEMORY[0x1E69B1F00]])
  {
    v4 = MEMORY[0x1E69ADF48];
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69B1EF8]])
  {
    v4 = MEMORY[0x1E69ADF50];
  }

  else
  {
    if (([v3 isEqualToString:*MEMORY[0x1E69B1F78]] & 1) == 0)
    {

      v5 = 0;
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    v4 = MEMORY[0x1E69ADF40];
  }

  v5 = *v4;

  if (!v5 || ![v2 isBoolSettingLockedDownByRestrictions:v5])
  {
    goto LABEL_11;
  }

  v6 = [v2 BOOLRestrictionForFeature:v5];
LABEL_12:

  return v6;
}

uint64_t _SFDeviceRegionCodeIsRussia()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 countryCode];

  v2 = [v1 isEqualToString:@"RU"];
  return v2;
}

id pathToRecompilationInformation(void)
{
  v0 = _SFContentBlockerStoreURL();
  v1 = [v0 URLByAppendingPathComponent:@"RecompiledBlockers.plist" isDirectory:0];

  return v1;
}

void sub_1D464B160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SFLocalizedTitleStringForShortcutItemType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilesafari.shortcut.openNewTab"] || objc_msgSend(v1, "isEqualToString:", @"com.apple.mobilesafari.shortcut.openNewPrivateTab") || objc_msgSend(v1, "isEqualToString:", @"com.apple.mobilesafari.shortcut.openBookmarksView") || objc_msgSend(v1, "isEqualToString:", @"com.apple.mobilesafari.shortcut.openReadingListView"))
  {
    v2 = _WBSLocalizedString();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id metadataClasses(void)
{
  v0 = metadataClasses(void)::classes;
  if (!metadataClasses(void)::classes)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v1 setWithObjects:{v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
    v10 = metadataClasses(void)::classes;
    metadataClasses(void)::classes = v9;

    v0 = metadataClasses(void)::classes;
  }

  return v0;
}

void sub_1D464BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D464C04C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXCalendarEventDetection()
{
  if (WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_log;
}

uint64_t sub_1D464D588()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D464D5C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D464D5F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D464D644()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D464D67C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D464D6B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D464D6FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id _SFUIActionForToggleShowLinkPreviews()
{
  v0 = [MEMORY[0x1E69853E0] elementActionWithType:11];
  if (objc_opt_respondsToSelector())
  {
    [v0 uiActionForElementInfo:0];
  }

  else
  {
    [MEMORY[0x1E69DC628] actionWithTitle:@"Toggle Link Preview (Staging)" image:0 identifier:0 handler:&__block_literal_global];
  }
  v1 = ;

  return v1;
}

void sub_1D464F474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4650548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4652780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WebContentAnalysisLibraryCore()
{
  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    WebContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return WebContentAnalysisLibraryCore_frameworkLibrary;
}

uint64_t __WebContentAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebContentAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWFUserSettingsClass_block_invoke(uint64_t a1)
{
  if (!WebContentAnalysisLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("WFUserSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFUserSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getWFUserSettingsClass_block_invoke_cold_1();
    return [(_SFTelephonyNavigationMitigationPolicy *)v4 policyAppliesToURL:v5, v6];
  }

  return result;
}

void *__getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppStoreComponentsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppStoreComponentsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E848F7A0;
    v7 = 0;
    AppStoreComponentsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AppStoreComponentsLibraryCore_frameworkLibrary;
    if (AppStoreComponentsLibraryCore_frameworkLibrary)
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

  v2 = AppStoreComponentsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "ASCLockupProductDetailsInteractionTypeSelected");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppStoreComponentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppStoreComponentsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D46575F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id getWebBookmarkClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWebBookmarkClass(void)::softClass;
  v7 = getWebBookmarkClass(void)::softClass;
  if (!getWebBookmarkClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL19getWebBookmarkClassv_block_invoke;
    v3[3] = &unk_1E848F7D0;
    v3[4] = &v4;
    ___ZL19getWebBookmarkClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D465775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL19getWebBookmarkClassv_block_invoke(uint64_t a1)
{
  WebBookmarksLibrary();
  result = objc_getClass("WebBookmark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWebBookmarkClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL19getWebBookmarkClassv_block_invoke_cold_1();
    return WebBookmarksLibrary();
  }

  return result;
}

uint64_t WebBookmarksLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WebBookmarksLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL23WebBookmarksLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E848F7F0;
    v5 = 0;
    WebBookmarksLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = WebBookmarksLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!WebBookmarksLibraryCore(char **)::frameworkLibrary)
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

uint64_t ___ZL23WebBookmarksLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  WebBookmarksLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL35getkWebBookmarksAddressKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksAddressKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksAddressKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL33getkWebBookmarksTitleKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksTitleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksTitleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkWebBookmarksPreviewTextKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksPreviewTextKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksPreviewTextKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkWebBookmarksAddToReadingListMessageNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksAddToReadingListMessageName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksAddToReadingListMessageNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL32getkWebBookmarksItemKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksItemKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksItemKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL32getSafariFetcherServerProxyClassv_block_invoke(uint64_t a1)
{
  WebBookmarksLibrary();
  result = objc_getClass("SafariFetcherServerProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSafariFetcherServerProxyClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL32getSafariFetcherServerProxyClassv_block_invoke_cold_1();
    return ___ZL33getWebBookmarksXPCConnectionClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL33getWebBookmarksXPCConnectionClassv_block_invoke(uint64_t a1)
{
  WebBookmarksLibrary();
  result = objc_getClass("WebBookmarksXPCConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWebBookmarksXPCConnectionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL33getWebBookmarksXPCConnectionClassv_block_invoke_cold_1();
    return ___ZL37getkWebBookmarksdServiceNameSymbolLocv_block_invoke(v3);
  }

  return result;
}

void *___ZL37getkWebBookmarksdServiceNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = WebBookmarksLibrary();
  result = dlsym(v2, "kWebBookmarksdServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWebBookmarksdServiceNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4658AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D465B260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v12 = v10;

  a9.super_class = _SFWebProcessPlugIn;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t mouseDidMoveOverElementCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = WKMutableDictionaryCreate();
  [@"linkURL" UTF8String];
  WKStringCreateWithUTF8CString();
  WKBundleHitTestResultCopyAbsoluteLinkURL();
  WKDictionarySetItem();
  Frame = WKBundleHitTestResultGetFrame();
  result = WKBundleHitTestResultGetTargetFrame();
  v8 = result;
  if (Frame)
  {
    [@"frame" UTF8String];
    WKStringCreateWithUTF8CString();
    WKBundleFrameCreateFrameHandle();
    result = WKDictionarySetItem();
  }

  if (v8)
  {
    [@"targetFrame" UTF8String];
    WKStringCreateWithUTF8CString();
    WKBundleFrameCreateFrameHandle();
    result = WKDictionarySetItem();
  }

  *a4 = v5;
  return result;
}

void willAddMessageWithDetailsToConsoleCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    v8 = WKStringCopyCFString();
  }

  else
  {
    v8 = &stru_1F4FE9E38;
  }

  Size = WKArrayGetSize();
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:Size];
  if (Size)
  {
    for (i = 0; i != Size; ++i)
    {
      WKArrayGetItemAtIndex();
      v12 = WKGetTypeID();
      if (v12 == WKStringGetTypeID())
      {
        v13 = WKStringCopyCFString();
        [v10 addObject:v13];
      }
    }
  }

  if ([v10 count])
  {
    v22 = [(__CFString *)v8 stringByAppendingString:@" "];

    v14 = [v10 componentsJoinedByString:@" "];
    v8 = [v22 stringByAppendingString:v14];
  }

  if (a6)
  {
    v15 = WKStringCopyCFString();
  }

  else
  {
    v15 = &stru_1F4FE9E38;
  }

  if ([(__CFString *)v15 length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%u:%u: %@\n", v15, a4, a5, v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v8];
  }
  v16 = ;
  v17 = [a7 webProcessPlugIn];
  v18 = v17[3];

  fprintf(v18, "%s\n", [v16 cStringUsingEncoding:4]);
}

BOOL isDiffieHellmanError(void *a1)
{
  v1 = a1;
  if ([v1 _web_errorIsInDomain:*MEMORY[0x1E696A978]] && objc_msgSend(v1, "code") == -1200)
  {
    v2 = [v1 userInfo];
    v3 = *MEMORY[0x1E695AD28];
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695AD28]];

    if (v4)
    {
      v5 = [v4 integerValue] == -9850;
    }

    else
    {
      v6 = [v1 userInfo];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      if (v7 && ([v7 userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v3), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
      {
        v5 = [v9 integerValue] == -9850;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id newAlertToListPossibleClientSideCertificatesWithContext(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"authenticationChallenge"];
  v3 = [v2 protectionSpace];

  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v3 host];
  v7 = [v6 _webkit_decodeHostName];
  v8 = [v4 stringWithFormat:v5, v7];

  v9 = [v3 _sf_identities];
  v10 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134217984;
    *&buf[4] = [v9 count];
    _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Displaying identities picker of count: %lu", buf, 0xCu);
  }

  if ([v9 count] < 2)
  {
    *buf = 0;
    v15 = 0;
    if (!SecIdentityCopyCertificate([v9 objectAtIndex:0], buf))
    {
      v15 = SecCertificateCopySubjectSummary(*buf);
      CFRelease(*buf);
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = _WBSLocalizedString();
    v18 = &stru_1F4FE9E38;
    if (v15)
    {
      v18 = v15;
    }

    v19 = [v16 stringWithFormat:v17, v18];

    v14 = [objc_alloc(MEMORY[0x1E69E30B8]) initWithType:4 title:v8 bodyText:v19 defaultAction:5 otherAction:4 tableAction:0];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E69E30B8]);
    v13 = _WBSLocalizedString();
    v14 = [v12 initWithType:4 title:v8 bodyText:v13 defaultAction:4 otherAction:0 tableAction:5];

    [v14 setHideAction:4];
  }

  [v14 setIdentities:v9];
  [v14 setContext:v1];

  return v14;
}

void proceedWithClientCertificateIdentity(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBSSecIdentityCopySSLClientAuthenticationChain();
  v5 = [v3 objectForKey:@"completionHandler"];
  if (v4 && [v4 count])
  {
    v6 = [v3 objectForKey:@"reason"];
    if (![v6 isEqualToString:@"reasonAuthenticationChallenge"] || (objc_msgSend(v3, "objectForKey:", @"authenticationChallenge"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (v5)
      {
        v5[2](v5, 3, 0);
      }

      goto LABEL_18;
    }

    v8 = v7;
    v9 = [v4 count];
    v10 = MEMORY[0x1E695AC48];
    if (v9 <= 1)
    {
      v12 = [MEMORY[0x1E695AC48] credentialWithIdentity:a1 certificates:0 persistence:1];
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = [v4 subarrayWithRange:{1, v9 - 1}];
      v12 = [v10 credentialWithIdentity:a1 certificates:v11 persistence:1];

      if (v5)
      {
LABEL_7:
        (v5)[2](v5, 0, v12);
LABEL_15:
        v15 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 134217984;
          v17 = v9;
          _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, "Answered challenge with credential with certificate chain count=%lu", &v16, 0xCu);
        }

LABEL_18:
        goto LABEL_19;
      }
    }

    v14 = [v8 sender];
    [v14 useCredential:v12 forAuthenticationChallenge:v8];

    goto LABEL_15;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    proceedWithClientCertificateIdentity_cold_1(v13);
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (v5)
  {
LABEL_10:
    v5[2](v5, 3, 0);
  }

LABEL_19:
}

id newAlertToHandleClientSideCertificateErrorCode(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"authenticationChallenge"];
  v5 = [v4 protectionSpace];
  v6 = [v5 _sf_identities];

  v7 = [v6 count];
  if (a1 == -1205 && v7 <= 1)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      newAlertToHandleClientSideCertificateErrorCode_cold_1(v8);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_20;
  }

  if (a1 == -1206 && v7 == 1)
  {
    v9 = [v3 objectForKeyedSubscript:@"useOnlyAvailableIdentityWithoutPrompting"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Found one matching identity with preference to skip prompting", &v19, 2u);
      }

      v12 = [v6 firstObject];
      proceedWithClientCertificateIdentity(v12, v3);

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_13:
    v13 = newAlertToListPossibleClientSideCertificatesWithContext(v3);
    goto LABEL_20;
  }

  if (v4)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138739971;
      v20 = v4;
      _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "No identities, but we have a challenge %{sensitive}@", &v19, 0xCu);
    }

    v15 = [v4 sender];
    [v15 continueWithoutCredentialForAuthenticationChallenge:v4];

    v13 = 0;
    v16 = 0;
  }

  else
  {
    v17 = _WBSLocalizedString();
    v16 = _WBSLocalizedString();
    v13 = [objc_alloc(MEMORY[0x1E69E30B8]) initWithType:5 title:v17 bodyText:v16 defaultAction:7 otherAction:0];
  }

LABEL_20:

  return v13;
}

uint64_t attemptRecovery(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:*MEMORY[0x1E6985468]];

  if ([v2 conformsToProtocol:&unk_1F50FE688])
  {
    v3 = [v2 attemptRecovery];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1D4660FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCertificateViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CertInfoLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CertInfoLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E848FB88;
    v6 = 0;
    CertInfoLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CertInfoLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CertificateViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCertificateViewControllerClass_block_invoke_cold_1();
  }

  getCertificateViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CertInfoLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CertInfoLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D4661BEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4661DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4662FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46632DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4663834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4665698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D466754C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46698E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1D466AC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D466CCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D466D2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D466DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id getCRCameraReaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRCameraReaderClass_softClass;
  v7 = getCRCameraReaderClass_softClass;
  if (!getCRCameraReaderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRCameraReaderClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getCRCameraReaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4671BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4672064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRCameraReaderClass_block_invoke(uint64_t a1)
{
  CoreRecognitionLibrary();
  result = objc_getClass("CRCameraReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRCameraReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCRCameraReaderClass_block_invoke_cold_1();
    return CoreRecognitionLibrary();
  }

  return result;
}

uint64_t CoreRecognitionLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreRecognitionLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRecognitionLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8490020;
    v5 = 0;
    CoreRecognitionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreRecognitionLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreRecognitionLibraryCore_frameworkLibrary)
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

uint64_t __CoreRecognitionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreRecognitionLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCROutputTypeCreditCardCardholderNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecognitionLibrary();
  result = dlsym(v2, "CROutputTypeCreditCardCardholderName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCROutputTypeCreditCardCardholderNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCROutputTypeCreditCardExpirationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecognitionLibrary();
  result = dlsym(v2, "CROutputTypeCreditCardExpirationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCROutputTypeCreditCardExpirationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCROutputTypeCreditCardNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecognitionLibrary();
  result = dlsym(v2, "CROutputTypeCreditCardNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCROutputTypeCreditCardNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SFOpenInNewTabTitle(uint64_t a1)
{
  [MEMORY[0x1E69B1C48] effectiveTabOrderWithPreferredTabOrder:a1];
  v1 = _WBSLocalizedString();

  return v1;
}

id localObjectLoader(void *a1)
{
  v1 = a1;
  v2 = [v1 _sf_localBookmark];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 _sf_localURL];
  }

  v5 = v4;

  return v5;
}

void objectLoader(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __objectLoader_block_invoke;
  v7[3] = &unk_1E84901E0;
  v8 = v3;
  v6 = v3;
  [v4 safari_loadObjectOfClasses:v5 completionHandler:v7];
}

void sub_1D4674188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(v34);
  objc_destroyWeak((v35 - 160));
  _Unwind_Resume(a1);
}

void sub_1D4675154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
    LinkPresentationLibrary();
  }
}

void LinkPresentationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __LinkPresentationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8490250;
    v3 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!LinkPresentationLibraryCore_frameworkLibrary)
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

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getLPFileMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPFileMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPFileMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getLPFileMetadataClass_block_invoke_cold_1();
    [(_SFExternalPasswordCredentialViewController *)v2 autoFillWithExternalCredential:v3, v4];
  }
}

void sub_1D4676950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4678B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _SFBrowserView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D4679BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id getTPDialPromptAlertClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTPDialPromptAlertClass_softClass;
  v7 = getTPDialPromptAlertClass_softClass;
  if (!getTPDialPromptAlertClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTPDialPromptAlertClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getTPDialPromptAlertClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D467AB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTPDialPromptAlertClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8490380;
    v6 = 0;
    TelephonyUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("TPDialPromptAlert");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTPDialPromptAlertClass_block_invoke_cold_1();
  }

  getTPDialPromptAlertClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D467C054(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D467C254(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D467D868(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D467DE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1D467E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D46802DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4680BF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1D4681B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL36getCSSearchableItemAttributeSetClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSpotlightLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL24CoreSpotlightLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8490778;
    v6 = 0;
    CoreSpotlightLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreSpotlightLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL36getCSSearchableItemAttributeSetClassv_block_invoke_cold_1();
  }

  getCSSearchableItemAttributeSetClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL24CoreSpotlightLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

id subtitleFont()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 monospacedDigitSystemFontOfSize:? weight:?];

  return v2;
}

id verificationCodeFont()
{
  v0 = MEMORY[0x1E69DB878];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v2 = [v0 _sf_highLegibilityAlternateFont:v1];

  return v2;
}

void sub_1D468452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id estimatedBarMetrics()
{
  v0 = estimatedBarMetrics_metrics;
  if (!estimatedBarMetrics_metrics)
  {
    v1 = objc_alloc_init(SFNavigationBarMetrics);
    v2 = estimatedBarMetrics_metrics;
    estimatedBarMetrics_metrics = v1;

    v0 = estimatedBarMetrics_metrics;
  }

  return v0;
}

void sub_1D4687038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id reverseAnimation(void *a1)
{
  v1 = a1;
  [v1 beginTime];
  v3 = v2;
  v4 = [v1 beginTimeMode];
  if (([v4 isEqualToString:*MEMORY[0x1E6979588]] & 1) != 0 || (v5 = -v3, objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69795B0])) && v3 != 0.0)
  {
    v5 = CACurrentMediaTime() - v3;
  }

  [v1 duration];
  v7 = v6;
  v8 = [v1 copy];
  [v8 speed];
  *&v10 = -v9;
  [v8 setSpeed:v10];
  [v8 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [v8 setBeginTime:v5 - v7];

  return v8;
}

void scaleView(void *a1, CGFloat a2)
{
  v3 = a1;
  CGAffineTransformMakeScale(&v4, a2, a2);
  [v3 setTransform:&v4];
}

void sub_1D468A3FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __initializeConstants_block_invoke()
{
  result = _SFOnePixel();
  kSeparatorHeight = v1;
  return result;
}

__n128 OUTLINED_FUNCTION_7()
{
  v0 = *&STACK[0x4A0];
  *&STACK[0x460] = *&STACK[0x490];
  *&STACK[0x470] = v0;
  result = *&STACK[0x4B0];
  *&STACK[0x480] = *&STACK[0x4B0];
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_32(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void OUTLINED_FUNCTION_35(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

double OUTLINED_FUNCTION_54()
{
  result = 0.0;
  *&STACK[0x480] = 0u;
  *&STACK[0x470] = 0u;
  *&STACK[0x460] = 0u;
  return result;
}

double OUTLINED_FUNCTION_62(void *a1)
{

  return [(SFToolbarContainer *)v2 widthRangeUsingNarrowMetrics:a1 compatibleWithTraitCollection:?];
}

void OUTLINED_FUNCTION_63(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_64()
{
  v4 = *(v0 + v2);
  v5 = *(v0 + v1);

  return [v4 addSubview:v5];
}

uint64_t OUTLINED_FUNCTION_65()
{
  v3 = *&v0[v1];

  return [v0 addSubview:v3];
}

id _SFRequestDesktopSiteActivitySourceJavaScriptString()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v1 = [v0 initWithBytesNoCopy:requestDesktopSiteUIActivitySource length:4112 encoding:4 freeWhenDone:0];

  return v1;
}

void sub_1D468F920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46919B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1DA6DDA80](v10, 0x10A1C40D746C084);

  _Unwind_Resume(a1);
}

void sub_1D46937D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1D4693AA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D4694CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void addURLsInFrameTreeToArray(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 URL];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v3 childFrames];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        addURLsInFrameTreeToArray(*(*(&v11 + 1) + 8 * v10++), v4);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

uint64_t frameIsDescendantOfFrame(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 childFrames];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (frameIsDescendantOfFrame(v3, *(*(&v11 + 1) + 8 * i)))
          {
            v7 = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v7;
}

void sub_1D4697CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getOBWelcomeControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8490F60;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("OBWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D469AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D469B9D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D469C058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D46A1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = _SFFormAutoFillController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D46A1DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_1D46A1EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1D46A25C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1D46A26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1D46A3558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 - 104));

  _Unwind_Resume(a1);
}

void sub_1D46A4788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1D46A5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, id a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&a40);

  objc_destroyWeak((v46 - 144));
  _Block_object_dispose((v46 - 136), 8);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__208(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D46A5C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1D46A6034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46A7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1D46A88FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

void sub_1D46A9C84(_Unwind_Exception *a1)
{
  v8 = v1;

  _Unwind_Resume(a1);
}

void sub_1D46AA154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1D46AA480(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, ...)
{
  va_start(va, a15);

  objc_destroyWeak(va);
  objc_destroyWeak((v19 - 88));

  _Unwind_Resume(a1);
}

void sub_1D46AAB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, id a52)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1D46AB468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46AB650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46AB7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46AB944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v20 + 48));

  _Unwind_Resume(a1);
}

void sub_1D46ABF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_1D46AEB7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D46B0930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46B0A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v17 + 56));

  _Unwind_Resume(a1);
}

id getOBWelcomeControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBWelcomeControllerClass_softClass_0;
  v7 = getOBWelcomeControllerClass_softClass_0;
  if (!getOBWelcomeControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOBWelcomeControllerClass_block_invoke_0;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getOBWelcomeControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D46B15D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBBoldTrayButtonClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBBoldTrayButtonClass_softClass;
  v7 = getOBBoldTrayButtonClass_softClass;
  if (!getOBBoldTrayButtonClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOBBoldTrayButtonClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getOBBoldTrayButtonClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D46B16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void enableTrackerProtection()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  [v0 setValue:&unk_1F5024138 forSetting:*MEMORY[0x1E69ADF30]];

  v1 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [v1 webui_applySafariCookieAcceptPolicy];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *MEMORY[0x1E69E30E0];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 0);
}

id createPromptCancelButtonWithCompletionHandler(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getOBTrayButtonClass_softClass;
  v20 = getOBTrayButtonClass_softClass;
  if (!getOBTrayButtonClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getOBTrayButtonClass_block_invoke;
    v16[3] = &unk_1E848F710;
    v16[4] = &v17;
    __getOBTrayButtonClass_block_invoke(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = objc_alloc_init(v2);
  v5 = _WBSLocalizedString();
  [v4 setTitle:v5 forState:0];

  v6 = MEMORY[0x1E69DC628];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __createPromptCancelButtonWithCompletionHandler_block_invoke;
  v14 = &unk_1E8490140;
  v15 = v1;
  v7 = v1;
  v8 = [v6 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:&v11];
  [v4 addAction:v8 forControlEvents:{0x2000, v11, v12, v13, v14}];

  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:v9 forState:0];

  return v4;
}

void __getOBWelcomeControllerClass_block_invoke_0(uint64_t a1)
{
  OnBoardingKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OBWelcomeController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBWelcomeControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBWelcomeControllerClass_block_invoke_cold_1();
    OnBoardingKitLibrary();
  }
}

void OnBoardingKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8491B10;
    v3 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
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

uint64_t __OnBoardingKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getOBBoldTrayButtonClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBoldTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBBoldTrayButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBBoldTrayButtonClass_block_invoke_cold_1();
    return __createPromptCancelButtonWithCompletionHandler_block_invoke(v3);
  }

  return result;
}

SFPrivacyReportTrackerDetailViewController *__getOBTrayButtonClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBTrayButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBTrayButtonClass_block_invoke_cold_1();
    return [(SFPrivacyReportTrackerDetailViewController *)v3 initWithTracker:v4, v5];
  }

  return result;
}

void sub_1D46B4068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void highlightMatchingRanges(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1 && [v10 length])
  {
    if (a4 == 1)
    {
      v12 = [MEMORY[0x1E69C8A10] searchPatternForWebsiteComparisonFromSearchPattern:v10];

      v10 = v12;
    }

    v13 = *MEMORY[0x1E69DB650];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 addAttribute:v13 value:v14 range:{0, objc_msgSend(v9, "length")}];

    v15 = objc_opt_class();
    v16 = [v9 string];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __highlightMatchingRanges_block_invoke;
    v17[3] = &unk_1E8491C78;
    v18 = v9;
    [v15 enumerateRangesMatchingPatternWithTokenizer:a1 string:v16 pattern:v10 matchingType:a4 withBlock:v17];
  }
}

void __highlightMatchingRanges_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v8 = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] labelColor];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 addAttributes:v7 range:{a2, a3}];
}

void sub_1D46B7048(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

SafariServices::WebProcessPlugInReaderJSController *SafariServices::WebProcessPlugInReaderJSController::WebProcessPlugInReaderJSController(SafariServices::WebProcessPlugInReaderJSController *this, WKWebProcessPlugInFrame *a2, _SFReaderWebProcessPlugInPageController *a3)
{
  v5 = a2;
  v6 = a3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_1F4FE8498;
  v7 = v5;
  *(this + 7) = v7;
  v8 = v6;
  *(this + 8) = v8;
  *(this + 9) = 0;
  v9 = *(this + 7);
  v10 = [MEMORY[0x1E6985398] normalWorld];
  v11 = [v9 jsContextForWorld:v10];

  SafariShared::ReaderJSController::evaluateSharedUINormalWorldScript(this, [v11 JSGlobalContextRef]);
  v12 = *(this + 7);
  v13 = SafariServices::WebProcessPlugInReaderJSController::isolatedWorld(this);
  v14 = [v12 jsContextForWorld:v13];

  v15 = [v14 JSGlobalContextRef];
  SafariShared::ReaderJSController::evaluateLocalizedStringsScript(this, v15);
  [MEMORY[0x1E69C9028] sharedUIScriptForContext:v15];
  JSScriptEvaluate();
  [_SFReaderCustomProtocols readerUserInterfaceScriptForContext:v15];
  JSScriptEvaluate();
  SafariShared::JSController::addScriptObjectToGlobalObject(this, v15);
  SafariShared::JSController::scriptObjectReady(this, v15);

  return this;
}

void sub_1D46B7CBC(_Unwind_Exception *a1)
{
  v6 = v5;

  SafariShared::ReaderJSController::~ReaderJSController(v1);
  _Unwind_Resume(a1);
}

id SafariServices::WebProcessPlugInReaderJSController::isolatedWorld(SafariServices::WebProcessPlugInReaderJSController *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v3 = [MEMORY[0x1E6985398] world];
    v4 = *(this + 9);
    *(this + 9) = v3;

    v2 = *(this + 9);
  }

  return v2;
}

void SafariShared::ReaderJSController::~ReaderJSController(SafariShared::ReaderJSController *this)
{
  *this = MEMORY[0x1E69C9728] + 16;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  SafariShared::JSController::~JSController(this);
}

void SafariServices::WebProcessPlugInReaderJSController::~WebProcessPlugInReaderJSController(id *this)
{
  *this = &unk_1F4FE8498;
  [this[9] clearWrappers];
  v2 = this[9];
  this[9] = 0;

  *this = (MEMORY[0x1E69C9728] + 16);
  v3 = this[6];
  this[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  SafariShared::JSController::~JSController(this);
}

{
  SafariServices::WebProcessPlugInReaderJSController::~WebProcessPlugInReaderJSController(this);

  JUMPOUT(0x1DA6DDA80);
}

id SafariServices::WebProcessPlugInReaderJSController::initialConfiguration(id *this)
{
  v1 = [this[8] originalPageController];
  v2 = [v1 initialReaderConfiguration];

  return v2;
}

void SafariServices::WebProcessPlugInReaderJSController::makeFontAvailableIfNecessary(SafariServices::WebProcessPlugInReaderJSController *this, NSString *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *MEMORY[0x1E6965768];
  v7[0] = *MEMORY[0x1E6965790];
  v7[1] = v3;
  v8[0] = v2;
  v8[1] = MEMORY[0x1E695E118];
  v7[2] = *MEMORY[0x1E6965770];
  v8[2] = MEMORY[0x1E695E118];
  v4 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3]);
  v6 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  CFRelease(v4);
  CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v5, 0, &__block_literal_global_21);
}

uint64_t SafariServices::WebProcessPlugInReaderJSController::originalArticleFinder(id *this)
{
  v1 = [this[8] originalPageController];
  v2 = [v1 originalArticleFinder];

  return v2;
}

id SafariServices::WebProcessPlugInReaderJSController::subframeByIFrameElementId(SafariServices::WebProcessPlugInReaderJSController *this, NSString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 5);
  v5 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(v4)];
  v6 = [MEMORY[0x1E696EB58] valueWithObject:v3 inContext:v5];
  v15 = [v6 JSValueRef];
  v8 = SafariShared::JSUtilities::globalJSObjectByName(v4, "document", v7);
  v9 = SafariShared::JSUtilities::callJSMethodWithArguments(v4, v8, "getElementById", &v15, 1);
  v10 = [MEMORY[0x1E696EB58] valueWithJSValueRef:v9 inContext:{v5, v15, v16}];
  v11 = [MEMORY[0x1E6985390] nodeHandleWithJSValue:v10 inContext:v5];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 htmlIFrameElementContentFrame];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void SafariServices::WebProcessPlugInReaderJSController::prepareNextPageFrame(id *this, NSString *a2)
{
  v4 = a2;
  v3 = SafariServices::WebProcessPlugInReaderJSController::subframeByIFrameElementId(this, v4);
  if (v3)
  {
    [this[8] isolatedWorldForNextPageDetection];
    [v3 jsContextForWorld:objc_claimAutoreleasedReturnValue()];
    [MEMORY[0x1E69C9028] articleFinderScriptForContext:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "JSGlobalContextRef")}];
    JSScriptEvaluate();
    operator new();
  }
}

void sub_1D46B83FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1DA6DDA80](v13, 0x10A1C406DF74740);

  _Unwind_Resume(a1);
}

uint64_t SafariServices::WebProcessPlugInReaderJSController::readerOperationMode(id *this)
{
  v1 = [this[8] originalPageController];
  if ([v1 isViewingReadingListArchive])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SafariServices::WebProcessPlugInReaderJSController::contentDidBecomeReady(id *this, NSString *a2)
{
  v4 = a2;
  v3 = [this[8] originalPageController];
  [v3 readerContentDidBecomeReadyWithArticleText:v4];
}

void SafariServices::WebProcessPlugInReaderJSController::requestOnDeviceSummary(id *this)
{
  v1 = [this[8] originalPageController];
  [v1 didRequestOnDeviceSummary];
}

void SafariServices::WebProcessPlugInReaderJSController::reportReaderEvent(id *this, uint64_t a2, NSDictionary *a3)
{
  v6 = a3;
  v5 = [this[8] originalPageController];
  [v5 reportReaderEvent:a2 dataToReport:v6];
}

id SafariServices::WebProcessPlugInReaderJSController::initialArticleScrollPositionAsDictionary(id *this)
{
  v1 = [this[8] originalPageController];
  v2 = [v1 initalArticleScrollPositionAsDictionary];
  [v1 setInitalArticleScrollPositionAsDictionary:0];

  return v2;
}

void SafariServices::WebProcessPlugInReaderJSController::replaceSimpleTweetsWithRichTweets(SafariServices::WebProcessPlugInReaderJSController *this, NSDictionary *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 7);
  v5 = [MEMORY[0x1E6985398] normalWorld];
  v6 = [v4 jsContextForWorld:v5];

  v7 = [v6 JSGlobalContextRef];
  v10[0] = SafariShared::JSUtilities::translateNSToJSValue(v7, v3, v8);
  GlobalObject = JSContextGetGlobalObject(v7);
  SafariShared::JSUtilities::callJSMethodWithArguments(v7, GlobalObject, "replaceSimpleTweetsWithRichTweets", v10, 1);
}

uint64_t SafariShared::JSUtilities::translateNSToJSValue(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, objc_object *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E696EB58];
  v6 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(this)];
  v7 = [v5 valueWithObject:v4 inContext:v6];
  v8 = [v7 JSValueRef];

  return v8;
}

void sub_1D46B883C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t SafariServices::WebProcessPlugInReaderJSController::cachedTopScrollOffset(id *this)
{
  v1 = [this[8] originalPageController];
  v2 = [v1 cachedReaderTopScrollOffset];
  [v1 setCachedReaderTopScrollOffset:0];

  return v2;
}

const OpaqueJSValue *SafariServices::WebProcessPlugInReaderJSController::contentInPrintingMailingFrame(SafariServices::WebProcessPlugInReaderJSController *this)
{
  v1 = *(this + 5);
  GlobalObject = JSContextGetGlobalObject(v1);
  v3 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, GlobalObject, "contentInPrintingMailingFrame", 0, 0);
  if (v3)
  {
    v4 = v3;
    if (JSValueIsString(v1, v3))
    {
      v3 = SafariShared::JSUtilities::translateJSValueToNS(v1, v4, v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id SafariServices::WebProcessPlugInReaderJSController::printingMailingFrame(SafariShared::JSUtilities **this)
{
  SafariShared::JSUtilities::callJSMethodWithArguments(this[5], this[3], "preparePrintingMailingFrame", 0, 0);

  return SafariServices::WebProcessPlugInReaderJSController::subframeByIFrameElementId(this, &cfstr_PrintingMailin.isa);
}

void sub_1D46BB3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getQLPreviewGetSupportedMIMETypesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __QuickLookLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8491E18;
    v7 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = QuickLookLibraryCore_frameworkLibrary;
    if (QuickLookLibraryCore_frameworkLibrary)
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

  v2 = QuickLookLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "QLPreviewGetSupportedMIMETypes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D46BD19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46C0190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46C1194(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 160), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void getAndProcessPendingPushMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __getAndProcessPendingPushMessage_block_invoke;
  v7[3] = &unk_1E84920B0;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  [v6 _getPendingPushMessage:v7];
}

void sub_1D46C2380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getAndProcessPendingPushMessage_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXWebPush();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 _webPushPartition];
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Fetched a pending push message for web clip %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAndProcessPendingPushMessage_block_invoke_470;
    v13[3] = &unk_1E8492088;
    v14 = v9;
    v15 = v3;
    v16 = *(a1 + 40);
    [v14 _processPushMessage:v15 completionHandler:v13];
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = v4;
      v12 = [v10 _webPushPartition];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Finished fetching push messages for web clip %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __getAndProcessPendingPushMessage_block_invoke_470(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = [v5 _webPushPartition];
    v8 = a1[5];
    v10 = 138543875;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2117;
    v15 = v8;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Processed push event for web clip %{public}@ with result: %d payload: %{sensitive}@", &v10, 0x1Cu);
  }

  return (*(a1[6] + 16))();
}

uint64_t previewContentForElementInfo(_WKActivatedElementInfo *a1)
{
  v1 = a1;
  if ([(_WKActivatedElementInfo *)v1 type]== 1)
  {
    v2 = +[_SFQRCodeDetectionController sharedController];
    v3 = [v2 actionForElement:v1];
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t shouldProvideActionsForQRCodes(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVKImageAnalyzerClass(void)::softClass;
  v7 = getVKImageAnalyzerClass(void)::softClass;
  if (!getVKImageAnalyzerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL23getVKImageAnalyzerClassv_block_invoke;
    v3[3] = &unk_1E848F7D0;
    v3[4] = &v4;
    ___ZL23getVKImageAnalyzerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 deviceSupportsImageAnalysis] ^ 1;
}

void sub_1D46C5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46C6544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _SFLinkPreviewHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D46C6C90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D46C8D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1D46C8FE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

Class ___ZL23getVKImageAnalyzerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL24VisionKitCoreLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84922D0;
    v6 = 0;
    VisionKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("VKImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL23getVKImageAnalyzerClassv_block_invoke_cold_1();
  }

  getVKImageAnalyzerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL24VisionKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZZ51___SFLinkPreviewHelper_commitPreviewViewController_ENK3__0clEP5NSURL_block_invoke(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((a2 + 1) >= 4)
  {
    if (a2 == 3)
    {
      v3 = a1[4];
      v7 = *MEMORY[0x1E69D43A0];
      v8[0] = MEMORY[0x1E695E118];
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      [v3 openExternallyWithWebBrowserState:v4 referrerURL:0 completionHandler:0];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZZ51___SFLinkPreviewHelper_commitPreviewViewController_ENK3__0clEP5NSURL_block_invoke_2;
    block[3] = &unk_1E848F9B0;
    v2 = a1[6];
    block[4] = a1[5];
    v6 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

id privacyReportTitleForCurrentStatus(int a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v24[0] = v2;
  v3 = *MEMORY[0x1E69DB648];
  v23[1] = *MEMORY[0x1E69DB648];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  v24[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v6 = [MEMORY[0x1E69C9808] sharedManager];
  if (![v6 isPrivacyProxyActive] || !objc_msgSend(v6, "isPrivacyProxyOnForEitherTier"))
  {
    goto LABEL_6;
  }

  if ([v6 isPrivacyProxyOnInICloudSettings])
  {
    [v6 isPrivacyProxyRestrictedToTrackersByUser];
  }

  v7 = objc_alloc(MEMORY[0x1E696AD40]);
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithString:v8 attributes:v5];

  if (!v9)
  {
LABEL_6:
    v10 = objc_alloc(MEMORY[0x1E696AD40]);
    v11 = _WBSLocalizedString();
    v9 = [v10 initWithString:v11 attributes:v5];
  }

  v12 = [v9 string];
  v13 = [v12 rangeOfString:@"{show-more-less-link}"];
  v15 = v14;

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = v3;
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v22 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v9 setAttributes:v17 range:{v13, v15}];
  }

  if (a1)
  {
    v18 = @"show-less://";
  }

  else
  {
    v18 = @"show-more://";
  }

  v19 = _WBSLocalizedString();
  [v9 safari_replaceOccurrenceOfString:@"{show-more-less-link}" withString:v19 link:v18];

  return v9;
}

void sub_1D46CA8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  os_unfair_lock_unlock(&hostWindowSceneIdentifierToServiceViewControllerLock);

  _Unwind_Resume(a1);
}

void sub_1D46CA9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(&hostWindowSceneIdentifierToServiceViewControllerLock);

  _Unwind_Resume(a1);
}

void sub_1D46CABF4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1D46CAD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SFBrowserServiceViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id safariViewControllerProcessPoolStorage(void)
{
  if (safariViewControllerProcessPoolStorage(void)::onceToken != -1)
  {
    safariViewControllerProcessPoolStorage();
  }

  v1 = safariViewControllerProcessPoolStorage(void)::dictionary;

  return v1;
}

id safariViewControllerDataStoreStorage(void)
{
  if (safariViewControllerDataStoreStorage(void)::onceToken != -1)
  {
    safariViewControllerDataStoreStorage();
  }

  v1 = safariViewControllerDataStoreStorage(void)::dictionary;

  return v1;
}

void sub_1D46CB2C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D46CB97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D46CC3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D46CC69C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D46CC914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D46CD65C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1D46CDE10(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1D46CE1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1D46CE280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D46CEE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46CF08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46CF218(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D46CF774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D46CFA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void ___ZL25webBrowsingServicesBundlev_block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AAE8];
  v1 = MEMORY[0x1E695DFF8];
  v2 = MEMORY[0x1DA6DD240]();
  v7[0] = v2;
  v7[1] = @"System/Library/LocationBundles/WebBrowsingServices.bundle";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v1 fileURLWithPathComponents:v3];
  v5 = [v0 bundleWithURL:v4];
  v6 = webBrowsingServicesBundle(void)::bundle;
  webBrowsingServicesBundle(void)::bundle = v5;
}

void updatePowerLogEventForAllHostApps(void)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if ([allHostAppBundleIDs count])
  {
    if (PLShouldLogRegisteredEvent())
    {
      v1 = @"bundleIDs";
      v0 = [allHostAppBundleIDs allObjects];
      v2[0] = v0;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
      PLLogRegisteredEvent();
    }
  }
}

void ___ZL38safariViewControllerProcessPoolStoragev_block_invoke()
{
  v0 = [[SFProcessDictionary alloc] initWithCacheCapacity:10];
  v1 = safariViewControllerProcessPoolStorage(void)::dictionary;
  safariViewControllerProcessPoolStorage(void)::dictionary = v0;
}

void ___ZL36safariViewControllerDataStoreStoragev_block_invoke()
{
  v0 = [[SFProcessDictionary alloc] initWithCacheCapacity:10];
  v1 = safariViewControllerDataStoreStorage(void)::dictionary;
  safariViewControllerDataStoreStorage(void)::dictionary = v0;
}

void ___ZL25secIdentitiesCacheStoragev_block_invoke()
{
  v0 = [[SFProcessDictionary alloc] initWithCacheCapacity:10];
  v1 = secIdentitiesCacheStorage(void)::dictionary;
  secIdentitiesCacheStorage(void)::dictionary = v0;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id SFBrowserContentControllerCanPerformActionWithSender(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 activeDocument];
  v5 = v4;
  if (sel_toggleContentBlockers_ == a2)
  {
    if ([v3 isShowingReader] & 1) != 0 || (objc_msgSend(v5, "webView"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "URL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "safari_isSafariWebExtensionURL"), v8, v7, (v9))
    {
      v6 = MEMORY[0x1E695E110];
      goto LABEL_21;
    }

    v14 = MEMORY[0x1E696AD98];
    v11 = [v3 perSitePreferencesVendor];
    v15 = [v11 contentBlockersPreferenceManager];
    v16 = [v14 numberWithBool:{objc_msgSend(v15, "hasEnabledContentBlockers")}];
    goto LABEL_19;
  }

  if (sel_fileTranslationRadar_ == a2)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [v4 translationContext];
    v12 = [v10 numberWithBool:{objc_msgSend(v11, "hasStartedTranslating")}];
  }

  else
  {
    if (sel_reportTranslationIssue_ != a2)
    {
      if (sel_toggleTranslation_ != a2)
      {
        v6 = 0;
        goto LABEL_21;
      }

      v11 = [v4 translationContext];
      v13 = MEMORY[0x1E696AD98];
      v15 = [v11 availableTargetLocaleIdentifiers];
      if ([v15 count])
      {
        v17 = 1;
      }

      else
      {
        v17 = [v11 hasStartedTranslating];
      }

      goto LABEL_18;
    }

    v11 = [v4 translationContext];
    v13 = MEMORY[0x1E696AD98];
    if (![v11 hasStartedTranslating])
    {
      v15 = [v11 availableTargetLocaleIdentifiers];
      v17 = [v15 count] != 0;
LABEL_18:
      v16 = [v13 numberWithInt:v17];
LABEL_19:
      v6 = v16;

      goto LABEL_20;
    }

    v12 = [v13 numberWithInt:1];
  }

  v6 = v12;
LABEL_20:

LABEL_21:

  return v6;
}

void SFBrowserContentControllerValidateCommand(void *a1, void *a2)
{
  v18 = a2;
  v3 = [a1 activeDocument];
  v4 = [v18 action];
  if (v4 == sel_toggleContentBlockers_)
  {
    if ([v3 wasLoadedWithContentBlockersEnabled])
    {
      v6 = _WBSLocalizedString();
      [v18 setTitle:v6];

      v7 = MEMORY[0x1E69DCAB8];
      v8 = @"shield.slash";
    }

    else
    {
      v9 = _WBSLocalizedString();
      [v18 setTitle:v9];

      v7 = MEMORY[0x1E69DCAB8];
      v8 = @"checkmark.shield";
    }

    v5 = [v7 systemImageNamed:v8];
    [v18 setImage:v5];
  }

  else
  {
    if (v4 != sel_toggleTranslation_)
    {
      goto LABEL_14;
    }

    v5 = [v3 translationContext];
    if ([v5 hasStartedTranslating] || (objc_msgSend(v5, "availableTargetLocaleIdentifiers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11 != 1))
    {
      v13 = _WBSLocalizedString();
      [v18 setTitle:v13];
    }

    else
    {
      v12 = [v5 availableTargetLocaleIdentifiers];
      v13 = [v12 firstObject];

      v14 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:v13];
      v15 = MEMORY[0x1E696AEC0];
      v16 = _WBSLocalizedString();
      v17 = [v15 stringWithFormat:v16, v14];
      [v18 setTitle:v17];
    }
  }

LABEL_14:
}

void SFBrowserContentControllerReportAutoFillIssue(void *a1)
{
  v1 = a1;
  objc_initWeak(&location, v1);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __SFBrowserContentControllerReportAutoFillIssue_block_invoke;
  v2[3] = &unk_1E84924A0;
  objc_copyWeak(&v3, &location);
  [v1 collectDiagnosticsForAutoFillWithCompletionHandler:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void sub_1D46D0D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __SFBrowserContentControllerReportAutoFillIssue_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activeDocument];
    v7 = [v6 activeWebView];
    v8 = [v7 window];
    v9 = [v8 windowScene];

    v10 = [_SFAutoFillInternalFeedbackCollectionViewController alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __SFBrowserContentControllerReportAutoFillIssue_block_invoke_2;
    v14[3] = &unk_1E8492478;
    v15 = v9;
    v11 = v9;
    v12 = [(_SFAutoFillInternalFeedbackCollectionViewController *)v10 initWithDiagnosticsData:v3 reportHandler:v14];
    v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v12];
    [v13 setModalPresentationStyle:1];
    [v5 presentModalViewController:v13 completion:0];
  }
}

id SFBrowserContentControllerOtherTabWithSound(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 activeDocument];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v1;
  v3 = [v1 tabsWithSound];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (v9 != v2)
        {
          if (v6)
          {
            if (([*(*(&v17 + 1) + 8 * i) isMuted] & 1) == 0 && objc_msgSend(v6, "isMuted") || (v10 = objc_msgSend(v9, "isMuted"), v10 == objc_msgSend(v6, "isMuted")) && (objc_msgSend(v9, "audioStartTimestamp"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "audioStartTimestamp"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v11, v13 == 1))
            {
              v14 = v9;

              v6 = v14;
            }
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void SFBrowserContentControllerFileTranslationRadar(void *a1)
{
  v1 = a1;
  v2 = [v1 activeDocument];
  v3 = [v2 translationContext];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SFBrowserContentControllerFileTranslationRadar_block_invoke;
  v5[3] = &unk_1E84924C8;
  v6 = v1;
  v4 = v1;
  [v3 generateDiagnosticDataForPurpose:1 completionHandler:v5];
}

void __SFBrowserContentControllerFileTranslationRadar_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 saveDiagnosticDataAsTemporaryFiles];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SFBrowserContentControllerFileTranslationRadar_block_invoke_2;
  v5[3] = &unk_1E848F548;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __SFBrowserContentControllerFileTranslationRadar_block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C8F60]);
  v3 = [MEMORY[0x1E69C8F68] safariIOS];
  v4 = [v2 initWithComponent:v3 title:@"Webpage Translation Issue: " descriptionTemplate:@"Translation debug info that includes the URL and all text from the webpage has been attached to this radar. Please describe the issue you're seeing in detail and the steps taken leading up to this issue."];

  [v4 setAttachmentPaths:*(a1 + 32)];
  v11[0] = @"1225093";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 setKeywords:v5];

  v6 = [*(a1 + 40) activeDocument];
  v7 = [v6 activeWebView];
  v8 = [v7 window];
  v9 = [v8 windowScene];

  v10 = [v4 continueInTapToRadarURL];
  [v9 openURL:v10 options:0 completionHandler:0];
}

void SFBrowserContentControllerRequestTranslationFeedback(void *a1)
{
  v1 = a1;
  v3 = [[_SFReportTranslationIssueCollectionViewController alloc] initWithBrowserContentController:v1];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
  [v2 setModalPresentationStyle:1];
  [v1 presentModalViewController:v2 completion:0];
}

void SFBrowserContentControllerToggleTranslation(void *a1)
{
  v7 = a1;
  v1 = [v7 activeDocument];
  v2 = [v1 translationContext];

  if ([v2 hasStartedTranslating])
  {
    [v2 reloadPageInOriginalLanguage];
  }

  else
  {
    v3 = [v2 availableTargetLocaleIdentifiers];
    v4 = [v3 count];

    if (v4 == 1)
    {
      v5 = [v2 availableTargetLocaleIdentifiers];
      v6 = [v5 firstObject];
      [v2 requestTranslatingWebpageToLocale:v6 completionHandler:0];
    }

    else
    {
      v5 = [_SFTranslationTargetLocaleAlertController translationAlertControllerWithTranslationContext:v2];
      v6 = [v7 viewControllerToPresentFrom];
      [v6 presentViewController:v5 animated:1 completion:0];
    }
  }
}

void sub_1D46D17BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D46D204C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46D35EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_destroyWeak((v11 - 112));

  _Unwind_Resume(a1);
}

void sub_1D46D4B7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D46D6590(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2113;
  *(a3 + 14) = a2;
  return result;
}

void sub_1D46DB390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = SFWebViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D46DE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1D46DE624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_1D46E493C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46E7378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46E7C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id detailStringForPasskey(void *a1)
{
  v1 = a1;
  v2 = [v1 customTitle];
  v3 = [v2 length];

  if (v3)
  {
    [v1 customTitle];
  }

  else
  {
    _WBSLocalizedString();
  }
  v4 = ;

  return v4;
}

void *__Block_byref_object_copy__196(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D46ED31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46ED860(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  objc_destroyWeak((v1 - 144));
  objc_destroyWeak((v1 - 128));
  _Unwind_Resume(a1);
}

void sub_1D46EEB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46F0224(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D46F0FF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1D46F16AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D46F30F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46F34B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46F51AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  _Block_object_dispose((v18 - 96), 8);
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D46F6B6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getCNContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8493580;
    v6 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ContactsUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("CNContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactPickerViewControllerClass_block_invoke_cold_1();
  }

  getCNContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D46FA9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D46FC8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4704E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4705170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D47054C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKEventStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EventKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8493730;
    v6 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (EventKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("EKEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEKEventStoreClass_block_invoke_cold_1();
  }

  getEKEventStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getEKICSPreviewControllerClass_block_invoke(uint64_t a1)
{
  EventKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKICSPreviewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKICSPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getEKICSPreviewControllerClass_block_invoke_cold_1();
    EventKitUILibrary();
  }
}

void EventKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!EventKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __EventKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8493748;
    v3 = 0;
    EventKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!EventKitUILibraryCore_frameworkLibrary)
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

uint64_t __EventKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EventKitUILibraryCore_frameworkLibrary = result;
  return result;
}

SFAccountTableViewCell *__getEKEventViewControllerClass_block_invoke(uint64_t a1)
{
  EventKitUILibrary();
  result = objc_getClass("EKEventViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getEKEventViewControllerClass_block_invoke_cold_1();
    return [(SFAccountTableViewCell *)v3 initWithStyle:v4 reuseIdentifier:v5, v6];
  }

  return result;
}

void __blankImage_block_invoke()
{
  [MEMORY[0x1E695A9A8] tableViewIconSize];
  UIGraphicsBeginImageContextWithOptions(v3, 0, 0.0);
  v0 = UIGraphicsGetImageFromCurrentImageContext();
  v1 = blankImage_image;
  blankImage_image = v0;

  UIGraphicsEndImageContext();
}

void sub_1D4707714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D47079AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D470815C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SFWebProcessPlugInPageExtensionController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D4708B30(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id fileURLForReaderURL(NSURL *a1)
{
  v1 = a1;
  if (([(NSURL *)v1 safari_hasScheme:@"safari-reader"]& 1) != 0)
  {
    v2 = [MEMORY[0x1E69C9028] readerHTMLSourceURL];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id fileURLForResourceURL(NSURL *a1)
{
  v1 = a1;
  if (([(NSURL *)v1 safari_hasScheme:@"safari-resource"]& 1) != 0)
  {
    v2 = [(NSURL *)v1 lastPathComponent];
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 URLForResource:v2 withExtension:&stru_1F4FE9E38];

    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Safari.Shared"];
      v4 = [v5 URLForResource:v2 withExtension:&stru_1F4FE9E38];

      if (!v4)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v4 = [v6 URLForResource:v2 withExtension:&stru_1F4FE9E38];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1D470ACFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1D47112B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1D4711CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

SafariServices::ReaderAvailabilityController *SafariServices::ReaderAvailabilityController::ReaderAvailabilityController(SafariServices::ReaderAvailabilityController *this, _SFWebProcessPlugInReaderEnabledPageController *a2)
{
  v3 = a2;
  SafariShared::ReaderAvailabilityController::ReaderAvailabilityController(this);
  *this = &unk_1F4FE8B90;
  *(this + 11) = 0;
  *(this + 12) = v3;
  *(this + 104) = 0;
  return this;
}

void SafariServices::ReaderAvailabilityController::createArticleFinderJSController(id *this)
{
  [this[12] mainFrame];
  objc_claimAutoreleasedReturnValue();
  SafariServices::ReaderAvailabilityController::isolatedWorld(this);
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_1D4714464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1DA6DDA80](v11, 0x10A1C406DF74740);

  _Unwind_Resume(a1);
}

id SafariServices::ReaderAvailabilityController::isolatedWorld(SafariServices::ReaderAvailabilityController *this)
{
  v2 = *(this + 11);
  if (!v2)
  {
    v3 = [MEMORY[0x1E6985398] world];
    v4 = *(this + 11);
    *(this + 11) = v3;

    [*(this + 11) makeAllShadowRootsOpen];
    [*(this + 11) disableOverrideBuiltinsBehavior];
    v2 = *(this + 11);
  }

  return v2;
}

uint64_t SafariServices::ReaderAvailabilityController::canInjectArticleFinder(id *this)
{
  v1 = [this[12] mainFrame];
  if ([v1 _hasCustomContentProvider])
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 URL];
    if ([v3 safari_isHTTPFamilyURL])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v3 isFileURL];
    }
  }

  return v2;
}

uint64_t SafariServices::ReaderAvailabilityController::targetFrameJSContext(id *this)
{
  v2 = [this[12] mainFrame];
  v3 = SafariServices::ReaderAvailabilityController::isolatedWorld(this);
  v4 = [v2 jsContextForWorld:v3];
  v5 = [v4 JSGlobalContextRef];

  return v5;
}

void sub_1D471461C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t SafariServices::ReaderAvailabilityController::availabilityWasDetermined(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 96) didDetermineReaderAvailability:a2];
  *(a1 + 104) = 1;
  return result;
}

uint64_t SafariServices::ReaderAvailabilityController::determineAvailabilityForDynamicCheck(SafariServices::ReaderAvailabilityController *this)
{
  result = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
  if (result)
  {
    SafariShared::ReaderAvailabilityController::originalArticleFinderJSController(this);

    JUMPOUT(0x1DA6DD940);
  }

  return result;
}

uint64_t SafariServices::ReaderAvailabilityController::clearAvailability(SafariServices::ReaderAvailabilityController *this)
{
  result = SafariShared::ReaderAvailabilityController::clearAvailability(this);
  *(this + 104) = 0;
  return result;
}

id SafariServices::ReaderAvailabilityController::collectReadingListItemInformation(SafariServices::ReaderAvailabilityController *this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v2 = SafariShared::ReaderAvailabilityController::originalArticleFinderJSController(this);
    v3 = SafariShared::ArticleFinderJSController::collectReadingListItemInformation(v2);
    v4 = (*(*this + 104))(this);
    if (JSValueIsObject(v4, v3))
    {
      SafariShared::JSUtilities::translateJSValueToNS(v4, v3, v5);
    }

    else
    {
      [MEMORY[0x1E695DF20] dictionary];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SafariServices::ReaderAvailabilityController::articleContent(SafariServices::ReaderAvailabilityController *this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v2 = SafariShared::ReaderAvailabilityController::originalArticleFinderJSController(this);
    v3 = SafariShared::ArticleFinderJSController::articleContent(v2);
    v4 = (*(*this + 104))(this);
    if (JSValueIsObject(v4, v3))
    {
      SafariShared::JSUtilities::translateJSValueToNS(v4, v3, v5);
    }

    else
    {
      [MEMORY[0x1E695DF20] dictionary];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void SafariServices::ReaderAvailabilityController::setConfigurationForTesting(SafariServices::ReaderAvailabilityController *this, NSDictionary *a2)
{
  v4 = a2;
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v3 = SafariShared::ReaderAvailabilityController::originalArticleFinderJSController(this);
    SafariShared::ArticleFinderJSController::setConfigurationForTesting(v3, v4);
  }
}

void SafariServices::ReaderAvailabilityController::~ReaderAvailabilityController(id *this)
{

  SafariShared::ReaderAvailabilityController::~ReaderAvailabilityController(this);
}

{

  SafariShared::ReaderAvailabilityController::~ReaderAvailabilityController(this);

  JUMPOUT(0x1DA6DDA80);
}

void sub_1D47150E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4719AC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D471A4B0(_Unwind_Exception *a1)
{
  MEMORY[0x1DA6DDA80](v3, 0x10A1C405B7E95FFLL);

  _Unwind_Resume(a1);
}

void sub_1D471A8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1D471A9A0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1D471D634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D471E8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D471EB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D471F470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D471FAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D471FEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4720F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  objc_destroyWeak((v24 - 104));
  _Unwind_Resume(a1);
}

void sub_1D472332C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4724E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4725F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4727898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4727B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1D4728478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 120));
  objc_destroyWeak((v32 - 112));
  _Unwind_Resume(a1);
}

void sub_1D47288E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4728D00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1D4729174(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1D4729500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4729C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFCertificatePresentationRequestClass_block_invoke(uint64_t a1)
{
  SecurityUILibraryCore();
  result = objc_getClass("SFCertificatePresentationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFCertificatePresentationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SecurityUILibraryCore()
{
  if (!SecurityUILibraryCore_frameworkLibrary)
  {
    SecurityUILibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __SecurityUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SecurityUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSFCertificateViewControllerClass_block_invoke(uint64_t a1)
{
  SecurityUILibraryCore();
  result = objc_getClass("SFCertificateViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFCertificateViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSearchUIClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SearchUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8494238;
    v6 = 0;
    SearchUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SearchUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("SearchUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIClass_block_invoke_cold_1();
  }

  getSearchUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _SFPreferredMailContentTypeForActivityContentType(uint64_t a1)
{
  if ((a1 - 3) < 2)
  {
    return 1;
  }

  if (a1 != 5 && a1)
  {
    return 3;
  }

  return 0;
}

void sub_1D472B3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLPLinkMetadataClass_block_invoke_0(uint64_t a1)
{
  LinkPresentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
    LinkPresentationLibrary_0();
  }
}

void LinkPresentationLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __LinkPresentationLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8494338;
    v3 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!LinkPresentationLibraryCore_frameworkLibrary_0)
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

uint64_t __LinkPresentationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

_SFReaderExtractor *__getLPFileMetadataClass_block_invoke_0(uint64_t a1)
{
  LinkPresentationLibrary_0();
  result = objc_getClass("LPFileMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPFileMetadataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getLPFileMetadataClass_block_invoke_cold_1();
    return [(_SFReaderExtractor *)v3 init];
  }

  return result;
}

void sub_1D472C244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D472C3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SFViewControllerViewEmbeddedByPreviewController(void *a1)
{
  result = a1;
  if (result)
  {
    v2 = result;
    while (1)
    {
      v3 = [v2 _existingPresentationControllerImmediate:0 effective:1];
      if ([v3 presentationStyle] == 20)
      {
        break;
      }

      v4 = [v2 parentViewController];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = [v2 presentingViewController];
      }

      v7 = v6;

      v2 = v7;
      if (!v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL SFViewControllerViewIsVisible(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = [v3 view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [v5 rootViewController];
    if (v6)
    {
      if (SFViewControllerViewEmbeddedByPreviewController(v3))
      {
        v7 = 1;
        if (a2)
        {
          *a2 = 1;
        }

        goto LABEL_31;
      }

      v8 = [v3 view];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          [v9 bounds];
          [v9 convertRect:v5 toView:?];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          [v5 bounds];
          v38.origin.x = v18;
          v38.origin.y = v19;
          v38.size.width = v20;
          v38.size.height = v21;
          v36.origin.x = v11;
          v36.origin.y = v13;
          v36.size.width = v15;
          v36.size.height = v17;
          v37 = CGRectIntersection(v36, v38);
          width = v37.size.width;
          height = v37.size.height;
          [v9 alpha];
          v25 = v24 < 0.05 || width < 1.0;
          v26 = v25 || height < 1.0;
          if (v26 || ([v9 isHidden] & 1) != 0)
          {
            break;
          }

          v27 = [v9 superview];

          v9 = v27;
          if (!v27)
          {
            goto LABEL_18;
          }
        }

        v7 = 0;
        goto LABEL_21;
      }

LABEL_18:
      v28 = [v3 traitCollection];
      v29 = [v28 userInterfaceIdiom];

      if (v29 == 6)
      {
        v9 = [v5 windowScene];
        v7 = v9 != 0;
LABEL_21:

LABEL_31:
        goto LABEL_32;
      }

      if (v3)
      {
        v30 = v3;
        while (1)
        {
          v7 = v30 == v6;
          if (v30 == v6)
          {
            break;
          }

          v31 = [v30 presentingViewController];
          v32 = v31;
          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = [v30 parentViewController];
          }

          v34 = v33;

          v3 = 0;
          v30 = v34;
          if (!v34)
          {
            goto LABEL_31;
          }
        }

        v3 = v30;
        goto LABEL_31;
      }
    }

    v7 = 0;
    goto LABEL_31;
  }

  v7 = 0;
LABEL_32:

  return v7;
}

void sub_1D473229C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t performViewWillAppearInLoadView()
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = WBSIsEqual();

  return v3;
}

void sub_1D47328C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t eligibleForSlideInPresentation()
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = WBSIsEqual();

  return v3;
}

void sub_1D47349F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1D4734EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4738144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isLiveCameraOnlyAction(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isLiveCameraOnlyAction];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1D4739DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBCSQRCodeParserClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BarcodeSupportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BarcodeSupportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84948D0;
    v6 = 0;
    BarcodeSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BarcodeSupportLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BCSQRCodeParser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSQRCodeParserClass_block_invoke_cold_1();
  }

  getBCSQRCodeParserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BarcodeSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BarcodeSupportLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4@<X0>(uint64_t a1@<X8>)
{
  v4 = *&v1[a1];
  v5 = *&v1[*(v2 + 3224)];

  return [v1 insertSubview:v4 belowSubview:v5];
}

void OUTLINED_FUNCTION_4_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void sub_1D473BD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D473BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMFMailComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass_softClass;
  v7 = getMFMailComposeViewControllerClass_softClass;
  if (!getMFMailComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMFMailComposeViewControllerClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getMFMailComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D473E0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMailComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MessageUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84949B0;
    v6 = 0;
    MessageUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MessageUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMFMailComposeViewControllerClass_block_invoke_cold_1();
  }

  getMFMailComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D47431D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4743624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _SFBrowserContentViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id getMFMailComposeViewControllerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass(void)::softClass;
  v7 = getMFMailComposeViewControllerClass(void)::softClass;
  if (!getMFMailComposeViewControllerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL35getMFMailComposeViewControllerClassv_block_invoke;
    v3[3] = &unk_1E848F7D0;
    v3[4] = &v4;
    ___ZL35getMFMailComposeViewControllerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D474419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4744FF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *a1)
{
  v1 = a1;
  v2 = mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *)::dataStore;
  if (!mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *)::dataStore)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6985430]);
    [v3 setSourceApplicationBundleIdentifier:@"com.apple.mobilesafari"];
    v4 = [(SFSafariViewControllerConfiguration *)v1 _networkAttributionApplicationBundleIdentifier];
    if (v4)
    {
      [v3 setSourceApplicationBundleIdentifier:v4];
    }

    v5 = [MEMORY[0x1E69853B8] safari_dataStoreWithConfiguration:v3];
    v6 = mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *)::dataStore;
    mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *)::dataStore = v5;

    v2 = mobileSafariDefaultDataStore(SFSafariViewControllerConfiguration *)::dataStore;
  }

  v7 = v2;

  return v2;
}

void sub_1D4745160(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id mobileSafariNonPersistentDataStore(SFSafariViewControllerConfiguration *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration];
  [v2 setSourceApplicationBundleIdentifier:@"com.apple.mobilesafari"];
  if ([(SFSafariViewControllerConfiguration *)v1 _isBeingUsedForCellularServiceBootstrap])
  {
    [v2 setSourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
  }

  v3 = [(SFSafariViewControllerConfiguration *)v1 _networkAttributionApplicationBundleIdentifier];
  if (v3)
  {
    [v2 setSourceApplicationBundleIdentifier:v3];
  }

  v4 = [MEMORY[0x1E69853B8] safari_dataStoreWithConfiguration:v2];

  return v4;
}

void sub_1D474537C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D47454F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D4745E60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D47493E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D474965C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1D4749D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D474A61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D474A7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D474A8CC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1D474C800(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D474C954(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1D474CA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D474D374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v17;
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D474D58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id getSLComposeViewControllerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLComposeViewControllerClass(void)::softClass;
  v7 = getSLComposeViewControllerClass(void)::softClass;
  if (!getSLComposeViewControllerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL31getSLComposeViewControllerClassv_block_invoke;
    v3[3] = &unk_1E848F7D0;
    v3[4] = &v4;
    ___ZL31getSLComposeViewControllerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D474D784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D474E228(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D474E2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1D474E894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D474F000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v18 + 48));

  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_1D474F3EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&_ZGVZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers);

  _Unwind_Resume(a1);
}

void sub_1D474F530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1D474FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D474FEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D475069C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D4751F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, id *location, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v40 - 112));

  _Unwind_Resume(a1);
}

void sub_1D4752320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v28 + 64));

  _Block_object_dispose(&a20, 8);
  _Block_object_dispose((v29 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__292(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getPKAddPassesViewControllerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKAddPassesViewControllerClass(void)::softClass;
  v7 = getPKAddPassesViewControllerClass(void)::softClass;
  if (!getPKAddPassesViewControllerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL33getPKAddPassesViewControllerClassv_block_invoke;
    v3[3] = &unk_1E848F7D0;
    v3[4] = &v4;
    ___ZL33getPKAddPassesViewControllerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4753C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4755534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1D475589C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1D4757DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v11;

  _Unwind_Resume(a1);
}

void sub_1D47580F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1D4758194(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D4758C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D4758E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1D4759738(_Unwind_Exception *a1)
{
  _Block_object_dispose((v7 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1D4759CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v17 - 80), 8);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D475CB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D475D21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1D475EC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1D475EE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1D475F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

Class ___ZL35getMFMailComposeViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MessageUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL20MessageUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8495258;
    v6 = 0;
    MessageUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MessageUILibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMFMailComposeViewControllerClass_block_invoke_cold_1();
  }

  getMFMailComposeViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20MessageUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  MessageUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL31getSLComposeViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SocialLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL17SocialLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8495270;
    v6 = 0;
    SocialLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SocialLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL31getSLComposeViewControllerClassv_block_invoke_cold_1();
  }

  getSLComposeViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL17SocialLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SocialLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL33getPKAddPassesViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PassKitUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL20PassKitUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8495288;
    v6 = 0;
    PassKitUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PassKitUILibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("PKAddPassesViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL33getPKAddPassesViewControllerClassv_block_invoke_cold_1();
  }

  getPKAddPassesViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20PassKitUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL14getPKPassClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPass");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL14getPKPassClassv_block_invoke_cold_1();
    PassKitCoreLibrary();
  }
}

void PassKitCoreLibrary(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = ___ZL22PassKitCoreLibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84952A0;
    v3 = 0;
    PassKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
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

uint64_t ___ZL22PassKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getPKPassesXPCContainerClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPassesXPCContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassesXPCContainerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL28getPKPassesXPCContainerClassv_block_invoke_cold_1();
    return ___ZL27getCLKWatchFaceLibraryClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL27getCLKWatchFaceLibraryClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ClockKitLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19ClockKitLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84952B8;
    v6 = 0;
    ClockKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClockKitLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("CLKWatchFaceLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL27getCLKWatchFaceLibraryClassv_block_invoke_cold_1();
  }

  getCLKWatchFaceLibraryClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19ClockKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ClockKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL19getFKSaveOrderClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FinanceKitUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL23FinanceKitUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84952D0;
    v6 = 0;
    FinanceKitUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FinanceKitUILibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("FKSaveOrder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL19getFKSaveOrderClassv_block_invoke_cold_1();
  }

  getFKSaveOrderClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23FinanceKitUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1D47634AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_SFStringFromRequestDesktopSiteSetting(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
    v4 = @"Unknown";
    if (v3 == 1)
    {
      v4 = @"Desktop";
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"Mobile";
    }
  }

  else
  {
    v5 = @"Unspecified";
  }

  return v5;
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_1D4764CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4765218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SFReaderEnabledWebViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAppStoreBanner()
{
  if (WBS_LOG_CHANNEL_PREFIXAppStoreBanner_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAppStoreBanner_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAppStoreBanner_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthenticationSession()
{
  if (WBS_LOG_CHANNEL_PREFIXAuthenticationSession_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthenticationSession_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthenticationSession_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBookmarkSync()
{
  if (WBS_LOG_CHANNEL_PREFIXBookmarkSync_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBookmarkSync_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBookmarkSync_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen()
{
  if (WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCertificates()
{
  if (WBS_LOG_CHANNEL_PREFIXCertificates_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCertificates_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCertificates_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXClientAuthentication()
{
  if (WBS_LOG_CHANNEL_PREFIXClientAuthentication_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXClientAuthentication_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXClientAuthentication_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXContinuity()
{
  if (WBS_LOG_CHANNEL_PREFIXContinuity_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXContinuity_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXContinuity_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDownloads()
{
  if (WBS_LOG_CHANNEL_PREFIXDownloads_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDownloads_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDownloads_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXEventAttribution()
{
  if (WBS_LOG_CHANNEL_PREFIXEventAttribution_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXEventAttribution_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXEventAttribution_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOther()
{
  if (WBS_LOG_CHANNEL_PREFIXOther_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOther_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOther_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswords()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswords_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswords_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswords_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordsIcons()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordsIcons_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordsIcons_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordsIcons_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordSharing()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordSharing_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordSharing_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordSharing_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPageLoading()
{
  if (WBS_LOG_CHANNEL_PREFIXPageLoading_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPageLoading_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPageLoading_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPencilInput()
{
  if (WBS_LOG_CHANNEL_PREFIXPencilInput_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPencilInput_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPencilInput_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPerSitePreferences()
{
  if (WBS_LOG_CHANNEL_PREFIXPerSitePreferences_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPerSitePreferences_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPerSitePreferences_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrewarming()
{
  if (WBS_LOG_CHANNEL_PREFIXPrewarming_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrewarming_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrewarming_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrinting()
{
  if (WBS_LOG_CHANNEL_PREFIXPrinting_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrinting_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrinting_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXProcessDictionary()
{
  if (WBS_LOG_CHANNEL_PREFIXProcessDictionary_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXProcessDictionary_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXProcessDictionary_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReaderExtraction()
{
  if (WBS_LOG_CHANNEL_PREFIXReaderExtraction_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReaderExtraction_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReaderExtraction_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReadingList()
{
  if (WBS_LOG_CHANNEL_PREFIXReadingList_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReadingList_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReadingList_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXRequestDesktopSite()
{
  if (WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSearchEngine()
{
  if (WBS_LOG_CHANNEL_PREFIXSearchEngine_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSearchEngine_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSearchEngine_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSVCPrivacy()
{
  if (WBS_LOG_CHANNEL_PREFIXSVCPrivacy_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSVCPrivacy_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSVCPrivacy_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSVCDeletion()
{
  if (WBS_LOG_CHANNEL_PREFIXSVCDeletion_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSVCDeletion_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSVCDeletion_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUniversalLinks()
{
  if (WBS_LOG_CHANNEL_PREFIXUniversalLinks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUniversalLinks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUniversalLinks_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserInteraction()
{
  if (WBS_LOG_CHANNEL_PREFIXUserInteraction_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserInteraction_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserInteraction_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserInterface()
{
  if (WBS_LOG_CHANNEL_PREFIXUserInterface_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserInterface_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserInterface_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserTrackingDetection()
{
  if (WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserMediaCapture()
{
  if (WBS_LOG_CHANNEL_PREFIXUserMediaCapture_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserMediaCapture_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserMediaCapture_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXViewService()
{
  if (WBS_LOG_CHANNEL_PREFIXViewService_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXViewService_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXViewService_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebApp()
{
  if (WBS_LOG_CHANNEL_PREFIXWebApp_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebApp_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebApp_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension()
{
  if (WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTranslation()
{
  if (WBS_LOG_CHANNEL_PREFIXTranslation_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTranslation_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTranslation_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension()
{
  if (WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXWebExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebPush()
{
  if (WBS_LOG_CHANNEL_PREFIXWebPush_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebPush_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebPush_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXManagedExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXManagedExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXManagedExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXManagedExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXESim()
{
  if (WBS_LOG_CHANNEL_PREFIXESim_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXESim_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXESim_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBrowsingAssistant()
{
  if (WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log;
}

void __blankImage_block_invoke_0()
{
  [MEMORY[0x1E695A9A8] tableViewIconSize];
  UIGraphicsBeginImageContextWithOptions(v3, 0, 0.0);
  v0 = UIGraphicsGetImageFromCurrentImageContext();
  v1 = blankImage_image_0;
  blankImage_image_0 = v0;

  UIGraphicsEndImageContext();
}

void sub_1D476A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getASDInstallAppsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getASDInstallAppsClass_softClass;
  v7 = getASDInstallAppsClass_softClass;
  if (!getASDInstallAppsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASDInstallAppsClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getASDInstallAppsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D476A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getASDAppQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getASDAppQueryClass_softClass;
  v7 = getASDAppQueryClass_softClass;
  if (!getASDAppQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASDAppQueryClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getASDAppQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D476A954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D476ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D476B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D476B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D476B8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAMSUIEngagementTaskClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSUIEngagementTaskClass_softClass;
  v7 = getAMSUIEngagementTaskClass_softClass;
  if (!getAMSUIEngagementTaskClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAMSUIEngagementTaskClass_block_invoke;
    v3[3] = &unk_1E848F710;
    v3[4] = &v4;
    __getAMSUIEngagementTaskClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D476BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getASDNotificationCenterClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ASDNotificationCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getASDNotificationCenterClass_block_invoke_cold_1();
    AppStoreDaemonLibrary();
  }
}

void AppStoreDaemonLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84955B8;
    v3 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
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

uint64_t __AppStoreDaemonLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getASDInstallAppsClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDInstallApps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDInstallAppsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDInstallAppsClass_block_invoke_cold_1();
    return __getASDSystemAppMetadataClass_block_invoke(v3);
  }

  return result;
}

Class __getASDSystemAppMetadataClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDSystemAppMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDSystemAppMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDSystemAppMetadataClass_block_invoke_cold_1();
    return __getASDAppQueryClass_block_invoke(v3);
  }

  return result;
}

Class __getASDAppQueryClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDAppQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDAppQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDAppQueryClass_block_invoke_cold_1();
    return __getAMSDeviceClass_block_invoke(v3);
  }

  return result;
}

void __getAMSDeviceClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSDeviceClass_block_invoke_cold_1();
    AppleMediaServicesLibrary();
  }
}

void AppleMediaServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84955D0;
    v3 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
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

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccountsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84955E8;
    v6 = 0;
    AccountsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccountsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACAccountStoreClass_block_invoke_cold_1();
  }

  getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccountsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccountsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getASDPurchaseClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDPurchase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDPurchaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDPurchaseClass_block_invoke_cold_1();
    return __getASDPurchaseManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getASDPurchaseManagerClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDPurchaseManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDPurchaseManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDPurchaseManagerClass_block_invoke_cold_1();
    return __getAMSUIAuthenticateTaskClass_block_invoke(v3);
  }

  return result;
}

void __getAMSUIAuthenticateTaskClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSUIAuthenticateTask");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIAuthenticateTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSUIAuthenticateTaskClass_block_invoke_cold_1();
    AppleMediaServicesUILibrary();
  }
}

void AppleMediaServicesUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8495600;
    v3 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
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

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSSystemAlertDialogTaskClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSSystemAlertDialogTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSSystemAlertDialogTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSSystemAlertDialogTaskClass_block_invoke_cold_1();
    return __getAMSUIEngagementTaskClass_block_invoke(v3);
  }

  return result;
}

_SFAddToHomeScreenActivity *__getAMSUIEngagementTaskClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  result = objc_getClass("AMSUIEngagementTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIEngagementTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSUIEngagementTaskClass_block_invoke_cold_1();
    return [(_SFAddToHomeScreenActivity *)v3 initWithWebView:v4, v5];
  }

  return result;
}

void sub_1D47780CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBEKeyEntryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BrowserEngineKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BrowserEngineKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8495968;
    v6 = 0;
    BrowserEngineKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BrowserEngineKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BEKeyEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBEKeyEntryClass_block_invoke_cold_1();
  }

  getBEKeyEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BrowserEngineKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BrowserEngineKitLibraryCore_frameworkLibrary = result;
  return result;
}

id redTextColorForDarkBackground(int a1)
{
  v2 = [MEMORY[0x1E69DC888] systemRedColor];
  if (a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v3];
  v5 = [v2 resolvedColorWithTraitCollection:v4];

  return v5;
}

id greenTextColorForDarkBackground(char a1)
{
  if (a1)
  {
    v1 = 0.501960784;
    v2 = 0.780392157;
    v3 = 0.509803922;
  }

  else
  {
    v1 = 0.262745098;
    v2 = 0.749019608;
    v3 = 0.345098039;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v1 green:v2 blue:v3 alpha:1.0];

  return v4;
}

BOOL colorIsSimilarToColor(void *a1, void *a2)
{
  v3 = a2;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if ([a1 getHue:&v9 saturation:&v8 brightness:&v7 alpha:0] && objc_msgSend(v3, "getHue:saturation:brightness:alpha:", &v10, 0, 0, 0))
  {
    v4 = 0;
    if (v8 >= 0.1 && v7 >= 0.2)
    {
      v5 = vabdd_f64(v9, v10);
      v4 = fmin(v5, 1.0 - v5) < 0.15;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id textColorForDarkBackground(char a1)
{
  if (a1)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v1 = ;

  return v1;
}

id annotationTextColorForDarkBackground(char a1)
{
  if (a1)
  {
    v1 = 0.6;
    v2 = 1.0;
  }

  else
  {
    v1 = 0.4;
    v2 = 0.0;
  }

  v3 = [MEMORY[0x1E69DC888] colorWithWhite:v2 alpha:v1];

  return v3;
}

void dialRequestNotificationHandler(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 pendingRequests];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 successNotificationName];
        v12 = [v11 isEqualToString:a3];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 failureNotificationName];
          v14 = [v13 isEqualToString:a3];

          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        v15 = [v10 completionHandler];
        v15[2](v15, v12);

        [v4 removeObserverForRequest:v10];
        goto LABEL_12;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void sub_1D477FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D477FEC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4783158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1D478323C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1D4783FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D47846F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t categoryForURL(void *a1)
{
  v1 = a1;
  if ([v1 hasTelephonyScheme] & 1) != 0 || (objc_msgSend(v1, "isFaceTimeURL") & 1) != 0 || (objc_msgSend(v1, "isFaceTimeAudioURL") & 1) != 0 || (objc_msgSend(v1, "isFaceTimeMultiwayURL"))
  {
    v2 = 1;
  }

  else if ([v1 safari_hasScheme:@"itms-apps"])
  {
    v2 = 2;
  }

  else if ([v1 safari_isAppleOneURL])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __navigationResultQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SafariServices._SFNavigationResult", v2);
  v1 = navigationResultQueue_navigationResultQueue;
  navigationResultQueue_navigationResultQueue = v0;
}

void __deviceSupportedBiometryType_block_invoke()
{
  v0 = [MEMORY[0x1E698F388] availableDevices];
  v3 = [v0 firstObject];

  v1 = v3;
  if (!v3)
  {
    v2 = 0;
    goto LABEL_5;
  }

  v2 = [v3 type];
  v1 = v3;
  if ((v2 - 1) <= 1)
  {
LABEL_5:
    deviceSupportedBiometryType_deviceSupportedBiometryType = v2;
  }
}

uint64_t AppStoreComponentsLibraryCore()
{
  if (!AppStoreComponentsLibraryCore_frameworkLibrary_0)
  {
    AppStoreComponentsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return AppStoreComponentsLibraryCore_frameworkLibrary_0;
}

uint64_t getASCLockupContextWebBrowserSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getASCLockupContextWebBrowserSymbolLoc_ptr;
  v6 = getASCLockupContextWebBrowserSymbolLoc_ptr;
  if (!getASCLockupContextWebBrowserSymbolLoc_ptr)
  {
    v1 = AppStoreComponentsLibrary();
    v4[3] = dlsym(v1, "ASCLockupContextWebBrowser");
    getASCLockupContextWebBrowserSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1D478B1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppStoreComponentsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppStoreComponentsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getASCLockupContextWebBrowserSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCLockupContextWebBrowser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCLockupContextWebBrowserSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppStoreComponentsLibrary()
{
  v0 = AppStoreComponentsLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getASCCollectionIDWebBrowsersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreComponentsLibrary();
  result = dlsym(v2, "ASCCollectionIDWebBrowsers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASCCollectionIDWebBrowsersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D478D210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D478E0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getDMGetUserDataDispositionSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __DataMigrationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8496078;
    v7 = 0;
    DataMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = DataMigrationLibraryCore_frameworkLibrary;
    if (DataMigrationLibraryCore_frameworkLibrary)
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

  v2 = DataMigrationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DMGetUserDataDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMGetUserDataDispositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataMigrationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getOBWelcomeControllerClass_block_invoke_1(uint64_t a1)
{
  OnBoardingKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OBWelcomeController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBWelcomeControllerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBWelcomeControllerClass_block_invoke_cold_1();
    OnBoardingKitLibrary_0();
  }
}

void OnBoardingKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __OnBoardingKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8496090;
    v3 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary_1)
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

uint64_t __OnBoardingKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getOBBoldTrayButtonClass_block_invoke_0(uint64_t a1)
{
  OnBoardingKitLibrary_0();
  result = objc_getClass("OBBoldTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBBoldTrayButtonClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBBoldTrayButtonClass_block_invoke_cold_1_0();
    return [WBSAnalyticsLogger(_SFAnalyticsLogger) _sf_didBeginDownloadWithMIMEType:v3 uti:? downloadType:? promptType:? browserPersona:?];
  }

  return result;
}

SafariServices::ArticleFinderJSController *SafariServices::ArticleFinderJSController::ArticleFinderJSController(SafariServices::ArticleFinderJSController *this, WKWebProcessPlugInFrame *a2, WKWebProcessPlugInScriptWorld *a3)
{
  v5 = a2;
  v6 = a3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 6) = v5;
  *this = &unk_1F4FE9970;
  *(this + 7) = v6;
  return this;
}

uint64_t SafariServices::ArticleFinderJSController::nodeAtPoint(id *this, double a2, double a3)
{
  v4 = [this[6] hitTest:{a2, a3}];
  v5 = [v4 nodeHandle];
  if (v5)
  {
    v6 = [this[6] jsNodeForNodeHandle:v5 inWorld:this[7]];
    v7 = [v6 JSValueRef];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void SafariServices::ArticleFinderJSController::~ArticleFinderJSController(id *this)
{

  SafariShared::JSController::~JSController(this);
}

{

  SafariShared::JSController::~JSController(this);

  JUMPOUT(0x1DA6DDA80);
}

Class __getSBSHomeScreenServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84963F0;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SBSHomeScreenService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSHomeScreenServiceClass_block_invoke_cold_1();
  }

  getSBSHomeScreenServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D4791EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4792B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4792FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D47937F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

id headerIconForUserInterfaceStyle(unint64_t a1)
{
  v2 = headerIconForUserInterfaceStyle_iconsForStyle;
  if (!headerIconForUserInterfaceStyle_iconsForStyle)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = headerIconForUserInterfaceStyle_iconsForStyle;
    headerIconForUserInterfaceStyle_iconsForStyle = v3;

    v2 = headerIconForUserInterfaceStyle_iconsForStyle;
  }

  if (a1 <= 1)
  {
    a1 = 1;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"QRImageHeader"];
    v8 = [v7 imageAsset];
    v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:a1];
    v10 = [v8 imageWithTraitCollection:v9];

    v6 = [v10 _applicationIconImageForFormat:5 precomposed:1];

    v11 = headerIconForUserInterfaceStyle_iconsForStyle;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    [v11 setObject:v6 forKeyedSubscript:v12];
  }

  v13 = v6;

  return v13;
}

void sub_1D4795BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *typeIdentifierForDownloadFromResponse(void *a1)
{
  v1 = *MEMORY[0x1E6963718];
  v2 = a1;
  v3 = [v2 MIMEType];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v1, v3, 0);

  v5 = [v2 suggestedFilename];

  v6 = [v5 pathExtension];

  v7 = [(__CFString *)v6 length];
  v8 = PreferredIdentifierForTag;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v11 = v8;
    if ([(__CFString *)v8 isEqualToString:*MEMORY[0x1E6963870]])
    {
      v11 = *MEMORY[0x1E69638B0];
    }

    v12 = *MEMORY[0x1E6963710];
    v13 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v6, v11);
    v14 = v13;
    if (v13 && !UTTypeIsDynamic(v13))
    {
      v10 = v14;
    }

    else
    {
      v15 = *MEMORY[0x1E6963798];
      v16 = UTTypeCreatePreferredIdentifierForTag(v12, v6, *MEMORY[0x1E6963798]);
      if (!-[__CFString isEqualToString:](v9, "isEqualToString:", *MEMORY[0x1E69638F8]) || (v17 = UTTypeConformsTo(v16, *MEMORY[0x1E69636E0]), v18 = v16, !v17) && (v19 = UTTypeConformsTo(v16, [*MEMORY[0x1E69831A0] identifier]), v18 = v16, !v19) && (v20 = UTTypeConformsTo(v16, @"com.apple.watchface"), v18 = v16, !v20))
      {
        IsDynamic = UTTypeIsDynamic(v9);
        v18 = v9;
        if (IsDynamic)
        {
          if (UTTypeIsDynamic(v16))
          {
            v18 = v15;
          }

          else
          {
            v18 = v16;
          }
        }
      }

      v10 = v18;
    }
  }

  return v10;
}

uint64_t _SFTypeIsExtractableArchive(void *a1)
{
  v9[8] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69637E0];
  v9[0] = @"org.gnu.gnu-tar-archive";
  v9[1] = v1;
  v2 = *MEMORY[0x1E6963768];
  v9[2] = @"org.gnu.gnu-zip-tar-archive";
  v9[3] = v2;
  v9[4] = @"public.cpio-archive";
  v9[5] = @"public.tar-archive";
  v3 = *MEMORY[0x1E69638F8];
  v9[6] = @"public.tar-bzip2-archive";
  v9[7] = v3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a1;
  v6 = [v4 arrayWithObjects:v9 count:8];
  v7 = [v6 containsObject:v5];

  return v7;
}

uint64_t _SFDownloadingFileTypeFromUTIAndMIMEType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (UTTypeConformsTo(v3, @"com.apple.watchface"))
    {
      v5 = 6;
      goto LABEL_19;
    }

    if (UTTypeConformsTo(v3, *MEMORY[0x1E69636D8]) || UTTypeConformsTo(v3, *MEMORY[0x1E69636E0]) || UTTypeConformsTo(v3, [*MEMORY[0x1E69831A0] identifier]))
    {
      v5 = 3;
      goto LABEL_19;
    }

    if (UTTypeConformsTo(v3, @"com.apple.finance.order"))
    {
      v5 = 7;
      goto LABEL_19;
    }

    if (UTTypeConformsTo(v3, @"com.apple.ical.ics"))
    {
      v5 = 4;
      goto LABEL_19;
    }

    if (UTTypeConformsTo(v3, @"public.vcard"))
    {
      v5 = 5;
      goto LABEL_19;
    }

    if (!v4)
    {
      v4 = UTTypeCopyPreferredTagWithClass(v3, *MEMORY[0x1E6963718]);
    }
  }

  if ([(__CFString *)v4 safari_isConfigProfileMIMEType])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

LABEL_19:

  return v5;
}

void sub_1D479A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D479A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_1D479C830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D479F240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D479F858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D47A0EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D47A11C4()
{
  v0 = sub_1D47BF240();
  __swift_allocate_value_buffer(v0, qword_1EC7DFA70);
  __swift_project_value_buffer(v0, qword_1EC7DFA70);
  return sub_1D47BF230();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static SFSafariSettings.openExportBrowsingDataSettings()()
{
  v0[2] = sub_1D47BF340();
  v0[3] = sub_1D47BF330();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D47A1384;

  return sub_1D47A3170();
}

uint64_t sub_1D47A1384()
{
  *(*v1 + 40) = v0;

  v3 = sub_1D47BF320();
  if (v0)
  {
    v4 = sub_1D47A1544;
  }

  else
  {
    v4 = sub_1D47A14E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D47A14E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D47A1544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D47A1714(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1D47BF340();
  v1[4] = sub_1D47BF330();
  v3 = sub_1D47BF320();

  return MEMORY[0x1EEE6DFA0](sub_1D47A17B0, v3, v2);
}

uint64_t sub_1D47A17B0()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_1D47BF330();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D47A185C;

  return sub_1D47A3170();
}

uint64_t sub_1D47A185C()
{
  *(*v1 + 64) = v0;

  v3 = sub_1D47BF320();
  if (v0)
  {
    v4 = sub_1D47A1A3C;
  }

  else
  {
    v4 = sub_1D47A19B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D47A19B8()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2, 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D47A1A3C()
{
  v1 = v0[5];

  v2 = v0[8];
  if (v1)
  {
    v3 = v0[5];
    v4 = sub_1D47BF210();

    (v3)[2](v3, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D47A1AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE78);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

SFSafariSettings __swiftcall SFSafariSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1D47A1C70()
{
  sub_1D47BF340();
  *(v0 + 16) = sub_1D47BF330();
  v2 = sub_1D47BF320();

  return MEMORY[0x1EEE6DFA0](sub_1D47A1D04, v2, v1);
}

uint64_t sub_1D47A1D04()
{

  v1 = qword_1EC7DEDE0;
  qword_1EC7DEDE0 = 0;

  v2 = qword_1EC7DEDE8;
  qword_1EC7DEDE8 = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D47A1D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  MEMORY[0x1EEE9AC00]();
  v10 = v24 - v9;
  sub_1D47A3C6C(a3, v24 - v9);
  v11 = sub_1D47BF360();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D47A3CDC(v10);
  }

  else
  {
    sub_1D47BF350();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D47BF320();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D47BF290() + 32;
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

      sub_1D47A3CDC(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D47A3CDC(a3);
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

id sub_1D47A2190()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D47A21C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D47A4334;

  return v6();
}

uint64_t sub_1D47A22B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D47A2398;

  return v7();
}

uint64_t sub_1D47A2398()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D47A248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1D47A3C6C(a3, v22 - v9);
  v11 = sub_1D47BF360();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D47A3CDC(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D47BF350();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1D47BF320();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1D47BF290() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1D47A3CDC(a3);

    return v20;
  }

LABEL_8:
  sub_1D47A3CDC(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1D47A2748(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D47A4338;

  return v6(a1);
}

uint64_t sub_1D47A2840(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D47A2938;

  return v6(a1);
}

uint64_t sub_1D47A2938()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D47A2A30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D47A2AFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D47A41F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D47A2AFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D47A2C08(a5, a6);
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
    result = sub_1D47BF4D0();
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

uint64_t sub_1D47A2C08(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D47A2C54(a1, a2);
  sub_1D47A2D84(&unk_1F4FE9A50);
  return v3;
}

uint64_t sub_1D47A2C54(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D47A2E70(v5, 0);
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

  result = sub_1D47BF4D0();
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
        v10 = sub_1D47BF2B0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D47A2E70(v10, 0);
        result = sub_1D47BF4B0();
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

uint64_t sub_1D47A2D84(uint64_t result)
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

  result = sub_1D47A2EE4(result, v11, 1, v3);
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

void *sub_1D47A2E70(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D47A2EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1D47A2FD8()
{
  if (!qword_1EC7DEDE0)
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69E2108]) initClientForMachService_];
    v1 = qword_1EC7DEDE0;
    qword_1EC7DEDE0 = v0;

    v2 = [objc_allocWithZone(type metadata accessor for SFSafariSettingsWebBookmarksConnectionDelegate()) init];
    v3 = qword_1EC7DEDE8;
    qword_1EC7DEDE8 = v2;

    v4 = qword_1EC7DEDE0;
    if (qword_1EC7DEDE0)
    {
      v5 = qword_1EC7DEDE8;

      [v4 setDelegate_];
    }
  }
}

id sub_1D47A308C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D47BF260();
  if (*(v2 + 16))
  {
    sub_1D47A7A58(0xD00000000000001FLL, 0x80000001D47EDB90);
    v4 = v3;

    if (v4)
    {
      return [objc_opt_self() isInternalInstall];
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D47A3170()
{
  sub_1D47BF340();
  v0[19] = sub_1D47BF330();
  v2 = sub_1D47BF320();
  v0[20] = v2;
  v0[21] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D47A3204, v2, v1);
}

uint64_t sub_1D47A3204()
{
  sub_1D47A2FD8();
  v1 = qword_1EC7DEDE0;
  v0[22] = qword_1EC7DEDE0;
  if (v1)
  {
    v2 = *MEMORY[0x1E69E2128];
    v3 = v1;
    v4 = [v3 messageWithName_];
    v0[23] = v4;
    if (sub_1D47A308C())
    {
      xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E2148], 1);
    }

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D47A3408;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE70);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D47A1AF0;
    v0[13] = &block_descriptor;
    v0[14] = v5;
    [v3 sendMessage:v4 withReplyHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"SFErrorDomain" code:4 userInfo:0];
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D47A3408()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_1D47A3898;
  }

  else
  {
    v5 = sub_1D47A3538;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D47A3538()
{

  v1 = v0[18];
  if (xpc_dictionary_get_BOOL(v1, *MEMORY[0x1E69E2138]))
  {
    if (qword_1EC7DED70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D47BF240();
    __swift_project_value_buffer(v2, qword_1EC7DFA70);
    v3 = sub_1D47BF220();
    v4 = sub_1D47BF3C0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D4644000, v3, v4, "Error opening the Safari Export Browsing Data Settings: missing the default browser entitlement.", v5, 2u);
      MEMORY[0x1DA6DE530](v5, -1, -1);
    }

    v6 = v0[22];

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"SFErrorDomain" code:5 userInfo:0];
    goto LABEL_19;
  }

  if (xpc_dictionary_get_BOOL(v1, *MEMORY[0x1E69E2140]))
  {
    if (qword_1EC7DED70 != -1)
    {
      swift_once();
    }

    v7 = sub_1D47BF240();
    __swift_project_value_buffer(v7, qword_1EC7DFA70);
    v8 = sub_1D47BF220();
    v9 = sub_1D47BF3C0();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_18;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Error opening the Safari Export Browsing Data Settings: the calling process is not a foreground application.";
LABEL_17:
    _os_log_impl(&dword_1D4644000, v8, v9, v11, v10, 2u);
    MEMORY[0x1DA6DE530](v10, -1, -1);
LABEL_18:
    v6 = v0[22];

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"SFErrorDomain" code:4 userInfo:0];
LABEL_19:
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v13 = v0[1];
    goto LABEL_20;
  }

  if (xpc_dictionary_get_BOOL(v1, *MEMORY[0x1E69E2130]))
  {
    if (qword_1EC7DED70 != -1)
    {
      swift_once();
    }

    v12 = sub_1D47BF240();
    __swift_project_value_buffer(v12, qword_1EC7DFA70);
    v8 = sub_1D47BF220();
    v9 = sub_1D47BF3C0();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_18;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Error opening the Safari Export Browsing Data Settings: unknown error.";
    goto LABEL_17;
  }

  v15 = v0[22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v13 = v0[1];
LABEL_20:

  return v13();
}

uint64_t sub_1D47A3898()
{
  v20 = v0;
  v1 = *(v0 + 192);

  swift_willThrow();
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE78);
  sub_1D47A42A4(0, &qword_1EC7DEE80);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 144);
    if (qword_1EC7DED70 != -1)
    {
      swift_once();
    }

    v4 = sub_1D47BF240();
    __swift_project_value_buffer(v4, qword_1EC7DFA70);
    v5 = v3;
    v6 = sub_1D47BF220();
    v7 = sub_1D47BF3C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_1D47BF280();
      v13 = v12;

      v14 = sub_1D47A2A30(v11, v13, &v19);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1D4644000, v6, v7, "Error communicating with webbookmarksd: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1DA6DE530](v9, -1, -1);
      MEMORY[0x1DA6DE530](v8, -1, -1);
    }

    v15 = *(v0 + 176);
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"SFErrorDomain" code:4 userInfo:0];
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v0 + 176);
    swift_unknownObjectRelease();
  }

  v17 = *(v0 + 8);

  return v17();
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

uint64_t sub_1D47A3BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D47A2398;

  return sub_1D47A1C70();
}

uint64_t sub_1D47A3C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D47A3CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D47A3D44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D47A4334;

  return sub_1D47A2840(a1, v4);
}

uint64_t sub_1D47A3DFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D47A2398;

  return sub_1D47A2840(a1, v4);
}

uint64_t sub_1D47A3EB4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D47A4334;

  return sub_1D47A1714(v2);
}

uint64_t sub_1D47A3F60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D47A4334;

  return sub_1D47A21C8(v2, v3, v4);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D47A4060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D47A4334;

  return sub_1D47A22B0(a1, v4, v5, v6);
}

uint64_t sub_1D47A412C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D47A4334;

  return sub_1D47A2748(a1, v4);
}

uint64_t sub_1D47A41F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1D47A42A4(uint64_t a1, unint64_t *a2)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1D47A433C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D47BF500();

    if (v4)
    {
      sub_1D47A42A4(0, &qword_1EC7DF020);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1D47A7AD0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

SFBarButtonGroupContainerConfiguration __swiftcall SFBarButtonGroupContainerConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.preferredTraitCollection = v4;
  result.theme = v3;
  result.super.isa = v1;
  result.hidesBackground = v2;
  return result;
}

void sub_1D47A4714(void *a1)
{
  v2 = v1;
  v37 = OBJC_IVAR___SFBarButtonGroupContainer_configuration;
  v3 = [*&v1[OBJC_IVAR___SFBarButtonGroupContainer_configuration] theme];
  [v1 setTheme_];

  v4 = [v1 containerStackView];
  v5 = [v4 arrangedSubviews];

  v6 = sub_1D47A42A4(0, &qword_1EC7DF078);
  v7 = sub_1D47BF2F0();

  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D47BF4F0())
  {
    v9 = 0;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = (v7 & 0xC000000000000001);
    v39 = v7;
    while (1)
    {
      if (v41)
      {
        v10 = MEMORY[0x1DA6DC970](v9, v7);
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 subviews];
      v14 = sub_1D47BF2F0();

      if (v14 >> 62)
      {
        if (!sub_1D47BF4F0())
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6DC970](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = [v16 layer];

      v18 = [v2 configuration];
      v19 = [v18 hidesBackground];

      v20 = 0.0;
      if ((v19 & 1) == 0)
      {
        v21 = i;
        v22 = v6;
        v23 = [objc_opt_self() defaultMetrics];
        v24 = v2;
        v25 = [v2 configuration];
        v26 = [v25 preferredTraitCollection];

        v2 = v24;
        if (!v26)
        {
          v26 = [v24 traitCollection];
        }

        [v23 scaledValueForValue:v26 compatibleWithTraitCollection:44.0];
        v28 = v27;

        v20 = fmax(v28, 44.0) * 0.5;
        v6 = v22;
        i = v21;
        v7 = v39;
      }

      [v17 setCornerRadius_];

LABEL_5:
      ++v9;
      if (v12 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:
  v29 = v2;

  v30 = [a1 preferredTraitCollection];
  if (v30)
  {
    v31 = v30;
    v32 = [*&v29[v37] preferredTraitCollection];
    if (v32)
    {
      v42 = v32;
      v33 = [v31 preferredContentSizeCategory];
      v34 = [v42 preferredContentSizeCategory];
      v35 = WBSIsEqual();

      if ((v35 & 1) == 0)
      {
        sub_1D47A4C50();
      }

      v36 = v42;
    }

    else
    {
      v36 = v31;
    }
  }
}

double sub_1D47A4B78()
{
  v1 = [objc_opt_self() defaultMetrics];
  v2 = [v0 configuration];
  v3 = [v2 preferredTraitCollection];

  if (!v3)
  {
    v3 = [v0 traitCollection];
  }

  [v1 scaledValueForValue:v3 compatibleWithTraitCollection:44.0];
  v5 = v4;

  return fmax(v5, 44.0);
}

uint64_t sub_1D47A4C50()
{
  v2 = [v0 containerStackView];
  v3 = [v2 arrangedSubviews];

  sub_1D47A42A4(0, &qword_1EC7DF078);
  v4 = sub_1D47BF2F0();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D47BF4F0())
  {
    v1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6DC970](v1, v4);
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v4 + 8 * v1 + 32);
      }

      v7 = v6;
      v8 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v1;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = sub_1D47A58B0();
  if ((v9 & 0x8000000000000000) == 0)
  {
    for (j = v9; j; --j)
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v17 = [v16 layer];
      v18 = [objc_opt_self() defaultMetrics];
      v19 = [v0 configuration];
      v20 = [v19 preferredTraitCollection];

      if (!v20)
      {
        v20 = [v0 traitCollection];
      }

      [v18 scaledValueForValue:v20 compatibleWithTraitCollection:44.0];
      v12 = v11;

      [v17 setCornerRadius_];
      v13 = [v0 configuration];
      v14 = [v13 hidesBackground];

      [v16 safari:v14 ^ 1 setFlexibleGlassBackgroundEnabled:?];
      v1 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
      [v1 insertSubview:v16 atIndex:0];
      [v16 setAutoresizingMask_];
      v15 = [v0 containerStackView];
      [v15 addArrangedSubview_];
    }

    v21 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
    swift_beginAccess();
    v22 = *&v0[v21];
    v23 = *(v22 + 16);

    if (!v23)
    {
    }

    v24 = 0;
    v25 = (v22 + 40);
    while (v24 < *(v22 + 16))
    {
      v1 = *(v25 - 1);
      v26 = *v25;
      v27 = [v0 containerStackView];
      v28 = [v27 arrangedSubviews];

      v29 = sub_1D47BF2F0();
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1DA6DC970](v1, v29);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v1 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v30 = *(v29 + 8 * v1 + 32);
      }

      v1 = v30;

      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = v31;
      ++v24;
      v33 = sub_1D47A6640(v26);
      [v32 addArrangedSubview_];

      v25 += 2;
      if (v23 == v24)
      {
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:

  result = sub_1D47BF520();
  __break(1u);
  return result;
}