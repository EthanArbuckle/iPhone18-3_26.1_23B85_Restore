uint64_t AXDeviceSupportsHoverTextTyping()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (AXDeviceIsPad())
    {
      return 1;
    }

    else
    {

      return AXDeviceIsPhone();
    }
  }

  return result;
}

uint64_t AXDeviceHasJindo()
{
  if (AXProcessIsBackboard())
  {
    return 0;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  v6 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  if (!getSBUIIsSystemApertureEnabledSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke;
    v2[3] = &unk_1E71E9A80;
    v2[4] = &v3;
    __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(v2);
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v1)
  {
    AXDeviceHasJindo_cold_1();
  }

  return v1();
}

void sub_18B1BD474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsPencilHover()
{
  if (AXDeviceSupportsPencilHover_onceToken != -1)
  {
    AXDeviceSupportsPencilHover_cold_1();
  }

  return AXDeviceSupportsPencilHover_isSupported;
}

void __AXDeviceSupportsPencilHover_block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  v0 = IOHIDEventSystemClientCreateWithType();
  if (v0)
  {
    v1 = v0;
    v15[0] = @"PrimaryUsagePage";
    v15[1] = @"PrimaryUsage";
    v16[0] = &unk_1EFE96388;
    v16[1] = &unk_1EFE963A0;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    IOHIDEventSystemClientSetMatching();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = IOHIDEventSystemClientCopyServices(v1);
    v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = IOHIDServiceClientCopyProperty(*(*(&v10 + 1) + 8 * i), @"MaxHoverHeight");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 doubleValue];
            AXDeviceSupportsPencilHover_isSupported = v9 > 0.0;

            goto LABEL_12;
          }
        }

        v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    CFRelease(v1);
  }
}

uint64_t AXDeviceSupportsConfirmWith()
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isPasscodeSet];
  if ((v3 & 1) == 0)
  {
    v0 = [MEMORY[0x1E698F3A8] manager];
    v1 = [v0 identities:0];
    if (![v1 count])
    {
      v4 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  if (AXDeviceSupportsSecureDoubleClick_onceToken != -1)
  {
    AXDeviceSupportsSecureDoubleClick_cold_1();
  }

  v4 = AXDeviceSupportsSecureDoubleClick_supportsSecureDoubleClick;
  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v4 & 1;
}

uint64_t AXDeviceSupportsVoiceBanking()
{
  result = AXDeviceSupportsVoiceBankingSpeech();
  if (result)
  {

    return MEMORY[0x1EEDE9DF0]();
  }

  return result;
}

uint64_t AXDeviceSupportsMotionCues()
{
  if (AXDeviceSupportsMotionCues_onceToken != -1)
  {
    AXDeviceSupportsMotionCues_cold_1();
  }

  return AXDeviceSupportsMotionCues_DeviceSupportsMotionCues;
}

void __AXDeviceSupportsMotionCues_block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v0 = getCMMotionManagerClass_softClass;
    v8 = getCMMotionManagerClass_softClass;
    if (!getCMMotionManagerClass_softClass)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getCMMotionManagerClass_block_invoke;
      v4[3] = &unk_1E71E9A80;
      v4[4] = &v5;
      __getCMMotionManagerClass_block_invoke(v4);
      v0 = v6[3];
    }

    v1 = v0;
    _Block_object_dispose(&v5, 8);
    v2 = [[v0 alloc] initUsing6AxisSensorFusion];
    v3 = [v2 isDeviceMotionAvailableNoSim];

    AXDeviceSupportsMotionCues_DeviceSupportsMotionCues = v3;
  }
}

void sub_18B1BD918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsGuestPass()
{
  if (AXDeviceSupportsGuestPass_onceToken != -1)
  {
    AXDeviceSupportsGuestPass_cold_1();
  }

  return AXDeviceSupportsGuestPass_DeviceSupportsGuestPass;
}

uint64_t __AXDeviceSupportsGuestPass_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    AXDeviceSupportsGuestPass_DeviceSupportsGuestPass = 1;
  }

  return result;
}

uint64_t AXDeviceSupportsVirtualTrackpad()
{
  result = AXDeviceIsPad();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t AXDeviceSupportsAirPodsHeadGestures()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (AXDeviceIsPhone() & 1) != 0 || (AXDeviceIsPad())
    {
      return 1;
    }

    else
    {

      return AXDeviceIsRealityDevice();
    }
  }

  return result;
}

uint64_t AXDeviceSupportsKShotMedina()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t AXDeviceProcessLAStorageError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a3 + 16))(a3, 0, 0);
  }

  return result;
}

uint64_t AXDeviceSetKShotPreboardEnabled()
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    AXDeviceSetKShotPreboardEnabled_cold_1();
  }

  return 0;
}

uint64_t AXDeviceSetAssistantWhileFaceDownEnabled()
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    AXDeviceSetAssistantWhileFaceDownEnabled_cold_1();
  }

  return 0;
}

uint64_t AXDeviceIsVirtualMachine()
{
  if (AXDeviceIsVirtualMachine_onceToken != -1)
  {
    AXDeviceIsVirtualMachine_cold_1();
  }

  return AXDeviceIsVirtualMachine_result;
}

uint64_t __AXDeviceIsVirtualMachine_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceIsVirtualMachine_result = result;
  return result;
}

BOOL AXDeviceIsPhysicalHardware()
{
  if (AXDeviceIsVirtualMachine_onceToken != -1)
  {
    AXDeviceIsVirtualMachine_cold_1();
  }

  return (AXDeviceIsVirtualMachine_result & 1) == 0;
}

id getGMAvailabilityWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGMAvailabilityWrapperClass_softClass;
  v7 = getGMAvailabilityWrapperClass_softClass;
  if (!getGMAvailabilityWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGMAvailabilityWrapperClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getGMAvailabilityWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B1BDD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceHasGreyMatterEnabled()
{
  v1 = 2;
  LODWORD(result) = [getGMAvailabilityWrapperClass() shouldBeShownInSettingsReturningAvailabilityStatus:&v1];
  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

Class __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PassKitCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB700;
    v5 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    __getPKPassLibraryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKPassLibraryClass_block_invoke_cold_1();
  }

  getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSOSManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SOSLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB718;
    v5 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    __getSOSManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SOSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSManagerClass_block_invoke_cold_1();
  }

  getSOSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SOSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  return result;
}

void __AXFallbackDeviceSizeMM_block_invoke()
{
  switch(MGGetSInt32Answer())
  {
    case 1u:
    case 2u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4049000000000000;
      v0 = 0x4052800000000000;
      goto LABEL_31;
    case 3u:
    case 4u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4068600000000000;
      v0 = 0x4062600000000000;
      goto LABEL_31;
    case 5u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4049000000000000;
      v0 = 0x4056800000000000;
      goto LABEL_31;
    case 6u:
    case 7u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4064000000000000;
      v1 = 0x405E000000000000;
      goto LABEL_5;
    case 8u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x404D800000000000;
      v0 = 0x405A400000000000;
      goto LABEL_31;
    case 9u:
    case 0xAu:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4051400000000000;
      v1 = 0x405F000000000000;
LABEL_5:
      v0 = v1;
      goto LABEL_31;
    case 0xBu:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4068800000000000;
      v0 = 0x4070400000000000;
      goto LABEL_31;
    case 0xCu:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x403C333333333333;
      v0 = 0x4041A66666666666;
      goto LABEL_31;
    case 0xDu:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x403899999999999ALL;
      v0 = 0x403ECCCCCCCCCCCDLL;
      goto LABEL_31;
    case 0xEu:
      v2 = &unk_1EA9B8000;
      v3 = 0x4065C00000000000;
      goto LABEL_30;
    case 0xFu:
    case 0x18u:
      goto LABEL_9;
    case 0x10u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x403B19999999999ALL;
      v0 = 0x4040F33333333333;
      goto LABEL_31;
    case 0x11u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x403F000000000000;
      v0 = 0x4043666666666666;
      goto LABEL_31;
    case 0x12u:
      if ((AXDeviceIsD32() & 1) != 0 || AXDeviceIsD42())
      {
LABEL_9:
        AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4051400000000000;
        v0 = 0x4060E00000000000;
LABEL_31:
        AXFallbackDeviceSizeMM_DeviceDimensions_1 = v0;
        return;
      }

      if ((AXDeviceIsD33() & 1) != 0 || AXDeviceIsD43())
      {
        AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4052800000000000;
        v0 = 0x4062C00000000000;
        goto LABEL_31;
      }

      return;
    case 0x13u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4051400000000000;
      v0 = 0x4062200000000000;
      goto LABEL_31;
    case 0x14u:
      v2 = &unk_1EA9B8000;
      v3 = 0x4064200000000000;
LABEL_30:
      v2[426] = v3;
      v0 = 0x406CC00000000000;
      goto LABEL_31;
    case 0x16u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x404D000000000000;
      v0 = 0x405F400000000000;
      goto LABEL_31;
    case 0x19u:
      AXFallbackDeviceSizeMM_DeviceDimensions_0 = 0x4051C00000000000;
      v0 = 0x4063400000000000;
      goto LABEL_31;
    default:
      if (audit_stringSOS_block_invoke_twiceToken != -1)
      {
        __AXFallbackDeviceSizeMM_block_invoke_cold_1();
      }

      v0 = 0x4069666660000000;
      v4 = 0x40630CCCC0000000;
      v5 = MGGetProductType();
      if (v5 != 228444038 && v5 != 3645319985)
      {
        if (audit_stringSOS_block_invoke_onceToken2 != -1)
        {
          __AXFallbackDeviceSizeMM_block_invoke_cold_2();
        }

        v0 = 0x4052800000000000;
        v4 = 0x4049000000000000;
      }

      AXFallbackDeviceSizeMM_DeviceDimensions_0 = v4;
      goto LABEL_31;
  }
}

void __AXFallbackDeviceSizeMM_block_invoke_2()
{
  v0 = AXLogDisplay();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __AXFallbackDeviceSizeMM_block_invoke_2_cold_1();
  }
}

void __AXFallbackDeviceSizeMM_block_invoke_297()
{
  v0 = AXLogDisplay();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __AXFallbackDeviceSizeMM_block_invoke_297_cold_1();
  }
}

void sub_18B1BE5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXMDisplayManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AXMediaUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB730;
    v5 = 0;
    AXMediaUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    __getAXMDisplayManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXMDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMDisplayManagerClass_block_invoke_cold_1();
  }

  getAXMDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXMediaUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXMediaUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXWatchRemoteScreenServicesLibrary();
  result = dlsym(v2, "AXWatchRemoteScreenIsTwiceFeatureOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXWatchRemoteScreenServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AXWatchRemoteScreenServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71EB748;
    v4 = 0;
    AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    AXWatchRemoteScreenServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AXWatchRemoteScreenServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXWatchRemoteScreenServicesLibrary();
  result = dlsym(v2, "AXWatchRemoteScreenIsPairedGizmoSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71EB760;
    v6 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardUIServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SBUIIsSystemApertureEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIIsSystemApertureEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCMMotionManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreMotionLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB778;
    v5 = 0;
    CoreMotionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    __getCMMotionManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CMMotionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCMMotionManagerClass_block_invoke_cold_1();
  }

  getCMMotionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMotionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMotionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGMAvailabilityWrapperClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __GenerativeModelsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB790;
    v5 = 0;
    GenerativeModelsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    __getGMAvailabilityWrapperClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGMAvailabilityWrapperClass_block_invoke_cold_1();
  }

  getGMAvailabilityWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GenerativeModelsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GenerativeModelsLibraryCore_frameworkLibrary = result;
  return result;
}

void _btSessionEventCallback(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = a4;
  v10 = v9;
  if (a3 | a2)
  {
    if (a2 >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
    }

    else
    {
      v11 = off_1E71EB888[a2];
    }

    v13 = AXLogBluetooth();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = v11;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "VOTBTM: session attach called back with %{public}@ (%d)", buf, 0x12u);
    }

    if ([v10 available])
    {
      [v10 postNotificationName:@"VOSBluetoothAvailabilityChangedNotification" object:*MEMORY[0x1E695E4C0]];
      [v10 _cleanup:1];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v10 attach:v14];
  }

  else
  {
    if ([v9 _setup:a1])
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    else
    {
      [v10 _cleanup:0];
      v12 = MEMORY[0x1E695E4C0];
    }

    [v10 postNotificationName:@"VOSBluetoothAvailabilityChangedNotification" object:*v12];
  }

  objc_autoreleasePoolPop(v8);
}

void _btLocalStatusEventCallback(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a4;
  if (a2 > 5)
  {
    if ((a2 - 6) < 2)
    {
      v9 = AXLogBluetooth();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_INFO, "received BT_LOCAL_DEVICE_DISCOVERY_STARTED/STOPPED event", v12, 2u);
      }

      [v7 _discoveryStateChanged];
    }
  }

  else if (a2)
  {
    if (a2 == 3)
    {
      v11 = AXLogBluetooth();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_INFO, "received BT_LOCAL_DEVICE_CONNECTABILITY_CHANGED event", v13, 2u);
      }

      [v7 _connectabilityChanged];
    }

    else if (a2 == 5)
    {
      v8 = AXLogBluetooth();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "received BT_LOCAL_DEVICE_CONNECTION_STATUS_CHANGED event", buf, 2u);
      }

      [v7 _connectedStatusChanged];
    }
  }

  else
  {
    v10 = AXLogBluetooth();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_INFO, "Received BT_LOCAL_DEVICE_POWER_STATE_CHANGED event", v15, 2u);
    }

    [v7 _powerChanged];
  }

  objc_autoreleasePoolPop(v6);
}

void _btDiscoveryStatusEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  if (a2 == 1)
  {
    [a5 _restartScan];
  }

  objc_autoreleasePoolPop(v7);
}

void _btDiscoveryEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = a5;
  v10 = [v9 addDeviceIfNeeded:a3];
  v11 = AXLogBluetooth();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "VOTBTM: Discovery event for device %{public}@", &v17, 0xCu);
  }

  if (v10)
  {
    if (a2 == 1)
    {
      v13 = AXLogBluetooth();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v10;
        _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_DISCOVERY_DEVICE_LOST event for device %{public}@", &v17, 0xCu);
      }

      v14 = v9[11];
      v15 = [v10 address];
      [v14 setObject:0 forKeyedSubscript:v15];

      [v9 _removeDevice:v10];
      [v9 postNotificationName:@"VOSBluetoothDeviceRemovedNotification" object:v10];
      v16 = v9[14];
      if (v16)
      {
        (*(v16 + 16))(v16, v10);
      }
    }

    else if (!a2)
    {
      v12 = AXLogBluetooth();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v10;
        _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_DISCOVERY_DEVICE_FOUND event for device %{public}@", &v17, 0xCu);
      }

      [v9 _addDiscoveredDevice:v10];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void pairingAgentStatusEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = a5;
  v11 = v10;
  if (a3 == 4294901761)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 addDeviceIfNeeded:a3];
    if (v12)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v13 = AXLogBluetooth();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543362;
            v19 = v12;
            v14 = "VOTBTM: received BT_PAIRING_ATTEMPT_STARTED event for device %{public}@";
            v16 = v13;
            v17 = 12;
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        if (a2 == 3)
        {
          v15 = AXLogBluetooth();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543618;
            v19 = v12;
            v20 = 1024;
            v21 = a4;
            _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_PAIRING_ATTEMPT_COMPLETE event for device %{public}@ with result %d", &v18, 0x12u);
          }

          if (!a4)
          {
            [v11 postNotificationName:@"VOSBluetoothPairingPINResultSuccessNotification" object:v12];
            goto LABEL_22;
          }

          v13 = [MEMORY[0x1E696AD98] numberWithInt:a4];
          [v11 postNotificationName:@"VOSBluetoothPairingPINResultFailedNotification" object:v12 error:v13];
          goto LABEL_21;
        }
      }

      else
      {
        if (!a2)
        {
          v13 = AXLogBluetooth();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18) = 0;
            v14 = "VOTBTM: received BT_PAIRING_AGENT_STARTED event";
            goto LABEL_17;
          }

LABEL_21:

          goto LABEL_22;
        }

        if (a2 == 1)
        {
          v13 = AXLogBluetooth();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18) = 0;
            v14 = "VOTBTM: received BT_PAIRING_AGENT_STOPPED event";
LABEL_17:
            v16 = v13;
            v17 = 2;
LABEL_20:
            _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, v14, &v18, v17);
            goto LABEL_21;
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_22:

  objc_autoreleasePoolPop(v9);
}

void pairingAgentPincodeCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = a4;
  v8 = [v7 addDeviceIfNeeded:a2];
  v9 = AXLogBluetooth();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "VOTBTM: received pincode request for device %{public}@", &v10, 0xCu);
  }

  if (v8)
  {
    [v7 postNotificationName:@"VOSBluetoothPairingPINRequestNotification" object:v8];
  }

  objc_autoreleasePoolPop(v6);
}

void pairingAgentUserConfirmationCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = a5;
  v11 = [v10 addDeviceIfNeeded:a2];
  if (v11)
  {
    v12 = AXLogBluetooth();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (v13)
      {
        *buf = 67109378;
        v18[0] = a3;
        LOWORD(v18[1]) = 2114;
        *(&v18[1] + 2) = v11;
        _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "VOTBTM: received user confirmation request (numeric comparison to %06u) for device %{public}@", buf, 0x12u);
      }

      v14 = MEMORY[0x1E695DF20];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
      v16 = [v14 dictionaryWithObjectsAndKeys:{v11, @"device", v15, @"value", 0}];
      [v10 postNotificationName:@"VOSBluetoothPairingUserNumericComparisionNotification" object:v16];
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        *v18 = v11;
        _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "VOTBTM: received user confirmation request for device %{public}@", buf, 0xCu);
      }

      [v10 postNotificationName:@"VOSBluetoothPairingUserConfirmationNotification" object:v11];
    }
  }

  objc_autoreleasePoolPop(v9);
}

void pairingAgentPassKeyDisplayCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = a4;
  v9 = [v8 addDeviceIfNeeded:a2];
  v10 = AXLogBluetooth();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "VOTBTM: received passkey display request for device %{public}@", buf, 0xCu);
  }

  if (v9)
  {
    v11 = MEMORY[0x1E695DF20];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    v13 = [v11 dictionaryWithObjectsAndKeys:{v9, @"device", v12, @"value", 0}];
    [v8 postNotificationName:@"VOSBluetoothPairingPassKeyDisplayNotification" object:v13];
  }

  objc_autoreleasePoolPop(v7);
}

id VOSAddressForBTDevice()
{
  v2[31] = *MEMORY[0x1E69E9840];
  if (BTDeviceGetAddressString())
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  return v0;
}

void _btServiceEventCallback(uint64_t a1, int a2, int a3, int a4, uint64_t a5, void *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = a6;
  v14 = [v13 addDeviceIfNeeded:a1];
  if (a3 != 601)
  {
    v15 = AXLogBluetooth();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 67109888;
      *v40 = a2;
      *&v40[4] = 1024;
      *&v40[6] = a3;
      v41 = 1024;
      v42 = a4;
      v43 = 1024;
      v44 = a5;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "VOTBTM: _btServiceEventCallback: service = %u eventType = %d event = %d result = %d", &v39, 0x1Au);
    }
  }

  if (a2 == -1 || (a2 & 0x40) == 0)
  {
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        v22 = [v14 connectedServicesCount];
        if (a4 != 12 || a5)
        {
          if (a4 == 2 && !a5)
          {
            goto LABEL_54;
          }

          v27 = AXLogBluetooth();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 134217984;
            *v40 = v22;
            _os_log_impl(&dword_18B15E000, v27, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_DISCONNECT event type with %lu currently connected services", &v39, 0xCu);
          }

          if (v22)
          {
            goto LABEL_52;
          }

          v21 = @"VOSBluetoothDeviceDisconnectFailedNotification";
        }

        else
        {
          v23 = AXLogBluetooth();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 134217984;
            *v40 = v22;
            _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_DISCONNECTION_RESULT event with %lu currently connected services", &v39, 0xCu);
          }

          if (v22)
          {
            goto LABEL_52;
          }

          v21 = @"VOSBluetoothDeviceDisconnectSuccessNotification";
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_54;
        }

        v16 = [v14 connectedServicesCount];
        if (([v14 isNameCached] & 1) == 0 && !BTDeviceGetName())
        {
          v17 = v13[11];
          v18 = [v14 address];
          [v17 setObject:v14 forKeyedSubscript:v18];

          [v13 postNotificationName:@"VOSBluetoothDeviceUpdatedNotification" object:v14];
          v19 = v13[13];
          if (v19)
          {
            (*(v19 + 16))(v19, v14);
          }
        }

        if (a4 != 11 || a5)
        {
          v29 = a4 == 1 && a5 == 0;
          if (a4 && !v29)
          {
            v30 = AXLogBluetooth();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v39 = 134217984;
              *v40 = v16;
              _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_CONNECT event type with %lu currently connected services", &v39, 0xCu);
            }

            v31 = AXLogBluetooth();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v39 = 67109120;
              *v40 = a5;
              _os_log_impl(&dword_18B15E000, v31, OS_LOG_TYPE_DEFAULT, "VOTBTM: result = %d", &v39, 8u);
            }

            v32 = [MEMORY[0x1E696AD98] numberWithInt:a5];
            [v13 postNotificationName:@"VOSBluetoothDeviceConnectFailedNotification" object:v14 error:v32];

            v33 = [MEMORY[0x1E696AD98] numberWithInt:a5];
            [v13 postNotificationName:@"VOSBluetoothDeviceConnectFailedNotification" object:v14 error:v33];
          }

          goto LABEL_52;
        }

        v20 = AXLogBluetooth();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 134217984;
          *v40 = v16;
          _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_CONNECTION_RESULT event with %lu currently connected services", &v39, 0xCu);
        }

        v21 = @"VOSBluetoothDeviceConnectSuccessNotification";
      }

      [v13 postNotificationName:v21 object:v14];
LABEL_52:
      v34 = v13[13];
      if (v34)
      {
        (*(v34 + 16))(v34, v14);
      }

      goto LABEL_54;
    }

    if (a2 != -1)
    {
      if (a2 != 1)
      {
        goto LABEL_54;
      }

      v24 = AXLogBluetooth();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_18B15E000, v24, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_DEPENDENT_EVENT event for BT_SERVICE_HANDSFREE", &v39, 2u);
      }

      if (a4 != 101 || a5)
      {
        if (a4 != 102 || a5)
        {
          goto LABEL_54;
        }

        v25 = v13;
        v26 = 0;
      }

      else
      {
        v25 = v13;
        v26 = 1;
      }

      [v25 setAudioConnected:v26];
      goto LABEL_54;
    }

    v35 = AXLogBluetooth();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_18B15E000, v35, OS_LOG_TYPE_DEFAULT, "VOTBTM: received BT_SERVICE_DEPENDENT_EVENT event for BT_SERVICE_ALL", &v39, 2u);
    }

    if (a4 == 701 && !a5)
    {
      [v14 clearName];
      [v13 postNotificationName:@"VOSBluetoothDeviceUpdatedNotification" object:v14];
      v36 = v13[13];
      if (v36)
      {
        (*(v36 + 16))(v36, v14);
      }

      v37 = v13[11];
      v38 = [v14 address];
      [v37 setObject:v14 forKeyedSubscript:v38];
    }
  }

LABEL_54:

  objc_autoreleasePoolPop(v12);
}

id AXLocStringKeyForModel(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    if (AXDeviceIsRealityDevice())
    {
      v3 = @"VISION";
    }

    else if (AXDeviceIsPad())
    {
      v3 = @"IPAD";
    }

    else if (AXDeviceIsPod())
    {
      v3 = @"IPOD";
    }

    else
    {
      IsWatch = AXDeviceIsWatch();
      v3 = @"IPHONE";
      if (IsWatch)
      {
        v3 = @"WATCH";
      }
    }

    v4 = [v2 stringWithFormat:@"%@_%@", v1, v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXLocStringForDeviceVariant(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AXLocStringKeyForHomeButton(v3);
  v6 = AXLocStringKeyForModel(v5);
  v7 = v4[2](v4, v6);
  v8 = v7;
  if (v7 && ![v7 isEqualToString:v6])
  {
    goto LABEL_13;
  }

  v9 = v4[2](v4, v5);

  if (v9 && ![v9 isEqualToString:v5])
  {
    v8 = v9;
    goto LABEL_13;
  }

  v10 = AXLocStringKeyForModel(v3);

  v8 = v4[2](v4, v10);

  if (v8 && ![v8 isEqualToString:v10])
  {
LABEL_11:
    v6 = v10;
LABEL_13:
    v12 = v8;
    v10 = v6;
    v11 = v12;
    goto LABEL_14;
  }

  v11 = v4[2](v4, v3);

  if (v11 && (![v11 isEqualToString:v3] || _AXSMossdeepEnabled()))
  {
    v8 = v11;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

id AXLocStringKeyForHomeButton(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  HasHomeButton = AXDeviceHasHomeButton();
  v4 = @"_NHB";
  if (HasHomeButton)
  {
    v4 = &stru_1EFE6D570;
  }

  v5 = [v1 stringWithFormat:@"%@%@", v2, v4];

  return v5;
}

id AXLocStringKeyForExclusiveModel(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = MEMORY[0x1E696AEC0];
      IsPhone = AXDeviceIsPhone();
      v7 = &stru_1EFE6D570;
      v8 = @"_IPHONE";
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      IsPhone = AXDeviceIsPad();
      v7 = &stru_1EFE6D570;
      v8 = @"_IPAD";
LABEL_11:
      if (IsPhone)
      {
        v7 = v8;
      }

      [v5 stringWithFormat:@"%@%@", v4, v7];
      goto LABEL_14;
    }

LABEL_8:
    v9 = v3;
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v5 = MEMORY[0x1E696AEC0];
    IsPhone = AXDeviceIsPod();
    v7 = &stru_1EFE6D570;
    v8 = @"_IPOD";
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    goto LABEL_8;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, @"_WATCH"];
  v9 = LABEL_14:;
LABEL_15:
  v10 = v9;

  return v10;
}

id AXLocStringKeyForHomeButtonAndExclusiveModel(uint64_t a1, void *a2)
{
  v3 = AXLocStringKeyForHomeButton(a2);
  if (AXDeviceHasHomeButton())
  {
    v4 = v3;
  }

  else
  {
    v4 = AXLocStringKeyForExclusiveModel(a1, v3);
  }

  v5 = v4;

  return v5;
}

void *AXLocalizedStringWithLocale(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = AXUtilitiesFrameworkBundle();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = _AXLocTables(1, 1);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = AXNSLocalizedStringForLocale();
      v12 = v11;
      if (v11)
      {
        if (![v11 isEqualToString:{v3, v16}])
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v3;
  }

  v14 = v13;

  return v13;
}

id _AXLocTables(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:&stru_1EFE6D570];
  v5 = v4;
  if (a1 == 2)
  {
    [v4 addObject:@"-UserProfiles"];
    [v5 addObject:@"-D94"];
    v6 = @"SwitchControl";
  }

  else if (a1 == 1)
  {
    v6 = @"GeneralAccessibility";
  }

  else
  {
    v6 = 0;
  }

  if (a2 == 2)
  {
    v6 = [(__CFString *)v6 stringByAppendingString:@"-iOS"];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___AXLocTables_block_invoke;
  v10[3] = &unk_1E71EB928;
  v11 = v6;
  v7 = v6;
  v8 = [v5 axMapObjectsUsingBlock:v10];

  return v8;
}

void *AXSwitchControlLocalizedString(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = _AXLocTables(2, 1);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = AXNSLocalizedStringForLocale();
      v9 = v8;
      if (v8)
      {
        if (![v8 isEqualToString:{v1, v13}])
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v1;
  }

  v11 = v10;

  return v10;
}

id AXParameterizedLocalizedString(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = AXUtilitiesFrameworkBundle();
  v12 = _AXLocTables(a1, 2);
  v13 = _AXLocTables(a1, 1);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v12 arrayByAddingObjectsFromArray:v13];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [v11 localizedStringForKey:v10 value:&stru_1EFE6D570 table:*(*(&v24 + 1) + 8 * v18)];
      v20 = v19;
      if (v19)
      {
        if (![v19 isEqualToString:v10])
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if ([v20 isEqualToString:v10])
    {
      goto LABEL_12;
    }

    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v20 arguments:&a9];
  }

  else
  {
LABEL_10:

    v20 = 0;
LABEL_12:
    v21 = v10;
  }

  v22 = v21;

  return v22;
}

id AXAssistiveTouchScannerColorDescription(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 >= 8)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    LOBYTE(v12) = 1;
    _AXLogWithFacility();

    v9 = @"CURSOR_COLOR_BLUE";
  }

  else
  {
    v9 = off_1E71EB960[a1];
  }

  v10 = AXParameterizedLocalizedString(2, v9, v8, a4, a5, a6, a7, a8, v12);

  return v10;
}

id AXVoiceOverLocString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = VOTBundle();
  v12 = AXNSLocalizedStringForLocale();

  return v12;
}

id AXVoiceOverRotorLocString(void *a1)
{
  v1 = a1;
  if (!AXVoiceOverRotorLocString_VoiceOverBundle)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
    v3 = AXVoiceOverRotorLocString_VoiceOverBundle;
    AXVoiceOverRotorLocString_VoiceOverBundle = v2;
  }

  v4 = v1;
  if ([v4 isEqualToString:*MEMORY[0x1E6988BB8]])
  {
    v5 = @"search.rotor.typing.mode";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AF0]])
  {
    v5 = @"search.rotor.slide.to.type";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BA8]])
  {
    v5 = @"search.rotor.textselection";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AD8]])
  {
    v5 = @"search.rotor.character";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BE0]])
  {
    v5 = @"search.rotor.word";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B30]])
  {
    v5 = @"search.rotor.line";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B10]])
  {
    v5 = @"search.rotor.header";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B38]])
  {
    v5 = @"search.rotor.link";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B00]])
  {
    v5 = @"search.rotor.formelement";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B68]])
  {
    v5 = @"search.rotor.radiogroup";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BC8]])
  {
    v5 = @"search.rotor.visitedlink";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B58]])
  {
    v5 = @"search.rotor.nonvisitedlink";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B20]])
  {
    v5 = @"search.rotor.image";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B90]])
  {
    v5 = @"search.rotor.statictext";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BB0]])
  {
    v5 = @"search.rotor.zoom";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B98]])
  {
    v5 = @"search.rotor.table";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B40]])
  {
    v5 = @"search.rotor.list";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B28]])
  {
    v5 = @"search.rotor.landmark";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A98]])
  {
    v5 = @"search.rotor.article";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AD0]])
  {
    v5 = @"search.rotor.button";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BA0]])
  {
    v5 = @"search.rotor.textfield";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B78]])
  {
    v5 = @"search.rotor.searchfield";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AE0]])
  {
    v5 = @"search.rotor.checkbox";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B70]])
  {
    v5 = @"search.rotor.same";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A90]])
  {
    v5 = @"search.rotor.allitems";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B18]])
  {
    v5 = @"search.rotor.hints";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B88]])
  {
    v5 = @"search.rotor.rate";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B60]])
  {
    v5 = @"search.rotor.punctuation";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B80]])
  {
    v5 = @"search.rotor.sounds";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BD8]])
  {
    v5 = @"search.rotor.volume";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AA0]])
  {
    v5 = @"search.rotor.audio.ducking";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AA8]])
  {
    v5 = @"search.rotor.audio.ducking.amount";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B08]])
  {
    v5 = @"search.rotor.handwriting";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AB8]])
  {
    v5 = @"search.rotor.braille.gesture";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AE8]])
  {
    v5 = @"search.rotor.container";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BC0]])
  {
    v5 = @"search.rotor.vertical.navigation";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B50]])
  {
    v5 = @"search.rotor.navigation.direction";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BD0]])
  {
    v5 = @"search.rotor.voices";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AC8]])
  {
    v5 = @"search.rotor.braille.languages";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AC0]])
  {
    v5 = @"search.rotor.braille.input.languages";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AB0]])
  {
    v5 = @"search.rotor.auto.advance.speed";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A88]])
  {
    v5 = @"search.rotor.2dbraille.zoom";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A60]])
  {
    v5 = @"search.rotor.2dbraille.intensity";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A70]])
  {
    v5 = @"search.rotor.2dbraille.horizontal.pan";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A78]])
  {
    v5 = @"search.rotor.2dbraille.vertical.pan";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A68]])
  {
    v5 = @"search.rotor.2dbraille.invert";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A80]])
  {
    v5 = @"search.rotor.2dbraille.text.mode";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A40]])
  {
    v5 = @"search.rotor.audio.destination";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A38]])
  {
    v5 = @"search.rotor.activities";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BE8]])
  {
    v5 = @"search.rotor.neural.vision";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BF8]])
  {
    v5 = @"search.rotor.toggle.live.regions";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A50]])
  {
    v5 = @"search.rotor.exploration.mode";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988BF0]])
  {
    v5 = @"rotor.interaction.style";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A58]])
  {
    v5 = @"search.rotor.image.descriptions";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988A48]])
  {
    v5 = @"search.rotor.detection.mode";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988B48]])
  {
    v5 = @"search.rotor.misspelled.words";
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6988AF8]])
  {
    v5 = @"search.rotor.copied.speech";
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.settings", v5];
    v7 = [AXVoiceOverRotorLocString_VoiceOverBundle localizedStringForKey:v6 value:0 table:@"VOTLocalizedStrings"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.visual", v5];

      v10 = [AXVoiceOverRotorLocString_VoiceOverBundle localizedStringForKey:v9 value:0 table:@"VOTLocalizedStrings"];

      if (v10 && ![v10 isEqualToString:v9])
      {
        v8 = v10;
      }

      else
      {
        v8 = [AXVoiceOverRotorLocString_VoiceOverBundle localizedStringForKey:v5 value:0 table:@"VOTLocalizedStrings"];
      }
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

void AXVOLocalizedStringLoadPunctuationTable(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = VOTBundle();
  v3 = AXLocalizationForLocale();

  if ([v3 length])
  {
    v25 = v1;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v4 languageIdentifier];

    v6 = VOTBundle();
    v7 = AXLocalizationForLocale();

    v3 = v7;
    v25 = v5;
  }

  v8 = VOTBundle();
  v9 = [v8 bundleURL];
  v10 = CFBundleCreate(0, v9);

  v26 = v3;
  v11 = CFBundleCopyLocalizedStringTableForLocalization();
  v12 = __outputPunctuationTableStrings;
  __outputPunctuationTableStrings = v11;

  CFRelease(v10);
  v13 = objc_opt_new();
  v14 = __outputPunctuationTableStringsDict;
  __outputPunctuationTableStringsDict = v13;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [__outputPunctuationTableStrings allKeys];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [__outputPunctuationTableStrings objectForKeyedSubscript:{v20, v25, v26}];
        v22 = [v21 isEqualToString:@"%#@unicodehex@"];

        if (v22)
        {
          v23 = [__outputPunctuationTableStrings objectForKeyedSubscript:v20];
          [__outputPunctuationTableStringsDict setObject:v23 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v24 = _outputPunctuationTableLocale;
  _outputPunctuationTableLocale = v25;
}

void AXVOLocalizedStringFreePunctuationTable()
{
  v0 = __outputPunctuationTableStrings;
  __outputPunctuationTableStrings = 0;

  v1 = __outputPunctuationTableStringsDict;
  __outputPunctuationTableStringsDict = 0;
}

id AXVOLocalizedStringForCharacterWithPrefix(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  if (WORD1(a1))
  {
    v8 = [v7 initWithFormat:@"%@%08x", v6, a1];
  }

  else
  {
    v8 = [v7 initWithFormat:@"%@%04x", @"UnicodeHex.", a1];
  }

  v9 = v8;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v10 languageIdentifier];
  }

  if ([v5 isEqualToString:_outputPunctuationTableLocale] && __outputPunctuationTableStrings && __outputPunctuationTableStringsDict && (objc_msgSend(__outputPunctuationTableStringsDict, "objectForKey:", v9), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v15 = [__outputPunctuationTableStrings objectForKey:v9];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = VOTBundle();
    v14 = AXNSLocalizedStringForLocale();
    v15 = [v12 localizedStringWithFormat:v14, 1];
  }

  if ([v15 isEqualToString:v9])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

void AXLoadPunctuationTable(void *a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  v8 = 1;
  if (a2 == 3)
  {
    v8 = 2;
    v9 = &unk_1EFE971B0;
  }

  else
  {
    v9 = 0;
  }

  if (a2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  AXVOLocalizedStringLoadPunctuationTable(v6);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __AXLoadPunctuationTable_block_invoke;
  aBlock[3] = &unk_1E71EB8B0;
  v24 = v7;
  v34 = v24;
  v11 = v5;
  v35 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [getSCRCPunctuationVerbosenessClass() verbosenessDictionaryForLevel:v10];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __AXLoadPunctuationTable_block_invoke_2;
  v31[3] = &unk_1E71EB8D8;
  v22 = v12;
  v32 = v22;
  _AXEnumeratePunctuationDictionary(v13, v31);
  v29 = 0u;
  v30 = 0u;
  if (a2 == 2)
  {
    v14 = &unk_1EFE97198;
  }

  else
  {
    v14 = v9;
  }

  v27 = 0uLL;
  v28 = 0uLL;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:{16, v22}];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [getSCRCPunctuationVerbosenessClass() punctuationDictionaryForLevel:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "intValue")}];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __AXLoadPunctuationTable_block_invoke_117;
        v25[3] = &unk_1E71EB900;
        v26 = v11;
        _AXEnumeratePunctuationDictionary(v19, v25);
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v16);
  }

  v20 = __outputPunctuationTableStrings;
  __outputPunctuationTableStrings = 0;

  v21 = __outputPunctuationTableStringsDict;
  __outputPunctuationTableStringsDict = 0;
}

void __AXLoadPunctuationTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  if ((a2 - 1) > 2)
  {
    if (a2)
    {
      if (a2 == 4)
      {
        v7 = *(a1 + 40);

        [v7 setObject:&stru_1EFE6D570 forIndex:a3];
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v10 length:1];
      [v8 setObject:v9 forIndex:v10];
    }
  }

  else
  {
    v5 = AXVOLocalizedStringForCharacterWithPrefix(a3, *(a1 + 32), @"UnicodeHex.");
    if (v5 || (v5 = AXCopyUnicodeDescriptionStringForCharacter(a3)) != 0)
    {
      v6 = [*(a1 + 40) setObject:v5 forIndex:a3];
    }

    else
    {
      v6 = AXVOLocalizedStringForCharacterWithPrefix(a3, *(a1 + 32), @"UnicodeHex.Math.");
      if (!v6)
      {
        v6 = _AXLogWithFacility();
      }
    }

    MEMORY[0x1EEE66BE0](v6);
  }
}

__CFString *AXCopyUnicodeDescriptionStringForCharacter(UChar32 a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (u_charName(a1, U_EXTENDED_CHAR_NAME, buffer, 500, &v8) < 1 || v8 != 0)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v11.location = 0;
  v11.length = 1;
  if (CFStringCompareWithOptions(v3, @"<", v11, 0))
  {
    MutableCopy = CFStringCreateMutableCopy(v2, 0, v4);
    System = CFLocaleGetSystem();
    CFStringLowercase(MutableCopy, System);
  }

  else
  {
    MutableCopy = 0;
  }

  CFRelease(v4);
  return MutableCopy;
}

id getSCRCPunctuationVerbosenessClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSCRCPunctuationVerbosenessClass_softClass;
  v7 = getSCRCPunctuationVerbosenessClass_softClass;
  if (!getSCRCPunctuationVerbosenessClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSCRCPunctuationVerbosenessClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getSCRCPunctuationVerbosenessClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B1C68BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AXEnumeratePunctuationDictionary(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v11 intValue];

        v13 = strtol([v10 UTF8String], 0, 16);
        v4[2](v4, v12, v13);
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

void __AXLoadPunctuationTable_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __AXLoadPunctuationTable_block_invoke_117(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2 == 1)
  {
    v4 = a3;
    v5 = [*(a1 + 32) objectForIndex:a3];

    if (!v5)
    {
      v6 = *(a1 + 32);

      [v6 setObject:&stru_1EFE6D570 forIndex:v4];
    }
  }
}

uint64_t AXUnicodeCodePointForCharacterString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if ((v2 - 1) < 2 || (_AXAssert(), v2))
  {
    LODWORD(v3) = 0;
    v4 = 0;
    do
    {
      v3 = [v1 characterAtIndex:v4++] | (v3 << 16);
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id AXFormatAndListWithElements(void *a1)
{
  v28[500] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v27 = 0;
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];

  [v3 UTF8String];
  v4 = ulistfmt_open();
  if (v4)
  {
    v24 = v4;
    v26 = v3;
    v6 = [v1 count];
    v7 = v6;
    v25 = &v22;
    if (v6 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = v6;
    }

    MEMORY[0x1EEE9AC00](v6);
    v10 = (&v22 - v9);
    if ((8 * v8) >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = 8 * v8;
    }

    bzero(v10, v11);
    bzero(v10, 8 * v8);
    MEMORY[0x1EEE9AC00](v12);
    v14 = &v22 - v13;
    v23 = v7;
    if (v7)
    {
      v15 = 0;
      do
      {
        v16 = [v1 objectAtIndexedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 length];
          if (v17 >= 0x1F4)
          {
            v18 = 500;
          }

          else
          {
            v18 = v17;
          }

          v19 = malloc_type_malloc(2 * v18, 0x1000040BDFB0063uLL);
          [v16 getCharacters:v19 range:{0, v18}];
          v10[v15] = v19;
          *&v14[4 * v15] = v18;
        }

        ++v15;
      }

      while (v8 != v15);
    }

    v20 = ulistfmt_format();
    ulistfmt_close();
    if (v23)
    {
      do
      {
        if (*v10)
        {
          free(*v10);
        }

        ++v10;
        --v8;
      }

      while (v8);
    }

    if (v27 < 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:v28 length:v20];
    }

    else
    {
      v5 = 0;
    }

    v3 = v26;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXAirPodsLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE6D570 table:@"AXAirPods"];

  return v3;
}

id AXAirPodsB494LocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE6D570 table:@"AXAirPods-B494"];

  return v3;
}

id AXAirPodsB698LocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE6D570 table:@"AXAirPods-B698"];

  return v3;
}

id AXBeats463LocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE6D570 table:@"AXBeats-B463"];

  return v3;
}

id AXWatchControlEltonLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE6D570 table:@"WatchControl-elton"];

  return v3;
}

Class __getSCRCPunctuationVerbosenessClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ScreenReaderCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ScreenReaderCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB948;
    v5 = 0;
    ScreenReaderCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ScreenReaderCoreLibraryCore_frameworkLibrary)
  {
    __getSCRCPunctuationVerbosenessClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SCRCPunctuationVerboseness");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSCRCPunctuationVerbosenessClass_block_invoke_cold_1();
  }

  getSCRCPunctuationVerbosenessClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenReaderCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenReaderCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B1C8924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ASUIEventFilterCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (SCATIsKeyboardKeyEvent())
  {
    if (IOHIDEventGetIntegerValue())
    {
      CFRetain(a4);
      AXPerformBlockOnMainThreadAfterDelay();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (SCATIsGamepadKeyEvent() && !SCATIsATVRemoteButtonEvent())
  {
    if ([AXGameControllerEvent axGameControllerKeyCodeForEvent:a4])
    {
      CFRetain(a4);
      AXPerformBlockOnMainThreadAfterDelay();
    }

    v5 = 1;
  }

  if (AXIsInternalInstall() && SCATIsATVRemoteButtonSwitchCandidateEvent())
  {
    if (IOHIDEventGetIntegerValue())
    {
      CFRetain(a4);
      AXPerformBlockOnMainThreadAfterDelay();
    }

    return 1;
  }

  return v5;
}

void _ASUIDeviceMatchingCallback(void *a1, uint64_t a2, uint64_t a3, __IOHIDDevice *a4)
{
  LOBYTE(v6) = 1;
  _AXLogWithFacility();
  if ([IOHIDDeviceGetProperty(a4 @"IAPHIDAccessoryCategory")] == 7 || IOHIDDeviceConformsTo(a4, 1u, 0xAu))
  {
    if (IOHIDDeviceOpen(a4, 0))
    {
      _AXLogWithFacility();
    }

    context = a1;
    [context setDevice:a4];
    IOHIDDeviceRegisterInputValueCallback(a4, _ASUIInputValueCallback, context);
  }

  else
  {
    _AXLogWithFacility();
  }
}

uint64_t _ASUIInputValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  result = SCATIsMFIButtonDownValue(a4);
  if (result)
  {
    CFRetain(a4);
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

id _languageAndRegionNameForNonConformingCodes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"zh_CN-U-SD@sd=cnln"])
  {
    v5 = @"Dongbei_CN";
LABEL_15:
    v6 = AXLocalizedStringWithLocale(v5, v4);
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"zh_CN-U-SD@sd=cnsn"])
  {
    v5 = @"Shaanxi_CN";
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"wuu_CN"])
  {
    v5 = @"Shanghainese_CN";
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"zh_CN-U-SD@sd=cnsc"])
  {
    v5 = @"Sichuanese_CN";
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"ca_ES-U-SD@sd=esvc"])
  {
    v5 = @"Valencian_ES";
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"ar_001"])
  {
    v5 = @"Arabic_WW";
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"en_GB-U-SD@sd=gbsct"])
  {
    v5 = @"English_Scotland";
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

id _icuDisplayNameForLocale(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [v5 localeIdentifier];
    [v8 UTF8String];
    v9 = uldn_openForContext();

    v11 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v7];
    v12 = *MEMORY[0x1E695D9B0];
    v13 = [v11 objectForKey:*MEMORY[0x1E695D9B0]];
    v14 = _icuDisplayName(v9, v12, v13);

    v15 = _languageAndRegionNameForNonConformingCodes(v14, 0);

    if ([v6 isEqualToString:v12])
    {
      v16 = *MEMORY[0x1E695D978];
      v17 = [v11 objectForKey:*MEMORY[0x1E695D978]];
      v18 = _icuDisplayName(v9, v16, v17);

      v19 = v18;
      v20 = *MEMORY[0x1E695D9E8];
      v21 = [v11 objectForKey:*MEMORY[0x1E695D9E8]];
      v33 = _icuDisplayName(v9, v20, v21);

      v22 = *MEMORY[0x1E695DA10];
      v23 = [v11 objectForKey:*MEMORY[0x1E695DA10]];
      v24 = _icuDisplayName(v9, v22, v23);

      v25 = [MEMORY[0x1E695DF70] array];
      v26 = v25;
      if (v19)
      {
        [v25 addObject:v19];
      }

      if (v33)
      {
        [v26 addObject:?];
      }

      if (v24)
      {
        [v26 addObject:v24];
      }

      if ([v26 count])
      {
        v27 = MEMORY[0x1E696AEC0];
        [v26 componentsJoinedByString:{@", "}];
        v32 = v19;
        v29 = v28 = v15;
        v10 = [v27 stringWithFormat:@"%@ (%@)", v28, v29];

        v15 = v28;
        v19 = v32;
      }

      else
      {
        v10 = v15;
      }
    }

    else if (![v6 isEqualToString:*MEMORY[0x1E695D9A8]] || (_languageAndRegionNameForNonConformingCodes(v7, 0), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = _icuDisplayName(v9, v6, v7);
    }

    uldn_close();

    if ([v10 isEqualToString:v7])
    {
      v30 = [v5 displayNameForKey:v6 value:v7];

      v10 = v30;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _icuDisplayName(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 isEqualToString:*MEMORY[0x1E695D9A8]];
  v8 = MEMORY[0x1E69E5710];
  if (v7 & 1) != 0 || (v9 = [v5 isEqualToString:*MEMORY[0x1E695D9B0]], v8 = MEMORY[0x1E69E5708], (v9) || (v10 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E695D978]), v8 = MEMORY[0x1E69E5718], (v10) || (v11 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E695D9E8]), v8 = MEMORY[0x1E69E5720], (v11) || (v12 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E695DA10]), v8 = MEMORY[0x1E69E5728], (v12))
  {
    v13 = v8;
    v14 = 0;
    if (!v6)
    {
LABEL_16:
      v22 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (([v5 isEqualToString:*MEMORY[0x1E695D968]] & 1) == 0)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *_icuDisplayName(const ULocaleDisplayNames *, NSString *__strong, NSString *__strong)"}];
      [v24 handleFailureInFunction:v25 file:@"AXDialectMap.m" lineNumber:423 description:{@"Unsupported key type %@", v5}];
    }

    v13 = 0;
    v14 = 1;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v26 = 0;
  v15 = [v6 UTF8String];
  if (v14)
  {
    v16 = uldn_keyValueDisplayName();
  }

  else
  {
    v16 = v13(a1, v15, 0, 0, &v26);
  }

  if (v26 != 15)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v17 = [MEMORY[0x1E695DF88] dataWithLength:2 * v16];
  v18 = [v6 UTF8String];
  v19 = [v17 mutableBytes];
  v20 = [v17 length] >> 1;
  if (v14)
  {
    v21 = uldn_keyValueDisplayName();
  }

  else
  {
    v21 = v13(a1, v18, v19, v20, &v26);
  }

  if (v26 > 0)
  {

    goto LABEL_16;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithCharacters:objc_msgSend(v17 length:{"bytes"), v21}];

LABEL_17:

  return v22;
}

void _updateLocaleForLanguagePreference(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _AXSQuickSpeakCopyPreferredLocalesForLanguages();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v2 langMaps];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 generalLanguageID];
        v11 = [v3 objectForKey:v10];

        if (v11)
        {
          v12 = [v9 dialectWithLocaleIdentifier:v11];
          if (v12)
          {
            [v9 setUserPreferredDialect:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v2 updateCachedDialects];
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AXLanguageSupportedBySynthesizer(void *a1)
{
  v1 = a1;
  if (AXLanguageSupportedBySynthesizer_registerOnce != -1)
  {
    AXLanguageSupportedBySynthesizer_cold_1();
  }

  if ([AXLanguageSupportedBySynthesizer_Languages containsObject:v1])
  {
    v2 = 1;
  }

  else
  {
    v3 = AXLanguageSupportedBySynthesizer_Languages;
    v4 = AXCLanguageConvertToCanonicalForm();
    v2 = [v3 containsObject:v4];
  }

  return v2;
}

void __AXLanguageSupportedBySynthesizer_block_invoke()
{
  v2 = [MEMORY[0x1E69D9E90] sharedInstance];
  v0 = [v2 allAvailableLanguages];
  v1 = AXLanguageSupportedBySynthesizer_Languages;
  AXLanguageSupportedBySynthesizer_Languages = v0;
}

id AXSystemLanguageReport()
{
  v102 = *MEMORY[0x1E69E9840];
  v61 = [MEMORY[0x1E695DF90] dictionary];
  v0 = [MEMORY[0x1E695DF58] systemLanguages];
  v1 = AXSupportedVoiceOverLanguages();
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA8] set];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v4 = v0;
  v5 = [v4 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v91;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v91 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v90 + 1) + 8 * i) axLanguageCode];
        [v2 axSafelyAddObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v6);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v10 = v1;
  v11 = [v10 countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v87;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v87 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v86 + 1) + 8 * j) axLanguageCode];
        [v3 axSafelyAddObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x1E695DFA8] set];
  v17 = [MEMORY[0x1E695DFA8] set];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v82 objects:v99 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v83;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v82 + 1) + 8 * k);
        if ([v23 axIsRegionalLanguageCode])
        {
          [v16 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v82 objects:v99 count:16];
    }

    while (v20);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = v10;
  v25 = [v24 countByEnumeratingWithState:&v78 objects:v98 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v79;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v79 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v78 + 1) + 8 * m);
        if ([v29 axIsRegionalLanguageCode])
        {
          [v17 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v78 objects:v98 count:16];
    }

    while (v26);
  }

  v59 = v24;

  v30 = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v31 = v2;
  v32 = [v31 countByEnumeratingWithState:&v74 objects:v97 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v75;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v75 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = _AXDictForLanguageData(*(*(&v74 + 1) + 8 * n), 1, [v3 containsObject:*(*(&v74 + 1) + 8 * n)]);
        [v30 addObject:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v74 objects:v97 count:16];
    }

    while (v33);
  }

  v60 = v18;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v37 = v3;
  v38 = [v37 countByEnumeratingWithState:&v70 objects:v96 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v71;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v70 + 1) + 8 * ii);
        if (([v31 containsObject:v42] & 1) == 0)
        {
          v43 = _AXDictForLanguageData(v42, 0, 1);
          [v30 addObject:v43];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v70 objects:v96 count:16];
    }

    while (v39);
  }

  [v61 setObject:v30 forKeyedSubscript:@"language"];
  v44 = [MEMORY[0x1E695DF70] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = v16;
  v46 = [v45 countByEnumeratingWithState:&v66 objects:v95 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v67;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v67 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = _AXDictForLanguageData(*(*(&v66 + 1) + 8 * jj), 1, [v17 containsObject:*(*(&v66 + 1) + 8 * jj)]);
        [v44 addObject:v50];
      }

      v47 = [v45 countByEnumeratingWithState:&v66 objects:v95 count:16];
    }

    while (v47);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = v17;
  v52 = [v51 countByEnumeratingWithState:&v62 objects:v94 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v63;
    do
    {
      for (kk = 0; kk != v53; ++kk)
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v62 + 1) + 8 * kk);
        if (([v45 containsObject:v56] & 1) == 0)
        {
          v57 = _AXDictForLanguageData(v56, 0, 1);
          [v44 addObject:v57];
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v62 objects:v94 count:16];
    }

    while (v53);
  }

  [v61 setObject:v44 forKeyedSubscript:@"locale"];

  return v61;
}

id AXSupportedVoiceOverLanguages()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = AXVoiceServicesTTSResourcesDirectory();
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v2 = [v1 contentsOfDirectoryAtPath:v0 error:&v21];
  v3 = v21;
  v4 = v3;
  if (v3)
  {
    v14 = @"%@";
    v15 = v3;
    LOBYTE(v13) = 1;
    _AXLogWithFacility();
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = v0;
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 rangeOfString:@"-"] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v11, "length") == 5)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v0 = v16;
  }

  [v5 addObjectsFromArray:{&unk_1EFE97240, v13, v14, v15}];

  return v5;
}

id _AXDictForLanguageData(void *a1, uint64_t a2, uint64_t a3)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [AXLanguageManager nonlocalizedNameForLanguage:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = v8;

  v10 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v11 = _icuDisplayNameForLocale(v10, *MEMORY[0x1E695D9A8], v5);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"Unknown";
  }

  v14 = v13;

  v19[0] = @"languageID";
  v19[1] = @"localName";
  v20[0] = v5;
  v20[1] = v9;
  v20[2] = v14;
  v19[2] = @"currentName";
  v19[3] = @"supportedBySystem";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v20[3] = v15;
  v19[4] = @"supportedByVoiceOver";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v20[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

  return v17;
}

void sub_18B1D3B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18B1D544C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B1D59F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double AXDenormalizePoint(int a1, float64_t a2, float64_t a3)
{
  AXDeviceGetMainScreenPixelBounds();
  v18 = v5;
  v19 = v4;
  MainScreenScaleFactor = AXDeviceGetMainScreenScaleFactor();
  if (!a1)
  {
    MainScreenScaleFactor = 1.0;
  }

  v7.f64[0] = a2;
  v7.f64[1] = a3;
  v8.f64[0] = v19;
  v8.f64[1] = v18;
  v9 = v8;
  v10 = vrndaq_f64(vmulq_f64(v7, v8));
  __asm { FMOV            V2.2D, #-1.0 }

  v16 = vaddq_f64(v9, _Q2);
  *&result = *&vdivq_f64(vbslq_s8(vcgtq_f64(v16, v10), v10, v16), vdupq_lane_s64(*&MainScreenScaleFactor, 0));
  return result;
}

double AXNormalizePoint(int a1, double a2)
{
  AXDeviceGetMainScreenPixelBounds();
  v5 = a2 / v4;
  if (a1)
  {
    return v5 * AXDeviceGetMainScreenScaleFactor();
  }

  return v5;
}

__CFString *AXDebugDescriptionForAXHandEventType(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E71EC000[a1];
  }
}

void sub_18B1D96A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1D9C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 208), 8);
  _Block_object_dispose((v41 - 160), 8);
  _Block_object_dispose((v41 - 128), 8);
  _Block_object_dispose((v41 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getUIKeyboardInputModeControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EC0B0;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    __getUIKeyboardInputModeControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UIKeyboardInputModeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIKeyboardInputModeControllerClass_block_invoke_cold_1();
  }

  getUIKeyboardInputModeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t _ContextIDFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 token];
    v4 = [v3 _identifierOfCAContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _setInitialTouchCount(uint64_t a1, void *a2)
{
  v3 = _initializeHIDStreamCountsIfNeeded_onceToken;
  v4 = a2;
  if (v3 != -1)
  {
    +[AXEventRepresentation _digitizerRepresentation:hidStreamIdentifier:];
  }

  [HIDStreamLock lock];
  v5 = HIDStreamIdentifierTouchCounts;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  [v5 setObject:v6 forKey:v4];

  v7 = HIDStreamLock;

  return [v7 unlock];
}

uint64_t _eventMasksForEdgeSwipe(int a1)
{
  HasHomeButton = AXDeviceHasHomeButton();
  result = 0;
  if (a1 && (HasHomeButton & 1) == 0)
  {
    if ((a1 - 1) > 3u)
    {
      return 0x40000;
    }

    else
    {
      return dword_18B2F8620[(a1 - 1)];
    }
  }

  return result;
}

BOOL AX_EventRepresentationContainsAnyTouchesInPath(void *a1, const CGPath *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (CGPathIsEmpty(a2))
    {
      v4 = 0;
    }

    else
    {
      v5 = [v3 handInfo];
      v6 = [v5 paths];
      v7 = [v6 count];

      if (v7)
      {
        v9 = 1;
        *&v8 = 134218498;
        v23 = v8;
        do
        {
          v10 = [v5 paths];
          v11 = [v10 objectAtIndexedSubscript:v9 - 1];

          [v11 pathLocation];
          v13 = v12;
          v15 = v14;
          v16 = +[AXBackBoardServer server];
          [v16 convertFrame:objc_msgSend(v11 fromContextId:{"pathWindowContextID"), v13, v15, 0.0, 0.0}];
          v18 = v17;
          v20 = v19;

          v21 = GAXLogBlockedTouches();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v25 = v18;
            v26 = 2048;
            v27 = v20;
            v28 = 2112;
            v29 = a2;
            _os_log_debug_impl(&dword_18B15E000, v21, OS_LOG_TYPE_DEBUG, "checking if touched point is contained in ignored path:\n touch (%f, %f), %@", buf, 0x20u);
          }

          v31.x = v18;
          v31.y = v20;
          v4 = CGPathContainsPoint(a2, 0, v31, 1);

          if (v9 >= v7)
          {
            break;
          }

          ++v9;
        }

        while (!v4);
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

BOOL AX_EventRepresentationContainsOnlyPathsForContextID(void *a1, int a2)
{
  v3 = a1;
  if ([v3 type] == 3001)
  {
    v4 = [v3 handInfo];
    v5 = [v4 paths];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 1;
      do
      {
        v8 = [v4 paths];
        v9 = [v8 objectAtIndexedSubscript:v7 - 1];

        v10 = [v9 pathWindowContextID];
        v11 = v10 == a2;

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while (v10 == a2);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t ___initializeHIDStreamCountsIfNeeded_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = HIDStreamIdentifierTouchCounts;
  HIDStreamIdentifierTouchCounts = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = HIDStreamIdentifierPhasesForTouches;
  HIDStreamIdentifierPhasesForTouches = v2;

  v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v5 = HIDStreamLock;
  HIDStreamLock = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

id _GetSubEventInfoFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (IOHIDEventGetType() == 11 && IOHIDEventGetAttributeDataLength() && (IntegerValue = IOHIDEventGetIntegerValue(), BKSHIDEventGetDigitizerAttributes(), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v4 pathAttributes];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            if ([v11 pathIndex] == IntegerValue)
            {
              v2 = v11;
              goto LABEL_20;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v2 = 0;
LABEL_20:
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void InitializeMaps()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF70] array];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LaserZoomPanningStyle"];
  [v2 addObject:@"LaserZoomPanningStyle"];
  v3 = NSStringFromSelector(sel_laserZoomPanningStyle);
  [v1 setObject:@"LaserZoomPanningStyle" forKeyedSubscript:v3];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchAlwaysShowMenu"];
  [v2 addObject:@"AssistiveTouchAlwaysShowMenu"];
  v4 = NSStringFromSelector(sel_assistiveTouchAlwaysShowMenuEnabled);
  [v1 setObject:@"AssistiveTouchAlwaysShowMenu" forKeyedSubscript:v4];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchOpenMenuSwaggle"];
  [v2 addObject:@"AssistiveTouchOpenMenuSwaggle"];
  v5 = NSStringFromSelector(sel_assistiveTouchOpenMenuSwaggleEnabled);
  [v1 setObject:@"AssistiveTouchOpenMenuSwaggle" forKeyedSubscript:v5];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseBehavesLikeFinger"];
  [v2 addObject:@"AssistiveTouchMouseBehavesLikeFinger"];
  v6 = NSStringFromSelector(sel_assistiveTouchMouseBehavesLikeFinger);
  [v1 setObject:@"AssistiveTouchMouseBehavesLikeFinger" forKeyedSubscript:v6];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AssistiveTouchMouseKeys"];
  [v2 addObject:@"AssistiveTouchMouseKeys"];
  v7 = NSStringFromSelector(sel_assistiveTouchMouseKeysEnabled);
  [v1 setObject:@"AssistiveTouchMouseKeys" forKeyedSubscript:v7];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseKeysOptionToggle"];
  [v2 addObject:@"AssistiveTouchMouseKeysOptionToggle"];
  v8 = NSStringFromSelector(sel_assistiveTouchMouseKeysOptionToggleEnabled);
  [v1 setObject:@"AssistiveTouchMouseKeysOptionToggle" forKeyedSubscript:v8];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseKeysUseMainKeyboardKeys"];
  [v2 addObject:@"AssistiveTouchMouseKeysUseMainKeyboardKeys"];
  v9 = NSStringFromSelector(sel_assistiveTouchMouseKeysUseMainKeyboardKeys);
  [v1 setObject:@"AssistiveTouchMouseKeysUseMainKeyboardKeys" forKeyedSubscript:v9];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseKeysDelay"];
  [v2 addObject:@"AssistiveTouchMouseKeysDelay"];
  v10 = NSStringFromSelector(sel_assistiveTouchMouseKeysDelay);
  [v1 setObject:@"AssistiveTouchMouseKeysDelay" forKeyedSubscript:v10];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseAlwaysShowSoftwareKeyboard"];
  [v2 addObject:@"AssistiveTouchMouseAlwaysShowSoftwareKeyboard"];
  v11 = NSStringFromSelector(sel_assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled);
  [v1 setObject:@"AssistiveTouchMouseAlwaysShowSoftwareKeyboard" forKeyedSubscript:v11];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseAllowAppleBluetoothDevicesPairing"];
  v12 = NSStringFromSelector(sel_kAXSAssistiveTouchMouseAllowAppleBluetoothDevicesPairingPreference);
  [v1 setObject:@"AssistiveTouchMouseAllowAppleBluetoothDevicesPairing" forKeyedSubscript:v12];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseKeysMaxSpeed"];
  [v2 addObject:@"AssistiveTouchMouseKeysMaxSpeed"];
  v13 = NSStringFromSelector(sel_assistiveTouchMouseKeysMaxSpeed);
  [v1 setObject:@"AssistiveTouchMouseKeysMaxSpeed" forKeyedSubscript:v13];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadEnabled"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadEnabled"];
  v14 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadEnabled);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadEnabled" forKeyedSubscript:v14];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadScrollToggle"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadScrollToggle"];
  v15 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadScrollToggleEnabled);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadScrollToggle" forKeyedSubscript:v15];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadFullScreenToggle"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadFullScreenToggle"];
  v16 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadFullScreenToggleEnabled);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadFullScreenToggle" forKeyedSubscript:v16];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadSpeed"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadSpeed"];
  v17 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadSpeed);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadSpeed" forKeyedSubscript:v17];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadScrollSpeed"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadScrollSpeed"];
  v18 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadScrollSpeed);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadScrollSpeed" forKeyedSubscript:v18];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadHoldDuration"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadHoldDuration"];
  v19 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadHoldDuration);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadHoldDuration" forKeyedSubscript:v19];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadFadeDelay"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadFadeDelay"];
  v20 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadFadeDelay);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadFadeDelay" forKeyedSubscript:v20];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadBorderColor"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadBorderColor"];
  v21 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadBorderColor);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadBorderColor" forKeyedSubscript:v21];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadInnerColor"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadInnerColor"];
  v22 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadInnerColor);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadInnerColor" forKeyedSubscript:v22];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadBorderOpacity"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadBorderOpacity"];
  v23 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadBorderOpacity);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadBorderOpacity" forKeyedSubscript:v23];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadInnerOpacity"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadInnerOpacity"];
  v24 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadInnerOpacity);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadInnerOpacity" forKeyedSubscript:v24];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchVirtualTrackpadBorderWidth"];
  [v2 addObject:@"AssistiveTouchVirtualTrackpadBorderWidth"];
  v25 = NSStringFromSelector(sel_assistiveTouchVirtualTrackpadBorderWidth);
  [v1 setObject:@"AssistiveTouchVirtualTrackpadBorderWidth" forKeyedSubscript:v25];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchSpeed"];
  [v2 addObject:@"AssistiveTouchSpeed"];
  v26 = NSStringFromSelector(sel_assistiveTouchSpeed);
  [v1 setObject:@"AssistiveTouchSpeed" forKeyedSubscript:v26];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchCustomGestures"];
  [v2 addObject:@"AssistiveTouchCustomGestures"];
  v27 = NSStringFromSelector(sel_assistiveTouchCustomGestures);
  [v1 setObject:@"AssistiveTouchCustomGestures" forKeyedSubscript:v27];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchRecentGestures"];
  [v2 addObject:@"AssistiveTouchRecentGestures"];
  v28 = NSStringFromSelector(sel_assistiveTouchRecentGestures);
  [v1 setObject:@"AssistiveTouchRecentGestures" forKeyedSubscript:v28];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchSavedGestures"];
  [v2 addObject:@"AssistiveTouchSavedGestures"];
  v29 = NSStringFromSelector(sel_assistiveTouchSavedGestures);
  [v1 setObject:@"AssistiveTouchSavedGestures" forKeyedSubscript:v29];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScanningModePreference"];
  v30 = NSStringFromSelector(sel_assistiveTouchScanningMode);
  [v1 setObject:@"AssistiveTouchScanningModePreference" forKeyedSubscript:v30];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchPreferredPointPickerPreference"];
  v31 = NSStringFromSelector(sel_assistiveTouchPreferredPointPicker);
  [v1 setObject:@"AssistiveTouchPreferredPointPickerPreference" forKeyedSubscript:v31];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchAutoScanningEnabled"];
  v32 = NSStringFromSelector(sel_assistiveTouchAutoScanningEnabled);
  [v1 setObject:@"AssistiveTouchAutoScanningEnabled" forKeyedSubscript:v32];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScanShouldGroupElements"];
  v33 = NSStringFromSelector(sel_assistiveTouchGroupElementsEnabled);
  [v1 setObject:@"AssistiveTouchScanShouldGroupElements" forKeyedSubscript:v33];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScanShouldUseCompactMenu"];
  v34 = NSStringFromSelector(sel_assistiveTouchScannerCompactMenuEnabled);
  [v1 setObject:@"AssistiveTouchScanShouldUseCompactMenu" forKeyedSubscript:v34];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerMenuLabelsEnabled"];
  v35 = NSStringFromSelector(sel_assistiveTouchScannerMenuLabelsEnabled);
  [v1 setObject:@"AssistiveTouchScannerMenuLabelsEnabled" forKeyedSubscript:v35];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchStepInterval"];
  v36 = NSStringFromSelector(sel_assistiveTouchStepInterval);
  [v1 setObject:@"AssistiveTouchStepInterval" forKeyedSubscript:v36];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScanCyclesPreference"];
  v37 = NSStringFromSelector(sel_assistiveTouchScanCycles);
  [v1 setObject:@"AssistiveTouchScanCyclesPreference" forKeyedSubscript:v37];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerSelectTimeout"];
  v38 = NSStringFromSelector(sel_switchControlAutoTapTimeout);
  [v1 setObject:@"AssistiveTouchScannerSelectTimeout" forKeyedSubscript:v38];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerSelectTimeoutEnabled"];
  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerScanTimeout"];
  v39 = NSStringFromSelector(sel_assistiveTouchScanTimeout);
  [v1 setObject:@"AssistiveTouchScannerScanTimeout" forKeyedSubscript:v39];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerSoundEnabled"];
  v40 = NSStringFromSelector(sel_assistiveTouchScannerSoundEnabled);
  [v1 setObject:@"AssistiveTouchScannerSoundEnabled" forKeyedSubscript:v40];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:kAXSAssistiveTouchScannerSpeechRatePreference];
  v41 = kAXSAssistiveTouchScannerSpeechRatePreference;
  v42 = NSStringFromSelector(sel_assistiveTouchScannerSpeechRate);
  [v1 setObject:v41 forKeyedSubscript:v42];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchSwitchesPreference"];
  v43 = NSStringFromSelector(sel_assistiveTouchSwitches);
  [v1 setObject:@"AssistiveTouchSwitchesPreference" forKeyedSubscript:v43];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchCameraPointPickerSwitchesPreference"];
  v44 = NSStringFromSelector(sel_assistiveTouchCameraPointPickerSwitches);
  [v1 setObject:@"AssistiveTouchCameraPointPickerSwitchesPreference" forKeyedSubscript:v44];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchCursorHighVisibilityPreference"];
  v45 = NSStringFromSelector(sel_assistiveTouchScannerCursorHighVisibilityEnabled);
  [v1 setObject:@"AssistiveTouchCursorHighVisibilityPreference" forKeyedSubscript:v45];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInputCoalescingDurationPreference"];
  v46 = NSStringFromSelector(sel_assistiveTouchInputCoalescingDuration);
  [v1 setObject:@"AssistiveTouchInputCoalescingDurationPreference" forKeyedSubscript:v46];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInputCoalescingEnabledPreference"];
  v47 = NSStringFromSelector(sel_assistiveTouchInputCoalescingEnabled);
  [v1 setObject:@"AssistiveTouchInputCoalescingEnabledPreference" forKeyedSubscript:v47];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInputHoldDurationPreference"];
  v48 = NSStringFromSelector(sel_assistiveTouchInputHoldDuration);
  [v1 setObject:@"AssistiveTouchInputHoldDurationPreference" forKeyedSubscript:v48];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchLongPressDurationPreference"];
  v49 = NSStringFromSelector(sel_assistiveTouchLongPressDuration);
  [v1 setObject:@"AssistiveTouchLongPressDurationPreference" forKeyedSubscript:v49];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInputHoldEnabledPreference"];
  v50 = NSStringFromSelector(sel_assistiveTouchInputHoldEnabled);
  [v1 setObject:@"AssistiveTouchInputHoldEnabledPreference" forKeyedSubscript:v50];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchLongPressDurationEnabledPreference"];
  v51 = NSStringFromSelector(sel_assistiveTouchLongPressEnabled);
  [v1 setObject:@"AssistiveTouchLongPressDurationEnabledPreference" forKeyedSubscript:v51];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchLongPressPauseScanningEnabledPreference"];
  v52 = NSStringFromSelector(sel_assistiveTouchLongPressPauseScanningEnabled);
  [v1 setObject:@"AssistiveTouchLongPressPauseScanningEnabledPreference" forKeyedSubscript:v52];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchDelayAfterInputPreference"];
  v53 = NSStringFromSelector(sel_assistiveTouchDelayAfterInput);
  [v1 setObject:@"AssistiveTouchDelayAfterInputPreference" forKeyedSubscript:v53];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchDelayAfterInputEnabledPreference"];
  v54 = NSStringFromSelector(sel_assistiveTouchDelayAfterInputEnabled);
  [v1 setObject:@"AssistiveTouchDelayAfterInputEnabledPreference" forKeyedSubscript:v54];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchAxisSweepSpeed"];
  v55 = NSStringFromSelector(sel_assistiveTouchAxisSweepSpeed);
  [v1 setObject:@"AssistiveTouchAxisSweepSpeed" forKeyedSubscript:v55];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchActionRepeatIntervalPreference"];
  v56 = NSStringFromSelector(sel_assistiveTouchActionRepeatInterval);
  [v1 setObject:@"AssistiveTouchActionRepeatIntervalPreference" forKeyedSubscript:v56];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchActionRepeatEnabledPreference"];
  v57 = NSStringFromSelector(sel_assistiveTouchActionRepeatEnabled);
  [v1 setObject:@"AssistiveTouchActionRepeatEnabledPreference" forKeyedSubscript:v57];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerScanTimeoutEnabled"];
  v58 = NSStringFromSelector(sel_assistiveTouchScanTimeoutEnabled);
  [v1 setObject:@"AssistiveTouchScannerScanTimeoutEnabled" forKeyedSubscript:v58];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchCursorColorPreference"];
  v59 = NSStringFromSelector(sel_assistiveTouchCursorColor);
  [v1 setObject:@"AssistiveTouchCursorColorPreference" forKeyedSubscript:v59];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMousePointerColorPreference"];
  [v2 addObject:@"AssistiveTouchMousePointerColorPreference"];
  v60 = NSStringFromSelector(sel_assistiveTouchMousePointerColor);
  [v1 setObject:@"AssistiveTouchMousePointerColorPreference" forKeyedSubscript:v60];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMousePointerSizeMultiplierPreference"];
  [v2 addObject:@"AssistiveTouchMousePointerSizeMultiplierPreference"];
  v61 = NSStringFromSelector(sel_assistiveTouchMousePointerSizeMultiplier);
  [v1 setObject:@"AssistiveTouchMousePointerSizeMultiplierPreference" forKeyedSubscript:v61];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMousePointerTimeoutEnabledPreference"];
  [v2 addObject:@"AssistiveTouchMousePointerTimeoutEnabledPreference"];
  v62 = NSStringFromSelector(sel_assistiveTouchMousePointerTimeoutEnabled);
  [v1 setObject:@"AssistiveTouchMousePointerTimeoutEnabledPreference" forKeyedSubscript:v62];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMousePointerTimeoutPreference"];
  [v2 addObject:@"AssistiveTouchMousePointerTimeoutPreference"];
  v63 = NSStringFromSelector(sel_assistiveTouchMousePointerTimeout);
  [v1 setObject:@"AssistiveTouchMousePointerTimeoutPreference" forKeyedSubscript:v63];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlEnabledPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlEnabledPreference"];
  v64 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlEnabled);
  [v1 setObject:@"AssistiveTouchMouseDwellControlEnabledPreference" forKeyedSubscript:v64];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingEnabledPreference"];
  v65 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingEnabled);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingEnabledPreference" forKeyedSubscript:v65];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompletedPreference"];
  v66 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingOnBoardingCompleted);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompletedPreference" forKeyedSubscript:v66];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompletedPreference"];
  v67 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompletedPreference" forKeyedSubscript:v67];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingCalibratedValuesPreference"];
  v68 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingCalibratedValuesPreference" forKeyedSubscript:v68];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMapPreference"];
  v69 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMapPreference" forKeyedSubscript:v69];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchForceOnDeviceEyeTrackingExperiencePreference"];
  v70 = NSStringFromSelector(sel_assistiveTouchForceOnDeviceEyeTrackingExperience);
  [v1 setObject:@"AssistiveTouchForceOnDeviceEyeTrackingExperiencePreference" forKeyedSubscript:v70];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizePreference"];
  v71 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize);
  [v1 setObject:@"AssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizePreference" forKeyedSubscript:v71];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled"];
  v72 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingAutoHideEnabled);
  [v1 setObject:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled" forKeyedSubscript:v72];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideTimeout"];
  v73 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingAutoHideTimeout);
  [v1 setObject:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideTimeout" forKeyedSubscript:v73];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity"];
  v74 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingAutoHideOpacity);
  [v1 setObject:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity" forKeyedSubscript:v74];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEnabledByOnDeviceEyeTracking"];
  v75 = NSStringFromSelector(sel_assistiveTouchEnabledByOnDeviceEyeTracking);
  [v1 setObject:@"AXSAssistiveTouchEnabledByOnDeviceEyeTracking" forKeyedSubscript:v75];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints"];
  v76 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" forKeyedSubscript:v76];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages"];
  v77 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages);
  [v1 setObject:@"AssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages" forKeyedSubscript:v77];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilte"];
  v78 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter);
  [v1 setObject:@"AssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilte" forKeyedSubscript:v78];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur"];
  v79 = NSStringFromSelector(sel_assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur);
  [v1 setObject:@"AssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur" forKeyedSubscript:v79];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategyPreference"];
  v80 = NSStringFromSelector(sel_assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy);
  [v1 setObject:@"AssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategyPreference" forKeyedSubscript:v80];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlAutorevertEnabledPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlAutorevertEnabledPreference"];
  v81 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlAutorevertEnabled);
  [v1 setObject:@"AssistiveTouchMouseDwellControlAutorevertEnabledPreference" forKeyedSubscript:v81];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlAutorevertActionPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlAutorevertActionPreference"];
  v82 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlAutorevertAction);
  [v1 setObject:@"AssistiveTouchMouseDwellControlAutorevertActionPreference" forKeyedSubscript:v82];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlActivationTimeoutPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlActivationTimeoutPreference"];
  v83 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlActivationTimeout);
  [v1 setObject:@"AssistiveTouchMouseDwellControlActivationTimeoutPreference" forKeyedSubscript:v83];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlKeyboardKeyActivationTimeoutPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlKeyboardKeyActivationTimeoutPreference"];
  v84 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout);
  [v1 setObject:@"AssistiveTouchMouseDwellControlKeyboardKeyActivationTimeoutPreference" forKeyedSubscript:v84];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlMovementToleranceRadiusPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlMovementToleranceRadiusPreference"];
  v85 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlMovementToleranceRadius);
  [v1 setObject:@"AssistiveTouchMouseDwellControlMovementToleranceRadiusPreference" forKeyedSubscript:v85];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"kAXSAssistiveTouchMouseDwellControlCornerCustomizationPreference"];
  [v2 addObject:@"kAXSAssistiveTouchMouseDwellControlCornerCustomizationPreference"];
  v86 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlCornerCustomization);
  [v1 setObject:@"kAXSAssistiveTouchMouseDwellControlCornerCustomizationPreference" forKeyedSubscript:v86];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMouseDwellControlMutatedMenuPreference"];
  [v2 addObject:@"AXSAssistiveTouchMouseDwellControlMutatedMenuPreference"];
  v87 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlMutatedMenu);
  [v1 setObject:@"AXSAssistiveTouchMouseDwellControlMutatedMenuPreference" forKeyedSubscript:v87];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseDwellControlShowPromptPreference"];
  [v2 addObject:@"AssistiveTouchMouseDwellControlShowPromptPreference"];
  v88 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlShowPrompt);
  [v1 setObject:@"AssistiveTouchMouseDwellControlShowPromptPreference" forKeyedSubscript:v88];

  v89 = MEMORY[0x1E69E4CF8];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:*MEMORY[0x1E69E4CF8]];
  [v2 addObject:*v89];
  v90 = *v89;
  v91 = NSStringFromSelector(sel_assistiveTouchDwellKeyboardContinuousPathEnabled);
  [v1 setObject:v90 forKeyedSubscript:v91];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMouseZoomPanningStylePreference"];
  [v2 addObject:@"AssistiveTouchMouseZoomPanningStylePreference"];
  v92 = NSStringFromSelector(sel_assistiveTouchMouseZoomPanningStyle);
  [v1 setObject:@"AssistiveTouchMouseZoomPanningStylePreference" forKeyedSubscript:v92];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerConfigurablePreference"];
  v93 = NSStringFromSelector(sel_assistiveTouchMotionTrackerConfigurable);
  [v1 setObject:@"AssistiveTouchMotionTrackerConfigurablePreference" forKeyedSubscript:v93];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchForceEyeTrackerExperiencePreference"];
  v94 = NSStringFromSelector(sel_assistiveTouchForceEyeTrackerExperience);
  [v1 setObject:@"AssistiveTouchForceEyeTrackerExperiencePreference" forKeyedSubscript:v94];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerSmoothingBufferSizePreference"];
  v95 = NSStringFromSelector(sel_assistiveTouchMotionTrackerSmoothingBufferSize);
  [v1 setObject:@"AssistiveTouchMotionTrackerSmoothingBufferSizePreference" forKeyedSubscript:v95];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerSmoothingMaxDeltaPreference"];
  v96 = NSStringFromSelector(sel_assistiveTouchMotionTrackerSmoothingMaxDelta);
  [v1 setObject:@"AssistiveTouchMotionTrackerSmoothingMaxDeltaPreference" forKeyedSubscript:v96];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerXNormalizationOrderPreference"];
  v97 = NSStringFromSelector(sel_assistiveTouchMotionTrackerXNormalizationOrder);
  [v1 setObject:@"AssistiveTouchMotionTrackerXNormalizationOrderPreference" forKeyedSubscript:v97];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerYNormalizationOrderPreference"];
  v98 = NSStringFromSelector(sel_assistiveTouchMotionTrackerYNormalizationOrder);
  [v1 setObject:@"AssistiveTouchMotionTrackerYNormalizationOrderPreference" forKeyedSubscript:v98];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerXNormalizationOffsetPreference"];
  v99 = NSStringFromSelector(sel_assistiveTouchMotionTrackerXNormalizationOffset);
  [v1 setObject:@"AssistiveTouchMotionTrackerXNormalizationOffsetPreference" forKeyedSubscript:v99];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchMotionTrackerYNormalizationOffsetPreference"];
  v100 = NSStringFromSelector(sel_assistiveTouchMotionTrackerYNormalizationOffset);
  [v1 setObject:@"AssistiveTouchMotionTrackerYNormalizationOffsetPreference" forKeyedSubscript:v100];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMotionTrackerShouldOffsetBufferPointsPreference"];
  v101 = NSStringFromSelector(sel_assistiveTouchMotionTrackerShouldOffsetBufferPoints);
  [v1 setObject:@"AXSAssistiveTouchMotionTrackerShouldOffsetBufferPointsPreference" forKeyedSubscript:v101];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchBubbleModeEnabled"];
  [v2 addObject:@"AXSAssistiveTouchBubbleModeEnabled"];
  v102 = NSStringFromSelector(sel_assistiveTouchBubbleModeEnabled);
  [v1 setObject:@"AXSAssistiveTouchBubbleModeEnabled" forKeyedSubscript:v102];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchBubbleModeChangedDuringHeadTracking"];
  [v2 addObject:@"AXSAssistiveTouchBubbleModeChangedDuringHeadTracking"];
  v103 = NSStringFromSelector(sel_assistiveTouchBubbleModeChangedDuringHeadTracking);
  [v1 setObject:@"AXSAssistiveTouchBubbleModeChangedDuringHeadTracking" forKeyedSubscript:v103];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEyeTrackingAutoHideEnabled"];
  v104 = NSStringFromSelector(sel_assistiveTouchEyeTrackingAutoHideEnabled);
  [v1 setObject:@"AXSAssistiveTouchEyeTrackingAutoHideEnabled" forKeyedSubscript:v104];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEyeTrackingAutoHideTimeout"];
  v105 = NSStringFromSelector(sel_assistiveTouchEyeTrackingAutoHideTimeout);
  [v1 setObject:@"AXSAssistiveTouchEyeTrackingAutoHideTimeout" forKeyedSubscript:v105];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEyeTrackingAutoHideOpacity"];
  v106 = NSStringFromSelector(sel_assistiveTouchEyeTrackingAutoHideOpacity);
  [v1 setObject:@"AXSAssistiveTouchEyeTrackingAutoHideOpacity" forKeyedSubscript:v106];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingEnabled"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingEnabled"];
  v107 = NSStringFromSelector(sel_assistiveTouchHeadTrackingEnabled);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingEnabled" forKeyedSubscript:v107];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEnabledByHeadTracking"];
  v108 = NSStringFromSelector(sel_assistiveTouchEnabledByHeadTracking);
  [v1 setObject:@"AXSAssistiveTouchEnabledByHeadTracking" forKeyedSubscript:v108];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMouseDwellControlChangedDuringHeadTracking"];
  v109 = NSStringFromSelector(sel_assistiveTouchMouseDwellControlChangedDuringHeadTracking);
  [v1 setObject:@"AXSAssistiveTouchMouseDwellControlChangedDuringHeadTracking" forKeyedSubscript:v109];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingSensitivity"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingSensitivity"];
  v110 = NSStringFromSelector(sel_assistiveTouchHeadTrackingSensitivity);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingSensitivity" forKeyedSubscript:v110];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingMovementToleranceInJoystickMode"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingMovementToleranceInJoystickMode"];
  v111 = NSStringFromSelector(sel_assistiveTouchHeadTrackingMovementToleranceInJoystickMode);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingMovementToleranceInJoystickMode" forKeyedSubscript:v111];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingMode"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingMode"];
  v112 = NSStringFromSelector(sel_assistiveTouchHeadTrackingMode);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingMode" forKeyedSubscript:v112];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping"];
  v113 = NSStringFromSelector(sel_assistiveTouchHeadTrackingExpressionToActionMapping);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping" forKeyedSubscript:v113];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB"];
  v114 = NSStringFromSelector(sel_assistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB" forKeyedSubscript:v114];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchHeadTrackingExpressionToSensitivityMapping"];
  [v2 addObject:@"AXSAssistiveTouchHeadTrackingExpressionToSensitivityMapping"];
  v115 = NSStringFromSelector(sel_assistiveTouchHeadTrackingExpressionToSensitivityMapping);
  [v1 setObject:@"AXSAssistiveTouchHeadTrackingExpressionToSensitivityMapping" forKeyedSubscript:v115];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMouseClickSounds"];
  [v2 addObject:@"AXSAssistiveTouchMouseClickSounds"];
  v116 = NSStringFromSelector(sel_assistiveTouchMouseClickSoundsEnabled);
  [v1 setObject:@"AXSAssistiveTouchMouseClickSounds" forKeyedSubscript:v116];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchHeadMovementSensitivityPreference"];
  [v2 addObject:@"AssistiveTouchHeadMovementSensitivityPreference"];
  v117 = NSStringFromSelector(sel_assistiveTouchHeadMovementSensitivity);
  [v1 setObject:@"AssistiveTouchHeadMovementSensitivityPreference" forKeyedSubscript:v117];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchSwitchUsageConfirmedPreference"];
  v118 = NSStringFromSelector(sel_assistiveTouchSwitchUsageConfirmed);
  [v1 setObject:@"AXSAssistiveTouchSwitchUsageConfirmedPreference" forKeyedSubscript:v118];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchAutoAddedTCItem"];
  v119 = NSStringFromSelector(sel_assistiveTouchScannerAddedTripleClickAutomatically);
  [v1 setObject:@"AssistiveTouchAutoAddedTCItem" forKeyedSubscript:v119];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMainScreenCustomizationPreference"];
  [v2 addObject:@"AXSAssistiveTouchMainScreenCustomizationPreference"];
  v120 = NSStringFromSelector(sel_assistiveTouchMainScreenCustomization);
  [v1 setObject:@"AXSAssistiveTouchMainScreenCustomizationPreference" forKeyedSubscript:v120];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchOrbPreference"];
  [v2 addObject:@"AXSAssistiveTouchOrbPreference"];
  v121 = NSStringFromSelector(sel_assistiveTouchOrbAction);
  [v1 setObject:@"AXSAssistiveTouchOrbPreference" forKeyedSubscript:v121];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchSingleTapAction"];
  [v2 addObject:@"AXSAssistiveTouchSingleTapAction"];
  v122 = NSStringFromSelector(sel_assistiveTouchSingleTapAction);
  [v1 setObject:@"AXSAssistiveTouchSingleTapAction" forKeyedSubscript:v122];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchDoubleTapAction"];
  [v2 addObject:@"AXSAssistiveTouchDoubleTapAction"];
  v123 = NSStringFromSelector(sel_assistiveTouchDoubleTapAction);
  [v1 setObject:@"AXSAssistiveTouchDoubleTapAction" forKeyedSubscript:v123];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchLongPressAction"];
  [v2 addObject:@"AXSAssistiveTouchLongPressAction"];
  v124 = NSStringFromSelector(sel_assistiveTouchLongPressAction);
  [v1 setObject:@"AXSAssistiveTouchLongPressAction" forKeyedSubscript:v124];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchLongPressActionDuration"];
  [v2 addObject:@"AXSAssistiveTouchLongPressActionDuration"];
  v125 = NSStringFromSelector(sel_assistiveTouchLongPressActionDuration);
  [v1 setObject:@"AXSAssistiveTouchLongPressActionDuration" forKeyedSubscript:v125];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchDoubleTapActionTimeout"];
  [v2 addObject:@"AXSAssistiveTouchDoubleTapActionTimeout"];
  v126 = NSStringFromSelector(sel_assistiveTouchDoubleTapActionTimeout);
  [v1 setObject:@"AXSAssistiveTouchDoubleTapActionTimeout" forKeyedSubscript:v126];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchMouseCustomizedClickActionsPreference"];
  [v2 addObject:@"AXSAssistiveTouchMouseCustomizedClickActionsPreference"];
  v127 = NSStringFromSelector(sel_assistiveTouchMouseCustomizedClickActions);
  [v1 setObject:@"AXSAssistiveTouchMouseCustomizedClickActionsPreference" forKeyedSubscript:v127];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchEyeTrackerCustomizedSettingsPreference"];
  v128 = NSStringFromSelector(sel_assistiveTouchEyeTrackerCustomizedSettings);
  [v1 setObject:@"AXSAssistiveTouchEyeTrackerCustomizedSettingsPreference" forKeyedSubscript:v128];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchCameraSwitchPreviewEnabledPreference"];
  v129 = NSStringFromSelector(sel_assistiveTouchCameraSwitchPreviewEnabled);
  [v1 setObject:@"AssistiveTouchCameraSwitchPreviewEnabledPreference" forKeyedSubscript:v129];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInternalOnlyHiddenNubbitModeEnabledPreference"];
  v130 = NSStringFromSelector(sel_assistiveTouchInternalOnlyHiddenNubbitModeEnabled);
  [v1 setObject:@"AssistiveTouchInternalOnlyHiddenNubbitModeEnabledPreference" forKeyedSubscript:v130];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchInternalOnlyPearlTrackingEnabledPreference"];
  v131 = NSStringFromSelector(sel_assistiveTouchInternalOnlyPearlTrackingEnabled);
  [v1 setObject:@"AssistiveTouchInternalOnlyPearlTrackingEnabledPreference" forKeyedSubscript:v131];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchIdleOpacityPreference"];
  [v2 addObject:@"AXSAssistiveTouchIdleOpacityPreference"];
  v132 = NSStringFromSelector(sel_assistiveTouchIdleOpacity);
  [v1 setObject:@"AXSAssistiveTouchIdleOpacityPreference" forKeyedSubscript:v132];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssitiveTouchGameControllerPreference"];
  v133 = NSStringFromSelector(sel_assistiveTouchGameControllerEnabled);
  [v1 setObject:@"AXSAssitiveTouchGameControllerPreference" forKeyedSubscript:v133];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCRecipes"];
  v134 = NSStringFromSelector(sel_switchControlRecipes);
  [v1 setObject:@"SCRecipes" forKeyedSubscript:v134];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCLaunchRecipeUUID"];
  v135 = NSStringFromSelector(sel_switchControlLaunchRecipeUUID);
  [v1 setObject:@"SCLaunchRecipeUUID" forKeyedSubscript:v135];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCTopLevelMenuItems"];
  v136 = NSStringFromSelector(sel_switchControlTopLevelMenuItems);
  [v1 setObject:@"SCTopLevelMenuItems" forKeyedSubscript:v136];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCGesturesTopLevelMenuItems"];
  v137 = NSStringFromSelector(sel_switchControlGesturesTopLevelMenuItems);
  [v1 setObject:@"SCGesturesTopLevelMenuItems" forKeyedSubscript:v137];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCDeviceTopLevelMenuItems"];
  v138 = NSStringFromSelector(sel_switchControlDeviceTopLevelMenuItems);
  [v1 setObject:@"SCDeviceTopLevelMenuItems" forKeyedSubscript:v138];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCSettingsTopLevelMenuItems"];
  v139 = NSStringFromSelector(sel_switchControlSettingsTopLevelMenuItems);
  [v1 setObject:@"SCSettingsTopLevelMenuItems" forKeyedSubscript:v139];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCMediaControlsTopLevelMenuItems"];
  v140 = NSStringFromSelector(sel_switchControlMediaControlsTopLevelMenuItems);
  [v1 setObject:@"SCMediaControlsTopLevelMenuItems" forKeyedSubscript:v140];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCShouldUseShortFirstPage"];
  v141 = NSStringFromSelector(sel_switchControlShouldUseShortFirstPage);
  [v1 setObject:@"SCShouldUseShortFirstPage" forKeyedSubscript:v141];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCGesturesMenuItems"];
  v142 = NSStringFromSelector(sel_switchControlGesturesMenuItems);
  [v1 setObject:@"SCGesturesMenuItems" forKeyedSubscript:v142];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCDeviceMenuItems"];
  v143 = NSStringFromSelector(sel_switchControlDeviceMenuItems);
  [v1 setObject:@"SCDeviceMenuItems" forKeyedSubscript:v143];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCSettingsMenuItems"];
  v144 = NSStringFromSelector(sel_switchControlSettingsMenuItems);
  [v1 setObject:@"SCSettingsMenuItems" forKeyedSubscript:v144];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCMediaControlsMenuItems"];
  v145 = NSStringFromSelector(sel_switchControlMediaControlsMenuItems);
  [v1 setObject:@"SCMediaControlsMenuItems" forKeyedSubscript:v145];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCScanningStyle"];
  v146 = NSStringFromSelector(sel_switchControlScanningStyle);
  [v1 setObject:@"SCScanningStyle" forKeyedSubscript:v146];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCFirstLaunchScanningMode"];
  v147 = NSStringFromSelector(sel_switchControlFirstLaunchScanningMode);
  [v1 setObject:@"SCFirstLaunchScanningMode" forKeyedSubscript:v147];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCDwellTime"];
  v148 = NSStringFromSelector(sel_switchControlDwellTime);
  [v1 setObject:@"SCDwellTime" forKeyedSubscript:v148];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCTapBehaviorPreference"];
  v149 = NSStringFromSelector(sel_switchControlTapBehavior);
  [v1 setObject:@"SCTapBehaviorPreference" forKeyedSubscript:v149];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCShouldAlwaysActivateKeyboardKeys"];
  v150 = NSStringFromSelector(sel_switchControlShouldAlwaysActivateKeyboardKeys);
  [v1 setObject:@"SCShouldAlwaysActivateKeyboardKeys" forKeyedSubscript:v150];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCIsEnabledAsReceiver"];
  v151 = NSStringFromSelector(sel_switchControlIsEnabledAsReceiver);
  [v1 setObject:@"SCIsEnabledAsReceiver" forKeyedSubscript:v151];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCScanAfterTapLocation"];
  v152 = NSStringFromSelector(sel_switchControlScanAfterTapLocation);
  [v1 setObject:@"SCScanAfterTapLocation" forKeyedSubscript:v152];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCRestartScanningAtCurrentKey"];
  v153 = NSStringFromSelector(sel_switchControlRestartScanningAtCurrentKey);
  [v1 setObject:@"SCRestartScanningAtCurrentKey" forKeyedSubscript:v153];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCIgnoreInvalidSwitchConfiguration"];
  v154 = NSStringFromSelector(sel_switchControlIgnoreInvalidSwitchConfiguration);
  [v1 setObject:@"SCIgnoreInvalidSwitchConfiguration" forKeyedSubscript:v154];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCSwitchControlPointPickerHighPrecisionEnabled"];
  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCSwitchControlPointPickerSelectionStyle"];
  v155 = NSStringFromSelector(sel_switchControlPointPickerSelectionStyle);
  [v1 setObject:@"SCSwitchControlPointPickerSelectionStyle" forKeyedSubscript:v155];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCShouldDisallowUSBRestrictedMode"];
  v156 = NSStringFromSelector(sel_switchControlShouldDisallowUSBRestrictedMode);
  [v1 setObject:@"SCShouldDisallowUSBRestrictedMode" forKeyedSubscript:v156];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCUserDidReadUSBRestrictedModeAlert"];
  v157 = NSStringFromSelector(sel_switchControlUserDidReadUSBRestrictedModeAlert);
  [v1 setObject:@"SCUserDidReadUSBRestrictedModeAlert" forKeyedSubscript:v157];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCDebugLoggingEnabled"];
  v158 = NSStringFromSelector(sel_switchControlDebugLoggingEnabled);
  [v1 setObject:@"SCDebugLoggingEnabled" forKeyedSubscript:v158];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCUseCameraForPointPicker"];
  v159 = NSStringFromSelector(sel_switchControlUseCameraForPointMode);
  [v1 setObject:@"SCUseCameraForPointPicker" forKeyedSubscript:v159];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCCameraPointPickerSensitivity"];
  v160 = NSStringFromSelector(sel_switchControlCameraPointPickerSensitivity);
  [v1 setObject:@"SCCameraPointPickerSensitivity" forKeyedSubscript:v160];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCCameraPointPickerMovementToleranceInJoystickMode"];
  v161 = NSStringFromSelector(sel_switchControlCameraPointPickerMovementToleranceInJoystickMode);
  [v1 setObject:@"SCCameraPointPickerMovementToleranceInJoystickMode" forKeyedSubscript:v161];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCCameraPointPickerMode"];
  v162 = NSStringFromSelector(sel_switchControlCameraPointPickerMode);
  [v1 setObject:@"SCCameraPointPickerMode" forKeyedSubscript:v162];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCCameraPointPickerDwellActivationTimeoutPreference"];
  v163 = NSStringFromSelector(sel_switchControlCameraPointPickerDwellActivationTimeout);
  [v1 setObject:@"SCCameraPointPickerDwellActivationTimeoutPreference" forKeyedSubscript:v163];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCCameraPointPickerDwellMovementToleranceRadiusPreference"];
  v164 = NSStringFromSelector(sel_switchControlCameraPointPickerDwellMovementToleranceRadius);
  [v1 setObject:@"SCCameraPointPickerDwellMovementToleranceRadiusPreference" forKeyedSubscript:v164];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCOnDeviceEyeTrackingEnabledPreference"];
  v165 = NSStringFromSelector(sel_switchControlOnDeviceEyeTrackingEnabled);
  [v1 setObject:@"SCOnDeviceEyeTrackingEnabledPreference" forKeyedSubscript:v165];

  [v0 setObject:&unk_1EFE96A78 forKeyedSubscript:@"SCEnabledByOnDeviceEyeTracking"];
  v166 = NSStringFromSelector(sel_switchControlEnabledByOnDeviceEyeTracking);
  [v1 setObject:@"SCEnabledByOnDeviceEyeTracking" forKeyedSubscript:v166];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicEnhancedPercussion"];
  [v2 addObject:@"AXSHapticMusicEnhancedPercussion"];
  v167 = NSStringFromSelector(sel_hapticMusicEnhancedPercussion);
  [v1 setObject:@"AXSHapticMusicEnhancedPercussion" forKeyedSubscript:v167];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicEnhancedVocals"];
  [v2 addObject:@"AXSHapticMusicEnhancedVocals"];
  v168 = NSStringFromSelector(sel_hapticMusicEnhancedVocals);
  [v1 setObject:@"AXSHapticMusicEnhancedVocals" forKeyedSubscript:v168];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicActive"];
  [v2 addObject:@"AXSHapticMusicActive"];
  v169 = NSStringFromSelector(sel_hapticMusicActive);
  [v1 setObject:@"AXSHapticMusicActive" forKeyedSubscript:v169];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicTrackAvailable"];
  [v2 addObject:@"AXSHapticMusicTrackAvailable"];
  v170 = NSStringFromSelector(sel_hapticMusicTrackAvailable);
  [v1 setObject:@"AXSHapticMusicTrackAvailable" forKeyedSubscript:v170];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicToggledInPreferences"];
  v171 = NSStringFromSelector(sel_hapticMusicToggledInPreferences);
  [v1 setObject:@"AXSHapticMusicToggledInPreferences" forKeyedSubscript:v171];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicAlgorithmSelection"];
  [v2 addObject:@"AXSHapticMusicAlgorithmSelection"];
  v172 = NSStringFromSelector(sel_hapticMusicAlgorithmSelection);
  [v1 setObject:@"AXSHapticMusicAlgorithmSelection" forKeyedSubscript:v172];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicAlgorithmSelections"];
  [v2 addObject:@"AXSHapticMusicAlgorithmSelections"];
  v173 = NSStringFromSelector(sel_hapticMusicAlgorithmSelections);
  [v1 setObject:@"AXSHapticMusicAlgorithmSelections" forKeyedSubscript:v173];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"AXSHapticMusicUsagePerDay"];
  v174 = NSStringFromSelector(sel_hapticMusicUsagePerDay);
  [v1 setObject:@"AXSHapticMusicUsagePerDay" forKeyedSubscript:v174];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"AXSHapticMusicUsageStartDate"];
  v175 = NSStringFromSelector(sel_hapticMusicUsageStartDate);
  [v1 setObject:@"AXSHapticMusicUsageStartDate" forKeyedSubscript:v175];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSHapticMusicIntensity"];
  [v2 addObject:@"AXSHapticMusicIntensity"];
  v176 = NSStringFromSelector(sel_hapticMusicIntensity);
  [v1 setObject:@"AXSHapticMusicIntensity" forKeyedSubscript:v176];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextScrollingSpeed"];
  [v2 addObject:@"HoverTextScrollingSpeed"];
  v177 = NSStringFromSelector(sel_hoverTextScrollingSpeed);
  [v1 setObject:@"HoverTextScrollingSpeed" forKeyedSubscript:v177];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextShowedBanner"];
  [v2 addObject:@"HoverTextShowedBanner"];
  v178 = NSStringFromSelector(sel_hoverTextShowedBanner);
  [v1 setObject:@"HoverTextShowedBanner" forKeyedSubscript:v178];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextContentType"];
  v179 = NSStringFromSelector(sel_hoverTextContentType);
  [v1 setObject:@"HoverTextContentType" forKeyedSubscript:v179];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextTypingShowedBanner"];
  [v2 addObject:@"HoverTextTypingShowedBanner"];
  v180 = NSStringFromSelector(sel_hoverTextTypingShowedBanner);
  [v1 setObject:@"HoverTextTypingShowedBanner" forKeyedSubscript:v180];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferencesWereInitialized"];
  [v2 addObject:@"ZoomPreferencesWereInitialized"];
  v181 = NSStringFromSelector(sel_zoomPreferencesWereInitialized);
  [v1 setObject:@"ZoomPreferencesWereInitialized" forKeyedSubscript:v181];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomWindowFrame"];
  v182 = NSStringFromSelector(sel_zoomWindowFrame);
  [v1 setObject:@"ZoomWindowFrame" forKeyedSubscript:v182];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"DockSize"];
  [v2 addObject:@"DockSize"];
  v183 = NSStringFromSelector(sel_dockSize);
  [v1 setObject:@"DockSize" forKeyedSubscript:v183];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomScale"];
  [v2 addObject:@"ZoomScale"];
  v184 = NSStringFromSelector(sel_zoomScale);
  [v1 setObject:@"ZoomScale" forKeyedSubscript:v184];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPanOffset"];
  v185 = NSStringFromSelector(sel_zoomPanOffset);
  [v1 setObject:@"ZoomPanOffset" forKeyedSubscript:v185];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSlugPosition"];
  [v2 addObject:@"ZoomSlugPosition"];
  v186 = NSStringFromSelector(sel_zoomSlugNormalizedPosition);
  [v1 setObject:@"ZoomSlugPosition" forKeyedSubscript:v186];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomCurrentLensEffect"];
  [v2 addObject:@"ZoomCurrentLensEffect"];
  v187 = NSStringFromSelector(sel_zoomCurrentLensEffect);
  [v1 setObject:@"ZoomCurrentLensEffect" forKeyedSubscript:v187];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomCurrentLensMode"];
  v188 = NSStringFromSelector(sel_zoomCurrentLensMode);
  [v1 setObject:@"ZoomCurrentLensMode" forKeyedSubscript:v188];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShouldFollowFocus"];
  [v2 addObject:@"ZoomShouldFollowFocus"];
  v189 = NSStringFromSelector(sel_zoomShouldFollowFocus);
  [v1 setObject:@"ZoomShouldFollowFocus" forKeyedSubscript:v189];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShouldShowSlug"];
  [v2 addObject:@"ZoomShouldShowSlug"];
  v190 = NSStringFromSelector(sel_zoomShouldShowSlug);
  [v1 setObject:@"ZoomShouldShowSlug" forKeyedSubscript:v190];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomAlwaysUseWindowZoomForTyping"];
  [v2 addObject:@"ZoomAlwaysUseWindowZoomForTyping"];
  v191 = NSStringFromSelector(sel_zoomAlwaysUseWindowedZoomForTyping);
  [v1 setObject:@"ZoomAlwaysUseWindowZoomForTyping" forKeyedSubscript:v191];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSlugSingleTapAction"];
  [v2 addObject:@"ZoomSlugSingleTapAction"];
  v192 = NSStringFromSelector(sel_zoomSlugSingleTapAction);
  [v1 setObject:@"ZoomSlugSingleTapAction" forKeyedSubscript:v192];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSlugDoubleTapAction"];
  [v2 addObject:@"ZoomSlugDoubleTapAction"];
  v193 = NSStringFromSelector(sel_zoomSlugDoubleTapAction);
  [v1 setObject:@"ZoomSlugDoubleTapAction" forKeyedSubscript:v193];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSlugTripleTapAction"];
  [v2 addObject:@"ZoomSlugTripleTapAction"];
  v194 = NSStringFromSelector(sel_zoomSlugTripleTapAction);
  [v1 setObject:@"ZoomSlugTripleTapAction" forKeyedSubscript:v194];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSlugTapAndSlideToAdjustZoomLevel"];
  [v2 addObject:@"ZoomSlugTapAndSlideToAdjustZoomLevel"];
  v195 = NSStringFromSelector(sel_zoomSlugTapAndSlideToAdjustZoomLevelEnabled);
  [v1 setObject:@"ZoomSlugTapAndSlideToAdjustZoomLevel" forKeyedSubscript:v195];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferredDockPosition"];
  [v2 addObject:@"ZoomPreferredDockPosition"];
  v196 = NSStringFromSelector(sel_zoomPreferredCurrentDockPosition);
  [v1 setObject:@"ZoomPreferredDockPosition" forKeyedSubscript:v196];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferredLensMode"];
  [v2 addObject:@"ZoomPreferredLensMode"];
  v197 = NSStringFromSelector(sel_zoomPreferredCurrentLensMode);
  [v1 setObject:@"ZoomPreferredLensMode" forKeyedSubscript:v197];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferredMaximumZoomScale"];
  [v2 addObject:@"ZoomPreferredMaximumZoomScale"];
  v198 = NSStringFromSelector(sel_zoomPreferredMaximumZoomScale);
  [v1 setObject:@"ZoomPreferredMaximumZoomScale" forKeyedSubscript:v198];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferredLensModes"];
  v199 = NSStringFromSelector(sel_zoomPreferredLensModes);
  [v1 setObject:@"ZoomPreferredLensModes" forKeyedSubscript:v199];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPreferredDockPositions"];
  v200 = NSStringFromSelector(sel_zoomPreferredDockPositions);
  [v1 setObject:@"ZoomPreferredDockPositions" forKeyedSubscript:v200];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomIdleSlugOpacity"];
  [v2 addObject:@"ZoomIdleSlugOpacity"];
  v201 = NSStringFromSelector(sel_zoomIdleSlugOpacity);
  [v1 setObject:@"ZoomIdleSlugOpacity" forKeyedSubscript:v201];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomControllerColorPreference"];
  [v2 addObject:@"ZoomControllerColorPreference"];
  v202 = NSStringFromSelector(sel_zoomControllerColor);
  [v1 setObject:@"ZoomControllerColorPreference" forKeyedSubscript:v202];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomAudioDestination"];
  [v2 addObject:@"ZoomAudioDestination"];
  v203 = NSStringFromSelector(sel_zoomPreferredAudioDestination);
  [v1 setObject:@"ZoomAudioDestination" forKeyedSubscript:v203];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShouldAllowFullscreenAutopanning"];
  [v2 addObject:@"ZoomShouldAllowFullscreenAutopanning"];
  v204 = NSStringFromSelector(sel_kAXZoomShouldAllowFullscreenAutopanningPreference);
  [v1 setObject:@"ZoomShouldAllowFullscreenAutopanning" forKeyedSubscript:v204];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomDebugDisableZoomLensScaleTransform"];
  v205 = NSStringFromSelector(sel_zoomDebugDisableZoomLensScaleTransform);
  [v1 setObject:@"ZoomDebugDisableZoomLensScaleTransform" forKeyedSubscript:v205];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomDebugShowExternalFocusRectPreference"];
  v206 = NSStringFromSelector(sel_zoomDebugShowExternalFocusRect);
  [v1 setObject:@"ZoomDebugShowExternalFocusRectPreference" forKeyedSubscript:v206];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomInStandby"];
  [v2 addObject:@"ZoomInStandby"];
  v207 = NSStringFromSelector(sel_zoomInStandby);
  [v1 setObject:@"ZoomInStandby" forKeyedSubscript:v207];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShowedBanner"];
  [v2 addObject:@"ZoomShowedBanner"];
  v208 = NSStringFromSelector(sel_zoomShowedBanner);
  [v1 setObject:@"ZoomShowedBanner" forKeyedSubscript:v208];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPeekZoomEnabled"];
  [v2 addObject:@"ZoomPeekZoomEnabled"];
  v209 = NSStringFromSelector(sel_zoomPeekZoomEnabled);
  [v1 setObject:@"ZoomPeekZoomEnabled" forKeyedSubscript:v209];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPeekZoomEverEnabled"];
  [v2 addObject:@"ZoomPeekZoomEverEnabled"];
  v210 = NSStringFromSelector(sel_zoomPeekZoomEverEnabled);
  [v1 setObject:@"ZoomPeekZoomEverEnabled" forKeyedSubscript:v210];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShouldUseKeyboardShortcutsPreference"];
  [v2 addObject:@"ZoomShouldUseKeyboardShortcutsPreference"];
  v211 = NSStringFromSelector(sel_zoomKeyboardShortcutsEnabled);
  [v1 setObject:@"ZoomShouldUseKeyboardShortcutsPreference" forKeyedSubscript:v211];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomAdjustZoomLevelKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomAdjustZoomLevelKeyboardShortcutEnabledPreference"];
  v212 = NSStringFromSelector(sel_zoomAdjustZoomLevelKbShortcutEnabled);
  [v1 setObject:@"ZoomAdjustZoomLevelKeyboardShortcutEnabledPreference" forKeyedSubscript:v212];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomToggleZoomKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomToggleZoomKeyboardShortcutEnabledPreference"];
  v213 = NSStringFromSelector(sel_zoomToggleZoomKbShortcutEnabled);
  [v1 setObject:@"ZoomToggleZoomKeyboardShortcutEnabledPreference" forKeyedSubscript:v213];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomPanZoomKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomPanZoomKeyboardShortcutEnabledPreference"];
  v214 = NSStringFromSelector(sel_zoomPanZoomKbShortcutEnabled);
  [v1 setObject:@"ZoomPanZoomKeyboardShortcutEnabledPreference" forKeyedSubscript:v214];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomResizeZoomWindowKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomResizeZoomWindowKeyboardShortcutEnabledPreference"];
  v215 = NSStringFromSelector(sel_zoomResizeZoomWindowKbShortcutEnabled);
  [v1 setObject:@"ZoomResizeZoomWindowKeyboardShortcutEnabledPreference" forKeyedSubscript:v215];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomSwitchZoomModeKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomSwitchZoomModeKeyboardShortcutEnabledPreference"];
  v216 = NSStringFromSelector(sel_zoomSwitchZoomModeKbShortcutEnabled);
  [v1 setObject:@"ZoomSwitchZoomModeKeyboardShortcutEnabledPreference" forKeyedSubscript:v216];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomTempToggleZoomKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomTempToggleZoomKeyboardShortcutEnabledPreference"];
  v217 = NSStringFromSelector(sel_zoomTempToggleZoomKbShortcutEnabled);
  [v1 setObject:@"ZoomTempToggleZoomKeyboardShortcutEnabledPreference" forKeyedSubscript:v217];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomScrollWheelKeyboardShortcutEnabledPreference"];
  [v2 addObject:@"ZoomScrollWheelKeyboardShortcutEnabledPreference"];
  v218 = NSStringFromSelector(sel_zoomScrollWheelKbShortcutEnabled);
  [v1 setObject:@"ZoomScrollWheelKeyboardShortcutEnabledPreference" forKeyedSubscript:v218];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"kAXZoomTrackpadGestureEnabledPreference"];
  [v2 addObject:@"kAXZoomTrackpadGestureEnabledPreference"];
  v219 = NSStringFromSelector(sel_zoomTrackpadGestureEnabled);
  [v1 setObject:@"kAXZoomTrackpadGestureEnabledPreference" forKeyedSubscript:v219];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomAutopannerShouldPanWithAccelerationPreference"];
  [v2 addObject:@"ZoomAutopannerShouldPanWithAccelerationPreference"];
  v220 = NSStringFromSelector(sel_zoomAutopannerShouldPanWithAcceleration);
  [v1 setObject:@"ZoomAutopannerShouldPanWithAccelerationPreference" forKeyedSubscript:v220];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomShowZoomWhileMirroringPreference"];
  [v2 addObject:@"ZoomShowZoomWhileMirroringPreference"];
  v221 = NSStringFromSelector(sel_zoomShowWhileMirroring);
  [v1 setObject:@"ZoomShowZoomWhileMirroringPreference" forKeyedSubscript:v221];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessUsageCount"];
  v222 = NSStringFromSelector(sel_guidedAccessUsageCount);
  [v1 setObject:@"GuidedAccessUsageCount" forKeyedSubscript:v222];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"kAXSGuidedAccessAXFeaturesEnabled"];
  v223 = NSStringFromSelector(sel_guidedAccessAXFeaturesEnabled);
  [v1 setObject:@"kAXSGuidedAccessAXFeaturesEnabled" forKeyedSubscript:v223];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessAllowsUnlockWithTouchID"];
  v224 = NSStringFromSelector(sel_guidedAccessAllowsUnlockWithTouchID);
  [v1 setObject:@"GuidedAccessAllowsUnlockWithTouchID" forKeyedSubscript:v224];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessToneIdentifierForTimeRestrictionEvent"];
  v225 = NSStringFromSelector(sel_guidedAccessToneIdentifierForTimeRestrictionEvents);
  [v1 setObject:@"GuidedAccessToneIdentifierForTimeRestrictionEvent" forKeyedSubscript:v225];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessSpeakForTimeRestrictionEvent"];
  v226 = NSStringFromSelector(sel_guidedAccessShouldSpeakForTimeRestrictionEvents);
  [v1 setObject:@"GuidedAccessSpeakForTimeRestrictionEvent" forKeyedSubscript:v226];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"kAXSGuidedAccessOverrideIdleTimePreference"];
  v227 = NSStringFromSelector(sel_guidedAccessOverrideIdleTime);
  [v1 setObject:@"kAXSGuidedAccessOverrideIdleTimePreference" forKeyedSubscript:v227];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessAutoLockTimeInSeconds"];
  v228 = NSStringFromSelector(sel_guidedAccessAutoLockTimeInSeconds);
  [v1 setObject:@"GuidedAccessAutoLockTimeInSeconds" forKeyedSubscript:v228];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GuidedAccessUserPrefersMirroringForExternalDisplays"];
  v229 = NSStringFromSelector(sel_guidedAccessUserPrefersMirroringForExternalDisplays);
  [v1 setObject:@"GuidedAccessUserPrefersMirroringForExternalDisplays" forKeyedSubscript:v229];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXInternalSettingUserAppProfile"];
  v230 = NSStringFromSelector(sel_gaxInternalSettingsUserAppProfile);
  [v1 setObject:@"GAXInternalSettingUserAppProfile" forKeyedSubscript:v230];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXInternalSettingUserGlobalProfile"];
  v231 = NSStringFromSelector(sel_gaxInternalSettingsUserGlobalProfile);
  [v1 setObject:@"GAXInternalSettingUserGlobalProfile" forKeyedSubscript:v231];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileSavedAXFeatures"];
  v232 = NSStringFromSelector(sel_gaxInternalSettingsSavedAccessibilityFeatures);
  [v1 setObject:@"GAXGlobalProfileSavedAXFeatures" forKeyedSubscript:v232];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileSavedAXTripleClickOptions"];
  v233 = NSStringFromSelector(sel_gaxInternalSettingsSavedAccessibilityTripleClickOptions);
  [v1 setObject:@"GAXGlobalProfileSavedAXTripleClickOptions" forKeyedSubscript:v233];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileUserConfiguredAppIds"];
  v234 = NSStringFromSelector(sel_gaxInternalSettingsUserConfiguredAppIDs);
  [v1 setObject:@"GAXGlobalProfileUserConfiguredAppIds" forKeyedSubscript:v234];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileActiveAppOrientation"];
  v235 = NSStringFromSelector(sel_gaxInternalSettingsActiveAppOrientation);
  [v1 setObject:@"GAXGlobalProfileActiveAppOrientation" forKeyedSubscript:v235];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileActiveAppID"];
  v236 = NSStringFromSelector(sel_gaxInternalSettingsActiveAppID);
  [v1 setObject:@"GAXGlobalProfileActiveAppID" forKeyedSubscript:v236];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"AXGAXInternalSettingIsActiveAppSelfLocked"];
  v237 = NSStringFromSelector(sel_gaxInternalSettingsIsActiveAppSelfLocked);
  [v1 setObject:@"AXGAXInternalSettingIsActiveAppSelfLocked" forKeyedSubscript:v237];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXInternalSettingTimeRestrictionHasExpired"];
  v238 = NSStringFromSelector(sel_gaxInternalSettingsTimeRestrictionHasExpired);
  [v1 setObject:@"GAXInternalSettingTimeRestrictionHasExpired" forKeyedSubscript:v238];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileSystemDidRestartDueToLowBattery"];
  v239 = NSStringFromSelector(sel_gaxInternalSettingsSystemDidRestartDueToLowBattery);
  [v1 setObject:@"GAXGlobalProfileSystemDidRestartDueToLowBattery" forKeyedSubscript:v239];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileECID"];
  v240 = NSStringFromSelector(sel_gaxInternalSettingsECID);
  [v1 setObject:@"GAXGlobalProfileECID" forKeyedSubscript:v240];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileProductBuildVersion"];
  v241 = NSStringFromSelector(sel_gaxInternalSettingsProductBuildVersion);
  [v1 setObject:@"GAXGlobalProfileProductBuildVersion" forKeyedSubscript:v241];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileLastActivationDate"];
  v242 = NSStringFromSelector(sel_gaxInternalSettingsLastActivationDate);
  [v1 setObject:@"GAXGlobalProfileLastActivationDate" forKeyedSubscript:v242];

  [v0 setObject:&unk_1EFE96AC0 forKeyedSubscript:@"GAXGlobalProfileLastPasscodeSetDate"];
  v243 = NSStringFromSelector(sel_gaxInternalSettingsLastPasscodeSetDate);
  [v1 setObject:@"GAXGlobalProfileLastPasscodeSetDate" forKeyedSubscript:v243];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSupportsAdvancedDisplayFiltersPreference"];
  v244 = NSStringFromSelector(sel_supportsAdvancedDisplayFilters);
  [v1 setObject:@"kAXSupportsAdvancedDisplayFiltersPreference" forKeyedSubscript:v244];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"InternalLoggingColorThemePreference"];
  v245 = NSStringFromSelector(sel_internalLoggingColorTheme);
  [v1 setObject:@"InternalLoggingColorThemePreference" forKeyedSubscript:v245];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"ValidateSecondPartyApps"];
  v246 = NSStringFromSelector(sel_validateSecondPartyApps);
  [v1 setObject:@"ValidateSecondPartyApps" forKeyedSubscript:v246];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"IncludeBacktraceInLogs"];
  v247 = NSStringFromSelector(sel_includeBacktraceInLogs);
  [v1 setObject:@"IncludeBacktraceInLogs" forKeyedSubscript:v247];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"IgnoreAXAsserts"];
  v248 = NSStringFromSelector(sel_ignoreAXAsserts);
  [v1 setObject:@"IgnoreAXAsserts" forKeyedSubscript:v248];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"IgnoreAXServerEntitlements"];
  v249 = NSStringFromSelector(sel_ignoreAXServerEntitlements);
  [v1 setObject:@"IgnoreAXServerEntitlements" forKeyedSubscript:v249];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LogAXNotificationPosting"];
  v250 = NSStringFromSelector(sel_logAXNotificationPosting);
  [v1 setObject:@"LogAXNotificationPosting" forKeyedSubscript:v250];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"UseNewAXBundleLoader"];
  v251 = NSStringFromSelector(sel_useNewAXBundleLoader);
  [v1 setObject:@"UseNewAXBundleLoader" forKeyedSubscript:v251];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"shouldPerformValidationsAtRuntime"];
  v252 = NSStringFromSelector(sel_shouldPerformValidationsAtRuntime);
  [v1 setObject:@"shouldPerformValidationsAtRuntime" forKeyedSubscript:v252];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SpeakCorrectionsEnabled"];
  [v2 addObject:@"SpeakCorrectionsEnabled"];
  v253 = NSStringFromSelector(sel_speakCorrectionsEnabled);
  [v1 setObject:@"SpeakCorrectionsEnabled" forKeyedSubscript:v253];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSTripleClickUserOrderedPreference"];
  [v2 addObject:@"AXSTripleClickUserOrderedPreference"];
  v254 = NSStringFromSelector(sel_tripleClickOrderedOptions);
  [v1 setObject:@"AXSTripleClickUserOrderedPreference" forKeyedSubscript:v254];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LetterFeedbackEnabled"];
  [v2 addObject:@"LetterFeedbackEnabled"];
  v255 = NSStringFromSelector(sel_letterFeedbackEnabled);
  [v1 setObject:@"LetterFeedbackEnabled" forKeyedSubscript:v255];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"PhoneticFeedbackEnabled"];
  [v2 addObject:@"PhoneticFeedbackEnabled"];
  v256 = NSStringFromSelector(sel_phoneticFeedbackEnabled);
  [v1 setObject:@"PhoneticFeedbackEnabled" forKeyedSubscript:v256];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"CharacterFeedbackDelayPreference"];
  [v2 addObject:@"CharacterFeedbackDelayPreference"];
  v257 = NSStringFromSelector(sel_characterFeedbackDelayDuration);
  [v1 setObject:@"CharacterFeedbackDelayPreference" forKeyedSubscript:v257];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"QuickTypePredictionFeedback"];
  [v2 addObject:@"QuickTypePredictionFeedback"];
  v258 = NSStringFromSelector(sel_quickTypePredictionFeedbackEnabled);
  [v1 setObject:@"QuickTypePredictionFeedback" forKeyedSubscript:v258];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"WordFeedbackEnabled"];
  [v2 addObject:@"WordFeedbackEnabled"];
  v259 = NSStringFromSelector(sel_wordFeedbackEnabled);
  [v1 setObject:@"WordFeedbackEnabled" forKeyedSubscript:v259];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"InternalSkipHearingAidMFiAuth"];
  v260 = NSStringFromSelector(sel_skipHearingAidMFiAuth);
  [v1 setObject:@"InternalSkipHearingAidMFiAuth" forKeyedSubscript:v260];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"InternalEnableHearingAidReporter"];
  v261 = NSStringFromSelector(sel_enableHearingAidReporter);
  [v1 setObject:@"InternalEnableHearingAidReporter" forKeyedSubscript:v261];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSInternalGuidedAccessDisallowDirectInactiveToActiveTransition"];
  v262 = NSStringFromSelector(sel_guidedAccessDisallowDirectInactiveToActiveTransition);
  [v1 setObject:@"AXSInternalGuidedAccessDisallowDirectInactiveToActiveTransition" forKeyedSubscript:v262];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSInternalGuidedAccessOverrideTimeRestrictionDuration"];
  v263 = NSStringFromSelector(sel_guidedAccessOverrideTimeRestrictionDuration);
  [v1 setObject:@"AXSInternalGuidedAccessOverrideTimeRestrictionDuration" forKeyedSubscript:v263];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSInternalGuidedAccessEnableExperimentalUI"];
  v264 = NSStringFromSelector(sel_guidedAccessEnableExperimentalUI);
  [v1 setObject:@"AXSInternalGuidedAccessEnableExperimentalUI" forKeyedSubscript:v264];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSAudioHardwareChannelLayoutsPreference"];
  v265 = NSStringFromSelector(sel__audioHardwareChannelLayout);
  [v1 setObject:@"AXSAudioHardwareChannelLayoutsPreference" forKeyedSubscript:v265];

  v266 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  v267 = MEMORY[0x1E69E4D60];
  [v0 setObject:v266 forKeyedSubscript:*MEMORY[0x1E69E4D60]];

  v268 = *v267;
  v269 = NSStringFromSelector(sel_guestPassSessionIsActive);
  [v1 setObject:v268 forKeyedSubscript:v269];

  v270 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  [v0 setObject:v270 forKeyedSubscript:@"AXGuestPassSessionCCWidgetActive"];

  v271 = NSStringFromSelector(sel_guestPassSessionCCWidgetIsActive);
  [v1 setObject:@"AXGuestPassSessionCCWidgetActive" forKeyedSubscript:v271];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"ShowSpeechController"];
  [v2 addObject:@"ShowSpeechController"];
  v272 = NSStringFromSelector(sel_showSpeechController);
  [v1 setObject:@"ShowSpeechController" forKeyedSubscript:v272];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SpeechControllerIdleOpacity"];
  [v2 addObject:@"SpeechControllerIdleOpacity"];
  v273 = NSStringFromSelector(sel_speechControllerIdleOpacity);
  [v1 setObject:@"SpeechControllerIdleOpacity" forKeyedSubscript:v273];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SpeechControllerLongPressAction"];
  [v2 addObject:@"SpeechControllerLongPressAction"];
  v274 = NSStringFromSelector(sel_speechControllerLongPressAction);
  [v1 setObject:@"SpeechControllerLongPressAction" forKeyedSubscript:v274];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SpeechControllerDoubleTapAction"];
  [v2 addObject:@"SpeechControllerDoubleTapAction"];
  v275 = NSStringFromSelector(sel_speechControllerDoubleTapAction);
  [v1 setObject:@"SpeechControllerDoubleTapAction" forKeyedSubscript:v275];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakHighlightChoice"];
  [v2 addObject:@"QuickSpeakHighlightChoice"];
  v276 = NSStringFromSelector(sel_quickSpeakHighlightOption);
  [v1 setObject:@"QuickSpeakHighlightChoice" forKeyedSubscript:v276];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"AXSQuickSpeakWordHighlightColorPreference"];
  [v2 addObject:@"AXSQuickSpeakWordHighlightColorPreference"];
  v277 = NSStringFromSelector(sel_quickSpeakWordHighlightColor);
  [v1 setObject:@"AXSQuickSpeakWordHighlightColorPreference" forKeyedSubscript:v277];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"AXSQuickSpeakSentenceHighlightColorPreference"];
  [v2 addObject:@"AXSQuickSpeakSentenceHighlightColorPreference"];
  v278 = NSStringFromSelector(sel_quickSpeakSentenceHighlightColor);
  [v1 setObject:@"AXSQuickSpeakSentenceHighlightColorPreference" forKeyedSubscript:v278];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakUnderlineSentence"];
  [v2 addObject:@"QuickSpeakUnderlineSentence"];
  v279 = NSStringFromSelector(sel_quickSpeakUnderlineSentence);
  [v1 setObject:@"QuickSpeakUnderlineSentence" forKeyedSubscript:v279];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakVolume"];
  [v2 addObject:@"QuickSpeakVolume"];
  v280 = NSStringFromSelector(sel_quickSpeakVolume);
  [v1 setObject:@"QuickSpeakVolume" forKeyedSubscript:v280];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SpeechVoiceIdentifierForLanguage"];
  v281 = NSStringFromSelector(sel_speechVoiceIdentifierForLanguage);
  [v1 setObject:@"SpeechVoiceIdentifierForLanguage" forKeyedSubscript:v281];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SpeechCustomVoiceSettings"];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"UserDidSelectVoiceForLanguage"];
  v282 = NSStringFromSelector(sel_userDidSelectVoiceForLanguage);
  [v1 setObject:@"UserDidSelectVoiceForLanguage" forKeyedSubscript:v282];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VisionEngineCaptureDiagnosticsToDisk"];
  v283 = NSStringFromSelector(sel_shouldCaptureVisionEngineDiagnosticsToDisk);
  [v1 setObject:@"VisionEngineCaptureDiagnosticsToDisk" forKeyedSubscript:v283];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:kAXSVoiceOverDelayUntilSpeakUnderTouch];
  [v2 addObject:kAXSVoiceOverDelayUntilSpeakUnderTouch];
  v284 = kAXSVoiceOverDelayUntilSpeakUnderTouch;
  v285 = NSStringFromSelector(sel_voiceOverDelayUntilSpeakUnderTouch);
  [v1 setObject:v284 forKeyedSubscript:v285];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LabelCache"];
  [v2 addObject:@"LabelCache"];
  v286 = NSStringFromSelector(sel_voiceOverCustomLabels);
  [v1 setObject:@"LabelCache" forKeyedSubscript:v286];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakNubbitNormalizedPosition"];
  [v2 addObject:@"QuickSpeakNubbitNormalizedPosition"];
  v287 = NSStringFromSelector(sel_quickSpeakNubbitNormalizedPosition);
  [v1 setObject:@"QuickSpeakNubbitNormalizedPosition" forKeyedSubscript:v287];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakSentenceHighlight"];
  [v2 addObject:@"QuickSpeakSentenceHighlight"];
  v288 = NSStringFromSelector(sel_quickSpeakSentenceHighlightOption);
  [v1 setObject:@"QuickSpeakSentenceHighlight" forKeyedSubscript:v288];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SiriAutoUpdateListInitializedPreference"];
  v289 = NSStringFromSelector(sel_siriAutoUpdateListInitialized);
  [v1 setObject:@"SiriAutoUpdateListInitializedPreference" forKeyedSubscript:v289];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SpokenContentDefaultFallbackLanguage"];
  [v2 addObject:@"SpokenContentDefaultFallbackLanguage"];
  v290 = NSStringFromSelector(sel_spokenContentDefaultFallbackLanguage);
  [v1 setObject:@"SpokenContentDefaultFallbackLanguage" forKeyedSubscript:v290];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"SpokenContentShouldUseLanguageDetection"];
  [v2 addObject:@"SpokenContentShouldUseLanguageDetection"];
  v291 = NSStringFromSelector(sel_spokenContentShouldUseLanguageDetection);
  [v1 setObject:@"SpokenContentShouldUseLanguageDetection" forKeyedSubscript:v291];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSTeachableMomentsNotificationSeen"];
  [v2 addObject:@"AXSTeachableMomentsNotificationSeen"];
  v292 = NSStringFromSelector(sel_teachableMomentsNotificationsSeen);
  [v1 setObject:@"AXSTeachableMomentsNotificationSeen" forKeyedSubscript:v292];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSTeachableMomentsDelayBeforeSending"];
  [v2 addObject:@"AXSTeachableMomentsDelayBeforeSending"];
  v293 = NSStringFromSelector(sel_teachableMomentsDelayBeforeSending);
  [v1 setObject:@"AXSTeachableMomentsDelayBeforeSending" forKeyedSubscript:v293];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverHandwritingWasNativeAutocorrectEnabled"];
  [v2 addObject:@"VoiceOverHandwritingWasNativeAutocorrectEnabled"];
  v294 = NSStringFromSelector(sel_voiceOverHandwritingWasNativeAutocorrectEnabled);
  [v1 setObject:@"VoiceOverHandwritingWasNativeAutocorrectEnabled" forKeyedSubscript:v294];

  v295 = MEMORY[0x1E69E4F98];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:*MEMORY[0x1E69E4F98]];
  [v2 addObject:*v295];
  v296 = *v295;
  v297 = NSStringFromSelector(sel_voiceOverSpeakingRate);
  [v1 setObject:v296 forKeyedSubscript:v297];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverSpeaksOverTelephoneCalls"];
  [v2 addObject:@"AXSVoiceOverSpeaksOverTelephoneCalls"];
  v298 = NSStringFromSelector(sel_voiceOverSpeaksOverTelephoneCalls);
  [v1 setObject:@"AXSVoiceOverSpeaksOverTelephoneCalls" forKeyedSubscript:v298];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchHelpModePreference"];
  [v2 addObject:@"VoiceOverTouchHelpModePreference"];
  v299 = NSStringFromSelector(sel_voiceOverHelpMode);
  [v1 setObject:@"VoiceOverTouchHelpModePreference" forKeyedSubscript:v299];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"NavigateImagesPreference"];
  [v2 addObject:@"NavigateImagesPreference"];
  v300 = NSStringFromSelector(sel_voiceOverNavigateImagesOption);
  [v1 setObject:@"NavigateImagesPreference" forKeyedSubscript:v300];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchPhoneticsEnabledPreference"];
  [v2 addObject:@"VoiceOverTouchPhoneticsEnabledPreference"];
  v301 = NSStringFromSelector(sel_voiceOverPhoneticsFeedback);
  [v1 setObject:@"VoiceOverTouchPhoneticsEnabledPreference" forKeyedSubscript:v301];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchTypingHardwareFeedback"];
  [v2 addObject:@"VoiceOverTouchTypingHardwareFeedback"];
  v302 = NSStringFromSelector(sel_voiceOverHardwareTypingFeedback);
  [v1 setObject:@"VoiceOverTouchTypingHardwareFeedback" forKeyedSubscript:v302];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchTypingFeedback"];
  [v2 addObject:@"VoiceOverTouchTypingFeedback"];
  v303 = NSStringFromSelector(sel_voiceOverSoftwareTypingFeedback);
  [v1 setObject:@"VoiceOverTouchTypingFeedback" forKeyedSubscript:v303];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchTypingBrailleGesturesFeedback"];
  [v2 addObject:@"VoiceOverTouchTypingBrailleGesturesFeedback"];
  v304 = NSStringFromSelector(sel_voiceOverBrailleGesturesTypingFeedback);
  [v1 setObject:@"VoiceOverTouchTypingBrailleGesturesFeedback" forKeyedSubscript:v304];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchHintsEnabled"];
  [v2 addObject:@"VoiceOverTouchHintsEnabled"];
  v305 = NSStringFromSelector(sel_voiceOverHintsEnabled);
  [v1 setObject:@"VoiceOverTouchHintsEnabled" forKeyedSubscript:v305];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:kAXSVoiceOverPitchPreference];
  [v2 addObject:kAXSVoiceOverPitchPreference];
  v306 = kAXSVoiceOverPitchPreference;
  v307 = NSStringFromSelector(sel_voiceOverPitch);
  [v1 setObject:v306 forKeyedSubscript:v307];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverUseSoundEffects"];
  [v2 addObject:@"VoiceOverUseSoundEffects"];
  v308 = NSStringFromSelector(sel_voiceOverSoundEffectsEnabled);
  [v1 setObject:@"VoiceOverUseSoundEffects" forKeyedSubscript:v308];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverHapticsEnabled"];
  [v2 addObject:@"VoiceOverHapticsEnabled"];
  v309 = NSStringFromSelector(sel_voiceOverHapticsEnabled);
  [v1 setObject:@"VoiceOverHapticsEnabled" forKeyedSubscript:v309];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTurnOnBluetoothEnabled"];
  v310 = NSStringFromSelector(sel_voiceOverAlwaysTurnOnBluetooth);
  [v1 setObject:@"AXSVoiceOverTurnOnBluetoothEnabled" forKeyedSubscript:v310];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverSoundVolume"];
  [v2 addObject:@"VoiceOverSoundVolume"];
  v311 = NSStringFromSelector(sel_voiceOverSoundVolume);
  [v1 setObject:@"VoiceOverSoundVolume" forKeyedSubscript:v311];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverAdjustSoundVolumeIndependently"];
  [v2 addObject:@"VoiceOverAdjustSoundVolumeIndependently"];
  v312 = NSStringFromSelector(sel_voiceOverAdjustSoundVolumeIndependently);
  [v1 setObject:@"VoiceOverAdjustSoundVolumeIndependently" forKeyedSubscript:v312];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverHapticIntensity"];
  [v2 addObject:@"VoiceOverHapticIntensity"];
  v313 = NSStringFromSelector(sel_voiceOverHapticIntensity);
  [v1 setObject:@"VoiceOverHapticIntensity" forKeyedSubscript:v313];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverVerbosityEmojiSuffixEnabledPreference"];
  [v2 addObject:@"VoiceOverVerbosityEmojiSuffixEnabledPreference"];
  v314 = NSStringFromSelector(sel_voiceOverVerbosityEmojiSuffixEnabled);
  [v1 setObject:@"VoiceOverVerbosityEmojiSuffixEnabledPreference" forKeyedSubscript:v314];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverVerbosityEmojiFeedbackPreference"];
  [v2 addObject:@"VoiceOverVerbosityEmojiFeedbackPreference"];
  v315 = NSStringFromSelector(sel_voiceOverVerbosityEmojiFeedback);
  [v1 setObject:@"VoiceOverVerbosityEmojiFeedbackPreference" forKeyedSubscript:v315];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"SpeakingRateInRotorEnabled"];
  [v2 addObject:@"SpeakingRateInRotorEnabled"];
  v316 = NSStringFromSelector(sel_voiceOverSpeakingRateInRotorEnabled);
  [v1 setObject:@"SpeakingRateInRotorEnabled" forKeyedSubscript:v316];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"SpeakNotificationInLockScreen"];
  [v2 addObject:@"SpeakNotificationInLockScreen"];
  v317 = NSStringFromSelector(sel_voiceOverSpeakNotificationsEnabled);
  [v1 setObject:@"SpeakNotificationInLockScreen" forKeyedSubscript:v317];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchRotorItemsPreference"];
  [v2 addObject:@"VoiceOverTouchRotorItemsPreference"];
  v318 = NSStringFromSelector(sel_voiceOverRotorItems);
  [v1 setObject:@"VoiceOverTouchRotorItemsPreference" forKeyedSubscript:v318];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverEditAppsActionEnabledPreference"];
  [v2 addObject:@"VoiceOverEditAppsActionEnabledPreference"];
  v319 = NSStringFromSelector(sel_voiceOverEditAppsActionEnabled);
  [v1 setObject:@"VoiceOverEditAppsActionEnabledPreference" forKeyedSubscript:v319];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverRotorUpdatesWithElementPreference"];
  [v2 addObject:@"AXSVoiceOverRotorUpdatesWithElementPreference"];
  v320 = NSStringFromSelector(sel_voiceOverRotorUpdatesWithElement);
  [v1 setObject:@"AXSVoiceOverRotorUpdatesWithElementPreference" forKeyedSubscript:v320];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverSpeakActionConfirmationPreference"];
  [v2 addObject:@"VoiceOverSpeakActionConfirmationPreference"];
  v321 = NSStringFromSelector(sel_voiceOverSpeakActionConfirmation);
  [v1 setObject:@"VoiceOverSpeakActionConfirmationPreference" forKeyedSubscript:v321];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"voiceOverBrailleTableIdentifier"];
  [v2 addObject:@"voiceOverBrailleTableIdentifier"];
  v322 = NSStringFromSelector(sel_voiceOverBrailleTableIdentifier);
  [v1 setObject:@"voiceOverBrailleTableIdentifier" forKeyedSubscript:v322];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"voiceOverAlwaysUseNemethCodeForMathEnabled"];
  [v2 addObject:@"voiceOverAlwaysUseNemethCodeForMathEnabled"];
  v323 = NSStringFromSelector(sel_voiceOverAlwaysUseNemethCodeForMathEnabled);
  [v1 setObject:@"voiceOverAlwaysUseNemethCodeForMathEnabled" forKeyedSubscript:v323];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"com.apple.voiceovertouch.default.dialect"];
  [v2 addObject:@"com.apple.voiceovertouch.default.dialect"];
  v324 = NSStringFromSelector(sel_voiceOverDefaultDialect);
  [v1 setObject:@"com.apple.voiceovertouch.default.dialect" forKeyedSubscript:v324];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverLanguageSpeakingRate"];
  [v2 addObject:@"VoiceOverLanguageSpeakingRate"];
  v325 = NSStringFromSelector(sel_voiceOverSpeakingRateForLanguage);
  [v1 setObject:@"VoiceOverLanguageSpeakingRate" forKeyedSubscript:v325];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VOActivationWorkaround"];
  [v2 addObject:@"VOActivationWorkaround"];
  v326 = NSStringFromSelector(sel_voiceOverActivationWorkaround);
  [v1 setObject:@"VOActivationWorkaround" forKeyedSubscript:v326];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverShowSWKeyboardWithBraille"];
  [v2 addObject:@"VoiceOverShowSWKeyboardWithBraille"];
  v327 = NSStringFromSelector(sel_voiceOverShowSoftwareKeyboardWithBraille);
  [v1 setObject:@"VoiceOverShowSWKeyboardWithBraille" forKeyedSubscript:v327];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverShowGrade2AutoTranslate"];
  [v2 addObject:@"VoiceOverShowGrade2AutoTranslate"];
  v328 = NSStringFromSelector(sel_voiceOverBrailleGradeTwoAutoTranslateEnabled);
  [v1 setObject:@"VoiceOverShowGrade2AutoTranslate" forKeyedSubscript:v328];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverSpeakNonfocusableElementsAfterDelay"];
  [v2 addObject:@"VoiceOverSpeakNonfocusableElementsAfterDelay"];
  v329 = NSStringFromSelector(sel_voiceOverSpeakNonfocusableElementsAfterDelay);
  [v1 setObject:@"VoiceOverSpeakNonfocusableElementsAfterDelay" forKeyedSubscript:v329];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverSilenceAnnouncements"];
  [v2 addObject:@"VoiceOverSilenceAnnouncements"];
  v330 = NSStringFromSelector(sel_voiceOverSilenceAnnouncements);
  [v1 setObject:@"VoiceOverSilenceAnnouncements" forKeyedSubscript:v330];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchTVInteractionMode"];
  [v2 addObject:@"VoiceOverTouchTVInteractionMode"];
  v331 = NSStringFromSelector(sel_voiceOverPreferredTVInteractionMode);
  [v1 setObject:@"VoiceOverTouchTVInteractionMode" forKeyedSubscript:v331];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchTVPrefersFollowFocusNavigationStyle"];
  [v2 addObject:@"VoiceOverTouchTVPrefersFollowFocusNavigationStyle"];
  v332 = NSStringFromSelector(sel_voiceOverPrefersFollowFocusNavigationStyle);
  [v1 setObject:@"VoiceOverTouchTVPrefersFollowFocusNavigationStyle" forKeyedSubscript:v332];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverExploreFocusAffectsNativeFocus"];
  [v2 addObject:@"VoiceOverExploreFocusAffectsNativeFocus"];
  v333 = NSStringFromSelector(sel_voiceOverExploreFocusAffectsNativeFocus);
  [v1 setObject:@"VoiceOverExploreFocusAffectsNativeFocus" forKeyedSubscript:v333];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchDescribedMedia"];
  v334 = NSStringFromSelector(sel_voiceOverDescribedMedia);
  [v1 setObject:@"VoiceOverTouchDescribedMedia" forKeyedSubscript:v334];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"QuickSettings"];
  [v2 addObject:@"QuickSettings"];
  v335 = NSStringFromSelector(sel_voiceOverQuickSettings);
  [v1 setObject:@"QuickSettings" forKeyedSubscript:v335];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverCustomCammndProfile"];
  [v2 addObject:@"VoiceOverCustomCammndProfile"];
  v336 = NSStringFromSelector(sel_voiceOverCustomCommandProfile);
  [v1 setObject:@"VoiceOverCustomCammndProfile" forKeyedSubscript:v336];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverOutputToHearingAid"];
  v337 = NSStringFromSelector(sel_voiceOverShouldOutputToHearingAid);
  [v1 setObject:@"VoiceOverOutputToHearingAid" forKeyedSubscript:v337];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchSingleLetterQuickNavPreference"];
  [v2 addObject:@"AXSVoiceOverTouchSingleLetterQuickNavPreference"];
  v338 = NSStringFromSelector(sel_voiceOverTouchSingleLetterQuickNavEnabled);
  [v1 setObject:@"AXSVoiceOverTouchSingleLetterQuickNavPreference" forKeyedSubscript:v338];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverQuickNavAnnouncementFeedback"];
  [v2 addObject:@"VoiceOverQuickNavAnnouncementFeedback"];
  v339 = NSStringFromSelector(sel_voiceOverQuickNavAnnouncementFeedback);
  [v1 setObject:@"VoiceOverQuickNavAnnouncementFeedback" forKeyedSubscript:v339];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverSpeakTableColumnRowInformationPreference"];
  [v2 addObject:@"AXSVoiceOverSpeakTableColumnRowInformationPreference"];
  v340 = NSStringFromSelector(sel_voiceOverSpeakTableColumnRowInformation);
  [v1 setObject:@"AXSVoiceOverSpeakTableColumnRowInformationPreference" forKeyedSubscript:v340];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverSpeakTableHeadersPreference"];
  [v2 addObject:@"AXSVoiceOverSpeakTableHeadersPreference"];
  v341 = NSStringFromSelector(sel_voiceOverSpeakTableHeaders);
  [v1 setObject:@"AXSVoiceOverSpeakTableHeadersPreference" forKeyedSubscript:v341];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverCapitalLetterFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverCapitalLetterFeedbackPreference"];
  v342 = NSStringFromSelector(sel_voiceOverCapitalLetterFeedback);
  [v1 setObject:@"AXSVoiceOverCapitalLetterFeedbackPreference" forKeyedSubscript:v342];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverRotorSummaryFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverRotorSummaryFeedbackPreference"];
  v343 = NSStringFromSelector(sel_voiceOverRotorSummaryFeedback);
  [v1 setObject:@"AXSVoiceOverRotorSummaryFeedbackPreference" forKeyedSubscript:v343];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverDeletionFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverDeletionFeedbackPreference"];
  v344 = NSStringFromSelector(sel_voiceOverDeletionFeedback);
  [v1 setObject:@"AXSVoiceOverDeletionFeedbackPreference" forKeyedSubscript:v344];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverLinkFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverLinkFeedbackPreference"];
  v345 = NSStringFromSelector(sel_voiceOverLinkFeedback);
  [v1 setObject:@"AXSVoiceOverLinkFeedbackPreference" forKeyedSubscript:v345];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverActionsFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverActionsFeedbackPreference"];
  v346 = NSStringFromSelector(sel_voiceOverActionsFeedback);
  [v1 setObject:@"AXSVoiceOverActionsFeedbackPreference" forKeyedSubscript:v346];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTraitFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverTraitFeedbackPreference"];
  v347 = NSStringFromSelector(sel_voiceOverTraitFeedback);
  [v1 setObject:@"AXSVoiceOverTraitFeedbackPreference" forKeyedSubscript:v347];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverFirstInListOnlyActionsFeedback"];
  [v2 addObject:@"AXSVoiceOverFirstInListOnlyActionsFeedback"];
  v348 = NSStringFromSelector(sel_voiceOverActionFeedbackFirstInListOnly);
  [v1 setObject:@"AXSVoiceOverFirstInListOnlyActionsFeedback" forKeyedSubscript:v348];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverContainerOutputFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverContainerOutputFeedbackPreference"];
  v349 = NSStringFromSelector(sel_voiceOverContainerOutputFeedback);
  [v1 setObject:@"AXSVoiceOverContainerOutputFeedbackPreference" forKeyedSubscript:v349];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverMoreContentOutputFeedbackPreference"];
  [v2 addObject:@"AXSVoiceOverMoreContentOutputFeedbackPreference"];
  v350 = NSStringFromSelector(sel_voiceOverMoreContentOutputFeedback);
  [v1 setObject:@"AXSVoiceOverMoreContentOutputFeedbackPreference" forKeyedSubscript:v350];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverDiscoveredSensitiveContentFeedback"];
  [v2 addObject:@"VoiceOverDiscoveredSensitiveContentFeedback"];
  v351 = NSStringFromSelector(sel_voiceOverDiscoveredSensitiveContentFeedback);
  [v1 setObject:@"VoiceOverDiscoveredSensitiveContentFeedback" forKeyedSubscript:v351];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverPunctuationLevelPreference"];
  [v2 addObject:@"AXSVoiceOverPunctuationLevelPreference"];
  v352 = NSStringFromSelector(sel_voiceOverPunctuationLevel);
  [v1 setObject:@"AXSVoiceOverPunctuationLevelPreference" forKeyedSubscript:v352];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverPunctuationGroupPreference"];
  [v2 addObject:@"AXSVoiceOverPunctuationGroupPreference"];
  v353 = NSStringFromSelector(sel_voiceOverPunctuationGroup);
  [v1 setObject:@"AXSVoiceOverPunctuationGroupPreference" forKeyedSubscript:v353];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchAudioDuckingEnabled"];
  [v2 addObject:@"VoiceOverTouchAudioDuckingEnabled"];
  v354 = NSStringFromSelector(sel_voiceOverAudioDuckingEnabled);
  [v1 setObject:@"VoiceOverTouchAudioDuckingEnabled" forKeyedSubscript:v354];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverAudioFollowsHDMIAudio"];
  [v2 addObject:@"VoiceOverAudioFollowsHDMIAudio"];
  v355 = NSStringFromSelector(sel_voiceOverAudioFollowsHDMIAudio);
  [v1 setObject:@"VoiceOverAudioFollowsHDMIAudio" forKeyedSubscript:v355];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverIgnoreTrackpad"];
  [v2 addObject:@"VoiceOverIgnoreTrackpad"];
  v356 = NSStringFromSelector(sel_voiceOverIgnoreTrackpad);
  [v1 setObject:@"VoiceOverIgnoreTrackpad" forKeyedSubscript:v356];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchBrailleDisplaySyncInputOutputTables"];
  v357 = NSStringFromSelector(sel_voiceOverTouchBrailleDisplaySyncInputOutputTables);
  [v1 setObject:@"AXSVoiceOverTouchBrailleDisplaySyncInputOutputTables" forKeyedSubscript:v357];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverCaptionPanelEnabled"];
  [v2 addObject:@"VoiceOverCaptionPanelEnabled"];
  v358 = NSStringFromSelector(sel_enableVoiceOverCaptions);
  [v1 setObject:@"VoiceOverCaptionPanelEnabled" forKeyedSubscript:v358];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleGesturesShouldUseLockedConfiguration"];
  [v2 addObject:@"VoiceOverBrailleGesturesShouldUseLockedConfiguration"];
  v359 = NSStringFromSelector(sel_voiceOverTouchBrailleGesturesShouldUseLockedConfiguration);
  [v1 setObject:@"VoiceOverBrailleGesturesShouldUseLockedConfiguration" forKeyedSubscript:v359];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleGesturesLockedOrientation"];
  [v2 addObject:@"VoiceOverBrailleGesturesLockedOrientation"];
  v360 = NSStringFromSelector(sel_voiceOverTouchBrailleGesturesLockedOrientation);
  [v1 setObject:@"VoiceOverBrailleGesturesLockedOrientation" forKeyedSubscript:v360];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleGesturesLockedTypingMode"];
  [v2 addObject:@"VoiceOverBrailleGesturesLockedTypingMode"];
  v361 = NSStringFromSelector(sel_voiceOverTouchBrailleGesturesLockedTypingMode);
  [v1 setObject:@"VoiceOverBrailleGesturesLockedTypingMode" forKeyedSubscript:v361];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleGesturesDidPlayCalibrationHint"];
  [v2 addObject:@"VoiceOverBrailleGesturesDidPlayCalibrationHint"];
  v362 = NSStringFromSelector(sel_voiceOverTouchBrailleGesturesDidPlayCalibrationHint);
  [v1 setObject:@"VoiceOverBrailleGesturesDidPlayCalibrationHint" forKeyedSubscript:v362];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleWordWrapEnabled"];
  [v2 addObject:@"VoiceOverBrailleWordWrapEnabled"];
  v363 = NSStringFromSelector(sel_voiceOverBrailleWordWrapEnabled);
  [v1 setObject:@"VoiceOverBrailleWordWrapEnabled" forKeyedSubscript:v363];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleDisplayDisconnectOnSleepPreference"];
  v364 = NSStringFromSelector(sel_voiceOverBrailleDisconnectOnSleep);
  [v1 setObject:@"VoiceOverBrailleDisplayDisconnectOnSleepPreference" forKeyedSubscript:v364];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleAutoAdvanceDuration"];
  [v2 addObject:@"VoiceOverBrailleAutoAdvanceDuration"];
  v365 = NSStringFromSelector(sel_voiceOverBrailleAutoAdvanceDuration);
  [v1 setObject:@"VoiceOverBrailleAutoAdvanceDuration" forKeyedSubscript:v365];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"kAXSVoiceOverBrailleFormatting"];
  [v2 addObject:@"kAXSVoiceOverBrailleFormatting"];
  v366 = NSStringFromSelector(sel_voiceOverBrailleFormattingEnabled);
  [v1 setObject:@"kAXSVoiceOverBrailleFormatting" forKeyedSubscript:v366];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverRingerSwitchForNotificationsEnabled"];
  [v2 addObject:@"AXSVoiceOverRingerSwitchForNotificationsEnabled"];
  v367 = NSStringFromSelector(sel_voiceOverUseRingerSwitchToControlNotificationOutput);
  [v1 setObject:@"AXSVoiceOverRingerSwitchForNotificationsEnabled" forKeyedSubscript:v367];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverBannerNotificationOutput"];
  [v2 addObject:@"AXSVoiceOverBannerNotificationOutput"];
  v368 = NSStringFromSelector(sel_voiceOverBannerNotificationOutput);
  [v1 setObject:@"AXSVoiceOverBannerNotificationOutput" forKeyedSubscript:v368];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverLockScreenNotificationOutput"];
  [v2 addObject:@"AXSVoiceOverLockScreenNotificationOutput"];
  v369 = NSStringFromSelector(sel_voiceOverLockedScreenNotificationOutput);
  [v1 setObject:@"AXSVoiceOverLockScreenNotificationOutput" forKeyedSubscript:v369];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleDisplays"];
  v370 = NSStringFromSelector(sel_voiceOverBrailleDisplays);
  [v1 setObject:@"VoiceOverBrailleDisplays" forKeyedSubscript:v370];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:kAXSVoiceOverDoubleTapInterval];
  [v2 addObject:kAXSVoiceOverDoubleTapInterval];
  v371 = kAXSVoiceOverDoubleTapInterval;
  v372 = NSStringFromSelector(sel_voiceOverDoubleTapInterval);
  [v1 setObject:v371 forKeyedSubscript:v372];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleDisplayAlertDuration"];
  [v2 addObject:@"VoiceOverBrailleDisplayAlertDuration"];
  v373 = NSStringFromSelector(sel_voiceOverBrailleAlertDisplayDuration);
  [v1 setObject:@"VoiceOverBrailleDisplayAlertDuration" forKeyedSubscript:v373];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverBrailleAlertsEnabled"];
  [v2 addObject:@"AXSVoiceOverBrailleAlertsEnabled"];
  v374 = NSStringFromSelector(sel_voiceOverBrailleAlertsEnabled);
  [v1 setObject:@"AXSVoiceOverBrailleAlertsEnabled" forKeyedSubscript:v374];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverBrailleAlertShowUntilDismissed"];
  [v2 addObject:@"AXSVoiceOverBrailleAlertShowUntilDismissed"];
  v375 = NSStringFromSelector(sel_voiceOverBrailleAlertShowUntilDismissed);
  [v1 setObject:@"AXSVoiceOverBrailleAlertShowUntilDismissed" forKeyedSubscript:v375];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverBrailleKeyDebounceTimeout"];
  [v2 addObject:@"VoiceOverBrailleKeyDebounceTimeout"];
  v376 = NSStringFromSelector(sel_voiceOverBrailleKeyDebounceTimeout);
  [v1 setObject:@"VoiceOverBrailleKeyDebounceTimeout" forKeyedSubscript:v376];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverKeyboardModifierChoicePreference"];
  [v2 addObject:@"AXSVoiceOverKeyboardModifierChoicePreference"];
  v377 = NSStringFromSelector(sel_voiceOverKeyboardModifierChoice);
  [v1 setObject:@"AXSVoiceOverKeyboardModifierChoicePreference" forKeyedSubscript:v377];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchShouldReverseDots"];
  [v2 addObject:@"AXSVoiceOverTouchShouldReverseDots"];
  v378 = NSStringFromSelector(sel_voiceOverTouchBrailleShouldReverseDots);
  [v1 setObject:@"AXSVoiceOverTouchShouldReverseDots" forKeyedSubscript:v378];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchBrailleGestureControl"];
  [v2 addObject:@"AXSVoiceOverTouchBrailleGestureControl"];
  v379 = NSStringFromSelector(sel_voiceOverTouchBrailleGestureControl);
  [v1 setObject:@"AXSVoiceOverTouchBrailleGestureControl" forKeyedSubscript:v379];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchBrailleShowTextStyleStatus"];
  [v2 addObject:@"AXSVoiceOverTouchBrailleShowTextStyleStatus"];
  v380 = NSStringFromSelector(sel_voiceOverTouchBrailleShowTextStyleStatus);
  [v1 setObject:@"AXSVoiceOverTouchBrailleShowTextStyleStatus" forKeyedSubscript:v380];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchBrailleShowGeneralStatus"];
  [v2 addObject:@"AXSVoiceOverTouchBrailleShowGeneralStatus"];
  v381 = NSStringFromSelector(sel_voiceOverTouchBrailleShowGeneralStatus);
  [v1 setObject:@"AXSVoiceOverTouchBrailleShowGeneralStatus" forKeyedSubscript:v381];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverShouldSpeakDiscoveredTextPreference"];
  v382 = NSStringFromSelector(sel_voiceOverShouldSpeakDiscoveredText);
  [v1 setObject:@"AXSVoiceOverShouldSpeakDiscoveredTextPreference" forKeyedSubscript:v382];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverSpeakDiscoveredTextFeedbackPreference"];
  v383 = NSStringFromSelector(sel_voiceOverNeuralElementFeedback);
  [v1 setObject:@"AXSVoiceOverSpeakDiscoveredTextFeedbackPreference" forKeyedSubscript:v383];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverNumberFeedback"];
  [v2 addObject:@"AXSVoiceOverNumberFeedback"];
  v384 = NSStringFromSelector(sel_voiceOverNumberFeedback);
  [v1 setObject:@"AXSVoiceOverNumberFeedback" forKeyedSubscript:v384];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverAutomaticButtonLabelsPreference"];
  v385 = NSStringFromSelector(sel_voiceOverAutomaticButtonLabels);
  [v1 setObject:@"AXSVoiceOverAutomaticButtonLabelsPreference" forKeyedSubscript:v385];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverSoundsAndHaptics"];
  [v2 addObject:@"VoiceOverSoundsAndHaptics"];
  v386 = NSStringFromSelector(sel_voiceOverSoundAndHapticPreferences);
  [v1 setObject:@"VoiceOverSoundsAndHaptics" forKeyedSubscript:v386];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchUpdateBrailleWithoutConnectedDisplay"];
  v387 = NSStringFromSelector(sel_voiceOverTouchUpdateBrailleWithoutConnectedDisplay);
  [v1 setObject:@"AXSVoiceOverTouchUpdateBrailleWithoutConnectedDisplay" forKeyedSubscript:v387];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSSVoiceOverShouldFocusEverywhere"];
  [v2 addObject:@"AXSSVoiceOverShouldFocusEverywhere"];
  v388 = NSStringFromSelector(sel_voiceOverShouldFocusEverywhere);
  [v1 setObject:@"AXSSVoiceOverShouldFocusEverywhere" forKeyedSubscript:v388];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverTouchBraillePreferredTableIdentifiers"];
  [v2 addObject:@"AXSVoiceOverTouchBraillePreferredTableIdentifiers"];
  v389 = NSStringFromSelector(sel_voiceOverTouchPreferredBrailleTableIdentifiers);
  [v1 setObject:@"AXSVoiceOverTouchBraillePreferredTableIdentifiers" forKeyedSubscript:v389];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverShouldDisallowUSBRestrictedMode"];
  v390 = NSStringFromSelector(sel_voiceOverShouldDisallowUSBRestrictedMode);
  [v1 setObject:@"VoiceOverShouldDisallowUSBRestrictedMode" forKeyedSubscript:v390];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverUserDidReadUSBRestrictedModeAlert"];
  v391 = NSStringFromSelector(sel_voiceOverUserDidReadUSBRestrictedModeAlert);
  [v1 setObject:@"VoiceOverUserDidReadUSBRestrictedModeAlert" forKeyedSubscript:v391];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverDetectionModeItems"];
  v392 = NSStringFromSelector(sel_voiceOverDetectionModeItems);
  [v1 setObject:@"VoiceOverDetectionModeItems" forKeyedSubscript:v392];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSVoiceOverSmartScreenCurtainPreference"];
  [v2 addObject:@"kAXSVoiceOverSmartScreenCurtainPreference"];
  v393 = NSStringFromSelector(sel_voiceOverSmartScreenCurtainEnabled);
  [v1 setObject:@"kAXSVoiceOverSmartScreenCurtainPreference" forKeyedSubscript:v393];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSLiveRecognitionActive"];
  v394 = NSStringFromSelector(sel_liveRecognitionActive);
  [v1 setObject:@"AXSLiveRecognitionActive" forKeyedSubscript:v394];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionOverlayOpen"];
  v395 = NSStringFromSelector(sel_liveRecognitionOverlayOpen);
  [v1 setObject:@"AXSLiveRecognitionOverlayOpen" forKeyedSubscript:v395];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSEnabledLiveRecognitionModes"];
  v396 = NSStringFromSelector(sel_enabledLiveRecognitionModes);
  [v1 setObject:@"AXSEnabledLiveRecognitionModes" forKeyedSubscript:v396];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionChatGPTEnabled"];
  v397 = NSStringFromSelector(sel_liveRecognitionChatGPTEnabled);
  [v1 setObject:@"AXSLiveRecognitionChatGPTEnabled" forKeyedSubscript:v397];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionAutomaticFlashlightEnabled"];
  v398 = NSStringFromSelector(sel_liveRecognitionAutomaticFlashlightEnabled);
  [v1 setObject:@"AXSLiveRecognitionAutomaticFlashlightEnabled" forKeyedSubscript:v398];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionSceneFeedbacks"];
  v399 = NSStringFromSelector(sel_liveRecognitionSceneFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionSceneFeedbacks" forKeyedSubscript:v399];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionPeopleFeedbacks"];
  v400 = NSStringFromSelector(sel_liveRecognitionPeopleFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionPeopleFeedbacks" forKeyedSubscript:v400];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionDoorsFeedbacks"];
  v401 = NSStringFromSelector(sel_liveRecognitionDoorsFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionDoorsFeedbacks" forKeyedSubscript:v401];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionFurnitureFeedbacks"];
  v402 = NSStringFromSelector(sel_liveRecognitionFurnitureFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionFurnitureFeedbacks" forKeyedSubscript:v402];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionTextFeedbacks"];
  v403 = NSStringFromSelector(sel_liveRecognitionTextFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionTextFeedbacks" forKeyedSubscript:v403];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionPointAndSpeakFeedbacks"];
  v404 = NSStringFromSelector(sel_liveRecognitionPointAndSpeakFeedbacks);
  [v1 setObject:@"AXSLiveRecognitionPointAndSpeakFeedbacks" forKeyedSubscript:v404];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionActivities"];
  v405 = NSStringFromSelector(sel_liveRecognitionActivities);
  [v1 setObject:@"AXSLiveRecognitionActivities" forKeyedSubscript:v405];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSLiveRecognitionActivity"];
  v406 = NSStringFromSelector(sel_liveRecognitionActivity);
  [v1 setObject:@"AXSLiveRecognitionActivity" forKeyedSubscript:v406];

  [v0 setObject:&unk_1EFE96B08 forKeyedSubscript:@"AXSVoiceOverSelectedActivityPreference"];
  v407 = NSStringFromSelector(sel_voiceOverSelectedActivity);
  [v1 setObject:@"AXSVoiceOverSelectedActivityPreference" forKeyedSubscript:v407];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverNavigationDirectionMode"];
  [v2 addObject:@"VoiceOverNavigationDirectionMode"];
  v408 = NSStringFromSelector(sel_voiceOverNavigationDirectionMode);
  [v1 setObject:@"VoiceOverNavigationDirectionMode" forKeyedSubscript:v408];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"TapToSpeakTimeEnabled"];
  [v2 addObject:@"TapToSpeakTimeEnabled"];
  v409 = NSStringFromSelector(sel_tapToSpeakTimeEnabled);
  [v1 setObject:@"TapToSpeakTimeEnabled" forKeyedSubscript:v409];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"TapToSpeakTimeAvailability"];
  [v2 addObject:@"TapToSpeakTimeAvailability"];
  v410 = NSStringFromSelector(sel_tapToSpeakTimeAvailability);
  [v1 setObject:@"TapToSpeakTimeAvailability" forKeyedSubscript:v410];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticTimeMode"];
  [v2 addObject:@"VoiceOverTapticTimeMode"];
  v411 = NSStringFromSelector(sel_voiceOverTapticTimeMode);
  [v1 setObject:@"VoiceOverTapticTimeMode" forKeyedSubscript:v411];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesUnity25Active"];
  [v2 addObject:@"VoiceOverTapticChimesUnity25Active"];
  v412 = NSStringFromSelector(sel_voiceOverTapticChimesUnity25Active);
  [v1 setObject:@"VoiceOverTapticChimesUnity25Active" forKeyedSubscript:v412];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesUnity25SoundType"];
  [v2 addObject:@"VoiceOverTapticChimesUnity25SoundType"];
  v413 = NSStringFromSelector(sel_voiceOverTapticChimesUnity25SoundType);
  [v1 setObject:@"VoiceOverTapticChimesUnity25SoundType" forKeyedSubscript:v413];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticTimeEncoding"];
  [v2 addObject:@"VoiceOverTapticTimeEncoding"];
  v414 = NSStringFromSelector(sel_voiceOverTapticTimeEncoding);
  [v1 setObject:@"VoiceOverTapticTimeEncoding" forKeyedSubscript:v414];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticTimeSpeed"];
  [v2 addObject:@"VoiceOverTapticTimeSpeed"];
  v415 = NSStringFromSelector(sel_voiceOverTapticTimeSpeed);
  [v1 setObject:@"VoiceOverTapticTimeSpeed" forKeyedSubscript:v415];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesEnabled"];
  [v2 addObject:@"VoiceOverTapticChimesEnabled"];
  v416 = NSStringFromSelector(sel_voiceOverTapticChimesEnabled);
  [v1 setObject:@"VoiceOverTapticChimesEnabled" forKeyedSubscript:v416];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesScheduleEnabled"];
  [v2 addObject:@"VoiceOverTapticChimesScheduleEnabled"];
  v417 = NSStringFromSelector(sel_voiceOverTapticChimesScheduleEnabled);
  [v1 setObject:@"VoiceOverTapticChimesScheduleEnabled" forKeyedSubscript:v417];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesScheduleDateStart"];
  [v2 addObject:@"VoiceOverTapticChimesScheduleDateStart"];
  v418 = NSStringFromSelector(sel_voiceOverTapticChimesScheduleDateStart);
  [v1 setObject:@"VoiceOverTapticChimesScheduleDateStart" forKeyedSubscript:v418];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesScheduleDateEnd"];
  [v2 addObject:@"VoiceOverTapticChimesScheduleDateEnd"];
  v419 = NSStringFromSelector(sel_voiceOverTapticChimesScheduleDateEnd);
  [v1 setObject:@"VoiceOverTapticChimesScheduleDateEnd" forKeyedSubscript:v419];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesAvailability"];
  [v2 addObject:@"VoiceOverTapticChimesAvailability"];
  v420 = NSStringFromSelector(sel_voiceOverTapticChimesAvailability);
  [v1 setObject:@"VoiceOverTapticChimesAvailability" forKeyedSubscript:v420];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesFrequencyEncoding"];
  [v2 addObject:@"VoiceOverTapticChimesFrequencyEncoding"];
  v421 = NSStringFromSelector(sel_voiceOverTapticChimesFrequencyEncoding);
  [v1 setObject:@"VoiceOverTapticChimesFrequencyEncoding" forKeyedSubscript:v421];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverTapticChimesSoundType"];
  [v2 addObject:@"VoiceOverTapticChimesSoundType"];
  v422 = NSStringFromSelector(sel_voiceOverTapticChimesSoundType);
  [v1 setObject:@"VoiceOverTapticChimesSoundType" forKeyedSubscript:v422];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference"];
  [v2 addObject:@"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference"];
  v423 = NSStringFromSelector(sel_voiceOverInlineTextCompletionAppearanceFeedback);
  [v1 setObject:@"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference" forKeyedSubscript:v423];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference"];
  [v2 addObject:@"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference"];
  v424 = NSStringFromSelector(sel_voiceOverInlineTextCompletionInsertionFeedback);
  [v1 setObject:@"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference" forKeyedSubscript:v424];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSImageCaptionGenderStrategy"];
  v425 = NSStringFromSelector(sel_imageCaptionGenderStrategy);
  [v1 setObject:@"AXSImageCaptionGenderStrategy" forKeyedSubscript:v425];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverNavigationStyle"];
  [v2 addObject:@"AXSVoiceOverNavigationStyle"];
  v426 = NSStringFromSelector(sel_voiceOverNavigationStyle);
  [v1 setObject:@"AXSVoiceOverNavigationStyle" forKeyedSubscript:v426];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSImageCaptioningDisabledApps"];
  v427 = NSStringFromSelector(sel_imageCaptioningDisabledApps);
  [v1 setObject:@"AXSImageCaptioningDisabledApps" forKeyedSubscript:v427];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverLiveRegionAppStatus"];
  [v2 addObject:@"AXSVoiceOverLiveRegionAppStatus"];
  v428 = NSStringFromSelector(sel_liveRegionStatusForWebOrApp);
  [v1 setObject:@"AXSVoiceOverLiveRegionAppStatus" forKeyedSubscript:v428];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverDirectTouchEnabledApps"];
  v429 = NSStringFromSelector(sel_voiceOverDirectTouchEnabledApps);
  [v1 setObject:@"AXSVoiceOverDirectTouchEnabledApps" forKeyedSubscript:v429];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSSceneDescriptions"];
  v430 = NSStringFromSelector(sel_voiceOverSceneDescriptionsEnabled);
  [v1 setObject:@"AXSSceneDescriptions" forKeyedSubscript:v430];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverSoundCurtain"];
  [v2 addObject:@"AXSVoiceOverSoundCurtain"];
  v431 = NSStringFromSelector(sel_voiceOverSoundCurtain);
  [v1 setObject:@"AXSVoiceOverSoundCurtain" forKeyedSubscript:v431];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverFlashlightNotificationsEnabled"];
  [v2 addObject:@"AXSVoiceOverFlashlightNotificationsEnabled"];
  v432 = NSStringFromSelector(sel_voiceOverFlashlightNotificationsEnabled);
  [v1 setObject:@"AXSVoiceOverFlashlightNotificationsEnabled" forKeyedSubscript:v432];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverWatchHandGestures"];
  v433 = NSStringFromSelector(sel_voiceOverHandGesturesEnabled);
  [v1 setObject:@"VoiceOverWatchHandGestures" forKeyedSubscript:v433];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverWatchHandGesturesActionCustomizations"];
  v434 = NSStringFromSelector(sel_voiceOverHandGesturesActionCustomizations);
  [v1 setObject:@"VoiceOverWatchHandGesturesActionCustomizations" forKeyedSubscript:v434];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchMediaDuckingAmount"];
  [v2 addObject:@"VoiceOverTouchMediaDuckingAmount"];
  v435 = NSStringFromSelector(sel_voiceOverMediaDuckingAmount);
  [v1 setObject:@"VoiceOverTouchMediaDuckingAmount" forKeyedSubscript:v435];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchMediaDuckingMode"];
  [v2 addObject:@"VoiceOverTouchMediaDuckingMode"];
  v436 = NSStringFromSelector(sel_voiceOverMediaDuckingMode);
  [v1 setObject:@"VoiceOverTouchMediaDuckingMode" forKeyedSubscript:v436];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomWatchHandGestures"];
  v437 = NSStringFromSelector(sel_zoomHandGesturesEnabled);
  [v1 setObject:@"ZoomWatchHandGestures" forKeyedSubscript:v437];

  [v0 setObject:&unk_1EFE96AA8 forKeyedSubscript:@"ZoomWatchHandGesturesActionCustomizations"];
  v438 = NSStringFromSelector(sel_zoomHandGesturesActionCustomizations);
  [v1 setObject:@"ZoomWatchHandGesturesActionCustomizations" forKeyedSubscript:v438];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"TapticTimeInternalFlashScreenEnabled"];
  [v2 addObject:@"TapticTimeInternalFlashScreenEnabled"];
  v439 = NSStringFromSelector(sel_tapticTimeInternalFlashScreenEnabled);
  [v1 setObject:@"TapticTimeInternalFlashScreenEnabled" forKeyedSubscript:v439];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSIgnoreTrackpad"];
  [v2 addObject:@"AXSIgnoreTrackpad"];
  v440 = NSStringFromSelector(sel_ignoreTrackpad);
  [v1 setObject:@"AXSIgnoreTrackpad" forKeyedSubscript:v440];

  [v0 setObject:&unk_1EFE96B20 forKeyedSubscript:@"HearingAidControlAvailableOnLockScreen"];
  v441 = NSStringFromSelector(sel_allowHearingAidControlOnLockScreen);
  [v1 setObject:@"HearingAidControlAvailableOnLockScreen" forKeyedSubscript:v441];

  [v0 setObject:&unk_1EFE96B20 forKeyedSubscript:@"HearingAidStreamToLeft"];
  v442 = NSStringFromSelector(sel_shouldStreamToLeftAid);
  [v1 setObject:@"HearingAidStreamToLeft" forKeyedSubscript:v442];

  [v0 setObject:&unk_1EFE96B20 forKeyedSubscript:@"HearingAidStreamToRight"];
  v443 = NSStringFromSelector(sel_shouldStreamToRightAid);
  [v1 setObject:@"HearingAidStreamToRight" forKeyedSubscript:v443];

  [v0 setObject:&unk_1EFE96B20 forKeyedSubscript:@"HearingAidEarIndependencePreference"];
  v444 = NSStringFromSelector(sel_independentHearingAidSettings);
  [v1 setObject:@"HearingAidEarIndependencePreference" forKeyedSubscript:v444];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"GizmoApplicationAccessibilityEnabled"];
  v445 = NSStringFromSelector(sel_gizmoApplicationAccessibilityEnabled);
  [v1 setObject:@"GizmoApplicationAccessibilityEnabled" forKeyedSubscript:v445];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"GizmoAutoSpeakComplicationsPreference"];
  v446 = NSStringFromSelector(sel_gizmoGetWatchFaceAutoSpeakPreferences);
  [v1 setObject:@"GizmoAutoSpeakComplicationsPreference" forKeyedSubscript:v446];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverSpeakSecondsEncoding"];
  [v2 addObject:@"VoiceOverSpeakSecondsEncoding"];
  v447 = NSStringFromSelector(sel_voiceOverSpeakSecondsEncoding);
  [v1 setObject:@"VoiceOverSpeakSecondsEncoding" forKeyedSubscript:v447];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LeftRightBalanceEnabled"];
  [v2 addObject:@"LeftRightBalanceEnabled"];
  v448 = NSStringFromSelector(sel_leftRightBalanceEnabled);
  [v1 setObject:@"LeftRightBalanceEnabled" forKeyedSubscript:v448];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LeftRightBalanceValue"];
  [v2 addObject:@"LeftRightBalanceValue"];
  v449 = NSStringFromSelector(sel_leftRightBalanceValue);
  [v1 setObject:@"LeftRightBalanceValue" forKeyedSubscript:v449];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"RemoteHandGestureCustomizedActions"];
  v450 = NSStringFromSelector(sel_remoteHandGestureCustomizedActions);
  [v1 setObject:@"RemoteHandGestureCustomizedActions" forKeyedSubscript:v450];

  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSUltronRunningStatus"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSUltronEnabled"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSEnabledSoundDetectionState"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSEnabledSoundDetectionTypes"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSSoundDetectionSnoozeDictionary"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSSoundDetectionSupportedTypes"];
  [v0 setObject:&unk_1EFE96B38 forKeyedSubscript:@"AXSSoundDetectionMedinaSupportForced"];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSCameraSceneDescriberImageURL"];
  v451 = NSStringFromSelector(sel_cameraSceneDescriberImageURL);
  [v1 setObject:@"kAXSCameraSceneDescriberImageURL" forKeyedSubscript:v451];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSAlexLocalAssetURL"];
  v452 = NSStringFromSelector(sel_alexLocalAssetURL);
  [v1 setObject:@"AXSAlexLocalAssetURL" forKeyedSubscript:v452];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LEDFlashOnRingerSwitchSilent"];
  [v2 addObject:@"LEDFlashOnRingerSwitchSilent"];
  v453 = NSStringFromSelector(sel_shouldFlashForAlertInSilentMode);
  [v1 setObject:@"LEDFlashOnRingerSwitchSilent" forKeyedSubscript:v453];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LEDFlashWhileUnlocked"];
  [v2 addObject:@"LEDFlashWhileUnlocked"];
  v454 = NSStringFromSelector(sel_shouldFlashWhileUnlocked);
  [v1 setObject:@"LEDFlashWhileUnlocked" forKeyedSubscript:v454];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LimitDisplayRefreshRate"];
  [v2 addObject:@"LimitDisplayRefreshRate"];
  v455 = NSStringFromSelector(sel_shouldLimitDisplayRefreshRate);
  [v1 setObject:@"LimitDisplayRefreshRate" forKeyedSubscript:v455];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LocCaptionShowFilePath"];
  v456 = NSStringFromSelector(sel_localizationQACaptionShowFilePath);
  [v1 setObject:@"LocCaptionShowFilePath" forKeyedSubscript:v456];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LocCaptionShowUSString"];
  v457 = NSStringFromSelector(sel_localizationQACaptionShowUSString);
  [v1 setObject:@"LocCaptionShowUSString" forKeyedSubscript:v457];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"LocCaptionShowLocalizedString"];
  v458 = NSStringFromSelector(sel_localizationQACaptionShowLocalizedString);
  [v1 setObject:@"LocCaptionShowLocalizedString" forKeyedSubscript:v458];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSSecurePayAssertionActive"];
  v459 = NSStringFromSelector(sel_securePayAssertionActive);
  [v1 setObject:@"AXSSecurePayAssertionActive" forKeyedSubscript:v459];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:kAXSCustomPronunciationSubstitutionsPreference];
  v460 = kAXSCustomPronunciationSubstitutionsPreference;
  v461 = NSStringFromSelector(sel_customPronunciationSubstitutions);
  [v1 setObject:v460 forKeyedSubscript:v461];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"TTYMedicalPreamble"];
  v462 = NSStringFromSelector(sel_shouldTTYMedicalPreamble);
  [v1 setObject:@"TTYMedicalPreamble" forKeyedSubscript:v462];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SpeakMedicalPreamble"];
  v463 = NSStringFromSelector(sel_shouldSpeakMedicalPreamble);
  [v1 setObject:@"SpeakMedicalPreamble" forKeyedSubscript:v463];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SOSMedicalPreamble"];
  v464 = NSStringFromSelector(sel_medicalPreamble);
  [v1 setObject:@"SOSMedicalPreamble" forKeyedSubscript:v464];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverPronunciationCloudKitSyncingEnabled"];
  v465 = NSStringFromSelector(sel_syncPronunciationsWithCloudKit);
  [v1 setObject:@"VoiceOverPronunciationCloudKitSyncingEnabled" forKeyedSubscript:v465];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AutomaticAccessibilityEnabled"];
  v466 = NSStringFromSelector(sel_automaticAccessibilityEnabled);
  [v1 setObject:@"AutomaticAccessibilityEnabled" forKeyedSubscript:v466];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AutomaticAccessibilityIgnoreAppAccessibilityPreferred"];
  v467 = NSStringFromSelector(sel_automaticAccessibilityIgnoreAppAccessibilityPreferred);
  [v1 setObject:@"AutomaticAccessibilityIgnoreAppAccessibilityPreferred" forKeyedSubscript:v467];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AutomaticAccessibilityVisualizationsEnabled"];
  v468 = NSStringFromSelector(sel_automaticAccessibilityVisualizationsEnabled);
  [v1 setObject:@"AutomaticAccessibilityVisualizationsEnabled" forKeyedSubscript:v468];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AutomaticAccessibilityModes"];
  v469 = NSStringFromSelector(sel_automaticAccessibilityModes);
  [v1 setObject:@"AutomaticAccessibilityModes" forKeyedSubscript:v469];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSDidResetD22Preferences"];
  v470 = NSStringFromSelector(sel_didResetD22Preferences);
  [v1 setObject:@"AXSDidResetD22Preferences" forKeyedSubscript:v470];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsEnabledPreference"];
  [v2 addObject:@"TouchAccommodationsEnabledPreference"];
  v471 = NSStringFromSelector(sel_touchAccommodationsEnabled);
  [v1 setObject:@"TouchAccommodationsEnabledPreference" forKeyedSubscript:v471];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsUsageConfirmedPreference"];
  [v2 addObject:@"TouchAccommodationsUsageConfirmedPreference"];
  v472 = NSStringFromSelector(sel_touchAccommodationsUsageConfirmed);
  [v1 setObject:@"TouchAccommodationsUsageConfirmedPreference" forKeyedSubscript:v472];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"AXSTouchAccommodationsTripleClickConfirmedPreference"];
  [v2 addObject:@"AXSTouchAccommodationsTripleClickConfirmedPreference"];
  v473 = NSStringFromSelector(sel_touchAccommodationsTripleClickConfirmed);
  [v1 setObject:@"AXSTouchAccommodationsTripleClickConfirmedPreference" forKeyedSubscript:v473];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsHoldDurationEnabledPreference"];
  [v2 addObject:@"TouchAccommodationsHoldDurationEnabledPreference"];
  v474 = NSStringFromSelector(sel_touchAccommodationsHoldDurationEnabled);
  [v1 setObject:@"TouchAccommodationsHoldDurationEnabledPreference" forKeyedSubscript:v474];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsHoldDurationPreference"];
  [v2 addObject:@"TouchAccommodationsHoldDurationPreference"];
  v475 = NSStringFromSelector(sel_touchAccommodationsHoldDuration);
  [v1 setObject:@"TouchAccommodationsHoldDurationPreference" forKeyedSubscript:v475];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsAllowsSwipeGesturesToBypassPreference"];
  [v2 addObject:@"TouchAccommodationsAllowsSwipeGesturesToBypassPreference"];
  v476 = NSStringFromSelector(sel_touchAccommodationsAllowsSwipeGesturesToBypass);
  [v1 setObject:@"TouchAccommodationsAllowsSwipeGesturesToBypassPreference" forKeyedSubscript:v476];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsHoldDurationAllowsSwipeGesturesToBypassPreference"];
  [v2 addObject:@"TouchAccommodationsHoldDurationAllowsSwipeGesturesToBypassPreference"];
  v477 = NSStringFromSelector(sel_touchAccommodationsHoldDurationAllowsSwipeGesturesToBypass);
  [v1 setObject:@"TouchAccommodationsHoldDurationAllowsSwipeGesturesToBypassPreference" forKeyedSubscript:v477];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsHoldDurationSwipeGestureSensitivityPreference"];
  [v2 addObject:@"TouchAccommodationsHoldDurationSwipeGestureSensitivityPreference"];
  v478 = NSStringFromSelector(sel_touchAccommodationsHoldDurationSwipeGestureSensitivity);
  [v1 setObject:@"TouchAccommodationsHoldDurationSwipeGestureSensitivityPreference" forKeyedSubscript:v478];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsHoldDurationSwipeGestureMinimumDistancePreference"];
  [v2 addObject:@"TouchAccommodationsHoldDurationSwipeGestureMinimumDistancePreference"];
  v479 = NSStringFromSelector(sel_touchAccommodationsSwipeGestureMinimumDistance);
  [v1 setObject:@"TouchAccommodationsHoldDurationSwipeGestureMinimumDistancePreference" forKeyedSubscript:v479];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsIgnoreRepeatEnabledPreference"];
  [v2 addObject:@"TouchAccommodationsIgnoreRepeatEnabledPreference"];
  v480 = NSStringFromSelector(sel_touchAccommodationsIgnoreRepeatEnabled);
  [v1 setObject:@"TouchAccommodationsIgnoreRepeatEnabledPreference" forKeyedSubscript:v480];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsIgnoreRepeatDurationPreference"];
  [v2 addObject:@"TouchAccommodationsIgnoreRepeatDurationPreference"];
  v481 = NSStringFromSelector(sel_touchAccommodationsIgnoreRepeatDuration);
  [v1 setObject:@"TouchAccommodationsIgnoreRepeatDurationPreference" forKeyedSubscript:v481];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsTapActivationMethodPreference"];
  [v2 addObject:@"TouchAccommodationsTapActivationMethodPreference"];
  v482 = NSStringFromSelector(sel_touchAccommodationsTapActivationMethod);
  [v1 setObject:@"TouchAccommodationsTapActivationMethodPreference" forKeyedSubscript:v482];

  [v0 setObject:&unk_1EFE96B50 forKeyedSubscript:@"TouchAccommodationsTapActivationTimeOutPreference"];
  [v2 addObject:@"TouchAccommodationsTapActivationTimeOutPreference"];
  v483 = NSStringFromSelector(sel_touchAccommodationsTapActivationTimeout);
  [v1 setObject:@"TouchAccommodationsTapActivationTimeOutPreference" forKeyedSubscript:v483];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"StickyKeysEnabled"];
  [v2 addObject:@"StickyKeysEnabled"];
  v484 = NSStringFromSelector(sel_stickyKeysEnabled);
  [v1 setObject:@"StickyKeysEnabled" forKeyedSubscript:v484];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"StickyKeysShiftToggleEnabled"];
  [v2 addObject:@"StickyKeysShiftToggleEnabled"];
  v485 = NSStringFromSelector(sel_stickyKeysShiftToggleEnabled);
  [v1 setObject:@"StickyKeysShiftToggleEnabled" forKeyedSubscript:v485];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"StickyKeysBeepEnabled"];
  [v2 addObject:@"StickyKeysBeepEnabled"];
  v486 = NSStringFromSelector(sel_stickyKeysBeepEnabled);
  [v1 setObject:@"StickyKeysBeepEnabled" forKeyedSubscript:v486];

  [v0 setObject:&unk_1EFE96B68 forKeyedSubscript:@"CommandMapData"];
  [v2 addObject:@"CommandMapData"];
  v487 = NSStringFromSelector(sel_fullKeyboardAccessCommandMapData);
  [v1 setObject:@"CommandMapData" forKeyedSubscript:v487];

  [v0 setObject:&unk_1EFE96B68 forKeyedSubscript:@"FocusRingTimeout"];
  [v2 addObject:@"FocusRingTimeout"];
  v488 = NSStringFromSelector(sel_fullKeyboardAccessFocusRingTimeout);
  [v1 setObject:@"FocusRingTimeout" forKeyedSubscript:v488];

  [v0 setObject:&unk_1EFE96B68 forKeyedSubscript:@"FocusRingTimeoutEnabled"];
  [v2 addObject:@"FocusRingTimeoutEnabled"];
  v489 = NSStringFromSelector(sel_fullKeyboardAccessFocusRingTimeoutEnabled);
  [v1 setObject:@"FocusRingTimeoutEnabled" forKeyedSubscript:v489];

  [v0 setObject:&unk_1EFE96B68 forKeyedSubscript:@"ShouldShowTextEditingModeInstructions"];
  [v2 addObject:@"ShouldShowTextEditingModeInstructions"];
  v490 = NSStringFromSelector(sel_fullKeyboardAccessShouldShowTextEditingModeInstructions);
  [v1 setObject:@"ShouldShowTextEditingModeInstructions" forKeyedSubscript:v490];

  [v0 setObject:&unk_1EFE96B68 forKeyedSubscript:@"FullKeyboardAccessShouldShowDebugKeyCommandsViewPreference"];
  v491 = NSStringFromSelector(sel_fullKeyboardAccessShouldShowDebugKeyCommandsView);
  [v1 setObject:@"FullKeyboardAccessShouldShowDebugKeyCommandsViewPreference" forKeyedSubscript:v491];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"FullKeyboardAccessLargeFocusRingEnabled"];
  [v2 addObject:@"FullKeyboardAccessLargeFocusRingEnabled"];
  v492 = NSStringFromSelector(sel_fullKeyboardAccessLargeFocusRingEnabled);
  [v1 setObject:@"FullKeyboardAccessLargeFocusRingEnabled" forKeyedSubscript:v492];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"FullKeyboardAccessFocusRingHighContrastEnabled"];
  [v2 addObject:@"FullKeyboardAccessFocusRingHighContrastEnabled"];
  v493 = NSStringFromSelector(sel_fullKeyboardAccessFocusRingHighContrastEnabled);
  [v1 setObject:@"FullKeyboardAccessFocusRingHighContrastEnabled" forKeyedSubscript:v493];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"FullKeyboardAccessFocusRingColor"];
  [v2 addObject:@"FullKeyboardAccessFocusRingColor"];
  v494 = NSStringFromSelector(sel_fullKeyboardAccessFocusRingColor);
  [v1 setObject:@"FullKeyboardAccessFocusRingColor" forKeyedSubscript:v494];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSAppValidatingTestingPreference"];
  v495 = NSStringFromSelector(sel_appValidationTestingMode);
  [v1 setObject:@"AXSAppValidatingTestingPreference" forKeyedSubscript:v495];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"IsAXValidationRunnerCollectingValidations"];
  v496 = NSStringFromSelector(sel_isAXValidationRunnerCollectingValidations);
  [v1 setObject:@"IsAXValidationRunnerCollectingValidations" forKeyedSubscript:v496];

  v497 = MEMORY[0x1E69E4CC8];
  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:*MEMORY[0x1E69E4CC8]];
  [v2 addObject:*v497];
  v498 = *v497;
  v499 = NSStringFromSelector(sel_classicInvertColors);
  [v1 setObject:v498 forKeyedSubscript:v499];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"VoiceOverSleepOnWristDownPreference"];
  [v2 addObject:@"VoiceOverSleepOnWristDownPreference"];
  v500 = NSStringFromSelector(sel_voiceOverSleepOnWristDownPreference);
  [v1 setObject:@"VoiceOverSleepOnWristDownPreference" forKeyedSubscript:v500];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AssistiveTouchSleepOnWristDownPreference"];
  [v2 addObject:@"AssistiveTouchSleepOnWristDownPreference"];
  v501 = NSStringFromSelector(sel_assistiveTouchSleepOnWristDownPreference);
  [v1 setObject:@"AssistiveTouchSleepOnWristDownPreference" forKeyedSubscript:v501];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapDoubleTapAction"];
  v502 = NSStringFromSelector(sel_backTapDoubleTapAction);
  [v1 setObject:@"AXSBackTapDoubleTapAction" forKeyedSubscript:v502];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapTripleTapAction"];
  v503 = NSStringFromSelector(sel_backTapTripleTapAction);
  [v1 setObject:@"AXSBackTapTripleTapAction" forKeyedSubscript:v503];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapConfirmationBannerEnabled"];
  v504 = NSStringFromSelector(sel_backTapConfirmationBannerEnabled);
  [v1 setObject:@"AXSBackTapConfirmationBannerEnabled" forKeyedSubscript:v504];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapFalsePositiveAlertsEnabled"];
  v505 = NSStringFromSelector(sel_backTapFalsePositiveAlertsEnabled);
  [v1 setObject:@"AXSBackTapFalsePositiveAlertsEnabled" forKeyedSubscript:v505];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapRNNModelEnabled"];
  v506 = NSStringFromSelector(sel_backTapRNNModelEnabled);
  [v1 setObject:@"AXSBackTapRNNModelEnabled" forKeyedSubscript:v506];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSBackTapUsageCount"];
  v507 = NSStringFromSelector(sel_backTapUsageCount);
  [v1 setObject:@"AXSBackTapUsageCount" forKeyedSubscript:v507];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchActionBySoundActionsPreference"];
  v508 = NSStringFromSelector(sel_assistiveTouchActionsBySoundAction);
  [v1 setObject:@"AXSAssistiveTouchActionBySoundActionsPreference" forKeyedSubscript:v508];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextActivationLock"];
  [v2 addObject:@"HoverTextActivationLock"];
  v509 = NSStringFromSelector(sel_hoverTextActivationLockEnabled);
  [v1 setObject:@"HoverTextActivationLock" forKeyedSubscript:v509];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"HoverTextActivatorKey"];
  [v2 addObject:@"HoverTextActivatorKey"];
  v510 = NSStringFromSelector(sel_hoverTextPreferredActivatorKey);
  [v1 setObject:@"HoverTextActivatorKey" forKeyedSubscript:v510];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSliveSpeechMaxRecentsCountPreference"];
  [v2 addObject:@"AXSliveSpeechMaxRecentsCountPreference"];
  v511 = NSStringFromSelector(sel_liveSpeechMaxRecentsCount);
  [v1 setObject:@"AXSliveSpeechMaxRecentsCountPreference" forKeyedSubscript:v511];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AutomationTrueTouch"];
  v512 = NSStringFromSelector(sel_automationTrueTouch);
  [v1 setObject:@"AutomationTrueTouch" forKeyedSubscript:v512];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"ShowMotionCuesInScreenshots"];
  v513 = NSStringFromSelector(sel_showMotionCuesInScreenshots);
  [v1 setObject:@"ShowMotionCuesInScreenshots" forKeyedSubscript:v513];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"voiceOverBSIUsageCount"];
  v514 = NSStringFromSelector(sel_voiceOverBSIUsageCount);
  [v1 setObject:@"voiceOverBSIUsageCount" forKeyedSubscript:v514];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"brokenHomeButtonCount"];
  v515 = NSStringFromSelector(sel_brokenHomeButtonCount);
  [v1 setObject:@"brokenHomeButtonCount" forKeyedSubscript:v515];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"guidedAccessUsageCount"];
  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"magnifierUsageCount"];
  v516 = NSStringFromSelector(sel_magnifierUsageCount);
  [v1 setObject:@"magnifierUsageCount" forKeyedSubscript:v516];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"guidedAccessTimeLimitsUsageCount"];
  v517 = NSStringFromSelector(sel_guidedAccessTimeLimitsUsageCount);
  [v1 setObject:@"guidedAccessTimeLimitsUsageCount" forKeyedSubscript:v517];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"assistiveTouchUsageCount"];
  v518 = NSStringFromSelector(sel_assistiveTouchUsageCount);
  [v1 setObject:@"assistiveTouchUsageCount" forKeyedSubscript:v518];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"tapticTimeUsageCount"];
  v519 = NSStringFromSelector(sel_tapticTimeUsageCount);
  [v1 setObject:@"tapticTimeUsageCount" forKeyedSubscript:v519];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"characterVoicesUsageCount"];
  v520 = NSStringFromSelector(sel_characterVoicesUsageCount);
  [v1 setObject:@"characterVoicesUsageCount" forKeyedSubscript:v520];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"hearingAidControlPanelCount"];
  v521 = NSStringFromSelector(sel_hearingAidControlPanelCount);
  [v1 setObject:@"hearingAidControlPanelCount" forKeyedSubscript:v521];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"hearingAidHandOffCount"];
  v522 = NSStringFromSelector(sel_hearingAidHandOffCount);
  [v1 setObject:@"hearingAidHandOffCount" forKeyedSubscript:v522];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"switchControlPlatformSwitchedCount"];
  v523 = NSStringFromSelector(sel_switchControlPlatformSwitchedCount);
  [v1 setObject:@"switchControlPlatformSwitchedCount" forKeyedSubscript:v523];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastAssistiveTouchTimeResetCount"];
  v524 = NSStringFromSelector(sel_lastAssistiveTouchTimeResetCount);
  [v1 setObject:@"lastAssistiveTouchTimeResetCount" forKeyedSubscript:v524];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastPlatformSwitchTimeResetCount"];
  v525 = NSStringFromSelector(sel_lastPlatformSwitchTimeResetCount);
  [v1 setObject:@"lastPlatformSwitchTimeResetCount" forKeyedSubscript:v525];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastMagnifierResetCount"];
  v526 = NSStringFromSelector(sel_lastMagnifierResetCount);
  [v1 setObject:@"lastMagnifierResetCount" forKeyedSubscript:v526];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastHearingAidHandoffTimeResetCount"];
  v527 = NSStringFromSelector(sel_lastHearingAidHandoffTimeResetCount);
  [v1 setObject:@"lastHearingAidHandoffTimeResetCount" forKeyedSubscript:v527];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastHearingAidControlPanelTimeResetCount"];
  v528 = NSStringFromSelector(sel_lastHearingAidControlPanelTimeResetCount);
  [v1 setObject:@"lastHearingAidControlPanelTimeResetCount" forKeyedSubscript:v528];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastTapticTimeResetCount"];
  v529 = NSStringFromSelector(sel_lastTapticTimeResetCount);
  [v1 setObject:@"lastTapticTimeResetCount" forKeyedSubscript:v529];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastBrailleScreenInputTimeResetCount"];
  v530 = NSStringFromSelector(sel_lastBrailleScreenInputTimeResetCount);
  [v1 setObject:@"lastBrailleScreenInputTimeResetCount" forKeyedSubscript:v530];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastGuidedAccessTimeLimitResetCount"];
  v531 = NSStringFromSelector(sel_lastGuidedAccessTimeLimitResetCount);
  [v1 setObject:@"lastGuidedAccessTimeLimitResetCount" forKeyedSubscript:v531];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastGuidedAccessTimeResetCount"];
  v532 = NSStringFromSelector(sel_lastGuidedAccessTimeResetCount);
  [v1 setObject:@"lastGuidedAccessTimeResetCount" forKeyedSubscript:v532];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"lastCharacterVoiceTimeResetCount"];
  v533 = NSStringFromSelector(sel_lastCharacterVoiceTimeResetCount);
  [v1 setObject:@"lastCharacterVoiceTimeResetCount" forKeyedSubscript:v533];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"AXSLastSmartInvertColorsEnablement"];
  v534 = NSStringFromSelector(sel_lastSmartInvertColorsEnablement);
  [v1 setObject:@"AXSLastSmartInvertColorsEnablement" forKeyedSubscript:v534];

  [v0 setObject:&unk_1EFE96A90 forKeyedSubscript:@"AXSDidTriggerSOSToday"];
  v535 = NSStringFromSelector(sel_didTriggerSOSToday);
  [v1 setObject:@"AXSDidTriggerSOSToday" forKeyedSubscript:v535];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"CallAudioRoutingAutoAnswerPreference"];
  v536 = NSStringFromSelector(sel_callAudioRoutingAutoAnswerDelay);
  [v1 setObject:@"CallAudioRoutingAutoAnswerPreference" forKeyedSubscript:v536];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"CallAudioRoutingAutoAnswerEnabledPreference"];
  v537 = NSStringFromSelector(sel_callAudioRoutingAutoAnswerEnabled);
  [v1 setObject:@"CallAudioRoutingAutoAnswerEnabledPreference" forKeyedSubscript:v537];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerPrefersCompactForLanguagePreference"];
  v538 = NSStringFromSelector(sel__switchControlPrefersCompact);
  [v1 setObject:@"AssistiveTouchScannerPrefersCompactForLanguagePreference" forKeyedSubscript:v538];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AssistiveTouchScannerAlternativeVoiceForLanguagePreference"];
  v539 = NSStringFromSelector(sel__switchControlAltVoices);
  [v1 setObject:@"AssistiveTouchScannerAlternativeVoiceForLanguagePreference" forKeyedSubscript:v539];

  [v0 setObject:&unk_1EFE96A60 forKeyedSubscript:@"AXSAssistiveTouchDefaultDialectPreference"];
  v540 = NSStringFromSelector(sel__switchControlScannerDefaultDialect);
  [v1 setObject:@"AXSAssistiveTouchDefaultDialectPreference" forKeyedSubscript:v540];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakPrefersCompactForLanguage"];
  v541 = NSStringFromSelector(sel__quickSpeakPrefersCompact);
  [v1 setObject:@"QuickSpeakPrefersCompactForLanguage" forKeyedSubscript:v541];

  [v0 setObject:&unk_1EFE96AD8 forKeyedSubscript:@"QuickSpeakAlternativeVoiceForLanguage"];
  v542 = NSStringFromSelector(sel__quickSpeakAltVoices);
  [v1 setObject:@"QuickSpeakAlternativeVoiceForLanguage" forKeyedSubscript:v542];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"VoiceOverTouchPitchCompactVoice"];
  v543 = NSStringFromSelector(sel_voiceOverCompactVoiceEnabled);
  [v1 setObject:@"VoiceOverTouchPitchCompactVoice" forKeyedSubscript:v543];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverAlternativeVoicesPreference"];
  v544 = NSStringFromSelector(sel_voiceOverAlternativeVoiceIdentifier);
  [v1 setObject:@"AXSVoiceOverAlternativeVoicesPreference" forKeyedSubscript:v544];

  [v0 setObject:&unk_1EFE96AF0 forKeyedSubscript:@"AXSVoiceOverCompactVoicePreference"];
  v545 = NSStringFromSelector(sel_voiceOverPrefersCompact_);
  [v1 setObject:@"AXSVoiceOverCompactVoicePreference" forKeyedSubscript:v545];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSPerAppSettingsCustomizedAppIDs"];
  v546 = NSStringFromSelector(sel_perAppSettingsCustomizedAppIDs);
  [v1 setObject:@"AXSPerAppSettingsCustomizedAppIDs" forKeyedSubscript:v546];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSPerAppSettingsStats"];
  v547 = NSStringFromSelector(sel_perAppSettingsStats);
  [v1 setObject:@"AXSPerAppSettingsStats" forKeyedSubscript:v547];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSAudiogramIngestionLastModelAccess"];
  v548 = NSStringFromSelector(sel_audiogramIngestionLastModelAccess);
  [v1 setObject:@"AXSAudiogramIngestionLastModelAccess" forKeyedSubscript:v548];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSPulseWidthMaximization"];
  v549 = NSStringFromSelector(sel_pulseWidthMaximization);
  [v1 setObject:@"AXSPulseWidthMaximization" forKeyedSubscript:v549];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSSoundActionsLastModelAccess"];
  v550 = NSStringFromSelector(sel_soundActionsLastModelAccess);
  [v1 setObject:@"AXSSoundActionsLastModelAccess" forKeyedSubscript:v550];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSSoundActionsOverrideEnable"];
  v551 = NSStringFromSelector(sel_isSoundActionsForMossdeepEnabled);
  [v1 setObject:@"AXSSoundActionsOverrideEnable" forKeyedSubscript:v551];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSoundDetectionLastModelAccess"];
  v552 = NSStringFromSelector(sel_soundDetectionLastModelAccess);
  [v1 setObject:@"AXSoundDetectionLastModelAccess" forKeyedSubscript:v552];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"CameraButtonSensitivity"];
  v553 = NSStringFromSelector(sel_cameraButtonSensitivity);
  [v1 setObject:@"CameraButtonSensitivity" forKeyedSubscript:v553];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"StartupSoundEnabled"];
  v554 = NSStringFromSelector(sel_startupSoundEnabled);
  [v1 setObject:@"StartupSoundEnabled" forKeyedSubscript:v554];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AdaptiveVoiceShortcuts"];
  v555 = NSStringFromSelector(sel_isAdaptiveVoiceShortcutsEnabled);
  [v1 setObject:@"AdaptiveVoiceShortcuts" forKeyedSubscript:v555];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AdaptiveVoiceShortcutsSettingsEvents"];
  v556 = NSStringFromSelector(sel_latestAdaptiveVoiceShortcutsSettingsEvents);
  [v1 setObject:@"AdaptiveVoiceShortcutsSettingsEvents" forKeyedSubscript:v556];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"NameRecognition"];
  v557 = NSStringFromSelector(sel_isNameRecognitionEnabled);
  [v1 setObject:@"NameRecognition" forKeyedSubscript:v557];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"MonitorPreboardFeature"];
  v558 = NSStringFromSelector(sel_monitorNotificationForPreboardFeature);
  [v1 setObject:@"MonitorPreboardFeature" forKeyedSubscript:v558];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"SwitchControlProfilesPreference"];
  v559 = NSStringFromSelector(sel_switchControlProfiles);
  [v1 setObject:@"SwitchControlProfilesPreference" forKeyedSubscript:v559];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXSSwitchControlSelectedProfilePreference"];
  v560 = NSStringFromSelector(sel_switchControlSelectedProfile);
  [v1 setObject:@"AXSSwitchControlSelectedProfilePreference" forKeyedSubscript:v560];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSLiveCaptionsSelectedLocationPreference"];
  v561 = NSStringFromSelector(sel_liveCaptionsSelectedLocaleIdentifier);
  [v1 setObject:@"kAXSLiveCaptionsSelectedLocationPreference" forKeyedSubscript:v561];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"liveCaptionsHistoryDurationPreference"];
  v562 = NSStringFromSelector(sel_liveCaptionsHistoryDuration);
  [v1 setObject:@"liveCaptionsHistoryDurationPreference" forKeyedSubscript:v562];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"liveCaptionsTranscriberVersionPreference"];
  v563 = NSStringFromSelector(sel_liveCaptionsTranscriberVersion);
  [v1 setObject:@"liveCaptionsTranscriberVersionPreference" forKeyedSubscript:v563];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"AXAccessibilityReaderUIIsActive"];
  v564 = NSStringFromSelector(sel_accessibilityReaderIsActive);
  [v1 setObject:@"AXAccessibilityReaderUIIsActive" forKeyedSubscript:v564];

  v565 = _AXSPreferencesParticipatingInGuestPass();
  [v2 addObjectsFromArray:v565];

  v566 = AXMediaPreferencesParticipatingInGuestPass();
  [v2 addObjectsFromArray:v566];

  [v0 setObject:&unk_1EFE96A48 forKeyedSubscript:@"kAXSHeadsetCaseTonesVolumePreference"];
  v567 = PreferenceKeyToDomainMap;
  PreferenceKeyToDomainMap = v0;
  v571 = v0;

  v568 = SelectorToPreferenceKeyMap;
  SelectorToPreferenceKeyMap = v1;
  v569 = v1;

  v570 = PreferenceKeysSupportedByGuestMode;
  PreferenceKeysSupportedByGuestMode = v2;
}

uint64_t _accessibilitySupportSettingDidChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_accessibilitySupportSettingDidChange_onceToken[0] != -1)
  {
    _accessibilitySupportSettingDidChange_cold_1();
  }

  [_accessibilitySupportSettingDidChange_Timer cancel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___accessibilitySupportSettingDidChange_block_invoke_2;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a3;
  return [_accessibilitySupportSettingDidChange_Timer afterDelay:v5 processBlock:0.1];
}

uint64_t AXSettingsReturnIntegerValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 integerValueForPreferenceKey:v3 defaultValue:a2];

  return v5;
}

double AXSettingsReturnDoubleValue(void *a1, double a2)
{
  v3 = a1;
  v4 = +[AXSettings sharedInstance];
  [v4 doubleValueForPreferenceKey:v3 defaultValue:a2];
  v6 = v5;

  return v6;
}

id AXSettingsReturnObjectValueWithClass(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 objectValueForPreferenceKey:v6 ofClass:a3 defaultValue:v5];

  return v8;
}

void sub_18B1F2260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1F7220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1F7330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1FB3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1FB9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1FD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B202FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B2032C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B20454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B204650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXShouldAskBeforeDisablingTransportMethods()
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    return 1;
  }

  if (!_AXSVoiceOverTouchEnabled())
  {
    return 0;
  }

  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverBrailleDisplays];
  v0 = [v2 count] != 0;

  return v0;
}

BOOL AXShouldHideVoiceOverRotorItemFromSettings(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"RotorItem"];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6988B50]];

  if (v3 && !AXIsAnyPreferredLanguageRTL())
  {
    v8 = 1;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:@"RotorItem"];
    if ([v4 isEqualToString:*MEMORY[0x1E6988AC8]])
    {
    }

    else
    {
      v5 = [v1 objectForKeyedSubscript:@"RotorItem"];
      v6 = [v5 isEqualToString:*MEMORY[0x1E6988AC0]];

      if (!v6)
      {
        v8 = 0;
        goto LABEL_9;
      }
    }

    v7 = _AXSVoiceOverTouchCopyBrailleLanguageRotorItems();
    v8 = [v7 count] == 0;
  }

LABEL_9:

  return v8;
}

id AXMediaPreferencesParticipatingInGuestPass()
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = MACreatePrefCategoryKey();
  v13[0] = v12;
  v11 = MACreatePrefCategoryKey();
  v13[1] = v11;
  v0 = MACreatePrefCategoryKey();
  v13[2] = v0;
  v1 = MACreatePrefCategoryKey();
  v2 = *MEMORY[0x1E696F768];
  v13[3] = v1;
  v13[4] = v2;
  v4 = *MEMORY[0x1E696F778];
  v14 = *MEMORY[0x1E696F770];
  v3 = v14;
  v15 = v4;
  v6 = *MEMORY[0x1E696F740];
  v16 = *MEMORY[0x1E696F760];
  v5 = v16;
  v17 = v6;
  v8 = *MEMORY[0x1E696F750];
  v18 = *MEMORY[0x1E696F758];
  v7 = v18;
  v19 = v8;
  v20 = @"kAXSupportsAdvancedDisplayFiltersPreference";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:12];

  return v9;
}

id AXSystemActionIconTypes()
{
  v0 = [MEMORY[0x1E695DFA8] setWithObjects:{@"__NONE__", @"AXAssistiveTouchIconTypeTripleClick", @"AXAssistiveTouchIconTypeMultitasking", @"AXAssistiveTouchIconTypeControlCenter", @"AXAssistiveTouchIconTypeHome", @"AXAssistiveTouchIconTypeLockScreen", @"AXAssistiveTouchIconTypeMute", @"AXAssistiveTouchIconTypeNotificationCenter", @"AXAssistiveTouchIconTypeReachability", @"AXAssistiveTouchIconTypeScreenshot", @"AXAssistiveTouchIconTypeShake", @"AXAssistiveTouchIconTypeSiri", @"AXAssistiveTouchIconTypeSpotlight", @"AXAssistiveTouchIconTypeCommandAndControl", @"AXAssistiveTouchIconTypeVolumeUp", @"AXAssistiveTouchIconTypeVolumeDown", @"AXAssistiveTouchIconTypeScrollUp", @"AXAssistiveTouchIconTypeScrollDown", @"AXAssistiveTouchIconTypeAssistiveTouch", @"AXAssistiveTouchIconTypeClassicInvert", @"AXAssistiveTouchIconTypeColorFilters", @"AXAssistiveTouchIconTypeMagnifier", @"AXAssistiveTouchIconTypeVoiceOver", @"AXAssistiveTouchIconTypeSmartInvert", @"AXAssistiveTouchIconTypeZoom", @"AXAssistiveTouchIconTypeZoomController", @"AXAssistiveTouchIconTypeSpeakScreen", @"AXAssistiveTouchIconTypeOrientation", @"AXAssistiveTouchIconTypeCamera", @"AXAssistiveTouchIconTypeTorch", @"AXAssistiveTouchIconTypeBackgroundSounds", @"AXAssistiveTouchIconTypeDetectionMode", @"AXAssistiveTouchIconTypeFrontFacingCamera", 0, @"AXAssistiveTouchIconTypeControlCenter", @"AXAssistiveTouchIconTypeMultitasking", @"AXAssistiveTouchIconTypeTripleClick", MEMORY[0x1E695DFA8]}];
  if (AXRuntimeCheck_SupportsNearbyDeviceControl())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeNearbyDeviceControl"];
  }

  if (AXDeviceSupportsWatchRemoteScreen())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeWatchRemoteScreen"];
  }

  if (AXHasCapability(@"LiveTranscription"))
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeLiveCaptions"];
  }

  [v0 addObject:@"AXAssistiveTouchIconTypeLiveSpeech"];
  if (AXDeviceHasStaccato())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeActionButton"];
    [v0 removeObject:@"AXAssistiveTouchIconTypeMute"];
  }

  if (AXDeviceSupportsPhotosensitiveMitigation())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeDimFlashingLights"];
  }

  if (AXDeviceSupportsMotionCues())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeMotionCues"];
  }

  if (AXDeviceSupportsHapticMusic())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeHapticMusic"];
  }

  if (AXDeviceSupportsHoverTextTyping())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeHoverTextTyping"];
  }

  if (AXHasCapability(@"AXClarityUI"))
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeAssistiveAccess"];
  }

  if (AXHasCapability(@"AXVirtualTrackpad"))
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeTrackpad"];
  }

  if (AXDeviceSupportsCameraButton())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeCameraButton"];
    [v0 addObject:@"AXAssistiveTouchIconTypeCameraButtonLightPress"];
    [v0 addObject:@"AXAssistiveTouchIconTypeCameraButtonDoubleLightPress"];
  }

  if (AXDeviceIsPhone() && AXDeviceHasGreyMatterEnabled())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeVisualIntelligence"];
  }

  if (AXDeviceSupportsAccessibilityReader())
  {
    [v0 addObject:@"AXAssistiveTouchIconTypeAccessibilityReader"];
  }

  return v0;
}

uint64_t ___accessibilitySupportSettingDidChange_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6988780]);
  v1 = [v0 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
  v2 = _accessibilitySupportSettingDidChange_Timer;
  _accessibilitySupportSettingDidChange_Timer = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void ___accessibilitySupportSettingDidChange_block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E69E4DD8]] && !_AXSInvertColorsEnabled())
  {
    v1 = +[AXSettings sharedInstance];
    [v1 postNotificationForPreferenceKey:*MEMORY[0x1E69E4CC8]];
  }
}

Class __getTLToneManagerClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  result = objc_getClass("TLToneManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTLToneManagerClass_block_invoke_cold_1();
  }

  getTLToneManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ToneLibraryLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ToneLibraryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71EC610;
    v4 = 0;
    ToneLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ToneLibraryLibraryCore_frameworkLibrary;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    ToneLibraryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ToneLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getTLToneIdentifierNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ToneLibraryLibrary();
  result = dlsym(v2, "TLToneIdentifierNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTLToneIdentifierNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSCROBrailleDisplayDriverIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ScreenReaderOutputLibrary();
  result = dlsym(v2, "kSCROBrailleDisplayDriverIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSCROBrailleDisplayDriverIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ScreenReaderOutputLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ScreenReaderOutputLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ScreenReaderOutputLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71EC628;
    v4 = 0;
    ScreenReaderOutputLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ScreenReaderOutputLibraryCore_frameworkLibrary;
  if (!ScreenReaderOutputLibraryCore_frameworkLibrary)
  {
    ScreenReaderOutputLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ScreenReaderOutputLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenReaderOutputLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSCROBrailleDisplayMainSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ScreenReaderOutputLibrary();
  result = dlsym(v2, "kSCROBrailleDisplayMainSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSCROBrailleDisplayMainSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VoiceOverServicesLibraryCore()
{
  if (!VoiceOverServicesLibraryCore_frameworkLibrary)
  {
    VoiceOverServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return VoiceOverServicesLibraryCore_frameworkLibrary;
}

uint64_t __VoiceOverServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceOverServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVOSVoiceOverGreyCommandInfoClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!VoiceOverServicesLibraryCore())
  {
    __getVOSVoiceOverGreyCommandInfoClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("VOSVoiceOverGreyCommandInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVOSVoiceOverGreyCommandInfoClass_block_invoke_cold_1();
  }

  getVOSVoiceOverGreyCommandInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t operator||()
{
  if (!operator||)
  {
    operator|| = _sl_dlopen();
  }

  return operator||;
}

uint64_t __ZoomServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  operator|| = result;
  return result;
}

Class __getZoomServicesGreyCommandInfoClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!operator||())
  {
    __getZoomServicesGreyCommandInfoClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("ZoomServicesGreyCommandInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getZoomServicesGreyCommandInfoClass_block_invoke_cold_1();
  }

  getZoomServicesGreyCommandInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSIsReachabilityEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSIsReachabilityEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSIsReachabilityEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71EC670;
    v4 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    SpringBoardServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBSSetReachabilityEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSSetReachabilityEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSSetReachabilityEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id AXLocalizedStringForHandGestureEventUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v11 = @"HAND_GESTURE_TAP";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_12;
      }

      v11 = @"HAND_GESTURE_DOUBLE_TAP";
    }

    v9 = AXWatchControlEltonLocalizedStringForKey(v11);
  }

  else
  {
    if (a1 == 1)
    {
      v10 = @"HAND_GESTURE_CLENCH";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_12;
      }

      v10 = @"HAND_GESTURE_DOUBLE_CLENCH";
    }

    v9 = AXParameterizedLocalizedString(1, v10, a3, a4, a5, a6, a7, a8, vars0);
  }

LABEL_12:

  return v9;
}

id SCATNextAvailableProfileName()
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 switchControlProfiles];

  v2 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v18 + 1) + 8 * i) name];
        v8 = AXIntegerValueFromString();

        if (v8 > v4)
        {
          v4 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  v9 = AXFormatInteger();
  v16 = AXParameterizedLocalizedString(2, @"SWITCH_CONTROL_PROFILE_NAME_TEMPLATE", v10, v11, v12, v13, v14, v15, v9);

  return v16;
}

void SCATAddProfileToSettings(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v4 = +[AXSettings sharedInstance];
    v2 = [v4 switchControlProfiles];
    v3 = [v2 mutableCopy];

    [v3 addObject:v1];
    [v4 setSwitchControlProfiles:v3];
  }
}

void SCATRemoveProfileFromSettings(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v4 = +[AXSettings sharedInstance];
    v2 = [v4 switchControlProfiles];
    v3 = [v2 mutableCopy];
    [v3 removeObject:v1];

    [v4 setSwitchControlProfiles:v3];
  }
}

void SCATUpdateProfileToSettings(void *a1)
{
  v7 = a1;
  if (v7)
  {
    v1 = +[AXSettings sharedInstance];
    v2 = [v1 switchControlProfiles];
    v3 = [v2 mutableCopy];

    if ([v3 count])
    {
      v4 = 0;
      while (1)
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = [v7 isEqual:v5];

        if (v6)
        {
          break;
        }

        if (++v4 >= [v3 count])
        {
          goto LABEL_8;
        }
      }

      [v3 removeObjectAtIndex:v4];
      [v3 insertObject:v7 atIndex:v4];
    }

LABEL_8:
    [v1 setSwitchControlProfiles:v3];
  }
}

double AXTapticTimeIntervalForTapType(unint64_t a1, float a2)
{
  v2 = 0.0;
  if (a1 <= 6)
  {
    v2 = dbl_18B2F86F0[a1];
  }

  return v2 / a2;
}

uint64_t _AXFeatureSupportsNonSightedUsage()
{
  if (_AXSVoiceOverTouchEnabled())
  {
    return 1;
  }

  result = _AXSAssistiveTouchScannerEnabled();
  if (result)
  {
    v1 = +[AXSettings sharedInstance];
    v2 = [v1 assistiveTouchScannerSpeechEnabled];

    return v2;
  }

  return result;
}

void sub_18B210F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id AXPerformPrivilegedAttributedStringTransformation(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isAXAttributedString])
  {
    v4 = applyTransform(v3, a2);
  }

  else
  {
    v4 = [v3 copy];
  }

  v5 = v4;

  return v5;
}

id applyTransform(void *a1, uint64_t a2)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if ((a2 - 1) >= 7)
  {

    goto LABEL_16;
  }

  v5 = qword_1E71EC838[a2 - 1];
  v6 = [v3 coalescedAttributes];
  v7 = [v6 allKeys];
  LOBYTE(v5) = [v7 containsObject:*v5];

  if ((v5 & 1) == 0)
  {
LABEL_16:
    v14 = [v4 copy];
LABEL_17:
    v15 = v14;
    goto LABEL_18;
  }

  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      v17 = v4;
      v18 = [objc_alloc(MEMORY[0x1E6988D60]) initWithString:&stru_1EFE6D570];
      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      if (a2 == 2)
      {
        v49 = __performShareSheetLabelTransform_block_invoke_66;
        v50 = &unk_1E71EC7A8;
        v51 = v17;
        v53 = &__block_literal_global_59;
      }

      else
      {
        v49 = __performShareSheetValueTransform_block_invoke_3;
        v50 = &unk_1E71EC7A8;
        v51 = v17;
        v53 = &__block_literal_global_86;
      }

      v19 = v18;
      v52 = v19;
      v20 = v17;
      [v20 enumerateAttributesUsingBlock:&v47];
      v21 = v52;
      v15 = v19;

      goto LABEL_18;
    }

    v14 = performXPCTransformWithBlock(v4, *MEMORY[0x1E6988F28], &__block_literal_global_40, @"kbd");
    goto LABEL_17;
  }

  if (a2 > 5)
  {
    if (a2 != 6)
    {
      v14 = performXPCTransformWithBlock(v4, *MEMORY[0x1E6988E00], &__block_literal_global_122, @"sociallayerd");
      goto LABEL_17;
    }

    v22 = v4;
    v15 = [objc_alloc(MEMORY[0x1E6988D60]) initWithString:&stru_1EFE6D570];
    LOBYTE(v47) = 0;
    objc_opt_class();
    v23 = [v22 attributeValueForKey:*MEMORY[0x1E6988DA8]];
    v24 = __UIAccessibilityCastAsClass();

    v25 = [v24 longValue];
    LOBYTE(v47) = 0;
    objc_opt_class();
    v26 = [v22 attributeValueForKey:*MEMORY[0x1E6988DB0]];
    v27 = __UIAccessibilityCastAsClass();

    v28 = [v27 unsignedLongLongValue];
    v29 = 0;
    v30 = 1;
    v31 = 0;
    if (v25 && v28)
    {
      v29 = MEMORY[0x18CFF3D70](v25, v28, 9999);
      if (v29)
      {
        v32 = [MEMORY[0x1E6988D68] elementWithAXUIElement:v29];
        v33 = [v32 visibleElements];
        v31 = [v33 firstObject];

        if (v31)
        {
          v34 = [v31 label];
          v35 = v34 == 0;

          if (!v35)
          {
            v36 = [v31 label];
            [v15 appendString:v36];

            goto LABEL_46;
          }
        }

        v30 = 0;
      }

      else
      {
        v31 = 0;
      }
    }

    v46 = [v22 string];
    [v15 appendString:v46];

    if (v30)
    {
LABEL_47:

      goto LABEL_18;
    }

LABEL_46:
    CFRelease(v29);
    goto LABEL_47;
  }

  if (a2 != 4)
  {
    v14 = performXPCTransformWithBlock(v4, *MEMORY[0x1E6988F60], &__block_literal_global_99, @"sociallayerd");
    goto LABEL_17;
  }

  v8 = v4;
  if (performTelephonyCarrierStringTransform_onceToken != -1)
  {
    applyTransform_cold_1();
  }

  v9 = [objc_alloc(NSClassFromString(&cfstr_Coretelephonyc.isa)) initWithQueue:performTelephonyCarrierStringTransform_TelephonyQueue];
  if (!v9)
  {
    v10 = AXLogAppAccessibility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      applyTransform_cold_2(v10);
    }
  }

  v58 = 0;
  v11 = [v9 getSubscriptionInfoWithError:&v58];
  v12 = v58;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__13;
  v51 = __Block_byref_object_dispose__13;
  v52 = 0;
  if (v12)
  {
    v13 = AXLogAppAccessibility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      applyTransform_cold_3();
    }
  }

  else
  {
    v37 = [v11 subscriptions];
    v38 = [v37 firstObject];
    v39 = [v38 context];
    v57 = 0;
    v40 = [v9 getLocalizedOperatorName:v39 error:&v57];
    v13 = v57;
    v41 = [v40 copy];
    v42 = *(v48 + 40);
    *(v48 + 40) = v41;

    if (v13)
    {
      v43 = AXLogAppAccessibility();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        applyTransform_cold_4();
      }
    }
  }

  v44 = [v8 copy];
  if (!*(v48 + 40))
  {
    *(v48 + 40) = &stru_1EFE6D570;
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __performTelephonyCarrierStringTransform_block_invoke_97;
  v54[3] = &unk_1E71EC800;
  v15 = v44;
  v55 = v15;
  v56 = &v47;
  [v8 enumerateAttributesUsingBlock:v54];
  v59[0] = *MEMORY[0x1E6988F98];
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
  [v15 removeAttributes:v45];

  _Block_object_dispose(&v47, 8);
LABEL_18:

  return v15;
}

void sub_18B211868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXPerformPrivilegedAttributedStringTransformations(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isAXAttributedString])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        v10 = v3;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3 = applyTransform(v10, [*(*(&v13 + 1) + 8 * v9) unsignedIntegerValue]);

          ++v9;
          v10 = v3;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = v3;

  return v3;
}

uint64_t AXGuidedAccessGetAvailability()
{
  v0 = +[AXBackBoardServer server];
  v1 = [v0 guidedAccessAvailability];

  return v1;
}

void __performProactiveSuggestionTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongValue];
  if (v5)
  {
    v6 = MEMORY[0x1E69D9538];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __performProactiveSuggestionTransform_block_invoke_2;
    v7[3] = &unk_1E71EC730;
    v8 = v4;
    [v6 requestLabelForProactiveCandidateWithSlotID:v5 completionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

id performXPCTransformWithBlock(void *a1, void *a2, void *a3, void *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v7 copy];
  v12 = [v7 attributeValueForKey:v8];
  if (v12)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__13;
    v35 = __Block_byref_object_dispose__13;
    v36 = 0;
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    dispatch_group_enter(v13);
    v14 = dispatch_get_global_queue(-32768, 0);
    dispatch_group_notify(v13, v14, &__block_literal_global_52_0);

    v15 = dispatch_semaphore_create(0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __performXPCTransformWithBlock_block_invoke_2;
    v27[3] = &unk_1E71EC758;
    v30 = &v31;
    v16 = v15;
    v28 = v16;
    v17 = v13;
    v29 = v17;
    v9[2](v9, v12, v27);
    v18 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v16, v18))
    {
      _AXLogWithFacility();
    }

    else
    {
      if ([v32[5] length])
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __performXPCTransformWithBlock_block_invoke_3;
        v23[3] = &unk_1E71EC780;
        v24 = v8;
        v25 = v11;
        v26 = &v31;
        [v25 enumerateAttributesUsingBlock:v23];
      }

      v37[0] = v8;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      [v11 removeAttributes:v19];
    }

    dispatch_group_leave(v17);
    v20 = v29;
    v21 = v11;

    _Block_object_dispose(&v31, 8);
  }

  return v11;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __performXPCTransformWithBlock_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_group_leave(*(a1 + 40));
}

void __performXPCTransformWithBlock_block_invoke_3(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 allKeys];
  v8 = [v7 containsObject:a1[4]];

  if (v8)
  {
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 40);

    [v9 replaceCharactersInRange:a3 withString:{a4, v10}];
  }
}

void __performShareSheetLabelTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a2 unsignedLongValue];
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "Transforming slot id: %@", buf, 0xCu);
  }

  if (v5)
  {
    SFAccessibilityClientClass = getSFAccessibilityClientClass();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __performShareSheetLabelTransform_block_invoke_61;
    v9[3] = &unk_1E71EC730;
    v10 = v4;
    [SFAccessibilityClientClass requestLabelForActivityWithSlotID:v5 completionHandler:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

id getSFAccessibilityClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFAccessibilityClientClass_softClass;
  v7 = getSFAccessibilityClientClass_softClass;
  if (!getSFAccessibilityClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFAccessibilityClientClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getSFAccessibilityClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B21219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __performShareSheetLabelTransform_block_invoke_61(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AXApplicationNameLabelForBundleIdentifier(v3);
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Share sheet transform: %@/%@", &v7, 0x16u);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

id _AXApplicationNameLabelForBundleIdentifier(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAXApplicationNameLabelForBundleIdentifierSymbolLoc_ptr;
  v9 = getAXApplicationNameLabelForBundleIdentifierSymbolLoc_ptr;
  if (!getAXApplicationNameLabelForBundleIdentifierSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getAXApplicationNameLabelForBundleIdentifierSymbolLoc_block_invoke;
    v5[3] = &unk_1E71E9A80;
    v5[4] = &v6;
    __getAXApplicationNameLabelForBundleIdentifierSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    _AXApplicationNameLabelForBundleIdentifier_cold_1();
  }

  v3 = v2(v1);

  return v3;
}

void sub_18B212384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __performShareSheetLabelTransform_block_invoke_66(id *a1)
{
  v3 = [a1[4] substringWithRange:?];
  v2 = performXPCTransformWithBlock(v3, *MEMORY[0x1E6988F50], a1[6], @"sharingd");
  [a1[5] appendAXAttributedString:v2];
}

Class __getSFAccessibilityClientClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SharingLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SharingLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EC7C8;
    v5 = 0;
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SharingLibraryCore_frameworkLibrary)
  {
    __getSFAccessibilityClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SFAccessibilityClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFAccessibilityClientClass_block_invoke_cold_1();
  }

  getSFAccessibilityClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXApplicationNameLabelForBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AXFrontBoardUtilsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AXFrontBoardUtilsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71EC7E0;
    v6 = 0;
    AXFrontBoardUtilsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AXFrontBoardUtilsLibraryCore_frameworkLibrary;
  if (!AXFrontBoardUtilsLibraryCore_frameworkLibrary)
  {
    __getAXApplicationNameLabelForBundleIdentifierSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AXApplicationNameLabelForBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXApplicationNameLabelForBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXFrontBoardUtilsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXFrontBoardUtilsLibraryCore_frameworkLibrary = result;
  return result;
}

void __performShareSheetValueTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongValue];
  if (v5)
  {
    SFAccessibilityClientClass = getSFAccessibilityClientClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __performShareSheetValueTransform_block_invoke_2;
    v7[3] = &unk_1E71EC730;
    v8 = v4;
    [SFAccessibilityClientClass requestLabelForActivityWithSlotID:v5 completionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __performShareSheetValueTransform_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AXApplicationNameLabelForBundleIdentifier(v3);
  v5 = v4;
  if (!v4)
  {
    v4 = v3;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
}

void __performShareSheetValueTransform_block_invoke_3(id *a1)
{
  v3 = [a1[4] substringWithRange:?];
  v2 = performXPCTransformWithBlock(v3, *MEMORY[0x1E6988F58], a1[6], @"sharingd");
  [a1[5] appendAXAttributedString:v2];
}

void __performTelephonyCarrierStringTransform_block_invoke()
{
  v0 = dispatch_queue_create("ax-telephony-retrieval", 0);
  v1 = performTelephonyCarrierStringTransform_TelephonyQueue;
  performTelephonyCarrierStringTransform_TelephonyQueue = v0;

  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Frameworks/CoreTelephony.framework"];
  if (([v2 isLoaded] & 1) == 0)
  {
    [v2 load];
  }
}

void __performTelephonyCarrierStringTransform_block_invoke_97(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 allKeys];
  v8 = [v7 containsObject:*MEMORY[0x1E6988F98]];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v9 replaceCharactersInRange:a3 withString:{a4, v10}];
  }
}

void __performSocialAttributionStringTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (audit_stringAXFrontBoardUtils_block_invoke_onceToken != -1)
  {
    __performSocialAttributionStringTransform_block_invoke_cold_1();
  }

  v6 = [audit_stringAXFrontBoardUtils_block_invoke_proxy remoteService];
  if ([v6 conformsToProtocol:&unk_1EFECA990])
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __performSocialAttributionStringTransform_block_invoke_3;
      v12[3] = &unk_1E71EC730;
      v13 = v5;
      [v7 accessibilityLabelForAttributionIdentifiers:v4 reply:v12];
      v8 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v4 length])
      {
        (*(v5 + 2))(v5, 0);
        goto LABEL_14;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __performSocialAttributionStringTransform_block_invoke_4;
      v10[3] = &unk_1E71EC730;
      v11 = v5;
      [v7 accessibilityLabelForAttributionIdentifier:v4 reply:v10];
      v8 = v11;
    }

LABEL_14:
    goto LABEL_15;
  }

  v9 = AXLogAppAccessibility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __performSocialAttributionStringTransform_block_invoke_cold_2();
  }

  (*(v5 + 2))(v5, 0);
LABEL_15:
}

uint64_t __performSocialAttributionStringTransform_block_invoke_2()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.Accessibility.SLDPillService", v0);
  v2 = audit_stringAXFrontBoardUtils_block_invoke_sldServiceProxyQueue;
  audit_stringAXFrontBoardUtils_block_invoke_sldServiceProxyQueue = v1;

  SLDServiceProxyClass = getSLDServiceProxyClass();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getSLDPillServiceClass_softClass;
  v16 = getSLDPillServiceClass_softClass;
  if (!getSLDPillServiceClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getSLDPillServiceClass_block_invoke;
    v12[3] = &unk_1E71E9A80;
    v12[4] = &v13;
    __getSLDPillServiceClass_block_invoke(v12);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = objc_opt_class();
  v7 = audit_stringAXFrontBoardUtils_block_invoke_sldServiceProxyQueue;
  v8 = objc_alloc_init(AXSLDServiceProxyDelegateObject);
  v9 = [SLDServiceProxyClass proxyForServiceClass:v6 targetSerialQueue:v7 delegate:v8];
  v10 = audit_stringAXFrontBoardUtils_block_invoke_proxy;
  audit_stringAXFrontBoardUtils_block_invoke_proxy = v9;

  return [audit_stringAXFrontBoardUtils_block_invoke_proxy connect];
}

void sub_18B212D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSLDServiceProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLDServiceProxyClass_softClass;
  v7 = getSLDServiceProxyClass_softClass;
  if (!getSLDServiceProxyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSLDServiceProxyClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getSLDServiceProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B212E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLDServiceProxyClass_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLDServiceProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLDServiceProxyClass_block_invoke_cold_1();
  }

  getSLDServiceProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SocialLayerLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SocialLayerLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E71EC820;
    v2 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    SocialLayerLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SocialLayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSLDPillServiceClass_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLDPillService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLDPillServiceClass_block_invoke_cold_1();
  }

  getSLDPillServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __performCollaborationAttributionStringTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (audit_stringSocialLayer_block_invoke_2_onceToken != -1)
  {
    __performCollaborationAttributionStringTransform_block_invoke_cold_1();
  }

  v6 = [audit_stringSocialLayer_block_invoke_2_proxy remoteService];
  if ([v6 conformsToProtocol:&unk_1EFECA9F0])
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __performCollaborationAttributionStringTransform_block_invoke_3;
      v9[3] = &unk_1E71EC730;
      v10 = v5;
      [v7 accessibilityLabelForAttributionIdentifiers:v4 reply:v9];
    }

    else
    {
      (*(v5 + 2))(v5, 0);
    }
  }

  else
  {
    v8 = AXLogAppAccessibility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __performSocialAttributionStringTransform_block_invoke_cold_2();
    }

    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __performCollaborationAttributionStringTransform_block_invoke_2()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.Accessibility.SLDCollaborationAttributionViewService", v0);
  v2 = audit_stringSocialLayer_block_invoke_2_sldServiceProxyQueue;
  audit_stringSocialLayer_block_invoke_2_sldServiceProxyQueue = v1;

  SLDServiceProxyClass = getSLDServiceProxyClass();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getSLDCollaborationAttributionViewServiceClass_softClass;
  v16 = getSLDCollaborationAttributionViewServiceClass_softClass;
  if (!getSLDCollaborationAttributionViewServiceClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getSLDCollaborationAttributionViewServiceClass_block_invoke;
    v12[3] = &unk_1E71E9A80;
    v12[4] = &v13;
    __getSLDCollaborationAttributionViewServiceClass_block_invoke(v12);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = objc_opt_class();
  v7 = audit_stringSocialLayer_block_invoke_2_sldServiceProxyQueue;
  v8 = objc_alloc_init(AXSLDServiceProxyDelegateObject);
  v9 = [SLDServiceProxyClass proxyForServiceClass:v6 targetSerialQueue:v7 delegate:v8];
  v10 = audit_stringSocialLayer_block_invoke_2_proxy;
  audit_stringSocialLayer_block_invoke_2_proxy = v9;

  return [audit_stringSocialLayer_block_invoke_2_proxy connect];
}

void sub_18B213364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLDCollaborationAttributionViewServiceClass_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLDCollaborationAttributionViewService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLDCollaborationAttributionViewServiceClass_block_invoke_cold_1();
  }

  getSLDCollaborationAttributionViewServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18B213DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B215F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXSwitchRecipeMappingSwitchUUIDs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DFA8];
  v3 = [v1 mappings];
  v4 = [v2 setWithCapacity:{objc_msgSend(v3, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v1 mappings];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 switchUUID];

        if (v11)
        {
          v12 = [v10 switchUUID];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

id AXSwitchRecipeMappingNameForAction(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Exit"])
  {
    v2 = @"EXIT_RECIPE";
LABEL_15:
    v3 = AXLocalizedString(v2);
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"Select"])
  {
    v2 = @"SELECT_ITEM_AUTOSCANNING";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Gesture"])
  {
    v2 = @"CUSTOM_GESTURE";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"CenterTap"])
  {
    v2 = @"CENTER_TAP";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"RightToLeftSwipe"])
  {
    v2 = @"RIGHT_TO_LEFT_SWIPE";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"LeftToRightSwipe"])
  {
    v2 = @"LEFT_TO_RIGHT_SWIPE";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"HoldAtPoint"])
  {
    v2 = @"HOLD_POINT";
    goto LABEL_15;
  }

  v3 = 0;
LABEL_16:

  return v3;
}

void sub_18B219758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _AXSSetTestBuddyData(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v7 = a2;
  if (_AXSInUnitTestMode())
  {
    [AXBuddyDataPackage setTestData:v8 forModel:v7 hasHomeButton:a3 largeTextUsesExtendedRange:a4];
  }
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void SCATRemoveSwitchFromSettings(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v4 = +[AXSettings sharedInstance];
    v2 = [v4 assistiveTouchSwitches];
    v3 = [v2 mutableCopy];
    [v3 removeObject:v1];

    [v4 setAssistiveTouchSwitches:v3];
  }
}

void SCATAddOrUpdateSwitchToSettings(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchSwitches];
    v4 = [v3 mutableCopy];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v13;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([v1 isEqual:{v11, v12}])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          v7 = v5;
          goto LABEL_13;
        }
      }

      v7 = v11;

      if (!v7)
      {
        goto LABEL_14;
      }

      [v5 removeObject:v7];
    }

LABEL_13:

LABEL_14:
    [v5 addObject:{v1, v12}];
    [v2 setAssistiveTouchSwitches:v5];
  }
}

void SCATAddOrUpdateCameraSwitchToSettings(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchCameraPointPickerSwitches];
    v4 = [v3 mutableCopy];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v13;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([v1 isEqual:{v11, v12}])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          v7 = v5;
          goto LABEL_13;
        }
      }

      v7 = v11;

      if (!v7)
      {
        goto LABEL_14;
      }

      [v5 removeObject:v7];
    }

LABEL_13:

LABEL_14:
    [v5 addObject:{v1, v12}];
    [v2 setAssistiveTouchCameraPointPickerSwitches:v5];
  }
}

uint64_t SCATSwitchExistsWithName(void *a1)
{
  v1 = a1;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchSwitches];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SCATSwitchExistsWithName_block_invoke;
  v7[3] = &unk_1E71ECA18;
  v4 = v1;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_18B220194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SCATSwitchExistsWithName_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 name];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id SCATNextAvailableSwitchName()
{
  v0 = AXFormatInteger();
  v7 = AXParameterizedLocalizedString(2, @"SWITCH_NAME_PREFIX", v1, v2, v3, v4, v5, v6, v0);

  if (SCATSwitchExistsWithName(v7))
  {
    v8 = 2;
    do
    {
      v9 = AXFormatInteger();
      v16 = AXParameterizedLocalizedString(2, @"SWITCH_NAME_PREFIX", v10, v11, v12, v13, v14, v15, v9);

      ++v8;
      v7 = v16;
    }

    while ((SCATSwitchExistsWithName(v16) & 1) != 0);
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

__CFString *SCATActionDescription(uint64_t a1)
{
  if (a1 <= 199)
  {
    if (a1 > 104)
    {
      if (a1 <= 106)
      {
        if (a1 == 105)
        {
          return @"step previous";
        }

        else
        {
          return @"stop";
        }
      }

      switch(a1)
      {
        case 'k':
          return @"voice shortcuts";
        case 'l':
          return @"apple watch remote screen";
        case 'm':
          return @"select and resume autoscanning";
      }
    }

    else
    {
      if (a1 > 101)
      {
        if (a1 == 102)
        {
          return @"run";
        }

        if (a1 == 103)
        {
          return @"select";
        }

        return @"step next";
      }

      if (a1 == 100)
      {
        return @"activate";
      }

      if (a1 == 101)
      {
        return @"menu";
      }
    }

    return @"unknown";
  }

  if (a1 > 299)
  {
    if (a1 <= 303)
    {
      if (a1 > 301)
      {
        if (a1 == 302)
        {
          return @"ATV Home";
        }

        else
        {
          return @"ATV Play/Pause";
        }
      }

      else if (a1 == 300)
      {
        return @"ATV Select";
      }

      else
      {
        return @"ATV Menu";
      }
    }

    if (a1 <= 305)
    {
      if (a1 == 304)
      {
        return @"ATV Up";
      }

      else
      {
        return @"ATV Down";
      }
    }

    switch(a1)
    {
      case 306:
        return @"ATV Left";
      case 307:
        return @"ATV Right";
      case 400:
        return @"Active Hold and Drag";
    }

    return @"unknown";
  }

  switch(a1)
  {
    case 200:
      result = @"app switcher";
      break;
    case 201:
      result = @"home";
      break;
    case 202:
      result = @"notifications";
      break;
    case 203:
      result = @"siri";
      break;
    case 204:
      result = @"volume down";
      break;
    case 205:
      result = @"volume up";
      break;
    case 206:
      result = @"3d touch";
      break;
    case 207:
      result = @"toggle dictation";
      break;
    case 208:
      result = @"accessibility shortcut";
      break;
    case 209:
      result = @"control center";
      break;
    case 210:
      result = @"escape";
      break;
    case 211:
      result = @"camera button";
      break;
    case 212:
      result = @"camera button light press";
      break;
    case 213:
      result = @"camera button double light press";
      break;
    case 214:
      result = @"visual intelligence";
      break;
    case 215:
      result = @"scroll up";
      break;
    case 216:
      result = @"scroll down";
      break;
    case 217:
      result = @"scroll left";
      break;
    case 218:
      result = @"scroll right";
      break;
    default:
      return @"unknown";
  }

  return result;
}

uint64_t SCATSwitchConfigurationRendersDeviceUnusable(char a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchSwitches];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SCATSwitchConfigurationRendersDeviceUnusable_block_invoke;
  v8[3] = &unk_1E71ECAD8;
  v8[4] = &v9;
  v8[5] = &v13;
  v8[6] = &v17;
  [v3 enumerateObjectsUsingBlock:v8];
  if (a1)
  {
    goto LABEL_11;
  }

  v4 = [v2 switchControlScanningStyle];
  if (v4)
  {
    if (v4 == 1)
    {
      if ((v18[3] & 1) == 0)
      {
LABEL_11:
        v6 = *(v10 + 24);
        goto LABEL_12;
      }
    }

    else if (v4 != 2)
    {
      goto LABEL_11;
    }

    v5 = v14;
  }

  else
  {
    v5 = v18;
  }

  if ((v5[3] & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6 & 1;
}

void sub_18B220724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void __SCATSwitchConfigurationRendersDeviceUnusable_block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 source];
  v4 = [v3 isEqual:@"SwitchSourceScreen"];

  if (v4)
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  if ([v5 action] == 104 || objc_msgSend(v5, "action") == 105)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ([v5 action] == 103 || objc_msgSend(v5, "action") == 109)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

id SCATNavigationSwitchActions()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  [v0 addObject:&unk_1EFE96D90];
  [v0 addObject:&unk_1EFE96DA8];
  [v0 addObject:&unk_1EFE96DC0];
  [v0 addObject:&unk_1EFE96DD8];

  return v0;
}

id SCATSystemSwitchActions()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1EFE972D0];
  [v0 addObject:&unk_1EFE96E08];
  [v0 addObject:&unk_1EFE96E20];
  [v0 addObject:&unk_1EFE96E38];
  [v0 addObject:&unk_1EFE96E50];
  [v0 addObject:&unk_1EFE96E68];
  [v0 addObject:&unk_1EFE96E80];
  v1 = [MEMORY[0x1E69B36C0] sharedInstance];
  v2 = [v1 getActivePairedDevice];

  if (v2)
  {
    [v0 addObject:&unk_1EFE96E98];
  }

  [v0 addObject:&unk_1EFE96EB0];
  [v0 addObject:&unk_1EFE96EC8];
  if (MGGetBoolAnswer())
  {
    [v0 addObject:&unk_1EFE96EE0];
  }

  if (AXForceTouchAvailableAndEnabled())
  {
    [v0 addObject:&unk_1EFE96EF8];
  }

  [v0 addObject:&unk_1EFE96F10];
  [v0 addObject:&unk_1EFE96F28];
  if (AXDeviceSupportsCameraButton())
  {
    [v0 addObject:&unk_1EFE96F40];
    [v0 addObject:&unk_1EFE96F58];
    [v0 addObject:&unk_1EFE96F70];
  }

  if (AXDeviceSupportsCameraButton() && AXDeviceHasGreyMatterEnabled())
  {
    [v0 addObject:&unk_1EFE96F88];
  }

  return v0;
}