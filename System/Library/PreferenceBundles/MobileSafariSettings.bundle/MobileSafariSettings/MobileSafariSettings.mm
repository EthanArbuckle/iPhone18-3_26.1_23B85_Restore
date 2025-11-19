void sub_4E60(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_6544(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_66B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 152));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDownloads()
{
  if (WBS_LOG_CHANNEL_PREFIXDownloads_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDownloads_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDownloads_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeychain()
{
  if (WBS_LOG_CHANNEL_PREFIXKeychain_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeychain_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeychain_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebsiteData()
{
  if (WBS_LOG_CHANNEL_PREFIXWebsiteData_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebsiteData_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXWebExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSafariProfiles()
{
  if (WBS_LOG_CHANNEL_PREFIXSafariProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSafariProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSafariProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXImport()
{
  if (WBS_LOG_CHANNEL_PREFIXImport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXImport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXImport_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport()
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

void sub_14EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __blankImage_block_invoke(id a1)
{
  v4.width = 30.0;
  v4.height = 30.0;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = blankImage_image;
  blankImage_image = v1;

  UIGraphicsEndImageContext();
}

void sub_18238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SafariLibraryPath()
{
  if (SafariLibraryPath_onceToken != -1)
  {
    SafariLibraryPath_cold_1();
  }

  v1 = SafariLibraryPath_path;

  return v1;
}

id SafariNonContaineredLibraryPath()
{
  if (SafariNonContaineredLibraryPath_onceToken != -1)
  {
    SafariNonContaineredLibraryPath_cold_1();
  }

  v1 = SafariNonContaineredLibraryPath_path;

  return v1;
}

id SafariSettingsDirectoryPath()
{
  v0 = SafariSettingsDirectoryPath_path;
  if (!SafariSettingsDirectoryPath_path)
  {
    v1 = SafariLibraryPath();
    v2 = [v1 stringByAppendingPathComponent:@"Safari"];
    v3 = SafariSettingsDirectoryPath_path;
    SafariSettingsDirectoryPath_path = v2;

    v4 = +[NSFileManager defaultManager];
    [v4 _web_createDirectoryAtPathWithIntermediateDirectories:SafariSettingsDirectoryPath_path attributes:0];

    v0 = SafariSettingsDirectoryPath_path;
  }

  return v0;
}

id SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 isEqualToString:WBSDefaultProfileIdentifier])
  {
    v7 = +[NSFileManager defaultManager];
    v3 = [v7 safari_profileDirectoryURLWithID:v2 createIfNeeded:0];

    if (v3)
    {
      v6 = [v3 URLByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist" isDirectory:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v3 = SafariSettingsDirectoryPath();
    v4 = [v3 stringByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist"];
    v5 = [v4 stringByResolvingSymlinksInPath];
    v6 = [NSURL fileURLWithPath:v5];
  }

  return v6;
}

void sub_1FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_26584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id localizedPrivacyButtonTitleForBundleIdentifier(uint64_t a1)
{
  v1 = [OBBundle bundleWithIdentifier:a1];
  v2 = [v1 privacyFlow];
  v3 = [v2 localizedButtonTitle];

  return v3;
}

void sub_29C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_2A088(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2A34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t processIDForProcessNamed(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_12;
  }

  v2 = [v1 UTF8String];
  *v10 = xmmword_7B610;
  v11 = 0;
  size = 0;
  v3 = sysctl(v10, 3u, 0, &size, 0, 0);
  if (!v3)
  {
    v4 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v5 = sysctl(v10, 3u, v4, &size, 0, 0);
    if (v5)
    {
      v3 = v5;
LABEL_5:
      free(v4);
      goto LABEL_13;
    }

    if (size >= 0x288)
    {
      v6 = size / 0x288;
      v7 = v4 + 243;
      do
      {
        v3 = *(v7 - 203);
        if (v3 >= 1 && !strncmp(v2, v7, 0x10uLL))
        {
          goto LABEL_5;
        }

        v7 += 648;
      }

      while (--v6);
    }

    free(v4);
LABEL_12:
    v3 = 0xFFFFFFFFLL;
  }

LABEL_13:

  return v3;
}

uint64_t isiPad()
{
  if (isiPad_onceToken != -1)
  {
    isiPad_cold_1();
  }

  return isiPad_isiPad;
}

void __isiPad_block_invoke(id a1)
{
  v1 = +[WBSDevice currentDevice];
  isiPad_isiPad = [v1 deviceClass] == 3;
}

void sub_36E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3725C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_37304(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_37BB8(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_3A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_3C0C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __bookmarkQueue_block_invoke(id a1)
{
  v6 = [NSString stringWithFormat:@"com.apple.Safari.SafariSettingsBrowsingDataImportController.bookmarkQueue"];
  v1 = v6;
  v2 = [v6 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create(v2, v3);
  v5 = bookmarkQueue_queue;
  bookmarkQueue_queue = v4;
}

void openExtensionSettingsInMobileSafariForExtension(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = webExtensionsController();
  v15 = [v5 webExtensionForExtension:v4];

  v6 = [NSURLComponents alloc];
  v7 = [v15 optionsPageURL];
  v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:1];

  [v8 setScheme:WBSWebExtensionURLScheme];
  v9 = [v15 composedIdentifier];
  v10 = +[NSCharacterSet URLHostAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];
  v12 = [NSString stringWithFormat:@"%@%@", v11, v3];

  [v8 setEncodedHost:v12];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = [v8 URL];
  [v13 openSensitiveURL:v14 withOptions:0];
}

void sub_40B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id webExtensionsController()
{
  v0 = +[SafariSettingsController extensionsProfilesDataSource];
  v1 = [v0 profileServerIDToWebExtensionsControllers];
  v2 = [v1 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v2;
}

void sub_4225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_42C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_479B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_483B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SafariSettingsLocalizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!SafariSettingsLocalizedString_bundle)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = SafariSettingsLocalizedString_bundle;
    SafariSettingsLocalizedString_bundle = v5;
  }

  v7 = [SafariSettingsLocalizedString_bundle localizedStringForKey:v3 value:@"localized string not found" table:v4];

  return v7;
}

void sub_4AD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4C14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_4E9BC()
{
  result = qword_A2318;
  if (!qword_A2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2318);
  }

  return result;
}

uint64_t sub_4EA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2320, &qword_7B738);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  v5 = (__chkstk_darwin)();
  v67 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v51 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2328, &qword_7B740);
  v54 = *(v63 - 8);
  v8 = v54;
  v9 = *(v54 + 64);
  v10 = __chkstk_darwin(v63);
  v65 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v57 = &v51 - v15;
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2330, &qword_7B748);
  v66 = *(v58 - 8);
  v18 = v66[8];
  v19 = __chkstk_darwin(v58);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  *(swift_allocObject() + 16) = a1;
  v24 = sub_55754();
  v25 = sub_51130(&qword_A2338, &type metadata accessor for PreferencesControllerView);
  v26 = a1;
  sub_55804();
  *(swift_allocObject() + 16) = v26;
  sub_51218(&qword_A2340, &qword_A2328, &qword_7B740);
  v27 = v26;
  v28 = v23;
  v52 = v23;
  v29 = v63;
  sub_557C4();
  v55 = *(v8 + 8);
  v56 = v8 + 8;
  v30 = v17;
  v55(v17, v29);
  *(swift_allocObject() + 16) = v27;
  v31 = v27;
  sub_55814();
  *(swift_allocObject() + 16) = v31;
  v32 = v31;
  v33 = v57;
  sub_55814();
  *(swift_allocObject() + 16) = v32;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2348, &qword_7B760);
  v35 = sub_50DCC();
  v68 = v24;
  v69 = &type metadata for String;
  v70 = v25;
  v71 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  sub_55814();
  v37 = v66[2];
  v53 = v21;
  v38 = v58;
  v37(v21, v28, v58);
  v68 = v21;
  v39 = *(v54 + 16);
  v40 = v63;
  v41 = v64;
  v39(v64, v30, v63);
  v69 = v41;
  v42 = v65;
  v39(v65, v33, v40);
  v70 = v42;
  v44 = v60;
  v43 = v61;
  v45 = v67;
  (*(v60 + 16))(v67, v36, v61);
  v71 = v45;
  sub_50848(&v68, v62);
  v46 = *(v44 + 8);
  v46(v36, v43);
  v47 = v33;
  v48 = v55;
  v55(v47, v40);
  v48(v30, v40);
  v49 = v66[1];
  v49(v52, v38);
  v46(v67, v43);
  v48(v65, v40);
  v48(v64, v40);
  return (v49)(v53, v38);
}

uint64_t sub_4F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_55774();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_55644();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = sub_55794();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v13 = sub_556D4();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2370, &qword_7B770) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v17 = sub_55694();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();
  sub_55914();
  v3[29] = sub_55904();
  v21 = sub_558F4();

  return _swift_task_switch(sub_4F3A0, v21, v20);
}

uint64_t sub_4F3A0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[8];

  sub_557E4();
  sub_55664();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    v13 = v0[7];
    v12 = v0[8];
    sub_50E20(v0[25]);
    sub_557D4();
    sub_557F4();
    (*(v11 + 8))(v9, v10);
    goto LABEL_99;
  }

  v14 = v0[20];
  v15 = v0[8];
  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  sub_557D4();
  v0[2] = sub_55674();
  v0[3] = v16;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_50DCC();
  v17 = sub_55924();

  v18 = *(v17 + 16);
  if (!v18)
  {
    v123 = &_swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v19 = 0;
  v20 = -v18;
  v21 = v17 + 40;
  v123 = &_swiftEmptyArrayStorage;
LABEL_5:
  v22 = (v21 + 16 * v19++);
  while ((v19 - 1) < *(v17 + 16))
  {
    v23 = *(v22 - 1);
    v24 = *v22;
    v25 = HIBYTE(*v22) & 0xF;
    if ((*v22 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if (v23 != 0xD000000000000016 || 0x8000000000080A60 != v24)
      {
        v27 = *(v22 - 1);
        v28 = *v22;
        if ((sub_559B4() & 1) == 0 && (v23 != 0x495241464153 || v24 != 0xE600000000000000) && (sub_559B4() & 1) == 0)
        {

          v29 = v123;
          v129 = v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_50E88(0, v123[2] + 1, 1);
            v29 = v123;
          }

          v31 = v29[2];
          v30 = v29[3];
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v120 = v29[2];
            v124 = v31 + 1;
            sub_50E88((v30 > 1), v31 + 1, 1);
            v31 = v120;
            v32 = v124;
            v29 = v129;
          }

          v29[2] = v32;
          v123 = v29;
          v33 = &v29[2 * v31];
          v33[4] = v23;
          v33[5] = v24;
          v21 = v17 + 40;
          if (!(v20 + v19))
          {
LABEL_27:

            v34 = v123;
            if (!v123[2])
            {
              v45 = v0[28];
              sub_55684();
              if (v46)
              {
                v126 = v0[28];
                v47 = v0[27];
                v121 = v0[26];
                v48 = v0[19];
                v49 = v0[20];
                v50 = v0[18];
                v51 = v0[9];
                v52 = v0[7];

                v53 = sub_55844();

                [v51 setSpecifierIdentifierToScrollAndHighlight:v53];

                sub_557F4();
                (*(v48 + 8))(v49, v50);
                (*(v47 + 8))(v126, v121);
                goto LABEL_99;
              }
            }

            v35 = v0[28];
            v36 = sub_55654();
            if (v36)
            {
              v37 = v36;
              v38 = *(v36 + 16);
              if (v38)
              {
                v39 = 0;
                v40 = v0[14];
                v41 = (v40 + 8);
                while (1)
                {
                  if (v39 >= *(v37 + 16))
                  {
                    goto LABEL_104;
                  }

                  (*(v40 + 16))(v0[15], v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v0[13]);
                  if (sub_55624() == 0x6E6F69746361 && v42 == 0xE600000000000000)
                  {
                    break;
                  }

                  v44 = sub_559B4();

                  if (v44)
                  {
                    goto LABEL_42;
                  }

                  ++v39;
                  (*v41)(v0[15], v0[13]);
                  if (v38 == v39)
                  {
                    goto LABEL_38;
                  }
                }

LABEL_42:
                v55 = v0[16];
                v54 = v0[17];
                v57 = v0[14];
                v56 = v0[15];
                v58 = v0[13];

                v59 = *(v57 + 32);
                v59(v55, v56, v58);
                v59(v54, v55, v58);
                v60 = sub_55634();
                v34 = v123;
                if (v61)
                {
                  if (v60 == 0x6F707845776F6873 && v61 == 0xEF74656568537472)
                  {

                    goto LABEL_47;
                  }

                  v62 = sub_559B4();

                  if (v62)
                  {
LABEL_47:

                    v63 = v0[27];
                    v125 = v0[26];
                    v127 = v0[28];
                    v65 = v0[19];
                    v64 = v0[20];
                    v66 = v0[17];
                    v122 = v0[18];
                    v67 = v0[13];
                    v68 = v0[9];
                    v69 = v0[7];
                    v70 = sub_55844();
                    [v68 setSpecifierIdentifierToScrollAndSelect:v70];

                    sub_557F4();
                    (*v41)(v66, v67);
                    (*(v65 + 8))(v64, v122);
                    (*(v63 + 8))(v127, v125);
                    goto LABEL_99;
                  }
                }

                (*v41)(v0[17], v0[13]);
              }

              else
              {
LABEL_38:

                v34 = v123;
              }
            }

            v119 = v34[2];
            if (!v119)
            {
LABEL_94:

              goto LABEL_98;
            }

            v71 = 0;
            v117 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
            v118 = (v0[11] + 8);
            v72 = (v34 + 5);
            while (v71 < v34[2])
            {
              v73 = *(v72 - 1);
              v74 = *v72;
              v128 = v71 + 1;
              swift_bridgeObjectRetain_n();
              v75 = sub_510E4(v73, v74);
              switch(v75)
              {
                case 5u:
LABEL_96:

                  goto LABEL_97;
                case 0xFu:
                  goto LABEL_95;
                default:
                  v76 = sub_559B4();

                  if (v76)
                  {
LABEL_97:

                    v97 = v0[9];
                    v98 = sub_55844();

                    [v97 setSpecifierIdentifierToScrollAndHighlight:v98];

                    goto LABEL_98;
                  }

                  switch(v75)
                  {
                    case 0xEu:
                      goto LABEL_96;
                    default:
                      v77 = sub_559B4();

                      if (v77)
                      {
                        goto LABEL_97;
                      }

                      v78 = [objc_allocWithZone(SafariSettingsController) init];
                      v79 = sub_55844();
                      v80 = [v78 specifierForID:v79];

                      if (!v80)
                      {
                        v81 = [objc_allocWithZone(SafariDeveloperSettingsController) init];
                        v82 = sub_55844();
                        v80 = [v81 specifierForID:v82];

                        if (!v80)
                        {
                          goto LABEL_95;
                        }
                      }

                      if (v75 <= 5u)
                      {
                        if (v75 == 1)
                        {
                          v87 = v0[28];

                          sub_55684();
                          if (v88)
                          {
                            v89 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                            v90 = sub_55844();

                            [v89 setSpecifierIdentifierToScrollAndHighlight:v90];

                            [v80 setProperty:v89 forKey:v117];
                          }

LABEL_76:
                          v91 = &unk_A2408;
                          v92 = off_88768;
                          goto LABEL_91;
                        }

                        if (v75 == 2)
                        {
LABEL_64:
                          v85 = [v80 target];

                          v132._countAndFlagsBits = 0x7465677261745FLL;
                          v132._object = 0xE700000000000000;
                          sub_55874(v132);

                          v86 = sub_55844();

                          [v80 setProperty:v85 forKey:v86];

                          swift_unknownObjectRelease();
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        if (v75 - 6 < 2)
                        {
                          goto LABEL_64;
                        }

                        if (v75 == 10)
                        {
                          v83 = [v80 target];

                          v131._countAndFlagsBits = 0x7465677261745FLL;
                          v131._object = 0xE700000000000000;
                          sub_55874(v131);

                          v84 = sub_55844();

                          [v80 setProperty:v83 forKey:v84];

                          swift_unknownObjectRelease();
LABEL_84:
                          type metadata accessor for SearchEngineSettingsController();
                          goto LABEL_92;
                        }
                      }

LABEL_68:
                      if (v75 > 8u)
                      {
                        if (v75 <= 0xAu)
                        {
                          if (v75 != 9)
                          {
                            if (v75 != 10)
                            {
                              goto LABEL_88;
                            }

                            goto LABEL_84;
                          }

                          v91 = &unk_A23F8;
                          v92 = &off_887B0;
                        }

                        else if (v75 - 11 >= 2)
                        {
                          if (v75 != 13)
                          {
LABEL_88:

                            goto LABEL_93;
                          }

                          v91 = &unk_A23E8;
                          v92 = off_88780;
                        }

                        else
                        {
                          v91 = &unk_A23F0;
                          v92 = off_88790;
                        }
                      }

                      else if (v75 > 2u)
                      {
                        if (v75 - 6 < 2)
                        {
                          goto LABEL_81;
                        }

                        if (v75 == 3)
                        {
                          v91 = &unk_A2400;
                          v92 = off_88778;
                        }

                        else
                        {
                          if (v75 != 4)
                          {
                            goto LABEL_88;
                          }

                          v91 = &unk_A2378;
                          v92 = off_88788;
                        }
                      }

                      else
                      {
                        if (v75)
                        {
                          if (v75 == 1)
                          {
                            goto LABEL_76;
                          }

LABEL_81:
                          v91 = &unk_A2418;
                          v92 = off_887A8;
                          goto LABEL_91;
                        }

                        v91 = &unk_A2410;
                        v92 = off_88770;
                      }

LABEL_91:
                      sub_5117C(0, v91, v92);
LABEL_92:
                      v93 = v0[20];
                      v94 = v0[12];
                      v95 = v0[10];
                      v0[6] = &OBJC_PROTOCOL___PSController;
                      swift_dynamicCastTypeToObjCProtocolUnconditional();
                      v96 = v80;
                      sub_55764();
                      sub_51130(&qword_A23E0, &type metadata accessor for PreferencesControllerRecipe);
                      sub_55784();

                      (*v118)(v94, v95);
LABEL_93:
                      v72 += 2;
                      v34 = v123;
                      v71 = v128;
                      if (v119 == v128)
                      {
                        goto LABEL_94;
                      }

                      break;
                  }

                  break;
              }
            }

            __break(1u);
LABEL_104:
            __break(1u);
            JUMPOUT(0x503E4);
          }

          goto LABEL_5;
        }
      }
    }

    ++v19;
    v22 += 2;
    if (v20 + v19 == 1)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_95:

LABEL_98:
  v100 = v0[27];
  v99 = v0[28];
  v101 = v0[26];
  v103 = v0[19];
  v102 = v0[20];
  v104 = v0[18];
  v105 = v0[7];
  sub_557F4();
  (*(v103 + 8))(v102, v104);
  (*(v100 + 8))(v99, v101);
LABEL_99:
  v106 = v0[28];
  v107 = v0[24];
  v108 = v0[25];
  v110 = v0[20];
  v109 = v0[21];
  v112 = v0[16];
  v111 = v0[17];
  v113 = v0[15];
  v114 = v0[12];

  v115 = v0[1];

  return v115();
}

uint64_t sub_50460(uint64_t a1)
{
  v2 = *(*(sub_55774() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for SearchEngineSettingsController();
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v3 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  return sub_55744();
}

uint64_t sub_5053C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = *(*(sub_55774() - 8) + 64);
  __chkstk_darwin();
  sub_5117C(0, a2, a3);
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  return sub_55744();
}

uint64_t sub_50628(uint64_t a1)
{
  v2 = *(*(sub_55774() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_55754();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebBrowsingSettingsController();
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  sub_55744();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = *&v9[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
  v10 = *&v9[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle + 8];

  v13[0] = v11;
  v13[1] = v10;
  sub_51130(&qword_A2338, &type metadata accessor for PreferencesControllerView);
  sub_50DCC();
  sub_557A4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_50848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2358, &qword_7B768) - 8);
  v4 = (*(*v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2330, &qword_7B748);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_A2328, &qword_7B740);
  v9 = sub_51218(&qword_A2340, &qword_A2328, &qword_7B740);
  v18 = v8;
  v19 = v9;
  v17[0] = swift_getOpaqueTypeConformance2();
  (*(*(v7 - 8) + 16))(v6, *a1, v7);
  v18 = v6;
  v10 = &v6[v3[14]];
  v11 = *(*(v8 - 8) + 16);
  v11(v10, a1[1], v8);
  v19 = v10;
  v12 = &v6[v3[18]];
  v11(v12, a1[2], v8);
  v20 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2320, &qword_7B738);
  v14 = sub_51218(&qword_A2360, &qword_A2320, &qword_7B738);
  v15 = &v6[v3[22]];
  (*(*(v13 - 8) + 16))(v15, a1[3], v13);
  v21 = v15;
  v17[6] = v7;
  v17[7] = v8;
  v17[8] = v8;
  v17[9] = v13;
  v17[2] = v17[0];
  v17[3] = v9;
  v17[4] = v9;
  v17[5] = v14;
  return sub_557B4();
}

id sub_50ABC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
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

uint64_t sub_50B40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50BA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_50C54;

  return sub_4F0DC(a1, a2, v6);
}

uint64_t sub_50C54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

unint64_t sub_50DCC()
{
  result = qword_A2350;
  if (!qword_A2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2350);
  }

  return result;
}

uint64_t sub_50E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2370, &qword_7B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_50E88(char *a1, int64_t a2, char a3)
{
  result = sub_50EC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_50EA8(char *a1, int64_t a2, char a3)
{
  result = sub_50FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_50EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2420, &qword_7B778);
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

char *sub_50FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2430, &qword_7B780);
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

uint64_t sub_510E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8B548;
  v6._object = a2;
  v4 = sub_55994(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_51130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5117C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_51218(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_51270()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  sub_5117C(0, &qword_A2588, NSDistributedNotificationCenter_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata defaultCenter];
  v6 = [objc_opt_self() safari_notificationNameForUserDefaultsKey:_SFSearchEngineStringDefaultsKey];
  [v5 addObserver:v4 selector:"reloadSpecifiers" name:v6 object:0];

  return v4;
}

void sub_51410()
{
  v1 = objc_opt_self();
  v14 = [v1 safari_browserSharedDefaults];
  v2 = sub_55844();
  [v14 setObject:v2 forKey:_SFSearchEngineStringDefaultsKey];

  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_55844();
  [v3 postNotificationName:v4 object:0];

  if (![v14 BOOLForKey:@"PrivateBrowsingUsesNormalBrowsingSearchEngineSelection"])
  {

    goto LABEL_6;
  }

  v5 = _SFPrivateSearchEngineStringDefaultsKey;
  v6 = [v14 stringForKey:_SFPrivateSearchEngineStringDefaultsKey];
  if (v6)
  {
    sub_55854();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_55844();
  [v14 setObject:v9 forKey:v5];

  v10 = [v1 safari_browserDefaults];
  if (v8)
  {
  }

  else
  {

    v6 = 0;
  }

  [v10 setObject:v6 forKey:{WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey, v14}];

  swift_unknownObjectRelease();
  v11 = [v0 specifierForID:@"SEARCH_SUGGESTION_SETTING"];
  v12 = [v0 readPreferenceValue:v11];

  if (v12)
  {
    sub_55934();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_5117C(0, &qword_A2548, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      [v0 setUpSearchSuggestionText:{objc_msgSend(v15, "BOOLValue")}];
      v13 = [v0 specifierForID:@"SEARCH"];
      [v0 reloadSpecifier:v13 animated:1];
    }

LABEL_6:

    return;
  }

  sub_52F68(v18, &qword_A2540, &unk_7B808);
}

void sub_51780(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_55704();
  v112 = *(v5 - 8);
  v6 = *(v112 + 64);
  v7 = __chkstk_darwin(v5);
  v116 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v108 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2560, &qword_7B818);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v108 - v15;
  v17 = sub_556D4();
  v117 = *(v17 - 8);
  v18 = *(v117 + 64);
  v19 = __chkstk_darwin(v17);
  v114 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v115 = &v108 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v108 - v24;
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v118.receiver = v2;
  v118.super_class = ObjectType;
  v111 = ObjectType;
  objc_msgSendSuper2(&v118, "viewWillAppear:", a1 & 1);
  v28 = [v2 specifier];
  if (!v28)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [v28 identifier];

  if (!v30)
  {
    return;
  }

  v109 = v5;
  v113 = v17;
  v31 = sub_55854();
  v33 = v32;

  v34 = [v2 specifier];
  if (!v34)
  {
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 target];

  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_5117C(0, &qword_A2428, off_887A0);
  v37 = [v36 isKindOfClass:swift_getObjCClassFromMetadata()];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2568, &qword_7B820);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_7B7C0;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_52F14();
  *(v38 + 32) = v31;
  *(v38 + 40) = v33;

  if ((v37 & 1) == 0)
  {
    sub_55864();
    sub_556C4();
    v46 = v117;
    v47 = v113;
    if ((*(v117 + 48))(v16, 1, v113) == 1)
    {

      sub_52F68(v16, &qword_A2560, &qword_7B818);
      return;
    }

    (*(v46 + 32))(v27, v16, v47);
    if (![v2 respondsToSelector:"pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:"])
    {
      (*(v46 + 8))(v27, v47);

      return;
    }

    v48 = v110;
    sub_556F4();
    v49 = [v2 bundle];
    if (v49)
    {
      v50 = v49;

      v51 = [v50 bundleURL];

      sub_556B4();
      v52 = objc_allocWithZone(_NSLocalizedStringResource);
      v53 = sub_55844();
      v54 = sub_55844();
      v55 = v48;
      isa = sub_556E4().super.isa;
      sub_556A4(v57);
      v59 = v58;
      v60 = [v52 initWithKey:v53 table:v54 locale:isa bundleURL:v58];

      v61 = *(v117 + 8);
      v62 = v113;
      v61(v25, v113);
      (*(v112 + 8))(v55, v109);
      v63 = sub_55844();
      sub_5117C(0, &qword_A2578, _NSLocalizedStringResource_ptr);
      v64 = sub_55894().super.isa;
      sub_556A4(v65);
      v67 = v66;
      [v2 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v63 title:v60 localizedNavigationComponents:v64 deepLink:v66];

      v61(v27, v62);
      return;
    }

    goto LABEL_26;
  }

  sub_55864();
  v39 = [v2 specifier];
  if (!v39)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v40 = v39;

  v41 = [v40 name];

  v42 = v115;
  v43 = v114;
  if (v41)
  {
    sub_556C4();

    v44 = v117;
    v45 = v113;
    if ((*(v117 + 48))(v14, 1, v113) == 1)
    {

      sub_52F68(v14, &qword_A2560, &qword_7B818);
    }

    else
    {
      (*(v44 + 32))(v42, v14, v45);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v69 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v70 = [v69 bundleURL];

      sub_556B4();
      sub_556F4();
      v71 = objc_allocWithZone(_NSLocalizedStringResource);
      v72 = sub_556E4().super.isa;
      sub_556A4(v73);
      v75 = v74;
      v111 = [v71 initWithKey:v41 table:0 locale:v72 bundleURL:v74];

      v76 = objc_allocWithZone(_NSLocalizedStringResource);
      v77 = sub_55844();
      v78 = sub_55844();
      v79 = sub_556E4().super.isa;
      sub_556A4(v80);
      v82 = v81;
      v83 = [v76 initWithKey:v77 table:v78 locale:v79 bundleURL:v81];

      v84 = objc_allocWithZone(_NSLocalizedStringResource);
      v85 = sub_55844();
      v86 = sub_55844();
      v87 = v43;
      v88 = sub_556E4().super.isa;
      sub_556A4(v89);
      v91 = v90;
      v92 = [v84 initWithKey:v85 table:v86 locale:v88 bundleURL:v90];

      if ([v2 respondsToSelector:"pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:"])
      {
        v93 = sub_55844();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2580, &qword_7B828);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_7B7D0;
        *(v94 + 32) = v92;
        *(v94 + 40) = v83;
        sub_5117C(0, &qword_A2578, _NSLocalizedStringResource_ptr);
        v95 = v92;
        v96 = v83;
        v97 = sub_55894().super.isa;

        v98 = v115;
        sub_556A4(v99);
        v101 = v100;
        v102 = v2;
        v103 = v111;
        [v102 pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v93 title:v111 localizedNavigationComponents:v97 deepLink:v101];

        (*(v112 + 8))(v116, v109);
        v104 = *(v117 + 8);
        v105 = v113;
        v104(v87, v113);
        v104(v98, v105);
      }

      else
      {

        (*(v112 + 8))(v116, v109);
        v106 = *(v117 + 8);
        v107 = v113;
        v106(v87, v113);
        v106(v115, v107);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_522D4()
{
  v1 = v0;
  v2 = [objc_opt_self() emptyGroupSpecifier];
  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  v73 = &_swiftEmptyArrayStorage;
  isa = sub_558E4().super.super.isa;
  [v4 setProperty:isa forKey:PSIsRadioGroupKey];

  v6 = *&v1[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier];
  *&v1[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = v4;
  v7 = v4;

  v61 = v7;
  sub_55884();
  if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v53 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
    sub_558C4();
  }

  sub_558D4();
  v8 = v73;
  v9 = objc_opt_self();
  [v9 loadSystemLanguageProperties];
  v10 = [v9 sharedInstance];
  v11 = sub_52DA0();
  v66 = v12;
  v67 = v11;
  v13 = [v10 enginesAvailableForUnifiedFieldSearching];
  sub_5117C(0, &qword_A2550, _SFSearchEngineInfo_ptr);
  v14 = sub_558B4();

  if (v14 >> 62)
  {
    result = sub_55984();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  result = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_30:

LABEL_31:
    sub_5117C(0, &qword_A2558, PSSpecifier_ptr);
    v54 = sub_55894().super.isa;
    v55 = sub_55844();
    [v1 setValue:v54 forKey:v55];

    v56 = sub_55894().super.isa;
    [v1 updateRestrictionsForSpecifiers:v56];

    v3 = sub_52FC8(v8);

    return v3;
  }

LABEL_6:
  if (result >= 1)
  {
    v58 = v1;
    v59 = v73;
    v57 = v10;
    v16 = 0;
    v62 = v14 & 0xC000000000000001;
    v60 = PSRadioGroupCheckedSpecifierKey;
    v17 = &selRef_setContext_;
    v69 = xmmword_7B7C0;
    v63 = result;
    v64 = v14;
    while (1)
    {
      v70 = v16;
      v18 = v62 ? sub_55954() : *(v14 + 8 * v16 + 32);
      v19 = v17;
      v20 = v18;
      v21 = [v20 displayName];
      v22 = sub_55854();
      v24 = v23;

      v71 = 0u;
      v72 = 0u;
      v68 = v22;
      v25 = sub_55844();
      v26 = *(&v72 + 1);
      if (*(&v72 + 1))
      {
        v27 = __swift_project_boxed_opaque_existential_0(&v71, *(&v72 + 1));
        v28 = *(v26 - 8);
        v29 = *(v28 + 64);
        __chkstk_darwin(v27);
        v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v31);
        v32 = sub_559A4();
        (*(v28 + 8))(v31, v26);
        __swift_destroy_boxed_opaque_existential_0(&v71);
      }

      else
      {
        v32 = 0;
      }

      v33 = [objc_allocWithZone(PSSpecifier) initWithName:v25 target:v32 set:0 get:0 detail:0 cell:3 edit:0];

      swift_unknownObjectRelease();
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2430, &qword_7B780);
        v34 = swift_allocObject();
        *(v34 + 16) = v69;
        v65 = v33;
        v17 = v19;
        v35 = [v20 v19[204]];
        v36 = sub_55854();
        v38 = v37;

        *(v34 + 56) = &type metadata for String;
        *(v34 + 32) = v36;
        *(v34 + 40) = v38;
        v39 = sub_55894().super.isa;

        v40 = swift_allocObject();
        *(v40 + 16) = v69;
        *(v40 + 56) = &type metadata for String;
        v41 = v68;
        *(v40 + 32) = v68;
        *(v40 + 40) = v24;

        v42 = sub_55894().super.isa;

        v43 = swift_allocObject();
        *(v43 + 16) = v69;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 32) = v41;
        *(v43 + 40) = v24;
        v44 = sub_55894().super.isa;

        v45 = v65;
        [v65 setValues:v39 titles:v42 shortTitles:v44];
      }

      else
      {

        v17 = v19;
      }

      v46 = [v20 v17[204]];

      v47 = sub_55854();
      v49 = v48;

      if (v47 == v67 && v49 == v66)
      {
        break;
      }

      v50 = sub_559B4();

      if (v50)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v33)
      {
        v51 = v33;
        sub_55884();
        if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v52 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
          sub_558C4();
        }

        sub_558D4();

        v59 = v73;
      }

      else
      {
      }

      v16 = v70 + 1;
      v14 = v64;
      if (v63 == v70 + 1)
      {

        v10 = v57;
        v1 = v58;
        v8 = v59;
        goto LABEL_31;
      }
    }

LABEL_23:
    [v61 setProperty:v33 forKey:v60];
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_52A50(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  isa = sub_55714().super.isa;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v6 = sub_55714().super.isa;
  v7 = [v2 indexForIndexPath:v6];

  v8 = [v2 specifierAtIndex:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 values];
    if (v10)
    {
      v11 = v10;
      v12 = sub_558B4();

      if (*(v12 + 16))
      {
        sub_52D44(v12 + 32, v13);

        if (swift_dynamicCast())
        {
          sub_51410();

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_52CD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_52D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_52DA0()
{
  v0 = [objc_opt_self() safari_browserSharedDefaults];
  v1 = [v0 stringForKey:_SFSearchEngineStringDefaultsKey];

  if (!v1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v1 = [v2 defaultSearchEngineNameForPrivateBrowsing:0];

    if (!v1)
    {
      return 0;
    }
  }

  v3 = sub_55854();

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_52F14()
{
  result = qword_A2570;
  if (!qword_A2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2570);
  }

  return result;
}

uint64_t sub_52F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_52FC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_55984();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_50EA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_55954();
        sub_53960();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_50EA8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_541C8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_53960();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_50EA8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_541C8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_53194()
{
  v1 = [v0 bundle];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_55844();
  v4 = sub_55844();
  v5 = [v2 pathForResource:v3 ofType:v4];

  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_55854();

  v6 = objc_allocWithZone(NSDictionary);

  v7 = sub_55844();

  v8 = [v6 initWithContentsOfFile:v7];

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_55834();
LABEL_8:
  __break(1u);
  __break(1u);
}

unint64_t sub_53960()
{
  result = qword_A2558;
  if (!qword_A2558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A2558);
  }

  return result;
}

void *sub_539AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_53A48(v1, 0);

    sub_55944();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_55984();
    if (!v1)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_53A48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2580, &qword_7B828);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_53AD0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_55984();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_55964();
  *v1 = result;
  return result;
}

uint64_t sub_53B70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_53960();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_53BD8(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_53C3C(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_53C3C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_539AC(a1);

      objc_setAssociatedObject(v2, &_swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

char *sub_53CF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_53960();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_55984();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_55984();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_53E14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_55984();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_55984();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_53AD0(result);

  return sub_53CF8(v6, v5, 1, v3);
}

uint64_t sub_53F00(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_53960();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_53BD8(v4, sub_541AC);
  }

LABEL_25:
  v20 = sub_55984();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = sub_55984();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = __chkstk_darwin(result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_53BD8(v4, sub_541AC);
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_54098(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_55984();
  if (result < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_55984();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v14 = sub_55984();
  }

  else
  {
    v14 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_53AD0(result);

  return sub_53F00(v6, v5, v11, v3);
}

_OWORD *sub_541C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}