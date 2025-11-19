uint64_t usbUtil_getInterfaceAndNameString(io_service_t a1, uint64_t a2, io_service_t a3, const __CFUUID *a4, void *a5)
{
  v93 = *MEMORY[0x277D85DE8];
  theInterface = 0;
  theScore = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "usbUtil_getInterfaceAndNameString";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a1;
    *&buf[24] = 1024;
    *&buf[26] = a5 != 0;
    _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: interface %d, device %d, out provided %d", buf, 0x1Eu);
  }

  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v11 = IOCreatePlugInInterfaceForService(a1, v9, v10, &theInterface, &theScore);
  v12 = 0;
  if (!v11)
  {
    if (theInterface)
    {
      v59 = 0;
      v57 = 0;
      v58 = 0;
      v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v15 = IOCreatePlugInInterfaceForService(a3, v13, v14, &v58, &theScore);
      v12 = 0;
      if (!v15)
      {
        v16 = v58;
        if (v58)
        {
          QueryInterface = (*v58)->QueryInterface;
          v18 = CFUUIDGetUUIDBytes(a4);
          v19 = (QueryInterface)(v16, *&v18.byte0, *&v18.byte8, &v57);
          if (((*v58)->Release)(v58))
          {
            v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v20)
            {
              usbUtil_getInterfaceAndNameString_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
            }
          }

          v12 = 0;
          if (!v19)
          {
            if (v57)
            {
              if ((*(*v57 + 344))(v57, &v59))
              {
LABEL_16:
                v12 = 0;
                goto LABEL_17;
              }

              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              memset(buf, 0, sizeof(buf));
              v53[0] = 1664;
              v53[1] = v59 | 0x300;
              v54 = 16778249;
              v55 = buf;
              v56 = 0;
              if ((*(*v57 + 192))(v57, 0, v53))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  usbUtil_getInterfaceAndNameString_cold_2();
                }

                goto LABEL_16;
              }

              v30 = v56;
              v31 = v55;
              if (v56 < 4)
              {
                LODWORD(v32) = v56;
              }

              else
              {
                v32 = (v56 - 2);
                if (v55[v32])
                {
                  goto LABEL_26;
                }

                v33 = v56 - 1;
                if (v55[(v56 - 1)])
                {
                  goto LABEL_26;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v34 = v31[v32];
                  v35 = v31[v33];
                  *v62 = 136317186;
                  v63 = "usbUtil_getInterfaceAndNameString";
                  v64 = 1024;
                  v65 = 93;
                  v66 = 1024;
                  v67 = a3;
                  v68 = 1024;
                  *v69 = v59;
                  *&v69[4] = 2048;
                  *&v69[6] = v31;
                  v70 = 1024;
                  v71 = v34;
                  v72 = 1024;
                  v73 = v35;
                  v74 = 1024;
                  v75 = v30;
                  v76 = 1024;
                  v77 = v30 - 2;
                  _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d interface %d, stringIndex %d, pData[end] %p [%02x %02x], Adjust wLenDone %d -> %d", v62, 0x40u);
                }
              }

              if (v32 < 3)
              {
                goto LABEL_31;
              }

              v32 = (v32 - 2);
LABEL_26:
              v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v31 + 2 length:v32 encoding:2483028224];
              if (v36)
              {
                v12 = v36;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v62 = 136315906;
                  v63 = "usbUtil_getInterfaceAndNameString";
                  v64 = 1024;
                  v65 = a3;
                  v66 = 1024;
                  v67 = v59;
                  v68 = 2112;
                  *v69 = v12;
                  _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: interface %d, stringIndex %d, name '%@'", v62, 0x22u);
                }

                if (a5)
                {
                  *a5 = v57;
                  goto LABEL_17;
                }

                goto LABEL_34;
              }

LABEL_31:
              v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v37)
              {
                usbUtil_getInterfaceAndNameString_cold_3(v37, v38, v39, v40, v41, v42, v43, v44);
              }

              v12 = 0;
LABEL_34:
              if ((*(*v57 + 24))(v57))
              {
                v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                if (v45)
                {
                  usbUtil_getInterfaceAndNameString_cold_1(v45, v46, v47, v48, v49, v50, v51, v52);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t usbUtil_findParentOfClass(io_object_t a1, const char *a2, const char *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    usbUtil_findParentOfClass_cold_1();
  }

  parent = 0;
  IOObjectRetain(a1);
  if (a1)
  {
    while (1)
    {
      ParentEntry = IORegistryEntryGetParentEntry(a1, a3, &parent);
      IOObjectRelease(a1);
      if (ParentEntry)
      {
        break;
      }

      if (IOObjectConformsTo(parent, a2))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          usbUtil_findParentOfClass_cold_3();
        }

        goto LABEL_12;
      }

      a1 = parent;
      parent = 0;
      if (!a1)
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      usbUtil_findParentOfClass_cold_2(a2);
    }
  }

LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v11 = "usbUtil_findParentOfClass";
    v12 = 1024;
    v13 = 169;
    v14 = 1024;
    v15 = parent;
    v16 = 2080;
    v17 = a2;
    v18 = 2080;
    v19 = a3;
    _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s:%d parent %d after Looking for match for %s in plane %s", buf, 0x2Cu);
  }

  result = parent;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id acc_userNotifications_generateIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a1, a2];
    v2 = vars8;
  }

  return v3;
}

ACCUserNotification *acc_userNotifications_accessoryNotSupported()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Not Supported" value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"This accessory is not supported by this device." value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setPresentViaSystemAperture:1];

  return v0;
}

ACCUserNotification *acc_userNotifications_chargingNotSupported()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Charging Not Supported" value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"Charging with this accessory is not supported by Apple Device." value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  v5 = acc_strings_bundle();
  v6 = [v5 localizedStringForKey:@"Dismiss" value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setDefaultButtonName:v6];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

ACCUserNotification *acc_userNotifications_unlockToUseAccessories()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Connected" value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = MEMORY[0x277CCACA8];
  v4 = acc_strings_bundle();
  v5 = [v4 localizedStringForKey:@"Unlock %@ to use accessories" value:&stru_2848FDF20 table:0];
  v6 = [v3 stringWithFormat:v5, systemInfo_copyDeviceClass()];
  [(ACCUserNotification *)v0 setMessage:v6];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setDismissOnUnlock:1];
  [(ACCUserNotification *)v0 setIgnoreQuietMode:1];
  [(ACCUserNotification *)v0 setSystemSoundID:&unk_284901990];

  return v0;
}

ACCUserNotification *acc_userNotifications_disabledHSAID()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:1];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Serial Boot-Arg Detected" value:&stru_2848FDF20 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"There are known compatibility issues with the 'serial' boot-arg and Smart Connector accessories value:even for those not using HSAID. Please disable the 'serial' boot-arg when using Smart Connector accessories." table:{&stru_2848FDF20, 0}];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

uint64_t acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

uint64_t acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

uint64_t acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *gLogObjects;
  }

  return v2;
}

void __AppleUSBHostBillboardDeviceAdded(void *a1, io_iterator_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "__AppleUSBHostBillboardDeviceAdded";
    v20 = 1024;
    v21 = [v3 accessoryUSBBillboardDeviceVIDPID];
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: listener(0x%X) = %@", buf, 0x1Cu);
  }

  v7 = IOIteratorNext(a2);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects)
      {
        v12 = gNumLogObjects < 1;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v19 = v10;
          v20 = 1024;
          v21 = v11;
          _os_log_error_impl(&dword_2336F5000, v9, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v13 = v9;
        v14 = v9;
      }

      else
      {
        v14 = *gLogObjects;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "__AppleUSBHostBillboardDeviceAdded";
        v20 = 1024;
        v21 = v8;
        _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: Connected BillboardDevice service with service %d", buf, 0x12u);
      }

      [v3 AppleUSBHostBillboardDeviceServiceArrived:v8];
      IOObjectRelease(v8);
      v8 = IOIteratorNext(a2);
    }

    while (v8);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __AppleUSBHostBillboardDeviceAdded_cold_3(v3);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __AppleUSBHostBillboardDeviceTerminated(void *a1, io_iterator_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "__AppleUSBHostBillboardDeviceTerminated";
    v20 = 1024;
    v21 = [v3 accessoryUSBBillboardDeviceVIDPID];
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: listener(0x%X) = %@", buf, 0x1Cu);
  }

  v7 = IOIteratorNext(a2);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects)
      {
        v12 = gNumLogObjects < 1;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v19 = v10;
          v20 = 1024;
          v21 = v11;
          _os_log_error_impl(&dword_2336F5000, v9, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v13 = v9;
        v14 = v9;
      }

      else
      {
        v14 = *gLogObjects;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "__AppleUSBHostBillboardDeviceTerminated";
        v20 = 1024;
        v21 = v8;
        _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: Terminated BillboardDevice service with service %d", buf, 0x12u);
      }

      [v3 AppleUSBHostBillboardDeviceServiceTerminated:v8];
      IOObjectRelease(v8);
      v8 = IOIteratorNext(a2);
    }

    while (v8);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __AppleUSBHostBillboardDeviceTerminated_cold_3(v3);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_2336FABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2336FFCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_233700004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2337019C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233701B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233701CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233701E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_6(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t __systemInfo_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_isInternalBuild_internalBuild = result;
  return result;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t __systemInfo_systemSupportsPearl_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsPearl_supportsPearl = result;
  return result;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

uint64_t __systemInfo_systemSupportsWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsWAPI_supportsWAPI = result;
  return result;
}

uint64_t systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
  return result;
}

uint64_t __systemInfo_copyRegionCode_block_invoke()
{
  result = MGCopyAnswer();
  systemInfo_copyRegionCode_regionCode = result;
  return result;
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_233713000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_233713000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 240);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

id logObjectForModule_0()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_0();
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *gLogObjects;
  }

  return v2;
}

uint64_t findPipe(uint64_t a1, unsigned int a2, int a3, int a4, unsigned __int8 *a5, _WORD *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a2)
  {
    v11 = 3758097084;
    goto LABEL_41;
  }

  v8 = 1;
  v9 = MEMORY[0x277D86220];
  v10 = 1;
  while (1)
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v11 = (*(*a1 + 208))(a1, v10, &v29 + 1, &v29, &v28, &v27, &v26);
    if (v11)
    {
      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects)
      {
        v14 = gNumLogObjects < 1;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v31 = v12;
          *&v31[8] = 1024;
          v32 = v13;
          _os_log_error_impl(&dword_2336F5000, v9, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v15 = v9;
        v17 = v9;
      }

      else
      {
        v17 = *gLogObjects;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v31 = v11;
        *&v31[4] = 1024;
        *&v31[6] = v8;
        _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "GetPipeProperties failed with error: %08x for currentPipeRef: %d", buf, 0xEu);
      }

      goto LABEL_25;
    }

    if (HIBYTE(v29) == a3 && v28 == a4)
    {
      break;
    }

LABEL_25:
    v8 = ++v10;
    if (v10 > a2)
    {
      goto LABEL_41;
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v31 = a3;
    *&v31[4] = 1024;
    *&v31[6] = a4;
    _os_log_impl(&dword_2336F5000, v18, OS_LOG_TYPE_INFO, "found USB pipe successfully for direction %d and type %d", buf, 0xEu);
  }

  if (a5)
  {
    *a5 = v10;
  }

  if (a6)
  {
    *a6 = v27;
  }

  v11 = 0;
LABEL_41:
  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

void InterruptReadCompletion(void *a1, int a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v30 = 67109888;
    v31 = a2;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = [v5 interruptBulkReadAllocCount];
    v36 = 1024;
    v37 = [v5 interruptBulkReadReleaseCount];
    _os_log_debug_impl(&dword_2336F5000, v8, OS_LOG_TYPE_DEBUG, "InterruptReadCompletion: result=%d numBytesRead=%u, counts %d : %d", &v30, 0x1Au);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      InterruptReadCompletion_cold_3();
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    InterruptReadCompletion_cold_5();
  }

  v13 = [v5 hasReadInterruptPipe];
  if (!a2 && v13)
  {
    v14 = [[IAPDataBuffer alloc] initWithiAPInterface:v5];
    v15 = [v5 interruptBulkReadList];
    [v15 addObject:v14];

    [v5 setInterruptBulkReadAllocCount:{objc_msgSend(v5, "interruptBulkReadAllocCount") + 1}];
    LODWORD(v15) = [v5 interruptBulkReadAllocCount];
    if (v15 - [v5 interruptBulkReadReleaseCount] >= 2)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v5 interruptBulkReadAllocCount];
        v19 = [v5 interruptBulkReadReleaseCount];
        v30 = 67109376;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEFAULT, "InterruptReadCompletion: mismatched interrupt and read? counts %d : %d   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<", &v30, 0xEu);
      }
    }

    v20 = v14;
    v21 = [(IAPDataBuffer *)v20 parentiAPInterface];
    v22 = v21;
    if (v21 && *[v21 interface] && (*(*objc_msgSend(v22, "interface") + 264))(objc_msgSend(v22, "interface"), objc_msgSend(v22, "bulkInPipeRef"), v20->_dataBufferIn, LODWORD(v20->_dataBufferInLen), ReadCompletion, v20))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v23 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        InterruptReadCompletion_cold_8();
      }
    }
  }

  if (!v5 || !*[v5 interface])
  {
    goto LABEL_70;
  }

  if (![v5 interruptInPipeBuffer])
  {
    [v5 setInterruptInPipeBuffer:{malloc_type_calloc(1uLL, objc_msgSend(v5, "interruptInPipeMaxPacketSize"), 0xE2CCFBB6uLL)}];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    InterruptReadCompletion_cold_10();
  }

  if ((*(*[v5 interface] + 264))(objc_msgSend(v5, "interface"), objc_msgSend(v5, "interruptInPipeRef"), objc_msgSend(v5, "interruptInPipeBuffer"), objc_msgSend(v5, "interruptInPipeMaxPacketSize"), InterruptReadCompletion, v5))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      InterruptReadCompletion_cold_12();
    }
  }

  else
  {
LABEL_70:
    [v5 setHasReadInterruptPipe:1];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void ReadCompletion(void *a1, int a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 parentiAPInterface];
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v35 = 67109888;
    v36 = a2;
    v37 = 1024;
    *v38 = a3;
    *&v38[4] = 1024;
    *&v38[6] = [v6 interruptBulkReadAllocCount];
    LOWORD(v39[0]) = 1024;
    *(v39 + 2) = [v6 interruptBulkReadReleaseCount];
    _os_log_debug_impl(&dword_2336F5000, v9, OS_LOG_TYPE_DEBUG, "ReadCompletion: result=%d numBytesRead=%u, counts %d : %d", &v35, 0x1Au);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ReadCompletion_cold_3();
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v12 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    ReadCompletion_cold_5();
  }

  if (a3)
  {
    if (v6)
    {
      v14 = [v6 dataInHandler];

      if (v14)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:v5[1] length:a3];
        v16 = [v6 dataInHandler];
        (v16)[2](v16, v6, v15);

LABEL_36:
        v18 = [v6 interruptInPipeRef] != 0;
        goto LABEL_55;
      }
    }
  }

  v17 = [v6 dataInHandler];

  if (!v17)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v19 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ReadCompletion_cold_8();
    }

LABEL_53:

    if (v5)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

  if (!a3)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v19 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_2336F5000, v19, OS_LOG_TYPE_DEFAULT, "no bytes read!", &v35, 2u);
    }

    goto LABEL_53;
  }

  if (v5)
  {
    goto LABEL_36;
  }

LABEL_54:
  v18 = 0;
LABEL_55:
  if ([v6 interruptInPipeRef] && (!objc_msgSend(v6, "interruptInPipeRef") || v5[2] > a3))
  {
    goto LABEL_99;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v22 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v6 interruptInPipeRef];
    v34 = v5[1];
    v35 = 67109634;
    v36 = v33;
    v37 = 2080;
    *v38 = v34;
    *&v38[8] = 1024;
    v39[0] = a3;
    _os_log_debug_impl(&dword_2336F5000, v22, OS_LOG_TYPE_DEBUG, "interruptInPipeRef = %d, dataBufferInLen = %s, numBytesRead = %d", &v35, 0x18u);
  }

  if (!v6 || !*[v6 interface])
  {
    goto LABEL_99;
  }

  v24 = (*(*[v6 interface] + 264))(objc_msgSend(v6, "interface"), objc_msgSend(v6, "bulkInPipeRef"), v5[1], *(v5 + 4), ReadCompletion, v5);
  if (v24 != -536850432)
  {
    goto LABEL_82;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(v35) = 0;
    _os_log_impl(&dword_2336F5000, v25, OS_LOG_TYPE_INFO, "USB Pipe stalled, clear and retry!", &v35, 2u);
  }

  if (!(*(*[v6 interface] + 240))(objc_msgSend(v6, "interface"), objc_msgSend(v6, "bulkInPipeRef")))
  {
    v24 = (*(*[v6 interface] + 264))(objc_msgSend(v6, "interface"), objc_msgSend(v6, "bulkInPipeRef"), v5[1], *(v5 + 4), ReadCompletion, v5);
LABEL_82:
    if (!v24)
    {
      goto LABEL_101;
    }

    goto LABEL_90;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v27 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    ReadCompletion_cold_12();
  }

LABEL_90:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v29 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v29 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    ReadCompletion_cold_14();
  }

LABEL_99:
  if (v18)
  {
    [v6 setInterruptBulkReadReleaseCount:{objc_msgSend(v6, "interruptBulkReadReleaseCount") + 1}];
    v31 = [v6 interruptBulkReadList];
    [v31 removeObject:v5];
  }

LABEL_101:

  v32 = *MEMORY[0x277D85DE8];
}

void __61__iAP2EASession_initWithProtocol_endpointUUID_eaSessionUUID___block_invoke()
{
  if (EANativeSessionStatus == -1)
  {
    EANativeSessionStatus = 0;
  }
}

void _StaticSockCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v8 = a5;
  switch(a2)
  {
    case 1:
      v9 = v8;
      [v8 _readSocketCB:a1];
      break;
    case 8:
      v9 = v8;
      [v8 _writeSocketCB:a1];
      break;
    case 2:
      v9 = v8;
      [v8 _acceptSocketCB:a1 acceptedSock:*a4];
      break;
    default:
      goto LABEL_8;
  }

  v8 = v9;
LABEL_8:
}

void _StaticUSBWriteComplete(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setUsbError:a2];
  v6 = [v5 eaInterface];
  [v6 _writeComplete:v5 writeLength:a3];
}

void _StaticUSBReadComplete(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setUsbError:a2];
  v6 = [v5 eaInterface];
  [v6 _readComplete:v5 readLength:a3];
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_233713000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_233713000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 240);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

const void *platform_systemInfo_copySystemName()
{
  v0 = MGGetStringAnswer();
  CFRetain(v0);
  return v0;
}

const void *platform_systemInfo_copyBluetoothMACAddress()
{
  v0 = MGGetStringAnswer();
  CFRetain(v0);
  return v0;
}

uint64_t _isDeviceClass(void *a1)
{
  v1 = a1;
  v2 = systemInfo_copyDeviceClass();
  v3 = [v2 isEqualToString:v1];

  return v3;
}

BOOL platform_systemInfo_isApplePencilGen1Supported()
{
  result = 0;
  if (MGGetBoolAnswer())
  {
    v0 = MGCopyAnswer();
    if ((MGGetBoolAnswer() & 1) != 0 || CFStringCompare(v0, @"iPad13,20", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,21", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad15,7", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad15,8", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,18", 0) == kCFCompareEqualTo || CFStringCompare(v0, @"iPad13,19", 0) == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return result;
}

uint64_t platform_systemInfo_deviceType()
{
  if (_isDeviceClass(@"Watch"))
  {
    return 4;
  }

  if (_isDeviceClass(@"iPod"))
  {
    return 2;
  }

  if (_isDeviceClass(@"iPad"))
  {
    return 3;
  }

  if (_isDeviceClass(@"iPhone"))
  {
    return 1;
  }

  if (_isDeviceClass(@"AppleTV"))
  {
    return 5;
  }

  return 0;
}

void _asyncCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218752;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "_asyncReadCallback %p %x %llx %llx\n", &v17, 0x26u);
  }

  v11 = a1;
  if (a3)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2336F5000, v12, OS_LOG_TYPE_DEFAULT, "POLLIN", &v17, 2u);
    }

    [v11 _handleReadDataCallback:a2 revent:a3 t_look:a4];
  }

  if ((a3 & 0x10) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "POLLHUP", &v17, 2u);
    }

    [v11 closeCDCInterface];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  init_logging_signposts();
}

void usbUtil_getInterfaceAndNameString_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1(&dword_2336F5000, MEMORY[0x277D86220], a3, "%s: error releasing plugin interface", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void usbUtil_getInterfaceAndNameString_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = v0;
  _os_log_error_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: error calling ControlRequest on interface, 0x%x", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void usbUtil_getInterfaceAndNameString_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1(&dword_2336F5000, MEMORY[0x277D86220], a3, "%s: Empty interfaceNameString", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void usbUtil_findParentOfClass_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s:%d Looking for match for %s in plane %s", v3, 0x26u);
  v2 = *MEMORY[0x277D85DE8];
}

void usbUtil_findParentOfClass_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Couldn't find parent matching class: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void usbUtil_findParentOfClass_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s:%d Found match for %s!", v1, 0x1Cu);
  v0 = *MEMORY[0x277D85DE8];
}

void logObjectForModule_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_2336F5000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

void __AppleUSBHostBillboardDeviceAdded_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 accessoryUSBBillboardDeviceVIDPID];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_2336F5000, v1, v2, "%s: EXIT listener(0x%X) = %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __AppleUSBHostBillboardDeviceTerminated_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 accessoryUSBBillboardDeviceVIDPID];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_2336F5000, v1, v2, "%s: EXIT listener(0x%X) = %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductVersion()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

void logObjectForModule_cold_1_0()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void InterruptReadCompletion_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void InterruptReadCompletion_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void InterruptReadCompletion_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void InterruptReadCompletion_cold_10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void InterruptReadCompletion_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void ReadCompletion_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void ReadCompletion_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void ReadCompletion_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void ReadCompletion_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void ReadCompletion_cold_14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_2336F5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

uint64_t platform_systemInfo_copyUniqueDeviceID()
{
  v0 = IOServiceMatching("IOUSBDeviceController");
  if (!v0)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceDescription", *MEMORY[0x277CBECE8], 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    v5 = [CFProperty objectForKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v5 = 0;
  }

  IOObjectRelease(v2);

  return v5;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}