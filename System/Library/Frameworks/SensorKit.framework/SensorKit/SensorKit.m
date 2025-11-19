void SRPhotoplethysmogramOpticalSample.noiseTerms.getter(uint64_t a1@<X8>)
{
  v3 = [v1 whiteNoise];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  [v3 doubleValue];
  v6 = v5;

  v7 = [v1 pinkNoise];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  [v7 doubleValue];
  v10 = v9;

  v11 = [v1 backgroundNoise];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  [v11 doubleValue];
  v14 = v13;

  v15 = [v1 backgroundNoiseOffset];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;

    *a1 = v6;
    *(a1 + 8) = v10;
    *(a1 + 16) = v14;
    *(a1 + 24) = v18;
    *(a1 + 32) = 0;
  }

  else
  {
LABEL_6:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
  }
}

id SRPhotoplethysmogramOpticalSample.normalizedReflectance.getter()
{
  result = [v0 normalizedReflectance];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C914FEDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C914FEFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

id SRWristTemperatureSession.temperatures.getter@<X0>(void *a1@<X8>)
{
  result = [v1 temperatures];
  *a1 = result;
  a1[1] = sub_1C914FF88;
  a1[2] = 0;
  return result;
}

uint64_t sub_1C914FF88(uint64_t a1)
{
  sub_1C915008C(a1, &v2);
  sub_1C91500E8();
  return swift_dynamicCast();
}

unint64_t sub_1C914FFE0()
{
  result = qword_1EC391828;
  if (!qword_1EC391828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC391830, &qword_1C918F3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC391828);
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

uint64_t sub_1C915008C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C91500E8()
{
  result = qword_1EC391838;
  if (!qword_1EC391838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC391838);
  }

  return result;
}

id SRAcousticSettings.headphoneSafetyAudioLevel.getter()
{
  result = [v0 headphoneSafetyAudioLevel];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

void sub_1C9152F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

os_log_t __SRLogReaderExport_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "SRLogReaderExport");
  _MergedGlobals_0 = result;
  return result;
}

void sub_1C9154ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C9154F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C9155988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  objc_destroyWeak((v51 + 56));
  objc_destroyWeak((v52 + 64));
  objc_destroyWeak((v53 - 128));
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v53 - 240), 8);
  _Block_object_dispose((v53 - 208), 8);
  _Block_object_dispose((v53 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t getUIDeviceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = qword_1EE02AAD8;
  v7 = __Block_byref_object_dispose__0;
  v8 = qword_1EE02AAD8;
  if (!qword_1EE02AAD8)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getUIDeviceClass_block_invoke;
    v2[3] = &unk_1E8330448;
    v2[4] = &v3;
    __getUIDeviceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C915852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIDeviceClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!qword_1EE02AAE0)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8330468;
    v9 = 0;
    qword_1EE02AAE0 = _sl_dlopen();
  }

  if (!qword_1EE02AAE0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SRDevice.m" lineNumber:17 description:{@"%s", v7[0]}];
    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getUIDeviceClass(void)_block_invoke") description:{@"SRDevice.m", 18, @"Unable to find class %s", "UIDevice"}];
LABEL_10:
    __break(1u);
  }

  qword_1EE02AAD8 = *(*(*(a1 + 32) + 8) + 40);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EE02AAE0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C9158A38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void SRRegisterForDarwinNotification(void *a1, int *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = SRLogDaemonNotification;
  if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = a1;
    _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "Registering for darwin notification on %{public}@", &v12, 0xCu);
  }

  *a2 = -1;
  v7 = [a1 UTF8String];
  v8 = notify_register_dispatch(v7, a2, MEMORY[0x1E69E96A0], a3);
  if (v8 || *a2 == -1)
  {
    v9 = SRLogDaemonNotification;
    if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_ERROR))
    {
      v10 = *a2;
      v12 = 138543874;
      v13 = a1;
      v14 = 1026;
      v15 = v8;
      v16 = 1026;
      v17 = v10;
      _os_log_error_impl(&dword_1C914D000, v9, OS_LOG_TYPE_ERROR, "Failed to register for darwin notification %{public}@, status %{public}d, registration token %{public}d", &v12, 0x18u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void SRUnregisterForNotification(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2 != -1)
  {
    v5 = SRLogDaemonNotification;
    if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = a1;
      _os_log_debug_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEBUG, "Unregistering for darwin notification on %{public}@", &v9, 0xCu);
      v2 = *a2;
    }

    if (notify_cancel(v2))
    {
      v6 = SRLogDaemonNotification;
      if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_ERROR))
      {
        v8 = *a2;
        v9 = 138543618;
        v10 = a1;
        v11 = 1026;
        v12 = v8;
        _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "Failed to cancel notification %{public}@. status %{public}d", &v9, 0x12u);
      }
    }

    *a2 = -1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C915AB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C915C4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C9163F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C91645FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C91649CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 56));
  objc_destroyWeak((v16 - 96));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9164E50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C9164FE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t __legacyExtendedReasonBehavior_block_invoke()
{
  result = dyld_program_sdk_at_least();
  _MergedGlobals_3 = result ^ 1;
  return result;
}

void sub_1C916D538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C916E488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C916E63C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1C916F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C916F8F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C916FC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C91701EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v19 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t SRBundleIdentifiersWithPendingAuthorizations()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRBundleIdentifiersWithPendingAuthorizations() should no longer be called. The functionality has been removed.", v2, 2u);
  }

  return MEMORY[0x1E695E0F8];
}

void SRAddBundleToPendingAuthorizations()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRAddBundleToPendingAuthorizations() should no longer be called. The functionality has been removed.", v1, 2u);
  }
}

void SRRemoveBundleFromPendingAuthorizations()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRRemoveBundleFromPendingAuthorizations() should no longer be called. The functionality has been removed.", v1, 2u);
  }
}

uint64_t SRResetAuthorizationsForBundleWithCompletionHandler(void *a1, uint64_t a2)
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v4 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "SRResetAuthorizationsForBundleWithCompletionHandler() should no longer be called. Please call SRAuthorizationResetWithCompletionHandler() instead", v6, 2u);
  }

  return SRAuthorizationResetWithCompletionHandler(a1, a2);
}

uint64_t SRBundleIdentifiersAuthorizedToUseSensorKit(uint64_t a1)
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v2 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C914D000, v2, OS_LOG_TYPE_ERROR, "SRResetAuthorizationsForBundleWithCompletionHandler() should no longer be called. Please call SRAuthorizationFetchSnapshot() instead", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SRBundleIdentifiersAuthorizedToUseSensorKit_block_invoke;
  v4[3] = &unk_1E83309E8;
  v4[4] = a1;
  return SRAuthorizationSnapshot(v4);
}

uint64_t __SRBundleIdentifiersAuthorizedToUseSensorKit_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a2, "allKeys")}];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t SRGetAuthorizationStatusForBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v6 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "SRGetAuthorizationStatusForBundleIdentifier() should no longer be called. Please use [SRSensorReaderDelegate sensorReader:didChangeAuthorizationStatus:] after requesting authorization instead", v8, 2u);
  }

  return SRAuthorizationStatusForBundleIdentifier(a1, a2, a3);
}

void SRSetRequiredOnboardingCompleted()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRSetRequiredOnboardingCompleted() is no longer functional.", v1, 2u);
  }
}

BOOL SRIsRequiredOnboardingCompleted()
{
  v6 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v5[0]) = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRIsRequiredOnboardingCompleted() should no longer be called.", v5, 2u);
  }

  v1 = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient firstRunOnboardingCompleted];
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v2 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = v1;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "SRIsRequiredOnboardingCompleted() returning %{public, BOOL}d", v5, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

void SRSetDataCollectionEnabled()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRSetDataCollectionEnabled() is no longer functional. This should be enabled in Settings.", v1, 2u);
  }
}

BOOL SRIsDataCollectionEnabled()
{
  v6 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v5[0]) = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRIsDataCollectionEnabled() should no longer be called.", v5, 2u);
  }

  v1 = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient dataCollectionEnabled];
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v2 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = v1;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "SRIsDataCollectionEnabled() returning %{public, BOOL}d", v5, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t SRRequiredAppIdentifier()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRRequiredAppIdentifier() should no longer be called.", v2, 2u);
  }

  return [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
}

__CFString *SRStudyBundleIdPrefix()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v0 = qword_1EE02AB28;
  if (os_log_type_enabled(qword_1EE02AB28, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1C914D000, v0, OS_LOG_TYPE_ERROR, "SRStudyBundleIdPrefix() should no longer be called.", v2, 2u);
  }

  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    return @"com.appleinternal.health.Lime";
  }

  else
  {
    return @"com.apple.Research.study";
  }
}

os_log_t __SRLogLegacyPartnerApp_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "SRLegacyPartnerApp");
  qword_1EE02AB28 = result;
  return result;
}

os_log_t __SRLogNSBundle_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "SRLogNSBundle");
  qword_1EE02AB38 = result;
  return result;
}

uint64_t SRRequestAuthorizationForServices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (verifyRequestedClassesWithError(&v12))
  {
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SRRequestAuthorizationForServices_block_invoke;
    v11[3] = &unk_1E8330A60;
    v11[4] = SRAuthorizationPromptPresentationControllerClass;
    v11[5] = a2;
    v11[6] = a1;
    v11[7] = a3;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v11];
  }

  else
  {
    v9 = v12;
    v10 = *(a3 + 16);

    return v10(a3, v9);
  }
}

uint64_t verifyRequestedClassesWithError(uint64_t *a1)
{
  if (!NSClassFromString(&cfstr_Uiviewcontroll.isa))
  {
    if (qword_1EE02AB48 != -1)
    {
      dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
    }

    v5 = _MergedGlobals_7;
    if (!os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v6 = "Requested prompt while running in a non-UI process";
    v7 = &v10;
    goto LABEL_16;
  }

  SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
  SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
  if (SRRemoteAuthorizationPromptViewControllerClass && SRAuthorizationPromptPresentationControllerClass)
  {
    return 1;
  }

  if (qword_1EE02AB48 != -1)
  {
    dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
  }

  v5 = _MergedGlobals_7;
  if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v6 = "Failed to find required classes";
    v7 = &v9;
LABEL_16:
    _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
  }

LABEL_12:
  if (!*a1)
  {
    return 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
  result = 0;
  *a1 = v8;
  return result;
}

uint64_t getSRRemoteAuthorizationPromptViewControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getSRRemoteAuthorizationPromptViewControllerClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getSRRemoteAuthorizationPromptViewControllerClass_softClass;
  if (!getSRRemoteAuthorizationPromptViewControllerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSRRemoteAuthorizationPromptViewControllerClass_block_invoke;
    v2[3] = &unk_1E8330448;
    v2[4] = &v3;
    __getSRRemoteAuthorizationPromptViewControllerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C9172B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSRAuthorizationPromptPresentationControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getSRAuthorizationPromptPresentationControllerClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getSRAuthorizationPromptPresentationControllerClass_softClass;
  if (!getSRAuthorizationPromptPresentationControllerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSRAuthorizationPromptPresentationControllerClass_block_invoke;
    v2[3] = &unk_1E8330448;
    v2[4] = &v3;
    __getSRAuthorizationPromptPresentationControllerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C9172BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SRRequestAuthorizationForServices_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SRRequestAuthorizationForServices_block_invoke_2;
    v11[3] = &unk_1E8330408;
    v11[4] = *(a1 + 56);
    return [v4 presentPromptViewController:a2 withDesiredServices:v5 bundleIdentifier:v6 completionHandler:v11];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v10 = *(v8 + 16);

    return v10(v8, v9);
  }
}

uint64_t __SRRequestAuthorizationForServices_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 domain];
    if (([v3 isEqualToString:SRErrorDomain] & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    }
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t SRRequestAuthorizationForServicesWithBundle(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE02AB48 != -1)
  {
    dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
  }

  v6 = _MergedGlobals_7;
  if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "Please call +[SRSensorReader requestAuthorizationForBundle:services] instead", buf, 2u);
  }

  verifyPlist(a1, a2);
  v7 = [a1 bundleIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __SRRequestAuthorizationForServicesWithBundle_block_invoke;
  v9[3] = &unk_1E8330408;
  v9[4] = a3;
  return SRRequestAuthorizationForServices(v7, a2, v9);
}

uint64_t verifyPlist(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = [a1 _sr_validateRequiredFieldsForSensors:a2 error:&v6];
  if ((result & 1) == 0)
  {
    v4 = [v6 description];
    if (qword_1EE02AB48 != -1)
    {
      dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
    }

    v5 = _MergedGlobals_7;
    if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_fault_impl(&dword_1C914D000, v5, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
    }

    [v4 UTF8String];
    _os_crash();
    __break(1u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SRRequestAuthorizationForServicesWithBundle_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 domain];
  if ([v4 isEqualToString:SRErrorDomain])
  {
    [a2 code];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t SRRequestAuthorizationWithBundleForServices(void *a1, uint64_t a2, uint64_t a3)
{
  verifyPlist(a1, a2);
  v6 = [a1 bundleIdentifier];

  return SRRequestAuthorizationForServices(v6, a2, a3);
}

uint64_t SRShowAppsAndStudiesUsingSensorKit(uint64_t a1)
{
  v8 = 0;
  if (verifyRequestedClassesWithError(&v8))
  {
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SRShowAppsAndStudiesUsingSensorKit_block_invoke;
    v7[3] = &unk_1E8330A88;
    v7[4] = SRAuthorizationPromptPresentationControllerClass;
    v7[5] = a1;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v7];
  }

  else
  {
    v5 = v8;
    v6 = *(a1 + 16);

    return v6(a1, v5);
  }
}

uint64_t __SRShowAppsAndStudiesUsingSensorKit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SRShowAppsAndStudiesUsingSensorKit_block_invoke_2;
    v9[3] = &unk_1E8330408;
    v9[4] = *(a1 + 40);
    return [v4 presentAppsAndStudiesPromptViewController:a2 completionHandler:v9];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v8 = *(v6 + 16);

    return v8(v6, v7);
  }
}

uint64_t __SRShowAppsAndStudiesUsingSensorKit_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EE02AB48 != -1)
    {
      dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
    }

    v4 = _MergedGlobals_7;
    if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = a2;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Error presenting apps and studies view because %{public}@", &v7, 0xCu);
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SRShowStudyAuthorization(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (verifyRequestedClassesWithError(&v10))
  {
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SRShowStudyAuthorization_block_invoke;
    v9[3] = &unk_1E8330AB0;
    v9[5] = a1;
    v9[6] = a2;
    v9[4] = SRAuthorizationPromptPresentationControllerClass;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v9];
  }

  else
  {
    v7 = v10;
    v8 = *(a2 + 16);

    return v8(a2, v7);
  }
}

uint64_t __SRShowStudyAuthorization_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v5 = [*(a1 + 40) bundlePath];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SRShowStudyAuthorization_block_invoke_2;
    v10[3] = &unk_1E8330408;
    v10[4] = *(a1 + 48);
    return [v4 presentStudyAuthorizationPromptViewController:a2 bundlePath:v5 completionHandler:v10];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v9 = *(v7 + 16);

    return v9(v7, v8);
  }
}

uint64_t __SRShowStudyAuthorization_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EE02AB48 != -1)
    {
      dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
    }

    v4 = _MergedGlobals_7;
    if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = a2;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Error presenting app's authorization view because %{public}@", &v7, 0xCu);
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SRShowResearchData(uint64_t a1)
{
  v8 = 0;
  if (verifyRequestedClassesWithError(&v8))
  {
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SRShowResearchData_block_invoke;
    v7[3] = &unk_1E8330A88;
    v7[4] = SRAuthorizationPromptPresentationControllerClass;
    v7[5] = a1;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v7];
  }

  else
  {
    v5 = v8;
    v6 = *(a1 + 16);

    return v6(a1, v5);
  }
}

uint64_t __SRShowResearchData_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SRShowResearchData_block_invoke_2;
    v9[3] = &unk_1E8330408;
    v9[4] = *(a1 + 40);
    return [v4 presentResearchDataViewController:a2 completionHandler:v9];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v8 = *(v6 + 16);

    return v8(v6, v7);
  }
}

uint64_t __SRShowResearchData_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EE02AB48 != -1)
    {
      dispatch_once(&qword_1EE02AB48, &__block_literal_global_8);
    }

    v4 = _MergedGlobals_7;
    if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = a2;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Error presenting Research Data view because %{public}@", &v7, 0xCu);
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SRRequestFirstRunOnBoarding(uint64_t a1)
{
  v8 = 0;
  if (verifyRequestedClassesWithError(&v8))
  {
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SRRequestFirstRunOnBoarding_block_invoke;
    v7[3] = &unk_1E8330A88;
    v7[4] = SRAuthorizationPromptPresentationControllerClass;
    v7[5] = a1;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v7];
  }

  else
  {
    v5 = v8;
    v6 = *(a1 + 16);

    return v6(a1, v5);
  }
}

uint64_t __SRRequestFirstRunOnBoarding_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SRRequestFirstRunOnBoarding_block_invoke_2;
    v9[3] = &unk_1E8330408;
    v9[4] = *(a1 + 40);
    return [v4 presentFirstRunOnboardingViewController:a2 completionHandler:v9];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v8 = *(v6 + 16);

    return v8(v6, v7);
  }
}

uint64_t __SRRequestFirstRunOnBoarding_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 domain];
    if (([v3 isEqualToString:SRErrorDomain] & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    }
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t SRRequestAuthorizationMigrationForServices(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (verifyRequestedClassesWithError(&v12))
  {
    verifyPlist(a1, a2);
    SRRemoteAuthorizationPromptViewControllerClass = getSRRemoteAuthorizationPromptViewControllerClass();
    SRAuthorizationPromptPresentationControllerClass = getSRAuthorizationPromptPresentationControllerClass();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SRRequestAuthorizationMigrationForServices_block_invoke;
    v11[3] = &unk_1E8330A60;
    v11[4] = SRAuthorizationPromptPresentationControllerClass;
    v11[5] = a2;
    v11[6] = a1;
    v11[7] = a3;
    return [SRRemoteAuthorizationPromptViewControllerClass requestViewControllerWithCompletionHandler:v11];
  }

  else
  {
    v9 = v12;
    v10 = *(a3 + 16);

    return v10(a3, v9);
  }
}

uint64_t __SRRequestAuthorizationMigrationForServices_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) sharedInstance];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) bundleIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SRRequestAuthorizationMigrationForServices_block_invoke_2;
    v11[3] = &unk_1E8330408;
    v11[4] = *(a1 + 56);
    return [v4 presentMigrationPromptViewController:a2 withDesiredServices:v5 bundleIdentifier:v6 completionHandler:v11];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    v10 = *(v8 + 16);

    return v10(v8, v9);
  }
}

uint64_t __SRRequestAuthorizationMigrationForServices_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 domain];
    if (([v3 isEqualToString:SRErrorDomain] & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:8194 userInfo:0];
    }
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

Class __getSRRemoteAuthorizationPromptViewControllerClass_block_invoke(uint64_t a1)
{
  SensorKitUILibrary();
  result = objc_getClass("SRRemoteAuthorizationPromptViewController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSRRemoteAuthorizationPromptViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSRRemoteAuthorizationPromptViewControllerClass(void)_block_invoke") description:{@"SRAuthorizationPrompt.m", 24, @"Unable to find class %s", "SRRemoteAuthorizationPromptViewController"}];
    __break(1u);
  }

  return result;
}

void SensorKitUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SensorKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SensorKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8330AD0;
    v6 = 0;
    SensorKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SensorKitUILibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SensorKitUILibrary(void)"];
    v0 = [v2 handleFailureInFunction:v3 file:@"SRAuthorizationPrompt.m" lineNumber:22 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __SensorKitUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SensorKitUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSRAuthorizationPromptPresentationControllerClass_block_invoke(uint64_t a1)
{
  SensorKitUILibrary();
  result = objc_getClass("SRAuthorizationPromptPresentationController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSRAuthorizationPromptPresentationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSRAuthorizationPromptPresentationControllerClass(void)_block_invoke") description:{@"SRAuthorizationPrompt.m", 25, @"Unable to find class %s", "SRAuthorizationPromptPresentationController"}];
    __break(1u);
  }

  return result;
}

os_log_t __SRLogAuthorizationPrompt_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "AuthorizationPrompt");
  _MergedGlobals_7 = result;
  return result;
}

SRAbsoluteTime SRAbsoluteTimeGetCurrent(void)
{
  v0 = mach_continuous_time();

  return SRAbsoluteTimeFromContinuousTime(v0);
}

SRAbsoluteTime SRAbsoluteTimeFromContinuousTime(uint64_t cont)
{
  if (_syncToken != -1)
  {
    dispatch_once(&_syncToken, &__block_literal_global_9);
  }

  if (_contStart >= cont)
  {
    v2 = -1.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = *&_rtcStart + *&_remoteRTCOffset;
  TMConvertTicksToSeconds();
  return v3 + v4 * v2;
}

uint64_t __SRAbsoluteTimeFromContinuousTime_block_invoke()
{
  v0 = mach_continuous_time();
  _rtcStart = MEMORY[0x1CCA83630]();
  result = mach_continuous_time();
  _contStart = v0 + ((result - v0) >> 1);
  return result;
}

uint64_t SRAbsoluteTimeGetOffsets(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *&_rtcStart;
    result = TMConvertTicksToSeconds();
    *v3 = v4 - v5;
  }

  if (a2)
  {
    result = mach_get_times();
    *a2 = 0;
  }

  return result;
}

SRAbsoluteTime SRAbsoluteTimeFromCFAbsoluteTime(CFAbsoluteTime cf)
{
  mach_get_times();
  v2 = 0 / 1000000000.0 + 0 - *MEMORY[0x1E695E468];
  return cf - (v2 - SRAbsoluteTimeFromContinuousTime(0));
}

BOOL SRAbsoluteTimeSetSyntheticStartFromRemoteTime(unint64_t a1, unint64_t a2, double a3, uint64_t a4, double *a5)
{
  mach_get_times();
  v9 = 1.0;
  if (a2 >= a1)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = -1.0;
  }

  TMConvertTicksToSeconds();
  v12 = v11 + a3;
  TMConvertTicksToSeconds();
  v14 = v12 + v10 * v13;
  TMConvertTicksToSeconds();
  v16 = v14 - v15;
  TMConvertTicksToSeconds();
  v18 = v16 + v17;
  if (a1 <= _contStart)
  {
    v9 = -1.0;
  }

  v19 = *&_rtcStart;
  TMConvertTicksToSeconds();
  v21 = v19 + v20 * v9;
  v22 = v18 - v21;
  v23 = v21 + v18 - v21;
  if (v23 > 0.0)
  {
    _remoteRTCOffset = *&v22;
    if (a5)
    {
      *a5 = v22;
    }
  }

  return v23 > 0.0;
}

double SRAbsoluteTimeRoundedDownToNearestInterval(SRAbsoluteTime a1, double a2)
{
  if (a2 == 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 * floor(SRAbsoluteTimeToCFAbsoluteTime(a1) / v2);

  return SRAbsoluteTimeFromCFAbsoluteTime(v3);
}

id __sessionUUIDFromSessionIdentifier_block_invoke()
{
  qword_1EE02AB68 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1EE02AB70 = result;
  _MergedGlobals_8 = 0;
  return result;
}

uint64_t __cullOldSessions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_msgSend(qword_1EE02AB68 objectForKeyedSubscript:{a2), "doubleValue"}];
  v5 = v4;
  [objc_msgSend(qword_1EE02AB68 objectForKeyedSubscript:{a3), "doubleValue"}];
  if (v6 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t __SRAuthorizationStatusForBundleIdentifierWithConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AB80 != -1)
  {
    dispatch_once(&qword_1EE02AB80, &__block_literal_global_11);
  }

  v4 = _MergedGlobals_9;
  if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to com.apple.SensorKitAppHelper because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SRAuthorizationStatusForBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKitAppHelper"];
  [v6 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F48D7EE8)}];
  [v6 resume];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SRAuthorizationStatusForBundleIdentifierWithConnection_block_invoke;
  v11[3] = &unk_1E8330408;
  v11[4] = &v9;
  v7 = [v6 remoteObjectProxyWithErrorHandler:{v11, MEMORY[0x1E69E9820], 3221225472, __SRAuthorizationStatusForBundleIdentifier_block_invoke, &unk_1E8330F88, v6, a3}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SRAuthorizationStatusForBundleIdentifierWithConnection_block_invoke_1;
  v10[3] = &unk_1E8330F60;
  v10[4] = &v9;
  return [v7 authorizationRequestStatusForBundleId:a1 sensors:a2 reply:v10];
}

void __SRAuthorizationStatusForBundleIdentifier_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

uint64_t __SRAuthorizationResetWithConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AB80 != -1)
  {
    dispatch_once(&qword_1EE02AB80, &__block_literal_global_11);
  }

  v4 = _MergedGlobals_9;
  if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to com.apple.SensorKitAppHelper because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SRAuthorizationResetWithCompletionHandler(void *a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKitAppHelper"];
  [v4 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F48D7EE8)}];
  [v4 resume];
  v5 = [a1 bundleIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SRAuthorizationResetWithConnection_block_invoke;
  v10[3] = &unk_1E8330408;
  v10[4] = &v8;
  v6 = [v4 remoteObjectProxyWithErrorHandler:{v10, MEMORY[0x1E69E9820], 3221225472, __SRAuthorizationResetWithCompletionHandler_block_invoke, &unk_1E8330258, v4, a2}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __SRAuthorizationResetWithConnection_block_invoke_11;
  v9[3] = &unk_1E8330408;
  v9[4] = &v8;
  return [v6 resetAuthorizationsForBundleId:v5 reply:v9];
}

void __SRAuthorizationResetWithCompletionHandler_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

uint64_t SRAuthorizationFetchSnapshot(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKitAppHelper"];
  [v2 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F48D7EE8)}];
  [v2 resume];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SRAuthorizationFetchSnapshot_block_invoke;
  v6[3] = &unk_1E8330258;
  v6[4] = v2;
  v6[5] = a1;
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SRAuthorizationFetchSnapshot_block_invoke_13;
  v5[3] = &unk_1E8330FB0;
  v5[4] = v2;
  v5[5] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SRAuthorizationFetchSnapshotWithProxy_block_invoke;
  v7[3] = &unk_1E83309E8;
  v7[4] = v5;
  return [v3 authorizationSnapshotWithReply:v7];
}

void __SRAuthorizationFetchSnapshot_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AB80 != -1)
  {
    dispatch_once(&qword_1EE02AB80, &__block_literal_global_11);
  }

  v4 = _MergedGlobals_9;
  if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to com.apple.SensorKitAppHelper because %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

void __SRAuthorizationFetchSnapshot_block_invoke_13(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

uint64_t SRAuthorizationSnapshot(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKitAppHelper"];
  [v2 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F48D7EE8)}];
  [v2 resume];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SRAuthorizationSnapshot_block_invoke;
  v6[3] = &unk_1E8330258;
  v6[4] = v2;
  v6[5] = a1;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SRAuthorizationSnapshot_block_invoke_14;
  v5[3] = &unk_1E8330FB0;
  v5[4] = v2;
  v5[5] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SRAuthorizationFetchSnapshotWithProxy_block_invoke;
  v7[3] = &unk_1E83309E8;
  v7[4] = v5;
  return [v3 authorizationSnapshotWithReply:v7];
}

void __SRAuthorizationSnapshot_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AB80 != -1)
  {
    dispatch_once(&qword_1EE02AB80, &__block_literal_global_11);
  }

  v4 = _MergedGlobals_9;
  if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to com.apple.SensorKitAppHelper because %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

void __SRAuthorizationSnapshot_block_invoke_14(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

uint64_t SRResetAllAuthorizations()
{
  v0 = +[SRAuthorizationStore allSensorsStore];

  return [(SRAuthorizationStore *)v0 resetAllAuthorizations];
}

os_log_t __SRLogAuthorizationSPI_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "AuthorizationSPI");
  _MergedGlobals_9 = result;
  return result;
}

void sub_1C917D838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1C917DED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C917E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C917E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *descriptionFromErrorCode(uint64_t a1)
{
  if (a1 < 4096)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v4 = @"SRErrorNoAuthorization";
      }

      else
      {
        v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v4 = @"SRErrorInvalidEntitlement";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorDataInaccessible";
          break;
        case 3:
          v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorFetchRequestInvalid";
          break;
        case 4:
          v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorPromptDeclined";
          break;
        default:
          return 0;
      }
    }

    return [v3 localizedStringForKey:v4 value:&stru_1F48BB5C0 table:0];
  }

  else
  {
    if (!os_variant_has_internal_content())
    {
      return 0;
    }

    if (a1 > 12288)
    {
      if (a1 > 12295)
      {
        if ((a1 - 20480) >= 5)
        {
          if (a1 == 12296)
          {
            return @"Provided sample is from the future";
          }

          if (a1 == 0x4000)
          {
            return @"Sensor Configuration is invalid";
          }
        }

        return 0;
      }

      if (a1 <= 12291)
      {
        if (a1 == 12289)
        {
          return @"Writer Not Authorized";
        }

        else if (a1 == 12290)
        {
          return @"Writer Input was invalid";
        }

        else
        {
          return @"No available memory mapped to write sample";
        }
      }

      else if (a1 > 12293)
      {
        if (a1 == 12294)
        {
          return @"Framework datastore state is invalid";
        }

        else
        {
          return @"Writer does not have explicit authorization";
        }
      }

      else if (a1 == 12292)
      {
        return @"Provided sample is out of order from previous samples";
      }

      else
      {
        return @"Provided sample is too large";
      }
    }

    else
    {
      if (a1 <= 8195)
      {
        if (a1 >= 0x2000)
        {
          if (a1 > 8193)
          {
            if (a1 == 8194)
            {
              return @"Internal Error";
            }

            else
            {
              return @"Prompt Busy";
            }
          }

          else if (a1 == 0x2000)
          {
            return @"No space available to write samples";
          }

          else
          {
            return @"Connection Not Found";
          }
        }

        switch(a1)
        {
          case 4096:
            return @"Required app is not installed";
          case 4097:
            return @"Required onboarding not completed";
          case 4098:
            return @"Global setting not enabled";
        }

        return 0;
      }

      if (a1 <= 8198)
      {
        if (a1 == 8196)
        {
          return @"Prompt is cancelled";
        }

        if (a1 != 8197)
        {
          return @"No device identifier could be found";
        }

        return 0;
      }

      if (a1 > 8200)
      {
        if (a1 == 8201)
        {
          return @"No new authorization groups were requested";
        }

        if (a1 == 12288)
        {
          return @"Writer Not Monitoring";
        }

        return 0;
      }

      if (a1 == 8199)
      {
        return @"Time synchronization state is invalid";
      }

      else
      {
        return @"The requested bundle authorization is being requested for could not be found";
      }
    }
  }
}

uint64_t recoverySuggestionFromErrorCode(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"SRErrorNoAuthorizationRecovery";
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    v1 = @"SRErrorDataInaccessibleRecovery";
  }

  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return [v2 localizedStringForKey:v1 value:&stru_1F48BB5C0 table:0];
}

void sub_1C9182F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C9183CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C9183F04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C918410C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C9184310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __legacyAuthorizationStatusBehavior_block_invoke()
{
  result = dyld_program_sdk_at_least();
  _MergedGlobals_11 = result ^ 1;
  return result;
}

uint64_t writeMetadataBytesForFrameStore(SRFramesStoreOffsetEnumerator *a1, const void *a2, size_t a3, SRError **a4, double a5)
{
  if (a1)
  {
    v10 = *&a1[2].super.isa;
  }

  else
  {
    v10 = 0.0;
  }

  ClosestMetadataObjectInFrameStore = findClosestMetadataObjectInFrameStore(a1, v10);
  if (ClosestMetadataObjectInFrameStore)
  {
    v12 = *(ClosestMetadataObjectInFrameStore + 4);
    v13 = v12 && v12 == a3;
    if (v13 && !memcmp(a2, ClosestMetadataObjectInFrameStore + 20, a3))
    {
      return 1;
    }
  }

  if (a1)
  {
    isa = a1[1].super.isa;
    if (isa && (v15 = *(isa + 2)) != 0)
    {
      v16 = *(v15 + 4);
    }

    else
    {
      offset = a1->_offset;
      if (offset)
      {
        v16 = *(offset + 24) - *(offset + 16) + 56;
      }

      else
      {
        v16 = 56;
      }
    }

    v17 = [(SRFrameStore *)a1 writeFrameForBytes:a2 length:a3 timestamp:a4 error:a5];
    v19 = a1[1].super.isa;
    if (v19 && (v20 = *(v19 + 2)) != 0)
    {
      v21 = *(v20 + 4);
    }

    else
    {
      v22 = a1->_offset;
      if (v22)
      {
        v21 = *(v22 + 24) - *(v22 + 16) + 56;
      }

      else
      {
        v21 = 56;
      }
    }

    if (v21 >= v16 + a3)
    {
      [(SRFrameStore *)a1 sync];
    }
  }

  else
  {
    v17 = 0;
    if (a4)
    {
      *a4 = [SRError errorWithCode:12294];
    }
  }

  return v17;
}

uint64_t fetchMetadataFromFrameStore(SRFramesStoreOffsetEnumerator *a1, uint64_t *a2, uint64_t *a3, double a4)
{
  result = findClosestMetadataObjectInFrameStore(a1, a4);
  v9 = 0;
  *a2 = result;
  if (!a1 || !result)
  {
    goto LABEL_12;
  }

  v10 = result + *(result + 16) + 20;
  result = [(SRFrameStore *)a1 isValidFrame:v10];
  if (!result)
  {
    v9 = 0;
LABEL_12:
    *a3 = v9;
    return result;
  }

  *a3 = v10;
  if (*v10 != -1.0 && *v10 <= a4)
  {
    *a2 = v10;
    v12 = v10 + *(v10 + 16) + 20;
    result = [(SRFrameStore *)a1 isValidFrame:v12];
    if (result)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_12;
  }

  return result;
}

double *findClosestMetadataObjectInFrameStore(SRFramesStoreOffsetEnumerator *a1, double a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(SRFrameStore *)a1 enumerateFromOffset:?];
  v5 = [(SRFramesStoreOffsetEnumerator *)v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v7 = *(*(&v17 + 1) + 8 * v9);
      v11 = SRLogDatastore;
      if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_DEBUG))
      {
        if (a1)
        {
          offset = a1[1]._offset;
        }

        else
        {
          offset = 0;
        }

        v13 = *v7;
        *buf = 138413058;
        v22 = offset;
        v23 = 2048;
        v24 = v13;
        v25 = 2048;
        v26 = a2;
        v27 = 2048;
        v28 = v10;
        _os_log_debug_impl(&dword_1C914D000, v11, OS_LOG_TYPE_DEBUG, "metadata segment: %@, metadata frame time: %f, sample time: %f, current metadata object: %p", buf, 0x2Au);
      }

      if (*v7 > a2)
      {
        break;
      }

      ++v9;
      v10 = v7;
      if (v6 == v9)
      {
        v14 = [(SRFramesStoreOffsetEnumerator *)v4 countByEnumeratingWithState:&v17 objects:v29 count:16, *v7];
        v6 = v14;
        v10 = v7;
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void SRMakeSegmentHeader(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 40) = 0u;
  *a1 = 1195725633;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  if (a3)
  {
    v5 = [a3 UTF8String];
    v6 = strlen(v5);
    if (v6 >= 0x21)
    {
      v7 = v6;
      v8 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        v12 = 134349312;
        v13 = v7;
        v14 = 2050;
        v15 = 32;
        _os_log_error_impl(&dword_1C914D000, v8, OS_LOG_TYPE_ERROR, "Segment name is too large to store in the segment header. Truncating the segment name of %{public}zu to %{public}lu", &v12, 0x16u);
      }
    }

    v9 = *(v5 + 16);
    *v4 = *v5;
    v4[1] = v9;
  }

  else
  {
    v10 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_INFO, "No segment name provided for the segment header", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t memoryMappingsForPermission(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 2:
      v5 = [[SRMemoryMapping alloc] initWithSize:2 protection:1 advice:56 offset:?];
      v14 = v5;
      v6 = MEMORY[0x1E695DEC8];
      v7 = &v14;
      goto LABEL_7;
    case 1:
      v10 = [[SRMemoryMapping alloc] initWithSize:2 protection:1 advice:0 offset:?];
      v5 = [[SRMemoryMapping alloc] initWithSize:2 protection:2 advice:*(a2 + 4) + 56 offset:?];
      v13[0] = v10;
      v13[1] = v5;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

LABEL_8:
      break;
    case 0:
      v5 = [[SRMemoryMapping alloc] initWithSize:1 protection:1 advice:56 offset:?];
      v15[0] = v5;
      v6 = MEMORY[0x1E695DEC8];
      v7 = v15;
LABEL_7:
      v4 = [v6 arrayWithObjects:v7 count:1];
      goto LABEL_8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}