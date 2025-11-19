CFTypeRef SCNetworkSignatureCopyIdentifierForConnectedSocket()
{
  values[6] = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *keys = 0u;
  if (copyconninfo())
  {
    goto LABEL_2;
  }

  if ((MEMORY[0] & 2) == 0)
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v5 = 1001;
    freeconninfo();
    goto LABEL_5;
  }

  v1 = MEMORY[8];
  if (MEMORY[8])
  {
    v8 = *(MEMORY[8] + 1);
    if (v8 == 2)
    {
      v9 = &kSCPropNetIPv4Addresses;
      v10 = 4;
    }

    else
    {
      if (v8 != 30)
      {
LABEL_2:
        v0 = 0;
        v1 = 0;
        v2 = 0;
        v3 = 0;
        v4 = 0;
        v5 = 1002;
        goto LABEL_3;
      }

      v9 = &kSCPropNetIPv6Addresses;
      v10 = 8;
    }

    v11 = *v9;
    v12 = &kSCEntNetIPv6;
    if (v8 == 2)
    {
      v12 = &kSCEntNetIPv4;
    }

    values[0] = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", *v12);
    v13 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values[0]);
    v4 = SCDynamicStoreCopyMultiple(0, 0, v13);
    CFRelease(v13);
    if (v4 && inet_ntop(v8, v1 + v10, values, 0x2Eu))
    {
      v2 = CFStringCreateWithCString(0, values, 0x600u);
      if (v2)
      {
        if (MEMORY[4] && if_indextoname(MEMORY[4], values))
        {
          v0 = CFStringCreateWithCString(0, values, 0x600u);
        }

        else
        {
          v0 = 0;
        }

        Count = CFDictionaryGetCount(v4);
        v15 = Count;
        if (Count >= 11)
        {
          v1 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(v4, v1, 0);
          goto LABEL_39;
        }

        v1 = keys;
        CFDictionaryGetKeysAndValues(v4, keys, 0);
        if (v15 >= 1)
        {
LABEL_39:
          v27 = v11;
          v16 = 0;
          while (1)
          {
            Value = CFDictionaryGetValue(v4, v1[v16]);
            TypeID = CFDictionaryGetTypeID();
            if (Value)
            {
              if (CFGetTypeID(Value) == TypeID)
              {
                v19 = CFDictionaryGetValue(Value, @"NetworkSignature");
                v20 = CFStringGetTypeID();
                if (v19)
                {
                  if (CFGetTypeID(v19) == v20)
                  {
                    if (!v0 || (v21 = CFDictionaryGetValue(Value, @"InterfaceName"), v22 = CFStringGetTypeID(), v21) && CFGetTypeID(v21) == v22 && CFEqual(v21, v0) && ((v23 = CFDictionaryGetValue(Value, @"ConfirmedInterfaceName"), v24 = CFStringGetTypeID(), !v23) || CFGetTypeID(v23) != v24 || CFEqual(v23, v0)))
                    {
                      v25 = CFDictionaryGetValue(Value, v27);
                      v26 = CFArrayGetTypeID();
                      if (v25)
                      {
                        if (CFGetTypeID(v25) == v26)
                        {
                          v34.length = CFArrayGetCount(v25);
                          v34.location = 0;
                          if (CFArrayContainsValue(v25, v34, v2))
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v16;
            v5 = 1001;
            if (v15 == v16)
            {
              v3 = 0;
              goto LABEL_3;
            }
          }

          v3 = CFRetain(v19);
          v5 = 0;
          goto LABEL_3;
        }
      }

      else
      {
        v0 = 0;
        v1 = 0;
      }
    }

    else
    {
      v0 = 0;
      v1 = 0;
      v2 = 0;
    }

    v3 = 0;
  }

  else
  {
    v0 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  v5 = 1001;
LABEL_3:
  if (v0)
  {
    CFRelease(v0);
  }

LABEL_5:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1 && v1 != keys)
  {
    free(v1);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    _SCErrorSet(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

Boolean CNSetSupportedSSIDs(CFArrayRef ssidArray)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNSetSupportedSSIDs_dyfunc;
  if (!CNSetSupportedSSIDs_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNSetSupportedSSIDs");
      CNSetSupportedSSIDs_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNSetSupportedSSIDs_dyfunc;
      if (CNSetSupportedSSIDs_dyfunc)
      {
        goto LABEL_6;
      }
    }

    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];

  return (v2)(ssidArray);
}

Boolean CNMarkPortalOnline(CFStringRef interfaceName)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNMarkPortalOnline_dyfunc;
  if (!CNMarkPortalOnline_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNMarkPortalOnline");
      CNMarkPortalOnline_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNMarkPortalOnline_dyfunc;
      if (CNMarkPortalOnline_dyfunc)
      {
        goto LABEL_6;
      }
    }

    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];

  return (v2)(interfaceName);
}

Boolean CNMarkPortalOffline(CFStringRef interfaceName)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNMarkPortalOffline_dyfunc;
  if (!CNMarkPortalOffline_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNMarkPortalOffline");
      CNMarkPortalOffline_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNMarkPortalOffline_dyfunc;
      if (CNMarkPortalOffline_dyfunc)
      {
        goto LABEL_6;
      }
    }

    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];

  return (v2)(interfaceName);
}

CFArrayRef CNCopySupportedInterfaces(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CNCopySupportedInterfaces_dyfunc;
  if (!CNCopySupportedInterfaces_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v0 = dlsym(__loadCaptiveNetwork_image, "__CNCopySupportedInterfaces");
      CNCopySupportedInterfaces_dyfunc = v0;
      if (v0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v0 = CNCopySupportedInterfaces_dyfunc;
      if (CNCopySupportedInterfaces_dyfunc)
      {
        goto LABEL_6;
      }
    }

    v3 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_6:
  v1 = *MEMORY[0x1E69E9840];

  return (v0)();
}

CFDictionaryRef CNCopyCurrentNetworkInfo(CFStringRef interfaceName)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CNCopyCurrentNetworkInfo_dyfunc;
  if (!CNCopyCurrentNetworkInfo_dyfunc)
  {
    if (__loadCaptiveNetwork_once != -1)
    {
      CNSetSupportedSSIDs_cold_1();
    }

    if (__loadCaptiveNetwork_image)
    {
      v2 = dlsym(__loadCaptiveNetwork_image, "__CNCopyCurrentNetworkInfo");
      CNCopyCurrentNetworkInfo_dyfunc = v2;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = CNCopyCurrentNetworkInfo_dyfunc;
      if (CNCopyCurrentNetworkInfo_dyfunc)
      {
        goto LABEL_6;
      }
    }

    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];

  return (v2)(interfaceName);
}

void *____loadCaptiveNetwork_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _SC_dlopen("/System/Library/PrivateFrameworks/CaptiveNetwork.framework/CaptiveNetwork");
  __loadCaptiveNetwork_image = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t VPNConfigurationCreate()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCreateWithOptions()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationGetTunnelType()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t VPNConfigurationCopyAll()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopy()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSet()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationRemove()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetName()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationGetName()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetEnabled()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationGetEnabled()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationEnableVPNType()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t VPNConfigurationIsVPNTypeEnabled()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t VPNConfigurationCopyVendorData()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetVendorData()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNCopyLastError()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetCallback()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetMessageCallback()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationScheduleWithRunLoop()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationUnscheduleFromRunLoop()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationConnectionStart()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationConnectionStop()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationGetStatus()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

uint64_t VPNConfigurationSendMessage()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopyIdentities()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopyCertificate()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopyLastConnectionError()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetPersistentData()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopyPersistentData()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationValidateCertificate()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 3;
}

uint64_t VPNConfigurationCopyAppRuleIDs()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationCopyAppRule()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationRemoveAppRule()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNConfigurationSetAppRule()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t VPNTunnelSetStatus(uint64_t (**a1)(void))
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelSetPersistentData(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelFetchCredentialComplete(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCopyPersistentData(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelAuthenticate(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelDisplayBanner(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelSetConfigurationEntities(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelSetTunnelSocket(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoEnable(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoDisable(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoAddConfigurations(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoRemoveConfigurations(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoGenerateIndex(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 96);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoStopDataTraffic(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 104);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCryptoStartDataTraffic(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 112);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelClearConfiguration(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelIPCSendMessage(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 128);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelUpdatePlugin(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 136);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelEnvironmentEventComplete(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 144);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCopySocketInfo(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 160);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelIncrementDataSent(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 192);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelIncrementDataReceived(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 200);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

void VPNTunnelLog(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, &a9);
    (*(a1 + 152))(a1, a2, v11);
    CFRelease(v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t VPNTunnelCopySavedConfiguration(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 168);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCopySavedVendorData(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 176);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t VPNTunnelCopySavedConfigurationName(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 184);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t SCBridgeInterfaceCopyAll(const __SCPreferences *a1)
{
  context[3] = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUsingDefaultPrefs(a1))
  {
    Companion = 0;
  }

  else
  {
    Companion = SCPreferencesCreateCompanion(a1, @"NetworkInterfaces.plist");
  }

  context[1] = Companion;
  context[2] = a1;
  context[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"VirtualNetworkInterfaces", @"Bridge");
  Value = SCPreferencesPathGetValue(a1, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v6 = CFGetAllocator(Value);
    Copy = CFDictionaryCreateCopy(v6, Value);
    CFDictionaryApplyFunction(Copy, add_configured_interface, context);
    CFRelease(Copy);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  result = context[0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void add_configured_interface(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  theArray[1] = *MEMORY[0x1E69E9840];
  theArray[0] = 0;
  Private = _SCBridgeInterfaceCreatePrivate(0, a1);
  if (!Private)
  {
    add_configured_interface_cold_1();
  }

  v6 = Private;
  *(Private + 80) = CFRetain(*(a3 + 16));
  Value = CFDictionaryGetValue(a2, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          v13 = CFStringGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v13)
          {
            add_interface(theArray, ValueAtIndex, *(a3 + 8));
          }
        }

        v14 = theArray[0];
        if (theArray[0])
        {
          __SCBridgeInterfaceSetMemberInterfaces(v6, theArray[0]);
          CFRelease(v14);
        }
      }
    }
  }

  v15 = CFDictionaryGetValue(a2, @"Options");
  v16 = CFDictionaryGetTypeID();
  if (v15)
  {
    if (CFGetTypeID(v15) == v16)
    {
      SCBridgeInterfaceSetOptions(v6, v15);
      v15 = CFDictionaryGetValue(v15, @"__AUTO__");
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = CFDictionaryGetValue(a2, @"UserDefinedName");
  v18 = CFStringGetTypeID();
  if (v17 && CFGetTypeID(v17) == v18)
  {
    SCBridgeInterfaceSetLocalizedDisplayName(v6, v17);
  }

  else
  {
    v19 = CFStringGetTypeID();
    if (v15)
    {
      if (CFGetTypeID(v15) == v19)
      {
        v6[6] = v15;
        v20 = v6[7];
        if (v20)
        {
          CFRelease(v20);
          v6[7] = 0;
        }
      }
    }
  }

  CFArrayAppendValue(*a3, v6);
  v21 = *MEMORY[0x1E69E9840];

  CFRelease(v6);
}

void __SCBridgeInterfaceListCollectMembers(const __CFArray *a1, __CFSet *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v10 = ValueAtIndex;
      if (!a3 || !SCBridgeInterfaceGetAllowConfiguredMembers(ValueAtIndex))
      {
        MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v10);
        if (MemberInterfaces)
        {
          v12 = MemberInterfaces;
          v13 = CFArrayGetCount(MemberInterfaces);
          if (v13 >= 1)
          {
            v14 = v13;
            for (j = 0; j != v14; ++j)
            {
              v16 = CFArrayGetValueAtIndex(v12, j);
              CFSetAddValue(a2, v16);
            }
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t SCBridgeInterfaceGetAllowConfiguredMembers(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")))
  {
    _SCErrorSet(1002);
LABEL_11:
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v4 = a1[45];
  if (!v4)
  {
    CFBooleanGetTypeID();
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v4, @"AllowConfiguredMembers");
  v6 = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != v6)
  {
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(Value);
}

uint64_t SCBridgeInterfaceGetMemberInterfaces(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")))
  {
    result = a1[44];
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *SCBridgeInterfaceCopyAvailableMemberInterfaces(const __SCPreferences *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v4 = SCBridgeInterfaceCopyAll(a1);
  if (v4)
  {
    v5 = v4;
    __SCBridgeInterfaceListCollectMembers(v4, v3, 0);
    CFRelease(v5);
  }

  v6 = SCVLANInterfaceCopyAll(a1);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(ValueAtIndex);
        CFSetAddValue(v3, PhysicalInterface);
      }
    }

    CFRelease(v7);
  }

  v13 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v13)
  {
    v14 = v13;
    v15 = CFArrayGetCount(v13);
    if (v15 >= 1)
    {
      v16 = v15;
      for (j = 0; j != v16; ++j)
      {
        v18 = CFArrayGetValueAtIndex(v14, j);
        if (v18[344])
        {
          v19 = v18;
          if (!CFSetContainsValue(v3, v18))
          {
            CFArrayAppendValue(Mutable, v19);
          }
        }
      }
    }

    CFRelease(v14);
  }

  CFRelease(v3);
  v20 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *_SCBridgeInterfaceCopyActive()
{
  v62 = *MEMORY[0x1E69E9840];
  v58 = 0;
  if (getifaddrs(&v58) == -1)
  {
    v18 = __error();
    _SCErrorSet(*v18);
    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v29 = &v55 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      v32 = __error();
      v33 = strerror(*v32);
      *v31 = 136315138;
      *(v31 + 4) = v33;
      __SC_log_send(5, v19, v20, v29);
    }

    Mutable = 0;
    goto LABEL_34;
  }

  v0 = inet_dgram_socket();
  if (v0 == -1)
  {
    v34 = __error();
    _SCErrorSet(*v34);
    Mutable = 0;
    goto LABEL_33;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = v58;
  if (!v58)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v57 = 0;
    ifa_data = v3->ifa_data;
    if (ifa_data)
    {
      if (v3->ifa_addr->sa_family == 18 && *ifa_data == 209)
      {
        ifa_name = v3->ifa_name;
        v6 = strlen(ifa_name);
        if (v6 < 4 || (v7 = &ifa_name[v6], (ifa_name[v6 - 1] - 48) > 9) || (*(v7 - 2) - 48) > 9 || (*(v7 - 3) - 48) >= 0xA)
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          __strlcpy_chk();
          *&v60 = 6;
          v8 = malloc_type_malloc(0x50CuLL, 0xCB74951BuLL);
          if (v8)
          {
            v9 = v8;
            v10 = 1280;
            v11 = 1292;
            while (1)
            {
              bzero(v9, v11);
              *v9 = v10;
              *(v9 + 1) = v9 + 3;
              *(&v60 + 1) = 12;
              v61 = v9;
              if (ioctl(v1, 0xC028697BuLL, &v59) == -1)
              {
                free(v9);
                goto LABEL_18;
              }

              if (*v9 + 80 < v10)
              {
                break;
              }

              v10 *= 2;
              v11 = v10 | 0xC;
              v9 = reallocf(v9, v11);
              if (!v9)
              {
                goto LABEL_18;
              }
            }

            v12 = CFStringCreateWithCString(0, v3->ifa_name, 0x600u);
            Private = _SCBridgeInterfaceCreatePrivate(0, v12);
            CFRelease(v12);
            if (*v9 >= 0x50u)
            {
              v56 = Mutable;
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = CFStringCreateWithCString(0, (*(v9 + 1) + v14), 0x600u);
                add_interface(&v57, v16, 0);
                CFRelease(v16);
                ++v15;
                v14 += 80;
              }

              while (v15 < *v9 / 0x50uLL);
              v17 = v57;
              free(v9);
              Mutable = v56;
              if (v17)
              {
                __SCBridgeInterfaceSetMemberInterfaces(Private, v17);
                CFRelease(v17);
              }
            }

            else
            {
              free(v9);
            }

            CFArrayAppendValue(Mutable, Private);
            CFRelease(Private);
            goto LABEL_27;
          }

LABEL_18:
          if (*__error() != 16)
          {
            break;
          }
        }
      }
    }

LABEL_27:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v37 = __error();
  _SCErrorSet(*v37);
  v38 = __log_SCNetworkConfiguration();
  v39 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v38, v39))
  {
    v41 = _os_log_pack_size();
    v49 = &v55 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = *__error();
    v51 = _os_log_pack_fill();
    v52 = v3->ifa_name;
    v53 = __error();
    v54 = strerror(*v53);
    *v51 = 136315394;
    *(v51 + 4) = v52;
    *(v51 + 12) = 2080;
    *(v51 + 14) = v54;
    __SC_log_send(5, v38, v39, v49);
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_28:
  close(v1);
LABEL_33:
  MEMORY[0x1B26F4BC0](v58);
LABEL_34:
  v35 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t inet_dgram_socket()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = socket(2, 2, 0);
  if (v0 == -1)
  {
    v1 = __log_SCNetworkConfiguration();
    v2 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v1, v2))
    {
      v3 = _os_log_pack_size();
      v11 = v18 - ((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315138;
      *(v13 + 4) = v15;
      __SC_log_send(3, v1, v2, v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v0;
}

void add_interface(CFMutableArrayRef *a1, const __CFString *a2, const __SCPreferences *cf)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    *a1 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!cf)
    {
      goto LABEL_6;
    }

LABEL_5:
    v6 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, cf, a2);
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (cf)
  {
    goto LABEL_5;
  }

LABEL_6:
  v6 = _SCNetworkInterfaceCreateWithBSDName(0, a2, 0);
  if (!v6)
  {
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_7:
  v7 = v6;
  CFArrayAppendValue(*a1, v6);
  v8 = *MEMORY[0x1E69E9840];

  CFRelease(v7);
}

uint64_t __SCBridgeInterfaceSetMemberInterfaces(uint64_t a1, CFArrayRef theArray)
{
  v20 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (!*(a1 + 80))
  {
    v13 = 1;
LABEL_16:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, *(a1 + 80), *(a1 + 96));
        CFArrayAppendValue(Mutable, Copy);
        CFRelease(Copy);
      }
    }

    CFRelease(*(a1 + 352));
    *(a1 + 352) = Mutable;
    goto LABEL_20;
  }

  v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
  Value = SCPreferencesPathGetValue(*(a1 + 80), v5);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    CFRelease(v5);
    _SCErrorSet(1001);
    v13 = 0;
    goto LABEL_20;
  }

  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      v10 = CFArrayGetValueAtIndex(theArray, j);
      BSDName = SCNetworkInterfaceGetBSDName(v10);
      CFArrayAppendValue(v8, BSDName);
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  CFDictionarySetValue(MutableCopy, @"Interfaces", v8);
  CFRelease(v8);
  if (CFEqual(Value, MutableCopy))
  {
    v13 = 1;
  }

  else
  {
    v13 = SCPreferencesPathSetValue(*(a1 + 80), v5, MutableCopy);
  }

  CFRelease(MutableCopy);
  CFRelease(v5);
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SCBridgeInterfaceCreate(const void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _SCErrorSet(1002);
LABEL_9:
    Private = 0;
    goto LABEL_10;
  }

  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"bridge%ld", 0);
  v4 = CFStringCreateWithFormat(v2, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", v3);
  if (SCPreferencesPathGetValue(a1, v4))
  {
    v5 = 1;
    do
    {
      CFRelease(v4);
      CFRelease(v3);
      v3 = CFStringCreateWithFormat(v2, 0, @"bridge%ld", v5);
      v4 = CFStringCreateWithFormat(v2, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", v3);
      ++v5;
    }

    while (SCPreferencesPathGetValue(a1, v4));
  }

  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreate(v2, 0, 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"Interfaces", v7);
  CFRelease(v7);
  v8 = SCPreferencesPathSetValue(a1, v4, Mutable);
  CFRelease(Mutable);
  CFRelease(v4);
  if (!v8)
  {
    CFRelease(v3);
    goto LABEL_9;
  }

  Private = _SCBridgeInterfaceCreatePrivate(v2, v3);
  CFRelease(v3);
  *(Private + 80) = CFRetain(a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return Private;
}

uint64_t SCBridgeInterfaceRemove(SCPreferencesRef *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")) && a1[10])
  {
    BSDName = SCNetworkInterfaceGetBSDName(a1);
    v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", BSDName);
    v6 = SCPreferencesPathRemoveValue(a1[10], v5);
    CFRelease(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    _SCErrorSet(1002);
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCBridgeInterfaceGetOptions(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")))
  {
    result = a1[45];
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCBridgeInterfaceSetMemberInterfaces(const __SCPreferences **a1, const void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1)
  {
    goto LABEL_15;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_15;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (!CFEqual(InterfaceType, @"Bridge"))
  {
    goto LABEL_15;
  }

  AllowConfiguredMembers = SCBridgeInterfaceGetAllowConfiguredMembers(a1);
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = CFArrayGetTypeID();
  if (CFGetTypeID(a2) != v6)
  {
LABEL_15:
    v15 = 1002;
LABEL_16:
    _SCErrorSet(v15);
    v16 = *MEMORY[0x1E69E9840];
    return 0;
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      v11 = SCNetworkInterfaceGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v11 || !SCNetworkInterfaceGetBSDName(ValueAtIndex))
      {
        goto LABEL_15;
      }
    }

    while (v8 != ++v9);
  }

LABEL_12:
  if (!a1[10])
  {
    goto LABEL_44;
  }

  MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(a1);
  v13 = MemberInterfaces;
  if (MemberInterfaces)
  {
    v14 = CFArrayGetCount(MemberInterfaces);
  }

  else
  {
    v14 = 0;
  }

  v18 = SCBridgeInterfaceCopyAvailableMemberInterfaces(a1[10]);
  v19 = v18;
  if (v18)
  {
    v20 = CFArrayGetCount(v18);
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v20 = 0;
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  v21 = CFArrayGetCount(a2);
  if (v21 >= 1)
  {
    v22 = v21;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = CFArrayGetValueAtIndex(a2, v23);
      if (!v13)
      {
        break;
      }

      v32.location = 0;
      v32.length = v14;
      v26 = CFArrayContainsValue(v13, v32, v25);
      if (v19 && !v26)
      {
        goto LABEL_30;
      }

      if (!v26)
      {
        v27 = 1002;
        if (v19)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

LABEL_35:
      if (v22 == ++v23)
      {
        goto LABEL_38;
      }
    }

    if (!v19)
    {
      v27 = 1002;
      goto LABEL_40;
    }

LABEL_30:
    v33.location = 0;
    v33.length = v20;
    if (!CFArrayContainsValue(v19, v33, v25))
    {
      v27 = 1002;
      goto LABEL_39;
    }

    if (!AllowConfiguredMembers && (v24 || (v24 = __SCNetworkServiceCopyAllEnabled(a1[10])) != 0))
    {
      if (__SCNetworkServiceExistsForInterface(v24, v25))
      {
        v27 = 1005;
        goto LABEL_39;
      }
    }

    goto LABEL_35;
  }

LABEL_37:
  v24 = 0;
LABEL_38:
  v27 = 0;
  if (v19)
  {
LABEL_39:
    CFRelease(v19);
  }

LABEL_40:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v27)
  {
    v15 = v27;
    goto LABEL_16;
  }

LABEL_44:
  v28 = *MEMORY[0x1E69E9840];

  return __SCBridgeInterfaceSetMemberInterfaces(a1, a2);
}

uint64_t SCBridgeInterfaceSetLocalizedDisplayName(uint64_t a1, const __CFString *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")) || a2 && (v6 = CFStringGetTypeID(), CFGetTypeID(a2) != v6))
  {
    v12 = 1002;
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
    Value = SCPreferencesPathGetValue(*(a1 + 80), v7);
    v9 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      v11 = MutableCopy;
      if (a2)
      {
        CFDictionarySetValue(MutableCopy, @"UserDefinedName", a2);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
      }

      if (CFEqual(Value, v11))
      {
        v13 = 1;
      }

      else
      {
        v13 = SCPreferencesPathSetValue(*(a1 + 80), v7, v11);
      }

      CFRelease(v11);
      CFRelease(v7);
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    CFRelease(v7);
    v12 = 1001;
LABEL_12:
    _SCErrorSet(v12);
    v13 = 0;
    goto LABEL_13;
  }

  v13 = 1;
LABEL_21:
  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 40) = 0;
  }

  if (a2)
  {
    *(a1 + 40) = CFStringCreateCopy(0, a2);
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SCBridgeInterfaceSetOptions(const void *a1, const __CFDictionary *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(InterfaceType, @"Bridge")) && (!a2 || (v6 = CFDictionaryGetTypeID(), CFGetTypeID(a2) == v6)))
  {
    v7 = *MEMORY[0x1E69E9840];

    return __SCBridgeInterfaceSetOptions(a1, a2);
  }

  else
  {
    _SCErrorSet(1002);
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCBridgeInterfaceSetOptions(uint64_t a1, CFDictionaryRef theDict)
{
  value[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    v22 = 1;
LABEL_15:
    v23 = *(a1 + 360);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 360) = 0;
    }

    if (theDict)
    {
      value[0] = 0;
      *(a1 + 360) = CFDictionaryCreateCopy(0, theDict);
      if (!*(a1 + 40))
      {
        if (CFDictionaryGetValueIfPresent(theDict, @"__AUTO__", value))
        {
          v26 = value[0];
          TypeID = CFStringGetTypeID();
          if (v26)
          {
            if (CFGetTypeID(v26) == TypeID)
            {
              *(a1 + 48) = value[0];
              v28 = *(a1 + 56);
              if (v28)
              {
                CFRelease(v28);
                *(a1 + 56) = 0;
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

  v4 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"Bridge", *(a1 + 112));
  v5 = SCPreferencesPathGetValue(*(a1 + 80), v4);
  v6 = CFDictionaryGetTypeID();
  if (v5 && CFGetTypeID(v5) == v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
    v8 = MutableCopy;
    if (theDict)
    {
      CFDictionarySetValue(MutableCopy, @"Options", theDict);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Options");
    }

    if (CFEqual(v5, v8))
    {
      v22 = 1;
    }

    else
    {
      v22 = SCPreferencesPathSetValue(*(a1 + 80), v4, v8);
    }

    CFRelease(v8);
    CFRelease(v4);
    if (!v22)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v9, v10))
  {
    v11 = _os_log_pack_size();
    v19 = value - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "__SCBridgeInterfaceSetOptions";
    __SC_log_send(5, v9, v10, v19);
  }

  CFRelease(v4);
  _SCErrorSet(1001);
  v22 = 0;
LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __SCBridgeInterfaceSetAutoConfigure(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 360);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = 1;
    if (a2)
    {
LABEL_3:
      CFDictionaryRemoveValue(MutableCopy, @"AutoConfigure");
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CFDictionarySetValue(MutableCopy, @"AutoConfigure", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
LABEL_4:
    v6 = CFEqual(v4, MutableCopy) == 0;
  }

LABEL_5:
  if (v6)
  {
    v7 = __SCBridgeInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v7 = 1;
  }

  CFRelease(MutableCopy);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __SCBridgeInterfaceGetAutoConfigure(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 360);
  if (!v1)
  {
    CFBooleanGetTypeID();
LABEL_8:
    v6 = *MEMORY[0x1E69E9840];
    return 1;
  }

  Value = CFDictionaryGetValue(v1, @"AutoConfigure");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_8;
  }

  v4 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(Value);
}

uint64_t SCBridgeInterfaceSetAllowConfiguredMembers(CFDictionaryRef *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), !CFEqual(InterfaceType, @"Bridge")))
  {
    _SCErrorSet(1002);
    v9 = 0;
    goto LABEL_11;
  }

  v6 = a1[45];
  if (v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1[45]);
    v8 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_13:
    CFDictionaryRemoveValue(MutableCopy, @"AllowConfiguredMembers");
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = 1;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_6:
  CFDictionarySetValue(MutableCopy, @"AllowConfiguredMembers", *MEMORY[0x1E695E4D0]);
  if (v6)
  {
LABEL_7:
    v8 = CFEqual(v6, MutableCopy) == 0;
  }

LABEL_8:
  if (v8)
  {
    v9 = __SCBridgeInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v9 = 1;
  }

  CFRelease(MutableCopy);
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _SCBridgeInterfaceUpdateConfiguration(const __SCPreferences *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _SCErrorSet(1002);
    v5 = 0;
    goto LABEL_99;
  }

  v2 = SCBridgeInterfaceCopyAll(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v6 = _SCBridgeInterfaceCopyActive();
  v62 = v3;
  v63 = Count;
  v64 = a1;
  theArray = v6;
  if (!v6)
  {
    v61 = 0;
    v68 = 0;
LABEL_34:
    v5 = 1;
    v9 = -1;
    goto LABEL_35;
  }

  v7 = v6;
  v68 = CFArrayGetCount(v6);
  if (v68 < 1)
  {
    v61 = 0;
    goto LABEL_34;
  }

  v8 = 0;
  v9 = -1;
  v5 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (Count >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = CFArrayGetValueAtIndex(v3, v12);
        v14 = SCNetworkInterfaceGetBSDName(v13);
        if (CFEqual(BSDName, v14))
        {
          break;
        }

        if (Count == ++v12)
        {
          goto LABEL_13;
        }
      }

      MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v13);
      v17 = MemberInterfaces;
      if (MemberInterfaces)
      {
        v18 = CFArrayGetCount(MemberInterfaces);
      }

      else
      {
        v18 = 0;
      }

      v19 = SCBridgeInterfaceGetMemberInterfaces(ValueAtIndex);
      if (v19)
      {
        v20 = v19;
        v21 = CFArrayGetCount(v19);
        if (v21 >= 1)
        {
          v22 = v21;
          v23 = 0;
          while (1)
          {
            v24 = CFArrayGetValueAtIndex(v20, v23);
            if (!v18 || (v71.location = 0, v71.length = v18, !CFArrayContainsValue(v17, v71, v24)))
            {
              if (v9 == -1)
              {
                v9 = inet_dgram_socket();
                if (v9 == -1)
                {
                  goto LABEL_92;
                }
              }

              v25 = SCNetworkInterfaceGetBSDName(v24);
              if (!__bridge_remove_interface(v9, BSDName, v25))
              {
                v5 = 0;
              }
            }

            if (v22 == ++v23)
            {
              goto LABEL_30;
            }
          }
        }
      }

      goto LABEL_30;
    }

LABEL_13:
    if (v9 == -1)
    {
      v9 = inet_dgram_socket();
      if (v9 == -1)
      {
        break;
      }
    }

    if (!__destroyInterface(v9, BSDName))
    {
      v15 = __error();
      _SCErrorSet(*v15);
      v5 = 0;
    }

LABEL_30:
    ++v8;
    v7 = theArray;
    v3 = v62;
    Count = v63;
    if (v8 == v68)
    {
      v61 = 1;
LABEL_35:
      if (Count < 1)
      {
        goto LABEL_93;
      }

      v26 = 0;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v3, v26);
        AllowConfiguredMembers = SCBridgeInterfaceGetAllowConfiguredMembers(v27);
        v29 = SCNetworkInterfaceGetBSDName(v27);
        v30 = SCBridgeInterfaceGetMemberInterfaces(v27);
        v31 = v30;
        v65 = v26;
        v66 = AllowConfiguredMembers;
        if (v30)
        {
          v32 = CFArrayGetCount(v30);
        }

        else
        {
          v32 = 0;
        }

        if (!v61)
        {
LABEL_47:
          if (v9 == -1)
          {
            v9 = inet_dgram_socket();
            if (v9 == -1)
            {
              goto LABEL_92;
            }
          }

          if (__createInterface(v9, v29))
          {
            if (v32 >= 1)
            {
              v39 = 0;
              v40 = v66 == 0;
              do
              {
                v41 = CFArrayGetValueAtIndex(v31, v39);
                if (*(v41 + 344))
                {
                  v42 = v41;
                  if (v40)
                  {
                    HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(v41);
                    if (!__bridge_set_mac(v9, v29, HardwareAddress))
                    {
                      v5 = 0;
                    }
                  }

                  v44 = SCNetworkInterfaceGetBSDName(v42);
                  v40 = 0;
                  if (!__bridge_add_interface(v64, v9, v29, v44))
                  {
                    v5 = 0;
                  }
                }

                ++v39;
              }

              while (v32 != v39);
            }
          }

          else
          {
            v45 = __error();
            _SCErrorSet(*v45);
            v5 = 0;
          }

          goto LABEL_89;
        }

        v33 = 0;
        while (1)
        {
          v34 = CFArrayGetValueAtIndex(theArray, v33);
          v35 = SCNetworkInterfaceGetBSDName(v34);
          v36 = SCBridgeInterfaceGetMemberInterfaces(v34);
          v37 = v36;
          v38 = v36 ? CFArrayGetCount(v36) : 0;
          if (CFEqual(v29, v35))
          {
            break;
          }

          if (v68 == ++v33)
          {
            goto LABEL_47;
          }
        }

        if (v31 == v37 || v31 && v37 && CFEqual(v31, v37))
        {
          goto LABEL_90;
        }

        if (v9 == -1)
        {
          v9 = inet_dgram_socket();
          if (v9 == -1)
          {
            goto LABEL_92;
          }
        }

        v46 = v66;
        if (!v66 && v32 >= 1 && v38 >= 1)
        {
          v47 = CFArrayGetValueAtIndex(v31, 0);
          v48 = CFArrayGetValueAtIndex(v37, 0);
          if (CFEqual(v47, v48))
          {
            v49 = 0;
LABEL_79:
            v53 = 0;
            v67 = v49;
            v54 = v46 == 0 && v49;
            do
            {
              v55 = CFArrayGetValueAtIndex(v31, v53);
              if (v67 || (v73.location = 0, v73.length = v38, !CFArrayContainsValue(v37, v73, v55)))
              {
                if (*(v55 + 344))
                {
                  if (v54)
                  {
                    v56 = _SCNetworkInterfaceGetHardwareAddress(v55);
                    if (!__bridge_set_mac(v9, v29, v56))
                    {
                      v5 = 0;
                    }
                  }

                  v57 = SCNetworkInterfaceGetBSDName(v55);
                  v54 = 0;
                  if (!__bridge_add_interface(v64, v9, v29, v57))
                  {
                    v5 = 0;
                  }
                }
              }

              ++v53;
            }

            while (v32 != v53);
            goto LABEL_89;
          }

          for (i = 0; i != v38; ++i)
          {
            v51 = CFArrayGetValueAtIndex(v37, i);
            v72.location = 0;
            v72.length = v32;
            if (CFArrayContainsValue(v31, v72, v51))
            {
              v52 = SCNetworkInterfaceGetBSDName(v51);
              if (!__bridge_remove_interface(v9, v35, v52))
              {
                v5 = 0;
              }
            }
          }

          v38 = 0;
          v46 = 0;
        }

        v49 = v38 == 0;
        if (v32 >= 1)
        {
          goto LABEL_79;
        }

LABEL_89:
        v3 = v62;
LABEL_90:
        v26 = v65 + 1;
        if (v65 + 1 == v63)
        {
          goto LABEL_93;
        }
      }
    }
  }

LABEL_92:
  v58 = __error();
  _SCErrorSet(*v58);
  v5 = 0;
  v9 = -1;
  v3 = v62;
LABEL_93:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v9 != -1)
  {
    close(v9);
  }

LABEL_99:
  v59 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __bridge_remove_interface(int a1, const __CFString *a2, const __CFString *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  _SC_cfstring_to_cstring(a2, &v37, 16, 0x600u);
  v38 = xmmword_1AD3297C0;
  v39 = v40;
  memset(v40, 0, sizeof(v40));
  _SC_cfstring_to_cstring(a3, v40, 16, 0x600u);
  if (ioctl(a1, 0x8028697BuLL, &v37) == -1)
  {
    v20 = __error();
    _SCErrorSet(*v20);
    v21 = __log_SCNetworkConfiguration();
    v22 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v21, v22);
    if (result)
    {
      v23 = _os_log_pack_size();
      v31 = &v37 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = __error();
      v35 = strerror(*v34);
      *v33 = 138412802;
      *(v33 + 4) = a3;
      *(v33 + 12) = 2112;
      *(v33 + 14) = a2;
      *(v33 + 22) = 2080;
      *(v33 + 24) = v35;
      __SC_log_send(3, v21, v22, v31);
      result = 0;
    }
  }

  else
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = &v37 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 138412546;
      *(v18 + 4) = a2;
      *(v18 + 12) = 2112;
      *(v18 + 14) = a3;
      __SC_log_send(6, v6, v7, v16);
    }

    result = 1;
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __bridge_set_mac(int a1, const __CFString *a2, const __CFData *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  _SC_cfstring_to_cstring(a2, &v49, 16, 0x600u);
  Length = CFDataGetLength(a3);
  LOBYTE(v50) = Length;
  if (Length < 0xFuLL)
  {
    v52.location = 0;
    v52.length = Length;
    CFDataGetBytes(a3, v52, &v50 + 2);
    if (ioctl(a1, 0x8020693CuLL, &v49) == -1)
    {
      v35 = __error();
      _SCErrorSet(*v35);
      v7 = __log_SCNetworkConfiguration();
      v8 = _SC_syslog_os_log_mapping(3);
      result = __SC_log_enabled(3, v7, v8);
      if (result)
      {
        v36 = _os_log_pack_size();
        v18 = &v49 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = *__error();
        v45 = _os_log_pack_fill();
        v46 = __error();
        v47 = strerror(*v46);
        *v45 = 138412546;
        *(v45 + 4) = a2;
        *(v45 + 12) = 2080;
        *(v45 + 14) = v47;
        goto LABEL_10;
      }
    }

    else
    {
      v22 = __log_SCNetworkConfiguration();
      v23 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v22, v23))
      {
        v24 = _os_log_pack_size();
        v32 = &v49 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        *v34 = 138412547;
        *(v34 + 4) = a2;
        *(v34 + 12) = 2113;
        *(v34 + 14) = a3;
        __SC_log_send(6, v22, v23, v32);
      }

      result = 1;
    }
  }

  else
  {
    _SCErrorSet(1002);
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v7, v8);
    if (result)
    {
      v10 = _os_log_pack_size();
      v18 = &v49 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = v50;
      *v20 = 138412802;
      *(v20 + 4) = a2;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v21;
      *(v20 + 18) = 2048;
      *(v20 + 20) = 14;
LABEL_10:
      __SC_log_send(3, v7, v8, v18);
      result = 0;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __bridge_add_interface(const __SCPreferences *a1, int a2, const __CFString *a3, const __CFString *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  set_configured_mtu(a1, a2, a4);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  _SC_cfstring_to_cstring(a3, &v38, 16, 0x600u);
  v39 = xmmword_1AD3297D0;
  v40 = v41;
  memset(v41, 0, sizeof(v41));
  _SC_cfstring_to_cstring(a4, v41, 16, 0x600u);
  if (ioctl(a2, 0x8028697BuLL, &v38) == -1)
  {
    v21 = __error();
    _SCErrorSet(*v21);
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(3);
    result = __SC_log_enabled(3, v22, v23);
    if (result)
    {
      v24 = _os_log_pack_size();
      v32 = &v38 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      v35 = __error();
      v36 = strerror(*v35);
      *v34 = 138412802;
      *(v34 + 4) = a4;
      *(v34 + 12) = 2112;
      *(v34 + 14) = a3;
      *(v34 + 22) = 2080;
      *(v34 + 24) = v36;
      __SC_log_send(3, v22, v23, v32);
      result = 0;
    }
  }

  else
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v7, v8))
    {
      v9 = _os_log_pack_size();
      v17 = &v38 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 138412546;
      *(v19 + 4) = a3;
      *(v19 + 12) = 2112;
      *(v19 + 14) = a4;
      __SC_log_send(6, v7, v8, v17);
    }

    result = 1;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void set_configured_mtu(const __SCPreferences *a1, int a2, const __CFString *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v59 = 0u;
  v60 = 0u;
  valuePtr = 0;
  v6 = SCNetworkSetCopyCurrent(a1);
  if (v6)
  {
    v7 = v6;
    SetID = SCNetworkSetGetSetID(v6);
    SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, a3, @"Ethernet");
    Value = SCPreferencesPathGetValue(a1, SetNetworkInterfaceEntity);
    CFRelease(SetNetworkInterfaceEntity);
    if (!Value)
    {
      goto LABEL_14;
    }

    v11 = CFDictionaryGetValue(Value, @"MTU");
    TypeID = CFNumberGetTypeID();
    if (!v11 || CFGetTypeID(v11) != TypeID || !CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
    {
      goto LABEL_14;
    }

    v59 = 0u;
    v60 = 0u;
    _SC_cfstring_to_cstring(a3, &v59, 16, 0x8000100u);
    LODWORD(v60) = valuePtr;
    v13 = ioctl(a2, 0x80206934uLL, &v59);
    v14 = __log_SCNetworkConfiguration();
    if (v13 < 0)
    {
      v15 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v14, v15))
      {
        v42 = _os_log_pack_size();
        v24 = &v57[-((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v50 = *__error();
        v51 = _os_log_pack_fill();
        v52 = valuePtr;
        v53 = __error();
        v54 = strerror(*v53);
        v55 = *__error();
        *v51 = 136316162;
        *(v51 + 4) = "BridgeConfiguration";
        *(v51 + 12) = 2080;
        *(v51 + 14) = &v59;
        *(v51 + 22) = 1024;
        *(v51 + 24) = v52;
        *(v51 + 28) = 2080;
        *(v51 + 30) = v54;
        *(v51 + 38) = 1024;
        *(v51 + 40) = v55;
        v28 = 3;
        goto LABEL_13;
      }
    }

    else
    {
      v15 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v14, v15))
      {
        v16 = _os_log_pack_size();
        v24 = &v57[-((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = valuePtr;
        *v26 = 136315650;
        *(v26 + 4) = "BridgeConfiguration";
        *(v26 + 12) = 2080;
        *(v26 + 14) = &v59;
        *(v26 + 22) = 1024;
        *(v26 + 24) = v27;
        v28 = 5;
LABEL_13:
        __SC_log_send(v28, v14, v15, v24);
      }
    }

LABEL_14:
    CFRelease(v7);
    goto LABEL_15;
  }

  v29 = __log_SCNetworkConfiguration();
  v30 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v29, v30))
  {
    v31 = _os_log_pack_size();
    v39 = &v57[-((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v40 = *__error();
    v41 = _os_log_pack_fill();
    *v41 = 136315138;
    *(v41 + 4) = "set_configured_mtu";
    __SC_log_send(5, v29, v30, v39);
  }

LABEL_15:
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t SCNSManagerCreate(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return __SCNSManagerCreateCommon(a1, 0, 0);
}

uint64_t __SCNSManagerCreateCommon(uint64_t a1, const AuthorizationOpaqueRef *a2, int a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithFormat(0, 0, @"SCNSManager(%@)", a1);
  if (a3)
  {
    v6 = SCPreferencesCreateWithAuthorization(0, v5, 0, a2);
  }

  else
  {
    v6 = SCPreferencesCreate(0, v5, 0);
  }

  v7 = v6;
  CFRelease(v5);
  if (!v7)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = v37 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = SCError();
      v24 = SCErrorString(v23);
      *v22 = 136315138;
      *(v22 + 4) = v24;
LABEL_13:
      __SC_log_send(5, v10, v11, v20);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (__SCNetworkSettingsInitialize_initialized != -1)
  {
    __SCNSManagerCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CFRelease(v7);
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v10, v11))
    {
      v25 = _os_log_pack_size();
      v20 = v37 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      *v34 = 136315138;
      *(v34 + 4) = "__SCNSManagerCreateCommon";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = Instance;
  CFRetain(v7);
  *(v9 + 16) = v7;
  CFRelease(v7);
LABEL_15:
  v35 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t SCNSManagerCreateWithAuthorization(uint64_t a1, const AuthorizationOpaqueRef *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return __SCNSManagerCreateCommon(a1, a2, 1);
}

void SCNSManagerRefresh(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  SCPreferencesSynchronize(v1);
}

void SCNSManagerRemoveService(uint64_t a1, void *value)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4)
  {
    CFSetRemoveValue(v4, value);
  }

  Mutable = *(a1 + 56);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(a1 + 56) = Mutable;
  }

  v6 = *MEMORY[0x1E69E9840];

  CFSetAddValue(Mutable, value);
}

uint64_t SCNSManagerApplyChanges(SCPreferencesRef *a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (!v2 || !CFSetGetCount(v2))
  {
    v3 = a1[7];
    if (!v3 || !CFSetGetCount(v3))
    {
      v5 = _SC_LOG_DEFAULT();
      v6 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v5, v6))
      {
        v7 = _os_log_pack_size();
        v15 = &v68[-((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v16 = *__error();
        v17 = _os_log_pack_fill();
        *v17 = 136315138;
        *(v17 + 4) = "SCNSManagerApplyChanges";
        __SC_log_send(5, v5, v6, v15);
      }

      v18 = 1;
      goto LABEL_34;
    }
  }

  v4 = 10;
  while (1)
  {
    if (SCPreferencesLock(a1[2], 1u))
    {
      v19 = a1[7];
      if (v19)
      {
        if (CFSetGetCount(v19))
        {
          context = 0;
          CFSetApplyFunction(a1[7], managerRemove, &context);
          if (context)
          {
            goto LABEL_32;
          }
        }
      }

      v20 = a1[6];
      if (v20)
      {
        if (CFSetGetCount(v20))
        {
          v70 = 0;
          CFSetApplyFunction(a1[6], managerChange, &v70);
          if (v70)
          {
            goto LABEL_32;
          }
        }
      }

      if (SCPreferencesCommitChanges(a1[2]))
      {
        if (SCPreferencesApplyChanges(a1[2]))
        {
          v18 = 1;
LABEL_33:
          SCPreferencesUnlock(a1[2]);
          goto LABEL_34;
        }

        v49 = _SC_LOG_DEFAULT();
        v50 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v49, v50))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v49 = _SC_LOG_DEFAULT();
        v50 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v49, v50))
        {
LABEL_31:
          v51 = _os_log_pack_size();
          v59 = &v68[-((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0)];
          v60 = *__error();
          v61 = _os_log_pack_fill();
          v62 = SCError();
          v63 = SCErrorString(v62);
          *v61 = 136315394;
          *(v61 + 4) = "SCNSManagerApplyChanges";
          *(v61 + 12) = 2080;
          *(v61 + 14) = v63;
          __SC_log_send(5, v49, v50, v59);
        }
      }

LABEL_32:
      v18 = 0;
      goto LABEL_33;
    }

    if (SCError() != 3005)
    {
      break;
    }

    SCPreferencesSynchronize(a1[2]);
    if (!--v4)
    {
      goto LABEL_24;
    }
  }

  v21 = _SC_LOG_DEFAULT();
  v22 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v21, v22))
  {
    v23 = _os_log_pack_size();
    v31 = &v68[-((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v32 = *__error();
    v33 = _os_log_pack_fill();
    v34 = SCError();
    v35 = SCErrorString(v34);
    *v33 = 136315394;
    *(v33 + 4) = "SCNSManagerApplyChanges";
    *(v33 + 12) = 2080;
    *(v33 + 14) = v35;
    __SC_log_send(5, v21, v22, v31);
  }

LABEL_24:
  v36 = _SC_LOG_DEFAULT();
  v37 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v36, v37))
  {
    v38 = _os_log_pack_size();
    v46 = &v68[-((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v47 = *__error();
    v48 = _os_log_pack_fill();
    *v48 = 136315138;
    *(v48 + 4) = "SCNSManagerApplyChanges";
    __SC_log_send(5, v36, v37, v46);
  }

  v18 = 0;
LABEL_34:
  v64 = a1[6];
  if (v64)
  {
    CFRelease(v64);
    a1[6] = 0;
  }

  v65 = a1[7];
  if (v65)
  {
    CFRelease(v65);
    a1[7] = 0;
  }

  v66 = *MEMORY[0x1E69E9840];
  return v18;
}

void *SCNSManagerCopyService(const void **a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3 || a4)
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];

    return __SCNSManagerCopyService(a1, a2, a3, a4, 0);
  }

  else
  {
    _SCErrorSet(1002);
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

void *__SCNSManagerCopyService(const void **a1, const void *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  v9 = 0;
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = 1;
  if (a3 && a4)
  {
    v12 = SCNetworkCategoryCreate(a1[2], a3);
    v13 = SCNetworkCategoryCopyServices(v12, a4);
    if (v13)
    {
      v14 = v13;
      v9 = copy_service_in_list(v13, a2);
      CFRelease(v14);
      if (!v12)
      {
LABEL_6:
        v10 = a5 != 0;
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v12);
    goto LABEL_6;
  }

LABEL_7:
  SetID = 0;
  if (!v9 && v10)
  {
    v16 = SCNetworkSetCopyCurrent(a1[2]);
    if (!v16)
    {
      v19 = _SC_LOG_DEFAULT();
      v20 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v19, v20))
      {
        v21 = _os_log_pack_size();
        v29 = v36 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *__error();
        v31 = _os_log_pack_fill();
        *v31 = 136315138;
        *(v31 + 4) = "__SCNSManagerCopyService";
        __SC_log_send(5, v19, v20, v29);
      }

      SetID = 0;
LABEL_28:
      _SCErrorSet(1004);
      v33 = 0;
      if (!SetID)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v17 = v16;
    v18 = SCNetworkSetCopyServices(v16);
    SetID = v18;
    if (v18)
    {
      v9 = copy_service_in_list(v18, a2);
      CFRelease(SetID);
      if (v9)
      {
        SetID = SCNetworkSetGetSetID(v17);
        CFRetain(SetID);
      }

      else
      {
        SetID = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v17);
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v32 = __SCNSServiceCreate(a1, a3, a4, a2, v9);
  v33 = v32;
  if (SetID && v32)
  {
    v32[5] = SetID;
    CFRetain(SetID);
  }

  CFRelease(v9);
  if (SetID)
  {
LABEL_26:
    CFRelease(SetID);
  }

LABEL_27:
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

const __CFString *SCNSManagerCreateService(SCPreferencesRef *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  v4 = a4;
  v27[1] = *MEMORY[0x1E69E9840];
  if (a3 && !a4)
  {
    _SCErrorSet(1002);
    goto LABEL_15;
  }

  if (a3)
  {
    v7 = __SCNSServiceCreate(a1, a3, a4, a2, 0);
    SetID = 0;
    v4 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v9 = SCNetworkSetCopyCurrent(a1[2]);
  if (v9)
  {
    v10 = v9;
    SetID = SCNetworkSetGetSetID(v9);
    CFRetain(SetID);
    CFRelease(v10);
    v11 = __SCNSServiceCreate(a1, 0, v4, a2, 0);
    if (!v11)
    {
      v4 = 0;
      if (!SetID)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v7 = v11;
    if (SetID)
    {
      CFRetain(SetID);
      v7[1].info = SetID;
    }

LABEL_6:
    __SCNSManagerServiceChanged(a1, v7);
    v4 = v7;
    if (!SetID)
    {
      goto LABEL_15;
    }

LABEL_7:
    CFRelease(SetID);
    goto LABEL_15;
  }

  v12 = _SC_LOG_DEFAULT();
  v13 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v12, v13))
  {
    v14 = _os_log_pack_size();
    v22 = v27 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "SCNSManagerCreateService";
    __SC_log_send(5, v12, v13, v22);
  }

  v4 = 0;
LABEL_15:
  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

void *__SCNSServiceCreate(const void *a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSettingsInitialize_initialized != -1)
  {
    __SCNSManagerCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    CFRetain(a1);
    if (a2 && a3)
    {
      v11[6] = CFStringCreateCopy(0, a2);
      v11[7] = CFStringCreateCopy(0, a3);
    }

    if (a4)
    {
      CFRetain(a4);
      v11[4] = a4;
    }

    if (a5)
    {
      CFRetain(a5);
      v11[3] = a5;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __SCNSManagerServiceChanged(uint64_t a1, void *value)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (v4)
  {
    CFSetRemoveValue(v4, value);
  }

  Mutable = *(a1 + 48);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(a1 + 48) = Mutable;
  }

  v6 = *MEMORY[0x1E69E9840];

  CFSetAddValue(Mutable, value);
}

void *SCNSManagerCopyCurrentService(const void **a1, SCNetworkInterfaceRef interface, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = __SCNetworkCategoryManagerCopyActiveValueNoSession(a3, interface);
    if (v6)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    v8 = __SCNSManagerCopyService(a1, interface, v7, v6, 1);
    if (v6)
    {
      CFRelease(v6);
    }

    v9 = *MEMORY[0x1E69E9840];
    return v8;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return __SCNSManagerCopyService(a1, interface, 0, 0, 1);
  }
}

uint64_t SCNSManagerSetEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (!a2)
  {
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 24) = 0;
      v9 = *(a1 + 32);
      if (v9)
      {
        _Block_release(v9);
        *(a1 + 32) = 0;
      }

      SCPreferencesSetDispatchQueue(*(a1 + 16), 0);
      SCPreferencesSetCallback(*(a1 + 16), 0, 0);
      v10 = *(a1 + 40);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 40) = 0;
      }
    }

    goto LABEL_12;
  }

  if (!a3 || v4)
  {
    _SCErrorSet(1002);
    goto LABEL_14;
  }

  result = store_create(a1, a2);
  if (result)
  {
    v8 = result;
    if (__SCNSManagerEnablePrefsCallback(a1, a2))
    {
      *(a1 + 24) = a2;
      dispatch_retain(a2);
      *(a1 + 32) = _Block_copy(a3);
      *(a1 + 40) = CFRetain(v8);
      CFRelease(v8);
LABEL_12:
      result = 1;
      goto LABEL_15;
    }

    CFRelease(v8);
LABEL_14:
    result = 0;
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNSServiceGetInterface(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCNSServiceGetServiceID(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E69E9840];

    return SCNetworkServiceGetServiceID(v1);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
    return @"n/a";
  }
}

CFStringRef SCNSServiceGetName(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E69E9840];

    return SCNetworkServiceGetName(v1);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
    return @"n/a";
  }
}

CFDictionaryRef SCNSServiceCopyProtocolEntity(uint64_t a1, __CFString *cf1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!__SCNetworkProtocolIsValidType(cf1))
  {
    v4 = 0;
    v6 = 1002;
    goto LABEL_11;
  }

  if (!__SCNSServiceGetEntity(a1, cf1, cf))
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = SCNetworkServiceCopyProtocol(v7, cf1);
      if (v8)
      {
        v4 = v8;
        Configuration = SCNetworkProtocolGetConfiguration(v8);
        if (!Configuration)
        {
          goto LABEL_10;
        }

LABEL_4:
        CFRetain(Configuration);
        if (!v4)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  v4 = 0;
  Configuration = cf[0];
  if (cf[0])
  {
    goto LABEL_4;
  }

LABEL_10:
  v6 = 1004;
LABEL_11:
  _SCErrorSet(v6);
  Configuration = 0;
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return Configuration;
}

uint64_t __SCNSServiceGetEntity(uint64_t a1, void *value, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  if (v6 && CFSetContainsValue(v6, value))
  {
    v7 = 0;
    result = 1;
  }

  else
  {
    result = *(a1 + 72);
    if (result)
    {
      v7 = CFDictionaryGetValue(result, value);
      result = v7 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  *a3 = v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNSServiceSetProtocolEntity(uint64_t *a1, const __CFString *cf1, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolIsValidType(cf1))
  {
    v6 = *MEMORY[0x1E69E9840];

    return __SCNSServiceSetEntity(a1, cf1, a3);
  }

  else
  {
    _SCErrorSet(1002);
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCNSServiceSetEntity(uint64_t *a1, CFTypeRef cf1, void *value)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (value)
  {
    Mutable = a1[9];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      a1[9] = Mutable;
    }

    CFDictionarySetValue(Mutable, cf1, value);
    v7 = a1[10];
    if (v7)
    {
      CFSetRemoveValue(v7, cf1);
    }

LABEL_17:
    __SCNSManagerServiceChanged(a1[2], a1);
    result = 1;
    goto LABEL_18;
  }

  v8 = a1[10];
  if (!v8)
  {
    v8 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    a1[10] = v8;
  }

  v9 = CFEqual(cf1, @"IPv4");
  v10 = @"IPv6";
  if (!v9 && (v11 = CFEqual(cf1, @"IPv6"), v10 = @"IPv4", !v11) || !v10 || !CFSetContainsValue(v8, v10))
  {
    CFSetAddValue(v8, cf1);
    v26 = a1[9];
    if (v26)
    {
      CFDictionaryRemoveValue(v26, cf1);
    }

    goto LABEL_17;
  }

  v12 = _SC_LOG_DEFAULT();
  v13 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v12, v13))
  {
    v14 = _os_log_pack_size();
    v22 = v28 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136315138;
    *(v24 + 4) = "__SCNSServiceSetEntity";
    __SC_log_send(3, v12, v13, v22);
  }

  _SCErrorSet(1002);
  result = 0;
LABEL_18:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void SCNSServiceUseDefaultProtocolEntities(_BYTE *value)
{
  v6 = *MEMORY[0x1E69E9840];
  value[88] = 1;
  v2 = *(value + 10);
  if (v2)
  {
    CFRelease(v2);
    *(value + 10) = 0;
  }

  v3 = *(value + 9);
  if (v3)
  {
    CFRelease(v3);
    *(value + 9) = 0;
  }

  v4 = *(value + 2);
  v5 = *MEMORY[0x1E69E9840];

  __SCNSManagerServiceChanged(v4, value);
}

const __CFDictionary *SCNSServiceCopyActiveEntity(uint64_t a1, __CFString *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (!v4 && (SCNSServiceRefreshActiveState(a1), (v4 = *(a1 + 64)) == 0) || !CFDictionaryContainsKey(v4, @"IPv4") && !CFDictionaryContainsKey(*(a1 + 64), @"IPv6"))
  {
    Value = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  v6 = SCNSServiceCopyProtocolEntity(a1, a2);
  v7 = v6;
  if (Value && v6)
  {
    Value = CFDictionaryCreateMutableCopy(0, 0, Value);
    CFDictionaryApplyFunction(v7, dict_merge_value, Value);
LABEL_10:
    CFRelease(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    CFRetain(v6);
    Value = v7;
    goto LABEL_10;
  }

  if (Value)
  {
    CFRetain(Value);
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return Value;
}

void SCNSServiceRefreshActiveState(uint64_t a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  ServiceID = SCNetworkServiceGetServiceID(*(a1 + 24));
  cf[0] = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", ServiceID, @"[^/]+");
  v4 = CFArrayCreate(0, cf, 1, MEMORY[0x1E695E9C0]);
  CFRelease(cf[0]);
  v5 = SCDynamicStoreCopyMultiple(0, 0, v4);
  CFRelease(v4);
  if (v5)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(v5, state_dict_entity_key, Mutable);
    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
  }

  *(a1 + 64) = Mutable;
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t SCNSServiceGetCategoryID(uint64_t a1)
{
  result = *(a1 + 48);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNSServiceGetCategoryValue(uint64_t a1)
{
  result = *(a1 + 56);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNSServiceSetQoSMarkingPolicy(uint64_t *a1, void *value)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return __SCNSServiceSetEntity(a1, @"QoSMarkingPolicy", value);
}

CFTypeRef SCNSServiceCopyQoSMarkingPolicy(void *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v2 = a1[3];
  if (__SCNSServiceGetEntity(a1, @"QoSMarkingPolicy", cf))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    goto LABEL_6;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = SCNetworkCategoryCreate(*(a1[2] + 16), v5);
    ServiceQoSMarkingPolicy = SCNetworkCategoryGetServiceQoSMarkingPolicy(v7, v6, v2);
    if (v7)
    {
      CFRelease(v7);
    }

    if (ServiceQoSMarkingPolicy)
    {
      goto LABEL_12;
    }

LABEL_15:
    _SCErrorSet(1004);
    goto LABEL_16;
  }

  Interface = SCNetworkServiceGetInterface(v2);
  if (!Interface)
  {
LABEL_6:
    ServiceQoSMarkingPolicy = cf[0];
    if (!cf[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    ServiceQoSMarkingPolicy = SCNetworkInterfaceGetQoSMarkingPolicy(Interface);
    if (!ServiceQoSMarkingPolicy)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  CFRetain(ServiceQoSMarkingPolicy);
LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return ServiceQoSMarkingPolicy;
}

void __SCNSManagerDeallocate(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    SCPreferencesSetDispatchQueue(v2, 0);
    SCPreferencesSetCallback(*(a1 + 16), 0, 0);
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 32) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

__CFString *__SCNSManagerCopyDescription(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p> {}", "SCNSManager", a1);
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __SCNSServiceDeallocate(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
    a1[10] = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

__CFString *__SCNSServiceCopyDescription(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p> { service %@", "SCNSService", a1, a1[3]);
  if (a1[6])
  {
    v4 = a1[7];
    if (v4)
    {
      CFStringAppendFormat(Mutable, 0, @" category (%@, %@)", a1[6], v4);
    }
  }

  CFStringAppend(Mutable, @" }");
  v5 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void managerRemove(void *a1, _BYTE *a2)
{
  v66[1] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    goto LABEL_2;
  }

  v4 = a1[3];
  if (!v4)
  {
    goto LABEL_2;
  }

  ServiceID = SCNetworkServiceGetServiceID(v4);
  v7 = a1[2];
  v8 = a1[6];
  if (!v8)
  {
    v15 = a1[5];
    if (v15 && (v16 = SCNetworkSetCopy(*(v7 + 16), v15)) != 0)
    {
      v17 = v16;
      v18 = SCNetworkSetCopyServices(v16);
      if (v18 && (v19 = v18, v20 = copy_service_in_list_by_ID(v18, ServiceID), CFRelease(v19), v20))
      {
        v21 = SCNetworkSetRemoveService(v17, v20);
        CFRelease(v17);
        if (v21)
        {
          goto LABEL_2;
        }
      }

      else
      {
        CFRelease(v17);
      }

      v52 = _SC_LOG_DEFAULT();
      v53 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v52, v53))
      {
        v54 = _os_log_pack_size();
        v62 = v66 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
        v63 = *__error();
        v64 = _os_log_pack_fill();
        v65 = a1[5];
        *v64 = 136315650;
        *(v64 + 4) = "managerRemove";
        *(v64 + 12) = 2112;
        *(v64 + 14) = ServiceID;
        *(v64 + 22) = 2112;
        *(v64 + 24) = v65;
        v49 = v52;
        v50 = v53;
        v51 = v62;
        goto LABEL_22;
      }
    }

    else
    {
      v35 = _SC_LOG_DEFAULT();
      v36 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v35, v36))
      {
        v37 = _os_log_pack_size();
        v45 = v66 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = *__error();
        v47 = _os_log_pack_fill();
        v48 = a1[5];
        *v47 = 136315394;
        *(v47 + 4) = "managerRemove";
        *(v47 + 12) = 2112;
        *(v47 + 14) = v48;
        v49 = v35;
        v50 = v36;
        v51 = v45;
LABEL_22:
        __SC_log_send(5, v49, v50, v51);
        v9 = 0;
        goto LABEL_24;
      }
    }

    v9 = 0;
    goto LABEL_24;
  }

  v9 = SCNetworkCategoryCreate(*(v7 + 16), v8);
  v10 = copy_service_for_category_and_ID(v9, a1[7], ServiceID);
  if (v10)
  {
    v11 = v10;
    v12 = SCNetworkCategoryRemoveService(v9, a1[7], v10);
    CFRelease(v11);
    if (v12)
    {
      goto LABEL_25;
    }

    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
LABEL_16:
      v22 = _os_log_pack_size();
      v30 = v66 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      v33 = a1[6];
      v34 = a1[7];
      *v32 = 136315906;
      *(v32 + 4) = "managerRemove";
      *(v32 + 12) = 2112;
      *(v32 + 14) = ServiceID;
      *(v32 + 22) = 2112;
      *(v32 + 24) = v33;
      *(v32 + 32) = 2112;
      *(v32 + 34) = v34;
      __SC_log_send(5, v13, v14, v30);
    }
  }

LABEL_24:
  *a2 = 1;
LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_2:
  v2 = *MEMORY[0x1E69E9840];
}

const __SCNetworkService *copy_service_for_category_and_ID(uint64_t a1, uint64_t a2, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SCNetworkCategoryCopyServices(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = copy_service_in_list_by_ID(v4, a3);
    CFRelease(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

const __SCNetworkService *copy_service_in_list_by_ID(const __CFArray *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_5:
    ValueAtIndex = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      ServiceID = SCNetworkServiceGetServiceID(ValueAtIndex);
      if (CFEqual(a2, ServiceID))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    CFRetain(ValueAtIndex);
  }

  v9 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

void managerChange(uint64_t a1, _BYTE *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (*(a1 + 24))
    {
      if (!__SCNSServiceUpdateService(a1))
      {
        goto LABEL_19;
      }
    }

    else if (!__SCNSServiceInstantiateService(a1))
    {
      goto LABEL_19;
    }

    if (*(a1 + 88) && !service_establish_default(*(a1 + 24)))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      context = a1;
      v41 = 0;
      CFSetApplyFunction(v4, entityRemove, &context);
      if (v41)
      {
        goto LABEL_12;
      }
    }

    v5 = *(a1 + 72);
    if (v5 && (context = a1, v41 = 0, CFDictionaryApplyFunction(v5, entityChange, &context), v41))
    {
LABEL_12:
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 80) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    *(a1 + 88) = 0;
    if (v6)
    {
LABEL_19:
      v9 = *(a1 + 48);
      v10 = _SC_LOG_DEFAULT();
      v11 = _SC_syslog_os_log_mapping(5);
      v12 = __SC_log_enabled(5, v10, v11);
      if (v9)
      {
        if (v12)
        {
          v13 = _os_log_pack_size();
          v21 = &v39 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = *__error();
          v23 = _os_log_pack_fill();
          v24 = *(a1 + 32);
          v25 = *(a1 + 48);
          v26 = *(a1 + 56);
          *v23 = 136315906;
          *(v23 + 4) = "managerChange";
          *(v23 + 12) = 2112;
          *(v23 + 14) = v24;
          *(v23 + 22) = 2112;
          *(v23 + 24) = v25;
          *(v23 + 32) = 2112;
          *(v23 + 34) = v26;
LABEL_24:
          __SC_log_send(5, v10, v11, v21);
        }
      }

      else if (v12)
      {
        v27 = _os_log_pack_size();
        v21 = &v39 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = *__error();
        v36 = _os_log_pack_fill();
        v37 = *(a1 + 32);
        *v36 = 136315394;
        *(v36 + 4) = "managerChange";
        *(v36 + 12) = 2112;
        *(v36 + 14) = v37;
        goto LABEL_24;
      }

      *a2 = 1;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNSServiceInstantiateService(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  if (!v3)
  {
    v7 = *(a1 + 40);
    if (v7 && (v8 = SCNetworkSetCopy(*(v2 + 16), v7)) != 0)
    {
      v9 = v8;
      service_in_set = create_service_in_set(*(v2 + 16), v8, *(a1 + 32));
      CFRelease(v9);
      if (service_in_set)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = _SC_LOG_DEFAULT();
      v11 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v10, v11))
      {
        v12 = _os_log_pack_size();
        v20 = v41 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = *(a1 + 40);
        *v22 = 136315394;
        *(v22 + 4) = "__SCNSServiceInstantiateService";
        *(v22 + 12) = 2112;
        *(v22 + 14) = v23;
        __SC_log_send(5, v10, v11, v20);
      }
    }

LABEL_15:
    v6 = 0;
    goto LABEL_20;
  }

  service_in_category = create_service_in_category(*(v2 + 16), v3, *(a1 + 56), *(a1 + 32));
  if (!service_in_category)
  {
    goto LABEL_15;
  }

  service_in_set = service_in_category;
LABEL_4:
  if (SCNetworkServiceEstablishDefaultConfiguration(service_in_set))
  {
    if (!*(a1 + 72) && !*(a1 + 80))
    {
      *(a1 + 88) = 0;
    }

    CFRetain(service_in_set);
    *(a1 + 24) = service_in_set;
    v6 = 1;
  }

  else
  {
    v24 = _SC_LOG_DEFAULT();
    v25 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v24, v25))
    {
      v26 = _os_log_pack_size();
      v34 = v41 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      v37 = SCError();
      v38 = SCErrorString(v37);
      *v36 = 136315394;
      *(v36 + 4) = "__SCNSServiceInstantiateService";
      *(v36 + 12) = 2080;
      *(v36 + 14) = v38;
      __SC_log_send(5, v24, v25, v34);
    }

    v6 = 0;
  }

  CFRelease(service_in_set);
LABEL_20:
  v39 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __SCNSServiceUpdateService(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  ServiceID = SCNetworkServiceGetServiceID(*(a1 + 24));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = SCNetworkCategoryCreate(*(v2 + 16), v4);
    v6 = copy_service_for_category_and_ID(v5, *(a1 + 56), ServiceID);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      goto LABEL_5;
    }

    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v13, v14);
    if (!result)
    {
      goto LABEL_20;
    }

    v15 = _os_log_pack_size();
    v23 = v54 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    *v25 = 136315906;
    *(v25 + 4) = "__SCNSServiceUpdateService";
    *(v25 + 12) = 2112;
    *(v25 + 14) = ServiceID;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v26;
    *(v25 + 32) = 2112;
    *(v25 + 34) = v27;
    goto LABEL_18;
  }

  v8 = *(a1 + 40);
  if (!v8 || (v9 = SCNetworkSetCopy(*(v2 + 16), v8)) == 0)
  {
    v28 = _SC_LOG_DEFAULT();
    v29 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v28, v29);
    if (!result)
    {
      goto LABEL_20;
    }

    v30 = _os_log_pack_size();
    v38 = v54 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = *__error();
    v40 = _os_log_pack_fill();
    v41 = *(a1 + 40);
    *v40 = 136315394;
    *(v40 + 4) = "__SCNSServiceUpdateService";
    *(v40 + 12) = 2112;
    *(v40 + 14) = v41;
    __SC_log_send(5, v28, v29, v38);
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v10 = v9;
  v11 = SCNetworkSetCopyServices(v9);
  if (!v11)
  {
    CFRelease(v10);
LABEL_16:
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v13, v14);
    if (!result)
    {
      goto LABEL_20;
    }

    v42 = _os_log_pack_size();
    v23 = v54 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = *__error();
    v51 = _os_log_pack_fill();
    v52 = *(a1 + 40);
    *v51 = 136315650;
    *(v51 + 4) = "__SCNSServiceUpdateService";
    *(v51 + 12) = 2112;
    *(v51 + 14) = ServiceID;
    *(v51 + 22) = 2112;
    *(v51 + 24) = v52;
LABEL_18:
    __SC_log_send(5, v13, v14, v23);
    goto LABEL_19;
  }

  v12 = v11;
  v6 = copy_service_in_list_by_ID(v11, ServiceID);
  CFRelease(v12);
  CFRelease(v10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  CFRelease(*(a1 + 24));
  CFRetain(v6);
  *(a1 + 24) = v6;
  CFRelease(v6);
  result = 1;
LABEL_20:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

SCNetworkServiceRef create_service_in_category(const void *a1, const __CFString *a2, uint64_t a3, const __SCNetworkInterface *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = SCNetworkCategoryCreate(a1, a2);
  v8 = SCNetworkServiceCreate(a1, a4);
  if (!SCNetworkCategoryAddService(v7, a3, v8))
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v9, v10))
    {
      v11 = _os_log_pack_size();
      v19 = v26 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = SCError();
      v23 = SCErrorString(v22);
      *v21 = 136315394;
      *(v21 + 4) = "create_service_in_category";
      *(v21 + 12) = 2080;
      *(v21 + 14) = v23;
      __SC_log_send(5, v9, v10, v19);
    }

    CFRelease(v8);
    v8 = 0;
  }

  CFRelease(v7);
  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

SCNetworkServiceRef create_service_in_set(const __SCPreferences *a1, const __SCNetworkSet *a2, SCNetworkInterfaceRef interface)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = SCNetworkServiceCreate(a1, interface);
  if (!SCNetworkSetAddService(a2, v4))
  {
    CFRelease(v4);
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = v22 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = SCError();
      v19 = SCErrorString(v18);
      *v17 = 136315394;
      *(v17 + 4) = "create_service_in_set";
      *(v17 + 12) = 2080;
      *(v17 + 14) = v19;
      __SC_log_send(5, v5, v6, v15);
    }

    v4 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t service_establish_default(const __SCNetworkService *a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = SCNetworkServiceCopyProtocols(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        ProtocolType = SCNetworkProtocolGetProtocolType(ValueAtIndex);
        if (!SCNetworkServiceRemoveProtocolType(a1, ProtocolType))
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }

      v28 = _SC_LOG_DEFAULT();
      v29 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v28, v29))
      {
        goto LABEL_12;
      }

      v30 = _os_log_pack_size();
      v38 = v45 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      v40 = _os_log_pack_fill();
      v41 = SCError();
      v42 = SCErrorString(v41);
      *v40 = 136315650;
      *(v40 + 4) = "service_establish_default";
      *(v40 + 12) = 2112;
      *(v40 + 14) = ProtocolType;
      *(v40 + 22) = 2080;
      *(v40 + 24) = v42;
      v25 = v28;
      v26 = v29;
      v27 = v38;
      goto LABEL_11;
    }
  }

LABEL_6:
  v9 = SCNetworkServiceEstablishDefaultConfiguration(a1);
  if (v9)
  {
    goto LABEL_13;
  }

  v10 = _SC_LOG_DEFAULT();
  v11 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v10, v11))
  {
    v12 = _os_log_pack_size();
    v20 = v45 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    v23 = SCError();
    v24 = SCErrorString(v23);
    *v22 = 136315394;
    *(v22 + 4) = "service_establish_default";
    *(v22 + 12) = 2080;
    *(v22 + 14) = v24;
    v25 = v10;
    v26 = v11;
    v27 = v20;
LABEL_11:
    __SC_log_send(5, v25, v26, v27);
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  if (v3)
  {
    CFRelease(v3);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v9;
}

void entityRemove(const __CFString *a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (CFEqual(a1, @"QoSMarkingPolicy"))
  {
    if (__SCNSServiceSetQoSMarkingPolicy(v4, 0))
    {
      goto LABEL_9;
    }
  }

  else if (SCNetworkServiceRemoveProtocolType(*(v4 + 24), a1))
  {
    goto LABEL_9;
  }

  if (SCError() != 1004)
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = v22 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = *(v4 + 24);
      v19 = SCError();
      v20 = SCErrorString(v19);
      *v17 = 136315906;
      *(v17 + 4) = "entityRemove";
      *(v17 + 12) = 2112;
      *(v17 + 14) = a1;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v18;
      *(v17 + 32) = 2080;
      *(v17 + 34) = v20;
      __SC_log_send(3, v5, v6, v15);
    }

    *(a2 + 8) = 1;
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t entityChange(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (!CFEqual(a1, @"QoSMarkingPolicy"))
  {
    result = __SCNSServiceSetProtocol(v6, a1, a2);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = __SCNSServiceSetQoSMarkingPolicy(v6, a2);
  if (!result)
  {
LABEL_3:
    *(a3 + 8) = 1;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNSServiceSetQoSMarkingPolicy(uint64_t a1, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = SCNetworkCategoryCreate(*(*(a1 + 16) + 16), v4);
    v7 = SCNetworkCategorySetServiceQoSMarkingPolicy(v6, v5, v3, a2);
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_9;
  }

  Interface = SCNetworkServiceGetInterface(*(a1 + 24));
  if (!Interface)
  {
    v7 = 0;
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v9 = *MEMORY[0x1E69E9840];

  return SCNetworkInterfaceSetQoSMarkingPolicy(Interface, a2);
}

uint64_t __SCNSServiceSetProtocol(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v6 = SCNetworkServiceCopyProtocol(v5, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  if (!SCNetworkServiceAddProtocolType(v5, a2))
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v9, v10))
    {
LABEL_13:
      v26 = _os_log_pack_size();
      v34 = v41 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      v37 = SCError();
      v38 = SCErrorString(v37);
      *v36 = 136315906;
      *(v36 + 4) = "__SCNSServiceSetProtocol";
      *(v36 + 12) = 2112;
      *(v36 + 14) = v5;
      *(v36 + 22) = 2112;
      *(v36 + 24) = a2;
      *(v36 + 32) = 2080;
      *(v36 + 34) = v38;
      __SC_log_send(3, v9, v10, v34);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v6 = SCNetworkServiceCopyProtocol(v5, a2);
  if (!v6)
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v9, v10))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_2:
  v7 = v6;
  if (SCNetworkProtocolSetConfiguration(v6, a3))
  {
    v8 = 1;
  }

  else
  {
    v11 = _SC_LOG_DEFAULT();
    v12 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v11, v12))
    {
      v13 = _os_log_pack_size();
      v21 = v41 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      v24 = SCError();
      v25 = SCErrorString(v24);
      *v23 = 136315906;
      *(v23 + 4) = "__SCNSServiceSetProtocol";
      *(v23 + 12) = 2112;
      *(v23 + 14) = v5;
      *(v23 + 22) = 2112;
      *(v23 + 24) = a2;
      *(v23 + 32) = 2080;
      *(v23 + 34) = v25;
      __SC_log_send(3, v11, v12, v21);
    }

    v8 = 0;
  }

  CFRelease(v7);
LABEL_15:
  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

const __SCNetworkService *copy_service_in_list(const __CFArray *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_5:
    ValueAtIndex = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (CFEqual(a2, Interface))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    CFRetain(ValueAtIndex);
  }

  v9 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

const __SCDynamicStore *store_create(void *a1, NSObject *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v3 = SCDynamicStoreCreate(0, @"SCNSManager", __SCNSManagerStoreCallback, &context);
  if (!v3)
  {
    v20 = _SC_LOG_DEFAULT();
    v21 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v20, v21))
    {
      v22 = _os_log_pack_size();
      v30 = &context - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      v33 = SCError();
      v34 = SCErrorString(v33);
      *v32 = 136315394;
      *(v32 + 4) = "store_create";
      *(v32 + 12) = 2080;
      *(v32 + 14) = v34;
      __SC_log_send(5, v20, v21, v30);
    }

    goto LABEL_9;
  }

  v4 = v3;
  if (!store_set_notification_keys(v3))
  {
LABEL_6:
    CFRelease(v4);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!SCDynamicStoreSetDispatchQueue(v4, a2))
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = &context - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = SCError();
      v19 = SCErrorString(v18);
      *v17 = 136315394;
      *(v17 + 4) = "store_create";
      *(v17 + 12) = 2080;
      *(v17 + 14) = v19;
      __SC_log_send(5, v5, v6, v15);
    }

    goto LABEL_6;
  }

LABEL_10:
  v35 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __SCNSManagerEnablePrefsCallback(SCPreferencesRef *a1, NSObject *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v4 = SCPreferencesSetCallback(a1[2], __SCNSManagerPrefsCallback, &context);
  if (v4)
  {
    v5 = v4;
    if (SCPreferencesSetDispatchQueue(a1[2], a2))
    {
      v5 = 1;
    }

    else
    {
      SCPreferencesSetCallback(a1[2], 0, 0);
    }
  }

  else
  {
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = &context - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = SCError();
      v20 = SCErrorString(v19);
      *v18 = 136315394;
      *(v18 + 4) = "__SCNSManagerEnablePrefsCallback";
      *(v18 + 12) = 2080;
      *(v18 + 14) = v20;
      __SC_log_send(5, v6, v7, v16);
    }

    v5 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __SCNSManagerStoreCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = *(a3 + 32);
  if (result)
  {
    v4 = *(result + 16);
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t store_set_notification_keys(const __SCDynamicStore *a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v26[0] = @"IPv4";
  v26[1] = @"IPv6";
  v26[2] = @"Proxies";
  v26[3] = @"DNS";
  v2 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"com.apple.scnetworkcategory");
  v4 = CFArrayCreateMutable(0, 0, v2);
  for (i = 0; i != 4; ++i)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", v26[i]);
    CFArrayAppendValue(v4, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
  }

  v7 = SCDynamicStoreSetNotificationKeys(a1, Mutable, v4);
  if (!v7)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = &v26[-1] - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = SCError();
      v22 = SCErrorString(v21);
      *v20 = 136315394;
      *(v20 + 4) = "store_set_notification_keys";
      *(v20 + 12) = 2080;
      *(v20 + 14) = v22;
      __SC_log_send(5, v8, v9, v18);
    }
  }

  CFRelease(Mutable);
  CFRelease(v4);
  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __SCNSManagerPrefsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = *(a3 + 32);
  if (result)
  {
    v4 = *(result + 16);
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void dict_merge_value(void *key, void *value, CFMutableDictionaryRef theDict)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  CFDictionarySetValue(theDict, key, value);
}

void state_dict_entity_key(CFStringRef theString, const void *a2, __CFDictionary *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (ArrayBySeparatingStrings)
  {
    v6 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, Count - 1);
      CFDictionarySetValue(a3, ValueAtIndex, a2);
    }

    v9 = *MEMORY[0x1E69E9840];

    CFRelease(v6);
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
  }
}

CFArrayRef SCVLANInterfaceCopyAll(SCPreferencesRef prefs)
{
  context[3] = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUsingDefaultPrefs(prefs))
  {
    Companion = 0;
  }

  else
  {
    Companion = SCPreferencesCreateCompanion(prefs, @"NetworkInterfaces.plist");
  }

  context[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  context[1] = Companion;
  context[2] = prefs;
  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"VirtualNetworkInterfaces", @"VLAN");
  Value = SCPreferencesPathGetValue(prefs, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v6 = CFGetAllocator(Value);
    Copy = CFDictionaryCreateCopy(v6, Value);
    CFDictionaryApplyFunction(Copy, add_configured_interface_0, context);
    CFRelease(Copy);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  result = context[0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void add_configured_interface_0(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"Interface");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (v8 = CFDictionaryGetValue(theDict, @"Tag"), v9 = CFNumberGetTypeID(), v8) && CFGetTypeID(v8) == v9)
  {
    Private = _SCVLANInterfaceCreatePrivate(0, a1);
    if (!Private)
    {
      add_configured_interface_cold_2();
    }

    v11 = Private;
    v12 = *(a3 + 8);
    if (!v12 || (v13 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, v12, Value)) == 0)
    {
      v13 = _SCNetworkInterfaceCreateWithBSDName(0, Value, 2);
      if (!v13)
      {
        add_configured_interface_cold_1_0();
      }
    }

    v14 = v13;
    v13[368] = 1;
    SCVLANInterfaceSetPhysicalInterfaceAndTag(v11, v13, v8);
    CFRelease(v14);
    v15 = CFDictionaryGetValue(theDict, @"UserDefinedName");
    v16 = CFStringGetTypeID();
    if (v15 && CFGetTypeID(v15) == v16)
    {
      SCVLANInterfaceSetLocalizedDisplayName(v11, v15);
    }

    v17 = CFDictionaryGetValue(theDict, @"Options");
    v18 = CFDictionaryGetTypeID();
    if (v17 && CFGetTypeID(v17) == v18)
    {
      SCVLANInterfaceSetOptions(v11, v17);
    }

    *(v11 + 10) = CFRetain(*(a3 + 16));
    CFArrayAppendValue(*a3, v11);
    v19 = *MEMORY[0x1E69E9840];

    CFRelease(v11);
  }

  else
  {
    v20 = *MEMORY[0x1E69E9840];
  }
}

CFArrayRef SCVLANInterfaceCopyAvailablePhysicalInterfaces(void)
{
  v9 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = SCPreferencesCreate(0, @"SCVLANInterfaceCopyAvailablePhysicalInterfaces", 0);
  if (v1)
  {
    v2 = v1;
    v3 = SCBridgeInterfaceCopyAll(v1);
    if (v3)
    {
      v4 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      __SCBridgeInterfaceListCollectMembers(v3, v4, 0);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v5)
  {
    v6 = v5;
    addAvailableInterfaces(Mutable, v5, v4);
    CFRelease(v6);
  }

  if (v3)
  {
    addAvailableInterfaces(Mutable, v3, 0);
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void addAvailableInterfaces(__CFArray *a1, CFArrayRef theArray, const __CFSet *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (!a3 || !CFSetContainsValue(a3, ValueAtIndex))
      {
        if (ValueAtIndex[368])
        {
          CFArrayAppendValue(a1, ValueAtIndex);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

__CFArray *_SCVLANInterfaceCopyActive()
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0;
  if (getifaddrs(&v50) == -1)
  {
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = &v48[-((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = __error();
      v29 = strerror(*v28);
      *v27 = 136315138;
      *(v27 + 4) = v29;
      __SC_log_send(5, v15, v16, v25);
    }

    _SCErrorSet(1001);
    Mutable = 0;
    goto LABEL_20;
  }

  v0 = inet_dgram_socket_0();
  if (v0 == -1)
  {
    v30 = __error();
    _SCErrorSet(*v30);
    Mutable = 0;
    goto LABEL_19;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = v50;
  if (!v50)
  {
    goto LABEL_14;
  }

  v4 = 0uLL;
  while (1)
  {
    v55 = v4;
    v56 = v4;
    valuePtr = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    ifa_data = v3->ifa_data;
    if (ifa_data)
    {
      if (v3->ifa_addr->sa_family == 18 && *ifa_data == 135)
      {
        break;
      }
    }

LABEL_13:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  v55 = v4;
  v56 = v4;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  ifa_name = v3->ifa_name;
  __strlcpy_chk();
  *&v56 = &v51;
  if (ioctl(v1, 0xC020697FuLL, &v55) != -1)
  {
    v7 = CFStringCreateWithCString(0, v3->ifa_name, 0x600u);
    Private = _SCVLANInterfaceCreatePrivate(0, v7);
    if (!Private)
    {
      _SCVLANInterfaceCopyActive_cold_3();
    }

    v9 = Private;
    CFRelease(v7);
    __strlcpy_chk();
    v10 = CFStringCreateWithCString(0, cStr, 0x600u);
    v11 = _SCNetworkInterfaceCreateWithBSDName(0, v10, 2);
    if (!v11)
    {
      _SCVLANInterfaceCopyActive_cold_2();
    }

    v12 = v11;
    CFRelease(v10);
    valuePtr = v53;
    v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v13)
    {
      _SCVLANInterfaceCopyActive_cold_1();
    }

    v14 = v13;
    SCVLANInterfaceSetPhysicalInterfaceAndTag(v9, v12, v13);
    CFRelease(v12);
    CFRelease(v14);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
    v4 = 0uLL;
    goto LABEL_13;
  }

  v33 = __log_SCNetworkConfiguration();
  v34 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v33, v34))
  {
    v35 = _os_log_pack_size();
    v43 = &v48[-((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v44 = *__error();
    v45 = _os_log_pack_fill();
    v46 = __error();
    v47 = strerror(*v46);
    *v45 = 136315138;
    *(v45 + 4) = v47;
    __SC_log_send(5, v33, v34, v43);
  }

  CFRelease(Mutable);
  _SCErrorSet(1001);
  Mutable = 0;
LABEL_14:
  close(v1);
LABEL_19:
  MEMORY[0x1B26F4BC0](v50);
LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t inet_dgram_socket_0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = socket(2, 2, 0);
  if (v0 == -1)
  {
    v1 = __log_SCNetworkConfiguration();
    v2 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v1, v2))
    {
      v3 = _os_log_pack_size();
      v11 = v18 - ((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315138;
      *(v13 + 4) = v15;
      __SC_log_send(3, v1, v2, v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v0;
}

Boolean SCVLANInterfaceSetPhysicalInterfaceAndTag(SCVLANInterfaceRef vlan, SCNetworkInterfaceRef physical, CFNumberRef tag)
{
  v28 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!vlan)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(vlan) != TypeID)
  {
    goto LABEL_18;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan);
  if (!CFEqual(InterfaceType, @"VLAN"))
  {
    goto LABEL_18;
  }

  v8 = SCNetworkInterfaceGetTypeID();
  if (!physical || CFGetTypeID(physical) != v8)
  {
    goto LABEL_18;
  }

  if (!*(physical + 368))
  {
    if (__SCPreferencesUsingDefaultPrefs(*(physical + 10)))
    {
LABEL_18:
      v20 = 1002;
LABEL_19:
      _SCErrorSet(v20);
      LOBYTE(v19) = 0;
      goto LABEL_20;
    }

    *(physical + 368) = 1;
  }

  v9 = CFNumberGetTypeID();
  if (!tag)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(tag) != v9)
  {
    goto LABEL_18;
  }

  valuePtr = 0;
  CFNumberGetValue(tag, kCFNumberIntType, &valuePtr);
  if ((valuePtr - 1) >= 0xFFE)
  {
    goto LABEL_18;
  }

  v10 = *(vlan + 10);
  if (!v10)
  {
    v23 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_23;
  }

  VLANInterfaceAndTag = findVLANInterfaceAndTag(v10, physical, tag);
  if (VLANInterfaceAndTag)
  {
    v12 = VLANInterfaceAndTag;
    v13 = CFEqual(vlan, VLANInterfaceAndTag);
    CFRelease(v12);
    if (!v13)
    {
      v20 = 1005;
      goto LABEL_19;
    }
  }

  v14 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(vlan + 14));
  Value = SCPreferencesPathGetValue(*(vlan + 10), v14);
  v16 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v16)
  {
    CFRelease(v14);
    v20 = 1001;
    goto LABEL_19;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  BSDName = SCNetworkInterfaceGetBSDName(physical);
  CFDictionarySetValue(MutableCopy, @"Interface", BSDName);
  CFDictionarySetValue(MutableCopy, @"Tag", tag);
  if (CFEqual(Value, MutableCopy))
  {
    v19 = 1;
  }

  else
  {
    v19 = SCPreferencesPathSetValue(*(vlan + 10), v14, MutableCopy);
  }

  CFRelease(MutableCopy);
  CFRelease(v14);
  if (!v19)
  {
    goto LABEL_20;
  }

  v23 = *(vlan + 10);
LABEL_23:
  Copy = __SCNetworkInterfaceCreateCopy(0, physical, v23, *(vlan + 12));
  v25 = *(vlan + 47);
  *(vlan + 47) = Copy;
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(vlan + 48);
  *(vlan + 48) = CFRetain(tag);
  if (v26)
  {
    CFRelease(v26);
  }

LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

SCVLANInterfaceRef SCVLANInterfaceCreate(SCPreferencesRef prefs, SCNetworkInterfaceRef physical, CFNumberRef tag)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!physical || CFGetTypeID(physical) != TypeID)
  {
    goto LABEL_11;
  }

  if (!*(physical + 368))
  {
    if (__SCPreferencesUsingDefaultPrefs(prefs))
    {
LABEL_11:
      v9 = 1002;
      goto LABEL_12;
    }

    *(physical + 368) = 1;
  }

  v7 = CFNumberGetTypeID();
  if (!tag)
  {
    goto LABEL_11;
  }

  if (CFGetTypeID(tag) != v7)
  {
    goto LABEL_11;
  }

  valuePtr = 0;
  CFNumberGetValue(tag, kCFNumberIntType, &valuePtr);
  if ((valuePtr - 1) >= 0xFFE)
  {
    goto LABEL_11;
  }

  VLANInterfaceAndTag = findVLANInterfaceAndTag(prefs, physical, tag);
  if (VLANInterfaceAndTag)
  {
    CFRelease(VLANInterfaceAndTag);
    v9 = 1005;
  }

  else
  {
    v13 = CFGetAllocator(prefs);
    v14 = CFStringCreateWithFormat(v13, 0, @"vlan%ld", 0);
    v15 = CFStringCreateWithFormat(v13, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", v14);
    if (SCPreferencesPathGetValue(prefs, v15))
    {
      v16 = 1;
      do
      {
        CFRelease(v15);
        CFRelease(v14);
        v14 = CFStringCreateWithFormat(v13, 0, @"vlan%ld", v16);
        v15 = CFStringCreateWithFormat(v13, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", v14);
        ++v16;
      }

      while (SCPreferencesPathGetValue(prefs, v15));
    }

    v17 = CFDictionaryCreate(v13, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = SCPreferencesPathSetValue(prefs, v15, v17);
    CFRelease(v17);
    CFRelease(v15);
    if (v18)
    {
      Private = _SCVLANInterfaceCreatePrivate(v13, v14);
      CFRelease(v14);
      *(Private + 10) = CFRetain(prefs);
      SCVLANInterfaceSetPhysicalInterfaceAndTag(Private, physical, tag);
      goto LABEL_13;
    }

    CFRelease(v14);
    v9 = 1001;
  }

LABEL_12:
  _SCErrorSet(v9);
  Private = 0;
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return Private;
}

CFTypeRef findVLANInterfaceAndTag(const __SCPreferences *a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = SCVLANInterfaceCopyAll(a1);
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_8:
    v13 = 0;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(ValueAtIndex);
      Tag = SCVLANInterfaceGetTag(ValueAtIndex);
      if (PhysicalInterface)
      {
        v12 = Tag;
        if (Tag)
        {
          if (CFEqual(a2, PhysicalInterface) && CFEqual(a3, v12))
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    v13 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

Boolean SCVLANInterfaceRemove(SCVLANInterfaceRef vlan)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")) && *(vlan + 10))
  {
    BSDName = SCNetworkInterfaceGetBSDName(vlan);
    v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", BSDName);
    v6 = SCPreferencesPathRemoveValue(*(vlan + 10), v5);
    CFRelease(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    _SCErrorSet(1002);
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

SCNetworkInterfaceRef SCVLANInterfaceGetPhysicalInterface(SCVLANInterfaceRef vlan)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")))
  {
    result = *(vlan + 47);
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef SCVLANInterfaceGetTag(SCVLANInterfaceRef vlan)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")))
  {
    result = *(vlan + 48);
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef SCVLANInterfaceGetOptions(SCVLANInterfaceRef vlan)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")))
  {
    result = *(vlan + 49);
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCVLANInterfaceSetLocalizedDisplayName(SCVLANInterfaceRef vlan, CFStringRef newName)
{
  v17 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!vlan || CFGetTypeID(vlan) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), !CFEqual(InterfaceType, @"VLAN")) || newName && (v6 = CFStringGetTypeID(), CFGetTypeID(newName) != v6))
  {
    v12 = 1002;
    goto LABEL_12;
  }

  if (*(vlan + 10))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(vlan + 14));
    Value = SCPreferencesPathGetValue(*(vlan + 10), v7);
    v9 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      v11 = MutableCopy;
      if (newName)
      {
        CFDictionarySetValue(MutableCopy, @"UserDefinedName", newName);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
      }

      if (CFEqual(Value, v11))
      {
        v13 = 1;
      }

      else
      {
        v13 = SCPreferencesPathSetValue(*(vlan + 10), v7, v11);
      }

      CFRelease(v11);
      CFRelease(v7);
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    CFRelease(v7);
    v12 = 1001;
LABEL_12:
    _SCErrorSet(v12);
    LOBYTE(v13) = 0;
    goto LABEL_13;
  }

  LOBYTE(v13) = 1;
LABEL_21:
  v16 = *(vlan + 5);
  if (v16)
  {
    CFRelease(v16);
    *(vlan + 5) = 0;
  }

  if (newName)
  {
    *(vlan + 5) = CFStringCreateCopy(0, newName);
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

Boolean SCVLANInterfaceSetOptions(SCVLANInterfaceRef vlan, CFDictionaryRef newOptions)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")) && (!newOptions || (v6 = CFDictionaryGetTypeID(), CFGetTypeID(newOptions) == v6)))
  {
    v7 = *MEMORY[0x1E69E9840];

    return __SCVLANInterfaceSetOptions(vlan, newOptions);
  }

  else
  {
    _SCErrorSet(1002);
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCVLANInterfaceSetOptions(uint64_t a1, CFDictionaryRef theDict)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    v22 = 1;
LABEL_15:
    v23 = *(a1 + 392);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 392) = 0;
    }

    if (theDict)
    {
      *(a1 + 392) = CFDictionaryCreateCopy(0, theDict);
    }

    goto LABEL_19;
  }

  v4 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(a1 + 112));
  Value = SCPreferencesPathGetValue(*(a1 + 80), v4);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    v8 = MutableCopy;
    if (theDict)
    {
      CFDictionarySetValue(MutableCopy, @"Options", theDict);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Options");
    }

    if (CFEqual(Value, v8))
    {
      v22 = 1;
    }

    else
    {
      v22 = SCPreferencesPathSetValue(*(a1 + 80), v4, v8);
    }

    CFRelease(v8);
    CFRelease(v4);
    if (!v22)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v9, v10))
  {
    v11 = _os_log_pack_size();
    v19 = v26 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "__SCVLANInterfaceSetOptions";
    __SC_log_send(5, v9, v10, v19);
  }

  CFRelease(v4);
  _SCErrorSet(1001);
  v22 = 0;
LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __SCVLANInterfaceSetAutoConfigure(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 392);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = 1;
    if (a2)
    {
LABEL_3:
      CFDictionaryRemoveValue(MutableCopy, @"AutoConfigure");
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CFDictionarySetValue(MutableCopy, @"AutoConfigure", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
LABEL_4:
    v6 = CFEqual(v4, MutableCopy) == 0;
  }

LABEL_5:
  if (v6)
  {
    v7 = __SCVLANInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v7 = 1;
  }

  CFRelease(MutableCopy);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __SCVLANInterfaceGetAutoConfigure(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 392);
  if (!v1)
  {
    CFBooleanGetTypeID();
LABEL_8:
    v6 = *MEMORY[0x1E69E9840];
    return 1;
  }

  Value = CFDictionaryGetValue(v1, @"AutoConfigure");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_8;
  }

  v4 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(Value);
}

uint64_t _SCVLANInterfaceUpdateConfiguration(const __SCPreferences *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _SCErrorSet(1002);
    v4 = 0;
    goto LABEL_65;
  }

  v1 = SCVLANInterfaceCopyAll(a1);
  v2 = v1;
  if (v1)
  {
    Count = CFArrayGetCount(v1);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = _SCVLANInterfaceCopyActive();
  v7 = v6;
  v45 = v2;
  if (!v6)
  {
    v42 = 0;
    v46 = 0;
LABEL_22:
    LODWORD(v9) = -1;
    v41 = 1;
    goto LABEL_23;
  }

  v46 = CFArrayGetCount(v6);
  if (v46 < 1)
  {
    v42 = 0;
    goto LABEL_22;
  }

  v8 = 0;
  v41 = 1;
  v9 = 0xFFFFFFFFLL;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (Count >= 1)
    {
      v12 = 0;
      do
      {
        v13 = CFArrayGetValueAtIndex(v2, v12);
        v14 = SCNetworkInterfaceGetBSDName(v13);
        if (CFEqual(BSDName, v14))
        {
          goto LABEL_18;
        }
      }

      while (Count != ++v12);
    }

    v15 = v9;
    if (v9 == -1)
    {
      v15 = inet_dgram_socket_0();
      if (v15 == -1)
      {
        break;
      }
    }

    v9 = v15;
    if (!__destroyInterface(v15, BSDName))
    {
      v16 = __error();
      _SCErrorSet(*v16);
      v41 = 0;
    }

    v2 = v45;
LABEL_18:
    if (++v8 == v46)
    {
      v42 = 1;
LABEL_23:
      v43 = v9;
      if (Count >= 1)
      {
        v17 = 0;
        v40 = *MEMORY[0x1E695E4D0];
        v39 = *MEMORY[0x1E695E4C0];
        do
        {
          v18 = CFArrayGetValueAtIndex(v2, v17);
          v19 = SCNetworkInterfaceGetBSDName(v18);
          PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v18);
          if (PhysicalInterface)
          {
            v21 = PhysicalInterface;
            IOPath = _SCNetworkInterfaceGetIOPath(PhysicalInterface);
            Value = CFDictionaryGetValue(Mutable, v21);
            if (!Value)
            {
              if (v21[368])
              {
                Value = v40;
              }

              else
              {
                Value = v39;
              }

              CFDictionaryAddValue(Mutable, v21, Value);
            }

            v23 = Mutable;
            if (v42)
            {
              v24 = 0;
              while (1)
              {
                v25 = CFArrayGetValueAtIndex(v7, v24);
                v26 = SCNetworkInterfaceGetBSDName(v25);
                if (CFEqual(v19, v26))
                {
                  break;
                }

                if (v46 == ++v24)
                {
                  goto LABEL_35;
                }
              }

              if (CFEqual(v18, v25))
              {
LABEL_43:
                Mutable = v23;
                goto LABEL_55;
              }

              v33 = v43;
              Mutable = v23;
              if (v43 == -1)
              {
                v33 = inet_dgram_socket_0();
                if (v33 == -1)
                {
                  goto LABEL_66;
                }
              }

              v43 = v33;
              if (!CFBooleanGetValue(Value) || !__vlan_clear(v43, v19) || (v34 = SCNetworkInterfaceGetBSDName(v21), Tag = SCVLANInterfaceGetTag(v18), !__vlan_set(v43, v19, v34, Tag)))
              {
                if (!CFBooleanGetValue(Value))
                {
                  _SCErrorSet(1001);
                }

                v31 = v43;
LABEL_53:
                __destroyInterface(v31, v19);
LABEL_54:
                v41 = 0;
              }
            }

            else
            {
LABEL_35:
              v27 = CFBooleanGetValue(Value);
              if (!IOPath)
              {
                goto LABEL_43;
              }

              Mutable = v23;
              if (v27)
              {
                v28 = v43;
                if (v43 == -1)
                {
                  v28 = inet_dgram_socket_0();
                  if (v28 == -1)
                  {
                    goto LABEL_66;
                  }
                }

                v43 = v28;
                if (!__createInterface(v28, v19))
                {
                  v32 = __error();
                  _SCErrorSet(*v32);
                  goto LABEL_54;
                }

                v29 = SCNetworkInterfaceGetBSDName(v21);
                v30 = SCVLANInterfaceGetTag(v18);
                if (!__vlan_set(v28, v19, v29, v30))
                {
                  v31 = v28;
                  goto LABEL_53;
                }
              }
            }
          }

LABEL_55:
          v2 = v45;
          ++v17;
        }

        while (v17 != Count);
      }

      if (!v7)
      {
        goto LABEL_58;
      }

LABEL_57:
      CFRelease(v7);
      goto LABEL_58;
    }
  }

LABEL_66:
  v38 = __error();
  _SCErrorSet(*v38);
  v41 = 0;
  v43 = -1;
  v2 = v45;
  if (v7)
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v43 != -1)
  {
    close(v43);
  }

  v4 = v41;
LABEL_65:
  v36 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __vlan_clear(int a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  _SC_cfstring_to_cstring(a2, &v23, 16, 0x600u);
  *&v24 = v21;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  if (ioctl(a1, 0x8020697EuLL, &v23) == -1)
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = &v21[-1] - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = __error();
      v18 = strerror(*v17);
      *v16 = 136315138;
      *(v16 + 4) = v18;
      __SC_log_send(5, v4, v5, v14);
    }

    _SCErrorSet(1001);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __vlan_set(int a1, const __CFString *a2, const __CFString *a3, const __CFNumber *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  HIDWORD(v24) = 0;
  v27 = 0u;
  v28 = 0u;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  _SC_cfstring_to_cstring(a2, &v27, 16, 0x600u);
  *&v28 = v25;
  _SC_cfstring_to_cstring(a3, v25, 16, 0x600u);
  CFNumberGetValue(a4, kCFNumberIntType, &v24 + 4);
  v26 = WORD2(v24);
  if (ioctl(a1, 0x8020697EuLL, &v27) == -1)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = &v25[-1] - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = __error();
      v22 = strerror(*v21);
      *v20 = 136315138;
      *(v20 + 4) = v22;
      __SC_log_send(5, v8, v9, v18);
    }

    _SCErrorSet(1001);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

char *_scprefs_observer_watch(int a1, char *__s, uint64_t a3, const void *a4)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (_scprefs_observer_watch_initialized != -1)
  {
    _scprefs_observer_watch_cold_1();
  }

  v8 = strlen(__s);
  v9 = malloc_type_malloc(v8 + 41, 0x10E0040E60CB9C0uLL);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *v9 = a1;
  strlcpy(v9 + 40, __s, v8 + 1);
  *(v9 + 4) = a3;
  *(v9 + 1) = _Block_copy(a4);
  v10 = __log_SCPreferences();
  v11 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v10, v11))
  {
    v12 = _os_log_pack_size();
    v20 = block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = v9 + 40;
    __SC_log_send(6, v10, v11, v20);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___scprefs_observer_watch_block_invoke_1;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = v9;
  dispatch_sync(prefs_observer_queue, block);
  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

void ___scprefs_observer_watch_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  _prefs_observer_init();
}

void _prefs_observer_init()
{
  v16[1] = *MEMORY[0x1E69E9840];
  prefs_observer_queue = dispatch_queue_create("com.apple.SystemConfiguration.SCPreferencesObserver", 0);
  head_0 = 0;
  v0 = notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_prefs_observer_init_token, prefs_observer_queue, &__block_literal_global_9_0);
  if (v0)
  {
    v1 = v0;
    v2 = __log_SCPreferences();
    v3 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v2, v3))
    {
      v4 = _os_log_pack_size();
      v12 = v16 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 67109120;
      v14[1] = v1;
      __SC_log_send(6, v2, v3, v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t ___scprefs_observer_watch_block_invoke_1(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  *(*(result + 32) + 24) = head_0;
  head_0 = *(result + 32);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void _scprefs_observer_cancel(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___scprefs_observer_cancel_block_invoke;
  v2[3] = &__block_descriptor_tmp_3_0;
  v2[4] = a1;
  dispatch_sync(prefs_observer_queue, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void ___scprefs_observer_cancel_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = &head_0;
  v3 = head_0;
  if (head_0 != v1)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3 != v1);
    v2 = (v4 + 24);
  }

  *v2 = *(v3 + 24);
  v5 = v1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *MEMORY[0x1E69E9840];

  free(v1);
}

void ___prefs_observer_init_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  prefs_observer_handle_notifications();
}

void prefs_observer_handle_notifications()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v0 = __log_SCPreferences();
  v1 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v0, v1))
  {
    v2 = _os_log_pack_size();
    v10 = v14 - ((MEMORY[0x1EEE9AC00](v2, v3, v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(7, v0, v1, v10);
  }

  for (i = head_0; i; i = *(i + 24))
  {
    if (has_changed(i))
    {
      dispatch_async(*(i + 32), *(i + 8));
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

BOOL has_changed(int *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 10);
  v2 = *a1;
  *&v26.wbuf[14] = 0;
  if (v2 == 2)
  {
    v4 = "/Library/Managed Preferences/mobile";
  }

  else
  {
    v4 = 0;
  }

  memset(&v26, 0, 96);
  CC_SHA256_Init(&v26);
  memset(&v27, 0, sizeof(v27));
  snprintf(v28, 0x400uLL, "%s/%s", v4, v3);
  if (stat(v28, &v27) || (v27.st_mode & 0xF000) != 0x8000)
  {
    CC_SHA256_Final(v28, &v26);
    v6 = 0;
  }

  else
  {
    v5 = strlen(v28);
    CC_SHA256_Update(&v26, v28, v5);
    CC_SHA256_Update(&v26, &v27.st_mtimespec, 0x10u);
    CC_SHA256_Final(v28, &v26);
    v6 = CFDataCreate(0, v28, 32);
  }

  v7 = *(a1 + 2);
  if (v6 == v7)
  {
    v8 = 0;
    if (v7)
    {
LABEL_13:
      CFRelease(v7);
    }
  }

  else
  {
    v8 = 1;
    if (v6 && v7)
    {
      v8 = CFEqual(v6, v7) == 0;
      v7 = *(a1 + 2);
    }

    if (v7)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 2) = v6;
  v9 = __log_SCPreferences();
  if (v8)
  {
    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  v11 = _SC_syslog_os_log_mapping(v10);
  if (__SC_log_enabled(v10, v9, v11))
  {
    v12 = _os_log_pack_size();
    v20 = &v26 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    v23 = "did not change";
    if (v8)
    {
      v23 = "changed";
    }

    *v22 = 136315394;
    *(v22 + 4) = v3;
    *(v22 + 12) = 2080;
    *(v22 + 14) = v23;
    __SC_log_send(v10, v9, v11, v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _SC_stringIsValidDNSName(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 - 256 >= 0xFFFFFFFFFFFFFF01)
    {
      v3 = v2;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = (v1 + 1);
      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        v9 = *(v7 - 1);
        v10 = *v7;
        if (v9 == 46)
        {
          if (++v5 > 0x7F)
          {
            break;
          }
        }

        else
        {
          ++v6;
        }

        if (v4 == 46 || !v4)
        {
          if ((v9 & 0x80000000) != 0)
          {
            result = __maskrune(*(v7 - 1), 0x500uLL);
            if (!result)
            {
              goto LABEL_43;
            }
          }

          else
          {
            result = *(v8 + 4 * v9 + 60) & 0x500;
            if (!result)
            {
              goto LABEL_43;
            }
          }
        }

        if (v10 == 46 || v10 == 0)
        {
          if (v6 > 0x3F)
          {
            break;
          }

          if (v9 == 46 && !v10 && v5 > 1)
          {
LABEL_42:
            result = 1;
            goto LABEL_43;
          }

          if ((v9 & 0x80000000) != 0)
          {
            v12 = __maskrune(v9, 0x500uLL);
          }

          else
          {
            v12 = *(v8 + 4 * v9 + 60) & 0x500;
          }

          result = 0;
          if (v10)
          {
            v13 = 0;
          }

          else
          {
            v13 = v5 == 127;
          }

          v14 = v13;
          if (!v12 || (v14 & 1) != 0)
          {
            goto LABEL_43;
          }

          v6 = 0;
        }

        else
        {
          if ((v9 & 0x80000000) != 0)
          {
            result = __maskrune(v9, 0x500uLL);
          }

          else
          {
            result = *(v8 + 4 * v9 + 60) & 0x500;
          }

          if ((v9 - 45) >= 2u && !result)
          {
            goto LABEL_43;
          }
        }

        v4 = v9;
        ++v7;
        if (!--v3)
        {
          goto LABEL_42;
        }
      }
    }

    result = 0;
  }

LABEL_43:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SC_CFStringIsValidDNSName(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (v3 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u)) != 0)
  {
    v4 = v3;
    IsValidDNSName = _SC_stringIsValidDNSName(v3);
    CFAllocatorDeallocate(0, v4);
    v6 = *MEMORY[0x1E69E9840];
    return IsValidDNSName;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

BOOL _SC_CFStringIsValidNetBIOSName(const __CFString *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  result = a1 && CFGetTypeID(a1) == TypeID && CFStringGetLength(a1) < 16;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *VPNServiceCopyAllMatchingExternalID(const __SCPreferences *a1, const void *a2, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1 || (TypeID = CFStringGetTypeID(), !a2) || CFGetTypeID(a2) != TypeID || (v7 = CFStringGetTypeID(), !a3) || CFGetTypeID(a3) != v7)
  {
    LODWORD(result) = 1002;
LABEL_9:
    _SCErrorSet(result);
    result = 0;
    goto LABEL_10;
  }

  result = copy_matching_services(a1, a2, a3);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *copy_matching_services(const __SCPreferences *a1, const void *a2, const void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = SCNetworkServiceCopyAll(a1);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      Mutable = 0;
      v11 = 0;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
        if (isA_VPNService(ValueAtIndex))
        {
          TypeID = CFStringGetTypeID();
          if (!a2 || CFGetTypeID(a2) != TypeID || (v14 = CFStringGetTypeID(), !a3) || CFGetTypeID(a3) != v14 || (v15 = SCNetworkServiceCopyExternalID(ValueAtIndex, a2)) != 0 && (v16 = v15, v17 = CFEqual(v15, a3), CFRelease(v16), v17))
          {
            if (!Mutable)
            {
              v18 = CFArrayGetCount(v6);
              Mutable = CFArrayCreateMutable(allocator, v18 + v9, MEMORY[0x1E695E9C0]);
            }

            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }

        ++v11;
        --v9;
      }

      while (v8 != v11);
    }

    CFRelease(v6);
  }

  else
  {
    Mutable = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *VPNServiceCopyAll(const __SCPreferences *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    LODWORD(result) = 1002;
LABEL_5:
    _SCErrorSet(result);
    result = 0;
    goto LABEL_6;
  }

  result = copy_matching_services(a1, 0, 0);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_6:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *VPNServiceCopyAppRuleIDs(const __SCNetworkService *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!isA_VPNService(a1) || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v15 = 1002;
LABEL_21:
    _SCErrorSet(v15);
    Mutable = 0;
    goto LABEL_22;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  TypeID = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != TypeID || (Value = CFDictionaryGetValue(Configuration, @"AppRules"), v6 = CFArrayGetTypeID(), !Value) || CFGetTypeID(Value) != v6)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  Count = CFArrayGetCount(Value);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      v11 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
          v13 = CFStringGetTypeID();
          if (v12)
          {
            if (CFGetTypeID(v12) == v13)
            {
              v14 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
              CFArrayAppendValue(Mutable, v14);
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    goto LABEL_20;
  }

  if (!Mutable)
  {
    goto LABEL_20;
  }

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

const __SCNetworkInterface *isA_VPNService(const __SCNetworkService *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkServiceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    result = SCNetworkServiceGetInterface(a1);
    if (result)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
      result = (CFEqual(InterfaceType, @"VPN") != 0);
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t VPNServiceSetAppRule(const __SCNetworkService *a1, const void *a2, const __CFDictionary *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (isA_VPNService(a1) && (v6 = CFStringGetTypeID(), a2) && CFGetTypeID(a2) == v6 && validate_app_rule(a3, 1) && (Interface = SCNetworkServiceGetInterface(a1)) != 0)
  {
    v8 = Interface;
    Value = CFDictionaryGetValue(a3, @"ExecutableMatch");
    v10 = CFDictionaryGetValue(a3, @"DNSDomainMatch");
    theArray = CFDictionaryGetValue(a3, @"AccountIdentifierMatch");
    Configuration = SCNetworkInterfaceGetConfiguration(v8);
    TypeID = CFDictionaryGetTypeID();
    if (Configuration && CFGetTypeID(Configuration) == TypeID)
    {
      app_rule = find_app_rule(Configuration, a2);
      v14 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Configuration);
    }

    else
    {
      v14 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      app_rule = -1;
    }

    v18 = CFDictionaryGetValue(MutableCopy, @"AppRules");
    v19 = CFArrayGetTypeID();
    if (v18 && CFGetTypeID(v18) == v19)
    {
      Mutable = CFArrayCreateMutableCopy(v14, 0, v18);
    }

    else
    {
      Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
    }

    v21 = Mutable;
    v22 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v22, @"Identifier", a2);
    if (Value && CFArrayGetCount(Value) >= 1)
    {
      CFDictionarySetValue(v22, @"ExecutableMatch", Value);
    }

    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      CFDictionarySetValue(v22, @"DNSDomainMatch", v10);
    }

    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      CFDictionarySetValue(v22, @"AccountIdentifierMatch", theArray);
    }

    if (app_rule < 0)
    {
      CFArrayAppendValue(v21, v22);
    }

    else
    {
      CFArraySetValueAtIndex(v21, app_rule, v22);
    }

    CFDictionarySetValue(MutableCopy, @"AppRules", v21);
    SCNetworkInterfaceSetConfiguration(v8, MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(v21);
    CFRelease(v22);
    result = 1;
  }

  else
  {
    _SCErrorSet(1002);
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex validate_app_rule(const void *a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_56;
  }

  Value = CFDictionaryGetValue(a1, @"ExecutableMatch");
  v6 = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == v6)
  {
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v40 = 0;
      v8 = 0;
      allocator = *MEMORY[0x1E695E480];
      v9 = -1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v8);
        v11 = CFDictionaryGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"SigningIdentifier");
          v13 = CFDictionaryGetValue(ValueAtIndex, @"DesignatedRequirement");
          v14 = CFStringGetTypeID();
          if (!v12 || CFGetTypeID(v12) != v14)
          {
            goto LABEL_56;
          }

          result = CFStringGetLength(v12);
          if (!result)
          {
            goto LABEL_57;
          }

          if (a2 && CFStringHasPrefix(v12, @"com.apple."))
          {
            v9 = 0;
            v16 = 1;
            do
            {
              v17 = v16;
              if (CFStringCompare(v12, *(&g_apple_app_exceptions + 2 * v9), 0) == kCFCompareEqualTo)
              {
                v40 = 1;
                goto LABEL_20;
              }

              v16 = 0;
              v9 = 1;
            }

            while ((v17 & 1) != 0);
            if (v40)
            {
              v40 = 1;
            }

            else
            {
              result = SecTaskCreateFromSelf(allocator);
              if (!result)
              {
                goto LABEL_57;
              }

              v19 = result;
              v20 = SecTaskCopyValueForEntitlement(result, @"com.apple.private.app-vpn-config", 0);
              v21 = CFBooleanGetTypeID();
              if (!v20)
              {
                goto LABEL_55;
              }

              if (CFGetTypeID(v20) != v21)
              {
                CFRelease(v20);
LABEL_55:
                CFRelease(v19);
LABEL_56:
                result = 0;
                goto LABEL_57;
              }

              v22 = CFBooleanGetValue(v20);
              CFRelease(v20);
              CFRelease(v19);
              if (!v22)
              {
                goto LABEL_56;
              }

              v40 = 0;
            }

            v9 = 2;
            if (v13)
            {
LABEL_21:
              v18 = CFStringGetTypeID();
              if (CFGetTypeID(v13) != v18)
              {
                goto LABEL_56;
              }

              result = CFStringGetLength(v13);
              if (!result)
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
LABEL_20:
            if (v13)
            {
              goto LABEL_21;
            }
          }
        }

        if (++v8 == Count)
        {
          v36 = v40 == 0;
          v37 = v9 >> 63;
          Count = 1;
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    Count = 0;
  }

  v36 = 1;
  LODWORD(v37) = 1;
LABEL_34:
  v23 = CFDictionaryGetValue(a1, @"AccountIdentifierMatch");
  v24 = CFArrayGetTypeID();
  if (v23 && CFGetTypeID(v23) == v24)
  {
    v25 = CFArrayGetCount(v23);
    if (v25 >= 1)
    {
      v26 = 0;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v23, v26);
        v28 = CFStringGetTypeID();
        if (!v27 || CFGetTypeID(v27) != v28)
        {
          goto LABEL_56;
        }

        if (v25 == ++v26)
        {
          v25 = 1;
          break;
        }
      }
    }
  }

  else
  {
    v25 = 0;
  }

  if (!(v25 | Count))
  {
    goto LABEL_56;
  }

  v29 = CFDictionaryGetValue(a1, @"DNSDomainMatch");
  if (v29)
  {
    v30 = v29;
    v31 = CFArrayGetTypeID();
    if (CFGetTypeID(v30) != v31)
    {
      goto LABEL_56;
    }

    v32 = CFArrayGetCount(v30);
    if (v32 >= 1)
    {
      v33 = 0;
      while (1)
      {
        v34 = CFArrayGetValueAtIndex(v30, v33);
        v35 = CFStringGetTypeID();
        if (!v34 || CFGetTypeID(v34) != v35)
        {
          goto LABEL_56;
        }

        if (v32 == ++v33)
        {
          v32 = 1;
          break;
        }
      }
    }
  }

  else
  {
    v32 = 0;
  }

  result = (v32 != 0) | (v36 | v37) & 1;
LABEL_57:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex find_app_rule(const __CFDictionary *a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"AppRules");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (Count = CFArrayGetCount(Value), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
      v9 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v9)
        {
          v10 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
          if (CFEqual(a2, v10))
          {
            break;
          }
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = -1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

CFTypeRef VPNServiceCopyAppRule(const __SCNetworkService *a1, const void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!isA_VPNService(a1) || (TypeID = CFStringGetTypeID(), !a2) || CFGetTypeID(a2) != TypeID || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v14 = 1002;
LABEL_13:
    _SCErrorSet(v14);
    v15 = *MEMORY[0x1E69E9840];
    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  v7 = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != v7)
  {
    goto LABEL_14;
  }

  app_rule = find_app_rule(Configuration, a2);
  if (app_rule < 0)
  {
    v14 = 1004;
    goto LABEL_13;
  }

  v9 = app_rule;
  Value = CFDictionaryGetValue(Configuration, @"AppRules");
  ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
  if (!validate_app_rule(ValueAtIndex, 0))
  {
LABEL_14:
    v14 = 1001;
    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E69E9840];

  return CFRetain(ValueAtIndex);
}

uint64_t VPNServiceRemoveAppRule(const __SCNetworkService *a1, const void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!isA_VPNService(a1) || (TypeID = CFStringGetTypeID(), !a2) || CFGetTypeID(a2) != TypeID || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v16 = 1002;
LABEL_13:
    _SCErrorSet(v16);
    result = 0;
    goto LABEL_14;
  }

  v6 = Interface;
  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  v8 = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != v8)
  {
    goto LABEL_15;
  }

  app_rule = find_app_rule(Configuration, a2);
  if (app_rule < 0)
  {
    v16 = 1004;
    goto LABEL_13;
  }

  v10 = app_rule;
  Value = CFDictionaryGetValue(Configuration, @"AppRules");
  v12 = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != v12)
  {
LABEL_15:
    v16 = 1001;
    goto LABEL_13;
  }

  v13 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Configuration);
  v15 = CFArrayCreateMutableCopy(v13, 0, Value);
  CFArrayRemoveValueAtIndex(v15, v10);
  if (CFArrayGetCount(v15) < 1)
  {
    CFDictionaryRemoveValue(MutableCopy, @"AppRules");
  }

  else
  {
    CFDictionarySetValue(MutableCopy, @"AppRules", v15);
  }

  SCNetworkInterfaceSetConfiguration(v6, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(v15);
  result = 1;
LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL VPNServiceIsManagedAppVPN(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = SCNetworkServiceCopyExternalID(a1, @"MCVPNUUID");
  TypeID = CFStringGetTypeID();
  if (v1)
  {
    v3 = CFGetTypeID(v1) == TypeID;
    CFRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

CFStringRef VPNAppLayerCopyMatchingService(_OWORD *a1, int a2, const unsigned __int8 *a3, const __CFString *a4, __CFString *a5, const __CFString *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (ne_session_app_vpn_configs_present())
  {
    v12 = a1[1];
    *v17 = *a1;
    *&v17[16] = v12;
    v13 = copy_path_for_app(v17, a2, a3, a4, a5, a6);
    if (v13 && nw_path_is_flow_divert())
    {
      memset(uu, 0, sizeof(uu));
      uuid_clear(uu);
      v14 = 0;
      if (nw_path_get_vpn_config_id())
      {
        memset(v17, 0, sizeof(v17));
        uuid_unparse(uu, v17);
        v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v17, 0x600u);
      }
    }

    else
    {
      v14 = 0;
    }

    nw_release(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t copy_path_for_app(__int128 *a1, int a2, const unsigned __int8 *a3, const __CFString *a4, __CFString *host, const __CFString *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1B26F5100]();
  if (a3 && !uuid_is_null(a3))
  {
    nw_parameters_set_e_proc_uuid();
  }

  if (a2)
  {
    nw_parameters_set_pid();
  }

  if (host)
  {
    Length = CFStringGetLength(host);
    v14 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v15 = CFStringGetLength(host);
    if (CFStringGetCString(host, v14, v15 + 1, 0x600u))
    {
      host = nw_endpoint_create_host(v14, "80");
      if (!v14)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    host = 0;
    if (v14)
    {
LABEL_9:
      free(v14);
    }
  }

LABEL_10:
  if (a6)
  {
    v16 = CFStringGetLength(a6);
    v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
    v18 = CFStringGetLength(a6);
    if (CFStringGetCString(a6, v17, v18 + 1, 0x600u))
    {
      nw_parameters_set_account_id();
    }

    if (v17)
    {
      free(v17);
    }
  }

  if (a4)
  {
    v19 = CFStringGetLength(a4);
    v20 = malloc_type_malloc(v19 + 1, 0x100004077774924uLL);
    v21 = CFStringGetLength(a4);
    if (CFStringGetCString(a4, v20, v21 + 1, 0x600u))
    {
      nw_parameters_set_effective_bundle_id();
    }

    if (v20)
    {
      free(v20);
    }
  }

  if (*a1 | *(a1 + 1) | *(a1 + 2) | *(a1 + 3))
  {
    v27 = *a1;
    v28 = a1[1];
    nw_parameters_set_effective_audit_token();
  }

  if (host || (host = nw_endpoint_create_host("0.0.0.0", "0")) != 0)
  {
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    if (evaluator_for_endpoint)
    {
      v23 = evaluator_for_endpoint;
      v24 = nw_path_evaluator_copy_path();
      nw_release(v23);
    }

    else
    {
      v24 = 0;
    }

    nw_release(host);
  }

  else
  {
    v24 = 0;
  }

  nw_release(v12);
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t _SCControlPrefsCreate(const char *a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = 0;
  result = _SCControlPrefsCreateCommon(a1, v5, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCControlPrefsCreateCommon(const char *a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (__SCControlPrefsInitialize_initialized != -1)
  {
    _SCControlPrefsCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = strdup(a1);
    prefs = get_prefs(Instance);
    if (prefs)
    {
      if (*a2)
      {
        v8 = prefs;
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = Instance;
        *(Instance + 48) = *a2;
        *(Instance + 40) = a3;
        if (SCPreferencesSetCallback(prefs, prefs_changed_sc, &context))
        {
          if (*(a2 + 8))
          {
            if (!SCPreferencesSetDispatchQueue(v8, *a2))
            {
              v9 = _SC_LOG_DEFAULT();
              v10 = _SC_syslog_os_log_mapping(5);
              if (__SC_log_enabled(5, v9, v10))
              {
                goto LABEL_15;
              }

              goto LABEL_16;
            }
          }

          else
          {
            CFRetain(*a2);
            if (!SCPreferencesScheduleWithRunLoop(v8, *a2, *MEMORY[0x1E695E8D0]))
            {
              v9 = _SC_LOG_DEFAULT();
              v10 = _SC_syslog_os_log_mapping(5);
              if (__SC_log_enabled(5, v9, v10))
              {
LABEL_15:
                v26 = _os_log_pack_size();
                v34 = &context - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
                v35 = *__error();
                v36 = _os_log_pack_fill();
                v37 = SCError();
                v38 = SCErrorString(v37);
                *v36 = 136315138;
                *(v36 + 4) = v38;
                __SC_log_send(5, v9, v10, v34);
              }

LABEL_16:
              SCPreferencesSetCallback(v8, 0, 0);
            }
          }

          if (*(Instance + 56))
          {
            global_queue = *(Instance + 48);
            v40 = &v47;
            v47.version = MEMORY[0x1E69E9820];
            v47.info = 0x40000000;
            v47.retain = __enable_prefs_observer_block_invoke;
            v47.release = &__block_descriptor_tmp_23;
            v47.copyDescription = Instance;
          }

          else
          {
            v47.version = 0;
            v47.info = Instance;
            v47.retain = MEMORY[0x1E695D7C8];
            v47.release = MEMORY[0x1E695D7C0];
            memset(&v47.copyDescription, 0, 40);
            v47.perform = prefs_changed;
            v41 = *(Instance + 48);
            v42 = CFRunLoopSourceCreate(0, 0, &v47);
            CFRunLoopAddSource(v41, v42, *MEMORY[0x1E695E8D0]);
            global_queue = dispatch_get_global_queue(0, 0);
            v40 = v46;
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 0x40000000;
            v46[2] = __enable_prefs_observer_block_invoke_2;
            v46[3] = &__block_descriptor_tmp_24;
            v46[4] = v42;
            v46[5] = v41;
          }

          _scprefs_observer_watch(2, *(Instance + 16), global_queue, v40);
          goto LABEL_21;
        }

        v11 = _SC_LOG_DEFAULT();
        v12 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v11, v12))
        {
          v13 = _os_log_pack_size();
          v21 = &context - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = *__error();
          v23 = _os_log_pack_fill();
          v24 = SCError();
          v25 = SCErrorString(v24);
          *v23 = 136315138;
          *(v23 + 4) = v25;
          __SC_log_send(5, v11, v12, v21);
        }
      }
    }
  }

LABEL_21:
  v43 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t _SCControlPrefsCreateWithQueue(const char *a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = 1;
  result = _SCControlPrefsCreateCommon(a1, v5, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCControlPrefsGetBoolean(uint64_t a1, CFStringRef key)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4 || (v5 = CFStringCreateWithFormat(0, 0, @"%s%s", "/Library/Managed Preferences/mobile/", *(a1 + 16)), *(a1 + 32) = make_prefs(v5), CFRelease(v5), (v4 = *(a1 + 32)) != 0))
  {
    Value = SCPreferencesGetValue(v4, key);
    TypeID = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      goto LABEL_9;
    }

    SCPreferencesSynchronize(v4);
  }

  prefs = get_prefs(a1);
  if (!prefs)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v4 = prefs;
  Value = SCPreferencesGetValue(prefs, key);
  v9 = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v10 = CFBooleanGetValue(Value);
LABEL_11:
  SCPreferencesSynchronize(v4);
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t get_prefs(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = *(a1 + 24);
  if (!result)
  {
    v3 = CFStringCreateWithCString(0, *(a1 + 16), 0x8000100u);
    *(a1 + 24) = make_prefs(v3);
    CFRelease(v3);
    result = *(a1 + 24);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCControlPrefsSetBoolean(uint64_t a1, const __CFString *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  prefs = get_prefs(a1);
  if (prefs)
  {
    v6 = prefs;
    if (a3)
    {
      SCPreferencesSetValue(prefs, a2, *MEMORY[0x1E695E4D0]);
    }

    else
    {
      SCPreferencesRemoveValue(prefs, a2);
    }

    v9 = SCPreferencesCommitChanges(v6);
    SCPreferencesSynchronize(v6);
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

void prefs_changed_sc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 40);
  if (v3)
  {
    v4 = *MEMORY[0x1E69E9840];

    v3(a3);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

void __SCControlPrefsDeallocate(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) && *(a1 + 48))
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 24);
    if (*(a1 + 56))
    {
      SCPreferencesSetDispatchQueue(v3, 0);
    }

    else
    {
      SCPreferencesSetCallback(v3, 0, 0);
      SCPreferencesUnscheduleFromRunLoop(*(a1 + 24), *(a1 + 48), *MEMORY[0x1E695E8D0]);
      CFRelease(*(a1 + 48));
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *MEMORY[0x1E69E9840];

    CFRelease(v6);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

__CFString *__SCControlPrefsCopyDescription(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCControlPrefs %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @" prefsPlist = %s", *(a1 + 16));
  if (*(a1 + 24))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 24));
  }

  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs_managed = %p", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", callback = %p", *(a1 + 40));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(a1 + 56))
    {
      v5 = "queue";
    }

    else
    {
      v5 = "runloop";
    }

    CFStringAppendFormat(Mutable, 0, @", %s = %p", v5, v4);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  v6 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t prefs_changed(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E69E9840];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t __enable_prefs_observer_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  v2 = *(result + 40);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];
    v4 = *MEMORY[0x1E69E9840];

    return v2();
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void __enable_prefs_observer_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  CFRunLoopSourceSignal(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x1E69E9840];

  CFRunLoopWakeUp(v2);
}

uint64_t make_prefs(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"remove-when-empty", *MEMORY[0x1E695E4D0]);
  v3 = SCPreferencesCreateWithOptions(0, @"_SCControlPrefs", a1, 0, Mutable);
  CFRelease(Mutable);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t SCNetworkCategoryManagerGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkCategoryManagerInitialize_initialized != -1)
  {
    SCNetworkCategoryManagerGetTypeID_cold_1();
  }

  result = __kSCNetworkCategoryManagerTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkCategoryManagerCreateWithInterface(const __CFString *a1, SCNetworkInterfaceRef interface, unsigned int a3, uint64_t a4)
{
  Instance = 0;
  v15[5] = *MEMORY[0x1E69E9840];
  v6 = 1002;
  if (a3 <= 1 && !a4)
  {
    Instance = 0;
    if (a1)
    {
      if (interface)
      {
        BSDName = SCNetworkInterfaceGetBSDName(interface);
        if (!BSDName)
        {
          goto LABEL_17;
        }

        v9 = BSDName;
        if (__SCNetworkCategoryManagerInitialize_initialized != -1)
        {
          SCNetworkCategoryManagerGetTypeID_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 16) = CFStringCreateCopy(0, a1);
          *(Instance + 32) = a3;
          *(Instance + 24) = CFStringCreateCopy(0, v9);
        }

        v10 = dispatch_queue_create("SCNetworkCategoryManager", 0);
        *(Instance + 56) = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = __SCNetworkCategoryManagerCreateWithInterface_block_invoke;
        v15[3] = &__block_descriptor_tmp_22;
        v15[4] = Instance;
        v11 = CategoryManagerConnectionCreate(v10, v15);
        *(Instance + 48) = v11;
        if (!v11)
        {
          CFRelease(Instance);
          goto LABEL_17;
        }

        v6 = CategoryManagerConnectionRegister(v11, *(Instance + 16), *(Instance + 24), *(Instance + 32));
        if (v6)
        {
          v12 = v6;
          CFRelease(Instance);
          if (v12 == 1)
          {
            Instance = 0;
            v6 = 1003;
            goto LABEL_18;
          }

          if (v12 == 2)
          {
            Instance = 0;
            v6 = 2002;
            goto LABEL_18;
          }

          if (v12 != 22)
          {
            Instance = 0;
            v6 = 1001;
            goto LABEL_18;
          }

LABEL_17:
          Instance = 0;
          v6 = 1002;
        }
      }
    }
  }

LABEL_18:
  _SCErrorSet(v6);
  v13 = *MEMORY[0x1E69E9840];
  return Instance;
}

void __SCNetworkCategoryManagerCreateWithInterface_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (*(v5 + 48) != a2)
  {
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v48 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = *(*(a1 + 32) + 48);
      *v18 = 136315650;
      *(v18 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
      *(v18 + 12) = 2048;
      *(v18 + 14) = v19;
      *(v18 + 22) = 2048;
      *(v18 + 24) = a2;
      __SC_log_send(5, v6, v7, v16);
    }

LABEL_4:
    v20 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v34 = _SC_LOG_DEFAULT();
      v35 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v34, v35))
      {
        v36 = _os_log_pack_size();
        v44 = v48 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = *__error();
        v46 = _os_log_pack_fill();
        *v46 = 136315394;
        *(v46 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
        *(v46 + 12) = 2048;
        *(v46 + 14) = a2;
        __SC_log_send(5, v34, v35, v44);
      }

      CategoryManagerConnectionSynchronize(*(*(a1 + 32) + 48), *(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
    }

    else if (a3 == 1)
    {
      v21 = _SC_LOG_DEFAULT();
      v22 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v21, v22))
      {
        v23 = _os_log_pack_size();
        v31 = v48 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v32 = *__error();
        v33 = _os_log_pack_fill();
        *v33 = 136315394;
        *(v33 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
        *(v33 + 12) = 2048;
        *(v33 + 14) = a2;
        __SC_log_send(5, v21, v22, v31);
      }
    }

    goto LABEL_4;
  }

  v47 = *MEMORY[0x1E69E9840];

  SCNetworkCategoryManagerDeliverNotification(v5);
}

void SCNetworkCategoryManagerDeliverNotification(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v2 = CategoryManagerConnectionCopyActiveValue(*(a1 + 48), &v34);
  v3 = _SC_LOG_DEFAULT();
  v4 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v4))
  {
    v5 = _os_log_pack_size();
    v13 = block - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = v34;
    *v15 = 136315650;
    *(v15 + 4) = "SCNetworkCategoryManagerDeliverNotification";
    *(v15 + 12) = 2112;
    *(v15 + 14) = v2;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v16;
    __SC_log_send(5, v3, v4, v13);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    global_queue = *(a1 + 72);
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SCNetworkCategoryManagerDeliverNotification_block_invoke;
    block[3] = &unk_1E79BEE10;
    block[4] = v17;
    block[5] = v2;
    dispatch_async(global_queue, block);
  }

  else
  {
    v19 = _SC_LOG_DEFAULT();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v29 = block - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      *v31 = 136315138;
      *(v31 + 4) = "SCNetworkCategoryManagerDeliverNotification";
      __SC_log_send(5, v19, v20, v29);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void SCNetworkCategoryManagerSetNotifyHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SCNetworkCategoryManagerSetNotifyHandler_block_invoke;
  v4[3] = &unk_1E79BED80;
  v4[5] = a2;
  v4[6] = a1;
  v4[4] = a3;
  dispatch_sync(*(a1 + 56), v4);
  v3 = *MEMORY[0x1E69E9840];
}

void *__SCNetworkCategoryManagerSetNotifyHandler_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = a1[6];
  v4 = *(v3 + 72);
  if (v4)
  {
    dispatch_release(v4);
    v3 = a1[6];
  }

  *(v3 + 72) = a1[5];
  v5 = *(a1[6] + 64);
  if (v5)
  {
    _Block_release(v5);
  }

  result = a1[4];
  if (result)
  {
    result = _Block_copy(result);
    *(a1[6] + 64) = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SCNetworkCategoryManagerActivateValue(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __SCNetworkCategoryManagerActivateValue_block_invoke;
  v10[3] = &unk_1E79BEDA8;
  v10[4] = &v11;
  v10[5] = a1;
  v10[6] = a2;
  dispatch_sync(*(a1 + 56), v10);
  v2 = *(v12 + 6);
  if (v2 == 22)
  {
    v3 = 1002;
  }

  else
  {
    v3 = 1001;
  }

  if (v2 == 2)
  {
    v4 = 2002;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v5 = 1003;
  }

  else
  {
    v5 = 1001;
  }

  if (!v2)
  {
    v5 = 0;
  }

  if (v2 <= 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  _SCErrorSet(v6);
  v7 = *(v12 + 6) == 0;
  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

int64_t __SCNetworkCategoryManagerActivateValue_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = CategoryManagerConnectionActivateValue(*(*(a1 + 40) + 48), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

_xpc_connection_s *__SCNetworkCategoryManagerCopyActiveValueNoSession(const __CFString *a1, SCNetworkInterfaceRef interface)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (__SCNetworkCategoryManagerCopyActiveValueNoSession_initialized != -1)
  {
    __SCNetworkCategoryManagerCopyActiveValueNoSession_cold_1();
  }

  result = __SCNetworkCategoryManagerCopyActiveValueNoSession_connection;
  if (__SCNetworkCategoryManagerCopyActiveValueNoSession_connection)
  {
    if (interface)
    {
      result = SCNetworkInterfaceGetBSDName(interface);
      if (!result)
      {
        goto LABEL_19;
      }

      v5 = result;
      result = __SCNetworkCategoryManagerCopyActiveValueNoSession_connection;
    }

    else
    {
      v5 = 0;
    }

    result = CategoryManagerConnectionCopyActiveValueNoSession(result, a1, v5, &v8);
    if (!result)
    {
      v6 = 1001;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v6 = 2002;
        }

        else if (v8 == 22)
        {
          v6 = 1002;
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          v6 = 1003;
        }
      }

      else
      {
        v6 = 0;
      }

      _SCErrorSet(v6);
      result = 0;
    }
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkCategoryManagerDeallocate(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    xpc_release(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    dispatch_release(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    dispatch_release(v7);
    a1[9] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    _Block_release(v8);
    a1[8] = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkCategoryManagerEqual(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    result = 1;
LABEL_12:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    result = 0;
    goto LABEL_12;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 != v5)
  {
    result = 0;
    if (!v4)
    {
      goto LABEL_12;
    }

    if (!v5)
    {
      goto LABEL_12;
    }

    result = CFEqual(*(a1 + 24), v5);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *MEMORY[0x1E69E9840];

  return CFEqual(v7, v8);
}

CFHashCode __SCNetworkCategoryManagerHash(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFHash(*(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
    v2 ^= CFHash(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

__CFString *__SCNetworkCategoryManagerCopyDescription(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p [%p]> { ID = %@, ifname = %@, flags = 0x%x }", "SCNetworkCategoryManager", a1, v2, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __SCNetworkCategoryManagerDeliverNotification_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = *MEMORY[0x1E69E9840];

    CFRelease(v1);
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }
}

uint64_t IPMonitorControlCreate()
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (__IPMonitorControlRegisterClass_once != -1)
  {
    IPMonitorControlCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = dispatch_queue_create("IPMonitorControl", 0);
  mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.IPMonitorControl", v1, 2uLL);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __IPMonitorControlCreate_block_invoke;
  v5[3] = &__block_descriptor_tmp_23;
  v5[4] = Instance;
  xpc_connection_set_event_handler(mach_service, v5);
  *(Instance + 16) = v1;
  *(Instance + 24) = mach_service;
  xpc_connection_resume(mach_service);
  v3 = *MEMORY[0x1E69E9840];
  return Instance;
}

void __IPMonitorControlCreate_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  IPMonitorControlHandleResponse(a2, 1, &v7);
  if (v7)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    if (v4)
    {
      CFDictionaryApplyFunction(v4, ApplyInterfaceRank, *(v3 + 24));
      v3 = *(a1 + 32);
    }

    v5 = *(v3 + 40);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, ApplyInterfaceAdvisory, *(v3 + 24));
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t IPMonitorControlHandleResponse(void *a1, int a2, char *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1B26F5920]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    if (a2)
    {
      v23 = _SC_LOG_DEFAULT();
      v24 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v23, v24);
      if (result)
      {
        v25 = _os_log_pack_size();
        v33 = v47 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v23, v24, v33);
LABEL_12:
        result = 0;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    int64 = xpc_dictionary_get_int64(a1, "Error");
    v44 = 0;
    result = int64 == 0;
  }

  else
  {
    string = v6;
    if (v6 != MEMORY[0x1E69E9E98])
    {
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v8, v9);
      if (result)
      {
        v11 = _os_log_pack_size();
        v19 = v47 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        v22 = 134217984;
LABEL_11:
        *v21 = v22;
        *(v21 + 4) = string;
        __SC_log_send(5, v8, v9, v19);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (a1 != MEMORY[0x1E69E9E18])
    {
      string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v8, v9);
      if (result)
      {
        v35 = _os_log_pack_size();
        v19 = v47 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = *__error();
        v21 = _os_log_pack_fill();
        v22 = 136315138;
        goto LABEL_11;
      }

LABEL_13:
      v44 = 0;
      goto LABEL_14;
    }

    result = 0;
    v44 = 1;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v44;
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void ApplyInterfaceRank(const __CFString *a1, const __CFNumber *a2, _xpc_connection_s *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (CFStringGetCString(a1, buffer, 16, 0x8000100u) && CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 1);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "PrimaryRank", valuePtr);
    xpc_connection_send_message(a3, request_dictionary);
    xpc_release(request_dictionary);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ApplyInterfaceAdvisory(const __CFString *a1, const __CFNumber *a2, _xpc_connection_s *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (CFStringGetCString(a1, buffer, 16, 0x8000100u) && CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 3);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "Advisory", valuePtr);
    xpc_connection_send_message(a3, request_dictionary);
    xpc_release(request_dictionary);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t IPMonitorControlSetInterfacePrimaryRank(void *a1, CFStringRef theString, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  result = CFStringGetCString(theString, buffer, 16, 0x8000100u);
  if (result)
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 1);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "PrimaryRank", a3);
    v8 = IPMonitorControlSendRequest(a1, request_dictionary);
    xpc_release(request_dictionary);
    if (v8)
    {
      xpc_release(v8);
      CFRetain(theString);
      CFRetain(a1);
      v9 = a1[2];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __IPMonitorControlSetInterfacePrimaryRank_block_invoke;
      v11[3] = &__block_descriptor_tmp_7_1;
      v11[4] = a1;
      v11[5] = theString;
      v12 = a3;
      dispatch_async(v9, v11);
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t create_request_dictionary()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = getprogname();
  if (v1)
  {
    xpc_dictionary_set_string(v0, "ProcessName", v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

xpc_object_t IPMonitorControlSendRequest(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  HIBYTE(v20) = 0;
  v4 = xpc_connection_send_message_with_reply_sync(*(a1 + 24), a2);
  if (v4)
  {
    v5 = v4;
    while (!IPMonitorControlHandleResponse(v5, 0, &v20 + 7))
    {
      xpc_release(v5);
      if (!HIBYTE(v20))
      {
        v6 = _SC_LOG_DEFAULT();
        v7 = _SC_syslog_os_log_mapping(5);
        if (!__SC_log_enabled(5, v6, v7))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      HIBYTE(v20) = 0;
      v5 = xpc_connection_send_message_with_reply_sync(*(a1 + 24), a2);
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
LABEL_9:
      v8 = _os_log_pack_size();
      v16 = &v20 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v6, v7, v16);
    }

LABEL_10:
    v5 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void __IPMonitorControlSetInterfacePrimaryRank_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  valuePtr = v4;
  v5 = *(v3 + 32);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *(v3 + 32) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_8:
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(v3 + 32), v2, v7);
    CFRelease(v7);
    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  CFDictionaryRemoveValue(v5, v2);
  if (!CFDictionaryGetCount(*(v3 + 32)))
  {
    v6 = *(v3 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 32) = 0;
    }
  }

LABEL_9:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v8 = *MEMORY[0x1E69E9840];
}

int64_t IPMonitorControlGetInterfacePrimaryRank(uint64_t a1, CFStringRef theString)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 2);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    v4 = IPMonitorControlSendRequest(a1, request_dictionary);
    if (v4)
    {
      v5 = v4;
      int64 = xpc_dictionary_get_int64(v4, "PrimaryRank");
      xpc_release(v5);
    }

    else
    {
      int64 = 0;
    }

    xpc_release(request_dictionary);
  }

  else
  {
    int64 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return int64;
}

CFStringRef IPMonitorControlCopyInterfaceRankAssertionNotificationKey(CFStringRef ifname)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", ifname, @"RankAssertion");
}

uint64_t InterfaceRankAssertionInfoGetPrimaryRank(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = cfdict_get_number(a1, @"PrimaryRank");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cfdict_get_number(const __CFDictionary *a1, const void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, v6);
    result = v6[0];
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t InterfaceRankAssertionInfoGetProcessID(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = cfdict_get_number(a1, @"ProcessID");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

const void *InterfaceRankAssertionInfoGetProcessName(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CFDictionaryGetValue(a1, @"ProcessName");
}

uint64_t IPMonitorControlCopyInterfaceRankAssertionInfo(uint64_t a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CopyAssertionOrAdvisoryInfo(a1, a2, 6u, "RankAssertionInfo");
}

uint64_t CopyAssertionOrAdvisoryInfo(uint64_t a1, CFStringRef theString, unsigned int a3, const char *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", a3);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    v8 = IPMonitorControlSendRequest(a1, request_dictionary);
    if (v8)
    {
      v9 = v8;
      if (xpc_dictionary_get_value(v8, a4))
      {
        v10 = _CFXPCCreateCFObjectFromXPCObject();
      }

      else
      {
        v10 = 0;
      }

      xpc_release(v9);
    }

    else
    {
      v10 = 0;
    }

    xpc_release(request_dictionary);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t IPMonitorControlCopyInterfaceRankAssertionInterfaceNames(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CopyInterfaceNames(a1, 8u);
}

uint64_t CopyInterfaceNames(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", a2);
  v5 = IPMonitorControlSendRequest(a1, request_dictionary);
  if (v5)
  {
    v6 = v5;
    if (xpc_dictionary_get_value(v5, "InterfaceNames"))
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = 0;
    }

    xpc_release(v6);
  }

  else
  {
    v7 = 0;
  }

  xpc_release(request_dictionary);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IPMonitorControlSetInterfaceAdvisory(void *a1, CFStringRef theString, unsigned int a3, const __CFString *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  result = CFStringGetCString(theString, buffer, 16, 0x8000100u);
  if (result)
  {
    if (a4)
    {
      v9 = _SC_cfstring_to_cstring(a4, 0, 0, 0x8000100u);
    }

    else
    {
      v9 = 0;
    }

    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 3);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "Advisory", a3);
    if (v9)
    {
      xpc_dictionary_set_string(request_dictionary, "Reason", v9);
      CFAllocatorDeallocate(0, v9);
    }

    v11 = IPMonitorControlSendRequest(a1, request_dictionary);
    xpc_release(request_dictionary);
    if (v11)
    {
      xpc_release(v11);
      CFRetain(theString);
      CFRetain(a1);
      v12 = a1[2];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __IPMonitorControlSetInterfaceAdvisory_block_invoke;
      v14[3] = &__block_descriptor_tmp_18;
      v14[4] = a1;
      v14[5] = theString;
      v15 = a3;
      dispatch_async(v12, v14);
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __IPMonitorControlSetInterfaceAdvisory_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  valuePtr = v4;
  v5 = *(v3 + 40);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *(v3 + 40) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_8:
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(v3 + 40), v2, v7);
    CFRelease(v7);
    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  CFDictionaryRemoveValue(v5, v2);
  if (!CFDictionaryGetCount(*(v3 + 40)))
  {
    v6 = *(v3 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 40) = 0;
    }
  }

LABEL_9:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v8 = *MEMORY[0x1E69E9840];
}

BOOL IPMonitorControlIsInterfaceAdvisorySet(uint64_t a1, CFStringRef theString, unsigned int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    goto LABEL_6;
  }

  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", 4);
  xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
  if (a3)
  {
    xpc_dictionary_set_int64(request_dictionary, "Advisory", a3);
  }

  v6 = IPMonitorControlSendRequest(a1, request_dictionary);
  xpc_release(request_dictionary);
  if (v6)
  {
    v7 = xpc_dictionary_get_BOOL(v6, "AdvisoryIsSet");
    xpc_release(v6);
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL IPMonitorControlAnyInterfaceAdvisoryIsSet(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", 5);
  v3 = IPMonitorControlSendRequest(a1, request_dictionary);
  xpc_release(request_dictionary);
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "AdvisoryIsSet");
    xpc_release(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

CFStringRef IPMonitorControlCopyInterfaceAdvisoryNotificationKey(CFStringRef ifname)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", ifname, @"Advisory");
}

uint64_t InterfaceAdvisoryInfoGetAdvisory(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = cfdict_get_number(a1, @"Advisory");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IPMonitorControlCopyInterfaceAdvisoryInfo(uint64_t a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CopyAssertionOrAdvisoryInfo(a1, a2, 7u, "AdvisoryInfo");
}

uint64_t IPMonitorControlCopyInterfaceAdvisoryInterfaceNames(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CopyInterfaceNames(a1, 9u);
}

void __IPMonitorControlDeallocate(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

CFStringRef __IPMonitorControlCopyDebugDesc(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  result = CFStringCreateWithFormat(v2, 0, @"<IPMonitorControl %p>", a1);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t configlist(mach_port_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int *a6, _DWORD *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  msg.msgh_id = 0;
  v23 = 0;
  v24 = 0u;
  *&msg.msgh_size = 0u;
  v19 = 1;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = *MEMORY[0x1E69E99E0];
  *&v24 = __PAIR64__(a4, a3);
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4E2800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x3Cu, 0x44u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 20108)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v20))
            {
              if (msg.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_25;
        }

        v14 = 4294966996;
        if (v19 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
        {
          v15 = v22;
          if (v22 == v24)
          {
            v14 = 0;
            *a5 = v20;
            *a6 = v15;
            *a7 = DWORD1(v24);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t configadd(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, _DWORD *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 2;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 16777472;
  v25 = a5;
  v26 = *MEMORY[0x1E69E99E0];
  v27 = a3;
  v28 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E2900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x4Cu, 0x34u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 20109)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 44)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v20);
              if (!HIDWORD(v20))
              {
                v17 = v22;
                *a6 = v21;
                *a7 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
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
              v14 = HIDWORD(v20) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v20);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t configremove(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x4E2C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 20112)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t configadd_s(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, _DWORD *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 2;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 16777472;
  v25 = a5;
  v26 = *MEMORY[0x1E69E99E0];
  v27 = a3;
  v28 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E2E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x4Cu, 0x34u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 20114)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 44)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v20);
              if (!HIDWORD(v20))
              {
                v17 = v22;
                *a6 = v21;
                *a7 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
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
              v14 = HIDWORD(v20) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v20);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}