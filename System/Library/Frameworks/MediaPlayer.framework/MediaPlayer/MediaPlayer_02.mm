void __MPCloudControllerReceivedRemoteNotification(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = a2;
  v7 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received notification [%@]", &v8, 0x16u);
  }

  if ([a3 isEqualToString:*MEMORY[0x1E69E40F8]])
  {
    [v6 canShowCloudDownloadButtonsDidChangeNotification:0];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E69E4100]])
  {
    [v6 canShowCloudTracksDidChangeNotification:0];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E69E4110]])
  {
    [v6 isCellularDataRestrictedDidChangeNotification:0];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E69E4108]] || objc_msgSend(a3, "isEqualToString:", *MEMORY[0x1E69E4118]))
  {
    [v6 hasProperNetworkConditionsToShowCloudMediaDidChangeNotification:0];
  }

  else if (([a3 isEqualToString:*MEMORY[0x1E69E4140]] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", *MEMORY[0x1E69E4148]))
  {
    [v6 authenticatedDidChangeNotification:0];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E69E4130]])
  {
    [v6 enableICMLErrorReasonChange:0];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1A245A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MPCloudControllerGetSagaOnDiskDatabaseRevisionForUserIdentity(uint64_t a1)
{
  v1 = [MEMORY[0x1E69B34E0] musicLibraryForUserAccount:a1];
  v2 = [v1 sagaOnDiskDatabaseRevision];

  return v2;
}

uint64_t MPCloudControllerGetMaxAllowedPinsForUserIdentity(uint64_t a1)
{
  v1 = [MEMORY[0x1E69B34E0] musicLibraryForUserAccount:a1];
  v2 = [v1 sagaMaximumLibraryPinCount];

  return v2;
}

void sub_1A245AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A245C3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A245C8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A245F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute_onceToken != -1)
  {
    dispatch_once(&_MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute_onceToken, &__block_literal_global_4871);
  }

  if (_MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute___supportsWirelessSplitting == 1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v7 + 1) + 8 * i) isSplitterCapable])
          {
            v3 = 1;
            goto LABEL_15;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A2464E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2465044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCARSessionStatusClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CarKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E76766A0;
    v8 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPAVRoutingViewController.m" lineNumber:51 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCARSessionStatusClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPAVRoutingViewController.m" lineNumber:52 description:{@"Unable to find class %s", "CARSessionStatus"}];

LABEL_10:
    __break(1u);
  }

  getCARSessionStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A2466DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24680D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2469340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A246DA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak((v47 - 248));
  _Unwind_Resume(a1);
}

void sub_1A246FB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A246FF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A247013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A247052C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A247077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5835(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5926(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24728E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MPAVGetBatteryLevelFromRouteDescription(void *a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = **(&unk_1E7676908 + a2);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v14[0] = &unk_1F15096A0;
    v14[1] = &unk_1F15096B8;
    v15[0] = @"BTDetails_BatteryLevelLeft";
    v15[1] = @"BTDetails_BatteryLevelRight";
    v14[2] = &unk_1F15096D0;
    v14[3] = &unk_1F15096E8;
    v15[2] = @"BTDetails_BatteryLevelCase";
    v15[3] = @"BTDetails_BatteryLevelSingle";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v5 = [v6 objectForKey:v7];

    if (!v5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *MPAVGetRouteDescriptionKey(MPAVBatteryLevelType)"];
      [v10 handleFailureInFunction:v11 file:@"MPAVBatteryLevel.m" lineNumber:134 description:@"unable to find route description key for battery level"];

      v5 = 0;
    }
  }

  v8 = [v3 objectForKey:v5];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber *MPAVGetBatteryLevelFromRouteDescription(NSDictionary *__strong, MPAVBatteryLevelType)"}];
      [v12 handleFailureInFunction:v13 file:@"MPAVBatteryLevel.m" lineNumber:142 description:@"battery level value is not a number"];
    }
  }

  return v8;
}

uint64_t __Block_byref_object_copy__6177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *MPAVRouteSubtypeDescription(unint64_t a1)
{
  if (a1 > 0x1B)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E7676A40[a1];
  }
}

__CFString *MPAVRouteTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E7676B20[a1];
  }
}

void sub_1A24790EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A247A5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A247DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A247E3AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A247EF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A247F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A247FD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24803E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v11 - 120));
  _Unwind_Resume(a1);
}

void sub_1A2481048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MPAVMRRouteDiscoveryModeFromDiscoveryMode(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t MPRouteDiscoveryModeFromMRDiscoveryMode(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *MPRouteDiscoveryModeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7676E20[a1];
  }
}

void sub_1A24846E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A248C258(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1A58DF7C0](&STACK[0x5D8]);
  if (a2 == 2)
  {
    v23 = __cxa_begin_catch(a1);
    v24 = MEMORY[0x1E695DF30];
    v25 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&STACK[0x5D8]);
    (*(*v23 + 24))(&__p, v23, &STACK[0x5D8]);
    if (a14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v27 = [v25 stringWithUTF8String:p_p];
    v28 = [v24 exceptionWithName:@"MediaPlatform" reason:v27 userInfo:0];
    v29 = v28;

    if (a14 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v28);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = MEMORY[0x1E695DF30];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v30 + 16))(v30)];
    v33 = [v31 exceptionWithName:*MEMORY[0x1E695D920] reason:v32 userInfo:0];
    v34 = v33;

    objc_exception_throw(v33);
  }

  _Unwind_Resume(a1);
}

void *mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497AA0;
  v2 = a1[23];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[21];
  a1[21] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *a1 = &unk_1F1497B48;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table((a1 + 16));

  return mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497B68;
  v2 = a1[13];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[11];
  a1[11] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *a1 = &unk_1F1497B88;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::__unordered_map_hasher<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::hash<mlcore::ModelProperty<std::string> *>,std::equal_to<mlcore::ModelProperty<std::string> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::equal_to<mlcore::ModelProperty<std::string> *>,std::hash<mlcore::ModelProperty<std::string> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>>>::~__hash_table((a1 + 6));
  *a1 = &unk_1F1497BA8;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::__unordered_map_hasher<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::hash<mlcore::ModelProperty<std::string> *>,std::equal_to<mlcore::ModelProperty<std::string> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::equal_to<mlcore::ModelProperty<std::string> *>,std::hash<mlcore::ModelProperty<std::string> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      mediaplatform::Data::~Data((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void mlcore::PropertyCacheBase<mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497BA8;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *mlcore::PropertyCacheBase<mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497BA8;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table((a1 + 1));
  return a1;
}

void mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497B88;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::__unordered_map_hasher<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::hash<mlcore::ModelProperty<std::string> *>,std::equal_to<mlcore::ModelProperty<std::string> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::equal_to<mlcore::ModelProperty<std::string> *>,std::hash<mlcore::ModelProperty<std::string> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>>>::~__hash_table((a1 + 6));
  *a1 = &unk_1F1497BA8;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497B88;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::__unordered_map_hasher<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::hash<mlcore::ModelProperty<std::string> *>,std::equal_to<mlcore::ModelProperty<std::string> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<std::string> *,std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>,std::equal_to<mlcore::ModelProperty<std::string> *>,std::hash<mlcore::ModelProperty<std::string> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<std::string> *,std::string>>>::~__hash_table((a1 + 6));
  *a1 = &unk_1F1497BA8;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::__unordered_map_hasher<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<mediaplatform::Data> *,std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>,std::equal_to<mlcore::ModelProperty<mediaplatform::Data> *>,std::hash<mlcore::ModelProperty<mediaplatform::Data> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<mediaplatform::Data> *,mediaplatform::Data>>>::~__hash_table((a1 + 1));
  return a1;
}

void mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(a1);

  JUMPOUT(0x1A58E14E0);
}

void mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497B48;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table((a1 + 16));
  mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(a1);

  JUMPOUT(0x1A58E14E0);
}

void *mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  *a1 = &unk_1F1497B48;
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table((a1 + 16));

  return mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::~PropertyCacheBase(a1);
}

void mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(void *a1)
{
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(a1);

  JUMPOUT(0x1A58E14E0);
}

uint64_t __Block_byref_object_copy__8768(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZL26_MPMLCopyLanguageResourcesv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(v12, [v6 UTF8String]);
  v7 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v14 = __p;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v7 + 48), __p);
  v9 = v8;
  if (*(v8 + 63) < 0)
  {
    operator delete(v8[5]);
  }

  *(v9 + 5) = *v12;
  v9[7] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12[0]) = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_1A248CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLCopyLanguageResourcesv_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(v12, [v6 UTF8String]);
  v7 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v14 = __p;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v7 + 48), __p);
  v9 = v8;
  if (*(v8 + 63) < 0)
  {
    operator delete(v8[5]);
  }

  *(v9 + 5) = *v12;
  v9[7] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12[0]) = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_1A248CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void mlcore::LocalizedSectionHeader::~LocalizedSectionHeader(mlcore::LocalizedSectionHeader *this)
{
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void mlcore::LocalizedSectionsInfo::~LocalizedSectionsInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void mlcore::LanguageResources::~LanguageResources(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7674F90, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1A248D688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void sub_1A248DD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A248E910(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A248E9A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mlcore::PropertiesQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1498CF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::ComparisonPredicate<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A248ECF4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A248EE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8890(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A248F414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 96), 8);
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8949(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__8950(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A248F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Block_object_dispose((v33 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A248FA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore11LibraryView12performQueryINS_20LocalizedSearchQueryEEEvNSt3__110shared_ptrIT_EENS4_INS_11TransactionEEENS3_8functionIFvNS4_INS5_6ResultEEEEEEEUlNS4_INS_11QueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1A248FF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F14958A0;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::LocalizedSearchQuery>(std::shared_ptr<mlcore::LocalizedSearchQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::LocalizedSearchQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F14958A0;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::LocalizedSearchQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void mlcore::MediaError::~MediaError(std::exception *this)
{
  this->__vftable = (MEMORY[0x1E69B0808] + 16);
  this[3].__vftable = (MEMORY[0x1E69B0808] + 64);
  if (SHIBYTE(this[18].__vftable) < 0)
  {
    operator delete(this[16].__vftable);
  }

  MEMORY[0x1A58DF6E0](&this[8]);
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  std::exception::~exception(this);
}

void sub_1A24909B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore11LibraryView12performQueryINS_5QueryEEEvNSt3__110shared_ptrIT_EENS4_INS_11TransactionEEENS3_8functionIFvNS4_INS5_6ResultEEEEEEEUlNS4_INS_11QueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1A2490D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F1495790;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::Query>(std::shared_ptr<mlcore::Query>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::Query::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F1495790;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void sub_1A24911D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A2491550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1A2491ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v27 + 24))(&__p, v27, &a10);
    if (a22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a22 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1A2492D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2 == 2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MEMORY[0x1E695DF30];
    v22 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a16);
    (*(*v20 + 24))(&__p, v20, &a16);
    if (a15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v24 = [v22 stringWithUTF8String:p_p];
    v25 = [v21 exceptionWithName:@"MediaPlatform" reason:v24 userInfo:0];
    v26 = v25;

    if (a15 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v25);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v27 + 16))(v27)];
    v30 = [v28 exceptionWithName:*MEMORY[0x1E695D920] reason:v29 userInfo:0];
    v31 = v30;

    objc_exception_throw(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1A2493138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (!v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1A249357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a11);
    (*(*v27 + 24))(&__p, v27, &a11);
    if (a23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a23 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1A2494784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&a40);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&a67);
  mlcore::EntityQuery::~EntityQuery(&STACK[0x2B8]);

  _Unwind_Resume(a1);
}

uint64_t mlcore::Entity::valueForProperty<int>(uint64_t a1, ModelPropertyBase *a2)
{
  if (!mlcore::PropertyCache::hasValueForProperty((a1 + 8), a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1A58E1460](exception, "faulting not implemented yet");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>((a1 + 136), a2);
  if (!v4)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    (*(*a2 + 40))(&v8, a2);
    std::logic_error::logic_error(v7, &v8);
    v7->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(v7, off_1E7674F98, MEMORY[0x1E69E5280]);
  }

  return *(v4 + 6);
}

void sub_1A2494D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void std::vector<mlcore::PropertyCache>::__init_with_size[abi:ne200100]<mlcore::PropertyCache*,mlcore::PropertyCache*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::PropertyCache>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 216;
      v7 = v4 - 216;
      v8 = v4 - 216;
      do
      {
        v9 = *v8;
        v8 -= 216;
        (*v9)(v7);
        v6 -= 216;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void mlcore::EntityQuery::~EntityQuery(mlcore::EntityQuery *this)
{
  *this = MEMORY[0x1E69B0810] + 16;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  *this = MEMORY[0x1E69B0828] + 16;
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v5 = (this + 56);
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = MEMORY[0x1E69B0838] + 16;
  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN6mlcore13PropertyCache24mergePropertiesFromCacheERKS3_RKNS_8functionIFbPNS2_17ModelPropertyBaseEEEEEd_UlS8_E_NS_9allocatorISD_EES9_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A273E4FDLL))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::PropertyCache>>(unint64_t a1)
{
  if (a1 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::valueForProperty(uint64_t a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>((a1 + 168), a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*a2 + 40))(&v6, a2);
    std::logic_error::logic_error(exception, &v6);
    exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(exception, off_1E7674F98, MEMORY[0x1E69E5280]);
  }

  return v3[3];
}

void sub_1A24954E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1A2495948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2 == 2)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a11);
    (*(*v31 + 24))(&__p, v31, &a11);
    if (a27 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v35 = [v33 stringWithUTF8String:p_p];
    v36 = [v32 exceptionWithName:@"MediaPlatform" reason:v35 userInfo:0];
    v37 = v36;

    if (a27 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v36);
  }

  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v38 + 16))(v38)];
    v41 = [v39 exceptionWithName:*MEMORY[0x1E695D920] reason:v40 userInfo:0];
    v42 = v41;

    objc_exception_throw(v41);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_1A2496004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A24961E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A2496B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7674F98, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_1A249700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A2497258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v27 + 24))(&__p, v27, &a9);
    if (a24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a24 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1A24974A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v21 + 24))(&__p, v21, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v25 = [v23 stringWithUTF8String:p_p];
    v26 = [v22 exceptionWithName:@"MediaPlatform" reason:v25 userInfo:0];
    v27 = v26;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v26);
  }

  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(exception_object);
    v29 = MEMORY[0x1E695DF30];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v28 + 16))(v28)];
    v31 = [v29 exceptionWithName:*MEMORY[0x1E695D920] reason:v30 userInfo:0];
    v32 = v31;

    objc_exception_throw(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A2497760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A2497D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2 == 2)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = MEMORY[0x1E695DF30];
    v32 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a26);
    (*(*v30 + 24))(&__p, v30, &a26);
    if (a17 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v34 = [v32 stringWithUTF8String:p_p];
    v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
    v36 = v35;

    if (a17 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v35);
  }

  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = MEMORY[0x1E695DF30];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v37 + 16))(v37)];
    v40 = [v38 exceptionWithName:*MEMORY[0x1E695D920] reason:v39 userInfo:0];
    v41 = v40;

    objc_exception_throw(v40);
  }

  _Unwind_Resume(a1);
}

void sub_1A24981CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = MEMORY[0x1E695DF30];
    v27 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v25 + 24))(&__p, v25, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v29 = [v27 stringWithUTF8String:p_p];
    v30 = [v26 exceptionWithName:@"MediaPlatform" reason:v29 userInfo:0];
    v31 = v30;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v30);
  }

  if (a2 == 1)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = MEMORY[0x1E695DF30];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v32 + 16))(v32)];
    v35 = [v33 exceptionWithName:*MEMORY[0x1E695D920] reason:v34 userInfo:0];
    v36 = v35;

    objc_exception_throw(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1A24986A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(exception_object);
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v26 + 24))(&a19, v26, &__p);
    if (a24 >= 0)
    {
      v29 = &a19;
    }

    else
    {
      v29 = a19;
    }

    v30 = [v28 stringWithUTF8String:v29];
    v31 = [v27 exceptionWithName:@"MediaPlatform" reason:v30 userInfo:0];
    v32 = v31;

    if (a24 < 0)
    {
      operator delete(a19);
    }

    objc_exception_throw(v31);
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(exception_object);
    v34 = MEMORY[0x1E695DF30];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v33 + 16))(v33)];
    v36 = [v34 exceptionWithName:*MEMORY[0x1E695D920] reason:v35 userInfo:0];
    v37 = v36;

    objc_exception_throw(v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A2498E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2 == 2)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a15);
    (*(*v34 + 24))(&__p, v34, &a15);
    if (a30 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v38 = [v36 stringWithUTF8String:p_p];
    v39 = [v35 exceptionWithName:@"MediaPlatform" reason:v38 userInfo:0];
    v40 = v39;

    if (a30 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v39);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = MEMORY[0x1E695DF30];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v41 + 16))(v41)];
    v44 = [v42 exceptionWithName:*MEMORY[0x1E695D920] reason:v43 userInfo:0];
    v45 = v44;

    objc_exception_throw(v44);
  }

  _Unwind_Resume(a1);
}

void sub_1A249A890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a20);
    (*(*v24 + 24))(&__p, v24, &a20);
    if (a19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a19 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(void *a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A249AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = MEMORY[0x1E695DF30];
    v27 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v25 + 24))(&__p, v25, &a10);
    if (a22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v29 = [v27 stringWithUTF8String:p_p];
    v30 = [v26 exceptionWithName:@"MediaPlatform" reason:v29 userInfo:0];
    v31 = v30;

    if (a22 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v30);
  }

  if (a2 == 1)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = MEMORY[0x1E695DF30];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v32 + 16))(v32)];
    v35 = [v33 exceptionWithName:*MEMORY[0x1E695D920] reason:v34 userInfo:0];
    v36 = v35;

    objc_exception_throw(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1A249B254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A249B438(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A249B688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a2 == 2)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a18);
    (*(*v21 + 24))(&__p, v21, &a18);
    if (a17 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v25 = [v23 stringWithUTF8String:p_p];
    v26 = [v22 exceptionWithName:@"MediaPlatform" reason:v25 userInfo:0];
    v27 = v26;

    if (a17 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v26);
  }

  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = MEMORY[0x1E695DF30];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v28 + 16))(v28)];
    v31 = [v29 exceptionWithName:*MEMORY[0x1E695D920] reason:v30 userInfo:0];
    v32 = v31;

    objc_exception_throw(v31);
  }

  _Unwind_Resume(a1);
}

void sub_1A249BFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A249C2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2 == 2)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = MEMORY[0x1E695DF30];
    v31 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a13);
    (*(*v29 + 24))(&__p, v29, &a13);
    if (a25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v33 = [v31 stringWithUTF8String:p_p];
    v34 = [v30 exceptionWithName:@"MediaPlatform" reason:v33 userInfo:0];
    v35 = v34;

    if (a25 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v34);
  }

  if (a2 == 1)
  {
    v36 = __cxa_begin_catch(a1);
    v37 = MEMORY[0x1E695DF30];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v36 + 16))(v36)];
    v39 = [v37 exceptionWithName:*MEMORY[0x1E695D920] reason:v38 userInfo:0];
    v40 = v39;

    objc_exception_throw(v39);
  }

  _Unwind_Resume(a1);
}

void sub_1A249C718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a11);
    (*(*v27 + 24))(&__p, v27, &a11);
    if (a23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a23 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1A249CA58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  if (a2 == 2)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(va);
    (*(*v10 + 24))(v10, va);
    if (*(v7 - 49) >= 0)
    {
      v13 = v7 - 72;
    }

    else
    {
      v13 = *(v7 - 72);
    }

    v14 = [v12 stringWithUTF8String:v13];
    v15 = [v11 exceptionWithName:@"MediaPlatform" reason:v14 userInfo:0];
    v16 = v15;

    if (*(v7 - 49) < 0)
    {
      operator delete(*(v7 - 72));
    }

    objc_exception_throw(v15);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = MEMORY[0x1E695DF30];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v17 + 16))(v17)];
    v20 = [v18 exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1A249CDCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  if (a2 == 2)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(va);
    (*(*v10 + 24))(v10, va);
    if (*(v7 - 49) >= 0)
    {
      v13 = v7 - 72;
    }

    else
    {
      v13 = *(v7 - 72);
    }

    v14 = [v12 stringWithUTF8String:v13];
    v15 = [v11 exceptionWithName:@"MediaPlatform" reason:v14 userInfo:0];
    v16 = v15;

    if (*(v7 - 49) < 0)
    {
      operator delete(*(v7 - 72));
    }

    objc_exception_throw(v15);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = MEMORY[0x1E695DF30];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v17 + 16))(v17)];
    v20 = [v18 exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__shared_ptr_emplace<std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1495A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void __MPMediaChaptersFromML3Entity_block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a4;
  v6 = [a1[4] countOfGroupsForProperty:a3];
  v7 = v6;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  v9 = [a1[5] mediaLibrary];
  if (v6)
  {
    v10 = 0;
    do
    {
      v11 = [a1[4] chapterIndexForGroupIndex:v10 groupingProperty:a3];
      v12 = -[MPMediaLibraryArtworkRequest initWithLibrary:identifier:entityType:artworkType:]([MPMediaLibraryArtworkRequest alloc], "initWithLibrary:identifier:entityType:artworkType:", v9, [a1[6] persistentID], 0, 3);
      v13 = objc_alloc_init(MPMediaChapter);
      [(MPMediaChapter *)v13 setArtworkRequest:v12];
      v14 = [a1[5] artworkDataSource];
      [(MPMediaChapter *)v13 setArtworkDataSource:v14];

      [(MPMediaChapter *)v13 setChapterType:a2];
      [(MPMediaChapter *)v13 setIndexInChaptersWithSameType:v10];
      [(MPMediaChapter *)v13 setIndexInChaptersWithAnyType:v11];
      -[MPMediaChapter setPlaybackTime:](v13, "setPlaybackTime:", [a1[4] timeLocationInMSOfChapterAtIndex:v11] / 1000.0);
      -[MPMediaChapter setPlaybackDuration:](v13, "setPlaybackDuration:", [a1[4] durationInMSOfGroupAtIndex:v10 groupingProperty:a3] / 1000.0);
      [(MPMediaChapter *)v13 playbackTime];
      [(MPMediaLibraryArtworkRequest *)v12 setRetrievalTime:?];
      v15 = [v8 lastObject];
      if (v15)
      {
        [(MPMediaChapter *)v13 playbackTime];
        v17 = v16;
        [v15 playbackTime];
        [v15 setPlaybackDuration:v17 - v18 + -2.22044605e-16];
      }

      if (v20)
      {
        v20[2]();
      }

      [v8 addObject:v13];

      ++v10;
    }

    while (v7 != v10);
  }

  [a1[7] addObjectsFromArray:v8];
}

void __MPMediaChaptersFromML3Entity_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 titlePropertyOfChapterAtIndex:a3];
  [v5 setValue:v6];
}

void __MPMediaChaptersFromML3Entity_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 urlPropertyOfChapterAtIndex:a3];
  [v5 setValue:v6];
}

void __MPMediaChaptersFromML3Entity_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 urlTitlePropertyOfChapterAtIndex:a3];
  [v5 setValue:v6];
}

void sub_1A24A284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9726(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24A4560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MPFetchArtworkForAddedMediaItems(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v19;
    *&v2 = 134218242;
    v15 = v2;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 artworkCatalog];
        [v7 setDestinationScale:0.0];
        [v7 setFittingSize:{1.79769313e308, 1.79769313e308}];
        v8 = [v7 hasImageOnDisk];
        v9 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          if (v10)
          {
            v11 = [v6 persistentID];
            v12 = [v6 title];
            *buf = v15;
            v23 = v11;
            v24 = 2112;
            v25 = v12;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "Skipping artwork fetch for %lld - %@", buf, 0x16u);
          }
        }

        else
        {
          if (v10)
          {
            v13 = [v6 persistentID];
            v14 = [v6 title];
            *buf = v15;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "Requesting artwork for %lld - %@", buf, 0x16u);
          }

          v9 = [v6 artworkCatalog];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __MPFetchArtworkForAddedMediaItems_block_invoke;
          v17[3] = &unk_1E7677810;
          v17[4] = v6;
          [v9 requestImageWithCompletion:v17];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v3);
  }
}

void __MPFetchArtworkForAddedMediaItems_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) persistentID];
    v4 = [*(a1 + 32) title];
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Received artwork for %lld - %@", &v5, 0x16u);
  }
}

void sub_1A24A5550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24A5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24A70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24A73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24A94B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id MPTrackCloudPropertiesToAggregate()
{
  if (MPTrackCloudPropertiesToAggregate_onceToken != -1)
  {
    dispatch_once(&MPTrackCloudPropertiesToAggregate_onceToken, &__block_literal_global_711);
  }

  v1 = MPTrackCloudPropertiesToAggregate___trackPropertiesToAggregate;

  return v1;
}

void __MPTrackCloudPropertiesToAggregate_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"playCountSinceSync", @"skipCountSinceSync", @"lastPlayedDate", @"lastSkippedDate", 0}];
  v1 = MPTrackCloudPropertiesToAggregate___trackPropertiesToAggregate;
  MPTrackCloudPropertiesToAggregate___trackPropertiesToAggregate = v0;
}

void sub_1A24AB87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void __MPTrackCloudPropertiesToUpload_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"likedState", @"rating", @"_itemLikedState", 0}];
  v1 = MPTrackCloudPropertiesToUpload___trackPropertiesToUpload;
  MPTrackCloudPropertiesToUpload___trackPropertiesToUpload = v0;
}

void sub_1A24AC2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24ACD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B07D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id MPML3CollectionClassFromGroupingType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_1A24B0A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B0BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B0DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B0F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B1170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B1318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B1A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B1D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24B3888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9995(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *ML3CollectionEntityClassForMPMediaItemCollectionProperty(void *a1)
{
  v1 = a1;
  if (ML3CollectionEntityClassForMPMediaItemCollectionProperty_onceToken != -1)
  {
    dispatch_once(&ML3CollectionEntityClassForMPMediaItemCollectionProperty_onceToken, &__block_literal_global_10106);
  }

  v2 = [ML3CollectionEntityClassForMPMediaItemCollectionProperty_propertyToClassMap objectForKeyedSubscript:v1];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_opt_class();
  }

  v4 = v3;

  return v3;
}

void __ML3CollectionEntityClassForMPMediaItemCollectionProperty_block_invoke()
{
  v3[39] = *MEMORY[0x1E69E9840];
  v2[0] = @"albumPersistentID";
  v3[0] = objc_opt_class();
  v2[1] = @"albumName";
  v3[1] = objc_opt_class();
  v2[2] = @"albumSortName";
  v3[2] = objc_opt_class();
  v2[3] = @"albumAlbumArtistPersistentID";
  v3[3] = objc_opt_class();
  v2[4] = @"albumAlbumArtist";
  v3[4] = objc_opt_class();
  v2[5] = @"albumRepresentativeItemPersistentID";
  v3[5] = objc_opt_class();
  v2[6] = @"albumCloudStatus";
  v3[6] = objc_opt_class();
  v2[7] = @"albumStoreID";
  v3[7] = objc_opt_class();
  v2[8] = @"albumCloudLibraryID";
  v3[8] = objc_opt_class();
  v2[9] = @"albumLikedState";
  v3[9] = objc_opt_class();
  v2[10] = @"albumLikedStateChangedDate";
  v3[10] = objc_opt_class();
  v2[11] = @"albumArtistPersistentID";
  v3[11] = objc_opt_class();
  v2[12] = @"albumArtistName";
  v3[12] = objc_opt_class();
  v2[13] = @"albumArtistSortName";
  v3[13] = objc_opt_class();
  v2[14] = @"albumArtistRepresentativeItemPersistentID";
  v3[14] = objc_opt_class();
  v2[15] = @"albumArtistCloudStatus";
  v3[15] = objc_opt_class();
  v2[16] = @"albumArtistStoreID";
  v3[16] = objc_opt_class();
  v2[17] = @"albumArtistCloudUniversalLibraryID";
  v3[17] = objc_opt_class();
  v2[18] = @"albumArtistFavoriteState";
  v3[18] = objc_opt_class();
  v2[19] = @"albumArtistDateFavorited";
  v3[19] = objc_opt_class();
  v2[20] = @"artistPersistentID";
  v3[20] = objc_opt_class();
  v2[21] = @"artistName";
  v3[21] = objc_opt_class();
  v2[22] = @"artistSortName";
  v3[22] = objc_opt_class();
  v2[23] = @"artistRepresentativeItemPersistentID";
  v3[23] = objc_opt_class();
  v2[24] = @"artistCloudStatus";
  v3[24] = objc_opt_class();
  v2[25] = @"artistStoreID";
  v3[25] = objc_opt_class();
  v2[26] = @"artistLikedState";
  v3[26] = objc_opt_class();
  v2[27] = @"artistLikedStateChangedDate";
  v3[27] = objc_opt_class();
  v2[28] = @"composerPersistentID";
  v3[28] = objc_opt_class();
  v2[29] = @"composerName";
  v3[29] = objc_opt_class();
  v2[30] = @"composerSortName";
  v3[30] = objc_opt_class();
  v2[31] = @"composerRepresentativeItemPersistentID";
  v3[31] = objc_opt_class();
  v2[32] = @"composerCloudStatus";
  v3[32] = objc_opt_class();
  v2[33] = @"composerStoreID";
  v3[33] = objc_opt_class();
  v2[34] = @"genrePersistentID";
  v3[34] = objc_opt_class();
  v2[35] = @"genreName";
  v3[35] = objc_opt_class();
  v2[36] = @"genreRepresentativeItemPersistentID";
  v3[36] = objc_opt_class();
  v2[37] = @"genreCloudStatus";
  v3[37] = objc_opt_class();
  v2[38] = @"genreStoreID";
  v3[38] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:39];
  v1 = ML3CollectionEntityClassForMPMediaItemCollectionProperty_propertyToClassMap;
  ML3CollectionEntityClassForMPMediaItemCollectionProperty_propertyToClassMap = v0;
}

id ML3CollectionEntityClassForGroupingType()
{
  v1 = objc_opt_class();

  return v1;
}

id ML3CollectionStoreIDPropertyForGroupingType(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 0x14 && ((0x1FFC1Fu >> v2))
  {
    v3 = **(&unk_1E7677AA0 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A24B8BCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1A24B978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10361(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MPServiceRadioControllerGetXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F154C518];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_serviceRadioControllerGetRadioAvailabilityWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_serviceRadioControllerGetRecentStationGroupsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1A24BA834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary();
  result = dlsym(v2, "MPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A24BAC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void *__getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RadioLibrary();
  result = dlsym(v2, "RadioAvailabilityControllerRadioAvailableDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RadioLibrary();
  result = dlsym(v2, "RadioRecentStationsControllerStationsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary();
  result = dlsym(v2, "MPCJinglePlayActivityReportingControllerDidFlushEventsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RadioLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RadioLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A24BB37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRadioModelClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!RadioLibraryCore_frameworkLibrary_10671)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RadioLibraryCore_block_invoke_10672;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7677C78;
    v8 = 0;
    RadioLibraryCore_frameworkLibrary_10671 = _sl_dlopen();
  }

  if (!RadioLibraryCore_frameworkLibrary_10671)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RadioLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPRadioLibrary.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RadioModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRadioModelClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPRadioLibrary.m" lineNumber:17 description:{@"Unable to find class %s", "RadioModel"}];

LABEL_10:
    __break(1u);
  }

  getRadioModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RadioLibraryCore_block_invoke_10672()
{
  result = _sl_dlopen();
  RadioLibraryCore_frameworkLibrary_10671 = result;
  return result;
}

void sub_1A24C048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFRestrictionsPasscodeControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SettingsFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SettingsFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7677D00;
    v8 = 0;
    SettingsFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SettingsFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SettingsFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPRestrictionsMonitor_ios.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SFRestrictionsPasscodeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFRestrictionsPasscodeControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPRestrictionsMonitor_ios.m" lineNumber:21 description:{@"Unable to find class %s", "SFRestrictionsPasscodeController"}];

LABEL_10:
    __break(1u);
  }

  getSFRestrictionsPasscodeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SettingsFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SettingsFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A24C1B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24C2384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MPCreateImageWithDrawing(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = fabs(a4);
  if (v8 < 2.22044605e-16)
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 scale];
    a4 = v10;

    v8 = fabs(a4);
  }

  v11 = a4;
  if (v8 < 2.22044605e-16)
  {
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 scale];
    v11 = v13;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15 = CGBitmapContextCreate(0, vcvtpd_u64_f64(a2 * v11), vcvtpd_u64_f64(a3 * v11), 8uLL, 0, DeviceRGB, 0x2002u);
  CGContextSetInterpolationQuality(v15, kCGInterpolationHigh);
  CGContextSetFillColorSpace(v15, DeviceRGB);
  CGColorSpaceRelease(DeviceRGB);
  Width = CGBitmapContextGetWidth(v15);
  Height = CGBitmapContextGetHeight(v15);
  if (v7)
  {
    v7[2](v7, v15, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), Width, Height);
  }

  Image = CGBitmapContextCreateImage(v15);
  v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:a4];
  CGImageRelease(Image);
  CGContextRelease(v15);

  return v19;
}

void sub_1A24C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D0930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D2388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D2578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D27A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12853(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24D32D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24D4960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12985(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24D7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13509(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v5 _sectionHeadEntryMapWithExclusiveAccessToken:v7];
    v10 = [v8 sectionIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 identifiersItemEntryMap];
    v13 = [v8 itemIdentifier];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14 == v8)
    {
      v15 = [v8 isDataSourceRemoved] ^ 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

void _MPSectionedIdentifierListEnumeratorAdjustForStartItemInclusionIfNeeded(void *a1, char a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = v7 != 0;
  if ([v7 entryType] == 2 || objc_msgSend(v7, "entryType") == 4)
  {
    v9 = a2;
  }

  else if ([v7 entryType] == 3)
  {
    if ((a2 & 2) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 isRemoved] ^ 1;
    }
  }

  if (a2 & 4) == 0 && (v9)
  {
    v10 = [v11 nextObjectWithExclusiveAccessToken:v8];
  }
}

void sub_1A24D8E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double MPFloatGetSafeScaleForValue(double result)
{
  if (vabdd_f64(0.0, result) < 0.00000011920929)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 scale];
    v3 = v2;

    return v3;
  }

  return result;
}

CGFloat MPRectByRemovingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = MPUIApplication();
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    v19 = MaxX - CGRectGetMaxX(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetMinY(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetHeight(v25);
    return v19;
  }

  return a1;
}

void sub_1A24DBA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14135(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __HomeKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7678488;
    v8 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HomeKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPHomeManagerObserver.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHMHomeManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPHomeManagerObserver.m" lineNumber:21 description:{@"Unable to find class %s", "HMHomeManager"}];

LABEL_10:
    __break(1u);
  }

  getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HomeKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  return result;
}

id _findSettingWithKeyPath(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = @"root.music.allowExplicitContent";
  v3 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 settings];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 keyPath];
        v11 = [v10 isEqualToString:@"root.music.allowExplicitContent"];

        if (v11)
        {
          v16 = v9;
          goto LABEL_19;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 groups];
  v12 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v4);
      }

      v16 = _findSettingWithKeyPath(*(*(&v19 + 1) + 8 * v15));
      if (v16)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v17 = v16;
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  return v17;
}

uint64_t _isValidSetting(void *a1, __CFString *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = @"root.music.allowExplicitContent";
  if (!v3)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v9 = "_isValidSetting() setting=nil";
      v10 = v8;
      v11 = 2;
LABEL_15:
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
    }

LABEL_16:
    v7 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v5 = [v3 keyPath];
  v6 = [v5 isEqualToString:@"root.music.allowExplicitContent"];

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 keyPath];
      v15 = 138543618;
      v16 = @"root.music.allowExplicitContent";
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "_isValidSetting() invalid setting.keypath. Expected:%{public}@ Found:%{public}@", &v15, 0x16u);
    }

    goto LABEL_16;
  }

  if (![v3 valueClass])
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v3 keyPath];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "_isValidSetting() setting with keypath=%{public}@ valueClass=nil. Returning isValid=YES", &v15, 0xCu);
    }

    v7 = 1;
    goto LABEL_17;
  }

  [v3 valueClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = a2;
      v17 = 2114;
      v18 = [v3 valueClass];
      v9 = "_isValidSetting() invalid setting.valueClass. Expected:%{public}@ Found:%{public}@";
      v10 = v8;
      v11 = 22;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v7 = 1;
LABEL_18:

  return v7;
}

void sub_1A24DE348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14429(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24DE534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24DEAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double MPProcessInfoSystemWallClockUptime()
{
  v9 = *MEMORY[0x1E69E9840];
  *v8 = 0x1500000001;
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  tv_sec = v7.tv_sec;
  tv_usec = v7.tv_usec;
  v5 = 0;
  v6 = 0;
  v4 = 16;
  v2 = sysctl(v8, 2u, &v5, &v4, 0, 0);
  result = 0.0;
  if (v2 != -1)
  {
    if (v5)
    {
      return tv_usec / 1000000.0 + tv_sec - (v6 / 1000000.0 + v5);
    }
  }

  return result;
}

__CFString *MPCreateLoggableValueForDSID(void *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = @"nil";
    goto LABEL_54;
  }

  v2 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v3 = [v2 isInternalBuild];

  v4 = v1;
  if (v3)
  {
    goto LABEL_54;
  }

  memset(v56, 0, sizeof(v56));
  CC_SHA1_Init(v56);
  v5 = v4;
  CC_SHA1_Update(v56, [(__CFString *)v5 UTF8String], [(__CFString *)v5 length]);

  memset(&v57[8], 0, 64);
  *v57 = 4001;
  CC_SHA1_Final(&v57[8], v56);
  v58[0] = *v57;
  v58[1] = *&v57[16];
  v58[2] = *&v57[32];
  v58[3] = *&v57[48];
  v59 = *&v57[64];
  if (*v57 > 3999)
  {
    if (*v57 > 4255)
    {
      if (*v57 == 4256)
      {
        v47 = v58 + 8;
        v48 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v49 = v48;
        for (i = 0; i != 64; i += 2)
        {
          v51 = *v47++;
          v52 = &v48[i];
          *v52 = MSVFastHexStringFromBytes_hexCharacters_55966[v51 >> 4];
          v52[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v51 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = v49;
        v20 = 64;
      }

      else
      {
        if (*v57 != 4512)
        {
          goto LABEL_57;
        }

        v25 = v58 + 8;
        v26 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v27 = v26;
        for (j = 0; j != 128; j += 2)
        {
          v29 = *v25++;
          v30 = &v26[j];
          *v30 = MSVFastHexStringFromBytes_hexCharacters_55966[v29 >> 4];
          v30[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v29 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = v27;
        v20 = 128;
      }
    }

    else if (*v57 == 4000)
    {
      v37 = v58 + 8;
      v38 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v39 = v38;
      for (k = 0; k != 32; k += 2)
      {
        v41 = *v37++;
        v42 = &v38[k];
        *v42 = MSVFastHexStringFromBytes_hexCharacters_55966[v41 >> 4];
        v42[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v41 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = v39;
      v20 = 32;
    }

    else
    {
      if (*v57 != 4001)
      {
        goto LABEL_57;
      }

      v12 = v58 + 8;
      v13 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v14 = v13;
      for (m = 0; m != 40; m += 2)
      {
        v16 = *v12++;
        v17 = &v13[m];
        *v17 = MSVFastHexStringFromBytes_hexCharacters_55966[v16 >> 4];
        v17[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v16 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = v14;
      v20 = 40;
    }

LABEL_51:
    v36 = [v18 initWithBytesNoCopy:v19 length:v20 encoding:4 freeWhenDone:{1, 4001, *v56}];
    goto LABEL_52;
  }

  if (*v57 > 2999)
  {
    if (*v57 == 3000)
    {
      LODWORD(v60[0]) = bswap32(DWORD2(v58[0]));
      v43 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v44 = 0;
      v45 = v43 + 1;
      do
      {
        v46 = *(v60 + v44);
        *(v45 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v46 >> 4];
        *v45 = MSVFastHexStringFromBytes_hexCharacters_55966[v46 & 0xF];
        v45 += 2;
        ++v44;
      }

      while (v44 != 4);
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = v43;
      v20 = 8;
    }

    else
    {
      if (*v57 != 3001)
      {
        goto LABEL_57;
      }

      v60[0] = bswap64(*(&v58[0] + 1));
      v21 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v22 = 0;
      v23 = v21 + 1;
      do
      {
        v24 = *(v60 + v22);
        *(v23 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v24 >> 4];
        *v23 = MSVFastHexStringFromBytes_hexCharacters_55966[v24 & 0xF];
        v23 += 2;
        ++v22;
      }

      while (v22 != 8);
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = v21;
      v20 = 16;
    }

    goto LABEL_51;
  }

  if (*v57 == 1000)
  {
    v31 = *(&v58[0] + 1);
    if (*(&v58[0] + 1))
    {
      v32 = &v61 + 1;
      quot = *(&v58[0] + 1);
      do
      {
        v34 = lldiv(quot, 10);
        quot = v34.quot;
        if (v34.rem >= 0)
        {
          LOBYTE(v35) = v34.rem;
        }

        else
        {
          v35 = -v34.rem;
        }

        *(v32 - 2) = v35 + 48;
        v11 = (v32 - 2);
        --v32;
      }

      while (v34.quot);
      if (v31 < 0)
      {
        *(v32 - 2) = 45;
        v11 = (v32 - 2);
      }

      v10 = (&v61 - v11);
      goto LABEL_41;
    }

LABEL_58:
    v4 = @"0";
    goto LABEL_53;
  }

  if (*v57 != 2000)
  {
LABEL_57:
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v54 handleFailureInFunction:v55 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v4 = &stru_1F149ECA8;
    goto LABEL_53;
  }

  v6 = DWORD2(v58[0]);
  if (!DWORD2(v58[0]))
  {
    goto LABEL_58;
  }

  v7 = &v61;
  do
  {
    v8 = ldiv(v6, 10);
    v6 = v8.quot;
    if (v8.rem >= 0)
    {
      LOBYTE(v9) = v8.rem;
    }

    else
    {
      v9 = -v8.rem;
    }

    *(v7 - 1) = v9 + 48;
    v7 = (v7 - 1);
  }

  while (v8.quot);
  v10 = (&v61 - v7);
  v11 = v7;
LABEL_41:
  v36 = CFStringCreateWithBytes(0, v11, v10, 0x8000100u, 0);
LABEL_52:
  v4 = v36;
LABEL_53:

LABEL_54:

  return v4;
}

void MPUIApplicationOpenURL(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = MPUIApplication();
  if (objc_opt_respondsToSelector())
  {
    [v7 openURL:v8 options:v5 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

id MPSharedBackgroundTaskProvider()
{
  if (MPSharedBackgroundTaskProvider_onceToken != -1)
  {
    dispatch_once(&MPSharedBackgroundTaskProvider_onceToken, &__block_literal_global_14676);
  }

  v1 = MPSharedBackgroundTaskProvider_sharedProvider;

  return v1;
}

void __MPSharedBackgroundTaskProvider_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69B14A8]) initWithInvalidationDuration:30.0];
  v1 = MPSharedBackgroundTaskProvider_sharedProvider;
  MPSharedBackgroundTaskProvider_sharedProvider = v0;

  if (!MPSharedBackgroundTaskProvider_sharedProvider)
  {
    v2 = MPUIApplication();
    v3 = MPSharedBackgroundTaskProvider_sharedProvider;
    MPSharedBackgroundTaskProvider_sharedProvider = v2;

    if (!MPSharedBackgroundTaskProvider_sharedProvider)
    {
      v4 = [MEMORY[0x1E69B13E0] sharedProvider];
      v5 = MPSharedBackgroundTaskProvider_sharedProvider;
      MPSharedBackgroundTaskProvider_sharedProvider = v4;
    }
  }
}

os_log_t _MPLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Default");

  return v0;
}

os_log_t _MPLogCategoryAssistant()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Assistant");

  return v0;
}

os_log_t _MPLogCategoryAssistant_Oversize()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Assistant_Oversize");

  return v0;
}

os_log_t _MPLogCategoryInternalSettings()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "InternalSettings");

  return v0;
}

os_log_t _MPLogCategoryInternalSettings_Oversize()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "InternalSettings_Oversize");

  return v0;
}

os_log_t _MPLogCategoryLibrary()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Library");

  return v0;
}

os_log_t _MPLogCategoryRemoteControl()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");

  return v0;
}

os_log_t _MPLogCategoryFavoriting()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");

  return v0;
}

os_log_t _MPLogCategoryPinning()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "Pinning");

  return v0;
}

uint64_t MPPCompoundPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18[0]) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:v18 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v18[0] & 0x7F) << v6;
        if ((v18[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((*&v13 & 0x7FFF8) == 8)
      {
        v14 = objc_alloc_init(MPPMediaPredicate);
        [v3 addPredicates:v14];
        v18[0] = 0;
        v18[1] = 0;
        if (!PBReaderPlaceMark() || !MPPMediaPredicateReadFrom(v14, v4))
        {

LABEL_26:
          v16 = 0;
          goto LABEL_24;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_26;
      }

      v15 = [v4 position];
    }

    while (v15 < [v4 length]);
  }

  v16 = [v4 hasError] ^ 1;
LABEL_24:

  return v16;
}

uint64_t MPPConditionalPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v20[0]) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:v20 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v20[0] & 0x7F) << v6;
        if ((v20[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3);
      switch(v14)
      {
        case 3:
          v15 = objc_alloc_init(MPPMediaPredicate);
          v16 = 16;
          break;
        case 2:
          v15 = objc_alloc_init(MPPMediaPredicate);
          v16 = 24;
          break;
        case 1:
          v15 = objc_alloc_init(MPPMediaPredicate);
          v16 = 8;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
      }

      objc_storeStrong(&v3[v16], v15);
      v20[0] = 0;
      v20[1] = 0;
      if (!PBReaderPlaceMark() || !MPPMediaPredicateReadFrom(v15, v4))
      {

LABEL_31:
        v18 = 0;
        goto LABEL_29;
      }

      PBReaderRecallMark();

LABEL_27:
      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  v18 = [v4 hasError] ^ 1;
LABEL_29:

  return v18;
}

uint64_t MPPMediaPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v26 & 0x7F) << v6;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3);
      if (v14 > 3)
      {
        switch(v14)
        {
          case 4u:
            v15 = objc_alloc_init(MPPConditionalPredicate);
            objc_storeStrong(v3 + 2, v15);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !MPPConditionalPredicateReadFrom(v15, v4))
            {
LABEL_58:

LABEL_59:
              v24 = 0;
              goto LABEL_57;
            }

            goto LABEL_49;
          case 5u:
            v15 = objc_alloc_init(MPPPersistentIDsPredicate);
            objc_storeStrong(v3 + 3, v15);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !MPPPersistentIDsPredicateReadFrom(v15, v4))
            {
              goto LABEL_58;
            }

            goto LABEL_49;
          case 6u:
            v15 = objc_alloc_init(MPPSearchStringPredicate);
            objc_storeStrong(v3 + 5, v15);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !MPPSearchStringPredicateReadFrom(v15, v4))
            {
              goto LABEL_58;
            }

            goto LABEL_49;
        }
      }

      else
      {
        switch(v14)
        {
          case 1u:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(v3 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v26) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v26 & 0x7F) << v16;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v12 = v17++ >= 9;
              if (v12)
              {
                v22 = 0;
                goto LABEL_55;
              }
            }

            if ([v4 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_55:
            *(v3 + 12) = v22;
            goto LABEL_50;
          case 2u:
            v15 = objc_alloc_init(MPPPropertyPredicate);
            objc_storeStrong(v3 + 4, v15);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !MPPPropertyPredicateReadFrom(v15, v4))
            {
              goto LABEL_58;
            }

            goto LABEL_49;
          case 3u:
            v15 = objc_alloc_init(MPPCompoundPredicate);
            objc_storeStrong(v3 + 1, v15);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !MPPCompoundPredicateReadFrom(v15, v4))
            {
              goto LABEL_58;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_50:
      v23 = [v4 position];
    }

    while (v23 < [v4 length]);
  }

  v24 = [v4 hasError] ^ 1;
LABEL_57:

  return v24;
}

uint64_t MPPMediaPredicateValueReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v48 & 0x7F) << v6;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3);
      if (v14 <= 3)
      {
        switch(v14)
        {
          case 1u:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v28 |= (v48 & 0x7F) << v26;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v12 = v27++ >= 9;
              if (v12)
              {
                v32 = 0;
                goto LABEL_67;
              }
            }

            if ([v4 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_67:
            v3[12] = v32;
            goto LABEL_78;
          case 2u:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(v3 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v39 = [v4 position] + 1;
              if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
              {
                v41 = [v4 data];
                [v41 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v38 |= (v48 & 0x7F) << v36;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v12 = v37++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_73;
              }
            }

            if ([v4 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_73:
            *(v3 + 2) = v42;
            goto LABEL_78;
          case 3u:
            *(v3 + 56) |= 1u;
            v48 = 0;
            v22 = [v4 position] + 8;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 8, v23 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            *(v3 + 1) = v48;
            goto LABEL_78;
        }
      }

      else if ((v13 >> 3) > 5u)
      {
        if (v14 == 6)
        {
          v24 = PBReaderReadString();
          v25 = 10;
          goto LABEL_54;
        }

        if (v14 == 7)
        {
          v24 = PBReaderReadData();
          v25 = 6;
LABEL_54:
          v35 = *&v3[v25];
          *&v3[v25] = v24;

          goto LABEL_78;
        }
      }

      else
      {
        if (v14 == 4)
        {
          *(v3 + 56) |= 4u;
          LODWORD(v48) = 0;
          v33 = [v4 position] + 4;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 4, v34 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v48 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v3[8] = v48;
          goto LABEL_78;
        }

        if (v14 == 5)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(v3 + 56) |= 8u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v18 = [v4 position] + 1;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
            {
              v20 = [v4 data];
              [v20 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v17 |= (v48 & 0x7F) << v15;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              LOBYTE(v21) = 0;
              goto LABEL_69;
            }
          }

          v21 = (v17 != 0) & ~[v4 hasError];
LABEL_69:
          *(v3 + 52) = v21;
          goto LABEL_78;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        v47 = 0;
        goto LABEL_80;
      }

LABEL_78:
      v45 = [v4 position];
    }

    while (v45 < [v4 length]);
  }

  v47 = [v4 hasError] ^ 1;
LABEL_80:

  return v47;
}

uint64_t MPPPersistentIDsPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v38[0] & 0x7F) << v6;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3);
      if (v14 == 2)
      {
        if ((v13 & 7) == 2)
        {
          v38[0] = 0;
          v38[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_62;
          }

          while (1)
          {
            v22 = [v4 position];
            if (v22 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
            {
              break;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              v39 = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (v39 & 0x7F) << v23;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v12 = v24++ >= 9;
              if (v12)
              {
                goto LABEL_42;
              }
            }

            [v4 hasError];
LABEL_42:
            PBRepeatedInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v31 |= (v38[0] & 0x7F) << v29;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              goto LABEL_58;
            }
          }

          [v4 hasError];
LABEL_58:
          PBRepeatedInt64Add();
        }
      }

      else if (v14 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v3[36] |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v38[0] & 0x7F) << v15;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            LOBYTE(v21) = 0;
            goto LABEL_46;
          }
        }

        v21 = (v17 != 0) & ~[v4 hasError];
LABEL_46:
        v3[32] = v21;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_62:
        v36 = 0;
        goto LABEL_61;
      }

      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  v36 = [v4 hasError] ^ 1;
LABEL_61:

  return v36;
}

uint64_t MPPPropertyPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v28[0] & 0x7F) << v6;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3);
      switch(v14)
      {
        case 3:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(v3 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v28[0]) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:v28 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v28[0] & 0x7F) << v18;
            if ((v28[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              v24 = 0;
              goto LABEL_38;
            }
          }

          if ([v4 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_38:
          *(v3 + 2) = v24;
          break;
        case 2:
          v17 = objc_alloc_init(MPPMediaPredicateValue);
          objc_storeStrong(v3 + 3, v17);
          v28[0] = 0;
          v28[1] = 0;
          if (!PBReaderPlaceMark() || !MPPMediaPredicateValueReadFrom(v17, v4))
          {

LABEL_43:
            v26 = 0;
            goto LABEL_41;
          }

          PBReaderRecallMark();

          break;
        case 1:
          v15 = PBReaderReadString();
          v16 = *(v3 + 2);
          *(v3 + 2) = v15;

          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_43;
          }

          break;
      }

      v25 = [v4 position];
    }

    while (v25 < [v4 length]);
  }

  v26 = [v4 hasError] ^ 1;
LABEL_41:

  return v26;
}

id MPPCreateFoundationObjectFromPredicateValue(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = 0;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "BOOLPredicateValue")}];
        break;
      case 5:
        v5 = [v1 stringPredicateValue];
        break;
      case 6:
        v5 = [v1 bytesPredicateValue];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "integerPredicateValue")}];
        break;
      case 2:
        v6 = MEMORY[0x1E696AD98];
        [v1 doublePredicateValue];
        v5 = [v6 numberWithDouble:?];
        break;
      case 3:
        v4 = MEMORY[0x1E696AD98];
        [v1 floatPredicateValue];
        v5 = [v4 numberWithFloat:?];
        break;
      default:
        goto LABEL_15;
    }
  }

  v3 = v5;
LABEL_15:
  v7 = [v3 copy];

  return v7;
}

MPPMediaPredicateValue *MPPCreatePredicateValueFromFoundationObject(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MPPMediaPredicateValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v4 = *[v3 objCType];
    if (v4 <= 0x50)
    {
      if (v4 - 66 >= 2 && v4 != 73 && v4 != 76)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v4 - 83;
      if (v5 > 0x20)
      {
LABEL_21:
        if (v4 != 81)
        {
          goto LABEL_17;
        }

        [(MPPMediaPredicateValue *)v2 setType:1];
        v6 = [v3 unsignedLongLongValue];
        goto LABEL_16;
      }

      if (((1 << (v4 - 83)) & 0x142410001) == 0)
      {
        if (v5 == 17)
        {
          [(MPPMediaPredicateValue *)v2 setType:2];
          [v3 doubleValue];
          [(MPPMediaPredicateValue *)v2 setDoublePredicateValue:?];
          goto LABEL_17;
        }

        if (v5 == 19)
        {
          [(MPPMediaPredicateValue *)v2 setType:3];
          [v3 floatValue];
          [(MPPMediaPredicateValue *)v2 setFloatPredicateValue:?];
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    [(MPPMediaPredicateValue *)v2 setType:1];
    v6 = [v3 longLongValue];
LABEL_16:
    [(MPPMediaPredicateValue *)v2 setIntegerPredicateValue:v6];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MPPMediaPredicateValue *)v2 setType:5];
    [(MPPMediaPredicateValue *)v2 setStringPredicateValue:v1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MPPMediaPredicateValue *)v2 setType:6];
      [(MPPMediaPredicateValue *)v2 setBytesPredicateValue:v1];
    }
  }

LABEL_18:

  return v2;
}

id MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 hasType] && objc_msgSend(v3, "type") - 1 <= 4 && (v5 = objc_opt_class()) != 0)
  {
    v6 = [[v5 alloc] initWithProtobufferDecodableObject:v3 library:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t MPPSearchStringPredicateReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_25;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v20 = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v20 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v20 & 0x7F) << v6;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        goto LABEL_25;
      }

      v14 = (v13 >> 3);
      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        v16 = v3[2];
        v3[2] = v15;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        v18 = 0;
        goto LABEL_26;
      }

LABEL_24:
      v17 = [v4 position];
      if (v17 >= [v4 length])
      {
        goto LABEL_25;
      }
    }

    v16 = PBReaderReadString();
    if (v16)
    {
      [v3 addProperties:v16];
    }

    goto LABEL_22;
  }

LABEL_25:
  v18 = [v4 hasError] ^ 1;
LABEL_26:

  return v18;
}

void sub_1A24E9D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MPStoreItemMetadataInt64NormalizeStoreIDValue(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MPStoreItemMetadataItemKindIsArtistUploadedContent(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"uploadedAudio"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"uploadedVideo"];
  }

  return v2;
}

id MPStoreItemMetadataSubscriptionOfferInOffers(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 offerType];
        if (([v7 isEqualToString:@"subscription"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"redownload"))
        {
          v8 = v6;

          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

BOOL MPStoreItemMetadataItemKindIsContainerKind(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a1 isEqualToString:{@"album", 0x1F149E348, 0x1F149E308, @"playlist", @"brand", 0x1F14A6448, 0x1F14A65E8}])
  {
    v2 = 1;
  }

  else
  {
    v3 = &v8 + 1;
    v4 = -1;
    while (v4 != 4)
    {
      v5 = *v3++;
      ++v4;
      if ([a1 isEqualToString:v5])
      {
        goto LABEL_8;
      }
    }

    v4 = 5;
LABEL_8:
    v2 = v4 < 5;
  }

  for (i = 40; i != -8; i -= 8)
  {
  }

  return v2;
}

void MPStoreItemMetadataItemKindGetPlayabilityInformation(void *a1, BOOL *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = @"song";
  v7 = @"song";
  if ([a1 isEqualToString:{@"song", xmmword_1E7678690, *&off_1E76786A0, xmmword_1E76786B0}])
  {
    v8 = 0;
    v9 = 1;
LABEL_7:
    v11 = byte_1A273E644[v8];

    if (a2)
    {
LABEL_8:
      *a2 = v9;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {

      if (v10 == 5)
      {
        break;
      }

      v8 = v10 + 1;
      v6 = *(&v13 + ++v10);
      if ([a1 isEqualToString:v6])
      {
        v9 = (v8 - 1) < 5;
        goto LABEL_7;
      }
    }

    v9 = 0;
    v11 = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    *a3 = v11 & 1;
  }

  for (i = 40; i != -8; i -= 8)
  {
  }
}

id MPStoreItemMetadataNumberNormalizeStoreIDValue(void *a1)
{
  v1 = a1;
  if (_NSIsNSNumber())
  {
    v2 = v1;
LABEL_6:
    v3 = v2;
    goto LABEL_7;
  }

  if (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id MPStoreItemMetadataStringNormalizeStoreIDValue(void *a1)
{
  v1 = a1;
  if (_NSIsNSString())
  {
    v2 = v1;
LABEL_6:
    v3 = v2;
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v1 longLongValue])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", objc_msgSend(v1, "longLongValue")];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id MPStoreItemMetadataYearFromReleaseDate(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = [v2 component:4 fromDate:v1];

    if (v3)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *MPNSStringForMPMediaEntityLikedState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7678740[a1 - 1];
  }
}

void sub_1A24F4954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24F541C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t MPShuffleTypeForMPMusicShuffleMode(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 1000;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t MPMusicShuffleModeForMPShuffleType(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MPRepeatTypeForMPMusicRepeatMode(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 3;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t MPMusicRepeatModeForMPRepeatType(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *_NSStringFromMPMediaType(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == -1)
  {
    v7 = @"anyMedia";
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 6; ++i)
    {
      if ((_NSStringFromMPMediaType_types1[i] & ~a1) == 0)
      {
        [v4 addObject:_NSStringFromMPMediaType_strings1[i]];
        if (!i)
        {
          break;
        }
      }
    }

    for (j = 0; j != 7; ++j)
    {
      if ((_NSStringFromMPMediaType_types2[j] & ~a1) == 0)
      {
        [v4 addObject:_NSStringFromMPMediaType_strings2[j]];
        if (!j)
        {
          break;
        }
      }
    }

    v7 = [v4 componentsJoinedByString:v3];
  }

  return v7;
}

void sub_1A24FADF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FB174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FB420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FB684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FBE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSKCloudServiceControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __StoreKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E76796A8;
    v8 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPMediaLibrary.m" lineNumber:73 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SKCloudServiceController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSKCloudServiceControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPMediaLibrary.m" lineNumber:74 description:{@"Unable to find class %s", "SKCloudServiceController"}];

LABEL_10:
    __break(1u);
  }

  getSKCloudServiceControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A24FD1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FD428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A24FE490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18543(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A24FEA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A24FEDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A24FF0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24FF458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24FF7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A24FFB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2500010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__351(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A2500904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A25070CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2508434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A25090EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18853(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2509600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2509C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A250A244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A250AFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A250B1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A250B46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A250B738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A250F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A250FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MPMediaItemPropertyIsPersistentIDProperty(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = a1;
  v3 = [v1 setWithObjects:{@"persistentID", @"albumPID", @"artistPID", @"albumArtistPID", @"genrePID", @"composerPID", @"podcastPID", @"playlistPersistentID", 0}];
  v4 = [v3 containsObject:v2];

  return v4;
}

void sub_1A25165A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19942(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_NSStringFromMPMediaGrouping(unint64_t a1)
{
  if (a1 > 0x16)
  {
    return @"(unknown grouping type)";
  }

  else
  {
    return off_1E7679DB0[a1];
  }
}

void sub_1A2519330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MPTitlePropertyForPidProperty(void *a1)
{
  v1 = _MPTitlePropertyForPidProperty_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_MPTitlePropertyForPidProperty_onceToken, &__block_literal_global_696);
  }

  v3 = [_MPTitlePropertyForPidProperty___pidPropertyToAlbumMappings objectForKey:v2];

  return v3;
}

void sub_1A251CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2522780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22043(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A252365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22396(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2526778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A252690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromMPModelRadioStationType(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E767A0E8[a1 - 1];
  }
}

__CFString *NSStringFromMPModelRadioStationSubtype(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Episode";
  }

  if (a1 == 2)
  {
    return @"Broadcast";
  }

  else
  {
    return v1;
  }
}

BOOL MPModelMovieIsRestricted(void *a1)
{
  v1 = a1;
  if ([v1 hasLoadedValueForKey:@"MPModelPropertyMovieExplicitRating"])
  {
    v2 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    v3 = [v2 maximumMovieRating];

    v4 = [v1 explicitRating] > v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL MPModelTVEpisodeIsRestricted(void *a1)
{
  v1 = a1;
  if ([v1 hasLoadedValueForKey:@"MPModelPropertyTVEpisodeExplicitRating"])
  {
    v2 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    v3 = [v2 maximumTVShowRating];

    v4 = [v1 explicitRating] > v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __Block_byref_object_copy__26611(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromMPModelGenericObjectType(unint64_t a1)
{
  if (a1 >= 0x16)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownGenericObjectType-%ld", a1];
  }

  else
  {
    v2 = off_1E767A300[a1];
  }

  return v2;
}

void _MPModelObject_d_setterIMP(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_f_setterIMP(void *a1, uint64_t a2, float a3)
{
  v5 = a1;
  v8 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  *&v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setValue:v7 forModelKey:v8];
}

void _MPModelObject_Q_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_L_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_S_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_I_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_C_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_q_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_l_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_s_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithShort:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_i_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_c_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject_B_setterIMP(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setValue:v6 forModelKey:v7];
}

void _MPModelObject__setterIMP(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  [v6 setValue:v5 forModelKey:v7];
}

double _MPModelObject_d_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

float _MPModelObject_f_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

uint64_t _MPModelObject_Q_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 unsignedLongLongValue];
  return v6;
}

uint64_t _MPModelObject_L_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 unsignedLongValue];
  return v6;
}

uint64_t _MPModelObject_S_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 unsignedShortValue];
  return v6;
}

uint64_t _MPModelObject_I_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 unsignedIntValue];
  return v6;
}

uint64_t _MPModelObject_C_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 unsignedCharValue];
  return v6;
}

uint64_t _MPModelObject_l_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 longValue];
  return v6;
}

uint64_t _MPModelObject_s_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 shortValue];
  return v6;
}

uint64_t _MPModelObject_i_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 intValue];
  return v6;
}

uint64_t _MPModelObject_c_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 BOOLValue];
  return v6;
}

void sub_1A2537878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MPModelPropertyMappingMissing(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"__%@__MAPPING_MISSING__", v10];
  v7 = NSSelectorFromString(v6);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MPModelPropertyMappingMissing(__unsafe_unretained Class _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"MPModelObject.m" lineNumber:716 description:{@"Unknown property %@:%@ / missing property mapping: %@", a1, v10, v5}];
  }

  [a1 performSelector:v7];
}

_DWORD *_MSV_XXH_XXH32_update_27340(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

void sub_1A2542968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__28203(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A2542E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A25469E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28637(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2547698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 2)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = MEMORY[0x1E695DF30];
    v30 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v28 + 24))(&__p, v28, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v32 = [v30 stringWithUTF8String:p_p];
    v33 = [v29 exceptionWithName:@"MediaPlatform" reason:v32 userInfo:0];
    v34 = v33;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v33);
  }

  if (a2 == 1)
  {
    v35 = __cxa_begin_catch(a1);
    v36 = MEMORY[0x1E695DF30];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v35 + 16))(v35)];
    v38 = [v36 exceptionWithName:*MEMORY[0x1E695D920] reason:v37 userInfo:0];
    v39 = v38;

    objc_exception_throw(v38);
  }

  _Unwind_Resume(a1);
}

void sub_1A2547A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v24 + 24))(&__p, v24, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v28 = [v26 stringWithUTF8String:p_p];
    v29 = [v25 exceptionWithName:@"MediaPlatform" reason:v28 userInfo:0];
    v30 = v29;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v29);
  }

  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v31 + 16))(v31)];
    v34 = [v32 exceptionWithName:*MEMORY[0x1E695D920] reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1A254843C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  if (a67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a67);
  }

  if (a2 == 2)
  {
    v70 = __cxa_begin_catch(a1);
    v71 = MEMORY[0x1E695DF30];
    v72 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v70 + 24))(&a20, v70, &__p);
    if (a25 >= 0)
    {
      v73 = &a20;
    }

    else
    {
      v73 = a20;
    }

    v74 = [v72 stringWithUTF8String:v73];
    v75 = [v71 exceptionWithName:@"MediaPlatform" reason:v74 userInfo:0];
    v76 = v75;

    if (a25 < 0)
    {
      operator delete(a20);
    }

    objc_exception_throw(v75);
  }

  if (a2 == 1)
  {
    v77 = __cxa_begin_catch(a1);
    v78 = MEMORY[0x1E695DF30];
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v77 + 16))(v77)];
    v80 = [v78 exceptionWithName:*MEMORY[0x1E695D920] reason:v79 userInfo:0];
    v81 = v80;

    objc_exception_throw(v80);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<std::vector<mlcore::PropertyCache>>::shared_ptr[abi:ne200100]<std::vector<mlcore::PropertyCache>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1A2548870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::vector<mlcore::PropertyCache>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::vector<mlcore::PropertyCache>::__emplace_back_slow_path<mlcore::PropertyCache const&>(uint64_t *a1)
{
  v1 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x12F684BDA12F684)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v4 = 0x12F684BDA12F684;
  }

  else
  {
    v4 = v2;
  }

  v22 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::PropertyCache>>(v4);
  }

  v19 = 0;
  v20 = 216 * v1;
  v21 = 216 * v1;
  mlcore::PropertyCache::PropertyCache();
  v5 = *a1;
  v6 = a1[1];
  v7 = 216 * v1 - (v6 - *a1);
  *&v21 = 216 * v1 + 216;
  if (v6 != v5)
  {
    v8 = 0;
    v9 = v20 - 8 * (v6 - v5) - 216;
    v10 = v5;
    v11 = v7;
    do
    {
      mlcore::PropertyCache::PropertyCache();
      v10 += 27;
      v11 += 216;
      v8 -= 216;
      v9 += 216;
    }

    while (v10 != v6);
    v12 = v5;
    v13 = v5;
    do
    {
      v14 = *v13;
      v13 += 27;
      (*v14)(v5);
      v12 += 27;
      v5 = v13;
    }

    while (v13 != v6);
  }

  v15 = *a1;
  *a1 = v7;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<mlcore::PropertyCache>::~__split_buffer(&v19);
  return v18;
}

void sub_1A2548E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<mlcore::PropertyCache>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1A2548F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::EntityQueryResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1496808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::EntityCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14975F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

uint64_t std::__split_buffer<mlcore::PropertyCache>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 216);
    *(a1 + 16) = i - 216;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***std::unique_ptr<std::vector<mlcore::PropertyCache>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1A58E14E0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::vector<mlcore::PropertyCache> *,std::shared_ptr<std::vector<mlcore::PropertyCache>>::__shared_ptr_default_delete<std::vector<mlcore::PropertyCache>,std::vector<mlcore::PropertyCache>>,std::allocator<std::vector<mlcore::PropertyCache>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A273F0E6))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<std::vector<mlcore::PropertyCache> *,std::shared_ptr<std::vector<mlcore::PropertyCache>>::__shared_ptr_default_delete<std::vector<mlcore::PropertyCache>,std::vector<mlcore::PropertyCache>>,std::allocator<std::vector<mlcore::PropertyCache>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x1A58E14E0);
  }

  return result;
}

void std::__shared_ptr_pointer<std::vector<mlcore::PropertyCache> *,std::shared_ptr<std::vector<mlcore::PropertyCache>>::__shared_ptr_default_delete<std::vector<mlcore::PropertyCache>,std::vector<mlcore::PropertyCache>>,std::allocator<std::vector<mlcore::PropertyCache>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A25496D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MPModelLibraryDownloadQueueResponse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A25497A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A2549F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a2 == 2)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v35 - 144));
    (*(*v38 + 24))(&__p, v38, v35 - 144);
    if (a15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v42 = [v40 stringWithUTF8String:p_p];
    v43 = [v39 exceptionWithName:@"MediaPlatform" reason:v42 userInfo:0];
    v44 = v43;

    if (a15 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v43);
  }

  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x1E695DF30];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v45 + 16))(v45)];
    v48 = [v46 exceptionWithName:*MEMORY[0x1E695D920] reason:v47 userInfo:0];
    v49 = v48;

    objc_exception_throw(v48);
  }

  _Unwind_Resume(a1);
}

void sub_1A254A3C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<mlcore::Predicate>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<mlcore::Predicate>>,std::shared_ptr<mlcore::Predicate>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A254AFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *__Block_byref_object_copy__28942(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A254BCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, std::__shared_weak_count *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v48 = *(v46 - 240);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v46 - 224);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_112c54_ZTSNSt3__110shared_ptrIN6mlcore17EntityQueryResultEEE(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_112c54_ZTSNSt3__110shared_ptrIN6mlcore17EntityQueryResultEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(result + 120) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__tree<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::__map_value_compare<long long,std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::shared_ptr<mlcore::EntityQueryResult>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A254C43C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A254C504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<mlcore::PropertyCache>::push_back[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    result = std::vector<mlcore::PropertyCache>::__emplace_back_slow_path<mlcore::PropertyCache const&>(a1);
  }

  else
  {
    mlcore::PropertyCache::PropertyCache();
    result = v2 + 216;
    a1[1] = v2 + 216;
  }

  a1[1] = result;
  return result;
}

void std::vector<mlcore::Section>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlcore::Section>,mlcore::Section*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::Section>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<std::vector<mlcore::Section>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14968A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::EntityQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149A5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::UnaryPredicate<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B7A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void sub_1A254C9A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A254CCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  _Block_object_dispose((v34 - 120), 8);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

void sub_1A254D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1A254E688(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v40 = STACK[0x490];
  if (STACK[0x490])
  {
    STACK[0x498] = v40;
    operator delete(v40);
  }

  if (STACK[0x448])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x448]);
  }

  if (a2 == 2)
  {
    v41 = __cxa_begin_catch(a1);
    v42 = MEMORY[0x1E695DF30];
    v43 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&STACK[0x490]);
    (*(*v41 + 24))(&STACK[0x428], v41, &STACK[0x490]);
    if (SLOBYTE(STACK[0x43F]) >= 0)
    {
      v44 = &STACK[0x428];
    }

    else
    {
      v44 = STACK[0x428];
    }

    v45 = [v43 stringWithUTF8String:v44];
    v46 = [v42 exceptionWithName:@"MediaPlatform" reason:v45 userInfo:0];
    v47 = v46;

    if (SLOBYTE(STACK[0x43F]) < 0)
    {
      operator delete(STACK[0x428]);
    }

    objc_exception_throw(v46);
  }

  if (a2 == 1)
  {
    v48 = __cxa_begin_catch(a1);
    v49 = MEMORY[0x1E695DF30];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v48 + 16))(v48)];
    v51 = [v49 exceptionWithName:*MEMORY[0x1E695D920] reason:v50 userInfo:0];
    v52 = v51;

    objc_exception_throw(v51);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<std::vector<mlcore::Section>>::shared_ptr[abi:ne200100]<std::vector<mlcore::Section>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1A254F05C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::vector<mlcore::Section>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A254F4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__split_buffer<mlcore::Section>::~__split_buffer(&a26);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrINS_6vectorIN6mlcore7SectionENS_9allocatorIS3_EEEEEE48c107_ZTSNSt3__110shared_ptrINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrINS_6vectorIN6mlcore7SectionENS_9allocatorIS3_EEEEEE48c107_ZTSNSt3__110shared_ptrINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__split_buffer<mlcore::Section>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1496858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void __destroy_helper_block_ea8_64c82_ZTSNSt3__110shared_ptrINS_6vectorIN6mlcore13PropertyCacheENS_9allocatorIS3_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_64c82_ZTSNSt3__110shared_ptrINS_6vectorIN6mlcore13PropertyCacheENS_9allocatorIS3_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ***std::unique_ptr<std::vector<mlcore::Section>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<mlcore::Section>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1A58E14E0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::vector<mlcore::Section> *,std::shared_ptr<std::vector<mlcore::Section>>::__shared_ptr_default_delete<std::vector<mlcore::Section>,std::vector<mlcore::Section>>,std::allocator<std::vector<mlcore::Section>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A273F1F1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<std::vector<mlcore::Section> *,std::shared_ptr<std::vector<mlcore::Section>>::__shared_ptr_default_delete<std::vector<mlcore::Section>,std::vector<mlcore::Section>>,std::allocator<std::vector<mlcore::Section>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    std::vector<mlcore::Section>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x1A58E14E0);
  }

  return result;
}

void std::__shared_ptr_pointer<std::vector<mlcore::Section> *,std::shared_ptr<std::vector<mlcore::Section>>::__shared_ptr_default_delete<std::vector<mlcore::Section>,std::vector<mlcore::Section>>,std::allocator<std::vector<mlcore::Section>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

_DWORD *_MSV_XXH_XXH32_update_29287(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    *result = v7;
    result[1] = v6 | (v7 > 0xF);
    v8 = result[10];
    if (v8 + __n <= 0xF)
    {
      result = memcpy(result + v8 + 24, __src, __n);
      LODWORD(v9) = v5[10] + v3;
LABEL_12:
      v5[10] = v9;
      return result;
    }

    v10 = &__src[__n];
    if (v8)
    {
      result = memcpy(result + v8 + 24, __src, (16 - v8));
      HIDWORD(v11) = v5[2] - 2048144777 * v5[6];
      LODWORD(v11) = HIDWORD(v11);
      v12 = -1640531535 * (v11 >> 19);
      HIDWORD(v11) = v5[3] - 2048144777 * v5[7];
      LODWORD(v11) = HIDWORD(v11);
      v5[2] = v12;
      v5[3] = -1640531535 * (v11 >> 19);
      v13 = v5[9];
      HIDWORD(v11) = v5[4] - 2048144777 * v5[8];
      LODWORD(v11) = HIDWORD(v11);
      v5[4] = -1640531535 * (v11 >> 19);
      HIDWORD(v11) = v5[5] - 2048144777 * v13;
      LODWORD(v11) = HIDWORD(v11);
      v5[5] = -1640531535 * (v11 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v10 - 16)
    {
      v14 = v5[2];
      v15 = v5[3];
      v16 = v5[4];
      v17 = v5[5];
      do
      {
        HIDWORD(v18) = v14 - 2048144777 * *v4;
        LODWORD(v18) = HIDWORD(v18);
        v14 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v15 - 2048144777 * *(v4 + 1);
        LODWORD(v18) = HIDWORD(v18);
        v15 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v16 - 2048144777 * *(v4 + 2);
        LODWORD(v18) = HIDWORD(v18);
        v16 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v17 - 2048144777 * *(v4 + 3);
        LODWORD(v18) = HIDWORD(v18);
        v17 = -1640531535 * (v18 >> 19);
        v4 += 16;
      }

      while (v4 <= v10 - 16);
      v5[2] = v14;
      v5[3] = v15;
      v5[4] = v16;
      v5[5] = v17;
    }

    if (v4 < v10)
    {
      v9 = v10 - v4;
      result = memcpy(v5 + 6, v4, v9);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1A2555E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a2 == 2)
  {
    v46 = __cxa_begin_catch(exception_object);
    v47 = MEMORY[0x1E695DF30];
    v48 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v43 - 152));
    (*(*v46 + 24))(v46, v43 - 152);
    if (*(v43 - 73) >= 0)
    {
      v49 = v43 - 96;
    }

    else
    {
      v49 = *(v43 - 96);
    }

    v50 = [v48 stringWithUTF8String:v49];
    v51 = [v47 exceptionWithName:@"MediaPlatform" reason:v50 userInfo:0];
    v52 = v51;

    if (*(v43 - 73) < 0)
    {
      operator delete(*(v43 - 96));
    }

    objc_exception_throw(v51);
  }

  if (a2 == 1)
  {
    v53 = __cxa_begin_catch(exception_object);
    v54 = MEMORY[0x1E695DF30];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v53 + 16))(v53)];
    v56 = [v54 exceptionWithName:*MEMORY[0x1E695D920] reason:v55 userInfo:0];
    v57 = v56;

    objc_exception_throw(v56);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A255624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_1A255630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1A25568C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, std::__shared_weak_count *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *(v51 - 144) = &a20;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v51 - 144));
  *(v51 - 144) = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v51 - 144));
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  if (a2 == 2)
  {
    v54 = __cxa_begin_catch(a1);
    v55 = MEMORY[0x1E695DF30];
    v56 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v51 - 144));
    (*(*v54 + 24))(&__p, v54, v51 - 144);
    if (a42 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v58 = [v56 stringWithUTF8String:p_p];
    v59 = [v55 exceptionWithName:@"MediaPlatform" reason:v58 userInfo:0];
    v60 = v59;

    if (a42 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v59);
  }

  if (a2 == 1)
  {
    v61 = __cxa_begin_catch(a1);
    v62 = MEMORY[0x1E695DF30];
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v61 + 16))(v61)];
    v64 = [v62 exceptionWithName:*MEMORY[0x1E695D920] reason:v63 userInfo:0];
    v65 = v64;

    objc_exception_throw(v64);
  }

  _Unwind_Resume(a1);
}

void sub_1A2556CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2556D44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A255707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, void *a10)
{
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(a1);
}

void sub_1A25571D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

size_t *std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<mlcore::Predicate>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A25576B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, void **a25, std::__shared_weak_count *a26)
{
  a23 = &a18;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a23);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  a25 = (v28 - 104);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c45_ZTSNSt3__110shared_ptrIN6mlcore9PredicateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c45_ZTSNSt3__110shared_ptrIN6mlcore9PredicateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A25578A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::Predicate>>,std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<mlcore::Predicate>>,std::shared_ptr<mlcore::Predicate>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__split_buffer<std::shared_ptr<mlcore::Predicate>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<mlcore::ComparisonPredicate<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::AggregateFunctionQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F14979E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void __destroy_helper_block_ea8_48c45_ZTSNSt3__110shared_ptrIN6mlcore9PredicateEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c45_ZTSNSt3__110shared_ptrIN6mlcore9PredicateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A2557F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](va);

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_1A2558030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_1A2558298(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1A2558470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZZ56-[MPModelLibraryKeepLocalStatusRequestOperation execute]EUb_EUb0_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEEclES8_S9_(uint64_t a1, int8x8_t *a2)
{
  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(a1);
  v5 = MPMediaLibraryPropertyCacheValueForProperty(HasNonPurgeableAsset, a2);
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v8 = *(a1 + 16);
    ++**(a1 + 8);
    ++*v8;
  }

  else
  {
    v9 = mlcore::ItemPropertyKeepLocalStatus(v7);
    v10 = MPMediaLibraryPropertyCacheValueForProperty(v9, a2);
    v11 = [v10 intValue];

    if (v11 >= 1)
    {
      ++**(a1 + 16);
    }

    v12 = [MPIdentifierSet alloc];
    v13 = [@"LibraryKeepLocal-" stringByAppendingString:**(a1 + 24)];
    v14 = +[MPModelSongKind identityKind];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke;
    v20[3] = &__block_descriptor_48_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8ls32l8;
    v20[4] = *(a1 + 24);
    v20[5] = a2;
    v15 = [(MPIdentifierSet *)v12 initWithSource:v13 modelKind:v14 block:v20];

    if (v15)
    {
      v16 = **(a1 + 32);
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v18 = *(a1 + 32);
        v19 = *v18;
        *v18 = v17;

        v16 = **(a1 + 32);
      }

      [v16 addObject:v15];
    }
  }
}

void ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = **(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke_2;
  v6[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke_3;
  v5[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v5[4] = *(a1 + 40);
  [v3 setUniversalStoreIdentifiersWithBlock:v5];
}

void ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = mlcore::ItemPropertyPersistentID(v5);
  v4 = MPMediaLibraryPropertyCacheValueForProperty(v3, *(a1 + 32));
  -[mlcore setPersistentID:](v5, "setPersistentID:", [v4 longLongValue]);
}

void ___ZZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_ENK3__0clERKN6mlcore13PropertyCacheERb_block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = mlcore::ItemPropertyStoreID(v8);
  v4 = MPMediaLibraryPropertyCacheValueForProperty(v3, *(a1 + 32));
  -[mlcore setAdamID:](v8, "setAdamID:", [v4 longLongValue]);

  v6 = mlcore::ItemPropertySubscriptionStoreItemID(v5);
  v7 = MPMediaLibraryPropertyCacheValueForProperty(v6, *(a1 + 32));
  -[mlcore setSubscriptionAdamID:](v8, "setSubscriptionAdamID:", [v7 longLongValue]);
}

__n128 _ZNKSt3__110__function6__funcIZZZ56__MPModelLibraryKeepLocalStatusRequestOperation_execute_EUb_EUb0_E3__0NS_9allocatorIS2_EEFvRKN6mlcore13PropertyCacheERbEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1496988;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1A255BD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29587(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2560B7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0xCF0]);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&STACK[0xD20]);

  v19 = STACK[0xD50];
  if (STACK[0xD50])
  {
    STACK[0xD58] = v19;
    operator delete(v19);
  }

  if (a2 == 2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MEMORY[0x1E695DF30];
    v22 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(va);
    (*(*v20 + 24))(&STACK[0xD20], v20, va);
    if (SLOBYTE(STACK[0xD37]) >= 0)
    {
      v23 = &STACK[0xD20];
    }

    else
    {
      v23 = STACK[0xD20];
    }

    v24 = [v22 stringWithUTF8String:v23];
    v25 = [v21 exceptionWithName:@"MediaPlatform" reason:v24 userInfo:0];
    v26 = v25;

    if (SLOBYTE(STACK[0xD37]) < 0)
    {
      operator delete(STACK[0xD20]);
    }

    objc_exception_throw(v25);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v27 + 16))(v27)];
    v30 = [v28 exceptionWithName:*MEMORY[0x1E695D920] reason:v29 userInfo:0];
    v31 = v30;

    objc_exception_throw(v30);
  }

  _Unwind_Resume(a1);
}