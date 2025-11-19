void IOAccMgrNotifyEvent(uint64_t a1, uint64_t a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v6 = [v5 basePortForService:a2];
  v7 = v6;
  if (!v6)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 5;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "IOAccMgrNotifyEvent: ACCTransportIOAccessoryConfigStream service has been removed", &v35, 2u);
    }

    goto LABEL_37;
  }

  if (a3 == -469794780)
  {
    [v6 handlePropertyDataReceived];
  }

  else if (a3 == -469794781)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 endpointUUID];
      v35 = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "kIOAccessoryConfigStreamMessageInfoChanged! (configStream: %@, configStream.endpointUUID: %@)", &v35, 0x16u);
    }

    v14 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryName", *MEMORY[0x277CBECE8], 0);
    v16 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessorySerialNumber", v14, 0);
    v17 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryManufacturer", v14, 0);
    v18 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryModelNumber", v14, 0);
    v19 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryFirmwareVersion", v14, 0);
    v20 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryHardwareVersion", v14, 0);
    v21 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryConfigStreamDevInfoPPID", v14, 0);
    [v7 setDeviceName:CFProperty];

    [v7 setDeviceManufacturer:v17];
    [v7 setDeviceModel:v18];

    [v7 setDeviceSerialNumber:v16];
    [v7 setDeviceHardwareVersion:v20];

    [v7 setDeviceFirmwareVersion:v19];
    [v7 setDevicePPID:v21];

    v22 = [v7 delegate];
    [v22 IOAccessoryConfigStreamUpdateAccesssoryInfo:v7];

    if (([v7 categoriesAvailable] & 1) == 0)
    {
      v23 = [v7 delegate];
      if (v23)
      {
        v24 = v23;
        v25 = [v7 deviceHardwareVersion];
        if (v25)
        {

          goto LABEL_28;
        }

        v26 = [v7 devicePPID];

        if (v26)
        {
LABEL_28:
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v27 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v27 = MEMORY[0x277D86220];
            v28 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v29 = [v7 endpointUUID];
            v30 = [v7 deviceHardwareVersion];
            v31 = [v7 devicePPID];
            v35 = 138413058;
            v36 = v7;
            v37 = 2112;
            v38 = v29;
            v39 = 2112;
            v40 = v30;
            v41 = 2112;
            v42 = v31;
            _os_log_impl(&dword_233656000, v27, OS_LOG_TYPE_INFO, "kIOAccessoryConfigStreamMessageInfoChanged! (configStream: %@, configStream.endpointUUID: %@), hwVer = '%@', ppid = '%@', set CategoriesAvailable", &v35, 0x2Au);
          }

          [v7 setCategoriesAvailable:1];
          v35 = -65536;
          v36 = 0;
          v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
          [v11 appendBytes:&v35 length:12];
          v32 = [v7 delegate];
          v33 = [v7 endpointUUID];
          [v32 IOAccessoryConfigStreamMessageArrived:v11 endpointUUID:v33];

LABEL_37:
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void IOAccMgrNotifyEvent_0(void *a1, uint64_t a2, int a3)
{
  v181 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (a3 == -469794716 || (a3 & 0xFFFFFFF0) == -469794816)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v176 = a3 + 469794816;
      *&v176[4] = 1024;
      *&v176[6] = a2;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "MgrNotifyEvent from IOAccessoryManager: msgType resistorID value %d (svc:%d)", buf, 0xEu);
    }

    [v6 _handleResistorIDChangeNotification:(a3 + 469794816)];
    v12 = 0;
    goto LABEL_296;
  }

  v10 = [v5 bAccConnected];
  v11 = [v6 bAccConnected];
  v163 = v11;
  v12 = 0;
  v166 = v6;
  if (a3 <= -469794794)
  {
    if (a3 > -469794799)
    {
      if (a3 > -469794796)
      {
        if (a3 == -469794795)
        {
          isLightning = platform_systemInfo_isLightning();
          v42 = logObjectForModule(3);
          v22 = v42;
          if (isLightning)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              IOAccMgrNotifyEvent_cold_11();
            }

            [v6 _handleUSBCurrentLimitNotification];
            goto LABEL_266;
          }

          if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            goto LABEL_257;
          }

          *buf = 0;
          v80 = "Not Lightning device, Ignore kIOAccessoryManagerMessageUSBCurrentLimitChange!!!";
        }

        else
        {
          v20 = platform_systemInfo_isLightning();
          v21 = logObjectForModule(3);
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              IOAccMgrNotifyEvent_cold_12();
            }

            [v6 _handleBatteryPackNotification];
            goto LABEL_266;
          }

          if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            goto LABEL_257;
          }

          *buf = 0;
          v80 = "Not Lightning device, Ignore kIOAccessoryManagerMessageUSBBatteryPackChange!!!";
        }

        _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_INFO, v80, buf, 2u);
LABEL_257:

LABEL_266:
        v12 = 0;
        goto LABEL_267;
      }

      if (a3 == -469794798)
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v37 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v37 = MEMORY[0x277D86220];
          v96 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          IOAccMgrNotifyEvent_cold_10();
        }

        [v6 _handlePowerChangeNotification];
        goto LABEL_266;
      }

      if (a3 == -469794796)
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v16 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v16 = MEMORY[0x277D86220];
          v48 = MEMORY[0x277D86220];
        }

        v158 = v10;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          IOAccMgrNotifyEvent_cold_14();
        }

        v160 = a2;

        v49 = +[ACCTransportIOAccessorySharedManager sharedManager];
        [v49 lockAccessoryPorts];

        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v50 = [v6 ioAccessoryChildPorts];
        v51 = [v50 countByEnumeratingWithState:&v168 objects:v174 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v169;
          v165 = *MEMORY[0x277CFD1D0];
          v164 = *MEMORY[0x277CFD1D8];
          v54 = *MEMORY[0x277CFD1E0];
          do
          {
            v55 = 0;
            do
            {
              if (*v169 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v56 = *(*(&v168 + 1) + 8 * v55);
              if ([v56 ioServiceClassType] == 1)
              {
                v57 = v56;
                v58 = [v6 getUSBMode];
                v172[0] = v165;
                v59 = [v57 ioAccPortEndpointUUID];
                if (v59)
                {
                  v167 = [v57 ioAccPortEndpointUUID];
                  v60 = v167;
                }

                else
                {
                  v60 = &stru_2848F31C8;
                }

                v173[0] = v60;
                v172[1] = v164;
                v61 = [MEMORY[0x277CCABB0] numberWithInt:v58];
                v173[1] = v61;
                v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];

                if (v59)
                {
                }

                v63 = gLogObjects;
                v64 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 4)
                {
                  v65 = *(gLogObjects + 24);
                }

                else
                {
                  v66 = v52;
                  v67 = v54;
                  v68 = v53;
                  v69 = v50;
                  v70 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v176 = v63;
                    *&v176[8] = 1024;
                    *&v176[10] = v64;
                    _os_log_error_impl(&dword_233656000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v71 = v70;
                  v65 = v70;
                  v50 = v69;
                  v53 = v68;
                  v54 = v67;
                  v52 = v66;
                }

                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                {
                  v73 = [v57 ioAccPortEndpointUUID];
                  v74 = &stru_2848F31C8;
                  if (v73)
                  {
                    v162 = [v57 ioAccPortEndpointUUID];
                    v74 = v162;
                  }

                  *buf = 138412290;
                  *v176 = v74;
                  _os_log_debug_impl(&dword_233656000, v65, OS_LOG_TYPE_DEBUG, "Sending ACCPlatformUSBModePlugin_USBModeDidChangeNotification for endpointUUID %@", buf, 0xCu);
                  if (v73)
                  {
                  }
                }

                v72 = [MEMORY[0x277CCAB98] defaultCenter];
                [v72 postNotificationName:v54 object:0 userInfo:v62];

                v6 = v166;
              }

              ++v55;
            }

            while (v52 != v55);
            v75 = [v50 countByEnumeratingWithState:&v168 objects:v174 count:16];
            v52 = v75;
          }

          while (v75);
        }

        v76 = +[ACCTransportIOAccessorySharedManager sharedManager];
        [v76 unlockAccessoryPorts];

        v12 = 0;
        a2 = v160;
        v10 = v158;
      }

      goto LABEL_267;
    }

    if (a3 <= -469794801)
    {
      if (a3 != -536870896)
      {
        if (a3 != -536870608)
        {
          goto LABEL_267;
        }

        if (gLogObjects && gNumLogObjects >= 4)
        {
          v13 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v13 = MEMORY[0x277D86220];
          v44 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v176 = a2;
          _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Got kIOMessageServicePropertyChange (svc:%d) for manager, checking resistorID", buf, 8u);
        }

        AccessoryID = IOAccessoryManagerGetAccessoryID();
        if (AccessoryID > 0xF)
        {
          v84 = logObjectForModule(3);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            IOAccMgrNotifyEvent_cold_16();
          }
        }

        else
        {
          [v6 _handleResistorIDChangeNotification:AccessoryID];
        }

        [v6 _processAccessoryInfo];
        CFProperty = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryManagerInductiveAuthTimedOut", *MEMORY[0x277CBECE8], 0);
        if (!CFProperty)
        {
          goto LABEL_266;
        }

        v86 = CFProperty;
        v87 = v10;
        Value = CFBooleanGetValue(CFProperty);
        if (!Value)
        {
          goto LABEL_319;
        }

        v89 = Value;
        if ([v6 isAuthTimedOut])
        {
          if ([v6 isAuthTimedOut])
          {
            v22 = logObjectForModule(6);
            v10 = v87;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              IOAccMgrNotifyEvent_cold_19();
            }

            goto LABEL_257;
          }

          goto LABEL_319;
        }

        v142 = logObjectForModule(3);
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = [v6 isAuthTimedOut];
          v144 = [v6 bIsInductive];
          *buf = 67110146;
          *v176 = a2;
          *&v176[4] = 2112;
          *&v176[6] = v86;
          *&v176[14] = 1024;
          *&v176[16] = v143;
          v177 = 1024;
          v178 = v89;
          v179 = 1024;
          v180 = v144;
          _os_log_impl(&dword_233656000, v142, OS_LOG_TYPE_DEFAULT, "(svc:%d) kIOAccessoryManagerInductiveAuthTimedOutKey = %@, authTimedOut %d -> %d, bIsInductive=%d", buf, 0x24u);
        }

        [v6 setIsAuthTimedOut:1];
        if (!acc_userDefaults_BOOLForKey(@"EnableAuthTimeoutTTR"))
        {
          v22 = logObjectForModule(6);
          v10 = v87;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            IOAccMgrNotifyEvent_cold_17();
          }

          goto LABEL_257;
        }

        v145 = [v6 bIsInductive];
        v146 = [v6 bIsInductivePowerToAccessory];
        v147 = acc_userDefaults_BOOLForKey(@"AuthTTRForAllTransports");
        v148 = MGGetSInt32Answer();
        v149 = v148;
        if (!v145 || (v146 & 1) != 0)
        {
          if (v148 == 6)
          {
            v151 = 1;
          }

          else
          {
            v151 = v147;
          }

          if (v151 != 1)
          {
            goto LABEL_319;
          }

          v150 = 0;
        }

        else
        {
          v150 = acc_userDefaults_BOOLForKey(@"DisableInductiveAuthTTR");
        }

        if (!CFBooleanGetValue(v86))
        {
LABEL_319:
          v12 = 0;
LABEL_320:
          v10 = v87;
          goto LABEL_267;
        }

        if (v149 == 6)
        {
          v152 = acc_userNotifications_chargingNotSupported();
          v153 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v6, "ioService")];
          v154 = acc_userNotifications_generateIdentifier(@"io-service", v153);
          [v152 setGroupIdentifier:v154];

          v155 = +[ACCUserNotificationManager sharedManager];
          [v155 presentNotification:v152 completionHandler:0];

LABEL_318:
          goto LABEL_319;
        }

        v156 = logObjectForModule(3);
        v152 = v156;
        if (v150)
        {
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *v176 = "IOAccMgrNotifyEvent";
            _os_log_impl(&dword_233656000, v152, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager:%s Skipped timeout TTR!!!", buf, 0xCu);
          }

          goto LABEL_318;
        }

        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
        {
          IOAccMgrNotifyEvent_cold_18();
        }

        v157 = acc_userDefaultsIapd_copyIntegerForKey(@"PretendBatteryLevel");
        v12 = 0;
        if ([v6 batteryChargeLevelPercent] > 0x4F)
        {
          goto LABEL_320;
        }

        v10 = v87;
        if (v157 <= 79)
        {
          if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
          {
            acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose();
          }

          else
          {
            acc_tapToRadar_InitiateAuthTimeoutTTR();
          }

          goto LABEL_266;
        }

LABEL_267:
        v93 = v163;
        if (v10 == v163)
        {
          goto LABEL_296;
        }

        goto LABEL_268;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v35 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v35 = MEMORY[0x277D86220];
        v92 = MEMORY[0x277D86220];
      }

      v25 = v10;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v176 = a2;
        _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "Got kIOMessageServiceIsTerminated (svc:%d) for manager, informing ACCTransportIOAccessorySharedManager", buf, 8u);
      }

      v27 = +[ACCTransportIOAccessorySharedManager sharedManager];
      [v6 _clearAccessoryInfo];
      if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v27 IOAccessoryManagerServiceTerminated:a2];
      }

LABEL_206:

      v12 = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_296;
      }

      v93 = 0;
      goto LABEL_268;
    }

    if (a3 != -469794800)
    {
      v18 = -32751;
LABEL_57:
      if (a3 != (v18 | 0xE3FF0000))
      {
        goto LABEL_267;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v23 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      v25 = v10;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "kIOAccessoryManagerMessageAccIDNoneConnected";
        if (a3 == -469794799)
        {
          v26 = "kIOAccessoryManagerMessageDetach";
        }

        *buf = 136315394;
        *v176 = v26;
        *&v176[8] = 1024;
        *&v176[10] = a2;
        _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, "Got %s (svc:%d) for manager, bAccConnectedNew = no", buf, 0x12u);
      }

      v27 = +[ACCTransportIOAccessorySharedManager sharedManager];
      if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v27 IOAccessoryManagerServiceDetached:a2];
      }

      [v6 setIsAuthTimedOut:0];
      [v6 _clearAccessoryInfo];
      [v6 _handleResistorIDChangeNotification:100];
      if ([v6 connectionType] == 8)
      {
        [v6 setAccessoryPowerMode:2];
      }

      else if ([v6 connectionType] == 4)
      {
        v28 = logObjectForModule(3);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v28, OS_LOG_TYPE_DEFAULT, "unregistering battery notifications", buf, 2u);
        }

        if ([v6 batteryNotifyPortRef])
        {
          Main = CFRunLoopGetMain();
          RunLoopSource = IONotificationPortGetRunLoopSource([v6 batteryNotifyPortRef]);
          CFRunLoopRemoveSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
          IONotificationPortDestroy([v6 batteryNotifyPortRef]);
          [v6 setBatteryNotifyPortRef:0];
          [v6 setBatteryChargeLevelPercent:0];
        }

        if ([v6 notificationRef])
        {
          IOObjectRelease([v6 notificationRef]);
          [v6 setNotificationRef:0];
        }
      }

      else if ([v6 connectionType] == 3)
      {
        v81 = logObjectForModule(3);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v81, OS_LOG_TYPE_DEFAULT, "unregistering smart connector matching notification registration", buf, 2u);
        }

        if ([v6 ioAccessoryIDBusHIDDevicePortRef])
        {
          v82 = CFRunLoopGetMain();
          v83 = IONotificationPortGetRunLoopSource([v6 ioAccessoryIDBusHIDDevicePortRef]);
          CFRunLoopRemoveSource(v82, v83, *MEMORY[0x277CBF058]);
          IONotificationPortDestroy([v6 ioAccessoryIDBusHIDDevicePortRef]);
          [v6 setIoAccessoryIDBusHIDDevicePortRef:0];
        }
      }

      goto LABEL_206;
    }

    goto LABEL_47;
  }

  if (a3 <= -469794725)
  {
    if (a3 <= -469794782)
    {
      if (a3 == -469794793)
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v36 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v36 = MEMORY[0x277D86220];
          v94 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v176 = a2;
          _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_DEFAULT, "MgrNotifyEvent from IOAccessoryManager service %d: msgType kIOAccessoryManagerMessageConfigChange, checking resistorID", buf, 8u);
        }

        if (gLogObjects && gNumLogObjects >= 4)
        {
          v95 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v95 = MEMORY[0x277D86220];
          v123 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v176 = a2;
          _os_log_impl(&dword_233656000, v95, OS_LOG_TYPE_DEFAULT, "Not setting bAccConnectedNew for kIOAccessoryManagerMessageConfigChange service %d", buf, 8u);
        }

        v124 = IOAccessoryManagerGetAccessoryID();
        if (v124 > 0xF)
        {
          v128 = logObjectForModule(3);
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            IOAccMgrNotifyEvent_cold_24();
          }
        }

        else
        {
          [v6 _handleResistorIDChangeNotification:v124];
        }

        [v6 _processAccessoryInfo];
        goto LABEL_266;
      }

      if (a3 != -469794785)
      {
        goto LABEL_267;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v46 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v47 = [v6 connectionUUID];
        *buf = 138412546;
        *v176 = v6;
        *&v176[8] = 2112;
        *&v176[10] = v47;
        _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageSupervisedTransportsRestrictedChange! (accTransportIOAccMgr: %@, accTransportIOAccMgr.connectionUUID: %@)", buf, 0x16u);
      }

      v22 = +[ACCTransportIOAccessorySharedManager sharedManager];
      if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        -[NSObject IOAccessoryManagerSupervisedTransportsRestrictedDidChange:forManager:](v22, "IOAccessoryManagerSupervisedTransportsRestrictedDidChange:forManager:", [v6 supervisedTransportsRestricted], v6);
      }

      goto LABEL_257;
    }

    if (a3 == -469794781)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v40 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v40 = MEMORY[0x277D86220];
        v99 = MEMORY[0x277D86220];
      }

      v159 = v10;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v100 = [v6 connectionUUID];
        *buf = 138412546;
        *v176 = v6;
        *&v176[8] = 2112;
        *&v176[10] = v100;
        _os_log_impl(&dword_233656000, v40, OS_LOG_TYPE_INFO, "kIOAccessoryConfigStreamMessageInfoChanged! (accTransportIOAccMgr: %@, accTransportIOAccMgr.connectionUUID: %@)", buf, 0x16u);
      }

      v101 = +[ACCTransportIOAccessorySharedManager sharedManager];
      v102 = *MEMORY[0x277CBECE8];
      v103 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryName", *MEMORY[0x277CBECE8], 0);
      v104 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessorySerialNumber", v102, 0);
      v105 = a2;
      v106 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryAccessoryManufacturer", v102, 0);
      v107 = IORegistryEntryCreateCFProperty(v105, @"IOAccessoryAccessoryModelNumber", v102, 0);
      v108 = IORegistryEntryCreateCFProperty(v105, @"IOAccessoryAccessoryFirmwareVersion", v102, 0);
      v109 = IORegistryEntryCreateCFProperty(v105, @"IOAccessoryAccessoryHardwareVersion", v102, 0);
      v110 = IORegistryEntryCreateCFProperty(v105, @"IOAccessoryAccessoryPPID", v102, 0);
      v161 = v105;
      v111 = IORegistryEntryCreateCFProperty(v105, @"IOAccessoryManagerInductiveRegionCodeData", v102, 0);
      v112 = [v166 accessoryInfoLock];
      [v112 lock];

      [v166 setDeviceName:v103];
      [v166 setDeviceVendorName:v106];

      [v166 setDeviceModelNumber:v107];
      v6 = v166;
      [v166 setDeviceSerialNumber:v104];

      [v166 setDeviceHardwareRevision:v109];
      [v166 setDeviceFirmwareRevision:v108];

      [v166 setPpid:v110];
      [v166 setRegionCode:v111];

      v113 = [v166 deviceModelNumber];
      v114 = [v113 copy];

      v115 = [v166 accessoryInfoLock];
      [v115 unlock];

      if (v101 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v101 IOAccessoryManagerServiceInfoSet:v161];
      }

      v116 = [v166 deviceModelNumber];

      v10 = v159;
      if (v116)
      {
        [v166 _registerForUarpActivityForModel:v114];
      }

      v12 = 0;
      a2 = v161;
      goto LABEL_267;
    }

    if (a3 != -469794725)
    {
      goto LABEL_267;
    }

LABEL_47:
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v19 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v19 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v32 = "kIOAccessoryManagerMessageAccIDDigitalID";
      if (a3 == -469794800)
      {
        v32 = "kIOAccessoryManagerMessageAttach";
      }

      *buf = 136315394;
      *v176 = v32;
      *&v176[8] = 1024;
      *&v176[10] = a2;
      _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_DEFAULT, "Got %s (svc:%d) for manager, bAccConnectedNew = yes", buf, 0x12u);
    }

    v33 = IOAccessoryManagerGetAccessoryID();
    if (v33 > 0xF)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v34 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v34 = MEMORY[0x277D86220];
        v90 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        IOAccMgrNotifyEvent_cold_27();
      }
    }

    else
    {
      [v6 _handleResistorIDChangeNotification:v33];
    }

    if (a3 == -469794800)
    {
      if ([v6 connectionType] == 8)
      {
        [v6 setAccessoryPowerMode:4];
      }

      else if ([v6 connectionType] == 4)
      {
        v91 = logObjectForModule(3);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          IOAccMgrNotifyEvent_cold_28();
        }

        [v6 _registerForBatteryNotifications];
      }

      else if ([v6 connectionType] == 3)
      {
        [v6 _registerForIOAccessoryIDBusHIDDevice];
      }
    }

    [v6 _processAccessoryInfo];
    goto LABEL_300;
  }

  if (a3 <= -469794723)
  {
    if (a3 == -469794724)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v38 = *(gLogObjects + 24);
        v39 = v163;
      }

      else
      {
        v39 = v11;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v38 = MEMORY[0x277D86220];
        v97 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        IOAccMgrNotifyEvent_cold_6();
      }

      if (![v6 bIsInductive])
      {
        v98 = acc_userNotifications_accessoryNotSupported();
        goto LABEL_259;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v17 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v77 = MEMORY[0x277D86220];
      }

      v39 = v163;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        IOAccMgrNotifyEvent_cold_4();
      }

      if (![v6 bIsInductive])
      {
        v12 = acc_userNotifications_accessoryNotSupported();
        v78 = acc_strings_bundle();
        v79 = [v78 localizedStringForKey:@"This cable or accessory is not certified and may not work reliably with this device." value:&stru_2848F31C8 table:0];
        [(ACCUserNotification *)v12 setMessage:v79];

        goto LABEL_260;
      }
    }

    v98 = acc_userNotifications_chargingNotSupported();
LABEL_259:
    v12 = v98;
LABEL_260:
    v163 = v39;
    if (v12)
    {
      v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a2];
      v126 = acc_userNotifications_generateIdentifier(@"io-service", v125);
      [(ACCUserNotification *)v12 setGroupIdentifier:v126];

      v127 = +[ACCUserNotificationManager sharedManager];
      [v127 presentNotification:v12 completionHandler:0];
    }

    goto LABEL_267;
  }

  if (a3 != -469794722)
  {
    v18 = -32668;
    goto LABEL_57;
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v43 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v43 = MEMORY[0x277D86220];
    v117 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    IOAccMgrNotifyEvent_cold_8();
  }

  if (MFAAIsInternalBuild())
  {
    v12 = objc_alloc_init(ACCUserNotification);
    [(ACCUserNotification *)v12 setType:2];
    v118 = acc_strings_bundle();
    [v118 localizedStringForKey:@"Connector Wrong Orientation" value:&stru_2848F31C8 table:0];
    v120 = v119 = v10;
    [(ACCUserNotification *)v12 setTitle:v120];

    v10 = v119;
    v121 = acc_strings_bundle();
    v122 = [v121 localizedStringForKey:@"This connector orientation is wrong and must be inverted." value:&stru_2848F31C8 table:0];
    [(ACCUserNotification *)v12 setMessage:v122];

    [(ACCUserNotification *)v12 setIsModal:0];
    v39 = 1;
    goto LABEL_260;
  }

LABEL_300:
  v12 = 0;
  if (v10)
  {
    goto LABEL_296;
  }

  v93 = 1;
LABEL_268:
  if (![v6 bIsInductive] || (objc_msgSend(v6, "bIsInductivePowerToAccessory") & 1) != 0)
  {
    if (v93)
    {
      v129 = [v6 connectionType];
      v130 = v129;
      switch(v129)
      {
        case 1:
          goto LABEL_275;
        case 3:
LABEL_295:
          [v6 setBAccConnected:v93];
          goto LABEL_296;
        case 8:
LABEL_275:
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v131 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v131 = MEMORY[0x277D86220];
            v138 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *v176 = 30;
            *&v176[8] = 1024;
            *&v176[10] = a2;
            *&v176[14] = 1024;
            *&v176[16] = v130;
            _os_log_impl(&dword_233656000, v131, OS_LOG_TYPE_DEFAULT, "Starting AppleIDBus auth timer timeout secs:[%02lld] for IOAccMgr service:%d, connectionType:%{coreacc:ACCConnection_Type_t}d", buf, 0x18u);
          }

          v132 = [v6 authTimerAccessory];
          v139 = dispatch_time(0, 30000000000);
          dispatch_source_set_timer(v132, v139, 0xFFFFFFFFFFFFFFFFLL, 0);
          break;
        default:
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v132 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v132 = MEMORY[0x277D86220];
            v140 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            IOAccMgrNotifyEvent_cold_31();
          }

          break;
      }
    }

    else
    {
      [v6 _stopAuthTimer];
      v132 = +[ACCUserNotificationManager sharedManager];
      v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a2];
      v134 = acc_userNotifications_generateIdentifier(@"io-service", v133);
      [v132 dismissNotificationsWithGroupIdentifier:v134];
    }

    goto LABEL_295;
  }

  if ((v93 & 1) == 0)
  {
    v135 = +[ACCUserNotificationManager sharedManager];
    v136 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a2];
    v137 = acc_userNotifications_generateIdentifier(@"io-service", v136);
    [v135 dismissNotificationsWithGroupIdentifier:v137];
  }

LABEL_296:

  v141 = *MEMORY[0x277D85DE8];
}

id logObjectForModule(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v3 = MEMORY[0x277D86220];
    v2 = MEMORY[0x277D86220];
  }

  else
  {
    v3 = *(gLogObjects + 8 * a1);
  }

  return v3;
}

id logObjectForModule_0(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      logObjectForModule_cold_1_0(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8 * a1);
  }

  return v11;
}

id logObjectForModule_1(int a1)
{
  if (a1 < 0 || (gLogObjects ? (v1 = gNumLogObjects <= a1) : (v1 = 1), v1))
  {
    if (a1 != -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *(gLogObjects + 8 * a1);
  }

  return v2;
}

void notifyUserHSAIDDisabled(int a1, int a2)
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"DisableSerialBootArgDialog"];

  if (a2 == 3 && (v5 & 1) == 0)
  {
    v6 = +[BootArgs configuredBootArgsString];
    v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v8 = [v6 componentsSeparatedByCharactersInSet:v7];

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH 'serial='"];
    v10 = [v8 filteredArrayUsingPredicate:v9];

    v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v12 = [v11 invertedSet];

    v13 = [v10 firstObject];
    v14 = [v13 componentsSeparatedByCharactersInSet:v12];
    v15 = [v14 componentsJoinedByString:&stru_2848F31C8];

    v16 = gLogObjects;
    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v18 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        notifyUserHSAIDDisabled_cold_1(v16, v17);
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      notifyUserHSAIDDisabled_cold_2(v15, v18);
    }

    if ([v15 intValue])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __notifyUserHSAIDDisabled_block_invoke;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v21 = a1;
      if (notifyUserHSAIDDisabled_onceToken != -1)
      {
        dispatch_once(&notifyUserHSAIDDisabled_onceToken, block);
      }
    }
  }
}

uint64_t acc_policies_shouldHideAccessoryWithModelNumber(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"ShowHiddenAccessories"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (acc_policies_shouldHideAccessoryWithModelNumber_onceToken != -1)
    {
      acc_policies_shouldHideAccessoryWithModelNumber_cold_1();
    }

    v4 = [acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (v3)
    {
      v5 = "YES";
    }

    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldHideAccessory: %s, showHiddenAccessories: %s", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void __acc_policies_shouldHideAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers = &unk_2848FBBE8;
}

uint64_t acc_policies_shouldOverrideNameOnAccessoryWithModelNumber(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_onceToken != -1)
  {
    acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_cold_1();
  }

  v2 = [acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = "NO";
    if (v2)
    {
      v3 = "YES";
    }

    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldOverrideName: %s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void __acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers = &unk_2848FBC00;
}

uint64_t acc_policies_shouldResetLightningBusWhenTransportIsNoLongerRestricted(unsigned int a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return (a1 < 9) & (0x1C3u >> a1);
  }

  else
  {
    return 0;
  }
}

BOOL acc_policies_endpointRequiresChargingCurrentLimit(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v90[6] = *MEMORY[0x277D85DE8];
  v88[0] = @"nameMatch";
  v88[1] = @"modelContain";
  v89[0] = @"IntelliLink";
  v89[1] = @"1.0";
  v88[2] = @"overrideCurrentLimit";
  v89[2] = &unk_2848FBC90;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v90[0] = v6;
  v86[0] = @"nameMatch";
  v86[1] = @"modelContain";
  v87[0] = @"MyLink";
  v87[1] = @"1.0";
  v86[2] = @"overrideCurrentLimit";
  v87[2] = &unk_2848FBC90;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v90[1] = v7;
  v84[0] = @"nameMatch";
  v84[1] = @"manufacturerMatch";
  v85[0] = @"iPL24Z";
  v85[1] = @"SDI Technologies";
  v84[2] = @"overrideCurrentLimit";
  v85[2] = &unk_2848FBC90;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v90[2] = v8;
  v82[0] = @"modelMatch";
  v82[1] = @"manufacturerMatch";
  v83[0] = @"MIB2";
  v83[1] = @"HARMAN";
  v82[2] = @"overrideCurrentLimit";
  v83[2] = &unk_2848FBCA8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v90[3] = v9;
  v80[0] = @"modelMatch";
  v80[1] = @"manufacturerMatch";
  v81[0] = @"Range Rover Velar";
  v81[1] = @"Land Rover";
  v80[2] = @"overrideCurrentLimit";
  v81[2] = &unk_2848FBC90;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v90[4] = v10;
  v78[0] = @"modelMatch";
  v78[1] = @"manufacturerMatch";
  v79[0] = @"Jaguar I-PACE";
  v79[1] = @"Jaguar";
  v78[2] = @"overrideCurrentLimit";
  v79[2] = &unk_2848FBC90;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v90[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:6];

  v13 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerOverride");
  v14 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  v15 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  if (v15 <= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if ((v14 - 3) < 6)
  {
    v17 = 10 * v14 - 5;
    v18 = a4;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v17 = 45;
  v18 = a4;
  if (v14 != 1)
  {
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = v19;
    v70 = 1024;
    v71 = v13;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v14;
    v76 = 1024;
    v77 = v17;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d checkChargingCurrentLimit=%d chargingCurrentLimit=%d inLimit=%d behavior=%d batteryThreshold=%d", buf, 0x2Cu);
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  v58 = 0;
  v20 = v13;
  v21 = v13 < v18 && v13 != 0;
  if (a1 && !v21)
  {
    v22 = *(a1 + 64);
    if (v22)
    {
      if (*v22)
      {
        v58 = CFRetain(*v22);
      }

      else
      {
        v58 = 0;
      }

      v23 = *(*(a1 + 64) + 16);
      if (v23)
      {
        v57 = CFRetain(v23);
      }

      else
      {
        v57 = 0;
      }

      v24 = *(*(a1 + 64) + 8);
      if (v24)
      {
        v56 = CFRetain(v24);
      }

      else
      {
        v56 = 0;
      }

      if (v58 && v57)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = v12;
        v25 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v25)
        {
          v26 = v25;
          v45 = v13;
          v46 = v17;
          v47 = v16;
          v48 = v12;
          v27 = *v60;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v60 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v59 + 1) + 8 * i);
              v30 = [v29 objectForKey:@"nameMatch"];
              v31 = [v29 objectForKey:@"nameContain"];
              v32 = _matchOrContainString(v58, v30, v31);

              v33 = [v29 objectForKey:@"modelMatch"];
              v34 = [v29 objectForKey:@"modelContain"];
              v35 = _matchOrContainString(v57, v33, v34);

              v36 = [v29 objectForKey:@"manufacturerMatch"];
              v37 = [v29 objectForKey:@"manufacturerContain"];
              v38 = _matchOrContainString(v56, v36, v37);

              if (v32 && v35 && v38)
              {
                v39 = [v29 objectForKey:@"overrideCurrentLimit"];
                v20 = [v39 intValue];

                v18 = a4;
                v12 = v48;
                v17 = v46;
                v16 = v47;
                goto LABEL_40;
              }
            }

            v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v18 = a4;
          v12 = v48;
          v17 = v46;
          v16 = v47;
          v20 = v45;
        }

LABEL_40:

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110400;
          v65 = a2;
          v66 = 1024;
          v67 = a3;
          v68 = 1024;
          v69 = v20;
          v70 = 1024;
          v71 = v18;
          v72 = 1024;
          v73 = v16;
          v74 = 1024;
          v75 = v17;
          _os_log_debug_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d chargingCurrentLimit=%d inLimit=%d battery=%d threshold=%d", buf, 0x26u);
        }

        if (a3 != 3 && v16 >= v17 && (a2 & 1) == 0 && (v18 > 0x5DC || v20 >= 0x5DD) && v20 - 1501 < 0xFFFFFA24)
        {
          v20 = 1500;
        }

        if (v20)
        {
          v40 = v20 >= v18;
        }

        else
        {
          v40 = 1;
        }

        v21 = !v40;
        goto LABEL_55;
      }

LABEL_66:
      v21 = 0;
      v41 = a6 != 0;
      goto LABEL_58;
    }

LABEL_65:
    v57 = 0;
    v58 = 0;
    v56 = 0;
    goto LABEL_66;
  }

  v56 = 0;
  v57 = 0;
LABEL_55:
  v41 = a6 != 0;
  if (a6 && v21)
  {
    *a6 = v20;
    v41 = 1;
    v21 = 1;
  }

LABEL_58:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (v41)
    {
      v42 = *a6;
    }

    else
    {
      v42 = -1;
    }

    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = a5;
    v70 = 1024;
    v71 = v16;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v42;
    v76 = 1024;
    v77 = v21;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d, deviceType=%d, batt=%d(%d), %d->%d, return %d", buf, 0x2Cu);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL _matchOrContainString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = (v6 | v7) == 0;
  if (v5)
  {
    if (v6)
    {
      v10 = [v5 isEqualToString:v6];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [v5 containsString:v7];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v9;
}

uint64_t acc_policies_allowACCAuthProtocolOnAllTransport()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  v1 = [v0 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  return v1;
}

uint64_t acc_policies_allowACCAuthProtocolOnTransport(int a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"EnableACCAuthProtocolOnNFC"];

  v4 = +[ACCUserDefaults sharedDefaults];
  v5 = [v4 BOOLForKey:@"DisableACCAuthProtocolOnInductive"];

  v6 = +[ACCUserDefaults sharedDefaults];
  v7 = [v6 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  if (a1 == 13 && (v3 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a1 == 12) & (v5 ^ 1) | v7;
  }

  return v8 & 1;
}

void acc_policies_deviceDidPreArmDeviceIdentity()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  [v0 setBool:1 forKey:@"DidPreArmDeviceIdentity"];
}

uint64_t acc_policies_supportInductivePowerTX(int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 == 3)
  {
    v2 = a2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

CFComparisonResult OUTLINED_FUNCTION_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

CFNumberRef acc_analytics_createBucketizedAnalyticEventDuration(unint64_t a1)
{
  if (a1 > 299)
  {
    if (a1 > 0x258)
    {
      if (a1 > 0x708)
      {
        if (a1 > 0xE10)
        {
          if (a1 > 0x3840)
          {
            if (a1 > 0xA8C0)
            {
              if (a1 > 0x15180)
              {
                if (a1 > 0x3F480)
                {
                  if (a1 > 0x93A80)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedUnlockDialogAnalyticEventTime(unint64_t a1)
{
  if (a1 > 3599)
  {
    if (a1 > 0x1518)
    {
      if (a1 > 0x1C20)
      {
        if (a1 > 0x2A30)
        {
          if (a1 > 0x3840)
          {
            if (a1 > 0x7080)
            {
              if (a1 > 0xA8C0)
              {
                if (a1 > 0x15180)
                {
                  if (a1 > 0x3F480)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedWiredAuthDuration(unint64_t a1)
{
  if (a1 > 0x1F3)
  {
    if (a1 > 0x3E8)
    {
      if (a1 > 0x5DC)
      {
        if (a1 > 0x7D0)
        {
          if (a1 > 0x1388)
          {
            if (a1 > 0x2710)
            {
              if (a1 > 0x3A98)
              {
                if (a1 > 0x4E20)
                {
                  if (a1 > 0x7530)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedInductiveAuthDuration(unint64_t a1)
{
  if (a1 > 0xE)
  {
    if (a1 > 0x1E)
    {
      if (a1 > 0x2D)
      {
        if (a1 > 0x3C)
        {
          if (a1 > 0x5A)
          {
            if (a1 > 0x78)
            {
              if (a1 > 0x96)
              {
                if (a1 > 0xB4)
                {
                  if (a1 > 0xFA)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedBatteryChargeLevel(unsigned int a1)
{
  if (a1 > 9)
  {
    if (a1 > 0x14)
    {
      if (a1 > 0x1E)
      {
        if (a1 > 0x28)
        {
          if (a1 > 0x32)
          {
            if (a1 > 0x3C)
            {
              if (a1 > 0x46)
              {
                if (a1 > 0x50)
                {
                  if (a1 > 0x5A)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedBatteryChargeDelta(int a1)
{
  if (a1 > -90)
  {
    if (a1 > -80)
    {
      if (a1 > -70)
      {
        if (a1 > -60)
        {
          if (a1 > -50)
          {
            if (a1 > -40)
            {
              if (a1 > -30)
              {
                if (a1 > -20)
                {
                  if (a1 > -10)
                  {
                    if (a1 <= 0)
                    {
                      v1 = 10;
                    }

                    else if (a1 > 0xA)
                    {
                      if (a1 > 0x14)
                      {
                        if (a1 > 0x1E)
                        {
                          if (a1 > 0x28)
                          {
                            if (a1 > 0x32)
                            {
                              if (a1 > 0x3C)
                              {
                                if (a1 > 0x46)
                                {
                                  if (a1 > 0x50)
                                  {
                                    if (a1 > 0x5A)
                                    {
                                      v1 = 20;
                                    }

                                    else
                                    {
                                      v1 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v1 = 18;
                                  }
                                }

                                else
                                {
                                  v1 = 17;
                                }
                              }

                              else
                              {
                                v1 = 16;
                              }
                            }

                            else
                            {
                              v1 = 15;
                            }
                          }

                          else
                          {
                            v1 = 14;
                          }
                        }

                        else
                        {
                          v1 = 13;
                        }
                      }

                      else
                      {
                        v1 = 12;
                      }
                    }

                    else
                    {
                      v1 = 11;
                    }
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizeBatteryPackConnectionDuration(unint64_t a1)
{
  if (a1 > 0x1B773F)
  {
    if (a1 > 0x36F267)
    {
      if (a1 > 0x6DE0E7)
      {
        if (a1 > 0xDBBDE7)
        {
          if (a1 > 0x1B777E7)
          {
            if (a1 > 0x29331E7)
            {
              if (a1 > 0x5265FE7)
              {
                if (a1 > 0xF7317E7)
                {
                  if (a1 > 0x240C87E7)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizePowerSourceChargingTime(unint64_t a1)
{
  if (a1 > 0x3E7)
  {
    if (a1 > 0xDBB9F)
    {
      if (a1 > 0x1B7B27)
      {
        if (a1 > 0x36F267)
        {
          if (a1 > 0x6DE0E7)
          {
            if (a1 > 0xDBBDE7)
            {
              if (a1 > 0x1B777E7)
              {
                if (a1 > 0x29331E7)
                {
                  if (a1 > 0x5265FE7)
                  {
                    if (a1 > 0xF7317E7)
                    {
                      if (a1 > 0x240C87E7)
                      {
                        v1 = 12;
                      }

                      else
                      {
                        v1 = 11;
                      }
                    }

                    else
                    {
                      v1 = 10;
                    }
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCharType, &valuePtr);
}

void __notifyUserHSAIDDisabled_block_invoke(uint64_t a1)
{
  v5 = acc_userNotifications_disabledHSAID();
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(a1 + 32)];
  v3 = acc_userNotifications_generateIdentifier(@"io-service", v2);
  [v5 setGroupIdentifier:v3];

  v4 = +[ACCUserNotificationManager sharedManager];
  [v4 presentNotification:v5 completionHandler:0];
}

void __OOBPairingReceiveCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (a2)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 8;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __OOBPairingReceiveCallback_cold_2(a2, v10, v11, v12, v13, v14, v15, v16);
    }

LABEL_31:

    goto LABEL_32;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v17 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v5 endpointUUID];
    v27[0] = 67109634;
    v27[1] = a3;
    v28 = 2112;
    v29 = v18;
    v30 = 1024;
    v31 = [v5 ioService];
    _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "Incoming OOB Pairing info/data: type=%d, endpointUUID %@, ioService %d", v27, 0x18u);
  }

  if (([v5 _handleIncomingOOBPairingInfoData:a3] & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __OOBPairingReceiveCallback_cold_5(a3, v10, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_31;
  }

LABEL_32:

  v26 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void acc_restrictedMode_accessoryAttached()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 1;
  v0 = ACMKernelControl(34);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = v0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "acmStatus (accessoryAttached): %d", v2, 8u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void acc_restrictedMode_accessoryDetached()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 1;
  v0 = ACMKernelControl(37);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = v0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "acmStatus (accessoryDetached): %d", v2, 8u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_233666780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2336673A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  objc_destroyWeak((v11 + 64));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v12 - 112));
  _Unwind_Resume(a1);
}

void sub_23366794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_233667D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _platform()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _productVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _modelNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _productType()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t ___isDeviceAnalyticsEnabled_block_invoke()
{
  result = DiagnosticLogSubmissionEnabled();
  _isDeviceAnalyticsEnabled_dataCollectionEnabled = result;
  return result;
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

void acc_sysdiagnose_InitiateAuthFailureSysdiagnose()
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315906;
    v3 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose";
    v4 = 1024;
    v5 = 50;
    v6 = 1024;
    v7 = MFAAIsInternalBuild();
    v8 = 1024;
    isWatch = platform_systemInfo_isWatch();
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d MFAAIsInternalBuild %d, isWatch %d", &v2, 0x1Eu);
  }

  if (MFAAIsInternalBuild())
  {
    if (_isSysdiagnosePending)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose";
        v4 = 1024;
        v5 = 64;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d sysdiagnose already in flight! skipped!", &v2, 0x12u);
      }
    }

    else
    {
      _isSysdiagnosePending = 1;
      v0 = dispatch_get_global_queue(0, 0);
      dispatch_async(v0, &__block_literal_global_3);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

void _acc_sysdiagnose_authFailure(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "_acc_sysdiagnose_authFailure";
    v9 = 1024;
    v10 = 28;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d timeout %d", buf, 0x18u);
  }

  v2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = 0;
  v3 = [MEMORY[0x277D82CB0] sysdiagnoseWithMetadata:v2 withError:&v6];
  v4 = v6;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _acc_sysdiagnose_authFailure_cold_1(v4);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sysdiagnose path: %@\n", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose()
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315906;
    v3 = "acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose";
    v4 = 1024;
    v5 = 72;
    v6 = 1024;
    v7 = MFAAIsInternalBuild();
    v8 = 1024;
    isWatch = platform_systemInfo_isWatch();
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d MFAAIsInternalBuild %d, isWatch %d", &v2, 0x1Eu);
  }

  if (MFAAIsInternalBuild())
  {
    if (_isSysdiagnosePending)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = "acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose";
        v4 = 1024;
        v5 = 86;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d sysdiagnose already in flight! skipped!", &v2, 0x12u);
      }
    }

    else
    {
      _isSysdiagnosePending = 1;
      v0 = dispatch_get_global_queue(0, 0);
      dispatch_async(v0, &__block_literal_global_2);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __convertPortStreamType(int a1, int a2)
{
  if (a2 == 2 && a1 == 1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (a2 == 1)
  {
    return a1 == 1;
  }

  else
  {
    return v3;
  }
}

void PortNotifyEvent(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v6 = [v5 basePortForService:a2];
  if (v6)
  {
    if (a3 == -469794716 || (a3 & 0xFFFFFFF0) == 0xE3FF8000)
    {
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v10 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      v13 = (a3 + 469794816);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 67109120;
        *v24 = v13;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "PortNotifyEvent from IOAccessoryPort: msgType resistorID value %d", &v23, 8u);
      }

      [v6 _handleResistorIDChange:v13];
    }

    else
    {
      if (a3 <= -469794785)
      {
        if (a3 != -536870896)
        {
          if (a3 == -536870608)
          {
            if (gLogObjects && gNumLogObjects >= 5)
            {
              v7 = *(gLogObjects + 32);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v7 = MEMORY[0x277D86220];
              v16 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 67109378;
              *v24 = a2;
              *&v24[4] = 2112;
              *&v24[6] = v6;
              _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "PortNotifyEvent from IOAccessoryPort: kIOMessageServicePropertyChange for service %d, accTransportIOAccPort %@", &v23, 0x12u);
            }

            [v6 _handlePropertyChange];
          }

          goto LABEL_65;
        }

        if (gLogObjects && gNumLogObjects >= 5)
        {
          v14 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v14 = MEMORY[0x277D86220];
          v19 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 67109120;
          *v24 = a2;
          v18 = "PortNotifyEvent from IOAccessoryPort: kIOMessageServiceIsTerminated(%d)";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (a3 != -469794784)
      {
        if (a3 != -469794782)
        {
          goto LABEL_65;
        }

        if (gLogObjects && gNumLogObjects >= 5)
        {
          v14 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v14 = MEMORY[0x277D86220];
          v17 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 67109120;
          *v24 = a2;
          v18 = "PortNotifyEvent from IOAccessoryPort: kIOAccessoryPortMessageUSBRoleSwitch for service %d";
LABEL_57:
          _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, v18, &v23, 8u);
        }

LABEL_58:

        goto LABEL_65;
      }

      if (gLogObjects && gNumLogObjects >= 5)
      {
        v15 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 ioAccPortEndpointUUID];
        v23 = 138412546;
        *v24 = v6;
        *&v24[8] = 2112;
        *&v24[10] = v21;
        _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "PortNotifyEvent from IOAccessoryPort: kIOAccessoryPortMessageDetach for port %@, endpointUUID %@", &v23, 0x16u);
      }

      [v6 _handleAccessoryPortDetach];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "PortNotifyEvent: ACCTransportIOAccessoryPort service has been removed", &v23, 2u);
    }
  }

LABEL_65:

  v22 = *MEMORY[0x277D85DE8];
}

void PortReceiveBuffer(unsigned __int16 *a1, void *a2)
{
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:a1 + 1 length:*a1];
  [a2 _handleIncomingData:v3];
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
  v2 = [v1 localizedStringForKey:@"Accessory Not Supported" value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"This accessory is not supported by this device." value:&stru_2848F31C8 table:0];
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
  v2 = [v1 localizedStringForKey:@"Charging Not Supported" value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"Charging with this accessory is not supported by Apple Device." value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  v5 = acc_strings_bundle();
  v6 = [v5 localizedStringForKey:@"Dismiss" value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setDefaultButtonName:v6];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

ACCUserNotification *acc_userNotifications_unlockToUseAccessories()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Connected" value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = MEMORY[0x277CCACA8];
  v4 = acc_strings_bundle();
  v5 = [v4 localizedStringForKey:@"Unlock %@ to use accessories" value:&stru_2848F31C8 table:0];
  v6 = [v3 stringWithFormat:v5, systemInfo_copyDeviceClass()];
  [(ACCUserNotification *)v0 setMessage:v6];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setDismissOnUnlock:1];
  [(ACCUserNotification *)v0 setIgnoreQuietMode:1];
  [(ACCUserNotification *)v0 setSystemSoundID:&unk_2848FBCC0];

  return v0;
}

ACCUserNotification *acc_userNotifications_disabledHSAID()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:1];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Serial Boot-Arg Detected" value:&stru_2848F31C8 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"There are known compatibility issues with the 'serial' boot-arg and Smart Connector accessories value:even for those not using HSAID. Please disable the 'serial' boot-arg when using Smart Connector accessories." table:{&stru_2848F31C8, 0}];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 11, _kLoggingModuleEntries);

  init_logging_signposts();
}

uint64_t logModuleForTransport(unsigned int a1)
{
  if (a1 < 8)
  {
    return a1 + 3;
  }

  v3 = gLogObjects;
  v4 = gNumLogObjects;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      notifyUserHSAIDDisabled_cold_1(v3, v4);
    }
  }

  else
  {
    v6 = *gLogObjects;
  }

  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    logModuleForTransport_cold_2(a1, v6);
    return 0;
  }

  return result;
}

void *WeakLinkSymbol(const char *a1, unint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *__HandleForSource(unint64_t a1)
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
    if (a1 <= 8 && ((0x1BFu >> a1) & 1) != 0 && (v4 = dlopen([(__CFString *)off_2789E8FA0[a1] UTF8String], 1)) != 0)
    {
      Value = v4;
      CFDictionarySetValue(__Handles, a1, v4);
    }

    else
    {
      NSLog(&cfstr_CouldNotLoadSo.isa, a1);
      Value = 0;
    }
  }

  pthread_mutex_unlock(&__HandlesLock);
  return Value;
}

id WeakLinkClass(void *a1, unint64_t a2)
{
  v3 = a1;
  if (__HandleForSource(a2))
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *WeakLinkStringConstant(const char *a1, unint64_t a2)
{
  v3 = __HandleForSource(a2);
  if (v3)
  {
    v3 = dlsym(v3, a1);
    if (v3)
    {
      v3 = *v3;
    }
  }

  return v3;
}

const __CFString *__getStateForUarpNotificationName(const __CFString *result)
{
  state64 = 0;
  if (result)
  {
    out_token = -1;
    CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
    notify_register_check(CStringPtr, &out_token);
    notify_get_state(out_token, &state64);
    notify_cancel(out_token);
    return state64;
  }

  return result;
}

void __IOAMBatteryMatch(void *a1, io_iterator_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 batteryNotifyPortRef];
    notification = -1431655766;
    v6 = IOIteratorNext(a2);
    if (v6)
    {
      if (v5)
      {
        v7 = v6;
        v8 = MEMORY[0x277D86220];
        do
        {
          __IOAMUpdateBatteryState(v4, v7);
          v9 = IOServiceAddInterestNotification(v5, v7, "IOGeneralInterest", __IOAMBatteryInterest, v4, &notification);
          if (v9)
          {
            v10 = v9;
            [v4 setBatteryChargeLevelPercent:0];
            v11 = gLogObjects;
            v12 = gNumLogObjects;
            if (gLogObjects)
            {
              v13 = gNumLogObjects < 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v19 = v11;
                v20 = 1024;
                v21 = v12;
                _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v14 = v8;
              v15 = v8;
            }

            else
            {
              v15 = *(gLogObjects + 24);
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v19 = "void __IOAMBatteryMatch(void *, io_iterator_t)";
              v20 = 1024;
              v21 = v10;
              _os_log_error_impl(&dword_233656000, v15, OS_LOG_TYPE_ERROR, "%s IOServiceAddInterestNotification failed: %08x", buf, 0x12u);
            }
          }

          IOObjectRelease(v7);
          v7 = IOIteratorNext(a2);
        }

        while (v7);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryIDBusHIDDeviceMatch(void *a1, io_iterator_t iterator)
{
  if (a1)
  {
    if (iterator)
    {
      v4 = IOIteratorNext(iterator);
      if (v4)
      {
        v5 = v4;
        v6 = *MEMORY[0x277CFD360];
        v7 = *MEMORY[0x277CBECE8];
        v8 = *MEMORY[0x277CFD358];
        while (1)
        {
          v9 = IORegistryEntrySearchCFProperty(v5, "IOService", v6, v7, 1u);
          v10 = IORegistryEntrySearchCFProperty(v5, "IOService", v8, v7, 1u);
          v11 = v10;
          if (v9 && v10 != 0)
          {
            break;
          }

          v5 = IOIteratorNext(iterator);
          if (!v5)
          {
            return;
          }
        }

        v18 = v9;
        v13 = v11;
        v14 = a1;
        if ([v14 ioAccessoryIDBusHIDDevicePortRef])
        {
          Main = CFRunLoopGetMain();
          RunLoopSource = IONotificationPortGetRunLoopSource([v14 ioAccessoryIDBusHIDDevicePortRef]);
          CFRunLoopRemoveSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
          IONotificationPortDestroy([v14 ioAccessoryIDBusHIDDevicePortRef]);
          [v14 setIoAccessoryIDBusHIDDevicePortRef:0];
          [v14 setProductID:v13];
          [v14 setVendorID:v18];
          v17 = +[ACCTransportIOAccessorySharedManager sharedManager];
          if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v17 IOAccessoryManagerServiceInfoSet:{objc_msgSend(v14, "ioService")}];
          }
        }

        IOObjectRelease(v5);
      }
    }

    else
    {
      __IOAccessoryIDBusHIDDeviceMatch_cold_1();
    }
  }

  else
  {
    __IOAccessoryIDBusHIDDeviceMatch_cold_2();
  }
}

void __handleNotificationUarpStartUpdate(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "__handleNotificationUarpStartUpdate";
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
  }

  if (a2)
  {
    v8 = a2;
    v9 = __copyModelFromUarpNotificationName(a3);
    [v8 _handleNotificationUarpStartUpdateForModel:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __handleNotificationUarpEndUpdate(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "__handleNotificationUarpEndUpdate";
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
  }

  if (a2)
  {
    v8 = a2;
    v9 = __copyModelFromUarpNotificationName(a3);
    [v8 _handleNotificationUarpEndUpdateForModel:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __handleNotificationUarpStagingStatus(uint64_t a1, void *a2, __CFString *a3)
{
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __handleNotificationUarpStagingStatus_cold_2();
  }

  if (a2)
  {
    v8 = a2;
    v9 = __copyModelFromUarpNotificationName(a3);
    [v8 _handleNotificationUarpStagingStatusForModel:v9 state:__getStateForUarpNotificationName(a3)];
  }
}

id __copyModelFromUarpNotificationName(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCA900];
    v2 = a1;
    v3 = [v1 characterSetWithCharactersInString:@"."];
    v4 = [v2 componentsSeparatedByCharactersInSet:v3];

    v5 = [v4 lastObject];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __IOAMUpdateBatteryState(void *a1, io_registry_entry_t entry)
{
  properties = 0;
  v3 = IORegistryEntryCreateCFProperties(entry, &properties, 0, 0);
  v4 = a1;
  if (v4 && !v3 && properties)
  {
    v5 = [(__CFDictionary *)properties objectForKey:@"MaxCapacity"];
    v6 = [v5 intValue];

    if (!v6)
    {
      [v4 setBatteryChargeLevelPercent:0];
      goto LABEL_17;
    }

    v7 = [(__CFDictionary *)properties objectForKey:@"CurrentCapacity"];
    [v4 setBatteryChargeLevelPercent:{((100 * -[NSObject intValue](v7, "intValue")) / v6)}];
  }

  else
  {
    [v4 setBatteryChargeLevelPercent:0];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __IOAMUpdateBatteryState_cold_2();
    }
  }

LABEL_17:
  CFRelease(properties);
}

void __IOAMBatteryInterest(void *a1, io_registry_entry_t entry, int a3)
{
  if (a3 == -536723200)
  {
    __IOAMUpdateBatteryState(a1, entry);
  }
}

uint64_t OUTLINED_FUNCTION_13(unsigned int *a1, void *a2)
{
  v3 = *a1;

  return [a2 ioService];
}

uint64_t __isForcePassthroughIOAccessoryManagerPort()
{
  result = __isForcePassthroughIOAccessoryManagerPort__forcePassthroughIOAccessoryManagerPort;
  if (__isForcePassthroughIOAccessoryManagerPort__forcePassthroughIOAccessoryManagerPort == -1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forcePassThroughIOAccessoryManagerPort", @"com.apple.accessoryd", 0);
    __isForcePassthroughIOAccessoryManagerPort__forcePassthroughIOAccessoryManagerPort = AppIntegerValue;
    NSLog(&cfstr_ReadForcepasst.isa, AppIntegerValue);
    return __isForcePassthroughIOAccessoryManagerPort__forcePassthroughIOAccessoryManagerPort;
  }

  return result;
}

uint64_t EnableAccessoryPowerForPortService(io_service_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  connect = 0;
  v4 = IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect);
  if (v4)
  {
    v5 = v4;
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      EnableAccessoryPowerForPortService_cold_2();
    }
  }

  else
  {
    if (a1)
    {
        ;
      }

      v8 = IOAccessoryManagerGetPrimaryPort() == 256;
    }

    else
    {
      v8 = 0;
    }

    v5 = 0;
    if (a2 == 1 && !v8)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v18 = 1;
        v19 = 1024;
        v20 = 1;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "turning acc power to %d on first run, off = %d", buf, 0xEu);
      }

      v5 = IOAccessoryManagerConfigurePower();
      if (v5)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v12 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v12 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          EnableAccessoryPowerForPortService_cold_5();
        }
      }
    }

    IOServiceClose(connect);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23367E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23367EC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233680314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233680DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233681ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233681FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233687218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_12_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
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

void __IOAccessoryManagerAdded(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects)
      {
        v10 = gNumLogObjects < 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v15 = v8;
          *&v15[8] = 1024;
          v16 = v9;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v11 = v6;
        v12 = v6;
      }

      else
      {
        v12 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v15 = PrimaryPort;
        *&v15[4] = 1024;
        *&v15[6] = v5;
        _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "Connected manager with primary port type %d and service %d", buf, 0xEu);
      }

      [v3 _ioAccessoryManagerAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryManagerTerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated manager with service %d", buf, 8u);
      }

      [v3 _ioAccessoryManagerTerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryPortAdded(void *a1, io_iterator_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      Port = IOAccessoryPortGetPort();
      TransportType = IOAccessoryPortGetTransportType();
      v9 = gLogObjects;
      v10 = gNumLogObjects;
      if (gLogObjects)
      {
        v11 = gNumLogObjects < 5;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v16 = v9;
          *&v16[8] = 1024;
          v17[0] = v10;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v12 = v6;
        v13 = v6;
      }

      else
      {
        v13 = *(gLogObjects + 32);
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v16 = Port;
        *&v16[4] = 1024;
        *&v16[6] = TransportType;
        LOWORD(v17[0]) = 1024;
        *(v17 + 2) = v5;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Connected port with port number %d, type %d and service %d", buf, 0x14u);
      }

      [v3 _ioAccessoryPortAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryPortTerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 32);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated port with service %d", buf, 8u);
      }

      [v3 _ioAccessoryPortTerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryAuthCPAdded(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 7;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Connected auth CP with service %d", buf, 8u);
      }

      [v3 _ioAccessoryAuthCPAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryAuthCPTerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 7;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated auth CP with service %d", buf, 8u);
      }

      [v3 _ioAccessoryAuthCPTerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryEAAdded(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 6;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 40);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Connected EA service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryEAAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryEATerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 6;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 40);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated EA service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryEATerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryOOBPairingAdded(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 8;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 56);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Connected OOBPairing service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryOOBPairingAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryOOBPairingTerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 8;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 56);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated OOBPairing service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryOOBPairingTerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryConfigStreamAdded(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 10;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 72);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Connected ConfigStream service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryConfigStreamAttached:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryConfigStreamTerminated(void *a1, io_iterator_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 10;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v7;
          v15 = 1024;
          v16 = v8;
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = *(gLogObjects + 72);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Terminated ConfigStream service with service %d", buf, 8u);
      }

      [v3 _ioAccessoryConfigStreamTerminated:v5];
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void loadFrontBoard()
{
  if (!_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
    if (v0)
    {
      _FBSOpenApplicationOptionKeyPromptUnlockDevice = dlsym(v0, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    }
  }
}

void acc_tapToRadar_InitiateAuthFailureTTR()
{
  if (MFAAIsInternalBuild() && (platform_systemInfo_isWatch() & 1) == 0 && (acc_tapToRadar_InitiateAuthFailureTTR_isAlertPending & 1) == 0)
  {
    acc_tapToRadar_InitiateAuthFailureTTR_isAlertPending = 1;
    v0 = dispatch_get_global_queue(0, 0);
    dispatch_async(v0, &__block_literal_global_7);
  }
}

void acc_tapToRadar_InitiateAuthTimeoutTTR()
{
  if (MFAAIsInternalBuild() && (platform_systemInfo_isWatch() & 1) == 0 && (acc_tapToRadar_InitiateAuthTimeoutTTR_isAlertPending & 1) == 0)
  {
    acc_tapToRadar_InitiateAuthTimeoutTTR_isAlertPending = 1;
    v0 = dispatch_get_global_queue(0, 0);
    dispatch_async(v0, &__block_literal_global_11_0);
  }
}

void __EASessionReceiveCallback(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 5;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __EASessionReceiveCallback_cold_2(a2, v6);
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v5)
  {
    v7 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = [v3 eaProtocol];
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Incoming EA session data for protocol %@", &v13, 0xCu);
  }

  if (([v3 _handleIncomingEAData] & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __EASessionReceiveCallback_cold_5(v3);
    }

    goto LABEL_31;
  }

LABEL_32:

  v12 = *MEMORY[0x277D85DE8];
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
  v2 = &OBJC_INSTANCE_METHODS_ACCTransportPluginProtocol;
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
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
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
          _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &OBJC_INSTANCE_METHODS_ACCTransportPluginProtocol;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = v2[56];
    LODWORD(v14) = v5;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

_OWORD *getDEVNTempCertCapsForCable()
{
  v0 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = getDEVNTempCertCapsForCable_kDEVNTempCertCapsForCable;
    v0[1] = *algn_2336C03B0;
  }

  else
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 7;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      getDEVNTempCertCapsForCable_cold_2();
    }
  }

  return v1;
}

BOOL enhanced_apfs_enabled()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/filesystems");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0);
  v3 = CFProperty != 0;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  IOObjectRelease(v1);
  return v3;
}

void AuthCPNotifyEvent(void *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 == -469794816)
  {
    v3 = a1;
    [v3 setForcedReAuthCount:{objc_msgSend(v3, "forcedReAuthCount") + 1}];
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [v3 forcedReAuthCount];
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "kAppleAuthCPMessageNewAuthRequested received.  Re-Starting authentication process.  ForcedReAuthCount: %d", v8, 8u);
    }

    [v3 startAuthenticationProcess];
  }

  v7 = *MEMORY[0x277D85DE8];
}

const char *_getAuthErrorString(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return "UninitializedAuthError";
  }

  else
  {
    return kACCTransport_IOAccessoryAuthCP_AuthError_Strings[a1];
  }
}

const char *_getFDRStatusString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "AuthSuccess";
  }

  else
  {
    return kACCTransport_IOAccessoryAuthCP_FDRStatus_Strings[a1];
  }
}

BOOL _checkSpringBoardStarted()
{
  out_token = -1;
  notify_register_check("com.apple.springboard.finishedstartup", &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  v2 = 0;
  notify_get_state(out_token, &v2);
  v0 = v2 != 0;
  notify_cancel(out_token);
  return v0;
}

void __transportInterest(void *a1, io_registry_entry_t a2, int a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "__transportInterest", buf, 2u);
  }

  v9 = a1;
  if (a3 == -536870608)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"ActualPairedCertSN", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v11 = CFGetTypeID(CFProperty);
      if (v11 == CFStringGetTypeID())
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v12 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v12 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "__transportInterest: found ActualPairedCertSN", v15, 2u);
        }

        v14 = [v9 pairedSema];
        dispatch_semaphore_signal(v14);
      }
    }
  }
}

uint64_t __powerBatteryMatch(IONotificationPort **a1, io_iterator_t iterator)
{
  v3 = *a1;
  notification = -1431655766;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      __powerUpdateBatteryState(v5);
      IOServiceAddInterestNotification(v3, v5, "IOGeneralInterest", __powerBatteryInterest, 0, &notification);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_23369B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23369BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __powerUpdateBatteryState(io_registry_entry_t a1)
{
  properties = 0;
  if (!IORegistryEntryCreateCFProperties(a1, &properties, 0, 0))
  {
    v1 = dispatch_get_global_queue(0, 0);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = ____powerUpdateBatteryState_block_invoke;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = properties;
    dispatch_async(v1, v2);
  }
}

void __powerBatteryInterest(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    __powerUpdateBatteryState(a2);
  }
}

void ____powerUpdateBatteryState_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"IsCharging"];
  v3 = [v2 BOOLValue];

  if (__powerUpdateBatteryState_isBatteryChargingOld != v3 && prefetchDeviceIdentityCertificates())
  {
    acc_policies_deviceDidPreArmDeviceIdentity();
  }

  __powerUpdateBatteryState_isBatteryChargingOld = v3;
  v4 = *(a1 + 32);

  CFRelease(v4);
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_12_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

BOOL OUTLINED_FUNCTION_13_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_14_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_15_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
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
  v2 = &OBJC_INSTANCE_METHODS_ACCTransportPluginProtocol;
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
          _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
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
          _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_233656000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &OBJC_INSTANCE_METHODS_ACCTransportPluginProtocol;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = v2[56];
    LODWORD(v14) = v5;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_2336C0408[v2];
}

uint64_t OUTLINED_FUNCTION_0_3@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 OUTLINED_FUNCTION_12_2(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_17_1@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  v10 = &OBJC_IVAR___ACCTransportIOAccessoryConfigStream__requestPending;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      v10 = &OBJC_IVAR___ACCTransportIOAccessoryConfigStream__requestPending;
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  v10 = &OBJC_IVAR___ACCTransportIOAccessoryConfigStream__requestPending;
LABEL_24:
  if (v11 >= *(v10 + 2515))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_3_3(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11_2();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_9_2();
  v23 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_2();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_3(v6, v7, v8, v9, v10, v11, v12, v13, v21);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_4();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init") && !generateRandom(v3, 16))
              {
                OUTLINED_FUNCTION_0_4();
                v16 = ccgcm_set_iv();
                if (!checkCCError(v16, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_4();
                  v17 = ccgcm_update();
                  if (!checkCCError(v17, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_4();
                    v18 = ccgcm_finalize();
                    if (!checkCCError(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_12_3();
    printf("%s: %s: returning, err = %ld.\n", v22, v23, v24);
  }

  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_2();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_9_2();
  v27 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_2();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_3(v6, v7, v8, v9, v10, v11, v12, v13, v25);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_2_4();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                OUTLINED_FUNCTION_13_2();
                if (!v17 && !generateRandom(v16, 16))
                {
                  OUTLINED_FUNCTION_0_4();
                  v18 = ccgcm_set_iv();
                  if (!checkCCError(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    OUTLINED_FUNCTION_13_2();
                    if (!v20)
                    {
                      OUTLINED_FUNCTION_2_4();
                      v21 = ccgcm_update();
                      if (!checkCCError(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        OUTLINED_FUNCTION_0_4();
                        v22 = ccgcm_finalize();
                        if (!checkCCError(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_2();
  if (v23)
  {
    OUTLINED_FUNCTION_12_3();
    printf("%s: %s: returning, err = %ld.\n", v26, v27, v28);
  }

  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_2();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v28 = *MEMORY[0x277D85DE8];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_2();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_3(v11, v12, v13, v14, v15, v16, v17, v18, v26);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_4();
              v21 = ccgcm_init();
              if (!checkCCError(v21, "ccgcm_init"))
              {
                OUTLINED_FUNCTION_0_4();
                v22 = ccgcm_set_iv();
                if (!checkCCError(v22, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_4();
                  v23 = ccgcm_update();
                  if (!checkCCError(v23, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_4();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!checkCCError(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_12_3();
    printf("%s: %s: returning, err = %ld.\n", v27, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_2();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = *MEMORY[0x277D85DE8];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_2();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_3(v11, v12, v13, v14, v15, v16, v17, v18, v28);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_13_2();
              if (!v20 && *v7 == 2)
              {
                OUTLINED_FUNCTION_2_4();
                v21 = ccgcm_init();
                if (!checkCCError(v21, "ccgcm_init"))
                {
                  OUTLINED_FUNCTION_0_4();
                  v22 = ccgcm_set_iv();
                  if (!checkCCError(v22, "ccgcm_set_iv"))
                  {
                    OUTLINED_FUNCTION_13_2();
                    if (!v23)
                    {
                      OUTLINED_FUNCTION_2_4();
                      v24 = ccgcm_update();
                      if (!checkCCError(v24, "ccgcm_update") && !__CFADD__(v7 + 17, v19))
                      {
                        OUTLINED_FUNCTION_0_4();
                        ccgcm_finalize();
                        v25 = cc_cmp_safe();
                        if (!checkCCError(v25, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v19;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_2();
  if (v26)
  {
    OUTLINED_FUNCTION_12_3();
    printf("%s: %s: returning, err = %ld.\n", v29, 0, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_2();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v20 = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v19, 0x2000uLL);
  v18 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v19, &v18);
  if (v3)
  {
    if (v18)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[128] = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v25, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v25, &v24, v22, v23, 1024, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8]);
  v17 = v16;
  if (a8)
  {
    if (v24)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v15 = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v14, 0, sizeof(v14));
  v12 = 256;
  if (v7 && a3 && a4)
  {
    v13 = 0uLL;
    v11 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v13, &v11);
    if (!v9 && v11 == 16)
    {
      v7(a2, 31, 0, &v13, 16, v14, &v12, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

rsize_t verifyAclConstraintForOperationCommandInternal(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd_0[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd_0[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v11 = "ACMLib";
        v12 = 2080;
        v13 = "ACMContextCreateWithFlags";
        v14 = 1024;
        LODWORD(v15[0]) = v6;
        WORD2(v15[0]) = 1024;
        *(v15 + 6) = a2;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    v14 = 2048;
    v15[0] = v4;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v11 = "ACMLib";
      v12 = 2080;
      v13 = "ACMContextCreateWithExternalForm";
      v14 = 1024;
      LODWORD(v15) = v5;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v13 = "ACMLib";
    v15 = "ACMContextDelete";
    v14 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v16 = 1024;
    LODWORD(v17[0]) = v5;
    WORD2(v17[0]) = 2080;
    *(v17 + 6) = v6;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v11 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v11, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    v16 = 2048;
    v17[0] = v7;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  if (!a1 || !a2)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    ACMContextGetExternalForm_cold_1(a2);
    goto LABEL_9;
  }

  if (init() || performCommand(a1, 19, 0, a1, 0x10uLL, 0, 0))
  {
    goto LABEL_14;
  }

  (*(a2 + 16))(a2, a1, 16);
LABEL_9:
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v6, 0x16u);
  }

  result = ACMContextRemoveCredentialsByTypeAndScope(a1, a2, 1);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMContextContainsCredentialType";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v6, 0x16u);
  }

  result = ACMContextContainsCredentialTypeEx(a1, a2, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextVerifyPolicy";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v10 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(ioKitTransport, &v10, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextVerifyPolicy";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(ioKitTransport, &v12, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextVerifyPolicyWithPreflight";
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "ACMLib";
    v18 = 2080;
    v19 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v15 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(ioKitTransport, &v15, a1, a2, a3, a4, a5, a6, a7);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "ACMLib";
    v18 = 2080;
    v19 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = 0;
  v10 = ACMContextCreateWithFlags(&v12, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v12, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v12)
  {
    ACMContextDelete(v12, 1);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  __n = 4096;
  size = 0;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "ACMLib";
    v24 = 2080;
    v25 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = init();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = performCommand(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "ACMLib";
    v24 = 2080;
    v25 = "ACMParseAclAndCopyConstraintCharacteristics";
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v5 = a1;
  LibCall_ACMGetAclAuthMethod_Block(ioKitTransport, &v5, a1, a2);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariable";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariable";
    v11 = 2048;
    v12 = v3;
    v13 = 1024;
    v14 = a1;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v11 = 2048;
    v12 = v3;
    v13 = 1024;
    v14 = a1;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMGetEnvironmentVariable";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(ioKitTransport, &v8, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMGetEnvironmentVariable";
    v13 = 2048;
    v14 = v4;
    v15 = 1024;
    v16 = a1;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMKernelControl";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMKernelControl";
    v10 = 2048;
    v11 = v2;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void ACMGlobalContextCredentialGetProperty(int a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(ioKitTransport, &v7, a1, a2, a3);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ACMContextCredentialGetProperty(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = 256;
  if (a4)
  {
    v10 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(ioKitTransport, &v10, a1, a2, a3, buf, &v11);
    (*(a4 + 16))(a4, v8, buf, v11);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v12, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextSetData";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v12, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextSetData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(ioKitTransport, &v17, a1, a2, a3, a4, a5, a6, v16, a1, *buf, *&buf[8], *&buf[16], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v19 = v12;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetData";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v10, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetData";
    v14 = 2048;
    v15 = Data;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextGetDataProperty";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v12, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextGetDataProperty";
    v16 = 2048;
    v17 = Data;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Data;
}

uint64_t ACMContextCopyData(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextCopyData";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = 0;
  v8 = LibCall_ACMContextCopyData(ioKitTransport, &v12, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextCopyData";
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ACMContextGetInfo(__int128 *a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetInfo";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v10 = a1;
  v6 = LibCall_ACMContextGetInfo(ioKitTransport, &v10, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetInfo";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void updateLogLevelFromKext()
{
  v8 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "updateLogLevelFromKext";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_2812FEE0C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  _logLevel = output;
  if (output <= 0x1EuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    updateLogLevelFromKext_cold_1();
LABEL_12:
    v0 = _logLevel;
  }

  if (v0 <= 0xA && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "updateLogLevelFromKext";
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, char a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return performCommand(a1, a2, 0, v5, a5, 0, 0);
}

uint64_t OUTLINED_FUNCTION_20()
{
  v3 = *(v2 + 8 * v1);
  v4 = *(v0 + 16);
  return v0;
}

uint64_t ioKitTransport(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t init()
{
  v18 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals_0)
  {
    v5 = 0;
  }

  else
  {
    v6 = *MEMORY[0x277CD28A0];
    v7 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(v6, v7);
    if (!MatchingService)
    {
      v10 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v9 = MatchingService;
    v5 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &dword_2812FEE0C);
    if (v5)
    {
      v10 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v9);
    _MergedGlobals_0 = 1;
  }

  v10 = 10;
LABEL_10:
  if (v10 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t performCommand(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v54 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_5();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v45 = v21;
      v22 = IOConnectCallStructMethod(dword_2812FEE0C, 0, v19, inputStructCnt, a6, &v45);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_27();
          v50 = v25;
          v51 = v23;
          v52 = v25;
          v53 = v23;
          OUTLINED_FUNCTION_4_5();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_5();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v45;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v47 = 136315650;
    v48 = "ACMLib";
    OUTLINED_FUNCTION_13_3();
    v49 = "performCommand";
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_4_5();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v23;
}

void updateLogLevelFromKext_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v21[0] = v21;
    MEMORY[0x28223BE20](a1);
    v15 = (v21 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, v21 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

void *OUTLINED_FUNCTION_9_4()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = 0;
  v4 = *a3;
  return result;
}

void OUTLINED_FUNCTION_37()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    OUTLINED_FUNCTION_10_5();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      OUTLINED_FUNCTION_10_5();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        OUTLINED_FUNCTION_10_5();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_5();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      OUTLINED_FUNCTION_10_5();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_5();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      OUTLINED_FUNCTION_10_5();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        OUTLINED_FUNCTION_10_5();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          OUTLINED_FUNCTION_10_5();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    OUTLINED_FUNCTION_31_0();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = OUTLINED_FUNCTION_18_2();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_31_0();
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_31_0();
  if (a5 && a13 && a6)
  {
    aclRequiresPasscodeInternal();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void aclRequiresPasscodeInternal()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 4;
  v10 = v2;
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v18, &v17);
    if (v13)
    {
      v12 = v13;
    }

    else if (v17 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  OUTLINED_FUNCTION_1_6();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_2();
}

uint64_t cpGetDeviceInfo(io_registry_entry_t entry, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = 3758097084;
  v12 = MEMORY[0x277CBECE8];
  if (a2)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"DeviceVersion", *MEMORY[0x277CBECE8], 0);
    if (!CFProperty)
    {
      return 3758097136;
    }

    v15 = CFProperty;
    Value = CFNumberGetValue(CFProperty, kCFNumberSInt8Type, a2);
    CFRelease(v15);
    if (!Value)
    {
      return v11;
    }
  }

  if (a3)
  {
    v17 = IORegistryEntryCreateCFProperty(entry, @"FirmwareVersion", *v12, 0);
    if (!v17)
    {
      return 3758097136;
    }

    v18 = v17;
    v19 = CFNumberGetValue(v17, kCFNumberSInt8Type, a3);
    CFRelease(v18);
    if (!v19)
    {
      return v11;
    }
  }

  if (a4)
  {
    v20 = IORegistryEntryCreateCFProperty(entry, @"AuthMajorVersion", *v12, 0);
    if (!v20)
    {
      return 3758097136;
    }

    v21 = v20;
    v22 = CFNumberGetValue(v20, kCFNumberSInt8Type, a4);
    CFRelease(v21);
    if (!v22)
    {
      return v11;
    }
  }

  if (a5)
  {
    v23 = IORegistryEntryCreateCFProperty(entry, @"AuthMinorVersion", *v12, 0);
    if (!v23)
    {
      return 3758097136;
    }

    v24 = v23;
    v25 = CFNumberGetValue(v23, kCFNumberSInt8Type, a5);
    CFRelease(v24);
    if (!v25)
    {
      return v11;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v26 = IORegistryEntryCreateCFProperty(entry, @"DeviceID", *v12, 0);
  if (!v26)
  {
    return 3758097136;
  }

  v27 = v26;
  v28 = CFNumberGetValue(v26, kCFNumberSInt32Type, a6);
  CFRelease(v27);
  if (v28)
  {
    return 0;
  }

  return v11;
}

uint64_t cpGetChallengeSignatureLengths(mach_port_t a1, uint64_t *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  output = 0;
  v11 = 0;
  outputCnt = 2;
  puts("cpGetChallengeSignatureLengths");
  result = IOConnectCallScalarMethod(a1, 0x14u, 0, 0, &output, &outputCnt);
  v7 = v11;
  *a2 = output;
  *a3 = v7;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cpCreateFormattedChallengeFromServerRequest(mach_port_t a1, const __CFData *a2, CFDataRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  puts("cpCreateFormattedChallengeFromServerRequest");
  memset(outputStruct, 0, sizeof(outputStruct));
  outputStructCnt = 128;
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v8 = IOConnectCallStructMethod(a1, 0x15u, BytePtr, Length, outputStruct, &outputStructCnt);
  if (!v8 && outputStructCnt)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], outputStruct, outputStructCnt);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t cpCreateFormattedResponseForServerResponse(mach_port_t a1, const __CFData *a2, CFDataRef *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  input = a4;
  puts("cpCreateFormattedResponseForServerResponse");
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *bytes = 0u;
  v15 = 0u;
  length = 128;
  BytePtr = CFDataGetBytePtr(a2);
  v8 = CFDataGetLength(a2);
  v9 = IOConnectCallMethod(a1, 0x16u, &input, 1u, BytePtr, v8, 0, 0, bytes, &length);
  if (!v9)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t cpCreateSignature(mach_port_t a1, CFDataRef theData, CFDataRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  length = 128;
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetLength(theData);
  v8 = IOConnectCallStructMethod(a1, 0, BytePtr, v7, outputStruct, &length);
  if (!v8)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], outputStruct, length);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t cpCreateSignatureWithIndexAndToken(mach_port_t a1, const __CFData *a2, CFDataRef *a3, uint64_t *a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  puts("cpCreateSignatureWithIndexAndToken");
  if (a2)
  {
    v10 = CFDataGetLength(a2);
    if (v10)
    {
      CFDataGetBytePtr(a2);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *bytes = 0u;
  v20 = 0u;
  input[0] = a5;
  input[1] = v10;
  input[2] = 128;
  outputCnt = 1;
  length = 128;
  BytePtr = CFDataGetBytePtr(a2);
  v12 = CFDataGetLength(a2);
  v13 = IOConnectCallMethod(a1, 0x13u, input, 3u, BytePtr, v12, a4, &outputCnt, bytes, &length);
  if (!v13)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t cpSetAuthErrorDescription(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0xBu, v7, Length + 1, 0, 0);
    }

    else
    {
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpSetAuthError(mach_port_t a1, unsigned int a2)
{
  printf("cpSetAuthError %d\n", a2);
  input = a2;
  return IOConnectCallScalarMethod(a1, 0xCu, &input, 1u, 0, 0);
}

uint64_t cpCopyDownstreamCertificateSerialNumber(mach_port_t a1, CFStringRef *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  outputStructCnt = 33;
  v3 = IOConnectCallStructMethod(a1, 1u, 0, 0, outputStruct, &outputStructCnt);
  v4 = 0;
  if (!v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], outputStruct, 0x600u);
  }

  *a2 = v4;
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t cpGetDownstreamAuthMajorVer(mach_port_t a1, _BYTE *a2)
{
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(a1, 3u, 0, 0, &output, &outputCnt);
  *a2 = output;
  return result;
}

uint64_t cpSetExpectedPairedCertSN(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0x11u, v7, Length + 1, 0, 0);
    }

    else
    {
      puts("cpSetExpectedPairedCertSN: !CFStringGetCString");
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpSetActualPairedCertSN(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0x12u, v7, Length + 1, 0, 0);
    }

    else
    {
      puts("cpSetActualPairedCertSN: !CFStringGetCString");
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpGetTransportEntryId(mach_port_t a1, uint64_t *a2)
{
  output = 0;
  outputCnt = 1;
  v3 = IOConnectCallScalarMethod(a1, 0x10u, 0, 0, &output, &outputCnt);
  v4 = v3;
  if (v3)
  {
    printf("cpGetTransportEntryId: IOConnectCallScalarMethod failed: 0x%x\n", v3);
  }

  else
  {
    *a2 = output;
  }

  return v4;
}