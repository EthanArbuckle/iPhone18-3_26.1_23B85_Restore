void getSSDownloadKindTelevisionEpisode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadKindTelevisionEpisodeSymbolLoc_ptr;
  v9 = getSSDownloadKindTelevisionEpisodeSymbolLoc_ptr;
  if (!getSSDownloadKindTelevisionEpisodeSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadKindTelevisionEpisode");
    getSSDownloadKindTelevisionEpisodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadKindTelevisionEpisode(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A238F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadKindMovie()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadKindMovieSymbolLoc_ptr;
  v9 = getSSDownloadKindMovieSymbolLoc_ptr;
  if (!getSSDownloadKindMovieSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadKindMovie");
    getSSDownloadKindMovieSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadKindMovie(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A238FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getATStartupCompleteNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getATStartupCompleteNotificationSymbolLoc_ptr;
  v7 = getATStartupCompleteNotificationSymbolLoc_ptr;
  if (!getATStartupCompleteNotificationSymbolLoc_ptr)
  {
    v1 = AirTrafficLibrary();
    v5[3] = dlsym(v1, "ATStartupCompleteNotification");
    getATStartupCompleteNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getATStartupCompleteNotification(void)"];
    [v2 handleFailureInFunction:v3 file:@"MPMediaDownloadManager.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A238FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getATMachKeepLocalRequestHandlerServiceName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_ptr;
  v7 = getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_ptr;
  if (!getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_ptr)
  {
    v1 = AirTrafficLibrary();
    v5[3] = dlsym(v1, "ATMachKeepLocalRequestHandlerServiceName");
    getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getATMachKeepLocalRequestHandlerServiceName(void)"];
    [v2 handleFailureInFunction:v3 file:@"MPMediaDownloadManager.m" lineNumber:58 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A238FE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getATMachDownloadObserverServiceName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getATMachDownloadObserverServiceNameSymbolLoc_ptr;
  v7 = getATMachDownloadObserverServiceNameSymbolLoc_ptr;
  if (!getATMachDownloadObserverServiceNameSymbolLoc_ptr)
  {
    v1 = AirTrafficLibrary();
    v5[3] = dlsym(v1, "ATMachDownloadObserverServiceName");
    getATMachDownloadObserverServiceNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getATMachDownloadObserverServiceName(void)"];
    [v2 handleFailureInFunction:v3 file:@"MPMediaDownloadManager.m" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A238FF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getATAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getATAssetClass_softClass;
  v7 = getATAssetClass_softClass;
  if (!getATAssetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getATAssetClass_block_invoke;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getATAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2390034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSSDownloadManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSDownloadManagerClass_softClass;
  v7 = getSSDownloadManagerClass_softClass;
  if (!getSSDownloadManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSDownloadManagerClass_block_invoke;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getSSDownloadManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2390114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2390B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2391C48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 160));
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

id MPUIApplication()
{
  v0 = NSClassFromString(&cfstr_Uiapplication.isa);
  if (objc_opt_respondsToSelector())
  {
    v1 = [(objc_class *)v0 sharedApplication];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1A2393B4C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_1A2395BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat MPRectByApplyingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = MPUIApplication();
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v22.origin.x = a5;
    v22.origin.y = a6;
    v22.size.width = a7;
    v22.size.height = a8;
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    v19 = MaxX - CGRectGetMinX(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    v20 = v19 - CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetMinY(v25);
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
    return v20;
  }

  return a1;
}

void __getSSDownloadManagerOptionsClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary_184();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadManagerOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadManagerOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadManagerOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:40 description:{@"Unable to find class %s", "SSDownloadManagerOptions"}];

    __break(1u);
  }
}

void __getSSDownloadManagerClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary_184();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:37 description:{@"Unable to find class %s", "SSDownloadManager"}];

    __break(1u);
  }
}

void getSSDownloadPropertyClientBundleIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr_203;
  v9 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr_203;
  if (!getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr_203)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadPropertyClientBundleIdentifier");
    getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr_203 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyClientBundleIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A2397E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadPropertyKind()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyKindSymbolLoc_ptr_206;
  v9 = getSSDownloadPropertyKindSymbolLoc_ptr_206;
  if (!getSSDownloadPropertyKindSymbolLoc_ptr_206)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadPropertyKind");
    getSSDownloadPropertyKindSymbolLoc_ptr_206 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyKind(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A2397F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSSPurchaseManagerClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary_184();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSPurchaseManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSPurchaseManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSPurchaseManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:38 description:{@"Unable to find class %s", "SSPurchaseManager"}];

    __break(1u);
  }
}

void sub_1A2398AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2399914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A239A650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A239B0FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A239BAC0(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1A239BDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A239C360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A239C914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A239CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A239D850(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A239D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MPAVGetBatteryLevelFromAVODDS(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  if (a3 <= 1)
  {
    if (a3)
    {
      v6 = MEMORY[0x1E6958710];
    }

    else
    {
      v6 = MEMORY[0x1E6958708];
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v6 = MEMORY[0x1E6958700];
LABEL_7:
    v7 = [v4 objectForKeyedSubscript:*v6];
    goto LABEL_8;
  }

  if (!MRAVOutputDeviceHasBatteryLevel())
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  MRAVOutputDeviceGetBatteryLevel();
  v7 = [v10 initWithFloat:?];
LABEL_8:
  v8 = v7;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber *MPAVGetBatteryLevelFromAVODDS(MRAVOutputDeviceRef, NSDictionary *__strong, MPAVBatteryLevelType)"}];
      [v11 handleFailureInFunction:v12 file:@"MPAVBatteryLevel.m" lineNumber:168 description:@"battery level value is not a number"];
    }
  }

LABEL_11:

  return v8;
}

void sub_1A23A106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A11F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A1AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A1FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A20FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23A3BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRadioAvailabilityControllerClass_block_invoke(uint64_t a1)
{
  RadioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadioAvailabilityController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadioAvailabilityControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRadioAvailabilityControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemoteRadioController.m" lineNumber:30 description:{@"Unable to find class %s", "RadioAvailabilityController"}];

    __break(1u);
  }
}

void *RadioLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RadioLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RadioLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7677C38;
    v6 = 0;
    RadioLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RadioLibraryCore_frameworkLibrary;
  if (!RadioLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RadioLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPRemoteRadioController.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getRadioRecentStationsControllerClass_block_invoke(uint64_t a1)
{
  RadioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadioRecentStationsController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadioRecentStationsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRadioRecentStationsControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemoteRadioController.m" lineNumber:31 description:{@"Unable to find class %s", "RadioRecentStationsController"}];

    __break(1u);
  }
}

void *MediaPlaybackCoreLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7677C50;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaPlaybackCoreLibraryCore_frameworkLibrary;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPRemoteRadioController.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A23A6B0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlcore::LanguageResources::~LanguageResources(&a43);
  a43 = &a71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  a69 = MEMORY[0x1E69B0800] + 16;
  a43 = &a70;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  a65 = MEMORY[0x1E69B0800] + 16;
  a43 = &a66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  a61 = MEMORY[0x1E69B0800] + 16;
  a43 = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (a2 == 2)
  {
    v74 = __cxa_begin_catch(a1);
    v75 = MEMORY[0x1E695DF30];
    v76 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a61);
    (*(*v74 + 24))(&a43, v74, &a61);
    if (a48 >= 0)
    {
      v77 = &a43;
    }

    else
    {
      v77 = a43;
    }

    v78 = [v76 stringWithUTF8String:v77];
    v79 = [v75 exceptionWithName:@"MediaPlatform" reason:v78 userInfo:0];
    v80 = v79;

    if (a48 < 0)
    {
      operator delete(a43);
    }

    objc_exception_throw(v79);
  }

  if (a2 == 1)
  {
    v81 = __cxa_begin_catch(a1);
    v82 = MEMORY[0x1E695DF30];
    v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v81 + 16))(v81)];
    v84 = [v82 exceptionWithName:*MEMORY[0x1E695D920] reason:v83 userInfo:0];
    v85 = v84;

    objc_exception_throw(v84);
  }

  _Unwind_Resume(a1);
}

void sub_1A23A7658(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A23A7798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23AA718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  if (STACK[0x278])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x278]);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
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

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = (v4 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        v6 = (v4 - 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1A23AC3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A23AC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MPModelObject_q_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 longLongValue];
  return v6;
}

void sub_1A23AD8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MPModelObject__getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  return v5;
}

void sub_1A23ADE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MPModelObject_B_getterIMP(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [objc_opt_class() _modelKeyForPropertySelector:a2];
  v5 = [v3 valueForModelKey:v4];

  v6 = [v5 BOOLValue];
  return v6;
}

void sub_1A23AEB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A23AF038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A23B114C()
{

  OUTLINED_FUNCTION_6();

  return MEMORY[0x1EEE6BDD0]();
}

uint64_t sub_1A23B1180()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A23B122C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = -769513831 * a2;
  v4 = (qword_1F148E480[-769513831 * a2 + 2])();
  qword_1F148E480[v3 + 1](a1);
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A23B1304@<X0>(int a1@<W8>)
{
  v3 = (-21985942 * v1) | a1;
  v4 = (qword_1F148E480[v3 - 1])(200);
  return (*(v2 + 8 * (v3 + 2 * (v4 != 0))))();
}

uint64_t sub_1A23B1370@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = (*(v5 + 8 * (v6 + a2 * (v4 - 1) + 21985945)))(a1, 0);
  if (v8 == 16)
  {
    v3 = 1537719254;
    goto LABEL_7;
  }

  if (v8 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 + 21985943)))(a1);
    return (1510190423 * v3 + 277669913);
  }

  if (v8)
  {
    v3 = 292433263;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 1191165937;
  return (1510190423 * v3 + 277669913);
}

uint64_t sub_1A23B1458(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1A23B16B8(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1A23B184C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1A23B1A40(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB0948C0) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 - dword_1EB0948C0) ^ 0x43))] ^ 0xAB]) + 20);
  v2 = 11 * ((qword_1EB094620 + *v1) ^ 0x43);
  v3 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + v2 - 4) ^ 0x7Du) - 12) ^ v2) + 121);
  v4 = &v7[*v1 + *(v3 - 4)];
  *v1 = 1922045707 * v4 - 0x21D37FB25A3D4D43;
  *(v3 - 4) = 1922045707 * (v4 ^ 0x21D37FB25A3D4D43);
  v5 = 1504884919 * (((v8 | 0x610823A9) + (~v8 | 0x9EF7DC56)) ^ 0x9ACB94B3);
  v8[0] = v5 + 837;
  v8[2] = v5 + 539680321 * a1 + 540824046;
  LOBYTE(v3) = 11 * (*v1 ^ 0x43 ^ *(v3 - 4));
  (*(*(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB0948C0) ^ 0x43)) ^ byte_1A273D510[byte_1A2739520[(11 * ((qword_1EB094620 - dword_1EB0948C0) ^ 0x43))] ^ 0x4D]) - 100) + (*(off_1F1494A90 + (*(off_1F1494EA0 + v3 - 8) ^ 0xB2u)) ^ v3) + 2876))(v8);
  return v8[1] ^ 0x6F0F4635u;
}

uint64_t sub_1A23B1DE4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB094658) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 - dword_1EB094658) ^ 0x43))] ^ 0xAB]) - 16);
  v2 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * (*v1 ^ qword_1EB094620 ^ 0x43))] ^ 0xE6u) - 12) ^ (11 * (*v1 ^ qword_1EB094620 ^ 0x43))) + 6);
  v3 = (*(v2 - 4) + *v1) ^ &v5;
  *v1 = (1922045707 * v3) ^ 0x21D37FB25A3D4D43;
  *(v2 - 4) = 1922045707 * (v3 ^ 0x21D37FB25A3D4D43);
  v6 = a1;
  v7 = 143681137 * ((2 * (&v6 & 0x58DDBAD8) - &v6 + 656557347) ^ 0x4618F26B) + 1124;
  LOBYTE(v2) = 11 * ((*(v2 - 4) + *v1) ^ 0x43);
  (*(*(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094658) ^ 0x43)) ^ byte_1A273D610[byte_1A2739620[(11 * ((qword_1EB094620 + dword_1EB094658) ^ 0x43))] ^ 0x7F]) + 83) + (*(off_1F1494D30 + (*(off_1F1494EC0 + v2) ^ 0x7Fu)) ^ v2) + 2844))(&v6);
  return v8;
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F14948E0 + ((11 * (dword_1EB094808 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D510[byte_1A2739520[(11 * (dword_1EB094808 ^ 0x43 ^ qword_1EB094620))] ^ 0x4D]) - 207);
  v5 = 11 * (*v4 ^ qword_1EB094620 ^ 0x43);
  v6 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + v5 - 4) ^ 0x4Du) - 12) ^ v5) - 88);
  v7 = 1922045707 * ((*(v6 - 4) - *v4) ^ &v9 ^ 0x21D37FB25A3D4D43);
  *v4 = v7;
  *(v6 - 4) = v7;
  v15 = (896639297 * (((&v10 | 0x377364CA) - (&v10 & 0x377364CA)) ^ 0x23D8F2B2)) ^ 0x2AA;
  v13 = a4;
  v14 = a3;
  v10 = a1;
  v12 = a2;
  LOBYTE(v6) = 11 * ((*(v6 - 4) + *v4) ^ 0x43);
  (*(*(&off_1F14948E0 + ((11 * (dword_1EB094808 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D710[byte_1A2739720[(11 * (dword_1EB094808 ^ 0x43 ^ qword_1EB094620))] ^ 0xED]) - 53) + (*(off_1F1494B50 + (*(off_1F1494C88 + v6 - 4) ^ 0xEDu) - 12) ^ v6) + 2730))(&v10);
  return v11 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B2524(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB094810) ^ 0x43)) ^ byte_1A2739820[byte_1A2733420[(11 * ((qword_1EB094620 - dword_1EB094810) ^ 0x43))] ^ 0x1B]) - 64);
  v2 = *(&off_1F14948E0 + ((11 * (*v1 ^ qword_1EB094620 ^ 0x43)) ^ byte_1A273D410[byte_1A2739420[(11 * (*v1 ^ qword_1EB094620 ^ 0x43))] ^ 0x29]) + 1);
  v3 = *v1 - &v5 + *(v2 - 4);
  *v1 = 1922045707 * v3 - 0x4AEE6E5751BCA91FLL;
  *(v2 - 4) = 1922045707 * (v3 ^ 0x21D37FB25A3D4D43);
  v6 = a1;
  v7 = 143681137 * ((2 * (&v6 & 0x51C18790) - &v6 + 775845992) ^ 0x4F04CF20) + 880;
  LODWORD(v2) = 1922045707 * (*v1 ^ 0x5A3D4D43 ^ *(v2 - 4));
  return (*(*(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB094810) ^ 0x43)) ^ byte_1A273D510[byte_1A2739520[(11 * ((qword_1EB094620 - dword_1EB094810) ^ 0x43))] ^ 0x4D]) - 100) + (*(off_1F1494948 + (*(off_1F1494C60 + v2 - 8) ^ 0x1Bu) - 12) ^ v2) + 2699))(&v6);
}

uint64_t sub_1A23B2728(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094640) ^ 0x43)) ^ byte_1A273D410[byte_1A2739420[(11 * ((qword_1EB094620 + dword_1EB094640) ^ 0x43))] ^ 0xB2]) - 10);
  v2 = *(v1 - 4);
  v3 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + (11 * ((qword_1EB094620 + v2) ^ 0x43)) - 4) ^ 0x4Fu) - 12) ^ (11 * ((qword_1EB094620 + v2) ^ 0x43))) + 74);
  v4 = (*(v3 - 4) - v2) ^ &v6;
  *(v1 - 4) = 1922045707 * (v4 - 0x21D37FB25A3D4D43);
  *(v3 - 4) = 1922045707 * (v4 ^ 0x21D37FB25A3D4D43);
  v8 = 1974 - 1556366573 * ((((2 * &v7) | 0x24B03BEA) - &v7 + 1839718923) ^ 0xF6BC3E1F);
  v7 = a1;
  LOBYTE(v3) = 11 * (*(v1 - 4) ^ 0x43 ^ *(v3 - 4));
  return (*(*(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094640) ^ 0x43)) ^ byte_1A273D710[byte_1A2739720[(11 * ((qword_1EB094620 + dword_1EB094640) ^ 0x43))] ^ 0xBC]) + 130) + (*(off_1F1494B60 + ((*off_1F1494B98)[v3] ^ 0x53u) - 12) ^ v3) + 2785))(&v7);
}

void sub_1A23B2A14(uint64_t a1)
{
  v1 = *(a1 + 8) + 1556366573 * ((2 * (a1 & 0x37BB8382) - a1 + 1212447869) ^ 0x2CA05F97);
  v2 = *(&off_1F14948E0 + v1 - 1835) - 8;
  v3 = *a1;
  (*&v2[8 * (v1 ^ 0xC85)])(*(&off_1F14948E0 + (v1 ^ 0x794)) - 4, sub_1A23FC000);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23B2ADC()
{
  v4 = v2 | 0x408;
  v5 = ((v2 | 0x408) - 1615411312) & 0x6049397C;
  v6 = v3 + 161369265;
  v7 = v6 < 0x1B3ADC37;
  v8 = v1 + 456842295 < v6;
  if (v7 != v1 > 0xE4C523C8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v0 + 8 * (((v5 ^ ((v4 - 1289) | 0x5A9) ^ 0xF9F) * v9) ^ v4)))();
}

void sub_1A23B2C48(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = 1556366573 * ((((2 * a1) | 0x3691F47E) - a1 + 1689716161) ^ 0xFFACD9D5);
  v2 = *(a1 + 52) ^ v1;
  v3 = *(a1 + 8);
  v4 = 1380333833 * ((-1823900073 - (&v9 | 0x93497E57) + (&v9 | 0x6CB681A8)) ^ 0xD2E42A22);
  v5 = (*a1 ^ v1) - v4;
  v13 = (404137529 * (((*(a1 + 48) ^ v1 ^ 0xE3207777) + 484411529) ^ ((*(a1 + 48) ^ v1 ^ 0x12D7306A) - 316092522) ^ ((*(a1 + 48) ^ v1 ^ 0xCFF5B7F) - 218061695)) - 1482869766) ^ v4;
  v10 = v2 - v4 + 1341;
  v11 = v5 - 294235390;
  v15 = v3;
  v12 = &v7;
  v9 = &v8;
  v6 = *(&off_1F14948E0 + v2 - 365) - 8;
  (*&v6[8 * (v2 ^ 0xA84)])(&v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23B2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = (v15 ^ 0x35F) + ((v20 - 128) ^ 0x64E423EA) * v18 + 1922;
  *(v20 - 120) = &a15;
  *(v20 - 112) = v16;
  v21 = (*(v17 + 8 * ((v15 ^ 0x35F) + 2599)))(v20 - 128);
  return (*(v17 + 8 * ((408 * (*(v20 - 104) > (((v15 ^ 0x35F) + 1160066817) & 0xBADACFF9) - 856 + v19)) ^ v15 ^ 0x35F)))(v21);
}

uint64_t sub_1A23B2EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42, unsigned int a43, unsigned int a44, unsigned int a45)
{
  v49 = (((v45 ^ 0xAB0DECEA) + 1425150742) ^ ((v45 ^ 0x13D80DC9) - 332926409) ^ ((v45 ^ 0x83009153) + 2097114797)) + (((a42 ^ 0x8111DF42) + 2129535166) ^ ((a42 ^ 0x88C00079) + 2000682887) ^ ((a42 ^ 0x3204AF4B) - 839167819)) - 493507950;
  v50 = (((v48 ^ 0xF5EC308E) + 169070450) ^ ((v48 ^ 0x9205C793) + 1845114989) ^ ((v48 ^ 0x5C3C876D) - 1547470701)) + (((a43 ^ 0xCB7BCF18) + 881078504) ^ ((a43 ^ 0x24254F5D) - 606424925) ^ ((a43 ^ 0xD48BF035) + 729026507)) + 2077919568;
  v51 = (v50 ^ 0xF3844702) & (2 * (v50 & 0xFBD05790)) ^ v50 & 0xFBD05790;
  v52 = ((2 * (v50 ^ 0x5224E222)) ^ 0x53E96B64) & (v50 ^ 0x5224E222) ^ (2 * (v50 ^ 0x5224E222)) & 0xA9F4B5B2;
  v53 = v52 ^ 0xA8149492;
  v54 = (v52 ^ 0x1C02000) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0xA7D2D6C8) & v53 ^ (4 * v53) & 0xA9F4B5B0;
  v56 = v55 ^ 0x8242132;
  v57 = (v55 ^ 0xA1D09480) & (16 * v54) ^ v54;
  v58 = 16 * (v55 ^ 0x8242132);
  v59 = v58 ^ 0x9F4B5B20;
  v60 = v59 & v56 ^ v58 & 0xA9F4B5B0;
  v61 = v57 ^ 0xA9F4B5B2 ^ (v60 ^ 0x89401100) & (v57 << 8);
  a42 = v49 ^ ((v49 ^ 0xDA558974) + 1329643322) ^ ((v49 ^ 0x711B7F53) - 468825825) ^ ((v49 ^ 0xBE53C23A) + 726070392) ^ ((v49 ^ 0x7FF7FDAF) - 354235421) ^ 0x513FB9C2;
  a43 = v50 ^ (2 * ((v61 << 16) & 0x29F40000 ^ v61 ^ ((v61 << 16) ^ 0x35B20000) & (((v60 ^ 0x20B4A492) << 8) & 0x29F40000 ^ 0x9400000 ^ (((v60 ^ 0x20B4A492) << 8) ^ 0x74B50000) & (v60 ^ 0x20B4A492)))) ^ 0xD08C4C84;
  v62 = (((v46 ^ 0x9461C9B7) + 1805530697) ^ ((v46 ^ 0xF1EFFA27) + 235931097) ^ ((v46 ^ 0x5E5B43E0) - 1583039456)) + (((a44 ^ 0x9E3312EC) + 1640819988) ^ ((a44 ^ 0xA4D95AE5) + 1529259291) ^ ((a44 ^ 0x13F3879) - 20920441)) - 886274438;
  v63 = (v62 ^ 0xAE7F5B56) & (2 * (v62 & 0xAC7E5A66)) ^ v62 & 0xAC7E5A66;
  v64 = ((2 * (v62 ^ 0xAEEBEF1E)) ^ 0x52B6AF0) & (v62 ^ 0xAEEBEF1E) ^ (2 * (v62 ^ 0xAEEBEF1E)) & 0x295B578;
  v65 = v64 ^ 0x2949508;
  v66 = (v64 ^ 0x12030) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0xA56D5E0) & v65 ^ (4 * v65) & 0x295B578;
  v68 = (v67 ^ 0x2149560) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x812018)) ^ 0x295B5780) & (v67 ^ 0x812018) ^ (16 * (v67 ^ 0x812018)) & 0x295B570;
  v70 = v68 ^ 0x295B578 ^ (v69 ^ 0x111500) & (v68 << 8);
  v71 = v62 ^ (2 * (((v70 << 16) ^ 0x35780000) & (((v69 ^ 0x284A078) << 8) & 0x2950000 ^ (((v69 ^ 0x284A078) << 8) ^ 0x95B50000) & (v69 ^ 0x284A078) ^ 0x2000000) ^ v70 ^ ((v70 << 16) & 0x2950000 | 0x2468)));
  v72 = (((v47 ^ 0x836FC4E4) + 2089827100) ^ ((v47 ^ 0x68CF4797) - 1758414743) ^ ((v47 ^ 0xD075F303) + 797576445)) + (((a45 ^ 0x890CABEC) + 1995658260) ^ ((a45 ^ 0xD7D65806) + 673818618) ^ ((a45 ^ 0x650F839A) - 1695515546)) - 1716693728;
  v73 = (v72 ^ 0xD9FD4BBB) & (2 * (v72 & 0xDDFD8BC0)) ^ v72 & 0xDDFD8BC0;
  v74 = ((2 * (v72 ^ 0xC1D7593B)) ^ 0x3855A5F6) & (v72 ^ 0xC1D7593B) ^ (2 * (v72 ^ 0xC1D7593B)) & 0x1C2AD2FA;
  v75 = v74 ^ 0x42A5209;
  v76 = (v74 ^ 0x18000000) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x70AB4BEC) & v75 ^ (4 * v75) & 0x1C2AD2F8;
  v78 = (v77 ^ 0x102A42E0) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0xC009013)) ^ 0xC2AD2FB0) & (v77 ^ 0xC009013) ^ (16 * (v77 ^ 0xC009013)) & 0x1C2AD2F0;
  v80 = v78 ^ 0x1C2AD2FB ^ (v79 ^ 0x28024B) & (v78 << 8);
  a44 = v71 ^ 0x92A00836;
  a45 = v72 ^ (2 * ((v80 << 16) & 0x1C2A0000 ^ v80 ^ ((v80 << 16) ^ 0x52FB0000) & (((v79 ^ 0x1C02D04B) << 8) & 0x1C2A0000 ^ 0x14280000 ^ (((v79 ^ 0x1C02D04B) << 8) ^ 0x2AD20000) & (v79 ^ 0x1C02D04B)))) ^ 0xFE295E46;
  return a25(v59, &a32 + 4, a3, a4, a5, 3172032094, 1547868496, 891300972, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1A23B2EC0(uint64_t a1, uint64_t a2)
{
  v6 = **(a2 + 8) + ((6 * (v4 ^ 0x2DC)) ^ 0xFFFFF8B8);
  v7 = (v3 & (2 * v6)) + (v6 ^ v2) == v2;
  return (*(v5 + 8 * ((v7 | (2 * v7)) ^ v4)))();
}

uint64_t sub_1A23B2F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a13;
  a16 = (((&a14 | 0x88C91AA5) - (&a14 & 0x88C91AA5)) ^ 0x1A1F2501) * v16 + 789;
  v20 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((209 * (a15 == v19 + 1215)) ^ v18)))(v20);
}

uint64_t sub_1A23B2F84@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v13 = v11 < v9;
  v14 = *(a5 + v7);
  v15 = v7 + 1;
  *(a6 + a7) = v14 - (a1 & (2 * v14)) - 119;
  if (v13 == v15 > ((v8 + a3) & a4 ^ (v10 + 8)))
  {
    v13 = v15 + v9 < v11;
  }

  return (*(v12 + 8 * ((!v13 * a2) ^ v8)))();
}

uint64_t sub_1A23B2FF0()
{
  v5 = (v1 + 1195507784) | 0xB0041005;
  *v0 = (v5 + 2009673288) ^ v9;
  v10 = (v5 + 146403615) ^ (50899313 * ((((&v10 | 0x765025A) ^ 0xFFFFFFFE) - (~&v10 | 0xF89AFDA5)) ^ 0xD251D7DF));
  v11 = v7;
  (*(v3 + 8 * (v5 ^ v4)))(&v10);
  v11 = v8;
  v10 = (v5 + 146403615) ^ (50899313 * (((&v10 | 0x1C142D26) - (&v10 & 0x1C142D26)) ^ 0x36DF075C));
  (*(v3 + 8 * (v5 ^ v4)))(&v10);
  return v2 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B3134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  STACK[0x218] = v38 - 112;
  switch(v39)
  {
    case -1112685170:
      return (*(v40 + 8 * ((2631 * (v41 + a5 + 39 == -1863311137)) ^ a31)))(156, a2, 4022132702);
    case 1657924353:
      return (*(v40 + 8 * (((HIDWORD(a31) - 808) * (v41 == -1863311892)) ^ (a5 + 808))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
    case 411672603:
      return (*(v40 + 8 * (((a5 + 1922) * (v41 == -1863311892)) ^ a31)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }

  v45 = STACK[0x228];
  v46 = STACK[0x3A8];
  STACK[0x218] = (a5 ^ 0x2BCLL) + v38 - 112;
  STACK[0x2A8] = v45;
  if (v45)
  {
    v42 = v46 == 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = v42;
  return (*(v40 + 8 * ((v43 * ((a5 + 1376) ^ 0x839)) ^ (a5 + 1411))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

void sub_1A23B3140(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (1564307779 * ((~a1 & 0xB6FD90EB | a1 & 0x49026F14) ^ 0x21F05CF8));
  v2 = 1556366573 * ((1801915369 - (v5 | 0x6B670BE9) + (v5 | 0x9498F416)) ^ 0xF07CD7FC);
  v6 = v2 ^ 0xD9C233F9;
  v8 = v1 - v2 - 875954119;
  v7 = v4;
  v3 = *(&off_1F14948E0 + v1 + 108) - 8;
  (*&v3[8 * (v1 ^ 0xB19)])(v5);
  __asm { BRAA            X13, X17 }
}

void sub_1A23B33F8(int a1@<W8>)
{
  v7 = (((v3 - 933) | 0x228) + 1073741272) | v2;
  v8 = *v4;
  v9 = *(v4 + 4) + v1;
  *(*v4 + v9) = (HIBYTE(v7) ^ 0x8F) - ((2 * (HIBYTE(v7) ^ 0x8F)) & 0x12) - 119;
  *(v8 + v9 + 1) = (BYTE2(v7) ^ 0x9F) - ((2 * (BYTE2(v7) ^ 0x9F)) & 0x12) - 119;
  *(v8 + v9 + 2) = (BYTE1(v7) ^ 0x10) - ((v7 >> 7) & 0x12) - 119;
  *(v8 + v9 + 3) = v7 ^ 0x77;
  v10 = *v4;
  v11 = (a1 - v5) ^ v5 ^ ((v5 ^ 0x6E3EA8EF) - 966011205) ^ ((v5 ^ 0x650236AC) - 849917702) ^ ((v5 ^ 0xA369E016) + 188522052);
  v12 = ((2 * (v1 + *(v4 + 4) + 4)) & 0xFFBF87FC) + ((v1 + *(v4 + 4) + 4) ^ 0xFFDFC3FE) + 2112514;
  *(*v4 + v12) = (HIBYTE(v11) ^ 0x57) - ((2 * (HIBYTE(v11) ^ 0x57)) & 0x12) - 119;
  *(v10 + v12 + 1) = (BYTE2(v11) ^ 0xAA) - ((2 * (BYTE2(v11) ^ 0xAA)) & 0x12) - 119;
  *(v10 + v12 + 2) = (BYTE1(v11) ^ 0x81) - ((2 * (BYTE1(v11) ^ 0x81)) & 0x12) - 119;
  *(v10 + v12 + 3) = v11 ^ 0x23;
  *(v4 + 4) = v6 - 1470792098;
}

uint64_t sub_1A23B35C0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = v2 | 0x200;
  *v9 = a1;
  *v8 = a2;
  v6 = (v5 - 1882039972) & 0x702DA77A;
  v13 = v11;
  v12 = (v5 + 1681) ^ (50899313 * ((35971426 - (&v12 | 0x224E162) + (&v12 | 0xFDDB1E9D)) ^ 0xD71034E7));
  (*(v4 + 8 * (v5 + 2248)))(&v12);
  v12 = (v6 + 1466) ^ (50899313 * ((2 * (&v12 & 0x799DABA0) - &v12 + 107107419) ^ 0x2CA97E21));
  v13 = v10;
  (*(v4 + 8 * (v6 ^ 0x811u)))(&v12);
  return v3 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B397C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) ^ 0x89;
  return (*(v4 + 8 * ((3073 * (v5 == (v3 ^ 0x360u) - 1348)) ^ v3)))();
}

uint64_t sub_1A23B39FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  v37 = v32 ^ 0x5E4;
  HIDWORD(v41) = v34 ^ 0xA38;
  LODWORD(v41) = v34 ^ 0xA07;
  HIDWORD(a21) = v34 + 1794354839;
  HIDWORD(v40) = v34 + 4840;
  LODWORD(v40) = v34 ^ 0x90F58117;
  HIDWORD(a10) = v34 - 1034734354;
  v38 = (((v37 ^ 0x5E4) - 1759) ^ 0x137) != 32;
  return (*(v35 + 8 * (((2 * v38) | (8 * v38)) ^ v37)))(a1, 1508, (v31 - 14169 + v37), 311, 643, 3591422844, 703542943, -436959636, a9, a10, v40, v41, &a31 % 0x25, v33, a15, 1556366573 * ((((v36 - 152) | 0xA38867B54E5754DDLL) - (v36 - 152) + ((v36 - 152) & 0x5C77984AB1A8AB20)) ^ 0x887319562AB37737) + 5119, 1556366573 * ((((v36 - 152) | 0xA38867B54E5754DDLL) - (v36 - 152) + ((v36 - 152) & 0x5C77984AB1A8AB20)) ^ 0x887319562AB37737), a18, a19, a20, a21);
}

uint64_t sub_1A23B3C34(int a1, int a2, int8x16_t a3)
{
  v7 = (v4 - 32);
  v8 = (v5 - 32);
  v9 = veorq_s8(*v8, a3);
  v7[-1] = veorq_s8(v8[-1], a3);
  *v7 = v9;
  return (*(v6 + 8 * (((v3 == 32) * a2) ^ a1)))();
}

uint64_t sub_1A23B3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = ((v13 - 87) ^ 0x2DA189A2) + a12;
  if (v15 < 0x464D0A27 != v12 > 0xB9B2F5D8)
  {
    v16 = v15 < 0x464D0A27;
  }

  else
  {
    v16 = v12 + 1179453991 < v15;
  }

  return (*(v14 + 8 * ((94 * v16) ^ v13)))();
}

uint64_t sub_1A23B3CAC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>, int8x8_t a8@<D2>)
{
  v14 = a5 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + (a1 ^ 0xF9)) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a2 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a2 + v14), *(v10 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v9 - 4), *(v16.val[0].i64[0] + v8 - 2)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((v12 != v14) * a4) ^ a3)))();
}

uint64_t sub_1A23B3CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, int a16)
{
  a14 = &a10;
  a16 = ((&a14 - 1852718271 - 2 * (&a14 & 0x9191C341)) ^ 0x347FCE5) * v18 + 789;
  v20 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((123 * (a15 == v16)) ^ v19)))(v20);
}

uint64_t sub_1A23B3D28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  v27 = (((a25 + 131886465) & 0xD07592AB) << (*(v26 - 192) ^ 0xCB)) & ((a25 + 131886465) ^ 0x83650A23) ^ (a25 + 131886465) & 0xD07592AB;
  v28 = ((2 * ((a25 + 131886465) ^ 0x3A62E61)) ^ 0xA7A77994) & ((a25 + 131886465) ^ 0x3A62E61) ^ (2 * ((a25 + 131886465) ^ 0x3A62E61)) & 0xD3D3BCCA;
  v29 = v28 ^ 0x5050844A;
  v30 = (v28 ^ 0x93821882) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x4F4EF328) & v29 ^ (4 * v29) & 0xD3D3BCC8;
  v32 = (v31 ^ 0x4342B002) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x90910CC2)) ^ 0x3D3BCCA0) & (v31 ^ 0x90910CC2) ^ (16 * (v31 ^ 0x90910CC2)) & 0xD3D3BCC0;
  v34 = v32 ^ 0xD3D3BCCA ^ (v33 ^ 0x11138C4A) & (v32 << 8);
  v35 = (a25 + 131886465) ^ (2 * ((v34 << 16) & 0x53D30000 ^ v34 ^ ((v34 << 16) ^ 0x3CCA0000) & (((v33 ^ 0xC2C0304A) << 8) & 0xD3D30000 ^ 0x430000 ^ (((v33 ^ 0xC2C0304A) << 8) ^ 0xD3BC0000) & (v33 ^ 0xC2C0304A))));
  v36 = 97 * (a1 ^ 0x128);
  *(v26 - 192) = v36;
  v37 = v36 - 955;
  v39 = v35 != 1448536895 && (v35 & 0xF) == v37;
  v40 = *(v25 + 8 * ((v39 * (((a1 ^ 0x128) + 447) ^ 0x1D0)) | a1));
  *(v26 - 196) = -42899;
  return v40();
}

uint64_t sub_1A23B3EDC(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  v12 = *(v10 + 8);
  v13 = *(v12 + 4 * (a3 + a8)) ^ v8;
  *(v12 + 4 * (a6 - 1)) = ((v13 >> v9) & a4 | (a7 ^ a1) & ~(v13 >> v9)) ^ a1;
  return (*(v11 + 8 * ((63 * (a8 < 2)) ^ a2)))();
}

uint64_t sub_1A23B3F24@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38, uint64_t a39, char a40)
{
  v42 = v40[396] ^ ((*v40 & 0x7FFFFFFE | v40[623] & 0x80000000) >> 1);
  v40[623] = (((a1 + a3 - 4758634) | 0x489800) + v42 - (a2 & (2 * v42)) + 159444274) ^ *(&a40 + (*v40 & 1));
  return (*(v41 + 8 * ((972 * (a37 > 0x26F)) ^ a3)))();
}

uint64_t sub_1A23B3FA8(uint64_t a1, uint64_t a2, int a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v19 = v16 + 16;
  v20 = (((v15 + 1146) - 1596) ^ v19) + v14;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v23.i64[1] = a9;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(v17 + v20), *(v13 + v21 - 15)), veorq_s8(*(v21 + v12 - 12), *(v21 + v11 - 10))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a11), vmulq_s8(v23, a10)));
  *(v17 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v18 + 8 * (((a2 == v19) * a3) ^ v15)))();
}

uint64_t sub_1A23B3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v18 = ((v14 - 1102360573) & 0x68C614DF) - 1070;
  v19 = v17 + v14 + 1294;
  v20 = (v18 ^ 0xB0204B0F) + a14;
  v21 = (v15 + 1075335937 < a5) ^ (v20 < a5);
  v22 = v20 < v15 + 1075335937;
  if (v21)
  {
    v22 = v15 + 1075335937 < a5;
  }

  return (*(v16 + 8 * (v19 | (8 * !v22))))();
}

void sub_1A23B400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 1564307779 * ((((2 * (v16 - 128)) | 0xC76956B4) - (v16 - 128) - 1672784730) ^ 0xF4B96749);
  *(v16 - 128) = ((v15 ^ 0x4D77DAFE) - 213508 + ((v15 << ((v13 + 86) & 0xF6 ^ 0xF7)) & 0x9AEFB5FC)) ^ v17;
  *(v16 - 120) = &a13;
  *(v16 - 112) = v13 - v17 - 652;
  (*(v14 + 8 * (v13 + 1938)))(v16 - 128);
  JUMPOUT(0x1A23B40C4);
}

uint64_t sub_1A23B4144()
{
  v5 = *(v2 + 8 * (v0 - 548));
  STACK[0x17D8] = 0x9908B0DF00000000;
  LODWORD(STACK[0x204]) = *v5;
  v6 = **(v2 + 8 * (v0 ^ 0x2CE));
  v7 = 843532609 * ((~((v4 - 192) | 0x4E9B693770543B91) + ((v4 - 192) & 0x4E9B693770543B91)) ^ v1);
  v8 = v0 - 839976463 + v7;
  *(v4 - 160) = ((v0 - 839976463) ^ 0x7F) + v7;
  *(v4 - 156) = v8;
  *(v4 - 192) = 55969222 - v7 + v0;
  *(v4 - 184) = v7;
  *(v4 - 176) = v6 + v7;
  *(v4 - 168) = v7;
  *(v4 - 164) = v8 - 34;
  v9 = (*(v3 + 8 * (v0 ^ 0x810)))(v4 - 192);
  return (*(v3 + 8 * *(v4 - 188)))(v9);
}

uint64_t sub_1A23B423C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = ((16 * v3) ^ 0xFFFFFFFFFFFF6B6FLL) + v2;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((16 * (v5 != 0)) | (32 * (v5 != 0))) ^ (v3 - 1203))))();
}

uint64_t sub_1A23B4278@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, int a8, unsigned int a9, char *a10, char a11, unsigned int a12, int a13, char *a14, char *a15, uint64_t a16)
{
  v20 = *(v17 + 8);
  v21 = (((&a9 | 0xACB7CEFD) - (&a9 & 0xACB7CEFD)) ^ 0xB81C5885) * a1;
  a10 = &a5;
  a14 = &a7;
  a15 = &a4;
  a12 = v21 - 1869358190 + (((v16 ^ 0x8DE2E09A) + 1914511206) ^ ((v16 ^ 0x7308416F) - 1929920879) ^ ((v16 ^ 0xAD6EAAD9) + 1385255257 + ((v19 + 380) | 0xC4)));
  a16 = v20;
  a9 = v21 + v19 - 562359250;
  a11 = v21 - 43;
  v22 = (*(v18 + 8 * (v19 ^ 0xAD7)))(&a9);
  return (*(v18 + 8 * ((821 * (a13 == 1863271989)) ^ v19)))(v22);
}

uint64_t sub_1A23B4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, _BYTE *a15, char a16, int a17, unsigned int a18, int a19, char *a20, char *a21, _BYTE *a22, _BYTE *a23)
{
  a23 = a15;
  LODWORD(a22) = (v25 - 1612) ^ (843532609 * ((&a18 + 1869578124 - 2 * (&a18 & 0x6F6F7F8C)) ^ 0x7FD308D2));
  a20 = &a11;
  a21 = &a16;
  (*(v24 + 8 * (v25 ^ 0xDF7)))(&a18);
  a22 = a15;
  a20 = &a14;
  LODWORD(a21) = (v25 - 864) ^ (((2 * ((&a18 ^ 0xC8BB1D13) & 0x403265AA) - (&a18 ^ 0xC8BB1D13) - 1077044651) ^ 0x164C300E) * v26);
  (*(v24 + 8 * (v25 + 1085)))(&a18);
  a18 = v25 - 1556366573 * ((&a18 & 0x568FE3D1 | ~(&a18 | 0x568FE3D1)) ^ 0xCD943FC4) + 1000;
  a20 = a15;
  v27 = (*(v24 + 8 * (v25 + 1119)))(&a18);
  return (*(v24 + 8 * ((365 * (a19 == ((v25 + 1313181986) & 0xB1BA6F62 ^ (v23 - 1246)))) ^ v25)))(v27);
}

uint64_t sub_1A23B4510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = 211 * (v6 ^ 0x777);
  *a6 = a1;
  *v13 = (v7 + v10 - 633) ^ v17;
  v11 = (v8 + ((v10 + 1120009706) | 0x992C4004) + 1115) | 0x84;
  v18 = (v11 + 1064) ^ (50899313 * (((&v18 | 0xEFF9D82C) - (&v18 & 0xEFF9D82C)) ^ 0xC532F256));
  v19 = v16;
  (*(v9 + 8 * (v11 + 1631)))(&v18);
  v19 = v15;
  v18 = (v11 + 1064) ^ (50899313 * (&v18 ^ 0x2ACB2A7A));
  (*(v9 + 8 * ((v11 + 174) ^ 0xED1)))(&v18);
  return v14 ^ v7;
}

uint64_t sub_1A23B46A0@<X0>(unsigned int a1@<W8>)
{
  v4 = 2 * (v3 ^ 0x2B5);
  v5 = (*(v2 + 8 * (v4 ^ 0x3FF)))(((((v4 - 1422) | 0x420) ^ (v1 + 259)) + ((v4 - 1080) | 0x143)) ^ a1, 2243760202) == 0;
  return (*(v2 + 8 * ((37 * v5) ^ v4)))();
}

uint64_t sub_1A23B47AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v15 = a12 < 0x7E69A7A1;
  if (v15 == v12 > 0x8196585E)
  {
    LOBYTE(v15) = v12 + 2120853409 < a12;
  }

  return (*(v14 + 8 * (v13 ^ (16 * (((v13 + 12) ^ v15) & 1)))))();
}

void sub_1A23B480C()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * (dword_1EB094860 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D510[byte_1A2739520[(11 * (dword_1EB094860 ^ 0x43 ^ qword_1EB094620))] ^ 0x73]) - 44);
  v1 = 11 * (*v0 ^ qword_1EB094620 ^ 0x43);
  v2 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + v1 - 4) ^ 0x4Fu) - 12) ^ v1) + 74);
  v3 = *v0 - &v10 + *(v2 - 4);
  v4 = (1922045707 * v3) ^ 0x21D37FB25A3D4D43;
  v5 = 1922045707 * (v3 ^ 0x21D37FB25A3D4D43);
  *v0 = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = 11 * ((v5 - *v0) ^ 0x43);
  **(&off_1F14948E0 + (*(off_1F1494A90 + (*(off_1F1494EA0 + v5 - 8) ^ 0xAEu)) ^ v5) + 97) = 1863271989;
  v6 = off_1F1494B98;
  v7 = off_1F1494B60 - 12;
  v8 = *(&off_1F14948E0 + ((11 * (dword_1EB094860 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D510[byte_1A2739520[(11 * (dword_1EB094860 ^ 0x43 ^ qword_1EB094620))] ^ 0x4D]) - 100) - 8;
  v9 = (*&v8[8 * (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((*(v2 - 4) + *v0) ^ 0x43))] ^ 0x36u) - 12) ^ (11 * ((*(v2 - 4) + *v0) ^ 0x43))) + 22872])(512, 0x100004077774924);
  *(*(&off_1F14948E0 + ((11 * ((*(v2 - 4) + *v0) ^ 0x43)) ^ v7[(*v6)[(11 * ((*(v2 - 4) + *v0) ^ 0x43))] ^ 0xAB]) - 1) - 4) = v9;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23B4A68@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, unsigned int a22, char a23)
{
  v30 = &a23 + v23;
  v31 = *(v25 + 8 * a2);
  v32 = STACK[0x2A4];
  v33 = STACK[0x2A8];
  v34 = LOBYTE(STACK[0x2B4]);
  if (v34 == 2)
  {
    v37 = &v30[v27 + 1208509417];
    v38 = ((*v37 ^ v28) << 24) | ((v37[1] ^ v28) << 16) | ((v37[2] ^ v28) << 8);
    *v29 = (v38 | v37[3] ^ v28) + v26 - 2 * ((v38 | v37[3] ^ v28) & (v26 + 10) ^ (v37[3] ^ v28) & 0xA);
    return (*(v25 + 8 * ((1050 * ((v27 + 1208509421) < 0x40)) ^ a22)))(v24 + 16);
  }

  else if (v34 == 1)
  {
    v35 = &v30[v27 + 1208509417];
    v36 = a21 ^ *v35;
    LODWORD(v35) = ((v35[2] ^ v28) << 16) | ((v35[3] ^ v28) << 24) | v36 | ((v35[1] ^ v28) << 8);
    *v29 = v35 + v26 - 2 * (v35 & (v26 + 10) ^ v36 & 0xA);
    return (*(v25 + 8 * ((567 * ((v27 + 1208509421) < 0x40)) ^ (a1 + 275))))();
  }

  else
  {
    v39 = (((LODWORD(STACK[0x29C]) ^ 0xCA900226) + 896531930) ^ ((LODWORD(STACK[0x29C]) ^ 0x17A91053) - 396955731) ^ ((LODWORD(STACK[0x29C]) ^ 0xE6EC6205) + 420716027)) + (((LODWORD(STACK[0x29C]) ^ 0x633F2940) - 1665083712) ^ ((LODWORD(STACK[0x29C]) ^ 0xA594E56F) + 1516968593) ^ ((LODWORD(STACK[0x29C]) ^ 0xFD7EBC5F) + 42025889)) - 1776850168;
    v40 = (((LODWORD(STACK[0x2A0]) ^ 0x3A5D040E) - 979174414) ^ ((LODWORD(STACK[0x2A0]) ^ 0x9F4848BF) + 1622652737) ^ ((LODWORD(STACK[0x2A0]) ^ 0x9EC03CC1) + 1631568703)) + (((LODWORD(STACK[0x2A0]) ^ 0x5D329751) - 1563596625) ^ ((LODWORD(STACK[0x2A0]) ^ 0x9505E3ED) + 1794776083) ^ ((LODWORD(STACK[0x2A0]) ^ 0xF3E204CC) + 203291444)) - 750490035;
    LODWORD(STACK[0x29C]) = v39 ^ ((v39 ^ 0xB4018264) + 1435695028) ^ ((v39 ^ 0x5C5F3EBA) - 1110684818) ^ ((v39 ^ 0x1CDC908) - 530662176) ^ ((v39 ^ 0xF7FFFFFE) + 376212010) ^ 0x25B9FA58;
    LODWORD(STACK[0x2A0]) = v40 ^ ((v40 ^ 0xCFAC77DB) + 1808401738) ^ ((v40 ^ 0xD6CAC42D) + 1923921600) ^ ((v40 ^ 0xBC00D16C) + 409379839) ^ ((v40 ^ 0xFEFFEFF7) + 1520016742) ^ 0x604CFD1D;
    v41 = (((v32 ^ 0xF5582EAB) + 178770261) ^ ((v32 ^ 0xEFD87386) + 271027322) ^ ((v32 ^ 0x21552D5D) - 559230301)) + (((LODWORD(STACK[0x2A4]) ^ 0x3826D862) - 942069858) ^ ((LODWORD(STACK[0x2A4]) ^ 0x92CC7CD0) + 1832092464) ^ ((LODWORD(STACK[0x2A4]) ^ 0x913FD4C2) + 1858087742)) - 1575870432;
    v42 = (v41 ^ 0xD196909C) & (2 * (v41 & 0xD598C0C0)) ^ v41 & 0xD598C0C0;
    v43 = ((2 * (v41 ^ 0x72A6909C)) ^ 0x4E7CA0B8) & (v41 ^ 0x72A6909C) ^ (2 * (v41 ^ 0x72A6909C)) & 0xA73E505C;
    v44 = v43 ^ 0xA1025044;
    v45 = (v43 ^ 0x6240000) & (4 * v42) ^ v42;
    v46 = ((4 * v44) ^ 0x9CF94170) & v44 ^ (4 * v44) & 0xA73E505C;
    v47 = (v46 ^ 0x84384040) & (16 * v45) ^ v45;
    v48 = ((16 * (v46 ^ 0x2306100C)) ^ 0x73E505C0) & (v46 ^ 0x2306100C) ^ (16 * (v46 ^ 0x2306100C)) & 0xA73E5050;
    v49 = v47 ^ 0xA73E505C ^ (v48 ^ 0x23240000) & (v47 << 8);
    v50 = v41 ^ (2 * ((v49 << 16) & 0x273E0000 ^ v49 ^ ((v49 << 16) ^ 0x505C0000) & (((v48 ^ 0x841A501C) << 8) & 0x273E0000 ^ 0x12E0000 ^ (((v48 ^ 0x841A501C) << 8) ^ 0x3E500000) & (v48 ^ 0x841A501C))));
    v51 = (((v33 ^ 0xA265FE70) + 1570374032) ^ ((v33 ^ 0x1FA1DCAF) - 530701487) ^ ((v33 ^ 0x861152AF) + 2045685073)) + (((LODWORD(STACK[0x2A8]) ^ 0x2274B8E6) - 578074854) ^ ((LODWORD(STACK[0x2A8]) ^ 0x5A55D4AB) - 1515574443) ^ ((LODWORD(STACK[0x2A8]) ^ 0x43F41C3D) - 1140071485)) - 991234926;
    v52 = (v51 ^ 0x303FE90D) & (2 * (v51 & 0xB2BFEC4E)) ^ v51 & 0xB2BFEC4E;
    v53 = ((2 * (v51 ^ 0x3168B105)) ^ 0x7AEBA96) & (v51 ^ 0x3168B105) ^ (2 * (v51 ^ 0x3168B105)) & 0x83D75D4A;
    v54 = v53 ^ 0x80514549;
    v55 = (v53 ^ 0x3861000) & (4 * v52) ^ v52;
    v56 = ((4 * v54) ^ 0xF5D752C) & v54 ^ (4 * v54) & 0x83D75D48;
    v57 = (v56 ^ 0x3555500) & (16 * v55) ^ v55;
    v58 = ((16 * (v56 ^ 0x80820843)) ^ 0x3D75D4B0) & (v56 ^ 0x80820843) ^ (16 * (v56 ^ 0x80820843)) & 0x83D75D40;
    v59 = v57 ^ 0x83D75D4B ^ (v58 ^ 0x1555400) & (v57 << 8);
    LODWORD(STACK[0x2A4]) = v50 ^ 0xA0091008;
    LODWORD(STACK[0x2A8]) = v51 ^ (2 * ((v59 << 16) & 0x3D70000 ^ v59 ^ ((v59 << 16) ^ 0x5D4B0000) & (((v58 ^ 0x8282094B) << 8) & 0x3D70000 ^ 0x820000 ^ (((v58 ^ 0x8282094B) << 8) ^ 0x575D0000) & (v58 ^ 0x8282094B)))) ^ 0x8C4226A8;
    return v31();
  }
}

uint64_t sub_1A23B4E04@<X0>(_DWORD *a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  *a1 = 0;
  v15 = a2 + 1027385226;
  v16 = v13 + a2 + 500;
  a13 = (a2 - 2055127334) ^ (210068311 * (((&a12 | 0x6847323F) + (~&a12 | 0x97B8CDC0)) ^ 0xFA910D9A));
  v17 = (*(v14 + 8 * (a2 ^ 0xC2C35146)))(&a12);
  return (*(v14 + 8 * ((1242 * (a12 == (v15 ^ 0x6F0F4575))) ^ v16)))(v17);
}

uint64_t sub_1A23B4EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v22 - 112) = &a19;
  *(v22 - 128) = &a17;
  *(v22 - 120) = ((v20 ^ 0x43) + 1430) ^ (210068311 * ((((v22 - 128) | 0x6FB32E01) + (~(v22 - 128) | 0x904CD1FE)) ^ 0xFD6511A4));
  v23 = (*(v19 + 8 * (v20 ^ 0xEF7)))(v22 - 128);
  return (*(v19 + 8 * ((3185 * (v21 == (v20 ^ 0x5A6) - 446)) ^ v20 ^ 0x43)))(v23);
}

uint64_t sub_1A23B4FB0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = (a1 + 112741068) & 0xF947B7FF;
  if (((a31 - a1) | (a1 - a31)) <= (v48 - 717))
  {
    v49 = 0x80000000;
  }

  else
  {
    v49 = -2147483647;
  }

  *v46 = v49 ^ (a1 + 1);
  (*(v47 + 8 * (a1 ^ 0xB4A)))(a46);
  v50 = (v48 + 340) | 0x24C;
  v51 = v46[1];
  v52 = v46[398] ^ ((v46[2] & 0x7FFFFFFE | v51 & 0x80000000) >> 1) ^ *(&STACK[0x17D8] + (v46[2] & 1));
  *v46 = v46[397] ^ ((v51 & 0x7FFFFFFE | ((v50 - 128636562) & 0x7AAD27D ^ 0x80000258) & *v46) >> 1) ^ *(&STACK[0x17D8] + (v51 & 1));
  v46[1] = v52;
  return (*(v47 + 8 * v50))();
}

uint64_t sub_1A23B51AC()
{
  result = (*(v3 + 8 * (v0 ^ 0x331)))(v2);
  *(v1 + 16) = 1845842811;
  return result;
}

uint64_t sub_1A23B51E8@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(&off_1F14948E0 + (a2 ^ (a1 - 100))) - 8;
  v11 = 34 * (a2 ^ (a1 + 617) ^ 0x591u);
  v13 = ((**(a7 + 80) - (*v10 ^ 0x89)) ^ 0xE777D3B3) + (((v11 + 546439864) | 0x110121A1) ^ 0xCD6F469D) + ((2 * (**(a7 + 80) - (*v10 ^ 0x89))) & 0xCEEFA766) == v8 && v11 != 1419;
  return (*(v9 + 8 * ((47 * v13) ^ v11)))(v7);
}

uint64_t sub_1A23B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v20 = STACK[0x230];
  STACK[0x440] -= 32;
  *(v20 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(v18 + 8 * (a18 - 1759)) + 3) ^ *(*(v18 + 8 * (a18 - 1746)) + 5) ^ *(*(v18 + 8 * (a18 ^ 0x782)) + ((a18 + 1183169236) & 0xB97A3FFC ^ 0x1F7) + 15 - 8) ^ 0x89;
  return (*(v19 + 8 * a18))();
}

uint64_t sub_1A23B5360()
{
  v5 = (v1 + v4 - 220 + 8);
  *(v5 - 1) = 0x8989898989898989;
  *v5 = 0x8989898989898989;
  return (*(v3 + 8 * ((((v0 & 0x30) == 16) * (((v2 ^ 0x1E6) - 306) ^ 0x3A8)) ^ v2 ^ 0x1E6)))();
}

uint64_t sub_1A23B5428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = (*(v77 + 8 * (v78 ^ 0xA5A)))(*a34, v74, (((v78 + 375) | 0x48) - 1156277311) ^ a17, a34[13] - 795121240, &STACK[0x1788], v76, v75, &STACK[0x17B8]);
  v82 = v80;
  if (v80 == 268435459)
  {
    return (*(v77 + 8 * ((43 * (v73 < ((a56 + 1372983595) & 0xAE29EE9F ^ 0x294))) ^ (a56 + 131))))(v80, v81);
  }

  if (v80)
  {
    v83 = 210068311 * (((((v79 - 192) | 0x3BDBFA3E) ^ 0xFFFFFFFE) - (~(v79 - 192) | 0xC42405C1)) ^ 0x56F23A65);
    *(v79 - 176) = v83 + a56 + 124;
    *(v79 - 184) = &a66;
    *(v79 - 192) = (v80 + 1863271989 - ((2 * v80) & 0xDE1E8C6A)) ^ v83;
    v84 = (*(v77 + 8 * (a56 ^ 0x9F2)))(v79 - 192);
    LODWORD(STACK[0x30C]) = v73;
    LODWORD(STACK[0x318]) = v82;
    return (*(v77 + 8 * ((459 * (a66 == ((11 * (a56 ^ 0x275)) ^ 0x6F0F41C6))) ^ (a56 - 704))))(v84);
  }

  else
  {
    (*(v77 + 8 * (a56 + 2176)))(*a28, v76, v75);
    STACK[0x310] = 0;
    LODWORD(STACK[0x438]) = 0;
    v85 = a34[13];
    v86 = (v85 ^ 0xC8D34D27) & (2 * (v85 & 0xD09B69A8)) ^ v85 & 0xD09B69A8;
    v87 = (((v85 ^ 0x68D31D77) << (((a56 + 52) | 0x27) ^ 0x26)) ^ 0x7090E9BE) & (v85 ^ 0x68D31D77) ^ ((v85 ^ 0x68D31D77) << (((a56 + 52) | 0x27) ^ 0x26)) & 0xB84874DE;
    v88 = v87 ^ 0x88481441;
    v89 = (v87 ^ 0x8007081) & (4 * v86) ^ v86;
    v90 = ((4 * v88) ^ 0xE121D37C) & v88 ^ (4 * v88) & 0xB84874DC;
    v91 = (v90 ^ 0xA0005040) & (16 * v89) ^ v89;
    v92 = ((16 * (v90 ^ 0x18482483)) ^ 0x84874DF0) & (v90 ^ 0x18482483) ^ (16 * (v90 ^ 0x18482483)) & 0xB84874D0;
    v93 = v91 ^ 0xB84874DF ^ (v92 ^ 0x80004400) & (v91 << 8);
    v94 = v85 ^ (2 * ((v93 << 16) & 0x38480000 ^ v93 ^ ((v93 << 16) ^ 0x74DF0000) & (((v92 ^ 0x3848300F) << 8) & 0x38480000 ^ 0x30080000 ^ (((v92 ^ 0x3848300F) << 8) ^ 0x48740000) & (v92 ^ 0x3848300F)))) ^ 0xB3F05D19;
    v95 = a73 ^ 0x7F6FD3FF;
    v96 = (2 * a73) & 0xFEDFA7FE;
    v97 = 1564307779 * ((v79 - 192) ^ 0x970DCC13);
    *(v79 - 168) = v94 + v97;
    *(v79 - 160) = a61;
    *(v79 - 152) = &STACK[0x17B8];
    *(v79 - 184) = a53;
    *(v79 - 176) = (a56 - 685) ^ v97;
    *(v79 - 172) = v95 - v97 + v96 - 1611039056;
    *(v79 - 192) = v97 ^ a17 & 0x7FFFFFFF ^ 0xC87F4382;
    v98 = (*(v77 + 8 * (a56 + 2243)))(v79 - 192);
    return (*(v77 + 8 * ((3891 * (*(v79 - 164) == 1863271989)) ^ (a56 + 1030))))(v98);
  }
}

uint64_t sub_1A23B566C@<X0>(unsigned int a1@<W8>)
{
  v4 = v1 - 88;
  v5 = (*(v2 + 8 * (v4 + 689)))((v3 + ((11 * (v4 ^ 0x863) - 1612886876) & 0x6022BABF) - 2211) ^ a1, 990205657) != 0;
  return (*(v2 + 8 * ((202 * v5) ^ v4)))();
}

uint64_t sub_1A23B56E4@<X0>(unsigned int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (v4 + 15 * (a1 ^ 3) + 33) & 0xF;
  v9 = v8 + v3 + (a1 ^ 0x130) - v4;
  v10 = v8 + v3 + 1;
  v11 = v8 + v2 + 4;
  v12 = v8 + v1 + 6;
  v14 = v10 > v6 && v9 < v7;
  if (v11 > v6 && v11 - v4 < v7)
  {
    v14 = 1;
  }

  v17 = v12 > v6 && v12 - v4 < v7 || v14;
  return (*(v5 + 8 * ((112 * (v17 ^ 1)) ^ a1)))();
}

uint64_t sub_1A23B57B0()
{
  v4 = STACK[0x360] + 128;
  STACK[0x2B8] = v4;
  v5 = 1556366573 * ((v3 - 981257991 - 2 * ((v3 - 192) & 0xC58331B9)) ^ 0xA1671253);
  *(v3 - 188) = v5 ^ 0xD9C233F9;
  *(v3 - 184) = v4;
  *(v3 - 176) = -875954804 - v5 + v0 + 709;
  v6 = (*(v2 + 8 * (v0 + 2815)))(v3 - 192);
  STACK[0x468] = v4;
  LODWORD(STACK[0x474]) = 17;
  STACK[0x390] = v1;
  return (*(v2 + 8 * ((2125 * ((*(v4 + 68) & (((v0 ^ 0x2F8) - 306) ^ 0x1F2u)) + 17 > (((v0 ^ 0x2F8) - 314) ^ 0x1FAu))) ^ v0 ^ 0x2F8)))(v6, 45);
}

uint64_t sub_1A23B5874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *v45 = 0x7676767676767676;
  v45[1] = 0x898989898F89899BLL;
  v50 = 143681137 * (((v49 - 192) & 0xC8CDFFE1 | ~((v49 - 192) | 0xC8CDFFE1)) ^ 0x5608B756);
  *(v49 - 192) = (v46 - 473375623) ^ v50;
  *(v49 - 188) = v50 - 879057998;
  v51 = *(v47 + 8 * (v46 ^ 0xCA8));
  STACK[0x208] = v48;
  v51(v49 - 192);
  LODWORD(STACK[0x34C]) = 2044285342;
  v52 = (*(v47 + 8 * (v46 + 904)))(336, 0x100004077774924);
  STACK[0x238] = v52;
  return (*(v47 + 8 * (((v52 == 0) * ((v46 - 1309) ^ 0x33 ^ (v46 + 1100630085) & 0xBE65B2DF)) ^ v46)))(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

void sub_1A23B5A20(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v4 + 4) = 85;
  *(a1 + (v3 + 2) + 4) = 73;
  v6 = v3 + 4 + ((49 * ((a3 - 343) ^ (v5 - 5))) ^ 0x156);
  *a1 = v6;
  v7 = a1 + 1;
  *(v7 + (v3 + 3)) = 68;
  *(v7 + v3) = 47;
  *(v7 + (v3 + 4)) = 61;
  *(v7 + v6) = 0;
  JUMPOUT(0x1A23F08BCLL);
}

uint64_t sub_1A23B5AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  STACK[0x2B0] = STACK[0x2B8];
  STACK[0x428] = a47;
  STACK[0x408] = a47;
  return (*(v56 + 8 * ((((((a56 + 56) | 0x1B) ^ (a47 == 0)) & 1) * (((((a56 - 712) | 0x41B) - 411) | 0x48) - 607)) ^ ((a56 - 712) | 0x41B))))(186, a2, 413509333);
}

uint64_t sub_1A23B5BC0@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, uint64_t a6, unsigned int a7, char *a8, int a9)
{
  v13 = (((&a5 | 0xAB40BB7F) - (&a5 & 0xAB40BB7F)) ^ 0x50830C64) * a1;
  a5 = v12 - v13 + 11;
  a8 = &a3;
  a9 = v13 ^ 0x57AA81B6;
  a7 = -1346318218 - v13;
  a6 = v9;
  v14 = (*(v10 + 8 * (v12 + 2346)))(&a5);
  return (*(v10 + 8 * ((62 * (*(v9 + 24) == ((((v12 - 866677409) & 0x33A871FF) + 1152) ^ (v11 + 276)))) ^ v12)))(v14);
}

uint64_t sub_1A23B646C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (a2 + 239) | 0x10D;
  *v9 = a1;
  *v8 = v2;
  v13 = v11;
  v12 = (v6 + 1375) ^ (((&v12 & 0x2EBE60CA | ~(&v12 | 0x2EBE60CA)) ^ 0xFB8AB54F) * v5);
  (*(v4 + 8 * (v6 + 1942)))(&v12);
  v12 = (v6 + 1375) ^ ((&v12 ^ 0x2ACB2A7A) * v5);
  v13 = v10;
  (*(v4 + 8 * ((v6 - 692) ^ 0xBBA)))(&v12);
  return v3 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(void))
{
  v24 = (((v20 ^ 0x8F582B21) + 1890047199) ^ ((v20 ^ 0x45C66D1B) - 1170631963) ^ ((v20 ^ 0xF14B364A) + 246729142)) + (((*(v22 - 180) ^ 0xA370A5B) - 171379291) ^ ((*(v22 - 180) ^ 0x52DB2DE3) - 1390095843) ^ ((*(v22 - 180) ^ 0x633957C8) - 1664702408)) - 1466308302;
  v25 = (v24 ^ 0xCF10F7AC) & (2 * (v24 & 0xCF10F7AE)) ^ v24 & 0xCF10F7AE;
  v26 = ((2 * (v24 ^ 0x5310FCF8)) ^ 0x380016AC) & (v24 ^ 0x5310FCF8) ^ (2 * (v24 ^ 0x5310FCF8)) & 0x9C000B56;
  v27 = v26 ^ 0x84000952;
  v28 = (v26 ^ 0x98000200) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0x70002D58) & v27 ^ (4 * v27) & 0x9C000B54;
  v30 = (v29 ^ 0x10000940) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0x8C000206)) ^ 0xC000B560) & (v29 ^ 0x8C000206) ^ (16 * (v29 ^ 0x8C000206)) & 0x9C000B50;
  v32 = v24 ^ (2 * (((v30 ^ 0x9C000B56 ^ v31 & (v30 << 8)) << 16) & 0x1C000000 ^ v30 ^ 0x9C000B56 ^ v31 & (v30 << 8) ^ (((v31 ^ 0x1C000A16) << 8) & 0x9C000000 ^ (((v31 ^ 0x1C000A16) << 8) ^ 0xB0000) & (v31 ^ 0x1C000A16) ^ 0x1C000000) & (((v30 ^ 0x9C000B56 ^ v31 & (v30 << 8)) << 16) ^ 0xB560000)));
  v33 = (((v23 ^ 0x339F3D2F) - 866073903) ^ ((v23 ^ 0x294DBB24) - 692960036) ^ ((v23 ^ 0x2107F67B) - 554169979)) + (((*(v22 - 176) ^ 0xB4E72E07) + 1259917817) ^ ((*(v22 - 176) ^ 0x662EDB2) - 107146674) ^ ((*(v22 - 176) ^ 0x8950B3C5) + 1991199803)) - 954448397;
  *(v22 - 180) = v32 ^ 0xDCC59172;
  *(v22 - 176) = v33 ^ ((v33 ^ 0x5F33759A) - 272765065) ^ ((v33 ^ 0x941BD0FE) + 613763603) ^ ((v33 ^ 0x7B223D88) - 877877403) ^ ((v33 ^ 0xFF7BFDFF) + 1341482772) ^ 0x74A41563;
  v34 = (((v19 ^ 0xF204E9FD) + 234558979) ^ ((v19 ^ 0xBC99CEEE) + 1130770706) ^ ((v19 ^ 0x75485763) - 1967675235)) + (((*(v22 - 172) ^ 0x354D2738) - 894248760) ^ ((*(v22 - 172) ^ 0x6ED4C472) - 1859437682) ^ ((*(v22 - 172) ^ 0x604C933A) - 1615631162)) - 1225778883;
  v35 = (((v21 ^ 0xC909A190) + 922115696) ^ ((v21 ^ 0x3E6B1934) - 1047206196) ^ ((v21 ^ 0xCCB7C8D4) + 860370732)) + (((*(v22 - 168) ^ 0xE7220FA9) + 417198167) ^ ((*(v22 - 168) ^ 0xE3A1EB23) + 475927773) ^ ((*(v22 - 168) ^ 0x3F5694FA) - 1062638842)) - 1664022561;
  v36 = (v35 ^ 0xDAD99110) & (2 * (v35 & 0xDAD9D901)) ^ v35 & 0xDAD9D901;
  v37 = ((2 * (v35 ^ 0x4E5A2110)) ^ 0x2907F022) & (v35 ^ 0x4E5A2110) ^ (2 * (v35 ^ 0x4E5A2110)) & 0x9483F810;
  v38 = v37 ^ 0x94800811;
  v39 = (v37 ^ 0x3E000) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0x520FE044) & v38 ^ (4 * v38) & 0x9483F810;
  v41 = (v40 ^ 0x1003E000) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x84801811)) ^ 0x483F8110) & (v40 ^ 0x84801811) ^ (16 * (v40 ^ 0x84801811)) & 0x9483F810;
  v43 = v41 ^ 0x9483F811 ^ (v42 ^ 0x38000) & (v41 << 8);
  *(v22 - 172) = v34 ^ ((v34 ^ 0xB3789627) + 1942114694) ^ ((v34 ^ 0x8CB5C2FA) + 1276052825) ^ ((v34 ^ 0x5FF5937F) - 1622190882) ^ ((v34 ^ 0x5F7DFFFF) - 1614333858) ^ 0x490482D;
  *(v22 - 168) = v35 ^ (2 * ((v43 << 16) & 0x14830000 ^ v43 ^ ((v43 << 16) ^ 0x78110000) & (((v42 ^ 0x94807801) << 8) & 0x14830000 ^ 0x14030000 ^ (((v42 ^ 0x94807801) << 8) ^ 0x3F80000) & (v42 ^ 0x94807801)))) ^ 0xE8095953;
  return a19(0);
}

uint64_t sub_1A23B65B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = ((85 * (v3 ^ (v4 + 19))) ^ 0xFFFFFFFFFFFFF65ELL) + v2;
  v8 = *(a2 + v7 - 15);
  v9 = *(a2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((3867 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v5 + v3 + 1694))))();
}

uint64_t sub_1A23B6688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a2 + v2 - 32);
  v7 = (a1 + v2 - 32);
  v8.i64[0] = 0x8989898989898989;
  v8.i64[1] = 0x8989898989898989;
  v9 = veorq_s8(v6[1], v8);
  *v7 = veorq_s8(*v6, v8);
  v7[1] = v9;
  v10 = (v4 + v3 + 1801) - (v2 & 0xFFFFFFE0) == 1737;
  return (*(v5 + 8 * (((4 * v10) | (16 * v10)) ^ (v4 + v3 + 548))))();
}

uint64_t sub_1A23B6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = v18 - 3;
  v22 = (v21 ^ 0xE7040541) & (2 * (((v19 - 586445012) & 0x22F46FF6 ^ (v17 + 1763) ^ (v19 + 1448765092) & 0xA9A5919C) & v21)) ^ ((v19 - 586445012) & 0x22F46FF6 ^ (v17 + 1763) ^ (v19 + 1448765092) & 0xA9A5919C) & v21;
  v23 = ((2 * (v21 ^ 0xEA540761)) ^ 0x1BFA1CE2) & (v21 ^ 0xEA540761) ^ (2 * (v21 ^ 0xEA540761)) & 0xDFD0E70;
  v24 = v23 ^ 0x4050211;
  v25 = (v23 ^ 0x9E90E51) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x37F439C4) & v24 ^ (4 * v24) & 0xDFD0E70;
  v27 = v25 ^ 0xDFD0E71 ^ (v26 ^ 0x5F40851) & (16 * v25);
  v28 = (16 * (v26 ^ 0x8090631)) & 0xDFD0E70 ^ 0x2D0861 ^ ((16 * (v26 ^ 0x8090631)) ^ 0xDFD0E710) & (v26 ^ 0x8090631);
  v29 = (v27 << 8) & 0xDFD0E00 ^ v27 ^ ((v27 << 8) ^ 0xFD0E7100) & v28;
  v30 = (v18 - 3) ^ 0xE070D4D0 ^ (2 * ((v29 << 16) & 0xDFD0000 ^ v29 ^ ((v29 << 16) ^ 0xE710000) & ((v28 << 8) & 0xDFD0000 ^ 0xF10000 ^ ((v28 << 8) ^ 0x7D0E0000) & v28)));
  v31 = ((2 * ((v20 - 144) & 0x2DF02B58) - (v20 - 144) + 1376769191) ^ 0xD1BF5EB1) * v16;
  *(v20 - 136) = a15;
  *(v20 - 140) = v30 - v31;
  *(v20 - 128) = v31 + v19 - 1479;
  v32 = (*(v15 + 8 * (v19 + 627)))(v20 - 144);
  return (*(v15 + 8 * ((449 * (*(v20 - 144) == -147050827)) ^ v19)))(v32);
}

uint64_t sub_1A23B6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  LODWORD(a36) = v56;
  (*(v59 + 8 * a31))(a32 + 16, 0x100004077774924);
  v60 = (*(v59 + 8 * (a56 + 2116)))();
  *v58 = v60;
  v58[v57] = v57 + 1812433253 * (v60 ^ (v60 >> 30));
  return (*(v59 + 8 * ((51 * (v57 < HIDWORD(a31) - 609)) ^ HIDWORD(a31))))(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1A23B6A0C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (a1 + v4 - 16);
  v8 = (v2 + v4 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (247 * (v5 ^ (a2 + 2129)) + 1269)) ^ (v3 + v5 + 773))))();
}

uint64_t sub_1A23B6A8C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t))
{
  v18 = 1785193651 * ((~((v17 - 184) | 0xC90EED98) + ((v17 - 184) & 0xC90EED98)) ^ 0xB5419871);
  *(v17 - 176) = &STACK[0x254];
  *(v17 - 184) = a2 - v18 + 1270;
  *(v17 - 168) = 990375005 - v18;
  (*(v16 + 8 * (a2 ^ 0xB38)))(v17 - 184);
  return a16(18, a1);
}

uint64_t sub_1A23B6B2C(uint64_t a1)
{
  v3 = (*(v1 + 23216))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 23120))(a1);
  return v5;
}

uint64_t sub_1A23B6B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v27 = 1388665877 * (((&a17 | 0x4C159450) - (&a17 & 0x4C159450)) ^ 0xC1B8F6BC);
  a18 = a15;
  HIDWORD(a19) = a13 + 1108 + v27;
  LODWORD(a17) = v27 ^ (199880445 * v26 + 103127814);
  (*(v25 + 8 * (a13 + 1198)))(&a17);
  v28 = 1388665877 * ((((&a17 | 0x99B381C0) ^ 0xFFFFFFFE) - (~&a17 | 0x664C7E3F)) ^ 0xEBE11CD3);
  HIDWORD(a19) = a13 + 1108 + v28;
  a18 = a15;
  LODWORD(a17) = (199880445 * (v23 >> ((a13 + 94) ^ 0xFB)) + 103127814) ^ v28;
  (*(v25 + 8 * (a13 ^ 0xD56)))(&a17);
  v29 = 1388665877 * ((-1641205782 - (&a17 | 0x9E2D2FEA) + (&a17 | 0x61D2D015)) ^ 0xEC7FB2F9);
  LODWORD(a17) = v29 ^ (199880445 * v23 + 103127814);
  HIDWORD(a19) = a13 + 1108 + v29;
  a18 = a15;
  (*(v25 + 8 * (a13 + 1198)))(&a17);
  a18 = a15;
  a19 = v22;
  a20 = a13 - 1785193651 * ((-1641005426 - (&a17 | 0x9E303E8E) + (&a17 | 0x61CFC171)) ^ 0xE27F4B67) + 299;
  (*(v25 + 8 * (a13 ^ 0xD33)))(&a17);
  v30 = 1388665877 * ((((&a17 | 0xF7AD03DA) ^ 0xFFFFFFFE) - (~&a17 | 0x852FC25)) ^ 0x85FF9EC9);
  HIDWORD(a19) = a13 + 1108 + v30;
  LODWORD(a17) = v30 ^ (199880445 * v20 + 103127814);
  a18 = a15;
  (*(v25 + 8 * (a13 + 1198)))(&a17);
  v31 = 1037613739 * ((&a17 & 0xB272DC37 | ~(&a17 | 0xB272DC37)) ^ 0x9C8F0EB7);
  a20 = v31 ^ ((a12 ^ 0x7FFFF77D) - 1095901192 + ((2 * a12) & 0xFFFFEEFA));
  a19 = v24;
  LODWORD(a18) = a13 - v31 - 1281;
  a17 = a15;
  v32 = (*(v25 + 8 * (a13 + 1210)))(&a17);
  return (*(v25 + 8 * ((3243 * (HIDWORD(a18) == v21)) ^ a13)))(v32);
}

uint64_t sub_1A23B6EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = (v72 + 362) ^ 0x58;
  (*(v74 + 8 * (v72 + 2594)))(*a28, a60, a72);
  v77 = 843532609 * (((v73 | 0x38E11C5B576BFE1ELL) - (v73 & 0x38E11C5B576BFE1ELL)) ^ 0xA571286E47D78940);
  v78 = v76 - 1110576819 + v77;
  *(v75 - 192) = 55969222 - v77 + v76;
  *(v75 - 160) = ((v76 - 1110576819) ^ 0x5A) + v77;
  *(v75 - 156) = v78;
  *(v75 - 184) = a65 + v77;
  *(v75 - 176) = v77 + 2431655407u;
  *(v75 - 168) = v77;
  *(v75 - 164) = v78 + 54;
  v79 = (*(v74 + 8 * (v76 | 0x810)))(v75 - 192);
  return (*(v74 + 8 * *(v75 - 188)))(v79);
}

uint64_t sub_1A23B6FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v16 = a14 - 1389192254;
  if (a14 - 1389192254 < 0)
  {
    v16 = 1389192254 - a14;
  }

  return (*(v15 + 8 * ((3537 * (((v16 ^ 0x52CDFFBF) + ((v14 - 1969737191) & 0x7567CDEE ^ 0xFFFF6193) + ((2 * v16) & 0xA59BFF7E) + ((((((v14 - 1969737191) & 0x7567CDEE) - 1388) | 0x564) + 560) ^ 0xAD3293D5)) >= 0)) ^ (v14 - 1969737191) & 0x7567CDEE)))(832093792);
}

uint64_t sub_1A23B7090@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, char *, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27)
{
  v29 = 1785193651 * ((((v28 - 176) | 0x282306B3) - ((v28 - 176) & 0x282306B3)) ^ 0xAB938CA5);
  *(v28 - 168) = a1;
  *(v28 - 160) = 990375005 - v29;
  *(v28 - 176) = a2 - v29 + 1259;
  v30 = (*(v27 + 8 * (a2 ^ 0xB0D)))(v28 - 176);
  return a14(v30, &a27, 18);
}

uint64_t sub_1A23B7124@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v3 + a2 + v2;
  STACK[0x3C8] = v5;
  *(a1 + v5) = (&STACK[0x3C8] + (a2 ^ 0xDD)) * (&STACK[0x3C8] ^ 0xBA);
  return (*(v4 + 8 * ((123 * (v5 == 0)) ^ (a2 + 625))))();
}

uint64_t sub_1A23B7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = v25 - 144;
  *(v25 - 144) = a13;
  *(v25 - 120) = a14;
  *(v25 - 112) = &a22;
  *(v25 - 128) = &a22;
  *(v25 - 136) = v22 + 148 + 143681137 * ((2 * ((v25 - 144) & 0x2C2D30) - (v25 - 144) - 2895156) ^ 0x9EE96584);
  (*(v23 + 8 * (v22 + 2274)))(v25 - 144);
  *(v25 - 120) = a14;
  *(v25 - 112) = &a22;
  *(v25 - 144) = a13;
  *(v25 - 128) = &a22;
  *(v25 - 136) = v22 + 148 + 143681137 * ((((2 * (v25 - 144)) | 0xD7FD4388) - (v25 - 144) + 335633980) ^ 0x8AC4168C);
  (*(v23 + 8 * (v22 + 2274)))(v25 - 144);
  *(v25 - 128) = &a22;
  *(v25 - 120) = a14;
  *(v25 - 112) = &a22;
  *(v25 - 136) = v22 + 148 + 143681137 * ((-98327786 - ((v25 - 144) | 0xFA23A316) + ((v25 - 144) | 0x5DC5CE9)) ^ 0x64E6EBA1);
  *(v25 - 144) = a13;
  (*(v23 + 8 * (v22 ^ 0x92E)))(v25 - 144);
  v27 = 1785193651 * ((-1175184556 - (v26 | 0xB9F41B54) + (v26 | 0x460BE4AB)) ^ 0xC5BB6EBD);
  *(v25 - 140) = 109234736 - v27 + v24 - ((2 * v24 + 257036828) & 0x3DB38244);
  *(v25 - 136) = a15;
  *(v25 - 128) = v22 + 149 + v27;
  (*(v23 + 8 * (v22 ^ 0x951)))(v25 - 144);
  v28 = *(v25 - 144) != ((v22 + 1772) ^ 0xF73C21D7 ^ ((v22 - 71) | 0x411));
  v29 = 1785193651 * (((v26 | 0x5D7C6CE0) - v26 + (v26 & 0xA2839318)) ^ 0xDECCE6F6);
  *(v25 - 136) = a15;
  *(v25 - 140) = ~v29 + v24 + 109234736 - ((2 * v24 + 257036826) & 0x3DB38244);
  *(v25 - 128) = v22 + 149 + v29;
  v30 = (*(v23 + 8 * (v22 + 2255)))(v25 - 144);
  return (*(v23 + 8 * ((8 * v28) | (16 * v28) | v22)))(v30);
}

uint64_t sub_1A23B7514(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B7578@<X0>(char a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v25 = STACK[0x408];
  v26 = *(a2 + 72);
  *v25 = v26 ^ 0xF9;
  v25[1] = (BYTE1(v26) ^ 0x70) - ((v26 >> 7) & 0x12) - 119;
  v25[2] = (BYTE2(v26) ^ v23) - 2 * ((BYTE2(v26) ^ v23) & 0xB ^ BYTE2(v26) & 2) - 119;
  v25[3] = (a1 ^ HIBYTE(v26)) - ((2 * (a1 ^ HIBYTE(v26))) & 0x12) - 119;
  return (*(v24 + 8 * ((2729 * (*(a2 + 92) > 4u)) ^ ((a23 - 781) | 0x244))))(186);
}

uint64_t sub_1A23B766C(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  *a2 = 0;
  *a3 = 0;
  a15 = (210068311 * ((1681660321 - (&a14 | 0x643C19A1) + (&a14 | 0x9BC3E65E)) ^ 0x915D9FA)) ^ 0x48449A90;
  v18 = (*(v16 + 22400))(&a14);
  return (*(v16 + 8 * ((673 * (a14 == v15)) ^ v17)))(v18);
}

uint64_t sub_1A23B7708@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v5 < v3)
  {
    v10 = v9 + v5 < v1;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

uint64_t sub_1A23B7780@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((44 * (v4 - 1389192824 + ((v3 - 301) | 0x21A) == 0)) ^ v3)))();
}

uint64_t sub_1A23B77C0(uint64_t a1)
{
  v7 = *(v3 + 8 * (v6 + 1807));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1766)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_1A23B7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, int a21, int a22, uint64_t a23, char *a24)
{
  v27 = 143681137 * ((2 * (&a19 & 0x288FD868) - &a19 - 680515695) ^ 0xB64A90D9);
  a23 = a16;
  a24 = &a14;
  a20 = v27 + v26 + 1421512177;
  a21 = v27 ^ 0x12D2E9B1;
  a19 = (((v26 + 727846459) & 0x1175 ^ 0x6BFBFDF6) + 2 * (v24 & 1) + ((7 * (v26 ^ 0x141) - 177754282) ^ v24)) ^ v27;
  v28 = (*(v25 + 8 * (v26 + 2502)))(&a19);
  return (*(v25 + 8 * ((901 * (a22 == 1863271989)) ^ v26)))(v28);
}

uint64_t sub_1A23B7938()
{
  *(v3 - 128) = (v2 + 646) ^ (50899313 * ((v3 - 128) ^ 0x2ACB2A7A));
  *(v3 - 120) = v5;
  *(v3 - 112) = v0;
  return (*(v1 + 8 * (v2 ^ 0x8E5)))(v3 - 128);
}

uint64_t sub_1A23B7A20(uint64_t a1)
{
  v6 = (v1 - 2110471932) & 0x7DCB3BF6;
  v7 = (v6 + 112489175) & 0xF94B8FFE;
  *v3 = a1;
  *v2 = v9 ^ (v5 - 226) ^ v6;
  v12 = (v7 + 720) ^ (50899313 * ((((2 * &v12) | 0x8FCC013E) - &v12 - 1206255775) ^ 0x6D2D2AE5));
  v13 = v11;
  (*(v4 + 8 * (v7 ^ 0xD7F)))(&v12);
  v13 = v10;
  v12 = (v7 + 720) ^ (50899313 * (((&v12 | 0xE5B398CD) + (~&v12 | 0x1A4C6732)) ^ 0xCF78B2B6));
  (*(v4 + 8 * ((v7 - 1385) ^ 0xB90)))(&v12);
  return v5 ^ 0x6F0F4635u;
}

uint64_t sub_1A23B7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42, unsigned int a43, unsigned int a44, unsigned int a45, unsigned int a46, int a47, char a48)
{
  if (a48 == 2)
  {
    return sub_1A23EA934(a46);
  }

  if (a48 != 1)
  {
    return sub_1A23B2EA4(HIDWORD(a22), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &a28, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, *(v50 + 8 * (v48 - 29)), a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
  }

  v58 = &a32 + v52 + 1109036937;
  v59 = *v58 ^ v54;
  LODWORD(v58) = ((v58[2] ^ (-25 * (v56 ^ 0x28) - 69)) << 16) | ((v58[3] ^ v54) << 24) | v59 | ((v58[1] ^ v54) << 8);
  *(v55 + 4 * (v51 ^ 0x1086A3E1)) = v58 + v53 - 2 * (v58 & (v53 + 10) ^ v59 & v49);
  return (*(v50 + 8 * ((v56 + 1442) ^ (2 * ((v52 + 1109036937) > 0x3F)))))(743 * (v56 ^ 0x28u), 1, 1, 1, 1109036933, a6, a7, a8, a9, a10, a11, &a28, a13, a14, a15, a16, a17);
}

uint64_t sub_1A23B7C14(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v19 = v8 + 2;
  v20 = (v13 + (v12 + 32));
  v21 = veorq_s8(v19[-1], *v20);
  v22 = veorq_s8(*v19, v20[1]);
  return (*(v14 + 8 * (((v11 == 32) * (v9 - 1586)) ^ v10)))(vorrq_s8(vqtbl1q_s8(v21, v15), a1), vorrq_s8(vqtbl1q_s8(v21, v16), a2), vorrq_s8(vqtbl1q_s8(v21, v17), a3), vorrq_s8(vqtbl1q_s8(v21, v18), a4), vorrq_s8(vqtbl1q_s8(v22, v15), a5), vorrq_s8(vqtbl1q_s8(v22, v17), a6), vorrq_s8(vqtbl1q_s8(v22, v16), a7), vorrq_s8(vqtbl1q_s8(v22, v18), a8));
}

uint64_t sub_1A23B7C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = *(v12 - 252 + 4 * (v8 >> ((v10 ^ (a8 - 35)) + a3)) + 72);
  v14 = ((2 * v8) & 0x5EDAFFF8) + (v8 ^ 0xAF6D7FFE) + v9;
  *(a5 + v14) = v13 ^ 0xF9;
  *(a5 + v14 + 1) = (BYTE1(v13) ^ 0x70) - ((v13 >> 7) & 0x12) - 119;
  *(a5 + v14 + 2) = (BYTE2(v13) ^ 0xD5) - 2 * ((BYTE2(v13) ^ 0xD5) & 0xB ^ BYTE2(v13) & 2) - 119;
  *(a5 + v14 + 3) = (HIBYTE(v13) ^ 0x3B) - ((2 * (HIBYTE(v13) ^ 0x3B)) & 0x12) - 119;
  return (*(v11 + 8 * ((378 * (v8 + 4 < *(v12 - 160))) ^ v10)))();
}

uint64_t sub_1A23B805C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, unsigned int a19, unsigned int a20)
{
  v21 = a15 - 1374965158 > a20;
  if (a20 < a19 != a15 - 1374965158 < (a17 & 0x37A558AFu) - 1374967309)
  {
    v21 = a15 - 1374965158 < (a17 & 0x37A558AFu) - 1374967309;
  }

  return (*(v20 + 8 * ((230 * !v21) ^ (a2 + 842))))(18);
}

uint64_t sub_1A23B8110(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1A23B8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * (((&a14 | 0xE520A8B4) - (&a14 & 0xE520A8B4)) ^ 0x841A1FFC);
  a16 = v22 ^ 0xA1EF3C72;
  a14 = v22 ^ 0x6163ACC5;
  a15 = v22 + v21 + 1421510793;
  a18 = a12;
  a19 = &a10;
  v23 = (*(v20 + 8 * (v21 + 1118)))(&a14);
  return (*(v20 + 8 * ((3179 * (a17 == ((40 * (v21 ^ 0x6B6)) ^ (v19 - 560)))) ^ v21)))(v23);
}

uint64_t sub_1A23B8298()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x986)))();
  STACK[0x218] -= 16;
  return (*(v2 + 8 * ((((v0 - 303) ^ 0x97D) * (v1 == 1863271989)) ^ (v0 - 303))))(v3);
}

uint64_t sub_1A23B82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v23 = 1388665877 * ((2 * (&a14 & 0xEDC7988) - &a14 + 1898153586) ^ 0xFC8EE49E);
  HIDWORD(a16) = v23 + v22 + 2557;
  LODWORD(a14) = v23 ^ (199880445 * v19 + 103127814);
  a15 = a11;
  (*(v21 + 8 * (v22 + 2647)))(&a14);
  v24 = 1037613739 * ((&a14 & 0xFB22C4F4 | ~(&a14 | 0xFB22C4F4)) ^ 0xD5DF1674);
  LODWORD(a15) = v22 - v24 + 168;
  a16 = v17;
  a14 = a11;
  a17 = ((v18 ^ 0x3FFDDF7D) + ((2 * v18) & 0x7FFBBEFA) - 22022674 + 87 * (v22 ^ 0xD2)) ^ v24;
  v25 = (*(v21 + 8 * (v22 ^ 0xBE3)))(&a14);
  return (*(v21 + 8 * ((1786 * (HIDWORD(a15) == v20)) ^ v22)))(v25);
}

uint64_t sub_1A23B8444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (*(v69 + 8 * (v67 ^ 0x986)))(v70);
  STACK[0x218] = a33 - 1712;
  LODWORD(STACK[0x284]) = v68;
  return (*(v69 + 8 * ((((v67 - 343059447) & 0x1472AD2B ^ (v67 + 712800555) & 0xD583849C ^ 0x480) * (a67 == 0)) ^ (v67 - 587))))(v71);
}

uint64_t sub_1A23B8470@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = a1 ^ 0x1CE;
  *(v17 - 144) = &a15;
  *(v17 - 112) = &a11;
  *(v17 - 104) = a6;
  *(v17 - 128) = &a15;
  *(v17 - 120) = a7;
  *(v17 - 136) = (a1 + 1605) ^ (143681137 * ((((v17 - 144) | 0x76FFD43D) + (~(v17 - 144) | 0x89002BC2)) ^ 0x17C56374));
  v19 = (*(v16 + 8 * (a1 ^ 0xA78)))(v17 - 144);
  return (*(v16 + 8 * ((491 * ((((((v18 + 1120633419) & 0xBD347DF9) + 2184) ^ ((v15 - 408352497) < 0x7FFFFFFF)) & 1) == 0)) ^ (v18 + 1920))))(v19);
}

uint64_t sub_1A23B8528(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, unsigned int a16, unsigned int a17)
{
  if (a17 < a16 != a14 + 2116601833 < ((a4 + a7 + 990) ^ 0x7E28C286u))
  {
    v18 = a14 + 2116601833 < ((a4 + a7 + 990) ^ 0x7E28C286u);
  }

  else
  {
    v18 = a14 + 2116601833 > a17;
  }

  return (*(v17 + 8 * (((a4 + a7 + 64) ^ v18) & 1 ^ (a4 + a7 + 2273))))(a14 + 2116601833 > a17);
}

uint64_t sub_1A23B85B4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2564));

  return v3(v1);
}

uint64_t sub_1A23B85E4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, unsigned int a6@<W8>)
{
  *(a2 + a6) = *(a4 + v6) - (a3 & (2 * *(a4 + v6))) - 119;
  v11 = v9 + v6 + a5 - 12 < a1;
  if (a1 < v9 != v6 + 1 > v8)
  {
    v11 = a1 < v9;
  }

  return (*(v10 + 8 * (v7 | (16 * !v11))))();
}

uint64_t sub_1A23B86BC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((5 * (v3 ^ 0x78Au)) ^ 0x406) - v1;
  v6 = *(v2 + v5 - 15);
  v7 = *(v2 + v5 - 31);
  v8 = a1 + v5;
  v9.i64[0] = 0x1212121212121212;
  v9.i64[1] = 0x1212121212121212;
  v10.i64[0] = 0x8989898989898989;
  v10.i64[1] = 0x8989898989898989;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((4001 * (v1 == 96)) ^ v3)))();
}

uint64_t sub_1A23B8738(int *a1)
{
  v2 = a1[1] ^ (210068311 * (a1 ^ 0x92D63FA4));
  result = (*(*(&off_1F14948E0 + (v2 ^ 0x48449A1B)) + (v2 ^ 0x484491A3) - 1))(*(&off_1F14948E0 + (v2 ^ 0x48449ADB)) - 12, sub_1A23B480C);
  v4 = **(&off_1F14948E0 + (v2 - 1212455373));
  if (result)
  {
    v4 = -1863312245;
  }

  *a1 = v4;
  return result;
}

void sub_1A23B87F8(uint64_t a1)
{
  v1 = *(a1 + 40) + 1785193651 * ((2 * (a1 & 0x2B5CEC1E) - a1 - 727510047) ^ 0x571399F7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23B8910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v22 = 1388665877 * ((&a15 - 1846859307 - 2 * (&a15 & 0x91EB29D5)) ^ 0x1C464B39);
  LODWORD(a15) = (199880445 * v20 + 103127814) ^ v22;
  a16 = a11;
  HIDWORD(a17) = v22 + 2769;
  (*(v21 + 22872))(&a15);
  v23 = 1037613739 * ((((2 * &a15) | 0xF114AA38) - &a15 - 2022331676) ^ 0xA9887863);
  LODWORD(a16) = 380 - v23;
  a18 = v23 ^ ((v19 ^ 0x7FADDFFF) - 1090521226 + ((2 * v19) & 0xFF5BBFFE));
  a15 = a11;
  a17 = v18;
  v24 = (*(v21 + 22968))(&a15);
  return (*(v21 + 8 * ((2077 * (HIDWORD(a16) == 1863271989)) ^ 0x13Fu)))(v24);
}

uint64_t sub_1A23B8A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, int a14, int a15, uint64_t a16, char *a17)
{
  v20 = 143681137 * ((-1568388015 - (&a12 | 0xA2844C51) + (&a12 | 0x5D7BB3AE)) ^ 0x3C4104E6);
  a16 = a11;
  a17 = &a10;
  a14 = v20 ^ 0x7532EC63;
  a12 = v20 ^ 0x6163ACC5;
  a13 = v20 + v19 + 1421511864;
  v21 = (*(v18 + 8 * (v19 + 2189)))(&a12);
  return (*(v18 + 8 * ((46 * (a15 == ((v19 + 894394694) & 0x577 ^ (v17 + 317)))) ^ v19)))(v21);
}

uint64_t sub_1A23B8B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39)
{
  v44 = __ROR8__((((((a6 - 1495) | 0x90u) - 52) ^ 0x95073D5B90000000) & (v43 << 27) | ((v43 >> 37) ^ 0x6AF8C2A46E784183) & ((v43 << 27) ^ 0xA9469F1A27FFFFFFLL)) ^ 0x2F213EB1325B4EF5, 27);
  v45 = v44 ^ v42;
  v46 = v39 ^ a36;
  v47 = v44 ^ v41 ^ 0xD22C1ECEC55F767ALL;
  v48 = v46 ^ v40;
  v49 = (v47 & 0x23886EA87E8BD77BLL ^ (v45 ^ 0x7547749350BF4A3FLL) & (v44 ^ v41 ^ 0xC3FF11ED9E2D8D8BLL) ^ 0xFE7FF1DFA5FD2C8ELL) - (v45 ^ 0x471C1518754666B5 ^ v47);
  v50 = (v45 ^ 0x6623B2543C1DBE01) & (v46 ^ 0xB20F569DC87AC151);
  v51 = v46 & 0x30ECA86F12292345;
  v52 = (v46 ^ v40) & 0xD562D657B494A1A2 ^ (v46 ^ v40 ^ 0xD095377F36E80CB5) & (v46 ^ 0x98927F3583119F0CLL) ^ v45 ^ 0xDEDCF849FDAAFE8ALL;
  v53 = v44 & 0x7F308FA90229331FLL ^ v46 ^ v40 ^ (v44 ^ 0x238B9EC38D23CBD5) & (v41 ^ 0x60BBFF78EED88ABELL);
  v54 = v52 ^ v46;
  v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
  v56 = v47 ^ v51 ^ v50;
  v57 = (v48 ^ 0x2F6AC880C917F34ALL) & (v41 ^ 0x58D2F4ECF58864E2);
  v58 = v56 ^ v52;
  v59 = v54 & 1;
  if ((v59 & v57) - 0x1087136337C8796ALL - 2 * (v59 & v57) != 0xEF78EC9CC8378696)
  {
    v59 = -v59;
  }

  v60 = (v59 + (v48 & 0xB8A67BC2E68622BCLL ^ 0x28224880C0062208 ^ v57)) ^ v55;
  v61 = v53 ^ v41 ^ v49;
  v62 = (v60 ^ 0x59CE1455A98B6C0ALL ^ (8 * (v60 ^ 0x59CE1455A98B6C0ALL)) ^ 0xD755FEBA630D2C87) & (((v60 ^ 0x59CE1455A98B6C0ALL) >> 61) ^ 0xFFFFFFFFFFFFFFF9) ^ (((v60 ^ 0x59CE1455A98B6C0ALL) >> 61) ^ (v60 >> 39) | ((v60 ^ 0x59CE1455A98B6C0ALL) << 25) & 0x861DE05E94000000) ^ ((v60 ^ 0x59CE1455A98B6C0ALL ^ (8 * (v60 ^ 0x59CE1455A98B6C0ALL))) & 0xB66E646CE2312812 ^ 0xCBEC3FA90A9B2796 ^ (v60 ^ 0x59CE1455A98B6C0ALL ^ (8 * (v60 ^ 0x59CE1455A98B6C0ALL)) ^ 0xB20E200860110007) & (((v60 ^ 0x59CE1455A98B6C0ALL) >> 61) ^ 0xB66E646CE2312814)) & (((v60 ^ 0x59CE1455A98B6C0ALL) << 25) ^ 0x221D4E0715FB7FF7);
  v63 = v53 ^ 0x6D4456C36FFD7CF5 ^ (v53 >> 1) ^ ((v53 >> 6) ^ 0xC7489D27BEFCFAE8) & ~((v53 ^ 0x6D4456C36FFD7CF5) << 63) ^ ((v62 ^ 0xD8B9FB58E566A6D8) + ((v53 << 58) ^ 0x8C00000000000000) - 2 * ((v62 ^ 0xD8B9FB58E566A6D8) & ((v53 << 58) ^ 0x8C00000000000000)));
  v64 = v56 ^ 0xEE38F21C18BCCFA6 ^ (v56 >> 7);
  v65 = (v61 >> 17) ^ (v61 >> 10) ^ v61 ^ 0x95374AC1B849CF2 ^ ((v61 ^ 0x95374AC1B849CF2) << 47) ^ ((v61 ^ 0x95374AC1B849CF2) << 54);
  *(&v66 + 1) = v56 ^ 0xEE38F21C18BCCFA6;
  *&v66 = v56;
  v67 = ((v56 ^ 0xEE38F21C18BCCFA6) << 57) ^ ((v56 ^ 0xEE38F21C18BCCFA6) << 23) ^ __ROR8__((v66 >> 44) & 0xE0000000000FFFFFLL ^ 0x2718DA8A446135D1 ^ (((v64 >> 3) ^ 0x2D9AEB3C7B689E6DLL) & ((~v64 << 61) ^ 0x9FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL | ((~v64 >> 1) << 62)), 61);
  *(&v66 + 1) = v58 ^ 0xB6073465A0B99D1BLL;
  *&v66 = v58;
  v68 = v58 ^ 0xB6073465A0B99D1BLL ^ __ROR8__(v58 ^ 0xB6073465A0B99D1BLL, 19) ^ (v66 >> 28) ^ v67;
  v69 = v68 ^ 0xE114EB907A2C3180;
  v70 = v67 ^ v65 ^ 0xBB6CBFF47B0FC824;
  v71 = v70 ^ 0x78AF1EE99611183ELL;
  v72 = (v63 ^ 0x581192BF384388BLL) & (v65 ^ 0xF7DF421434934DD9);
  v73 = (v70 ^ 0x22185E8403D9D601) & (v68 ^ 0xE114EB907A2C3180);
  v74 = v68 & 0xA548BF926A3731C0;
  v75 = v63 & 0xB377ACD672346CA0;
  v76 = (v62 ^ 0xD8B9FB58E566A6D8) & (~(2 * (v68 ^ 0xE114EB907A2C3180)) + (v68 ^ 0xE114EB907A2C3180));
  v77 = v62 & 0xAF609469AF60F0E7 ^ v69 ^ (v63 ^ 0x551E72BDA31B3793) & (v62 ^ 0x274604A71A995927);
  v78 = (__ROR8__(__ROR8__(v65 ^ 0xBB6CBFF47B0FC824, 62) ^ 0x71634801F2282A5ELL, 2) ^ 0x85C97BDECDFBC981) & (v70 ^ 0x78AF1EE99611183ELL) ^ v70 & 0x19AA07177326D5B4 ^ v63;
  v79 = ((v77 & 0xE0096EE0D8B2C64DLL ^ 0x79F2BF47B71C82AFLL) & (v77 & 0x1FF6911F274D39B2 ^ 0xFABFFFEEFDFFFEDDLL) | v77 & 0x604001800413910) ^ 0xDF4828F8AEB8D075;
  if ((v76 & 0x100000000 & v71) != 0)
  {
    v80 = -(v76 & 0x100000000);
  }

  else
  {
    v80 = v76 & 0x100000000;
  }

  v81 = (v80 + v71) ^ v76 & 0xFFFFFFFEFFFFFFFFLL;
  v82 = v75 ^ v62 ^ 0xD8B9FB58E566A6D8 ^ v72 ^ v79;
  v83 = v79 ^ v81;
  v84 = v83 ^ 0x2CC69C6B1081673CLL;
  v85 = v74 ^ v65 ^ 0xBB6CBFF47B0FC824 ^ v73 ^ v78;
  v86 = v78 ^ 0x8D91974AB724177ALL;
  v87 = (v83 & 0x8000) == 0;
  v88 = 0x8000;
  if (!v87)
  {
    v88 = -32768;
  }

  *(&v90 + 1) = v82 ^ 0x16FC5ACB84F58489;
  *&v90 = v82 ^ 0xC000000000000000;
  v89 = v90 >> 61;
  *(&v90 + 1) = v85 ^ 0x32B;
  *&v90 = v85 ^ 0xBE9FBFE894BFDC00;
  v91 = v90 >> 10;
  *&v90 = __ROR8__(v82, 39);
  v92 = ((v89 ^ v90 ^ 0x9709EB0913ADF8B5) - ((2 * (v89 ^ v90 ^ 0x9709EB0913ADF8B5)) & 0x235EA94241A06C64) - 0x6E50AB5EDF2FC9CELL) ^ v82;
  *&v90 = __ROR8__(v85, 17);
  v93 = ((v91 ^ v90 ^ 0xEF95DF4FDFF44A5FLL) - ((2 * (v91 ^ v90 ^ 0xEF95DF4FDFF44A5FLL)) & 0x998052A39F9A8CC6) - 0x333FD6AE3032B99DLL) ^ v85;
  v94 = v81 ^ 0x9A383CF881807545 ^ ((v81 ^ 0x9A383CF881807545) >> 7) ^ (((v81 ^ 0x9A383CF881807545) >> 41) | ((v81 ^ 0x9A383CF881807545) << 57)) ^ ((v81 ^ 0x9A383CF881807545) << ((v86 >> 1) & 0x17) << ((v86 >> 1) & 0x17 ^ 0x17));
  *(&v90 + 1) = v78 ^ 0x8D91974AB724177ALL;
  *&v90 = v78;
  v95 = (v86 >> 1) ^ (v90 >> 6) ^ (v86 & 0x9B6535C14F352826 ^ (v78 << 63) | v86 & 0x649ACA3EB0CAD7D9) ^ v92 ^ 0x47530E6AA425B2BBLL;
  v96 = v84 ^ v94 ^ (v84 >> 19) ^ ((v88 + v84) >> 28) ^ (((v88 + v84) ^ 0x8000) << 36) ^ (((v88 + v84) ^ 0x8000) << 45);
  v97 = v93 ^ 0x725F96B95B729948 ^ v94;
  v98 = v97 - ((2 * v97) & 0x4BCF7563A6B4D67ELL);
  v99 = v95 ^ 0x236465D2ADC905DLL ^ (v93 ^ 0x8DA06946A48D66B7) & v94;
  v100 = (v95 ^ 0x236465D2ADC905DLL) & (v92 ^ 0xB8ACF1955BDA4D44) ^ v96;
  v101 = (v92 ^ 0x47530E6AA425B2BBLL) & ~v96 ^ v97;
  v102 = (v92 ^ 0x47530E6AA425B2BBLL) - 2 * (v96 & (v92 ^ 0x47530E6AA425B2BBLL)) + v100;
  v103 = (v64 >> 3) & 1;
  LOBYTE(v92) = (v64 & 8) == 0;
  v104 = v100 ^ v101 ^ 0x6E04C15915AB860ALL;
  v105 = v104 >> 19;
  *(&v90 + 1) = (v104 >> 19) & v104 & 0x1A36E0206AEDLL ^ (v104 >> 28) ^ (((v104 >> 19) | v104) & 0xD8807A36E0206AEDLL | (v104 >> 19) & 0x5C91FDF9512 ^ v104 & 0x277F85C91FDF9512);
  *&v90 = (v104 << 36) ^ (v104 << 45) ^ *(&v90 + 1);
  v106 = v102 ^ (v95 ^ 0xFDC9B9A2D5236FA2) & (v93 ^ 0x725F96B95B729948);
  v107 = v96 & ((v98 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v93 ^ 0x725F96B95B729948 ^ v99 ^ 0x7370AC685030CB36;
  v108 = (v106 >> 39) ^ (v106 >> 61) ^ (8 * (v106 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v106 ^ 0x3278F838FE43D2BCLL) - (((v106 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v106 ^ 0x3278F838FE43D2BCLL))));
  v109 = v108 ^ 0x64F1F1;
  v110 = v101 ^ 0x26974B18501E2B14 ^ ((v101 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v101 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v101 ^ 0x26974B18501E2B14) << 23) ^ ((v101 ^ 0x26974B18501E2B14) << 57);
  v111 = v99 ^ 0x7955EAEC4D48B80CLL ^ (v99 << 63) ^ __ROR8__(v99 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v99 ^ 0x7955EAEC4D48B80CLL) >> v103 >> v92);
  v112 = v108 ^ 0x64F1F1 ^ v111;
  v113 = (v107 >> 17) ^ __ROR8__(v107, 10) ^ __ROR8__(__ROR8__(v107, 14) & 0xFFFC000000000007 ^ __ROR8__(v107, 61), 3);
  v114 = v113 ^ v110;
  *&v90 = __ROR8__(__ROR8__(v110, 7) ^ __ROR8__(__ROR8__(v90 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v115 = v110 & ~v113 ^ v112;
  v116 = v90 ^ 0xBBDB0FB7A00B9120 ^ (v108 ^ 0xFFFFFFFFFF9B0E0ELL) & v111;
  v117 = v108 ^ (((v112 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v112 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v113 ^ 0x425764BB58132BD4 ^ v116;
  v118 = (v90 ^ 0x4424F0485FF46EDFLL) & v109 ^ v113 ^ v110;
  v119 = v116 ^ 0x97F6A7E5F6E8F58ALL ^ v118;
  v120 = (v118 ^ -v118 ^ (0x70C7A8D3F3643DFDLL - (v118 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v121 = v113 ^ 0x44C9D571A5C4A51CLL ^ v115 ^ (v90 ^ 0xBBDB0FB7A00B9120) & ~v114;
  v122 = v115 ^ 0xD3DA1E3360BF843ALL ^ ((v115 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v115 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v124 = __ROR8__(__ROR8__(v117, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v117 ^ (8 * v117) ^ ((v117 >> 61) | (v117 << 25)), 23) ^ 0x735302FC48340548, 41);
  v125 = (v120 >> 7) ^ (v120 >> 41) ^ (v120 << 23) ^ (v120 << 57);
  v126 = v125 ^ v120;
  v127 = v119 ^ (v119 >> 28) ^ (v119 >> 19) ^ (v119 << 36) ^ (v119 << 45) ^ v125 ^ v120;
  v128 = v122 & 0xFFFFFFF7FFFFFFFFLL ^ (v115 << 63) ^ (v122 & 0x800000000 | ((v115 ^ 0xD3DA1E3360BF843ALL) << (v105 & 0x12) << (v105 & 0x12 ^ 0x3A))) ^ v124;
  if (v125 == v120)
  {
    v129 = 0;
  }

  else
  {
    v129 = v121 << 47;
  }

  v130 = v124 ^ 0x7E241A02A439A981;
  v123 = (v121 ^ (v121 >> 10) | (v121 << 54)) ^ (v121 << 54) & v121;
  v131 = (v129 ^ v123 | (v121 << 47)) ^ (v123 & (v121 << 47) & 0xFFFF800000000000 | (v121 >> 17));
  v132 = v128 ^ 0x7E241A02A439A981;
  v133 = v131 & (v128 ^ 0x81DBE5FD5BC6567ELL);
  v134 = v131 ^ v126 ^ v130 & ~v127;
  v135 = v127 ^ (~(2 * v130) + v130) & (v128 ^ 0x7E241A02A439A981);
  v136 = v134 ^ v135 ^ 0x93C23431B76D41FLL;
  *(&v138 + 1) = v136;
  *&v138 = v134 ^ v135;
  v137 = v138 >> 62;
  v139 = v130 ^ 0x6005BE354A5BB0B2 ^ v135;
  v140 = v126 & ~v131 ^ v132;
  v141 = v127 & ~(v131 ^ v126) ^ v131 ^ v140;
  v142 = ((v139 ^ v133) << (v126 & 3) << (v126 & 3 ^ 3)) ^ v139 ^ v133 ^ (((v139 ^ v133) >> 39) ^ ((v139 ^ v133) >> 61) | ((v139 ^ v133) << 25));
  *(&v138 + 1) = v136;
  *&v138 = v134 ^ v135;
  v143 = ((v138 >> 19) ^ __ROR8__(v137 ^ (4 * (v136 >> 28)) ^ 0x406FF36C296024B3, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v144 = v140 ^ 0x6DC4FB0BD4FFFF44 ^ ((v140 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v140 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v140 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v140 << 63));
  v145 = v142 ^ (__ROR8__(v141 ^ 0xF374A001D380BDC2, 17) ^ ((v141 ^ 0xF374A001D380BDC2) >> 10) ^ (((v141 ^ 0xF374A001D380BDC2) << 54) | (v141 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v141 ^ 0xF374A001D380BDC2) << 54) & (v141 ^ 0xF374A001D380BDC2) | v141 & 0x20)) & ~(v142 ^ v144) ^ 0x62030E578F798D5ALL ^ v134 ^ 0x2DB5B6AF87F64351 ^ ((v134 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v134 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v134 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v134 ^ 0x2DB5B6AF87F64351) >> 41) ^ (v136 << 36) ^ (((2 * v143) & 0xFFFFFFFF18D20D4ALL) + (v143 ^ 0xFFFFFFFF8C6906A5)) ^ v144 & ~v142;
  LODWORD(v134) = a35 > 2 * (a38 & 1) + (a38 ^ 1u);
  return (*(a39 + 8 * (a6 ^ (457 * v134))))(a1, a2, a3, a4, a6 ^ (457 * v134), (8 * v145) ^ (v145 >> 39) ^ ((v145 >> 61) | v145) ^ ((v145 >> 61) & v145 | (v145 << 25)), a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1A23B9C1C@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 + v5);
  v7 = v5 - 1;
  *(a1 + v7) = v6;
  return (*(v1 + 8 * (((v7 != 0) * v4) ^ v3)))();
}

void sub_1A23B9C50(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (843532609 * ((a1 & 0xB3BC010F | ~(a1 | 0xB3BC010F)) ^ 0x5CFF89AE));
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 1389192254 < 0)
  {
    v3 = 1389192254 - v2;
  }

  else
  {
    v3 = v2 - 1389192254;
  }

  v6 = *(a1 + 8);
  v5 = v1 - 843532609 * (((&v5 | 0x89B8F4FA) - (&v5 & 0x89B8F4FA)) ^ 0x990483A4) - 288;
  v4 = *(&off_1F14948E0 + (v1 ^ 0x388)) - 8;
  (*&v4[8 * (v1 ^ 0x80D)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23B9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = *(&off_1F14948E0 + (v33 ^ 0x1D1)) - 12;
  v37 = v36[v32[5] ^ 0xE2];
  v38 = *(&off_1F14948E0 + v33 - 354) - 12;
  v39 = v38[v32[15] ^ 0x92];
  v40 = v33;
  v41 = v36[v32[13] ^ 0xB9];
  *(v35 - 164) = v34;
  v42 = ((v41 << 16) ^ 0xC07F0A4D) & (v39 ^ 0xC0FF0AF9) | v39 & (v40 ^ 0x17B);
  v43 = v38[(v32[7] ^ 0x69793973FA8D640BLL) & 0x40084039 ^ 0x21582001B80004B8 ^ ((v32[7] ^ 0x69793973FA8D640BLL) & 0x21582001F8084406 | v32[7] & 0xC0)];
  v44 = *(&off_1F14948E0 + v40 - 432);
  v45 = ((-1459617792 * *(v44 + (v32[4] ^ 0x57)) + 1795162112) ^ 0x84FF30FF) & (((v43 | 0xFFFFFC01) & ((v37 << 16) ^ 0x9754CC06) | v43 & 0xFFFFFFF9) ^ 0x68FFFC69);
  v46 = -87 * *(v44 + (v32[12] ^ 0x68)) + 107;
  v47 = *(&off_1F14948E0 + v40 - 343) - 8;
  LOBYTE(v43) = v47[v32[14] ^ 0xD6] - 126;
  v48 = ((v47[v32[6] ^ 0x87] - 126) ^ 0x30) << 8;
  v49 = (v48 | 0x42BE8EA5) ^ (v45 ^ 0xBDA3BED3) & ~v48;
  v50 = (((v46 << 24) ^ 0xCDB5E18) & ~((v43 ^ 0x27) << 8) & 0x618D300 | ((v43 ^ 0x27) << 8) & 0x8100) ^ 0xCBAEB983 ^ ((((v46 << 24) ^ 0xCDB5E18) & ~((v43 ^ 0x27) << 8) | ((v43 ^ 0x27) << 8) & 0xA100) ^ 0xC92420E7) & (v42 ^ 0x39502650);
  v51 = ((v38[v32[3] ^ 0x29] ^ 0xEF) & 0xFFFF00FF | ((v36[v32[1] ^ 8] ^ 0x36) << 16) | (((-87 * *(v44 + (*v32 ^ 0xE1)) + 107) ^ 0xDA) << 24) | (((v47[v32[2] ^ 0x8FLL] - 126) ^ 0xD8) << 8)) ^ 0x1B;
  v52 = (((-87 * *(v44 + (v32[8] ^ 0xB9)) + 107) ^ 0xBC) << 24) | ((v36[v32[9] ^ 0x3BLL] ^ 0xC7) << 16) | (v38[v32[11] ^ 0x62] ^ 0xAC) & 0xFFFF00FF | (((v47[v32[10] ^ 0xB7] - 126) ^ 0xE7) << 8);
  v53 = *(&off_1F14948E0 + (v40 & 0xCB8E4A80)) - 4;
  v54 = *(&off_1F14948E0 + v40 - 394) - 8;
  v55 = *&v53[4 * (BYTE2(v50) ^ 0xBA)] ^ *&v54[4 * (v43 ^ 0x7E)] ^ 0xACC635CA;
  *(v35 - 140) = v40;
  v56 = *(&off_1F14948E0 + v40 - 291) - 4;
  v57 = *(&off_1F14948E0 + v40 - 323) - 8;
  LODWORD(v44) = *&v57[4 * (v39 ^ 0x71)];
  LODWORD(v38) = (v55 - ((2 * v55) & 0x6E7AEB6E) + 926774711) ^ *&v56[4 * (v46 ^ 0x88)];
  *(v35 - 232) = v51;
  *(v35 - 220) = v49;
  v58 = v44 ^ v51 ^ (v38 - ((2 * v38) & 0xEAB8D246) - 178493149);
  v525 = v58;
  *(v35 - 224) = v52;
  LODWORD(v44) = v58 ^ v49 ^ v52;
  v528 = v58 ^ v49;
  LOBYTE(v46) = v44 ^ v50;
  v59 = v44;
  v521 = v44;
  LODWORD(v44) = v44 ^ v50 ^ 0xF83672DE;
  v531 = v46;
  v60 = *&v57[4 * (v46 ^ 0x35)];
  *(v35 - 172) = BYTE1(v44);
  v61 = v60 ^ 0x4B34AC98 ^ *&v54[4 * (BYTE1(v44) ^ 0x9E)];
  v536 = BYTE3(v44);
  v62 = (v61 - ((2 * v61) & 0x6E7AEB6E) + 926774711) ^ *&v56[4 * (BYTE3(v44) ^ 0x86)];
  v534 = BYTE2(v44);
  LODWORD(v44) = v58 ^ *&v53[4 * (BYTE2(v44) ^ 0xBA)] ^ (v62 - ((2 * v62) & 0x255DE0E2) + 313454705);
  v523 = v58 ^ v49 ^ 0xA25B684D;
  *(v35 - 124) = v44 ^ v523;
  v63 = v44;
  *(v35 - 256) = v44;
  v64 = v44 ^ v523 ^ 0xF73EC34E;
  *(v35 - 228) = v50;
  v65 = (v64 ^ v50 ^ 0x7E4FB786) >> 24;
  *(v35 - 196) = v65;
  v66 = *&v56[4 * (v65 ^ 0x86)];
  v67 = ((v64 ^ v50 ^ 0x7E4FB786) >> 16);
  *(v35 - 236) = v67;
  v68 = v53;
  v69 = v66 ^ *&v53[4 * (v67 ^ 0xBA)];
  LODWORD(v53) = ((v64 ^ v50 ^ 0xB786) >> 8);
  *(v35 - 248) = v53;
  v70 = ((v69 ^ 0x259385C6) - 1100429893 + (~(2 * (v69 ^ 0x259385C6)) | 0x832E7489) + 1) ^ *&v54[4 * (v53 ^ 0x9E)];
  LODWORD(v44) = (v64 ^ v50);
  *(v35 - 168) = v44;
  LODWORD(v44) = v63 ^ *&v57[4 * (v44 ^ 0x6D)] ^ (v70 - ((2 * v70) & 0xEAB8D246) - 178493149);
  *(v35 - 120) = v44;
  LODWORD(v44) = v44 ^ 0xFEB4AEE;
  LODWORD(v38) = v44 ^ v59 ^ 0xF83672DE;
  v520 = BYTE2(v59) ^ 0x36;
  *(v35 - 188) = v38;
  v71 = v38 ^ v64 ^ v50 ^ 0x7E4FB786;
  *(v35 - 192) = BYTE2(v71);
  LODWORD(v38) = *&v68[4 * (BYTE2(v71) ^ 0xBA)];
  *(v35 - 180) = BYTE1(v71);
  LODWORD(v36) = v38 ^ *&v54[4 * (BYTE1(v71) ^ 0x9E)] ^ 0xACC635CA;
  *(v35 - 184) = HIBYTE(v71);
  LODWORD(v36) = (v36 - ((2 * v36) & 0x6E7AEB6E) + 926774711) ^ *&v56[4 * (HIBYTE(v71) ^ 0x86)];
  *(v35 - 176) = v71;
  v72 = v44;
  v501 = BYTE2(v44);
  LODWORD(v44) = v44 ^ *&v57[4 * (v71 ^ 0xEB)] ^ (v36 - ((2 * v36) & 0xEAB8D246) - 178493149);
  v539 = v64 ^ v59 ^ 0xF83672DE;
  LODWORD(v38) = v44 ^ v539;
  v73 = v44;
  *(v35 - 128) = v44 ^ v539;
  LODWORD(v44) = v44 ^ v539 ^ 0x598844C8 ^ v71;
  v74 = v38 ^ 0x598844C8;
  v428 = v38 ^ 0xC8;
  LODWORD(v38) = v44 ^ 0xCD2CB9A0;
  LODWORD(v47) = v44;
  v451 = v44;
  LODWORD(v44) = *&v57[4 * (v44 ^ 0x83)];
  *(v35 - 116) = 0;
  v440 = v38 >> 24;
  LODWORD(v36) = v44 ^ *&v56[4 * ((v38 >> 24) ^ 0x86)] ^ 0xC2611C94;
  v75 = v47 ^ 0xCD5DCD68;
  v469 = ((v47 ^ 0xCD5DCD68) >> 16);
  LODWORD(v44) = (v36 - ((2 * v36) & 0x255DE0E2) + 313454705) ^ *&v68[4 * (v469 ^ 0xBA)];
  v467 = ((v47 ^ 0xCD68) >> 8);
  LODWORD(v44) = (v44 - ((2 * v44) & 0x7CD18B76) - 1100429893) ^ *&v54[4 * (v467 ^ 0x9E)];
  v502 = v72 ^ v64;
  v76 = v72 ^ v64 ^ 0x7E4FB786;
  *(v35 - 160) = v76;
  v77 = v44 ^ v76;
  *(v35 - 136) = v77;
  v78 = v77 ^ 0xF39A3E26;
  v79 = v77 ^ 0xF39A3E26 ^ v71;
  v426 = v73;
  v498 = BYTE2(v79);
  v496 = v79;
  v80 = v68;
  v81 = *&v56[4 * ((v79 >> (v73 & 0x18) >> (v73 & 0x18 ^ 0x18)) ^ 0x86)] ^ *&v68[4 * (BYTE2(v79) ^ 0xBA)] ^ 0x259385C6;
  v491 = BYTE1(v79);
  v82 = (v81 - ((2 * v81) & 0x7CD18B76) - 1100429893) ^ *&v54[4 * (BYTE1(v79) ^ 0x9E)];
  v486 = v44 ^ v73;
  v490 = BYTE2(v78);
  LOBYTE(v44) = v78 ^ v74 ^ v47 ^ 0x68;
  LODWORD(v47) = v78 ^ v74;
  v481 = v78 ^ v74;
  LODWORD(v68) = v486 ^ *&v57[4 * (v44 ^ 0x83)] ^ (v82 - ((2 * v82) & 0xEAB8D246) - 178493149);
  LODWORD(v44) = v68 ^ 0x53DB0D92 ^ v78;
  v514 = v68 ^ 0x92;
  v83 = v44 ^ 0xF73EC34E;
  v84 = v44;
  *(v35 - 156) = v44;
  LODWORD(v44) = v44 ^ 0xF73EC34E ^ v75;
  v85 = v44 ^ 0xBF7FF0FA;
  v86 = ((v44 ^ 0xBF7FF0FA) >> 16);
  v516 = v44;
  LODWORD(v44) = *&v80[4 * (v86 ^ 0xBA)] ^ *&v57[4 * (v44 ^ 0x11)] ^ 0xE7F29952;
  v87 = HIBYTE(v85);
  LODWORD(v44) = (v44 - ((2 * v44) & 0x6E7AEB6E) + 926774711) ^ *&v56[4 * (HIBYTE(v85) ^ 0x86)];
  v474 = BYTE1(v85);
  v88 = v68 ^ 0x53DB0D92 ^ *&v54[4 * (BYTE1(v85) ^ 0x9E)] ^ (v44 - ((2 * v44) & 0x7CD18B76) - 1100429893);
  *(v35 - 152) = v88;
  v485 = BYTE2(v47) ^ 0x5D;
  v89 = v83 ^ v47 ^ 0xCD5DCD68;
  v417 = v88 ^ 0x85DB0D92 ^ v84;
  v436 = BYTE2(v88) ^ 0xDB;
  v445 = v417 ^ 0x484133B4 ^ v89;
  v90 = v445 ^ 0xBDE5CEDC ^ v85;
  v437 = (v90 ^ 0x29A3E26) >> 24;
  v459 = ((v90 ^ 0x3E26) >> 8);
  v91 = *&v56[4 * (v437 ^ 0x86)] ^ *&v54[4 * (v459 ^ 0x9E)] ^ 0x8955B00C;
  v432 = ((v90 ^ 0x29A3E26) >> 16);
  v92 = (v91 - ((2 * v91) & 0x255DE0E2) + 313454705) ^ *&v80[4 * (v432 ^ 0xBA)];
  v439 = v90;
  v411 = v92 - 178493149 + (~(2 * v92) | 0x15472DB9) + 1;
  v413 = v88 ^ 0x85DB0D92 ^ *&v57[4 * (v90 ^ 0xCD)];
  v93 = v413 ^ v411 ^ v417 ^ 0x484133B4;
  v462 = v93;
  *(v35 - 132) = v413 ^ v411;
  v406 = v93 ^ 0x19868409 ^ v445 ^ 0xBDE5CEDC;
  v511 = v93 ^ 0x19868409;
  v94 = v406 ^ 0xC130088F ^ v90 ^ 0x29A3E26;
  v402 = (v94 ^ 0x7B68C86) >> 24;
  v404 = ((v94 ^ 0x8C86) >> 8);
  v95 = *&v56[4 * (v402 ^ 0x86)] ^ *&v54[4 * (v404 ^ 0x9E)] ^ 0x8955B00C;
  v96 = ((v94 ^ 0x7B68C86) >> 16);
  v509 = v94 ^ 0x7B68C86;
  v97 = (v95 - ((2 * v95) & 0x255DE0E2) + 313454705) ^ *&v80[4 * (v96 ^ 0xBA)];
  v431 = v413 ^ v411 ^ *&v57[4 * (v94 ^ 0x6D)] ^ (v97 - ((2 * v97) & 0xEAB8D246) - 178493149);
  v506 = v431 ^ 0x7B68C86;
  v421 = v431 ^ 0x7B68C86 ^ v511;
  v424 = v421 ^ v406 ^ 0xC130088F;
  v508 = v424 ^ 0xC104CD8D;
  LODWORD(v39) = v424 ^ 0xC104CD8D ^ v94 ^ 0x7B68C86 ^ 0xA91877A2;
  v457 = v424 ^ 0x8D ^ v94 ^ 0x86;
  v454 = BYTE3(v39);
  LODWORD(v36) = *&v57[4 * (v457 ^ 0x49)] ^ 0xC2611C94 ^ *&v56[4 * (BYTE3(v39) ^ 0x86)];
  v493 = BYTE1(v39);
  LODWORD(v36) = (v36 - ((2 * v36) & 0x7CD18B76) - 1100429893) ^ *&v54[4 * (BYTE1(v39) ^ 0x9E)];
  v447 = BYTE2(v39);
  v505 = (v36 - ((2 * v36) & 0x255DE0E2) + 313454705) ^ *&v80[4 * (BYTE2(v39) ^ 0xBA)];
  v98 = v531 ^ 0xEF;
  LODWORD(v56) = *(v35 - 140);
  v99 = *(&off_1F14948E0 + v56 - 453);
  LODWORD(v39) = (v520 ^ 0xFD84E2EE) - 1252452493 + *(v99 + 4 * (v520 ^ 0x7Eu));
  BYTE1(v523) = BYTE1(v525) ^ 0x6F;
  v100 = *(&off_1F14948E0 + v56 - 271) - 12;
  v101 = ((BYTE2(v523) ^ 0xFD84E273) - 1252452493 + *(v99 + 4 * (BYTE2(v523) ^ 0xE3u))) ^ (-1974868763 * *&v100[4 * (HIBYTE(v528) ^ 0xE7)] - 413887951);
  v102 = *(&off_1F14948E0 + (v56 ^ 0x1CF)) - 12;
  LODWORD(v36) = (v39 - ((2 * v39) & 0x65941428) - 1295381996) ^ *&v102[4 * (v521 ^ 0x33)];
  v103 = (-1974868763 * *&v100[4 * (HIBYTE(v525) ^ 0xCB)] - 413887951) ^ ((((v525 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (((v525 ^ 0x6AB66F6C) >> 16) ^ 0x7Bu)));
  v104 = *(&off_1F14948E0 + (v56 ^ 0x154)) - 8;
  LODWORD(v56) = (v101 - ((2 * v101) & 0x801437AE) + 1074404311) ^ *&v104[4 * (BYTE1(v528) ^ 0x4B)];
  v105 = (v103 - ((2 * v103) & 0x65941428) - 1295381996) ^ *&v102[4 * (v525 ^ 0x1C)];
  v532 = v56 - ((2 * v56) & 0x65941428);
  v106 = (v534 ^ 0xFD84E215) - 1252452493 + *(v99 + 4 * (v534 ^ 0x85u));
  v513 = *&v104[4 * (BYTE1(v521) ^ 0xE4)] ^ (-1974868763 * *&v100[4 * (HIBYTE(v521) ^ 0x54)] - 413887951) ^ (v36 - ((2 * v36) & 0x801437AE) + 1074404311);
  LODWORD(v36) = (-1974868763 * *&v100[4 * (v536 ^ 0xBE)] - 413887951) ^ *&v102[4 * v98] ^ (v106 - ((2 * v106) & 0x65941428) - 1295381996);
  v535 = v105 - ((2 * v105) & 0x801437AE);
  v522 = v36 - ((2 * v36) & 0x801437AE);
  v107 = (((v68 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 1252452493 + *(v99 + 4 * (((v68 ^ 0xB89A99EC) >> 16) ^ 0x34u));
  v108 = *&v100[4 * (HIBYTE(v89) ^ 0xD2)];
  v478 = BYTE1(v89) ^ 0x50;
  v109 = ((((v89 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (((v89 ^ 0xBFAB50FA) >> 16) ^ 0x7Bu))) ^ *&v102[4 * (v89 ^ 0x5F)] ^ (-1974868763 * v108 - ((345229770 * v108 + 1319707746) & 0x65941428) - 1709269947);
  v479 = v528 ^ 0x25;
  v110 = *&v100[4 * (v87 ^ 0xB6)];
  v111 = (-1974868763 * v110 - ((345229770 * v110 - 827775902) & 0x801437AE) + 660516360) ^ *&v104[4 * (v474 ^ 0x25)];
  v537 = v111 - ((2 * v111) & 0x65941428);
  LODWORD(v36) = *&v104[4 * ((v68 ^ 0x99EC) >> 8)] ^ (v107 - ((2 * v107) & 0x801437AE) + 1074404311);
  LODWORD(v39) = *(v35 - 156);
  v112 = (((v39 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1252452493 + *(v99 + 4 * (((v39 ^ 0xE14101D4) >> 16) ^ 0x7Au));
  v529 = v36 - ((2 * v36) & 0x65941428);
  v420 = (v68 >> 24) ^ 0x48;
  LODWORD(v36) = (v112 - ((2 * v112) & 0x65941428) - 1295381996) ^ *&v102[4 * (v39 ^ 0xA4)] ^ (-1974868763 * *&v100[4 * (BYTE3(v39) ^ 0x40)] - 413887951);
  v473 = v36 - ((2 * v36) & 0x801437AE);
  v475 = v109 - ((2 * v109) & 0x801437AE);
  v526 = (v86 ^ 0xFD84E217) - 1252452493 + *(v99 + 4 * (v86 ^ 0x87u));
  v444 = BYTE1(v73) ^ 0x36;
  LODWORD(v36) = (((v426 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1252452493 + *(v99 + 4 * (((v426 ^ 0xFC9A360D) >> 16) ^ 0xE9u));
  v464 = v73 ^ *(v35 - 160);
  LODWORD(v80) = *&v100[4 * (HIBYTE(v464) ^ 0x39)];
  v113 = (-1974868763 * v80 - ((345229770 * v80 - 827775902) & 0x801437AE) + 660516360) ^ *&v104[4 * ((v464 ^ 0xDA26) >> 8)];
  LODWORD(v80) = (v469 ^ 0xFD84E284) - 1252452493 + *(v99 + 4 * (v469 ^ 0x14u));
  LODWORD(v36) = (v36 - ((2 * v36) & 0x65941428) - 1295381996) ^ *&v102[4 * (v426 ^ 0x7D)] ^ (-1974868763 * *&v100[4 * (HIBYTE(v426) ^ 0x5D)] - 413887951);
  v415 = *(v35 - 128) ^ 0xAF58D76C;
  v114 = (BYTE2(v415) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (BYTE2(v415) ^ 0x7Bu));
  v470 = v113 - ((2 * v113) & 0x65941428);
  v115 = (v114 - ((2 * v114) & 0x65941428) - 1295381996) ^ *&v102[4 * (v428 ^ 0xD4)];
  v427 = v115 - ((2 * v115) & 0x801437AE);
  v116 = *&v104[4 * (v467 ^ 0xE5)];
  v468 = (((v464 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (((v464 ^ 0xEA49DA26) >> 16) ^ 0x7Bu));
  v117 = (v80 - ((2 * v80) & 0x801437AE) + 1074404311) ^ v116 ^ (-1974868763 * *&v100[4 * (v440 ^ 0xF0)] - 413887951);
  HIDWORD(v416) = v36 - ((2 * v36) & 0x801437AE);
  v429 = v451 ^ 0xC3;
  v452 = v117 - ((2 * v117) & 0x65941428);
  v118 = *(v35 - 256);
  v423 = v118 ^ 0xD1;
  v119 = (*(v35 - 236) ^ 0xFD84E219) - 1252452493 + *(v99 + 4 * (*(v35 - 236) ^ 0x89u));
  LODWORD(v36) = (v119 - ((2 * v119) & 0x801437AE) + 1074404311) ^ *&v104[4 * (*(v35 - 248) ^ 0x93)];
  *(v35 - 248) = v36 - ((2 * v36) & 0x65941428);
  LODWORD(v36) = *&v100[4 * (HIBYTE(v539) ^ 0xDE)];
  v120 = *(v35 - 124) ^ 0x47E1030D;
  v121 = (BYTE2(v120) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (BYTE2(v120) ^ 0x7Bu));
  v122 = (v121 - ((2 * v121) & 0x801437AE) + 1074404311) ^ *&v104[4 * BYTE1(v120)];
  LODWORD(v36) = ((BYTE2(v539) ^ 0xFD84E243) - 1252452493 + *(v99 + 4 * (BYTE2(v539) ^ 0xD3u))) ^ *&v104[4 * (BYTE1(v539) ^ 0xDB)] ^ (-1974868763 * v36 - ((345229770 * v36 - 827775902) & 0x801437AE) + 660516360);
  v409 = BYTE1(v118) ^ 0x9D;
  *(v35 - 236) = (((v118 ^ 0x37B09DC8) >> 16) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (((v118 ^ 0x37B09DC8) >> 16) ^ 0x7Bu));
  LODWORD(v416) = v122 - ((2 * v122) & 0x65941428);
  *(v35 - 256) = v36 - ((2 * v36) & 0x65941428);
  LODWORD(v36) = (-1974868763 * *&v100[4 * (v402 ^ 0xAC)] - 413887951) ^ ((v96 ^ 0xFD84E2A8) - 1252452493 + *(v99 + 4 * (v96 ^ 0x38u)));
  v123 = (v36 - ((2 * v36) & 0x801437AE) + 1074404311) ^ *&v104[4 * (v404 ^ 0xD9)];
  LODWORD(v36) = (BYTE2(v406) ^ 0xFD84E256) - 1252452493 + *(v99 + 4 * (BYTE2(v406) ^ 0xC6u));
  v124 = v36 - ((2 * v36) & 0x65941428);
  v125 = *(v35 - 132) ^ 0xDDA7A6D4;
  LODWORD(v36) = *&v100[4 * ((v413 ^ ~v411) >> 24)];
  LODWORD(v80) = (-1974868763 * v36 - ((345229770 * v36 - 827775902) & 0x801437AE) + 660516360) ^ *&v104[4 * BYTE1(v125)];
  v410 = v94 ^ 0xF9;
  v126 = (v124 - 1295381996) ^ *&v102[4 * (v406 ^ 0x67)] ^ (-1974868763 * *&v100[4 * (HIBYTE(v406) ^ 0x3E)] - 413887951);
  HIDWORD(v412) = v123 - ((2 * v123) & 0x65941428);
  LODWORD(v412) = v80 - ((2 * v80) & 0x65941428);
  LODWORD(v400) = BYTE1(v462) ^ 0x9E;
  LODWORD(v80) = *&v100[4 * (HIBYTE(v462) ^ 0xCD)];
  v127 = (-413887951 - 677965987 * v80 - 1296902776 * v80 - 2 * ((-413887951 - 677965987 * v80 - 1296902776 * v80) & 0x32CA0A17 ^ (-413887951 - 677965987 * v80) & 3) - 1295381996) ^ *&v102[4 * (v462 ^ 0xC9)];
  v441 = (BYTE2(v125) ^ 0xFD84E2A5) - 1252452493 + *(v99 + 4 * (BYTE2(v125) ^ 0x35u));
  v397 = BYTE1(v406) ^ 0x4F;
  HIDWORD(v400) = v126 - ((2 * v126) & 0x801437AE);
  v463 = (BYTE2(v462) ^ 0xFD84E2FB) - 1252452493 + *(v99 + 4 * (BYTE2(v462) ^ 0x6Bu));
  v407 = v439 ^ 0x97;
  v128 = (BYTE2(v417) ^ 0xFD84E271) - 1252452493 + *(v99 + 4 * (BYTE2(v417) ^ 0xE1u));
  v129 = (v128 - ((2 * v128) & 0x801437AE) + 1074404311) ^ *&v104[4 * (BYTE1(v417) ^ 0x28)];
  v403 = v417 ^ 0xAE;
  v130 = *&v100[4 * (HIBYTE(v445) ^ 0x22)];
  BYTE2(v126) = BYTE2(v445) ^ 0x86;
  v131 = (-1974868763 * v130 - ((345229770 * v130 - 827775902) & 0x801437AE) + 660516360) ^ *&v104[4 * ((v445 ^ 0x4AFA) >> 8)];
  v399 = v445 ^ 0xE4;
  LODWORD(v414) = v129 - ((2 * v129) & 0x65941428);
  v446 = v131 - 1295381996 + (~(2 * v131) | 0x9A6BEBD7);
  HIDWORD(v438) = (BYTE2(v126) ^ 0xFD84E2A5) - 1252452493 + *(v99 + 4 * (BYTE2(v126) ^ 0x35u));
  v396 = v437 ^ 0x67;
  LODWORD(v438) = (v432 ^ 0xFD84E291) - 1252452493 + *(v99 + 4 * (v432 ^ 1u));
  v394 = HIBYTE(v417) ^ 0xD7;
  v132 = *(v35 - 152);
  v133 = *&v100[4 * (HIBYTE(v132) ^ 0x82)];
  v134 = (-1974868763 * v133 - ((345229770 * v133 - 827775902) & 0x801437AE) + 660516360) ^ *&v104[4 * (BYTE1(v132) ^ 5)] ^ ((v436 ^ 0xFD84E2FE) - 1252452493 + *(v99 + 4 * (v436 ^ 0x6Eu)));
  v435 = v134 - ((2 * v134) & 0x65941428);
  v135 = (((v421 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 1252452493 + *(v99 + 4 * (((v421 ^ 0x23AAC875) >> 16) ^ 0x27u));
  v418 = v459 ^ 0x72;
  v388 = v424 ^ 0x68D34E2A;
  v136 = *&v100[4 * (HIBYTE(v424) ^ 0x27)];
  v137 = (v135 - ((2 * v135) & 0x801437AE) + 1074404311) ^ *&v104[4 * ((v421 ^ 0xC875) >> 8)];
  v138 = (-677965987 * v136 - 413887951 - 1296902776 * v136 - 2 * ((-677965987 * v136 - 413887951 - 1296902776 * v136) & 0x32CA0A15 ^ (-677965987 * v136 - 413887951) & 1) - 1295381996) ^ *&v102[4 * (v424 ^ 0x5A)];
  v433 = v431 ^ 0x86 ^ v511 ^ 5;
  v460 = v137 - ((2 * v137) & 0x65941428);
  BYTE1(v424) = BYTE1(v431) ^ 0x82;
  v139 = (((v431 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (((v431 ^ 0xC1698200) >> 16) ^ 0x7Bu));
  v140 = (-1974868763 * *&v100[4 * (HIBYTE(v431) ^ 0x60)] - 413887951) ^ *&v102[4 * (v431 ^ 0x72)] ^ (v139 - ((2 * v139) & 0x65941428) - 1295381996);
  LODWORD(v80) = *&v100[4 * (v454 ^ 0x21)];
  LODWORD(v80) = *&v102[4 * (v457 ^ 0x12)] ^ ((v447 ^ 0xFD84E2A2) - 1252452493 + *(v99 + 4 * (v447 ^ 0x32u))) ^ (-1974868763 * v80 - ((345229770 * v80 + 1319707746) & 0x65941428) - 1709269947);
  v393 = v140 - ((2 * v140) & 0x801437AE);
  v391 = v80 - ((2 * v80) & 0x801437AE);
  v390 = v138 - ((2 * v138) & 0x801437AE);
  HIDWORD(v430) = (BYTE2(v388) ^ 0xFD84E2EB) - 1252452493 + *(v99 + 4 * (BYTE2(v388) ^ 0x7Bu));
  v141 = *(v35 - 196) ^ 0x32;
  v142 = (BYTE2(v486) ^ 0xFD84E2A2) - 1252452493 + *(v99 + 4 * (BYTE2(v486) ^ 0x32u));
  v143 = (v485 ^ 0xFD84E216) - 1252452493 + *(v99 + 4 * (v485 ^ 0x86u));
  v448 = v491 ^ 0x6E;
  LODWORD(v80) = (v143 - ((2 * v143) & 0x65941428) - 1295381996) ^ *&v102[4 * (v481 ^ 0x15)];
  LODWORD(v36) = (v490 ^ 0xFD84E2B1) - 1252452493 + *(v99 + 4 * (v490 ^ 0x21u));
  v144 = (v142 - ((2 * v142) & 0x65941428) - 1295381996) ^ *&v102[4 * (v486 ^ 0x54)] ^ (-1974868763 * *&v100[4 * (HIBYTE(v486) ^ 0xEA)] - 413887951);
  HIDWORD(v385) = BYTE1(v486) ^ 0x83;
  HIDWORD(v386) = v144 - ((2 * v144) & 0x801437AE);
  LODWORD(v385) = BYTE1(v481) ^ 0xCC;
  LODWORD(v386) = v80 - ((2 * v80) & 0x801437AE);
  LODWORD(v387) = v496 ^ 0x81;
  LODWORD(v36) = (v36 - ((2 * v36) & 0x801437AE) + 1074404311) ^ *&v104[4 * (BYTE1(*(v35 - 136)) ^ 0x56)] ^ (-1974868763 * *&v100[4 * (HIBYTE(*(v35 - 136)) ^ 0x6D)] - 413887951);
  LODWORD(v389) = v36 - ((2 * v36) & 0x65941428);
  *(v35 - 196) = (v498 ^ 0xFD84E2DC) - 1252452493 + *(v99 + 4 * (v498 ^ 0x4Cu));
  LODWORD(v36) = (*(v35 - 192) ^ 0xFD84E246) - 1252452493 + *(v99 + 4 * (*(v35 - 192) ^ 0xD6u));
  v145 = v36 - ((2 * v36) & 0x801437AE);
  v146 = *(v35 - 120);
  LODWORD(v36) = (-1974868763 * *&v100[4 * (HIBYTE(v146) ^ 0x41)] - 413887951) ^ ((v501 ^ 0xFD84E273) - 1252452493 + *(v99 + 4 * (v501 ^ 0xE3u)));
  v147 = (v36 - ((2 * v36) & 0x801437AE) + 1074404311) ^ *&v104[4 * (BYTE1(v146) ^ 0x6F)];
  v148 = BYTE2(*(v35 - 160));
  LODWORD(v56) = (v148 ^ 0xFD84E2B8) - 1252452493 + *(v99 + 4 * (v148 ^ 0x28u));
  LODWORD(v80) = (v56 - ((2 * v56) & 0x65941428) - 1295381996) ^ *&v102[4 * (v502 ^ 0xCE)];
  v149 = *(v35 - 188);
  LODWORD(v68) = *&v100[4 * (HIBYTE(v149) ^ 0x18)];
  v150 = *&v100[4 * v420];
  v151 = *(v35 - 124);
  v152 = *&v100[4 * (HIBYTE(*(v35 - 128)) ^ 0xE)];
  v153 = *&v100[4 * (HIBYTE(v118) ^ 0x96)];
  v154 = *&v100[4 * (HIBYTE(v151) ^ 0xE6)];
  v155 = *&v100[4 * v141];
  LODWORD(v36) = *&v100[4 * v396];
  v156 = *&v100[4 * v394];
  v157 = *&v100[4 * (HIBYTE(v421) ^ 0x82)];
  v158 = *&v100[4 * (HIBYTE(v481) ^ 0x5B)];
  v159 = *&v100[4 * (HIBYTE(v496) ^ 0x17)];
  v160 = *&v100[4 * (*(v35 - 184) ^ 7)];
  LODWORD(v100) = *&v100[4 * (HIBYTE(v502) ^ 0x2E)];
  v499 = -1974868763 * v150 - 413887951;
  *(v35 - 184) = -1974868763 * v152 - 413887951;
  v518 = -1974868763 * v153 - 413887951;
  *(v35 - 160) = -1974868763 * v154 - 413887951;
  v161 = -1974868763 * v155 - 413887951;
  v492 = -1974868763 * v36 - 413887951;
  HIDWORD(v419) = -1974868763 * v156 - 413887951;
  v455 = -1974868763 * v158 - 413887951;
  v458 = -1974868763 * v159 - 413887951;
  *(v35 - 192) = -1974868763 * v100 - 413887951;
  v482 = *&v104[4 * BYTE1(v523)];
  LODWORD(v39) = (-1974868763 * v68 - ((345229770 * v68 + 1319707746) & 0x65941428) - 1709269947) ^ *&v102[4 * (v149 ^ 0xBC)];
  LODWORD(v401) = *&v104[4 * (*(v35 - 172) ^ 0xD0)];
  *(v35 - 172) = *&v104[4 * v478];
  LODWORD(v36) = *&v104[4 * (*(v35 - 180) ^ 0xB0)] ^ (-1974868763 * v160 - 413887951);
  *(v35 - 180) = *&v104[4 * (BYTE1(*(v35 - 156)) ^ 0x2D)];
  *(v35 - 156) = *&v104[4 * BYTE1(v415)];
  LODWORD(v395) = *&v104[4 * v409];
  HIDWORD(v395) = *&v104[4 * v444];
  v497 = *&v104[4 * v400];
  v162 = (v145 + 1074404311) ^ v36;
  v488 = *&v104[4 * v397];
  v487 = *&v104[4 * v418];
  v483 = *&v104[4 * BYTE1(v424)];
  v494 = *&v104[4 * (v493 ^ 0x7D)];
  v163 = v147 - ((2 * v147) & 0x65941428);
  v164 = *&v104[4 * BYTE1(v388)];
  LODWORD(v425) = *&v104[4 * v448];
  v442 = *&v104[4 * HIDWORD(v385)];
  v477 = *&v104[4 * v385];
  v449 = *&v104[4 * (BYTE1(v502) ^ 0x74)];
  LODWORD(v422) = *&v104[4 * (BYTE1(v149) ^ 0xF4)];
  LODWORD(v100) = *(v99 + 4 * (BYTE2(v149) ^ 0xF4u));
  HIDWORD(v387) = *&v102[4 * v479];
  LODWORD(v398) = v522 + 1074404311;
  *(v35 - 188) = v427 + 1074404311;
  LODWORD(v408) = v127 - ((2 * v127) & 0x801437AE) + 1074404311;
  HIDWORD(v414) = HIDWORD(v400) + 1074404311;
  v503 = v393 + 1074404311;
  HIDWORD(v400) = v391 + 1074404311;
  v165 = v390 + 1074404311;
  HIDWORD(v425) = v80 - ((2 * v80) & 0x801437AE) + 1074404311;
  LODWORD(v419) = v39 - ((2 * v39) & 0x801437AE) + 1074404311;
  LODWORD(v56) = *&v102[4 * (v516 ^ 0xBF)];
  v166 = *&v102[4 * (v514 ^ 0xE)];
  v465 = *&v102[4 * (v464 ^ 0x3D)];
  LODWORD(v405) = *&v102[4 * v429];
  v167 = *&v102[4 * v423];
  LODWORD(v104) = *&v102[4 * (*(v35 - 168) ^ 0xC9)];
  LODWORD(v430) = *&v102[4 * (v151 ^ 0x7D)];
  *(v35 - 168) = *&v102[4 * (v539 ^ 0x6A)];
  HIDWORD(v392) = *&v102[4 * v410];
  v168 = *&v102[4 * (*(v35 - 132) ^ 0x1C)];
  HIDWORD(v405) = *&v102[4 * v407];
  v169 = *&v102[4 * v403];
  HIDWORD(v408) = *&v102[4 * v399];
  HIDWORD(v422) = (BYTE2(v149) ^ 0xFD84E264) - 1252452493 + v100;
  HIDWORD(v401) = *&v102[4 * (*(v35 - 152) ^ 0x33)];
  LODWORD(v36) = *(v35 - 176) ^ 0xF2;
  HIDWORD(v389) = *&v102[4 * v433];
  LODWORD(v434) = *&v102[4 * v387];
  HIDWORD(v398) = *&v102[4 * (*(v35 - 136) ^ 0xB)];
  *(v35 - 176) = *&v102[4 * (*(v35 - 120) ^ 0x45)];
  *(v35 - 152) = *&v102[4 * v36];
  v170 = v532 - 1295381996;
  LODWORD(v102) = v537 - 1295381996;
  LODWORD(v80) = v529 - 1295381996;
  LODWORD(v392) = v470 - 1295381996;
  v471 = v452 - 1295381996;
  v453 = v416 - 1295381996;
  LODWORD(v416) = *(v35 - 256) - 1295381996;
  LODWORD(v57) = v435 - 1295381996;
  HIDWORD(v434) = v162 - ((2 * v162) & 0x65941428) - 1295381996;
  v171 = v164 ^ HIDWORD(v430) ^ 0xC38F08C7 ^ v165;
  v172 = v104 ^ v161 ^ 0xADE18B96 ^ (*(v35 - 248) - 1295381996);
  v173 = *(v35 - 140);
  v174 = *(&off_1F14948E0 + (v173 ^ 0x1A8)) - 8;
  v175 = *(&off_1F14948E0 + v173 - 411) - 12;
  v176 = *(&off_1F14948E0 + v173 - 440) - 12;
  v177 = (((v175[*(v35 - 111) ^ 0xD5] - 18) ^ 0xED) << 16) | ((v176[*(v35 - 112) ^ 1] ^ 0xFFFFFF8F) << 24);
  LODWORD(v104) = ((v174[*(v35 - 102) ^ 0x49] ^ 0x4C) << 8) & 0xFF00FFFF | (((v175[*(v35 - 103) ^ 0xB3] - 18) ^ 0x59) << 16);
  v178 = (((v175[*(v35 - 99) ^ 0xDLL] - 18) ^ 0xA9) << 16) | ((v176[*(v35 - 100) ^ 0xCALL] ^ 0x1D) << 24);
  v179 = *(v35 - 107) ^ 0x45;
  v180 = ((v174[*(v35 - 106) ^ 0xD5] ^ 0x6F) << 8) | ((v176[*(v35 - 108) ^ 0xC2] ^ 0x45) << 24);
  *(v35 - 256) = v175;
  *(v35 - 248) = v174;
  v181 = v180 & 0xFF00FFFF | (((v175[v179] - 18) ^ 0x16) << 16);
  LODWORD(v179) = v178 | ((v174[*(v35 - 98) ^ 0xC6] ^ 0x11) << 8);
  v182 = v177 | ((v174[*(v35 - 110) ^ 0xE7] ^ 0xF5) << 8);
  v183 = *(&off_1F14948E0 + v173 - 298);
  LODWORD(v179) = v179 & 0xFFFFFF00 | (53 * *(v183 + (*(v35 - 97) ^ 0xCBLL)) + 70) ^ 0x79;
  v184 = *(v35 - 208);
  v185 = v181 & 0xFFFFFF00 | (53 * *(v183 + (*(v35 - 105) ^ 0xB9)) + 70) ^ 0x3C;
  v538 = v183;
  v540 = v176;
  LODWORD(v104) = v104 & 0xFFFFFF00 | (53 * *(v183 + (*(v35 - 101) ^ 6)) + 70) ^ 0x87 | ((v176[*(v35 - 104) ^ 0x8ALL] ^ 0x62) << 24);
  *(v35 - 132) = (v182 & 0xFFFFFF00 | (53 * *(v183 + (*(v35 - 109) ^ 0x8ALL)) + 70) ^ 0xC9) ^ 0x37373737;
  *(v35 - 128) = v179 ^ 0x37373737;
  *(v35 - 124) = v185 ^ 0x37373737;
  *(v35 - 136) = v104 ^ 0x37373737;
  v533 = (v412 - 1295381996) ^ v168 ^ v441;
  v530 = (v414 - 1295381996) ^ v169 ^ HIDWORD(v419);
  v527 = v102 ^ v56 ^ v526;
  v524 = v80 ^ v166 ^ v499;
  v519 = v395 ^ v167 ^ *(v35 - 236) ^ v518;
  v517 = v170 ^ HIDWORD(v387);
  v515 = (v535 + 1074404311) ^ v482;
  *(v35 - 120) = (((*(v35 - 164) ^ 0x721BA16F) - 1997748874) ^ ((*(v35 - 164) ^ 0x5946F74B) - 1548643502) ^ ((*(v35 - 164) ^ 0x7D0BBD1B) - 2013472510)) + 544507198;
  LODWORD(v183) = v505 ^ v511;
  LODWORD(v176) = v505 ^ v511 ^ 0xB9EF8AB;
  v512 = v509 ^ v176 ^ 0xB7778D02;
  v510 = v183 ^ 0xB530938F;
  HIDWORD(v507) = v508 ^ v176 ^ 0xB2CF6573;
  LODWORD(v507) = v506 ^ v505 ^ 0xD960783;
  HIDWORD(v504) = v483 ^ v503;
  LODWORD(v504) = HIDWORD(v389) ^ (v460 - 1295381996) ^ (-1974868763 * v157 - 413887951);
  HIDWORD(v500) = v494 ^ HIDWORD(v400);
  LODWORD(v500) = HIDWORD(v392) ^ (HIDWORD(v412) - 1295381996);
  HIDWORD(v495) = v497 ^ v408 ^ v463;
  LODWORD(v495) = HIDWORD(v414) ^ v488;
  HIDWORD(v489) = HIDWORD(v405) ^ v487 ^ v492 ^ v438;
  LODWORD(v489) = HIDWORD(v408) ^ HIDWORD(v438) ^ (v446 + 1);
  HIDWORD(v484) = HIDWORD(v401) ^ v57;
  LODWORD(v484) = (v475 + 1074404311) ^ *(v35 - 172);
  HIDWORD(v480) = *(v35 - 180) ^ (v473 + 1074404311);
  LODWORD(v480) = v477 ^ (v386 + 1074404311) ^ v455;
  HIDWORD(v476) = HIDWORD(v398) ^ (v389 - 1295381996);
  LODWORD(v476) = v425 ^ v434 ^ v458 ^ *(v35 - 196);
  LODWORD(v176) = *(v35 - 116);
  HIDWORD(v472) = v442 ^ (HIDWORD(v386) + 1074404311);
  LODWORD(v472) = v405 ^ v471;
  HIDWORD(v466) = v465 ^ v392 ^ v468;
  LODWORD(v466) = *(v35 - 156) ^ *(v35 - 184) ^ *(v35 - 188);
  HIDWORD(v461) = *(v35 - 176) ^ (v163 - 1295381996);
  LODWORD(v461) = v422 ^ HIDWORD(v422) ^ v419;
  HIDWORD(v456) = *(v35 - 152) ^ HIDWORD(v434);
  LODWORD(v456) = v449 ^ HIDWORD(v425) ^ *(v35 - 192);
  HIDWORD(v450) = v430 ^ v453 ^ *(v35 - 160);
  LODWORD(v450) = *(v35 - 168) ^ v416;
  *(v35 - 236) = v172;
  LODWORD(v443) = v513 - ((2 * v513) & 0x7010A708) - 1207413884;
  HIDWORD(v443) = 46032142 - v172 - v171;
  HIDWORD(a32) = HIDWORD(v443) ^ v171;
  *(v35 - 116) = v176;
  *(v35 - 196) = 0;
  *(v35 - 140) = *(v35 - 120) < 0xCD161464;
  LODWORD(v100) = ((v173 ^ 0xEB) + 31) | 0x88;
  v186 = v176;
  v187 = v173 ^ 0xEB;
  v188 = (v184 + v176);
  v189 = *(v35 - 256);
  LOBYTE(v183) = *(v189 + (v188[5] ^ 0x87));
  *(v35 - 172) = v100;
  LODWORD(v176) = *(v35 - 116) | v100 ^ 0x1CD;
  *(v35 - 156) = v176;
  LODWORD(v176) = v540[*(v184 + v176) ^ 2];
  *(v35 - 192) = v173 ^ 0x203;
  v190 = v186 + (v173 ^ 0x203u) - 956;
  *(v35 - 152) = v190;
  v191 = *(v35 - 248);
  v192 = (((v183 - 18) ^ 0x74) << 16) | ((v176 ^ 0x55555555) << 24) | ((*(v191 + (v188[6] ^ 0xE2)) ^ 0x33) << 8) | (53 * *(v538 + (v188[7] ^ 0xBFLL)) + 70) ^ 0xFA;
  v193 = ((53 * *(v538 + (v188[15] ^ 0x3CLL)) + 70) ^ 0x68 | ((*(v191 + (*(v184 + v190) ^ 8)) ^ 0x77) << 8)) & 0xFF00FFFF | ((v540[v188[12] ^ 0xBDLL] ^ 0x7D) << 24) | (((*(v189 + (v188[13] ^ 0xCALL)) - 18) ^ 0xFD) << 16);
  v194 = (53 * *(v538 + (v188[3] ^ 0x19)) + 70) ^ 0x38 | ((v540[*v188 ^ 0x50] ^ 0x60) << 24) | (((*(v189 + (v188[1] ^ 0x1ELL)) - 18) ^ 0x68) << 16) | ((*(v191 + (v188[2] ^ 6)) ^ 0xB) << 8);
  v195 = ((v540[v188[8]] ^ 0x5E) << 24) | (((*(v189 + (v188[9] ^ 0xB0)) - 18) ^ 0x86) << 16) | ((*(v191 + (v188[10] ^ 0x42)) ^ 0xF6) << 8) | (53 * *(v538 + (v188[11] ^ 0x60)) + 70) ^ 0xDA;
  if ((((53 * *(v538 + (v188[7] ^ 0xBFLL)) + 70) ^ 0xFA) & 2) != 0)
  {
    v196 = -2;
  }

  else
  {
    v196 = 2;
  }

  *(v35 - 184) = v192;
  *(v35 - 180) = v193;
  v197 = v510 ^ (v196 + v192);
  *(v35 - 176) = v195;
  *(v35 - 188) = v194;
  v198 = *(&off_1F14948E0 + v187 - 211) - 12;
  v199 = *&v198[4 * ((WORD2(v507) ^ v195) >> 8)];
  HIDWORD(v201) = v199 ^ 0x9D6;
  LODWORD(v201) = v199 ^ 0x56EE4000;
  v200 = v201 >> 14;
  *(v35 - 160) = v187;
  v202 = *(&off_1F14948E0 + v187 - 264) - 12;
  v203 = *&v198[4 * ((v507 ^ v194) >> 8)];
  HIDWORD(v201) = v203 ^ 0x9D6;
  LODWORD(v201) = v203 ^ 0x56EE4000;
  v204 = *(&off_1F14948E0 + (v187 ^ 0x16E));
  v205 = (1921359783 - 21582785 * *(v204 + 4 * (BYTE4(v507) ^ v195))) ^ (*&v202[4 * HIBYTE(v197)] + 157053960);
  v206 = (1921359783 - 21582785 * *(v204 + 4 * (v510 ^ (v196 + v192)))) ^ v200;
  v207 = *(&off_1F14948E0 + v187 - 221) - 12;
  v208 = (*&v202[4 * ((HIDWORD(v507) ^ v195) >> 24)] + 157053960) ^ (v201 >> 14);
  v209 = *&v207[4 * BYTE2(v197)];
  v210 = *&v198[4 * BYTE1(v197)];
  HIDWORD(v201) = v210 ^ 0x9D6;
  LODWORD(v201) = v210 ^ 0x56EE4000;
  v211 = (v208 - 1207413884 - ((2 * v208) & 0x7010A708)) ^ v209 ^ (1921359783 - 21582785 * *(v204 + 4 * (v512 ^ v193)));
  v212 = (*&v202[4 * ((v512 ^ v193) >> 24)] + 157053960) ^ (v201 >> 14);
  v213 = *&v198[4 * ((v512 ^ v193) >> 8)];
  HIDWORD(v201) = v213 ^ 0x9D6;
  LODWORD(v201) = v213 ^ 0x56EE4000;
  v214 = v212 ^ (1921359783 - 21582785 * *(v204 + 4 * (v507 ^ v194)));
  v215 = HIDWORD(a32) ^ (v211 + HIDWORD(v443) - 2 * (v211 & HIDWORD(v443)));
  v216 = HIDWORD(v504) ^ *&v207[4 * ((v512 ^ v193) >> 16)] ^ (*&v202[4 * ((v507 ^ v194) >> 24)] + 157053960) ^ 0x8E1E9161 ^ (v206 - 1207413884 - ((2 * v206) & 0x7010A708));
  v217 = v504 ^ *&v207[4 * (BYTE2(v507) ^ BYTE2(v194))] ^ (v201 >> 14) ^ 0x7A8BED94 ^ (v205 - 1207413884 - ((2 * v205) & 0x7010A708));
  v218 = HIDWORD(v500) ^ *&v207[4 * ((HIDWORD(v507) ^ v195) >> 16)] ^ 0x342D1067 ^ (v214 - 1207413884 - ((2 * v214) & 0x7010A708));
  v219 = *&v198[4 * ((v215 ^ 0xAB13) >> 8)];
  HIDWORD(v201) = v219 ^ 0x9D6;
  LODWORD(v201) = v219 ^ 0x56EE4000;
  v220 = (v201 >> 14) ^ (*&v202[4 * HIBYTE(v216)] + 157053960);
  v221 = *&v202[4 * HIBYTE(v217)];
  v222 = v220 - 1207413884 - ((2 * v220) & 0x7010A708);
  v223 = (2 * v221 + 314107920) & 0x7010A708;
  v224 = v221 - 1050359924;
  v225 = *&v198[4 * BYTE1(v218)];
  HIDWORD(v201) = v225 ^ 0x9D6;
  LODWORD(v201) = v225 ^ 0x56EE4000;
  v226 = v201 >> 14;
  v227 = *&v198[4 * BYTE1(v216)];
  v228 = v224 - v223;
  HIDWORD(v201) = v227 ^ 0x9D6;
  LODWORD(v201) = v227 ^ 0x56EE4000;
  v229 = v201 >> 14;
  v230 = *&v198[4 * BYTE1(v217)];
  HIDWORD(v201) = v230 ^ 0x9D6;
  LODWORD(v201) = v230 ^ 0x56EE4000;
  v231 = *&v202[4 * ((v215 ^ 0xC04AB13u) >> 24)];
  v232 = (1921359783 - 21582785 * *(v204 + 4 * v216)) ^ (*&v202[4 * HIBYTE(v218)] + 157053960);
  v233 = v533 ^ *&v207[4 * BYTE2(v218)] ^ (1921359783 - 21582785 * *(v204 + 4 * v217)) ^ v222;
  v234 = v500 ^ *&v207[4 * ((v215 ^ 0xC04AB13u) >> 16)] ^ (v201 >> 14) ^ 0xD9D684A ^ (v232 - 1207413884 - ((2 * v232) & 0x7010A708));
  v235 = HIDWORD(v495) ^ *&v207[4 * BYTE2(v216)] ^ v228 ^ v226 ^ 0x87DD46DC ^ (1921359783 - 21582785 * *(v204 + 4 * (v215 ^ 0x33u)));
  v236 = v495 ^ *&v207[4 * BYTE2(v217)] ^ (1921359783 - 21582785 * *(v204 + 4 * v218)) ^ v229 ^ 0x96521C3F ^ (v231 - 1050359924 - ((2 * v231 + 314107920) & 0x7010A708));
  v237 = *&v198[4 * ((v233 ^ 0xB36B) >> 8)];
  HIDWORD(v201) = v237 ^ 0x9D6;
  LODWORD(v201) = v237 ^ 0x56EE4000;
  v238 = v201 >> 14;
  v239 = *&v198[4 * BYTE1(v234)];
  HIDWORD(v201) = v239 ^ 0x9D6;
  LODWORD(v201) = v239 ^ 0x56EE4000;
  v240 = *&v198[4 * BYTE1(v235)];
  v241 = (*&v202[4 * HIBYTE(v235)] + 157053960) ^ (v201 >> 14);
  HIDWORD(v201) = v240 ^ 0x9D6;
  LODWORD(v201) = v240 ^ 0x56EE4000;
  v242 = (1921359783 - 21582785 * *(v204 + 4 * v234)) ^ v238;
  v243 = v241 ^ (1921359783 - 21582785 * *(v204 + 4 * ((v495 ^ v207[4 * BYTE2(v217)] ^ (-89 - -63 * *(v204 + 4 * v218)) ^ v229) ^ 0x3Fu ^ (v231 - 116 - ((2 * v231 + 16) & 8)))));
  v244 = (*&v202[4 * HIBYTE(v234)] + 157053960) ^ (v201 >> 14);
  v245 = *&v198[4 * ((v495 ^ *&v207[4 * BYTE2(v217)] ^ (-24665 - 21441 * *(v204 + 4 * v218)) ^ v229 ^ 0x1C3F ^ (v231 - 14452 - ((2 * v231 - 6128) & 0xA708))) >> 8)];
  HIDWORD(v201) = v245 ^ 0x9D6;
  LODWORD(v201) = v245 ^ 0x56EE4000;
  v246 = (v201 >> 14) ^ (1921359783 - 21582785 * *(v204 + 4 * v235));
  v247 = v244 ^ (1921359783 - 21582785 * *(v204 + 4 * (v233 ^ 0x6Bu)));
  v248 = *&v202[4 * (HIBYTE(v233) ^ 0xEE)] + 157053960;
  v249 = v530 ^ *&v207[4 * ((v233 ^ 0x2F7BB36B) >> 16)] ^ (v243 - 1207413884 - ((2 * v243) & 0x7010A708));
  v250 = HIDWORD(v489) ^ *&v207[4 * BYTE2(v236)] ^ 0xF889D49E ^ (v247 - 1207413884 - ((2 * v247) & 0x7010A708));
  v251 = v489 ^ *&v207[4 * BYTE2(v235)] ^ (*&v202[4 * HIBYTE(v236)] + 157053960) ^ 0xD8A932B2 ^ (v242 - 1207413884 - ((2 * v242) & 0x7010A708));
  BYTE2(v222) = BYTE2(v249) ^ 0x6F;
  v252 = HIDWORD(v484) ^ *&v207[4 * BYTE2(v234)] ^ v248 ^ 0xDBC82169 ^ (v246 - 1207413884 - ((2 * v246) & 0x7010A708));
  v253 = *&v198[4 * ((v249 ^ 0x9E59) >> 8)];
  v254 = *&v198[4 * BYTE1(v252)];
  HIDWORD(v201) = v253 ^ 0x9D6;
  LODWORD(v201) = v253 ^ 0x56EE4000;
  v255 = v201 >> 14;
  HIDWORD(v201) = v254 ^ 0x9D6;
  LODWORD(v201) = v254 ^ 0x56EE4000;
  v256 = *&v207[4 * BYTE2(v250)];
  v257 = (1921359783 - 21582785 * *(v204 + 4 * v251)) ^ (*&v202[4 * ((v249 ^ 0xD16F9E59) >> 24)] + 157053960) ^ (*&v198[4 * BYTE1(v250)] >> 14) ^ (*&v198[4 * BYTE1(v250)] << 18) ^ 0x27595BB9;
  v258 = (*&v202[4 * HIBYTE(v250)] + 157053960) ^ v255 ^ (1921359783 - 21582785 * *(v204 + 4 * v252));
  v259 = *&v207[4 * BYTE2(v251)];
  v260 = *(v204 + 4 * (v249 ^ 0x79u));
  v261 = (v201 >> 14) ^ (*&v202[4 * HIBYTE(v251)] + 157053960) ^ (1921359783 - 21582785 * *(v204 + 4 * v250));
  v262 = *&v198[4 * BYTE1(v251)];
  HIDWORD(v201) = v262 ^ 0x9D6;
  LODWORD(v201) = v262 ^ 0x56EE4000;
  v263 = v527 ^ v259 ^ (v258 - 1207413884 - ((2 * v258) & 0x7010A708));
  v264 = v263 ^ 0xE0349DAE;
  v265 = v484 ^ *&v207[4 * BYTE2(v222)] ^ 0xF4361671 ^ (v261 - 1207413884 - ((2 * v261) & 0x7010A708));
  v266 = v524 ^ v256 ^ (*&v202[4 * HIBYTE(v252)] + 157053960) ^ (v201 >> 14) ^ (-21582785 * v260 + 713945899 - ((2104318078 * v260 + 1695235918) & 0x7010A708));
  v267 = HIDWORD(v480) ^ *&v207[4 * BYTE2(v252)] ^ 0x7E1E5010 ^ (v257 - 1207413884 - ((2 * v257) & 0x7010A708));
  v268 = (v263 ^ 0xE0349DAE) >> 24;
  v269 = (1921359783 - 21582785 * *(v204 + 4 * (v263 ^ 0x8Eu))) ^ (*&v202[4 * HIBYTE(v265)] + 157053960);
  v270 = *&v202[4 * v268];
  v271 = v269 - 1207413884 - ((2 * v269) & 0x7010A708);
  v272 = *&v198[4 * BYTE1(v264)];
  HIDWORD(v201) = v272 ^ 0x9D6;
  LODWORD(v201) = v272 ^ 0x56EE4000;
  v273 = v201 >> 14;
  v274 = *&v198[4 * BYTE1(v267)];
  HIDWORD(v201) = v274 ^ 0x9D6;
  LODWORD(v201) = v274 ^ 0x56EE4000;
  v275 = v201 >> 14;
  v276 = v273 ^ (1921359783 - 21582785 * *(v204 + 4 * v265)) ^ (*&v202[4 * HIBYTE(v267)] + 157053960);
  v277 = *&v198[4 * ((v266 ^ 0x500A) >> 8)];
  HIDWORD(v201) = v277 ^ 0x9D6;
  LODWORD(v201) = v277 ^ 0x56EE4000;
  v278 = v201 >> 14;
  v279 = *&v198[4 * BYTE1(v265)];
  HIDWORD(v201) = v279 ^ 0x9D6;
  LODWORD(v201) = v279 ^ 0x56EE4000;
  v280 = (1921359783 - 21582785 * *(v204 + 4 * v267)) ^ (*&v202[4 * ((v266 ^ 0x6754500Au) >> 24)] + 157053960) ^ (v201 >> 14);
  v281 = *&v207[4 * ((v266 ^ 0x6754500Au) >> 16)];
  v282 = *&v207[4 * BYTE2(v264)];
  v283 = 1921359783 - 21582785 * *(v204 + 4 * (v266 ^ 0x2Au));
  v284 = v480 ^ *&v207[4 * BYTE2(v267)] ^ v278 ^ v271 ^ 0x541774FA;
  v285 = HIDWORD(v476) ^ v281 ^ 0x9A279982 ^ (v276 - 1207413884 - ((2 * v276) & 0x7010A708));
  v286 = v476 ^ *&v207[4 * BYTE2(v265)] ^ (v270 - 1050359924 + ((1833375726 - 2 * v270) | 0x8FEF58F7) + 1) ^ v283 ^ 0xA5351C21 ^ v275;
  v287 = HIDWORD(v472) ^ v282 ^ 0x8EB61C45 ^ (v280 - 1207413884 - ((2 * v280) & 0x7010A708));
  v288 = *&v198[4 * ((WORD2(v476) ^ v281 ^ 0x9982 ^ (v276 + 21380 - ((2 * v276) & 0xA708))) >> 8)];
  HIDWORD(v201) = v288 ^ 0x9D6;
  LODWORD(v201) = v288 ^ 0x56EE4000;
  v289 = *(v204 + 4 * (v284 - ((2 * v284) & 0x40) + 32));
  v290 = *&v198[4 * ((WORD2(v472) ^ v282 ^ 0x1C45 ^ (v280 + 21380 - ((2 * v280) & 0xA708))) >> 8)];
  v291 = (v201 >> 14) - 1207413884 - ((2 * (v201 >> 14)) & 0x7010A708);
  HIDWORD(v201) = v290 ^ 0x9D6;
  LODWORD(v201) = v290 ^ 0x56EE4000;
  v292 = (v201 >> 14) ^ (*&v202[4 * HIBYTE(v284)] + 157053960);
  v293 = *&v198[4 * BYTE1(v284)];
  HIDWORD(v201) = v293 ^ 0x9D6;
  LODWORD(v201) = v293 ^ 0x56EE4000;
  v294 = v201 >> 14;
  v295 = *&v198[4 * BYTE1(v286)];
  HIDWORD(v201) = v295 ^ 0x9D6;
  LODWORD(v201) = v295 ^ 0x56EE4000;
  v296 = HIDWORD(v395) ^ (HIDWORD(v416) + 1074404311) ^ *&v207[4 * BYTE2(v286)] ^ v294 ^ (*&v202[4 * HIBYTE(v287)] + 157053960) ^ (-21582785 * *(v204 + 4 * v285) + 713945899 + ((43165570 * *(v204 + 4 * v285) + 452247729) | 0x8FEF58F7) + 1);
  v297 = 1921359783 - 21582785 * *(v204 + 4 * v286);
  v298 = v472 ^ *&v207[4 * BYTE2(v284)] ^ (*&v202[4 * HIBYTE(v286)] + 157053960) ^ v291 ^ (1921359783 - 21582785 * *(v204 + 4 * v287)) ^ 0x7C892C4A;
  v299 = HIDWORD(v466) ^ *&v207[4 * BYTE2(v287)] ^ (*&v202[4 * HIBYTE(v285)] + 157053960) ^ (v201 >> 14) ^ 0x190B7FE4 ^ (-21582785 * v289 + 713945899 - ((2104318078 * v289 + 1695235918) & 0x7010A708));
  v300 = v466 ^ *&v207[4 * BYTE2(v285)] ^ v297 ^ 0xCFA132BA ^ (v292 - 1207413884 - ((2 * v292) & 0x7010A708));
  v301 = v296 ^ 0x402CF460;
  v302 = (v296 ^ 0x402CF460) >> 24;
  v303 = *&v198[4 * BYTE1(v298)];
  HIDWORD(v201) = v303 ^ 0x9D6;
  LODWORD(v201) = v303 ^ 0x56EE4000;
  v304 = v201 >> 14;
  v305 = *&v198[4 * BYTE1(v300)];
  HIDWORD(v201) = v305 ^ 0x9D6;
  LODWORD(v201) = v305 ^ 0x56EE4000;
  v306 = *(v204 + 4 * (v296 ^ 0x40u));
  v307 = -21582785 * v306 + 713945899 - ((2104318078 * v306 + 1695235918) & 0x7010A708);
  v308 = (1921359783 - 21582785 * *(v204 + 4 * v299)) ^ (*&v202[4 * v302] + 157053960) ^ (v201 >> 14);
  v309 = (*&v202[4 * HIBYTE(v299)] + 157053960) ^ v304;
  v310 = *&v198[4 * BYTE1(v299)];
  HIDWORD(v201) = v310 ^ 0x9D6;
  LODWORD(v201) = v310 ^ 0x56EE4000;
  v311 = v201 >> 14;
  v312 = v309 ^ (1921359783 - 21582785 * *(v204 + 4 * v300));
  v313 = v312 - 1207413884 - ((2 * v312) & 0x7010A708);
  v314 = (1921359783 - 21582785 * *(v204 + 4 * v298)) ^ (*&v202[4 * HIBYTE(v300)] + 157053960);
  v315 = v314 - 1207413884 - ((2 * v314) & 0x7010A708);
  v316 = *&v198[4 * BYTE1(v301)];
  HIDWORD(v201) = v316 ^ 0x9D6;
  LODWORD(v201) = v316 ^ 0x56EE4000;
  v317 = HIDWORD(v461) ^ *&v207[4 * BYTE2(v298)] ^ 0x2655A6B2 ^ (v308 - 1207413883 + ~((2 * v308) & 0x7010A708));
  v318 = *&v207[4 * BYTE2(v300)];
  v319 = *&v207[4 * BYTE2(v301)];
  v320 = *&v207[4 * BYTE2(v299)];
  v321 = *&v202[4 * HIBYTE(v298)] + 157053960;
  v322 = v461 ^ v320 ^ (v201 >> 14) ^ 0x354150DE ^ v315;
  v323 = HIDWORD(v456) ^ v318 ^ v311 ^ v321 ^ 0x6005D395 ^ v307;
  v324 = v456 ^ v319 ^ 0xD6EF510D;
  v325 = *&v198[4 * BYTE1(v323)];
  HIDWORD(v201) = v325 ^ 0x9D6;
  LODWORD(v201) = v325 ^ 0x56EE4000;
  v326 = v324 ^ v313;
  v327 = (v201 >> 14) - 1207413884 - ((2 * (v201 >> 14)) & 0x7010A708);
  v328 = *&v202[4 * HIBYTE(v317)];
  v329 = (1921359783 - 21582785 * *(v204 + 4 * v317)) ^ (*&v202[4 * HIBYTE(v323)] + 157053960);
  v330 = -21582785 * *(v204 + 4 * v323) + 713945899 - ((2104318078 * *(v204 + 4 * v323) + 1695235918) & 0x7010A708);
  v331 = *&v198[4 * BYTE1(v322)];
  HIDWORD(v201) = v331 ^ 0x9D6;
  LODWORD(v201) = v331 ^ 0x56EE4000;
  v332 = v201 >> 14;
  v333 = *&v198[4 * BYTE1(v317)];
  HIDWORD(v201) = v333 ^ 0x9D6;
  LODWORD(v201) = v333 ^ 0x56EE4000;
  v334 = v201 >> 14;
  v335 = *&v198[4 * BYTE1(v326)];
  HIDWORD(v201) = v335 ^ 0x9D6;
  LODWORD(v201) = v335 ^ 0x56EE4000;
  v336 = *&v207[4 * BYTE2(v322)] ^ *(v35 - 236) ^ (v201 >> 14) ^ (v329 - 1207413884 - ((2 * v329) & 0x7010A708));
  v337 = v519 ^ *&v207[4 * BYTE2(v323)] ^ v332 ^ (v328 - 1050359924 - ((2 * v328 + 314107920) & 0x7010A708)) ^ (1921359783 - 21582785 * *(v204 + 4 * v326));
  v338 = HIDWORD(v450) ^ *&v207[4 * BYTE2(v317)] ^ (*&v202[4 * HIBYTE(v326)] + 157053960) ^ v327 ^ (1921359783 - 21582785 * *(v204 + 4 * v322)) ^ 0xDE12593A;
  v339 = v450 ^ (*&v202[4 * HIBYTE(v322)] + 157053960) ^ *&v207[4 * BYTE2(v326)] ^ v330 ^ v334 ^ 0x8D19C5A6;
  v340 = *&v198[4 * BYTE1(v339)];
  HIDWORD(v201) = v340 ^ 0x9D6;
  LODWORD(v201) = v340 ^ 0x56EE4000;
  BYTE2(v330) = BYTE2(v337) ^ 0x18;
  v341 = (v201 >> 14) - 1207413884 - ((2 * (v201 >> 14)) & 0x7010A708);
  v342 = *&v198[4 * ((v336 ^ 0x5930) >> 8)];
  HIDWORD(v201) = v342 ^ 0x9D6;
  LODWORD(v201) = v342 ^ 0x56EE4000;
  v343 = (v201 >> 14) - 1207413884 - ((2 * (v201 >> 14)) & 0x7010A708);
  v344 = (*&v202[4 * (HIBYTE(v336) ^ 0x50)] + 157053960) ^ (1921359783 - 21582785 * *(v204 + 4 * (v337 ^ 0xA5u)));
  v345 = *&v198[4 * ((v337 ^ 0x38A5) >> 8)];
  HIDWORD(v201) = v345 ^ 0x9D6;
  LODWORD(v201) = v345 ^ 0x56EE4000;
  v346 = v201 >> 14;
  v347 = *&v202[4 * (HIBYTE(v337) ^ 0xA)];
  LODWORD(v198) = *&v198[4 * BYTE1(v338)];
  HIDWORD(v201) = v198 ^ 0x9D6;
  LODWORD(v201) = v198 ^ 0x56EE4000;
  LODWORD(v198) = v517 ^ *&v207[4 * BYTE2(v330)] ^ (*&v202[4 * HIBYTE(v338)] + 157053960) ^ (1921359783 - 21582785 * *(v204 + 4 * v339)) ^ v343;
  LODWORD(v202) = (*&v202[4 * HIBYTE(v339)] + 157053960) ^ v443 ^ v346 ^ *&v207[4 * BYTE2(v338)] ^ (1921359783 - 21582785 * *(v204 + 4 * (v336 ^ 0x30u)));
  v348 = v515 ^ *&v207[4 * ((v336 ^ 0x911C5930) >> 16)] ^ v341 ^ (1921359783 - 21582785 * *(v204 + 4 * v338)) ^ (v347 + 157053960);
  v349 = v398 ^ v401 ^ *&v207[4 * BYTE2(v339)] ^ (v201 >> 14) ^ (v344 - 1207413883 + ~((2 * v344) & 0x7010A708));
  v350 = v349 ^ 0x644667A6;
  v351 = v348 ^ 0x7EC2C88;
  v352 = *(v35 - 160);
  v353 = *(&off_1F14948E0 + (v352 ^ 0x118)) - 4;
  v354 = *&v353[4 * ((v349 ^ 0x644667A6u) >> 24)];
  HIDWORD(v201) = v354 ^ 0x69;
  LODWORD(v201) = v354 ^ 0x5219D980;
  LODWORD(v204) = v198 ^ 0x9A25D878;
  v355 = *(&off_1F14948E0 + v352 - 285) - 8;
  v356 = *(&off_1F14948E0 + (v352 ^ 0x14B)) - 4;
  v357 = (v351 + 1501921503 - ((2 * v351) & 0x1BE)) ^ *&v356[4 * (v348 ^ 0xDB)] ^ (v201 >> 7);
  v358 = *&v355[4 * ((v349 ^ 0x644667A6u) >> 16)];
  *(v35 - 164) = ((2 * v358) & 0xBB708860 ^ 0x4EDFF7DF) - 695379185 + (((v358 ^ 0xE70B81DF) + 418676257) ^ ((v358 ^ 0x5CF55D32) - 1559584050) ^ ((v358 ^ 0xC32BCA33) + 1020540365));
  *(v35 - 168) = (v198 ^ 0x78) + 1501921503 - ((2 * (v198 ^ 0x9A25D878)) & 0x1BE);
  v359 = v357 + 2027230942 - ((2 * v357) & 0xF1AA2DBC);
  v360 = *&v355[4 * BYTE2(v351)];
  v361 = *&v355[4 * ((v202 ^ 0xAD089B63) >> 16)];
  LODWORD(v355) = *&v355[4 * ((v198 ^ 0x9A25D878) >> 16)];
  v362 = *(&off_1F14948E0 + (v352 ^ 0x105));
  v363 = ((v349 ^ 0xA6) + 1501921503 - ((2 * (v349 ^ 0x644667A6)) & 0x1BE)) ^ (BYTE1(v351) + 1135439328 - ((v351 >> 7) & 0x1C0)) ^ *(v362 + 4 * (BYTE1(v351) ^ 0xF5u)) ^ *&v356[4 * (v349 ^ 0xF5)];
  v364 = *&v353[4 * ((v198 ^ 0x9A25D878) >> 24)];
  v365 = v363 + 2027230942 - ((2 * v363) & 0xF1AA2DBC);
  HIDWORD(v201) = v364 ^ 0x69;
  LODWORD(v201) = v364 ^ 0x5219D980;
  v366 = ((v202 ^ 0x9B63) >> 8);
  v367 = v366 + 1135439328 - (((v202 ^ 0xAD089B63) >> 7) & 0x1C0);
  v368 = (v201 >> 7) + 2027230942 - ((2 * (v201 >> 7)) & 0xF1AA2DBC);
  v369 = *&v353[4 * ((v202 >> 24) ^ 0xBD)];
  HIDWORD(v201) = v369 ^ 0x69;
  LODWORD(v201) = v369 ^ 0x5219D980;
  v370 = v201 >> 7;
  LODWORD(v198) = *&v356[4 * (v198 ^ 0x2B)];
  LODWORD(v356) = *&v356[4 * (v202 ^ 0x30)];
  v371 = (v202 ^ 0x63) + 1501921503 - ((2 * (v202 ^ 0xAD089B63)) & 0x1BE);
  v372 = *(v362 + 4 * (v366 ^ 0xF5u));
  v373 = *&v353[4 * HIBYTE(v351)];
  HIDWORD(v201) = v373 ^ 0x69;
  LODWORD(v201) = v373 ^ 0x5219D980;
  v374 = *(v35 - 136);
  v375 = v374 ^ *(v35 - 224) ^ v355 ^ v370 ^ v365;
  LODWORD(v353) = *(v35 - 132) ^ *(v35 - 232) ^ v367 ^ *(v35 - 168) ^ v198 ^ v372 ^ (v201 >> 7) ^ *(v35 - 164);
  LODWORD(v202) = *(v35 - 128) ^ *(v35 - 228) ^ (BYTE1(v204) + 1135439328 - ((v204 >> 7) & 0x1C0)) ^ v361 ^ *(v362 + 4 * (BYTE1(v204) ^ 0xF5u)) ^ v359;
  v376 = *(v35 - 208);
  v377 = *(v35 - 124) ^ *(v35 - 220) ^ v371 ^ v360 ^ (BYTE1(v350) + 1135439328 - ((v350 >> 7) & 0x1C0)) ^ v356 ^ *(v362 + 4 * (BYTE1(v350) ^ 0xF5u)) ^ v368;
  v378 = *(&off_1F14948E0 + (v352 ^ 0x123)) - 8;
  v188[3] = v378[v353 ^ 0xDFLL] ^ 0xBD;
  v379 = *(&off_1F14948E0 + v352 - 169);
  *(v376 + *(v35 - 156)) = (*(v379 + (BYTE3(v377) ^ 0x2CLL)) + 107) ^ 0x78;
  *v188 = (*(v379 + ((v353 >> 24) ^ 0x57)) + 107) ^ 0xC8;
  v380 = *(&off_1F14948E0 + v352 - 171);
  v188[13] = (*(v380 + (BYTE2(v202) ^ 0x5CLL)) - 100) ^ 0xC7;
  v188[11] = v378[v375 ^ 0x46] ^ 0xF9;
  v381 = *(&off_1F14948E0 + (v352 ^ 0x1A1)) - 8;
  *(v376 + *(v35 - 152)) = ((BYTE1(v202) ^ 0xEE) - ((2 * (BYTE1(v202) ^ 0xEE)) & 0xD2) + 105) ^ 0x75 ^ v381[BYTE1(v202)];
  v188[2] = ((BYTE1(v353) ^ 3) - ((2 * (BYTE1(v353) ^ 3)) & 0xD2) + 105) ^ 0x8B ^ v381[BYTE1(v353) ^ 0xE6];
  v188[10] = ((BYTE1(v375) ^ 0xAB) - ((2 * (BYTE1(v375) ^ 0xAB)) & 0xD2) + 105) ^ 0x6D ^ v381[BYTE1(v375) ^ 0x84];
  v188[15] = v378[v202 ^ 0x11] ^ 0x4E;
  v188[5] = (*(v380 + (BYTE2(v377) ^ 0x44)) - 100) ^ 0xE2;
  v188[8] = (*(v379 + (HIBYTE(v375) ^ 0x26)) + 107) ^ 0xA2;
  v188[7] = v378[v377 ^ 0x3DLL] ^ 0x44;
  v188[12] = (*(v379 + ((v202 >> 24) ^ 0x44)) + 107) ^ 0x23;
  v188[1] = (*(v380 + (BYTE2(v353) ^ 0xA3)) - 100) ^ 0x17;
  v382 = *(v35 - 116);
  v188[6] = (BYTE1(v377) + (~(v377 >> 7) | 0x2D) + 106) ^ 0xD0 ^ v381[BYTE1(v377) ^ 0x58];
  v188[9] = (*(v380 + (BYTE2(v375) ^ 0xF8)) - 100) ^ 0x90;
  v383 = (v382 - 854190988) < *(v35 - 120);
  if (*(v35 - 140) != (v382 - 854190988) < 0xCD161464)
  {
    v383 = *(v35 - 140);
  }

  LODWORD(v400) = v535 + 1074404311;
  HIDWORD(v416) = v386 + 1074404311;
  return (*(*(v35 - 216) + 8 * ((95 * v383) ^ v352)))(v374, 105, 1135439328, v372, v378, v365, v377, 189, a9, v385, v386, v387, v389, v392, v395, v398, v400, v401, v405, v408, v412, v414, v416, v419, v422, v425, v430, v434, v438, a30, a31, a32, v443, v450, v456, v461, v466, v472, v476, v480, v484, v489, v495, v500, v504, v507);
}

uint64_t sub_1A23BDAC8@<X0>(uint64_t a1@<X1>, char a2@<W4>, unsigned int a3@<W8>)
{
  v7 = *(v6 - 220 + 4 * (a3 >> ((a2 + v4 - 111) ^ (a2 + 2))) + 72);
  v8 = ((2 * a3) & 0xF9FEFFD8) + (a3 ^ 0xFCFF7FEC) + v3;
  *(a1 + v8) = v7 ^ 0xF9;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0x70) - ((v7 >> 7) & 0x12) - 119;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0xD5) - 2 * ((BYTE2(v7) ^ 0xD5) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 0x3B) - ((2 * (HIBYTE(v7) ^ 0x3B)) & 0x12) - 119;
  return (*(v5 + 8 * ((31 * (a3 + 4 < *(v6 - 128))) ^ v4)))();
}

uint64_t sub_1A23BDC28()
{
  *v3 = 0x9908B0DF00000000;
  v6 = 843532609 * (((v4 | (v5 - 152)) - ((v5 - 152) & v4)) ^ 0x23D7FB034271FC18);
  v7 = v0 - 1951349092 + v6;
  v10 = **(v1 + 8 * (v0 & 0x76E18A2));
  *(v5 - 124) = ((v0 - 1951349092) ^ 0x2C) + v6;
  *(v5 - 120) = v7 + 27;
  v3[2] = v6;
  v3[3] = v10 + v6;
  *(v5 - 128) = v6;
  *(v5 - 152) = v0 - v6 + 55969659;
  *(v5 - 116) = v7;
  v8 = (*(v2 + 8 * (v0 ^ 0xBCB)))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 148)))(v8);
}

uint64_t sub_1A23BDE1C(uint64_t result)
{
  **result = 0;
  *(result + 12) = -1450810218;
  return result;
}

uint64_t sub_1A23BDE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v16 + ((~((v20 - 128) | v17) + ((v20 - 128) & v17)) ^ 0x8668534E) * v18 + 991;
  *(v20 - 112) = &a13;
  *(v20 - 120) = &a15;
  v21 = (*(v15 + 8 * (v16 ^ 0xF84)))(v20 - 128);
  return (*(v15 + 8 * (((*(v20 - 104) > (v16 ^ 0x730 ^ (v19 + 258))) * ((v16 + 231702528) & 0xF2307FF7 ^ 0x915)) ^ v16)))(v21);
}

uint64_t sub_1A23BDEDC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = ((((v4 ^ 4) + 54) ^ v4 ^ ((v4 ^ 0x40) + 114) ^ ((v4 ^ 0x69) + 89)) ^ ((v4 ^ 0xE3) + ((a3 - 98) | 0x12) - 95)) & 0x7F;
  v7 = v5 == 78 || (v5 ^ 0x4Eu) > 4;
  return (*(v3 + 8 * ((45 * v7) ^ a3)))();
}

uint64_t sub_1A23BDF60@<X0>(int a1@<W8>)
{
  v6 = v1 + 1523 - v5 + 1389190069;
  if (v4 > v6)
  {
    v6 = v4;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v6)) = *(*(v2 + 8) + 4 * v6 - 4);
  return (*(v3 + 8 * ((v1 + 1523) ^ (16 * (v6 < 2)))))();
}

uint64_t sub_1A23BDFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v9 - 1798196037 < (a7 + 617200702);
  if ((a7 + 617200702) < 0x9EA30C8C != v9 - 1798196037 < ((((v7 - 2500) | 0x121) + 1906) ^ 0x9EA3041B))
  {
    v10 = (a7 + 617200702) < 0x9EA30C8C;
  }

  return (*(v8 + 8 * ((23 * !v10) ^ v7)))();
}

uint64_t sub_1A23BE038()
{
  v7 = (v0 ^ 0x85B8AD3F) & (2 * (v0 & 0x9538A9BF)) ^ v0 & 0x9538A9BF;
  v8 = ((2 * (((v5 ^ 0x3E1) - 1881621468) ^ v0)) ^ 0x35C029DC) & (((v5 ^ 0x3E1) - 1881621468) ^ v0) ^ (2 * (((v5 ^ 0x3E1) - 1881621468) ^ v0)) & 0x1AE014EE;
  v9 = v8 ^ 0xA201422;
  v10 = (v8 ^ 0x10C000CC) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x6B8053B8) & v9 ^ (4 * v9) & 0x1AE014EC;
  v12 = (v11 ^ 0xA8010A0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x10600446)) ^ 0xAE014EE0) & (v11 ^ 0x10600446) ^ (16 * (v11 ^ 0x10600446)) & 0x1AE014E0;
  v14 = v12 ^ 0x1AE014EE ^ (v13 ^ 0xA000400) & (v12 << 8);
  v15 = (v14 << 16) & 0x1AE00000 ^ v14 ^ ((v14 << 16) ^ 0x14EE0000) & (((v13 ^ 0x10E0100E) << 8) & 0x1AE00000 ^ 0x1AE00000 ^ (((v13 ^ 0x10E0100E) << 8) ^ 0x60140000) & (v13 ^ 0x10E0100E));
  v16 = 210068311 * ((((v6 - 192) | 0xBC377B0B) + (~(v6 - 192) | 0x43C884F4)) ^ 0x2EE144AE);
  *(v6 - 184) = &v18;
  *(v6 - 192) = v16 ^ v0 ^ (2 * v15) ^ 0xEE37C656;
  *(v6 - 176) = v16 + (v5 ^ 0x3E1) + 539;
  (*(v4 + 8 * (v5 ^ 0x9F2)))(v6 - 192);
  *(v6 - 192) = v3 - ((((2 * (v6 - 192)) | 0xDD520F74) - (v6 - 192) - 1856571322) ^ 0x7A0291C2) * v2 + (v5 ^ 0x3E1) + 415;
  result = (*(v4 + 8 * ((v5 ^ 0x3E1) + 2568)))(v6 - 192);
  *(v1 + 32) = v18;
  return result;
}

uint64_t sub_1A23BE1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int *a20)
{
  *v21 = 1;
  v25 = *a20;
  *(v23 + 8) = a16;
  *(v24 - 136) = a17 ^ (v20 + 699220068) ^ 0x6C;
  *(v24 - 132) = 1 - a17;
  *(v24 - 128) = v20 + 699220068 - a17;
  *(v24 - 144) = a17 + v20 - 2030745425;
  *(v24 - 140) = ((v20 + 699220068) ^ 2) - a17;
  *(v23 + 40) = a17 + v25;
  v26 = (*(v22 + 8 * ((v20 - 474) ^ 0xA23)))(v24 - 152);
  return (*(v22 + 8 * *(v24 - 112)))(v26);
}

uint64_t sub_1A23BE284@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, uint64_t a6, unsigned int a7, char *a8, int a9)
{
  v14 = (((&a5 | 0xB03F7577) - (&a5 & 0xB03F7577)) ^ 0x4BFCC26C) * a1;
  a8 = &a3;
  a7 = -1883189130 - v14;
  a5 = v13 - v14 - 146;
  a9 = (v11 + 419211829) ^ v14;
  a6 = v9;
  v15 = (*(v10 + 8 * (v13 + 2189)))(&a5);
  return (*(v10 + 8 * ((1739 * (*(v9 + 24) == (v13 ^ v12 ^ 0x3C6 ^ ((v13 + 686) | 0x94)))) ^ v13)))(v15);
}

uint64_t sub_1A23BE344(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = 843532609 * ((2 * (a1 & 0x5E5B4D35) - a1 + 564441802) ^ 0x3118C594);
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v7 = (*(a1 + 44) ^ v2) + 1776823420;
  v8 = (*(a1 + 44) ^ v2) + 1776825859;
  v9 = 1037613739 * (((&v11 | 0xF1057DCE) - &v11 + (&v11 & 0xEFA8230)) ^ 0x200750B1);
  v13 = *(a1 + 24);
  v14 = v3;
  v11 = v2 + v6 + v9 - 1000014551;
  v17 = v5;
  v12 = v4;
  v15 = v9 ^ v8;
  result = (*(*(&off_1F14948E0 + v7) + v7 + 2782))(&v11);
  *(a1 + 40) = v16;
  return result;
}

uint64_t sub_1A23BE488@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v7 = a1;
  *v8 = v2;
  v5 = (a2 - 1157925999) & 0x45048994;
  v12 = v10;
  v11 = (a2 + 1182) ^ (((-67841035 - (&v11 | 0xFBF4D3F5) + (&v11 | 0x40B2C0A)) ^ 0x2EC00670) * v3);
  (*(v4 + 8 * (a2 + 1749)))(&v11);
  v12 = v9;
  v11 = (v5 + 1912) ^ (((((2 * &v11) | 0xD69C19F0) - &v11 - 1800277240) ^ 0x41852682) * v3);
  (*(v4 + 8 * (v5 + 2479)))(&v11);
  return 0;
}

void sub_1A23BE5CC()
{
  v4 = (v3 ^ 0xA17F412B) + 742006357 * (*v0 ^ v2);
  v5 = (v4 ^ 0xC77D2646) & (2 * (v4 & 0xC47D8708)) ^ v4 & 0xC47D8708;
  v6 = ((2 * (v4 ^ 0x4F8F2C56)) ^ 0x17E556BC) & (v4 ^ 0x4F8F2C56) ^ (2 * (v4 ^ 0x4F8F2C56)) & 0x8BF2AB5E;
  v7 = v6 ^ 0x8812A942;
  v8 = (v6 ^ 0x3E00000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x2FCAAD78) & v7 ^ (4 * v7) & 0x8BF2AB5C;
  v10 = (v9 ^ 0xBC2A940) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x80300206)) ^ 0xBF2AB5E0) & (v9 ^ 0x80300206) ^ (16 * (v9 ^ 0x80300206)) & 0x8BF2AB50;
  v12 = v10 ^ 0x8BF2AB5E ^ (v11 ^ 0x8B22A100) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0xBF20000 ^ v12 ^ ((v12 << 16) ^ 0x2B5E0000) & (((v11 ^ 0xD00A1E) << 8) & 0xBF20000 ^ 0x9500000 ^ (((v11 ^ 0xD00A1E) << 8) ^ 0x72AB0000) & (v11 ^ 0xD00A1E))));
  *v14 = (HIBYTE(v13) ^ 0xC5) - ((2 * (HIBYTE(v13) ^ 0xC5)) & 0x12) - 119;
  v14[1] = (BYTE2(v13) ^ 0x3C) - ((2 * (BYTE2(v13) ^ 0x3C)) & 0x12) - 119;
  v14[2] = (BYTE1(v13) ^ 0xD1) - ((2 * (BYTE1(v13) ^ 0xD1)) & 0x12) - 119;
  v14[3] = v13 ^ 0x3D;
  v0[4] = *(v1 + 24);
}

void sub_1A23BE7B4(uint64_t a1)
{
  v2 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - dword_1EB094630) ^ 0x43))] ^ 0x53u) - 12) ^ (11 * ((qword_1EB094620 - dword_1EB094630) ^ 0x43))) + 18);
  v3 = 11 * (*v2 ^ qword_1EB094620 ^ 0x43);
  v4 = *(&off_1F14948E0 + (*(off_1F1494B50 + (*(off_1F1494C88 + v3 - 4) ^ 0xEDu) - 12) ^ v3) - 41);
  v5 = (*(v4 - 4) + *v2) ^ &v9;
  v6 = 1922045707 * v5 - 0x21D37FB25A3D4D43;
  v7 = 1922045707 * (v5 ^ 0x21D37FB25A3D4D43);
  *v2 = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094630) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094630) ^ 0x43))] ^ 0xE6]) - 6) - 8;
  (*&v8[8 * (*(off_1F1494D30 + (*(off_1F1494EC0 + (11 * ((v7 + v4) ^ 0x43))) ^ 0x7Fu)) ^ (11 * ((v7 + v4) ^ 0x43))) + 22488])(*(&off_1F14948E0 + (*(off_1F1494A90 + (*(off_1F1494EA0 + (11 * (v4 ^ 0x43 ^ v7)) - 8) ^ 0x29u)) ^ (11 * (v4 ^ 0x43 ^ v7))) - 116) - 4, sub_1A23FC000);
  __asm { BRAA            X9, X17 }
}

void sub_1A23BE9A8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 1380333833 * (a1 ^ 0xBE52AB8A);
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 1389192254 >= 0)
  {
    v3 = *(v2 + 4) - 1389192254;
  }

  else
  {
    v3 = 1389192254 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1389192254 >= 0)
  {
    v4 = *(*a1 + 4) - 1389192254;
  }

  else
  {
    v4 = 1389192254 - *(*a1 + 4);
  }

  v7 = v1 - 843532609 * ((425978744 - (&v7 | 0x1963EB78) + (&v7 | 0xE69C1487)) ^ 0xF62063D9) + 371;
  v8 = v2;
  v5 = *(&off_1F14948E0 + (v1 ^ 0xFB)) - 8;
  (*&v5[8 * (v1 ^ 0xB7E)])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1A23BEF38()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_1A23BF050(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23BF1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, _DWORD *a12, uint64_t a13, uint64_t a14, unsigned int a15, int *a16, unsigned int a17, _DWORD *a18)
{
  a18 = a12;
  a17 = (((((&a15 | 0xA5F6F296) ^ 0xFFFFFFFE) - (~&a15 | 0x5A090D69)) ^ 0x3B33BA21) * v18) ^ 0x37D;
  a16 = &a11;
  (*(v19 + 22736))(&a15);
  a16 = a12;
  a15 = 2757 - 1556366573 * ((&a15 - 1763684554 - 2 * (&a15 & 0x96E04F36)) ^ 0xF2046CDC);
  v21 = (*(v19 + 23008))(&a15);
  return (*(v19 + 8 * ((87 * (a12 == 0)) ^ v20)))(v21);
}

void sub_1A23BF740(uint64_t a1)
{
  v1 = 843532609 * ((a1 & 0x55FB30BA | ~(a1 | 0x55FB30BA)) ^ 0xBAB8B81B);
  __asm { BRAA            X15, X17 }
}

void sub_1A23BF80C(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x92D63FA4);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23BF940(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 143681137 * (((a1 | 0x51EB6A39) - (a1 & 0x51EB6A39)) ^ 0x30D1DD71);
  v3 = *(a1 + 4) - v2;
  v4 = *a1 ^ v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v2 ^ *(a1 + 8) ^ 0x461FCE16;
  v8 = 210068311 * (&v10 ^ 0x92D63FA4);
  v10 = v3 - 1421512374 + v8 + 577;
  v11 = v5;
  v12 = v6;
  v13 = v8 + v7;
  v14 = v4 + v8 - 1281605757;
  result = (*(*(&off_1F14948E0 + v3 - 1421512374) + (v3 ^ 0x54BA847B) - 1))(&v10);
  *(a1 + 12) = v15;
  return result;
}

uint64_t sub_1A23BFA70@<X0>(int a1@<W3>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27)
{
  v31 = *(&a15 + a2 + 72);
  v32 = ((2 * a2) & 0xFDBBDEF8) + ((v28 - a1 - 1845212870) ^ a2) + v27;
  *(v29 + v32) = (HIBYTE(v31) ^ 0x3B) - ((2 * (HIBYTE(v31) ^ 0x3B)) & 0x12) - 119;
  *(v29 + v32 + 1) = (BYTE2(v31) ^ 0xD5) - ((2 * (BYTE2(v31) ^ 0xD5)) & 0x12) - 119;
  *(v29 + v32 + 2) = (BYTE1(v31) ^ 0x70) - ((v31 >> 7) & 0x12) - 119;
  *(v29 + v32 + 3) = v31 ^ 0xF9;
  return (*(v30 + 8 * (v28 ^ (4 * (a2 + 4 >= a27)))))();
}

uint64_t sub_1A23BFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v71 ^ 0xB0Du) + 56;
  v74 = (a71 ^ 0xFC763FBDFF5FCFFCLL) + ((2 * a71) & 0x1FEBF9FF8);
  STACK[0x3C8] = v73 + v74 + 0x389C04200A02D38;
  return (*(v72 + 8 * ((76 * (v73 + v74 == 0xFC763FBDFF5FD2C8)) ^ v71)))(a1, a60);
}

void sub_1A23BFBE8(uint64_t a1)
{
  v1 = *(a1 + 20) - 1388665877 * (((a1 | 0xACCC06E8) - a1 + (a1 & 0x5333F917)) ^ 0x21616404);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23BFCCC(uint64_t a1, int a2)
{
  v7 = a2 ^ 0xCFB;
  v8 = v3 + v4 + v6 + (a2 ^ 0xCFB);
  v9 = (v7 ^ 0x8FF80D20) + v8 + v5 + 1986610540;
  if (v8 > 0x7FC562C2 != v9 < 0x803A9D3D)
  {
    v10 = v8 > 0x7FC562C2;
  }

  else
  {
    v10 = ((v7 - 1506) ^ 0x803A99FC) + v8 > v9;
  }

  return (*(v2 + 8 * ((8 * v10) | (16 * v10) | v7)))();
}

uint64_t sub_1A23BFCE4(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v31 = 436 * (v28 ^ 0x6D0);
  v32 = (v29 + 908);
  v33 = vld1q_dup_f32(v32);
  v34.i64[0] = 0x8000000080000000;
  v34.i64[1] = 0x8000000080000000;
  v35.i64[0] = 0x100000001;
  v35.i64[1] = 0x100000001;
  a6.i64[0] = *(a27 + 4);
  a6.i32[2] = *(a27 + 12);
  v36 = vextq_s8(v33, a6, 0xCuLL);
  v37 = a6;
  v37.i32[3] = *(v29 + 4 * ((v31 - 614) ^ 0x48DLL));
  v38.i32[0] = *(v27 + 4 * (*(a27 + 4) & 1));
  v38.i32[1] = *(v27 + 4 * (*(a27 + 8) & 1));
  v38.i32[2] = *(v27 + 4 * (a6.i8[8] & 1));
  v38.i32[3] = *(v27 + 4 * (v37.i8[12] & 1));
  v39 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v37, vnegq_f32(v35)), vandq_s8(v36, v34)), 1uLL), *(a27 - 908));
  *a27 = veorq_s8(vaddq_s32(vsubq_s32(v39, vandq_s8(vaddq_s32(v39, v39), vdupq_n_s32(0x55DF0AFEu))), vdupq_n_s32(0x2AEF857Fu)), v38);
  return (*(v30 + 8 * (v31 ^ 4)))();
}

uint64_t sub_1A23BFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v59 = STACK[0x2E8];
  v60 = (LODWORD(STACK[0x3B4]) ^ 0x3EFFFFF1) - 37837888 + ((2 * LODWORD(STACK[0x3B4])) & 0x7DFFFFE2);
  v61 = 1388665877 * ((44791895 - ((v58 - 192) | 0x2AB7857) + ((v58 - 192) | 0xFD5487A8)) ^ 0x70F9E544);
  *(v58 - 176) = a54;
  *(v58 - 168) = a23;
  *(v58 - 192) = v59;
  *(v58 - 152) = v56;
  *(v58 - 140) = (v55 - 542397189) ^ v61;
  *(v58 - 184) = v60 ^ v61;
  *(v58 - 160) = v61 + v54 + 607177272;
  v62 = (*(v57 + 8 * (v55 + 2087)))(v58 - 192);
  return (*(v57 + 8 * ((1587 * (*(v58 - 144) == ((v55 - 139) | 0xC0) + 1863271273)) ^ v55)))(v62);
}

uint64_t sub_1A23BFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v15 + ((v19 - 128) ^ 0x64E423EA) * v18 + 830;
  *(v19 - 120) = &a15;
  *(v19 - 112) = a12;
  v20 = (*(v17 + 8 * (v15 + 1507)))(v19 - 128);
  return (*(v17 + 8 * ((99 * (*(v19 - 104) > v16 + ((v15 - 1334) | 0x401u) + 352)) ^ v15)))(v20);
}

uint64_t sub_1A23BFFDC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0x5A3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = 1785193651 * (((&v8 | 0x7F2ADE3) - &v8 + (&v8 & 0xF80D5218)) ^ 0x844227F5);
  v8 = 1883181929 - v6;
  v9 = v5;
  v10 = v4;
  v12 = v3;
  v13 = v2 - 68671794 - v6 + 653;
  result = (*(*(&off_1F14948E0 + v2 - 68671794) + (v2 ^ 0x417D28F) - 1))(&v8);
  *(a1 + 16) = v11;
  return result;
}

uint64_t sub_1A23C0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  v25 = &a21 + v23;
  *v25 = 0x8989898989898989;
  *(v25 + 1) = 0x8989898989898989;
  return (*(v24 + 8 * ((1158 * ((v22 | 0x200u) + 366 - 1134 == (v21 & 0xFFFFFFFFFFFFFFF0))) ^ (v22 | 0x200))))();
}

uint64_t sub_1A23C0168()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094800) ^ 0x43)) ^ byte_1A273D410[byte_1A2739420[(11 * ((qword_1EB094620 + dword_1EB094800) ^ 0x43))] ^ 0x29]) - 10);
  v1 = *(v0 - 4);
  v2 = off_1F1494C88 - 4;
  v3 = off_1F1494B50 - 12;
  v4 = *(&off_1F14948E0 + (*(off_1F1494B50 + (*(off_1F1494C88 + (11 * (v1 ^ qword_1EB094620 ^ 0x43)) - 4) ^ 0xEDu) - 12) ^ (11 * (v1 ^ qword_1EB094620 ^ 0x43))) - 41);
  v5 = (*(v4 - 4) ^ v1) - &v13;
  v6 = 1922045707 * (v5 - 0x21D37FB25A3D4D43);
  v7 = 1922045707 * (v5 ^ 0x21D37FB25A3D4D43);
  *(v0 - 4) = v6;
  *(v4 - 4) = v7;
  LOBYTE(v7) = 11 * (*(v0 - 4) ^ 0x43 ^ v7);
  v14 = *(&off_1F14948E0 + (v7 ^ v3[v2[v7] ^ 0xED]) - 60) - 4;
  v15 = 143681137 * (&v14 ^ 0x613AB748) + 1124;
  v8 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094800) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094800) ^ 0x43))] ^ 0xAB]) - 32) - 8;
  (*&v8[8 * (*(off_1F1494D30 + (*(off_1F1494EC0 + (11 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x43))) ^ 0x7Fu)) ^ (11 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x43))) + 22760])(&v14);
  v15 = 143681137 * ((((2 * &v14) | 0xF0A60E1E) - &v14 - 2018707215) ^ 0x1969B047) + 1124;
  v9 = 11 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x43);
  v14 = *(&off_1F14948E0 + (*(off_1F1494A90 + (*(off_1F1494EA0 + v9 - 8) ^ 0xAEu)) ^ v9) + 39);
  v10 = 11 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x43);
  (*&v8[8 * (*(off_1F1494AC8 + (*(off_1F1494A30 + v10 - 4) ^ 0x7Du) - 12) ^ v10) + 22968])(&v14);
  v11 = 210068311 * (((&v14 ^ 0x8638B1F4 | 0x7DFD300E) - ((&v14 ^ 0x8638B1F4) & 0x7DFD300E)) ^ 0x6913BE5E);
  HIDWORD(v14) = v11 + 1097;
  LOBYTE(v14) = v11 + 94;
  return (*&v8[8 * ((11 * ((*(v4 - 4) + *(v0 - 4)) ^ 0x43)) ^ v3[v2[(11 * ((*(v4 - 4) + *(v0 - 4)) ^ 0x43))] ^ 0xED]) + 22104])(&v14);
}

uint64_t sub_1A23C0508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a14;
  a18 = 210068311 * ((((2 * &a16) | 0x72B1218) - &a16 + 2087352052) ^ 0x1143B6A8) + 789;
  v19 = (*(v18 + 22888))(&a16);
  return (*(v18 + 8 * ((104 * (((a17 == 1863271989) ^ 9) & 1)) ^ 0x1B3u)))(v19);
}

uint64_t sub_1A23C05D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = HIDWORD(v10) + HIDWORD(v7) + (*(v12 + 4 * v6) ^ v5);
  *(v12 + 4 * a5) = v5 + v13 + (a2 & (2 * v13) ^ ((v11 ^ 0x24E) - 221)) + 1;
  *(v12 + 4 * v6) = HIDWORD(v13) | v5;
  return (*(v9 + 8 * (v11 ^ (69 * (a1 + 1 != v8)))))();
}

void sub_1A23C06BC(uint64_t a1)
{
  v1 = *(a1 + 8) - 143681137 * ((a1 + 267931120 - 2 * (a1 & 0xFF84DF0)) ^ 0x6EC2FAB8);
  v2 = *a1;
  v3 = *(&off_1F14948E0 + v1 - 741) - 8;
  (*&v3[8 * v1 + 15896])(*(&off_1F14948E0 + v1 - 846) - 4, sub_1A23FC000);
  __asm { BRAA            X10, X17 }
}

void sub_1A23C08C4(uint64_t a1)
{
  v1 = *(a1 + 8) + 1785193651 * (((a1 | 0xFC7FA247) - (a1 & 0xFC7FA247)) ^ 0x7FCF2851);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23C09E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 + v2) | 0x804u) ^ 0xFFFFFFFFFFFFF7F9) + v3;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((2918 * (v6 == 0)) ^ (v4 + v2 + 425))))();
}

uint64_t sub_1A23C0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  (*(v33 + 8 * (v32 + v30 + 2240)))(a15 + a16, 0x100004077774924);
  v34 = (*(v33 + 8 * (v30 ^ (v30 - 1264))))();
  *v31 = v34;
  v35 = 1812433253 * ((v34 >> (a14 + 38)) ^ v34) + 1;
  v31[1] = v35;
  return (*(v33 + 10120))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1A23C0C30(uint64_t a1, int a2)
{
  *(v7 + (v6 + v2)) = *(v3 + v6 + v5);
  v9 = ((a2 - 1006444846) & 0x3BFD1FF7 ^ 0x3FFLL) + v6 == (v4 & 0xFFFFFFFFFFFFFFF8);
  return (*(v8 + 8 * ((v9 | (16 * v9)) ^ a2)))((v4 & 0xFFFFFFF8) + v2);
}

uint64_t sub_1A23C0CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5.i64[0] = 0x8989898989898989;
  v5.i64[1] = 0x8989898989898989;
  v6 = a1 + v2 - 1;
  v7 = veorq_s8(*(a2 + v2 - 1 - 31), v5);
  *(v6 - 15) = veorq_s8(*(a2 + v2 - 1 - 15), v5);
  *(v6 - 31) = v7;
  return (*(v4 + 8 * ((2885 * (((v3 + 1021783561) & 0x557FDF ^ 0x9BFLL) == (v2 & 0xFFFFFFE0))) ^ (v3 + 1027385273))))();
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && a6 != 0 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23C0F3C(uint64_t a1, __n128 a2)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((a1 != 0) * v3) | v2)))(a1 - 8);
}

uint64_t sub_1A23C12A4@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(&off_1F14948E0 + (a2 ^ (a1 - 12)));
  v11 = 34 * (a2 ^ (a1 + 617) ^ 0x591u);
  v13 = ((**(a7 + 80) - (*v10 ^ 0x89)) ^ 0xE777D3B3) + (((v11 + 546439864) | 0x110121A1) ^ 0xCD6F469D) + ((2 * (**(a7 + 80) - (*v10 ^ 0x89))) & 0xCEEFA766) == v8 && v11 != 1418;
  return (*(v9 + 8 * ((47 * v13) ^ v11)))(v7);
}

uint64_t sub_1A23C1338@<X0>(uint64_t a1@<X8>)
{
  v8 = v3;
  v7 = v2 - 1388665877 * ((612607673 - (&v5 | 0x2483A6B9) + (&v5 | 0xDB7C5946)) ^ 0x56D13BAA) - 507;
  v5 = a1;
  v6 = v3;
  return (*(v1 + 8 * (v2 + 1516)))(&v5);
}

uint64_t sub_1A23C1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (210068311 * ((341411345 - (&a12 | 0x14598611) + (&a12 | 0xEBA679EE)) ^ 0x7970464A)) ^ 0x48449A90;
  v15 = (*(v14 + 22400))(&a12);
  return (*(v14 + 8 * ((404 * (a12 != v13)) ^ 0x98u)))(v15);
}

uint64_t sub_1A23C1518@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (v4 - 252 + a1);
  *v5 = 0x8989898989898989;
  v5[1] = 0x8989898989898989;
  return (*(v3 + 8 * (((((((v2 + 270853697) & 0xEFDB19BD) - 167) | 0x600) ^ 0x601) != (((v2 + 270853697) & 0xEFDB19BD ^ 0x88) & a2)) | (v2 + 270853697) & 0xEFDB19BD)))();
}

uint64_t sub_1A23C1584@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5 ^ 0xCD2;
  v9 = (v5 ^ 0xCD2) - 1079;
  v10 = v9 | 0x828;
  v11 = *(&off_1F14948E0 + (v5 ^ 0x81A)) - 8;
  v12 = v11[a1[3] ^ 0xDELL] ^ a1[3];
  v13 = *(&off_1F14948E0 + v9) - 12;
  v14 = (v13[a1[4] ^ 0xF7] << 24) + 0x10000000;
  v15 = *(&off_1F14948E0 + v8 - 1053);
  v16 = *(v15 + (a1[14] ^ 0x82));
  v17 = v10;
  v18 = *(&off_1F14948E0 + (v8 ^ 0x4C0)) - 12;
  v19 = v18[a1[5] ^ 0x6DLL] << 16;
  v20 = ((((*(v15 + a1[6]) << 8) ^ 0x79F9BD01) & (v14 ^ 0xDBFBFF51) | v14 & 0x86000000) ^ 0xA8114C72) & (v19 ^ 0xFFBEFF7F);
  v21 = v19 & 0x170000;
  LOBYTE(v19) = (a1[15] - 2 * (a1[15] & 7) + 7) ^ v11[a1[15] ^ 0xFDLL];
  v22 = (v13[a1[8] ^ 0x70] << 24) + 0x10000000;
  v23 = (v22 ^ 0xFCFFFFFF) & ((*(v15 + (v10 ^ 0x32u ^ a1[10])) << 8) ^ 0xA5418648);
  v24 = v22 & 0x5A000000;
  v25 = v18[a1[13] ^ 0xC7];
  v26 = v23 | v24;
  v27 = v11[a1[11] ^ 0xD3] ^ a1[11];
  v28 = ((v18[a1[1] ^ 0x40] << 16) ^ 0x6449A2CD) & (v12 ^ 0x64FFB37D) | v12 & 0x32;
  v29 = (v13[a1[12] ^ 0xBDLL] + 16) ^ 0x1B;
  v30 = ((v13[a1[12] ^ 0xBDLL] + 16) ^ 0x1B) << 24;
  LODWORD(v15) = (*(v15 + (a1[2] ^ 0x87)) ^ 0x54) << 8;
  v31 = ((((v25 << 16) ^ 0xD75131CC) & ~v30 | v30 & 0x28000000) ^ 0x2088CE33) & (((v19 | 0xFFFFFF00) & ((v16 << 8) ^ 0x748BD93B) | v19 & 0xC4) ^ 0x5AB7119);
  v32 = ((v25 << 16) ^ 0xD75131CC) & ~v30 & 0x8EDF0008 | v30 & 0x8000000;
  LODWORD(v18) = (v18[a1[9] ^ 0x7CLL] ^ 0x84) << 16;
  v33 = v18 & 0xD30000 | ((v27 & 0x50 | (v26 ^ 0x4BB78E7) & (v27 ^ 0xFFFFFFB0)) ^ 0xF2D62662) & ~v18;
  v34 = ((v15 | 0x4858AA29) ^ (v28 ^ 0x2CD908C4) & ~v15) + (((v13[*a1 ^ 9] + 16) ^ 0x85) << 24);
  v35 = (a1[7] - 2 * (a1[7] & 7) + 7) ^ v11[a1[7] ^ 0x2FLL];
  v36 = v31 ^ v32;
  v37 = (v35 & 0xA5 | 0xD032B708) ^ (v21 ^ 0x7DF2E29 ^ v20) & ~v35;
  v38 = *(&off_1F14948E0 + (v8 ^ 0x40C)) - 8;
  v39 = *&v38[4 * (v25 ^ 0xEA)];
  HIDWORD(v40) = v39 ^ 0x22B3976;
  LODWORD(v40) = v39 ^ 0x60000000;
  v41 = *(&off_1F14948E0 + v8 - 1161);
  v42 = -219980569 * *(v41 + 4 * (v29 ^ 0xB4u)) - 1016797637;
  v43 = v19 ^ 0x78u;
  v44 = *(&off_1F14948E0 + (v8 ^ 0x44B));
  v45 = 690312999 * *(v44 + 4 * v43) - 1186764292;
  v46 = *(&off_1F14948E0 + (v8 ^ 0x4C1)) - 4;
  LODWORD(v16) = *&v46[4 * (v16 ^ 0xE1)];
  *(v7 - 160) = v34;
  *(v7 - 156) = v33;
  v47 = v34 ^ (v40 >> 27) ^ v45 ^ v42 ^ (-36060539 * v16 + 698377751) ^ 0x1A;
  *(v7 - 176) = v47 ^ v37;
  v48 = v33 ^ 0x4B2C069D ^ v47 ^ v37;
  *(v7 - 164) = v36;
  v49 = *&v38[4 * (((v48 ^ v36 ^ 0x966200A3) >> 16) ^ 0x6B)];
  HIDWORD(v40) = v49 ^ 0x22B3976;
  LODWORD(v40) = v49 ^ 0x60000000;
  v50 = (690312999 * *(v44 + 4 * ((v48 ^ v36) ^ 0xE2u)) - 1186764292) ^ (v40 >> 27) ^ (-36060539 * *&v46[4 * (((v48 ^ v36) >> 8) ^ 0xAF)] + 698377751) ^ (-219980569 * *(v41 + 4 * (((v48 ^ v36) >> 24) ^ 0xB7)) - 1016797637);
  *(v7 - 184) = v48 ^ v36;
  *(v7 - 180) = v48;
  v51 = v48 ^ v36 ^ 0x62D0E628;
  *(v7 - 168) = v37;
  v52 = v50 ^ v37;
  v202 = v50 ^ v37 ^ v48;
  v53 = v202 ^ 0xC1D6411F ^ v51;
  v54 = (690312999 * *(v44 + 4 * (v202 ^ 0x1F ^ v51 ^ 0xABu)) - 1186764292) ^ (-219980569 * *(v41 + 4 * (HIBYTE(v53) ^ 0x20)) - 1016797637);
  v201 = v53;
  v55 = *&v38[4 * (BYTE2(v53) ^ 0xBF)];
  HIDWORD(v40) = v55 ^ 0x22B3976;
  LODWORD(v40) = v55 ^ 0x60000000;
  v56 = *&v46[4 * (BYTE1(v53) ^ 0xE9)];
  *(v7 - 172) = v47;
  v200 = v50 ^ v47;
  v57 = v54 ^ v50 ^ v47 ^ (-36060539 * v56 + 698377751) ^ (v40 >> 27);
  *(v7 - 188) = v52;
  v198 = v57 ^ v52;
  v58 = v57 ^ v52 ^ 0xF78131F4;
  v59 = v58 ^ v51;
  v60 = v58 ^ v51 ^ 0x68E79195;
  v61 = *&v38[4 * (BYTE2(v60) ^ 0xD9)];
  HIDWORD(v40) = v61 ^ 0x22B3976;
  LODWORD(v40) = v61 ^ 0x60000000;
  v197 = v59;
  v199 = v57;
  v62 = (-36060539 * *&v46[4 * (BYTE1(v60) ^ 0x49)] + 698377751) ^ (690312999 * *(v44 + 4 * (v60 ^ 0xCAu)) - 1186764292) ^ v57 ^ (v40 >> 27) ^ (-219980569 * *(v41 + 4 * (HIBYTE(v59) ^ 0xBD)) - 1016797637);
  v194 = v62 ^ v58;
  v195 = v58 ^ v202 ^ 0xC1D6411F;
  v63 = v62 ^ v58 ^ 0x5F64A794;
  v193 = v63 ^ v195;
  v64 = v63 ^ v195 ^ 0xC733F746 ^ v60;
  v65 = *&v38[4 * (((v64 ^ 0x81B0C147) >> 16) ^ 0xD9)];
  HIDWORD(v40) = v65 ^ 0x22B3976;
  LODWORD(v40) = v65 ^ 0x60000000;
  v196 = v62;
  v192 = v64;
  v66 = (-36060539 * *&v46[4 * (BYTE1(v64) ^ 0x88)] + 698377751) ^ (v40 >> 27) ^ v62 ^ (690312999 * *(v44 + 4 * ((v63 ^ v195) ^ 0x46 ^ v60 ^ 0x8Du)) - 1186764292) ^ (-219980569 * *(v41 + 4 * (HIBYTE(v64) ^ 0x54)) - 1016797637);
  v190 = v66 ^ v63;
  LODWORD(v16) = v66 ^ v63 ^ 0xD5833601;
  v67 = v16 ^ v63 ^ v195 ^ 0xC733F746 ^ v64 ^ 0x81B0C147;
  v68 = *&v38[4 * (BYTE2(v67) ^ 0x8C)];
  HIDWORD(v40) = v68 ^ 0x22B3976;
  LODWORD(v40) = v68 ^ 0x60000000;
  v191 = v66;
  v69 = (-36060539 * *&v46[4 * (BYTE1(v67) ^ 0x1E)] + 698377751) ^ (-219980569 * *(v41 + 4 * (HIBYTE(v67) ^ 0xE7)) - 1016797637) ^ v66 ^ (v40 >> 27) ^ (690312999 * *(v44 + 4 * ((v16 ^ v63 ^ v195 ^ 0x46 ^ v64 ^ 0x47) ^ 0xEDu)) - 1186764292);
  v186 = v69 ^ v16;
  v70 = v69 ^ v16 ^ 0xE8131F4;
  v188 = v67;
  v189 = v16 ^ v63 ^ v195 ^ 0xC733F746;
  HIDWORD(v185) = v70 ^ v189;
  v71 = v70 ^ v189 ^ 0xC00207F5;
  v72 = v71 ^ v67 ^ 0x32555727;
  v73 = (-36060539 * *&v46[4 * (BYTE1(v72) ^ 0x8F)] + 698377751) ^ (690312999 * *(v44 + 4 * ((v71 ^ v67) ^ 0x5Fu)) - 1186764292);
  v74 = *&v38[4 * (BYTE2(v72) ^ 0x6B)];
  HIDWORD(v40) = v74 ^ 0x22B3976;
  LODWORD(v40) = v74 ^ 0x60000000;
  v187 = v69;
  HIDWORD(v184) = v73 ^ v69 ^ (v40 >> 27) ^ (-219980569 * *(v41 + 4 * (((v71 ^ v67) >> 24) ^ 0x63)) - 1016797637);
  LODWORD(v185) = v71 ^ v67;
  LODWORD(v184) = HIDWORD(v184) ^ 0x5F64A794 ^ v70;
  v75 = v184 ^ v71;
  v76 = v184 ^ v71 ^ v71 ^ v67 ^ 0xB6E79195;
  v77 = *&v38[4 * (BYTE2(v76) ^ 0x8E)];
  HIDWORD(v40) = v77 ^ 0x22B3976;
  LODWORD(v40) = v77 ^ 0x60000000;
  v183 = __PAIR64__(v184 ^ v71, v76);
  v78 = (690312999 * *(v44 + 4 * ((v184 ^ v71 ^ v71 ^ v67 ^ 0x95) ^ 0x18u)) - 1186764292) ^ (-36060539 * *&v46[4 * (BYTE1(v76) ^ 0x19)] + 698377751) ^ (v40 >> 27) ^ (-219980569 * *(v41 + 4 * (HIBYTE(v76) ^ 0x98)) - 1016797637);
  v79 = v78 ^ v70;
  v80 = v78 ^ v70 ^ v185 ^ 0xB6E79195;
  v81 = *&v38[4 * (((v80 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v40) = v81 ^ 0x22B3976;
  LODWORD(v40) = v81 ^ 0x60000000;
  HIDWORD(v182) = v78 ^ HIDWORD(v184) ^ 0x5F64A794;
  v82 = (-219980569 * *(v41 + 4 * (HIBYTE(v80) ^ 0xD8)) - 1016797637) ^ HIDWORD(v182) ^ (690312999 * *(v44 + 4 * ((v78 ^ v70 ^ v185 ^ 0x95) ^ 0xCAu)) - 1186764292) ^ (-36060539 * *&v46[4 * (((v78 ^ v70 ^ v185 ^ 0x9195 ^ 0x9660) >> 8) ^ 0xDF)] + 698377751) ^ (v40 >> 27);
  HIDWORD(v180) = v82 ^ v75 ^ 0xBFE59660;
  LODWORD(v180) = HIDWORD(v180) ^ v80 ^ 0x52B2C6B2;
  LODWORD(v38) = *&v38[4 * (((HIDWORD(v180) ^ v80) >> 16) ^ 0x6B)];
  HIDWORD(v40) = v38 ^ 0x22B3976;
  LODWORD(v40) = v38 ^ 0x60000000;
  LODWORD(v16) = (v40 >> 27) ^ (690312999 * *(v44 + 4 * ((BYTE4(v180) ^ v78 ^ v70 ^ v185 ^ 0x95) ^ 0x78u)) - 1186764292) ^ (-219980569 * *(v41 + 4 * (((HIDWORD(v180) ^ v80) >> 24) ^ 0x87)) - 1016797637) ^ (-36060539 * *&v46[4 * (((WORD2(v180) ^ v78 ^ v70 ^ v185 ^ 0x9195) >> 8) ^ 0x8F)] + 698377751);
  v83 = v82 ^ v75 ^ 0x64000000;
  v178 = *(&off_1F14948E0 + (v8 ^ 0x429)) - 12;
  v176 = *(&off_1F14948E0 + v8 - 1046) - 12;
  v177 = *(&off_1F14948E0 + v8 - 1071) - 8;
  v179 = *(&off_1F14948E0 + v8 - 1146) - 12;
  v84 = *(v7 - 98);
  v85 = (v178[*(v7 - 97) ^ 0xC9] ^ 0x3C | ((v179[*(v7 - 99) ^ 0x76] ^ 0x6A) << 16) | (((v176[*(v7 - 100) ^ 0x17] - 21) ^ 0x52) << 24) | ((v177[v84 ^ 0xEC] ^ (v84 - ((2 * v84) & 0xE7) + 115) ^ 0xBC) << 8)) ^ 0xD2D2D211;
  LODWORD(v84) = (v178[*(v7 - 109) ^ 0x30] ^ 0x4D | ((20 - v176[*(v7 - 112) ^ 0xF4]) << 24) | ((v177[*(v7 - 110) ^ 0xDELL] ^ (*(v7 - 110) - ((2 * *(v7 - 110)) & 0xE7) + 115) ^ 0x98) << 8) | ((v179[*(v7 - 111) ^ 0x39] ^ 0x80) << 16)) ^ 0xD2D2D2D2;
  v86 = (v178[*(v7 - 105) ^ 0xDLL] ^ 0xD6 | ((v177[*(v7 - 106) ^ 0x17] ^ (*(v7 - 106) - ((2 * *(v7 - 106)) & 0xE7) + 115) ^ 0xA0) << 8) | ((v179[*(v7 - 107) ^ 0xEFLL] ^ 0xDA) << 16) | (((v176[*(v7 - 108) ^ 0x9CLL] - 21) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  v87 = (v178[*(v7 - 101) ^ 0xCCLL] ^ 0xBB | ((v177[*(v7 - 102) ^ 0x4ELL] ^ (*(v7 - 102) - ((2 * *(v7 - 102)) & 0xE7) + 115) ^ 0x16) << 8) | (((v176[*(v7 - 104) ^ 9] - 21) ^ 0xDA) << 24) | ((v179[*(v7 - 103) ^ 0x1BLL] ^ 0xD6) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v175) = (((v6 ^ 0x58B7B0B9) + 1189066561) ^ ((v6 ^ 0xE665EAEF) - 133305065) ^ ((v6 ^ 0xC668BBB0) - 671040438)) - 1201872942;
  LODWORD(v182) = v79;
  LODWORD(v175) = v79 ^ 0xD000000 ^ v16;
  v181 = __PAIR64__(v80, v82);
  LODWORD(v174) = v16 ^ v82;
  *(v7 - 120) = v17;
  *(v7 - 116) = 0;
  *(v7 - 136) = 0;
  v88 = *(v7 - 144);
  LODWORD(v16) = v179[v88[13] ^ 0x90];
  v89 = v88[9] ^ 0xD2;
  *(v7 - 132) = v17 - 402;
  *(v7 - 128) = v17 - 1009;
  v90 = v178[v88[11] ^ 9] ^ 0x3B | ((v179[v89] ^ 0x4F) << 16) | ((v177[v88[10] ^ 0xA9] ^ (v88[10] - ((2 * v88[10]) & 0xE7) + 115) ^ 0xC2) << 8) | (((v176[v88[8] ^ 2] - 21) ^ 0xE2) << 24);
  LODWORD(v89) = *(v7 - 168) ^ v86 ^ 0xEC741AF2 ^ (((v177[v88[6] ^ 8] ^ (v88[6] - ((2 * v88[6]) & 0xE7) + 115) ^ 0x19) << 8) | (((v176[v88[4] ^ 0xC5] - 21) ^ 0xFFFFFFFB) << 24) | v178[v88[7] ^ 0xFDLL] ^ 0x3C | ((v179[v88[5] ^ 0xF5] ^ 0x6D) << 16));
  LODWORD(v43) = *(v7 - 160) ^ v84 ^ 0x4D036472 ^ (v178[v88[3] ^ 0x75] ^ 0x91 | (((v176[*v88 ^ 0xB0] - 21) ^ 0x16) << 24) | ((v179[v88[1] ^ 0x93] ^ 0xA7) << 16) | ((v177[v88[2] ^ 0x1CLL] ^ (v88[2] - ((2 * v88[2]) & 0xE7) + 115) ^ 0x5D) << 8));
  v91 = *(v7 - 164) ^ v85 ^ 0x12CAD4F1 ^ (((v16 ^ (v17 + 110 + v17 + 15 + 104)) << 16) | (((v176[v88[12] ^ 0x80] - 21) ^ 0x31) << 24) | ((v177[v88[14] ^ 5] ^ (v88[14] - ((2 * v88[14]) & 0xE7) + 115) ^ 0x99) << 8) | v178[v88[15] ^ 8] ^ 0x3C);
  LODWORD(v16) = *(v7 - 156) ^ v87 ^ 0x172DE70F ^ v90;
  v92 = *(&off_1F14948E0 + v17 - 2048) - 12;
  v93 = *&v92[4 * ((*(v7 - 168) ^ v86 ^ 0x1AF2 ^ (((v177[v88[6] ^ 8] ^ (v88[6] - ((2 * v88[6]) & 0xE7) + 115) ^ 0x19) << 8) | v178[v88[7] ^ 0xFDLL] ^ 0x3C)) >> 8)];
  v94 = *(&off_1F14948E0 + (v17 ^ 0x83C)) - 4;
  v95 = *(&off_1F14948E0 + v17 - 2023) - 4;
  v96 = v93 ^ 0x1036AD16 ^ *&v95[4 * HIBYTE(v91)];
  v97 = *&v94[4 * BYTE2(v43)];
  v98 = *(&off_1F14948E0 + (v17 ^ 0x865));
  v99 = v96 + 607039073 - ((2 * v96) & 0x485D5CC2);
  v100 = *(v98 + 4 * v16) - 1442389806;
  LODWORD(v13) = *&v95[4 * BYTE3(v16)] ^ 0x1036AD16 ^ *&v92[4 * BYTE1(v43)];
  LODWORD(v46) = (*(v98 + 4 * v91) - 835350733 - ((2 * *(v98 + 4 * v91) + 1410187684) & 0x485D5CC2)) ^ *&v94[4 * BYTE2(v89)];
  LODWORD(v46) = (v46 + 224630669 - ((2 * v46) & 0x1AC72F1A)) ^ *&v95[4 * BYTE3(v43)];
  LODWORD(v43) = *&v94[4 * BYTE2(v16)] ^ 0x294D39EC ^ *&v95[4 * BYTE3(v89)] ^ (*(v98 + 4 * v43) - 1442389806);
  LODWORD(v46) = *&v92[4 * BYTE1(v16)] ^ *(v7 - 172) ^ (v46 + 492124827 - ((2 * v46) & 0x3AAA7536));
  LODWORD(v16) = *&v94[4 * BYTE2(v91)] ^ *(v7 - 180) ^ (*(v98 + 4 * v89) - 1442389806) ^ (v13 + 607039073 - ((2 * v13) & 0x485D5CC2));
  LODWORD(v13) = *&v92[4 * BYTE1(v91)] ^ *(v7 - 176) ^ (v43 + 492124827 - ((2 * v43) & 0x3AAA7536));
  LODWORD(v89) = v13 ^ 0xBF80DD5E;
  v101 = (v46 ^ 0xD7674CCB) >> 24;
  v102 = *(v7 - 184) ^ v97 ^ v100 ^ 0x6BF1C170 ^ v99;
  v103 = (v13 ^ 0xBF80DD5E) >> 24;
  v104 = *&v95[4 * HIBYTE(v102)] ^ 0x294D39EC ^ *&v94[4 * ((v46 ^ 0xD7674CCB) >> 16)];
  v105 = *&v92[4 * ((v16 ^ 0xDD4) >> 8)] ^ (*(v98 + 4 * v102) - 950264979 - ((2 * *(v98 + 4 * v102) + 336445860) & 0x3AAA7536));
  LODWORD(v13) = *(v98 + 4 * (v13 ^ 0x48u));
  LODWORD(v13) = (v13 - 1217759137 - ((2 * v13 + 336445860) & 0x1AC72F1A)) ^ *&v95[4 * ((v16 ^ 0x16B10DD4) >> 24)];
  LODWORD(v13) = (v13 + 492124827 - ((2 * v13) & 0x3AAA7536)) ^ *&v92[4 * ((v46 ^ 0x4CCB) >> 8)];
  LODWORD(v46) = *(v98 + 4 * (v46 ^ 0xDDu));
  LODWORD(v46) = (v46 - 950264979 - ((2 * v46 + 336445860) & 0x3AAA7536)) ^ *&v92[4 * BYTE1(v102)];
  v106 = *&v95[4 * v101] ^ (v105 + 224630669 - ((2 * v105) & 0x1AC72F1A));
  LODWORD(v46) = (v46 + 224630669 - ((2 * v46) & 0x1AC72F1A)) ^ *&v95[4 * v103];
  LODWORD(v43) = *&v94[4 * ((v16 ^ 0x16B10DD4) >> 16)];
  LODWORD(v13) = *&v94[4 * BYTE2(v102)] ^ v202 ^ (v13 + 607039073 - ((2 * v13) & 0x485D5CC2));
  LODWORD(v40) = __ROR4__(__ROR4__(*&v94[4 * BYTE2(v89)] ^ 0xB9AB301 ^ (v106 + 607039073 - ((2 * v106) & 0x485D5CC2)), 5) ^ 0x50D2ECF9, 27);
  v107 = v200 ^ v40 ^ 0x6EDAF696;
  LODWORD(v16) = (v104 + 492124827 - ((2 * v104) & 0x3AAA7536)) ^ v201 ^ *&v92[4 * BYTE1(v89)] ^ (*(v98 + 4 * (v16 ^ 0xC2u)) - 1442389806);
  LODWORD(v43) = *(v7 - 188) ^ v43 ^ 0x2201ECBC ^ (v46 + 607039073 - ((2 * v46) & 0x485D5CC2));
  v108 = *(v98 + 4 * (v13 ^ 0x37u));
  LODWORD(v25) = (v108 - 835350733 - ((2 * v108 + 1410187684) & 0x485D5CC2)) ^ *&v94[4 * (((v200 ^ v40) >> 16) ^ 0x45)];
  v109 = *&v92[4 * BYTE1(v107)] ^ *&v95[4 * ((v13 ^ 0xD62C0A37) >> 24)] ^ 0x1036AD16;
  LODWORD(v25) = (v25 + 492124827 - ((2 * v25) & 0x3AAA7536)) ^ *&v92[4 * BYTE1(v43)];
  LODWORD(v46) = *&v94[4 * BYTE2(v43)] ^ *&v92[4 * ((v13 ^ 0xA37) >> 8)] ^ 0x397B94FA;
  LODWORD(v13) = *&v95[4 * BYTE3(v43)] ^ *&v94[4 * (BYTE2(v13) ^ 0xB3)] ^ 0x294D39EC ^ (*(v98 + 4 * ((v200 ^ v40) ^ 0x96u)) - 1442389806);
  v110 = *&v95[4 * HIBYTE(v107)];
  v111 = (v109 + 607039073 - ((2 * v109) & 0x485D5CC2)) ^ v195 ^ *&v94[4 * ((v16 ^ 0xFC47C039) >> 16)] ^ (*(v98 + 4 * v43) - 1442389806);
  LODWORD(v43) = v197 ^ *&v95[4 * ((v16 ^ 0xFC47C039) >> 24)] ^ 0x61C6B6CD ^ (v25 + 224630669 - ((2 * v25) & 0x1AC72F1A));
  LODWORD(v46) = (v46 + 224630669 - ((2 * v46) & 0x1AC72F1A)) ^ v199 ^ v110 ^ (*(v98 + 4 * (v16 ^ 0x39u)) - 1442389806);
  LODWORD(v13) = *&v92[4 * (BYTE1(v16) ^ 0x87)] ^ v198 ^ (v13 + 492124827 - ((2 * v13) & 0x3AAA7536));
  BYTE2(v110) = BYTE2(v13) ^ 0x65;
  v112 = (v13 ^ 0x7D650C28) >> 24;
  v113 = *(v98 + 4 * (v46 ^ 0xDDu));
  v114 = *(v98 + 4 * (v13 ^ 0x28u));
  v115 = (v114 - 1217759137 - ((2 * v114 + 336445860) & 0x1AC72F1A)) ^ *&v95[4 * ((v111 ^ 0x7F82DAABu) >> 24)];
  v116 = (v115 + 492124827 - ((2 * v115) & 0x3AAA7536)) ^ *&v92[4 * (((v46 ^ 0x35DF) >> 8) ^ 0x79)];
  v117 = *&v94[4 * BYTE2(v43)];
  v118 = (v113 - 950264979 - ((2 * v113 + 336445860) & 0x3AAA7536)) ^ *&v92[4 * ((v197 ^ *&v95[4 * ((v16 ^ 0xFC47C039) >> 24)] ^ 0xB6CD ^ (v25 - 26739 - ((2 * v25) & 0x2F1A))) >> 8)];
  LODWORD(v13) = *&v92[4 * (BYTE1(v13) ^ 0x4B)] ^ 0x397B94FA ^ *&v94[4 * (((v46 ^ 0x13FC35DF) >> 16) ^ 0x9B)];
  LODWORD(v25) = *&v94[4 * ((v111 ^ 0x7F82DAABu) >> 16)] ^ (v118 + 607039073 - ((2 * v118) & 0x485D5CC2));
  LODWORD(v89) = *&v95[4 * BYTE3(v43)];
  LODWORD(v43) = *&v94[4 * BYTE2(v110)] ^ 0x294D39EC ^ *&v95[4 * ((v46 >> 24) ^ 0xBD)] ^ (*(v98 + 4 * v43) - 1442389806);
  LODWORD(v25) = *&v95[4 * v112] ^ v194 ^ (v25 + 224630669 - ((2 * v25) & 0x1AC72F1A));
  LODWORD(v16) = v117 ^ v193 ^ (v116 + 607039073 - ((2 * v116) & 0x485D5CC2));
  v119 = v25 ^ 0x66654B3E;
  LODWORD(v13) = (v13 + 224630669 - ((2 * v13) & 0x1AC72F1A)) ^ v192 ^ v89 ^ (*(v98 + 4 * (v111 ^ 0xBDu)) - 1442389806);
  LOBYTE(v89) = v13 ^ 0x1F;
  LODWORD(v46) = v196 ^ *&v92[4 * (BYTE1(v111) ^ 0xDA)] ^ 0xE82DABD ^ (v43 + 492124827 - ((2 * v43) & 0x3AAA7536));
  LODWORD(v43) = v46 >> 24;
  v120 = *&v95[4 * ((v13 ^ 0x880EE61F) >> 24)];
  v121 = (v25 ^ 0x66654B3E) >> 24;
  LODWORD(v25) = *(v98 + 4 * (v25 ^ 0x28u));
  v122 = (*(v98 + 4 * v46) - 950264979 - ((2 * *(v98 + 4 * v46) + 336445860) & 0x3AAA7536)) ^ *&v92[4 * ((v13 ^ 0xE61F) >> 8)];
  v123 = *&v94[4 * BYTE2(v119)];
  v124 = *&v92[4 * BYTE1(v46)];
  v125 = (v122 + 224630669 - ((2 * v122) & 0x1AC72F1A)) ^ *&v95[4 * v121];
  *(v7 - 124) = -950264978;
  LODWORD(v25) = (v25 - 950264978 + ((737295962 - 2 * v25) | 0xC5558AC9)) ^ v124;
  LODWORD(v13) = (v25 + 607039073 - ((2 * v25) & 0x485D5CC2)) ^ *&v94[4 * (BYTE2(v13) ^ 0x91)];
  LODWORD(v25) = v120 ^ 0xDB4BF4D3 ^ *&v92[4 * BYTE1(v119)];
  LODWORD(v46) = *&v94[4 * BYTE2(v46)] ^ 0xE4C944A5;
  LODWORD(v89) = (*(v98 + 4 * v89) - 835350733 - ((2 * *(v98 + 4 * v89) + 1410187684) & 0x485D5CC2)) ^ v123;
  LODWORD(v89) = (v89 + 224630669 - ((2 * v89) & 0x1AC72F1A)) ^ *&v95[4 * v43];
  LODWORD(v43) = (*(v98 + 4 * (v16 ^ 0x48u)) - 1442389806) ^ v188 ^ (v46 + v25 - 2 * (v46 & v25));
  v126 = *&v95[4 * ((v16 ^ 0xA480DD5E) >> 24)] ^ v189 ^ (v13 + 224630670 + ~((2 * v13) & 0x1AC72F1A));
  LODWORD(v89) = *&v92[4 * ((v16 ^ 0xDD5E) >> 8)] ^ v191 ^ (v89 + 492124827 - ((2 * v89) & 0x3AAA7536));
  v127 = v190 ^ *&v94[4 * ((v16 ^ 0xA480DD5E) >> 16)] ^ 0x84654B28 ^ (v125 + 607039073 - ((2 * v125) & 0x485D5CC2));
  v128 = *(v98 + 4 * (((*(v98 + 4 * (v16 ^ 0x48u)) - 46) ^ v188 ^ (v46 + v25 - 2 * (v46 & v25))) ^ 0x7Eu));
  v129 = *(v98 + 4 * (v89 ^ 0xDDu));
  v130 = *&v95[4 * (BYTE3(v43) ^ 0x30)] ^ 0x294D39EC ^ *&v94[4 * (BYTE2(v89) ^ 0x67)] ^ (*(v98 + 4 * ((v95[4 * ((v16 ^ 0xA480DD5E) >> 24)] ^ v189 ^ (v13 - 114 + ~((2 * v13) & 0x1A))) ^ 0x6Eu)) - 1442389806);
  LODWORD(v25) = (v129 - 1217759137 - ((2 * v129 + 336445860) & 0x1AC72F1A)) ^ *&v95[4 * HIBYTE(v127)];
  LODWORD(v13) = (v25 + 607039073 - ((2 * v25) & 0x485D5CC2)) ^ *&v94[4 * (((v126 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  LODWORD(v25) = *&v94[4 * BYTE2(v127)] ^ (v128 - 835350733 - ((2 * v128 + 1410187684) & 0x485D5CC2));
  LODWORD(v46) = *&v95[4 * ((v126 ^ 0xD0C9FB6E) >> 24)] ^ *&v94[4 * (BYTE2(v43) ^ 0xEE)] ^ 0x294D39EC ^ (*(v98 + 4 * v127) - 1442389806);
  v131 = *&v92[4 * (BYTE1(v126) ^ 0xBC)];
  LODWORD(v25) = (v25 + 224630669 - ((2 * v25) & 0x1AC72F1A)) ^ *&v95[4 * (BYTE3(v89) ^ 0x5F)];
  v132 = v130 + 492124827 - ((2 * v130) & 0x3AAA7536);
  v133 = *&v92[4 * (BYTE1(v89) ^ 0x4C)] ^ HIDWORD(v185) ^ (v46 + 492124827 - ((2 * v46) & 0x3AAA7536));
  v134 = v132 ^ v185 ^ *&v92[4 * BYTE1(v127)];
  v135 = v131 ^ v187 ^ (v25 + 492124827 - ((2 * v25) & 0x3AAA7536));
  LODWORD(v43) = v186 ^ *&v92[4 * (BYTE1(v43) ^ 0xC3)] ^ 0x9A674CDD ^ (v13 + 492124827 - ((2 * v13) & 0x3AAA7536));
  LODWORD(v13) = (*(v98 + 4 * v43) - 950264979 - ((2 * *(v98 + 4 * v43) + 336445860) & 0x3AAA7536)) ^ *&v92[4 * ((v135 ^ 0xDAAB) >> 8)];
  LODWORD(v13) = (v13 + 607039073 - ((2 * v13) & 0x485D5CC2)) ^ *&v94[4 * ((v134 ^ 0xBFC6B6DB) >> 16)];
  v136 = v13 + 224630669 - ((2 * v13) & 0x1AC72F1A);
  LODWORD(v13) = *&v95[4 * ((v134 ^ 0xBFC6B6DB) >> 24)] ^ 0x1036AD16 ^ *&v92[4 * BYTE1(v43)] ^ (*(v98 + 4 * ((v92[4 * (BYTE1(v89) ^ 0x4C)] ^ BYTE4(v185) ^ (v46 - 101 - ((2 * v46) & 0x36))) ^ 0xEu)) - 1442389806);
  LODWORD(v46) = *&v92[4 * (BYTE1(v133) ^ 0x2A)] ^ *&v95[4 * ((v135 ^ 0x2982DAABu) >> 24)] ^ 0x1036AD16;
  LODWORD(v25) = *&v95[4 * (HIBYTE(v133) ^ 0xA6)];
  v137 = *&v92[4 * ((v134 ^ 0xB6DB) >> 8)] ^ 0x1036AD16 ^ *&v95[4 * BYTE3(v43)];
  v138 = *&v94[4 * (BYTE2(v133) ^ 0xB3)];
  v139 = *(v98 + 4 * (v134 ^ 0xCDu)) - 1442389806;
  v140 = *(v98 + 4 * (v135 ^ 0xBDu)) - 1442389806;
  v141 = (v13 + 607039073 - ((2 * v13) & 0x485D5CC2)) ^ v76 ^ *&v94[4 * ((v135 ^ 0x2982DAABu) >> 16)];
  v142 = HIDWORD(v184) ^ *&v94[4 * BYTE2(v43)] ^ v139 ^ (v46 + 607039073 - ((2 * v46) & 0x485D5CC2)) ^ 0x2674CDD;
  LODWORD(v43) = HIDWORD(v183) ^ v25 ^ 0xAF54BB9B ^ v136;
  LODWORD(v89) = v184 ^ v138 ^ v140 ^ 0x2BE67D3F ^ (v137 + 607039073 - ((2 * v137) & 0x485D5CC2));
  v143 = *(v98 + 4 * (v141 ^ 0x8Au));
  v144 = *(v98 + 4 * ((BYTE4(v183) ^ v25) ^ 0x9Bu ^ v136));
  v145 = (v144 - 835350733 - ((2 * v144 + 1410187684) & 0x485D5CC2)) ^ *&v94[4 * BYTE2(v142)];
  v146 = (v145 + 492124827 - ((2 * v145) & 0x3AAA7536)) ^ *&v92[4 * BYTE1(v89)];
  LODWORD(v16) = *&v92[4 * ((v141 ^ 0x778A) >> 8)] ^ *&v95[4 * BYTE3(v89)] ^ 0x1036AD16;
  LODWORD(v13) = *&v92[4 * BYTE1(v142)] ^ (*(v98 + 4 * (v89 ^ 0x16u)) - 1442389806) ^ *&v95[4 * BYTE3(v43)];
  LODWORD(v25) = *&v95[4 * HIBYTE(v142)] ^ (v143 - 1217759137 - ((2 * v143 + 336445860) & 0x1AC72F1A));
  LODWORD(v89) = (v25 + 607039073 - ((2 * v25) & 0x485D5CC2)) ^ *&v94[4 * BYTE2(v89)];
  LODWORD(v16) = *&v94[4 * BYTE2(v43)] ^ v182 ^ (*(v98 + 4 * v142) - 1442389806) ^ (v16 + 607039073 - ((2 * v16) & 0x485D5CC2));
  LODWORD(v46) = *&v95[4 * ((v141 ^ 0x44E9778Au) >> 24)] ^ HIDWORD(v181) ^ (v146 + 224630670 + ~((2 * v146) & 0x1AC72F1A));
  LODWORD(v43) = HIDWORD(v182) ^ *&v92[4 * BYTE1(v43)] ^ 0x26E67D29 ^ (v89 + 492124827 - ((2 * v89) & 0x3AAA7536));
  LOBYTE(v25) = v95[4 * ((v141 ^ 0x44E9778Au) >> 24)] ^ BYTE4(v181) ^ (v146 - 114 + ~((2 * v146) & 0x1A)) ^ 0x58;
  LODWORD(v89) = HIDWORD(v183) ^ v182 ^ *&v94[4 * (BYTE2(v141) ^ 0x76)] ^ 0xA254BB9B ^ ((v13 ^ 0x1036AD16) + 607039073 - 2 * ((v13 ^ 0x1036AD16) & 0x242EAE69 ^ v13 & 8));
  v147 = (v46 ^ 0x4BE2758) >> 24;
  v148 = *(v98 + 4 * (v16 ^ 0x49u));
  v149 = (*(v98 + 4 * v43) + *(v7 - 124) + ((737295962 - 2 * *(v98 + 4 * v43)) | 0xC5558AC9)) ^ *&v92[4 * ((v46 ^ 0x2758) >> 8)];
  LODWORD(v46) = (v148 - 835350733 - ((2 * v148 + 1410187684) & 0x485D5CC2)) ^ *&v94[4 * (BYTE2(v46) ^ 0x21)];
  v150 = *&v95[4 * v147];
  LODWORD(v46) = (v46 + 224630669 - ((2 * v46) & 0x1AC72F1A)) ^ *&v95[4 * BYTE3(v89)];
  v151 = (v149 + 607039073 - ((2 * v149) & 0x485D5CC2)) ^ *&v94[4 * BYTE2(v89)];
  v152 = *&v95[4 * (BYTE3(v16) ^ 0xEF)];
  LODWORD(v95) = (*(v98 + 4 * v25) - 1217759137 - ((2 * *(v98 + 4 * v25) + 336445860) & 0x1AC72F1A)) ^ *&v95[4 * BYTE3(v43)];
  LODWORD(v13) = (v95 + 492124827 - ((2 * v95) & 0x3AAA7536)) ^ *&v92[4 * BYTE1(v89)];
  LODWORD(v95) = v150 ^ *&v92[4 * (BYTE1(v16) ^ 0xEB)] ^ 0x1036AD16 ^ (*(v98 + 4 * v89) - 1442389806);
  LODWORD(v95) = *&v94[4 * BYTE2(v43)] ^ v180 ^ (v95 + 607039073 - ((2 * v95) & 0x485D5CC2));
  LODWORD(v89) = *&v94[4 * (BYTE2(v16) ^ 3)];
  LODWORD(v16) = *&v92[4 * BYTE1(v43)] ^ HIDWORD(v180) ^ (v46 + 492124827 - ((2 * v46) & 0x3AAA7536));
  LODWORD(v89) = v89 ^ v82 ^ (v13 + 607039073 - ((2 * v13) & 0x485D5CC2));
  LODWORD(v13) = v82 ^ v182 ^ v152 ^ (v151 + 224630669 - ((2 * v151) & 0x1AC72F1A));
  v153 = *(v7 - 120);
  v154 = *(&off_1F14948E0 + (v153 ^ 0x8EC)) - 12;
  LODWORD(v92) = *&v154[4 * ((v82 ^ v182 ^ v152 ^ (v151 - 115 - ((2 * v151) & 0x1A))) ^ 7)];
  v155 = *(&off_1F14948E0 + (v153 ^ 0x8EA)) - 8;
  LODWORD(v43) = *&v155[4 * ((v16 ^ 0x422CFAB5) >> 16)];
  v156 = *&v154[4 * (v16 ^ 0xB5)];
  v157 = *&v154[4 * (v95 ^ 0x16)];
  v158 = *&v155[4 * ((v95 ^ 0xF6BCF016) >> 16)];
  v159 = *&v154[4 * (v89 ^ 7)];
  v160 = *&v155[4 * ((v13 ^ 0xBD9E3C06) >> 16)];
  LODWORD(v155) = *&v155[4 * (((v89 ^ 0xB0693C07) >> 16) ^ 0xF7)];
  v161 = *(&off_1F14948E0 + (v153 ^ 0x8D7));
  LODWORD(v46) = *(v161 + 4 * ((v16 ^ 0xFAB5) >> 8));
  v162 = *(v161 + 4 * ((v95 ^ 0xF016) >> 8));
  v163 = *(v161 + 4 * ((v13 ^ 0x3C06) >> 8));
  LODWORD(v94) = *(v161 + 4 * ((v89 ^ 0x3C07) >> 8));
  v164 = *(&off_1F14948E0 + (v153 & 0xD3D1F361));
  LODWORD(v13) = *(v164 + 4 * ((v13 >> 24) ^ 0xD2));
  LODWORD(v89) = *(v164 + 4 * (BYTE3(v89) ^ 0xDF));
  LODWORD(v98) = *(v164 + 4 * (BYTE3(v16) ^ 0x2D));
  LODWORD(v164) = *(v164 + 4 * ((v95 >> 24) ^ 0x99));
  LODWORD(v95) = v174 ^ (1909043885 * v89) ^ __ROR4__(v46, 28) ^ (v157 - 291191517) ^ v160;
  LODWORD(v16) = v43 ^ v175 ^ (1909043885 * v13) ^ __ROR4__(v162, 28) ^ (v159 - 291191517);
  LODWORD(v13) = v156 - 291191517;
  v165 = (v92 - 291191517) ^ v83 ^ v175 ^ v158 ^ (1909043885 * v98) ^ __ROR4__(v94, 28);
  LODWORD(v98) = v83 ^ v175 ^ v180 ^ v13 ^ __ROR4__(v163, 28) ^ (1909043885 * v164) ^ v155;
  v166 = *(&off_1F14948E0 + v153 - 2140) - 12;
  v88[10] = v166[BYTE1(v165) ^ 0x79] ^ 0x7D;
  v167 = *(&off_1F14948E0 + (v153 ^ 0x8EF)) - 8;
  v88[13] = v167[BYTE2(v98) ^ 0xF0] ^ 0x63;
  v168 = *(&off_1F14948E0 + v153 - 2008) - 12;
  v88[15] = (v168[v98 ^ 0x45] - 30) ^ 0x8F;
  v88[6] = v166[BYTE1(v16) ^ 0x1BLL] ^ 0x81;
  v169 = BYTE3(v98) ^ 0x41;
  v88[1] = v167[BYTE2(v95) ^ 0x3ELL] ^ 5;
  v170 = *(&off_1F14948E0 + v153 - 2159) - 12;
  v88[12] = v170[v169] ^ 0x1F;
  v88[8] = v170[BYTE3(v165) ^ 0xB6] ^ 0xD9;
  v88[3] = (v168[v95 ^ 0xDFLL] - 30) ^ 0x17;
  v88[14] = v166[BYTE1(v98) ^ 0x5ELL] ^ 0xC0;
  v88[11] = (v168[v165 ^ 0x54] - 30) ^ 0x67;
  v88[2] = v166[BYTE1(v95) ^ 0x13] ^ 0x8D;
  v171 = *(v7 - 116);
  v88[7] = (v168[v16 ^ 0xDELL] - 30) ^ 0x84;
  v88[5] = v167[BYTE2(v16) ^ 0x7ALL] ^ 0xC2;
  *v88 = v170[(v95 >> 24) ^ 0xB5] ^ 0x39;
  v88[9] = v167[BYTE2(v165) ^ 0x6FLL] ^ 0xB0;
  v88[4] = v170[BYTE3(v16) ^ 0x49] ^ 0x4D;
  v172 = (v171 + 523224578) < HIDWORD(v175);
  if (HIDWORD(v175) < 0x1F2FC5F2 != (v171 + 523224578) < 0x1F2FC5F2)
  {
    v172 = HIDWORD(v175) < 0x1F2FC5F2;
  }

  HIDWORD(v174) = v83 ^ v175;
  return (*(*(v7 - 152) + 8 * ((728 * v172) ^ v153)))(523224562, v153, v169, v159, v165, 607039073, v168, v171, a2, a3, a4, a5, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
}

uint64_t sub_1A23C37C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, _BYTE *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  switch(a58)
  {
    case 1919908820:
      *(a34 + 35) = *(a52 + 243);
      *(a34 + 34) = *(a52 + 242);
      *(a34 + 33) = *(a52 + 241);
      *(a34 + 32) = *(a52 + 240);
      *(a34 + 31) = *(a52 + 239);
      *(a34 + 30) = *(a52 + 238);
      *(a34 + 29) = *(a52 + 237);
      *(a34 + 28) = *(a52 + 236);
      *(a34 + 27) = *(a52 + 235);
      *(a34 + 26) = *(a52 + 234);
      *(a34 + 25) = *(a52 + 233);
      *(a34 + 24) = *(a52 + 232);
      *(a34 + 23) = *(a52 + 231);
      *(a34 + 22) = *(a52 + 230);
      *(a34 + 21) = *(a52 + 229);
      *(a34 + 20) = *a46;
      v63 = STACK[0x2B8];
      v64 = 1556366573 * ((v59 + 602489225 - 2 * ((v59 - 192) & 0x23E94249)) ^ 0x470D61A3);
      *(v59 - 188) = v64 ^ 0xD9C233F9;
      *(v59 - 176) = -875954804 - v64 + a7;
      *(v59 - 184) = v63;
      v62 = a42;
      goto LABEL_7;
    case 1919908821:
      *(a34 + 4) = veorq_s8(*(a52 + 228), a45);
      v60 = STACK[0x2B8];
      v61 = 1556366573 * ((((v59 - 192) | 0x44BC6EF4) - ((v59 - 192) & 0x44BC6EF4)) ^ 0x20584D1E);
      *(v59 - 176) = -875954804 - v61 + a7;
      *(v59 - 188) = v61 ^ 0xD9C233F9;
      *(v59 - 184) = v60;
      v62 = a7 + 2106;
LABEL_7:
      (*(v58 + 8 * v62))(v59 - 192);
      JUMPOUT(0x1A23D6E4CLL);
    case 1919908823:
      *(a34 + 36) = veorq_s8(*(a52 + 228), a45);
      return (*(v58 + 8 * (a7 - 638)))();
    default:
      v65 = STACK[0x428];
      STACK[0x408] = STACK[0x428];
      return (*(v58 + 8 * (((((5 * a41) ^ (v65 == 0)) & 1) * (((5 * a41 - 411) | 0x48) - 607)) ^ (5 * a41))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45.i64[0], a45.i64[1], a46, a47);
  }
}

void sub_1A23C389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v31 - 136) = (a12 + 1605) ^ (143681137 * ((((v31 - 144) | 0x231D45A7) - (v31 - 144) + ((v31 - 144) & 0xDCE2BA58)) ^ 0x4227F2EF));
  *(v31 - 112) = &a30;
  *(v31 - 104) = a13;
  *(v31 - 144) = &a22;
  *(v31 - 128) = &a22;
  *(v31 - 120) = a14;
  (*(v30 + 8 * (a12 ^ 0xA78)))(v31 - 144);
  JUMPOUT(0x1A23EB154);
}

uint64_t sub_1A23C39E4()
{
  LODWORD(STACK[0x34C]) = 2044285006;
  v2 = STACK[0x238];
  STACK[0x320] = 335;
  *(v2 + 335) = (&STACK[0x320] ^ 0xBA) * (&STACK[0x320] + 17);
  return (*(v1 + 8 * (((STACK[0x320] == 0) * (((((v0 - 713) | 0x4A4) - 1127) | 0x528) ^ 0xACD)) ^ ((v0 - 713) | 0x4A4))))();
}

uint64_t sub_1A23C39FC@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = (((v11 ^ 0x481D2ECD) - 1209872077) ^ ((v11 ^ 0xC6E93B7C) + 957793412) ^ ((v11 ^ 0xB52165C1) + 1256102463)) + (((*(v13 - 148) ^ 0xF5990126) + 174522074) ^ ((*(v13 - 148) ^ 0x4835C582) - 1211483522) ^ ((*(v13 - 148) ^ 0x8679B4D4) + 2038844204)) - 2142507324;
  v15 = (v14 ^ 0xE61EF9DB) & (2 * (v14 & 0xF75EF21C)) ^ v14 & 0xF75EF21C;
  v16 = ((2 * (v14 ^ 0xCEA239FB)) ^ 0x73F997CE) & (v14 ^ 0xCEA239FB) ^ (2 * (v14 ^ 0xCEA239FB)) & 0x39FCCBE6;
  v17 = v16 ^ 0x8044821;
  v18 = (v16 ^ 0x31F880C0) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xE7F32F9C) & v17 ^ (4 * v17) & 0x39FCCBE4;
  v20 = (v19 ^ 0x21F00B80) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x180CC063)) ^ 0x9FCCBE70) & (v19 ^ 0x180CC063) ^ (16 * (v19 ^ 0x180CC063)) & 0x39FCCBE0;
  v22 = v20 ^ 0x39FCCBE7 ^ (v21 ^ 0x19CC8A00) & (v20 << 8);
  v23 = (((v10 ^ 0xAAE9574) - 179213684) ^ ((v10 ^ 0x49032666) - 1224943206) ^ ((v10 ^ 0x7878C362) - 2021180258)) + (((*(v13 - 144) ^ 0xE9CC243C) + 372497348) ^ ((*(v13 - 144) ^ 0x9747D44) - 158629188) ^ ((*(v13 - 144) ^ 0xDB6D2908) + 613603064)) - 696556955;
  *(v13 - 148) = v14 ^ (2 * ((v22 << 16) & 0x39FC0000 ^ v22 ^ ((v22 << 16) ^ 0x4BE70000) & (((v21 ^ 0x20304187) << 8) & 0x39FC0000 ^ 0x1340000 ^ (((v21 ^ 0x20304187) << 8) ^ 0x7CCB0000) & (v21 ^ 0x20304187)))) ^ 0xACBA15A2;
  *(v13 - 144) = v23 ^ ((v23 ^ 0x7FBB7773) - 560723702) ^ ((v23 ^ 0xC783E6A0) + 1722587355) ^ ((v23 ^ 0x1917FBA9) - 1204255276) ^ ((v23 ^ 0xFFFFEBFF) + 1590728070) ^ 0x6505F1F5;
  v24 = (((v12 ^ 0x44487DB6) - 1145601462) ^ ((v12 ^ 0xEFBF070A) + 272693494) ^ ((v12 ^ 0x90220ACC) + 1876817204)) + (((*(v13 - 140) ^ 0x3BBB0A86) - 1002113670) ^ ((*(v13 - 140) ^ 0xB52B7BA4) + 1255441500) ^ ((*(v13 - 140) ^ 0xB5450152) + 1253768878)) - 912299059;
  v25 = (v24 ^ 0x8D2A6482) & (2 * (v24 & 0xAE0B7513)) ^ v24 & 0xAE0B7513;
  v26 = ((2 * (v24 ^ 0xD9280E84)) ^ 0xEE46F72E) & (v24 ^ 0xD9280E84) ^ (2 * (v24 ^ 0xD9280E84)) & 0x77237B96;
  v27 = v26 ^ 0x11210891;
  v28 = (v26 ^ 0x60027004) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0xDC8DEE5C) & v27 ^ (4 * v27) & 0x77237B94;
  v30 = (v29 ^ 0x54016A10) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0x23221183)) ^ 0x7237B970) & (v29 ^ 0x23221183) ^ (16 * (v29 ^ 0x23221183)) & 0x77237B90;
  v32 = v30 ^ 0x77237B97 ^ (v31 ^ 0x72233900) & (v30 << 8);
  v33 = (v32 << 16) & 0x77230000 ^ v32 ^ ((v32 << 16) ^ 0x7B970000) & (((v31 ^ 0x5004287) << 8) & 0x77230000 ^ 0x54000000 ^ (((v31 ^ 0x5004287) << 8) ^ 0x237B0000) & (v31 ^ 0x5004287));
  v34 = (((a2 ^ 0xEB8BEF0D) + 343150835) ^ ((a2 ^ 0xBAF4E66D) + 1158355347) ^ ((a2 ^ 0x6AAA7910) - 1789557008)) + (((*(v13 - 136) ^ 0x3817BB35) - 941079349) ^ ((*(v13 - 136) ^ 0x96F95BF0) + 1762042896) ^ ((*(v13 - 136) ^ 0x953B90B5) + 1791258443)) - 1384484090;
  v35 = (v34 ^ 0xC83F4DD8) & (2 * (v34 & 0xCA306DDA)) ^ v34 & 0xCA306DDA;
  v36 = ((2 * (v34 ^ 0x5C5F1D6C)) ^ 0x2CDEE16C) & (v34 ^ 0x5C5F1D6C) ^ (2 * (v34 ^ 0x5C5F1D6C)) & 0x966F70B6;
  v37 = v36 ^ 0x92211092;
  v38 = (v36 ^ 0x426020) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x59BDC2D8) & v37 ^ (4 * v37) & 0x966F70B4;
  v40 = (v39 ^ 0x102D4080) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x86423026)) ^ 0x66F70B60) & (v39 ^ 0x86423026) ^ (16 * (v39 ^ 0x86423026)) & 0x966F70B0;
  v42 = v40 ^ 0x966F70B6 ^ (v41 ^ 0x6670000) & (v40 << 8);
  *(v13 - 140) = v24 ^ (2 * v33) ^ 0x9D9EF24D;
  *(v13 - 136) = v34 ^ (2 * ((v42 << 16) & 0x166F0000 ^ v42 ^ ((v42 << 16) ^ 0x70B60000) & (((v41 ^ 0x90087096) << 8) & 0x166F0000 ^ 0x100F0000 ^ (((v41 ^ 0x90087096) << 8) ^ 0x6F700000) & (v41 ^ 0x90087096)))) ^ 0xFD77FCC6;
  return a10(972816384, v13 - 220, 243, 29, 25709849, a9, 4004855615, a1, a3, a4);
}

uint64_t sub_1A23C3CD4(_DWORD *a1)
{
  v1 = (a1[3] + 896639297 * (((a1 | 0xFDC9DEB3) - a1 + (a1 & 0x236214C)) ^ 0xE96248CB) + 1485083206) & 0xA77B6F7C;
  v2 = (v1 ^ 0xAD329396) + *(*a1 + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_1F14948E0 + (v1 - 1993)) + ((337 * (v2 > ((v1 + 382877353) & 0xE92DBF93 ^ 0x691))) ^ v1) - 1))();
}

void sub_1A23C3E08(uint64_t a1)
{
  v1 = 1564307779 * ((-345993363 - (a1 | 0xEB608F6D) + (a1 | 0x149F7092)) ^ 0x8392BC81);
  v2 = *(a1 + 16) + v1;
  __asm { BRAA            X14, X17 }
}

void sub_1A23C3FC8(uint64_t a1)
{
  v1 = 1388665877 * ((~a1 & 0xB95F3E3B | a1 & 0x46A0C1C4) ^ 0x34F25CD7);
  if (*(a1 + 16))
  {
    v2 = (*(a1 + 32) ^ v1) == 1046928835;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23C4244(uint64_t a1, char a2, int a3, int8x16_t *a4)
{
  v8.i64[0] = 0x1212121212121212;
  v8.i64[1] = 0x1212121212121212;
  v9.i64[0] = 0x8A8A8A8A8A8A8A8ALL;
  v9.i64[1] = 0x8A8A8A8A8A8A8A8ALL;
  v10 = (v7 - 252 + v5);
  v11 = vaddq_s8(vaddq_s8(a4[1], v9), vmvnq_s8(vandq_s8(vaddq_s8(a4[1], a4[1]), v8)));
  *v10 = vaddq_s8(vaddq_s8(*a4, v9), vmvnq_s8(vandq_s8(vaddq_s8(*a4, *a4), v8)));
  v10[1] = v11;
  return (*(v6 + 8 * ((1629 * (((v4 + 1615306693) & 0x2864EEF3 ^ 0x613) == (a2 & 0x60))) ^ (a3 + v4 + 406))))();
}

uint64_t sub_1A23C4384@<X0>(int a1@<W8>)
{
  v3 = (STACK[0x238] + 31);
  v1[12] = -((-256 << (((a1 + 65) ^ 0xC) & 0xEF)) & 0x12) - 119;
  v1[13] = -119;
  v1[14] = -119;
  v1[15] = -120;
  *(v3 - 15) ^= *v1 ^ 0x89;
  *(v3 - 14) ^= v1[1] ^ 0x89;
  *(v3 - 13) ^= v1[2] ^ 0x89;
  *(v3 - 12) ^= v1[3] ^ 0x89;
  *(v3 - 11) ^= v1[4] ^ 0x89;
  *(v3 - 10) ^= v1[5] ^ 0x89;
  *(v3 - 9) ^= v1[6] ^ 0x89;
  *(v3 - 8) ^= v1[7] ^ 0x89;
  *(v3 - 7) ^= v1[8] ^ 0x89;
  *(v3 - 6) ^= v1[9] ^ 0x89;
  *(v3 - 5) ^= v1[10] ^ 0x89;
  *(v3 - 4) ^= v1[11] ^ 0x89;
  *(v3 - 3) ^= v1[12] ^ 0x89;
  *(v3 - 2) ^= v1[13] ^ 0x89;
  *(v3 - 1) ^= v1[14] ^ 0x89;
  *v3 ^= v1[15] ^ 0x89;
  return (*(v2 + 8 * ((a1 + 998) ^ 0xD)))(18, 4294967207, 137);
}

uint64_t sub_1A23C45D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = 843532609 * ((2 * ((v15 - 128) & 0x7405F0D0) - (v15 - 128) - 1946546392) ^ 0x9B467876);
  *(v15 - 112) = (((32 * a3) ^ 0x8AF6AFF3) + ((a3 << 6) & 0x15ED5FC0) + (v13 ^ 0x1F7) + ((v13 - 14) ^ 0x7DFD7599)) ^ v16;
  *(v15 - 128) = v16 + v13 + 1034;
  *(v15 - 120) = &a13;
  v17 = (*(v14 + 8 * (v13 ^ 0xF4E)))(v15 - 128);
  return (*(v14 + 8 * ((3834 * ((*(a10 + 4) - 1389192255) < 0x7FFFFFFF)) ^ v13)))(v17);
}

uint64_t sub_1A23C46C8(_DWORD *a1)
{
  v1 = (a1[3] - 50899313 * ((a1 - 1691385696 - 2 * (a1 & 0x9B2F80A0)) ^ 0x31E4AADA) - 984262528) & 0x3AAAA59F;
  v2 = (v1 ^ 0xAD329B40) + *(*a1 + 4);
  if (v2 >= 0)
  {
    v3 = (v1 ^ 0xAD329B40) + *(*a1 + 4);
  }

  else
  {
    v3 = -v2;
  }

  return (*(*(&off_1F14948E0 + (v1 ^ 9)) + (((v3 > 0) * (((v1 + 483) ^ 7) - 585)) | v1) - 1))();
}

uint64_t sub_1A23C478C()
{
  v4 = (&STACK[0x248] + 4 * v2 + 16);
  v5 = vdupq_n_s32(0x3198BE60u);
  v4[-1] = v5;
  *v4 = v5;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF8) == 8) * (((v1 - 1620) | 2) - 424)) ^ (v1 - 365))))();
}

uint64_t sub_1A23C4814@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 - 1;
  *(v7 + v8) = *(v4 + (v8 & 0xF)) ^ *(v1 + v8) ^ *(v2 + (v8 & 0xF)) ^ ((v8 & 0xF) * ((v5 + 18) | 0x75)) ^ *(v3 + (v8 & 0xF));
  return (*(v6 + 8 * ((38 * (v8 == 0)) ^ (v5 + 430))))();
}

uint64_t sub_1A23C48B8()
{
  v7 = v0 + 1;
  if (v2)
  {
    v8 = v7 == v5;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v4 + 8 * (((((v1 + v6) ^ (v6 + 95)) + ((v1 + v6) & v3) - 996) * v9) ^ v1)))();
}

void sub_1A23C48F8(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[1] = (210068311 * (((v3 | 0xD32C5577) - v3 + (v3 & 0x2CD3AA88)) ^ 0x41FA6AD3)) ^ (v1 + 1212454731);
  v2 = *(&off_1F14948E0 + (v1 ^ 0x3CE)) - 8;
  (*&v2[8 * (v1 ^ 0x9B5)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23C4A34@<X0>(int a1@<W8>, int8x16_t a2@<Q4>, int8x16_t a3@<Q6>)
{
  v6 = (v4 + v3);
  v7 = vaddq_s8(vsubq_s8(v6[1], vandq_s8(vaddq_s8(v6[1], v6[1]), a2)), a3);
  *&STACK[0x254] = vaddq_s8(vsubq_s8(*v6, vandq_s8(vaddq_s8(*v6, *v6), a2)), a3);
  *&STACK[0x264] = v7;
  return (*(v5 + 8 * ((60 * (((a1 ^ 0x3C) + 62) & 1)) ^ a1 ^ 0x3C)))();
}

void sub_1A23C4AB4(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1389192254;
  if (v2 < 0)
  {
    v2 = 1389192254 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 16) - 1388665877 * ((((2 * (a1 ^ 0x1B43083C)) | 0xF42D0E8E) - (a1 ^ 0x1B43083C) + 99186873) ^ 0x6CF8ED97);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1A23C4C28@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 ^ 0x30CA4676) & (2 * (v3 & (v4 + 1))) ^ v3 & (v4 + 1);
  v6 = ((2 * (v3 ^ 0x51DAC076)) ^ 0xC6A34EE0) & (v3 ^ 0x51DAC076) ^ (2 * (v3 ^ 0x51DAC076)) & 0xE351A770;
  v7 = (v2 + 558930080) ^ v6;
  v8 = (v6 ^ 0xE3010520) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x8D469DC0) & v7 ^ (4 * v7) & 0xE351A770;
  v10 = (v9 ^ 0x81408550) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x62112230)) ^ 0x351A7700) & (v9 ^ 0x62112230) ^ (16 * (v9 ^ 0x62112230)) & 0xE351A770;
  v12 = v10 ^ 0xE351A770 ^ (v11 ^ 0x21102700) & (v10 << 8);
  v13 = v3 ^ (2 * ((v12 << 16) & 0x63510000 ^ v12 ^ ((v12 << 16) ^ 0x27700000) & (((v11 ^ 0xC2418070) << 8) & 0x63510000 ^ 0x22500000 ^ (((v11 ^ 0xC2418070) << 8) ^ 0x51A70000) & (v11 ^ 0xC2418070)))) ^ 0xEF892B21;
  v14 = 843532609 * ((&v16 & 0xFDAB5FE4 | ~(&v16 | 0xFDAB5FE4)) ^ 0x12E8D745);
  v17 = v1;
  v16 = v13 - v14;
  v18 = (v2 - 1389) ^ v14;
  return (*(a1 + 8 * (v2 ^ 0x31D)))(&v16);
}

uint64_t sub_1A23C4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38)
{
  v43 = (v38 - 41954059) & 0x216EBB5F;
  v44 = (*(v41 + 8 * (v38 ^ 0xD0Eu)))(a38 + 4, 0);
  v45 = a38[4] - 1109723556 - ((2 * a38[4]) & 0x7BB5ECB8);
  a38[1] = a38[6] - 1109723556 - ((a38[6] << ((v38 - 11) & 0x5F ^ (v39 - 1))) & 0x7BB5ECB8);
  a38[2] = v45;
  v46 = v38 + 792;
  v47 = (*(v41 + 8 * v46))(v44);
  a38[3] = v47 - 1109723556 - ((2 * v47) & 0x7BB5ECB8);
  v48 = (*(v41 + 8 * v46))();
  *a38 = v48 - 1109723556 - ((2 * v48) & 0x7BB5ECB8);
  v40[1] = (*a38 ^ 0xBDDAF65C) + ((1664525 * (*v40 ^ (*v40 >> 30))) ^ v40[1]);
  *(v42 - 108) = a37 + v43 + 1139026506;
  *(v42 - 104) = (v43 - 1705486328) ^ a37;
  *(v42 - 112) = -a37;
  *(v42 - 120) = v43 - a37 - 1705486405;
  *(v42 - 144) = v43 - a37 - 1705486310;
  *(v42 - 136) = a37 ^ 2;
  *(v42 - 128) = a36;
  v49 = (*(v41 + 8 * (v43 - 560893254)))(v42 - 144);
  return (*(v41 + 8 * *(v42 - 116)))(v49);
}

uint64_t sub_1A23C4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * ((&a14 + 1775988516 - 2 * (&a14 & 0x69DB6F24)) ^ 0x8E1D86C);
  a14 = v22 ^ 0x6163ACC5;
  a15 = v22 + v21 + 1421512373;
  a16 = v22 ^ 0x925EB86E;
  a18 = a12;
  a19 = &a10;
  v23 = (*(v20 + 8 * (v21 + 2698)))(&a14);
  return (*(v20 + 8 * ((2380 * (a17 == ((8 * (v21 ^ 0xB6)) ^ (v19 + 432)))) ^ v21)))(v23);
}

uint64_t sub_1A23C5098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 - 623) | 0x601) ^ 0x739)) ^ v3)))();
}

void sub_1A23C5114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  LODWORD(STACK[0x25C]) = 1;
  STACK[0x228] = a25;
  LODWORD(STACK[0x2E4]) = a47;
  STACK[0x3A8] = a29;
  LODWORD(STACK[0x308]) = 1657924353;
  JUMPOUT(0x1A23E2A78);
}

uint64_t sub_1A23C518C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a1 ^ 0x52;
  v15 = a1 + 758;
  *(v13 - 128) = a1 + 143681137 * a4 - 402;
  *(v13 - 120) = v11;
  *(v13 - 112) = a11;
  *(v13 - 136) = a6;
  *(v13 - 104) = v11;
  v16 = (*(v12 + 8 * (a1 + 1724)))(v13 - 136);
  return (*(v12 + 8 * ((56 * (((a8 >> (v14 + 34)) & a5) != 0)) ^ v15)))(v16);
}

uint64_t sub_1A23C5694@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 56))
  {
    v3 = *(a1 + 40) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((((((a2 + 127) | 0x81) ^ v4) & 1) * (((((a2 - 1153) | 0x81) - 1285) | 0x162) - 466)) | (a2 - 1153) | 0x81)))();
}

uint64_t sub_1A23C56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = 1388665877 * (((&a14 | 0x969B237F) + (~&a14 | 0x6964DC80)) ^ 0x1B364192);
  a15 = a12;
  a14 = (199880445 * a10 + 103127814) ^ v20;
  a17 = v20 + 2769;
  v21 = (*(v18 + 22872))(&a14);
  return (*(v18 + 8 * ((1060 * (a16 == v19)) ^ v17)))(v21);
}

uint64_t sub_1A23C5790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v18;
  *(v21 - 136) = &a17;
  *(v21 - 128) = (v17 + 1351) ^ (210068311 * ((2031331267 - ((v21 - 136) | 0x7913A7C3) + ((v21 - 136) | 0x86EC583C)) ^ 0x143A6798));
  v22 = (*(v19 + 8 * (v17 + 1605)))(v21 - 136);
  return (*(v19 + 8 * ((((v17 + 1535798030) & 0xA475927A ^ 0xD89) * (v20 == 1)) ^ v17)))(v22);
}

uint64_t sub_1A23C5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, unsigned int a32)
{
  v33 = STACK[0x2C8];
  STACK[0x350] = STACK[0x2C8];
  STACK[0x250] = 0;
  LODWORD(STACK[0x26C]) = 2044285006;
  STACK[0x420] = 0;
  LODWORD(STACK[0x3E4]) = 2044285006;
  STACK[0x328] = 0;
  return (*(v32 + 8 * ((((((a32 + 221268463) & 0x72CFB2ED) + 11) ^ (a32 + 719869405) & 0x5517A6FF) * (v33 == 0)) ^ a32)))();
}

uint64_t sub_1A23C5BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, uint64_t a13, int a14)
{
  v21 = v18 + 16;
  v22 = ((v19 + 1939 - 2702) ^ v21) + v17;
  v23 = v22 & 0xF;
  v25.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v25.i64[1] = a10;
  v26 = vrev64q_s8(veorq_s8(veorq_s8(*(a1 + v22), *(v14 + v23 - 15)), veorq_s8(*(v23 + v15 - 10), *(v23 + v16 - 13))));
  v27 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v26, v26, 8uLL), a12), vmulq_s8(v25, a11)));
  *(a3 + v22) = vextq_s8(v27, v27, 8uLL);
  return (*(v20 + 8 * (((a4 == v21) * a14) ^ v19)))();
}

uint64_t sub_1A23C5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = STACK[0x328];
  v7 = STACK[0x370];
  STACK[0x3C0] = *(v5 + 8 * (a5 - 672));
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(v5 + 8 * ((v9 * (((((a5 - 672) ^ 0x327) + 528) | 0x220) ^ 0x766)) ^ (a5 - 672) ^ 0x327)))(520, 1, 65845938, 544);
}

uint64_t sub_1A23C5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _DWORD *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, int *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  v60 = a56 - 495;
  *a41 = 0;
  v61 = ((v56 ^ (v56 >> 11)) << 7) & 0x9D2C5680 ^ v56 ^ (v56 >> 11);
  v62 = (v57 + (v58 - 1));
  v63 = 757077909 * ((*(*a45 + (*a49 & 0xFFFFFFFFB2273A8CLL)) ^ v62) & 0x7FFFFFFF);
  v64 = 757077909 * (v63 ^ HIWORD(v63));
  v65 = *(*(&off_1F14948E0 + (v60 ^ 0xBF)) + (v64 >> 24) - 8) ^ v61 ^ (((v61 << 15) & 0xEFC60000 ^ v61) >> 18) ^ *(*(&off_1F14948E0 + (v60 ^ 0xA9)) + ((v60 + 1233) ^ 0x5AAu) + (v64 >> 24) - 8) ^ *(*(&off_1F14948E0 + v60 - 120) + (v64 >> 24) - 11) ^ v64;
  *v62 = (-113 * BYTE3(v64)) ^ v65;
  return (*(v59 + 8 * ((452 * (v58 != (v65 != (-113 * BYTE3(v64))))) ^ (a56 - 495))))();
}

uint64_t sub_1A23C5D88@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = a2 + 1;
  *(v5 + 4 * v8 + 908) = *(v7 + 4 * (*(v5 + 4 * v8 + 912) & 1)) ^ *(v5 + 4 * v8) ^ ((*(v5 + 4 * v8 + 912) & 0x7FFFFFFE | v4 & 0x80000000) >> (v3 + 16));
  return (*(v6 + 8 * (((v8 == 395) * a1) ^ (v2 + 1091))))();
}

uint64_t sub_1A23C5D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (a1 + v3 - 16);
  v8 = (a2 + v3 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v5 - v4) ^ 0x90A)) ^ (v2 + v5 + 1183))))();
}

uint64_t sub_1A23C5E90(uint64_t a1, int a2)
{
  if (a2 + 758291394 >= 0)
  {
    a2 = (v3 ^ 0xA59ACAD4) - a2;
  }

  return (*(v2 + 8 * ((1695 * (a2 + 542 * (v3 ^ 0x2AC) - 1389194423 >= 0)) ^ v3 ^ 0x1FD)))();
}

uint64_t sub_1A23C5F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (((v35 ^ 0x330E6262) - 856580706) ^ ((v35 ^ 0xB8A2905E) + 1197305762) ^ ((v35 ^ 0xE4A3B409) + 459033591)) + (((LODWORD(STACK[0x45C]) ^ 0x5C676E56) - 1550282326) ^ ((LODWORD(STACK[0x45C]) ^ 0xA42198A5) + ((a7 - 166) ^ 0x5BDE657D)) ^ ((LODWORD(STACK[0x45C]) ^ 0x9749B0C6) + 1756778298)) - 568423318;
  *(a34 + 52) = ((v36 % 0x2710) ^ 0xEF66BE59) + 1073600511 + ((2 * (v36 % 0x2710)) & 0x7CB2);
  v37 = STACK[0x464];
  STACK[0x218] -= 1616;
  LODWORD(STACK[0x284]) = v37;
  return (*(v34 + 8 * ((7 * (v37 != a8)) ^ (a7 - 171))))();
}

uint64_t sub_1A23C611C(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t a4, int8x8_t a5)
{
  v10 = v6 + 8;
  *(a1 + (a3 ^ v10) + v5) = vadd_s8(vsub_s8(*(v7 + (a3 ^ v10) + v5), vand_s8(vadd_s8(*(v7 + (a3 ^ v10) + v5), *(v7 + (a3 ^ v10) + v5)), a4)), a5);
  return (*(v9 + 8 * (((2 * (a2 == v10)) | (32 * (a2 == v10))) ^ v8)))();
}

uint64_t sub_1A23C6160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * ((2 * (&a14 & 0x61498490) - &a14 - 1632208018) ^ 0xFF8CCC26);
  a16 = v22 ^ 0xE44CE168;
  a14 = v22 ^ 0x6163ACC5;
  a15 = v22 + v21 + 1421511805;
  a18 = a13;
  a19 = &a11;
  v23 = (*(v20 + 8 * (v21 + 2130)))(&a14);
  return (*(v20 + 8 * ((1108 * (a17 == v19 + ((v21 + 906920707) & 0xC9F17FFF) - 1479)) ^ v21)))(v23);
}

uint64_t sub_1A23C6234@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0x2A8AD737 | ~(&v7 | 0x2A8AD737)) ^ 0x2EB69FD3) * a1;
  v8 = v3;
  v10 = 0;
  v7 = v1 - v5 + 172;
  v9 = -1883189130 - v5;
  v11 = v5 ^ 0x57AA81AA;
  result = (*(v4 + 8 * (v1 ^ 0xA3B)))(&v7);
  *(v2 + 12) = *(v3 + 24);
  return result;
}

uint64_t sub_1A23C6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, uint64_t a16, int a17, int a18, int a19, int a20, uint64_t a21, char *a22, int *a23, int a24, int *a25, uint64_t *a26)
{
  a15 = 164714449;
  v29 = 1556366573 * ((((2 * &a19) | 0x1C253B84) - &a19 - 236101058) ^ 0x6AF6BE28);
  a19 = -836196600 - v29 + a18 + 881;
  a24 = v27 - v29 - 313;
  a21 = a16;
  a22 = &a14;
  a25 = &a18;
  a26 = &a16;
  a23 = &a15;
  v30 = (*(v28 + 8 * (v27 ^ 0x9A9)))(&a19);
  return (*(v28 + 8 * ((1365 * (a20 == ((v27 + 640) ^ 0x2EA) + 1863270068)) ^ v27)))(v30, v26);
}

uint64_t sub_1A23C6478()
{
  v6 = 16 * (v5 ^ 0x91);
  v15 = (v5 + 753) ^ (((((2 * &v12) | 0x61A1C25C) - &v12 + 1328488146) ^ 0xD1EA5666) * v0);
  v16 = v9;
  v14 = &v10;
  (*(v4 + 8 * (v5 + 2702)))(&v12);
  v14 = v9;
  v12 = v5 - 1556366573 * (&v12 ^ 0x64E423EA) + 2617;
  (*(v4 + 8 * (v5 ^ 0xBB0u)))(&v12);
  if (v13 == (v6 ^ v1))
  {
    v7 = v10;
  }

  else
  {
    v7 = v13;
  }

  v14 = v9;
  v12 = (v5 + 2176) ^ ((((&v12 | 0xEA0B239B) - &v12 + (&v12 & 0x15F4DC60)) ^ 0xC0C009E1) * v2);
  (*(v4 + 8 * (v5 + 2743)))(&v12);
  v12 = (v6 + 1852) ^ (((&v12 & 0x52BDB4CD | ~(&v12 | 0x52BDB4CD)) ^ 0x87896148) * v2);
  v14 = v11;
  (*(v4 + 8 * (v6 ^ 0xA93u)))(&v12);
  return v7 ^ v3;
}

uint64_t sub_1A23C662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12)
{
  v17 = 896639297 * ((&a9 - 1986764394 - 2 * (&a9 & 0x89946196)) ^ 0x9D3FF7EE);
  a11 = ((*(a1 + 32) ^ v15) + *(v12 + 16) - 222531226) ^ v17;
  a12 = v12;
  a9 = v17 ^ 0x7EEBE586;
  a10 = (v16 + 1825) ^ v17;
  v18 = (*(v14 + 8 * (v16 ^ 0x931)))(&a9);
  return (*(v14 + 8 * (((*(v12 + 24) == v13) * (((v16 - 7) | 0x50A) ^ 0x119)) ^ v16)))(v18);
}

uint64_t sub_1A23C66F8@<X0>(int a1@<W8>)
{
  v13.val[1].i64[0] = (v5 + 13) & 0xF;
  v13.val[1].i64[1] = (v5 + 12) & 0xF;
  v13.val[2].i64[0] = (v5 + 11) & 0xF;
  v13.val[2].i64[1] = (v5 + 10) & 0xF;
  v13.val[3].i64[0] = (v5 + 9) & 0xF;
  v13.val[3].i64[1] = v6 & 0xF ^ 0xELL;
  v14.val[0].i64[0] = (v5 + 7) & 0xF;
  v14.val[0].i64[1] = (v5 + 6) & 0xF;
  v14.val[1].i64[0] = (v5 + 5) & 0xF;
  v14.val[1].i64[1] = (v5 + 4) & 0xF;
  v14.val[2].i64[0] = (v5 + 3) & 0xF;
  v14.val[2].i64[1] = (v5 + 2) & 0xF;
  v14.val[3].i64[0] = (v5 + 1) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF;
  v8 = *(v7 - 216);
  v9 = vqtbl4q_s8(v14, xmmword_1A273D990).u64[0];
  v10.i64[0] = 0x7575757575757575;
  v10.i64[1] = 0x7575757575757575;
  v11 = ((449 * (a1 ^ 0x82Au)) ^ 0xFFFFFFFFFFFFF73ALL) + v5;
  v13.val[0].i64[0] = v11 & 0xF;
  v13.val[0].i64[1] = (v5 + 14) & 0xF;
  v14.val[3].i64[0] = vqtbl4q_s8(v13, xmmword_1A273D990).u64[0];
  v14.val[3].i64[1] = v9;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[3], v10));
  *(*(v7 - 208) - 15 + v11) = veorq_s8(veorq_s8(veorq_s8(*(v4 + v13.val[0].i64[0] - 15), *(v1 - 15 + v11)), veorq_s8(*(v2 + v13.val[0].i64[0] - 15), *(v3 + v13.val[0].i64[0] - 15))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v8 + 8 * ((146 * ((v5 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_1A23C6860()
{
  v11.val[1].i64[0] = (v3 + 13) & 0xF;
  v11.val[1].i64[1] = (v3 + 12) & 0xF;
  v11.val[2].i64[0] = (v3 + 11) & 0xF;
  v11.val[2].i64[1] = (v3 + 10) & 0xF;
  v11.val[3].i64[0] = (v3 + 9) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF ^ 8;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF;
  v7 = *(v5 - 152);
  v8 = vqtbl4q_s8(v12, xmmword_1A273D990).u64[0];
  v9.i64[0] = 0x7373737373737373;
  v9.i64[1] = 0x7373737373737373;
  v11.val[0].i64[0] = (((v4 - 2049795064) & 0x3A2D6BFF) - 2671) & (v3 - 1);
  v11.val[0].i64[1] = (v3 + 14) & 0xF;
  v12.val[1].i64[0] = vqtbl4q_s8(v11, xmmword_1A273D990).u64[0];
  v12.val[1].i64[1] = v8;
  v12.val[0] = vrev64q_s8(vmulq_s8(v12.val[1], v9));
  *(v3 + v6 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v0 + v11.val[0].i64[0] - 15), *(v3 + v6 - 16)), veorq_s8(*(v1 + v11.val[0].i64[0] - 15), *(v11.val[0].i64[0] + v2 - 14))), vextq_s8(v12.val[0], v12.val[0], 8uLL));
  return (*(v7 + 8 * ((1217 * ((v3 & 0x10) == 16)) ^ v4)))();
}

uint64_t sub_1A23C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, unsigned int a14)
{
  v17 = 1785193651 * ((590601495 - ((v16 - 184) | 0x2333DD17) + ((v16 - 184) | 0xDCCC22E8)) ^ 0x5F7CA8FE);
  *(v16 - 168) = a12 - v17;
  *(v16 - 184) = v14 - v17 + 1277;
  *(v16 - 176) = a6;
  v18 = (*(v15 + 8 * (v14 ^ 0xB3F)))(v16 - 184);
  v19 = STACK[0x298] & (((v14 ^ 0x1A) + 29) ^ 0x20);
  *(&STACK[0x254] + v19) = 9;
  v20 = v19 > 1253 * (v14 ^ 0x1Au) - 2451;
  return (*(v15 + 8 * ((v20 << 7) | (v20 << 11) | v14)))(v18, a14);
}

uint64_t sub_1A23C6BB0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((1909 * (v5 == 0)) ^ (v2 - 210))))();
}

uint64_t sub_1A23C6BE0(uint64_t a1, uint64_t a2)
{
  v8 = (v7 + 4 * (a2 + v4));
  *v8 = v5 ^ __ROR4__(*(v8 - 8) ^ *(v8 - 3) ^ *(v8 - 14) ^ *(v8 - 16), 31);
  return (*(v3 + 8 * ((3742 * (a2 + 1 == ((v2 - 661) ^ (v6 - 1055)))) ^ v2)))();
}

uint64_t sub_1A23C6C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v5 - 1;
  *(a4 + v10) = *(v4 + v10);
  return (*(v9 + 8 * ((26 * (v10 == (v6 ^ v7 ^ 0xAFBLL))) ^ (v8 + v6 + 909))))();
}

uint64_t sub_1A23C6CC0@<X0>(uint64_t a1@<X8>)
{
  v8 = v2;
  v5 = a1;
  v6 = v2;
  v7 = v3 - 1388665877 * ((((2 * &v5) | 0x2C90612A) - &v5 + 1773653867) ^ 0x1BE55279) - 96;
  return (*(v1 + 8 * (v3 + 1927)))(&v5);
}

uint64_t sub_1A23C6D58()
{
  v5 = *(v8 + 24);
  v6 = 1785193651 * ((((v4 - 144) | 0xB3F0961A) - (v4 - 144) + ((v4 - 144) & 0x4C0F69E0)) ^ 0x30401C0C);
  *(v4 - 136) = v9;
  *(v4 - 144) = v0 - v6 + 1125;
  *(v4 - 140) = v6 + 259466218;
  (*(v3 + 8 * (v0 + 1249)))(v4 - 144);
  *(v4 - 136) = (v0 + 148) ^ (143681137 * ((v4 + 1613616865 - 2 * ((v4 - 144) & 0x602DD771)) ^ 0x1176039));
  *(v4 - 112) = v9;
  *(v4 - 104) = v2;
  *(v4 - 144) = v10;
  *(v4 - 128) = v10;
  *(v4 - 120) = v1;
  (*(v3 + 8 * (v0 ^ 0xC8B)))(v4 - 144);
  *(v4 - 144) = (v0 + 5) ^ (50899313 * ((-2113457614 - ((v4 - 144) | 0x82073232) + ((v4 - 144) | 0x7DF8CDCD)) ^ 0x5733E7B7));
  *(v4 - 136) = v5;
  *(v4 - 128) = v10;
  return (*(v3 + 8 * (v0 ^ 0xD66)))(v4 - 144);
}

uint64_t sub_1A23C6EDC(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_1A23C6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *v42 = v42[623] + 1 + (((((v40 - 624) ^ (v41 - 623)) - 1) & (623 - v40)) >> 63);
  *(v44 - 144) = -1169436283 - v43;
  *(v44 - 112) = -v43;
  *(v44 - 108) = v43 + 1699922583;
  *(v44 - 120) = -1169436164 - v43;
  *(v44 - 104) = a34;
  *(v44 - 136) = (v39 + 1) ^ v43;
  *(v44 - 128) = a33;
  v45 = (*(a39 + 22584))(v44 - 144);
  return (*(a39 + 8 * *(v44 - 116)))(v45);
}

uint64_t sub_1A23C7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v27 = v21 + 1937;
  v28 = 1388665877 * ((&a18 - 584309982 - 2 * (&a18 & 0xDD2C2322)) ^ 0x508141CE);
  a19 = a15;
  LODWORD(a18) = (v21 + 199880445 * v25 + 103126982) ^ v28;
  HIDWORD(a20) = v21 + 1937 + v28;
  v29 = (v21 + 146) ^ 0x8F9;
  (*(v26 + 8 * v29))(&a18);
  v30 = 1037613739 * (((&a18 | 0xE5BACA29) + (~&a18 | 0x1A4535D6)) ^ 0x34B8E757);
  LODWORD(a19) = v21 - 452 - v30;
  a21 = ((v24 ^ 0xBEFDD7FD) + 2142240632 + ((v24 << (v21 - 63)) & 0x7DFBAFFA)) ^ v30;
  a18 = a15;
  a20 = v23;
  (*(v26 + 8 * ((v21 + 146) ^ 0x8E5)))(&a18);
  v31 = 1037613739 * ((2 * (&a18 & 0x206A8530) - &a18 + 1603631818) ^ 0x8E9757B5);
  LODWORD(a19) = v21 - 452 - v31;
  a20 = a10;
  a18 = a15;
  a21 = v31 ^ ((v22 ^ 0xFFBDD7FD) + 1055915896 + ((2 * v22) & 0xFF7BAFFA));
  (*(v26 + 8 * ((v21 + 146) ^ 0x8E5)))(&a18);
  if (a11)
  {
    v32 = 303008259;
  }

  else
  {
    v32 = 103127814;
  }

  v33 = 1388665877 * ((&a18 & 0x207AD83 | ~(&a18 | 0x207AD83)) ^ 0x70553090);
  a19 = a15;
  HIDWORD(a20) = v27 + v33;
  LODWORD(a18) = v33 ^ v32;
  (*(v26 + 8 * v29))(&a18);
  if (a12)
  {
    v34 = 303008259;
  }

  else
  {
    v34 = 103127814;
  }

  v35 = 1388665877 * (&a18 ^ 0x8DAD62EC);
  LODWORD(a18) = v35 ^ v34;
  HIDWORD(a20) = v27 + v35;
  a19 = a15;
  v36 = (*(v26 + 8 * v29))(&a18);
  return (*(v26 + 8 * ((2450 * (a20 == 1863271989)) ^ (v21 + 146))))(v36);
}

uint64_t sub_1A23C72FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  *(v25 - 136) = (v23 + 1605) ^ (143681137 * ((v25 - 144) ^ 0x613AB748));
  *(v25 - 144) = &a22;
  *(v25 - 112) = &a20;
  *(v25 - 104) = a13;
  *(v25 - 128) = &a22;
  *(v25 - 120) = a14;
  v26 = (*(v24 + 8 * (v23 + 2600)))(v25 - 144);
  return (*(v24 + 8 * ((491 * (((((((v23 ^ 0x1CE) + 1120633419) & 0xBD347DF9) + 2184) ^ ((v22 - 408352497) < 0x7FFFFFFF)) & 1) == 0)) ^ ((v23 ^ 0x1CE) + 1920))))(v26);
}

uint64_t sub_1A23C7350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  v20 = v16 + 433;
  v21 = 1504884919 * ((&a12 & 0x29E5A61A | ~(&a12 | 0x29E5A61A)) ^ 0x2DD9EEFE);
  a13 = v17;
  a12 = v16 + 433 - v21 - 723;
  a14 = -1894258758 - v21;
  a15 = &a10;
  a16 = ((v19 ^ 0x77AAE1FF) - 536895573 + (v19 << (v16 + 23 + 14 * ((v16 - 79) ^ 0x77) - 8))) ^ v21;
  v22 = (*(v18 + 8 * ((v16 + 433) ^ 0xFBC)))(&a12);
  return (*(v18 + 8 * ((3340 * (*(v17 + 24) == 1863271989)) ^ v20)))(v22);
}

uint64_t sub_1A23C7754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = v20 - 4;
  v23 = (2 * ((v19 + 41 * ((v15 + 731400068) & 0xD467BBCB ^ 0x8CC) - 614) & v22)) & (v22 ^ 0x6D8C8DBD) ^ (v19 + 41 * ((v15 + 731400068) & 0xD467BBCB ^ 0x8CC) - 614) & v22 ^ ((2 * ((v19 + 41 * ((v15 + 731400068) & 0xD467BBCB ^ 0x8CC) - 614) & v22)) & 0x8A000020 | 8);
  v24 = (2 * (v22 ^ 0x6D8C8DBD)) & 0x8A2584AC ^ 0x8A2484A5 ^ ((2 * (v22 ^ 0x6D8C8DBD)) ^ 0x144B095A) & (v22 ^ 0x6D8C8DBD);
  v25 = (4 * v23) & 0x8A2584A8 ^ v23 ^ ((4 * v23) ^ 0x20) & v24;
  v26 = (4 * v24) & 0x8A2584AC ^ 0x82218409 ^ ((4 * v24) ^ 0x289612B4) & v24;
  v27 = (16 * v25) & 0x8A2584A0 ^ v25 ^ ((16 * v25) ^ 0x280) & v26;
  v28 = (16 * v26) & 0x8A2584A0 ^ 0x825842D ^ ((16 * v26) ^ 0xA2584AD0) & v26;
  v29 = v27 ^ 0x8A250405 ^ (v27 << 8) & 0x8A258400 ^ ((v27 << 8) ^ 0xA800) & v28;
  v30 = (v20 - 4) ^ (2 * ((v29 << 16) & 0xA250000 ^ v29 ^ ((v29 << 16) ^ 0x4AD0000) & ((v28 << 8) & 0x8A250000 ^ 0xA210000 ^ ((v28 << 8) ^ 0x25840000) & v28))) ^ 0xED71C168;
  v31 = ((2 * ((v21 - 144) & 0x229F9890) - (v21 - 144) + 1566599019) ^ 0xDED0ED7D) * v18;
  *(v21 - 140) = v30 - v31;
  *(v21 - 128) = v31 + v15 - 631;
  *(v21 - 136) = a15;
  v32 = (*(v16 + 8 * (v15 ^ 0xE45)))(v21 - 144);
  return (*(v16 + 8 * ((249 * (*(v21 - 144) != v17)) ^ v15)))(v32);
}

uint64_t sub_1A23C797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v5 <= v6)
  {
    v5 = v6;
  }

  return (*(v7 + 8 * ((((a5 - 116865770) & 0x6F73EF6 ^ ((a5 ^ 0x417) - 15)) * (v5 < 0x7FFFFFFF)) ^ a5)))(a1);
}

uint64_t sub_1A23C7A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 136) = (v18 - 180) ^ (50899313 * ((((v19 - 136) | 0x1E5AE59) - (v19 - 136) + ((v19 - 136) & 0xFE1A51A0)) ^ 0x2B2E8423));
  *(v19 - 128) = &a17;
  *(v19 - 120) = a16;
  (*(v17 + 8 * (v18 ^ 0xC2F)))(v19 - 136);
  v20 = 1564307779 * ((-231273193 - ((v19 - 136) | 0xF2370D17) + ((v19 - 136) | 0xDC8F2E8)) ^ 0x9AC53EFB);
  *(v19 - 128) = a15;
  *(v19 - 120) = v18 - v20 - 1530;
  *(v19 - 136) = v20 ^ 0x4D7498FB;
  (*(v17 + 8 * (v18 ^ 0xC2C)))(v19 - 136);
  *(v19 - 136) = v18 + 1556366573 * ((((v19 - 136) | 0x318F137A) - ((v19 - 136) & 0x318F137A)) ^ 0x556B3090) + 353;
  *(v19 - 128) = a15;
  *(v19 - 120) = a16;
  v21 = (*(v17 + 8 * (v18 + 1030)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 112) > (v18 ^ 0x2F9770B1u)) * (v18 ^ 0x737)) | v18)))(v21);
}

uint64_t sub_1A23C7C40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = v6 - v7 + ((a6 - 774159618) & 0x2E24B6FB) - 763;
  if (a2 > v9)
  {
    v9 = a2;
  }

  return (*(v8 + 8 * ((((v9 + 1) < 0x24) * (a6 ^ 0x921)) ^ a6)))();
}

uint64_t sub_1A23C7C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 188) = v66 - 1388665877 * ((v68 - 192 - 2 * ((v68 - 192) & 0xD9292496) - 651615082) ^ 0x5484467A) + 1505;
  *(v68 - 168) = &STACK[0x414];
  *(v68 - 184) = &a66;
  LOBYTE(STACK[0x1840]) = 88 - 21 * ((v68 + 64 - 2 * ((v68 + 64) & 0x96) - 106) ^ 0x7A);
  v69 = (*(v67 + 8 * (v66 ^ 0xF10)))(v68 - 192);
  return (*(v67 + 8 * ((3224 * (*(v68 - 192) == (((v66 ^ 0x2BE) - 1064) ^ 0x6F0F44F9))) ^ v66)))(v69);
}

uint64_t sub_1A23C7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a13;
  a16 = ((((2 * &a14) | 0xAE32BDB4) - &a14 + 686203174) ^ 0x45CF617E) * v18 + 789;
  v19 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * (((a15 == 1863271989) * (((v16 ^ 0x9363A59D) + 1822186878) ^ 0x2E2)) ^ v16)))(v19);
}

uint64_t sub_1A23C7EDC()
{
  v7 = *(v2 + 8 * (v4 - 1776));
  v8 = v3 + 2128462712;
  v9 = *v0;
  *(*v0 + v8) = (((v5 + 4) >> 24) ^ 0xC7) - (v6 & (2 * (((v5 + 4) >> 24) ^ 0xC7))) - 119;
  *(v9 + v8 + 1) = (v1 ^ ((v5 + 4) >> 16)) - (v6 & (2 * (v1 ^ ((v5 + 4) >> 16)))) - 119;
  *(v9 + (v3 + 2128462714)) = (((v5 + 4) >> 8) ^ 4) - (v6 & ((v5 + 4) >> 7)) - 119;
  *(v9 + v8 + 3) = (v5 + 4) ^ 0xC3;
  return v7();
}

uint64_t sub_1A23C7EF0()
{
  v6 = (v3 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v1 & 0x30) == 16) * ((v2 + 1494) ^ 0xB0F)) ^ v2)))();
}

uint64_t sub_1A23C81D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1389192254;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v3 = *(a2 + 8) + (*(a2 + 4) - 2044285006);
  v4 = 1556366573 * ((-1376069397 - (v9 | 0xADFAD8EB) + (v9 | 0x52052714)) ^ 0x36E104FE);
  v9[0] = *(a1 + 96) + 528;
  v9[1] = v3;
  v10 = v4 + 2242;
  v12 = v4 + 866185253;
  (*(a3 + 23072))(v9);
  v7 = v11;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - 2044285006);
  return (v7 - 817252657);
}

uint64_t sub_1A23C82A8@<X0>(int a1@<W2>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == ((a1 - 807) ^ 0x120uLL) + v2 > 0xFFFFFFFF0E09ED73)
  {
    v5 = a2 + v2 + 1 < v3;
  }

  return (*(v4 + 8 * ((30 * v5) ^ a1)))((a1 - 108));
}

uint64_t sub_1A23C8310@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((v4 + 2069518201) & 0xF0E62547 ^ 0xFFFFFFFFFFFFFABCLL) + v3;
  *(a1 + v6) = *(v2 + v6) ^ 0x89;
  return (*(v5 + 8 * ((1003 * (v6 == 0)) ^ (a2 + v4 + 3106))))();
}

uint64_t sub_1A23C8368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20)
{
  v23 = (a18 ^ (a6 + (v22 ^ 0x3D4) - 1249)) + a19;
  v24 = a15 < 0x46D78C0;
  if (v24 == v23 > (((v22 ^ 0x3D4) - 418) ^ 0xFB928400))
  {
    v24 = v23 + 74283200 < a15;
  }

  return (*(v21 + 8 * ((7 * !v24) ^ v22 ^ 0x3D4)))(a1, a2, v23, a20 + (v20 ^ a6), a5, a6, a7, a8, a9, a10, a11);
}

void sub_1A23C850C()
{
  v1 = STACK[0x250];
  v2 = STACK[0x26C];
  LODWORD(STACK[0x25C]) = 1;
  STACK[0x228] = v1;
  LODWORD(STACK[0x2E4]) = v2;
  STACK[0x3A8] = v0;
  LODWORD(STACK[0x308]) = -1112685170;
  JUMPOUT(0x1A23E2A70);
}

uint64_t sub_1A23C854C(uint64_t a1)
{
  v1 = 1785193651 * ((-2 - ((a1 | 0x4131DC8B) + (~a1 | 0xBECE2374))) ^ 0x3D7EA962);
  v2 = *(a1 + 16) - v1;
  v3 = (*(a1 + 4) + v1) ^ 0x1ED9C122;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1389192254;
  v5 = v4 - 1389192254 < 0;
  v7 = 1389192254 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F14948E0 + (v2 ^ 0x277)) + ((((v3 >> 5) >= v7) * (v2 - 278)) ^ v2) - 1))();
}

uint64_t sub_1A23C8614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = a5 & (v11 + v14 - 1);
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a3 - 8 + v11) = veor_s8(veor_s8(veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(a4 - 8 + v11)), veor_s8(*(v8 + v16.val[0].i64[0] - 7), *(v9 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a7), a8)));
  return (*(v13 + 8 * (((a1 != v14) * a6) ^ v12)))();
}

void sub_1A23C865C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = 1037613739 * (((a1 | 0x69823FE3) - (a1 & 0x69823FE3)) ^ 0xB880129C);
  v2 = *(a1 + 48) + v1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = 1388665877 * (((&v9 ^ 0xC6E9E506) + 422353094 - 2 * ((&v9 ^ 0xC6E9E506) & 0x192C98C6)) ^ 0x52681F2C);
  v7 = *(a1 + 64) + v1 + v6;
  v10 = (*a1 - v1 + 686623739) ^ v6;
  v11 = v3;
  v12 = v4;
  v14 = v5;
  v9 = v5;
  v13 = v7 + 410138172;
  v16 = v6 ^ (v2 - 542396885);
  v8 = *(&off_1F14948E0 + (v2 ^ 0x1EC)) - 8;
  (*&v8[8 * v2 + 19128])(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23C88A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, int a23, char a24, __int16 a25, char a26, __int16 a27, char a28)
{
  v32 = 1556366573 * ((((v31 - 152) | 0x7A6B38FB) - (v31 - 152) + ((v31 - 152) & 0x8594C700)) ^ 0x1E8F1B11);
  *(v31 - 112) = &a26;
  *(v31 - 104) = &a21;
  *(v31 - 120) = v30 - v32 + 141;
  *(v31 - 136) = &a28;
  *(v31 - 144) = a16;
  *(v31 - 152) = a7 - v32 + (v30 ^ 0xCE28AB5C);
  *(v31 - 128) = &a24;
  v33 = (*(v29 + 8 * (v30 + 2589)))(v31 - 152);
  return (*(v29 + 8 * (((*(v31 - 148) == v28) * (v30 ^ 0x80E)) ^ v30)))(v33, 919678557);
}

uint64_t sub_1A23C89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, unsigned int a56)
{
  v60 = 1556366573 * ((v59 + 1160643952 - 2 * ((v59 - 192) & 0x452E0630)) ^ 0x21CA25DA);
  *(v59 - 168) = &STACK[0x3E0];
  *(v59 - 192) = v56 - v60 - 836195719;
  *(v59 - 176) = &STACK[0x400];
  *(v59 - 184) = a49;
  *(v59 - 160) = v57 - v60 - 100;
  *(v59 - 152) = &STACK[0x2E0];
  *(v59 - 144) = &STACK[0x2D0];
  v61 = (*(v58 + 8 * (v57 ^ 0x954)))(v59 - 192);
  return (*(v58 + 8 * (((*(v59 - 188) == 1863271989) * (((v57 + 114) | 0x44) - 404)) ^ v57)))(v61, 1718356402, 48, 2045123515, a56, 2431655404);
}

uint64_t sub_1A23C8AAC(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0x83B08A16);
  v2 = *(a1 + 24) + v1;
  v3 = *(a1 + 16) ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1389192254;
  v5 = v4 - 1389192254 < 0;
  v7 = 1389192254 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F14948E0 + (v2 ^ 0x462)) + ((((v3 - 2062681294) >= (4 * v7)) * ((v2 - 1352932602) & 0x50A41ED7 ^ 0x6C5)) ^ v2) - 1))();
}

void sub_1A23C8B64()
{
  STACK[0x218] = v0 - 1712;
  LODWORD(STACK[0x284]) = -1863311903;
  JUMPOUT(0x1A240357CLL);
}

uint64_t sub_1A23C8B7C(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1A23C8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = *(a34 + 56);
  *(a34 + 56) = ((v35 - 1863312605) ^ (v34 + 2)) + v37;
  return (*(v36 + 8 * ((2540 * ((v37 - 1418414347) < 0xFFFFFFFA)) ^ (v35 - 704))))();
}

uint64_t sub_1A23C8C7C@<X0>(unsigned int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v8 = (v5 + 4 * v4);
  v9 = (a3 ^ a1) + v4 - 278;
  *v8 = *(v7 + 4 * (*(v5 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v5 + 4 * v9) & 0x7FFFFFFE | v3 & 0x80000000) >> 1);
  return (*(v6 + 8 * (((v9 == 227) * a2) ^ a3)))();
}

void sub_1A23C8CD4(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (143681137 * ((-2 - ((a1 | 0xE33F7651) + (~a1 | 0x1CC089AE))) ^ 0x7DFA3EE6));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23C8F44@<X0>(int a1@<W1>, uint64_t a2@<X4>, int a3@<W8>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v10 = (v8 + 908);
  v11 = vld1q_dup_f32(v10);
  v12 = (a3 + 1669273502) & 0x7B1253BF;
  a4.i32[0] = *(v8 + 4 * (v12 ^ 0x34F));
  a4.i32[1] = *(v8 + 916);
  a4.i32[2] = *(v8 + 920);
  v13 = vextq_s8(v11, a4, 0xCuLL);
  v14 = a4;
  v14.i32[3] = *(v8 + 924);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a6), vandq_s8(v13, a5)), 1uLL), *v8);
  v13.i32[0] = *(a2 + 4 * (*(v8 + 4 * (v12 ^ 0x34F)) & 1));
  v13.i32[1] = *(a2 + 4 * (*(v8 + 916) & 1));
  v13.i32[2] = *(a2 + 4 * (*(v8 + 920) & 1));
  v13.i32[3] = *(a2 + 4 * (v14.i8[12] & 1));
  *(v8 + 908) = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a7)), a8), v13);
  return (*(v9 + 8 * (a1 + a3 + 376)))();
}

void ha0dkchaters6()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - dword_1EB094638) ^ 0x43))] ^ 0x53u) - 12) ^ (11 * ((qword_1EB094620 - dword_1EB094638) ^ 0x43))) - 87);
  v1 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - *v0) ^ 0x43)) ^ *(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - *v0) ^ 0x43))] ^ 0xE6u) - 12)) + 6);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = (1922045707 * v2) ^ 0x21D37FB25A3D4D43;
  *(v1 - 4) = 1922045707 * (v2 ^ 0x21D37FB25A3D4D43);
  v5[1] = (210068311 * ((((2 * v5) | 0x84275486) - v5 + 1038898621) ^ 0x50C595E7)) ^ 0x48449A90;
  LOBYTE(v1) = 11 * ((*(v1 - 4) + *v0) ^ 0x43);
  v3 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094638) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094638) ^ 0x43))] ^ 0x53]) + 15) - 8;
  (*&v3[8 * (*(off_1F1494B50 + (*(off_1F1494C88 + v1 - 4) ^ 0xBCu) - 12) ^ v1) + 22328])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23C924C(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int32x4_t a21, int8x16_t a22, int8x16_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v47 = vld1q_dup_f32(v45);
  v48.i64[0] = 0x8000000080000000;
  v48.i64[1] = 0x8000000080000000;
  a2.i64[0] = *(v45 + 4);
  a2.i32[2] = *(v45 + 12);
  v49 = vextq_s8(v47, a2, 0xCuLL);
  v50 = a2;
  v50.i32[3] = *(v45 + 16);
  v51 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v50, a23), vandq_s8(v49, v48)), 1uLL), *(v45 + 1588));
  v49.i32[0] = *(&a45 + (*(v45 + 4) & 1));
  v49.i32[1] = *(&a45 + (*(v45 + 8) & 1));
  v49.i32[2] = *(&a45 + (*(v45 + 12) & 1));
  v49.i32[3] = *(&a45 + (v50.i8[12] & 1));
  *v45 = veorq_s8(vaddq_s32(vsubq_s32(v51, vandq_s8(vaddq_s32(v51, v51), a22)), a21), v49);
  return (*(v46 + 16712))(-560896076, 3734071842, a31, 3360542104, &a45, 537262093, 23631877);
}

uint64_t sub_1A23C9748(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, unsigned int a32, unsigned int a33, unsigned int a34, int a35, int a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, __int128 a53, __int128 a54, __int128 a55, __int128 a56)
{
  v61.n128_u64[0] = 0x8989898989898989;
  v61.n128_u64[1] = 0x8989898989898989;
  v62 = vdupq_n_s32(0x6F0F463Fu);
  v63 = vdupq_n_s32(0x6F0F4635u);
  v64.n128_u64[0] = 0x1212121212121212;
  v64.n128_u64[1] = 0x1212121212121212;
  v130 = *(v57 + 8 * (a4 + v56 - 285));
  if (a37 == 2)
  {
    v131 = vld4q_s8(&a21);
    v93 = a4 + a7 + 344;
    v94 = veorq_s8(v131.val[0], v61);
    v95 = vmovl_high_u8(v94);
    v96 = vmovl_u8(*v94.i8);
    v97 = veorq_s8(v131.val[1], v61);
    _Q21 = vmovl_high_u8(v97);
    _Q20 = vmovl_u8(*v97.i8);
    v100 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v101 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v102 = veorq_s8(v131.val[2], v61);
    v103 = vmovl_u8(*v102.i8);
    v104 = vmovl_high_u8(v102);
    v131.val[0] = veorq_s8(v131.val[3], v61);
    v131.val[1] = vmovl_u8(*v131.val[0].i8);
    v131.val[2] = vmovl_u16(*v131.val[1].i8);
    v131.val[1] = vmovl_high_u16(v131.val[1]);
    v131.val[0] = vmovl_high_u8(v131.val[0]);
    v131.val[3] = vmovl_u16(*v131.val[0].i8);
    v131.val[0] = vmovl_high_u16(v131.val[0]);
    v105 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v104, 8uLL)), vshlq_n_s32(vmovl_high_u16(v95), 0x18uLL)), v131.val[0]);
    v106 = vorrq_s8(vorrq_s8(vorrq_s8(v101, vshll_n_u16(*v104.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v95.i8), 0x18uLL)), v131.val[3]);
    v107 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v103, 8uLL)), vshlq_n_s32(vmovl_high_u16(v96), 0x18uLL)), v131.val[1]);
    v108 = vorrq_s8(vorrq_s8(vorrq_s8(v100, vshll_n_u16(*v103.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v96.i8), 0x18uLL)), v131.val[2]);
    v131.val[0] = veorq_s8(vandq_s8(v105, v62), (*v131.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v131.val[3] = veorq_s8(vandq_s8(v106, v62), (*&v131.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v131.val[1] = veorq_s8(vandq_s8(v107, v62), (*&v131.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v131.val[2] = veorq_s8(vandq_s8(v108, v62), (*&v131.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v131.val[0] = vaddq_s32(vsubq_s32(v105, vaddq_s32(v131.val[0], v131.val[0])), v63);
    v131.val[3] = vaddq_s32(vsubq_s32(v106, vaddq_s32(v131.val[3], v131.val[3])), v63);
    v131.val[1] = vaddq_s32(vsubq_s32(v107, vaddq_s32(v131.val[1], v131.val[1])), v63);
    v131.val[2] = vaddq_s32(vsubq_s32(v108, vaddq_s32(v131.val[2], v131.val[2])), v63);
    LODWORD(a53) = v131.val[2].i32[0];
    *(&a53 + 4) = vextq_s8(v131.val[2], v131.val[1], 4uLL);
    *(&a54 + 4) = vextq_s8(v131.val[1], v131.val[3], 4uLL);
    *(&a55 + 4) = vextq_s8(v131.val[3], v131.val[0], 4uLL);
    HIDWORD(a56) = v131.val[0].i32[3];
    *(&a56 + 4) = vextq_s8(v131.val[0], v131.val[0], 4uLL).u64[0];
    *(&a53 + ((10 * (v93 ^ 0x2B2u)) ^ (v59 - 262)) + 278788309) = v58 ^ __ROR4__(*(&a48 + v59 + 278788309) ^ *(&a51 + v59 + 278788309) ^ *(&a45 + v59 + 278788309) ^ *(&a44 + v59 + 278788309), 31);
    return (*(v57 + 8 * ((1747 * (v60 == 278788246)) ^ v93)))(v60 - 16);
  }

  else if (a37 == 1)
  {
    v132 = vld4q_s8(&a21);
    v65 = veorq_s8(v132.val[0], v61);
    v66 = vmovl_high_u8(v65);
    v67 = vmovl_high_u16(v66);
    v68 = vmovl_u16(*v66.i8);
    v69 = vmovl_u8(*v65.i8);
    v70 = vmovl_high_u16(v69);
    v71 = vmovl_u16(*v69.i8);
    v72 = veorq_s8(v132.val[1], v61);
    v73 = vmovl_u8(*v72.i8);
    v74 = vmovl_high_u8(v72);
    v75 = veorq_s8(v132.val[2], v61);
    _Q25 = vmovl_u8(*v75.i8);
    _Q24 = vmovl_high_u8(v75);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v132.val[0] = veorq_s8(v132.val[3], v61);
    v132.val[1] = vmovl_u8(*v132.val[0].i8);
    v132.val[2] = vmovl_u16(*v132.val[1].i8);
    v132.val[0] = vmovl_high_u8(v132.val[0]);
    v132.val[3] = vmovl_u16(*v132.val[0].i8);
    v132.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v132.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v74, 8uLL), v67));
    v132.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v132.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v74.i8, 8uLL), v68));
    v132.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v132.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v73, 8uLL), v70));
    v132.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v132.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v73.i8, 8uLL), v71));
    v84 = veorq_s8(vandq_s8(v132.val[0], v62), (*&v67 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v85 = veorq_s8(vandq_s8(v132.val[3], v62), (*&v68 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v86 = veorq_s8(vandq_s8(v132.val[1], v62), (*&v70 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v87 = veorq_s8(vandq_s8(v132.val[2], v62), (*&v71 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v88 = vaddq_s32(vsubq_s32(v132.val[0], vaddq_s32(v84, v84)), v63);
    v89 = vaddq_s32(vsubq_s32(v132.val[3], vaddq_s32(v85, v85)), v63);
    v90 = vaddq_s32(vsubq_s32(v132.val[1], vaddq_s32(v86, v86)), v63);
    v91 = vaddq_s32(vsubq_s32(v132.val[2], vaddq_s32(v87, v87)), v63);
    LODWORD(a53) = v91.i32[0];
    *(&a53 + 4) = vextq_s8(v91, v90, 4uLL);
    *(&a54 + 4) = vextq_s8(v90, v89, 4uLL);
    *(&a55 + 4) = vextq_s8(v89, v88, 4uLL);
    *(&a56 + 4) = vextq_s8(v88, v88, 4uLL).u64[0];
    HIDWORD(a56) = v88.i32[3];
    return (*(v57 + 10152))(2016);
  }

  else
  {
    v109 = (((a31 ^ 0x52EE4CB7) - 1391348919) ^ ((a31 ^ 0x2FC0421F) - 801128991) ^ ((a31 ^ 0x46FB7ED8) - 1190887128)) + (((a31 ^ 0xF8AD13B2) + 122874958) ^ ((a31 ^ 0xD6E0CCA4) + 689910620) ^ ((a31 ^ 0x1598AF66) - 362327910)) - 1205075119;
    v110 = (v109 ^ 0x3E7E99EF) & (2 * (v109 & 0xBF7EDD8F)) ^ v109 & 0xBF7EDD8F;
    v111 = ((2 * (v109 ^ 0x54528BFB)) ^ 0xD658ACE8) & (v109 ^ 0x54528BFB) ^ (2 * (v109 ^ 0x54528BFB)) & 0xEB2C5674;
    v112 = v111 ^ 0x29245214;
    v113 = (v111 ^ 0xC2080460) & (4 * v110) ^ v110;
    v114 = ((4 * v112) ^ 0xACB159D0) & v112 ^ (4 * v112) & 0xEB2C5674;
    v115 = (v114 ^ 0xA8205050) & (16 * v113) ^ v113;
    v116 = ((16 * (v114 ^ 0x430C0624)) ^ 0xB2C56740) & (v114 ^ 0x430C0624) ^ (16 * (v114 ^ 0x430C0624)) & 0xEB2C5670;
    v117 = v115 ^ 0xEB2C5674 ^ (v116 ^ 0xA2044600) & (v115 << 8);
    v118 = (((a32 ^ 0x19514F04) - 424759044) ^ ((a32 ^ 0xB2860D08) + 1299837688) ^ ((a32 ^ 0x9002327C) + 1878904196)) + (((a32 ^ 0xC49EE4B3) + 996219725) ^ ((a32 ^ 0x408FA0F) - 67697167) ^ ((a32 ^ 0xFB436ECC) + 79466804)) - 677776619;
    a31 = v109 ^ (2 * ((v117 << 16) & 0x6B2C0000 ^ v117 ^ ((v117 << 16) ^ 0x56740000) & (((v116 ^ 0x49281034) << 8) & 0x6B2C0000 ^ 0x43280000 ^ (((v116 ^ 0x49281034) << 8) ^ 0x2C560000) & (v116 ^ 0x49281034)))) ^ 0xD6BB0117;
    a32 = v118 ^ ((v118 ^ 0xD9D97563) + 2043254954) ^ ((v118 ^ 0xA4F13B06) + 81909453) ^ ((v118 ^ 0xC53AA1BF) + 1697270902) ^ ((v118 ^ 0xE7FDFDEF) + 1206718502) ^ 0x643A6245;
    v119 = (((a33 ^ 0x948D5A4C) + 1802675636) ^ ((a33 ^ 0xF28D6FEC) + 225611796) ^ ((a33 ^ 0x5DD545D0) - 1574258128)) + (((a33 ^ 0xB3634DB4) + 1285337676) ^ ((a33 ^ 0x1E2237B5) - 505558965) ^ ((a33 ^ 0x96940A71) + 1768682895)) - 1134207897;
    v120 = (v119 ^ 0x3305C27C) & (2 * (v119 & 0xBB458479)) ^ v119 & 0xBB458479;
    v121 = ((2 * (v119 ^ 0x2507C28E)) ^ 0x3C848DEE) & (v119 ^ 0x2507C28E) ^ (2 * (v119 ^ 0x2507C28E)) & 0x9E4246F6;
    v122 = v121 ^ 0x82424211;
    v123 = v120 ^ 0x9E4246F7 ^ (v121 ^ 0x1C0000E4) & (4 * v120);
    v124 = ((4 * v122) ^ 0x79091BDC) & v122 ^ (4 * v122) & 0x9E4246F4;
    v125 = v124 & 0x10199AC0 ^ v123 ^ (v124 ^ 0x180002D3) & ((16 * v123) ^ 0xF43DF5B0);
    v126 = ((16 * v124) ^ 0x9019B780) & (v124 ^ 0x180002D3) ^ v124 & 0x10199AC0;
    v127 = v126 & 0x10199AC0 ^ v125 ^ ((v125 << 8) ^ 0x525DADC0) & (v126 ^ 0x100002F7);
    v128 = ((v126 << 8) ^ 0x101B5AC0) & (v126 ^ 0x100002F7) ^ v126 & 0x10199AC0;
    v129 = (((a34 ^ 0xD94AB0F1) + 649416463) ^ ((a34 ^ 0xC85FDA41) + 933242303) ^ ((a34 ^ 0x2AC01AC0) - 717232832)) + (((a34 ^ 0x1A0C475A) - 437012314) ^ ((a34 ^ 0x93738348) + 1821146296) ^ ((a34 ^ 0xB2AAB462) + 1297435550)) - 700241959;
    a33 = v119 ^ (2 * (v127 ^ v128 & 0x10199AC0 ^ ((v127 << 16) ^ 0x56EE9AC0) & (v128 ^ 0xE420000) ^ ((v127 << 16) ^ 0x56EE9AC0) & 0x1E4202C0)) ^ 0x9C147C67;
    a34 = v129 ^ ((v129 ^ 0xFD81D04D) + 1558604108) ^ ((v129 ^ 0x2C736DCC) - 1928014645) ^ ((v129 ^ 0x70930406) - 772489983) ^ ((v129 ^ 0xFFF9FF7E) + 1587431033) ^ 0x654D3689;
    return v130(v61, v62, v63, v64);
  }
}

uint64_t sub_1A23C9840(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((113 * (((((v3 - 1791) ^ 0x71u) + 1838) ^ 0x872) != (((v3 - 1791) ^ 0x175) & v2))) ^ (v3 - 1791) ^ 0x71)))();
}

uint64_t sub_1A23C990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * ((2 * (&a14 & 0x1E023FB8) - &a14 + 1644019777) ^ 0xC77709);
  a14 = v22 ^ 0x6163ACC5;
  a15 = v22 + v21 + 1421511917;
  a16 = v22 ^ 0xEE56B3DE;
  a18 = a12;
  a19 = &a10;
  v23 = (*(v20 + 8 * (v21 ^ 0x942)))(&a14);
  return (*(v20 + 8 * ((2213 * (a17 == (((v21 - 532) | 0x52E) ^ (v19 + v21 + 15 - 1341)))) ^ v21)))(v23);
}

uint64_t sub_1A23C9A2C()
{
  v5 = v3 + 1803;
  v6 = v3 + 976;
  v7 = ~v2 + v1;
  if (HIDWORD(v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = (((v5 ^ 0xE41) - 1183) ^ v0) >= v7;
  }

  v9 = !v8;
  return (*(v4 + 8 * ((37 * (((v6 ^ v9) & 1) == 0)) ^ v5)))(v0);
}

uint64_t sub_1A23C9A88(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (a2 + 32);
  v8 = *v7;
  v9 = (v5 + (a3 + 32));
  *v9 = *(v7 - 1);
  v9[1] = v8;
  return (*(v6 + 8 * (((a1 == 32) * (v3 + 3048)) ^ v4)))();
}

uint64_t sub_1A23C9A98@<X0>(int a1@<W6>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6)
{
  v9 = (a6 + a2);
  v10 = vaddq_s8(vaddq_s8(v7[1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[1], v7[1]), a3)));
  v9[-1] = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  *v9 = v10;
  return (*(v8 + 8 * ((51 * (((v6 + 68) ^ ((((v6 - 527) ^ 0x72) & a1) == 32)) & 1)) ^ ((v6 - 527) | 0x200))))();
}

uint64_t sub_1A23C9B1C(uint64_t a1)
{
  v1 = 1785193651 * (((a1 ^ 0x10211865) & 0x4421A941 | ~(a1 ^ 0x10211865 | 0x4421A941)) ^ 0x284FC4CD);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + v1;
  v5 = v4 + *(v3 + 68) - 990375001;
  *(v3 + 68) = v5;
  v4 -= 1897999503;
  v6 = v4 < 0xC9E6BFCA;
  v7 = v5 - 907624502 < v4;
  if (v6 != v5 > 0x36194035)
  {
    v7 = v6;
  }

  return (*(*(&off_1F14948E0 + v2 - 1162) + ((14 * v7) ^ v2) - 1))();
}

uint64_t sub_1A23C9C60(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 896639297 * (((a1 | 0xCADF18C2) - (a1 & 0xCADF18C2)) ^ 0xDE748EBA);
  v3 = *a1 - v2;
  v4 = a1[5] - v2;
  v9[1] = v3 + 1037613739 * (((~v9 & 0x305CF02C) - (~v9 | 0x305CF02D)) ^ 0xE15EDD52) - 1746450168;
  v5 = *(&off_1F14948E0 + (v3 + 562358991)) - 8;
  result = (*&v5[8 * (v3 ^ 0xDE7B1EE7)])(v9);
  if (v4 > 1041223788)
  {
    if (v4 == 1326436460)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1041223789)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((((*&v5[8 * (v3 ^ 0xDE7B1E93)])((*(*(&off_1F14948E0 + (v3 ^ 0xDE7B1591)) + 6 * v7 + 1) - 2044285006), 0x100004077774924) != 0) * ((v3 + 562360664) ^ 0x71C)) | (v3 + 562361322))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1041223785)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1041223788)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[6] = -1863311991;
  return result;
}

uint64_t sub_1A23C9EF0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_1A23C9F18(int a1@<W8>)
{
  if (a1 == v4 + ((v2 + 1085426779) & 0xBF4DBAFD) - 2573)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *v1 = v7;
  *(v3 + 24) = *(v5 + 24);
}

uint64_t sub_1A23C9F98(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v14 = v12 + 4 * v11;
  a6.i32[0] = *(v14 + 4);
  a6.i32[1] = *(v12 + 4 * (((v6 + 902) | v7) ^ v8 | v11));
  a6.i32[2] = *(v14 + 12);
  v15 = vextq_s8(a1, a6, 0xCuLL);
  v16 = a6;
  v16.i32[3] = *(v12 + 4 * (v11 + 4));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a3), vandq_s8(v15, a2)), 1uLL), *(v14 + 1588));
  v15.i32[0] = *(v9 + 4 * (*(v14 + 4) & 1));
  v15.i32[1] = *(v9 + 4 * (*(v12 + 4 * (((v6 + 902) | v7) ^ v8 | v11)) & 1));
  v15.i32[2] = *(v9 + 4 * (*(v14 + 12) & 1));
  v15.i32[3] = *(v9 + 4 * (v16.i8[12] & 1));
  *v14 = veorq_s8(vaddq_s32(vaddq_s32(v17, a5), vmvnq_s8(vandq_s8(vaddq_s32(v17, v17), a4))), v15);
  return (*(v13 + 8 * (((v11 == 220) * v10) ^ v6)))();
}

uint64_t sub_1A23CA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (v16 + 1212454886) ^ (210068311 * ((&a14 & 0x10C22BE8 | ~(&a14 | 0x10C22BE8)) ^ 0x7DEBEBB3));
  v17 = (*(v15 + 8 * (v16 + 2118)))(&a14);
  return (*(v15 + 8 * ((2884 * (a14 == 1863271989)) ^ v16)))(v17);
}

uint64_t sub_1A23CA198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36, int a37, uint64_t a38, uint64_t a39)
{
  v44 = 223 * (v42 ^ (v42 - 4));
  *a36 = (*a36 ^ a37) + ((((v44 - 893) ^ (v41 - 620)) & v39 | (v41 - 620 - v39) & ((v41 - 620) ^ (-2 - v40))) >= 0);
  return (*(a39 + 8 * (v44 | (2 * (((v44 - 1418734383) & 0x75FEBFFF ^ 0xDE9167B2) + v43 == v44 - 892)))))();
}

void sub_1A23CA330()
{
  if (v0 == 836194961)
  {
    v2 = 1863271989;
  }

  else
  {
    v2 = -1863311891;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_1A23CA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, unsigned int a20)
{
  v23 = 1556366573 * (((&a17 | 0x40E119E) - &a17 + (&a17 & 0xFBF1EE60)) ^ 0x60EA3274);
  LODWORD(a17) = 2027 - v23;
  HIDWORD(a17) = v23 + 295473084;
  a18 = v23 ^ 0x661FAE48;
  a20 = 1844776156 - v23;
  (*(v21 + 22792))(&a17);
  a17 = &a12;
  a19 = (&a17 ^ v20) * v22 + 789;
  v24 = (*(v21 + 22888))(&a17);
  return (*(v21 + 8 * ((2593 * (a18 == 1863271989)) ^ 0x352u)))(v24);
}

uint64_t sub_1A23CA580(_DWORD *a1)
{
  v1 = 1556366573 * ((((2 * a1) | 0xCDDDE2C6) - a1 + 420548253) ^ 0x820AD289);
  v2 = *a1 + v1;
  v3 = *(*(&off_1F14948E0 + (v2 ^ 0x76C)) + 83);
  v4 = a1[1] - v1 - 301563428;
  v5 = v3 - 6090398 > v4;
  if (v4 < 0xFFA31162 != v3 > 0x5CEE9D)
  {
    v5 = v3 > 0x5CEE9D;
  }

  return (*(*(&off_1F14948E0 + (v2 & 0xCB1D89B)) + ((4066 * (((v2 + 88) ^ v5) & 1)) ^ v2) - 1))();
}

uint64_t sub_1A23CA844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  *a4 = 0;
  *a5 = 0;
  a15 = (210068311 * ((((&a14 | 0x4D3CEC66) ^ 0xFFFFFFFE) - (~&a14 | 0xB2C31399)) ^ 0x20152C3D)) ^ 0x48449A90;
  v16 = (*(v15 + 22400))(&a14);
  return (*(v15 + 8 * ((1142 * (a14 == 1863271989)) ^ 0xDBu)))(v16);
}

uint64_t sub_1A23CA8EC()
{
  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  return (*(v3 + 8 * (((v5 == v4) * (((v0 - 51180955) & 0x30CF7CD) - 665)) ^ (v0 + 381))))();
}

uint64_t sub_1A23CA900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * ((((2 * &a14) | 0x94642F54) - &a14 - 1244796842) ^ 0x2B08A0E2);
  a14 = v22 ^ 0x6163ACC6;
  a15 = v22 + v21 + 1421512327;
  a16 = v22 ^ 0x12D2E9B1;
  a18 = a10;
  a19 = &a12;
  v23 = (*(v20 + 8 * (v21 + 2652)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * ((v21 ^ 0xE) + 1912)) ^ v21)))(v23);
}

uint64_t sub_1A23CA9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20)
{
  v24 = 1037613739 * (((&a16 | 0xE92D4724) - &a16 + (&a16 & 0x16D2B8D8)) ^ 0x382F6A5B);
  a16 = a12;
  a19 = v21;
  a17 = v23 - v24 - 1068;
  a20 = (((2 * v22) & 0x7FFFAFFE) + (v22 ^ 0xBFFFD7FF) + ((v23 - 400) ^ 0x7EADFB6E)) ^ v24;
  v25 = (*(v20 + 8 * (v23 ^ 0xE9F)))(&a16);
  return (*(v20 + 8 * ((3426 * (a18 == 1863271989)) ^ v23)))(v25);
}

uint64_t sub_1A23CAA88@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7.i64[0] = 0x8989898989898989;
  v7.i64[1] = 0x8989898989898989;
  v8 = a1 + v3 - 1;
  v9 = veorq_s8(*(v2 + v3 - 1 - 31), v7);
  *(v8 - 15) = veorq_s8(*(v2 + v3 - 1 - 15), v7);
  *(v8 - 31) = v9;
  return (*(v6 + 8 * ((236 * (((182 * (v5 ^ (v4 + 247))) ^ 0x14CLL) != (v3 & 0xFFFFFFE0))) ^ (a2 + v5 + 2949))))();
}

void sub_1A23CAB00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 8) + 1380333833 * (((a1 | 0x80ED64AC) - (a1 | 0x7F129B53) + 2131925843) ^ 0x3EBFCF26);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23CAC58()
{
  v5 = v1 - 1418;
  v6 = 14 * ((v1 - 1418) ^ 0x117);
  if (v3 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = -v3;
  }

  v8 = ((v5 + 1418) ^ v0 ^ v6) + v2;
  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  return (*(v4 + 8 * ((29 * (v7 <= v9)) ^ v5)))();
}

uint64_t sub_1A23CACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18, int a19, unsigned int a20)
{
  a20 = v20 + ((-133421492 - (&a18 | 0xF80C264C) + (&a18 | 0x7F3D9B3)) ^ 0x9525E617) * v22 - 43;
  a18 = &a15;
  v23 = (*(v21 + 8 * (v20 + 2029)))(&a18);
  return (*(v21 + 8 * (((a19 == v20 + 1863271157) * (v20 + 401)) ^ v20)))(v23);
}

uint64_t sub_1A23CB31C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 + a1);
  *v6 = 0u;
  v6[1] = 0u;
  return (*(v5 + 8 * (((a1 + v1 == 1087) * v4) ^ v3)))();
}

uint64_t sub_1A23CB670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(a2 + (v8 & 0xF)) ^ *(v7 + v8) ^ *((v8 & 0xF) + v2 + 2) ^ (-34 * (v4 ^ 0x79) - 17) ^ (125 * (v8 & 0xF)) ^ *(v3 + (v8 & 0xF));
  return (*(v6 + 8 * ((240 * (v8 != 0)) ^ v4)))();
}

uint64_t sub_1A23CB6DC(int8x16_t a1, int8x16_t a2)
{
  v11 = v4 + 2;
  v12 = v6 + 2;
  v2 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a1)), a2);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a1)), a2);
  *v12 = v2;
  return (*(v10 + 8 * (((v5 == 32) * (((v7 + 2557) | v8) ^ v9)) ^ (v7 + 1535))))();
}

uint64_t sub_1A23CB6EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t (*a52)(uint64_t))
{
  v56 = 1785193651 * ((((v55 - 192) | 0xA91E7D9C) - (v55 - 192) + ((v55 - 192) & 0x56E18260)) ^ 0x2AAEF78A);
  *(v55 - 184) = v52;
  *(v55 - 192) = v54 - v56 + 585;
  *(v55 - 176) = (a1 ^ 0xBF0FEEDF) - v56 + ((2 * a1) & 0x7E1FDDBE) + 2079849850;
  v57 = (*(v53 + 8 * (v54 + 2139)))(v55 - 192);
  return a52(v57);
}

uint64_t sub_1A23CB84C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v6 = *(v5 - 220 + a2 + 72);
  v7 = (((v3 - 444045801) & 0x1BFFDF7F) + 34) ^ HIBYTE(v6);
  v8 = ((2 * a2) & 0xFDFBD6E8) + (a2 ^ 0x7EFDEB74) + v2;
  *(a1 + v8) = v7 - ((2 * v7) & 0x12) - 119;
  *(a1 + v8 + 1) = (BYTE2(v6) ^ 0xD5) - ((2 * (BYTE2(v6) ^ 0xD5)) & 0x12) - 119;
  *(a1 + v8 + 2) = (BYTE1(v6) ^ 0x70) - ((v6 >> 7) & 0x12) - 119;
  *(a1 + v8 + 3) = v6 ^ 0xF9;
  v9 = a2 + 4 < *(v5 - 128);
  return (*(v4 + 8 * ((v9 | (16 * v9)) ^ v3)))();
}

uint64_t sub_1A23CB9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  *a5 = 0;
  *a6 = 0;
  a22 = (210068311 * ((&a21 - 1040148830 - 2 * (&a21 & 0xC20096A2)) ^ 0x50D6A906)) ^ 0x48449A90;
  v25 = (*(v24 + 22400))(&a21);
  return (*(v24 + 8 * ((742 * (a21 == v22)) ^ v23)))(v25);
}

void sub_1A23CBA58(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094650) ^ 0x43)) ^ byte_1A273D510[byte_1A2739520[(11 * ((qword_1EB094620 + dword_1EB094650) ^ 0x43))] ^ 0x7D]) + 13);
  v4 = *(v3 - 4);
  v5 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - v4) ^ 0x43))] ^ 0xABu) - 12) ^ (11 * ((qword_1EB094620 - v4) ^ 0x43))) - 20);
  v6 = &v8[*(v5 - 4) ^ v4];
  *(v3 - 4) = (1922045707 * v6) ^ 0x21D37FB25A3D4D43;
  *(v5 - 4) = 1922045707 * (v6 ^ 0x21D37FB25A3D4D43);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1556366573 * (((v10 | 0x381FC12A) - v10 + (v10 & 0xC7E03ED0)) ^ 0x5CFBE2C0);
  v13 = -875954088 - v6;
  v11 = v6 ^ 0xD9C233F9;
  v12 = v9;
  LODWORD(v3) = 1922045707 * ((*(v5 - 4) + *(v3 - 4)) ^ 0x5A3D4D43);
  v7 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094650) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094650) ^ 0x43))] ^ 0xAB]) - 32) - 8;
  (*&v7[8 * (*(off_1F1494A90 + (*(off_1F1494EA0 + v3 - 8) ^ 0xAEu)) ^ v3) + 21792])(v10);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1A23CC210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = (v17 + 1993702675) & 0x892A82FD;
  v23 = 1564307779 * (((v16 | 0x8EAC1B35) - (v16 & 0x8EAC1B35)) ^ 0x19A1D726);
  *(v21 - 128) = v20;
  *(v21 - 120) = v17 - v23 - 459;
  *(v21 - 136) = ((v22 ^ 0xCDF7BD06) + (v19 ^ 0x7F7CD8FB) + ((2 * v19) & 0xFEF9B1F6)) ^ v23;
  (*(v18 + 8 * (v17 ^ 0x9D3)))(v21 - 136);
  *(v21 - 136) = v22 + 1556366573 * (v16 ^ 0x64E423EA) + 1407;
  *(v21 - 128) = a15;
  *(v21 - 120) = a16;
  v24 = (*(v18 + 8 * (v22 ^ 0x9E4)))(v21 - 136);
  return (*(v18 + 8 * ((482 * (*(v21 - 112) <= ((v22 + 703474694) ^ 0x29EE2B3B) + 798455718 + ((v22 + 703474694) & 0xD611D1DF) - 1699)) ^ v22)))(v24);
}

_DWORD *sub_1A23CC35C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if ((v2 + v4 + v6 - 1548) >= 0x7FFFFFFF)
  {
    v7 = -v5;
  }

  else
  {
    v7 = v3;
  }

  *(a2 + 4) = v7;
  *result = 372250903;
  return result;
}

uint64_t sub_1A23CC4D8(int a1, uint64_t a2, int a3)
{
  v8 = v3 < v5;
  if (v8 == v4 + 1 > (a1 - 17 + a3))
  {
    v8 = v6 + v4 + 2 < v3;
  }

  return (*(v7 + 8 * ((2 * v8) | (8 * v8) | a1)))();
}

uint64_t sub_1A23CC5A4(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v193 = (a55 + 16);
  v191 = a33 ^ 0xEA5E103B;
  v57 = (a37 + 1259579936) & 0x14EC54CF;
  LODWORD(a46) = (v57 + 748825459) ^ a32;
  LODWORD(v190) = a31 ^ 0xF7209E49;
  HIDWORD(v190) = __ROR4__(__ROR4__(((a34 << 24) | (a36 << 8) | (v55 << 16) | a39) ^ 0xC35F9D00, 22) ^ 0xA2EBB8AD, 10) ^ 0x7F2D907E;
  v189 = a2 + 16;
  v192 = a3 + 16;
  LODWORD(a37) = (v57 - 100509384) & 0x5FDA7D7;
  HIDWORD(a17) = (v57 + 313) | 0x523;
  LODWORD(a41) = a3 + 16 + ((a37 + 1358) ^ HIDWORD(a17));
  v58 = *(a22 + (*(a19 + a41) ^ 0xD3));
  v59 = *(a29 + (v193[4] ^ 0x3FLL));
  v60 = *(a22 + (v193[7] ^ 0xC3));
  v61 = v58 ^ (v58 >> 5) ^ (v58 >> 3);
  v62 = (v59 ^ 0xA8) - 98;
  LOBYTE(a39) = ((2 * v59) & 0xC4 ^ 0x84) + v62;
  v63 = *(a29 + (*(v193 - 4) ^ 0x87));
  v64 = v60 ^ (v60 >> 3) ^ ((v60 >> 5) | 0x80);
  v65 = *(a29 + (*v193 ^ 0xEELL));
  v66 = (v65 & 0x2A | 0x1020E100) ^ ((v61 << 8) ^ 0xEF167BD5) & ~v65;
  v67 = *(a30 + (v193[6] ^ 0xFLL));
  LOBYTE(v67) = ((((19 * v67) ^ 0xFFFFFFB5) + ((38 * v67) & 0x6A)) << (v62 & 2) << ((1 - v59) & 2)) ^ (19 * v67 - ((38 * v67) & 0x38) + 28);
  v68 = *(a21 + (v193[1] ^ 0xAALL));
  v69 = ((v67 << 16) ^ 0x25DC10C2) & ((v64 << 8) ^ 0x65FF5DE7) | (v64 << 8) & 0xEFFF;
  v70 = v68 ^ (v68 >> 3) ^ (v68 >> 2);
  v71 = *(a30 + (*(v193 - 6) ^ 0xDLL));
  v72 = (((((BYTE4(a20) + 76 * v71) ^ (19 * v71)) >> 4) | (v63 << 12) ^ 0x873A1B681187A2E7) ^ 0x458000EA10C800) & ((((HIDWORD(a20) + 76 * v71) ^ (19 * v71)) << 28) ^ 0x815D9068FA11C888) | ((v63 << 12) ^ 0x873A1B681187A2E7) & ~(((BYTE4(a20) + 76 * v71) ^ (19 * v71)) >> 4) & 0x6000200018E3067;
  v73 = (v72 << 20) ^ 0x5F00000 | (v72 >> 12) ^ 0x2683E5F8;
  v74 = *(a22 + (v193[3] ^ 8));
  v75 = ((v74 >> 3) | 0xFFFFFFC0) ^ v74 ^ 0xFFFFFFDE ^ (((v74 ^ 0xDE) >> 5) | 0x18);
  v76 = *(a21 + ((*(v193 - 3) - ((2 * *(v193 - 3)) & 0x1A4u) + 210) ^ 0x71));
  v77 = v76 ^ (v76 >> 3) ^ (v76 >> 2);
  v78 = *(a21 + (v193[5] ^ 0x9FLL));
  v79 = v78 ^ (v78 >> 3) ^ (v78 >> 2);
  v80 = *(a22 + (*(v193 - 5) ^ 0x3FLL));
  LOBYTE(v63) = *(a30 + (v193[2] ^ 0x9DLL));
  v81 = v73 ^ ((v80 ^ (v80 >> 5) ^ (v80 >> 3)) << 8);
  LODWORD(a38) = ((BYTE4(a20) + 76 * v63) ^ (19 * v63));
  v82 = *(a29 + (v193[8] ^ 0x4BLL));
  v83 = *(a30 + (*(v193 - 2) ^ 0xF7));
  v84 = ((v79 << 24) ^ 0xAD01318A) & (v69 ^ 0xDAF6E568) ^ v69 & 0x1FECE00;
  LOBYTE(v69) = (BYTE4(a20) + 76 * v83) ^ (19 * v83);
  v85 = *(a21 + (*(v193 - 7) ^ 0xD6));
  v86 = ((((v69 << 16) ^ 0xFFF1FFFF) & ((v77 << 24) ^ 0x2E72D777) | (v69 << 16) & 0x8D0000) ^ 0xC7295291) & (v66 ^ 0xC95623) ^ v66 & 0x72207A19;
  v87 = (((16 * (v85 ^ (v85 >> 1))) | 0x3E) & (((v85 ^ (v85 >> 1)) >> 4) ^ 0xFFFFFFED) | ((v85 ^ (v85 >> 1)) >> 4) & 1) ^ (((v85 ^ 0x52) >> 2) | ((v85 ^ 0x52) << 6));
  LODWORD(v188) = v81 ^ ((((v87 >> 6) | (4 * v87)) ^ 0x27) << 24);
  v88 = *(&off_1F14948E0 + (v57 ^ 0xD5)) - 12;
  v89 = *(&off_1F14948E0 + v57 - 166);
  v90 = *(v89 + 4 * (v67 ^ 0x48u)) - 1409877230;
  LODWORD(a36) = v75;
  v91 = v65 ^ 0xCE;
  LODWORD(a40) = v57;
  v92 = *(&off_1F14948E0 + (v57 ^ 0xA9)) - 12;
  v93 = *(&off_1F14948E0 + (v57 ^ 0xE3));
  v94 = *(v93 + 4 * (v75 ^ 0x29)) ^ v90 ^ (*&v92[4 * v91] - (v86 ^ 0x21C17690)) ^ (*&v88[4 * (BYTE3(v188) ^ 0xF2)] - (BYTE3(v188) ^ 0x5F6A3AA6));
  LODWORD(a39) = a39;
  v95 = *(v93 + 4 * (v64 ^ 0xB7u)) ^ (*(v89 + 4 * (BYTE2(v73) ^ 0x7Cu)) - 1409877230) ^ (*&v92[4 * (a39 ^ 0xAE)] - (a39 ^ 0x21C17607)) ^ (*&v88[4 * (HIBYTE(v86) ^ 0x3B)] - (HIBYTE(v86) ^ 0x5F6A3A6F));
  LODWORD(a34) = v70;
  HIDWORD(v188) = v86;
  LODWORD(a33) = (v84 ^ 0x211FE631) & ~v82 | v82 & 0x44444444;
  v96 = *(v93 + 4 * (BYTE1(v81) ^ 0x2Du)) ^ (*&v88[4 * (v70 ^ 0x40)] - (v70 ^ 0x5F6A3A14)) ^ (*&v92[4 * (v82 ^ 0x4B)] - (((v84 ^ 0x31) & ~v82 | v82 & 0x44) ^ 0x21C17659)) ^ (*(v89 + 4 * ((BYTE2(v86) ^ 0x54) + ((v86 >> 15) & 0xF8 ^ 0xFFFFFF57) + 125)) - 1409877230);
  LODWORD(v72) = (*(v89 + 4 * (a38 ^ 0xE3)) - 1409877230) ^ ((HIBYTE(v84) ^ 0xA095C5D9) + *&v88[4 * (HIBYTE(v84) ^ 0x72)] + 1) ^ *(v93 + 4 * (BYTE1(v86) ^ 0x9Du)) ^ (*&v92[4 * ((v72 >> 12) ^ 0x4ELL)] - ((v72 >> 12) ^ 0x21C176E7));
  v97 = *(v89 + 4 * (BYTE2(v72) ^ 0xC5u));
  v98 = *(v93 + 4 * (BYTE1(v96) ^ 0xF9u)) ^ (*&v88[4 * (HIBYTE(v94) ^ 0x9E)] - (HIBYTE(v94) ^ 0x5F6A3ACA)) ^ (*&v92[4 * (v95 ^ 0x68)] - (v95 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v97, 7) ^ 0x9B7BEFD7, 25) ^ 0x160110DF) + ((2 * v97) & 0x57EDF624));
  LODWORD(v82) = (*(v89 + 4 * (BYTE2(v94) ^ 0x96u)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v72) ^ 0x6Eu)) ^ (*&v88[4 * (HIBYTE(v95) ^ 0xA8)] - (HIBYTE(v95) ^ 0x5F6A3AFC)) ^ (*&v92[4 * (v96 ^ 0xFA)] - (v96 ^ 0x21C17653));
  v99 = (*(v89 + 4 * ((((BYTE2(v95) ^ 5) - (BYTE2(v95) ^ 0x79)) ^ 0xFFFFFFF8) + (BYTE2(v95) ^ 5))) - 1409877230) ^ (*&v88[4 * (HIBYTE(v96) ^ 0xA6)] - (HIBYTE(v96) ^ 0x5F6A3AF2)) ^ *(v93 + 4 * (BYTE1(v94) ^ 0xE0u)) ^ (*&v92[4 * (v72 ^ 0x40)] - (v72 ^ 0x21C176E9));
  v100 = (*(v89 + 4 * (BYTE2(v96) ^ 0xA3u)) - 1409877230) ^ (*&v88[4 * (BYTE3(v72) ^ 0x74)] - (BYTE3(v72) ^ 0x5F6A3A20)) ^ *(v93 + 4 * (BYTE1(v95) ^ 0x9Au)) ^ (*&v92[4 * (v94 ^ 0x9A)] - (v94 ^ 0x21C17633));
  LODWORD(v72) = (*(v89 + 4 * (BYTE2(v100) ^ 0x2Cu)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v99) ^ 0xBBu)) ^ (*&v88[4 * (HIBYTE(v98) ^ 0x48)] - (HIBYTE(v98) ^ 0x5F6A3A1C)) ^ (*&v92[4 * (v82 ^ 0xE0)] - (v82 ^ 0x21C17649));
  v101 = (*(v89 + 4 * (BYTE2(v98) ^ 0xE2u)) - 1409877230) ^ (*&v88[4 * (BYTE3(v82) ^ 0x7D)] - (BYTE3(v82) ^ 0x5F6A3A29)) ^ *(v93 + 4 * (BYTE1(v100) ^ 0x4Fu)) ^ (*&v92[4 * (v99 ^ 0x80)] - (v99 ^ 0x21C17629));
  v102 = *(v89 + 4 * (BYTE2(v99) ^ 0x90u));
  v103 = (*(v89 + 4 * ((BYTE2(v82) ^ 0xD9) + ((v82 >> 15) & 0xF8 ^ 0xFFFFFF4F) + 125)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v99) ^ 0x45)] - (HIBYTE(v99) ^ 0x5F6A3A11)) ^ *(v93 + 4 * (BYTE1(v98) ^ 0x46u)) ^ (*&v92[4 * (v100 ^ 0xA8)] - (v100 ^ 0x21C17601));
  LODWORD(v82) = (v102 - 1409877230) ^ (*&v88[4 * (HIBYTE(v100) ^ 0x99)] - (HIBYTE(v100) ^ 0x5F6A3ACD)) ^ *(v93 + 4 * (BYTE1(v82) ^ 0xA2u)) ^ (*&v92[4 * (v98 ^ 0xA5)] - (v98 ^ 0x21C1760C));
  v104 = BYTE3(v82);
  v105 = (*(v89 + 4 * (BYTE2(v82) ^ 0xF6u)) - 1409877230) ^ (*&v88[4 * (BYTE3(v72) ^ 0xE5)] - (BYTE3(v72) ^ 0x5F6A3AB1)) ^ *(v93 + 4 * (BYTE1(v103) ^ 0xC1u)) ^ (*&v92[4 * (v101 ^ 0x57)] - (v101 ^ 0x21C176FE));
  v106 = (*(v89 + 4 * ((((BYTE2(v72) ^ 0x95) - (BYTE2(v72) ^ 0xE9)) ^ 0xFFFFFFF8) + (BYTE2(v72) ^ 0x95))) - 1409877230) ^ (*&v88[4 * (HIBYTE(v101) ^ 0x7E)] - (HIBYTE(v101) ^ 0x5F6A3A2A)) ^ *(v93 + 4 * (BYTE1(v82) ^ 0x2Cu)) ^ (*&v92[4 * (v103 ^ 0x72)] - (v103 ^ 0x21C176DB));
  v107 = HIBYTE(v103) ^ 0x5F6A3A27;
  v108 = (*(v89 + 4 * (BYTE2(v101) ^ 0xDu)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v72) ^ 0xECu)) ^ (*&v88[4 * (HIBYTE(v103) ^ 0x73)] - v107) ^ (*&v92[4 * (v82 ^ 0x3A)] - (v82 ^ 0x21C17693));
  v109 = (*(v89 + 4 * (BYTE2(v103) ^ 0x7Fu)) - 1409877230) ^ (*&v88[4 * (v104 ^ 0x97)] - (v104 & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (v104 & 2)))) ^ *(v93 + 4 * (((BYTE1(v101) ^ 0x6B) - 1853103296 + ((v101 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368)) ^ (*&v92[4 * (v72 ^ 0x32)] - (v72 ^ 0x21C1769B));
  v110 = HIBYTE(v109);
  v111 = (*(v89 + 4 * (BYTE2(v109) ^ 0xC3u)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v105) ^ 0x85)] - (HIBYTE(v105) ^ 0x5F6A3AD1)) ^ *(v93 + 4 * (BYTE1(v108) ^ 0x25u)) ^ (*&v92[4 * (v106 ^ 0x77)] - (v106 ^ 0x21C176DE));
  v112 = HIWORD(v105) & 0xC0 ^ 0x80;
  if ((v105 & 0x3F0000) != 0x3C0000)
  {
    LOBYTE(v112) = BYTE2(v105) ^ 0xBC;
  }

  v113 = (*(v89 + 4 * (v112 ^ 0x7Cu)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v106) ^ 0xD0)] - (HIBYTE(v106) ^ 0x5F6A3A84)) ^ *(v93 + 4 * (BYTE1(v109) ^ 0x35u)) ^ (*&v92[4 * (v108 ^ 0x37)] - (v108 ^ 0x21C1769E));
  v114 = (*(v89 + 4 * (BYTE2(v106) ^ 0xAEu)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v108) ^ 0x46)] - (HIBYTE(v108) ^ 0x5F6A3A12)) ^ *(v93 + 4 * (BYTE1(v105) ^ 0x81u)) ^ (*&v92[4 * (v109 ^ 0x5A)] - (v109 ^ 0x21C176F3));
  v115 = (*(v89 + 4 * (BYTE2(v108) ^ 0x38u)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v106) ^ 8u)) ^ (*&v88[4 * (v110 ^ 0xAF)] - (v110 ^ 0x5F6A3AFB)) ^ (*&v92[4 * (v105 ^ 0xE7)] - (v105 ^ 0x21C1764E));
  v116 = v113 ^ 0x94240652;
  v117 = (*(v89 + 4 * ((v115 ^ 0x28B1C8AFu) >> 16)) - 1409877230) ^ *(v93 + 4 * ((v114 ^ 0xF582) >> 8)) ^ (*&v88[4 * (((v111 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v111 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v92[4 * (v113 ^ 0x82)] - (v113 ^ 0x21C1762B));
  v118 = (*(v89 + 4 * (BYTE2(v111) ^ 0xCFu)) - 1409877230) ^ *(v93 + 4 * ((v115 ^ 0xC8AF) >> 8)) ^ (*&v92[4 * (v114 ^ 0x52)] - (v114 ^ 0x21C176FB)) ^ (*&v88[4 * (((v113 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v113 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v119 = (*(v89 + 4 * BYTE2(v116)) - 1409877230) ^ (*&v88[4 * (((v114 ^ 0x57A0F582u) >> 24) ^ 0x8A)] - (((v114 ^ 0x57A0F582u) >> 24) ^ 0x5F6A3ADE)) ^ *(v93 + 4 * ((v111 ^ 0x3250) >> 8)) ^ (*&v92[4 * (v115 ^ 0x7F)] - (v115 ^ 0x21C176D6));
  v120 = v118 ^ 0x6FA1BBC0;
  v121 = (*(v89 + 4 * (BYTE2(v114) ^ 0xDCu)) - 1409877230) ^ (*&v88[4 * (((v115 ^ 0x28B1C8AFu) >> 24) ^ 0x8A)] - (((v115 ^ 0x28B1C8AFu) >> 24) ^ 0x5F6A3ADE)) ^ *(v93 + 4 * (BYTE1(v116) ^ 0x57u)) ^ (*&v92[4 * (v111 ^ 0x80)] - (v111 ^ 0x21C17629));
  BYTE2(v115) = BYTE2(v119) ^ 0xB2;
  v122 = (v118 ^ 0x6FA1BBC0) >> 24;
  v123 = *&v92[4 * (v118 ^ 0x10)] - (v118 ^ 0x21C176B9);
  v124 = v122 ^ 0x5F6A3ADE;
  v125 = *&v88[4 * (v122 ^ 0x8A)];
  v126 = (*(v89 + 4 * ((v121 ^ 0xBE27B2EF) >> 16)) - 1409877230) ^ *(v93 + 4 * ((v119 ^ 0x7C12) >> 8)) ^ (*&v88[4 * (((v117 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v117 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ v123;
  v127 = (*(v89 + 4 * (BYTE2(v117) ^ 0xD2u)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v121) ^ 0xE5u)) ^ (v125 - v124) ^ (*&v92[4 * (v119 ^ 0xC2)] - (v119 ^ 0x21C1766B));
  v128 = *&v88[4 * (((v119 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v119 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE);
  v129 = (v121 ^ 0xBE27B2EF) >> 24;
  v130 = (*(v89 + 4 * BYTE2(v120)) - 1409877230) ^ *(v93 + 4 * ((v117 ^ 0x4527) >> 8)) ^ v128 ^ (*&v92[4 * (v121 ^ 0x3F)] - (v121 ^ 0x21C17696));
  v131 = (*(v89 + 4 * BYTE2(v115)) - 1409877230) ^ *(v93 + 4 * BYTE1(v120)) ^ (*&v88[4 * (v129 ^ 0x8A)] - (v129 ^ 0x5F6A3ADE)) ^ (*&v92[4 * (v117 ^ 0xF7)] - (v117 ^ 0x21C1765E));
  v132 = (*(v89 + 4 * ((v131 ^ 0x7DDF413Fu) >> 16)) - 1409877230) ^ *(v93 + 4 * (BYTE1(v130) ^ 0x1Fu)) ^ (*&v88[4 * (((v126 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v126 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v92[4 * (v127 ^ 0xF5)] - (v127 ^ 0x21C1765C));
  v133 = (*(v89 + 4 * ((v126 ^ 0x179F0454) >> 16)) - 1409877230) ^ *(v93 + 4 * ((v131 ^ 0x413F) >> 8)) ^ (*&v88[4 * (((v127 ^ 0x75457125u) >> 24) ^ 0x8A)] - (((v127 ^ 0x75457125u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v92[4 * (v130 ^ 0xC0)] - (v130 ^ 0x21C17669));
  v134 = *(v93 + 4 * (BYTE1(v126) ^ 0x53u));
  v135 = v134 ^ -v134 ^ (-1795874037 - (__ROR4__(__ROR4__(v134, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v136 = BYTE2(v130) ^ 0x59;
  v137 = (*(v89 + 4 * (BYTE2(v127) ^ 0x39u)) - 1409877230) ^ (*&v92[4 * (v131 ^ 0xEF)] - (v131 ^ 0x21C17646)) ^ (*&v88[4 * (((v130 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v130 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v135) & 0x29EA4616) + (v135 ^ 0x94F5230B));
  v138 = v132 ^ 0x8EBD9B97;
  v139 = (*(v89 + 4 * v136) - 1409877230) ^ *(v93 + 4 * (BYTE1(v127) ^ 0x26u)) ^ (*&v88[4 * (((v131 ^ 0x7DDF413Fu) >> 24) ^ 0x8A)] - (((v131 ^ 0x7DDF413Fu) >> 24) ^ 0x5F6A3ADE)) ^ (*&v92[4 * (v126 ^ 0x84)] - (v126 ^ 0x21C1762D));
  v140 = v133 ^ 0xA3ECFAB3;
  v141 = v139 ^ 0x10CC86ED;
  v142 = *&v92[4 * (v133 ^ 0x63)] - (v133 ^ 0x21C176CA);
  v143 = (*(v89 + 4 * ((v139 ^ 0x10CC86ED) >> 16)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v138) ^ 0x8A)] - (HIBYTE(v138) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *(v93 + 4 * (BYTE1(v137) ^ 0xC2u));
  v144 = (v143 ^ -v143 ^ (v142 - (v143 ^ v142))) + v142;
  v145 = v137 ^ 0x8CA395FC;
  if (((v137 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v146 = -16;
  }

  else
  {
    v146 = 16;
  }

  v147 = HIBYTE(v145);
  v148 = (*(v89 + 4 * (BYTE2(v132) ^ 0xC1u)) - 1409877230) ^ *(v93 + 4 * ((v139 ^ 0x86ED) >> 8)) ^ (*&v88[4 * (HIBYTE(v140) ^ 0x8A)] - (HIBYTE(v140) ^ 0x5F6A3ADE)) ^ (*&v92[4 * ((v146 + v145) ^ 0xC0)] - ((v146 + v145) ^ 0x21C17669));
  v149 = (*(v89 + 4 * BYTE2(v140)) - 1409877230) ^ *(v93 + 4 * BYTE1(v138)) ^ (*&v92[4 * (v139 ^ 0x3D)] - (v139 ^ 0x21C17694)) ^ (*&v88[4 * (v147 ^ 0x8A)] - (v147 ^ 0x5F6A3ADE));
  v150 = (*(v89 + 4 * (BYTE2(v137) ^ 0xDFu)) - 1409877230) ^ (*&v88[4 * (HIBYTE(v141) ^ 0x8A)] - (HIBYTE(v141) ^ 0x5F6A3ADE)) ^ *(v93 + 4 * (BYTE1(v133) ^ 0xADu)) ^ (*&v92[4 * (v132 ^ 0x47)] - (v132 ^ 0x21C176EE));
  v151 = *(&off_1F14948E0 + v57 - 22) - 12;
  v152 = *(&off_1F14948E0 + (v57 ^ 0x5E)) - 4;
  v153 = *&v152[4 * ((v150 ^ 0x66EB169Au) >> 16)] ^ 0x4D522762;
  v154 = (v153 >> (v107 & 3) >> (v107 & 3 ^ 3)) ^ v153;
  v155 = *(&off_1F14948E0 + v57 - 139) - 8;
  v156 = *(&off_1F14948E0 + v57 - 149) - 8;
  v157 = *&v152[4 * (BYTE2(v144) ^ 0xBF)];
  v158 = ((v148 ^ 0xA4) - 1352815326) ^ *&v155[4 * (BYTE1(v149) ^ 0x57)] ^ *&v151[4 * (HIBYTE(v144) ^ 0xBE)] ^ *&v156[4 * (v148 ^ 0x91)] ^ (v154 >> 2);
  v159 = *&v151[4 * (HIBYTE(v148) ^ 0x43)] ^ ((v149 ^ 0xC4) - 1352815326) ^ *&v155[4 * (BYTE1(v150) ^ 0x7C)] ^ v157 ^ 0x4D522762 ^ *&v156[4 * (v149 ^ 0xF1)] ^ ((v157 ^ 0x4D522762u) >> 2) ^ ((v157 ^ 0x4D522762u) >> 5);
  v160 = *&v151[4 * ((v150 ^ 0x66EB169Au) >> 24)];
  v161 = *&v152[4 * (BYTE2(v148) ^ 0x20)];
  v162 = *&v152[4 * (BYTE2(v149) ^ 0xCB)];
  v163 = *&v151[4 * (HIBYTE(v149) ^ 0xD5)] ^ ((v150 ^ 0x9A) - 1352815326) ^ *&v156[4 * (v150 ^ 0xAF)] ^ *&v155[4 * ((v144 ^ 0x84FF) >> 8)];
  v164 = v153 ^ v190;
  v165 = v163 ^ ((v161 ^ 0x4D522762u) >> 2) ^ ((v161 ^ 0x4D522762u) >> 5);
  v166 = v160 ^ (~v144 - 1352815326) ^ v162 ^ 0x4D522762 ^ *&v155[4 * (BYTE1(v148) ^ 0x2D)] ^ ((v162 ^ 0x4D522762u) >> 2) ^ ((v162 ^ 0x4D522762u) >> 5) ^ *&v156[4 * (v144 ^ 0xCA)];
  v167 = (v159 - ((2 * v159) & 0xC22F5760) + 1628941232) ^ a46;
  v168 = v161 ^ 0x4D522762 ^ HIDWORD(v190) ^ (v165 - ((2 * v165) & 0x8CCF9E58) + 1181208364);
  v169 = *(&off_1F14948E0 + (v57 ^ 0x4F)) - 12;
  a2[17] = (-97 * v169[HIBYTE(v168) ^ 0x4CLL]) ^ ((-97 * v169[HIBYTE(v168) ^ 0x4CLL]) >> 5) ^ ((-97 * v169[HIBYTE(v168) ^ 0x4CLL]) >> 1) ^ 0xD4;
  a2[13] = (-97 * v169[HIBYTE(v167) ^ 0x61]) ^ ((-97 * v169[HIBYTE(v167) ^ 0x61]) >> 5) ^ ((-97 * v169[HIBYTE(v167) ^ 0x61]) >> 1) ^ 0xD8;
  v170 = ((v168 ^ 0xD2C1) >> 8);
  v171 = v170 ^ 0x6C;
  LOBYTE(v160) = v170 ^ 0xDA;
  LOBYTE(v156) = (v170 ^ 0xDA) + 99;
  v172 = *(&off_1F14948E0 + (v57 ^ 0xD0)) - 8;
  a2[19] = ((v156 ^ v160) + v172[v171]) ^ 0xB3;
  v173 = *(&off_1F14948E0 + (v57 ^ 0x6E)) - 12;
  LOBYTE(v160) = v173[((((v168 ^ 0xA619D2C1) >> 16) ^ -((v168 ^ 0xA619D2C1) >> 16) ^ (510 - ((v168 ^ 0xA619D2C1) >> 16) - ((2 * ((v168 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v174 = ((((v168 ^ 0xA619D2C1) >> 16) ^ -((v168 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v168 ^ 0xA619D2C1) >> 16) - ((2 * ((v168 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v175 = v174 & 8 ^ v160;
  v176 = (v174 & 8 & v160) == 0;
  v177 = v160 - (v174 & 8);
  if (v176)
  {
    v177 = v175;
  }

  a2[18] = v177 ^ v174 & 0xF7;
  *(a18 + a41) = (v172[BYTE1(v167) ^ 0x94] + (((BYTE1(v167) ^ 0x22) + 99) ^ BYTE1(v167) ^ 0x22)) ^ 0xA8;
  v178 = HIWORD(v167) ^ 0x58BD;
  HIDWORD(v179) = ((v166 ^ 0x23A4540) + 4042531 - 2 * ((v166 ^ 0x23A4540) & 0x3DAF33 ^ v166 & 0x10)) ^ v191;
  LODWORD(v179) = ((v166 ^ 0x23A4540) - 2 * ((v166 ^ 0x23A4540) & 0x233DAF2B ^ v166 & 8) - 1556238557) ^ v191;
  HIDWORD(v179) = (v179 >> 24) ^ 0x8829CA87;
  LODWORD(v179) = HIDWORD(v179);
  v180 = (v179 >> 8);
  v181 = v164 ^ (v158 - ((2 * v158) & 0xACB4CEFC) + 1448765310);
  a2[14] = BYTE2(v167) ^ 0x9E ^ v173[BYTE2(v167) ^ 0xD5];
  v182 = *(&off_1F14948E0 + v57 - 137) - 8;
  v183 = v182[v181 ^ 0xE7] - 24;
  a2[12] = v183 ^ 0x5D ^ (v183 >> 1) & 0x1E;
  a2[21] = (-97 * v169[BYTE3(v180) ^ 0x60]) ^ ((-97 * v169[BYTE3(v180) ^ 0x60]) >> 5) ^ ((-97 * v169[BYTE3(v180) ^ 0x60]) >> 1) ^ 0xFE;
  v184 = v182[((180 - (v168 ^ 0x56) + (v168 ^ 0xE2) - 2 * ((180 - (v168 ^ 0x56)) & (v168 ^ 0xE2))) ^ -(v168 ^ 0xE2)) + 180] - 24;
  a2[20] = v184 ^ 0x62 ^ (v184 >> 1) & 0x1E;
  v185 = BYTE1(v180) ^ 0xF9;
  a2[23] = (v172[BYTE1(v180) ^ 0x4FLL] + ((v185 + 99) ^ v185)) ^ 0xBE;
  a2[11] = (v172[BYTE1(v181) ^ 0x1FLL] + (((BYTE1(v181) ^ 0xA9) + 99) ^ BYTE1(v181) ^ 0xA9)) ^ 0x84;
  v186 = v182[v167 ^ 0xDDLL];
  *v189 = (((v186 + ((v186 - 24) ^ 0xAE) - 23) ^ 0xFE) + v186 - 24) ^ ((v186 - 24) >> 1) & 0x1E;
  a2[9] = (-97 * v169[HIBYTE(v181) ^ 0x67]) ^ ((-97 * v169[HIBYTE(v181) ^ 0x67]) >> 5) ^ ((-97 * v169[HIBYTE(v181) ^ 0x67]) >> 1) ^ 0xE1;
  a2[22] = BYTE2(v180) ^ 0x8E ^ v173[BYTE2(v180) ^ 0x55];
  a2[10] = BYTE2(v181) ^ 0xD3 ^ v173[BYTE2(v181) ^ 0x7DLL];
  LOBYTE(v186) = v182[BYTE5(v179) ^ 0xF7] - 24;
  a2[24] = v186 ^ ((v186 & (v186 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v56 + 8 * (((4 * (v192 > 0x13F)) | (8 * (v192 > 0x13F))) ^ v57)))((v185 + 99), v189, v192, v180, 79, v182, 190, v178, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v188, a33, a34, a35, a36, a37, a38, a39, a40, a41, v189, v190, a44, a45, a46, a47);
}

uint64_t sub_1A23CC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, _DWORD *a29)
{
  *a29 = ((-((~(v32 - 276) + v31) ^ (v30 - (v32 - 276))) | (~(v32 - 276) + v31)) >> (v32 + 40)) + (*a29 ^ a28);
  v34 = v29 + ((v32 + 375) ^ 0x399) - 280 != 93 * ((v32 + 375) ^ 0x28D) - 279;
  return (*(v33 + 8 * (((2 * v34) | (32 * v34)) ^ (v32 + 375))))();
}

uint64_t sub_1A23CC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v18 = v15 ^ 0x207;
  v19 = ((v15 ^ 0x207) - 1733) | 0x198;
  v20 = (((v15 ^ 0x207) - 2004087437) | 0x50628B80) - 1224120377;
  v22 = v14 != 1337084984 && a14 - v16 == v20;
  return (*(v17 + 8 * ((v22 * (v19 - 381)) ^ v18)))();
}

uint64_t sub_1A23CC7E8()
{
  v4.i64[0] = 0x1212121212121212;
  v4.i64[1] = 0x1212121212121212;
  v5.i64[0] = 0x8989898989898989;
  v5.i64[1] = 0x8989898989898989;
  v2[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  return (*(v3 + 8 * ((v1 - 798) | (8 * (((v1 - 1312) | 0x18) != 0x55CLL)))))();
}

uint64_t sub_1A23CC88C()
{
  v5 = v4[623];
  if (((623 - v1) & ((-2 - v3) ^ 0x26F) | v1 & 0xFFFFFD90) > -1)
  {
    ++v5;
  }

  *v4 = v5;
  return (*(v2 + 8 * ((3057 * (v0 == 1)) ^ 0x37Eu)))();
}

uint64_t sub_1A23CC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, int a16, unsigned int a17, int a18, uint64_t a19, char *a20)
{
  v23 = 143681137 * ((&a15 - 1734615153 - 2 * (&a15 & 0x989BDF8F)) ^ 0xF9A168C7);
  a19 = a12;
  a20 = &a13;
  a17 = v23 ^ 0xE6F58990;
  a15 = ((a10 ^ (v20 - 714) ^ 0x6F77BDAF) - 236196377 + ((a10 << (((v20 - 69) & 0xDB) + 46)) & 2)) ^ v23;
  a16 = v23 + v20 + 1421510917;
  v24 = (*(v21 + 8 * (v20 + 1242)))(&a15);
  return (*(v21 + 8 * ((3144 * (a18 == v22)) ^ v20)))(v24);
}

uint64_t sub_1A23CCEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a13;
  *(v19 - 112) = &a15;
  *(v19 - 128) = v18 + ((v19 + 1238461771 - 2 * ((v19 - 128) & 0x49D16DCB)) ^ 0x2D354E21) * v17 + 72;
  v20 = (*(v16 + 8 * (v18 + 749)))(v19 - 128);
  return (*(v16 + 8 * ((229 * (*(v19 - 104) > v15 + ((v18 - 1211977969) & 0x483D4DFAu) + 42)) ^ v18)))(v20);
}

uint64_t sub_1A23CD058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 ^ 0x888u) - 817 + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((3214 * ((a2 & 0xFFFFFFE0) == 32)) ^ ((v2 ^ 0x974) + 851))))();
}

uint64_t sub_1A23CD0BC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v53 = *(v51 + 4 * (v48 - 1));
  *(v51 + 4 * v48) = *(a47 + 4 * v49) + v49 + ((1664525 * (v53 ^ (v53 >> 30))) ^ *(v51 + 4 * v48));
  v54 = 143681137 * ((0x3CAE3716B02A832DLL - (v50 | 0x3CAE3716B02A832DLL) + a45) ^ 0x2387074A2EEFCB9ALL);
  *(v52 - 184) = (v48 + 1) ^ v54;
  *(v52 - 176) = 623 - v54;
  *(v52 - 192) = a1 + 577 - v54 + 1933455545;
  *(v52 - 156) = v54 + a1 + 1699922444;
  *(v52 - 152) = (a1 + 1933456227) ^ v54;
  *(v52 - 168) = a1 + 577 - v54 + 1933455600;
  *(v52 - 160) = -143681137 * ((-1339391187 - (v50 | 0xB02A832D) + a45) ^ 0x2EEFCB9A);
  v55 = (*(v47 + 8 * (a1 + 2684)))(v52 - 192);
  return (*(v47 + 8 * *(v52 - 164)))(v55);
}

uint64_t sub_1A23CD0C4()
{
  v6 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  v7 = 1556366573 * ((((v5 - 192) | 0x6A22B5A7BD0906EBLL) - ((v5 - 192) & 0x6A22B5A7BD0906EBLL)) ^ 0x41D9CB44D9ED2501);
  *(v5 - 160) = v1 + 1 + v7;
  v8 = v0 + 1107175867 - v7;
  *(v5 - 192) = v7 + 623;
  *(v5 - 176) = v7 ^ (v0 + 1107175867) ^ 0x4C;
  *(v5 - 172) = v2 - v7;
  *(v5 - 184) = v7 + v0 - 2030745388;
  *(v5 - 180) = v8 + 54;
  *(v5 - 168) = v8;
  v9 = (*(v4 + 8 * (v0 + 2152)))(v5 - 192);
  return (*(v4 + 8 * *(v5 - 152)))(v9);
}

uint64_t sub_1A23CD1A4()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 - 730) | 0x180) ^ 0x7FB)) ^ (v1 - 1145))))();
}

uint64_t sub_1A23CD1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v26 = a24 - 1492257523 > a14;
  if (a14 < 0xA70DF4CD != (a24 - 1492257523) < 0xA70DF4CD)
  {
    v26 = (a24 - 1492257523) < 0xA70DF4CD;
  }

  return (*(v24 + 8 * ((((((v25 + 862) ^ v26) & 1) == 0) * (((v25 - 42) | 0x201) ^ 0x21E)) ^ (v25 + 447))))(a1, a2, 18, a22);
}

uint64_t sub_1A23CD234@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = (a1 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 - 684) | 0x309) ^ 0x35B)) ^ (v2 - 546))))();
}

uint64_t sub_1A23CD284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16, int a17, int a18, char a19, unsigned int a20, int a21, uint64_t a22, char *a23, int *a24, int a25, char *a26, char *a27)
{
  a15 = 164714449;
  v29 = *(a2 + 4);
  v30 = *(a2 + 8);
  v31 = 1556366573 * ((((2 * &a20) | 0xD394E09C) - &a20 - 1774874702) ^ 0xD2E53A4);
  a24 = &a15;
  a25 = v27 - v31 - 522;
  a20 = -836196600 - v31 + v29 + ((v27 + 1486610367) & 0xA7641FF5);
  a22 = v30;
  a23 = &a14;
  a27 = &a16;
  a26 = &a19;
  v33 = (*(v28 + 8 * (v27 ^ 0x8FE)))(&a20);
  return (*(v28 + 8 * ((2655 * (a21 == 1863271989)) ^ v27)))(v33, a2);
}

uint64_t sub_1A23CD3E4@<X0>(uint64_t a1@<X8>)
{
  v5 = 38 * (v2 ^ 0x237);
  v6.i64[0] = 0x1212121212121212;
  v6.i64[1] = 0x1212121212121212;
  v7.i64[0] = 0x8989898989898989;
  v7.i64[1] = 0x8989898989898989;
  v8 = ((v5 + 318) ^ 0xFFFFFFFFFFFFFD45) + v1;
  v9 = *(v3 + v8 - 15);
  v10 = *(v3 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v6)), v7);
  *(v11 - 31) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v6)), v7);
  return (*(v4 + 8 * ((45 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v5 + 777))))();
}

void hqRB2RyoIJ(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23CD528(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30)
{
  LODWORD(v91) = 1187096468;
  v90 = a5 + a12;
  v86 = (v35 - 252);
  v87.i64[0] = 0x8989898989898989;
  v87.i64[1] = 0x8989898989898989;
  v88 = vdupq_n_s32(0x6F0F463Fu);
  v89 = vdupq_n_s32(0x6F0F4635u);
  a20 = v32 - 16;
  a19 = *(v34 + 8 * (a3 + v30 + 54));
  v36 = *(v35 - 156);
  if (v36 == 2)
  {
    v92 = vld4q_s8(v86);
    v67 = veorq_s8(v92.val[0], v87);
    v68 = vmovl_high_u8(v67);
    v69 = vmovl_u8(*v67.i8);
    v70 = veorq_s8(v92.val[1], v87);
    _Q21 = vmovl_high_u8(v70);
    _Q20 = vmovl_u8(*v70.i8);
    v73 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v74 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v75 = veorq_s8(v92.val[2], v87);
    v76 = vmovl_u8(*v75.i8);
    v77 = vmovl_high_u8(v75);
    v92.val[0] = veorq_s8(v92.val[3], v87);
    v92.val[1] = vmovl_u8(*v92.val[0].i8);
    v92.val[2] = vmovl_u16(*v92.val[1].i8);
    v92.val[1] = vmovl_high_u16(v92.val[1]);
    v92.val[0] = vmovl_high_u8(v92.val[0]);
    v92.val[3] = vmovl_u16(*v92.val[0].i8);
    v92.val[0] = vmovl_high_u16(v92.val[0]);
    v78 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v77, 8uLL)), vshlq_n_s32(vmovl_high_u16(v68), 0x18uLL)), v92.val[0]);
    v79 = vorrq_s8(vorrq_s8(vorrq_s8(v74, vshll_n_u16(*v77.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v68.i8), 0x18uLL)), v92.val[3]);
    v80 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v76, 8uLL)), vshlq_n_s32(vmovl_high_u16(v69), 0x18uLL)), v92.val[1]);
    v81 = vorrq_s8(vorrq_s8(vorrq_s8(v73, vshll_n_u16(*v76.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v69.i8), 0x18uLL)), v92.val[2]);
    v92.val[0] = veorq_s8(vandq_s8(v78, v88), (*v92.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v92.val[3] = veorq_s8(vandq_s8(v79, v88), (*&v92.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v92.val[1] = veorq_s8(vandq_s8(v80, v88), (*&v92.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v92.val[2] = veorq_s8(vandq_s8(v81, v88), (*&v92.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v92.val[0] = vaddq_s32(vsubq_s32(v78, vaddq_s32(v92.val[0], v92.val[0])), v89);
    v92.val[3] = vaddq_s32(vsubq_s32(v79, vaddq_s32(v92.val[3], v92.val[3])), v89);
    v92.val[1] = vaddq_s32(vsubq_s32(v80, vaddq_s32(v92.val[1], v92.val[1])), v89);
    v92.val[2] = vaddq_s32(vsubq_s32(v81, vaddq_s32(v92.val[2], v92.val[2])), v89);
    LODWORD(a27) = v92.val[2].i32[0];
    *(&a27 + 4) = vextq_s8(v92.val[2], v92.val[1], 4uLL);
    *(&a28 + 4) = vextq_s8(v92.val[1], v92.val[3], 4uLL);
    *(&a29 + 4) = vextq_s8(v92.val[3], v92.val[0], 4uLL);
    *(&a30 + 4) = vextq_s8(v92.val[0], v92.val[0], 4uLL).u64[0];
    HIDWORD(a30) = v92.val[0].i32[3];
    v82 = &a27 + v31 + 17810076;
    v83 = *(v82 - 16);
    v84 = *(v82 - 14) ^ v83;
    *v82 = v33 ^ __ROR4__(*(v82 - 8) ^ *(v82 - 3) ^ v84, 31);
    v85 = *(v34 + 8 * ((2608 * (((v32 + 1898) ^ 0x8DA) == 17810077)) ^ 0x2EAu));
    HIDWORD(v91) = HIDWORD(a14) - 857188539;
    return v85(v85, v84, v83, a20, v86, 202, (a8 - 241233931) & 0x970D7CDB, a8, a9, a10, a11, a12, a13, a14, a15, a16, v90, v91, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    if (v36 != 1)
    {
      JUMPOUT(0x1A23DE810);
    }

    v93 = vld4q_s8(v86);
    v37 = a3 + a8 + 2381;
    v38 = veorq_s8(v93.val[0], v87);
    v39 = vmovl_high_u8(v38);
    v40 = vmovl_high_u16(v39);
    v41 = vmovl_u16(*v39.i8);
    v42 = vmovl_u8(*v38.i8);
    v43 = vmovl_high_u16(v42);
    v44 = vmovl_u16(*v42.i8);
    v45 = veorq_s8(v93.val[1], v87);
    v46 = vmovl_u8(*v45.i8);
    v47 = vmovl_high_u8(v45);
    v48 = veorq_s8(v93.val[2], v87);
    _Q25 = vmovl_u8(*v48.i8);
    _Q24 = vmovl_high_u8(v48);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v93.val[0] = veorq_s8(v93.val[3], v87);
    v93.val[1] = vmovl_u8(*v93.val[0].i8);
    v93.val[2] = vmovl_u16(*v93.val[1].i8);
    v93.val[0] = vmovl_high_u8(v93.val[0]);
    v93.val[3] = vmovl_u16(*v93.val[0].i8);
    v93.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v93.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v47, 8uLL), v40));
    v93.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v93.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v47.i8, 8uLL), v41));
    v93.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v93.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v46, 8uLL), v43));
    v93.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v93.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v46.i8, 8uLL), v44));
    v57 = veorq_s8(vandq_s8(v93.val[0], v88), (*&v40 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v58 = veorq_s8(vandq_s8(v93.val[3], v88), (*&v41 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v59 = veorq_s8(vandq_s8(v93.val[1], v88), (*&v43 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v60 = veorq_s8(vandq_s8(v93.val[2], v88), (*&v44 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v61 = vaddq_s32(vsubq_s32(v93.val[0], vaddq_s32(v57, v57)), v89);
    v62 = vaddq_s32(vsubq_s32(v93.val[3], vaddq_s32(v58, v58)), v89);
    v63 = vaddq_s32(vsubq_s32(v93.val[1], vaddq_s32(v59, v59)), v89);
    v64 = vaddq_s32(vsubq_s32(v93.val[2], vaddq_s32(v60, v60)), v89);
    LODWORD(a27) = v64.i32[0];
    *(&a27 + 4) = vextq_s8(v64, v63, 4uLL);
    *(&a28 + 4) = vextq_s8(v63, v62, 4uLL);
    *(&a29 + 4) = vextq_s8(v62, v61, 4uLL);
    HIDWORD(a30) = v61.i32[3];
    v65 = *(&off_1F14948E0 + (v37 ^ 0x9E3));
    *(&a30 + 4) = vextq_s8(v61, v61, 4uLL).u64[0];
    return (*(v34 + 8 * ((57 * (a20 + 1 == v32)) ^ v37)))(v65, *(&off_1F14948E0 + (v37 ^ 0x95F)) - 12);
  }
}

uint64_t sub_1A23CD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = v15 ^ 0x521;
  v20 = ((v16 - 1491790632) ^ 0xA71514D8) < 8 || a15 - a1 < ((v18 + 446621389) & 0xE5611ED3 ^ 0xA72uLL);
  return (*(v17 + 8 * ((118 * (((v18 - 50) ^ v20) & 1)) ^ v18)))();
}

void sub_1A23CD868(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (143681137 * ((((2 * a1) | 0xF4077DB0) - a1 - 2047065816) ^ 0x1B390990));
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1A23CD998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, unsigned int a19, int a20, int a21, uint64_t a22, char *a23)
{
  v26 = 143681137 * (&a18 ^ 0x613AB748);
  a20 = v26 ^ 0x499DED5A;
  a22 = a14;
  a23 = &a16;
  a18 = v26 ^ 0x6163ACC5;
  a19 = v26 + v23 + 1421511572;
  v27 = (*(v25 + 8 * (v23 ^ 0x8BB)))(&a18);
  return (*(v25 + 8 * ((31 * (a21 == v24 + (v23 ^ 0x354) + 13 * (v23 ^ 0x3E7) - 1211)) ^ v23)))(v27);
}

uint64_t sub_1A23CDA50()
{
  *(v2 - 128) = (v1 - 398) ^ (50899313 * (((((v2 - 128) | 0xD82079B4) ^ 0xFFFFFFFE) - (~(v2 - 128) | 0x27DF864B)) ^ 0xD14AC31));
  *(v2 - 112) = &v5;
  *(v2 - 120) = v4;
  return (*(v0 + 8 * (v1 + 839)))(v2 - 128);
}

uint64_t sub_1A23CDAF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = v2;
  *(result + 24) = -1863312128;
  return result;
}

uint64_t sub_1A23CDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, char *a17, int a18, char a19, char *a20, char *a21, unsigned int a22, unsigned int a23, char *a24)
{
  a24 = &a14;
  a23 = (v25 + 68670971) ^ (1037613739 * (((&a20 | 0x15A80E1A) - (&a20 & 0x15A80E1A)) ^ 0xC4AA2365));
  a20 = &a16;
  a21 = a17;
  (*(v27 + 8 * (v25 ^ 0x892)))(&a20);
  a21 = &a19;
  a22 = (v25 - 69) ^ (((2 * (&a20 & 0x51ED1ED0) - &a20 + 772989228) ^ 0x4F285664) * v26);
  a24 = a17;
  (*(v27 + 8 * (v25 ^ 0x8D8)))(&a20);
  a21 = a17;
  LODWORD(a20) = v25 - 1556366573 * (((&a20 | 0x2F00B785) - (&a20 & 0x2F00B785)) ^ 0x4BE4946F) + 1795;
  v28 = (*(v27 + 8 * (v25 + 1914)))(&a20);
  return (*(v27 + 8 * (((HIDWORD(a20) == v24 + v25 - 184 - 778) * (((v25 - 1669804997) & 0x133AF) + 1452)) ^ v25)))(v28);
}

uint64_t sub_1A23CDD28@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x254] + a2 + 72);
  v7 = (((v3 ^ 0x383) - 637845543) & (2 * a2)) + (a2 ^ 0xECFD9FFE) + v2;
  *(a1 + v7) = v6 ^ 0xF9;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0x70) - ((v6 >> 7) & 0x12) - 119;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0xD5) - 2 * ((BYTE2(v6) ^ 0xD5) & 0xB ^ BYTE2(v6) & 2) - 119;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x3B) - ((2 * (HIBYTE(v6) ^ 0x3B)) & 0x12) - 119;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x2B0])) * v4) ^ v3)))();
}

uint64_t sub_1A23CDDFC@<X0>(unsigned int a1@<W2>, unsigned int a2@<W8>)
{
  v7 = *(v6 + v2 * v5 + 36);
  v9 = v7 != v3 && ((a2 + 1886374548) & 0x8F902FD5) + 978887560 + v7 - 852 < a1;
  return (*(v4 + 8 * (((((a2 - 804388158) ^ v9) & 1) == 0) ^ a2)))();
}

uint64_t sub_1A23CDE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, char a17, int *a18, unsigned int a19, uint64_t a20)
{
  a18 = &a15;
  a20 = a13;
  a19 = (v21 - 960) ^ ((&a17 ^ 0x613AB748) * v22);
  v24 = (*(v20 + 8 * (v21 + 989)))(&a17);
  return (*(v20 + 8 * ((3843 * (a15 == v21 - v23 - 1176347079)) ^ v21)))(v24);
}

uint64_t sub_1A23CDF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v34 = (v30 + 2046770577) & 0x8600BFEF;
  *(*(v32 + 96) + 1428) = 32;
  v35 = 1556366573 * ((v33 - 128) ^ 0x64E423EA);
  *(v33 - 120) = &a21;
  *(v33 - 124) = (((v34 + 1512567400) & 0xA5D809FE ^ 0xD9C232AD) - 3) ^ v35;
  *(v33 - 112) = v34 - v35 - 875955351;
  v36 = (*(v31 + 8 * (v34 + 1559)))(v33 - 128);
  return (*(v31 + 8 * ((458 * (v34 - 1082 + *v32 + (a30 & 0x3F) - 413892896 < 0xFFFFFFC0)) ^ v34)))(v36);
}

void sub_1A23CE284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47)
{
  STACK[0x2B0] = STACK[0x2B8];
  STACK[0x428] = a47;
  JUMPOUT(0x1A23B5B18);
}

uint64_t sub_1A23CE2C4@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(v63) = v54 ^ 0xC21;
  LODWORD(v63) = (v54 ^ 0xC21) - v57;
  *a3 = a1;
  v60 = (*(v59 + v55 * v58 + 8))(a4);
  return (*(v56 + 8 * (((v60 + 1863271989 - ((2 * v60) & 0xDE1E8C6A) == v63 - 1776246457) * (HIDWORD(v63) + 1991)) ^ HIDWORD(v63))))(v60, v61, 2147483652, 3126371208, 3119620943, 2957882311, 2802933832, 1863271989, v63, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1A23CE3B4()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v0 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v5 + 8 * ((123 * (v7 == 0)) ^ (v4 - 999))))();
}

uint64_t sub_1A23CE464@<X0>(char a1@<W0>, char a2@<W6>, char a3@<W8>)
{
  v8 = a3 + 2;
  v9 = (v5 - 2);
  *v9 = (v8 + ((v3 - 31) ^ a2)) * (v8 ^ a1);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v7 + 8 * (((v4 == -2) * v6) ^ v3)))();
}

uint64_t sub_1A23CE614@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 ^ 0x131) - 188)) ^ (v3 + 575))))();
}

void sub_1A23CE6C0(uint64_t a1)
{
  v1 = *(a1 + 24) + 1785193651 * (((a1 | 0xB63BF486) - a1 + (a1 & 0x49C40B79)) ^ 0x358B7E90);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23CE774@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0xBE0;
  *v1 = v4 ^ 0x37 ^ (v2 - 468) ^ v9;
  v5 = v4 ^ 0x70D;
  v11 = v7;
  v10 = ((v4 ^ 0x37) + 1720) ^ (50899313 * (((&v10 | 0x7CD954BB) - &v10 + (&v10 & 0x8326AB40)) ^ 0x56127EC1));
  (*(v3 + 8 * (v4 ^ 0x920)))(&v10);
  v11 = v8;
  v10 = (v5 + 926) ^ (50899313 * (((&v10 | 0x6CDF287A) - (&v10 & 0x6CDF287A)) ^ 0x46140200));
  (*(v3 + 8 * (v5 + 1493)))(&v10);
  return v2 ^ 0x6F0F4635u;
}

uint64_t sub_1A23CE8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1564307779 * ((v18 - 1841274603 - 2 * ((v18 - 128) & 0x92406195)) ^ 0x54DAD86);
  *(v18 - 128) = (v15 - 309 + (v17 ^ 0xCFFFDCFF) + ((2 * v17) & 0x9FFFB9FE) + 2104801270) ^ v19;
  *(v18 - 120) = &a15;
  *(v18 - 112) = v15 - v19 - 1053;
  v20 = (*(v16 + 8 * (v15 ^ 0xE01)))(v18 - 128);
  return sub_1A23CE958(v20);
}

uint64_t sub_1A23CE958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 128) = v17 + ((v18 - 128 + v16 - 2 * ((v18 - 128) & v16)) ^ 0xDF6B1800) * v15 + 1139;
  *(v18 - 120) = &a13;
  *(v18 - 112) = a12;
  v19 = (*(v14 + 8 * (v17 ^ 0xF18)))(v18 - 128);
  return (*(v14 + 8 * ((((v17 ^ (*(v18 - 104) > (v13 + 1380))) & 1) * ((16 * v17) ^ 0x4046)) ^ v17)))(v19);
}

uint64_t sub_1A23CE9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, unsigned int a19)
{
  v21 = ((85 * (a8 ^ (a8 - 9))) ^ 0x46C1A473) + v20;
  v22 = v21 < (a7 ^ 0x46C1A3DFu);
  v23 = v21 > a19;
  if (a19 < a18 != v22)
  {
    v23 = v22;
  }

  return (*(v19 + 8 * (((8 * v23) | (32 * v23)) ^ (a3 + a8 + 2140))))();
}

uint64_t sub_1A23CEADC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v4 - 703291134) & 0x826915F6 ^ 0x5D6)) ^ (a2 + v4 + 941))))();
}

uint64_t sub_1A23CEB28()
{
  *(v3 - 184) = &STACK[0x434];
  *(v3 - 188) = v1 - 210068311 * ((((v3 - 192) | 0x6F4DE587) - ((v3 - 192) | 0x90B21A78) - 1867376008) ^ 0xFD9BDA23) - 1501;
  *(v3 - 176) = (25431 * ((((v3 - 192) | 0xE587) - ((v3 - 192) | 0x1A78) + 6776) ^ 0xDA23)) ^ 0x354B;
  v4 = (*(v2 + 8 * (v1 + 1064)))(v3 - 192);
  v5 = LOBYTE(STACK[0x437]);
  v6 = (LOBYTE(STACK[0x435]) << (v1 + 28)) | (LOBYTE(STACK[0x434]) << 24) | (LOBYTE(STACK[0x436]) << 8) | v5;
  v7 = *(v2 + 8 * ((500 * ((STACK[0x414] & (v0 ^ 0x2C4)) == 0)) ^ v1));
  LODWORD(STACK[0x304]) = v6 - 2 * (v6 & 0x6BC39C7C ^ v5 & 0x10) + 1807981676;
  return v7(v4);
}

void sub_1A23CECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, int *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = 4 * (v56 - v55 + v57);
  v60 = 757077909 * ((*(*a46 + (*a50 & 0xFFFFFFFFF6C498D8)) ^ (a54 + v59)) & (((v58 - 714) | 0x89) + 2147483508));
  v61 = v60 ^ HIWORD(v60);
  v62 = 757077909 * v61;
  v63 = 4 * ((757077909 * v61) >> 24);
  *(a55 + v59) = *(a54 + v59) ^ 0x7F54C1BC ^ ((((v58 - 713) ^ v56) & v56) >> (__clz((v58 - 713) ^ v56 | 1) ^ 0x1F)) & 1 ^ (*(a55 + v59) + 2136261052 - ((2 * *(a55 + v59)) & 0xFEA98378)) ^ *(*(&off_1F14948E0 + a43) + v63 - 4) ^ *(*(&off_1F14948E0 + a42) + HIBYTE(v62) + 3) ^ *(*(&off_1F14948E0 + v58 - 531) + v63) ^ (395640832 * v61) ^ v62 ^ (-857024511 * HIBYTE(v62));
  JUMPOUT(0x1A23CEE14);
}

uint64_t sub_1A23CEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 1564307779 * ((((v20 - 128) | 0x6DA9E98D) - ((v20 - 128) & 0x6DA9E98D)) ^ 0xFAA4259E);
  *(v20 - 112) = v17 - v21 - 162;
  *(v20 - 120) = &a17;
  *(v20 - 128) = (((2 * v19) & 0xBFFB39FC) - 310969348 + ((((v17 - 409) | 0x280) + 1610455640) ^ v19)) ^ v21;
  v22 = (*(v18 + 8 * (v17 ^ 0xA84)))(v20 - 128);
  return sub_1A23CEF08(v22);
}

uint64_t sub_1A23CEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 128) = v22 + ((v23 - 128) ^ 0x64E423EA) * v20 + 1490;
  *(v23 - 120) = &a19;
  *(v23 - 112) = a16;
  v24 = (*(v19 + 8 * (v22 ^ 0x9BB)))(v23 - 128);
  return (*(v19 + 8 * ((117 * (((v22 + 115) ^ (*(v23 - 104) > v21 + ((v22 - 1527717545) & 0x5B0F1FDFu) + 60)) & 1)) ^ v22)))(v24);
}

uint64_t sub_1A23CF068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, int a21, int a22, uint64_t a23, char *a24)
{
  v26 = 143681137 * ((&a19 & 0xEAA07E62 | ~(&a19 | 0xEAA07E62)) ^ 0x746536D5);
  a23 = a16;
  a24 = &a17;
  a20 = v26 + a9 + 1421511261;
  a21 = v26 ^ 0x314DA73B;
  a19 = v26 ^ 0x6163ACC5;
  v27 = (*(v25 + 8 * (a9 ^ 0xFF2)))(&a19);
  return (*(v25 + 8 * (((a22 == v24) * ((((a9 - 211029241) & 0x40D3F) + 103) ^ 0xBEB)) ^ a9)))(v27);
}

uint64_t sub_1A23CF188@<X0>(uint64_t a1@<X8>)
{
  v7 = v5 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 != (v4 ^ 0x663)) * v6) ^ v3)))();
}

uint64_t sub_1A23CF1C0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = v3 + 1279045081;
  v6 = v2 - 434309210 + (v4 ^ 0xF0B);
  v7 = v3 > 0xB3C35226;
  v8 = v6 < 0x4C3CADD9;
  v9 = v5 < v6;
  if (v7 != v8)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 + 1;
  }

  *(result + 12) = v10;
  return result;
}

void jmoibFLZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23CF3B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, char *a15, uint64_t a16, char a17)
{
  v25 = (a1 - 305) | 0xA90;
  v26 = ((((v24 - 144) | 0x28E9F18) - (v24 - 144) + ((v24 - 144) & 0xFD7160E0)) ^ 0x666ABCF2) * v17;
  *(v24 - 144) = &a9;
  *(v24 - 136) = v23;
  *(v24 - 128) = v26 + a1 + 1932;
  *(v24 - 120) = v18 + v26 + 228744260 + v25;
  (*(v19 + 8 * (a1 + 2574)))(v24 - 144);
  a14 = &a17;
  a15 = &a12;
  *(v24 - 144) = v20;
  *(v24 - 136) = &a14;
  *(v24 - 128) = (v25 - 1544) ^ (1564307779 * ((((2 * (v24 - 144)) | 0xF77528AC) - (v24 - 144) + 71658410) ^ 0x6CB75845));
  (*(v19 + 8 * (v25 + 138)))(v24 - 144);
  *(v24 - 144) = v25 - 843532609 * ((((v24 - 144) | 0x4F1DF3BD) + (~(v24 - 144) | 0xB0E20C42)) ^ 0x5FA184E2) - 1079;
  *(v24 - 112) = &a14;
  *(v24 - 104) = v20;
  *(v24 - 128) = v22;
  *(v24 - 120) = &a7;
  *(v24 - 136) = &a9;
  v27 = (*(v19 + 8 * (v25 ^ 0x113)))(v24 - 144);
  return (*(v19 + 8 * ((60 * (((v21 == 0) ^ (v25 - 30)) & 1)) ^ v25)))(v27);
}

uint64_t sub_1A23CF624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = v28 ^ 0x3C5;
  v32 = LODWORD(STACK[0x43C]) ^ 0x81FFEDFF;
  v33 = (2 * LODWORD(STACK[0x43C])) & 0x3FFDBFE;
  v34 = 1380333833 * ((((v30 - 192) | 0xB599B1F7) - ((v30 - 192) & 0xB599B1F7)) ^ 0xBCB1A7D);
  *(v30 - 192) = &STACK[0x3B4];
  *(v30 - 160) = a28;
  *(v30 - 184) = (v28 ^ 0x3C5) - v34 + 1182;
  *(v30 - 180) = v32 - v34 + v33 + (((((v28 ^ 0x3C5) - 631) | 0x695) - 1001) ^ 0x7E773DFB);
  *(v30 - 176) = &STACK[0x2E8];
  *(v30 - 168) = (404137529 * a25 - 676351911) ^ v34;
  v35 = (*(v29 + 8 * ((v28 ^ 0x3C5) + 2277)))(v30 - 192);
  return (*(v29 + 8 * ((2294 * (*(v30 - 164) == 1863271989)) ^ v31)))(v35);
}

uint64_t sub_1A23CF88C@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - a1;
  *(v8 + 91) = ((a1 + v2) ^ v3) * (a1 + v2 + 17);
  *(v8 + 90) = ((a1 + v2) ^ 0xBB) * (a1 + v2 + 18);
  return (*(v7 + 8 * (((v5 + a1 == 92) * v6) ^ v1)))();
}

void sub_1A23D0598(uint64_t a1)
{
  v1 = *(a1 + 28) + 143681137 * ((-751875376 - (a1 ^ 0xD366D90D | 0xD32F4AD0) + (a1 ^ 0xD366D90D | 0x2CD0B52F)) ^ 0x9E8CDB6A);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23D0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  STACK[0x2D8] = *(v59 + 8 * v55);
  STACK[0x478] = v56;
  STACK[0x480] = v56;
  v75 = STACK[0x218];
  v76 = &STACK[0x490] + STACK[0x218];
  STACK[0x488] = v76;
  STACK[0x218] = v75 + 320;
  v77 = *(v56 + 72);
  LODWORD(STACK[0x388]) = v77;
  v78 = *(v56 + 76);
  v79 = *(v56 + 80);
  LODWORD(STACK[0x31C]) = v79;
  v80 = *(v56 + 84);
  LODWORD(STACK[0x224]) = v80;
  v81 = *(v56 + 96);
  if (v81 == 2)
  {
    LODWORD(STACK[0x41C]) = 2033525580;
    return (*(v59 + 8 * ((((v57 + 2033525580) < 0x40) * ((3 * a49 - 659) ^ 0x46E ^ ((3 * a49 - 659) | 0x28D) ^ 0xA59)) ^ (3 * a49))))(a1, v77, a3, a4, v80, 3291123599, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
  }

  else if (v81 == 1)
  {
    v82 = *(v56 + (v57 + 2033525580)) ^ v60;
    v83 = ((*(v56 + (v57 + 2033525582)) ^ v60) << 16) | ((*(v56 + (v57 + 2033525583)) ^ v60) << 24) | v82 & 0xFFFF00FF | ((((a7 + 53) | 0xAA) ^ *(v56 + (v57 + 2033525581)) ^ 0x22) << 8);
    *&v76[4 * ((((2 * ((((a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0) << 16) & 0x69820000 ^ (a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0 ^ ((((a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0) << 16) ^ 0x4A5C0000) & 0x167E1400)) ^ 0x7935234C) >> 2) ^ 0x3173D203)] = v83 + a8 - 2 * (v83 & (a8 + 10) ^ v82 & 0xA);
    return (*(v59 + 8 * ((23 * ((v57 + 2033525584) < 0x40)) ^ (a7 + 1854))))(2033525596, v77, 1770127360, 2033525580, v80, v79, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
  }

  else
  {
    v85 = v78;
    v61 = (((v77 ^ 0xE74039BF) + 415221313) ^ ((v77 ^ 0x5DA67676) - 1571190390) ^ ((v77 ^ 0x81333FB9) + 2127347783)) + (((*(v56 + 72) ^ v58) - 1079960127) ^ ((*(v56 + 72) ^ 0xE6A67AB1) + 425297231) ^ ((*(v56 + 72) ^ 0x9D2DE8FE) + 1657935618)) - 1262223742;
    v62 = (v61 ^ 0xD2C4DA1F) & (2 * (v61 & 0xC2E6E25E)) ^ v61 & 0xC2E6E25E;
    v63 = ((2 * (v61 ^ 0xD70C9A2B)) ^ 0x2BD4F0EA) & (v61 ^ 0xD70C9A2B) ^ (2 * (v61 ^ 0xD70C9A2B)) & 0x15EA7874;
    v64 = v63 ^ 0x142A0815;
    v65 = (v63 ^ 0x1801060) & (4 * v62) ^ v62;
    v66 = ((4 * v64) ^ 0x57A9E1D4) & v64 ^ (4 * v64) & 0x15EA7874;
    v67 = (v66 ^ 0x15A86040) & (16 * v65) ^ v65;
    v68 = ((16 * (v66 ^ 0x421821)) ^ 0x5EA78750) & (v66 ^ 0x421821) ^ (16 * (v66 ^ 0x421821)) & 0x15EA7870;
    v69 = v67 ^ 0x15EA7875 ^ (v68 ^ 0x14A20000) & (v67 << 8);
    v70 = v61 ^ (2 * ((v69 << 16) & 0x15EA0000 ^ v69 ^ ((v69 << 16) ^ 0x78750000) & (((v68 ^ 0x1487825) << 8) & 0x15EA0000 ^ 0x15820000 ^ (((v68 ^ 0x1487825) << 8) ^ 0x6A780000) & (v68 ^ 0x1487825)))) ^ 0xF22762C4;
    v71 = (((v85 ^ 0x36B91E57) - 918101591) ^ ((v85 ^ 0x2DE400C8) - 769917128) ^ ((v85 ^ 0x20886EEF) - 545812207)) + (((*(v56 + 76) ^ 0x4F963BE8) - 1335245800) ^ ((*(v56 + 76) ^ 0xA159822E) + 1587969490) ^ ((*(v56 + 76) ^ 0xD51AC9B6) + 719664714)) - 1362776194;
    *(v56 + 72) = v70;
    *(v56 + 76) = v71 ^ ((v71 ^ 0xBBAF88E1) + 1934276993) ^ ((v71 ^ 0xD75A5453) + 532636979) ^ ((v71 ^ 0xA41045D3) + 1828025523) ^ ((v71 ^ 0xFFFF57FF) + 924477087) ^ 0xCCFBEEE;
    v72 = STACK[0x478];
    v73 = (((LODWORD(STACK[0x31C]) ^ 0xF8A2ECB3) + 123540301) ^ ((LODWORD(STACK[0x31C]) ^ 0xF02C4D3D) + 265532099) ^ ((LODWORD(STACK[0x31C]) ^ 0x335BD1FE) - 861655550)) + 2107350099 + (((*(STACK[0x478] + 80) ^ 0x48B9C98D) - 1220135309) ^ ((*(STACK[0x478] + 80) ^ 0x9A810544) + 1702820540) ^ ((*(STACK[0x478] + 80) ^ 0xE9EDBCB9) + 370295623));
    v74 = (((LODWORD(STACK[0x224]) ^ 0xDA28B773) + 634865805) ^ ((LODWORD(STACK[0x224]) ^ 0xC92371C6) + 920423994) ^ ((LODWORD(STACK[0x224]) ^ 0x28DEB6C5) - 685684421)) + 2013254183 + (((*(STACK[0x478] + 84) ^ 0xE4A55A6F) + 458925457) ^ ((*(STACK[0x478] + 84) ^ 0xC64E1F65) + 967958683) ^ ((*(STACK[0x478] + 84) ^ 0x193E357A) - 423507322));
    *(v72 + 80) = v73 ^ ((v73 ^ 0xB966F64E) + 1131000515) ^ ((v73 ^ 0x870F8F78) + 2097204213) ^ ((v73 ^ 0xC4663D2A) + 1047099815) ^ ((v73 ^ 0xFFFFFF6F) + 99662820) ^ 0x3E25CB03;
    *(v72 + 84) = v74 ^ ((v74 ^ 0xA0FFEA59) + 1599399138) ^ ((v74 ^ 0x4F99D2CB) - 1338844044) ^ ((v74 ^ 0x30CDB62A) - 815351661) ^ ((v74 ^ 0xDFFF7FFF) + 542404936) ^ 0x3B818137;
    STACK[0x218] -= 320;
    return (STACK[0x2D8])(a1, v77, a3, a4, v80, v79, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
  }
}

uint64_t sub_1A23D08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, unsigned int a14, char *a15, char *a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 1785193651 * (((&a14 | 0xFF9FC1E0) - (&a14 & 0xFF9FC1E0)) ^ 0x7C2F4BF6);
  a18 = v19;
  a19 = v22 - v23 + 610;
  a14 = 1893362745 - v23;
  a15 = &a13;
  a16 = &a10;
  v24 = (*(v21 + 8 * (v22 + 2684)))(&a14);
  return (*(v21 + 8 * (((*(v19 + 24) == v20) * (((v22 ^ 0x3CB) + 656) ^ 0x606)) ^ v22)))(v24);
}

uint64_t sub_1A23D09A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 57;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_1A23D0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a15;
  a19 = (&a17 ^ 0x92D63FA4) * v19 + 789;
  v21 = (*(v20 + 22888))(&a17);
  return (*(v20 + 8 * ((123 * (a18 == 1863271989)) ^ 0x85u)))(v21);
}

uint64_t sub_1A23D0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (a4 + v5 - 16);
  v10 = (v4 + v5 - 16);
  v11 = *v10;
  *(v9 - 1) = *(v10 - 1);
  *v9 = v11;
  return (*(v8 + 8 * ((((v5 & 0xFFFFFFE0) != 32) * (((v7 + ((v6 + 570540056) | 0x80600981) + 1056) | 0x340) - 1637)) ^ (v7 + ((v6 + 570540056) | 0x80600981) + 1403))))();
}

uint64_t sub_1A23D0BFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, unsigned int a43)
{
  v47 = v45[396] ^ (((((v43 + 17077401) | 0x206A0009) ^ 0xA16E984D) & v45[623] | *v45 & 0x7FFFFFFE) >> 1);
  v45[623] = (v47 + v44 - (a4 & (2 * v47))) ^ *(a5 + 4 * (*v45 & 1));
  return (*(v46 + 8 * ((2519 * (a43 > 0x26F)) ^ v43)))();
}

uint64_t sub_1A23D0D90@<X0>(uint64_t a1@<X3>, unsigned __int8 a2@<W8>)
{
  v9 = v2 + 8;
  *(v5 + v9) = vadd_s8(vadd_s8(*(a1 + v9), v8), vmvn_s8(vand_s8(vadd_s8(*(a1 + v9), *(a1 + v9)), v7)));
  return (*(v6 + 8 * ((125 * ((a2 ^ (v4 == v9)) & 1)) ^ v3)))();
}

uint64_t sub_1A23D0DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(STACK[0x334]) = 2;
  LODWORD(STACK[0x2A4]) = 0;
  LODWORD(STACK[0x2F4]) = 0;
  return (*(v61 + 8 * (((((a9 ^ 0x4B2) & v60) == 0) * (179 * (a9 ^ 0x4B4) - 624)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1A23D0E48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*(a1 + 24) + (v5 + a3)) = (v9 ^ v7) - ((2 * (v9 ^ v7)) & 0x12) - 119;
  return (*(v4 + 8 * ((23 * (((a2 - 592258582) & 0x234D23AF ^ 0xFFFFFCD8) + v5 == v6)) ^ a2)))();
}

uint64_t sub_1A23D0E64()
{
  v3 = (*(v2 + 8 * (v1 + 587)))(1576, 0x105004009637391);
  STACK[0x370] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 629) ^ 0xFFFFF96E) + v0)) ^ v1)))();
}

uint64_t sub_1A23D0EC4()
{
  v3 = *(v1 + 68);
  *(v1 + (v3 & 0x3F)) = 9;
  return (*(v2 + 8 * ((2463 * ((v3 & 0x3Fu) > 0x37)) ^ v0 ^ 0x420)))();
}

uint64_t sub_1A23D10C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x278] = &STACK[0x490] + v64 + 2176;
  STACK[0x2C0] = &STACK[0x490] + v64 + 2304;
  STACK[0x218] = v64 + 2432;
  LODWORD(STACK[0x284]) = v66;
  return (*(v65 + 8 * (((*a35 == 0) * (213 * (a9 ^ 0x7F1) + 3487)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1A23D116C(int8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  *(a4 + (v12 ^ a6 ^ a3) + v7) = veor_s8(*(v10 + (v12 ^ a6 ^ a3) + v7), a1);
  return (*(v11 + 8 * (((a5 == v12) * a7) ^ v9)))();
}

void sub_1A23D12C4(uint64_t a1)
{
  v2 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094858) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094858) ^ 0x43))] ^ 0x53]) - 53);
  v3 = *(v2 - 4);
  v4 = off_1F1494A30 - 4;
  v5 = off_1F1494AC8 - 12;
  v6 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + (11 * ((qword_1EB094620 + v3) ^ 0x43)) - 4) ^ 0x73u) - 12) ^ (11 * ((qword_1EB094620 + v3) ^ 0x43))) + 48);
  v7 = (*(v6 - 4) ^ v3) - &v11;
  v8 = (1922045707 * v7) ^ 0x21D37FB25A3D4D43;
  v9 = 1922045707 * (v7 ^ 0x21D37FB25A3D4D43);
  *(v2 - 4) = v8;
  *(v6 - 4) = v9;
  LODWORD(v2) = 1922045707 * ((v9 + *(v2 - 4)) ^ 0x5A3D4D43);
  v10 = *(&off_1F14948E0 + ((11 * (dword_1EB094858 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A2739820[byte_1A2733420[(11 * (dword_1EB094858 ^ 0x43 ^ qword_1EB094620))] ^ 0x1B]) - 79) - 8;
  (*&v10[8 * (*(off_1F1494B60 + ((*off_1F1494B98)[v2] ^ 0xE6u) - 12) ^ v2) + 21776])(*(&off_1F14948E0 + (v2 ^ v5[v4[v2] ^ 0x7D]) + 4) - 4, sub_1A23FC000);
  __asm { BRAA            X10, X17 }
}

void gLg1CWr7p()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * (dword_1EB0947F0 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D410[byte_1A2739420[(11 * (dword_1EB0947F0 ^ 0x43 ^ qword_1EB094620))] ^ 0xB2]) + 60);
  v1 = *(&off_1F14948E0 + (*(off_1F1494D30 + (*(off_1F1494EC0 + (11 * ((qword_1EB094620 - *v0) ^ 0x43))) ^ 0x7Fu)) ^ (11 * ((qword_1EB094620 - *v0) ^ 0x43))) + 95);
  v2 = *(v1 - 4) - *v0 - &v4;
  *v0 = 1922045707 * v2 + 0x21D37FB25A3D4D43;
  *(v1 - 4) = 1922045707 * (v2 ^ 0x21D37FB25A3D4D43);
  v5[1] = (210068311 * ((v5 & 0x9515D828 | ~(v5 | 0x9515D828)) ^ 0xF83C1873)) ^ 0x48449A90;
  LOBYTE(v1) = 11 * ((*(v1 - 4) - *v0) ^ 0x43);
  v3 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB0947F0) ^ 0x43)) ^ byte_1A273D710[byte_1A2739720[(11 * ((qword_1EB094620 - dword_1EB0947F0) ^ 0x43))] ^ 0xBC]) + 130) - 8;
  (*&v3[8 * (*(off_1F1494B60 + ((*off_1F1494B98)[v1] ^ 0xABu) - 12) ^ v1) + 21032])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23D192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19)
{
  v21 = 143681137 * ((&a14 - 1955416496 - 2 * (&a14 & 0x8B72B650)) ^ 0xEA480118);
  a16 = v21 ^ 0x6C25E16C;
  a14 = v21 ^ 0x6163ACC5;
  a15 = v21 + a9 + 1421511934;
  a18 = a13;
  a19 = &a11;
  v22 = (*(v19 + 8 * (a9 ^ 0x955)))(&a14);
  return (*(v19 + 8 * ((2632 * (a17 == ((143 * (a9 ^ 0x24E)) ^ v20))) ^ a9)))(v22);
}

uint64_t sub_1A23D19F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, uint64_t a18, _BYTE *a19, int a20, char a21, unsigned int a22, int a23, char *a24, char *a25, _BYTE *a26, _BYTE *a27)
{
  a27 = a19;
  LODWORD(a26) = (v27 - 1178) ^ (843532609 * ((-308375795 - (&a22 | 0xED9E8F0D) + (&a22 | 0x126170F2)) ^ 0x2DD07AC));
  a24 = &a21;
  a25 = &a14;
  (*(v29 + 8 * (v27 + 1535)))(&a22);
  a24 = &a17;
  LODWORD(a25) = (v27 - 430) ^ (((2 * (&a22 & 0x7B4B2308) - &a22 + 78961908) ^ 0x658E6BBC) * v28);
  a26 = a19;
  (*(v29 + 8 * (v27 ^ 0xE31)))(&a22);
  a24 = a19;
  a22 = v27 - 1556366573 * ((&a22 - 1960882197 - 2 * (&a22 & 0x8B1F4FEB)) ^ 0xEFFB6C01) + 1434;
  v30 = (*(v29 + 8 * (v27 ^ 0xE17)))(&a22);
  return (*(v29 + 8 * ((617 * (a23 == ((v27 - 71) ^ 0xDBEE4483) - 1826552370)) ^ v27)))(v30);
}

uint64_t sub_1A23D1C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = (v17 + 470) ^ (50899313 * (((v19 - 136) & 0x396E129 | ~((v19 - 136) | 0x396E129)) ^ 0xD6A234AC));
  *(v19 - 128) = a16;
  *(v19 - 120) = v18;
  v20 = (*(v16 + 8 * (v17 + 1707)))(v19 - 136);
  return (*(v16 + 8 * ((957 * (a12 < 1)) ^ (v17 - 720))))(v20);
}

uint64_t sub_1A23D1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  v30 = 1388665877 * ((&a20 + 55968082 - 2 * (&a20 & 0x3560152)) ^ 0x8EFB63BE);
  a20 = v30 ^ (199880445 * v27 + 103127814);
  HIDWORD(a22) = v28 + 1620 + v30;
  a21 = a17;
  (*(v29 + 8 * (v28 ^ 0xF56)))(&a20);
  v31 = 1388665877 * ((2 * ((&a20 ^ 0xAE50F186) & 0x69AF095A) - (&a20 ^ 0xAE50F186) + 374404773) ^ 0x35AD65CF);
  a20 = (199880445 * (v26 >> (v28 - 93)) + 103127814) ^ v31;
  HIDWORD(a22) = v28 + 1620 + v31;
  a21 = a17;
  (*(v29 + 8 * (v28 ^ 0xF56)))(&a20);
  v32 = 1388665877 * (((&a20 | 0x1679B8AB) + (~&a20 | 0xE9864754)) ^ 0x9BD4DA46);
  HIDWORD(a22) = v28 + 1620 + v32;
  a21 = a17;
  a20 = ((v28 ^ 0x6259F7B) + 199880445 * v26) ^ v32;
  (*(v29 + 8 * (v28 ^ 0xF56)))(&a20);
  a21 = a17;
  a22 = v25;
  a23 = v28 - 1785193651 * ((1838453698 - (&a20 | 0x6D9493C2) + (&a20 | 0x926B6C3D)) ^ 0x11DBE62B) + 811;
  (*(v29 + 8 * (v28 + 1745)))(&a20);
  v33 = 1388665877 * ((((2 * &a20) | 0x62D5C140) - &a20 + 1318395744) ^ 0x3CC7824C);
  a20 = v33 ^ (199880445 * v24 + 103127814);
  a21 = a17;
  HIDWORD(a22) = v28 + 1620 + v33;
  (*(v29 + 8 * (v28 ^ 0xF56)))(&a20);
  v34 = 1388665877 * ((804441877 - (&a20 | 0x2FF2CF15) + (&a20 | 0xD00D30EA)) ^ 0x5DA05206);
  a20 = v34 ^ (199880445 * a14 + 103127814);
  HIDWORD(a22) = v28 + 1620 + v34;
  a21 = a17;
  v35 = (*(v29 + 8 * (v28 + 1710)))(&a20);
  return (*(v29 + 8 * ((153 * (a22 != v23)) ^ v28)))(v35);
}

uint64_t sub_1A23D2608@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v49 = 4 * v43;
  *a31 = a2;
  *(v44 + 396) = STACK[0x2E0];
  *(v44 + 400) = STACK[0x2D0];
  *(v44 + 408) = 413892651 - v46 + LODWORD(STACK[0x3E0]);
  *(v44 + 416) = a43 + (v46 - 164715840 + v43 - 991);
  v50 = v43;
  v51 = (*(v45 + v48 * a1 + 8))(a32);
  return (*(v47 + 8 * ((146 * (v51 + 1863271989 - ((v51 << (v49 ^ 0x39)) & 0xDE1E8C6A) == 1863271989)) ^ v50)))();
}

uint64_t sub_1A23D26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v15 = a2 - 8;
  v17.val[0].i64[0] = (v12 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v12 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v12 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v12 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v12 + v15 + 11) & 0xF;
  v17.val[2].i64[1] = (v12 + v15 + v9 - 127) & 0xF;
  v17.val[3].i64[0] = (v12 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v12 + v15) & 0xF ^ 8;
  *(a3 - 8 + v12) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 - 8 + v12), *(v8 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v10 - 2), *(v17.val[0].i64[0] + v11 - 5)))), a8), vmul_s8(*&vqtbl4q_s8(v17, a6), a7)));
  return (*(v14 + 8 * (((a1 != v15) * a5) ^ v13)))();
}

uint64_t sub_1A23D26F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t))
{
  v21 = (v17 + 1703734139) & 0x9A730D5F;
  v22 = &STACK[0x254] + a3;
  *v22 = v18;
  v22[1] = v19;
  v22[2] = v20;
  *(&STACK[0x254] + a3 + v21 - 28) = a1;
  return sub_1A23B6A8C(a2, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1A23D2744(uint64_t result)
{
  v1 = 1556366573 * ((-2 - ((~result | 0x850AD8AE7D3C0D61) + (result | 0x7AF5275182C3F29ELL))) ^ 0xAEF1A64D19D82E8BLL);
  v2 = *(result + 24) + v1;
  v3 = *(result + 8) - v1;
  v4 = v3 == v2;
  v5 = v3 >= v2;
  v6 = !v4;
  if (((*(result + 32) - v1) & 1) == 0)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = (result + 20);
  }

  else
  {
    v7 = result;
  }

  *(result + 16) = *(result + 40) ^ v1 ^ (*v7 - v1);
  return result;
}

uint64_t sub_1A23D28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v41 = v35 - 234;
  v42 = (v41 - 663) | 0x102;
  v43 = (*(v37 + 8 * (v41 + 2122)))(&a35, 0);
  v41 ^= 0x9BCu;
  (*(v37 + 8 * v41))(v43);
  *a29 = (*(v37 + 8 * v41))();
  v36[1] = *a29 + ((1664525 * (*v36 ^ (*v36 >> 30))) ^ v36[1]);
  v44 = 143681137 * ((0x8CAC52ECC0ED1A95 - (v39 | 0x8CAC52ECC0ED1A95) + a27) ^ 0x938562B05E285222);
  *(v38 + 16) = v44 ^ 2;
  *(v38 + 24) = 623 - v44;
  *(v40 - 120) = -143681137 * ((-1058202987 - (v39 | 0xC0ED1A95) + a27) ^ 0x5E285222);
  *(v40 - 116) = v44 + v42 + 1699922304;
  *(v40 - 112) = (v42 + 874971426) ^ v44;
  *(v40 - 152) = v42 + 874971451 - v44;
  *(v40 - 128) = ((v42 + 874971451) ^ 0x55) - v44;
  v45 = (*(v37 + 8 * (v42 + 2544)))(v40 - 152);
  return (*(v37 + 8 * *(v40 - 124)))(v45);
}

uint64_t sub_1A23D2A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v11 ^ 0xA43) - 814203739) & 0x3087C9BF ^ 0xC43)) ^ v11 ^ 0xA43)))();
}

void sub_1A23D2A98(uint64_t a1)
{
  v1 = *(a1 + 8) - 143681137 * ((a1 & 0x26E543E7 | ~(a1 | 0x26E543E7)) ^ 0xB8200B50);
  __asm { BRAA            X8, X17 }
}

void sub_1A23D2B28(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = v4 ^ 0x4C1;
  v10 = v4 ^ 0x43D;
  *(v8 - 104) = a1;
  *(v8 - 112) = (v4 ^ 0x4C1) + 169 - 843532609 * ((((v8 - 112) | 0x89CA3597) + (~(v8 - 112) | 0x7635CA68)) ^ 0x997642C8);
  (*(v6 + 8 * ((v4 ^ 0x4C1) + 2516)))(v8 - 112);
  v11 = *(v8 - 96);
  *(v8 - 112) = v9 + 169 - 843532609 * ((((v8 - 112) | 0xC101A57A) - (v8 - 112) + ((v8 - 112) & 0x3EFE5A80)) ^ 0xD1BDD224);
  *(v8 - 104) = v5;
  (*(v6 + 8 * (v9 ^ 0xA34)))(v8 - 112);
  v12 = (-911992041 * (*(v8 - 96) + v11) + *(v8 - 96) * v11 - 699016175) * v7;
  a4 = (v12 ^ 0xF3CF76BF) + 1593699711 + ((v10 - 409015368) & (2 * v12));
  *(v8 - 112) = (v9 + 1321) ^ (50899313 * ((1781399633 - ((v8 - 112) | 0x6A2E0051) + ((v8 - 112) | 0x95D1FFAE)) ^ 0xBF1AD5D4));
  *(v8 - 104) = v5;
  *(v8 - 96) = &a3;
  (*(v6 + 8 * (v9 + 2558)))(v8 - 112);
  JUMPOUT(0x1A23D2CA8);
}

uint64_t sub_1A23D2CE4@<X0>(int a1@<W1>, int a2@<W4>, int a3@<W8>)
{
  v6 = *(v5 + 48 * v3 + 36);
  v8 = v6 != a1 && v6 + a2 < ((13 * (a3 ^ 0x37A)) ^ 0x800009D9);
  return (*(v4 + 8 * ((v8 * (a3 - 949)) | a3)))();
}

void sub_1A23D2D84(uint64_t a1)
{
  v1 = *(a1 + 8) - 143681137 * ((2 * (a1 & 0x1970EFC8) - a1 + 1720651831) ^ 0x7B5A77F);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1A23D2EA0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((((v2 + 11) & 0x7C) - 106) & (2 * *(v3 + v5))) - 119;
  return (*(v4 + 8 * ((2511 * (v5 == 0)) ^ v2)))();
}

void sub_1A23D2EF0()
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x3E66DDC33E66DDC3;
  v3 = 205 * (v0 ^ 0x336) - 1844;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) | v3;
  *(v2 + 16) = 17927676;
  *(v2 + 20) = v5;
  *(v8 + 28) = v4;
}

uint64_t sub_1A23D2F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x218] - 432;
  STACK[0x218] = v67;
  v68 = STACK[0x248];
  if (LODWORD(STACK[0x248]) == 1491119424)
  {
    return (*(v65 + 8 * (((a5 - 688) * (v64 == v66)) ^ (a5 + 1345))))();
  }

  if (v68 == 1565756625)
  {
    return (*(v65 + 8 * ((202 * (v64 == v66 + ((a5 - 75) | 0x48) - 713)) ^ (a5 + 1345))))();
  }

  if (v68 == 1640393826)
  {
    *(a29 + 1560) = *STACK[0x270];
    *(a29 + 1552) = *STACK[0x368];
    v69 = STACK[0x3D8];
    *(*STACK[0x3D8] + 488) = *(a32 + 8);
    *(*v69 + 480) = *a32;
    JUMPOUT(0x1A23D30CCLL);
  }

  HIDWORD(v73) = a58;
  v72 = STACK[0x260];
  v70 = (a5 - 148253462) & 0x8D62A5F;
  STACK[0x218] = v67 + 432;
  LODWORD(STACK[0x400]) = -287824738;
  LODWORD(STACK[0x2E0]) = 2044285006;
  STACK[0x2D0] = 0;
  LODWORD(STACK[0x3E0]) = 164714449;
  LODWORD(a39) = -92408161;
  *(&STACK[0x490] + v67) = a4 + 729;
  LODWORD(a41) = -2111290825;
  LODWORD(a40) = a64 + 631770241;
  LODWORD(v73) = a64 - 1387112423;
  LODWORD(a43) = v70 - 1789627301;
  LODWORD(a45) = a64 - 1065448365;
  return (*(v65 + 8 * (v70 ^ 0xA35)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, &STACK[0x490] + v67 + 392, v72, a39, a40, a41, v73, a43, a44, a45);
}

uint64_t sub_1A23D3460@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v13 = *(v11 + 8);
  v14 = ((2 * (*(v13 + ((((v10 + a6) << 32) + a3) >> 30)) ^ v6)) << ~v9) | ((*(v13 + 4 * (((v10 + a6) << 32) >> ((a1 ^ a2) ^ a4))) ^ v6) >> v9);
  *(v13 + 4 * v10) = v14 + v6 - ((v8 + 391) & (2 * v14));
  return (*(v12 + 8 * (((v10 + 1 == v7) * a5) ^ a1)))();
}

uint64_t sub_1A23D34D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  v56 = a54 < 1937236647;
  v57 = v55 + ((v54 + 564487625) & 0xDE5A9F2B) - 1928605207;
  v58 = v56 ^ (v57 < 1937236647);
  v59 = v57 < a54;
  if (!v58)
  {
    v56 = v59;
  }

  return (*(a1 + 8 * ((v56 * (((v54 + 46) | 0x88) ^ 0x7E0)) ^ v54)))();
}

uint64_t sub_1A23D3554@<X0>(unsigned int *a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37)
{
  *v37 = a37 + 1;
  *(v39 - 112) = *a1 + a12;
  *(v39 - 128) = a12 ^ (a2 - 1214228849) ^ 0x80;
  *(v39 - 124) = 1 - a12;
  *(v39 - 144) = a11;
  v40 = a2 - 1214228849 - a12;
  *(v39 - 120) = v40;
  *(v39 - 136) = a12 + a2 + 1703326547;
  *(v39 - 132) = v40 - 181;
  v41 = (*(v38 + 8 * (a2 ^ 0x216E9379)))(v39 - 144);
  return (*(v38 + 8 * *(v39 - 104)))(v41);
}

uint64_t sub_1A23D35FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = *(v25 - 156);
  if (v26 == 2)
  {
    return (*(v24 + 8 * (a3 + a8 + (*(v25 - 160) == 0) * ((a3 + a8 + 1883) ^ 0x770) + 2046)))(132096, a10);
  }

  if (v26 == 1)
  {
    return (*(v24 + 8 * (((*(v25 - 160) == 0) * (((a8 + 1020134019) & 0x4BDE8E2F) - 2088)) ^ (a3 + a8 + 1878))))(132096);
  }

  v28 = 21 * ((a8 - 57) ^ 0x7753777A);
  *(v25 - 252 + (v28 ^ 0x48CLL)) = (&a24 ^ 0xBA) * (&a24 + 17);
  *(v25 - 162) = (&a24 ^ 0xBB) * (&a24 + 18);
  return (*(v24 + 8 * (v28 ^ 0xB)))();
}

uint64_t sub_1A23D3754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, unsigned int a21, unsigned int a22, int a23, uint64_t a24, char *a25)
{
  v28 = 143681137 * (&a20 ^ 0x613AB748);
  a24 = a15;
  a25 = &a16;
  a22 = v28 ^ 0xBBFCE86D;
  a20 = ((a11 ^ 0xE763FCED) + 2046799831 + ((a11 << (((v26 - 98) | 8) ^ 0x39)) & (v26 ^ 0x390))) ^ v28;
  a21 = v28 + v26 + 1421511599;
  v29 = (*(v27 + 8 * (v26 ^ 0x884)))(&a20);
  return (*(v27 + 8 * ((a23 == v25) | (4 * (a23 == v25)) | v26)))(v29);
}

uint64_t sub_1A23D3828(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  v56 = *(v54 + v53 * a3 + 36);
  v57 = ((9 * (v52 ^ 0xFF)) ^ 0x2961B260) + v56;
  v58 = (a52 < 265141420) ^ (v57 < 265141420);
  v59 = v57 < a52;
  if (v58)
  {
    v59 = a52 < 265141420;
  }

  v60 = v56 != a2 && v59;
  return (*(v55 + 8 * ((v60 * (v52 - 211)) ^ v52)))();
}

uint64_t sub_1A23D389C@<X0>(int a1@<W8>)
{
  v7 = *(v4 + 4 * (v3 - 1));
  *(v4 + 4 * v3) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v4 + 4 * v3)) - v3;
  v8 = ((~((v6 - 144) | 0x4B4BD1719DFDA935) + ((v6 - 144) & 0x4B4BD1719DFDA935)) ^ 0x9F4F506D06E67520) * v2;
  *(v6 - 144) = v8 + 623;
  *(v6 - 128) = (a1 + 1491700891) ^ v8;
  *(v6 - 124) = 1 - v8;
  *(v6 - 120) = a1 + 1491700813 - v8;
  *(v6 - 112) = v3 + 1 + v8;
  *(v6 - 136) = v8 + a1 + 1703326547;
  *(v6 - 132) = ((a1 + 1491700813) ^ 0x11) - v8;
  v9 = (*(v5 + 8 * (a1 ^ (v1 - 1236))))(v6 - 144);
  return (*(v5 + 8 * *(v6 - 104)))(v9);
}

void sub_1A23D3B30(int a1@<W8>)
{
  v3 = (v1 + 967831151) & 0x46500DCF;
  v4 = *(v2 + 4);
  if (v4 + 758291003 + v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = -a1;
  }

  *(v2 + 4) = v5 + v4;
  JUMPOUT(0x1A23D3B90);
}

uint64_t sub_1A23D3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, int a18, uint64_t a19, char *a20)
{
  v22 = 143681137 * (((~&a15 & 0xB71D6972) - (~&a15 | 0xB71D6973)) ^ 0xD627DE3B);
  a17 = v22 ^ 0xD7338107;
  a19 = a11;
  a20 = &a13;
  a15 = v22 ^ 0x6163ACC5;
  a16 = v22 + 1421512513;
  v23 = (*(v21 + 22704))(&a15);
  return (*(v21 + 8 * ((3784 * (a18 == v20)) ^ 0x762)))(v23);
}

uint64_t sub_1A23D3D78@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W8>)
{
  LODWORD(STACK[0x388]) = a3;
  LODWORD(STACK[0x31C]) = a2;
  LODWORD(STACK[0x224]) = v3;
  LODWORD(STACK[0x41C]) = 2033525644;
  v5 = STACK[0x478];
  v6 = (((a3 ^ 0xE74039BF) + 415221313) ^ ((a3 ^ 0x5DA67676) - 1571190390) ^ ((a3 ^ 0x81333FB9) + 2127347783)) + (((*(v5 + 72) ^ 0x405EE23F) - 1079960127) ^ ((*(v5 + 72) ^ 0xE6A67AB1) + 425297231) ^ ((*(v5 + 72) ^ 0x9D2DE8FE) + 1657935618)) - 1262223742;
  v7 = (v6 ^ 0xD2C4DA1F) & (2 * (v6 & 0xC2E6E25E)) ^ v6 & 0xC2E6E25E;
  v8 = ((2 * (v6 ^ 0xD70C9A2B)) ^ 0x2BD4F0EA) & (v6 ^ 0xD70C9A2B) ^ (2 * (v6 ^ 0xD70C9A2B)) & 0x15EA7874;
  v9 = v8 ^ 0x142A0815;
  v10 = (v8 ^ 0x1801060) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x57A9E1D4) & v9 ^ (4 * v9) & 0x15EA7874;
  v12 = (v11 ^ 0x15A86040) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x421821)) ^ 0x5EA78750) & (v11 ^ 0x421821) ^ (16 * (v11 ^ 0x421821)) & 0x15EA7870;
  v14 = v12 ^ 0x15EA7875 ^ (v13 ^ 0x14A20000) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x15EA0000 ^ v14 ^ ((v14 << 16) ^ 0x78750000) & (((v13 ^ 0x1487825) << 8) & 0x15EA0000 ^ 0x15820000 ^ (((v13 ^ 0x1487825) << 8) ^ 0x6A780000) & (v13 ^ 0x1487825)))) ^ 0xF22762C4;
  v16 = (((v4 ^ 0x36B91E57) - 918101591) ^ ((v4 ^ 0x2DE400C8) - 769917128) ^ ((v4 ^ 0x20886EEF) - 545812207)) + (((*(v5 + 76) ^ 0x4F963BE8) - 1335245800) ^ ((*(v5 + 76) ^ 0xA159822E) + 1587969490) ^ ((*(v5 + 76) ^ 0xD51AC9B6) + 719664714)) - 1362776194;
  *(v5 + 72) = v15;
  *(v5 + 76) = v16 ^ ((v16 ^ 0xBBAF88E1) + 1934276993) ^ ((v16 ^ 0xD75A5453) + 532636979) ^ ((v16 ^ 0xA41045D3) + 1828025523) ^ ((v16 ^ 0xFFFF57FF) + 924477087) ^ 0xCCFBEEE;
  v17 = STACK[0x478];
  v18 = (((LODWORD(STACK[0x31C]) ^ 0xF8A2ECB3) + 123540301) ^ ((LODWORD(STACK[0x31C]) ^ 0xF02C4D3D) + 265532099) ^ ((LODWORD(STACK[0x31C]) ^ 0x335BD1FE) - 861655550)) + 2107350099 + (((*(STACK[0x478] + 80) ^ 0x48B9C98D) - 1220135309) ^ ((*(STACK[0x478] + 80) ^ 0x9A810544) + 1702820540) ^ ((*(STACK[0x478] + 80) ^ 0xE9EDBCB9) + 370295623));
  v19 = (((LODWORD(STACK[0x224]) ^ 0xDA28B773) + 634865805) ^ ((LODWORD(STACK[0x224]) ^ 0xC92371C6) + 920423994) ^ ((LODWORD(STACK[0x224]) ^ 0x28DEB6C5) - 685684421)) + 2013254183 + (((*(STACK[0x478] + 84) ^ 0xE4A55A6F) + 458925457) ^ ((*(STACK[0x478] + 84) ^ 0xC64E1F65) + 967958683) ^ ((*(STACK[0x478] + 84) ^ 0x193E357A) - 423507322));
  *(v17 + 80) = v18 ^ ((v18 ^ 0xB966F64E) + 1131000515) ^ ((v18 ^ 0x870F8F78) + 2097204213) ^ ((v18 ^ 0xC4663D2A) + 1047099815) ^ ((v18 ^ 0xFFFFFF6F) + 99662820) ^ 0x3E25CB03;
  *(v17 + 84) = v19 ^ ((v19 ^ 0xA0FFEA59) + 1599399138) ^ ((v19 ^ 0x4F99D2CB) - 1338844044) ^ ((v19 ^ 0x30CDB62A) - 815351661) ^ ((v19 ^ 0xDFFF7FFF) + 542404936) ^ 0x3B818137;
  STACK[0x218] -= 320;
  return (STACK[0x2D8])(186, a1, 413509333);
}

uint64_t sub_1A23D3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, unsigned int a15, int a16, uint64_t a17, char *a18)
{
  v21 = 143681137 * (((&a13 | 0x1028A8A7) - (&a13 & 0x1028A8A7)) ^ 0x71121FEF);
  a14 = v21 + v20 + 1421511482;
  a15 = v21 ^ 0x8DDAB0CE;
  a17 = a10;
  a18 = &a11;
  a13 = v21 ^ 0x6163ACC5;
  v22 = (*(v19 + 8 * (v20 + 1807)))(&a13);
  return (*(v19 + 8 * (((a16 == v18) * (2 * (v20 ^ 0x481) + 3469)) ^ v20)))(v22);
}

uint64_t sub_1A23D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{
  v44 = *(v42 + 4 * (v41 - 1));
  *(v42 + 4 * v41) = ((1566083941 * (v44 ^ (v44 >> 30))) ^ *(v42 + 4 * v41)) - v41;
  v45 = ((~((v43 - 144) | 0xB44CD0349B1C8FC6) + ((v43 - 144) & 0xB44CD0349B1C8FC6)) ^ 0x60485128000753D3) * v40;
  *(v43 - 128) = v45 ^ (v38 - 32917056) ^ 0x2F;
  *(v43 - 124) = 1 - v45;
  v46 = v38 - 32917056 - v45;
  *(v43 - 112) = v41 + 1 + v45;
  *(v43 - 120) = v46;
  *(v43 - 144) = v45 + 623;
  *(v43 - 136) = v45 + v38 + 1703326547;
  *(v43 - 132) = v46 + 10;
  v47 = (*(v39 + 8 * (v38 ^ a38)))(v43 - 144);
  return (*(v39 + 8 * *(v43 - 104)))(v47);
}

uint64_t sub_1A23D3F58()
{
  v7 = (v4 + 961489121) & 0xC6B0CCFD;
  v8 = ((2 * ((v6 - 144) & 0x55B6D008) - (v6 - 144) - 1438044174) ^ 0xCEAD0C18) * v10;
  *(v6 - 144) = v5;
  *(v6 - 120) = v3;
  *(v6 - 132) = (v7 + 1002) ^ v8;
  *(v6 - 128) = (((v7 + 123) ^ 0xDC39539D) + v0) ^ v8;
  (*(v2 + 8 * (v7 + 2779)))(v6 - 144);
  *v1 = v11;
  result = v12;
  *(v12 + 4) = 1863271989;
  return result;
}

uint64_t sub_1A23D3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int32x4_t a23, int32x4_t a24, int32x4_t a25, int32x4_t a26)
{
  v33 = (v32 - 220);
  v34.i64[0] = 0x8989898989898989;
  v34.i64[1] = 0x8989898989898989;
  v35 = vdupq_n_s32(0x6F0F463Fu);
  v36 = vdupq_n_s32(0x6F0F4635u);
  a19 = v30 - 16;
  a18 = 172;
  a16 = a12 - 1461317735;
  a17 = *(v28 + 8 * (v27 + v26 + 29));
  a20 = 320;
  v37 = *(v32 - 144);
  v38 = *(v32 - 124);
  if (v38 == 2)
  {
    v79 = vld4q_s8(v33);
    v63 = veorq_s8(v79.val[0], v34);
    v64 = vmovl_high_u8(v63);
    v65 = vmovl_u8(*v63.i8);
    v66 = veorq_s8(v79.val[1], v34);
    _Q21 = vmovl_high_u8(v66);
    _Q20 = vmovl_u8(*v66.i8);
    v69 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v70 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v71 = veorq_s8(v79.val[2], v34);
    v72 = vmovl_u8(*v71.i8);
    v73 = vmovl_high_u8(v71);
    v79.val[0] = veorq_s8(v79.val[3], v34);
    v79.val[1] = vmovl_u8(*v79.val[0].i8);
    v79.val[2] = vmovl_u16(*v79.val[1].i8);
    v79.val[1] = vmovl_high_u16(v79.val[1]);
    v79.val[0] = vmovl_high_u8(v79.val[0]);
    v79.val[3] = vmovl_u16(*v79.val[0].i8);
    v79.val[0] = vmovl_high_u16(v79.val[0]);
    v74 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v73, 8uLL)), vshlq_n_s32(vmovl_high_u16(v64), 0x18uLL)), v79.val[0]);
    v75 = vorrq_s8(vorrq_s8(vorrq_s8(v70, vshll_n_u16(*v73.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v64.i8), 0x18uLL)), v79.val[3]);
    v76 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v72, 8uLL)), vshlq_n_s32(vmovl_high_u16(v65), 0x18uLL)), v79.val[1]);
    v77 = vorrq_s8(vorrq_s8(vorrq_s8(v69, vshll_n_u16(*v72.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v65.i8), 0x18uLL)), v79.val[2]);
    v79.val[0] = veorq_s8(vandq_s8(v74, v35), (*v79.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v79.val[3] = veorq_s8(vandq_s8(v75, v35), (*&v79.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v79.val[1] = veorq_s8(vandq_s8(v76, v35), (*&v79.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v79.val[2] = veorq_s8(vandq_s8(v77, v35), (*&v79.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    a23 = vaddq_s32(vsubq_s32(v77, vaddq_s32(v79.val[2], v79.val[2])), v36);
    a24 = vaddq_s32(vsubq_s32(v76, vaddq_s32(v79.val[1], v79.val[1])), v36);
    a25 = vaddq_s32(vsubq_s32(v75, vaddq_s32(v79.val[3], v79.val[3])), v36);
    a26 = vaddq_s32(vsubq_s32(v74, vaddq_s32(v79.val[0], v79.val[0])), v36);
    v78 = &a23 + v29 + 1980449586;
    *v78 = v31 ^ __ROR4__(*(v78 - 8) ^ *(v78 - 3) ^ *(v78 - 14) ^ *(v78 - 16), 31);
    return (*(v28 + 8 * ((2153 * (v30 == 1980449523)) ^ 0x24Au)))(v37);
  }

  else
  {
    if (v38 != 1)
    {
      JUMPOUT(0x1A23D47B4);
    }

    v80 = vld4q_s8(v33);
    v39 = veorq_s8(v80.val[0], v34);
    v40 = vmovl_high_u8(v39);
    v41 = vmovl_high_u16(v40);
    v42 = vmovl_u16(*v40.i8);
    v43 = vmovl_u8(*v39.i8);
    v44 = vmovl_high_u16(v43);
    v45 = vmovl_u16(*v43.i8);
    v46 = veorq_s8(v80.val[1], v34);
    v47 = vmovl_u8(*v46.i8);
    v48 = vmovl_high_u8(v46);
    v49 = veorq_s8(v80.val[2], v34);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v80.val[0] = veorq_s8(v80.val[3], v34);
    v80.val[1] = vmovl_u8(*v80.val[0].i8);
    v80.val[2] = vmovl_u16(*v80.val[1].i8);
    v80.val[0] = vmovl_high_u8(v80.val[0]);
    v80.val[3] = vmovl_u16(*v80.val[0].i8);
    v80.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v80.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v48, 8uLL), v41));
    v80.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v80.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v48.i8, 8uLL), v42));
    v80.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v80.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v47, 8uLL), v44));
    v80.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v80.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v47.i8, 8uLL), v45));
    v58 = veorq_s8(vandq_s8(v80.val[0], v35), (*&v41 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v59 = veorq_s8(vandq_s8(v80.val[3], v35), (*&v42 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v60 = veorq_s8(vandq_s8(v80.val[1], v35), (*&v44 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v61 = veorq_s8(vandq_s8(v80.val[2], v35), (*&v45 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    a23 = vaddq_s32(vsubq_s32(v80.val[2], vaddq_s32(v61, v61)), v36);
    a24 = vaddq_s32(vsubq_s32(v80.val[1], vaddq_s32(v60, v60)), v36);
    a25 = vaddq_s32(vsubq_s32(v80.val[3], vaddq_s32(v59, v59)), v36);
    a26 = vaddq_s32(vsubq_s32(v80.val[0], vaddq_s32(v58, v58)), v36);
    return (*(v28 + 8 * ((476 * (a19 + 1 == v30)) ^ 0x6FCu)))(v37);
  }
}

uint64_t sub_1A23D5074()
{
  v8 = v1 - 2;
  v9 = v2 + 2;
  *(v8 + 91) = (v9 ^ v5) * (v9 + 17);
  *(v8 + v4) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ v0)))();
}

void sub_1A23D5534(uint64_t a1)
{
  v1 = 896639297 * ((a1 & 0xF7AA89E7 | ~(a1 | 0xF7AA89E7)) ^ 0x1CFEE060);
  v2 = *(*(a1 + 16) + 12) + 34727675;
  v3 = (*(a1 + 8) ^ v1) - 184532038;
  v4 = (v3 < 0x4078C4BE) ^ (v2 < 0x4078C4BE);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x4078C4BE;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_1A23D5684@<X0>(unsigned int a1@<W1>, _DWORD *a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (a2[1] ^ v12) + (((v17 ^ a1) + v15) ^ HIDWORD(v19)) + v18 * (*(*(a12 + 8) + 4) ^ v12);
  *a2 = (v14 + v20 - (v13 & (2 * v20))) ^ a3;
  return (*(v16 + 8 * (((a4 == 2) | (8 * (a4 == 2))) ^ v17)))();
}

uint64_t sub_1A23D5728@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>)
{
  v15 = v8 + v10;
  *a6.i8 = veor_s8(*(v7 + v15), *(a2 + (a3 + a1)));
  return (*(v12 + 8 * (((v6 == v15) * v11) ^ v9)))(vorrq_s8(vqtbl1q_s8(a6, v14), a4), vorrq_s8(vqtbl1q_s8(a6, v13), a5));
}

uint64_t sub_1A23D57E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v18 - 120) = (v17 + 1375) ^ (210068311 * ((1097190786 - ((v18 - 128) | 0x4165CD82) + ((v18 - 128) | 0xBE9A327D)) ^ 0x2C4C0DD9));
  *(v18 - 128) = &a13;
  *(v18 - 112) = &a15;
  v19 = (*(v15 + 8 * (v17 ^ 0xE7F)))(v18 - 128);
  return (*(v15 + 8 * (v17 ^ (8 * (v16 != ((v17 + 1438835564) & 0xAA3D1BAB) - 936)))))(v19);
}

uint64_t sub_1A23D589C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v8 < v9;
  if (v11 == (v7 + 1) > 0xFFFFFFFF0E09ED73)
  {
    LOBYTE(v11) = (a1 ^ 0x336u ^ (a7 + 2893)) + v7 < v8;
  }

  return (*(v10 + 8 * (((((a1 - 98) ^ v11) & 1) == 0) ^ a1)))();
}

uint64_t sub_1A23D5C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = ~a1 + v6;
  v12 = *(v5 + v11 - 15);
  v13 = *(v5 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  return (*(v4 + 8 * ((992 * (a1 + v10 - 1662 == v8)) ^ (v9 + v7))))();
}

uint64_t sub_1A23D5DE4@<X0>(int a1@<W8>)
{
  v8 = v1;
  v7 = (a1 + 1498) ^ (((&v7 + 1472382289 - 2 * (&v7 & 0x57C2C551)) ^ 0x7D09EF2B) * v2);
  (*(v3 + 8 * (a1 ^ 0x871u)))(&v7);
  return v4 ^ v5;
}

uint64_t sub_1A23D5EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, unsigned int a23, int a24, uint64_t a25, char *a26)
{
  v29 = 143681137 * (((&a21 | 0x2155AF71) - &a21 + (&a21 & 0xDEAA5088)) ^ 0x406F1839);
  a21 = v29 ^ 0x6163ACC6;
  a22 = v29 + v26 + 1421511890;
  a25 = a19;
  a26 = &a16;
  a23 = v29 ^ 0xAA04F736;
  v30 = (*(v28 + 8 * (v26 ^ 0x979)))(&a21);
  return (*(v28 + 8 * ((1974 * (a24 == ((5 * (((v26 - 605) | 0x504) ^ 0x503)) ^ (v27 + 39)))) ^ v26)))(v30);
}

uint64_t sub_1A23D6018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a29 + 360) = v63;
  v68 = (*(v65 + 8 * ((a3 ^ 0x67C) + 2134)))(a1, 2, &STACK[0x334], v64, (v66 - 2044285006), a2, &a63, &STACK[0x2A4]);
  LODWORD(STACK[0x24C]) = v68;
  if (v68 == 268435459)
  {
    LODWORD(STACK[0x284]) = -1863312115;
    v74 = a51;
  }

  else
  {
    if (!v68)
    {
      v71 = STACK[0x278];
      v72 = STACK[0x2C0];
      v73 = STACK[0x218];
      LODWORD(STACK[0x404]) = -12787405;
      STACK[0x380] = v71;
      STACK[0x240] = v72;
      v76 = &STACK[0x490] + v73;
      STACK[0x288] = &STACK[0x490] + v73;
      STACK[0x2C8] = &STACK[0x490] + v73 + 128;
      *v76 = 0x6370646600;
      v76[8] = 1;
      JUMPOUT(0x1A23DF068);
    }

    v75 = 210068311 * ((((v67 - 192) | 0x7CDC4300) - (v67 - 192) + ((v67 - 192) & 0x8323BCF8)) ^ 0xEE0A7CA4);
    *(v67 - 192) = (v68 + 1863271989 - ((2 * v68) & 0xDE1E8C6A)) ^ v75;
    *(v67 - 184) = &STACK[0x284];
    *(v67 - 176) = v75 + a51 + 124;
    v68 = (*(v65 + 8 * (a51 + 2162)))(v67 - 192);
    v74 = a51;
  }

  return (*(v65 + 8 * ((((v74 - 343059447) & 0x1472AD2B ^ (v74 + 712800555) & 0xD583849C ^ 0x480) * (a63 == 0)) ^ (v74 - 587))))(v68, a63, v69, v70);
}

uint64_t sub_1A23D6178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = *(v50 + 1428);
  STACK[0x218] = a34 + 256;
  if (v52 <= 0x20 && ((a2 << v52) & 0x100110000) != 0)
  {
    return (*(v51 + 8 * (((*(a9 + 476) == 1) * (a5 + 178)) ^ (a5 + 556))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
  }

  v54 = STACK[0x218] - 256;
  STACK[0x218] = v54;
  return (STACK[0x3C0])(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v54, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1A23D6698(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  *v44 = a42 + 1;
  v47 = *a2;
  v48 = ((((v46 - 144) | 0x6EDF6DB38E985F77) - (v46 - 144) + ((v46 - 144) & 0x9120924C7167A088)) ^ 0x45241350EA7C7C9DLL) * v43;
  *(v46 - 144) = v48 + 5119;
  *(v46 - 124) = 1 - v48;
  *(v46 - 120) = v42 - v48 + 1416972404;
  *(v46 - 128) = (v42 + 1416972277) ^ v48;
  *(v46 - 136) = v48 + v42 + 1703326547;
  *(v46 - 132) = v42 - v48 + 1416972409;
  *(v46 - 112) = v47 + v48;
  v49 = (*(v45 + 8 * (v42 ^ a38)))(v46 - 144);
  return (*(v45 + 8 * *(v46 - 104)))(v49);
}

void sub_1A23D6788(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1389192254 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1389192254;
  }

  else
  {
    v2 = 1389192254 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 + 1380333833 * ((((2 * a1) | 0x7F163360) - a1 + 1081402960) ^ 0x1D9B23A);
  __asm { BRAA            X13, X17 }
}

void sub_1A23D68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47)
{
  STACK[0x2B0] = STACK[0x2B8];
  STACK[0x428] = a47;
  JUMPOUT(0x1A23B5B18);
}

uint64_t sub_1A23D6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, _DWORD *a22, uint64_t a23, void *a24, int *a25)
{
  v32 = 1019 * (a11 & 0x3DACC9FB ^ 3);
  *a22 = v26 + 1 - ((((((v28 - 278) | 0x13FE) ^ v26) & v26) >> (__clz(((v28 - 278) | 0x13FE) ^ v26 | 1) ^ ((a11 & 0xFB) + 30))) & 1);
  v33 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
  v34 = (v33 << ((-5 * (a11 & 0xFB ^ 3)) ^ 0xF9)) & 0xEFC60000;
  v35 = a11 & 0x3DACC9FB ^ (v28 - 278) ^ v33 ^ v34 ^ ((a11 & 0x3DACC9FB ^ (v28 - 278) ^ v33 ^ v34) >> 18);
  v36 = (v27 + (a21 - 1));
  v37 = 757077909 * ((*(*a24 + (*a25 & 0xFFFFFFFFE5F4866CLL)) ^ v36) & 0x7FFFFFFF);
  v38 = (v37 ^ HIWORD(v37)) * (((v32 - 703544452) & 0x29EF369F) + 757077379);
  LODWORD(v38) = *((v38 >> 24) + *(v29 + 8 * (v32 ^ 0x78A)) + 1) ^ *(*(v29 + 8 * (v32 ^ 0x78D)) + (v38 >> 24) - 4) ^ *(*(v29 + 8 * (v32 - 1974)) + (v38 >> 24) - 6) ^ v38 ^ (-5 * (v38 >> 24));
  *v36 = v38 ^ v35;
  return (*(v30 + 8 * (((a21 == (v38 != v35)) * v31) ^ v32)))();
}

uint64_t sub_1A23D6BC0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = vdupq_n_s32(0x3198BE60u);
  *&STACK[0x248] = v5;
  *&STACK[0x258] = v5;
  return (*(v4 + 8 * ((((a3 & 0xFFFFFFF8) == 8) * (((a4 - 597) | 0x41) + 3139)) ^ (a4 + 341))))();
}

uint64_t sub_1A23D6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v26 = 1388665877 * ((&a18 & 0xA509851 | ~(&a18 | 0xA509851)) ^ 0x78020542);
  LODWORD(a18) = v26 ^ (199880445 * v23 + 103127814);
  HIDWORD(a20) = v26 + 2769;
  a19 = a12;
  (*(v25 + 22872))(&a18);
  v27 = 1037613739 * ((2 * (&a18 & 0x386869A8) - &a18 + 1201116755) ^ 0x9695BB2C);
  LODWORD(a19) = 380 - v27;
  a21 = v27 ^ ((v22 ^ 0xBEEFD77D) + 2143158264 + ((2 * v22) & 0x7DDFAEFA));
  a20 = v21;
  a18 = a12;
  (*(v25 + 22968))(&a18);
  v28 = 1037613739 * ((2 * (&a18 & 0x28C6D08) - &a18 + 2104726258) ^ 0xAC71BF8D);
  a18 = a12;
  LODWORD(a19) = 380 - v28;
  a21 = (((2 * a10) & 0x7D5BBEFE) + (a10 ^ 0xBEADDF7F) + 2147481590) ^ v28;
  a20 = a11;
  v29 = (*(v25 + 22968))(&a18);
  return (*(v25 + 8 * ((425 * (HIDWORD(a19) == v24)) ^ 0x409u)))(v29);
}

void Y2Zxt()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB0948B8) ^ 0x43)) ^ byte_1A273D710[byte_1A2739720[(11 * ((qword_1EB094620 + dword_1EB0948B8) ^ 0x43))] ^ 0xBC]) + 181);
  v1 = *(v0 - 4);
  v2 = *(&off_1F14948E0 + ((11 * (v1 ^ qword_1EB094620 ^ 0x43)) ^ byte_1A273D410[byte_1A2739420[(11 * (v1 ^ qword_1EB094620 ^ 0x43))] ^ 0xAE]) + 53);
  v3 = (*(v2 - 4) + v1) ^ &v5;
  *(v0 - 4) = 1922045707 * v3 - 0x21D37FB25A3D4D43;
  *(v2 - 4) = 1922045707 * (v3 ^ 0x21D37FB25A3D4D43);
  v6[1] = (210068311 * ((v6 - 727398359 - 2 * (v6 & 0xD4A4C829)) ^ 0x4672F78D)) ^ 0x48449A90;
  LOBYTE(v2) = 11 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x43);
  v4 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB0948B8) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB0948B8) ^ 0x43))] ^ 0x36]) + 135) - 8;
  (*&v4[8 * (*(off_1F1494AC8 + (*(off_1F1494A30 + v2 - 4) ^ 0x4Du) - 12) ^ v2) + 20488])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23D72FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39)
{
  v45 = (v39 - 303057533) & 0x337EDF4D;
  v46 = (*(v43 + 8 * (v39 + 1914)))(v42 + 4, 0);
  v47 = v42[4] + 1258425062 - ((2 * v42[4]) & 0x960415CC);
  v42[1] = v42[6] + 1258425062 - ((v42[6] << (v45 ^ 0x4C)) & 0x960415CC);
  v42[2] = v47;
  v48 = (*(v43 + 8 * (v39 ^ 0x86C)))(v46);
  v42[3] = v48 + 1258425062 - ((2 * v48) & 0x960415CC);
  v49 = (*(v43 + 8 * (v39 + 1940)))();
  *v42 = v49 + 1258425062 - ((2 * v49) & 0x960415CC);
  v41[1] = (*v42 ^ 0x4B020AE6) + ((1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1]);
  v50 = ((0x219B628F6F49CC6ALL - ((v44 - 144) | 0x219B628F6F49CC6ALL) + ((v44 - 144) | 0xDE649D7090B63395)) ^ 0xF59FE393F452107FLL) * v40;
  *(v44 - 112) = v50 + 2;
  v51 = v45 - 1131486491 - v50;
  *(v44 - 120) = v51;
  *(v44 - 136) = v50 + v45 + 1703326547;
  *(v44 - 132) = v51 + 69;
  *(v44 - 128) = v50 ^ (v45 - 1131486491) ^ 0x36;
  *(v44 - 124) = 1 - v50;
  *(v44 - 144) = v50 + 623;
  v52 = (*(a39 + 8 * (v45 ^ a38)))(v44 - 144);
  return (*(a39 + 8 * *(v44 - 104)))(v52);
}

void sub_1A23D76B4(uint64_t a1)
{
  v1 = 1504884919 * ((-1979802329 - (a1 | 0x89FE9D27) + (a1 | 0x760162D8)) ^ 0x8DC2D5C3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23D79E8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  v12 = a1 + 740;
  a9 = 87 * (((&a9 | 0xB7) + (&a9 ^ 0xA3 | 0x48)) ^ 6) + 95;
  a10 = 210068311 * (((&a9 ^ 0x28A8100 | 0x34212AB7) + (&a9 ^ 0x142008A3 | 0xCBDED548)) ^ 0x847CB606) + a1 + 830;
  v13 = (*(v10 + 8 * (a1 ^ 0xA80)))(&a9);
  return (*(v10 + 8 * (((**(v11 + 8 * (v12 ^ 0x35A)) == 0) * ((v12 - 184358148) & 0xAFD1B3F ^ 0xA3F)) ^ v12)))(v13);
}

uint64_t sub_1A23D7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v19 = 1388665877 * (&a12 ^ 0x8DAD62EC);
  a15 = v19 + v18 + 1738;
  a12 = v19 ^ (199880445 * v15 + 103127814);
  a13 = a10;
  v20 = (*(v17 + 8 * (v18 + 1828)))(&a12);
  return (*(v17 + 8 * (((a14 == v16) * (((v18 - 1019) | 0x100) ^ 0x137)) ^ v18)))(v20);
}

uint64_t sub_1A23D7D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x16_t a4@<Q3>, int8x16_t a5@<Q4>)
{
  v11 = v8 + 32;
  v12 = (v11 ^ a1 ^ v7) + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = a3 + v12;
  *(v15 - 15) = vaddq_s8(vaddq_s8(v13, a5), vmvnq_s8(vandq_s8(vaddq_s8(v13, v13), a4)));
  *(v15 - 31) = vaddq_s8(vaddq_s8(v14, a5), vmvnq_s8(vandq_s8(vaddq_s8(v14, v14), a4)));
  return (*(v10 + 8 * ((963 * (v9 == v11)) ^ v6)))();
}

void sub_1A23D7E0C(uint64_t a1)
{
  v1 = *(a1 + 24) - 1556366573 * ((-2 - ((a1 | 0x7CD22232) + (~a1 | 0x832DDDCD))) ^ 0xE7C9FE27);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23D7EF4@<X0>(int a1@<W8>)
{
  *(v7 - 192) = v4 - ((((2 * (v7 - 192)) | 0xDD520F74) - (v7 - 192) - 1856571322) ^ 0x7A0291C2) * v3 + a1;
  result = (*(v5 + 8 * (a1 + 2153)))(v7 - 192);
  *(v2 + 32) = v6 - 385;
  return result;
}

uint64_t sub_1A23D7F90@<X0>(int a1@<W8>)
{
  v5 = (a1 ^ 0xE683D489) & (2 * (a1 & (v4 + 1))) ^ a1 & (v4 + 1);
  v6 = ((2 * ((v3 - 1568218626) ^ a1)) ^ 0xAB1A7818) & ((v3 - 1568218626) ^ a1) ^ (2 * ((v3 - 1568218626) ^ a1)) & 0x558D3C0C;
  v7 = v6 ^ 0x54850404;
  v8 = (v6 ^ 0x882008) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x5634F030) & v7 ^ (4 * v7) & 0x558D3C0C;
  v10 = (v9 ^ 0x54043000) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x1890C0C)) ^ 0x58D3C0C0) & (v9 ^ 0x1890C0C) ^ (16 * (v9 ^ 0x1890C0C)) & 0x558D3C00;
  v12 = v10 ^ 0x558D3C0C ^ (v11 ^ 0x50810000) & (v10 << 8);
  v13 = 896639297 * ((2 * (&v15 & 0x4A91E660) - &v15 + 896407966) ^ 0x21C58FE6);
  v15 = v1;
  v16 = (v3 - 252) ^ v13;
  v17 = a1 ^ v13 ^ (2 * ((v12 << 16) & 0x558D0000 ^ v12 ^ ((v12 << 16) ^ 0x3C0C0000) & (((v11 ^ 0x50C3C0C) << 8) & 0x558D0000 ^ 0x50810000 ^ (((v11 ^ 0x50C3C0C) << 8) ^ 0xD3C0000) & (v11 ^ 0x50C3C0C)))) ^ 0x9383EC2;
  return (*(v2 + 8 * (v3 + 2238)))(&v15);
}

uint64_t sub_1A23D8158@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v9 = (v7 + (a3 + v5));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + a3);
  *v12 = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a5)), a4);
  v12[1] = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a5)), a4);
  return (*(v8 + 8 * (((a3 + (v6 - 617) != 47) * a2) ^ v6)))();
}

uint64_t sub_1A23D81B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, unsigned int *a34)
{
  v38 = 179 * ((a1 + 69) ^ 0x315);
  LODWORD(STACK[0x204]) = 0;
  v39 = LODWORD(STACK[0x204])++;
  *a32 = v39 + 1;
  v40 = *a34;
  v41 = 1556366573 * ((~((v37 - 192) | 0x9503A702473DD036) + ((v37 - 192) & 0x9503A702473DD036)) ^ 0x4107261EDC260C23);
  *(v37 - 176) = ((v38 - 2011159872) | 0x60) ^ v41;
  *(v37 - 172) = v34 - v41;
  *(v37 - 184) = v41 - 2030745388 + v38;
  *(v37 - 180) = ((v38 - 2011159872) ^ 0x46) - v41;
  *(v37 - 192) = v41 + v36;
  *(v37 - 168) = v38 - 2011159872 - v41;
  *(v37 - 160) = v40 + v41;
  v42 = (*(v35 + 8 * (v38 + 2152)))(v37 - 192);
  return (*(v35 + 8 * *(v37 - 152)))(v42);
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23D832C(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *(v3 + 4 * (v8 + v6 - 3)) ^ *(v3 + 4 * (v8 + v6 - 14));
  HIDWORD(v11) = *(v3 + 4 * (v6 + ((v4 - 557) ^ (v8 - 1096)))) ^ v10 ^ *(v3 + 4 * (v8 + v6 - 16)) ^ v7;
  LODWORD(v11) = *(v3 + 4 * (v6 + ((v4 - 557) ^ (v8 - 1096)))) ^ v10 ^ *(v3 + 4 * (v8 + v6 - 16));
  *(v3 + 4 * (v5 + v8)) = (v11 >> 31) ^ a3;
  return (*(v9 + 8 * ((30 * ((v5 + 1 + v8) < 0x50)) ^ v4)))();
}

uint64_t sub_1A23D83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = (v5 + 678035003) & 0xD795FEEF;
  *v11 = a1;
  *a5 = (v6 + v5 - 34 - 1314) ^ v13;
  v16 = v12;
  v15 = (v9 + 1693) ^ (((((2 * &v15) | 0x2A49BB02) - &v15 + 1792746111) ^ 0xBFEFF7FB) * v7);
  (*(v8 + 8 * (v9 + 2260)))(&v15);
  v16 = v14;
  v15 = (v9 + 1693) ^ (((1910562381 - (&v15 | 0x71E0DE4D) + (&v15 | 0x8E1F21B2)) ^ 0xA4D40BC8) * v7);
  (*(v8 + 8 * ((v9 - 518) ^ 0xB2A)))(&v15);
  return v6 ^ 0x6F0F4635u;
}

uint64_t sub_1A23D8604@<X0>(int a1@<W8>, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, char a6, __int16 a7, char a8, int a9, char a10, __int16 a11, char a12, unsigned int a13, int a14, char *a15, char *a16, _BYTE *a17, _BYTE *a18)
{
  v21 = a1 + 52;
  v22 = (v21 + 134) | 3;
  LODWORD(a16) = (v21 - 861) ^ (((-1051949709 - (&a13 | 0xC14C8573) + (&a13 | 0x3EB37A8C)) ^ 0x5F89CDC4) * v18);
  a17 = a3;
  a15 = &a10;
  (*(v19 + 8 * (v21 ^ 0xDC0)))(&a13);
  a15 = &a6;
  a16 = &a8;
  LODWORD(a17) = (v22 - 1746) ^ (843532609 * ((&a13 & 0x69CC2550 | ~(&a13 | 0x69CC2550)) ^ 0x868FADF1));
  a18 = a3;
  (*(v19 + 8 * (v22 + 967)))(&a13);
  a15 = &a12;
  LODWORD(a16) = (v22 - 998) ^ (((-197589972 - (&a13 | 0xF439042C) + (&a13 | 0xBC6FBD3)) ^ 0x6AFC4C9B) * v18);
  a17 = a3;
  (*(v19 + 8 * (v22 + 951)))(&a13);
  a13 = v22 - 1556366573 * (((&a13 | 0xB6AFB48E) - &a13 + (&a13 & 0x49504B70)) ^ 0xD24B9764) + 866;
  a15 = a3;
  v23 = (*(v19 + 8 * (v22 ^ 0xC5F)))(&a13);
  return (*(v19 + 8 * (((a14 == v20 + 174 * (v22 ^ 0x76E) - 2262) * (((v22 ^ 0x76E) + 306) ^ 0x12A)) ^ v22)))(v23);
}

uint64_t sub_1A23D8800@<X0>(char a1@<W1>, int a2@<W3>, int a3@<W6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  v20.i64[0] = 0x1212121212121212;
  v20.i64[1] = 0x1212121212121212;
  v21.i64[0] = 0x8989898989898989;
  v21.i64[1] = 0x8989898989898989;
  v22 = (&a17 + a4);
  v23 = vaddq_s8(vsubq_s8(v19[1], vandq_s8(vaddq_s8(v19[1], v19[1]), v20)), v21);
  *v22 = vaddq_s8(vsubq_s8(*v19, vandq_s8(vaddq_s8(*v19, *v19), v20)), v21);
  v22[1] = v23;
  return (*(v18 + 8 * ((214 * (((v17 - a2 - 2284) ^ (a3 - 1350) ^ 0x69ELL) == (a1 & 0x60))) ^ (v17 - 286))))();
}

void sub_1A23D8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v23 - 128) = &a22;
  *(v23 - 120) = a14;
  *(v23 - 144) = &a22;
  *(v23 - 112) = &a16;
  *(v23 - 104) = a13;
  *(v23 - 136) = (v22 + 1423) ^ (143681137 * ((v23 - 144) ^ 0x613AB748));
  JUMPOUT(0x1A23EB144);
}

uint64_t sub_1A23D8B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27)
{
  v32 = (v31 + 4 * (a1 + v30));
  *v32 = (v29 + a27 - 370 - 324) ^ __ROR4__(*(v32 - 8) ^ *(v32 - 3) ^ *(v32 - 14) ^ *(v32 - 16), 31);
  return (*(v28 + 8 * ((121 * (a1 + 1 == v27 + 80)) ^ a27)))();
}

void sub_1A23D8BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, void *a30, int *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v42 = 4 * (v41 + v37);
  v43 = 757077909 * ((*(*a30 + (*a31 & 0xFFFFFFFFECDBF200)) ^ (a37 + v42)) & 0x7FFFFFFF);
  v44 = v43 ^ HIWORD(v43);
  v45 = 757077909 * v44;
  *(a36 + v42) ^= (v39 - 622) ^ *(a37 + v42) ^ (v38 - (v39 - 620) >= ~(v39 - 620)) ^ *(*(&off_1F14948E0 + (v40 ^ (v40 - 63))) + HIBYTE(v45)) ^ *(*(&off_1F14948E0 + v39 - 443) + HIBYTE(v45) + 5) ^ *(*(&off_1F14948E0 + (v40 ^ (v40 - 8))) + HIBYTE(v45) + 5) ^ (v44 * (a28 & 0x2D232B7F ^ 0x1795037C)) ^ v45 ^ (1876530667 * HIBYTE(v45));
  JUMPOUT(0x1A23D8CF0);
}

uint64_t sub_1A23D8D48()
{
  v2 = (v0 + 176) | 0x252;
  v3 = ((5 * (v2 ^ 0x7E2)) ^ 0xFFD51CE8) + LODWORD(STACK[0x3FC]) - ((2 * LODWORD(STACK[0x3FC]) + 206397284) & 0xF35CDFD6) == ((v2 - 648876149) & 0x26AD0BED) + 2041474335;
  return (*(v1 + 8 * ((v3 | (4 * v3)) ^ v2)))();
}

uint64_t sub_1A23D8D9C()
{
  v7 = *(v4 + 8 * (v0 - 1816));
  v8 = v1 - 4 + v5;
  v9 = *v2;
  *(*v2 + v8) = -119;
  *(v9 + v8 + 1) = (v3 ^ 0x5C) - (v6 & (2 * (v3 ^ 0x5C))) - 119;
  *(v9 + v8 + 2) = -94 - (v6 & 0x3A);
  *(v9 + v8 + 3) = -47;
  return v7();
}

uint64_t sub_1A23D8DB0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x37Fu));

  return v3(v1);
}

uint64_t sub_1A23D8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a14 = v16 + ((2 * (&a12 & 0x207188B0) - &a12 + 1603172174) ^ 0xCD5848EA) * v17 - 48;
  a12 = &a9;
  v18 = (*(v14 + 8 * (v16 + 2024)))(&a12);
  return (*(v14 + 8 * (((a13 == v15) * (((v16 - 317) | 0x61) ^ 0x75F)) ^ v16)))(v18);
}

void sub_1A23D8E70()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = *(v0 + 40) + 1785193651 * ((v0 + 1137039650 - 2 * (v0 & 0x43C5D922)) ^ 0xC0755334);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1A23D8FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, _DWORD *a38, uint64_t a39)
{
  v44 = 8 * (v41 ^ (v41 + 101));
  *a38 = v42 - 620 + (*a38 ^ a35) - ((((v44 - ((~(v42 - 620) + v40) ^ (v43 - (v42 - 620))) - 2040) | (~(v42 - 620) + v40)) & 0x8000000000000000) == 0) - 2;
  return (*(a39 + 8 * ((4056 * (((v44 + 2045751925) & 0xA77EDDDF ^ 0xDE9167B2) + v39 == ((v44 - 177220523) & 0x2BFEBBFF) - 560896077)) ^ v44)))();
}

uint64_t sub_1A23D9094@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *(a3 + v4 - 1 - 31);
  v8 = a1 + v4 - 1;
  *(v8 - 15) = *(a3 + v4 - 1 - 15);
  *(v8 - 31) = v7;
  LODWORD(v8) = ((v5 - a2 - 1018) ^ 0x659) == (v4 & 0xFFFFFFE0);
  return (*(v6 + 8 * (((8 * v8) | (32 * v8)) ^ (v3 + v5 + 1668))))();
}

uint64_t sub_1A23D9190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a19;
  a23 = (((&a21 | 0xA88DBE38) - &a21 + (&a21 & 0x577241C0)) ^ 0x3A5B819C) * v23 + 789;
  v26 = (*(v25 + 22888))(&a21);
  return (*(v25 + 8 * ((589 * (a22 == v24)) ^ 0x69u)))(v26);
}

uint64_t sub_1A23D920C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, _BYTE *a14, char a15, int a16, int a17, char a18, uint64_t a19, unsigned int a20, int a21, char *a22, char *a23, _BYTE *a24, _BYTE *a25)
{
  v29 = 2 * &a20;
  a22 = &a18;
  a23 = &a15;
  a25 = a14;
  LODWORD(a24) = (v25 - 132) ^ (843532609 * (((v29 | 0x29096CE2) - &a20 - 344241777) ^ 0x438C12F));
  (*(v28 + 8 * (v25 + 2581)))(&a20);
  a22 = &a13;
  LODWORD(a23) = (v25 + 616) ^ ((((v29 | 0xD04C8148) - &a20 + 400146268) ^ 0x891CF7EC) * v26);
  a24 = a14;
  (*(v28 + 8 * (v25 ^ 0xA0F)))(&a20);
  a22 = a14;
  a20 = v25 - 1556366573 * ((&a20 & 0xF668526C | ~(&a20 | 0xF668526C)) ^ 0x6D738E79) + 2480;
  v30 = (*(v28 + 8 * (v25 ^ 0xA29)))(&a20);
  return (*(v28 + 8 * ((1363 * (a21 == v27 + v25 + 756 - 1033)) ^ v25)))(v30);
}

uint64_t sub_1A23D9368@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 + 1776)))(*v4);
  *v3 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 1418414342;
  return result;
}

uint64_t sub_1A23D93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v20 - 136) = v19;
  *(v20 - 128) = (v18 + 1068) ^ (210068311 * ((1981943380 - (v15 | 0x76220E54) + (v15 | 0x89DDF1AB)) ^ 0x1B0BCE0F));
  *(v20 - 120) = a15;
  v21 = (*(v17 + 8 * (v18 ^ 0xF2A)))(v20 - 136);
  return (*(v17 + 8 * (((31 * (v18 ^ 0x5DC) + 6 * (v18 ^ 0x5B8) + 2588) * (v16 == 1)) ^ v18)))(v21);
}

void sub_1A23D9468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v21 = 1504884919 * ((((2 * (v20 - 144)) | 0x6D76905E) - (v20 - 144) + 1229240273) ^ 0x4D78FF34);
  *(v20 - 120) = v16 - v21 + 1229;
  *(v20 - 140) = v17 - v21 + 431062262 + v16 + 2399;
  *(v20 - 136) = v19;
  *(v20 - 128) = &a16;
  (*(v18 + 8 * (v16 ^ 0xA76)))(v20 - 144);
  JUMPOUT(0x1A23CF438);
}

uint64_t sub_1A23D94F0@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37)
{
  v40 = a37 < a35;
  v41 = *(v37 + v39 * a1 + 36) - 1682163580;
  v42 = v40 ^ (v41 < ((2 * a2) ^ 0x6E0) - 2111291541);
  v43 = v41 < a37;
  if (!v42)
  {
    v40 = v43;
  }

  return (*(v38 + 8 * ((2006 * v40) ^ a2)))();
}

uint64_t sub_1A23D9568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (210068311 * ((&a15 - 1853607677 - 2 * (&a15 & 0x91843103)) ^ 0x3520EA7)) ^ 0x48449A90;
  v18 = (*(v16 + 22400))(&a15);
  return (*(v16 + 8 * ((1460 * (a15 == v17)) ^ 0xD3u)))(v18);
}

uint64_t sub_1A23D9694(uint64_t a1, uint64_t a2)
{
  v8 = 4 * (a2 + (((v7 ^ 0x1E) - 1604492446) & 0x5FA29BFA)) - 0x14B359B9CLL;
  v9 = (((*(*(v2 + 8) + v8) ^ 0xFF6CE5E6) + 9640474) ^ ((*(*(v2 + 8) + v8) ^ 0xAC0C395) - 180405141) ^ ((*(*(v2 + 8) + v8) ^ 0xC4349813) + 1003186157)) + v5;
  v10 = (((*(*(v3 + 8) + v8) ^ 0x93D8FAA3) + 1814496605) ^ ((*(*(v3 + 8) + v8) ^ 0x719B4501) - 1906001153) ^ ((*(*(v3 + 8) + v8) ^ 0xD3DB01C2) + 740621886)) + v5;
  v11 = (v9 < v6) ^ (v10 < v6);
  v12 = v9 > v10;
  if (v11)
  {
    v12 = v9 < v6;
  }

  return (*(v4 + 8 * ((30 * v12) ^ v7 ^ 0x1E)))();
}

void sub_1A23D9804()
{
  v3 = (v0 - 1061995527) & 0x7FC550DF;
  v4 = *v8;
  if ((*v8 & 3) == (v3 ^ (v1 + (v0 + 1642538127) + 150)))
  {
    v5 = *(&off_1F14948E0 + v0 + 1081642195);
    if (!*v5)
    {
      v6 = v3 + 1122;
      *v5 = v4;
      **(&off_1F14948E0 + v3 + 16) = 255;
      *v4 |= ~v4[*v4 & 0x3ELL] << 16;
      v4[4] |= ((v3 + 1122) ^ 0xFB06 ^ v4[v4[4] & 0x3ELL]) << 16;
      v4[8] |= ~v4[v4[8] & 0x3ELL] << 16;
      v4[12] |= ~v4[v4[12] & 0x3ELL] << 16;
      v4[16] |= ~v4[v4[16] & 0x3ELL] << 16;
      v4[20] |= ~v4[v4[20] & 0x3ELL] << 16;
      v4[24] |= ~v4[v4[24] & 0x3ELL] << 16;
      v4[28] |= ~v4[v4[28] & 0x3ELL] << 16;
      v4[32] |= ~v4[v4[32] & 0x3ELL] << 16;
      v4[36] |= ~v4[v4[36] & 0x3ELL] << 16;
      v4[40] |= ~v4[v4[40] & 0x3ELL] << 16;
      v4[44] |= ~v4[v4[44] & 0x3ELL] << 16;
      v4[48] |= ~v4[v4[48] & 0x3ELL] << 16;
      v4[52] |= ~v4[v4[52] & 0x3ELL] << 16;
      v4[56] |= ~v4[v4[56] & 0x3ELL] << 16;
      v4[60] |= ~v4[v4[60] & 0x3ELL] << 16;
      (*(v2 + 8 * (v3 + 2746)))(&v9, 0, 1024);
      __asm { BRAA            X12, X17 }
    }
  }

  *v7 = -1863311990;
}

uint64_t sub_1A23D9C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v20 = v17[4];
  v21 = v17[2];
  v22 = *v17;
  a17 = v19 + 1796 - 1785193651 * ((-2115714471 - (&a14 | 0x81E4C259) + (&a14 | 0x7E1B3DA6)) ^ 0xFDABB7B0);
  a15 = a11;
  a16 = v22;
  (*(v18 + 8 * (v19 ^ 0xBEA)))(&a14);
  a15 = a11;
  a16 = v21;
  a17 = v19 + 1796 - 1785193651 * ((&a14 - 1461378455 - 2 * (&a14 & 0xA8E52269)) ^ 0x2B55A87F);
  (*(v18 + 8 * (v19 + 2730)))(&a14);
  a17 = v19 + 1556366573 * (((&a14 | 0xF1D9D28E) - (&a14 & 0xF1D9D28E)) ^ 0x953DF164) - 42;
  a14 = v20;
  a16 = a11;
  v23 = (*(v18 + 8 * (v19 + 2772)))(&a14);
  return (*(v18 + 8 * (((a15 == 1863271989) * (v19 + 1427)) ^ v19)))(v23);
}

void sub_1A23D9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *v40 = (((a23 - v37) | (v37 - a23)) >> (v38 + ((v37 + 127) & 0xCD) - 80)) | 0x80000000;
  (*(v39 + 8 * (v37 ^ 0xB4Au)))(a37);
  vld1q_dup_f32(v40);
  JUMPOUT(0x1A23D9E6CLL);
}

uint64_t sub_1A23D9F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, int a19, int a20, unsigned int a21, int a22, uint64_t a23, char *a24)
{
  v26 = 143681137 * (&a19 ^ 0x613AB748);
  a23 = a15;
  a24 = &a17;
  a20 = v26 + v25 - 46 + 1421511581;
  a21 = v26 ^ 0xBDA5D0F8;
  a19 = v26 ^ 0x6163ACC5;
  v27 = (*(v24 + 8 * (v25 + 1860)))(&a19);
  return (*(v24 + 8 * ((118 * (((v25 + 55) ^ (a22 == v25 + 1863271011)) & 1)) ^ (v25 - 46))))(v27);
}

uint64_t sub_1A23DA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t a14, _BYTE *a15, char a16, int a17, unsigned int a18, int a19, char *a20, char *a21, _BYTE *a22, _BYTE *a23)
{
  LODWORD(a22) = (v23 - 725) ^ (843532609 * (&a18 ^ 0x10BC775E));
  a20 = &a11;
  a21 = &a13;
  a23 = a15;
  (*(v25 + 8 * (v23 ^ 0x84C)))(&a18);
  LODWORD(a21) = (v23 + 23) ^ (((&a18 + 2014676400 - 2 * (&a18 & 0x781585B0)) ^ 0x192F32F8) * v24);
  a20 = &a16;
  a22 = a15;
  (*(v25 + 8 * (v23 ^ 0x87C)))(&a18);
  a18 = v23 - 1556366573 * ((&a18 - 2007166829 - 2 * (&a18 & 0x885D1093)) ^ 0xECB93379) + 1887;
  a20 = a15;
  v27 = (*(v25 + 8 * (v23 + 2006)))(&a18);
  return (*(v25 + 8 * ((1239 * (a19 == ((v23 - 400213034) & 0x17DAC6FF ^ (v26 - 1580)))) ^ v23)))(v27);
}

void Mt76Vq80ux(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23DA7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  v61 = STACK[0x3E0];
  v62 = &v58[6 * v57];
  v62[2] = v59;
  v62[3] = a54;
  *(v62 + 2) = a50;
  v62[6] = v61;
  *v58 = v56 + v55 - 1135 - 1471;
  v63 = *v54 + 336719084;
  LODWORD(v62) = (a41 < a39) ^ (v63 < ((v55 - 2088941363) & 0x7C82AFCF ^ 0xFA7DF453));
  v64 = v63 < a41;
  if (v62)
  {
    v64 = a41 < a39;
  }

  return (*(v60 + 8 * ((v64 << 6) | (v64 << 7) | v55)))();
}

uint64_t sub_1A23DA84C()
{
  v2 = (v0 - 1990) | 0x840;
  v3 = (*(v1 + 8 * (v2 + 746)))(1576, 0x105004009637391);
  STACK[0x328] = v3;
  return (*(v1 + 8 * (((v3 == 0) * ((((v2 - 1893) | 0x804) - 1560) ^ 0x205)) ^ v2)))();
}

uint64_t sub_1A23DA890(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v20 = (((a7 ^ v12) + v13) ^ ((a7 ^ 0x72C319BA) - 1925388730) ^ (((((v19 - 1863258833) & 0x6F0F137D) + 1626381241) ^ a7) + ((v19 + 173) ^ a6))) + v10;
  v21 = (((v11 ^ v14) + v15) ^ ((v11 ^ v16) + v17) ^ ((v11 ^ v18) + a8)) + v10;
  v22 = (v21 < v9) ^ (v20 < v9);
  v23 = v20 < v21;
  if (v22)
  {
    v23 = v21 < v9;
  }

  return (*(v8 + 8 * ((v23 * a4) ^ v19)))();
}

uint64_t sub_1A23DA94C@<X0>(int a1@<W8>)
{
  v4 = ((((v2 - 2487) | 0x2A3) + a1) ^ ((v2 - 1976) | 0xE0)) + v1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((13 * (v5 > 130)) ^ v2)))();
}

uint64_t sub_1A23DAA6C@<X0>(int a1@<W5>, int a2@<W8>)
{
  if ((a2 + 287824768) <= 0x12 && ((1 << (a2 + 0x80)) & 0x42405) != 0)
  {
    return sub_1A23DAADC();
  }

  else
  {
    return (*(v3 + 8 * ((((*(v4 + 48 * v5 + 40) >> 3) & 1) * ((a1 ^ (a1 - 1026)) - 985)) ^ (v2 + a1 + 1024))))(4294925278);
  }
}

uint64_t sub_1A23DAB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  a17 = (210068311 * ((((2 * &a16) | 0xC20CA35E) - &a16 + 519679569) ^ 0x73D06E0B)) ^ 0x48449A90;
  v19 = (*(v18 + 22400))(&a16);
  return (*(v18 + 8 * ((1747 * (a16 == v17)) ^ 0x1DBu)))(v19);
}

void sub_1A23DACB0(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x31C]) = a1;
  LODWORD(STACK[0x224]) = v3;
  LODWORD(STACK[0x41C]) = v5 + 80;
  v6 = (((v2 ^ 0x106BD4FC) - 275502332) ^ ((v2 ^ 0xDE6FA76E) + 563107986) ^ ((v2 ^ 0xF5D103E2) + 170851358)) + 2059695830 + (((*(STACK[0x478] + 88) ^ (((v4 - 667) | 0x284) - 956695308)) + 956694592) ^ ((*(STACK[0x478] + 88) ^ 0xB593025E) + 1248656802) ^ ((*(STACK[0x478] + 88) ^ 0x48BF8DEE) - 1220513262));
  *(STACK[0x478] + 88) = v6 ^ ((v6 ^ 0x3E1F52CD) - 1023854395) ^ ((v6 ^ 0xD19918B5) + 763327165) ^ ((v6 ^ 0x97620679) + 1803840625) ^ ((v6 ^ 0x7BFDD9F7) - 2028227585) ^ 0x38CCE586;
  LODWORD(STACK[0x388]) = a2;
  JUMPOUT(0x1A23DAE34);
}

uint64_t sub_1A23DB428@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + 632) ^ (50899313 * (((&v5 | 0xFD01BA0B) - &v5 + (&v5 & 0x2FE45F0)) ^ 0xD7CA9071));
  v6 = v2;
  v7 = a1;
  return (*(v1 + 8 * (v3 ^ 0x8D3)))(&v5);
}

uint64_t sub_1A23DB724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v7 > -661247274;
  if (v8 == v5 + 1419538667 < a5 + 661245194)
  {
    v8 = v5 + 1419538667 < v7 - 1486236375;
  }

  return (*(v6 + 8 * ((3742 * v8) ^ (a5 - 529))))();
}

uint64_t sub_1A23DBB48@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char *a19, char *a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v30 = v24 ^ 0xBC6;
  v31 = (((v29 - 144) & 0x223F9768 | ~((v29 - 144) | 0x223F9768)) ^ 0xB9244B7D) * v26;
  *(v29 - 128) = v31 + v24 + 1353;
  *(v29 - 120) = v25 + v31 + (v24 ^ 0x1DD3CDB2);
  *(v29 - 144) = &a22;
  *(v29 - 136) = a1;
  (*(v27 + 8 * (v24 + 1995)))(v29 - 144);
  a19 = &a13;
  a20 = &a15;
  *(v29 - 144) = a12;
  *(v29 - 136) = &a19;
  *(v29 - 128) = (v30 - 1074) ^ (1564307779 * ((527847156 - ((v29 - 144) | 0x1F764EF4) + ((v29 - 144) | 0xE089B10B)) ^ 0x77847D18));
  (*(v27 + 8 * (v30 ^ 0x3A0)))(v29 - 144);
  *(v29 - 120) = &a22;
  *(v29 - 112) = &a24;
  *(v29 - 128) = v30 - 171 + 1388665877 * ((2 * ((v29 - 144) & 0x5595520) - (v29 - 144) + 2057743066) ^ 0xF70BC836);
  *(v29 - 144) = a12;
  *(v29 - 136) = &a19;
  (*(v27 + 8 * (v30 + 618)))(v29 - 144);
  v32 = a20;
  *(v29 - 144) = &a24;
  *(v29 - 128) = v32;
  *(v29 - 120) = a12;
  *(v29 - 112) = &a24;
  *(v29 - 104) = &a19;
  *(v29 - 136) = (v30 - 461) ^ (143681137 * (((v29 - 144) & 0xC83BFD93 | ~((v29 - 144) | 0xC83BFD93)) ^ 0x56FEB524));
  (*(v27 + 8 * (v30 ^ 0x26A)))(v29 - 144);
  *(v29 - 104) = v30 - 1884 - 1785193651 * ((2 * ((v29 - 144) & 0x2A573988) - (v29 - 144) + 1437124210) ^ 0xD6184C64);
  *(v29 - 144) = a12;
  *(v29 - 136) = &a19;
  *(v29 - 120) = &a24;
  *(v29 - 112) = a5;
  *(v29 - 128) = &a24;
  (*(v27 + 8 * (v30 ^ 0x3F7)))(v29 - 144);
  *(v29 - 144) = v28;
  *(v29 - 136) = &a19;
  *(v29 - 128) = (v30 - 1074) ^ (1564307779 * (((((v29 - 144) | 0x297CD544) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0xD6832ABB)) ^ 0x418EE6A8));
  (*(v27 + 8 * (v30 ^ 0x3A0)))(v29 - 144);
  *(v29 - 144) = v28;
  *(v29 - 136) = &a19;
  *(v29 - 128) = v30 - 171 + 1388665877 * ((((v29 - 144) | 0x71FDCA1F) - (v29 - 144) + ((v29 - 144) & 0x8E0235E0)) ^ 0xFC50A8F3);
  *(v29 - 120) = &a22;
  *(v29 - 112) = &a17;
  (*(v27 + 8 * (v30 + 618)))(v29 - 144);
  *(v29 - 128) = a20;
  *(v29 - 120) = v28;
  *(v29 - 112) = &a17;
  *(v29 - 104) = &a19;
  *(v29 - 144) = &a17;
  *(v29 - 136) = (v30 - 461) ^ (143681137 * ((((v29 - 144) | 0x952E1582) - (v29 - 144) + ((v29 - 144) & 0x6AD1EA78)) ^ 0xF414A2CA));
  (*(v27 + 8 * (v30 + 534)))(v29 - 144);
  *(v29 - 120) = &a17;
  *(v29 - 112) = a6;
  *(v29 - 104) = v30 - 1884 - 1785193651 * (((v29 - 144) & 0xD14AE786 | ~((v29 - 144) | 0xD14AE786)) ^ 0xAD05926F);
  *(v29 - 136) = &a19;
  *(v29 - 128) = &a17;
  *(v29 - 144) = v28;
  (*(v27 + 8 * (v30 + 649)))(v29 - 144);
  *(v29 - 128) = &a17;
  *(v29 - 144) = &a24;
  *(v29 - 136) = (v30 + 305) ^ (210068311 * ((2 * (((v29 - 144) ^ 0x704A137A) & 0x36AAB070) - ((v29 - 144) ^ 0x704A137A) + 1230327691) ^ 0xABC96355));
  (*(v27 + 8 * (v30 + 559)))(v29 - 144);
  *(v29 - 136) = &a17;
  *(v29 - 144) = v30 - 843532609 * ((((2 * (v29 - 144)) | 0xD210CCA4) - (v29 - 144) + 385325486) ^ 0xF9B4110C) - 1756;
  v33 = (*(v27 + 8 * (v30 ^ 0x3B1)))(v29 - 144);
  return (*(v27 + 8 * (((((v30 + 2053589820) & 0x8598AF3D) + *(v29 - 128) - 173321440 < 0x2C073B42) * (v30 ^ 0xA6F)) ^ v30)))(v33);
}

uint64_t sub_1A23DC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a12;
  a18 = v19 + (((&a16 | 0xBA30AF01) + (~&a16 | 0x45CF50FE)) ^ 0x28E690A4) * v20 - 259;
  v21 = (*(v18 + 8 * (v19 + 1813)))(&a16);
  return (*(v18 + 8 * (((a17 == 1863271989) * ((v19 - 648633371) & 0x26A95DAA ^ 0x59D)) ^ v19)))(v21);
}

uint64_t sub_1A23DC280@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1046928836;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 137)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 9)
  {
    v12 = 1863271989;
    v13 = *(v2 + 8);
    v14 = (*(v2 + 24) + v3);
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 32)
    {
      v15 = -866827429;
    }

    else
    {
      v15 = -866827430;
    }

    *(result + 16) = 17927676;
    *(result + 20) = v15;
    *(result + 24) = 1863271989;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xE07)))();
    v12 = -1863311892;
  }

  *v2 = v12;
  return result;
}

void sub_1A23DC354(int a1@<W8>)
{
  if (a1 == 61126671)
  {
    v2 = 1863271989;
  }

  else
  {
    v2 = -1863311891;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_1A23DC3B8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = ((a1 - 428) ^ 0xFFFFFFFFFFFFF799) + v5;
  *(v7 + v8) = *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v3 + 5) ^ *((v8 & 0xF) + v4 + 2) ^ (89 * (v8 & 0xF)) ^ 0x89;
  return (*(v6 + 8 * ((91 * (v8 != 0)) ^ (a1 - 608))))();
}

uint64_t sub_1A23DC428(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v10 = (a6 ^ 0x9E6) + 532;
  v11 = (v10 ^ (v7 + 647)) - v8;
  if (a2 > v11)
  {
    v11 = a2;
  }

  return (*(v9 + 8 * ((481 * (v11 <= (v10 ^ a7))) ^ a6 ^ 0x9E6)))();
}

void sub_1A23DC470(_DWORD *a1)
{
  v1 = *a1 + 1504884919 * ((a1 - 2 * (a1 & 0xA5D42817) - 1512822761) ^ 0x5E179F0C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23DCDF0@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = v5 ^ (a2 + 75) ^ 0xA4 ^ *(v2 + v7);
  return (*(v6 + 8 * ((110 * (v7 == 0)) ^ (v3 + v5 + 1514))))();
}

uint64_t sub_1A23DCE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, int a18)
{
  v25 = &a18 + 6 * v20;
  v25[2] = v24;
  v25[3] = v21;
  *(v25 + 2) = a14;
  v25[6] = a15;
  a18 = v19 + v18 - 554 - 1182;
  return (*(v22 + 8 * ((((v23 + v18 - 1737) ^ (v23 - 3883)) * (a9 + 978887560 < a3)) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1A23DCEEC()
{
  v3 = 896639297 * ((~((v2 - 192) | 0xD4AE7D71) + ((v2 - 192) & 0xD4AE7D71)) ^ 0x3FFA14F6);
  *(v2 - 160) = &STACK[0x26C];
  *(v2 - 168) = v3 ^ 0x52840B2F;
  *(v2 - 192) = v3 + v0 + 8 - 1257;
  *(v2 - 184) = 0;
  *(v2 - 176) = &STACK[0x250];
  v4 = (*(v1 + 8 * (v0 + 1269)))(v2 - 192);
  return (*(v1 + 8 * ((13 * (((v0 - 100) ^ (*(v2 - 152) == 1863271989)) & 1)) ^ (v0 + 8))))(v4);
}

uint64_t sub_1A23DD0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v11 - 1;
  *(a2 + a10) = (&a10 ^ 0xBA) * (&a10 + 17);
  return (*(v12 + 8 * (((v11 == 1) * ((((v10 ^ 0xD50) + 197000679) & 0xF441FB3F) + 1669)) ^ ((v10 ^ 0xD50) - 2102))))(a1, a2);
}

void sub_1A23DD158(uint64_t a1)
{
  v1 = *(a1 + 8) - 896639297 * (((a1 ^ 0x980042B1 | 0x507A8C23) - ((a1 ^ 0x980042B1) & 0x507A8C23)) ^ 0xDCD158EA);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23DD21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = **(&off_1F14948E0 + v26 + 560895456);
  v31 = 843532609 * ((0xCFBC738B6DF12B4CLL - (a26 | 0xCFBC738B6DF12B4CLL) + a25) ^ 0xA4F52BAE6C85B22ELL);
  *(v29 - 144) = v27 - v31 + 560896077;
  *(v29 - 120) = v31;
  *(v29 - 116) = v31 - 510004748;
  *(v29 - 112) = v31 - 510004843;
  *(v29 - 108) = v31 - 510004745;
  *(v29 - 136) = v31;
  *(v29 - 128) = v30 + v31;
  v32 = (*(v28 + 22240))(v29 - 144);
  return (*(v28 + 8 * *(v29 - 140)))(v32);
}

void sub_1A23DD238()
{
  if (((v1 - 560895454 - v0) & ((v1 - 560895454) ^ (-2 - v2)) | v0 & ~(v1 - 560895454)) <= v1 - 560896078)
  {
    v4 = v3[623];
  }

  else
  {
    v4 = v3[623] + 1;
  }

  *v3 = v4;
  JUMPOUT(0x1A23C9FD4);
}

void sub_1A23DD284(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (210068311 * ((((2 * a1) | 0xD989730) - a1 + 2033431656) ^ 0x141A743C));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1A23DD338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v59 = STACK[0x390] + v55;
  v60 = STACK[0x468];
  STACK[0x2D8] = *(v57 + 8 * v54);
  STACK[0x478] = v60;
  STACK[0x480] = v59;
  v61 = STACK[0x218];
  v62 = &STACK[0x490] + STACK[0x218];
  STACK[0x488] = v62;
  STACK[0x218] = v61 + 320;
  v63 = *(v60 + 72);
  LODWORD(STACK[0x388]) = v63;
  v64 = *(v60 + 80);
  LODWORD(STACK[0x31C]) = v64;
  v65 = *(v60 + 84);
  LODWORD(STACK[0x224]) = v65;
  v66 = *(v60 + 96);
  if (v66 == 2)
  {
    JUMPOUT(0x1A23DA6B4);
  }

  if (v66 != 1)
  {
    JUMPOUT(0x1A23DAE34);
  }

  v67 = *(v59 + (v56 + 2033525580)) ^ v58;
  v68 = ((*(v59 + (v56 + 2033525582)) ^ v58) << 16) | ((*(v59 + (v56 + 2033525583)) ^ v58) << 24) | v67 & 0xFFFF00FF | ((((a7 + 53) | 0xAA) ^ *(v59 + (v56 + 2033525581)) ^ 0x22) << 8);
  *&v62[4 * ((((2 * ((((a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0) << 16) & 0x69820000 ^ (a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0 ^ ((((a54 ^ 0xF7FF7C40) & 0x3FC00 ^ 0x6982C9A0) << 16) ^ 0x4A5C0000) & 0x167E1400)) ^ 0x7935234C) >> 2) ^ 0x3173D203)] = v68 + a8 - 2 * (v68 & (a8 + 10) ^ v67 & 0xA);
  return (*(v57 + 8 * ((23 * ((v56 + 2033525584) < 0x40)) ^ (a7 + 1854))))(2033525596, v63, 1770127360, 2033525580, v65, v64, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1A23DD350(uint64_t result)
{
  v1 = 1556366573 * (result ^ 0x2BFB7EE364E423EALL);
  v2 = *(result + 32);
  v3 = v2 - v1;
  v4 = v2 == *result;
  v5 = v3 > *result - v1;
  if ((*(result + 20) + v1))
  {
    v4 = v5;
  }

  v6 = !v4;
  v7 = 12;
  if (!v6)
  {
    v7 = 24;
  }

  *(result + 40) = *(result + 16) ^ v1 ^ (*(result + v7) + v1);
  return result;
}

void sub_1A23DD43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (v13 + 1054212962) & 0xC129F27C;
  v17 = 1785193651 * ((v15 - 144) ^ 0x83B08A16);
  *(v15 - 144) = a11;
  *(v15 - 136) = v14;
  *(v15 - 128) = ((((v16 - 76) | 0xC7) ^ 0x54F37B6D) + v11) ^ v17;
  *(v15 - 120) = v16 - v17 + 1141;
  (*(v12 + 8 * (v16 + 2770)))(v15 - 144);
  JUMPOUT(0x1A23DD4BCLL);
}

void sub_1A23DDAB8(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1A23DDCD0()
{
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return (*(v0 + 8 * ((1000 * v4) ^ 0x5FD)))();
}

uint64_t sub_1A23DDD08()
{
  v4 = v2 + 706755963;
  v5 = v4 < 0x98154A0F;
  v6 = v3 - 1743435249 < v4;
  if (v3 > 0x67EAB5F0 != v5)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((((v1 + 1522072388) & 0xA54707EF ^ 0x78E) * !v6) ^ v1)))();
}

uint64_t sub_1A23DDD94@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v17 = &a14 + (v14 & 0x3F) + 9;
  *(v17 - 1) = 0x8989898989898989;
  *v17 = 0x8989898989898989;
  return (*(v16 + 8 * ((((a1 & 0x30) == 16) * (((v15 - 707) | 0x82) + 1389)) ^ v15)))();
}

void sub_1A23DDE14(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v9 = 1504884919 * ((&a4 & 0x2F838926 | ~(&a4 | 0x2F838926)) ^ 0x2BBFC1C2);
  a8 = v9 ^ 0x57AA81AA;
  a6 = -1894258758 - v9;
  a7 = 0;
  a4 = a1 - v9 - 1408;
  (*(v8 + 8 * (a1 ^ 0xCEF)))(&a4);
  JUMPOUT(0x1A23B2B84);
}

void sub_1A23DE5D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (((a2 ^ 0x2CF6F317) - 754381591) ^ ((a2 ^ 0xB1D7671E) + 1311283426) ^ ((a2 ^ 0xA6F4E479) + 1493900167)) - 1171304875 + (((*(v9 - 164) ^ 0x9684E2FC) + 1769676036) ^ ((*(v9 - 164) ^ 0xE9867761) + 377063583) ^ ((*(v9 - 164) ^ 0x44D7E5ED) + ((a8 + v8 - 178) ^ 0xCC7B6D69)));
  v11 = (v10 ^ 0xB873C82A) & (2 * (v10 & 0xBD7B928B)) ^ v10 & 0xBD7B928B;
  v12 = ((2 * (v10 ^ 0xB2B4C82E)) ^ 0x1F9EB54A) & (v10 ^ 0xB2B4C82E) ^ (2 * (v10 ^ 0xB2B4C82E)) & 0xFCF5AA4;
  v13 = v12 ^ 0x414AA5;
  v14 = (v12 ^ 0xF8E1000) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x3F3D6A94) & v13 ^ (4 * v13) & 0xFCF5AA4;
  v16 = v14 ^ 0xFCF5AA5 ^ (v15 ^ 0xF0D4A80) & (16 * v14);
  v17 = (16 * (v15 ^ 0xC21021)) & 0xFCF5AA0 ^ 0x30A50A5 ^ ((16 * (v15 ^ 0xC21021)) ^ 0xFCF5AA50) & (v15 ^ 0xC21021);
  v18 = (v16 << 8) & 0xFCF5A00 ^ v16 ^ ((v16 << 8) ^ 0xCF5AA500) & v17;
  *(v9 - 164) = v10 ^ (2 * ((v18 << 16) & 0xFCF0000 ^ v18 ^ ((v18 << 16) ^ 0x5AA50000) & ((v17 << 8) & 0xFCF0000 ^ 0x850000 ^ ((v17 << 8) ^ 0x4F5A0000) & v17))) ^ 0x92AE57B1;
  JUMPOUT(0x1A23DE80CLL);
}

uint64_t sub_1A23DEE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 128) = v13 + ((((v17 - 128) | 0xE9377D28) - ((v17 - 128) & 0xE9377D28)) ^ 0x8DD35EC2) * v16 + 1231;
  *(v17 - 120) = &a13;
  *(v17 - 112) = v14;
  v18 = (*(v15 + 8 * (v13 + 1908)))(v17 - 128);
  return (*(v15 + 8 * ((1949 * (*(v17 - 104) - 798455720 < (v13 ^ 0xE76B4703))) ^ v13)))(v18);
}

uint64_t sub_1A23DEF44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v20 = (v16 + 4 * v12);
  v21 = HIDWORD(v14) + a8 * (*(v11 + 4 * v12) ^ v8) + (*v20 ^ v8) + HIDWORD(v9) + v15 * (*(v19 + 4 * v12) ^ v8);
  *(v20 - 1) = v21 + v8 - ((a2 + v18 - 485 - 444) & (2 * v21));
  return (*(v13 + 8 * (((v12 + 1 == v10) * v17) ^ v18)))();
}

uint64_t sub_1A23DEFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  LODWORD(STACK[0x284]) = v57;
  STACK[0x218] -= 2432;
  return (*(v58 + 8 * ((1726 * (v57 == ((v56 + 988) ^ (v59 - 1432)))) ^ (v56 - 53))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

void sub_1A23DF274(uint64_t a1)
{
  v3 = *(*a1 + 4) == 1389192254 || *(*(a1 + 8) + 4) == 1389192254;
  v1 = *(a1 + 16) - 1785193651 * ((1516501044 - (a1 ^ 0xD40F9BEB | 0x5A63F834) + (a1 ^ 0xD40F9BEB | 0xA59C07CB)) ^ 0xF2231636);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1A23DF3D4()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5) ^ 0x89;
  return (*(v4 + 8 * (((v5 == 0) * ((571 * (v3 ^ 0x112)) ^ 0x8E1)) ^ v3)))();
}

uint64_t sub_1A23DF544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, int a17)
{
  v20 = 1388665877 * ((&a14 - 1266476690 - 2 * (&a14 & 0xB483196E)) ^ 0x392E7B82);
  a14 = (199880445 * v17 + 103127814) ^ v20;
  a17 = v20 + 2769;
  a15 = a12;
  v21 = (*(v19 + 22872))(&a14);
  return (*(v19 + 8 * ((228 * (a16 != v18)) ^ 0x65Cu)))(v21);
}

uint64_t sub_1A23DFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, int a20, uint64_t a21, char *a22)
{
  v24 = 143681137 * ((((2 * &a17) | 0xEE7D41A0) - &a17 - 2000593104) ^ 0x16041798);
  a17 = v24 ^ 0x6163ACC5;
  a18 = v24 + a13 + 1421510852;
  a21 = a15;
  a22 = &a14;
  a19 = v24 ^ 0x5F6FA05A;
  v25 = (*(v23 + 8 * (a13 ^ 0xD6B)))(&a17);
  return (*(v23 + 8 * ((3198 * (a20 == v22 + (a13 ^ 0x7A6) - 475)) ^ a13)))(v25);
}

uint64_t sub_1A23DFC3C(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = (*(a1 + 8) ^ v1) + 1650021996;
  if (v6 < 0xC87904B4 != v5 > ((v4 - 1047) | 0x840u) + 931590763)
  {
    v7 = v5 > ((v4 - 1047) | 0x840u) + 931590763;
  }

  else
  {
    v7 = v5 - 931593036 > v6;
  }

  return (*(v2 + 8 * ((v7 * ((v4 + 820) ^ 0x7DC)) ^ (v4 + 1056))))();
}

uint64_t sub_1A23DFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a15;
  *(v19 - 112) = a12;
  *(v19 - 128) = (v18 + 606) ^ (((-304629231 - ((v19 - 128) | 0xEDD7BA11) + ((v19 - 128) | 0x122845EE)) ^ 0x38E36F94) * v16);
  (*(v15 + 8 * (v18 + 1843)))(v19 - 128);
  *(v19 - 128) = v18 + 1556366573 * ((v19 - 128) ^ 0x64E423EA) + 1139;
  *(v19 - 120) = v17;
  *(v19 - 112) = a12;
  v20 = (*(v15 + 8 * (v18 + 1816)))(v19 - 128);
  return (*(v15 + 8 * (((*(v19 - 104) <= ((v18 + 479) ^ 0x2F977242u)) * (((v18 - 981) | 0x800) - 2074)) ^ v18)))(v20);
}

uint64_t sub_1A23DFF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = 1388665877 * (((&a14 | 0xA9F6D4F3) + (~&a14 | 0x56092B0C)) ^ 0x245BB61E);
  a17 = v20 + 2769;
  a14 = (199880445 * v17 + 103127814) ^ v20;
  a15 = a12;
  v21 = (*(v19 + 22872))(&a14);
  return (*(v19 + 8 * ((52 * (a16 == v18)) ^ 0x254u)))(v21);
}

uint64_t sub_1A23E0120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, unsigned int a18, int a19, uint64_t a20, char *a21)
{
  v23 = 143681137 * ((1319375050 - (&a16 | 0x4EA410CA) + (&a16 | 0xB15BEF35)) ^ 0xD061587D);
  a16 = v23 ^ 0x6163ACC5;
  a17 = v23 + v22 + 1421511065;
  a18 = v23 ^ 0xD2D8B837;
  a20 = a12;
  a21 = &a13;
  v24 = (*(v21 + 8 * (v22 + 1390)))(&a16);
  return (*(v21 + 8 * (((a19 == 1863271989) * ((v22 ^ 0x1B0) + 17 * (v22 ^ 0x5C5) - 2815)) | v22)))(v24);
}

uint64_t sub_1A23E01F8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xD24u));

  return v3(v1);
}

uint64_t sub_1A23E02B0@<X0>(int a1@<W4>, unsigned int a2@<W5>, unint64_t a3@<X7>, int a4@<W8>)
{
  v16 = (v11 + 4 * v8);
  v17 = (*v16 ^ v4) + (v7 ^ HIDWORD(a3)) + a2 * (*(v14 + 4 * v8) ^ v4);
  *(v16 - 1) = (v6 + v17 - (((v15 & v10) + a4) & (2 * v17)) + 1029) ^ v12;
  return (*(v9 + 8 * (((v8 + 1 != v5) * v13) ^ a1)))();
}

uint64_t sub_1A23E0314(int8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  *(a4 + (v12 ^ a6 ^ a3) + v7) = veor_s8(*(v9 + (v12 ^ a6 ^ a3) + v7), a1);
  return (*(v11 + 8 * (((a5 == v12) * a7) ^ v10)))();
}

uint64_t sub_1A23E031C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v7 = a2 ^ 0x2EF ^ v2 ^ 0x47E7;
  v5 = ((a2 ^ 0x2EF) - 337) | 4;
  v10 = ((a2 ^ 0x2EF) + 1850) ^ (50899313 * (((&v10 | 0x5E7C4554) - (&v10 & 0x5E7C4554)) ^ 0x74B76F2E));
  v11 = v8;
  (*(v4 + 8 * (a2 ^ 0x87E)))(&v10);
  v11 = v9;
  v10 = (v5 + 2183) ^ (50899313 * (((&v10 | 0xD898C6CA) - (&v10 & 0xD898C6CA)) ^ 0xF253ECB0));
  (*(v4 + 8 * (v5 ^ 0xBC6)))(&v10);
  return 0;
}

uint64_t sub_1A23E03FC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 4) = -1863312128;
  return result;
}

uint64_t sub_1A23E0464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  v55 = LODWORD(STACK[0x3E0]) + 1331615750;
  v56 = ((v53 + 334346185) & 0xEC12433E ^ 0xDF56DD9F) + a53;
  v57 = (v56 < 0x59302FD7) ^ (v55 < ((v53 - 202) ^ 0x59302993u));
  v58 = v55 < v56;
  if (v57)
  {
    v58 = v56 < 0x59302FD7;
  }

  return (*(v54 + 8 * ((38 * v58) ^ v53)))();
}

uint64_t sub_1A23E04F0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((((v2 + 23) & 0x93) - 111) & (2 * *(v1 + v5))) - 119;
  return (*(v4 + 8 * ((61 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1A23E05CC(void *a1)
{
  if (a1[6])
  {
    v3 = (*a1 | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * (((((v1 - 51) ^ v4) & 1) * ((v1 - 1234723635) ^ 0xB667A37E)) ^ v1)))();
}