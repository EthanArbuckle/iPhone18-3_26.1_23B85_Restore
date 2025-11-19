const void *__HandleForSource(uint64_t a1)
{
  pthread_mutex_lock(&__HandlesLock);
  Mutable = __Handles;
  if (!__Handles)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __Handles = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    v4 = CPSystemRootDirectory();
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v5 = MEMORY[0x277CCACA8];
          v6 = MEMORY[0x277CBEA60];
          v12 = @"VisualVoicemail";
          v7 = @"VisualVoicemail.framework";
        }

        else
        {
          if (a1 != 6)
          {
            goto LABEL_24;
          }

          v5 = MEMORY[0x277CCACA8];
          v6 = MEMORY[0x277CBEA60];
          v12 = @"CoreAccessories";
          v7 = @"CoreAccessories.framework";
        }
      }

      else
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = MEMORY[0x277CBEA60];
        if (a1 == 3)
        {
          v12 = @"FrontBoardServices";
          v7 = @"FrontBoardServices.framework";
        }

        else
        {
          v12 = @"CarKit";
          v7 = @"CarKit.framework";
        }
      }

LABEL_18:
      v8 = @"PrivateFrameworks";
LABEL_21:
      v9 = [v5 pathWithComponents:{objc_msgSend(v6, "arrayWithObjects:", v4, @"System", @"Library", v8, v7, v12, 0)}];
      if (v9)
      {
        v10 = dlopen([v9 UTF8String], 1);
        if (v10)
        {
          Value = v10;
          CFDictionarySetValue(__Handles, a1, v10);
          goto LABEL_25;
        }
      }

LABEL_24:
      NSLog(&cfstr_CouldNotLoadSo.isa, a1);
      Value = 0;
      goto LABEL_25;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_24;
        }

        v5 = MEMORY[0x277CCACA8];
        v6 = MEMORY[0x277CBEA60];
        v12 = @"SpringBoardServices";
        v7 = @"SpringBoardServices.framework";
        goto LABEL_18;
      }

      v5 = MEMORY[0x277CCACA8];
      v6 = MEMORY[0x277CBEA60];
      v12 = @"MobileCoreServices";
      v7 = @"MobileCoreServices.framework";
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = MEMORY[0x277CBEA60];
      v12 = @"UIKit";
      v7 = @"UIKit.framework";
    }

    v8 = @"Frameworks";
    goto LABEL_21;
  }

LABEL_25:
  pthread_mutex_unlock(&__HandlesLock);
  return Value;
}

Class EAWeakLinkClass(NSString *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return NSClassFromString(a1);
  }

  return result;
}

id __EAAuthDataGetterCB(uint64_t a1)
{
  NSLog(&cfstr_Externalaccess_70.isa, a1);
  Accessory = __findAccessory(a1, [+[EAAccessoryManager connectedAccessories] sharedAccessoryManager];
  if (Accessory)
  {
    v3 = [Accessory certData];

    return v3;
  }

  else
  {
    NSLog(&cfstr_Externalaccess_71.isa, a1, [+[EAAccessoryManager connectedAccessories] sharedAccessoryManager];
    return 0;
  }
}

id __EAAuthSerialStringGetterCB(uint64_t a1)
{
  NSLog(&cfstr_Externalaccess_72.isa, a1);
  Accessory = __findAccessory(a1, [+[EAAccessoryManager connectedAccessories] sharedAccessoryManager];
  if (Accessory)
  {
    v3 = Accessory;
    v4 = [objc_msgSend(Accessory "certSerial")];
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([objc_msgSend(v3 "certSerial")])
    {
      v6 = 0;
      do
      {
        [v5 appendFormat:@"%02X", *(v4 + v6++)];
      }

      while (v6 < [objc_msgSend(v3 "certSerial")]);
    }

    return v5;
  }

  else
  {
    NSLog(&cfstr_Externalaccess_73.isa, a1, [+[EAAccessoryManager connectedAccessories] sharedAccessoryManager];
    return 0;
  }
}

void __convertIAPAccessoryToEAAccessory(void *a1, void *a2)
{
  v3 = a1;
  v94 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D183F0];
  v5 = [a1 objectForKey:*MEMORY[0x277D183F0]];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [a2 setName:v7];
  }

  v8 = [v3 objectForKey:*MEMORY[0x277D183E0]];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    [a2 setManufacturer:v10];
  }

  v11 = [v3 objectForKey:*MEMORY[0x277D183E8]];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [a2 setModelNumber:v13];
  }

  v14 = [v3 objectForKey:*MEMORY[0x277D18458]];
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    [a2 setSerialNumber:v16];
  }

  v17 = [v3 objectForKey:*MEMORY[0x277D183B8]];
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    [a2 setFirmwareRevisionActive:v19];
  }

  v20 = [v3 objectForKey:*MEMORY[0x277D183C0]];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    [a2 setFirmwareRevisionPending:v22];
  }

  v23 = [v3 objectForKey:*MEMORY[0x277D183C8]];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    [a2 setHardwareRevision:v25];
  }

  v26 = [v3 objectForKey:*MEMORY[0x277D183B0]];
  if (v26)
  {
    v27 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    [a2 setDockType:v28];
  }

  v29 = [v3 objectForKey:*MEMORY[0x277D183D8]];
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [v30 isEqualToString:&stru_284B0F7E0])
    {
      v30 = 0;
    }

    [a2 setMacAddress:v30];
  }

  v31 = EAWeakLinkStringConstant("kACCExternalAccessoryPPIDKey", 6);
  if (v31)
  {
    v32 = [v3 objectForKey:v31];
    if (v32)
    {
      v33 = v32;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [v33 isEqualToString:&stru_284B0F7E0])
      {
        v33 = 0;
      }

      [a2 setPpid:v33];
    }
  }

  v34 = EAWeakLinkStringConstant("kACCExternalAccessoryRegionCodeKey", 6);
  if (v34)
  {
    v35 = [v3 objectForKey:v34];
    if (v35)
    {
      v36 = v35;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [v36 isEqualToString:&stru_284B0F7E0])
      {
        v36 = 0;
      }

      [a2 setRegionCode:v36];
    }
  }

  v37 = EAWeakLinkStringConstant("kACCExternalAccessoryTransportType", 6);
  if (v37)
  {
    v38 = [v3 objectForKey:v37];
    if (v38)
    {
      v39 = v38;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a2 setTransportType:{objc_msgSend(v39, "unsignedIntegerValue")}];
      }
    }
  }

  [a2 setProtocolDetails:{objc_msgSend(v3, "objectForKey:", @"ACCExternalAccessoryProtocolDetailsKey"}];
  v40 = *MEMORY[0x277D18480];
  if ([v3 objectForKey:*MEMORY[0x277D18480]])
  {
    [a2 setConnectionID:{objc_msgSend(objc_msgSend(v3, "objectForKey:", v40), "unsignedIntValue")}];
  }

  v41 = *MEMORY[0x277D18450];
  if ([v3 objectForKey:*MEMORY[0x277D18450]])
  {
    [a2 setProtocols:{objc_msgSend(v3, "objectForKey:", v41)}];
  }

  v42 = *MEMORY[0x277D18448];
  if ([v3 objectForKey:*MEMORY[0x277D18448]])
  {
    [a2 setPreferredApp:{objc_msgSend(v3, "objectForKey:", v42)}];
  }

  if ([v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"])
  {
    [a2 setCertSerial:{objc_msgSend(v3, "objectForKey:", @"IAPAppAccessoryCertSerialNumberKey"}];
  }

  if ([v3 objectForKey:@"IAPAppAccessoryCertDataKey"])
  {
    [a2 setCertData:{objc_msgSend(v3, "objectForKey:", @"IAPAppAccessoryCertDataKey"}];
  }

  v43 = *MEMORY[0x277D18388];
  if ([v3 objectForKey:*MEMORY[0x277D18388]])
  {
    v44 = [objc_msgSend(v3 objectForKey:{v43), "intValue"}];
  }

  else
  {
    v44 = 0;
  }

  [a2 setClassType:v44];
  if ([v3 objectForKey:@"EAAccessorySpeakerMenuEQNamesKey"] && objc_msgSend(v3, "objectForKey:", @"EAAccessorySpeakerMenuEQIndexKey"))
  {
    [a2 setEqNames:{objc_msgSend(v3, "objectForKey:", @"EAAccessorySpeakerMenuEQNamesKey"}];
    [a2 setEqIndex:{objc_msgSend(objc_msgSend(v3, "objectForKey:", @"EAAccessorySpeakerMenuEQIndexKey", "unsignedIntValue")}];
  }

  [a2 setCapabilities:{objc_msgSend(objc_msgSend(v3, "objectForKey:", *MEMORY[0x277D18380]), "intValue")}];
  [a2 setLocationSentenceTypesMask:{objc_msgSend(objc_msgSend(v3, "objectForKey:", *MEMORY[0x277D183D0]), "unsignedIntValue")}];
  [a2 setVehicleInfoSupportedTypes:{objc_msgSend(v3, "objectForKey:", *MEMORY[0x277D18478])}];
  v45 = *MEMORY[0x277D18470];
  v46 = [v3 objectForKey:*MEMORY[0x277D18470]];
  v47 = [v3 objectForKey:v4];
  v48 = [v3 objectForKey:v40];
  v49 = [v3 objectForKey:v37];
  if (v46)
  {
    NSLog(&cfstr_Vehicleinfosta_4.isa, v47, v48, v49, v46);
    [a2 setVehicleInfoInitialData:{objc_msgSend(v3, "objectForKey:", v45)}];
  }

  else
  {
    NSLog(&cfstr_Vehicleinfosta_5.isa, v47, v48, v49);
  }

  [a2 setCameraComponents:{objc_msgSend(v3, "objectForKey:", *MEMORY[0x277D18378])}];
  v50 = *MEMORY[0x277D18440];
  if ([v3 objectForKey:*MEMORY[0x277D18440]])
  {
    v69 = v3;
    v70 = a2;
    v51 = [v3 objectForKey:v50];
    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v51;
    v73 = [v51 countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v73)
    {
      v71 = *v88;
      do
      {
        v52 = 0;
        do
        {
          if (*v88 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v87 + 1) + 8 * v52);
          v76 = v52;
          v53 = [obj objectForKey:?];
          v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v54 = [v53 countByEnumeratingWithState:&v83 objects:v92 count:16];
          if (v54)
          {
            v55 = v54;
            v77 = *v84;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v84 != v77)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v83 + 1) + 8 * i);
                v58 = [v53 objectForKey:v57];
                v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v60 = [v58 countByEnumeratingWithState:&v79 objects:v91 count:16];
                if (v60)
                {
                  v61 = v60;
                  v62 = *v80;
                  do
                  {
                    for (j = 0; j != v61; ++j)
                    {
                      if (*v80 != v62)
                      {
                        objc_enumerationMutation(v58);
                      }

                      [v59 setObject:objc_msgSend(v58 forKey:{"objectForKey:", *(*(&v79 + 1) + 8 * j)), *(*(&v79 + 1) + 8 * j)}];
                    }

                    v61 = [v58 countByEnumeratingWithState:&v79 objects:v91 count:16];
                  }

                  while (v61);
                }

                [v78 setObject:v59 forKey:v57];
              }

              v55 = [v53 countByEnumeratingWithState:&v83 objects:v92 count:16];
            }

            while (v55);
          }

          [v72 setObject:v78 forKey:v75];

          v52 = v76 + 1;
        }

        while (v76 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v73);
    }

    a2 = v70;
    [v70 setAudioPorts:v72];

    v3 = v69;
  }

  v64 = *MEMORY[0x277D18418];
  if ([v3 objectForKey:*MEMORY[0x277D18418]])
  {
    v65 = [objc_msgSend(v3 objectForKey:{v64), "BOOLValue"}];
  }

  else
  {
    v65 = 0;
  }

  [a2 setPointOfInterestHandoffEnabled:v65];
  v66 = EAWeakLinkStringConstant("kACCExternalAccessoryPrimaryUUID", 6);
  if (v66)
  {
    v67 = v66;
    if ([v3 objectForKey:v66])
    {
      [a2 setCoreAccessoryPrimaryUUID:{objc_msgSend(v3, "objectForKey:", v67)}];
      NSLog(&cfstr_Externalaccess_74.isa, [a2 coreAccessoryPrimaryUUID]);
      [a2 setCreatedByCoreAccessories:1];
    }

    else
    {
      NSLog(&cfstr_Externalaccess_76.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Externalaccess_75.isa);
  }

  v68 = *MEMORY[0x277D85DE8];
}

id __findAccessoryByUUID(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  [__accessoryListLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if (a1)
        {
          v8 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v8 "coreAccessoriesPrimaryUUID")])
          {
            v9 = v8;
            if (+[EAAccessoryManager isLoggingEnabled])
            {
              NSLog(&cfstr_Externalaccess_77.isa, v9, a1);
            }

            goto LABEL_13;
          }
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    NSLog(&cfstr_Externalaccess_78.isa, a1);
  }

  [__accessoryListLock unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void __notificationCleanup(const void *a1)
{
  if (_BTPickerUnsupportedNotificationRef == a1)
  {
    CFRelease(a1);
    _BTPickerUnsupportedNotificationRef = 0;
  }
}

id __findAccessory(unsigned int a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  [__accessoryListLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if (a1)
        {
          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 connectionID] == a1)
          {
            v9 = v8;
            if (+[EAAccessoryManager isLoggingEnabled])
            {
              NSLog(&cfstr_Externalaccess_79.isa, v9, a1);
            }

            goto LABEL_13;
          }
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    NSLog(&cfstr_Externalaccess_80.isa, a1);
  }

  [__accessoryListLock unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2382EACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382EB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getBTDevicePickerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getBTDevicePickerClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getBTDevicePickerClass_softClass;
  if (!getBTDevicePickerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getBTDevicePickerClass_block_invoke;
    v2[3] = &unk_278A4E860;
    v2[4] = &v3;
    __getBTDevicePickerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2382EDAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBTDevicePickerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreBluetoothUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreBluetoothUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278A4E880;
    v6 = 0;
    CoreBluetoothUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBluetoothUILibraryCore_frameworkLibrary)
  {
    __getBTDevicePickerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BTDevicePicker");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBTDevicePickerClass_block_invoke_cold_1();
  }

  getBTDevicePickerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreBluetoothUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreBluetoothUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *EAUIApplicationDidEnterBackgroundNotification()
{
  v1 = uikitFramework_0;
  if (uikitFramework_0)
  {
    v1 = dlsym(uikitFramework_0, "UIApplicationDidEnterBackgroundNotification");
    if (v1)
    {
      v1 = [MEMORY[0x277CCACA8] stringWithString:*v1];
    }

    v0 = vars8;
  }

  return v1;
}

void *EAWeakLinkSymbol(const char *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

void *EAWeakLinkStringConstant(const char *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {
    result = dlsym(result, a1);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

void __getBTDevicePickerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getBTDevicePickerClass(void)_block_invoke") description:{@"EABluetoothAccessoryPicker.m", 22, @"Unable to find class %s", "BTDevicePicker"}];
  __break(1u);
}

void __getBTDevicePickerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreBluetoothUILibrary(void)") description:{@"EABluetoothAccessoryPicker.m", 20, @"%s", *a1}];
  __break(1u);
}