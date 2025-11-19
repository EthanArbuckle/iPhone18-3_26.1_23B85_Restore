CFStringRef SCDynamicStoreKeyCreateNetworkGlobalEntity(CFAllocatorRef allocator, CFStringRef domain, CFStringRef entity)
{
  v5 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(allocator, 0, @"%@/%@/%@/%@", domain, @"Network", @"Global", entity);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceCreateWithBSDName(uint64_t a1, const __CFString *a2, char a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  if (!_SC_cfstring_to_cstring(a2, &v29, 16, 0x8000100u))
  {
    goto LABEL_7;
  }

  v5 = socket(2, 2, 0);
  if (v5 != -1)
  {
    v6 = v5;
    if (ioctl(v5, 0xC0206911uLL, &v29) == -1)
    {
      LOWORD(v30) = 0;
    }

    close(v6);
  }

  if ((v30 & 0x10) == 0)
  {
LABEL_7:
    LOBYTE(v7) = 1;
    goto LABEL_13;
  }

  if (v29 != 28784 || BYTE2(v29) != 112)
  {
    goto LABEL_12;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"PPP");
  CFArrayAppendValue(Mutable, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v15 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", @"[^/]+", @"Interface");
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v15);
  v7 = SCDynamicStoreCopyMultiple(0, 0, Mutable);
  CFRelease(Mutable);
  if (!v7)
  {
LABEL_13:
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(MutableCopy, @"DeviceName", a2);
    if ((v7 & 1) == 0)
    {
      CFDictionarySetValue(MutableCopy, @"Type", @"PointToPoint");
    }

    goto LABEL_15;
  }

  memset(keys, 0, sizeof(keys));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *values = 0u;
  v32 = 0u;
  Count = CFDictionaryGetCount(v7);
  if (Count < 33)
  {
    v17 = keys;
    v18 = values;
    CFDictionaryGetKeysAndValues(v7, keys, values);
    if (Count <= 0)
    {
      CFRelease(v7);
LABEL_12:
      LOBYTE(v7) = 0;
      goto LABEL_13;
    }

    theDict = v7;
    v26 = a3;
  }

  else
  {
    v26 = a3;
    v17 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
    v18 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
    theDict = v7;
    CFDictionaryGetKeysAndValues(v7, v17, v18);
  }

  v19 = 0;
  while (1)
  {
    value = 0;
    v20 = v17[v19];
    v21 = v18[v19];
    if (CFStringHasSuffix(v20, @"PPP"))
    {
      if (CFDictionaryGetValueIfPresent(v21, @"InterfaceName", &value))
      {
        if (CFEqual(a2, value))
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v20, @"/");
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
          v24 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", ValueAtIndex, @"Interface");
          v25 = CFDictionaryGetValue(theDict, v24);
          CFRelease(v24);
          CFRelease(ArrayBySeparatingStrings);
          if (v25)
          {
            break;
          }
        }
      }
    }

    if (Count == ++v19)
    {
      MutableCopy = 0;
      goto LABEL_32;
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v25);
LABEL_32:
  a3 = v26;
  if (v17 != keys)
  {
    CFAllocatorDeallocate(0, v17);
    CFAllocatorDeallocate(0, v18);
  }

  CFRelease(theDict);
  if (!MutableCopy)
  {
    goto LABEL_12;
  }

LABEL_15:
  if ((a3 & 4) == 0)
  {
    CFDictionarySetValue(MutableCopy, @"_NO_BRIDGE_INTERFACES_", *MEMORY[0x1E695E4D0]);
  }

  if ((a3 & 1) == 0)
  {
    CFDictionarySetValue(MutableCopy, @"_NO_VLAN_INTERFACES_", *MEMORY[0x1E695E4D0]);
  }

  v10 = _SCNetworkInterfaceCreateWithEntity();
  CFRelease(MutableCopy);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __SCNetworkInterfaceCacheCopy(const void *a1, uint64_t *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = __SCGetThreadSpecificData();
  result = 0;
  if (a1)
  {
    v6 = v4[1];
    if (v6)
    {
      result = CFDictionaryGetValue(v4[1], a1);
      *a2 = result;
      if (result)
      {
        if (result == *MEMORY[0x1E695E738])
        {
          *a2 = 0;
        }

        else
        {
          CFRetain(result);
        }

        v7 = __log_SCNetworkConfiguration();
        v8 = _SC_syslog_os_log_mapping(7);
        if (__SC_log_enabled(7, v7, v8))
        {
          v9 = _os_log_pack_size();
          v17 = v23 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = *__error();
          v19 = _os_log_pack_fill();
          v20 = *a2;
          *v19 = 134218498;
          *(v19 + 4) = v6;
          if (v20)
          {
            v21 = "";
          }

          else
          {
            v21 = "no ";
          }

          *(v19 + 12) = 2080;
          *(v19 + 14) = v21;
          *(v19 + 22) = 2112;
          *(v19 + 24) = a1;
          __SC_log_send(7, v7, v8, v17);
          result = 1;
        }

        else
        {
          result = 1;
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *findMatchingInterfaces(const void *a1, unsigned int (*a2)(uint64_t, uint64_t, __CFDictionary *, void, __CFDictionary *, void, __CFDictionary *), const __CFString *a3, int a4, int a5)
{
  v33 = *MEMORY[0x1E69E9840];
  HIDWORD(v32) = 0;
  CFRetain(a1);
  MatchingServices = IOServiceGetMatchingServices(masterPort, a1, &v32 + 1);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v12 = __log_SCNetworkConfiguration();
    v13 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v12, v13))
    {
      v14 = _os_log_pack_size();
      v22 = &v32 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 67109120;
      v24[1] = v11;
      __SC_log_send(6, v12, v13, v22);
    }

    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v26 = IOIteratorNext(HIDWORD(v32));
    if (v26)
    {
      v27 = v26;
      do
      {
        Interface = createInterface(v27, a2, a3, a4);
        if (Interface)
        {
          v29 = Interface;
          if (a5 || !_SCNetworkInterfaceIsApplePreconfigured(Interface))
          {
            CFArrayAppendValue(Mutable, v29);
          }

          CFRelease(v29);
        }

        IOObjectRelease(v27);
        v27 = IOIteratorNext(HIDWORD(v32));
      }

      while (v27);
    }

    IOObjectRelease(HIDWORD(v32));
  }

  v30 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t createInterface(uint64_t entry, unsigned int (*a2)(uint64_t, uint64_t, __CFDictionary *, void, __CFDictionary *, void, __CFDictionary *), const __CFString *a3, int a4)
{
  v80[1] = *MEMORY[0x1E69E9840];
  entryID = 0;
  *parent = 0;
  v80[0] = @"name";
  if (a3 && (v7 = IORegistryEntrySearchCFProperty(entry, "IOService", a3, 0, 3u)) != 0)
  {
    v8 = v7;
    BooleanValue = getBooleanValue(v7);
    CFRelease(v8);
    if (!a4 && BooleanValue)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(BooleanValue) = 0;
  }

  v13 = copyIORegistryProperties(entry, off_1E79BE980, 12);
  ParentEntry = IORegistryEntryGetParentEntry(entry, "IOService", parent);
  if (ParentEntry)
  {
    v15 = ParentEntry;
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v16, v17))
    {
      v18 = _os_log_pack_size();
      v26 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      *v28 = 67109120;
      v28[1] = v15;
      __SC_log_send(6, v16, v17, v26);
    }

    v12 = 0;
    v11 = 0;
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v29 = copyIORegistryProperties(parent[0], off_1E79BE9E0, 3);
  v11 = v29;
  if (v29)
  {
    Value = CFDictionaryGetValue(v29, @"SelfNamed");
    v31 = getBooleanValue(Value);
  }

  else
  {
    v31 = 0;
  }

  v32 = IORegistryEntryGetParentEntry(parent[0], "IOService", &parent[1]);
  if (v32)
  {
    v33 = v32;
    v34 = __log_SCNetworkConfiguration();
    v35 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v34, v35))
    {
      v36 = _os_log_pack_size();
      v44 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = _os_log_pack_fill();
      *v46 = 67109120;
      v46[1] = v33;
      __SC_log_send(6, v34, v35, v44);
    }

    v12 = 0;
    goto LABEL_18;
  }

  v10 = copyIORegistryProperties(parent[1], v80, 1);
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, &entryID);
  if (RegistryEntryID)
  {
    v50 = RegistryEntryID;
    v51 = __log_SCNetworkConfiguration();
    v52 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v51, v52))
    {
      v53 = _os_log_pack_size();
      v61 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = *__error();
      v63 = _os_log_pack_fill();
      *v63 = 67109120;
      v63[1] = v50;
      __SC_log_send(6, v51, v52, v61);
    }
  }

  else
  {
    Private = __SCNetworkInterfaceCreatePrivate(0, 0, 0, 0);
    if (!Private)
    {
      createInterface_cold_1();
    }

    v12 = Private;
    *(Private + 193) = BooleanValue;
    v65 = __SC_IORegistryEntryCopyPath(entry);
    v66 = entryID;
    *(v12 + 208) = v65;
    *(v12 + 216) = v66;
    *(v12 + 242) = v31;
    v67 = IORegistryEntrySearchCFProperty(entry, "IOService", @"NetworkConfigurationOverrides", 0, 3u);
    if (v67)
    {
      v68 = v67;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v68) == TypeID)
      {
        *(v12 + 224) = CFDictionaryCreateMutableCopy(0, 0, v68);
      }

      CFRelease(v68);
    }

    if (a2(v12, entry, v13, parent[0], v11, parent[1], v10))
    {
      v70 = IORegistryEntrySearchCFProperty(entry, "IOService", @"New Interface Detected Action", 0, 3u);
      if (v70)
      {
        v71 = v70;
        v72 = CFStringGetTypeID();
        if (CFGetTypeID(v71) == v72)
        {
          *(v12 + 184) = CFRetain(v71);
        }

        CFRelease(v71);
      }

      v73 = IORegistryEntrySearchCFProperty(entry, "IOService", @"HiddenConfiguration", 0, 3u);
      if (v73)
      {
        v74 = v73;
        *(v12 + 192) = getBooleanValue(v73);
        CFRelease(v74);
      }

      v75 = IORegistryEntrySearchCFProperty(entry, "IOService", @"TrustRequired", 0, 3u);
      if (v75)
      {
        v76 = v75;
        v77 = CFBooleanGetTypeID();
        if (CFGetTypeID(v76) == v77)
        {
          *(v12 + 240) = CFBooleanGetValue(v76);
        }

        CFRelease(v76);
      }

      goto LABEL_19;
    }

    CFRelease(v12);
  }

  v12 = 0;
LABEL_19:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_21:
  if (parent[0])
  {
    IOObjectRelease(parent[0]);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (parent[1])
  {
    IOObjectRelease(parent[1]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v47 = *MEMORY[0x1E69E9840];
  return v12;
}

__CFDictionary *copyIORegistryProperties(io_registry_entry_t a1, CFStringRef *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3 >= 1)
  {
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(a1, *a2, 0, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        CFDictionaryAddValue(Mutable, *a2, CFProperty);
        CFRelease(v8);
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef __SC_IORegistryEntryCopyPath(uint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  memset(cStr, 0, sizeof(cStr));
  v2 = MEMORY[0x1B26F4670](a1, "IOService", cStr);
  if (v2 != -536870206)
  {
    if (!v2)
    {
      v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      goto LABEL_6;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
  {
    goto LABEL_5;
  }

  v6 = __SC_IORegistryEntryCopyPath(parent);
  if (v6)
  {
    v7 = v6;
    memset(name, 0, sizeof(name));
    if (IORegistryEntryGetNameInPlane(v1, "IOService", name))
    {
      v3 = 0;
    }

    else
    {
      memset(location, 0, sizeof(location));
      if (IORegistryEntryGetLocationInPlane(v1, "IOService", location))
      {
        v8 = CFStringCreateWithFormat(0, 0, @"%@/%s", v7, name);
      }

      else
      {
        v8 = CFStringCreateWithFormat(0, 0, @"%@/%s@%s", v7, name, location);
      }

      v3 = v8;
    }

    CFRelease(v7);
  }

  else
  {
    v3 = 0;
  }

  IOObjectRelease(parent);
LABEL_6:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t processNetworkInterface(uint64_t a1, io_registry_entry_t a2, CFDictionaryRef theDict, io_object_t a4, const __CFDictionary *a5, io_registry_entry_t a6, const __CFDictionary *a7)
{
  v100 = *MEMORY[0x1E69E9840];
  v98 = 0;
  valuePtr = -1;
  Value = CFDictionaryGetValue(theDict, @"IOInterfaceType");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(6);
    result = __SC_log_enabled(6, v18, v19);
    if (!result)
    {
      goto LABEL_96;
    }

    v21 = _os_log_pack_size();
    v29 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 138412290;
    *(v31 + 4) = theDict;
    __SC_log_send(6, v18, v19, v29);
    goto LABEL_12;
  }

  *(a1 + 248) = CFRetain(Value);
  if (valuePtr != 6)
  {
    if (valuePtr != 144)
    {
      if (valuePtr == 255)
      {
        *(a1 + 16) = @"Cellular";
        *(a1 + 128) = @"Cellular";
        *(a1 + 176) = 1;
        *(a1 + 312) = 22;
        v16 = @"cellular";
LABEL_8:
        *(a1 + 48) = v16;
        v17 = IODictionaryCopyBSDName(theDict);
LABEL_9:
        *(a1 + 56) = v17;
        goto LABEL_85;
      }

      v40 = __log_SCNetworkConfiguration();
      v41 = _SC_syslog_os_log_mapping(6);
      result = __SC_log_enabled(6, v40, v41);
      if (!result)
      {
        goto LABEL_96;
      }

      v42 = _os_log_pack_size();
      v50 = &parent[-2] - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = *__error();
      v52 = _os_log_pack_fill();
      v53 = valuePtr;
      *v52 = 67109120;
      v52[1] = v53;
      __SC_log_send(6, v40, v41, v50);
LABEL_12:
      result = 0;
      goto LABEL_96;
    }

    *(a1 + 16) = @"FireWire";
    *(a1 + 128) = @"FireWire";
    v32 = isBuiltin(a2);
    *(a1 + 176) = v32;
    *(a1 + 312) = 11;
    if (v32)
    {
      v33 = @"firewire";
LABEL_84:
      *(a1 + 48) = v33;
      goto LABEL_85;
    }

    v96 = 0;
    *parent = 0;
    if (update_interface_name(a1, a2, 0) || !pci_slot_info(a2, valuePtr, &v96, parent))
    {
      goto LABEL_85;
    }

    v54 = isThunderbolt(a2);
    v55 = *parent;
    if (v54)
    {
      if (*parent)
      {
        v56 = v96;
        v57 = @"thunderbolt-multifirewire";
LABEL_38:
        *(a1 + 48) = v57;
        *(a1 + 56) = v56;
        *(a1 + 64) = v55;
        goto LABEL_85;
      }

      v58 = v96;
      v59 = @"thunderbolt-firewire";
    }

    else
    {
      if (*parent)
      {
        v56 = v96;
        v57 = @"pci-multifirewire";
        goto LABEL_38;
      }

      v58 = v96;
      v59 = @"pci-firewire";
    }

    *(a1 + 48) = v59;
    *(a1 + 56) = v58;
    goto LABEL_85;
  }

  if (IOObjectConformsTo(a4, "IO80211Controller") || IOObjectConformsTo(a4, "AirPortPCI") || IOObjectConformsTo(a4, "AirPortDriver"))
  {
    *(a1 + 16) = @"IEEE80211";
    *(a1 + 128) = @"Ethernet";
    v34 = 12;
LABEL_19:
    *(a1 + 312) = v34;
    goto LABEL_20;
  }

  if (IOObjectConformsTo(a4, "AppleThunderboltIPPort"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v34 = 13;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "IOBluetoothBNEPDriver"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v34 = 18;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "AppleUSBEthernetHost"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v34 = 15;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "AppleUSBCDCECMData"))
  {
    *(a1 + 16) = @"Ethernet";
    *(a1 + 128) = @"Ethernet";
    v34 = 17;
    goto LABEL_19;
  }

  if (IOObjectConformsTo(a4, "IOUserEthernetController"))
  {
    *(a1 + 243) = 1;
  }

LABEL_20:
  v35 = *(a1 + 16);
  if (v35)
  {
    goto LABEL_63;
  }

  v36 = IORegistryEntrySearchCFProperty(a2, "IOService", @"InterfaceRole", 0, 3u);
  if (v36)
  {
    v37 = v36;
    v38 = CFStringGetTypeID();
    if (CFGetTypeID(v37) == v38)
    {
      if (CFEqual(v37, @"Bluetooth PAN"))
      {
        v39 = 18;
LABEL_54:
        *(a1 + 16) = @"Ethernet";
        *(a1 + 128) = @"Ethernet";
        *(a1 + 312) = v39;
        goto LABEL_55;
      }

      if (CFEqual(v37, @"Bluetooth PAN-NAP"))
      {
        v39 = 19;
        goto LABEL_54;
      }

      if (CFEqual(v37, @"Bluetooth P2P"))
      {
        v39 = 20;
        goto LABEL_54;
      }

      if (CFEqual(v37, @"CarPlay"))
      {
        v39 = 21;
        goto LABEL_54;
      }

      if (CFEqual(v37, @"VMNET"))
      {
        v39 = 23;
        goto LABEL_54;
      }
    }

LABEL_55:
    CFRelease(v37);
  }

  v35 = *(a1 + 16);
  if (!v35)
  {
    v60 = CFDictionaryGetValue(a7, @"name");
    v61 = IOCopyCFStringValue(v60);
    if (v61)
    {
      v62 = v61;
      if (CFEqual(v61, @"radio"))
      {
        *(a1 + 16) = @"Ethernet";
        *(a1 + 128) = @"Ethernet";
        *(a1 + 312) = 14;
      }

      CFRelease(v62);
    }

    v35 = *(a1 + 16);
    if (!v35)
    {
      v35 = @"Ethernet";
      *(a1 + 16) = @"Ethernet";
      *(a1 + 128) = @"Ethernet";
      *(a1 + 312) = 7;
      *(a1 + 316) = 1;
    }
  }

LABEL_63:
  if (!CFEqual(v35, @"IEEE80211"))
  {
    *(a1 + 344) = 1;
  }

  v63 = CFDictionaryGetValue(theDict, @"IOBuiltin");
  v64 = CFBooleanGetTypeID();
  if (v63 && CFGetTypeID(v63) == v64 || (v63 = CFDictionaryGetValue(theDict, @"IOPrimaryInterface"), v65 = CFBooleanGetTypeID(), v63) && CFGetTypeID(v63) == v65)
  {
    v66 = CFBooleanGetValue(v63);
  }

  else
  {
    v66 = isBuiltin(a2);
  }

  *(a1 + 176) = v66;
  if (!v66 && CFEqual(*(a1 + 16), @"IEEE80211"))
  {
    *(a1 + 176) = 1;
  }

  v67 = CFDictionaryGetValue(theDict, @"IsEphemeral");
  *(a1 + 241) = getBooleanValue(v67);
  v68 = CFDictionaryGetValue(theDict, @"SupportsVMNETBridgedMode");
  *(a1 + 244) = getBooleanValue(v68);
  v69 = CFDictionaryGetValue(theDict, @"IOLocation");
  v70 = IOCopyCFStringValue(v69);
  *(a1 + 200) = v70;
  if (v70 && !CFStringGetLength(v70))
  {
    CFRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }

  v71 = CFDictionaryGetValue(a5, @"IOFeatures");
  v72 = CFNumberGetTypeID();
  if (v71 && CFGetTypeID(v71) == v72 && CFNumberGetValue(v71, kCFNumberIntType, &v98) && (v98 & 6) != 0)
  {
    *(a1 + 368) = 1;
  }

  if (CFEqual(*(a1 + 16), @"IEEE80211"))
  {
    v33 = @"airport";
    goto LABEL_84;
  }

  v80 = *(a1 + 312);
  if (v80 <= 17)
  {
    if (v80 == 13)
    {
      v82 = *(a1 + 200);
      if (!v82 || !CFStringGetLength(v82))
      {
        v33 = @"thunderbolt";
        goto LABEL_84;
      }

      v83 = @"multithunderbolt";
      goto LABEL_114;
    }

    if (v80 == 14)
    {
      *(a1 + 48) = @"wireless";
      v81 = &stru_1F22591E8;
LABEL_115:
      v17 = CFRetain(v81);
      goto LABEL_9;
    }
  }

  else
  {
    switch(v80)
    {
      case 18:
        v33 = @"bluetooth-pan-gn";
        goto LABEL_84;
      case 19:
        v33 = @"bluetooth-pan-nap";
        goto LABEL_84;
      case 20:
        v33 = @"bluetooth-pan-u";
        goto LABEL_84;
    }
  }

  if (*(a1 + 176))
  {
    v84 = *(a1 + 200);
    if (!v84 || !CFStringGetLength(v84))
    {
      v33 = @"ether";
      goto LABEL_84;
    }

    v83 = @"multiether";
LABEL_114:
    *(a1 + 48) = v83;
    v81 = *(a1 + 200);
    goto LABEL_115;
  }

  parent[0] = 0;
  v85 = IORegistryEntrySearchCFProperty(a2, "IOService", @"IOProviderClass", 0, 3u);
  if (v85)
  {
    v86 = v85;
    v87 = a2;
    while (CFEqual(v86, @"IOSkywalkEthernetInterface"))
    {
      CFRelease(v86);
      if (!IORegistryEntryGetParentEntry(v87, "IOService", parent))
      {
        v87 = parent[0];
        parent[0] = 0;
        v86 = IORegistryEntrySearchCFProperty(v87, "IOService", @"IOProviderClass", 0, 3u);
        if (v86)
        {
          continue;
        }
      }

      goto LABEL_157;
    }

    if (CFEqual(v86, @"IOPCIDevice"))
    {
      v96 = 0;
      *parent = 0;
      if (update_interface_name(a1, a2, 0) || !pci_slot_info(a2, valuePtr, &v96, parent))
      {
        goto LABEL_156;
      }

      v88 = isThunderbolt(a2);
      v89 = *parent;
      if (v88)
      {
        if (*parent)
        {
          v90 = v96;
          v91 = @"thunderbolt-multiether";
LABEL_152:
          *(a1 + 48) = v91;
          *(a1 + 56) = v90;
          *(a1 + 64) = v89;
LABEL_156:
          CFRelease(v86);
          goto LABEL_157;
        }

        v94 = v96;
        v95 = @"thunderbolt-ether";
      }

      else
      {
        if (*parent)
        {
          v90 = v96;
          v91 = @"pci-multiether";
          goto LABEL_152;
        }

        v94 = v96;
        v95 = @"pci-ether";
      }

      *(a1 + 48) = v95;
      *(a1 + 56) = v94;
      goto LABEL_156;
    }

    v92 = a2;
    while (!CFEqual(v86, @"IOUSBDevice") && !CFEqual(v86, @"IOUSBInterface") && !CFEqual(v86, @"IOUSBHostInterface"))
    {
      if (_SC_isAppleInternal_once_3 != -1)
      {
        processNetworkInterface_cold_1();
      }

      if (_SC_isAppleInternal_isInternal_3 && IOObjectConformsTo(v92, "IOUserEthernetController"))
      {
        break;
      }

      v93 = a4;
      if (v92 == a2 || (v93 = a6, v92 == a4))
      {
        CFRelease(v86);
        v86 = IORegistryEntrySearchCFProperty(v93, "IOService", @"IOProviderClass", 0, 3u);
        v92 = v93;
        if (v86)
        {
          continue;
        }
      }

      goto LABEL_144;
    }

    processUSBInterface(a1, a2);
    if (!update_interface_name(a1, a2, 1))
    {
      *(a1 + 48) = @"usb-ether";
      *(a1 + 56) = IODictionaryCopyBSDName(theDict);
    }

LABEL_144:
    if (!*(a1 + 48))
    {
      update_interface_name(a1, a2, 0);
    }

    if (v86)
    {
      goto LABEL_156;
    }
  }

LABEL_157:
  if (!*(a1 + 48))
  {
    v16 = @"generic-ether";
    goto LABEL_8;
  }

LABEL_85:
  *(a1 + 112) = IODictionaryCopyBSDName(theDict);
  v73 = CFDictionaryGetValue(a5, @"IOMACAddress");
  v74 = CFDataGetTypeID();
  if (v73 && CFGetTypeID(v73) == v74)
  {
    *(a1 + 160) = CFRetain(v73);
  }

  v75 = CFDictionaryGetValue(theDict, @"IOInterfaceNamePrefix");
  v76 = CFStringGetTypeID();
  if (v75 && CFGetTypeID(v75) == v76)
  {
    *(a1 + 232) = CFRetain(v75);
  }

  v77 = CFDictionaryGetValue(theDict, @"IOInterfaceUnit");
  v78 = CFNumberGetTypeID();
  if (v77 && CFGetTypeID(v77) == v78 && CFNumberGetValue(v77, kCFNumberIntType, &v98))
  {
    *(a1 + 256) = CFRetain(v77);
  }

  merge_override(a1, a2, @"PPP");
  result = 1;
LABEL_96:
  v79 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef IOCopyCFStringValue(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFDataGetTypeID();
    goto LABEL_11;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    v3 = *MEMORY[0x1E69E9840];

    return CFStringCreateCopy(0, a1);
  }

  v5 = CFDataGetTypeID();
  if (CFGetTypeID(a1) != v5)
  {
LABEL_11:
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v7 = *MEMORY[0x1E69E9840];

  return CFStringCreateWithCString(0, BytePtr, 0x8000100u);
}

uint64_t update_interface_name(void *a1, io_registry_entry_t entry, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = IORegistryEntrySearchCFProperty(entry, "IOService", @"Product Name", 0, 3u);
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = a1[35];
    if (!v7)
    {
      goto LABEL_14;
    }

    v6 = CFRetain(v7);
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = IOCopyCFStringValue(v6);
  CFRelease(v6);
  if (!v8)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  if (CFStringGetLength(v8) < 1)
  {
    v6 = 0;
  }

  else
  {
    v9 = a1[4];
    if (v9)
    {
      CFRelease(v9);
    }

    a1[4] = CFRetain(v8);
    v10 = a1[5];
    if (v10)
    {
      CFRelease(v10);
      a1[5] = 0;
    }

    v6 = 1;
    if (bundle)
    {
      a1[5] = copy_interface_string(bundle, v8, 1);
    }
  }

  CFRelease(v8);
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

CFStringRef IODictionaryCopyBSDName(const __CFDictionary *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"BSD Name");
  if (Value)
  {
    v3 = *MEMORY[0x1E69E9840];

    return IOCopyCFStringValue(Value);
  }

  else
  {
    v5 = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
    v6 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
    TypeID = CFStringGetTypeID();
    if (v5 && CFGetTypeID(v5) == TypeID && (v8 = CFNumberGetTypeID(), v6) && CFGetTypeID(v6) == v8)
    {
      result = CFStringCreateWithFormat(0, 0, @"%@%@", v5, v6);
      v9 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v10 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  return result;
}

void merge_override(uint64_t a1, io_registry_entry_t a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = CFStringCreateWithFormat(0, 0, @"Device%@Overrides", a3);
  v7 = IORegistryEntrySearchCFProperty(a2, "IOService", v6, 0, 3u);
  CFRelease(v6);
  if (v7)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v7) == TypeID)
    {
      Mutable = *(a1 + 224);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a1 + 224) = Mutable;
      }

      CFDictionarySetValue(Mutable, a3, v7);
    }

    v10 = *MEMORY[0x1E69E9840];

    CFRelease(v7);
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

void __SCNetworkInterfaceCacheAdd(const void *a1, const void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = __SCGetThreadSpecificData();
  if (a1)
  {
    v5 = v4[1];
    if (v5)
    {
      v6 = *MEMORY[0x1E695E738];
      if (!a2)
      {
        a2 = *MEMORY[0x1E695E738];
      }

      v7 = __log_SCNetworkConfiguration();
      v8 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v7, v8))
      {
        v9 = _os_log_pack_size();
        v17 = v21 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        *v19 = 134218242;
        *(v19 + 4) = v5;
        *(v19 + 12) = 2112;
        *(v19 + 14) = a1;
        __SC_log_send(7, v7, v8, v17);
      }

      CFDictionaryAddValue(v5, a1, a2);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t _SCNetworkInterfaceIsThunderbolt(void *cf)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_15;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_15;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
  if (CFEqual(InterfaceType, @"Bridge"))
  {
    result = SCBridgeInterfaceGetMemberInterfaces(cf);
    if (result)
    {
      v5 = result;
      result = CFArrayGetCount(result);
      if (result)
      {
        v6 = result;
        if (result >= 1)
        {
          v7 = 0;
          while (*(CFArrayGetValueAtIndex(v5, v7) + 78) == 13)
          {
            ++v7;
            result = 1;
            if (v6 == v7)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_15;
        }

        result = 1;
      }
    }
  }

  else
  {
    result = *(cf + 78) == 13;
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef update_ift_family(CFNumberRef interface)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(interface + 33))
  {
    v1 = interface;
    if (!*(interface + 34))
    {
      BSDName = SCNetworkInterfaceGetBSDName(interface);
      v6 = 0u;
      v7 = 0u;
      if (BSDName)
      {
        if (_SC_cfstring_to_cstring(BSDName, &v6, 16, 0x600u))
        {
          v3 = socket(2, 2, 0);
          if (v3 != -1)
          {
            v4 = v3;
            if (ioctl(v3, 0xC020699FuLL, &v6) == -1)
            {
              *(&v7 + 4) = 0;
            }

            close(v4);
          }
        }
      }

      *(v1 + 33) = CFNumberCreate(0, kCFNumberSInt32Type, &v7 + 4);
      interface = CFNumberCreate(0, kCFNumberSInt32Type, &v7 + 8);
      *(v1 + 34) = interface;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return interface;
}

uint64_t _SCNetworkInterfaceGetFamilySubType(const __CFNumber *interface)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(interface + 34);
  if (!result)
  {
    update_ift_family(interface);
    result = *(interface + 34);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getNameEncoding(const __CFDictionary *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, @"ComputerNameEncoding", &value) && (v1 = value, TypeID = CFNumberGetTypeID(), v1) && CFGetTypeID(v1) == TypeID && CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
  {
    result = valuePtr;
  }

  else
  {
    result = CFStringGetSystemEncoding();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCDynamicStoreCopyLocalHostName(SCDynamicStoreRef store)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", @"Setup:", @"Network", @"HostNames");
  v3 = __SCDynamicStoreCopyValueCommon(store, v2, 0);
  CFRelease(v2);
  if (v3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) == TypeID)
    {
      Value = CFDictionaryGetValue(v3, @"LocalHostName");
      v6 = CFStringGetTypeID();
      if (!Value)
      {
LABEL_9:
        v7 = 1004;
LABEL_10:
        _SCErrorSet(v7);
        CFRelease(v3);
LABEL_17:
        v9 = *MEMORY[0x1E69E9840];
        return Value;
      }

      if (CFGetTypeID(Value) == v6)
      {
        CFRetain(Value);
        if (SCError() == 10100)
        {
          report_missing_entitlement("SCDynamicStoreCopyLocalHostName");
        }

        v7 = 0;
        goto LABEL_10;
      }
    }

    Value = 0;
    goto LABEL_9;
  }

  v8 = SCError();
  if (v8 == 10003)
  {
    block = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___SC_crash_once_block_invoke_1;
    v15 = &__block_descriptor_tmp_9;
    v17 = 0;
    v18 = 0;
    v16 = "SCDynamicStoreCopyLocalHostName() access denied, missing entitlement";
    if (_SC_crash_once_once_1 == -1)
    {
LABEL_16:
      Value = 0;
      goto LABEL_17;
    }

LABEL_21:
    dispatch_once(&_SC_crash_once_once_1, &block);
    goto LABEL_16;
  }

  if (v8 == 1003)
  {
    block = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___SC_crash_once_block_invoke_1;
    v15 = &__block_descriptor_tmp_9;
    v17 = 0;
    v18 = 0;
    v16 = "SCDynamicStoreCopyLocalHostName() access denied by policy";
    if (_SC_crash_once_once_1 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v11 = *MEMORY[0x1E69E9840];

  return _SCPreferencesCopyLocalHostName(0);
}

SCNetworkReachabilityRef SCNetworkReachabilityCreateWithOptions(const __CFAllocator *a1, const void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    goto LABEL_52;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_52;
  }

  Value = CFDictionaryGetValue(a2, @"nodename");
  if (Value)
  {
    v6 = CFStringGetTypeID();
    if (CFGetTypeID(Value) != v6 || !CFStringGetLength(Value))
    {
      goto LABEL_52;
    }
  }

  v7 = CFDictionaryGetValue(a2, @"local-address");
  if (v7)
  {
    v8 = v7;
    v9 = CFDataGetTypeID();
    if (CFGetTypeID(v8) != v9 || CFDataGetLength(v8) <= 0xF)
    {
      goto LABEL_52;
    }

    BytePtr = CFDataGetBytePtr(v8);
  }

  else
  {
    BytePtr = 0;
  }

  v11 = CFDictionaryGetValue(a2, @"ptr-address");
  if (v11)
  {
    v12 = v11;
    v13 = CFDataGetTypeID();
    if (CFGetTypeID(v12) != v13 || CFDataGetLength(v12) <= 0xF)
    {
      goto LABEL_52;
    }

    v14 = CFDataGetBytePtr(v12);
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(a2, @"remote-address");
  if (v15)
  {
    v16 = v15;
    v17 = CFDataGetTypeID();
    if (CFGetTypeID(v16) != v17 || CFDataGetLength(v16) <= 0xF)
    {
      goto LABEL_52;
    }

    v18 = CFDataGetBytePtr(v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(a2, @"interface");
  if (v19)
  {
    v20 = CFStringGetTypeID();
    if (CFGetTypeID(v19) != v20 || !CFStringGetLength(v19))
    {
      goto LABEL_52;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"ResolverBypass");
  if (v21)
  {
    v22 = CFBooleanGetTypeID();
    if (CFGetTypeID(v21) != v22)
    {
      goto LABEL_52;
    }
  }

  v23 = CFDictionaryGetValue(a2, @"SourceAppAuditToken");
  if (v23)
  {
    v24 = CFDataGetTypeID();
    if (CFGetTypeID(v23) != v24 || CFDataGetLength(v23) != 32)
    {
      goto LABEL_52;
    }
  }

  v25 = CFDictionaryGetValue(a2, @"SourceAppBundleIdentifier");
  if (v25)
  {
    v26 = CFStringGetTypeID();
    if (CFGetTypeID(v25) != v26 || !CFStringGetLength(v25))
    {
      goto LABEL_52;
    }
  }

  if (!Value)
  {
    if (v14)
    {
      if (BytePtr | v18)
      {
LABEL_52:
        _SCErrorSet(1002);
        v28 = 0;
        goto LABEL_53;
      }

      v29 = __SCNetworkReachabilityCreateWithPTR(v14);
      goto LABEL_46;
    }

    if (BytePtr && v18)
    {
      v30 = BytePtr;
      v31 = v18;
    }

    else
    {
      if (v18)
      {
        v29 = SCNetworkReachabilityCreateWithAddress(0, v18);
        goto LABEL_46;
      }

      if (!BytePtr)
      {
        goto LABEL_52;
      }

      v30 = BytePtr;
      v31 = 0;
    }

    v29 = SCNetworkReachabilityCreateWithAddressPair(0, v30, v31);
LABEL_46:
    v28 = v29;
    goto LABEL_47;
  }

  if (BytePtr || v18 || v14)
  {
    goto LABEL_52;
  }

  v27 = _SC_cfstring_to_cstring(Value, 0, 0, 0x8000100u);
  v28 = SCNetworkReachabilityCreateWithName(a1, v27);
  CFAllocatorDeallocate(0, v27);
LABEL_47:
  if (v28)
  {
    if (v19)
    {
      if (!_SC_cfstring_to_cstring(v19, v72, 16, 0x600u) || (v32 = if_nametoindex(v72)) == 0)
      {
        CFRelease(v28);
        goto LABEL_52;
      }
    }

    else
    {
      v32 = 0;
    }

    if (!*(v28 + 29))
    {
      *(v28 + 29) = MEMORY[0x1B26F5100]();
    }

    if (v32)
    {
      v35 = nw_interface_create_with_index();
      nw_parameters_require_interface(*(v28 + 29), v35);
      nw_release(v35);
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    if (v21)
    {
      *(v28 + 192) = CFBooleanGetValue(v21);
      v36 = 1;
    }

    if (v23)
    {
      *buffer = 0u;
      v71 = 0u;
      v74.length = CFDataGetLength(v23);
      v74.location = 0;
      CFDataGetBytes(v23, v74, buffer);
      v37 = *(v28 + 29);
      v69[0] = *buffer;
      v69[1] = v71;
      nw_parameters_set_source_application();
    }

    else if (v25)
    {
      v53 = _SC_cfstring_to_cstring(v25, 0, 0, 0x8000100u);
      if (v53)
      {
        v54 = v53;
        v55 = *(v28 + 29);
        nw_parameters_set_source_application_by_bundle_id();
        CFAllocatorDeallocate(0, v54);
      }

      else
      {
        v56 = __log_SCNetworkReachability_log;
        if (!__log_SCNetworkReachability_log)
        {
          v56 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
          __log_SCNetworkReachability_log = v56;
        }

        v57 = _SC_syslog_os_log_mapping(4);
        if (__SC_log_enabled(4, v56, v57))
        {
          v58 = _os_log_pack_size();
          v66 = v69 - ((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
          v67 = *__error();
          v68 = _os_log_pack_fill();
          *v68 = 138412290;
          *(v68 + 4) = v25;
          __SC_log_send(4, v56, v57, v66);
        }
      }
    }

    else if (!v36)
    {
      goto LABEL_53;
    }

    v38 = *(v28 + 20);
    if (v38 > 3)
    {
      v39 = 0;
    }

    else
    {
      v39 = off_1E79BDB30[v38];
    }

    v40 = __log_SCNetworkReachability_log;
    if (!__log_SCNetworkReachability_log)
    {
      v40 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
      __log_SCNetworkReachability_log = v40;
    }

    v41 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v40, v41))
    {
      v42 = _os_log_pack_size();
      v50 = v69 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = *__error();
      v52 = _os_log_pack_fill();
      *v52 = 136315650;
      *(v52 + 4) = v28 + 193;
      *(v52 + 12) = 2080;
      *(v52 + 14) = v39;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v28;
      __SC_log_send(7, v40, v41, v50);
    }
  }

LABEL_53:
  v33 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t _SCHelperExec(mach_port_t a1, int a2, const __CFData *a3, _DWORD *a4, void *a5)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48[0] = 0;
  if (_SCHelperExecCopyBacktrace_once != -1)
  {
    _SCHelperExec_cold_1();
  }

  if (_SCHelperExecCopyBacktrace_loggingEnabled != 1)
  {
    v11 = 0;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_10:
    BytePtr = 0;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v10 = _SC_copyBacktrace();
  v11 = v10;
  if (v10)
  {
    _SCSerializeString(v10, v48, 0, 0);
    CFRelease(v11);
    v11 = v48[0];
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_7:
  BytePtr = CFDataGetBytePtr(a3);
  LODWORD(a3) = CFDataGetLength(a3);
  if (v11)
  {
LABEL_8:
    v13 = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v11);
    v15 = helperexec(a1, a2, BytePtr, a3, v13, Length, &v45, &v46, &v45 + 1);
    CFRelease(v11);
    goto LABEL_12;
  }

LABEL_11:
  v15 = helperexec(a1, a2, BytePtr, a3, 0, 0, &v45, &v46, &v45 + 1);
LABEL_12:
  if (v15)
  {
    if (v46)
    {
      MEMORY[0x1B26F57E0](*MEMORY[0x1E69E9A60], v46, HIDWORD(v45));
    }

    if (v15 != 268435459)
    {
      v16 = __log_SCPreferences();
      v17 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v16, v17))
      {
        v18 = _os_log_pack_size();
        v26 = &v44 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = *__error();
        v28 = _os_log_pack_fill();
        v29 = mach_error_string(v15);
        *v28 = 136315138;
        *(v28 + 4) = v29;
        __SC_log_send(5, v16, v17, v26);
      }
    }

    _SCErrorSet(v15);
    result = 0;
  }

  else if (!v46 || (result = _SCUnserializeData(&v47, v46, HIDWORD(v45)), result))
  {
    if (a4)
    {
      __SCPreferencesHandleInternalStatus(&v45);
      *a4 = v45;
    }

    if (a5)
    {
      *a5 = v47;
    }

    else if (v47)
    {
      v31 = __log_SCPreferences();
      v32 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v31, v32))
      {
        v33 = _os_log_pack_size();
        v41 = &v44 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v31, v32, v41);
      }

      CFRelease(v47);
    }

    result = 1;
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t helperexec(mach_port_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int *a7, void *a8, _DWORD *a9)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 2;
  v21 = a3;
  v22 = 16777472;
  v23 = a4;
  v24 = a5;
  v25 = 16777472;
  v26 = a6;
  v27 = *MEMORY[0x1E69E99E0];
  v28 = a2;
  v29 = a4;
  v30 = a6;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x55F100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x50u, 0x44u, msgh_local_port, 0, 0);
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

      else if (msg.msgh_id == 22101)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v20 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v22) == 1)
          {
            v16 = v23;
            if (v23 == v26)
            {
              v15 = 0;
              *a7 = v25;
              *a8 = v21;
              *a9 = v16;
              goto LABEL_27;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v21))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v21);
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
      goto LABEL_27;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

CFDataRef SCPreferencesGetSignature(SCPreferencesRef prefs)
{
  v4 = *MEMORY[0x1E69E9840];
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    result = *(prefs + 18);
  }

  else
  {
    _SCErrorSet(3001);
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCPreferencesHandleInternalStatus(int *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1 == 10003)
  {
    v3 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_16;
    }

LABEL_15:
    v5 = _os_log_pack_size();
    v13 = v16 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v3, v4, v13);
LABEL_16:
    *a1 = 1003;
    goto LABEL_17;
  }

  if (v2 == 10002)
  {
    v3 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v2 == 10001)
  {
    v3 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t SCNetworkCategoryGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkCategoryInitialize_initialized != -1)
  {
    SCNetworkCategoryGetTypeID_cold_1();
  }

  result = __kSCNetworkCategoryTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkCategoryCopyAll(const __SCPreferences *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Categories = SCPreferencesPathKeyCreateCategories(0);
  Value = SCPreferencesPathGetValue(a1, Categories);
  CFRelease(Categories);
  if (Value)
  {
    context = a1;
    v7 = 0;
    CFDictionaryApplyFunction(Value, copyAllApplier, &context);
    result = v7;
  }

  else
  {
    _SCErrorSet(1004);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void copyAllApplier(const __CFString *a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    v7 = __SCNetworkCategoryCreate(*a3, a1);
    Mutable = *(a3 + 8);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(a3 + 8) = Mutable;
    }

    CFArrayAppendValue(Mutable, v7);
    v9 = *MEMORY[0x1E69E9840];

    CFRelease(v7);
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
  }
}

uint64_t SCNetworkCategoryCreate(const void *a1, const __CFString *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = __SCNetworkCategoryCreate(a1, a2);
  if (v2)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = v18 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315394;
      *(v15 + 4) = "SCNetworkCategoryCreate";
      *(v15 + 12) = 2112;
      *(v15 + 14) = v2;
      __SC_log_send(7, v3, v4, v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __SCNetworkCategoryCreate(const void *a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCNetworkCategoryInitialize_initialized != -1)
  {
    SCNetworkCategoryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a2);
    *(Instance + 24) = CFRetain(a1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t SCNetworkCategoryAddService(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  v13 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, ServiceID);
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryService);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    _SCErrorSet(1005);
    v9 = 0;
  }

  else
  {
    v10 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = SCPreferencesPathSetValue(*(a1 + 24), CategoryService, v10);
    CFRelease(v10);
  }

  CFRelease(CategoryService);
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t SCNetworkCategoryRemoveService(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  v11 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, ServiceID);
  v8 = SCPreferencesPathRemoveValue(*(a1 + 24), CategoryService);
  SCNetworkServiceRemove(service);
  CFRelease(CategoryService);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SCNetworkCategoryCopyServices(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  CategoryService = SCPreferencesPathKeyCreateCategoryService(0, *(a1 + 16), a2, 0);
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryService);
  CFRelease(CategoryService);
  if (Value)
  {
    context = *(a1 + 24);
    v8 = 0;
    CFDictionaryApplyFunction(Value, copyServicesApplier, &context);
    result = v8;
  }

  else
  {
    _SCErrorSet(1004);
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void copyServicesApplier(const __CFString *a1, const void *a2, SCPreferencesRef *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && (v7 = SCNetworkServiceCopy(*a3, a1)) != 0)
  {
    v8 = v7;
    Mutable = a3[1];
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      a3[1] = Mutable;
    }

    CFArrayAppendValue(Mutable, v8);
    v10 = *MEMORY[0x1E69E9840];

    CFRelease(v8);
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

uint64_t SCNetworkCategoryCopyValues(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  Category = SCPreferencesPathKeyCreateCategory(0, *(a1 + 16));
  Value = SCPreferencesPathGetValue(*(a1 + 24), Category);
  CFRelease(Category);
  if (Value)
  {
    v6[0] = 0;
    CFDictionaryApplyFunction(Value, copyValuesApplier, v6);
    result = v6[0];
  }

  else
  {
    _SCErrorSet(1004);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void copyValuesApplier(const void *a1, const void *a2, __CFArray **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    v8 = *MEMORY[0x1E69E9840];

    CFArrayAppendValue(Mutable, a1);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

uint64_t SCNetworkCategorySetServiceQoSMarkingPolicy(uint64_t a1, uint64_t a2, SCNetworkServiceRef service, const __CFDictionary *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryServiceEntity = SCPreferencesPathKeyCreateCategoryServiceEntity(0, *(a1 + 16), a2, ServiceID, @"QoSMarkingPolicy");
  v9 = *(a1 + 24);
  if (a4)
  {
    v10 = SCPreferencesPathSetValue(v9, CategoryServiceEntity, a4);
  }

  else
  {
    v10 = SCPreferencesPathRemoveValue(v9, CategoryServiceEntity);
  }

  v11 = v10;
  CFRelease(CategoryServiceEntity);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CFDictionaryRef SCNetworkCategoryGetServiceQoSMarkingPolicy(uint64_t a1, uint64_t a2, SCNetworkServiceRef service)
{
  v10 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  CategoryServiceEntity = SCPreferencesPathKeyCreateCategoryServiceEntity(0, *(a1 + 16), a2, ServiceID, @"QoSMarkingPolicy");
  Value = SCPreferencesPathGetValue(*(a1 + 24), CategoryServiceEntity);
  CFRelease(CategoryServiceEntity);
  if (!Value)
  {
    _SCErrorSet(1004);
  }

  v8 = *MEMORY[0x1E69E9840];
  return Value;
}

void __SCNetworkCategoryDeallocate(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkCategoryEqual(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];

    return CFEqual(v2, v3);
  }
}

CFHashCode __SCNetworkCategoryHash(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  return CFHash(v1);
}

__CFString *__SCNetworkCategoryCopyDescription(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p [%p]> { ID = %@ }", "SCNetworkCategory", a1, v2, a1[2]);
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

const void *isA_CFString(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      result = a1;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult compare_CFString(const __CFString *a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CFStringCompare(a1, a2, 0);
}

const void *isA_CFNumber(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  TypeID = CFNumberGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      result = a1;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult compare_CFNumber(const __CFNumber *a1, const __CFNumber *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CFNumberCompare(a1, a2, 0);
}

const void *isA_CFDate(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  TypeID = CFDateGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      result = a1;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult compare_CFDate(const __CFDate *a1, const __CFDate *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CFDateCompare(a1, a2, 0);
}

uint64_t _SC_isInstallEnvironment()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_SC_isInstallEnvironment_once != -1)
  {
    _SC_isInstallEnvironment_cold_1();
  }

  result = _SC_isInstallEnvironment_is_install;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t _SC_LOG_DEFAULT()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _SC_LOG_DEFAULT_log;
  if (!_SC_LOG_DEFAULT_log)
  {
    result = os_log_create("com.apple.SystemConfiguration", "");
    _SC_LOG_DEFAULT_log = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __SC_Log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_sc_log >= 1)
  {
    if (_sc_log < 2)
    {
      os_log_with_args();
      goto LABEL_6;
    }

    os_log_with_args();
  }

  __SCPrint(*MEMORY[0x1E69E9858], a2, &a9, _sc_log == 2, 1);
LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
}

void SCLog(int a1, int a2, CFStringRef theString, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (_sc_log < 1)
  {
    v14 = &a9;
LABEL_12:
    v12 = MEMORY[0x1E69E9848];
    if ((~a2 & 6) != 0)
    {
      v12 = MEMORY[0x1E69E9858];
    }

    __SCPrint(*v12, theString, v14, _sc_log == 2, 1);
    goto LABEL_15;
  }

  v11 = _sc_log;
  if (_sc_log >= 2)
  {
    v14 = &a9;
  }

  if (CFStringGetCStringPtr(theString, 0x8000100u))
  {
    _SC_syslog_os_log_mapping(a2);
    if (!_SC_LOG_DEFAULT_log)
    {
      _SC_LOG_DEFAULT_log = os_log_create("com.apple.SystemConfiguration", "");
    }

    os_log_with_args();
  }

  if (v11 >= 2)
  {
    goto LABEL_12;
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
}

CFErrorRef SCCopyLastError(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *__SCGetThreadSpecificData();
  v1 = &off_1E79BD128;
  v2 = 20;
  while (*(v1 - 2) != v0)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = MEMORY[0x1E695E630];
      if ((v0 - 1) < 0x6B)
      {
        v3 = MEMORY[0x1E695E640];
      }

      v4 = *MEMORY[0x1E69E9840];
      v5 = *v3;

      return CFErrorCreate(0, v5, v0, 0);
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v8 = CFStringCreateWithCString(0, *v1, 0x600u);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E620], v8);
  CFRelease(v8);
  v9 = CFErrorCreate(0, @"com.apple.SystemConfiguration", v0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

const char *__cdecl SCErrorString(int status)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = &off_1E79BD128;
  v3 = 20;
  do
  {
    if (*(v2 - 2) == status)
    {
      result = *v2;
      goto LABEL_9;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  if ((status - 1) <= 0x6A)
  {
    goto LABEL_5;
  }

  if (status > 0x451)
  {
    result = mach_error_string(status);
    if (!result)
    {
LABEL_5:
      v4 = *MEMORY[0x1E69E9840];

      return strerror(status);
    }

LABEL_9:
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];

  return bootstrap_strerror(status);
}

CFStringRef SCDynamicStoreKeyCreateNetworkInterface(CFAllocatorRef allocator, CFStringRef domain)
{
  result = CFStringCreateWithFormat(allocator, 0, @"%@/%@/%@", domain, @"Network", @"Interface", *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *_SC_dlopen(char *__path)
{
  v7 = *MEMORY[0x1E69E9840];
  if (_SC_dlopen_once != -1)
  {
    _SC_dlopen_cold_1();
  }

  if (!_SC_dlopen_suffix || (memset(&v6, 0, sizeof(v6)), __strlcpy_chk(), __strlcat_chk(), stat(v5, &v6) < 0))
  {
    v2 = __path;
  }

  else
  {
    v2 = v5;
  }

  result = dlopen(v2, 5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SC_hw_model(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_SC_hw_model_once != -1)
  {
    _SC_hw_model_cold_1();
  }

  v2 = &_SC_hw_model_model_trimmed;
  if (!a1)
  {
    v2 = &_SC_hw_model_model;
  }

  result = *v2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFPropertyListRef _SCCreatePropertyListFromResource(const __CFURL *a1)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  propertyValueTypeRefPtr = 0;
  valuePtr[0] = 0;
  if (CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EAF0], &propertyValueTypeRefPtr, 0))
  {
    v2 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v38 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 138412290;
      *(v15 + 4) = a1;
      v16 = 5;
LABEL_15:
      __SC_log_send(v16, v3, v4, v13);
    }

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  Value = CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, valuePtr);
  CFRelease(propertyValueTypeRefPtr);
  if (Value)
  {
    v18 = valuePtr[0] == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v19 = _os_log_pack_size();
      v13 = &v38 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      *v28 = 138412290;
      *(v28 + 4) = a1;
      v16 = 6;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v32 = CFReadStreamCreateWithFile(0, a1);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  if (CFReadStreamOpen(v32))
  {
    v34 = MEMORY[0x1B26F3AA0](0, valuePtr[0], 152347730, 0);
    v35 = CFReadStreamRead(v33, v34, valuePtr[0]);
    if (v35 == valuePtr[0] && (v36 = CFDataCreateWithBytesNoCopy(0, v34, v35, *MEMORY[0x1E695E498])) != 0)
    {
      v37 = v36;
      v29 = CFPropertyListCreateWithData(0, v36, 0, 0, 0);
      CFRelease(v37);
    }

    else
    {
      v29 = 0;
    }

    CFAllocatorDeallocate(0, v34);
    CFReadStreamClose(v33);
  }

  else
  {
    v29 = 0;
  }

  CFRelease(v33);
LABEL_17:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t _SC_unschedule(const void *a1, const void *a2, const void *a3, CFArrayRef theArray, int a5)
{
  v19 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = Count;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13), !CFEqual(a1, ValueAtIndex)) || a2 && (v15 = CFArrayGetValueAtIndex(theArray, v13 + 1), !CFEqual(a2, v15)) || a3 && (v16 = CFArrayGetValueAtIndex(theArray, v13 + 2), !CFEqual(a3, v16)))
      {
        v13 += 3;
      }

      else
      {
        CFArrayRemoveValueAtIndex(theArray, v13 + 2);
        CFArrayRemoveValueAtIndex(theArray, v13 + 1);
        CFArrayRemoveValueAtIndex(theArray, v13);
        v12 = 1;
        if (!a5)
        {
          break;
        }

        v11 -= 3;
      }
    }

    while (v13 < v11);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _SC_CFBundleGet()
{
  v37 = *MEMORY[0x1E69E9840];
  if (!_SC_CFBundleGet_bundle)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.SystemConfiguration");
    _SC_CFBundleGet_bundle = BundleWithIdentifier;
    if (BundleWithIdentifier)
    {
      CFRetain(BundleWithIdentifier);
    }

    else
    {
      v1 = _SC_LOG_DEFAULT();
      v2 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v1, v2))
      {
        v3 = _os_log_pack_size();
        v11 = &v35[-((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v12 = *__error();
        v13 = _os_log_pack_fill();
        *v13 = 138412290;
        *(v13 + 4) = @"com.apple.SystemConfiguration";
        __SC_log_send(5, v1, v2, v11);
      }

      v14 = getenv("DYLD_FRAMEWORK_PATH");
      if (v14)
      {
        v15 = v14;
        v16 = strlen(v14);
        if (v16)
        {
          v17 = v16;
          if (v16 != 1)
          {
            while (v15[v17 - 1] == 47)
            {
              if (--v17 <= 1)
              {
                goto LABEL_16;
              }
            }

            if (v17 >= 5 && !strncmp(&v15[v17 - 4], "~sym", 4uLL) && v17 + 56 <= 0x3FF)
            {
              __strlcpy_chk();
              strlcpy(&v35[v17 + 4], "~dst", 1028 - v17);
              strlcat(&v36[v17], "/System/Library/Frameworks/SystemConfiguration.framework", 1024 - v17);
              v18 = CFURLCreateFromFileSystemRepresentation(0, v36, v17 + 56, 1u);
              _SC_CFBundleGet_bundle = CFBundleCreate(0, v18);
              CFRelease(v18);
            }
          }
        }
      }

LABEL_16:
      if (!_SC_CFBundleGet_bundle)
      {
        v19 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/SystemConfiguration.framework", kCFURLPOSIXPathStyle, 1u);
        _SC_CFBundleGet_bundle = CFBundleCreate(0, v19);
        CFRelease(v19);
        if (!_SC_CFBundleGet_bundle)
        {
          v20 = _SC_LOG_DEFAULT();
          v21 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v20, v21))
          {
            v22 = _os_log_pack_size();
            v30 = &v35[-((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0)];
            v31 = *__error();
            v32 = _os_log_pack_fill();
            *v32 = 138412290;
            *(v32 + 4) = @"com.apple.SystemConfiguration";
            __SC_log_send(3, v20, v21, v30);
          }
        }
      }
    }
  }

  result = _SC_CFBundleGet_bundle;
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void _SC_crash(const char *a1, const __CFString *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (_SC_isAppleInternal_once_0 != -1)
  {
    _SC_crash_cold_1();
  }

  if (_SC_isAppleInternal_isInternal_0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = "_SC_crash() called w/o crash_info";
    }

    qword_1EB591738 = v6;
    v7 = _SC_LOG_DEFAULT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&dword_1AD2AD000, v7, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    if (a2 && a3 && (_SC_ReportCrash_warned & 1) == 0)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%@\n\nPlease collect the crash report and file a Radar.", a3);
      CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, a2, v8, 0);
      CFRelease(v8);
      _SC_ReportCrash_warned = 1;
    }

    qword_1EB591738 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void _SC_logMachPortStatus()
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v0 = _SC_LOG_DEFAULT();
  v1 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v0, v1))
  {
    v2 = _os_log_pack_size();
    v10 = &v33 - ((MEMORY[0x1EEE9AC00](v2, v3, v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(7, v0, v1, v10);
  }

  if (!MEMORY[0x1B26F4E10](*MEMORY[0x1E69E9A60], &v35, &v33 + 4, &v34, &v33))
  {
    Mutable = CFStringCreateMutable(0, 0);
    if (HIDWORD(v33))
    {
      for (i = 0; i < HIDWORD(v33); ++i)
      {
        v14 = v34;
        if (!*(v34 + 4 * i))
        {
          v17 = &v36;
          goto LABEL_15;
        }

        v36 = 10272;
        v15 = *(v34 + 4 * i);
        v16 = &v37;
        if ((v15 & 0x10000) != 0)
        {
          v37 = 83;
          v15 = *(v34 + 4 * i);
          v16 = v38;
          if ((v15 & 0x20000) == 0)
          {
LABEL_9:
            if ((v15 & 0x40000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_19;
          }
        }

        else if ((v15 & 0x20000) == 0)
        {
          goto LABEL_9;
        }

        *v16++ = 82;
        v15 = *(v14 + 4 * i);
        if ((v15 & 0x40000) == 0)
        {
LABEL_10:
          if ((v15 & 0x80000) != 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

LABEL_19:
        *v16++ = 79;
        v15 = *(v34 + 4 * i);
        if ((v15 & 0x80000) != 0)
        {
LABEL_20:
          *v16++ = 80;
          if ((*(v34 + 4 * i) & 0x100000) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v16++ = 68;
          goto LABEL_13;
        }

LABEL_11:
        if ((v15 & 0x100000) != 0)
        {
          goto LABEL_12;
        }

LABEL_13:
        *v16 = 41;
        v17 = (v16 + 1);
LABEL_15:
        *v17 = 0;
        CFStringAppendFormat(Mutable, 0, @" %u%s", *(v35 + 4 * i), &v36, v33);
      }
    }

    v18 = _SC_LOG_DEFAULT();
    v19 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = &v33 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = HIDWORD(v33);
      *v30 = 67109378;
      *(v30 + 4) = v31;
      *(v30 + 8) = 2112;
      *(v30 + 10) = Mutable;
      __SC_log_send(7, v18, v19, v28);
    }

    CFRelease(Mutable);
  }

  v32 = *MEMORY[0x1E69E9840];
}

BOOL _SC_checkMachPortReceive(uint64_t a1, uint64_t name)
{
  v9 = *MEMORY[0x1E69E9840];
  ptype = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  if (_SC_getMachPortReferences(name, &ptype, 0, &v5, v6, 0, 0, 0, a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  result = !v2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SC_getMachPortReferences(uint64_t name, mach_port_type_t *ptype, uint64_t a3, uint64_t a4, integer_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a9;
  v53 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E69E9A60];
  v18 = mach_port_type(*MEMORY[0x1E69E9A60], name, ptype);
  if (!v18)
  {
    if (a3)
    {
      if (*(ptype + 2))
      {
        v36 = MEMORY[0x1B26F4DE0](*v17, name, 0, a3);
        if (v36)
        {
          v19 = v36;
          v20 = _SC_LOG_DEFAULT();
          v21 = _SC_syslog_os_log_mapping(7);
          if (!__SC_log_enabled(7, v20, v21))
          {
            goto LABEL_5;
          }

          goto LABEL_3;
        }
      }
    }

    if (!a4 || !a5 || (*(ptype + 2) & 2) == 0)
    {
      goto LABEL_38;
    }

    v39 = MEMORY[0x1B26F4DE0](*v17, name, 1, a4);
    if (v39)
    {
      v19 = v39;
      v20 = _SC_LOG_DEFAULT();
      v21 = _SC_syslog_os_log_mapping(7);
      if (!__SC_log_enabled(7, v20, v21))
      {
        goto LABEL_5;
      }

      goto LABEL_3;
    }

    port_info_outCnt = 10;
    attributes = mach_port_get_attributes(*v17, name, 2, a5, &port_info_outCnt);
    if (attributes)
    {
      v19 = attributes;
      v20 = _SC_LOG_DEFAULT();
      v21 = _SC_syslog_os_log_mapping(7);
      if (!__SC_log_enabled(7, v20, v21))
      {
        goto LABEL_5;
      }
    }

    else
    {
LABEL_38:
      if (a6 && (*(ptype + 2) & 4) != 0 && (v37 = MEMORY[0x1B26F4DE0](*v17, name, 2, a6), v37))
      {
        v19 = v37;
        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v20, v21))
        {
          goto LABEL_5;
        }
      }

      else if (a7 && (*(ptype + 2) & 8) != 0 && (v38 = MEMORY[0x1B26F4DE0](*v17, name, 3, a7), v38))
      {
        v19 = v38;
        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v20, v21))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!a8 || (*(ptype + 2) & 0x10) == 0)
        {
          v19 = 0;
          goto LABEL_5;
        }

        v19 = MEMORY[0x1B26F4DE0](*v17, name, 4, a8);
        if (!v19)
        {
          goto LABEL_5;
        }

        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v20, v21))
        {
          goto LABEL_5;
        }
      }
    }

    v41 = _os_log_pack_size();
    v30 = &v50 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = *__error();
    goto LABEL_4;
  }

  v19 = v18;
  v20 = _SC_LOG_DEFAULT();
  v21 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v20, v21))
  {
LABEL_3:
    v22 = _os_log_pack_size();
    v30 = &v50 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *__error();
LABEL_4:
    v32 = _os_log_pack_fill();
    v33 = mach_error_string(v19);
    *v32 = 136315650;
    *(v32 + 4) = v51;
    *(v32 + 12) = 1024;
    *(v32 + 14) = name;
    *(v32 + 18) = 2080;
    *(v32 + 20) = v33;
    __SC_log_send(7, v20, v21, v30);
  }

LABEL_5:
  v34 = *MEMORY[0x1E69E9840];
  return v19;
}

BOOL _SC_checkMachPortSend(uint64_t a1, uint64_t name)
{
  v8 = *MEMORY[0x1E69E9840];
  ptype = 0;
  v6 = 0;
  v5 = 0;
  MachPortReferences = _SC_getMachPortReferences(name, &ptype, &v6, 0, 0, &v5 + 4, 0, &v5, a1);
  result = 0;
  if (!MachPortReferences)
  {
    result = (v6 | HIDWORD(v5) | v5) != 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void _SC_logMachPortReferences(uint64_t a1, uint64_t name)
{
  v29 = *MEMORY[0x1E69E9840];
  ptype = 0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v26[0] = 0;
  if (a1)
  {
    __strlcpy_chk();
    __strlcat_chk();
    if (!(v27 ^ 0x2020 | v28))
    {
      LOBYTE(v27) = 58;
    }
  }

  if (!_SC_getMachPortReferences(name, &ptype, &v22 + 4, &v22, v23, &v21 + 4, &v21, &v20, v26))
  {
    v3 = _SC_LOG_DEFAULT();
    v4 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v19 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      if (v24)
      {
        v16 = ", no more senders";
      }

      else
      {
        v16 = "";
      }

      if ((ptype & 0x100000) != 0)
      {
        v17 = ", dead name request";
      }

      else
      {
        v17 = "";
      }

      __os_log_helper_1_2_10_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_8_32_8_32(v15, v26, name, name, SHIDWORD(v22), v22, SHIDWORD(v21), v21, v20, v16, v17);
      __SC_log_send(7, v3, v4, v13);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

double __os_log_helper_1_2_10_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_8_32_8_32(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v13 = *MEMORY[0x1E69E9840];
  *&result = 136317442;
  *a1 = 136317442;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  *(a1 + 36) = 1024;
  *(a1 + 38) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a9;
  *(a1 + 54) = 2080;
  *(a1 + 56) = a10;
  *(a1 + 64) = 2080;
  *(a1 + 66) = a11;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_SC_copyBacktrace()
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v0 = backtrace(v25, 64);
  if (v0 == -1)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = v25 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = __error();
      v22 = strerror(*v21);
      *v20 = 136315138;
      *(v20 + 4) = v22;
      __SC_log_send(5, v8, v9, v18);
    }

    Mutable = 0;
  }

  else
  {
    v1 = v0;
    Mutable = CFStringCreateMutable(0, 0);
    v3 = backtrace_symbols(v25, v1);
    if (v3)
    {
      v4 = v3;
      if (v1 >= 1)
      {
        v5 = v1;
        v6 = v3;
        do
        {
          v7 = *v6++;
          CFStringAppendFormat(Mutable, 0, @"%s\n", v7);
          --v5;
        }

        while (v5);
      }

      free(v4);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _SC_getconninfo(int a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (a2)
  {
    a2[6] = 0uLL;
    a2[7] = 0uLL;
    a2[4] = 0uLL;
    a2[5] = 0uLL;
    a2[2] = 0uLL;
    a2[3] = 0uLL;
    *a2 = 0uLL;
    a2[1] = 0uLL;
    *&v25 = a2;
    DWORD2(v25) = 128;
  }

  if (a3)
  {
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    *a3 = 0uLL;
    a3[1] = 0uLL;
    *&v26 = a3;
    DWORD2(v26) = 128;
  }

  if (ioctl(a1, 0xC0407398uLL))
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v7, v8);
    if (result)
    {
      v10 = _os_log_pack_size();
      v18 = &v24 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = __error();
      v22 = strerror(*v21);
      *v20 = 136315138;
      *(v20 + 4) = v22;
      __SC_log_send(5, v7, v8, v18);
      result = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = DWORD2(v24);
    }

    if (a5)
    {
      *a5 = DWORD1(v24);
    }

    result = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _SC_copyInterfaceUUID(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  v5[0] = 0;
  v5[1] = 0;
  _SC_cfstring_to_cstring_ext(a1, v5, 16, 0x8000100u, 0, 0);
  *md = 0u;
  v8 = 0u;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v5, 0x10u);
  CC_SHA256_Final(md, &c);
  v1 = CFUUIDCreateFromUUIDBytes(0, *md);
  v2 = CFUUIDCreateString(0, v1);
  CFRelease(v1);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t SC_create_file_safely(char *a1, int a2, uint64_t a3, __n128 a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = -1;
  }

  v6 = 5;
  a4.n128_u64[0] = 136315138;
  v59 = a4;
  v57 = a3;
  a4.n128_u64[0] = 136315394;
  v58 = a4;
  while (1)
  {
    if (unlink(a1))
    {
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v8, v9))
      {
        v10 = _os_log_pack_size();
        v18 = &v56 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = *__error();
        v20 = _os_log_pack_fill();
        v21 = __error();
        v22 = strerror(*v21);
        *v20 = v58.n128_u32[0];
        *(v20 + 4) = a1;
        *(v20 + 12) = 2080;
        *(v20 + 14) = v22;
        __SC_log_send(7, v8, v9, v18);
      }
    }

    v23 = v5 == -1 ? open(a1, 1793, v57) : open_dprotected_np(a1, 1793, v5, 0, a3);
    v24 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      v25 = _SC_LOG_DEFAULT();
      v26 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v25, v26))
      {
        v27 = _os_log_pack_size();
        v35 = &v56 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        *v37 = v59.n128_u32[0];
        *(v37 + 4) = a1;
        __SC_log_send(7, v25, v26, v35);
      }

      if (--v6)
      {
        continue;
      }
    }

    if (v24 == -1)
    {
      v38 = __error();
      _SCErrorSet(*v38);
      v39 = _SC_LOG_DEFAULT();
      v40 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v39, v40))
      {
        v41 = _os_log_pack_size();
        v49 = &v56 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
        v50 = *__error();
        v51 = _os_log_pack_fill();
        v52 = __error();
        v53 = strerror(*v52);
        *v51 = v58.n128_u32[0];
        *(v51 + 4) = a1;
        *(v51 + 12) = 2080;
        *(v51 + 14) = v53;
        __SC_log_send(5, v39, v40, v49);
      }
    }

    break;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v24;
}

void _SCDPluginExecInit()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *byte_1F2255718;
  childReaped = CFMachPortCreate(0, childrenReaped, &v5, 0);
  LODWORD(v6.__sigaction_u.__sa_handler) = 1;
  v0 = *MEMORY[0x1E69E9A60];
  Port = CFMachPortGetPort(childReaped);
  if (MEMORY[0x1B26F4E30](v0, Port, 1, &v6, 1))
  {
    perror("mach_port_set_attributes");
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(0, childReaped, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x1E695E8E0]);
  CFRelease(RunLoopSource);
  v6.__sigaction_u.__sa_handler = reaper;
  *&v6.sa_mask = 0xA00000000;
  if (sigaction(20, &v6, 0) == -1)
  {
    perror("sigaction");
  }

  v4 = *MEMORY[0x1E69E9840];
}

CFStringRef childReapedMPCopyDescription()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return CFStringCreateWithFormat(0, 0, @"<SIGCHLD MP>");
}

void childrenReaped()
{
  v18 = *MEMORY[0x1E69E9840];
  if (initializeLock_initialized != -1)
  {
    childrenReaped_cold_1();
  }

  v0 = 0;
  do
  {
    memset(&v17, 0, sizeof(v17));
    v16 = 0;
    v1 = wait4(-1, &v16, 1, &v17);
    if (!v1)
    {
      break;
    }

    v2 = v1;
    if (v1 == -1)
    {
      if (*__error() != 10)
      {
        perror("wait4");
      }

      break;
    }

    pthread_mutex_lock(&lock_0);
    v3 = activeChildren;
    if (activeChildren)
    {
      if (*activeChildren == v2)
      {
        v4 = 0;
LABEL_12:
        *(v3 + 24) = v16;
        ru_stime = v17.ru_stime;
        *(v3 + 32) = v17.ru_utime;
        v8 = *&v17.ru_idrss;
        v7 = *&v17.ru_minflt;
        v9 = *&v17.ru_maxrss;
        *(v3 + 48) = ru_stime;
        *(v3 + 64) = v9;
        v10 = *&v17.ru_nvcsw;
        v12 = *&v17.ru_oublock;
        v11 = *&v17.ru_msgrcv;
        *(v3 + 112) = *&v17.ru_nswap;
        *(v3 + 128) = v12;
        *(v3 + 144) = v11;
        *(v3 + 160) = v10;
        *(v3 + 80) = v8;
        *(v3 + 96) = v7;
        if (v4)
        {
          v13 = (v4 + 176);
        }

        else
        {
          v13 = &activeChildren;
        }

        *v13 = *(v3 + 176);
        *(v3 + 176) = v0;
        v0 = v3;
      }

      else
      {
        v5 = activeChildren;
        while (1)
        {
          v3 = *(v5 + 176);
          if (!v3)
          {
            break;
          }

          v4 = v5;
          v5 = *(v5 + 176);
          if (*v3 == v2)
          {
            goto LABEL_12;
          }
        }
      }
    }

    pthread_mutex_unlock(&lock_0);
  }

  while (v2 > 0);
  LODWORD(v17.ru_utime.tv_sec) = 0x80000;
  if (sigprocmask(2, &v17, 0) == -1)
  {
    perror("sigprocmask(SIG_UNBLOCK)");
    if (!v0)
    {
      goto LABEL_23;
    }
  }

  else if (!v0)
  {
    goto LABEL_23;
  }

  do
  {
    v14 = *(v0 + 22);
    (*(v0 + 1))(*v0, v0[6], v0 + 8, *(v0 + 2));
    CFAllocatorDeallocate(0, v0);
    v0 = v14;
  }

  while (v14);
LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
}

void reaper()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0x80000;
  if (sigprocmask(1, &v2, 0) == -1)
  {
    perror("sigprocmask(SIG_BLOCK)");
  }

  Port = CFMachPortGetPort(childReaped);
  _SC_sendMachMessage(Port, 0);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t _SCDPluginSpawnCommand(uint64_t a1, uint64_t a2, const char *a3, char *const *a4, void (*a5)(posix_spawn_file_actions_t *, posix_spawnattr_t *, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v12 = *_NSGetEnviron();
  v18 = 0;
  if (initializeLock_initialized != -1)
  {
    childrenReaped_cold_1();
  }

  pthread_mutex_lock(&lock_0);
  if (!childReaped)
  {
    _SCDPluginExecInit();
  }

  posix_spawnattr_init(&v19);
  posix_spawn_file_actions_init(&v20);
  posix_spawnattr_setflags(&v19, 0x4000);
  if (a5)
  {
    a5(&v20, &v19, a6);
  }

  else
  {
    posix_spawn_file_actions_addopen(&v20, 0, "/dev/null", 2, 0);
    posix_spawn_file_actions_adddup2(&v20, 0, 1);
    posix_spawn_file_actions_adddup2(&v20, 0, 2);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = a3;
    _os_log_impl(&dword_1AD2AD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "spawn: %s", buf, 0xCu);
  }

  v13 = posix_spawn(&v18, a3, &v20, &v19, a4, v12);
  posix_spawnattr_destroy(&v19);
  posix_spawn_file_actions_destroy(&v20);
  if (v13 || !v18)
  {
    v15 = *__error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _SCDPluginSpawnCommand_cold_2(v15);
    }

    *__error() = v15;
    v18 = -1;
  }

  else if (a1)
  {
    v14 = MEMORY[0x1B26F3AA0](0, 184, 0x10A00405301709ALL, 0);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 176) = 0;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *v14 = v18;
    *(v14 + 8) = a1;
    *(v14 + 16) = a2;
    *(v14 + 176) = activeChildren;
    activeChildren = v14;
  }

  pthread_mutex_unlock(&lock_0);
  result = v18;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCDPluginExecCommand2(uint64_t a1, uint64_t a2, uid_t a3, gid_t a4, const char *a5, char *const *a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v16 = getegid();
  v17 = geteuid();
  v33 = 0;
  if (!a7 && v17 == a3 && v16 == a4)
  {
    v18 = *MEMORY[0x1E69E9840];

    return _SCDPluginSpawnCommand(a1, a2, a5, a6, 0, 0);
  }

  else
  {
    if (initializeLock_initialized != -1)
    {
      childrenReaped_cold_1();
    }

    memset(&v34, 0, sizeof(v34));
    pthread_mutex_lock(&lock_0);
    pw_name = 0;
    if (!getpwuid_r(a3, &v34, v37, 0x400uLL, &v33) && v33)
    {
      pw_name = v33->pw_name;
    }

    if (!childReaped)
    {
      _SCDPluginExecInit();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = a5;
      _os_log_impl(&dword_1AD2AD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "fork/exec: %s", buf, 0xCu);
    }

    v21 = fork();
    v22 = v21;
    if (v21 == -1)
    {
      v24 = *__error();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _SCDPluginExecCommand2_cold_3(v24);
      }

      *__error() = v24;
    }

    else
    {
      if (!v21)
      {
        if (a7)
        {
          a7(0, a8);
        }

        else
        {
          v26 = getdtablesize();
          if (v26 >= 1)
          {
            v27 = v26 + 1;
            do
            {
              close(v27 - 2);
              --v27;
            }

            while (v27 > 1);
          }

          v28 = open("/dev/null", 2, 0);
          if (v28 != -1)
          {
            v29 = v28;
            dup2(v28, 0);
            dup2(v29, 1);
            dup2(v29, 2);
            if (v29 >= 3)
            {
              close(v29);
            }
          }
        }

        v30 = getegid();
        v31 = geteuid();
        if (v30 != a4)
        {
          setgid(a4);
        }

        if (v31 == a3)
        {
          if (v30 != a4 && pw_name)
          {
            initgroups(pw_name, a4);
          }
        }

        else
        {
          if (pw_name)
          {
            initgroups(pw_name, a4);
          }

          setuid(a3);
        }

        if (setenv("PATH", "/bin:/sbin:/usr/bin:/usr/sbin", 0) == -1)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _SCDPluginExecCommand2_cold_2();
          }

          exit(71);
        }

        execv(a5, a6);
        v32 = __error();
        _exit(*v32);
      }

      if (a7)
      {
        a7(v21, a8);
      }

      if (a1)
      {
        v23 = MEMORY[0x1B26F3AA0](0, 184, 0x10A00405301709ALL, 0);
        *v23 = 0u;
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0u;
        *(v23 + 48) = 0u;
        *(v23 + 64) = 0u;
        *(v23 + 80) = 0u;
        *(v23 + 96) = 0u;
        *(v23 + 112) = 0u;
        *(v23 + 128) = 0u;
        *(v23 + 144) = 0u;
        *(v23 + 160) = 0u;
        *v23 = v22;
        *(v23 + 8) = a1;
        *(v23 + 16) = a2;
        *(v23 + 176) = activeChildren;
        activeChildren = v23;
      }
    }

    pthread_mutex_unlock(&lock_0);
    v25 = *MEMORY[0x1E69E9840];
    return v22;
  }
}

uint64_t _SCDPluginExecCommand(uint64_t a1, uint64_t a2, uid_t a3, gid_t a4, const char *a5, char *const *a6)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];

  return _SCDPluginExecCommand2(a1, a2, a3, a4, a5, a6, 0, 0);
}

uint64_t __initializeLock_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return pthread_mutex_init(&lock_0, 0);
}

uint64_t _SCDynamicStoreSetSessionWatchLimit(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  _sc_store_max = result;
  _sc_store_advise = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCDynamicStoreReconnectNotifications(uint64_t a1)
{
  v95[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 5)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      dispatch_retain(*(a1 + 136));
    }

    Copy = 0;
  }

  else
  {
    if (v2 == 4 && (v3 = *(a1 + 56)) != 0)
    {
      Copy = CFArrayCreateCopy(0, v3);
    }

    else
    {
      Copy = 0;
    }

    v5 = 0;
  }

  if (!SCDynamicStoreNotifyCancel(a1))
  {
    v6 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v95 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = SCError();
      v20 = SCErrorString(v19);
      *v18 = 136315138;
      *(v18 + 4) = v20;
      __SC_log_send(5, v6, v7, v16);
    }
  }

  if (*(a1 + 168) == 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = SCDynamicStoreSetNotificationKeys(a1, *(a1 + 168), *(a1 + 176));
    if (!v21)
    {
      v45 = SCError();
      if (v45 != 1102)
      {
        v46 = v45;
        v47 = __log_SCDynamicStore_log;
        if (!__log_SCDynamicStore_log)
        {
          v47 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          __log_SCDynamicStore_log = v47;
        }

        v48 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v47, v48))
        {
          v49 = _os_log_pack_size();
          v57 = v95 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
          v58 = *__error();
          v59 = _os_log_pack_fill();
          v60 = SCErrorString(v46);
          *v59 = 136315138;
          *(v59 + 4) = v60;
          __SC_log_send(5, v47, v48, v57);
        }
      }

      goto LABEL_39;
    }
  }

  if (v2 == 5)
  {
    v21 = SCDynamicStoreSetDispatchQueue(a1, v5);
    if (!v21)
    {
      v29 = SCError();
      if (v29 != 1102)
      {
        v30 = v29;
        v31 = __log_SCDynamicStore_log;
        if (!__log_SCDynamicStore_log)
        {
          v31 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
          __log_SCDynamicStore_log = v31;
        }

        v32 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v31, v32))
        {
          v33 = _os_log_pack_size();
          v41 = v95 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
          v42 = *__error();
          v43 = _os_log_pack_fill();
          v44 = SCErrorString(v30);
          *v43 = 136315138;
          *(v43 + 4) = v44;
          __SC_log_send(5, v31, v32, v41);
        }
      }

      v21 = 0;
    }

LABEL_44:
    if (v5)
    {
      dispatch_release(v5);
    }

    goto LABEL_53;
  }

  if (v2 != 4)
  {
    _SCErrorSet(1001);
LABEL_39:
    v21 = 0;
    goto LABEL_40;
  }

  RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, a1, 0);
  if (RunLoopSource)
  {
    v23 = RunLoopSource;
    if (Copy)
    {
      Count = CFArrayGetCount(Copy);
      if (Count >= 1)
      {
        v25 = Count;
        for (i = 0; i < v25; i += 3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, i + 1);
          v28 = CFArrayGetValueAtIndex(Copy, i + 2);
          CFRunLoopAddSource(ValueAtIndex, v23, v28);
        }
      }
    }

    CFRelease(v23);
LABEL_40:
    if (v2 != 5)
    {
      if (v2 != 4 || !Copy)
      {
        goto LABEL_53;
      }

LABEL_52:
      CFRelease(Copy);
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v61 = SCError();
  if (v61 != 1102)
  {
    v62 = v61;
    v63 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v63 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v63;
    }

    v64 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v63, v64))
    {
      v65 = _os_log_pack_size();
      v73 = v95 - ((MEMORY[0x1EEE9AC00](v65, v66, v67, v68, v69, v70, v71, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
      v74 = *__error();
      v75 = _os_log_pack_fill();
      v76 = SCErrorString(v62);
      *v75 = 136315138;
      *(v75 + 4) = v76;
      __SC_log_send(5, v63, v64, v73);
    }
  }

  v21 = 0;
  if (Copy)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (!v21)
  {
    v77 = SCError();
    v78 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v78 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v78;
    }

    v79 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v78, v79))
    {
      v80 = _os_log_pack_size();
      v88 = v95 - ((MEMORY[0x1EEE9AC00](v80, v81, v82, v83, v84, v85, v86, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
      v89 = *__error();
      v90 = _os_log_pack_fill();
      v91 = "failed";
      v92 = *(&notifyType + v2);
      if (v77 == 1102)
      {
        v91 = "shutdown";
      }

      *v90 = 136315394;
      *(v90 + 4) = v91;
      *(v90 + 12) = 2080;
      *(v90 + 14) = v92;
      __SC_log_send(5, v78, v79, v88);
    }
  }

  pushDisconnect(a1);
  v93 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t pushDisconnect(uint64_t result)
{
  v1 = result;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 152);
  if (v2)
  {
    v4 = *(result + 88);
    v3 = *(result + 96);
    if (v3)
    {
      v4 = v3(*(result + 88));
      v5 = *(v1 + 104);
    }

    else
    {
      v5 = 0;
    }

    v6 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v19 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(7, v6, v7, v16);
    }

    result = v2(v1, v4);
    if (v5)
    {
      result = v5(v4);
    }
  }

  else
  {
    *(result + 160) = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCDynamicStoreSetDisconnectCallBack(CFTypeRef cf, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCDynamicStoreInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_6:
      _SCErrorSet(2001);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __SCDynamicStoreCreateInternal_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v4 = __kSCDynamicStoreTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_6;
  }

  *(cf + 19) = a2;
  result = 1;
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void addSessionReference(uint64_t a1, const __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2)
  {
    valuePtr = 0;
    value = 0;
    MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
    v6 = *(a1 + 168);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), 0);
        CFStringAppendFormat(MutableCopy, 0, @":k[0/%ld]=%@", v8, ValueAtIndex);
      }
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      v11 = CFArrayGetCount(v10);
      if (v11 >= 1)
      {
        v12 = v11;
        v13 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
        CFStringAppendFormat(MutableCopy, 0, @":p[0/%ld]=%@", v12, v13);
      }
    }

    if (CFDictionaryGetValueIfPresent(a2, MutableCopy, &value) && CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
    {
      v14 = valuePtr + 1;
    }

    else
    {
      v14 = 1;
    }

    valuePtr = v14;
    value = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, MutableCopy, value);
    CFRelease(value);
    CFRelease(MutableCopy);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void logSessionReference(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCDynamicStore_log;
  if (!__log_SCDynamicStore_log)
  {
    v4 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
    __log_SCDynamicStore_log = v4;
  }

  v5 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = v18 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 138412546;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2112;
    *(v16 + 14) = a1;
    __SC_log_send(3, v4, v5, v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t get_sysctl_val(const char *a1, _DWORD *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v36 = 4;
  if (sysctlbyname(a1, &v37, &v36, 0, 0))
  {
    v4 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v4;
    }

    v5 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v4, v5);
    if (result)
    {
      v7 = _os_log_pack_size();
      v15 = &v35 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = __error();
      v19 = strerror(*v18);
      *v17 = 136315394;
      *(v17 + 4) = a1;
      *(v17 + 12) = 2080;
      *(v17 + 14) = v19;
      __SC_log_send(5, v4, v5, v15);
      result = 0;
    }
  }

  else
  {
    *a2 = v37;
    v20 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v20 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v20;
    }

    v21 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v20, v21))
    {
      v22 = _os_log_pack_size();
      v30 = &v35 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      v33 = v37;
      *v32 = 136315394;
      *(v32 + 4) = a1;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v33;
      __SC_log_send(6, v20, v21, v30);
    }

    result = 1;
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void childForkHandler()
{
  v1 = *MEMORY[0x1E69E9840];
  _sc_server = 0;
  v0 = *MEMORY[0x1E69E9840];
}

__CFString *__SCDynamicStoreCopyDescription(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCDynamicStore %p [%p]> {", a1, v2);
  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @"server port = 0x%x", *(a1 + 40));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"server not (no longer) available", v8);
  }

  if (*(a1 + 152))
  {
    CFStringAppendFormat(Mutable, 0, @", disconnect = %p", *(a1 + 152));
  }

  v4 = *(a1 + 48);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      CFStringAppendFormat(Mutable, 0, @", waiting for a notification", v9);
      goto LABEL_22;
    }

    if (v4 == 2)
    {
      CFStringAppendFormat(Mutable, 0, @", mach port notifications", v9);
      goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        CFStringAppendFormat(Mutable, 0, @", FD notifications", v9);
        goto LABEL_22;
      case 4:
        CFStringAppendFormat(Mutable, 0, @", runloop notifications");
        CFStringAppendFormat(Mutable, 0, @" {callout = %p", *(a1 + 72));
        CFStringAppendFormat(Mutable, 0, @", info = %p", *(a1 + 88));
        CFStringAppendFormat(Mutable, 0, @", rls = %p", *(a1 + 64));
        CFStringAppendFormat(Mutable, 0, @", notify rls = %@", *(a1 + 128));
        goto LABEL_16;
      case 5:
        CFStringAppendFormat(Mutable, 0, @", dispatch notifications");
        CFStringAppendFormat(Mutable, 0, @" {callout = %p", *(a1 + 72));
        CFStringAppendFormat(Mutable, 0, @", info = %p", *(a1 + 88));
        CFStringAppendFormat(Mutable, 0, @", queue = %p", *(a1 + 136));
        CFStringAppendFormat(Mutable, 0, @", source = %p", *(a1 + 144));
LABEL_16:
        CFStringAppendFormat(Mutable, 0, @"}", v10);
        goto LABEL_22;
    }
  }

  if (*(a1 + 72))
  {
    v5 = " (yet)";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @", notification delivery not requested%s", v5);
LABEL_22:
  CFStringAppendFormat(Mutable, 0, @"}");
  v6 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef SCDynamicStoreCopyKeyList(SCDynamicStoreRef store, CFStringRef pattern)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = store;
  v12 = 0;
  cf = 0;
  bytes = 0;
  v11 = 0;
  v8 = 0;
  length = 0;
  if (!__SCDynamicStoreNormalize(v14, 1))
  {
    goto LABEL_12;
  }

  if (!_SCSerializeString(pattern, &cf, &v12, &v11))
  {
    goto LABEL_10;
  }

  v3 = v14[0];
  do
  {
    v4 = configlist(*(v3 + 40), v12, v11, 1u, &bytes, &length + 1, &length);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v14[0], v4, &length, "SCDynamicStoreCopyKeyList configlist()"));
  CFRelease(cf);
  v5 = length;
  if (length)
  {
    if (bytes)
    {
      MEMORY[0x1B26F57E0](*MEMORY[0x1E69E9A60], bytes, HIDWORD(length));
      v5 = length;
    }

    goto LABEL_11;
  }

  if (!_SCUnserialize(&v8, 0, bytes, HIDWORD(length)))
  {
LABEL_10:
    v5 = 1001;
LABEL_11:
    _SCErrorSet(v5);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = v8;
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCDynamicStoreAddTemporaryValue(SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = store;
  v16 = 0;
  cf = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (!__SCDynamicStoreNormalize(v18, 0))
  {
    goto LABEL_10;
  }

  if (!_SCSerializeString(key, &cf, &v16, &v15))
  {
    goto LABEL_8;
  }

  if (!_SCSerialize(value, &v14, &v13, &v12))
  {
    CFRelease(cf);
LABEL_8:
    v8 = 1001;
LABEL_9:
    _SCErrorSet(v8);
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  do
  {
    v6 = configadd_s(*(store + 10), v16, v15, v13, v12, &v11 + 1, &v11);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v18[0], v6, &v11, "SCDynamicStoreAddTemporaryValue configadd_s()"));
  CFRelease(cf);
  CFRelease(v14);
  v7 = 1;
  v8 = __SCDynamicStoreMapInternalStatus(v11, 1);
  LODWORD(v11) = v8;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

Boolean SCDynamicStoreAddValue(SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18[0] = store;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  cf = 0;
  v11 = 0;
  v12 = 0;
  if (!__SCDynamicStoreNormalize(v18, 1))
  {
    goto LABEL_11;
  }

  if (!_SCSerializeString(key, &v17, &v16, &v15))
  {
    goto LABEL_9;
  }

  if (!_SCSerialize(value, &cf, &v13, &v12))
  {
    CFRelease(v17);
LABEL_9:
    v8 = 1001;
LABEL_10:
    _SCErrorSet(v8);
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v5 = v18[0];
  do
  {
    v6 = configadd(*(v5 + 40), v16, v15, v13, v12, &v11 + 1, &v11);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v18[0], v6, &v11, "SCDynamicStoreAddValue configadd()"));
  CFRelease(v17);
  CFRelease(cf);
  v7 = 1;
  v8 = __SCDynamicStoreMapInternalStatus(v11, 1);
  LODWORD(v11) = v8;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

Boolean SCDynamicStoreNotifyValue(SCDynamicStoreRef store, CFStringRef key)
{
  v14[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v14[0] = store;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (!__SCDynamicStoreNormalize(v14, 1))
  {
    goto LABEL_14;
  }

  v3 = v14[0];
  if (!*(v14[0] + 200))
  {
    if (_SCSerializeString(key, &cf, &v12, &v11))
    {
      do
      {
        v6 = confignotify(*(v3 + 40), v12, v11, &v10);
      }

      while (__SCDynamicStoreCheckRetryAndHandleError(v14[0], v6, &v10, "SCDynamicStoreNotifyValue confignotify()"));
      CFRelease(cf);
      v5 = 1;
      v7 = __SCDynamicStoreMapInternalStatus(v10, 1);
      v10 = v7;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 1001;
    }

    _SCErrorSet(v7);
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  Mutable = *(v14[0] + 232);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(v3 + 232) = Mutable;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  if (!CFArrayContainsValue(Mutable, v15, key))
  {
    CFArrayAppendValue(*(v3 + 232), key);
  }

  v5 = 1;
LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t SCDynamicStoreAddWatchedKey(uint64_t a1, __CFString *a2, int a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v15[0] = a1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = __SCDynamicStoreNormalize(v15, 0);
  if (!result)
  {
    goto LABEL_11;
  }

  if (!_SCSerializeString(a2, &cf, &v13, &v12))
  {
    v8 = 1001;
LABEL_8:
    _SCErrorSet(v8);
    result = 0;
    goto LABEL_11;
  }

  do
  {
    v7 = notifyadd(*(a1 + 40), v13, v12, a3, &v11);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v15[0], v7, &v11, "SCDynamicStoreAddWatchedKey notifyadd()"));
  CFRelease(cf);
  v8 = v11;
  if (v11)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    v9 = (a1 + 176);
  }

  else
  {
    v9 = (a1 + 168);
  }

  addKey(v9, a2);
  result = 1;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void addKey(__CFArray **a1, void *value)
{
  v6 = *MEMORY[0x1E69E9840];
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *a1 = Mutable;
  }

  v5 = *MEMORY[0x1E69E9840];

  CFArrayAppendValue(Mutable, value);
}

uint64_t SCDynamicStoreRemoveWatchedKey(uint64_t a1, const __CFString *a2, int a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v15[0] = a1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = __SCDynamicStoreNormalize(v15, 0);
  if (!result)
  {
    goto LABEL_11;
  }

  if (!_SCSerializeString(a2, &cf, &v13, &v12))
  {
    v8 = 1001;
LABEL_8:
    _SCErrorSet(v8);
    result = 0;
    goto LABEL_11;
  }

  do
  {
    v7 = notifyremove(*(a1 + 40), v13, v12, a3, &v11);
  }

  while (__SCDynamicStoreCheckRetryAndHandleError(v15[0], v7, &v11, "SCDynamicStoreRemoveWatchedKey notifyremove()"));
  CFRelease(cf);
  v8 = v11;
  if (v11)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    v9 = *(a1 + 176);
  }

  else
  {
    v9 = *(a1 + 168);
  }

  removeKey(v9, a2);
  result = 1;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void removeKey(const __CFArray *a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10.length = CFArrayGetCount(a1);
    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v10, a2);
    v5 = *MEMORY[0x1E69E9840];

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t SCDynamicStoreNotifyWait(mach_port_context_t a1)
{
  guard[1] = *MEMORY[0x1E69E9840];
  guard[0] = a1;
  v9 = 0;
  result = __SCDynamicStoreNormalize(guard, 0);
  if (result)
  {
    if (*(a1 + 48))
    {
      v4 = 2003;
    }

    else
    {
      result = __SCDynamicStoreAddNotificationPort(guard[0], v3);
      if (!result)
      {
        goto LABEL_5;
      }

      v6 = result;
      *(a1 + 48) = 1;
      v7 = waitForMachMessage(result);
      *(a1 + 48) = 0;
      if (v7 != 70)
      {
        if (v7 != -1)
        {
          v8 = notifycancel(*(a1 + 40), &v9);
          if (__SCDynamicStoreCheckRetryAndHandleError(guard[0], v8, &v9, "SCDynamicStoreNotifyWait notifycancel()"))
          {
            v9 = 0;
          }

          __SCDynamicStoreRemoveNotificationPort(guard[0], v6);
          v4 = v9;
          if (!v9)
          {
            result = 1;
            goto LABEL_5;
          }

          goto LABEL_4;
        }

        mach_port_mod_refs(*MEMORY[0x1E69E9A60], v6, 1u, -1);
      }

      v4 = 2002;
    }

LABEL_4:
    _SCErrorSet(v4);
    result = 0;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t waitForMachMessage(mach_port_name_t rcv_name)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(msg, 0, sizeof(msg));
  v1 = mach_msg(msg, 2, 0, 0x64u, rcv_name, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = __log_SCDynamicStore();
    v4 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &msg[-((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = mach_error_string(v2);
      *v15 = 136315138;
      *(v15 + 4) = v16;
      __SC_log_send(5, v3, v4, v13);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *&msg[20];
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCDynamicStoreRemoveNotificationPort(mach_port_context_t guard, mach_port_name_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9A60];
  v4 = *MEMORY[0x1E69E9840];

  return mach_port_destruct(v3, a2, 0, guard);
}

__CFString *rlsCopyDescription(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCDynamicStore RLS> {");
  CFStringAppendFormat(Mutable, 0, @"store = %p", a1);
  if (*(a1 + 48) == 4)
  {
    CFStringAppendFormat(Mutable, 0, @", callout = %p", *(a1 + 72));
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = *(a1 + 112);
      if (v4)
      {
        v5 = v4();
        if (v5)
        {
LABEL_8:
          v6 = v5;
          CFStringAppendFormat(Mutable, 0, @", context = %@", v5);
          CFRelease(v6);
          goto LABEL_9;
        }

        v3 = *(a1 + 88);
      }
    }

    v5 = CFStringCreateWithFormat(0, 0, @"<SCDynamicStore context %p>", v3);
    if (!v5)
    {
      v5 = CFRetain(@"<no description>");
    }

    goto LABEL_8;
  }

LABEL_9:
  CFStringAppendFormat(Mutable, 0, @"}");
  v7 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void rlsCancel(mach_port_context_t a1, void *a2, const __CFString *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 128) || !_SC_unschedule(a1, a2, a3, *(a1 + 56), 0))
  {
LABEL_9:
    v17 = 0;
    v8 = *(a1 + 120);
    if (v8)
    {
      Port = CFMachPortGetPort(v8);
    }

    else
    {
      Port = 0;
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 64) = 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 56) = 0;
    }

    v12 = *(a1 + 128);
    if (v12)
    {
      CFRunLoopSourceInvalidate(v12);
      CFRelease(*(a1 + 128));
      *(a1 + 128) = 0;
    }

    v13 = *(a1 + 120);
    if (v13)
    {
      CFMachPortInvalidate(v13);
      CFRelease(*(a1 + 120));
      *(a1 + 120) = 0;
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = notifycancel(v14, &v17);
      if (__SCDynamicStoreCheckRetryAndHandleError(a1, v15, &v17, "rlsCancel notifycancel()"))
      {
        v17 = 0;
      }
    }

    if (Port)
    {
      mach_port_destruct(*MEMORY[0x1E69E9A60], Port, 0, a1);
    }

    if (!v17)
    {
      *(a1 + 48) = 0;
    }

    goto LABEL_27;
  }

  if (!CFArrayGetCount(*(a1 + 56)))
  {
    CFRunLoopRemoveSource(a2, *(a1 + 128), a3);
    goto LABEL_9;
  }

  if (_SC_isScheduled(a1, a2, a3, *(a1 + 56)))
  {
LABEL_27:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *(a1 + 128);
  v7 = *MEMORY[0x1E69E9840];

  CFRunLoopRemoveSource(a2, v6, a3);
}

CFStringRef notifyMPCopyDescription(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(0, 0, @"<SCDynamicStore notification MP> {store = %p}", a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCDynamicStoreNotifyFileDescriptor(uint64_t a1, int a2, _DWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = a1;
  *v29 = -1;
  v27 = 0;
  result = __SCDynamicStoreNormalize(&v28, 0);
  if (result)
  {
    if (*(a1 + 48))
    {
      _SCErrorSet(2003);
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

    if (pipe(v29) == -1)
    {
      v9 = __error();
      _SCErrorSet(*v9);
      v10 = __log_SCDynamicStore();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
LABEL_12:
        v13 = _os_log_pack_size();
        v21 = &v27 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = *__error();
        v23 = _os_log_pack_fill();
        v24 = __error();
        v25 = strerror(*v24);
        *v23 = 136315138;
        *(v23 + 4) = v25;
        __SC_log_send(3, v10, v11, v21);
      }
    }

    else
    {
      HIDWORD(v27) = 0;
      if ((fileport_makeport() & 0x80000000) == 0)
      {
        do
        {
          v7 = notifyviafd(*(a1 + 40), SHIDWORD(v27), a2, &v27);
        }

        while (__SCDynamicStoreCheckRetryAndHandleError(v28, v7, &v27, "SCDynamicStoreNotifyFileDescriptor notifyviafd()"));
        if (v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v27;
          if (!v27)
          {
            close(v29[1]);
            *a3 = v29[0];
            *(a1 + 48) = 3;
            result = 1;
            goto LABEL_20;
          }
        }

        _SCErrorSet(v8);
        goto LABEL_15;
      }

      v12 = __error();
      _SCErrorSet(*v12);
      v10 = __log_SCDynamicStore();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    if (v29[0] != -1)
    {
      close(v29[0]);
    }

    if (v29[1] != -1)
    {
      close(v29[1]);
    }

    goto LABEL_19;
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

_xpc_connection_s *CategoryManagerConnectionCreate(dispatch_queue_t targetq, uint64_t a2)
{
  handler[6] = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.NetworkCategoryManager", targetq, 2uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __CategoryManagerConnectionCreate_block_invoke;
  handler[3] = &unk_1E79BD568;
  handler[4] = a2;
  handler[5] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_activate(mach_service);
  v4 = *MEMORY[0x1E69E9840];
  return mach_service;
}

uint64_t __CategoryManagerConnectionCreate_block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  CategoryManagerHandleResponse(a2, 1, &v5);
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 40), v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

size_t CategoryManagerHandleResponse(void *a1, int a2, int *a3)
{
  v91[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1B26F5920]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    if (a2)
    {
      result = xpc_dictionary_get_count(a1);
      if (!result)
      {
        v51 = 3;
        goto LABEL_31;
      }

      v23 = _SC_LOG_DEFAULT();
      v24 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v23, v24);
      if (result)
      {
        v25 = _os_log_pack_size();
        v33 = v91 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = *__error();
        v35 = _os_log_pack_fill();
        *v35 = 136315138;
        *(v35 + 4) = "CategoryManagerHandleResponse";
        v22 = v23;
        v36 = v24;
        v37 = v33;
LABEL_28:
        __SC_log_send(5, v22, v36, v37);
        v51 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      if (a1 == MEMORY[0x1E69E9E20])
      {
        int64 = 2;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(a1, "Error");
        if (!int64)
        {
          v51 = 0;
          result = 1;
          goto LABEL_31;
        }
      }

      v39 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v39, v9);
      if (result)
      {
        v79 = _os_log_pack_size();
        v19 = v91 - ((MEMORY[0x1EEE9AC00](v79, v80, v81, v82, v83, v84, v85, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
        v87 = *__error();
        v88 = _os_log_pack_fill();
        v89 = strerror(int64);
        *v88 = 136315650;
        *(v88 + 4) = "CategoryManagerHandleResponse";
        *(v88 + 12) = 2080;
        *(v88 + 14) = v89;
        *(v88 + 22) = 1024;
        *(v88 + 24) = int64;
        goto LABEL_26;
      }
    }

LABEL_30:
    v51 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  if (v6 != MEMORY[0x1E69E9E98])
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v8, v9);
    if (result)
    {
      v11 = _os_log_pack_size();
      v19 = v91 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136315394;
      *(v21 + 4) = "CategoryManagerHandleResponse";
      *(v21 + 12) = 2048;
      *(v21 + 14) = v7;
      v22 = v8;
LABEL_27:
      v36 = v9;
      v37 = v19;
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (a1 == MEMORY[0x1E69E9E18])
  {
    v52 = _SC_LOG_DEFAULT();
    v53 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v52, v53);
    if (result)
    {
      v54 = _os_log_pack_size();
      v62 = v91 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      v63 = *__error();
      v64 = _os_log_pack_fill();
      *v64 = 136315138;
      *(v64 + 4) = "CategoryManagerHandleResponse";
      __SC_log_send(5, v52, v53, v62);
      v51 = 2;
LABEL_29:
      result = 0;
      goto LABEL_31;
    }

    v51 = 2;
  }

  else
  {
    if (a1 != MEMORY[0x1E69E9E20])
    {
      string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
      v39 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v39, v9);
      if (result)
      {
        v40 = _os_log_pack_size();
        v19 = v91 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        *v49 = 136315394;
        *(v49 + 4) = "CategoryManagerHandleResponse";
        *(v49 + 12) = 2080;
        *(v49 + 14) = string;
LABEL_26:
        v22 = v39;
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v65 = _SC_LOG_DEFAULT();
    v66 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v65, v66);
    if (result)
    {
      v67 = _os_log_pack_size();
      v75 = v91 - ((MEMORY[0x1EEE9AC00](v67, v68, v69, v70, v71, v72, v73, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
      v76 = *__error();
      v77 = _os_log_pack_fill();
      v78 = "[async]";
      if (!a2)
      {
        v78 = "";
      }

      *v77 = 136315394;
      *(v77 + 4) = "CategoryManagerHandleResponse";
      *(v77 + 12) = 2080;
      *(v77 + 14) = v78;
      __SC_log_send(5, v65, v66, v75);
      v51 = 1;
      goto LABEL_29;
    }

    v51 = 1;
  }

LABEL_31:
  if (a3)
  {
    *a3 = v51;
  }

  v90 = *MEMORY[0x1E69E9840];
  return result;
}

int64_t CategoryManagerConnectionRegister(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, unsigned int a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = register_request_create(a2, a3, a4);
  v6 = CategoryManagerSendRequest(a1, v5);
  xpc_release(v5);
  if (v6)
  {
    if (v6 == MEMORY[0x1E69E9E20])
    {
      int64 = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v6, "Error");
      if (!int64)
      {
LABEL_11:
        xpc_release(v6);
        goto LABEL_12;
      }
    }

    v21 = _SC_LOG_DEFAULT();
    v22 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v21, v22))
    {
      v23 = _os_log_pack_size();
      v31 = v37 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = strerror(int64);
      *v33 = 136315650;
      *(v33 + 4) = "CategoryManagerConnectionRegister";
      *(v33 + 12) = 2080;
      *(v33 + 14) = v34;
      *(v33 + 22) = 1024;
      *(v33 + 24) = int64;
      __SC_log_send(5, v21, v22, v31);
    }

    goto LABEL_11;
  }

  v8 = _SC_LOG_DEFAULT();
  v9 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v8, v9))
  {
    v10 = _os_log_pack_size();
    v18 = v37 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "CategoryManagerConnectionRegister";
    __SC_log_send(5, v8, v9, v18);
  }

  int64 = 22;
LABEL_12:
  v35 = *MEMORY[0x1E69E9840];
  return int64;
}

xpc_object_t register_request_create(const __CFString *a1, const __CFString *a2, unsigned int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "Type", 1);
  v7 = getprogname();
  if (v7)
  {
    xpc_dictionary_set_string(v6, "ProcessName", v7);
  }

  if (!a1)
  {
    xpc_dictionary_set_string(v6, "Category", 0);
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v8 = _SC_cfstring_to_cstring(a1, 0, 0, 0x8000100u);
  xpc_dictionary_set_string(v6, "Category", v8);
  if (v8)
  {
    CFAllocatorDeallocate(0, v8);
  }

  if (a2)
  {
LABEL_9:
    v9 = _SC_cfstring_to_cstring(a2, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v6, "InterfaceName", v9);
    if (v9)
    {
      CFAllocatorDeallocate(0, v9);
    }
  }

LABEL_11:
  xpc_dictionary_set_int64(v6, "Flags", a3);
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

xpc_object_t CategoryManagerSendRequest(_xpc_connection_s *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  HIDWORD(v21) = 0;
  v4 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (v4)
  {
    v5 = v4;
    while (!CategoryManagerHandleResponse(v5, 0, &v21 + 1) && HIDWORD(v21) == 2)
    {
      xpc_release(v5);
      HIDWORD(v21) = 0;
      v5 = xpc_connection_send_message_with_reply_sync(a1, a2);
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
      v8 = _os_log_pack_size();
      v16 = &v21 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 136315138;
      *(v18 + 4) = "CategoryManagerSendRequest";
      __SC_log_send(5, v6, v7, v16);
    }

    v5 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

void CategoryManagerConnectionSynchronize(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, unsigned int a4, const __CFString *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = register_request_create(a2, a3, a4);
  xpc_connection_send_message(a1, v7);
  xpc_release(v7);
  v8 = activate_request_create(a5);
  xpc_connection_send_message(a1, v8);
  v9 = *MEMORY[0x1E69E9840];

  xpc_release(v8);
}

xpc_object_t activate_request_create(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "Type", 2);
  if (a1)
  {
    v3 = _SC_cfstring_to_cstring(a1, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v2, "Value", v3);
    if (v3)
    {
      CFAllocatorDeallocate(0, v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

int64_t CategoryManagerConnectionActivateValue(_xpc_connection_s *a1, const __CFString *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = activate_request_create(a2);
  v4 = CategoryManagerSendRequest(a1, v3);
  xpc_release(v3);
  if (v4)
  {
    if (v4 == MEMORY[0x1E69E9E20])
    {
      int64 = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v4, "Error");
      if (!int64)
      {
LABEL_11:
        xpc_release(v4);
        goto LABEL_12;
      }
    }

    v19 = _SC_LOG_DEFAULT();
    v20 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v19, v20))
    {
      v21 = _os_log_pack_size();
      v29 = v35 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      v32 = strerror(int64);
      *v31 = 136315650;
      *(v31 + 4) = "CategoryManagerConnectionActivateValue";
      *(v31 + 12) = 2080;
      *(v31 + 14) = v32;
      *(v31 + 22) = 1024;
      *(v31 + 24) = int64;
      __SC_log_send(5, v19, v20, v29);
    }

    goto LABEL_11;
  }

  v6 = _SC_LOG_DEFAULT();
  v7 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v6, v7))
  {
    v8 = _os_log_pack_size();
    v16 = v35 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "CategoryManagerConnectionActivateValue";
    __SC_log_send(5, v6, v7, v16);
  }

  int64 = 22;
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return int64;
}

CFStringRef CategoryManagerConnectionCopyActiveValue(_xpc_connection_s *a1, int *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "Type", 3);
  v5 = CategoryManagerSendRequest(a1, v4);
  xpc_release(v4);
  if (!v5)
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v7, v8))
    {
      v9 = _os_log_pack_size();
      v17 = v38 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 136315138;
      *(v19 + 4) = "CategoryManagerConnectionCopyActiveValue";
      __SC_log_send(5, v7, v8, v17);
      int64 = 22;
      v20 = 0;
    }

    else
    {
      v20 = 0;
      int64 = 22;
    }

    goto LABEL_14;
  }

  if (v5 == MEMORY[0x1E69E9E20])
  {
    int64 = 2;
LABEL_8:
    v21 = _SC_LOG_DEFAULT();
    v22 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v21, v22))
    {
      v23 = _os_log_pack_size();
      v31 = v38 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = strerror(int64);
      *v33 = 136315650;
      *(v33 + 4) = "CategoryManagerConnectionCopyActiveValue";
      *(v33 + 12) = 2080;
      *(v33 + 14) = v34;
      *(v33 + 22) = 1024;
      *(v33 + 24) = int64;
      __SC_log_send(5, v21, v22, v31);
    }

    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v5, "Error");
  if (int64)
  {
    goto LABEL_8;
  }

LABEL_10:
  string = xpc_dictionary_get_string(v5, "ActiveValue");
  if (string)
  {
    v20 = CFStringCreateWithCString(0, string, 0x8000100u);
  }

  else
  {
    v20 = 0;
  }

  xpc_release(v5);
LABEL_14:
  *a2 = int64;
  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

CFStringRef CategoryManagerConnectionCopyActiveValueNoSession(_xpc_connection_s *a1, const __CFString *a2, const __CFString *a3, int *a4)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "Type", 3);
  if (a2)
  {
    v9 = _SC_cfstring_to_cstring(a2, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v8, "Category", v9);
    if (v9)
    {
      CFAllocatorDeallocate(0, v9);
    }
  }

  if (a3)
  {
    v10 = _SC_cfstring_to_cstring(a3, 0, 0, 0x8000100u);
    xpc_dictionary_set_string(v8, "InterfaceName", v10);
    if (v10)
    {
      CFAllocatorDeallocate(0, v10);
    }
  }

  v11 = CategoryManagerSendRequest(a1, v8);
  xpc_release(v8);
  if (!v11)
  {
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      v15 = _os_log_pack_size();
      v23 = v44 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 136315138;
      *(v25 + 4) = "CategoryManagerConnectionCopyActiveValueNoSession";
      __SC_log_send(5, v13, v14, v23);
      int64 = 22;
      v26 = 0;
    }

    else
    {
      v26 = 0;
      int64 = 22;
    }

    goto LABEL_20;
  }

  if (v11 == MEMORY[0x1E69E9E20])
  {
    int64 = 2;
LABEL_14:
    v27 = _SC_LOG_DEFAULT();
    v28 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v27, v28))
    {
      v29 = _os_log_pack_size();
      v37 = v44 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = *__error();
      v39 = _os_log_pack_fill();
      v40 = strerror(int64);
      *v39 = 136315650;
      *(v39 + 4) = "CategoryManagerConnectionCopyActiveValueNoSession";
      *(v39 + 12) = 2080;
      *(v39 + 14) = v40;
      *(v39 + 22) = 1024;
      *(v39 + 24) = int64;
      __SC_log_send(5, v27, v28, v37);
    }

    goto LABEL_16;
  }

  int64 = xpc_dictionary_get_int64(v11, "Error");
  if (int64)
  {
    goto LABEL_14;
  }

LABEL_16:
  string = xpc_dictionary_get_string(v11, "ActiveValue");
  if (string)
  {
    v26 = CFStringCreateWithCString(0, string, 0x8000100u);
  }

  else
  {
    v26 = 0;
  }

  xpc_release(v11);
LABEL_20:
  *a4 = int64;
  v42 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t SCDynamicStoreSnapshot(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v5 = 0;
  result = __SCDynamicStoreNormalize(v6, 1);
  if (result)
  {
    v2 = v6[0];
    do
    {
      v3 = snapshot(*(v2 + 40), &v5);
    }

    while (__SCDynamicStoreCheckRetryAndHandleError(v6[0], v3, &v5, "SCDynamicStoreSnapshot snapshot()"));
    if (v5)
    {
      _SCErrorSet(v5);
      result = 0;
    }

    else
    {
      result = 1;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCPreferencesGetNetworkConfigurationFlags(uint64_t result)
{
  if (result)
  {
    result = *(result + 308);
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCPreferencesSetNetworkConfigurationFlags(uint64_t result, int a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    *(result + 308) = a2;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __SCPreferencesIsEmpty(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __SCPreferencesIsEmpty_cold_1();
  }

  __SCPreferencesAccess(a1);
  v2 = *(a1 + 280);
  if (v2)
  {
    result = CFDictionaryGetCount(v2) == 0;
  }

  else
  {
    result = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFData *__SCPreferencesPrefsSize(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = *(a1 + 144);
  if (result)
  {
    result = *(CFDataGetBytePtr(result) + 4);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCDynamicStoreKeyCreatePreferences(const __CFAllocator *a1, const __CFString *a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return _SCPNotificationKey(a1, a2, a3);
}

uint64_t __SCPreferencesCreate_helper(uint64_t a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v16 = 0;
  valuePtr = getpid();
  v2 = (a1 + 320);
  if (!_SCHelperOpen(*(a1 + 312), (a1 + 320)))
  {
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  v5 = *(a1 + 88);
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"prefsID", v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    CFDictionarySetValue(v4, @"options", v6);
  }

  CFDictionarySetValue(v4, @"name", *(a1 + 80));
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v4, @"PID", v7);
  CFRelease(v7);
  v8 = getprogname();
  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  CFDictionarySetValue(v4, @"PROC_NAME", v9);
  CFRelease(v9);
  v10 = _SCSerialize(v4, cf, 0, 0);
  CFRelease(v4);
  if (!cf[0] || !v10)
  {
    goto LABEL_20;
  }

  v11 = _SCHelperExec(*v2, 100, cf[0], &v16, 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!v11)
  {
LABEL_20:
    if (*v2)
    {
      _SCHelperClose(v2);
    }

    v12 = 1003;
    v16 = 1003;
    goto LABEL_16;
  }

  v12 = v16;
  if (v16)
  {
LABEL_16:
    _SCErrorSet(v12);
    result = 0;
    goto LABEL_17;
  }

  result = 1;
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void log_open_error(uint64_t a1, int a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (log_open_error_once != -1)
  {
    log_open_error_cold_1();
  }

  getpid();
  v3 = sandbox_check();
  v4 = __log_SCPreferences_log;
  if (v3 == 1)
  {
    if (!__log_SCPreferences_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v4;
    }

    v21 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v4, v21))
    {
      goto LABEL_19;
    }

    v22 = _os_log_pack_size();
    v30 = v45 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *__error();
    *_os_log_pack_fill() = 0;
LABEL_17:
    v18 = v4;
    v19 = v21;
    v20 = v30;
    goto LABEL_18;
  }

  if (v3)
  {
    if (!__log_SCPreferences_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v4;
    }

    v21 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v4, v21))
    {
      goto LABEL_19;
    }

    v32 = _os_log_pack_size();
    v30 = v45 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *__error();
    v41 = _os_log_pack_fill();
    v42 = __error();
    v43 = strerror(*v42);
    *v41 = 136315138;
    *(v41 + 4) = v43;
    goto LABEL_17;
  }

  if (!__log_SCPreferences_log)
  {
    v4 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
    __log_SCPreferences_log = v4;
  }

  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = v45 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = strerror(a2);
    *v16 = 136315138;
    *(v16 + 4) = v17;
    v18 = v4;
    v19 = v5;
    v20 = v14;
LABEL_18:
    __SC_log_send(5, v18, v19, v20);
  }

LABEL_19:
  v44 = *MEMORY[0x1E69E9840];
}

void *SCPreferencesCreateCompanion(uint64_t a1, const __CFString *a2)
{
  value[1] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  value[0] = 0;
  if (a2)
  {
    v48.length = CFStringGetLength(a2);
    v48.location = 0;
    if (CFStringFindWithOptions(a2, @"/", v48, 4uLL, 0))
    {
      goto LABEL_13;
    }
  }

  else
  {
    a2 = @"preferences.plist";
  }

  v5 = *(a1 + 88);
  if (!v5)
  {
    if (!CFEqual(a2, @"preferences.plist"))
    {
      v11 = v4;
      goto LABEL_16;
    }

LABEL_13:
    _SCErrorSet(1002);
    v12 = 0;
    goto LABEL_14;
  }

  Length = CFStringGetLength(v5);
  result.location = 0;
  result.length = 0;
  v49.location = 0;
  v49.length = Length;
  if (!CFStringFindWithOptions(*(a1 + 88), @"/", v49, 4uLL, &result))
  {
    if (CFEqual(*(a1 + 88), a2))
    {
      goto LABEL_13;
    }

    v11 = 0;
LABEL_16:
    MutableCopy = CFStringCreateMutableCopy(v11, 0, a2);
    goto LABEL_17;
  }

  v7.location = result.location + 1;
  result.location = v7.location;
  if (Length <= v7.location)
  {
    goto LABEL_13;
  }

  result.length = Length - v7.location;
  v7.length = Length - v7.location;
  v8 = CFStringCreateWithSubstring(v4, *(a1 + 88), v7);
  v9 = CFEqual(v8, a2);
  CFRelease(v8);
  if (v9)
  {
    goto LABEL_13;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, *(a1 + 88));
  CFStringReplace(MutableCopy, result, a2);
LABEL_17:
  if (!MutableCopy)
  {
    SCPreferencesCreateCompanion_cold_1();
  }

  pthread_mutex_lock((a1 + 16));
  v14 = *(a1 + 296);
  if (v14 && CFDictionaryGetValueIfPresent(v14, MutableCopy, value) && value[0])
  {
    v15 = __log_SCPreferences_log;
    if (!__log_SCPreferences_log)
    {
      v15 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
      __log_SCPreferences_log = v15;
    }

    v16 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = &result - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = value[0];
      *v27 = 138412290;
      *(v27 + 4) = v28;
      __SC_log_send(7, v15, v16, v25);
    }

    CFRetain(value[0]);
  }

  else
  {
    v29 = __SCPreferencesCreate(v4, *(a1 + 80), MutableCopy, *(a1 + 312), *(a1 + 96));
    value[0] = v29;
    if (v29)
    {
      v30 = v29;
      v31 = __log_SCPreferences_log;
      if (!__log_SCPreferences_log)
      {
        v31 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
        __log_SCPreferences_log = v31;
      }

      v32 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v31, v32))
      {
        v33 = _os_log_pack_size();
        v41 = &result - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = *__error();
        v43 = _os_log_pack_fill();
        v44 = value[0];
        *v43 = 138412290;
        *(v43 + 4) = v44;
        __SC_log_send(7, v31, v32, v41);
      }

      v30[36] = CFRetain(a1);
      Mutable = *(a1 + 296);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
        *(a1 + 296) = Mutable;
      }

      CFDictionarySetValue(Mutable, MutableCopy, value[0]);
    }
  }

  pthread_mutex_unlock((a1 + 16));
  CFRelease(MutableCopy);
  v12 = value[0];
LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeID SCPreferencesGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCPreferencesInitialize_initialized != -1)
  {
    __SCPreferencesCreate_cold_1();
  }

  result = __kSCPreferencesTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void prefsNotify(int a1, CFArrayRef theArray, uint64_t a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      LODWORD(v8) = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (CFEqual(ValueAtIndex, *(a3 + 184)))
        {
          v8 = v8 | 1;
        }

        else if (CFEqual(ValueAtIndex, *(a3 + 192)))
        {
          v8 = v8 | 2;
        }

        else
        {
          v8 = v8;
        }

        ++v7;
      }

      while (v6 != v7);
      if (v8)
      {
        pthread_mutex_lock((a3 + 16));
        v10 = *(a3 + 216);
        v12 = *(a3 + 232);
        v11 = *(a3 + 240);
        if (v11)
        {
          v12 = v11(*(a3 + 232));
          v13 = *(a3 + 248);
        }

        else
        {
          v13 = 0;
        }

        pthread_mutex_unlock((a3 + 16));
        if (v10)
        {
          v14 = __log_SCPreferences_log;
          if (!__log_SCPreferences_log)
          {
            v14 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
            __log_SCPreferences_log = v14;
          }

          v15 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v14, v15))
          {
            v16 = _os_log_pack_size();
            v24 = v31 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
            v25 = *__error();
            v26 = _os_log_pack_fill();
            v27 = "commit";
            v28 = "";
            if ((v8 & 1) == 0)
            {
              v27 = "";
            }

            v29 = ", ";
            if ((~v8 & 3) != 0)
            {
              v29 = "";
            }

            *v26 = 136315650;
            *(v26 + 4) = v27;
            *(v26 + 12) = 2080;
            *(v26 + 14) = v29;
            if ((v8 & 2) != 0)
            {
              v28 = "apply";
            }

            *(v26 + 22) = 2080;
            *(v26 + 24) = v28;
            __SC_log_send(7, v14, v15, v24);
          }

          v10(a3, v8, v12);
        }

        if (v13)
        {
          v13(v12);
        }
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __SCPreferencesUpdateLockedState(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUpdateLockedState_once != -1)
  {
    __SCPreferencesUpdateLockedState_cold_1();
  }

  *(a1 + 112) = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____SCPreferencesUpdateLockedState_block_invoke_41;
  block[3] = &__block_descriptor_tmp_42;
  v6 = a2;
  block[4] = a1;
  dispatch_sync(__SCPreferencesUpdateLockedState_lockedQueue, block);
  v4 = *MEMORY[0x1E69E9840];
}

void appendLockedPreferences(int a1, uint64_t a2, __CFString *theString)
{
  v8 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  v6 = "";
  if (Length > 0)
  {
    v6 = "\n";
  }

  CFStringAppendFormat(theString, 0, @"%s%@", v6, a2);
  v7 = *MEMORY[0x1E69E9840];
}

Boolean SCPreferencesUnscheduleFromRunLoop(SCPreferencesRef prefs, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCPreferencesInitialize_initialized != -1)
  {
    __SCPreferencesCreate_cold_1();
    if (prefs)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!prefs)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCPreferencesTypeID;
  v7 = CFGetTypeID(prefs);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69E9840];

  return __SCPreferencesUnscheduleFromRunLoop(prefs, runLoop, runLoopMode);
}

void __log_open_error_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  log_open_error_sb_type = 1;
  if (_SC_isAppleInternal_once_1 != -1)
  {
    __log_open_error_block_invoke_cold_1();
  }

  if (!_SC_isAppleInternal_isInternal_1)
  {
    log_open_error_sb_type |= *MEMORY[0x1E69E9BD0];
  }

  v0 = *MEMORY[0x1E69E9840];
}

__CFString *__SCPreferencesCopyDescription(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCPreferences %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"name = %@", *(a1 + 80));
  v4 = *(a1 + 88);
  if (!v4)
  {
    v4 = @"[default]";
  }

  CFStringAppendFormat(Mutable, 0, @", id = %@", v4);
  CFStringAppendFormat(Mutable, 0, @", path = %s", *(a1 + 104));
  if (*(a1 + 304))
  {
    CFStringAppendFormat(Mutable, 0, @", accessed");
  }

  if (*(a1 + 305))
  {
    CFStringAppendFormat(Mutable, 0, @", changed");
  }

  if (*(a1 + 112))
  {
    CFStringAppendFormat(Mutable, 0, @", locked");
  }

  if (*(a1 + 320))
  {
    CFStringAppendFormat(Mutable, 0, @", helper port = 0x%x", *(a1 + 320));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  v5 = *MEMORY[0x1E69E9840];
  return Mutable;
}

Boolean SCPreferencesLock(SCPreferencesRef prefs, Boolean wait)
{
  value[4] = *MEMORY[0x1E69E9840];
  v91 = 0;
  v92 = 0;
  if (!prefs)
  {
    v3 = 3001;
    goto LABEL_5;
  }

  if (*(prefs + 112))
  {
    v3 = 1006;
    goto LABEL_5;
  }

  v7 = wait;
  memset(&v95, 0, sizeof(v95));
  memset(&v94, 0, sizeof(v94));
  if (!*(prefs + 39))
  {
    if (!*(prefs + 306))
    {
      v3 = 1003;
      goto LABEL_5;
    }

    value[0] = 0;
    v11 = *(prefs + 12);
    if (!v11 || !CFDictionaryGetValueIfPresent(v11, @"avoid-deadlock", value) || (v12 = value[0], TypeID = CFBooleanGetTypeID(), !v12) || CFGetTypeID(v12) != TypeID || CFBooleanGetValue(value[0]))
    {
      if (__SCPreferencesUsingDefaultPrefs(prefs) && avoid_SCNetworkConfiguration_deadlock_once != -1)
      {
        SCPreferencesLock_cold_1();
      }
    }

    pthread_mutex_lock((prefs + 16));
    __SCPreferencesAddSessionKeys(prefs);
    if (!*(prefs + 15))
    {
      v14 = *(prefs + 13);
      v15 = strlen(v14);
      v16 = MEMORY[0x1B26F3AA0](0, v15 + 6, 2265605572, 0);
      *(prefs + 15) = v16;
      snprintf(v16, v15 + 6, "%s-lock", v14);
    }

    v93.tv_sec = 0;
    *&v93.tv_usec = 0;
    gettimeofday(&v93, 0);
    if (*(prefs + 22))
    {
LABEL_30:
      if (!lockWithSCDynamicStore(prefs, v7))
      {
        v56 = 1001;
        goto LABEL_83;
      }

LABEL_31:
      gettimeofday(prefs + 8, 0);
      v18 = *(prefs + 16) - v93.tv_sec;
      v91 = v18;
      v19 = *(prefs + 34) - v93.tv_usec;
      LODWORD(v92) = v19;
      if (v19 < 0)
      {
        v91 = --v18;
        LODWORD(v92) = v19 + 1000000;
      }

      if (!*(prefs + 304))
      {
        goto LABEL_38;
      }

      if (stat(*(prefs + 13), &v95) == -1)
      {
        if (*__error() != 2)
        {
          v57 = __log_SCPreferences();
          v58 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v57, v58))
          {
            v59 = _os_log_pack_size();
            v67 = &v90 - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64, v65, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
            v68 = *__error();
            v69 = _os_log_pack_fill();
            v70 = __error();
            v71 = strerror(*v70);
            *v69 = 136315138;
            *(v69 + 4) = v71;
            __SC_log_send(6, v57, v58, v67);
          }

          goto LABEL_73;
        }

        memset(&v95, 0, sizeof(v95));
      }

      v20 = __SCPSignatureFromStatbuf(&v95.st_dev);
      v21 = CFEqual(*(prefs + 18), v20);
      CFRelease(v20);
      if (v21)
      {
LABEL_38:
        if (v18 >= 1)
        {
          reportDelay(prefs, &v91, 0);
        }

        v22 = __log_SCPreferences();
        v23 = _SC_syslog_os_log_mapping(7);
        if (__SC_log_enabled(7, v22, v23))
        {
          v24 = _os_log_pack_size();
          v32 = &v90 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
          v33 = *__error();
          v34 = _os_log_pack_fill();
          v35 = *(prefs + 13);
          *v34 = 136315138;
          *(v34 + 4) = v35;
          __SC_log_send(7, v22, v23, v32);
        }

        v4 = 1;
        __SCPreferencesUpdateLockedState(prefs, 1);
        pthread_mutex_unlock((prefs + 16));
        goto LABEL_7;
      }

LABEL_73:
      unlink(*(prefs + 15));
      if (v18 >= 1)
      {
        reportDelay(prefs, &v91, 1);
      }

      v56 = 3005;
      goto LABEL_83;
    }

    if (v7)
    {
      v36 = 545;
    }

    else
    {
      v36 = 549;
    }

    *&v17 = 136315138;
    v90 = v17;
    while (1)
    {
      v37 = open(*(prefs + 15), v36, 420);
      *(prefs + 29) = v37;
      if (v37 != -1)
      {
        break;
      }

      v39 = *__error();
      if (v39 <= 34)
      {
        if (v39 != 2)
        {
          goto LABEL_80;
        }

        v40 = *(prefs + 11);
        if (v40 && CFStringHasPrefix(v40, @"/"))
        {
          goto LABEL_81;
        }

        v41 = *(prefs + 15);
        if (createParentDirectory())
        {
          v39 = *__error();
LABEL_80:
          if (v39 == 30)
          {
            goto LABEL_31;
          }

LABEL_81:
          v56 = *__error();
          v72 = __log_SCPreferences();
          v73 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v72, v73))
          {
            v74 = _os_log_pack_size();
            v82 = &v90 - ((MEMORY[0x1EEE9AC00](v74, v75, v76, v77, v78, v79, v80, v81) + 15) & 0xFFFFFFFFFFFFFFF0);
            v83 = *__error();
            v84 = _os_log_pack_fill();
            v85 = __error();
            v86 = strerror(*v85);
            *v84 = v90;
            *(v84 + 4) = v86;
            __SC_log_send(5, v72, v73, v82);
          }

LABEL_83:
          v87 = *(prefs + 29);
          if (v87 != -1)
          {
            close(v87);
            *(prefs + 29) = -1;
          }

          pthread_mutex_unlock((prefs + 16));
          v3 = v56;
LABEL_5:
          _SCErrorSet(v3);
LABEL_6:
          v4 = 0;
          goto LABEL_7;
        }

        v42 = __log_SCPreferences();
        v43 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v42, v43))
        {
          v44 = _os_log_pack_size();
          v52 = &v90 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
          v53 = *__error();
          v54 = _os_log_pack_fill();
          v55 = *(prefs + 13);
          *v54 = v90;
          *(v54 + 4) = v55;
          __SC_log_send(6, v42, v43, v52);
        }

        goto LABEL_57;
      }

      if (v39 != 45)
      {
        if (v39 == 35)
        {
          v56 = 3002;
          goto LABEL_83;
        }

        goto LABEL_81;
      }

      if (has_O_EXLOCK(prefs))
      {
        *__error() = 45;
        goto LABEL_81;
      }

      v38 = _SCPNotificationKey(0, *(prefs + 11), 1);
      *(prefs + 22) = v38;
LABEL_58:
      if (v38)
      {
        goto LABEL_30;
      }
    }

    if (stat(*(prefs + 15), &v95) != -1 && fstat(*(prefs + 29), &v94) != -1 && v95.st_dev == v94.st_dev && v95.st_ino == v94.st_ino)
    {
      v88 = getpid();
      snprintf(value, 0x20uLL, "%d\n", v88);
      v89 = strlen(value);
      write(*(prefs + 29), value, v89);
      goto LABEL_31;
    }

    close(*(prefs + 29));
    *(prefs + 29) = -1;
LABEL_57:
    v38 = *(prefs + 22);
    goto LABEL_58;
  }

  v8 = (prefs + 320);
  v9 = *(prefs + 80);
  if (!v9)
  {
    if (!__SCPreferencesCreate_helper(prefs))
    {
      goto LABEL_6;
    }

    v9 = *v8;
  }

  LODWORD(value[0]) = 0;
  if (v7)
  {
    v10 = 103;
  }

  else
  {
    v10 = 102;
  }

  if (!_SCHelperExec(v9, v10, *(prefs + 18), value, 0))
  {
    if (*v8)
    {
      _SCHelperClose(prefs + 80);
    }

    v3 = 1003;
    LODWORD(value[0]) = 1003;
    goto LABEL_5;
  }

  v3 = value[0];
  if (LODWORD(value[0]))
  {
    goto LABEL_5;
  }

  v4 = 1;
  __SCPreferencesUpdateLockedState(prefs, 1);
LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t lockWithSCDynamicStore(uint64_t a1, int a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (!__SCPreferencesAddSession(a1))
  {
    v10 = 0;
    goto LABEL_19;
  }

  if (!SCDynamicStoreAddWatchedKey(*(a1 + 152), *(a1 + 176), 0))
  {
    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v4 = SCDynamicStoreCreate(0, *(a1 + 80), 0, 0);
  *(a1 + 160) = v4;
  if (!v4)
  {
    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
LABEL_10:
      v13 = _os_log_pack_size();
      v21 = v43 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v11, v12, v21);
    }

LABEL_11:
    v10 = 0;
    v9 = 1;
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(0, Current);
  v7 = SCDynamicStoreAddTemporaryValue(*(a1 + 160), *(a1 + 176), v6);
  CFRelease(v6);
  if (!v7)
  {
    if (!a2)
    {
      v10 = 0;
      v9 = 1;
      v8 = 3002;
      goto LABEL_12;
    }

    while (SCDynamicStoreNotifyWait(*(a1 + 152)))
    {
      v27 = SCDynamicStoreCopyNotifiedKeys(*(a1 + 152));
      if (!v27)
      {
        v31 = __log_SCPreferences();
        v32 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v31, v32))
        {
          v33 = _os_log_pack_size();
          v41 = v43 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
          v42 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v31, v32, v41);
        }

        v8 = 0;
        goto LABEL_11;
      }

      CFRelease(v27);
      v28 = CFAbsoluteTimeGetCurrent();
      v29 = CFDateCreate(0, v28);
      v30 = SCDynamicStoreAddTemporaryValue(*(a1 + 160), *(a1 + 176), v29);
      CFRelease(v29);
      if (v30)
      {
        goto LABEL_5;
      }
    }

    v8 = SCError();
    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v11, v12))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 1;
LABEL_12:
  SCDynamicStoreRemoveWatchedKey(*(a1 + 152), *(a1 + 176), 0);
  v23 = SCDynamicStoreCopyNotifiedKeys(*(a1 + 152));
  if (v23)
  {
    CFRelease(v23);
  }

  __SCPreferencesRemoveSession(a1);
  if (v9)
  {
    v24 = *(a1 + 160);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 160) = 0;
    }
  }

  if (v8)
  {
    _SCErrorSet(v8);
  }

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t createParentDirectory()
{
  v76 = *MEMORY[0x1E69E9840];
  if (__strlcpy_chk() >= 0x400 || (v2 = strrchr(v75, 47)) == 0 || v2 == v75)
  {
    *__error() = 2;
    goto LABEL_3;
  }

  v4 = v2;
  *v2 = 0;
  v5 = 0x1EB591000uLL;
  *&v3 = 136315138;
  v71 = v3;
  v6 = v75;
LABEL_8:
  v7 = *v4;
  *v4 = 0;
  while (1)
  {
    if (!mkdir(v75, 0x1EDu))
    {
      gr_gid = *(v5 + 1568);
      if (gr_gid == -1)
      {
        memset(&v73, 0, sizeof(v73));
        v72 = 0;
        if (getgrnam_r("wheel", &v73, v74, 0x100uLL, &v72) || !v72)
        {
          v10 = __log_SCPreferences();
          v11 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v10, v11))
          {
            v12 = _os_log_pack_size();
            v20 = &v71 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
            v21 = *__error();
            v22 = _os_log_pack_fill();
            v23 = __error();
            v24 = strerror(*v23);
            *v22 = v71;
            *(v22 + 4) = v24;
            v25 = v20;
            v5 = 0x1EB591000uLL;
            __SC_log_send(5, v10, v11, v25);
          }

          gr_gid = 0;
        }

        else
        {
          gr_gid = v72->gr_gid;
        }

        *(v5 + 1568) = gr_gid;
      }

      if (chown(v75, 0xFFFFFFFF, gr_gid) == -1)
      {
        v26 = __log_SCPreferences();
        v27 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v26, v27))
        {
          v28 = _os_log_pack_size();
          v36 = &v71 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
          v37 = *__error();
          v38 = _os_log_pack_fill();
          v39 = __error();
          v40 = strerror(*v39);
          *v38 = v71;
          *(v38 + 4) = v40;
          v5 = 0x1EB591000;
          __SC_log_send(5, v26, v27, v36);
        }
      }

      if (chmod(v75, 0x1EDu) == -1)
      {
        v41 = __log_SCPreferences();
        v42 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v41, v42))
        {
          v43 = _os_log_pack_size();
          v51 = &v71 - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = *__error();
          v53 = _os_log_pack_fill();
          v54 = __error();
          v55 = strerror(*v54);
          *v53 = v71;
          *(v53 + 4) = v55;
          v5 = 0x1EB591000;
          __SC_log_send(5, v41, v42, v51);
        }
      }

      result = 0;
      if (!v4 || v6 == v75)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }

    if (*__error() != 2 || v6 != v75)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_36;
    }

LABEL_34:
    *v4 = v7;
    v4 = strchr(v6 + 1, 47);
    v6 = v4;
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = 0;
  }

  if (*__error() == 30)
  {
    goto LABEL_3;
  }

  v9 = __error();
  if (v4 && *v9 == 17)
  {
    goto LABEL_34;
  }

LABEL_36:
  v56 = __log_SCPreferences();
  v57 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v56, v57))
  {
    v58 = _os_log_pack_size();
    v66 = &v71 - ((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = *__error();
    v68 = _os_log_pack_fill();
    v69 = __error();
    v70 = strerror(*v69);
    *v68 = v71;
    *(v68 + 4) = v70;
    __SC_log_send(5, v56, v57, v66);
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

LABEL_3:
  result = 0xFFFFFFFFLL;
LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t has_O_EXLOCK(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(&v42, 0, 512);
  v2 = open(*(a1 + 120), 513);
  if (v2 == -1)
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v6, v7);
    if (!result)
    {
      goto LABEL_15;
    }

    v8 = _os_log_pack_size();
    v16 = &v41[-1] - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    goto LABEL_13;
  }

  v3 = v2;
  v4 = fstatfs(v2, &v42);
  unlink(*(a1 + 120));
  close(v3);
  if (v4 == -1)
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v6, v7);
    if (!result)
    {
      goto LABEL_15;
    }

    v18 = _os_log_pack_size();
    v16 = &v41[-1] - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *__error();
    goto LABEL_13;
  }

  v41[0] = 5;
  v41[1] = 2147614720;
  v41[2] = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  if (getattrlist(v42.f_mntonname, v41, &v43, 0x24uLL, 0) == -1)
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v6, v7);
    if (!result)
    {
      goto LABEL_15;
    }

    v27 = _os_log_pack_size();
    v16 = &v41[-1] - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = *__error();
LABEL_13:
    v36 = _os_log_pack_fill();
    v37 = __error();
    v38 = strerror(*v37);
    *v36 = 136315138;
    *(v36 + 4) = v38;
    __SC_log_send(5, v6, v7, v16);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if ((BYTE9(v43) & 2) == 0 || (BYTE9(v44) & 2) == 0)
  {
    goto LABEL_14;
  }

  result = 1;
LABEL_15:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

void reportDelay(uint64_t a1, uint64_t *a2, int a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = __log_SCPreferences();
  v7 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v6, v7))
  {
    v8 = _os_log_pack_size();
    v16 = v25 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = *(a1 + 80);
    v20 = *(a1 + 88);
    v21 = *a2;
    v22 = *(a2 + 2) / 1000;
    v23 = " (stale)";
    *v18 = 138413314;
    if (!a3)
    {
      v23 = "";
    }

    *(v18 + 4) = v19;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v20;
    *(v18 + 22) = 1024;
    *(v18 + 24) = v21;
    *(v18 + 28) = 1024;
    *(v18 + 30) = v22;
    *(v18 + 34) = 2080;
    *(v18 + 36) = v23;
    __SC_log_send(3, v6, v7, v16);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __wait_for_PreferencesMonitor()
{
  v22[1] = *MEMORY[0x1E69E9840];
  qword_1EB591738 = "Waiting for configd/PreferencesMonitor";
  v0 = SCDynamicStoreCreate(0, @"__wait_for_PreferencesMonitor", 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFArrayCreate(0, &kSCDynamicStoreDomainSetup, 1, MEMORY[0x1E695E9C0]);
    v3 = SCDynamicStoreSetNotificationKeys(v1, v2, 0);
    CFRelease(v2);
    if (v3)
    {
      while (1)
      {
        v4 = SCDynamicStoreCopyValue(v1, @"Setup:");
        if (v4)
        {
          CFRelease(v4);
          goto LABEL_13;
        }

        if (!SCDynamicStoreNotifyWait(v1))
        {
          break;
        }

        v5 = SCDynamicStoreCopyNotifiedKeys(v1);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v6 = __log_SCPreferences();
      v7 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v6, v7))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = __log_SCPreferences();
      v7 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v6, v7))
      {
LABEL_13:
        qword_1EB591738 = 0;
        CFRelease(v1);
        goto LABEL_14;
      }
    }

    v8 = _os_log_pack_size();
    v16 = v22 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = SCError();
    v20 = SCErrorString(v19);
    *v18 = 136315138;
    *(v18 + 4) = v20;
    __SC_log_send(5, v6, v7, v16);
    goto LABEL_13;
  }

  qword_1EB591738 = 0;
LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
}

Boolean SCPreferencesUnlock(SCPreferencesRef prefs)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v3 = 3001;
    goto LABEL_27;
  }

  if (!*(prefs + 112))
  {
    v3 = 1007;
    goto LABEL_27;
  }

  if (!*(prefs + 39))
  {
    pthread_mutex_lock((prefs + 16));
    v4 = *(prefs + 20);
    if (v4)
    {
      CFRelease(v4);
      *(prefs + 20) = 0;
    }

    v5 = *(prefs + 29);
    if (v5 != -1)
    {
      if (*(prefs + 15))
      {
        unlink(*(prefs + 15));
        v5 = *(prefs + 29);
      }

      close(v5);
      *(prefs + 29) = -1;
    }

    v27 = 0;
    v25.tv_sec = 0;
    *&v25.tv_usec = 0;
    gettimeofday(&v25, 0);
    v6 = v25.tv_sec - *(prefs + 16);
    v26 = v6;
    v7 = v25.tv_usec - *(prefs + 34);
    LODWORD(v27) = v7;
    if (v7 < 0)
    {
      v26 = --v6;
      LODWORD(v27) = v7 + 1000000;
    }

    if (v6 >= 1)
    {
      reportDelay_0(prefs, &v26);
    }

    v8 = __log_SCPreferences();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = &v24 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = *(prefs + 13);
      *v20 = 136315138;
      *(v20 + 4) = v21;
      __SC_log_send(7, v8, v9, v18);
    }

    __SCPreferencesUpdateLockedState(prefs, 0);
    pthread_mutex_unlock((prefs + 16));
    goto LABEL_23;
  }

  LODWORD(v26) = 0;
  v2 = *(prefs + 80);
  if (!v2)
  {
LABEL_26:
    v3 = 1003;
    LODWORD(v26) = 1003;
    goto LABEL_27;
  }

  if (!_SCHelperExec(v2, 106, 0, &v26, 0))
  {
    if (*(prefs + 80))
    {
      _SCHelperClose(prefs + 80);
    }

    goto LABEL_26;
  }

  v3 = v26;
  if (v26)
  {
LABEL_27:
    _SCErrorSet(v3);
    result = 0;
    goto LABEL_28;
  }

  __SCPreferencesUpdateLockedState(prefs, 0);
LABEL_23:
  result = 1;
LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void reportDelay_0(uint64_t a1, uint64_t *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCPreferences();
  v5 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = v22 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = *a2;
    v20 = *(a2 + 2) / 1000;
    *v16 = 138413058;
    *(v16 + 4) = v17;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v18;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v19;
    *(v16 + 28) = 1024;
    *(v16 + 30) = v20;
    __SC_log_send(3, v4, v5, v14);
  }

  v21 = *MEMORY[0x1E69E9840];
}

CFArrayRef SCPreferencesCopyKeyList(SCPreferencesRef prefs)
{
  v12 = *MEMORY[0x1E69E9840];
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    v2 = CFGetAllocator(prefs);
    Count = CFDictionaryGetCount(*(prefs + 35));
    if (Count < 1)
    {
      v10 = *MEMORY[0x1E69E9840];
      v11 = MEMORY[0x1E695E9C0];

      return CFArrayCreate(v2, 0, 0, v11);
    }

    else
    {
      v4 = Count;
      v5 = MEMORY[0x1B26F3AA0](v2, 8 * Count, 0x6004044C4A2DFLL, 0);
      CFDictionaryGetKeysAndValues(*(prefs + 35), v5, 0);
      v6 = CFArrayCreate(v2, v5, v4, MEMORY[0x1E695E9C0]);
      CFAllocatorDeallocate(v2, v5);
      v7 = *MEMORY[0x1E69E9840];
      return v6;
    }
  }

  else
  {
    _SCErrorSet(3001);
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCNetworkConfigurationBackup(const __SCPreferences *a1, const __CFString *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v6 = __log_SCNetworkConfiguration();
  v7 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v6, v7))
  {
    v8 = _os_log_pack_size();
    v16 = &v28 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 138412290;
    *(v18 + 4) = a2;
    __SC_log_send(5, v6, v7, v16);
  }

  if (*(a1 + 11))
  {
    v19 = *(a1 + 11);
  }

  else
  {
    v19 = @"preferences.plist";
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v19);
  v32.length = CFStringGetLength(MutableCopy);
  v32.location = 0;
  if (CFStringFindWithOptions(MutableCopy, @"/", v32, 4uLL, &result))
  {
    v31.length = result.location + 1;
    result.location = 0;
    result.length = v31.length;
    v31.location = 0;
    CFStringReplace(MutableCopy, v31, &stru_1F22591E8);
  }

  Length = CFStringGetLength(MutableCopy);
  CFStringInsert(MutableCopy, Length - 6, @"-");
  v22 = CFStringGetLength(MutableCopy);
  CFStringInsert(MutableCopy, v22 - 6, a2);
  Companion = SCPreferencesCreateCompanion(a3, MutableCopy);
  CFRelease(MutableCopy);
  if (Companion)
  {
    Value = SCPreferencesPathGetValue(a1, @"/");
    SCPreferencesPathSetValue(Companion, @"/", Value);
    v25 = SCPreferencesCommitChanges(Companion);
    CFRelease(Companion);
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t __SCNetworkConfigurationSaveModel(const __SCPreferences *a1, const void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = v21 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 138412290;
    *(v16 + 4) = a2;
    __SC_log_send(5, v4, v5, v14);
  }

  v17 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a2);
  v18 = savePreferences(a1, v17, &stru_1F22591E8, @"Model", a2);
  CFRelease(v17);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t savePreferences(const __SCPreferences *a1, const __CFString *a2, uint64_t a3, const __CFString *a4, const void *a5)
{
  v34[7] = *MEMORY[0x1E69E9840];
  v34[0] = @"CurrentSet";
  v34[1] = @"Model";
  v34[2] = @"NetworkServices";
  v34[3] = @"Sets";
  v34[4] = @"System";
  v34[5] = @"__VERSION__";
  v34[6] = @"VirtualNetworkInterfaces";
  v33 = a2;
  Companion = SCPreferencesCreateCompanion(a1, a2);
  for (i = 0; i != 7; ++i)
  {
    v11 = v34[i];
    v12 = CFStringCreateWithFormat(0, 0, @"%@%@", a3, v11);
    Value = SCPreferencesGetValue(a1, v12);
    if (Value)
    {
      SCPreferencesSetValue(Companion, v11, Value);
      SCPreferencesRemoveValue(a1, v12);
    }

    CFRelease(v12);
  }

  if (a4)
  {
    SCPreferencesSetValue(Companion, a4, a5);
  }

  v14 = SCPreferencesCommitChanges(Companion);
  CFRelease(Companion);
  if (!v14)
  {
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = &v32 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = SCError();
      v29 = SCErrorString(v28);
      *v27 = 138412546;
      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      *(v27 + 14) = v29;
      __SC_log_send(3, v15, v16, v25);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __SCNetworkConfigurationUpgrade(const __SCPreferences **a1, uint64_t *a2, int a3)
{
  v97 = *MEMORY[0x1E69E9840];
  valuePtr = 20191120;
  if (a1)
  {
    Companion = *a1;
  }

  else
  {
    Companion = 0;
  }

  v7 = a2 != 0;
  if (!a2)
  {
    v8 = 0;
LABEL_11:
    if (a1)
    {
      v11 = Companion == 0;
    }

    else
    {
      v11 = 1;
    }

    v14 = !v11 && a2 != 0 && v8 == 0;
    goto LABEL_29;
  }

  v8 = *a2;
  if (!a1 && v8)
  {
    Companion = SCPreferencesCreateCompanion(*a2, 0);
    if (!Companion)
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (a1 && Companion && !v8)
  {
    v15 = SCPreferencesCreateCompanion(Companion, @"NetworkInterfaces.plist");
    if (!v15)
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
LABEL_65:
        v80 = _os_log_pack_size();
        v88 = v95 - ((MEMORY[0x1EEE9AC00](v80, v81, v82, v83, v84, v85, v86, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
        v89 = *__error();
        v90 = _os_log_pack_fill();
        v91 = SCError();
        v92 = SCErrorString(v91);
        *v90 = 136315138;
        *(v90 + 4) = v92;
        __SC_log_send(3, v9, v10, v88);
      }

LABEL_66:
      v17 = 0;
      goto LABEL_67;
    }

    v8 = v15;
    v7 = 0;
    v14 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_29:
  if (needsUpdate(Companion) || needsUpdate(v8))
  {
    v16 = lockWithSync(Companion);
    if (v16)
    {
      if (!v8 || (v16 = lockWithSync(v8), v16))
      {
        v17 = v16;
        __SCNetworkConfigurationClean(Companion, v8);
        v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        SCPreferencesSetValue(Companion, @"__VERSION__", v18);
        CFRelease(v18);
        if (v8)
        {
          v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          SCPreferencesSetValue(v8, @"__VERSION__", v19);
          CFRelease(v19);
        }

        if (!a3)
        {
          goto LABEL_50;
        }

        if (SCPreferencesCommitChanges(Companion))
        {
          v17 = SCPreferencesApplyChanges(Companion);
          if (v17)
          {
            goto LABEL_50;
          }

          v20 = __log_SCNetworkConfiguration();
          v21 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v20, v21))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v20 = __log_SCNetworkConfiguration();
          v21 = _SC_syslog_os_log_mapping(3);
          if (__SC_log_enabled(3, v20, v21))
          {
LABEL_48:
            v52 = _os_log_pack_size();
            v95[1] = v95;
            v60 = v95 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
            v61 = *__error();
            v62 = _os_log_pack_fill();
            v63 = SCError();
            v64 = SCErrorString(v63);
            *v62 = 136315138;
            *(v62 + 4) = v64;
            __SC_log_send(3, v20, v21, v60);
          }
        }

        v17 = 0;
LABEL_50:
        SCPreferencesUnlock(Companion);
        if (v8)
        {
          if (a3)
          {
            if (v17)
            {
              v17 = SCPreferencesCommitChanges(v8);
              if (!v17)
              {
                v65 = __log_SCNetworkConfiguration();
                v66 = _SC_syslog_os_log_mapping(3);
                if (__SC_log_enabled(3, v65, v66))
                {
                  v67 = _os_log_pack_size();
                  v75 = v95 - ((MEMORY[0x1EEE9AC00](v67, v68, v69, v70, v71, v72, v73, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v76 = *__error();
                  v77 = _os_log_pack_fill();
                  v78 = SCError();
                  v79 = SCErrorString(v78);
                  *v77 = 136315138;
                  *(v77 + 4) = v79;
                  __SC_log_send(3, v65, v66, v75);
                }

                v17 = 0;
              }
            }
          }

          SCPreferencesUnlock(v8);
        }

        goto LABEL_58;
      }

      v37 = __log_SCNetworkConfiguration();
      v38 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v37, v38))
      {
        v39 = _os_log_pack_size();
        v47 = v95 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        v50 = SCError();
        v51 = SCErrorString(v50);
        *v49 = 136315138;
        *(v49 + 4) = v51;
        __SC_log_send(3, v37, v38, v47);
      }

      SCPreferencesUnlock(Companion);
    }

    else
    {
      v22 = __log_SCNetworkConfiguration();
      v23 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v22, v23))
      {
        v24 = _os_log_pack_size();
        v32 = v95 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = SCError();
        v36 = SCErrorString(v35);
        *v34 = 136315138;
        *(v34 + 4) = v36;
        __SC_log_send(3, v22, v23, v32);
      }
    }
  }

  v17 = 0;
LABEL_58:
  if (v7)
  {
    CFRelease(Companion);
  }

  if (v14)
  {
    if (v17)
    {
      *a2 = CFRetain(v8);
    }

    CFRelease(v8);
  }

LABEL_67:
  v93 = *MEMORY[0x1E69E9840];
  return v17;
}

unint64_t needsUpdate(unint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (result)
  {
    Value = SCPreferencesGetValue(result, @"__VERSION__");
    TypeID = CFNumberGetTypeID();
    result = !Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr) || valuePtr != 20191120;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t lockWithSync(const __SCPreferences *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    lockWithSync_cold_1();
  }

  result = SCPreferencesLock(a1, 1u);
  if (result)
  {
    goto LABEL_8;
  }

  if (SCError() != 3005)
  {
    result = 0;
LABEL_8:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  SCPreferencesSynchronize(a1);
  v3 = *MEMORY[0x1E69E9840];

  return SCPreferencesLock(a1, 1u);
}

uint64_t __SCNetworkConfigurationClean(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v4 = SCPreferencesCopyKeyList(a1);
  if (v4)
  {
    v5 = CFStringCreateWithFormat(0, 0, @" : %@", @"Sets");
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      Mutable = 0;
      v10 = MEMORY[0x1E695E9F8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
        if (CFStringHasSuffix(ValueAtIndex, v5))
        {
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(0, 0, v10);
          }

          MutableCopy = CFStringCreateMutableCopy(0, 0, ValueAtIndex);
          CFStringTrim(MutableCopy, v5);
          CFSetAddValue(Mutable, MutableCopy);
          CFRelease(MutableCopy);
        }

        ++v8;
      }

      while (v7 != v8);
    }

    CFRelease(v5);
    CFRelease(v4);
    if (Mutable)
    {
      CFSetApplyFunction(Mutable, thinInlineBackup, a1);
      CFRelease(Mutable);
      v13 = __log_SCNetworkConfiguration();
      v14 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v13, v14))
      {
        v15 = _os_log_pack_size();
        v23 = v73 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v13, v14, v23);
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  v25 = SCPreferencesCopyKeyList(a1);
  if (v25)
  {
    v26 = v25;
    v27 = CFStringCreateWithFormat(0, 0, @":%@", @"Sets");
    v28 = CFArrayGetCount(v26);
    if (v28 < 1)
    {
      v31 = 0;
    }

    else
    {
      v29 = v28;
      v30 = 0;
      v31 = 0;
      v32 = MEMORY[0x1E695E9F8];
      do
      {
        v33 = CFArrayGetValueAtIndex(v26, v30);
        if (CFStringHasSuffix(v33, v27))
        {
          if (!v31)
          {
            v31 = CFSetCreateMutable(0, 0, v32);
          }

          v34 = CFStringCreateMutableCopy(0, 0, v33);
          CFStringTrim(v34, v27);
          CFSetAddValue(v31, v34);
          CFRelease(v34);
        }

        ++v30;
      }

      while (v29 != v30);
    }

    CFRelease(v27);
    CFRelease(v26);
    if (v31)
    {
      CFSetApplyFunction(v31, thinInlineModel, a1);
      CFRelease(v31);
      v35 = __log_SCNetworkConfiguration();
      v36 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v35, v36))
      {
        v4 = 1;
        if (!a2)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      v37 = _os_log_pack_size();
      v45 = v73 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v35, v36, v45);
      v4 = 1;
    }
  }

  if (!a2)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (__SCNetworkConfigurationCleanHiddenInterfaces(a1, a2))
  {
    v47 = __log_SCNetworkConfiguration();
    v48 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v47, v48))
    {
      v49 = _os_log_pack_size();
      v57 = v73 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v47, v48, v57);
    }

    v4 = 1;
  }

LABEL_38:
  if (__SCNetworkConfigurationCleanServiceOrderIssues(a1))
  {
    v59 = __log_SCNetworkConfiguration();
    v60 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v59, v60))
    {
      v61 = _os_log_pack_size();
      v69 = v73 - ((MEMORY[0x1EEE9AC00](v61, v62, v63, v64, v65, v66, v67, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v59, v60, v69);
    }

    v4 = 1;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __SCNetworkConfigurationCleanHiddenInterfaces(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v283 = a2;
  v292 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = SCNetworkServiceCopyAll(a1);
  v5 = v4;
  v291 = Mutable;
  v285 = a1;
  v286 = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      *&v7 = 138412546;
      v287 = v7;
      *&v7 = 138412802;
      v281 = v7;
      *&v7 = 138413314;
      v282 = v7;
      v284 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        if (!SCNetworkServiceGetEnabled(ValueAtIndex))
        {
          break;
        }

        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (!BSDName)
        {
          if (_sc_log != 1 && _sc_debug == 0)
          {
            goto LABEL_92;
          }

          v51 = __log_SCNetworkConfiguration();
          v52 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v51, v52))
          {
            goto LABEL_92;
          }

          goto LABEL_58;
        }

        v13 = BSDName;
        IsHiddenConfiguration = _SCNetworkInterfaceIsHiddenConfiguration(Interface);
        v15 = "hidden";
        if (IsHiddenConfiguration)
        {
          goto LABEL_9;
        }

        LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(Interface);
        if (CFStringHasPrefix(LocalizedDisplayName, @"Apple TV"))
        {
          v15 = "effectively hidden";
          goto LABEL_9;
        }

        v69 = -1;
        v70 = off_1E79BD690;
        do
        {
          if (v69 == 3)
          {
            goto LABEL_86;
          }

          v71 = *v70++;
          ++v69;
        }

        while (!CFStringHasPrefix(LocalizedDisplayName, v71));
        if (v69 < 4)
        {
          v15 = "effectively hidden";
          Mutable = v291;
LABEL_9:
          *&v289 = v15;
          v17 = SCNetworkServiceGetInterface(ValueAtIndex);
          *&v290 = v13;
          if (v17)
          {
            v18 = SCNetworkServiceCreate(a1, v17);
            if (v18)
            {
              v19 = v18;
              *&v288 = v9;
              SCNetworkServiceEstablishDefaultConfiguration(v18);
              v20 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              v21 = SCNetworkServiceCopyProtocols(ValueAtIndex);
              if (v21)
              {
                v22 = v21;
                v23 = CFArrayGetCount(v21);
                if (v23 >= 1)
                {
                  v24 = v23;
                  for (i = 0; i != v24; ++i)
                  {
                    v26 = CFArrayGetValueAtIndex(v22, i);
                    ProtocolType = SCNetworkProtocolGetProtocolType(v26);
                    v293.length = CFArrayGetCount(v20);
                    v293.location = 0;
                    if (!CFArrayContainsValue(v20, v293, ProtocolType))
                    {
                      CFArrayAppendValue(v20, ProtocolType);
                    }
                  }
                }

                CFRelease(v22);
              }

              v28 = SCNetworkServiceCopyProtocols(v19);
              if (v28)
              {
                v29 = v28;
                v30 = CFArrayGetCount(v28);
                if (v30 >= 1)
                {
                  v31 = v30;
                  for (j = 0; j != v31; ++j)
                  {
                    v33 = CFArrayGetValueAtIndex(v29, j);
                    v34 = SCNetworkProtocolGetProtocolType(v33);
                    v294.length = CFArrayGetCount(v20);
                    v294.location = 0;
                    if (!CFArrayContainsValue(v20, v294, v34))
                    {
                      CFArrayAppendValue(v20, v34);
                    }
                  }
                }

                CFRelease(v29);
              }

              v35 = CFArrayGetCount(v20);
              v36 = v35 - 1;
              if (v35 >= 1)
              {
                v37 = 0;
                Copy = 0;
                while (1)
                {
                  v39 = CFArrayGetValueAtIndex(v20, v37);
                  v40 = SCNetworkServiceCopyProtocol(ValueAtIndex, v39);
                  v41 = SCNetworkServiceCopyProtocol(v19, v39);
                  v42 = v41;
                  if (v40)
                  {
                    if (v41)
                    {
                      break;
                    }
                  }

                  Copy = CFStringCreateWithFormat(0, 0, @"conflicting %@ enable/disable", v39);
                  v48 = 1;
                  if (v40)
                  {
                    goto LABEL_45;
                  }

                  if (v42)
                  {
                    goto LABEL_37;
                  }

LABEL_38:
                  v50 = v36 == v37++;
                  if (v50)
                  {
                    v49 = 1;
                  }

                  else
                  {
                    v49 = v48;
                  }

                  if (v49 == 1)
                  {
                    goto LABEL_69;
                  }
                }

                Enabled = SCNetworkProtocolGetEnabled(v40);
                v44 = SCNetworkProtocolGetEnabled(v42);
                v45 = @"conflicting %@ enable/disable";
                if (Enabled == v44)
                {
                  Configuration = SCNetworkProtocolGetConfiguration(v40);
                  v47 = SCNetworkProtocolGetConfiguration(v42);
                  if (Configuration == v47)
                  {
                    goto LABEL_34;
                  }

                  if (!Configuration)
                  {
                    goto LABEL_43;
                  }

                  v45 = @"conflicting %@ configuration";
                  if (v47)
                  {
                    if (CFEqual(Configuration, v47))
                    {
LABEL_34:
                      v48 = 0;
                      goto LABEL_45;
                    }

LABEL_43:
                    v45 = @"conflicting %@ configuration";
                  }
                }

                Copy = CFStringCreateWithFormat(0, 0, v45, v39);
                v48 = 1;
LABEL_45:
                CFRelease(v40);
                if (!v42)
                {
                  goto LABEL_38;
                }

LABEL_37:
                CFRelease(v42);
                goto LABEL_38;
              }

              Copy = 0;
LABEL_69:
              SCNetworkServiceRemove(v19);
              CFRelease(v19);
              CFRelease(v20);
              Mutable = v291;
              a1 = v285;
              v5 = v286;
              v8 = v284;
              v9 = v288;
              goto LABEL_70;
            }

            v68 = @"could not create service for interface";
          }

          else
          {
            v68 = @"could not get interface for service";
          }

          Copy = CFStringCreateCopy(0, v68);
LABEL_70:
          v73 = _sc_log == 1 || _sc_debug != 0;
          if (Copy)
          {
            if (v73)
            {
              v74 = __log_SCNetworkConfiguration();
              v75 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v74, v75))
              {
                v76 = _os_log_pack_size();
                v84 = v9;
                v85 = &v281 - ((MEMORY[0x1EEE9AC00](v76, v77, v78, v79, v80, v81, v82, v83) + 15) & 0xFFFFFFFFFFFFFFF0);
                v86 = *__error();
                v87 = _os_log_pack_fill();
                ServiceID = SCNetworkServiceGetServiceID(ValueAtIndex);
                Name = SCNetworkServiceGetName(ValueAtIndex);
                *v87 = v282;
                *(v87 + 4) = ServiceID;
                v8 = v284;
                *(v87 + 12) = 2112;
                *(v87 + 14) = Name;
                *(v87 + 22) = 2112;
                *(v87 + 24) = v290;
                *(v87 + 32) = 2080;
                *(v87 + 34) = v289;
                *(v87 + 42) = 2112;
                *(v87 + 44) = Copy;
                Mutable = v291;
                v90 = v85;
                v9 = v84;
                __SC_log_send(6, v74, v75, v90);
                v5 = v286;
              }
            }

            CFRelease(Copy);
          }

          else
          {
            if (v73)
            {
              v91 = __log_SCNetworkConfiguration();
              v92 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v91, v92))
              {
                v93 = _os_log_pack_size();
                v101 = &v281 - ((MEMORY[0x1EEE9AC00](v93, v94, v95, v96, v97, v98, v99, v100) + 15) & 0xFFFFFFFFFFFFFFF0);
                v102 = *__error();
                Mutable = v291;
                v103 = _os_log_pack_fill();
                *v103 = v287;
                *(v103 + 4) = v290;
                *(v103 + 12) = 2080;
                *(v103 + 14) = v289;
                __SC_log_send(6, v91, v92, v101);
              }
            }

            v295.length = CFArrayGetCount(Mutable);
            v295.location = 0;
            v104 = v290;
            if (!CFArrayContainsValue(Mutable, v295, v290))
            {
              CFArrayAppendValue(Mutable, v104);
            }
          }

          goto LABEL_92;
        }

LABEL_86:
        v105 = _sc_log != 1 && _sc_debug == 0;
        Mutable = v291;
        if (!v105)
        {
          v106 = __log_SCNetworkConfiguration();
          v107 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v106, v107))
          {
            v108 = _os_log_pack_size();
            *&v289 = &v281;
            v116 = v13;
            v117 = &v281 - ((MEMORY[0x1EEE9AC00](v108, v109, v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
            v118 = *__error();
            v119 = _os_log_pack_fill();
            v120 = v9;
            v121 = SCNetworkServiceGetServiceID(ValueAtIndex);
            v122 = SCNetworkServiceGetName(ValueAtIndex);
            *v119 = v281;
            *(v119 + 4) = v121;
            v9 = v120;
            *(v119 + 12) = 2112;
            *(v119 + 14) = v122;
            *(v119 + 22) = 2112;
            *(v119 + 24) = v116;
            Mutable = v291;
            __SC_log_send(6, v106, v107, v117);
            goto LABEL_59;
          }
        }

LABEL_92:
        if (++v9 == v8)
        {
          goto LABEL_93;
        }
      }

      v50 = _sc_log != 1 && _sc_debug == 0;
      if (v50)
      {
        goto LABEL_92;
      }

      v51 = __log_SCNetworkConfiguration();
      v52 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v51, v52))
      {
        goto LABEL_92;
      }

LABEL_58:
      v54 = _os_log_pack_size();
      v62 = &v281 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      v63 = *__error();
      v64 = _os_log_pack_fill();
      v65 = v9;
      v66 = SCNetworkServiceGetServiceID(ValueAtIndex);
      v67 = SCNetworkServiceGetName(ValueAtIndex);
      *v64 = v287;
      *(v64 + 4) = v66;
      v9 = v65;
      *(v64 + 12) = 2112;
      *(v64 + 14) = v67;
      Mutable = v291;
      __SC_log_send(6, v51, v52, v62);
LABEL_59:
      v5 = v286;
      goto LABEL_92;
    }
  }

LABEL_93:
  v123 = SCBridgeInterfaceCopyAll(a1);
  if (v123)
  {
    v124 = v123;
    *&v288 = CFArrayGetCount(v123);
    if (v288 >= 1)
    {
      v126 = 0;
      *&v125 = 138412290;
      v289 = v125;
      *&v287 = v124;
      do
      {
        *&v290 = v126;
        v127 = CFArrayGetValueAtIndex(v124, v126);
        MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v127);
        if (MemberInterfaces)
        {
          v129 = MemberInterfaces;
          v130 = CFArrayGetCount(MemberInterfaces);
          if (v130 >= 1)
          {
            v131 = v130;
            for (k = 0; k != v131; ++k)
            {
              v133 = CFArrayGetValueAtIndex(v129, k);
              v134 = SCNetworkInterfaceGetBSDName(v133);
              if (v134)
              {
                v135 = v134;
                if (thinRemove(Mutable, v134))
                {
                  if (_sc_log == 1 || _sc_debug != 0)
                  {
                    v137 = __log_SCNetworkConfiguration();
                    v138 = _SC_syslog_os_log_mapping(6);
                    if (__SC_log_enabled(6, v137, v138))
                    {
                      v139 = _os_log_pack_size();
                      v147 = &v281 - ((MEMORY[0x1EEE9AC00](v139, v140, v141, v142, v143, v144, v145, v146) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v148 = *__error();
                      Mutable = v291;
                      v149 = _os_log_pack_fill();
                      *v149 = v289;
                      *(v149 + 4) = v135;
                      __SC_log_send(6, v137, v138, v147);
                    }
                  }
                }
              }
            }
          }
        }

        v126 = v290 + 1;
        v124 = v287;
      }

      while (v290 + 1 != v288);
    }

    CFRelease(v124);
    a1 = v285;
    v5 = v286;
  }

  v150 = SCVLANInterfaceCopyAll(a1);
  if (v150)
  {
    v151 = v150;
    v152 = CFArrayGetCount(v150);
    if (v152 >= 1)
    {
      v154 = v152;
      v155 = 0;
      *&v153 = 138412290;
      v290 = v153;
      do
      {
        v156 = CFArrayGetValueAtIndex(v151, v155);
        PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v156);
        v158 = SCNetworkInterfaceGetBSDName(PhysicalInterface);
        if (v158)
        {
          v159 = v158;
          if (thinRemove(Mutable, v158))
          {
            if (_sc_log == 1 || _sc_debug != 0)
            {
              v161 = __log_SCNetworkConfiguration();
              v162 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v161, v162))
              {
                v163 = _os_log_pack_size();
                v171 = &v281 - ((MEMORY[0x1EEE9AC00](v163, v164, v165, v166, v167, v168, v169, v170) + 15) & 0xFFFFFFFFFFFFFFF0);
                v172 = *__error();
                Mutable = v291;
                v173 = _os_log_pack_fill();
                *v173 = v290;
                *(v173 + 4) = v159;
                __SC_log_send(6, v161, v162, v171);
              }
            }
          }
        }

        ++v155;
      }

      while (v154 != v155);
    }

    CFRelease(v151);
    v5 = v286;
  }

  if (!v5)
  {
    goto LABEL_148;
  }

  v174 = CFArrayGetCount(v5);
  if (v174 < 1)
  {
    goto LABEL_148;
  }

  v176 = v174;
  v177 = 0;
  v178 = 0;
  v179 = &_sc_log;
  *&v175 = 138412802;
  v288 = v175;
  do
  {
    v180 = CFArrayGetValueAtIndex(v5, v178);
    v181 = SCNetworkServiceGetInterface(v180);
    v182 = SCNetworkInterfaceGetBSDName(v181);
    if (v182)
    {
      v183 = v182;
      v296.length = CFArrayGetCount(Mutable);
      v296.location = 0;
      if (CFArrayContainsValue(Mutable, v296, v183))
      {
        if (*v179 == 1 || _sc_debug != 0 || _sc_verbose != 0)
        {
          v186 = __log_SCNetworkConfiguration();
          v187 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v186, v187))
          {
            v188 = _os_log_pack_size();
            *&v289 = &v281;
            v196 = MEMORY[0x1EEE9AC00](v188, v189, v190, v191, v192, v193, v194, v195);
            LODWORD(v290) = v177;
            v197 = &v281 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
            v198 = *__error();
            v199 = _os_log_pack_fill();
            v200 = v179;
            v201 = SCNetworkServiceGetServiceID(v180);
            v202 = SCNetworkServiceGetName(v180);
            *v199 = v288;
            *(v199 + 4) = v201;
            v179 = v200;
            *(v199 + 12) = 2112;
            *(v199 + 14) = v202;
            *(v199 + 22) = 2112;
            *(v199 + 24) = v183;
            Mutable = v291;
            v203 = v197;
            v177 = v290;
            __SC_log_send(6, v186, v187, v203);
            v5 = v286;
          }
        }

        SCNetworkServiceRemove(v180);
        ++v177;
      }
    }

    ++v178;
  }

  while (v176 != v178);
  if (v177 > 0)
  {
    v204 = *v179 != 1 && _sc_debug == 0;
    if (v204 || (v205 = __log_SCNetworkConfiguration(), v206 = _SC_syslog_os_log_mapping(5), !__SC_log_enabled(5, v205, v206)))
    {
      v219 = 1;
    }

    else
    {
      v207 = _os_log_pack_size();
      v215 = &v281 - ((MEMORY[0x1EEE9AC00](v207, v208, v209, v210, v211, v212, v213, v214) + 15) & 0xFFFFFFFFFFFFFFF0);
      v216 = *__error();
      v217 = _os_log_pack_fill();
      v218 = "s";
      if (v177 == 1)
      {
        v218 = "";
      }

      *v217 = 67109378;
      *(v217 + 4) = v177;
      *(v217 + 8) = 2080;
      *(v217 + 10) = v218;
      __SC_log_send(5, v205, v206, v215);
      v219 = 1;
    }
  }

  else
  {
LABEL_148:
    v219 = 0;
  }

  Value = SCPreferencesGetValue(v283, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v222 = CFArrayGetCount(Value);
    v223 = v291;
    if (v222 >= 1)
    {
      LODWORD(v287) = v219;
      v224 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v225 = CFArrayGetCount(Value);
      if (v225 >= 1)
      {
        v227 = v225;
        v228 = 0;
        v229 = 0;
        *&v226 = 138412290;
        v288 = v226;
        *&v289 = v224;
        while (1)
        {
          v230 = CFArrayGetValueAtIndex(Value, v229);
          v231 = CFDictionaryGetValue(v230, @"BSD Name");
          v297.length = CFArrayGetCount(v223);
          v297.location = 0;
          if (CFArrayContainsValue(v223, v297, v231))
          {
            v232 = CFDictionaryContainsKey(v230, @"Active");
            v234 = _sc_log == 1 || _sc_debug != 0;
            if (!v232)
            {
              if (_sc_verbose)
              {
                v234 = 1;
              }

              if (v234)
              {
                v250 = __log_SCNetworkConfiguration();
                v251 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v250, v251))
                {
                  v252 = _os_log_pack_size();
                  v260 = v228;
                  v228 = &v281 - ((MEMORY[0x1EEE9AC00](v252, v253, v254, v255, v256, v257, v258, v259) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v261 = *__error();
                  v223 = v291;
                  v262 = _os_log_pack_fill();
                  *v262 = v288;
                  *(v262 + 4) = v231;
                  v263 = v228;
                  LODWORD(v228) = v260;
                  __SC_log_send(6, v250, v251, v263);
                  v224 = v289;
                }
              }

              v228 = (v228 + 1);
              goto LABEL_172;
            }

            if (v234)
            {
              v235 = __log_SCNetworkConfiguration();
              v236 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v235, v236))
              {
                v237 = _os_log_pack_size();
                *&v290 = &v281;
                v245 = v228;
                v246 = &v281 - ((MEMORY[0x1EEE9AC00](v237, v238, v239, v240, v241, v242, v243, v244) + 15) & 0xFFFFFFFFFFFFFFF0);
                v247 = *__error();
                v223 = v291;
                v248 = _os_log_pack_fill();
                *v248 = v288;
                *(v248 + 4) = v231;
                v249 = v246;
                v228 = v245;
                v224 = v289;
                __SC_log_send(6, v235, v236, v249);
              }
            }
          }

          CFArrayAppendValue(v224, v230);
LABEL_172:
          if (v227 == ++v229)
          {
            goto LABEL_180;
          }
        }
      }

      LODWORD(v228) = 0;
LABEL_180:
      SCPreferencesSetValue(v283, @"Interfaces", v224);
      CFRelease(v224);
      v5 = v286;
      v219 = v287;
      if (v228 > 0)
      {
        v266 = _sc_log != 1 && _sc_debug == 0;
        if (v266 || (v267 = __log_SCNetworkConfiguration(), v268 = _SC_syslog_os_log_mapping(6), !__SC_log_enabled(6, v267, v268)))
        {
          v219 = 1;
        }

        else
        {
          v269 = _os_log_pack_size();
          v277 = &v281 - ((MEMORY[0x1EEE9AC00](v269, v270, v271, v272, v273, v274, v275, v276) + 15) & 0xFFFFFFFFFFFFFFF0);
          v278 = *__error();
          v223 = v291;
          v279 = _os_log_pack_fill();
          v280 = "s";
          if (v228 == 1)
          {
            v280 = "";
          }

          *v279 = 67109378;
          *(v279 + 4) = v228;
          *(v279 + 8) = 2080;
          *(v279 + 10) = v280;
          __SC_log_send(6, v267, v268, v277);
          v219 = 1;
        }
      }
    }
  }

  else
  {
    v223 = v291;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v223);
  v264 = *MEMORY[0x1E69E9840];
  return v219;
}

uint64_t __SCNetworkConfigurationCleanServiceOrderIssues(const __SCPreferences *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v74 = a1;
  v1 = SCNetworkSetCopyAll(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count < 1)
    {
      LOBYTE(v6) = 0;
      goto LABEL_47;
    }

    v5 = Count;
    v6 = 0;
    v7 = 0;
    *&v4 = 138412546;
    v72 = v4;
    v67 = Count;
    v68 = v2;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v7);
      SetID = SCNetworkSetGetSetID(ValueAtIndex);
      ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
      if (!ServiceOrder)
      {
        goto LABEL_43;
      }

      v10 = ServiceOrder;
      v11 = CFArrayGetCount(ServiceOrder);
      if (v11 < 1)
      {
        goto LABEL_43;
      }

      v12 = v11;
      v69 = ValueAtIndex;
      v71 = v7;
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
      v15 = 0;
      do
      {
        v16 = CFArrayGetValueAtIndex(MutableCopy, v15);
        if (CFSetContainsValue(Mutable, v16))
        {
          if (_sc_log == 1 || _sc_debug != 0)
          {
            v18 = __log_SCNetworkConfiguration();
            v19 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v18, v19))
            {
              v20 = _os_log_pack_size();
              v28 = &v66 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
              v29 = *__error();
              v30 = _os_log_pack_fill();
              *v30 = v72;
              *(v30 + 4) = SetID;
              *(v30 + 12) = 2112;
              *(v30 + 14) = v16;
              v31 = v18;
              v32 = v19;
              v33 = v28;
              goto LABEL_14;
            }
          }

          goto LABEL_24;
        }

        CFSetAddValue(Mutable, v16);
        v34 = SCNetworkServiceCopy(v74, v16);
        if (!v34)
        {
          if (_sc_log == 1 || _sc_debug != 0)
          {
            v37 = __log_SCNetworkConfiguration();
            v38 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v37, v38))
            {
              v39 = _os_log_pack_size();
              v47 = &v66 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
              v48 = *__error();
              v49 = _os_log_pack_fill();
              *v49 = v72;
              *(v49 + 4) = SetID;
              *(v49 + 12) = 2112;
              *(v49 + 14) = v16;
              v31 = v37;
              v32 = v38;
              v33 = v47;
LABEL_14:
              __SC_log_send(5, v31, v32, v33);
            }
          }

LABEL_24:
          CFArrayRemoveValueAtIndex(MutableCopy, v15);
          --v12;
          goto LABEL_25;
        }

        v35 = v34;
        if (__SCNetworkServiceExists(v34))
        {
          CFRelease(v35);
          ++v15;
          continue;
        }

        if (_sc_log == 1 || _sc_debug != 0)
        {
          v51 = __log_SCNetworkConfiguration();
          v52 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v51, v52))
          {
            v53 = _os_log_pack_size();
            v70 = &v66;
            v61 = &v66 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
            v62 = *__error();
            v63 = _os_log_pack_fill();
            *v63 = v72;
            *(v63 + 4) = SetID;
            *(v63 + 12) = 2112;
            *(v63 + 14) = v16;
            __SC_log_send(5, v51, v52, v61);
          }
        }

        CFArrayRemoveValueAtIndex(MutableCopy, v15);
        --v12;
        CFRelease(v35);
LABEL_25:
        v6 = 1;
      }

      while (v15 < v12);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (MutableCopy)
      {
        v2 = v68;
        if (v6)
        {
          SCNetworkSetSetServiceOrder(v69, MutableCopy);
        }

        CFRelease(MutableCopy);
      }

      else
      {
        v2 = v68;
      }

      v5 = v67;
      v7 = v71;
LABEL_43:
      if (++v7 == v5)
      {
LABEL_47:
        CFRelease(v2);
        goto LABEL_48;
      }
    }
  }

  LOBYTE(v6) = 0;
LABEL_48:
  v64 = *MEMORY[0x1E69E9840];
  return v6;
}

void thinInlineBackup(const __CFString *a1, const __SCPreferences *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = &v22 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 138412290;
    *(v16 + 4) = a1;
    __SC_log_send(5, v4, v5, v14);
  }

  v17 = CFStringCreateWithFormat(0, 0, @"%@ : ", a1);
  v18 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u);
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  memset(&v22, 0, sizeof(v22));
  if (!strptime(v18, "%Y-%m-%d %H:%M:%S", &v22))
  {
    CFAllocatorDeallocate(0, v19);
LABEL_8:
    v20 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a1);
    goto LABEL_9;
  }

  v20 = CFStringCreateWithFormat(0, 0, @"preferences-%4d-%02d-%02d-%02d%02d%02d.plist", (v22.tm_year + 1900), (v22.tm_mon + 1), v22.tm_mday, v22.tm_hour, v22.tm_min, v22.tm_sec);
  CFAllocatorDeallocate(0, v19);
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_9:
  savePreferences(a2, v20, v17, 0, 0);
  CFRelease(v20);
  CFRelease(v17);
  v21 = *MEMORY[0x1E69E9840];
}

void thinInlineModel(const void *a1, const __SCPreferences *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = v20 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 138412290;
    *(v16 + 4) = a1;
    __SC_log_send(5, v4, v5, v14);
  }

  v17 = CFStringCreateWithFormat(0, 0, @"%@:", a1);
  v18 = CFStringCreateWithFormat(0, 0, @"preferences-%@.plist", a1);
  savePreferences(a2, v18, v17, @"Model", a1);
  CFRelease(v18);
  CFRelease(v17);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t thinRemove(const __CFArray *a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v8.length = CFArrayGetCount(a1);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v8, a2);
  if (FirstIndexOfValue == -1)
  {
    result = 0;
  }

  else
  {
    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesAddValue(SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value)
{
  v9 = *MEMORY[0x1E69E9840];
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    if (!CFDictionaryContainsKey(*(prefs + 35), key))
    {
      CFDictionaryAddValue(*(prefs + 35), key, value);
      result = 1;
      *(prefs + 305) = 1;
      goto LABEL_7;
    }

    v6 = 1005;
  }

  else
  {
    v6 = 3001;
  }

  _SCErrorSet(v6);
  result = 0;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesSetValue(SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value)
{
  v8 = *MEMORY[0x1E69E9840];
  if (prefs)
  {
    __SCPreferencesAccess(prefs);
    CFDictionarySetValue(*(prefs + 35), key, value);
    result = 1;
    *(prefs + 305) = 1;
  }

  else
  {
    _SCErrorSet(3001);
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCPreferencesRemoveAllValues(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __SCPreferencesAccess(a1);
    CFDictionaryRemoveAllValues(*(a1 + 280));
    result = 1;
    *(a1 + 305) = 1;
  }

  else
  {
    _SCErrorSet(3001);
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesRemoveValue(SCPreferencesRef prefs, CFStringRef key)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v5 = 3001;
LABEL_6:
    _SCErrorSet(v5);
    result = 0;
    goto LABEL_7;
  }

  __SCPreferencesAccess(prefs);
  if (!CFDictionaryContainsKey(*(prefs + 35), key))
  {
    v5 = 1004;
    goto LABEL_6;
  }

  CFDictionaryRemoveValue(*(prefs + 35), key);
  result = 1;
  *(prefs + 305) = 1;
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesCommitChanges(SCPreferencesRef prefs)
{
  v243 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
LABEL_8:
    v3 = 0;
    goto LABEL_77;
  }

  memset(&v242, 0, sizeof(v242));
  v2 = *(prefs + 112);
  if (!*(prefs + 112) && !SCPreferencesLock(prefs, 1u))
  {
    v19 = __log_SCPreferences();
    v20 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v19, v20))
    {
      v21 = _os_log_pack_size();
      v29 = &v240 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v19, v20, v29);
    }

    goto LABEL_8;
  }

  if (*(prefs + 39))
  {
    if (__SCPreferencesCommitChanges_helper(prefs))
    {
      *(prefs + 305) = 0;
      v3 = 1;
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (!*(prefs + 305))
  {
    goto LABEL_42;
  }

  if (__SCPreferencesIsEmpty(prefs) && (value = 0, (v4 = *(prefs + 12)) != 0) && CFDictionaryGetValueIfPresent(v4, @"remove-when-empty", &value) && (v5 = value, TypeID = CFBooleanGetTypeID(), v5) && CFGetTypeID(v5) == TypeID)
  {
    v7 = CFBooleanGetValue(value);
    v8 = *(prefs + 13);
    if (v7)
    {
      unlink(*(prefs + 13));
      memset(&v242, 0, sizeof(v242));
      goto LABEL_37;
    }
  }

  else
  {
    v8 = *(prefs + 13);
  }

  if (stat(v8, &v242) == -1)
  {
    if (*__error() != 2)
    {
      v80 = __error();
      _SCErrorSet(*v80);
      v81 = __log_SCPreferences();
      v82 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v81, v82))
      {
        v83 = _os_log_pack_size();
        v91 = &v240 - ((MEMORY[0x1EEE9AC00](v83, v84, v85, v86, v87, v88, v89, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
        v92 = *__error();
        v93 = _os_log_pack_fill();
        v94 = __error();
        v95 = strerror(*v94);
        *v93 = 136315138;
        *(v93 + 4) = v95;
        __SC_log_send(6, v81, v82, v91);
      }

      goto LABEL_74;
    }

    memset(&v242, 0, sizeof(v242));
    v242.st_mode = 420;
    v242.st_uid = geteuid();
    v242.st_gid = getegid();
  }

  v9 = strlen(v8);
  v10 = MEMORY[0x1B26F3AA0](0, v9 + 5, 3558917367, 0);
  snprintf(v10, v9 + 5, "%s-new", v8);
  v12 = *(prefs + 12);
  if (!v12 || (v13 = CFDictionaryGetValue(v12, @"ProtectionClass")) == 0)
  {
    v31 = 0;
    goto LABEL_31;
  }

  v14 = v13;
  v15 = CFStringGetTypeID();
  if (CFGetTypeID(v14) == v15 && CFStringGetLength(v14) == 1)
  {
    CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
    if (CStringPtr)
    {
      v17 = *CStringPtr;
      if ((v17 - 71) >= 0xFFFFFFFA)
      {
        v31 = v17 - 64;
LABEL_31:
        file_safely = SC_create_file_safely(v10, v31, v242.st_mode, v11);
        if (file_safely == -1)
        {
          goto LABEL_73;
        }

        v33 = file_safely;
        fchown(file_safely, v242.st_uid, v242.st_gid);
        fchmod(v33, v242.st_mode);
        Data = CFPropertyListCreateData(0, *(prefs + 35), kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (!Data)
        {
          _SCErrorSet(1001);
          v96 = __log_SCPreferences();
          v97 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v96, v97))
          {
            v98 = _os_log_pack_size();
            v106 = &v240 - ((MEMORY[0x1EEE9AC00](v98, v99, v100, v101, v102, v103, v104, v105) + 15) & 0xFFFFFFFFFFFFFFF0);
            v107 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(6, v96, v97, v106);
          }

          v108 = __log_SCPreferences();
          v109 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v108, v109))
          {
            v110 = _os_log_pack_size();
            v118 = &v240 - ((MEMORY[0x1EEE9AC00](v110, v111, v112, v113, v114, v115, v116, v117) + 15) & 0xFFFFFFFFFFFFFFF0);
            v119 = *__error();
            v120 = _os_log_pack_fill();
            *v120 = 136315138;
            *(v120 + 4) = v8;
            __SC_log_send(6, v108, v109, v118);
          }

          CFAllocatorDeallocate(0, v10);
          close(v33);
          goto LABEL_74;
        }

        v35 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v35);
        if (writen(v33, BytePtr, Length) == -1)
        {
          v121 = __error();
          _SCErrorSet(*v121);
          v122 = __log_SCPreferences();
          v123 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v122, v123))
          {
            v124 = _os_log_pack_size();
            v132 = &v240 - ((MEMORY[0x1EEE9AC00](v124, v125, v126, v127, v128, v129, v130, v131) + 15) & 0xFFFFFFFFFFFFFFF0);
            v133 = *__error();
            v134 = _os_log_pack_fill();
            v135 = __error();
            v136 = strerror(*v135);
            *v134 = 136315138;
            *(v134 + 4) = v136;
            __SC_log_send(6, v122, v123, v132);
          }

          v137 = __log_SCPreferences();
          v138 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v137, v138))
          {
            v139 = _os_log_pack_size();
            v147 = &v240 - ((MEMORY[0x1EEE9AC00](v139, v140, v141, v142, v143, v144, v145, v146) + 15) & 0xFFFFFFFFFFFFFFF0);
            v148 = *__error();
            v149 = _os_log_pack_fill();
            *v149 = 136315138;
            *(v149 + 4) = v10;
            __SC_log_send(6, v137, v138, v147);
          }

          unlink(v10);
          CFAllocatorDeallocate(0, v10);
          close(v33);
        }

        else
        {
          if (close(v33) != -1)
          {
            CFRelease(v35);
            rename(v10, v8, v38);
            if (v39 != -1)
            {
              CFAllocatorDeallocate(0, v10);
              if (stat(v8, &v242) == -1)
              {
                v211 = __error();
                _SCErrorSet(*v211);
                v212 = __log_SCPreferences();
                v213 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v212, v213))
                {
                  v214 = _os_log_pack_size();
                  v222 = &v240 - ((MEMORY[0x1EEE9AC00](v214, v215, v216, v217, v218, v219, v220, v221) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v223 = *__error();
                  v224 = _os_log_pack_fill();
                  v225 = __error();
                  v226 = strerror(*v225);
                  *v224 = 136315138;
                  *(v224 + 4) = v226;
                  __SC_log_send(6, v212, v213, v222);
                }

                v227 = __log_SCPreferences();
                v228 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v227, v228))
                {
                  v229 = _os_log_pack_size();
                  v237 = &v240 - ((MEMORY[0x1EEE9AC00](v229, v230, v231, v232, v233, v234, v235, v236) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v238 = *__error();
                  v239 = _os_log_pack_fill();
                  *v239 = 136315138;
                  *(v239 + 4) = v10;
                  __SC_log_send(6, v227, v228, v237);
                }

                goto LABEL_74;
              }

LABEL_37:
              v40 = *(prefs + 18);
              if (v40)
              {
                CFRelease(v40);
              }

              *(prefs + 18) = __SCPSignatureFromStatbuf(&v242.st_dev);
              if (*(prefs + 305))
              {
                v41 = __log_SCPreferences();
                v42 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v41, v42))
                {
                  v43 = _os_log_pack_size();
                  v51 = &v240 - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v52 = *__error();
                  v53 = _os_log_pack_fill();
                  v54 = *(prefs + 13);
                  v55 = __SCPreferencesPrefsSize(prefs);
                  *v53 = 136315394;
                  *(v53 + 4) = v54;
                  *(v53 + 12) = 2048;
                  *(v53 + 14) = v55;
LABEL_44:
                  __SC_log_send(6, v41, v42, v51);
                  goto LABEL_45;
                }

                goto LABEL_45;
              }

LABEL_42:
              v41 = __log_SCPreferences();
              v42 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v41, v42))
              {
                v56 = _os_log_pack_size();
                v51 = &v240 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
                v64 = *__error();
                v65 = _os_log_pack_fill();
                v66 = *(prefs + 13);
                *v65 = 136315138;
                *(v65 + 4) = v66;
                goto LABEL_44;
              }

LABEL_45:
              v67 = SCDynamicStoreNotifyValue(0, *(prefs + 23));
              if (v67)
              {
                v3 = v67;
                *(prefs + 305) = 0;
                goto LABEL_75;
              }

              v68 = __log_SCPreferences();
              v69 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v68, v69))
              {
                v70 = _os_log_pack_size();
                v78 = &v240 - ((MEMORY[0x1EEE9AC00](v70, v71, v72, v73, v74, v75, v76, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
                v79 = *__error();
                *_os_log_pack_fill() = 0;
                __SC_log_send(6, v68, v69, v78);
              }

              v18 = 1001;
              goto LABEL_50;
            }

            v179 = __error();
            _SCErrorSet(*v179);
            v180 = __log_SCPreferences();
            v181 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v180, v181))
            {
              v182 = _os_log_pack_size();
              v190 = &v240 - ((MEMORY[0x1EEE9AC00](v182, v183, v184, v185, v186, v187, v188, v189) + 15) & 0xFFFFFFFFFFFFFFF0);
              v191 = *__error();
              v192 = _os_log_pack_fill();
              v193 = __error();
              v194 = strerror(*v193);
              *v192 = 136315138;
              *(v192 + 4) = v194;
              __SC_log_send(6, v180, v181, v190);
            }

            v195 = __log_SCPreferences();
            v196 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v195, v196))
            {
              v197 = _os_log_pack_size();
              v205 = &v240 - ((MEMORY[0x1EEE9AC00](v197, v198, v199, v200, v201, v202, v203, v204) + 15) & 0xFFFFFFFFFFFFFFF0);
              v206 = *__error();
              v207 = _os_log_pack_fill();
              *v207 = 136315394;
              *(v207 + 4) = v10;
              *(v207 + 12) = 2080;
              *(v207 + 14) = v8;
              __SC_log_send(6, v195, v196, v205);
            }

LABEL_73:
            CFAllocatorDeallocate(0, v10);
            goto LABEL_74;
          }

          v150 = __error();
          _SCErrorSet(*v150);
          v151 = __log_SCPreferences();
          v152 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v151, v152))
          {
            v153 = _os_log_pack_size();
            v161 = &v240 - ((MEMORY[0x1EEE9AC00](v153, v154, v155, v156, v157, v158, v159, v160) + 15) & 0xFFFFFFFFFFFFFFF0);
            v162 = *__error();
            v163 = _os_log_pack_fill();
            v164 = __error();
            v165 = strerror(*v164);
            *v163 = 136315138;
            *(v163 + 4) = v165;
            __SC_log_send(6, v151, v152, v161);
          }

          v166 = __log_SCPreferences();
          v167 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v166, v167))
          {
            v168 = _os_log_pack_size();
            v176 = &v240 - ((MEMORY[0x1EEE9AC00](v168, v169, v170, v171, v172, v173, v174, v175) + 15) & 0xFFFFFFFFFFFFFFF0);
            v177 = *__error();
            v178 = _os_log_pack_fill();
            *v178 = 136315138;
            *(v178 + 4) = v10;
            __SC_log_send(6, v166, v167, v176);
          }

          unlink(v10);
          CFAllocatorDeallocate(0, v10);
        }

        CFRelease(v35);
        goto LABEL_74;
      }
    }
  }

  v18 = 1002;
LABEL_50:
  _SCErrorSet(v18);
LABEL_74:
  v3 = 0;
LABEL_75:
  if (!v2)
  {
    v208 = SCError();
    SCPreferencesUnlock(prefs);
    _SCErrorSet(v208);
  }

LABEL_77:
  v209 = *MEMORY[0x1E69E9840];
  return v3;
}