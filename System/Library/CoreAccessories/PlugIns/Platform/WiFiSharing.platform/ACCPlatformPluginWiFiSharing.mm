@interface ACCPlatformPluginWiFiSharing
- (BOOL)handleAccessoryWiFiInformationForWirelessCarPlay:(id)a3;
- (BOOL)isDeviceConnectedToWiFi;
- (NSString)pluginName;
- (id)copyDeviceWiFiNetworkInformation;
- (void)initPlugin;
@end

@implementation ACCPlatformPluginWiFiSharing

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)initPlugin
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_233653000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceConnectedToWiFi
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = WiFiManagerClientCreate();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = WiFiManagerClientCopyDevices();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) && (CFArrayGetValueAtIndex(v6, 0), (v7 = WiFiDeviceClientCopyCurrentNetwork()) != 0))
    {
      CFRelease(v7);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

- (id)copyDeviceWiFiNetworkInformation
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *MEMORY[0x277CBECE8];
  v4 = WiFiManagerClientCreate();
  if (!v4)
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 1;
    goto LABEL_37;
  }

  v5 = v4;
  v6 = WiFiManagerClientCopyDevices();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      v8 = WiFiDeviceClientCopyCurrentNetwork();
      if (v8)
      {
        v9 = v8;
        v10 = WiFiNetworkGetSSID();
        v29 = v10;
        if (v10)
        {
          v11 = [v10 copy];
        }

        else
        {
          v11 = &stru_2848F1848;
        }

        if (WiFiNetworkIsWEP())
        {
          v14 = 0;
LABEL_15:
          v13 = 0;
          v15 = 1;
          goto LABEL_28;
        }

        if (WiFiNetworkIsWPA())
        {
          v16 = WiFiNetworkCopyRecord();
          v13 = 2;
          if (v16)
          {
            v17 = v16;
            v18 = CFDictionaryContainsKey(v16, @"WPA_IE");
            v19 = CFDictionaryContainsKey(v17, @"RSN_IE");
            if (v18)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            if (v19)
            {
              v14 = v20;
            }

            else
            {
              v14 = 1;
            }

            CFRelease(v17);
            goto LABEL_15;
          }

          v15 = 1;
        }

        else
        {
          v15 = 0;
          v13 = 0;
        }

        v14 = 1;
LABEL_28:
        v21 = WiFiNetworkCopyPassword();
        v22 = v21;
        if (v21)
        {
          v12 = [v21 copy];
        }

        else
        {
          v12 = &stru_2848F1848;
          if (v15)
          {
LABEL_33:
            v13 = 2;
LABEL_34:
            CFRelease(v9);

            goto LABEL_35;
          }
        }

        if (!WiFiNetworkRequiresUsername() && !WiFiNetworkRequiresIdentity())
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v12 = 0;
      v11 = 0;
      v13 = 2;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }

    v14 = 1;
LABEL_35:
    CFRelease(v7);
    goto LABEL_36;
  }

  v13 = 0;
  v11 = 0;
  v12 = 0;
  v14 = 1;
LABEL_36:
  CFRelease(v5);
LABEL_37:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  [v2 setObject:v23 forKey:@"WiFiStatus"];

  if (v13 != 2)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    [v2 setObject:v24 forKey:@"WiFiSecurityType"];

    if (v11)
    {
      [v2 setObject:v11 forKey:@"WiFiSSID"];
    }

    if (v12)
    {
      [v2 setObject:v12 forKey:@"WiFiPassphrase"];
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v25 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginWiFiSharing initPlugin];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v2;
    _os_log_impl(&dword_233653000, v25, OS_LOG_TYPE_INFO, "Returning deviceWiFiNetworkInformation %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)handleAccessoryWiFiInformationForWirelessCarPlay:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"WiFiBSSID"];
  v5 = [v3 objectForKey:@"WiFiSSID"];
  v6 = [v3 objectForKey:@"WiFiPassphrase"];
  v7 = [v3 objectForKey:@"WiFiSecurityType"];
  v29 = [v3 objectForKey:@"WiFiChannel"];
  v8 = [v3 objectForKey:@"LegacyAccessoryExternalAccessoryConnectionID"];
  if (v7)
  {
    v9 = [v7 unsignedIntValue];
  }

  else
  {
    v9 = 0;
  }

  if (!v5 || (v6 ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    v11 = v4;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginWiFiSharing initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_233653000, v13, OS_LOG_TYPE_DEFAULT, "ERROR: either SSID is nil (it's %@), or passphrase is present but securityType is none, not setting CarPlay WiFi params", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v11 = v4;
    v12 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v15 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginWiFiSharing initPlugin];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = v11;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&dword_233653000, v15, OS_LOG_TYPE_DEFAULT, "accessory wifi info for CarPlay is %@", buf, 0xCu);
  }

  v18 = v8;
  if (v12)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v20 = v19;
    if (v17)
    {
      [v19 setObject:v17 forKey:@"BSSID"];
    }

    if (v5)
    {
      [v20 setObject:v5 forKey:@"SSID_STR"];
    }

    if (v29)
    {
      [v20 setObject:v29 forKey:@"CHANNEL"];
    }

    if (v6)
    {
      [v20 setObject:v6 forKey:@"password"];
    }

    if (v9 >= 3)
    {
      v22 = v17;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v23 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformPluginWiFiSharing initPlugin];
        }

        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v31) = v9;
        _os_log_impl(&dword_233653000, v23, OS_LOG_TYPE_DEFAULT, "Invalid accessory security type %d", buf, 8u);
      }

      v21 = 0;
      v17 = v22;
      v18 = v8;
    }

    else
    {
      v21 = *(&off_2789E7FC8 + v9);
    }

    [v20 setObject:v21 forKey:@"securityType"];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v25 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginWiFiSharing initPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(ACCPlatformPluginWiFiSharing *)v20 handleAccessoryWiFiInformationForWirelessCarPlay:v18, v25];
    }

    [v18 unsignedIntegerValue];
    CRSaveWiFiCredentialsForAccessoryConnectionIdentifier();
  }

  v27 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleAccessoryWiFiInformationForWirelessCarPlay:(NSObject *)a3 .cold.5(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 138412802;
  v7 = a1;
  v8 = 2048;
  v9 = [a2 unsignedIntegerValue];
  v10 = 2048;
  v11 = [a2 unsignedIntegerValue];
  _os_log_debug_impl(&dword_233653000, a3, OS_LOG_TYPE_DEBUG, "Saving dictionary %@ to carPlay for EA connectionID %lu (0x%lX)", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end