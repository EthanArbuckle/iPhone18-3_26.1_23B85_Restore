SCNetworkSetRef SCNetworkSetCopy(SCPreferencesRef prefs, CFStringRef setID)
{
  v11 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!setID || CFGetTypeID(setID) != TypeID)
  {
    v9 = 1002;
LABEL_9:
    _SCErrorSet(v9);
    result = 0;
    goto LABEL_10;
  }

  Set = SCPreferencesPathKeyCreateSet(0, setID);
  Value = SCPreferencesPathGetValue(prefs, Set);
  CFRelease(Set);
  v7 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    v9 = 1004;
    goto LABEL_9;
  }

  result = __SCNetworkSetCreatePrivate(prefs, setID);
  if (!result)
  {
    SCNetworkSetCopy_cold_1();
  }

  *(result + 40) = 1;
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkSetCreatePrivate(const void *a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
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

Boolean SCNetworkSetContainsInterface(SCNetworkSetRef set, SCNetworkInterfaceRef interface)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SCNetworkSetCopyServices(set);
  if (v3)
  {
    v4 = v3;
    v5 = __SCNetworkServiceExistsForInterface(v3, interface);
    CFRelease(v4);
    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFArrayRef SCNetworkSetCopyServices(SCNetworkSetRef set)
{
  v75 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_34:
      _SCErrorSet(1002);
      goto LABEL_35;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_34;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_34;
  }

  SetNetworkService = SCPreferencesPathKeyCreateSetNetworkService(0, *(set + 2), 0);
  Value = SCPreferencesPathGetValue(*(set + 3), SetNetworkService);
  CFRelease(SetNetworkService);
  if (!Value)
  {
    v10 = *MEMORY[0x1E69E9840];
    v11 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v11);
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
LABEL_35:
    Mutable = 0;
    goto LABEL_36;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count < 1)
  {
    goto LABEL_36;
  }

  v8 = Count;
  memset(v74, 0, sizeof(v74));
  v70 = Mutable;
  if (Count < 0x11)
  {
    v9 = v74;
  }

  else
  {
    v9 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
  }

  CFDictionaryGetKeysAndValues(Value, v9, 0);
  v13 = 0;
  v71 = @"Interface";
  *&v14 = 138412546;
  v73 = v14;
  *&v14 = 138412802;
  v72 = v14;
  do
  {
    SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), v9[v13], 0);
    Link = SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity);
    CFRelease(SetNetworkServiceEntity);
    if (!Link)
    {
      v34 = __log_SCNetworkConfiguration();
      v35 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v34, v35))
      {
        goto LABEL_29;
      }

      v36 = _os_log_pack_size();
      v44 = v69 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = _os_log_pack_fill();
      v47 = v9[v13];
      v48 = *(set + 2);
      *v46 = v73;
      *(v46 + 4) = v47;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v48;
      v49 = v34;
      v50 = v35;
      v51 = v44;
LABEL_25:
      __SC_log_send(6, v49, v50, v51);
      goto LABEL_29;
    }

    if (!SCPreferencesPathGetValue(*(set + 3), Link))
    {
      v52 = __log_SCNetworkConfiguration();
      v53 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v52, v53))
      {
        goto LABEL_29;
      }

      v54 = _os_log_pack_size();
      v62 = v69 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      v63 = *__error();
      v64 = _os_log_pack_fill();
      v65 = v9[v13];
      v66 = *(set + 2);
      *v64 = v72;
      *(v64 + 4) = v65;
      *(v64 + 12) = 2112;
      *(v64 + 14) = v66;
      *(v64 + 22) = 2112;
      *(v64 + 24) = Link;
      v49 = v52;
      v50 = v53;
      v51 = v62;
      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, Link, @"/");
    if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, ValueAtIndex, 0);
      if (CFEqual(NetworkServiceEntity, Link))
      {
        v20 = SCPreferencesPathKeyCreateNetworkServiceEntity(0, ValueAtIndex, v71);
        v21 = SCPreferencesPathGetValue(*(set + 3), v20);
        CFRelease(v20);
        if (__SCNetworkInterfaceEntityIsPPTP(v21))
        {
          v22 = __log_SCNetworkConfiguration();
          v23 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v22, v23))
          {
            v24 = _os_log_pack_size();
            v69[1] = v69;
            v32 = v69 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
            v33 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(6, v22, v23, v32);
          }
        }

        else
        {
          Private = __SCNetworkServiceCreatePrivate(0, *(set + 3), ValueAtIndex, 0);
          CFArrayAppendValue(v70, Private);
          CFRelease(Private);
        }
      }

      CFRelease(NetworkServiceEntity);
    }

    CFRelease(ArrayBySeparatingStrings);
LABEL_29:
    ++v13;
  }

  while (v8 != v13);
  if (v9 != v74)
  {
    CFAllocatorDeallocate(0, v9);
  }

  Mutable = v70;
LABEL_36:
  v68 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef SCNetworkSetCopyAll(SCPreferencesRef prefs)
{
  v38 = *MEMORY[0x1E69E9840];
  Sets = SCPreferencesPathKeyCreateSets(0);
  v34 = prefs;
  Value = SCPreferencesPathGetValue(prefs, Sets);
  CFRelease(Sets);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) == TypeID)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      Count = CFDictionaryGetCount(Value);
      if (Count >= 1)
      {
        v6 = Count;
        memset(v37, 0, sizeof(v37));
        memset(v36, 0, sizeof(v36));
        if (Count < 0x11)
        {
          v7 = v37;
          v8 = v36;
        }

        else
        {
          v7 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
          v8 = MEMORY[0x1B26F3AA0](0, 8 * v6, 0xC0040B8AA526DLL, 0);
        }

        CFDictionaryGetKeysAndValues(Value, v7, v8);
        v12 = 0;
        *&v13 = 138412290;
        v33 = v13;
        do
        {
          v14 = v8[v12];
          v15 = CFDictionaryGetTypeID();
          if (v14 && CFGetTypeID(v14) == v15)
          {
            Private = __SCNetworkSetCreatePrivate(v34, v7[v12]);
            if (!Private)
            {
              SCNetworkSetCopyAll_cold_1();
            }

            v17 = Private;
            Private[40] = 1;
            CFArrayAppendValue(Mutable, Private);
            CFRelease(v17);
          }

          else
          {
            v18 = __log_SCNetworkConfiguration();
            v19 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v18, v19))
            {
              v20 = _os_log_pack_size();
              v28 = &v33 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
              v29 = *__error();
              v30 = _os_log_pack_fill();
              v31 = v7[v12];
              *v30 = v33;
              *(v30 + 4) = v31;
              __SC_log_send(6, v18, v19, v28);
            }
          }

          ++v12;
        }

        while (v6 != v12);
        if (v7 != v37)
        {
          CFAllocatorDeallocate(0, v7);
          CFAllocatorDeallocate(0, v8);
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    v32 = *MEMORY[0x1E69E9840];
    return Mutable;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v10);
  }
}

__CFArray *SCNetworkSetCopyAvailableInterfaces(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v2 = _SCNetworkInterfaceCopyAllWithPreferences(v1);
  Count = CFArrayGetCount(v2);
  if (v1)
  {
    v4 = Count == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
LABEL_6:
    v5 = v2;
    goto LABEL_16;
  }

  v6 = Count;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v8 = SCBridgeInterfaceCopyAll(v1);
  if (v8)
  {
    v9 = v8;
    __SCBridgeInterfaceListCollectMembers(v8, Mutable, 0);
    CFRelease(v9);
  }

  if (!CFSetGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_6;
  }

  v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      if (!CFSetContainsValue(Mutable, ValueAtIndex))
      {
        CFArrayAppendValue(v5, ValueAtIndex);
      }
    }
  }

  CFRelease(v2);
  CFRelease(Mutable);
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

SCNetworkSetRef SCNetworkSetCopyCurrent(SCPreferencesRef prefs)
{
  v23[1] = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(prefs, @"CurrentSet");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, Value, @"/");
    v5 = 0;
    if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
      Set = SCPreferencesPathKeyCreateSet(0, ValueAtIndex);
      if (CFEqual(Set, Value))
      {
        Private = __SCNetworkSetCreatePrivate(prefs, ValueAtIndex);
        if (!Private)
        {
          SCNetworkSetCopyCurrent_cold_1();
        }

        v5 = Private;
        *(Private + 40) = 1;
      }

      else
      {
        v9 = __log_SCNetworkConfiguration();
        v10 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v9, v10))
        {
          v11 = _os_log_pack_size();
          v19 = v23 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(5, v9, v10, v19);
        }

        v5 = 0;
      }

      CFRelease(Set);
    }

    CFRelease(ArrayBySeparatingStrings);
  }

  else
  {
    v5 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

SCNetworkSetRef SCNetworkSetCreate(SCPreferencesRef prefs)
{
  v25[1] = *MEMORY[0x1E69E9840];
  Sets = SCPreferencesPathKeyCreateSets(0);
  UniqueChild = SCPreferencesPathCreateUniqueChild(prefs, Sets);
  CFRelease(Sets);
  if (!UniqueChild)
  {
    goto LABEL_7;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, UniqueChild, @"/");
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  Private = __SCNetworkSetCreatePrivate(prefs, ValueAtIndex);
  if (!Private)
  {
    SCNetworkSetCreate_cold_1();
  }

  v7 = Private;
  CFRelease(ArrayBySeparatingStrings);
  v7[40] = 0;
  v8 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = SCPreferencesPathSetValue(prefs, UniqueChild, v8);
  CFRelease(UniqueChild);
  CFRelease(v8);
  if (!v9)
  {
    CFRelease(v7);
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v10 = __log_SCNetworkConfiguration();
  v11 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v10, v11))
  {
    v12 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 138412290;
    *(v22 + 4) = v7;
    __SC_log_send(7, v10, v11, v20);
  }

LABEL_8:
  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

const __SCNetworkSet *_SCNetworkSetCreateDefault(const __SCPreferences *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = SCNetworkSetCopyCurrent(a1);
  if (v2)
  {
    v3 = v2;
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = &v70[-((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v15 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v4, v5, v14);
    }

    CFRelease(v3);
    _SCErrorSet(1005);
    goto LABEL_5;
  }

  v19 = SCNetworkSetCreate(a1);
  if (!v19)
  {
    v40 = __log_SCNetworkConfiguration();
    v41 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v40, v41))
    {
      v42 = _os_log_pack_size();
      v50 = &v70[-((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v51 = *__error();
      v52 = _os_log_pack_fill();
      v53 = SCError();
      v54 = SCErrorString(v53);
      *v52 = 136315138;
      *(v52 + 4) = v54;
      __SC_log_send(5, v40, v41, v50);
    }

    goto LABEL_5;
  }

  v16 = v19;
  v20 = copy_default_set_name(1);
  v21 = SCNetworkSetSetName(v16, v20);
  CFRelease(v20);
  *(v16 + 6) = *MEMORY[0x1E695E4D0];
  if (!v21)
  {
    v55 = __log_SCNetworkConfiguration();
    v56 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v55, v56))
    {
      v57 = _os_log_pack_size();
      v65 = &v70[-((MEMORY[0x1EEE9AC00](v57, v58, v59, v60, v61, v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v66 = *__error();
      v67 = _os_log_pack_fill();
      v68 = SCError();
      v69 = SCErrorString(v68);
      *v67 = 136315138;
      *(v67 + 4) = v69;
      __SC_log_send(5, v55, v56, v65);
    }

    goto LABEL_22;
  }

  v22 = SCNetworkSetSetCurrent(v16);
  if (!v22)
  {
    v23 = __log_SCNetworkConfiguration();
    v24 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v23, v24))
    {
      v25 = _os_log_pack_size();
      v33 = &v70[-((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v34 = *__error();
      v35 = _os_log_pack_fill();
      v36 = SCError();
      v37 = SCErrorString(v36);
      *v35 = 136315138;
      *(v35 + 4) = v37;
      __SC_log_send(5, v23, v24, v33);
    }
  }

  if (!SCPreferencesGetValue(a1, @"Model"))
  {
    v38 = _SC_hw_model(0);
    SCPreferencesSetValue(a1, @"Model", v38);
  }

  if (!SCPreferencesGetValue(a1, @"__VERSION__"))
  {
    valuePtr = 20191120;
    v39 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SCPreferencesSetValue(a1, @"__VERSION__", v39);
    CFRelease(v39);
  }

  if (!v22)
  {
LABEL_22:
    SCNetworkSetRemove(v16);
    CFRelease(v16);
LABEL_5:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

__CFString *copy_default_set_name(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (copy_default_set_name_once_49 != -1)
    {
      copy_default_set_name_cold_1();
    }

    v1 = &copy_default_set_name_localized;
  }

  else
  {
    if (copy_default_set_name_once != -1)
    {
      copy_default_set_name_cold_2();
    }

    v1 = &copy_default_set_name_non_localized;
  }

  v2 = *v1;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"Automatic";
  }

  CFRetain(v3);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

Boolean SCNetworkSetSetName(SCNetworkSetRef set, CFStringRef name)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
      goto LABEL_16;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_16;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_16;
  }

  if (!__SCNetworkSetExists(set))
  {
    v10 = __log_SCNetworkConfiguration();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = @"<NULL>";
      if (name)
      {
        v23 = name;
      }

      *v22 = 138412546;
      *(v22 + 4) = set;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v23;
      __SC_log_send(3, v10, v11, v20);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetName() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_16;
  }

  if (!name)
  {
    v9 = 0;
    v6 = 0;
    goto LABEL_19;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) != TypeID)
  {
LABEL_16:
    _SCErrorSet(1002);
    LOBYTE(v24) = 0;
    goto LABEL_17;
  }

  v6 = copy_default_set_name(0);
  v7 = CFEqual(name, v6);
  v8 = copy_default_set_name(1);
  v9 = v8;
  if (!v7)
  {
    if (CFEqual(name, v6))
    {
LABEL_34:
      v44 = SCNetworkSetCopyAll(*(set + 3));
      if (v44)
      {
        v45 = v44;
        Count = CFArrayGetCount(v44);
        if (Count >= 1)
        {
          v47 = Count;
          v48 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v45, v48);
            SetID = SCNetworkSetGetSetID(ValueAtIndex);
            if (!CFEqual(*(set + 2), SetID))
            {
              v51 = SCNetworkSetGetName(ValueAtIndex);
              if (v51)
              {
                if (CFEqual(name, v51))
                {
                  break;
                }
              }
            }

            if (v47 == ++v48)
            {
              goto LABEL_41;
            }
          }

          CFRelease(v45);
          v43 = 1005;
          goto LABEL_29;
        }

LABEL_41:
        CFRelease(v45);
      }

LABEL_42:
      if (v6)
      {
        if (!v9)
        {
          v9 = copy_default_set_name(1);
        }

        if (CFEqual(name, v9))
        {
          name = v6;
        }
      }

      goto LABEL_47;
    }

LABEL_19:
    v27 = copy_default_set_name(1);
    v28 = SCNetworkSetGetName(set);
    if (v28 == v27)
    {
      CFRelease(v27);
    }

    else
    {
      if (!v27 || !v28)
      {
        CFRelease(v27);
        goto LABEL_31;
      }

      v29 = CFEqual(v28, v27);
      CFRelease(v27);
      if (!v29)
      {
LABEL_31:
        if (!name)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }
    }

    if (geteuid())
    {
      v30 = __log_SCNetworkConfiguration();
      v31 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v30, v31))
      {
        v32 = _os_log_pack_size();
        v40 = block - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        *v42 = 138412290;
        *(v42 + 4) = set;
        __SC_log_send(3, v30, v31, v40);
      }

      _SC_crash("The Automatic network set cannot be renamed", 0, 0);
      v43 = 1002;
LABEL_29:
      _SCErrorSet(v43);
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  name = v8;
  if (v8)
  {
    goto LABEL_34;
  }

LABEL_47:
  v52 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  Value = SCPreferencesPathGetValue(*(set + 3), v52);
  v54 = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v54)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      Mutable = MutableCopy;
      if (!name)
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
LABEL_54:
        v24 = SCPreferencesPathSetValue(*(set + 3), v52, Mutable);
        CFRelease(Mutable);
        CFRelease(v52);
        if (v24)
        {
          v57 = __log_SCNetworkConfiguration();
          v58 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v57, v58))
          {
            v59 = _os_log_pack_size();
            v67 = block - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64, v65, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
            v68 = *__error();
            v69 = _os_log_pack_fill();
            *v69 = 138412290;
            *(v69 + 4) = set;
            __SC_log_send(7, v57, v58, v67);
          }
        }

        goto LABEL_59;
      }

LABEL_53:
      CFDictionarySetValue(Mutable, @"UserDefinedName", name);
      goto LABEL_54;
    }
  }

  else if (name)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_53;
  }

  CFRelease(v52);
LABEL_58:
  LOBYTE(v24) = 0;
LABEL_59:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

Boolean SCNetworkSetSetCurrent(SCNetworkSetRef set)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_12:
      _SCErrorSet(1002);
      LOBYTE(v4) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_12;
  }

  if (!__SCNetworkSetExists(set))
  {
    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = block - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = 138412290;
      *(v30 + 4) = set;
      __SC_log_send(3, v18, v19, v28);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetCurrent() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_12;
  }

  v3 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  v4 = SCPreferencesSetValue(*(set + 3), @"CurrentSet", v3);
  CFRelease(v3);
  if (v4)
  {
    v5 = __log_SCNetworkConfiguration();
    v6 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = block - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 138412290;
      *(v17 + 4) = set;
      __SC_log_send(7, v5, v6, v15);
    }
  }

LABEL_13:
  v31 = *MEMORY[0x1E69E9840];
  return v4;
}

Boolean SCNetworkSetRemove(SCNetworkSetRef set)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_20:
      _SCErrorSet(1002);
LABEL_21:
      LOBYTE(v46) = 0;
      goto LABEL_22;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_20;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_20;
  }

  if (!__SCNetworkSetExists(set))
  {
    v33 = __log_SCNetworkConfiguration();
    v34 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v33, v34))
    {
      v35 = _os_log_pack_size();
      v43 = block - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *__error();
      v45 = _os_log_pack_fill();
      *v45 = 138412290;
      *(v45 + 4) = set;
      __SC_log_send(3, v33, v34, v43);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetRemove() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_20;
  }

  if (_SCNetworkSetIsDefault(set) && geteuid())
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = block - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 138412290;
      *(v15 + 4) = set;
      __SC_log_send(3, v3, v4, v13);
    }

    _SC_crash("The Automatic network set cannot be removed", 0, 0);
    goto LABEL_20;
  }

  Value = SCPreferencesGetValue(*(set + 3), @"CurrentSet");
  v17 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, v17))
  {
    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v19, v20))
    {
      v21 = _os_log_pack_size();
      v29 = block - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      v32 = *(set + 2);
      *v31 = 138412290;
      *(v31 + 4) = v32;
      __SC_log_send(7, v19, v20, v29);
    }

    _SCErrorSet(1002);
    CFRelease(v17);
    goto LABEL_21;
  }

  v46 = SCPreferencesPathRemoveValue(*(set + 3), v17);
  CFRelease(v17);
  if (v46)
  {
    v49 = __log_SCNetworkConfiguration();
    v50 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v49, v50))
    {
      v51 = _os_log_pack_size();
      v59 = block - ((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = *__error();
      v61 = _os_log_pack_fill();
      *v61 = 138412290;
      *(v61 + 4) = set;
      __SC_log_send(7, v49, v50, v59);
    }
  }

LABEL_22:
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

CFStringRef SCNetworkSetGetSetID(SCNetworkSetRef set)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_6:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_6;
  }

  result = *(set + 2);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkSetIsDefault(const __CFBoolean **cf)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_19:
      _SCErrorSet(1002);
      Value = 0;
LABEL_20:
      v11 = *MEMORY[0x1E69E9840];
      return Value;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_19;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_19;
  }

  v3 = cf[6];
  if (!v3)
  {
    v6 = _SCNetworkSetCopyUserDefinedName(cf);
    v7 = cf[6];
    if (!v7)
    {
      v8 = copy_default_set_name(0);
      if (v6 && CFEqual(v6, v8))
      {
        v9 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v7 = *v9;
      if (v8)
      {
        CFRelease(v8);
      }

      cf[6] = v7;
    }

    Value = CFBooleanGetValue(v7);
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_20;
  }

  v4 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(v3);
}

CFTypeRef _SCNetworkSetCopyUserDefinedName(CFTypeRef cf)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!cf)
  {
    goto LABEL_12;
  }

LABEL_3:
  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_12;
  }

  Set = SCPreferencesPathKeyCreateSet(0, *(cf + 2));
  Value = SCPreferencesPathGetValue(*(cf + 3), Set);
  CFRelease(Set);
  if (!Value)
  {
    goto LABEL_12;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_12;
  }

  v6 = CFDictionaryGetValue(Value, @"UserDefinedName");
  v7 = CFStringGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    goto LABEL_12;
  }

  v8 = *MEMORY[0x1E69E9840];

  return CFRetain(v6);
}

CFStringRef SCNetworkSetGetName(SCNetworkSetRef set)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_7:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_8;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_7;
  }

  result = *(set + 4);
  if (!result)
  {
    result = _SCNetworkSetCopyUserDefinedName(set);
    *(set + 4) = result;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef SCNetworkSetGetServiceOrder(SCNetworkSetRef set)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_12:
      _SCErrorSet(1002);
      goto LABEL_13;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_12;
  }

  result = SCPreferencesPathKeyCreateSetNetworkGlobalEntity(0, *(set + 2), @"IPv4");
  if (!result)
  {
    goto LABEL_14;
  }

  v4 = result;
  Value = SCPreferencesPathGetValue(*(set + 3), result);
  CFRelease(v4);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (v7 = CFDictionaryGetValue(Value, @"ServiceOrder"), v8 = CFArrayGetTypeID(), !v7))
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (CFGetTypeID(v7) == v8)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID SCNetworkSetGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
  }

  result = __kSCNetworkSetTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCNetworkSetRemoveService(SCNetworkSetRef set, SCNetworkServiceRef service)
{
  v83 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_26:
      _SCErrorSet(1002);
      LOBYTE(v42) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_26;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_26;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!service || CFGetTypeID(service) != TypeID || !*(service + 4))
  {
    goto LABEL_26;
  }

  if (!__SCNetworkSetExists(set))
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v16, v17))
    {
      v18 = _os_log_pack_size();
      v26 = &v72 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      *v28 = 138412546;
      *(v28 + 4) = set;
      *(v28 + 12) = 2112;
      *(v28 + 14) = service;
      __SC_log_send(3, v16, v17, v26);
    }

    block = MEMORY[0x1E69E9820];
    v77 = 0x40000000;
    v78 = ___SC_crash_once_block_invoke_4;
    v79 = &__block_descriptor_tmp_16;
    v81 = 0;
    v82 = 0;
    v80 = "SCNetworkSetRemoveService() w/removed set";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_26;
    }

LABEL_75:
    dispatch_once(&_SC_crash_once_once_4, &block);
    goto LABEL_26;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v29 = __log_SCNetworkConfiguration();
    v30 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v29, v30))
    {
      v31 = _os_log_pack_size();
      v39 = &v72 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = *__error();
      v41 = _os_log_pack_fill();
      *v41 = 138412546;
      *(v41 + 4) = set;
      *(v41 + 12) = 2112;
      *(v41 + 14) = service;
      __SC_log_send(3, v29, v30, v39);
    }

    block = MEMORY[0x1E69E9820];
    v77 = 0x40000000;
    v78 = ___SC_crash_once_block_invoke_4;
    v79 = &__block_descriptor_tmp_16;
    v81 = 0;
    v82 = 0;
    v80 = "SCNetworkSetRemoveService() w/removed service";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

  _serviceOrder_remove(set, service);
  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), *(service + 2), 0);
  if (SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity))
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      v8 = __SCNetworkInterfaceCopyDeepConfiguration(set, Interface);
      if (v8)
      {
        __SCNetworkInterfaceSetDeepConfiguration(set, Interface, 0, v9);
      }

      DisablePrivateRelayValue = __SCNetworkInterfaceGetDisablePrivateRelayValue(Interface);
      v11 = DisablePrivateRelayValue;
      if (DisablePrivateRelayValue)
      {
        CFRetain(DisablePrivateRelayValue);
        __SCNetworkInterfaceSetDisablePrivateRelayValue(Interface, 0);
      }

      DisableUntilNeededValue = __SCNetworkInterfaceGetDisableUntilNeededValue(Interface);
      v13 = DisableUntilNeededValue;
      if (DisableUntilNeededValue)
      {
        CFRetain(DisableUntilNeededValue);
        __SCNetworkInterfaceSetDisableUntilNeededValue(Interface, 0);
      }

      EnableLowDataModeValue = __SCNetworkInterfaceGetEnableLowDataModeValue(Interface);
      v15 = EnableLowDataModeValue;
      if (EnableLowDataModeValue)
      {
        CFRetain(EnableLowDataModeValue);
        __SCNetworkInterfaceSetEnableLowDataModeValue(Interface, 0);
      }
    }

    else
    {
      v8 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
    }

    v42 = SCPreferencesPathRemoveValue(*(set + 3), SetNetworkServiceEntity);
    if (v42)
    {
      v45 = 0;
    }

    else
    {
      v45 = SCError();
    }

    if (v8 || v11 || v13 || v15)
    {
      v74 = v45;
      v75 = v11;
      v46 = SCNetworkSetCopyServices(set);
      if (v46)
      {
        v48 = v46;
        Count = CFArrayGetCount(v46);
        if (Count < 1)
        {
          v54 = 1;
        }

        else
        {
          v50 = Count;
          v73 = v8;
          v51 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v48, v51);
            v53 = SCNetworkServiceGetInterface(ValueAtIndex);
            if (v53)
            {
              if (CFEqual(Interface, v53))
              {
                break;
              }
            }

            if (v50 == ++v51)
            {
              v54 = 1;
              goto LABEL_47;
            }
          }

          v54 = 0;
LABEL_47:
          v8 = v73;
        }

        CFRelease(v48);
      }

      else
      {
        v54 = 1;
      }

      if (v8)
      {
        if (v54)
        {
          v55 = 0;
        }

        else
        {
          v55 = v8;
        }

        __SCNetworkInterfaceSetDeepConfiguration(set, Interface, v55, v47);
        CFRelease(v8);
      }

      if (v75)
      {
        if (v54)
        {
          v56 = 0;
        }

        else
        {
          v56 = v75;
        }

        __SCNetworkInterfaceSetDisablePrivateRelayValue(Interface, v56);
        CFRelease(v75);
      }

      if (v13)
      {
        if (v54)
        {
          v57 = 0;
        }

        else
        {
          v57 = v13;
        }

        __SCNetworkInterfaceSetDisableUntilNeededValue(Interface, v57);
        CFRelease(v13);
      }

      v45 = v74;
      if (v15)
      {
        if (v54)
        {
          v58 = 0;
        }

        else
        {
          v58 = v15;
        }

        __SCNetworkInterfaceSetEnableLowDataModeValue(Interface, v58);
        CFRelease(v15);
      }
    }

    CFRelease(SetNetworkServiceEntity);
    if (!v42)
    {
      _SCErrorSet(v45);
      goto LABEL_27;
    }
  }

  else
  {
    CFRelease(SetNetworkServiceEntity);
    LOBYTE(v42) = 1;
  }

  v59 = __log_SCNetworkConfiguration();
  v60 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v59, v60))
  {
    v61 = _os_log_pack_size();
    v69 = &v72 - ((MEMORY[0x1EEE9AC00](v61, v62, v63, v64, v65, v66, v67, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = *__error();
    v71 = _os_log_pack_fill();
    *v71 = 138412546;
    *(v71 + 4) = set;
    *(v71 + 12) = 2112;
    *(v71 + 14) = service;
    __SC_log_send(7, v59, v60, v69);
  }

LABEL_27:
  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

void _serviceOrder_remove(const __SCNetworkSet *a1, const __SCNetworkService *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  if (ServiceOrder)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
    ServiceID = SCNetworkServiceGetServiceID(a2);
    v7 = _serviceOrder_clear(MutableCopy, ServiceID);
    if (v7 >= 2)
    {
      v8 = v7;
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
        v11 = _os_log_pack_size();
        v19 = v23 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        *v21 = 138412546;
        *(v21 + 4) = a2;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v8;
        __SC_log_send(3, v9, v10, v19);
      }
    }

    SCNetworkSetSetServiceOrder(a1, MutableCopy);
    CFRelease(MutableCopy);
  }

  v22 = *MEMORY[0x1E69E9840];
}

Boolean SCNetworkSetSetServiceOrder(SCNetworkSetRef set, CFArrayRef newOrder)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
      goto LABEL_19;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_19;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_19;
  }

  if (!__SCNetworkSetExists(set))
  {
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = &v57 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 138412290;
      *(v27 + 4) = set;
      __SC_log_send(3, v15, v16, v25);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetServiceOrder() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_19;
  }

  TypeID = CFArrayGetTypeID();
  if (!newOrder || CFGetTypeID(newOrder) != TypeID)
  {
LABEL_19:
    _SCErrorSet(1002);
    goto LABEL_20;
  }

  Count = CFArrayGetCount(newOrder);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(newOrder, v8);
      v10 = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v10)
      {
        goto LABEL_19;
      }
    }

    while (v7 != ++v8);
  }

  SetNetworkGlobalEntity = SCPreferencesPathKeyCreateSetNetworkGlobalEntity(0, *(set + 2), @"IPv4");
  if (!SetNetworkGlobalEntity)
  {
LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  v12 = SetNetworkGlobalEntity;
  Value = SCPreferencesPathGetValue(*(set + 3), SetNetworkGlobalEntity);
  v58 = v12;
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v57 = MutableCopy;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v32 = CFArrayGetCount(newOrder);
  if (v32 >= 1)
  {
    v34 = v32;
    v35 = 0;
    *&v33 = 138412290;
    v59 = v33;
    do
    {
      v36 = CFArrayGetCount(Mutable);
      v37 = CFArrayGetValueAtIndex(newOrder, v35);
      if (v36 && (v62.location = 0, v62.length = v36, CFArrayContainsValue(Mutable, v62, v37)))
      {
        v38 = __log_SCNetworkConfiguration();
        v39 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v38, v39))
        {
          v40 = _os_log_pack_size();
          v60 = &v57;
          v48 = &v57 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
          v49 = *__error();
          v50 = _os_log_pack_fill();
          *v50 = v59;
          *(v50 + 4) = v37;
          __SC_log_send(3, v38, v39, v48);
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, v37);
      }

      ++v35;
    }

    while (v34 != v35);
  }

  v51 = CFArrayGetCount(Mutable);
  v52 = v57;
  if (v51 < 1)
  {
    CFDictionaryRemoveValue(v57, @"ServiceOrder");
  }

  else
  {
    CFDictionarySetValue(v57, @"ServiceOrder", Mutable);
  }

  v53 = v58;
  CFRelease(Mutable);
  v54 = CFDictionaryGetCount(v52);
  v55 = *(set + 3);
  if (v54 < 1)
  {
    v56 = SCPreferencesPathRemoveValue(v55, v53);
  }

  else
  {
    v56 = SCPreferencesPathSetValue(v55, v53, v52);
  }

  v28 = v56;
  CFRelease(v52);
  CFRelease(v53);
LABEL_21:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

CFComparisonResult _SCNetworkSetCompare(const __SCNetworkSet *a1, const __SCNetworkSet *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Name = SCNetworkSetGetName(a1);
  v5 = SCNetworkSetGetName(a2);
  v6 = v5;
  if (!Name)
  {
    if (!v5)
    {
      SetID = SCNetworkSetGetSetID(a1);
      v12 = SCNetworkSetGetSetID(a2);
      v13 = *MEMORY[0x1E69E9840];
      v6 = v12;
      v8 = SetID;
      goto LABEL_9;
    }

    result = kCFCompareGreaterThan;
LABEL_7:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!v5)
  {
    result = kCFCompareLessThan;
    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = Name;
LABEL_9:

  return CFStringCompare(v8, v6, 0);
}

uint64_t SCNetworkSetEstablishDefaultConfiguration(const __SCPreferences **cf)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_7:
      _SCErrorSet(1002);
      goto LABEL_8;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_7;
  }

  v3 = _SCNetworkInterfaceCopyAllWithPreferences(cf[3]);
  if (v3)
  {
    v4 = v3;
    v5 = __SCNetworkSetEstablishDefaultConfigurationForInterfaces(cf, v3, 1);
    CFRelease(v4);
    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __SCNetworkSetEstablishDefaultConfigurationForInterfaces(uint64_t a1, const __CFArray *a2, int a3)
{
  v5 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v6 = SCNetworkSetCopyAll(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) != 1 || (v8 = SCNetworkSetCopyServices(v5)) != 0 && (v9 = v8, Count = CFArrayGetCount(v8), CFRelease(v9), Count) || (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), !CFEqual(v5, ValueAtIndex)))
    {
      v12 = 0;
    }

    else
    {
      v12 = SCNetworkServiceCopyAll(*(v5 + 24));
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 0;
  }

  v13 = SCNetworkSetCopyServices(v5);
  v14 = v13;
  v89 = v12;
  if (v13 && *(v5 + 40))
  {
    CFRelease(v13);
    v14 = SCNetworkServiceCopyAll(*(v5 + 24));
  }

  v15 = *(v5 + 24);
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v17 = SCBridgeInterfaceCopyAll(v15);
  if (v17)
  {
    v18 = v17;
    __SCBridgeInterfaceListCollectMembers(v17, Mutable, 0);
    CFRelease(v18);
  }

  v91 = 0;
  v19 = 1;
  v92 = v14;
  if (!a2 || !v14)
  {
    goto LABEL_52;
  }

  v20 = CFArrayGetCount(a2);
  if (v20 < 1)
  {
    v75 = 0;
    v76 = v92;
    goto LABEL_55;
  }

  v22 = v20;
  v23 = 0;
  v91 = 0;
  *&v21 = 138412546;
  v86 = v21;
  v90 = v5;
  v88 = a3;
  v87 = a2;
  do
  {
    v24 = CFArrayGetValueAtIndex(a2, v23);
    v25 = v24;
    if (a3)
    {
      ConfigurationAction = _SCNetworkInterfaceGetConfigurationAction(v24);
      TypeID = CFStringGetTypeID();
      if (ConfigurationAction)
      {
        if (CFGetTypeID(ConfigurationAction) == TypeID && CFEqual(ConfigurationAction, @"None"))
        {
          goto LABEL_51;
        }
      }
    }

    if (CFSetContainsValue(Mutable, v25) || __SCNetworkServiceExistsForInterface(v92, v25))
    {
      goto LABEL_51;
    }

    v28 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v28, v25);
    if (!v19 || CFArrayGetCount(v28) < 1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v29 = CFArrayGetValueAtIndex(v28, 0);
      SupportedProtocolTypes = SCNetworkInterfaceGetSupportedProtocolTypes(v29);
      if (!SupportedProtocolTypes || CFArrayGetCount(SupportedProtocolTypes) < 1)
      {
        SupportedInterfaceTypes = SCNetworkInterfaceGetSupportedInterfaceTypes(v29);
        if (SupportedInterfaceTypes)
        {
          v35 = SupportedInterfaceTypes;
          v36 = CFArrayGetCount(SupportedInterfaceTypes);
          if (v36 >= 1)
          {
            v37 = v36;
            for (i = 0; i != v37; ++i)
            {
              v39 = CFArrayGetValueAtIndex(v35, i);
              v40 = SCNetworkInterfaceCreateWithInterface(v29, v39);
              if (v40)
              {
                v41 = v40;
                CFArrayAppendValue(v28, v40);
                CFRelease(v41);
              }
            }

            v5 = v90;
          }
        }

        goto LABEL_40;
      }

      v31 = SCNetworkServiceCreate(*(v5 + 24), v29);
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (!SCNetworkServiceEstablishDefaultConfiguration(v31))
      {
        v58 = __log_SCNetworkConfiguration();
        v59 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v58, v59))
        {
LABEL_47:
          v60 = v58;
          v61 = _os_log_pack_size();
          v85[1] = v85;
          v69 = v85 - ((MEMORY[0x1EEE9AC00](v61, v62, v63, v64, v65, v66, v67, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
          v70 = *__error();
          v71 = _os_log_pack_fill();
          LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v29);
          v73 = SCError();
          v74 = SCErrorString(v73);
          *v71 = v86;
          *(v71 + 4) = LocalizedDisplayName;
          *(v71 + 12) = 2080;
          *(v71 + 14) = v74;
          __SC_log_send(3, v60, v59, v69);
          v5 = v90;
        }

LABEL_48:
        SCNetworkServiceRemove(v32);
        CFRelease(v32);
        goto LABEL_49;
      }

      v33 = SCNetworkSetAddService(v5, v32);
      if (!v33)
      {
        v58 = __log_SCNetworkConfiguration();
        v59 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v58, v59))
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v19 = v33;
      CFRelease(v32);
      v91 = 1;
LABEL_40:
      CFArrayRemoveValueAtIndex(v28, 0);
      if (CFArrayGetCount(v28) <= 0)
      {
        goto LABEL_50;
      }
    }

    v42 = __log_SCNetworkConfiguration();
    v43 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v42, v43))
    {
      v44 = _os_log_pack_size();
      v52 = v85 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = *__error();
      v54 = _os_log_pack_fill();
      v55 = SCNetworkInterfaceGetLocalizedDisplayName(v29);
      v56 = SCError();
      v57 = SCErrorString(v56);
      *v54 = v86;
      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      *(v54 + 14) = v57;
      __SC_log_send(3, v42, v43, v52);
      v5 = v90;
    }

LABEL_49:
    CFArrayRemoveValueAtIndex(v28, 0);
    v19 = 0;
LABEL_50:
    CFRelease(v28);
    a3 = v88;
    a2 = v87;
LABEL_51:
    ++v23;
  }

  while (v23 != v22);
LABEL_52:
  v75 = v91;
  v76 = v92;
  if (v92)
  {
LABEL_55:
    CFRelease(v76);
  }

  CFRelease(Mutable);
  v77 = v89;
  if (v89)
  {
    if (v19)
    {
      if (v75)
      {
        v78 = CFArrayGetCount(v89);
        if (v78 >= 1)
        {
          v79 = v78;
          for (j = 0; j != v79; ++j)
          {
            v81 = CFArrayGetValueAtIndex(v77, j);
            if (_SCNetworkServiceIsVPN(v81))
            {
              v19 = SCNetworkSetAddService(v5, v81);
              if (!v19)
              {
                break;
              }
            }
          }
        }
      }
    }

    CFRelease(v77);
  }

  if (v19)
  {
    if (v75)
    {
      if (!SCPreferencesGetValue(*(v5 + 24), @"Model"))
      {
        v82 = _SC_hw_model(0);
        SCPreferencesSetValue(*(v5 + 24), @"Model", v82);
      }
    }

    else
    {
      _SCErrorSet(0);
    }
  }

  v83 = *MEMORY[0x1E69E9840];
  return v75;
}

uint64_t SCNetworkSetEstablishDefaultInterfaceConfiguration(CFTypeRef cf, const void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_9:
    _SCErrorSet(1002);
    v8 = 0;
    goto LABEL_10;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_9;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_9;
  }

  v6 = CFArrayCreate(0, v11, 1, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    SCNetworkSetEstablishDefaultInterfaceConfiguration_cold_2();
  }

  v7 = v6;
  v8 = __SCNetworkSetEstablishDefaultConfigurationForInterfaces(cf, v6, 0);
  CFRelease(v7);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

__CFArray *SCNetworkSetCopySelectedVPNService(CFTypeRef cf)
{
  v21 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_27:
      _SCErrorSet(1002);
      goto LABEL_28;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_27;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_27;
  }

  v3 = SCNetworkSetCopyServices(cf);
  if (!v3)
  {
LABEL_28:
    Mutable = 0;
    goto LABEL_29;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    CFRelease(v4);
    goto LABEL_28;
  }

  v6 = Count;
  v7 = 0;
  Mutable = 0;
  v9 = MEMORY[0x1E695E9C0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    if (SCNetworkServiceGetEnabled(ValueAtIndex) && _SCNetworkServiceIsVPN(ValueAtIndex))
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, v9);
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v7;
  }

  while (v6 != v7);
  CFRelease(v4);
  if (Mutable)
  {
    v11 = CFArrayGetCount(Mutable);
    if (v11 < 2)
    {
      MutableCopy = Mutable;
    }

    else
    {
      v12 = v11;
      ServiceOrder = SCNetworkSetGetServiceOrder(cf);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Mutable);
      v22.length = CFArrayGetCount(MutableCopy);
      v22.location = 0;
      CFArraySortValues(MutableCopy, v22, _SCNetworkServiceCompare, ServiceOrder);
      CFRelease(Mutable);
      CFPreferencesAppSynchronize(@"com.apple.mobilevpn");
      v15 = CFPreferencesCopyAppValue(@"activeVPNID", @"com.apple.mobilevpn");
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        while (1)
        {
          Mutable = CFArrayGetValueAtIndex(MutableCopy, v17);
          ServiceID = SCNetworkServiceGetServiceID(Mutable);
          if (CFEqual(ServiceID, v16))
          {
            break;
          }

          if (v12 == ++v17)
          {
            CFRelease(v16);
            goto LABEL_22;
          }
        }

        CFRetain(Mutable);
        CFRelease(v16);
        if (Mutable)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_22:
    Mutable = CFArrayGetValueAtIndex(MutableCopy, 0);
    CFRetain(Mutable);
LABEL_23:
    CFRelease(MutableCopy);
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t SCNetworkSetSetSelectedVPNService(CFTypeRef cf, const void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_21:
    _SCErrorSet(1002);
    LOBYTE(v10) = 0;
    goto LABEL_22;
  }

  if (!cf)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_21;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !_SCNetworkServiceIsVPN(a2))
  {
    goto LABEL_21;
  }

  v6 = SCNetworkSetCopyServices(cf);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    v17.location = 0;
    v17.length = Count;
    if (CFArrayContainsValue(v7, v17, a2))
    {
      if (Count < 1)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v9 = 1;
        v10 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9 - 1);
          if (_SCNetworkServiceIsVPN(ValueAtIndex))
          {
            v12 = CFEqual(a2, ValueAtIndex);
            v10 = SCNetworkServiceSetEnabled(ValueAtIndex, v12);
          }

          if (!v10)
          {
            break;
          }
        }

        while (v9++ < Count);
      }
    }

    else
    {
      _SCErrorSet(1002);
      LOBYTE(v10) = 0;
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _SCNetworkSetSetSetID(uint64_t cf, const void *a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_13:
    _SCErrorSet(1002);
    v6 = 0;
    goto LABEL_14;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_13;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_13;
  }

  if (!__SCNetworkSetExists(cf))
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v7, v8))
    {
      v9 = _os_log_pack_size();
      v17 = v44 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 138412546;
      *(v19 + 4) = cf;
      *(v19 + 12) = 2112;
      *(v19 + 14) = a2;
      __SC_log_send(3, v7, v8, v17);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "_SCNetworkSetSetSetID() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, *(cf + 16)))
  {
    v6 = 1;
    goto LABEL_14;
  }

  Set = SCPreferencesPathKeyCreateSet(0, a2);
  Value = SCPreferencesPathGetValue(*(cf + 24), Set);
  v24 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v24)
  {
    v25 = SCPreferencesPathKeyCreateSet(0, *(cf + 16));
    v26 = SCPreferencesPathGetValue(*(cf + 24), v25);
    v27 = CFDictionaryGetTypeID();
    if (v26 && CFGetTypeID(v26) == v27)
    {
      if (SCPreferencesPathSetValue(*(cf + 24), Set, v26))
      {
        v6 = SCPreferencesPathRemoveValue(*(cf + 24), v25);
        if (v6)
        {
          v28 = SCNetworkSetCopyCurrent(*(cf + 24));
          if (v28)
          {
            v29 = v28;
            v30 = CFEqual(*(v28 + 2), *(cf + 16)) == 0;
            CFRelease(v29);
          }

          else
          {
            v30 = 1;
          }

          v31 = __log_SCNetworkConfiguration();
          v32 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v31, v32))
          {
            v33 = _os_log_pack_size();
            v44[1] = v44;
            v41 = v44 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
            v42 = *__error();
            v43 = _os_log_pack_fill();
            *v43 = 138412546;
            *(v43 + 4) = cf;
            *(v43 + 12) = 2112;
            *(v43 + 14) = a2;
            __SC_log_send(7, v31, v32, v41);
          }

          CFRetain(a2);
          CFRelease(*(cf + 16));
          *(cf + 16) = a2;
          if (!v30)
          {
            SCNetworkSetSetCurrent(cf);
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      _SCErrorSet(1004);
    }

    v6 = 0;
LABEL_26:
    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_28;
  }

  _SCErrorSet(1005);
  v6 = 0;
LABEL_28:
  if (Set)
  {
    CFRelease(Set);
  }

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _serviceOrder(const __SCNetworkService *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 100000;
  Interface = SCNetworkServiceGetInterface(a1);
  if (Interface)
  {
    v4 = Interface;
    if (!_SCNetworkServiceIsVPN(a1))
    {
      v2 = __SCNetworkInterfaceOrder(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _serviceOrder_clear(const __CFArray *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      if (CFEqual(ValueAtIndex, a2))
      {
        CFArrayRemoveValueAtIndex(a1, v7);
        --v5;
        ++v6;
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v5);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __copy_default_set_name_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _SC_CFBundleGet();
  if (result)
  {
    result = CFBundleCopyLocalizedStringForLocalization();
    copy_default_set_name_non_localized = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

__CFBundle *__copy_default_set_name_block_invoke_2()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _SC_CFBundleGet();
  if (result)
  {
    result = CFBundleCopyLocalizedString(result, @"DEFAULT_SET_NAME", @"Automatic", 0);
    copy_default_set_name_localized = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkSetDeallocate(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];

    CFRelease(v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

BOOL __SCNetworkSetEqual(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    result = 1;
  }

  else
  {
    result = *(a1 + 24) == *(a2 + 24) && CFEqual(*(a1 + 16), *(a2 + 16)) != 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFHashCode __SCNetworkSetHash(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  return CFHash(v1);
}

__CFString *__SCNetworkSetCopyDescription(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkSet %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", *(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 24));
  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", new");
  }

  if (!__SCNetworkSetExists(a1))
  {
    CFStringAppendFormat(Mutable, 0, @", REMOVED");
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *_SCNetworkConfigurationCopyMigrationPaths()
{
  v6[1] = *MEMORY[0x1E69E9840];
  value = 0;
  v6[0] = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(0, &value, v6);
  v1 = value;
  CFArrayAppendValue(Mutable, value);
  v2 = v6[0];
  CFArrayAppendValue(Mutable, v6[0]);
  CFRelease(v1);
  CFRelease(v2);
  v3 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(const __CFURL *a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    CFRetain(a1);
  }

  else
  {
    v5 = CFURLCreateFromFileSystemRepresentation(0, "/Library/Preferences/SystemConfiguration", 40, 1u);
  }

  *a2 = MEMORY[0x1B26F44F0](0, "preferences.plist", 17, 0, v5);
  *a3 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 23, 0, v5);
  v6 = *MEMORY[0x1E69E9840];

  CFRelease(v5);
}

__CFArray *_SCNetworkConfigurationPerformMigration(const __CFURL *a1, uint64_t a2, const __CFURL *a3, __CFString *a4)
{
  v159[1] = *MEMORY[0x1E69E9840];
  v8 = __log_SCNetworkConfiguration();
  v9 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v8, v9))
  {
    v10 = _os_log_pack_size();
    v18 = v159 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    isInstallEnvironment = _SC_isInstallEnvironment();
    v22 = " (INSTALLER ENVIRONMENT)";
    *v20 = 136316162;
    if (!isInstallEnvironment)
    {
      v22 = "";
    }

    *(v20 + 4) = v22;
    *(v20 + 12) = 2112;
    *(v20 + 14) = a1;
    v23 = @"None";
    *(v20 + 22) = 2112;
    if (a4)
    {
      v23 = a4;
    }

    *(v20 + 24) = a2;
    *(v20 + 32) = 2112;
    *(v20 + 34) = a3;
    *(v20 + 42) = 2112;
    *(v20 + 44) = v23;
    __SC_log_send(6, v8, v9, v18);
  }

  if (a1 && !CFURLHasDirectoryPath(a1))
  {
    v36 = __log_SCNetworkConfiguration();
    v37 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v36, v37))
    {
      v38 = _os_log_pack_size();
      v46 = v159 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      v48 = _os_log_pack_fill();
      *v48 = 138412290;
      *(v48 + 4) = a1;
      v49 = v36;
      v50 = v37;
LABEL_25:
      __SC_log_send(5, v49, v50, v46);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (a2 && !CFURLHasDirectoryPath(a2))
  {
    v54 = __log_SCNetworkConfiguration();
    v55 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v54, v55))
    {
      v56 = _os_log_pack_size();
      v46 = v159 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
      v64 = *__error();
      v65 = _os_log_pack_fill();
      *v65 = 138412290;
      *(v65 + 4) = a2;
LABEL_24:
      v49 = v54;
      v50 = v55;
      goto LABEL_25;
    }

LABEL_26:
    v76 = 0;
    goto LABEL_27;
  }

  if (a3 && !CFURLHasDirectoryPath(a3))
  {
    v54 = __log_SCNetworkConfiguration();
    v55 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v54, v55))
    {
      v66 = _os_log_pack_size();
      v46 = v159 - ((MEMORY[0x1EEE9AC00](v66, v67, v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
      v74 = *__error();
      v75 = _os_log_pack_fill();
      *v75 = 138412290;
      *(v75 + 4) = a3;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (!(a1 | a2))
  {
    v24 = __log_SCNetworkConfiguration();
    v25 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v24, v25))
    {
      v26 = _os_log_pack_size();
      v34 = v159 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v24, v25, v34);
    }

    goto LABEL_26;
  }

  v51 = CFURLCreateWithString(0, @"/Library/Preferences/SystemConfiguration", 0);
  v52 = v51;
  if (a1)
  {
    v53 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a1);
  }

  else
  {
    v53 = CFRetain(v51);
  }

  v79 = v53;
  if (a2)
  {
    a2 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a2);
  }

  if (a3)
  {
    v80 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a3);
  }

  else
  {
    v80 = CFRetain(v52);
  }

  v81 = v80;
  if (CFEqual(v79, v80))
  {
    v82 = __log_SCNetworkConfiguration();
    v83 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v82, v83))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v94 = a2 == 0;
  if (a2 && CFEqual(a2, v81))
  {
    v94 = 1;
LABEL_57:
    if (CFEqual(v79, a2))
    {
      v120 = __log_SCNetworkConfiguration();
      v121 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v120, v121))
      {
        v122 = _os_log_pack_size();
        v130 = v159 - ((MEMORY[0x1EEE9AC00](v122, v123, v124, v125, v126, v127, v128, v129) + 15) & 0xFFFFFFFFFFFFFFF0);
        v131 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v120, v121, v130);
      }

LABEL_61:
      v132 = __log_SCNetworkConfiguration();
      v133 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v132, v133))
      {
        v134 = _os_log_pack_size();
        v142 = v159 - ((MEMORY[0x1EEE9AC00](v134, v135, v136, v137, v138, v139, v140, v141) + 15) & 0xFFFFFFFFFFFFFFF0);
        v143 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v132, v133, v142);
      }

      v76 = _SCNetworkConfigurationCopyMigrationPaths();
      if (!a2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    goto LABEL_60;
  }

  if (!_SCNetworkConfigurationMakePathIfNeeded(v81))
  {
    v82 = __log_SCNetworkConfiguration();
    v83 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v82, v83))
    {
LABEL_36:
      v84 = _os_log_pack_size();
      v92 = v159 - ((MEMORY[0x1EEE9AC00](v84, v85, v86, v87, v88, v89, v90, v91) + 15) & 0xFFFFFFFFFFFFFFF0);
      v93 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v82, v83, v92);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  if (!SCNetworkConfigurationCopyConfigurationFiles(a2, v81, v95, v96, v97, v98, v99, v100))
  {
    v107 = __log_SCNetworkConfiguration();
    v108 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v107, v108))
    {
      v109 = _os_log_pack_size();
      v117 = v159 - ((MEMORY[0x1EEE9AC00](v109, v110, v111, v112, v113, v114, v115, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
      v118 = *__error();
      v119 = _os_log_pack_fill();
      *v119 = 138412546;
      *(v119 + 4) = a2;
      *(v119 + 12) = 2112;
      *(v119 + 14) = v81;
      __SC_log_send(5, v107, v108, v117);
    }

    v94 = 1;
  }

  if (a2)
  {
    goto LABEL_57;
  }

LABEL_60:
  if (_SCNetworkConfigurationMigrateConfiguration(v79, v81, v101, v102, v103, v104, v105, v106))
  {
    goto LABEL_61;
  }

  v144 = __log_SCNetworkConfiguration();
  v145 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v144, v145))
  {
    v146 = _os_log_pack_size();
    v154 = v159 - ((MEMORY[0x1EEE9AC00](v146, v147, v148, v149, v150, v151, v152, v153) + 15) & 0xFFFFFFFFFFFFFFF0);
    v155 = *__error();
    v156 = _os_log_pack_fill();
    v157 = SCError();
    v158 = SCErrorString(v157);
    *v156 = 136315138;
    *(v156 + 4) = v158;
    __SC_log_send(5, v144, v145, v154);
  }

  if (!v94)
  {
    _SCNetworkConfigurationRemoveConfigurationFiles(v81);
  }

LABEL_37:
  v76 = 0;
  if (a2)
  {
LABEL_38:
    CFRelease(a2);
  }

LABEL_39:
  if (v52)
  {
    CFRelease(v52);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v81)
  {
    CFRelease(v81);
  }

LABEL_27:
  v77 = *MEMORY[0x1E69E9840];
  return v76;
}

uint64_t _SCNetworkConfigurationMakePathIfNeeded(const __CFURL *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = CFURLGetFileSystemRepresentation(a1, 1u, v49, 1024);
  v3 = __log_SCNetworkConfiguration();
  if (v2)
  {
    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v49[-((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315138;
      *(v15 + 4) = v49;
      __SC_log_send(6, v3, v4, v13);
    }

    for (i = v49[0] == 47; ; ++i)
    {
      if (v49[i])
      {
        if (v49[i] != 47)
        {
          continue;
        }

        v17 = 0;
        v49[i] = 0;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        v17 = 1;
      }

      if (mkdir(v49, 0x1EDu) && *__error() != 17 && *__error() != 21)
      {
        v31 = __log_SCNetworkConfiguration();
        v32 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v31, v32))
        {
          v33 = _os_log_pack_size();
          v41 = &v49[-((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v42 = *__error();
          v43 = _os_log_pack_fill();
          v44 = __error();
          v45 = strerror(*v44);
          *v43 = 136315394;
          *(v43 + 4) = v49;
          *(v43 + 12) = 2080;
          *(v43 + 14) = v45;
          __SC_log_send(5, v31, v32, v41);
        }

        goto LABEL_21;
      }

      v49[i] = 47;
      if (!v18)
      {
        v17 = 1;
        goto LABEL_21;
      }
    }
  }

  v19 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v19))
  {
    v20 = _os_log_pack_size();
    v28 = &v49[-((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 138412290;
    *(v30 + 4) = a1;
    __SC_log_send(5, v3, v19, v28);
  }

  v17 = 0;
LABEL_21:
  v46 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t SCNetworkConfigurationCopyConfigurationFiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v93 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v88 = 0;
  url = 0;
  v86 = 0;
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(v9, &url, &v86);
  v12 = url;
  if (!CFURLGetFileSystemRepresentation(url, 1u, v89, 1024))
  {
    v32 = __log_SCNetworkConfiguration();
    v33 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v32, v33))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = v86;
  if (!CFURLGetFileSystemRepresentation(v86, 1u, v90, 1024))
  {
    v32 = __log_SCNetworkConfiguration();
    v33 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v32, v33))
    {
LABEL_12:
      v34 = _os_log_pack_size();
      v42 = &v84 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = *__error();
      v44 = _os_log_pack_fill();
      *v44 = 138412290;
      *(v44 + 4) = v12;
      __SC_log_send(5, v32, v33, v42);
    }

LABEL_13:
    v45 = 0;
    goto LABEL_28;
  }

  if (!v11)
  {
    v13 = 0;
    v45 = 1;
    goto LABEL_26;
  }

  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(v11, &v87, &v88);
  v13 = v87;
  if (!CFURLGetFileSystemRepresentation(v87, 1u, v91, 1024))
  {
    v46 = __log_SCNetworkConfiguration();
    v47 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v46, v47))
    {
      v48 = _os_log_pack_size();
      v56 = &v84 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      v57 = *__error();
      v58 = _os_log_pack_fill();
      *v58 = 138412290;
      *(v58 + 4) = v13;
      __SC_log_send(5, v46, v47, v56);
    }

LABEL_19:
    v45 = 0;
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_27:
    CFRelease(v13);
    goto LABEL_28;
  }

  v14 = v88;
  if (!CFURLGetFileSystemRepresentation(v88, 1u, v92, 1024))
  {
    v59 = __log_SCNetworkConfiguration();
    v60 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v59, v60))
    {
      v61 = _os_log_pack_size();
      v69 = &v84 - ((MEMORY[0x1EEE9AC00](v61, v62, v63, v64, v65, v66, v67, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = *__error();
      v71 = _os_log_pack_fill();
      *v71 = 138412290;
      *(v71 + 4) = v14;
      __SC_log_send(5, v59, v60, v69);
    }

    goto LABEL_19;
  }

  v15 = copyfile_state_alloc();
  if (copyfile(v91, v89, v15, 0xFu))
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v16, v17))
    {
      v18 = _os_log_pack_size();
      v26 = &v84 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      v29 = __error();
      v30 = strerror(*v29);
      *v28 = 136315650;
      *(v28 + 4) = v91;
      *(v28 + 12) = 2080;
      v31 = v89;
LABEL_24:
      *(v28 + 14) = v31;
      *(v28 + 22) = 2080;
      *(v28 + 24) = v30;
      __SC_log_send(5, v16, v17, v26);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  copyfile_state_free(v15);
  chmod(v89, 0x1EDu);
  v15 = copyfile_state_alloc();
  if (copyfile(v92, v90, v15, 0xFu))
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v16, v17))
    {
      v72 = _os_log_pack_size();
      v26 = &v84 - ((MEMORY[0x1EEE9AC00](v72, v73, v74, v75, v76, v77, v78, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
      v80 = *__error();
      v28 = _os_log_pack_fill();
      v81 = __error();
      v30 = strerror(*v81);
      *v28 = 136315650;
      *(v28 + 4) = v92;
      *(v28 + 12) = 2080;
      v31 = v90;
      goto LABEL_24;
    }

LABEL_25:
    copyfile_state_free(v15);
    v45 = 0;
LABEL_26:
    _SCNetworkConfigurationRemoveConfigurationFiles(v10);
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  copyfile_state_free(v15);
  chmod(v90, 0x1EDu);
  v45 = 1;
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v88)
  {
    CFRelease(v88);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  v82 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t _SCNetworkConfigurationMigrateConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  ValueAtIndex = v8;
  v312 = *MEMORY[0x1E69E9840];
  v305 = 0;
  theArray = 0;
  if (!__SCNetworkConfigurationMigrateConfigurationFilesPresent(v8, &theArray, 1))
  {
    v34 = __log_SCNetworkConfiguration();
    v35 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v34, v35))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v12 = theArray;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v310, 1024))
  {
    v34 = __log_SCNetworkConfiguration();
    v35 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v34, v35))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v12, 1);
  if (!CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v311, 1024))
  {
    v34 = __log_SCNetworkConfiguration();
    v35 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v34, v35))
    {
LABEL_15:
      v36 = _os_log_pack_size();
      v44 = &v289 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = _os_log_pack_fill();
      *v46 = 138412290;
      *(v46 + 4) = ValueAtIndex;
      __SC_log_send(5, v34, v35, v44);
    }

LABEL_16:
    Mutable = 0;
    v47 = 0;
    v298 = 0;
    v299 = 0;
    Companion = 0;
    v301 = 0;
    v302 = 0;
    v303 = 0;
    v300 = 0;
LABEL_17:
    ServiceMappingUsingBSDNameMapping = 0;
    v50 = 0;
    v17 = 0;
    v51 = 0;
LABEL_18:
    v52 = 0;
LABEL_19:
    BSDNameMapping = 0;
    goto LABEL_20;
  }

  v13 = CFStringCreateWithCString(0, v310, 0x8000100u);
  v14 = CFStringCreateWithCString(0, v311, 0x8000100u);
  v301 = v13;
  v15 = __SCPreferencesCreateForMigration(@"System Migration", v13);
  v300 = v14;
  v16 = __SCPreferencesCreateForMigration(@"System Migration", v14);
  v17 = 0;
  Mutable = 0;
  v302 = v15;
  v303 = v16;
  if (!v15 || (v19 = v16) == 0)
  {
    v47 = 0;
    v298 = 0;
    v299 = 0;
    Companion = 0;
    ServiceMappingUsingBSDNameMapping = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    BSDNameMapping = 0;
    goto LABEL_20;
  }

  v20 = __SCNetworkConfigurationMigrateConfigurationFilesPresent(v10, &v305, 0);
  v21 = v305;
  if (!v20 && !v305)
  {
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v22, v23))
    {
      v24 = _os_log_pack_size();
      v32 = &v289 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v22, v23, v32);
    }

    goto LABEL_66;
  }

  v58 = CFArrayGetValueAtIndex(v305, 0);
  if (!CFURLGetFileSystemRepresentation(v58, 1u, v308, 1024))
  {
    v75 = __log_SCNetworkConfiguration();
    v76 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v75, v76))
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v58 = CFArrayGetValueAtIndex(v21, 1);
  if (!CFURLGetFileSystemRepresentation(v58, 1u, v309, 1024))
  {
    v75 = __log_SCNetworkConfiguration();
    v76 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v75, v76))
    {
LABEL_65:
      v77 = _os_log_pack_size();
      v85 = &v289 - ((MEMORY[0x1EEE9AC00](v77, v78, v79, v80, v81, v82, v83, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
      v86 = *__error();
      v87 = _os_log_pack_fill();
      *v87 = 138412290;
      *(v87 + 4) = v58;
      __SC_log_send(5, v75, v76, v85);
    }

LABEL_66:
    Mutable = 0;
    v47 = 0;
    v298 = 0;
    v299 = 0;
    Companion = 0;
    goto LABEL_17;
  }

  v59 = CFStringCreateWithCString(0, v308, 0x8000100u);
  v60 = CFStringCreateWithCString(0, v309, 0x8000100u);
  v299 = v59;
  v61 = __SCPreferencesCreateForMigration(@"System Migration", v59);
  v47 = v61;
  v298 = v60;
  if (v20)
  {
    v62 = __SCPreferencesCreateForMigration(@"System Migration", v60);
    Companion = v62;
    if (!v47 || !v62)
    {
      v63 = __log_SCNetworkConfiguration();
      v64 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v63, v64))
      {
        v65 = _os_log_pack_size();
        v73 = &v289 - ((MEMORY[0x1EEE9AC00](v65, v66, v67, v68, v69, v70, v71, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v63, v64, v73);
      }

      Mutable = 0;
      goto LABEL_17;
    }
  }

  else
  {
    __SCNetworkPopulateDefaultPrefs(v61);
    Companion = SCPreferencesCreateCompanion(v47, @"NetworkInterfaces.plist");
    __SCNetworkPopulateDefaultNIPrefs(Companion);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v88 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, @"ConfigurationRepair", *MEMORY[0x1E695E4D0]);
  _SCNetworkConfigurationSetBypassSystemInterfaces(v15, 1);
  _SCNetworkConfigurationSetBypassSystemInterfaces(v47, 1);
  v296 = v88;
  if (!hasSameModel(v15, v47))
  {
    v89 = "model change (preferences)";
    goto LABEL_74;
  }

  if (!hasSameModel(v19, Companion))
  {
    v89 = "model change (interfaces)";
    goto LABEL_74;
  }

  if (hasInterfaceConflict(v19, Companion))
  {
    v89 = "interface conflicts";
LABEL_74:
    v90 = __log_SCNetworkConfiguration();
    v91 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v90, v91))
    {
      v92 = _os_log_pack_size();
      v297 = &v289;
      v100 = &v289 - ((MEMORY[0x1EEE9AC00](v92, v93, v94, v95, v96, v97, v98, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
      v101 = *__error();
      v102 = _os_log_pack_fill();
      *v102 = 136315138;
      *(v102 + 4) = v89;
      __SC_log_send(5, v90, v91, v100);
      v103 = 1;
LABEL_76:
      v15 = v302;
      v19 = v303;
      goto LABEL_78;
    }

    v103 = 1;
    goto LABEL_78;
  }

  v182 = __log_SCNetworkConfiguration();
  v183 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v182, v183))
  {
    v184 = _os_log_pack_size();
    v297 = &v289;
    v192 = &v289 - ((MEMORY[0x1EEE9AC00](v184, v185, v186, v187, v188, v189, v190, v191) + 15) & 0xFFFFFFFFFFFFFFF0);
    v193 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v182, v183, v192);
    v103 = 0;
    goto LABEL_76;
  }

  v103 = 0;
LABEL_78:
  v104 = __log_SCNetworkConfiguration();
  v105 = _SC_syslog_os_log_mapping(6);
  v106 = __SC_log_enabled(6, v104, v105);
  LODWORD(v297) = v103;
  if (v106)
  {
    v107 = _os_log_pack_size();
    v115 = &v289 - ((MEMORY[0x1EEE9AC00](v107, v108, v109, v110, v111, v112, v113, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = *__error();
    v15 = v302;
    v117 = _os_log_pack_fill();
    *v117 = 138413570;
    v118 = ", new";
    *(v117 + 4) = v15;
    if (v20)
    {
      v118 = "";
    }

    *(v117 + 12) = 2112;
    *(v117 + 14) = v303;
    *(v117 + 22) = 2112;
    *(v117 + 24) = v47;
    *(v117 + 32) = 2080;
    *(v117 + 34) = v118;
    *(v117 + 42) = 2112;
    *(v117 + 44) = Companion;
    *(v117 + 52) = 2080;
    *(v117 + 54) = v118;
    v119 = v115;
    v19 = v303;
    __SC_log_send(6, v104, v105, v119);
    v103 = v297;
  }

  if (v103)
  {
    v120 = "migration";
  }

  else
  {
    v120 = "upgrade";
  }

  v121 = CFStringCreateWithFormat(0, 0, @"pre-%s-source", v120);
  __SCNetworkConfigurationBackup(v15, v121, v47);
  __SCNetworkConfigurationBackup(v19, v121, v47);
  CFRelease(v121);
  v122 = "new-";
  if (v20)
  {
    v122 = "";
  }

  v123 = CFStringCreateWithFormat(0, 0, @"pre-%s-%starget", v120, v122);
  __SCNetworkConfigurationBackup(v47, v123, v47);
  __SCNetworkConfigurationBackup(Companion, v123, v47);
  CFRelease(v123);
  __SCNetworkConfigurationReport(5, "Source", v15, v19);
  __SCNetworkConfigurationReport(5, "Target", v47, Companion);
  _SCNetworkConfigurationCreateBuiltinInterfaceServices(v15, v19);
  if (!_SCNetworkConfigurationCheckValidityWithPreferences(v15, v19, Mutable))
  {
    v140 = __log_SCNetworkConfiguration();
    v141 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v140, v141))
    {
      goto LABEL_118;
    }

LABEL_117:
    v194 = _os_log_pack_size();
    v202 = &v289 - ((MEMORY[0x1EEE9AC00](v194, v195, v196, v197, v198, v199, v200, v201) + 15) & 0xFFFFFFFFFFFFFFF0);
    v203 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v140, v141, v202);
LABEL_118:
    BSDNameMapping = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
    ServiceMappingUsingBSDNameMapping = 0;
    ServiceSetMapping = 0;
    v295 = 0;
    if (!v103)
    {
      goto LABEL_135;
    }

    goto LABEL_119;
  }

  if (v20)
  {
    _SCNetworkConfigurationCreateBuiltinInterfaceServices(v47, Companion);
    if (!_SCNetworkConfigurationCheckValidityWithPreferences(v47, Companion, Mutable))
    {
      v140 = __log_SCNetworkConfiguration();
      v141 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v140, v141))
      {
        goto LABEL_118;
      }

      goto LABEL_117;
    }
  }

  if ((v103 & 1) == 0)
  {
    v304 = 0;
    v142 = __SCPreferencesCreateForMigration(@"Upgrade Source Prefs", 0);
    v143 = __SCPreferencesCreateForMigration(@"Upgrade Source NI Prefs", @"NetworkInterfaces.plist");
    _SCNetworkConfigurationSetBypassSystemInterfaces(v142, 1);
    v144 = __log_SCNetworkConfiguration();
    v145 = _SC_syslog_os_log_mapping(6);
    v146 = __SC_log_enabled(6, v144, v145);
    v293 = v142;
    if (v146)
    {
      v147 = _os_log_pack_size();
      v155 = &v289 - ((MEMORY[0x1EEE9AC00](v147, v148, v149, v150, v151, v152, v153, v154) + 15) & 0xFFFFFFFFFFFFFFF0);
      v156 = *__error();
      v157 = _os_log_pack_fill();
      *v157 = 138412546;
      *(v157 + 4) = v293;
      *(v157 + 12) = 2112;
      *(v157 + 14) = v143;
      v158 = v155;
      v19 = v303;
      __SC_log_send(6, v144, v145, v158);
      v142 = v293;
    }

    Value = SCPreferencesPathGetValue(v47, @"/");
    v160 = SCPreferencesPathGetValue(Companion, @"/");
    SCPreferencesPathSetValue(v142, @"/", Value);
    SCPreferencesPathSetValue(v143, @"/", v160);
    v161 = SCPreferencesPathGetValue(v302, @"/");
    v162 = SCPreferencesPathGetValue(v19, @"/");
    SCPreferencesPathSetValue(v47, @"/", v161);
    SCPreferencesPathSetValue(Companion, @"/", v162);
    v292 = v143;
    v163 = _SCNetworkConfigurationCopyExternalInterfaceMapping(v143, Companion);
    v51 = v163;
    if (v163)
    {
      v307[0] = 6;
      v307[1] = "Upgrading, external interface mapping";
      CFDictionaryApplyFunction(v163, logMapping_one, v307);
    }

    v50 = _SCNetworkMigrationCreateNetworkInterfaceArray(Companion, v51, &v304);
    v164 = __log_SCNetworkConfiguration();
    v165 = _SC_syslog_os_log_mapping(6);
    v166 = __SC_log_enabled(6, v164, v165);
    v103 = v297;
    if (v166)
    {
      v167 = _os_log_pack_size();
      v295 = &v289;
      v175 = &v289 - ((MEMORY[0x1EEE9AC00](v167, v168, v169, v170, v171, v172, v173, v174) + 15) & 0xFFFFFFFFFFFFFFF0);
      v176 = *__error();
      v103 = v297;
      v177 = _os_log_pack_fill();
      if (v304)
      {
        v178 = "found";
      }

      else
      {
        v178 = "no";
      }

      *v177 = 136315138;
      *(v177 + 4) = v178;
      v179 = v175;
      v142 = v293;
      __SC_log_send(6, v164, v165, v179);
    }

    if (!v304)
    {
      ServiceSetMapping = 0;
      v295 = 0;
      ServiceMappingUsingBSDNameMapping = 0;
      BSDNameMapping = 0;
      goto LABEL_126;
    }

    if (v50)
    {
      if (__SCNetworkInterfaceSaveStoredWithPreferences(Companion, v50))
      {
        BSDNameMapping = _SCNetworkMigrationCreateBSDNameMapping(0, v51);
        ServiceMappingUsingBSDNameMapping = _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(v142, v47, BSDNameMapping);
        SetMapping = _SCNetworkMigrationCreateSetMapping(v142, v47);
        ServiceSetMapping = _SCNetworkMigrationCreateServiceSetMapping(v293);
        v295 = SetMapping;
        v181 = SetMapping;
        v142 = v293;
        _SCNetworkMigrationDoServiceMigration(v293, v47, ServiceMappingUsingBSDNameMapping, BSDNameMapping, v181, ServiceSetMapping);
LABEL_126:
        CFRelease(v142);
        CFRelease(v292);
        v52 = 0;
        goto LABEL_135;
      }

      v240 = __log_SCNetworkConfiguration();
      v241 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v240, v241))
      {
        goto LABEL_158;
      }
    }

    else
    {
      v240 = __log_SCNetworkConfiguration();
      v241 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v240, v241))
      {
LABEL_158:
        v269 = _os_log_pack_size();
        v297 = &v289;
        v277 = &v289 - ((MEMORY[0x1EEE9AC00](v269, v270, v271, v272, v273, v274, v275, v276) + 15) & 0xFFFFFFFFFFFFFFF0);
        v278 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v240, v241, v277);
        v142 = v293;
      }
    }

    CFRelease(v142);
    CFRelease(v292);
    ServiceMappingUsingBSDNameMapping = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v52 = _SCNetworkConfigurationCopyBuiltinMapping(v19, Companion);
  v51 = _SCNetworkConfigurationCopyExternalInterfaceMapping(v19, Companion);
  NetworkInterfaceArray = _SCNetworkMigrationCreateNetworkInterfaceArray(Companion, v51, 0);
  if (!NetworkInterfaceArray)
  {
    v215 = __log_SCNetworkConfiguration();
    v216 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v215, v216))
    {
      v217 = _os_log_pack_size();
      v297 = &v289;
      v225 = &v289 - ((MEMORY[0x1EEE9AC00](v217, v218, v219, v220, v221, v222, v223, v224) + 15) & 0xFFFFFFFFFFFFFFF0);
      v226 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v215, v216, v225);
    }

    ServiceMappingUsingBSDNameMapping = 0;
    v50 = 0;
    goto LABEL_130;
  }

  v50 = NetworkInterfaceArray;
  if (!__SCNetworkInterfaceSaveStoredWithPreferences(Companion, NetworkInterfaceArray))
  {
    v227 = __log_SCNetworkConfiguration();
    v228 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v227, v228))
    {
      v229 = _os_log_pack_size();
      v297 = &v289;
      v237 = MEMORY[0x1EEE9AC00](v229, v230, v231, v232, v233, v234, v235, v236);
      v296 = v227;
      v238 = &v289 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
      v239 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v296, v228, v238);
    }

    ServiceMappingUsingBSDNameMapping = 0;
LABEL_130:
    v17 = 0;
    goto LABEL_19;
  }

  BSDNameMapping = _SCNetworkMigrationCreateBSDNameMapping(v52, v51);
  v125 = v302;
  ServiceMappingUsingBSDNameMapping = _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(v302, v47, BSDNameMapping);
  if (!ServiceMappingUsingBSDNameMapping)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v295 = _SCNetworkMigrationCreateSetMapping(v125, v47);
  v126 = _SCNetworkMigrationCreateServiceSetMapping(v125);
  v127 = v125;
  v128 = v295;
  ServiceSetMapping = v126;
  if (!_SCNetworkMigrationDoServiceMigration(v127, v47, ServiceMappingUsingBSDNameMapping, BSDNameMapping, v295, v126))
  {
    v279 = __log_SCNetworkConfiguration();
    LODWORD(v296) = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v279, v296))
    {
      goto LABEL_151;
    }

    v280 = _os_log_pack_size();
    v292 = v279;
    v293 = &v289;
    v297 = &v289 - ((MEMORY[0x1EEE9AC00](v280, v281, v282, v283, v284, v285, v286, v287) + 15) & 0xFFFFFFFFFFFFFFF0);
    v288 = *__error();
    *_os_log_pack_fill() = 0;
    goto LABEL_150;
  }

  if (!_SCNetworkMigrationDoServiceOrderMigration(v128))
  {
    v129 = __log_SCNetworkConfiguration();
    v130 = _SC_syslog_os_log_mapping(5);
    v292 = v129;
    LODWORD(v291) = v130;
    if (__SC_log_enabled(5, v129, v130))
    {
      v131 = _os_log_pack_size();
      v290 = &v289;
      v293 = (&v289 - ((MEMORY[0x1EEE9AC00](v131, v132, v133, v134, v135, v136, v137, v138) + 15) & 0xFFFFFFFFFFFFFFF0));
      v139 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v292, v291, v293);
    }
  }

  v103 = v297;
LABEL_119:
  if (!_SCNetworkMigrationDoSystemMigration(v302, v47))
  {
    v204 = __log_SCNetworkConfiguration();
    v205 = _SC_syslog_os_log_mapping(5);
    v292 = v204;
    LODWORD(v291) = v205;
    if (__SC_log_enabled(5, v204, v205))
    {
      v206 = _os_log_pack_size();
      v290 = &v289;
      v293 = (&v289 - ((MEMORY[0x1EEE9AC00](v206, v207, v208, v209, v210, v211, v212, v213) + 15) & 0xFFFFFFFFFFFFFFF0));
      v214 = *__error();
      v103 = v297;
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v292, v291, v293);
    }

    else
    {
      v103 = v297;
    }
  }

LABEL_135:
  CFDictionaryAddValue(Mutable, @"ConfigurationRepairModel", v296);
  if (!_SCNetworkConfigurationCheckValidityWithPreferences(v47, Companion, Mutable))
  {
    v243 = __log_SCNetworkConfiguration();
    v244 = _SC_syslog_os_log_mapping(5);
    v293 = v243;
    LODWORD(v292) = v244;
    if (__SC_log_enabled(5, v243, v244))
    {
      v245 = _os_log_pack_size();
      v291 = &v289;
      v296 = &v289 - ((MEMORY[0x1EEE9AC00](v245, v246, v247, v248, v249, v250, v251, v252) + 15) & 0xFFFFFFFFFFFFFFF0);
      v253 = *__error();
      v254 = _os_log_pack_fill();
      v255 = "Upgraded";
      if (v297)
      {
        v255 = "Migrated";
      }

      *v254 = 136315138;
      *(v254 + 4) = v255;
      __SC_log_send(5, v293, v292, v296);
    }

    goto LABEL_151;
  }

  if (SCPreferencesCommitChanges(v47))
  {
    if (SCPreferencesCommitChanges(Companion))
    {
      if (v103)
      {
        v242 = "Migrated";
      }

      else
      {
        v242 = "Upgraded";
      }

      __SCNetworkConfigurationReport(5, v242, v47, Companion);
      v17 = 1;
      goto LABEL_152;
    }

    v256 = __log_SCNetworkConfiguration();
    LODWORD(v296) = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v256, v296))
    {
      goto LABEL_149;
    }
  }

  else
  {
    v256 = __log_SCNetworkConfiguration();
    LODWORD(v296) = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v256, v296))
    {
LABEL_149:
      v257 = _os_log_pack_size();
      v292 = v256;
      v293 = &v289;
      v297 = &v289 - ((MEMORY[0x1EEE9AC00](v257, v258, v259, v260, v261, v262, v263, v264) + 15) & 0xFFFFFFFFFFFFFFF0);
      v265 = *__error();
      v266 = _os_log_pack_fill();
      v267 = SCError();
      v268 = SCErrorString(v267);
      *v266 = 136315138;
      *(v266 + 4) = v268;
LABEL_150:
      __SC_log_send(5, v292, v296, v297);
    }
  }

LABEL_151:
  v17 = 0;
LABEL_152:
  if (v295)
  {
    CFRelease(v295);
  }

  if (ServiceSetMapping)
  {
    CFRelease(ServiceSetMapping);
  }

LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v305)
  {
    CFRelease(v305);
  }

  if (v301)
  {
    CFRelease(v301);
  }

  if (v300)
  {
    CFRelease(v300);
  }

  if (v299)
  {
    CFRelease(v299);
  }

  if (v298)
  {
    CFRelease(v298);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  v54 = v302;
  if (v51)
  {
    CFRelease(v51);
  }

  if (BSDNameMapping)
  {
    CFRelease(BSDNameMapping);
  }

  v55 = v303;
  if (ServiceMappingUsingBSDNameMapping)
  {
    CFRelease(ServiceMappingUsingBSDNameMapping);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v56 = *MEMORY[0x1E69E9840];
  return v17;
}

void _SCNetworkConfigurationRemoveConfigurationFiles(const __CFURL *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v57 = 0;
  url = 0;
  _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(a1, &url, &v57);
  v1 = url;
  if (!CFURLGetFileSystemRepresentation(url, 1u, v60, 1024))
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_9;
    }

    v18 = _os_log_pack_size();
    v13 = &v56 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    *v27 = 138412290;
    *(v27 + 4) = v1;
    goto LABEL_8;
  }

  if (remove(v60, v2) && *__error() != 2)
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v56 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = __error();
      v17 = strerror(*v16);
      *v15 = 136315394;
      *(v15 + 4) = v60;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
LABEL_8:
      __SC_log_send(5, v3, v4, v13);
    }
  }

LABEL_9:
  CFRelease(v1);
  v28 = v57;
  if (CFURLGetFileSystemRepresentation(v57, 1u, v59, 1024))
  {
    if (remove(v59, v29) && *__error() != 2)
    {
      v30 = __log_SCNetworkConfiguration();
      v31 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v30, v31))
      {
        v32 = _os_log_pack_size();
        v40 = &v56 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        v43 = __error();
        v44 = strerror(*v43);
        *v42 = 136315394;
        *(v42 + 4) = v59;
        *(v42 + 12) = 2080;
        *(v42 + 14) = v44;
LABEL_16:
        __SC_log_send(5, v30, v31, v40);
      }
    }
  }

  else
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      v45 = _os_log_pack_size();
      v40 = &v56 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50, v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = *__error();
      v54 = _os_log_pack_fill();
      *v54 = 138412290;
      *(v54 + 4) = v28;
      goto LABEL_16;
    }
  }

  CFRelease(v28);
  v55 = *MEMORY[0x1E69E9840];
}

uint64_t _SCNetworkConfigurationCheckValidityWithPreferences(const __SCPreferences *a1, const __SCPreferences *a2, const __CFDictionary *a3)
{
  v323 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 1;
  v314 = 1;
  TypeID = CFDictionaryGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID)
  {
    Value = CFDictionaryGetValue(a3, @"ConfigurationRepair");
    v9 = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      LODWORD(v313) = CFBooleanGetValue(Value);
    }

    else
    {
      LODWORD(v313) = 0;
    }

    v149 = CFDictionaryGetValue(a3, @"ConfigurationRepairModel");
    v150 = CFBooleanGetTypeID();
    if (v149 && CFGetTypeID(v149) == v150)
    {
      LODWORD(v6) = CFBooleanGetValue(v149) == 0;
    }
  }

  else
  {
    LODWORD(v313) = 0;
  }

  v320 = 0;
  v318 = 0u;
  v319 = 0u;
  v316 = 0u;
  v317 = 0u;
  v315 = 0u;
  v10 = __log_SCNetworkConfiguration();
  v11 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v10, v11))
  {
    v12 = _os_log_pack_size();
    v312 = &v303;
    v20 = &v303 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    if (v6)
    {
      v23 = "";
    }

    else
    {
      v23 = ", w/repair-model";
    }

    v24 = v6;
    v6 = a2;
    if (v313)
    {
      v25 = ", w/repair-configuration";
    }

    else
    {
      v25 = "";
    }

    v26 = _SCNetworkConfigurationBypassSystemInterfaces(a1);
    *v22 = 136316162;
    v27 = ", bypass system interfaces";
    *(v22 + 4) = v23;
    if (!v26)
    {
      v27 = "";
    }

    *(v22 + 12) = 2080;
    *(v22 + 14) = v25;
    a2 = v6;
    LOBYTE(v6) = v24;
    *(v22 + 22) = 2080;
    *(v22 + 24) = v27;
    *(v22 + 32) = 2112;
    *(v22 + 34) = a1;
    *(v22 + 42) = 2112;
    *(v22 + 44) = a2;
    __SC_log_send(6, v10, v11, v20);
  }

  v28 = _SCNetworkConfigurationBypassSystemInterfaces(a1);
  if (!v28)
  {
    _SCNetworkConfigurationSetBypassSystemInterfaces(a1, 1);
  }

  v29 = SCPreferencesGetValue(a1, @"Model");
  v30 = SCPreferencesGetValue(a2, @"Model");
  v31 = CFStringGetTypeID();
  if (!v29 || CFGetTypeID(v29) != v31)
  {
    if ((v6 & 1) == 0)
    {
      v32 = CFStringGetTypeID();
      if (v30)
      {
        if (CFGetTypeID(v30) == v32)
        {
          v33 = __log_SCNetworkConfiguration();
          v34 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v33, v34))
          {
            v35 = _os_log_pack_size();
            v43 = &v303 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(6, v33, v34, v43);
          }

          SCPreferencesSetValue(a1, @"Model", v30);
          v45 = CFStringGetTypeID();
          v29 = v30;
LABEL_31:
          v59 = v29;
          if (CFGetTypeID(v30) == v45)
          {
            goto LABEL_41;
          }

          goto LABEL_32;
        }
      }
    }

    v46 = __log_SCNetworkConfiguration();
    v47 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v46, v47))
    {
      v48 = _os_log_pack_size();
      LODWORD(v311) = v28;
      v56 = &v303 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      v57 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v46, v47, v56);
      v28 = v311;
    }
  }

  v58 = CFStringGetTypeID();
  if (v30)
  {
    v45 = v58;
    goto LABEL_31;
  }

LABEL_32:
  if ((v6 & 1) == 0)
  {
    v60 = CFStringGetTypeID();
    if (v29)
    {
      if (CFGetTypeID(v29) == v60)
      {
        v61 = __log_SCNetworkConfiguration();
        v62 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v61, v62))
        {
          v63 = _os_log_pack_size();
          v71 = &v303 - ((MEMORY[0x1EEE9AC00](v63, v64, v65, v66, v67, v68, v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
          v72 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v61, v62, v71);
        }

        SCPreferencesSetValue(a2, @"Model", v29);
        v73 = CFStringGetTypeID();
        v59 = v29;
        goto LABEL_43;
      }
    }
  }

  v74 = __log_SCNetworkConfiguration();
  v75 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v74, v75))
  {
    v76 = _os_log_pack_size();
    v84 = &v303 - ((MEMORY[0x1EEE9AC00](v76, v77, v78, v79, v80, v81, v82, v83) + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v74, v75, v84);
  }

  v59 = v29;
LABEL_41:
  v86 = CFStringGetTypeID();
  if (!v59)
  {
    goto LABEL_47;
  }

  v73 = v86;
  v29 = v30;
LABEL_43:
  if (CFGetTypeID(v59) == v73)
  {
    v87 = CFStringGetTypeID();
    if (v29)
    {
      if (CFGetTypeID(v29) == v87 && !CFEqual(v59, v29))
      {
        v314 = 0;
        v165 = __log_SCNetworkConfiguration();
        v166 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v165, v166))
        {
          v167 = _os_log_pack_size();
          v175 = &v303 - ((MEMORY[0x1EEE9AC00](v167, v168, v169, v170, v171, v172, v173, v174) + 15) & 0xFFFFFFFFFFFFFFF0);
          v176 = *__error();
          v177 = _os_log_pack_fill();
          *v177 = 138412546;
          *(v177 + 4) = a1;
          *(v177 + 12) = 2112;
          *(v177 + 14) = a2;
          __SC_log_send(5, v165, v166, v175);
        }

        goto LABEL_76;
      }
    }
  }

LABEL_47:
  v88 = __SCNetworkInterfaceCopyStoredWithPreferences(a2);
  if (v88)
  {
    v89 = v88;
    MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v88);
    CFRelease(v89);
    v91 = CFDictionaryGetTypeID();
    if (!MappingUsingBSDName || CFGetTypeID(MappingUsingBSDName) != v91)
    {
      v314 = 0;
      v102 = __log_SCNetworkConfiguration();
      v103 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v102, v103))
      {
        v104 = _os_log_pack_size();
        v112 = &v303 - ((MEMORY[0x1EEE9AC00](v104, v105, v106, v107, v108, v109, v110, v111) + 15) & 0xFFFFFFFFFFFFFFF0);
        v113 = *__error();
        v114 = _os_log_pack_fill();
        *v114 = 138412290;
        *(v114 + 4) = a2;
        __SC_log_send(5, v102, v103, v112);
      }

      v115 = 0;
      v94 = 0;
      v312 = 0;
      v100 = 0;
      v98 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      if (!MappingUsingBSDName)
      {
        goto LABEL_59;
      }

      goto LABEL_140;
    }

    v92 = __SCNetworkServiceCopyAllInterfaces(a1);
    if (v92)
    {
      v93 = v92;
      logInterfaces("interfaces", v92, 1);
      v94 = __SCNetworkInterfaceCreateMappingUsingBSDName(v93);
      CFRelease(v93);
      if (v94)
      {
        context = 7;
        v322 = "mappingServiceBSDNameToInterface";
        CFDictionaryApplyFunction(v94, logMapping_one, &context);
        v95 = v313;
        if (v313)
        {
          v96 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v98 = CFArrayCreateMutable(0, 0, v96);
          v99 = v96;
          v95 = v313;
          v100 = CFArrayCreateMutable(0, 0, v99);
          v101 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v101 = 0;
          v100 = 0;
          v98 = 0;
          Mutable = 0;
        }

        *&v317 = &v314;
        *(&v317 + 1) = Mutable;
        v310 = Mutable;
        *&v318 = v98;
        *(&v318 + 1) = v100;
        *&v316 = 0;
        *(&v316 + 1) = MappingUsingBSDName;
        v315 = 0uLL;
        LOBYTE(v320) = v95;
        *&v319 = v101;
        *(&v319 + 1) = a1;
        v312 = v101;
        CFDictionaryApplyFunction(v94, _SCNetworkConfigurationValidateInterface, &v315);
        v308 = v98;
        v309 = v100;
        if (!v314)
        {
          v246 = __log_SCNetworkConfiguration();
          v247 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v246, v247))
          {
            v248 = _os_log_pack_size();
            v256 = &v303 - ((MEMORY[0x1EEE9AC00](v248, v249, v250, v251, v252, v253, v254, v255) + 15) & 0xFFFFFFFFFFFFFFF0);
            v257 = *__error();
            v95 = v313;
            v258 = _os_log_pack_fill();
            *v258 = 138412546;
            *(v258 + 4) = a1;
            *(v258 + 12) = 2112;
            *(v258 + 14) = a2;
            v259 = v256;
            v100 = v309;
            __SC_log_send(5, v246, v247, v259);
            v98 = v308;
          }

          if (!v95)
          {
            v118 = 0;
            v117 = 0;
            v115 = 0;
LABEL_139:
            v116 = v310;
LABEL_140:
            CFRelease(MappingUsingBSDName);
            if (v94)
            {
              CFRelease(v94);
            }

LABEL_59:
            if (v118)
            {
              CFRelease(v118);
            }

            if (v117)
            {
              CFRelease(v117);
            }

            if (v115)
            {
              CFRelease(v115);
            }

            if (v116)
            {
              CFRelease(v116);
            }

            if (v98)
            {
              CFRelease(v98);
            }

            v119 = v312;
            if (v100)
            {
              CFRelease(v100);
            }

            if (v119)
            {
              CFRelease(v119);
            }

            goto LABEL_76;
          }

          v260 = *(&v317 + 1);
          v261 = v318;
          Count = CFArrayGetCount(*(&v317 + 1));
          v263 = CFArrayGetCount(v261);
          if (!(Count | v263))
          {
            v118 = 0;
            v117 = 0;
            v115 = 0;
            v314 = 0;
            v100 = v309;
            v116 = v310;
            goto LABEL_140;
          }

          v278 = v263;
          __SCNetworkConfigurationBackup(a1, @"pre-repair", a1);
          __SCNetworkConfigurationBackup(a2, @"pre-repair", a1);
          __SCNetworkConfigurationReport(7, "pre-repair", a1, a2);
          if (v260)
          {
            logInterfaces("Interfaces to be removed", v260, 0);
          }

          v279 = a2;
          v100 = v309;
          if (v261)
          {
            logInterfaces("Interfaces to be replaced", v261, 0);
          }

          v280 = SCNetworkServiceCopyAll(a1);
          v327.length = CFArrayGetCount(v280);
          v327.location = 0;
          CFArrayApplyFunction(v280, v327, create_bsd_name_service_protocol_mapping, &v315);
          if (v319)
          {
            context = 7;
            v322 = "BSD name / Service Protocol mapping";
            CFDictionaryApplyFunction(v319, logMapping_one, &context);
          }

          v328.length = CFArrayGetCount(v280);
          v328.location = 0;
          CFArrayApplyFunction(v280, v328, remove_service, &v315);
          v329.location = 0;
          v329.length = v278;
          CFArrayApplyFunction(v261, v329, add_service, &v315);
          CFRelease(v280);
          a2 = v279;
          __SCNetworkConfigurationReport(7, "post-repair", a1, v279);
          v314 = 1;
          if (!SCPreferencesCommitChanges(a1))
          {
            v281 = __log_SCNetworkConfiguration();
            v282 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v281, v282))
            {
              v283 = _os_log_pack_size();
              v291 = &v303 - ((MEMORY[0x1EEE9AC00](v283, v284, v285, v286, v287, v288, v289, v290) + 15) & 0xFFFFFFFFFFFFFFF0);
              v292 = *__error();
              *_os_log_pack_fill() = 0;
              v293 = v291;
              v100 = v309;
              __SC_log_send(5, v281, v282, v293);
              v98 = v308;
            }
          }
        }

        v307 = a2;
        v118 = SCNetworkServiceCopyAll(a1);
        v178 = CFArrayGetTypeID();
        if (!v118 || CFGetTypeID(v118) != v178)
        {
          v232 = v28;
          v314 = 0;
          v233 = __log_SCNetworkConfiguration();
          v234 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v233, v234))
          {
            v235 = _os_log_pack_size();
            v243 = &v303 - ((MEMORY[0x1EEE9AC00](v235, v236, v237, v238, v239, v240, v241, v242) + 15) & 0xFFFFFFFFFFFFFFF0);
            v244 = *__error();
            v245 = _os_log_pack_fill();
            *v245 = 138412290;
            *(v245 + 4) = a1;
            __SC_log_send(5, v233, v234, v243);
            v100 = v309;
          }

          v117 = 0;
          v115 = 0;
          v28 = v232;
          v116 = v310;
          v98 = v308;
          goto LABEL_140;
        }

        v117 = SCNetworkSetCopyAll(a1);
        v179 = CFArrayGetTypeID();
        if (v117 && CFGetTypeID(v117) == v179)
        {
          v115 = 0;
          if (CFArrayGetCount(v117) >= 1 && v314)
          {
            v181 = 0;
            *&v180 = 138412546;
            v305 = v180;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v117, v181);
              v183 = SCNetworkSetCopyServices(ValueAtIndex);
              if (v183)
              {
                v115 = v183;
                v313 = v181;
                v184 = CFArrayGetCount(v183);
                v311 = ValueAtIndex;
                if (v184 >= 1)
                {
                  v185 = 0;
                  while (1)
                  {
                    v186 = CFArrayGetValueAtIndex(v115, v185);
                    v324.length = CFArrayGetCount(v118);
                    v324.location = 0;
                    if (!CFArrayContainsValue(v118, v324, v186))
                    {
                      break;
                    }

                    if (++v185 >= CFArrayGetCount(v115))
                    {
                      goto LABEL_114;
                    }
                  }

                  v314 = 0;
                  v201 = __log_SCNetworkConfiguration();
                  v202 = _SC_syslog_os_log_mapping(5);
                  if (__SC_log_enabled(5, v201, v202))
                  {
                    v203 = _os_log_pack_size();
                    v306 = &v303;
                    v211 = MEMORY[0x1EEE9AC00](v203, v204, v205, v206, v207, v208, v209, v210);
                    v304 = v201;
                    v212 = &v303 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v213 = *__error();
                    ValueAtIndex = v311;
                    *_os_log_pack_fill() = 0;
                    __SC_log_send(5, v304, v202, v212);
                  }
                }

LABEL_114:
                if (!v314)
                {
                  break;
                }

                ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
                if (ServiceOrder)
                {
                  v215 = ServiceOrder;
                  if (CFArrayGetCount(ServiceOrder) >= 1)
                  {
                    v216 = 0;
                    while (1)
                    {
                      v217 = CFArrayGetValueAtIndex(v215, v216);
                      v325.length = CFArrayGetCount(v215);
                      v325.location = 0;
                      if (!CFArrayContainsValue(v215, v325, v217))
                      {
                        v326.length = CFArrayGetCount(v118);
                        v326.location = 0;
                        if (!CFArrayContainsValue(v118, v326, v217))
                        {
                          break;
                        }
                      }

                      if (++v216 >= CFArrayGetCount(v215))
                      {
                        goto LABEL_121;
                      }
                    }

                    v218 = __log_SCNetworkConfiguration();
                    v219 = _SC_syslog_os_log_mapping(5);
                    if (__SC_log_enabled(5, v218, v219))
                    {
                      v220 = _os_log_pack_size();
                      LODWORD(v304) = v219;
                      v306 = &v303;
                      v228 = MEMORY[0x1EEE9AC00](v220, v221, v222, v223, v224, v225, v226, v227);
                      v303 = v218;
                      v229 = &v303 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
                      v230 = *__error();
                      v231 = _os_log_pack_fill();
                      *v231 = v305;
                      *(v231 + 4) = v217;
                      *(v231 + 12) = 2112;
                      *(v231 + 14) = v311;
                      __SC_log_send(5, v303, v304, v229);
                    }
                  }
                }

LABEL_121:
                CFRelease(v115);
                v181 = v313;
              }

              else
              {
                v187 = __log_SCNetworkConfiguration();
                v188 = _SC_syslog_os_log_mapping(5);
                if (__SC_log_enabled(5, v187, v188))
                {
                  v189 = _os_log_pack_size();
                  v313 = v181;
                  v306 = &v303;
                  v197 = MEMORY[0x1EEE9AC00](v189, v190, v191, v192, v193, v194, v195, v196);
                  v311 = ValueAtIndex;
                  v198 = &v303 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v199 = *__error();
                  v181 = v313;
                  v200 = _os_log_pack_fill();
                  *v200 = v305;
                  *(v200 + 4) = a1;
                  *(v200 + 12) = 2112;
                  *(v200 + 14) = v311;
                  __SC_log_send(5, v187, v188, v198);
                }
              }

              ++v181;
              v115 = 0;
            }

            while (v181 < CFArrayGetCount(v117) && v314);
          }

          v294 = v28;
          v295 = SCBridgeInterfaceCopyAll(a1);
          if (v295)
          {
            v296 = v295;
            v330.length = CFArrayGetCount(v295);
            v330.location = 0;
            CFArrayApplyFunction(v296, v330, validate_bridge, v307);
            CFRelease(v296);
          }

          v297 = SCVLANInterfaceCopyAll(a1);
          if (v297)
          {
            v298 = v297;
            v299 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004045F868BCuLL);
            v300 = v307;
            *v299 = a1;
            v299[1] = v300;
            v301 = *MEMORY[0x1E695E738];
            v299[2] = *MEMORY[0x1E695E738];
            v331.length = CFArrayGetCount(v298);
            v331.location = 0;
            CFArrayApplyFunction(v298, v331, validate_vlan, v299);
            v302 = v299[2];
            if (v302 && v302 != v301)
            {
              CFRelease(v302);
            }

            free(v299);
            CFRelease(v298);
          }

          v28 = v294;
          v100 = v309;
          v116 = v310;
          v98 = v308;
          goto LABEL_140;
        }

        LODWORD(v311) = v28;
        v314 = 0;
        v264 = __log_SCNetworkConfiguration();
        v265 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v264, v265))
        {
          v266 = _os_log_pack_size();
          v274 = &v303 - ((MEMORY[0x1EEE9AC00](v266, v267, v268, v269, v270, v271, v272, v273) + 15) & 0xFFFFFFFFFFFFFFF0);
          v275 = *__error();
          v276 = _os_log_pack_fill();
          *v276 = 138412290;
          *(v276 + 4) = a1;
          v277 = v274;
          v100 = v309;
          __SC_log_send(5, v264, v265, v277);
          v98 = v308;
        }

        v115 = 0;
        v28 = v311;
        goto LABEL_139;
      }

      v151 = v28;
      v314 = 0;
      v152 = __log_SCNetworkConfiguration();
      v153 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v152, v153))
      {
        goto LABEL_91;
      }
    }

    else
    {
      v151 = v28;
      v314 = 0;
      v152 = __log_SCNetworkConfiguration();
      v153 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v152, v153))
      {
LABEL_91:
        v154 = _os_log_pack_size();
        v162 = &v303 - ((MEMORY[0x1EEE9AC00](v154, v155, v156, v157, v158, v159, v160, v161) + 15) & 0xFFFFFFFFFFFFFFF0);
        v163 = *__error();
        v164 = _os_log_pack_fill();
        *v164 = 138412290;
        *(v164 + 4) = a1;
        __SC_log_send(5, v152, v153, v162);
      }
    }

    v118 = 0;
    v117 = 0;
    v116 = 0;
    v98 = 0;
    v312 = 0;
    v94 = 0;
    v115 = 0;
    v28 = v151;
    v100 = 0;
    goto LABEL_140;
  }

  v120 = __log_SCNetworkConfiguration();
  v121 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v120, v121))
  {
    v122 = _os_log_pack_size();
    v130 = &v303 - ((MEMORY[0x1EEE9AC00](v122, v123, v124, v125, v126, v127, v128, v129) + 15) & 0xFFFFFFFFFFFFFFF0);
    v131 = *__error();
    v132 = _os_log_pack_fill();
    *v132 = 138412290;
    *(v132 + 4) = a2;
    __SC_log_send(5, v120, v121, v130);
  }

  v314 = 0;
LABEL_76:
  if (!v28)
  {
    _SCNetworkConfigurationSetBypassSystemInterfaces(a1, 0);
  }

  v133 = __log_SCNetworkConfiguration();
  v134 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v133, v134))
  {
    v135 = _os_log_pack_size();
    v143 = &v303 - ((MEMORY[0x1EEE9AC00](v135, v136, v137, v138, v139, v140, v141, v142) + 15) & 0xFFFFFFFFFFFFFFF0);
    v144 = *__error();
    v145 = _os_log_pack_fill();
    if (v314)
    {
      v146 = "";
    }

    else
    {
      v146 = "not ";
    }

    *v145 = 136315138;
    *(v145 + 4) = v146;
    __SC_log_send(6, v133, v134, v143);
  }

  result = v314;
  v148 = *MEMORY[0x1E69E9840];
  return result;
}

void logInterfaces(uint64_t a1, const __CFArray *a2, int a3)
{
  v61 = a1;
  v66 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = &v61 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315138;
      *(v16 + 4) = v61;
      __SC_log_send(7, v4, v5, v14);
    }

    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v20 = Count;
    v21 = 0;
    v62 = @"UserDefinedName";
    *&v19 = 138412546;
    v63 = v19;
    v64 = Mutable;
    v65 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
      TypeID = SCNetworkInterfaceGetTypeID();
      if (!ValueAtIndex)
      {
        CFDictionaryGetTypeID();
LABEL_19:
        v30 = 0;
        v25 = @"?";
        if (!Mutable)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (CFGetTypeID(ValueAtIndex) == TypeID)
      {
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        if (BSDName)
        {
          v25 = BSDName;
          UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(ValueAtIndex);
LABEL_17:
          v30 = UserDefinedName;
          if (!Mutable)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v27 = CFDictionaryGetTypeID();
        if (CFGetTypeID(ValueAtIndex) != v27)
        {
          goto LABEL_19;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        if (Value)
        {
          v25 = Value;
          v29 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo");
          if (v29)
          {
            UserDefinedName = CFDictionaryGetValue(v29, v62);
            goto LABEL_17;
          }

          v30 = 0;
          if (!Mutable)
          {
LABEL_22:
            v31 = __log_SCNetworkConfiguration();
            v32 = _SC_syslog_os_log_mapping(7);
            if (__SC_log_enabled(7, v31, v32))
            {
              v33 = _os_log_pack_size();
              v34 = a2;
              v42 = &v61 - ((MEMORY[0x1EEE9AC00](v33, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = *__error();
              v44 = _os_log_pack_fill();
              *v44 = v63;
              if (v30)
              {
                v45 = v30;
              }

              else
              {
                v45 = @"?";
              }

              *(v44 + 4) = v25;
              *(v44 + 12) = 2112;
              *(v44 + 14) = v45;
              __SC_log_send(7, v31, v32, v42);
              a2 = v34;
              Mutable = v64;
              v20 = v65;
            }

            goto LABEL_27;
          }

LABEL_20:
          CFArrayAppendValue(Mutable, v25);
        }
      }

LABEL_27:
      ++v21;
    }

    while (v20 != v21);
  }

  if (Mutable)
  {
    v46 = CFStringCreateByCombiningStrings(0, Mutable, @", ");
    v47 = __log_SCNetworkConfiguration();
    v48 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v47, v48))
    {
      v49 = _os_log_pack_size();
      v57 = &v61 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = *__error();
      v59 = _os_log_pack_fill();
      *v59 = 136315394;
      *(v59 + 4) = v61;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v46;
      __SC_log_send(7, v47, v48, v57);
    }

    CFRelease(v46);
    CFRelease(Mutable);
  }

  v60 = *MEMORY[0x1E69E9840];
}

void _SCNetworkConfigurationValidateInterface(void *key, const void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 80);
  if (**(a3 + 32) | v3)
  {
    v8 = *a3;
    v7 = *(a3 + 8);
    v9 = *(a3 + 40);
    v67 = *(a3 + 48);
    v10 = *(a3 + 56);
    v11 = *(a3 + 16);
    Value = CFDictionaryGetValue(*(a3 + 24), key);
    if (Value)
    {
      v13 = Value;
      UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(Value);
      v15 = __SCNetworkInterfaceGetUserDefinedName(a2);
      if (!__SCNetworkConfigurationInterfaceNameIsEquiv(UserDefinedName, v15))
      {
        v16 = __log_SCNetworkConfiguration();
        v17 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v16, v17))
        {
          v18 = _os_log_pack_size();
          v65 = &v65;
          v26 = MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25);
          v66 = v9;
          v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
          v28 = *__error();
          v29 = _os_log_pack_fill();
          *v29 = 138412546;
          *(v29 + 4) = UserDefinedName;
          *(v29 + 12) = 2112;
          *(v29 + 14) = v15;
          v30 = v27;
          v9 = v66;
          __SC_log_send(5, v16, v17, v30);
        }

        **(a3 + 32) = 0;
        TypeID = CFArrayGetTypeID();
        if (v10 && CFGetTypeID(v10) == TypeID && __SCNetworkInterfaceMatchesName(UserDefinedName, v15))
        {
          v32 = __log_SCNetworkConfiguration();
          v33 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v32, v33))
          {
            v34 = _os_log_pack_size();
            v66 = &v65;
            v42 = v9;
            v43 = &v65 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = *__error();
            v45 = _os_log_pack_fill();
            *v45 = 138412546;
            *(v45 + 4) = v15;
            *(v45 + 12) = 2112;
            *(v45 + 14) = UserDefinedName;
            v46 = v43;
            v9 = v42;
            __SC_log_send(5, v32, v33, v46);
          }

          CFArrayAppendValue(v10, a2);
        }

        v47 = CFArrayGetTypeID();
        v48 = v67;
        if (v67 && CFGetTypeID(v67) == v47)
        {
          CFArrayAppendValue(v48, v13);
        }

        v49 = CFArrayGetTypeID();
        if (v9 && CFGetTypeID(v9) == v49)
        {
          CFArrayAppendValue(v9, a2);
        }
      }
    }

    else if (v8 && !CFDictionaryContainsKey(v8, key) && v7 && !CFDictionaryContainsKey(v7, key) && v11 && !CFDictionaryContainsKey(v11, key))
    {
      v50 = v9;
      v51 = __log_SCNetworkConfiguration();
      v52 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v51, v52))
      {
        v53 = _os_log_pack_size();
        v61 = &v65 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = *__error();
        v63 = _os_log_pack_fill();
        *v63 = 138412290;
        *(v63 + 4) = key;
        __SC_log_send(5, v51, v52, v61);
      }

      if (v3)
      {
        CFArrayAppendValue(v50, a2);
      }

      **(a3 + 32) = 0;
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

void validate_bridge(const __SCPreferences **a1, const __SCPreferences *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(a1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(MemberInterfaces) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MemberInterfaces, v6);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        v9 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, a2, BSDName);
        if (v9)
        {
          v10 = v9;
          CFArrayAppendValue(Mutable, v9);
          CFRelease(v10);
        }
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(MemberInterfaces));
  }

  if (CFArrayGetCount(Mutable))
  {
    SCBridgeInterfaceSetMemberInterfaces(a1, Mutable);
  }

  else
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
      v13 = _os_log_pack_size();
      v21 = v25 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 138412290;
      *(v23 + 4) = a1;
      __SC_log_send(5, v11, v12, v21);
    }

    SCBridgeInterfaceRemove(a1);
  }

  CFRelease(Mutable);
  v24 = *MEMORY[0x1E69E9840];
}

void validate_vlan(const __SCNetworkInterface *a1, const __SCPreferences **a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(a1);
  BSDName = SCNetworkInterfaceGetBSDName(PhysicalInterface);
  if (!BSDName)
  {
    goto LABEL_16;
  }

  v6 = BSDName;
  v7 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, a2[1], BSDName);
  if (!v7)
  {
    v9 = a2[2];
    if (v9 == *MEMORY[0x1E695E738])
    {
      v9 = SCBridgeInterfaceCopyAll(*a2);
      a2[2] = v9;
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        v14 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        if (v14 == v6 || v14 && CFEqual(v6, v14))
        {
          goto LABEL_19;
        }
      }

      while (v11 != ++v12);
    }

LABEL_16:
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = v29 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 138412290;
      *(v27 + 4) = a1;
      __SC_log_send(5, v15, v16, v25);
    }

    SCVLANInterfaceRemove(a1);
LABEL_19:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  CFRelease(v7);
}

uint64_t _SCNetworkConfigurationCheckValidity(uint64_t a1, const __CFDictionary *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, a1);
    v4 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v3);
    v5 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v3);
    if (CFURLGetFileSystemRepresentation(v4, 1u, v50, 1024))
    {
      if (CFURLGetFileSystemRepresentation(v5, 1u, v51, 1024))
      {
        v6 = CFStringCreateWithFormat(0, 0, @"%s", v50);
        v7 = CFStringCreateWithFormat(0, 0, @"%s", v51);
        v8 = __SCPreferencesCreateForMigration(@"System Migration", v6);
        v9 = __SCPreferencesCreateForMigration(@"System Migration", v7);
        v10 = v9;
        v11 = 0;
        if (v8 && v9)
        {
          v11 = _SCNetworkConfigurationCheckValidityWithPreferences(v8, v9, a2);
        }

        goto LABEL_16;
      }

      v25 = __log_SCNetworkConfiguration();
      v26 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v25, v26))
      {
        v38 = _os_log_pack_size();
        v35 = &v50[-((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v46 = *__error();
        v47 = _os_log_pack_fill();
        *v47 = 138412290;
        *(v47 + 4) = v5;
        goto LABEL_14;
      }
    }

    else
    {
      v25 = __log_SCNetworkConfiguration();
      v26 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v25, v26))
      {
        v27 = _os_log_pack_size();
        v35 = &v50[-((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v36 = *__error();
        v37 = _os_log_pack_fill();
        *v37 = 138412290;
        *(v37 + 4) = v4;
LABEL_14:
        __SC_log_send(5, v25, v26, v35);
      }
    }

    v11 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v7 = 0;
LABEL_16:
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_30;
  }

  v12 = __log_SCNetworkConfiguration();
  v13 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v12, v13))
  {
    v14 = _os_log_pack_size();
    v22 = &v50[-((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 138412290;
    *(v24 + 4) = @"NULL";
    __SC_log_send(5, v12, v13, v22);
  }

  v11 = 0;
LABEL_30:
  v48 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SCPreferencesCreateForMigration(const __CFString *a1, const __CFString *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"allow-model-conflict";
  values = *MEMORY[0x1E695E4D0];
  v4 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = SCPreferencesCreateWithOptions(0, a1, a2, 0, v4);
  CFRelease(v4);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _SCNetworkMigrationAreConfigurationsIdentical(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = 0;
  v207 = *MEMORY[0x1E69E9840];
  if (!v8)
  {
    goto LABEL_68;
  }

  v11 = v9;
  if (!v9)
  {
    goto LABEL_68;
  }

  v12 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, v8);
  v13 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v12);
  if (!CFURLResourceIsReachable(v13, 0))
  {
    v25 = __log_SCNetworkConfiguration();
    v26 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v25, v26))
    {
      v27 = _os_log_pack_size();
      v35 = &v183 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      *v37 = 138412290;
      *(v37 + 4) = v13;
      __SC_log_send(5, v25, v26, v35);
    }

    v194 = 0;
    v195 = 0;
    v193 = 0;
    v198 = 0;
    v16 = 0;
    v38 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  v14 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v12);
  if (CFURLResourceIsReachable(v14, 0))
  {
    if (CFURLGetFileSystemRepresentation(v13, 1u, v202, 1024))
    {
      if (CFURLGetFileSystemRepresentation(v14, 1u, v204, 1024))
      {
        v15 = MEMORY[0x1B26F4510](0, @"Library/Preferences/SystemConfiguration/", 0, 1, v11);
        v16 = MEMORY[0x1B26F44F0](0, "preferences.plist", 18, 0, v15);
        if (!CFURLResourceIsReachable(v16, 0))
        {
          v98 = __log_SCNetworkConfiguration();
          v99 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v98, v99))
          {
            v100 = _os_log_pack_size();
            v200 = &v183;
            v108 = &v183 - ((MEMORY[0x1EEE9AC00](v100, v101, v102, v103, v104, v105, v106, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
            v109 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(5, v98, v99, v108);
          }

          v194 = 0;
          v195 = 0;
          v193 = 0;
          v198 = 0;
          v38 = 0;
          goto LABEL_72;
        }

        v17 = MEMORY[0x1B26F44F0](0, "NetworkInterfaces.plist", 24, 0, v15);
        v190 = v17;
        if (CFURLResourceIsReachable(v17, 0))
        {
          if (CFURLGetFileSystemRepresentation(v16, 1u, v201, 1024))
          {
            if (CFURLGetFileSystemRepresentation(v17, 1u, v203, 1024))
            {
              v18 = CFStringCreateWithFormat(0, 0, @"%s", v202);
              v198 = CFStringCreateWithFormat(0, 0, @"%s", v204);
              v19 = CFStringCreateWithFormat(0, 0, @"%s", v201);
              v20 = CFStringCreateWithFormat(0, 0, @"%s", v203);
              v194 = v18;
              v199 = __SCPreferencesCreateForMigration(@"System Migration", v18);
              v195 = v19;
              v21 = __SCPreferencesCreateForMigration(@"System Migration", v19);
              v22 = __SCPreferencesCreateForMigration(@"System Migration", v198);
              v23 = v199;
              v193 = v20;
              v24 = __SCPreferencesCreateForMigration(@"System Migration", v20);
LABEL_79:
              v38 = v190;
              goto LABEL_25;
            }

            v132 = __log_SCNetworkConfiguration();
            v133 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v132, v133))
            {
              v134 = _os_log_pack_size();
              v188 = v15;
              v200 = &v183;
              v142 = MEMORY[0x1EEE9AC00](v134, v135, v136, v137, v138, v139, v140, v141);
              v191 = v16;
              v143 = &v183 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
              v144 = *__error();
              v15 = v188;
              v145 = _os_log_pack_fill();
              *v145 = 138412290;
              v146 = v190;
              v16 = v191;
              *(v145 + 4) = v190;
              v147 = v132;
              v38 = v146;
              __SC_log_send(5, v147, v133, v143);
              v194 = 0;
              v195 = 0;
              v193 = 0;
              v198 = 0;
LABEL_72:
              v24 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              goto LABEL_25;
            }

LABEL_78:
            v194 = 0;
            v195 = 0;
            v193 = 0;
            v198 = 0;
            v24 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            goto LABEL_79;
          }

          v110 = __log_SCNetworkConfiguration();
          v111 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v110, v111))
          {
            goto LABEL_78;
          }

          v122 = _os_log_pack_size();
          v188 = v15;
          v200 = &v183;
          v120 = &v183 - ((MEMORY[0x1EEE9AC00](v122, v123, v124, v125, v126, v127, v128, v129) + 15) & 0xFFFFFFFFFFFFFFF0);
          v130 = *__error();
          v15 = v188;
          v131 = _os_log_pack_fill();
          *v131 = 138412290;
          *(v131 + 4) = v16;
        }

        else
        {
          v110 = __log_SCNetworkConfiguration();
          v111 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v110, v111))
          {
            goto LABEL_78;
          }

          v112 = _os_log_pack_size();
          v200 = &v183;
          v120 = &v183 - ((MEMORY[0x1EEE9AC00](v112, v113, v114, v115, v116, v117, v118, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
          v121 = *__error();
          *_os_log_pack_fill() = 0;
        }

        __SC_log_send(5, v110, v111, v120);
        goto LABEL_78;
      }

      v39 = __log_SCNetworkConfiguration();
      v40 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v39, v40))
      {
        goto LABEL_23;
      }

      v62 = _os_log_pack_size();
      v42 = v14;
      v50 = &v183 - ((MEMORY[0x1EEE9AC00](v62, v63, v64, v65, v66, v67, v68, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = *__error();
      goto LABEL_21;
    }

    v39 = __log_SCNetworkConfiguration();
    v40 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v39, v40))
    {
      v52 = _os_log_pack_size();
      v50 = &v183 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = *__error();
      v61 = _os_log_pack_fill();
      *v61 = 138412290;
      *(v61 + 4) = v13;
LABEL_22:
      __SC_log_send(5, v39, v40, v50);
    }
  }

  else
  {
    v39 = __log_SCNetworkConfiguration();
    v40 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v39, v40))
    {
      v41 = _os_log_pack_size();
      v42 = v14;
      v50 = &v183 - ((MEMORY[0x1EEE9AC00](v41, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = *__error();
LABEL_21:
      v14 = v42;
      v71 = _os_log_pack_fill();
      *v71 = 138412290;
      *(v71 + 4) = v42;
      goto LABEL_22;
    }
  }

LABEL_23:
  v194 = 0;
  v195 = 0;
  v193 = 0;
  v198 = 0;
  v16 = 0;
  v38 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_24:
  v15 = 0;
LABEL_25:
  v196 = v24;
  v197 = v22;
  v199 = v23;
  v200 = v21;
  if (!v23 || !v21 || !v22 || !v24)
  {
    v78 = __log_SCNetworkConfiguration();
    v79 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v78, v79))
    {
      v80 = _os_log_pack_size();
      v191 = v16;
      v192 = &v183;
      v88 = v12;
      v89 = &v183 - ((MEMORY[0x1EEE9AC00](v80, v81, v82, v83, v84, v85, v86, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
      v90 = *__error();
      *_os_log_pack_fill() = 0;
      v91 = v89;
      v12 = v88;
      __SC_log_send(5, v78, v79, v91);
      v16 = v191;
    }

    v10 = 0;
    goto LABEL_40;
  }

  v192 = v13;
  Value = SCPreferencesGetValue(v23, @"NetworkServices");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFDictionaryGetCount(Value), v75 = SCPreferencesGetValue(v200, @"NetworkServices"), v76 = CFDictionaryGetTypeID(), !v75) || CFGetTypeID(v75) != v76 || Count != CFDictionaryGetCount(v75))
  {
    v10 = 0;
    v13 = v192;
    goto LABEL_40;
  }

  v189 = v75;
  v190 = v38;
  v188 = v15;
  v191 = v16;
  if (Count < 0x41)
  {
    v77 = v205;
  }

  else
  {
    v77 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
  }

  v186 = v12;
  memset(v206, 0, sizeof(v206));
  memset(v205, 0, sizeof(v205));
  v148 = v77;
  CFDictionaryGetKeysAndValues(Value, 0, v77);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count)
  {
    v150 = Mutable;
    v151 = 0;
    v152 = v148;
    do
    {
      v153 = v152[v151];
      v154 = CFDictionaryGetTypeID();
      if (v153 && CFGetTypeID(v153) == v154)
      {
        CFArrayAppendValue(v150, v153);
      }

      ++v151;
      v152 = v148;
    }

    while (Count != v151);
    v187 = CFArrayGetCount(v150);
    if (Count > 0x40)
    {
      v155 = MEMORY[0x1B26F3AA0](0, Count, 2987671282, 0);
      goto LABEL_93;
    }
  }

  else
  {
    v150 = Mutable;
    v187 = CFArrayGetCount(Mutable);
  }

  v155 = v206;
LABEL_93:
  v156 = v155;
  CFDictionaryGetKeysAndValues(v189, 0, v155);
  v189 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Count)
  {
    v157 = v156;
    do
    {
      v158 = *v157;
      v159 = CFDictionaryGetTypeID();
      if (v158 && CFGetTypeID(v158) == v159)
      {
        CFArrayAppendValue(v189, v158);
      }

      ++v157;
      --Count;
    }

    while (Count);
  }

  v160 = CFArrayGetCount(v189);
  v161 = 1;
  if (v187 == v160)
  {
    v13 = v192;
    if (v160 >= 1)
    {
      v162 = 0;
      while (1)
      {
        v163 = v162;
        ValueAtIndex = CFArrayGetValueAtIndex(v189, v162);
        v165 = CFArrayGetCount(v150);
        v161 = v165 < 1;
        if (v165 < 1)
        {
          break;
        }

        v166 = v165;
        v167 = 0;
        while (1)
        {
          v168 = CFArrayGetValueAtIndex(v150, v167);
          if (CFEqual(ValueAtIndex, v168))
          {
            break;
          }

          if (v166 == ++v167)
          {
            v161 = 1;
            goto LABEL_109;
          }
        }

        v162 = v163 + 1;
        v13 = v192;
        if ((v163 + 1) == v187)
        {
          goto LABEL_110;
        }
      }

      v161 = 1;
    }
  }

  else
  {
LABEL_109:
    v13 = v192;
  }

LABEL_110:
  if (v148 != v205)
  {
    CFAllocatorDeallocate(0, v148);
  }

  v92 = v197;
  if (v156 != v206)
  {
    CFAllocatorDeallocate(0, v156);
  }

  if (v161)
  {
    v10 = 0;
    v12 = v186;
    v38 = v190;
    v16 = v191;
    v15 = v188;
    if (!v186)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v169 = SCPreferencesGetValue(v92, @"Interfaces");
  v170 = CFArrayGetTypeID();
  if (!v169 || CFGetTypeID(v169) != v170)
  {
    v10 = 0;
    v12 = v186;
    v38 = v190;
    v16 = v191;
    v15 = v188;
    goto LABEL_40;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v169);
  v172 = CFArrayGetCount(MutableCopy);
  v173 = SCPreferencesGetValue(v196, @"Interfaces");
  v174 = CFArrayGetTypeID();
  v12 = v186;
  if (!v173)
  {
    v10 = 0;
    v16 = v191;
LABEL_134:
    v15 = v188;
    goto LABEL_135;
  }

  v175 = v174;
  v176 = CFGetTypeID(v173);
  v16 = v191;
  if (v176 != v175)
  {
    v10 = 0;
    goto LABEL_134;
  }

  v187 = v173;
  v177 = CFArrayGetCount(v173);
  v10 = 0;
  v15 = v188;
  if (v172 != v177)
  {
LABEL_135:
    v38 = v190;
LABEL_136:
    if (!MutableCopy)
    {
      goto LABEL_40;
    }

    goto LABEL_137;
  }

  v184 = v172;
  v38 = v190;
  if (v177 < 1)
  {
    goto LABEL_136;
  }

  v178 = 0;
  while (1)
  {
    v185 = v178;
    v189 = CFArrayGetValueAtIndex(v187, v178);
    v179 = CFArrayGetCount(MutableCopy);
    if (v179 < 1)
    {
      break;
    }

    v180 = v179;
    v181 = 0;
    while (1)
    {
      v182 = CFArrayGetValueAtIndex(v169, v181);
      if (CFEqual(v189, v182))
      {
        break;
      }

      if (v180 == ++v181)
      {
        goto LABEL_139;
      }
    }

    v178 = v185 + 1;
    v10 = 1;
    v13 = v192;
    if (v185 + 1 == v184)
    {
      goto LABEL_136;
    }
  }

LABEL_139:
  v10 = 0;
  v13 = v192;
  if (MutableCopy)
  {
LABEL_137:
    CFRelease(MutableCopy);
  }

LABEL_40:
  v92 = v197;
  if (v12)
  {
LABEL_41:
    CFRelease(v12);
  }

LABEL_42:
  v93 = v200;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v94 = v198;
  if (v16)
  {
    CFRelease(v16);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v194)
  {
    CFRelease(v194);
  }

  v95 = v195;
  if (v94)
  {
    CFRelease(v94);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v193)
  {
    CFRelease(v193);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v196)
  {
    CFRelease(v196);
  }

LABEL_68:
  v96 = *MEMORY[0x1E69E9840];
  return v10;
}

__CFArray *_SCNetworkConfigurationCopyMigrationRemovePaths(const __CFArray *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    *&v5 = 138412290;
    v25 = v5;
    v26 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v27, 1024))
      {
        v8 = strnlen(v27, 0x400uLL);
        v9 = MEMORY[0x1B26F44F0](0, v27, v8, 0, a2);
        if (!CFURLResourceIsReachable(v9, 0))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        CFRelease(v9);
      }

      else
      {
        v10 = __log_SCNetworkConfiguration();
        v11 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v10, v11))
        {
          v12 = _os_log_pack_size();
          v20 = &v25 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = *__error();
          v22 = _os_log_pack_fill();
          *v22 = v25;
          *(v22 + 4) = ValueAtIndex;
          __SC_log_send(5, v10, v11, v20);
          a2 = v26;
        }
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void logMapping_one(const __SCNetworkService *a1, const __SCNetworkService *a2, uint64_t a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8))
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(*a3);
    if (__SC_log_enabled(*a3, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v54 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = *(a3 + 8);
      *v18 = 136315138;
      *(v18 + 4) = v19;
      __SC_log_send(*a3, v6, v7, v16);
    }

    *(a3 + 8) = 0;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!a1)
  {
    SCNetworkSetGetTypeID();
    SCNetworkInterfaceGetTypeID();
    goto LABEL_14;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    ServiceID = SCNetworkServiceGetServiceID(a1);
  }

  else
  {
    v22 = SCNetworkSetGetTypeID();
    if (CFGetTypeID(a1) == v22)
    {
      ServiceID = SCNetworkSetGetSetID(a1);
    }

    else
    {
      v23 = SCNetworkInterfaceGetTypeID();
      if (CFGetTypeID(a1) != v23)
      {
        goto LABEL_14;
      }

      ServiceID = SCNetworkInterfaceGetBSDName(a1);
    }
  }

  a1 = ServiceID;
LABEL_14:
  v24 = SCNetworkServiceGetTypeID();
  if (!a2)
  {
    SCNetworkSetGetTypeID();
    SCNetworkInterfaceGetTypeID();
    CFBooleanGetTypeID();
    CFArrayGetTypeID();
    Mutable = 0;
LABEL_21:
    v28 = 1;
    goto LABEL_22;
  }

  if (CFGetTypeID(a2) == v24)
  {
    SetID = SCNetworkServiceGetServiceID(a2);
LABEL_20:
    Mutable = SetID;
    goto LABEL_21;
  }

  v27 = SCNetworkSetGetTypeID();
  if (CFGetTypeID(a2) == v27)
  {
    SetID = SCNetworkSetGetSetID(a2);
    goto LABEL_20;
  }

  v43 = SCNetworkInterfaceGetTypeID();
  if (CFGetTypeID(a2) == v43)
  {
    BSDName = SCNetworkInterfaceGetBSDName(a2);
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(a2);
    v46 = @"?";
    if (UserDefinedName)
    {
      v46 = UserDefinedName;
    }

    Mutable = CFStringCreateWithFormat(0, 0, @"%@ (%@)", BSDName, v46);
LABEL_31:
    v28 = 0;
    goto LABEL_22;
  }

  v47 = CFBooleanGetTypeID();
  if (CFGetTypeID(a2) == v47)
  {
    Mutable = @"None";
    goto LABEL_21;
  }

  v48 = CFArrayGetTypeID();
  if (CFGetTypeID(a2) == v48)
  {
    Count = CFArrayGetCount(a2);
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendFormat(Mutable, 0, @"( ");
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v52 = SCNetworkSetGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v52)
        {
          ValueAtIndex = SCNetworkSetGetSetID(ValueAtIndex);
        }

        v53 = ", ";
        if (!i)
        {
          v53 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@", v53, ValueAtIndex);
      }
    }

    CFStringAppendFormat(Mutable, 0, @""));
    goto LABEL_31;
  }

  v28 = 1;
  Mutable = a2;
LABEL_22:
  v29 = __log_SCNetworkConfiguration();
  v30 = _SC_syslog_os_log_mapping(*a3);
  if (__SC_log_enabled(*a3, v29, v30))
  {
    v31 = _os_log_pack_size();
    v39 = v54 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *__error();
    v41 = _os_log_pack_fill();
    *v41 = 138412546;
    *(v41 + 4) = a1;
    *(v41 + 12) = 2112;
    *(v41 + 14) = Mutable;
    __SC_log_send(*a3, v29, v30, v39);
  }

  if ((v28 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkConfigurationInterfaceNameIsEquiv(const __CFString *a1, const __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      v5 = CFStringGetTypeID();
      if (a2)
      {
        if (CFGetTypeID(a2) == v5)
        {
          if (CFEqual(a1, a2) || (CFEqual(a1, @"AirPort") || CFEqual(a1, @"Wi-Fi")) && (CFEqual(a2, @"AirPort") || CFEqual(a2, @"Wi-Fi")) || (CFEqual(a1, @"Ethernet") || CFEqual(a1, @"Ethernet 1")) && (CFEqual(a2, @"Ethernet") || CFEqual(a2, @"Ethernet 1")))
          {
            goto LABEL_21;
          }

          v6 = interfaceNameCreateWithoutPortSuffix(a1);
          if (v6)
          {
            v7 = v6;
            v8 = a2;
          }

          else
          {
            v6 = interfaceNameCreateWithoutPortSuffix(a2);
            if (!v6)
            {
              goto LABEL_22;
            }

            v7 = v6;
            v8 = a1;
          }

          v11 = CFEqual(v6, v8);
          CFRelease(v7);
          if (v11)
          {
LABEL_21:
            result = 1;
            goto LABEL_17;
          }

LABEL_22:
          v12 = 0;
          while (1)
          {
            v13 = off_1E79BEB50[v12];
            if ((CFEqual(a1, v13) || __SCNetworkInterfaceMatchesName(a1, v13)) && (CFEqual(a2, v13) || __SCNetworkInterfaceMatchesName(a2, v13)))
            {
              goto LABEL_21;
            }

            result = 0;
            if (++v12 == 6)
            {
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

  result = 0;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef interfaceNameCreateWithoutPortSuffix(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CFStringFind(a1, @", Port ", 4uLL);
  if (v2.location == -1)
  {
LABEL_9:
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  Length = CFStringGetLength(a1);
  v4 = v2.location + v2.length;
  if (v2.location + v2.length < Length)
  {
    v5 = Length;
    while (CFStringGetCharacterAtIndex(a1, v4) - 48 < 0xA)
    {
      if (++v4 >= v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_9;
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  v7.location = 0;
  v7.length = v2.location;

  return CFStringCreateWithSubstring(0, a1, v7);
}

void create_bsd_name_service_protocol_mapping(const __SCNetworkService *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  Interface = SCNetworkServiceGetInterface(a1);
  if (Interface && (v6 = Interface, v30.length = CFArrayGetCount(v4), v30.location = 0, CFArrayContainsValue(v4, v30, v6)) && (BSDName = SCNetworkInterfaceGetBSDName(v6), TypeID = CFStringGetTypeID(), BSDName) && CFGetTypeID(BSDName) == TypeID && (v9 = SCNetworkServiceCopyProtocols(a1)) != 0)
  {
    v10 = v9;
    v26 = BSDName;
    v27 = v3;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      v15 = *MEMORY[0x1E695E4D0];
      v16 = *MEMORY[0x1E695E4C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
        Configuration = SCNetworkProtocolGetConfiguration(ValueAtIndex);
        ProtocolType = SCNetworkProtocolGetProtocolType(ValueAtIndex);
        Enabled = SCNetworkProtocolGetEnabled(ValueAtIndex);
        if (Configuration && ProtocolType)
        {
          v21 = Enabled;
          v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(v22, @"Protocol Type", ProtocolType);
          CFDictionaryAddValue(v22, @"Protocol Configuration", Configuration);
          if (v21)
          {
            v23 = v15;
          }

          else
          {
            v23 = v16;
          }

          CFDictionaryAddValue(v22, @"Protocol Enabled", v23);
          CFArrayAppendValue(Mutable, v22);
          CFRelease(v22);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    CFDictionaryAddValue(v27, v26, Mutable);
    CFRelease(v10);
    v24 = *MEMORY[0x1E69E9840];

    CFRelease(Mutable);
  }

  else
  {
    v25 = *MEMORY[0x1E69E9840];
  }
}

SCNetworkInterfaceRef remove_service(const __SCNetworkService *a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  result = SCNetworkServiceGetInterface(a1);
  if (result)
  {
    v5 = result;
    v27.length = CFArrayGetCount(v3);
    v27.location = 0;
    result = CFArrayContainsValue(v3, v27, v5);
    if (result)
    {
      ServiceID = SCNetworkServiceGetServiceID(a1);
      Name = SCNetworkServiceGetName(a1);
      BSDName = SCNetworkInterfaceGetBSDName(v5);
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v9, v10))
      {
        if (Name)
        {
          v11 = Name;
        }

        else
        {
          v11 = &stru_1F22591E8;
        }

        v12 = _os_log_pack_size();
        v20 = v26 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = ", ";
        *v22 = 138413058;
        *(v22 + 4) = ServiceID;
        *(v22 + 12) = 2112;
        if (!BSDName)
        {
          v23 = "";
        }

        *(v22 + 14) = v11;
        if (BSDName)
        {
          v24 = BSDName;
        }

        else
        {
          v24 = &stru_1F22591E8;
        }

        *(v22 + 22) = 2080;
        *(v22 + 24) = v23;
        *(v22 + 32) = 2112;
        *(v22 + 34) = v24;
        __SC_log_send(6, v9, v10, v20);
      }

      result = SCNetworkServiceRemove(a1);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void add_service(const __SCNetworkInterface *a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName && CFGetTypeID(BSDName) == TypeID)
  {
    Value = CFDictionaryGetValue(v3, BSDName);
  }

  else
  {
    Value = 0;
  }

  v8 = SCNetworkServiceCreate(v4, a1);
  if (v8)
  {
    v9 = v8;
    if (SCNetworkServiceEstablishDefaultConfiguration(v8))
    {
      v78 = BSDName;
      v79 = v4;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v11 = Count;
          for (i = 0; i != v11; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v14 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Configuration");
            v15 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Type");
            v16 = CFDictionaryGetValue(ValueAtIndex, @"Protocol Enabled");
            if (v16)
            {
              v17 = CFBooleanGetValue(v16);
            }

            else
            {
              v17 = 0;
            }

            __SCNetworkServiceAddProtocolToService(v9, v15, v14, v17);
          }
        }
      }

      v18 = SCNetworkSetCopyCurrent(v79);
      if (v18)
      {
        v19 = v18;
        if (SCNetworkSetAddService(v18, v9))
        {
          ServiceID = SCNetworkServiceGetServiceID(v9);
          Name = SCNetworkServiceGetName(v9);
          v22 = __log_SCNetworkConfiguration();
          v23 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v22, v23))
          {
            if (Name)
            {
              v24 = Name;
            }

            else
            {
              v24 = &stru_1F22591E8;
            }

            v25 = _os_log_pack_size();
            v33 = &v77 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
            v34 = *__error();
            v35 = _os_log_pack_fill();
            v36 = ", ";
            *v35 = 138413058;
            *(v35 + 4) = ServiceID;
            *(v35 + 12) = 2112;
            v37 = v78;
            if (!v78)
            {
              v36 = "";
            }

            *(v35 + 14) = v24;
            if (v37)
            {
              v38 = v37;
            }

            else
            {
              v38 = &stru_1F22591E8;
            }

            *(v35 + 22) = 2080;
            *(v35 + 24) = v36;
            *(v35 + 32) = 2112;
            *(v35 + 34) = v38;
            __SC_log_send(6, v22, v23, v33);
          }
        }

        else
        {
          v64 = __log_SCNetworkConfiguration();
          v65 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v64, v65))
          {
            v66 = _os_log_pack_size();
            v74 = &v77 - ((MEMORY[0x1EEE9AC00](v66, v67, v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
            v75 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(5, v64, v65, v74);
          }

          SCNetworkServiceRemove(v9);
        }

        CFRelease(v9);
        v63 = v19;
        goto LABEL_37;
      }

      v51 = __log_SCNetworkConfiguration();
      v52 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v51, v52))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v51 = __log_SCNetworkConfiguration();
      v52 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v51, v52))
      {
LABEL_31:
        v53 = _os_log_pack_size();
        v61 = &v77 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v51, v52, v61);
      }
    }

    SCNetworkServiceRemove(v9);
    v63 = v9;
LABEL_37:
    CFRelease(v63);
    goto LABEL_38;
  }

  v39 = __log_SCNetworkConfiguration();
  v40 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v39, v40))
  {
    v41 = _os_log_pack_size();
    v49 = &v77 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v39, v40, v49);
  }

LABEL_38:
  v76 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkConfigurationMigrateConfigurationFilesPresent(const __CFURL *a1, CFArrayRef *a2, int a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v45 = 0;
    v46[0] = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    _SCNetworkConfigurationCopyMigrationPathsWithBaseURL(a1, &v45, v46);
    v7 = v45;
    CFArrayAppendValue(Mutable, v45);
    v8 = v46[0];
    CFArrayAppendValue(Mutable, v46[0]);
    CFRelease(v7);
    CFRelease(v8);
    *a2 = Mutable;
    Count = CFArrayGetCount(Mutable);
    if (Count < 1)
    {
LABEL_6:
      result = 1;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v11);
        if (!_SCNetworkConfigurationMigrateIsFilePresent(ValueAtIndex))
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }

      if (!a3)
      {
        goto LABEL_13;
      }

      v30 = __log_SCNetworkConfiguration();
      v31 = _SC_syslog_os_log_mapping(6);
      result = __SC_log_enabled(6, v30, v31);
      if (result)
      {
        v32 = _os_log_pack_size();
        v40 = &v44 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        *v42 = 138412290;
        *(v42 + 4) = ValueAtIndex;
        v26 = 6;
        v27 = v30;
        v28 = v31;
        v29 = v40;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v14 = __log_SCNetworkConfiguration();
    v15 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v14, v15);
    if (result)
    {
      v16 = _os_log_pack_size();
      v24 = &v44 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *__error();
      *_os_log_pack_fill() = 0;
      v26 = 5;
      v27 = v14;
      v28 = v15;
      v29 = v24;
LABEL_12:
      __SC_log_send(v26, v27, v28, v29);
LABEL_13:
      result = 0;
    }
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkPopulateDefaultPrefs(const __SCPreferences *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = __log_SCNetworkConfiguration();
  v3 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v2, v3))
  {
    v4 = _os_log_pack_size();
    v12 = &v19 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 138412290;
    *(v14 + 4) = a1;
    __SC_log_send(6, v2, v3, v12);
  }

  Default = SCNetworkSetCopyCurrent(a1);
  if (!Default)
  {
    Default = _SCNetworkSetCreateDefault(a1);
  }

  SCNetworkSetEstablishDefaultConfiguration(Default);
  CFRelease(Default);
  if (!SCPreferencesGetValue(a1, @"Model"))
  {
    v16 = _SC_hw_model(0);
    SCPreferencesSetValue(a1, @"Model", v16);
  }

  if (!SCPreferencesGetValue(a1, @"__VERSION__"))
  {
    HIDWORD(v19) = 20191120;
    v17 = CFNumberCreate(0, kCFNumberIntType, &v19 + 4);
    SCPreferencesSetValue(a1, @"__VERSION__", v17);
    CFRelease(v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __SCNetworkPopulateDefaultNIPrefs(const __SCPreferences *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(a1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = &v48 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 138412290;
      *(v16 + 4) = a1;
      __SC_log_send(6, v4, v5, v14);
    }

    v17 = __SCNetworkInterfaceCopyAll_IONetworkInterface(1);
    if (v17)
    {
      v18 = v17;
      v48 = a1;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (CFArrayGetCount(v18) >= 1)
      {
        v20 = 0;
        v49 = v18;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
          v22 = __SCNetworkInterfaceCopyStorageEntity(ValueAtIndex);
          if (v22)
          {
            v23 = v22;
            IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
            IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(ValueAtIndex);
            if (IOInterfaceType)
            {
              v26 = IOInterfaceUnit;
              if (IOInterfaceUnit)
              {
                if (CFArrayGetCount(Mutable) < 1)
                {
                  v27 = 0;
                }

                else
                {
                  v27 = 0;
                  do
                  {
                    v28 = CFArrayGetValueAtIndex(Mutable, v27);
                    v29 = CFDictionaryGetValue(v28, @"IOInterfaceType");
                    v30 = CFDictionaryGetValue(v28, @"IOInterfaceUnit");
                    v31 = CFNumberCompare(IOInterfaceType, v29, 0);
                    if (v31 == kCFCompareEqualTo)
                    {
                      v31 = CFNumberCompare(v26, v30, 0);
                    }

                    if (v31 == kCFCompareLessThan)
                    {
                      break;
                    }

                    ++v27;
                  }

                  while (v27 < CFArrayGetCount(Mutable));
                }

                CFArrayInsertValueAtIndex(Mutable, v27, v23);
                v18 = v49;
              }
            }

            CFRelease(v23);
          }

          ++v20;
        }

        while (v20 < CFArrayGetCount(v18));
      }

      v32 = v48;
      SCPreferencesSetValue(v48, @"Interfaces", Mutable);
      CFRelease(Mutable);
      if (!SCPreferencesGetValue(v32, @"Model"))
      {
        v33 = _SC_hw_model(0);
        SCPreferencesSetValue(v32, @"Model", v33);
      }

      if (!SCPreferencesGetValue(v32, @"__VERSION__"))
      {
        valuePtr = 20191120;
        v34 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        SCPreferencesSetValue(v32, @"__VERSION__", v34);
        CFRelease(v34);
      }

      CFRelease(v18);
    }

    else
    {
      v35 = __log_SCNetworkConfiguration();
      v36 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v35, v36))
      {
        v37 = _os_log_pack_size();
        v45 = &v48 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v35, v36, v45);
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

BOOL hasSameModel(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(a1, @"Model");
  v4 = SCPreferencesGetValue(a2, @"Model");
  TypeID = CFStringGetTypeID();
  result = Value && CFGetTypeID(Value) == TypeID && (v6 = CFStringGetTypeID(), v4) && CFGetTypeID(v4) == v6 && CFEqual(Value, v4) != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hasInterfaceConflict(const __SCPreferences *a1, const __SCPreferences *a2)
{
  cf2[1] = *MEMORY[0x1E69E9840];
  v3 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (v3)
  {
    v4 = v3;
    MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v3);
    CFRelease(v4);
  }

  else
  {
    MappingUsingBSDName = 0;
  }

  v6 = __SCNetworkInterfaceCopyStoredWithPreferences(a2);
  if (!v6)
  {
    v13 = 0;
    if (!MappingUsingBSDName)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      cf2[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        if (!MappingUsingBSDName || !CFDictionaryGetValueIfPresent(MappingUsingBSDName, BSDName, cf2) || !CFEqual(ValueAtIndex, cf2[0]))
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    v13 = 1;
  }

  CFRelease(v7);
  if (MappingUsingBSDName)
  {
LABEL_17:
    CFRelease(MappingUsingBSDName);
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void _SCNetworkConfigurationCreateBuiltinInterfaceServices(const __SCPreferences *a1, const __SCPreferences *cf)
{
  v62 = *MEMORY[0x1E69E9840];
  context = 0;
  v61 = 0;
  v3 = __SCNetworkInterfaceCopyStoredWithPreferences(cf);
  if (!v3)
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      v32 = _os_log_pack_size();
      v40 = &v56 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v30, v31, v40);
    }

    goto LABEL_21;
  }

  v4 = v3;
  MappingUsingBSDName = __SCNetworkInterfaceCreateMappingUsingBSDName(v3);
  CFRelease(v4);
  TypeID = CFDictionaryGetTypeID();
  if (!MappingUsingBSDName)
  {
    goto LABEL_21;
  }

  if (CFGetTypeID(MappingUsingBSDName) != TypeID)
  {
    goto LABEL_19;
  }

  v7 = __SCNetworkServiceCopyAllInterfaces(a1);
  if (!v7)
  {
    v42 = __log_SCNetworkConfiguration();
    v43 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v42, v43))
    {
      v44 = _os_log_pack_size();
      v52 = &v56 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v42, v43, v52);
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = __SCNetworkInterfaceCreateMappingUsingBSDName(v7);
  CFRelease(v8);
  v10 = CFDictionaryGetTypeID();
  if (!v9)
  {
LABEL_19:
    v54 = MappingUsingBSDName;
LABEL_20:
    CFRelease(v54);
    goto LABEL_21;
  }

  if (CFGetTypeID(v9) == v10)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    context = v9;
    v61 = Mutable;
    CFDictionaryApplyFunction(MappingUsingBSDName, _SCNetworkConfigurationCollectMissingService, &context);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v14 = Count;
      v57 = v9;
      v15 = 0;
      *&v13 = 138412290;
      v58 = v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v15);
        if (!__SCNetworkInterfaceIsBusyMember(a1, ValueAtIndex, 0) && !__SCNetworkServiceCreate(a1, ValueAtIndex, 0))
        {
          v17 = __log_SCNetworkConfiguration();
          v18 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v17, v18))
          {
            v19 = _os_log_pack_size();
            v59 = &v56;
            v27 = &v56 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
            v28 = *__error();
            v29 = _os_log_pack_fill();
            *v29 = v58;
            *(v29 + 4) = ValueAtIndex;
            __SC_log_send(5, v17, v18, v27);
          }
        }

        ++v15;
      }

      while (v14 != v15);
      v9 = v57;
    }
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(MappingUsingBSDName);
  CFRelease(v9);
  if (Mutable)
  {
    v54 = Mutable;
    goto LABEL_20;
  }

LABEL_21:
  v55 = *MEMORY[0x1E69E9840];
}

__CFDictionary *_SCNetworkConfigurationCopyExternalInterfaceMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v3 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 0);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v5 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a2, 0);
      v6 = CFArrayGetTypeID();
      if (v5 && CFGetTypeID(v5) == v6)
      {
        v7 = _SCNetworkInterfaceStorageCopyMaxUnitPerInterfaceType(a2);
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        Companion = SCPreferencesCreateCompanion(a2, 0);
        if (Count >= 1)
        {
          v71 = Mutable;
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
            v12 = CFArrayGetCount(v5);
            if (v12 < 1)
            {
LABEL_18:
              if (!_SCNetworkInterfaceIsHiddenInterface(ValueAtIndex))
              {
                v20 = *(ValueAtIndex + 36);
                v21 = CFNumberGetTypeID();
                if (!v20 || CFGetTypeID(v20) != v21 || (valuePtr = 0, !CFNumberGetValue(*(ValueAtIndex + 36), kCFNumberIntType, &valuePtr)) || valuePtr != 1452 || (v22 = *(ValueAtIndex + 4), v22 != @"iBridge") && (!v22 || !CFEqual(v22, @"iBridge")))
                {
                  IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
                  Value = CFDictionaryGetValue(v7, IOInterfaceType);
                  if (Value)
                  {
                    CFNumberGetValue(Value, kCFNumberIntType, &v73 + 4);
                    v25 = HIDWORD(v73) + 1;
                  }

                  else
                  {
                    v25 = 0;
                  }

                  LODWORD(v73) = v25;
                  v28 = CFNumberCreate(0, kCFNumberIntType, &v73);
                  CFDictionarySetValue(v7, IOInterfaceType, v28);
                  Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, Companion, 0);
                  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(Copy);
                  v31 = CFNumberGetTypeID();
                  if (!IOInterfaceUnit || CFGetTypeID(IOInterfaceUnit) != v31 || !CFEqual(IOInterfaceUnit, v28))
                  {
                    __SCNetworkInterfaceSetIOInterfaceUnit(Copy, v28);
                  }

                  CFDictionaryAddValue(v71, ValueAtIndex, Copy);
                  CFRelease(Copy);
                  CFRelease(v28);
                }
              }
            }

            else
            {
              v13 = v12;
              for (j = 0; j != v13; ++j)
              {
                v15 = CFArrayGetValueAtIndex(v5, j);
                HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(ValueAtIndex);
                v17 = _SCNetworkInterfaceGetHardwareAddress(v15);
                if (HardwareAddress == v17 || HardwareAddress && v17 && CFEqual(HardwareAddress, v17))
                {
                  CFDictionaryAddValue(v71, ValueAtIndex, v15);
                  v26 = v5;
                  v27 = j;
                  goto LABEL_29;
                }
              }

              v18 = 0;
              while (1)
              {
                v19 = CFArrayGetValueAtIndex(v5, v18);
                if (_SCNetworkConfigurationIsInterfaceNamerMappable(ValueAtIndex, v19))
                {
                  break;
                }

                if (v13 == ++v18)
                {
                  goto LABEL_18;
                }
              }

              CFDictionaryAddValue(v71, ValueAtIndex, v19);
              v26 = v5;
              v27 = v18;
LABEL_29:
              CFArrayRemoveValueAtIndex(v26, v27);
            }
          }

          Mutable = v71;
        }

        goto LABEL_55;
      }

      v46 = __log_SCNetworkConfiguration();
      v47 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v46, v47))
      {
        v48 = _os_log_pack_size();
        v56 = &v70 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v46, v47, v56);
      }
    }

    else
    {
      v58 = __log_SCNetworkConfiguration();
      v59 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v58, v59))
      {
        Mutable = 0;
        v7 = 0;
        v5 = 0;
        goto LABEL_54;
      }

      v60 = _os_log_pack_size();
      v68 = &v70 - ((MEMORY[0x1EEE9AC00](v60, v61, v62, v63, v64, v65, v66, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
      v69 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v58, v59, v68);
      v5 = 0;
    }

    Mutable = 0;
    v7 = 0;
LABEL_54:
    Companion = 0;
LABEL_55:
    CFRelease(v3);
    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_44;
  }

  v32 = __log_SCNetworkConfiguration();
  v33 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v32, v33))
  {
    v34 = _os_log_pack_size();
    v42 = &v70 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v32, v33, v42);
  }

  Companion = 0;
  v5 = 0;
  v7 = 0;
  Mutable = 0;
  if (v3)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (v7)
  {
    CFRelease(v7);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  v44 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *_SCNetworkMigrationCreateNetworkInterfaceArray(const __SCPreferences *a1, const __CFDictionary *a2, _BYTE *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = 0;
  if (!a1)
  {
    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v28, v29))
    {
LABEL_22:
      v30 = _os_log_pack_size();
      v38 = context - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v28, v29, v38);
    }

LABEL_23:
    Mutable = 0;
    goto LABEL_24;
  }

  Value = SCPreferencesGetValue(a1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFArrayGetCount(Value)) == 0)
  {
    v28 = __log_SCNetworkConfiguration();
    v29 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v28, v29))
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v9 = Count;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      v13 = CFDictionaryGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v13)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  v14 = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == v14)
  {
    v15 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 0);
    context[0] = v15;
    context[1] = Mutable;
    LOBYTE(v43) = 0;
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v16, v17))
    {
      v18 = _os_log_pack_size();
      v26 = context - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(7, v16, v17, v26);
    }

    logInterfaces("  externalInterfaceList", v15, 0);
    logInterfaces("  networkInterfaceList", Mutable, 0);
    CFDictionaryApplyFunction(a2, _SCNetworkConfigurationCollectInterfaceStorageEntity, context);
    if (a3)
    {
      *a3 = v43;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

LABEL_24:
  v40 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFMutableDictionaryRef _SCNetworkMigrationCreateBSDNameMapping(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1 | a2)
  {
    if (a1)
    {
      CFDictionaryApplyFunction(a1, SCNetworkMigrationMapSourceToTargetName, Mutable);
    }

    if (a2)
    {
      CFDictionaryApplyFunction(a2, SCNetworkMigrationMapSourceToTargetName, Mutable);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFDictionaryRef _SCNetworkMigrationCreateServiceMappingUsingBSDNameMapping(const __SCPreferences *a1, const __SCPreferences *a2, const __CFDictionary *a3)
{
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (a3)
  {
    v5 = SCNetworkServiceCopyAll(a1);
    TypeID = CFArrayGetTypeID();
    if (v5 && CFGetTypeID(v5) == TypeID)
    {
      v7 = SCNetworkServiceCopyAll(a2);
      v8 = CFArrayGetTypeID();
      if (!v7 || CFGetTypeID(v7) != v8)
      {
        v167 = __log_SCNetworkConfiguration();
        v168 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v167, v168))
        {
          v169 = _os_log_pack_size();
          v177 = &v179 - ((MEMORY[0x1EEE9AC00](v169, v170, v171, v172, v173, v174, v175, v176) + 15) & 0xFFFFFFFFFFFFFFF0);
          v178 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(5, v167, v168, v177);
        }

        v13 = 0;
        MutableCopy = 0;
        v10 = 0;
        goto LABEL_94;
      }

      Count = CFArrayGetCount(v5);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v5);
      v10 = CFArrayCreateMutableCopy(0, 0, v7);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = Mutable;
      v190 = Count;
      if (Count < 1)
      {
        goto LABEL_94;
      }

      v182 = v5;
      v183 = a3;
      v192 = Mutable;
      v181 = v7;
      v14 = 0;
      v194 = @"VPN";
      v189 = @"PPP";
      v191 = @"Bond";
      v187 = @"Bridge";
      v186 = @"VLAN";
      v184 = @"IPSec";
      v180 = @"6to4";
      v179 = @"Loopback";
      v185 = *MEMORY[0x1E695E4C0];
      *&v12 = 138412290;
      v195 = v12;
      v15 = MutableCopy;
      v196 = v10;
      v16 = v190;
      while (1)
      {
        value[0] = 0;
        v17 = CFArrayGetCount(v10);
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v14);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        if (!Interface)
        {
          v76 = __log_SCNetworkConfiguration();
          v77 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v76, v77))
          {
            goto LABEL_68;
          }

LABEL_66:
          v83 = _os_log_pack_size();
          v91 = &v179 - ((MEMORY[0x1EEE9AC00](v83, v84, v85, v86, v87, v88, v89, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
          v92 = *__error();
          *_os_log_pack_fill() = 0;
          v93 = 5;
          v94 = v76;
          v95 = v77;
          v96 = v91;
          goto LABEL_67;
        }

        v20 = Interface;
        EntityType = __SCNetworkInterfaceGetEntityType(Interface);
        v22 = CFStringGetTypeID();
        if (EntityType && CFGetTypeID(EntityType) == v22 && (CFEqual(EntityType, v194) || CFEqual(EntityType, v189)))
        {
          EntitySubType = __SCNetworkInterfaceGetEntitySubType(v20);
          v24 = CFStringGetTypeID();
          if (!EntitySubType || CFGetTypeID(EntitySubType) != v24)
          {
            v76 = __log_SCNetworkConfiguration();
            v77 = _SC_syslog_os_log_mapping(5);
            if (!__SC_log_enabled(5, v76, v77))
            {
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v188 = EntitySubType;
          v193 = ValueAtIndex;
          v25 = 1;
        }

        else if ((v26 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v26) && (InterfaceType = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(InterfaceType, v191)) || (v28 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v28) && (v29 = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(v29, v187)) || (v30 = SCNetworkInterfaceGetTypeID(), CFGetTypeID(v20) == v30) && (v31 = SCNetworkInterfaceGetInterfaceType(v20), CFEqual(v31, v186)))
        {
          BSDName = SCNetworkInterfaceGetBSDName(v20);
          v33 = CFStringGetTypeID();
          if (!BSDName || CFGetTypeID(BSDName) != v33)
          {
            goto LABEL_68;
          }

          v193 = ValueAtIndex;
          v188 = 0;
          v25 = 0;
          value[0] = BSDName;
        }

        else
        {
          v78 = CFStringGetTypeID();
          if (EntityType && CFGetTypeID(EntityType) == v78 && (CFEqual(EntityType, v184) || CFEqual(EntityType, v180) || CFEqual(EntityType, v179)))
          {
            goto LABEL_68;
          }

          v79 = SCNetworkInterfaceGetBSDName(v20);
          v80 = CFStringGetTypeID();
          if (!v79 || CFGetTypeID(v79) != v80)
          {
            goto LABEL_68;
          }

          v193 = ValueAtIndex;
          if (!CFDictionaryGetValueIfPresent(v183, v79, value) || (v81 = value[0], v82 = CFStringGetTypeID(), !v81) || CFGetTypeID(v81) != v82)
          {
            v97 = __log_SCNetworkConfiguration();
            v98 = _SC_syslog_os_log_mapping(6);
            if (!__SC_log_enabled(6, v97, v98))
            {
              goto LABEL_68;
            }

            v99 = _os_log_pack_size();
            v107 = &v179 - ((MEMORY[0x1EEE9AC00](v99, v100, v101, v102, v103, v104, v105, v106) + 15) & 0xFFFFFFFFFFFFFFF0);
            v108 = *__error();
            v109 = _os_log_pack_fill();
            *v109 = v195;
            *(v109 + 4) = v79;
            v93 = 6;
            v94 = v97;
            v95 = v98;
            v96 = v107;
            v16 = v190;
LABEL_67:
            __SC_log_send(v93, v94, v95, v96);
            goto LABEL_68;
          }

          v188 = 0;
          v25 = 0;
        }

        if (v17 < 1)
        {
          goto LABEL_50;
        }

        v34 = 0;
        v198 = EntityType;
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(v10, v34);
          v36 = SCNetworkServiceGetInterface(v35);
          if (v36)
          {
            break;
          }

          v43 = __log_SCNetworkConfiguration();
          v44 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v43, v44))
          {
            v45 = _os_log_pack_size();
            v53 = &v179 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50, v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
            v54 = *__error();
            *_os_log_pack_fill() = 0;
            v55 = v43;
            v56 = v44;
            v57 = v53;
LABEL_48:
            __SC_log_send(5, v55, v56, v57);
            EntityType = v198;
          }

LABEL_49:
          if (v17 == ++v34)
          {
            goto LABEL_50;
          }
        }

        v37 = v36;
        if (v25)
        {
          break;
        }

        v58 = SCNetworkInterfaceGetBSDName(v36);
        v59 = CFStringGetTypeID();
        if (!v58 || CFGetTypeID(v58) != v59 || !CFEqual(v58, value[0]))
        {
          goto LABEL_49;
        }

        v110 = __log_SCNetworkConfiguration();
        v111 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v110, v111))
        {
          v113 = _os_log_pack_size();
          v121 = &v179 - ((MEMORY[0x1EEE9AC00](v113, v114, v115, v116, v117, v118, v119, v120) + 15) & 0xFFFFFFFFFFFFFFF0);
          v122 = *__error();
          v123 = _os_log_pack_fill();
          *v123 = v195;
          *(v123 + 4) = v58;
          v124 = v110;
          v125 = v111;
          v126 = v121;
          v10 = v196;
LABEL_74:
          __SC_log_send(5, v124, v125, v126);
        }

LABEL_75:
        CFDictionaryAddValue(v192, v193, v35);
        CFArrayRemoveValueAtIndex(v10, v34);
LABEL_50:
        v74 = v193;
        v75 = CFDictionaryContainsKey(v192, v193);
        v15 = MutableCopy;
        v16 = v190;
        if (!v75)
        {
          CFDictionaryAddValue(v192, v74, v185);
        }

LABEL_68:
        if (++v14 == v16)
        {
          v7 = v181;
          v5 = v182;
          v13 = v192;
          if (!v182)
          {
            goto LABEL_81;
          }

LABEL_94:
          CFRelease(v5);
          if (!v7)
          {
            goto LABEL_83;
          }

LABEL_82:
          CFRelease(v7);
          goto LABEL_83;
        }
      }

      v38 = __SCNetworkInterfaceGetEntityType(v36);
      v39 = CFStringGetTypeID();
      if (v38 && CFGetTypeID(v38) == v39 && (CFEqual(v38, v194) || CFEqual(v38, v189)))
      {
        v40 = __SCNetworkInterfaceGetEntitySubType(v37);
        v41 = CFStringGetTypeID();
        if (v40 && CFGetTypeID(v40) == v41)
        {
          v42 = CFEqual(v38, EntityType);
          v10 = v196;
          if (v42 && CFEqual(v40, v188))
          {
            v127 = __log_SCNetworkConfiguration();
            v128 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v127, v128))
            {
              v130 = _os_log_pack_size();
              v138 = &v179 - ((MEMORY[0x1EEE9AC00](v130, v131, v132, v133, v134, v135, v136, v137) + 15) & 0xFFFFFFFFFFFFFFF0);
              v139 = *__error();
              v140 = _os_log_pack_fill();
              *v140 = v195;
              *(v140 + 4) = 0;
              v124 = v127;
              v125 = v128;
              v126 = v138;
              goto LABEL_74;
            }

            goto LABEL_75;
          }
        }

        else
        {
          v60 = __log_SCNetworkConfiguration();
          v61 = _SC_syslog_os_log_mapping(5);
          v62 = __SC_log_enabled(5, v60, v61);
          v10 = v196;
          if (v62)
          {
LABEL_47:
            v63 = _os_log_pack_size();
            v71 = &v179 - ((MEMORY[0x1EEE9AC00](v63, v64, v65, v66, v67, v68, v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
            v72 = *__error();
            v73 = _os_log_pack_fill();
            *v73 = v195;
            *(v73 + 4) = v37;
            v55 = v60;
            v56 = v61;
            v57 = v71;
            v10 = v196;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v60 = __log_SCNetworkConfiguration();
        v61 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v60, v61))
        {
          goto LABEL_47;
        }
      }

      goto LABEL_49;
    }

    v141 = __log_SCNetworkConfiguration();
    v142 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v141, v142))
    {
      v143 = _os_log_pack_size();
      v151 = &v179 - ((MEMORY[0x1EEE9AC00](v143, v144, v145, v146, v147, v148, v149, v150) + 15) & 0xFFFFFFFFFFFFFFF0);
      v152 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v141, v142, v151);
    }

    v10 = 0;
    v7 = 0;
    MutableCopy = 0;
    v13 = 0;
    if (v5)
    {
      goto LABEL_94;
    }

LABEL_81:
    if (v7)
    {
      goto LABEL_82;
    }

LABEL_83:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v153 = __log_SCNetworkConfiguration();
    v154 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v153, v154))
    {
      v155 = _os_log_pack_size();
      v163 = &v179 - ((MEMORY[0x1EEE9AC00](v155, v156, v157, v158, v159, v160, v161, v162) + 15) & 0xFFFFFFFFFFFFFFF0);
      v164 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v153, v154, v163);
    }

    v13 = 0;
  }

  v165 = *MEMORY[0x1E69E9840];
  return v13;
}

__CFDictionary *_SCNetworkMigrationCreateSetMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = SCNetworkSetCopyAll(a1);
  if (!v4)
  {
    Mutable = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = SCNetworkSetCopyAll(a2);
  if (!v6)
  {
    Mutable = 0;
    v11 = v5;
LABEL_23:
    CFRelease(v11);
    goto LABEL_24;
  }

  v7 = v6;
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
  Count = CFArrayGetCount(MutableCopy);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = SCNetworkSetCopyCurrent(a1);
  if (!v11)
  {
    goto LABEL_6;
  }

  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
    Name = SCNetworkSetGetName(v11);
    SCNetworkSetSetName(ValueAtIndex, Name);
    CFDictionaryAddValue(Mutable, v11, ValueAtIndex);
    SCNetworkSetSetCurrent(ValueAtIndex);
    CFRelease(ValueAtIndex);
LABEL_6:
    if (CFArrayGetCount(v5) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = CFArrayGetValueAtIndex(v5, v14);
        v16 = v15;
        if (!v11 || !CFEqual(v15, v11))
        {
          v17 = CFArrayGetCount(MutableCopy);
          v18 = SCNetworkSetGetName(v16);
          if (v17 < 1)
          {
            v19 = SCNetworkSetCreate(a2);
          }

          else
          {
            v19 = CFArrayGetValueAtIndex(MutableCopy, 0);
            CFRetain(v19);
            CFArrayRemoveValueAtIndex(MutableCopy, 0);
          }

          SCNetworkSetSetName(v19, v18);
          CFDictionaryAddValue(Mutable, v16, v19);
          CFRelease(v19);
        }

        ++v14;
      }

      while (v14 < CFArrayGetCount(v5));
    }

    goto LABEL_20;
  }

  v20 = __log_SCNetworkConfiguration();
  v21 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v20, v21))
  {
    v22 = _os_log_pack_size();
    v35[0] = v35;
    v30 = v35 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *__error();
    v32 = _os_log_pack_fill();
    *v32 = 134217984;
    *(v32 + 4) = Count;
    __SC_log_send(5, v20, v21, v30);
  }

LABEL_20:
  CFRelease(v5);
  CFRelease(v7);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  v33 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFDictionary *_SCNetworkMigrationCreateServiceSetMapping(const __SCPreferences *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = SCNetworkServiceCopyAll(a1);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      v6 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        v8 = CFArrayCreateMutable(0, 0, v6);
        CFDictionaryAddValue(Mutable, ValueAtIndex, v8);
        CFRelease(v8);
        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
    v9 = SCNetworkSetCopyAll(a1);
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = CFArrayGetValueAtIndex(v10, v11);
          v13 = SCNetworkSetCopyServices(v12);
          if (CFArrayGetCount(v13) >= 1)
          {
            v14 = 0;
            do
            {
              v15 = CFArrayGetValueAtIndex(v13, v14);
              Value = CFDictionaryGetValue(Mutable, v15);
              if (Value)
              {
                CFArrayAppendValue(Value, v12);
              }

              ++v14;
            }

            while (v14 < CFArrayGetCount(v13));
          }

          CFRelease(v13);
          ++v11;
        }

        while (v11 < CFArrayGetCount(v10));
      }

      CFRelease(v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _SCNetworkMigrationDoServiceMigration(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  if (a1 && a2 && (TypeID = CFDictionaryGetTypeID(), a3) && CFGetTypeID(a3) == TypeID && (v12 = CFDictionaryGetTypeID(), a4) && CFGetTypeID(a4) == v12)
  {
    context = 6;
    v54 = "BSD name mapping";
    CFDictionaryApplyFunction(a4, logMapping_one, &context);
    context = 6;
    v54 = "SCNetworkService mapping";
    CFDictionaryApplyFunction(a3, logMapping_one, &context);
    if (a5)
    {
      context = 6;
      v54 = "SCNetworkSet mapping";
      CFDictionaryApplyFunction(a5, logMapping_one, &context);
    }

    else
    {
      v27 = __log_SCNetworkConfiguration();
      v28 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v27, v28))
      {
        v29 = _os_log_pack_size();
        v37 = &v51 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v27, v28, v37);
      }
    }

    if (a6)
    {
      context = 6;
      v54 = "SCNetworkService/SCNetworkSet mapping";
      CFDictionaryApplyFunction(a6, logMapping_one, &context);
    }

    else
    {
      v39 = __log_SCNetworkConfiguration();
      v40 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v39, v40))
      {
        v41 = _os_log_pack_size();
        v49 = &v51 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
        v50 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v39, v40, v49);
      }
    }

    *&v51 = a2;
    *(&v51 + 1) = a4;
    *&v52 = a5;
    *(&v52 + 1) = a6;
    CFDictionaryApplyFunction(a3, ServiceMigrationAddOrReplace, &v51);
    result = 1;
  }

  else
  {
    v13 = __log_SCNetworkConfiguration();
    v14 = _SC_syslog_os_log_mapping(6);
    result = __SC_log_enabled(6, v13, v14);
    if (result)
    {
      v16 = _os_log_pack_size();
      v24 = &v51 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v13, v14, v24);
      result = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *_SCNetworkConfigurationCopyBuiltinMapping(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a1, 1);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    Count = CFArrayGetCount(v3);
    v6 = _SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(a2, 1);
    v7 = CFArrayGetTypeID();
    if (v6 && CFGetTypeID(v6) == v7)
    {
      if (Count >= 1)
      {
        Mutable = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          v11 = CFArrayGetCount(v6);
          if (v11 >= 1)
          {
            v12 = v11;
            v13 = 0;
            while (1)
            {
              v14 = CFArrayGetValueAtIndex(v6, v13);
              HardwareAddress = _SCNetworkInterfaceGetHardwareAddress(ValueAtIndex);
              v16 = _SCNetworkInterfaceGetHardwareAddress(v14);
              if (HardwareAddress == v16 || HardwareAddress && v16 && CFEqual(HardwareAddress, v16))
              {
                break;
              }

              if (v12 == ++v13)
              {
                v13 = 0;
                while (1)
                {
                  v14 = CFArrayGetValueAtIndex(v6, v13);
                  if (_SCNetworkConfigurationIsInterfaceNamerMappable(ValueAtIndex, v14))
                  {
                    goto LABEL_18;
                  }

                  if (v12 == ++v13)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }

LABEL_18:
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            CFDictionaryAddValue(Mutable, ValueAtIndex, v14);
            CFArrayRemoveValueAtIndex(v6, v13);
          }

LABEL_21:
          ;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v31 = __log_SCNetworkConfiguration();
      v32 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v31, v32))
      {
        v33 = _os_log_pack_size();
        v41 = v43 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v31, v32, v41);
      }
    }

    Mutable = 0;
LABEL_32:
    CFRelease(v3);
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_24;
  }

  v19 = __log_SCNetworkConfiguration();
  v20 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v19, v20))
  {
    v21 = _os_log_pack_size();
    v29 = v43 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v19, v20, v29);
  }

  v6 = 0;
  Mutable = 0;
  if (v3)
  {
    goto LABEL_32;
  }

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _SCNetworkMigrationDoServiceOrderMigration(const __CFDictionary *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  context = 1;
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    CFDictionaryApplyFunction(a1, preserve_service_order, &context);
    result = context;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkMigrationDoSystemMigration(const __SCPreferences *a1, const __SCPreferences *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v14 = &v59[-((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v15 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v4, v5, v14);
  }

  if (a2)
  {
    HostName = SCPreferencesGetHostName(a1);
    if (HostName)
    {
      SCPreferencesSetHostName(a2, HostName);
      v17 = __log_SCNetworkConfiguration();
      v18 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v17, v18))
      {
        v19 = _os_log_pack_size();
        v27 = &v59[-((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v28 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v17, v18, v27);
      }
    }

    v29 = _SCPreferencesCopyLocalHostName(a1);
    if (v29)
    {
      v30 = v29;
      SCPreferencesSetLocalHostName(a2, v29);
      CFRelease(v30);
      v31 = __log_SCNetworkConfiguration();
      v32 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v31, v32))
      {
        v33 = _os_log_pack_size();
        v41 = &v59[-((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v42 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v31, v32, v41);
      }
    }

    v43 = _SCPreferencesCopyComputerName(a1, &v60);
    if (v43 && (v44 = v43, SCPreferencesSetComputerName(a2, v43, v60), CFRelease(v44), v45 = __log_SCNetworkConfiguration(), v46 = _SC_syslog_os_log_mapping(5), __SC_log_enabled(5, v45, v46)))
    {
      v47 = _os_log_pack_size();
      v55 = &v59[-((MEMORY[0x1EEE9AC00](v47, v48, v49, v50, v51, v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v56 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v45, v46, v55);
      result = 1;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkConfigurationMigrateIsFilePresent(const __CFURL *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  memset(&v65, 0, sizeof(v65));
  if (!a1)
  {
    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = &v65 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v18, v19, v28);
    }

    goto LABEL_16;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, v66, 1024))
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      v32 = _os_log_pack_size();
      v40 = &v65 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = *__error();
LABEL_14:
      v42 = _os_log_pack_fill();
      *v42 = 138412290;
      *(v42 + 4) = a1;
      v43 = 5;
LABEL_15:
      __SC_log_send(v43, v30, v31, v40);
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (stat(v66, &v65))
  {
    goto LABEL_16;
  }

  if (!v65.st_size)
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v30, v31))
    {
      goto LABEL_16;
    }

    v46 = _os_log_pack_size();
    v40 = &v65 - ((MEMORY[0x1EEE9AC00](v46, v47, v48, v49, v50, v51, v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = *__error();
    v55 = _os_log_pack_fill();
    *v55 = 138412290;
    *(v55 + 4) = a1;
    v43 = 6;
    goto LABEL_15;
  }

  v2 = CFStringCreateWithCString(0, v66, 0x8000100u);
  v3 = __SCPreferencesCreateForMigration(@"System Migration", v2);
  CFRelease(v2);
  if (!v3)
  {
    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v30, v31))
    {
      goto LABEL_16;
    }

    v56 = _os_log_pack_size();
    v40 = &v65 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = *__error();
    goto LABEL_14;
  }

  if (__SCPreferencesIsEmpty(v3))
  {
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = &v65 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 138412290;
      *(v16 + 4) = a1;
      __SC_log_send(5, v4, v5, v14);
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  CFRelease(v3);
LABEL_17:
  v44 = *MEMORY[0x1E69E9840];
  return v17;
}

void _SCNetworkConfigurationCollectMissingService(const void *a1, void *a2, const __CFDictionary **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v5 = a3[1];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && _SCNetworkInterfaceIsBuiltin(a2) && !CFDictionaryContainsKey(v6, a1))
  {
    v9 = *MEMORY[0x1E69E9840];

    CFArrayAppendValue(v5, a2);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

__CFArray *_SCNetworkInterfaceCopyInterfacesFilteredByBuiltinWithPreferences(const __SCPreferences *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (!v4)
  {
    Mutable = 0;
    goto LABEL_12;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    Mutable = 0;
    Companion = v5;
LABEL_11:
    CFRelease(Companion);
    goto LABEL_12;
  }

  v7 = Count;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Companion = SCPreferencesCreateCompanion(a1, 0);
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
    if (_SCNetworkInterfaceIsBuiltin(ValueAtIndex) == a2)
    {
      Copy = __SCNetworkInterfaceCreateCopy(0, ValueAtIndex, Companion, 0);
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(Copy);
    }
  }

  CFRelease(v5);
  if (Companion)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

const __CFDictionary *_SCNetworkInterfaceStorageCopyMaxUnitPerInterfaceType(const __SCPreferences *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = __SCNetworkInterfaceCopyStoredWithPreferences(a1);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        TypeID = SCNetworkInterfaceGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == TypeID)
        {
          IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType(ValueAtIndex);
          v10 = CFNumberGetTypeID();
          if (IOInterfaceType && CFGetTypeID(IOInterfaceType) == v10)
          {
            if (CFDictionaryContainsKey(Mutable, IOInterfaceType) || (valuePtr = 0, Value = CFNumberCreate(0, kCFNumberIntType, &valuePtr), CFDictionaryAddValue(Mutable, IOInterfaceType, Value), CFRelease(Value), !Value))
            {
              Value = CFDictionaryGetValue(Mutable, IOInterfaceType);
            }

            IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit(ValueAtIndex);
            v25 = CFNumberGetTypeID();
            if (IOInterfaceUnit && CFGetTypeID(IOInterfaceUnit) == v25 && CFNumberCompare(IOInterfaceUnit, Value, 0) == kCFCompareGreaterThan)
            {
              CFDictionarySetValue(Mutable, IOInterfaceType, IOInterfaceUnit);
            }
          }

          else
          {
            v12 = __log_SCNetworkConfiguration();
            v13 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v12, v13))
            {
              v14 = _os_log_pack_size();
              v22 = &v40[-((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
              v23 = *__error();
              *_os_log_pack_fill() = 0;
              __SC_log_send(6, v12, v13, v22);
            }
          }
        }
      }
    }

    CFRelease(v2);
  }

  else
  {
    v26 = __log_SCNetworkConfiguration();
    v27 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v26, v27))
    {
      v28 = _os_log_pack_size();
      v36 = &v40[-((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v37 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v26, v27, v36);
    }

    Mutable = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _SCNetworkConfigurationIsInterfaceNamerMappable(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_17:
    result = 1;
    goto LABEL_19;
  }

  IsBuiltin = _SCNetworkInterfaceIsBuiltin(a1);
  if (IsBuiltin != _SCNetworkInterfaceIsBuiltin(a2))
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  v6 = SCNetworkInterfaceGetInterfaceType(a2);
  if (InterfaceType == v6 || (v7 = v6, result = 0, InterfaceType) && v7 && (result = CFEqual(InterfaceType, v7), result))
  {
    IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix(a1);
    v10 = _SCNetworkInterfaceGetIOInterfaceNamePrefix(a2);
    if (IOInterfaceNamePrefix == v10 || (v11 = v10, result = 0, IOInterfaceNamePrefix) && v11 && (result = CFEqual(IOInterfaceNamePrefix, v11), result))
    {
      LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(a1);
      v13 = SCNetworkInterfaceGetLocalizedDisplayName(a2);
      if (LocalizedDisplayName == v13)
      {
        goto LABEL_17;
      }

      v14 = v13;
      if (LocalizedDisplayName)
      {
        if (v13 && CFEqual(LocalizedDisplayName, v13))
        {
          goto LABEL_17;
        }
      }

      if (IsBuiltin && __SCNetworkConfigurationInterfaceNameIsEquiv(LocalizedDisplayName, v14))
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void _SCNetworkConfigurationCollectInterfaceStorageEntity(uint64_t a1, const void *a2, uint64_t a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v55.length = CFArrayGetCount(*a3);
  v55.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v55, a2);
  if (FirstIndexOfValue != -1)
  {
    v7 = FirstIndexOfValue;
    ValueAtIndex = CFArrayGetValueAtIndex(*a3, FirstIndexOfValue);
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(ValueAtIndex);
    v10 = __SCNetworkInterfaceGetUserDefinedName(a2);
    if (UserDefinedName == v10 || (UserDefinedName ? (v11 = v10 == 0) : (v11 = 1), !v11 && CFEqual(UserDefinedName, v10)))
    {
      v12 = __log_SCNetworkConfiguration();
      v13 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v12, v13))
      {
        v14 = _os_log_pack_size();
        v22 = v54 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 138412290;
        *(v24 + 4) = a2;
        __SC_log_send(7, v12, v13, v22);
      }

      goto LABEL_17;
    }

    v25 = __log_SCNetworkConfiguration();
    v26 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v25, v26))
    {
      v27 = _os_log_pack_size();
      v35 = v54 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      *v37 = 138412290;
      *(v37 + 4) = ValueAtIndex;
      __SC_log_send(7, v25, v26, v35);
    }

    CFArrayRemoveValueAtIndex(*a3, v7);
  }

  *(a3 + 16) = 1;
  v38 = __SCNetworkInterfaceCopyStorageEntity(a2);
  if (v38)
  {
    v39 = v38;
    v40 = __log_SCNetworkConfiguration();
    v41 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v40, v41))
    {
      v42 = _os_log_pack_size();
      v50 = v54 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = *__error();
      v52 = _os_log_pack_fill();
      *v52 = 138412290;
      *(v52 + 4) = v39;
      __SC_log_send(7, v40, v41, v50);
    }

    CFArrayAppendValue(*(a3 + 8), v39);
    CFRelease(v39);
  }

LABEL_17:
  v53 = *MEMORY[0x1E69E9840];
}

void SCNetworkMigrationMapSourceToTargetName(const __SCNetworkInterface *a1, const __SCNetworkInterface *a2, __CFDictionary *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName && CFGetTypeID(BSDName) == TypeID && (v7 = SCNetworkInterfaceGetBSDName(a2), v8 = CFStringGetTypeID(), v7) && CFGetTypeID(v7) == v8 && !CFDictionaryContainsKey(a3, BSDName))
  {
    v10 = *MEMORY[0x1E69E9840];

    CFDictionaryAddValue(a3, BSDName, v7);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void ServiceMigrationAddOrReplace(SCNetworkServiceRef service, const __SCNetworkService *a2, const __SCPreferences **a3)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  if (*(a3 + 1) != 0)
  {
    TypeID = SCNetworkServiceGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        SCNetworkServiceGetName(a2);
        v10 = __log_SCNetworkConfiguration();
        v11 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v10, v11))
        {
          v12 = _os_log_pack_size();
          v50[0] = v50;
          v20 = v50 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = *__error();
          v22 = _os_log_pack_fill();
          *v22 = 138412290;
          *(v22 + 4) = a2;
          __SC_log_send(6, v10, v11, v20);
        }

        SCNetworkServiceRemove(a2);
      }
    }
  }

  SCNetworkServiceGetName(service);
  v23 = __log_SCNetworkConfiguration();
  v24 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v23, v24))
  {
    v25 = _os_log_pack_size();
    v33 = v50 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = *__error();
    v35 = _os_log_pack_fill();
    *v35 = 138412290;
    *(v35 + 4) = service;
    __SC_log_send(6, v23, v24, v33);
  }

  if (!__SCNetworkServiceMigrateNew(v5, service, v4, v6, v7))
  {
    SCNetworkServiceGetName(service);
    v36 = __log_SCNetworkConfiguration();
    v37 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v36, v37))
    {
      v38 = _os_log_pack_size();
      v46 = v50 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      v48 = _os_log_pack_fill();
      *v48 = 138412290;
      *(v48 + 4) = service;
      __SC_log_send(6, v36, v37, v46);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void preserve_service_order(const __SCNetworkSet *a1, const __SCNetworkSet *a2, _BYTE *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    context = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v8 = CFArrayCreateMutable(0, 0, v6);
    ServiceOrder = SCNetworkSetGetServiceOrder(a1);
    if (ServiceOrder)
    {
      v10 = ServiceOrder;
      v11 = SCNetworkSetGetServiceOrder(a2);
      if (v11)
      {
        v12 = v11;
        *&context = 0;
        *(&context + 1) = v11;
        *&v46 = Mutable;
        *(&v46 + 1) = a3;
        v48.length = CFArrayGetCount(v10);
        v48.location = 0;
        CFArrayApplyFunction(v10, v48, create_migrated_order, &context);
        if (*a3)
        {
          *&v43 = *(a2 + 3);
          *(&v43 + 1) = v8;
          *&v44 = Mutable;
          *(&v44 + 1) = a3;
          v49.length = CFArrayGetCount(v12);
          v49.location = 0;
          CFArrayApplyFunction(v12, v49, create_non_migrated_service_list, &v43);
          if (CFArrayGetCount(v8) >= 1)
          {
            v13 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
              SCNetworkSetRemoveService(a2, ValueAtIndex);
              ++v13;
            }

            while (v13 < CFArrayGetCount(v8));
          }

          SCNetworkSetSetServiceOrder(a2, Mutable);
          if (CFArrayGetCount(v8) >= 1)
          {
            v16 = 0;
            *&v15 = 136315650;
            v40 = v15;
            do
            {
              v17 = CFArrayGetValueAtIndex(v8, v16);
              if (!SCNetworkSetAddService(a2, v17))
              {
                Interface = SCNetworkServiceGetInterface(v17);
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                v20 = __log_SCNetworkConfiguration();
                v21 = _SC_syslog_os_log_mapping(5);
                if (__SC_log_enabled(5, v20, v21))
                {
                  v22 = _os_log_pack_size();
                  v42 = &v40;
                  v30 = MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29);
                  v41 = v20;
                  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v32 = *__error();
                  v33 = _os_log_pack_fill();
                  v34 = SCError();
                  v35 = Mutable;
                  v36 = SCErrorString(v34);
                  ServiceID = SCNetworkServiceGetServiceID(v17);
                  *v33 = v40;
                  v38 = @"?";
                  if (BSDName)
                  {
                    v38 = BSDName;
                  }

                  *(v33 + 4) = v36;
                  Mutable = v35;
                  *(v33 + 12) = 2112;
                  *(v33 + 14) = ServiceID;
                  *(v33 + 22) = 2112;
                  *(v33 + 24) = v38;
                  __SC_log_send(5, v41, v21, v31);
                }
              }

              ++v16;
            }

            while (v16 < CFArrayGetCount(v8));
          }
        }
      }
    }

    CFRelease(Mutable);
    CFRelease(v8);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void create_migrated_order(const void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (**(a2 + 24) && (v4 = *(a2 + 8), v3 = *(a2 + 16), CFArrayGetCount(v4) >= 1))
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      if (CFEqual(a1, ValueAtIndex))
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_6;
      }
    }

    v8 = *MEMORY[0x1E69E9840];

    CFArrayAppendValue(v3, a1);
  }

  else
  {
LABEL_6:
    v7 = *MEMORY[0x1E69E9840];
  }
}

void create_non_migrated_service_list(const __CFString *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 24);
  if (!*v2)
  {
    goto LABEL_3;
  }

  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v13.length = CFArrayGetCount(v6);
  v13.location = 0;
  if (CFArrayGetFirstIndexOfValue(v6, v13, a1) != -1)
  {
    goto LABEL_3;
  }

  v8 = SCNetworkServiceCopy(v5, a1);
  if (!v8)
  {
    *v2 = 0;
LABEL_3:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = v8;
  CFArrayAppendValue(v4, v8);
  v10 = *MEMORY[0x1E69E9840];

  CFRelease(v9);
}

uint64_t _SCHelperOpen(const __CFData *a1, mach_port_name_t *a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v48[0] = 0;
  *a2 = 0;
  v4 = _helper_server;
  v5 = MEMORY[0x1E69E9A60];
  if (!_helper_server)
  {
    do
    {
LABEL_3:
      pthread_mutex_lock(&_helper_lock);
      v7 = _helper_server;
      if (_helper_server)
      {
        if (v4 != _helper_server)
        {
          goto LABEL_8;
        }

        mach_port_deallocate(*v5, v4);
      }

      v8 = __SCHelperServerPort(v48 + 1);
      _helper_server = v8;
      if (!v8)
      {
        LODWORD(v48[0]) = HIDWORD(v48[0]);
        pthread_mutex_unlock(&_helper_lock);
        goto LABEL_13;
      }

      v7 = v8;
LABEL_8:
      pthread_mutex_unlock(&_helper_lock);
      v4 = v7;
    }

    while (!v7);
  }

  v6 = helperinit(v4, a2, v48);
  HIDWORD(v48[0]) = v6;
  if (v6 == 268435459)
  {
    goto LABEL_3;
  }

  if (v6)
  {
    LODWORD(v48[0]) = v6;
  }

LABEL_13:
  if (*a2)
  {
    if (_SCHelperExec(*a2, 1, a1, v48, 0))
    {
      if (!LODWORD(v48[0]))
      {
        result = 1;
        goto LABEL_27;
      }

      v9 = __log_SCPreferences();
      v10 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v9, v10))
      {
LABEL_23:
        if (*a2)
        {
          mach_port_deallocate(*v5, *a2);
          result = 0;
          *a2 = 0;
          goto LABEL_27;
        }

LABEL_25:
        result = 0;
        goto LABEL_27;
      }

      v11 = _os_log_pack_size();
      v19 = v48 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = v48[0];
      *v21 = 67109120;
      v21[1] = v22;
    }

    else
    {
      v9 = __log_SCPreferences();
      v10 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v9, v10))
      {
        goto LABEL_23;
      }

      v38 = _os_log_pack_size();
      v19 = v48 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = *__error();
      *_os_log_pack_fill() = 0;
    }

    __SC_log_send(5, v9, v10, v19);
    goto LABEL_23;
  }

  v23 = __log_SCPreferences();
  v24 = _SC_syslog_os_log_mapping(5);
  result = __SC_log_enabled(5, v23, v24);
  if (result)
  {
    v26 = _os_log_pack_size();
    v34 = v48 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = *__error();
    v36 = _os_log_pack_fill();
    v37 = SCErrorString(v48[0]);
    *v36 = 136315138;
    *(v36 + 4) = v37;
    __SC_log_send(5, v23, v24, v34);
    goto LABEL_25;
  }

LABEL_27:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCHelperServerPort(_DWORD *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0;
  getenv("SCHELPER_SERVER");
  v2 = *MEMORY[0x1E69E99F8];
  v3 = bootstrap_look_up2();
  *a1 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  if (__SCHelperServerPort_once != -1)
  {
    __SCHelperServerPort_cold_1();
  }

  getpid();
  v4 = sandbox_check();
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    v18 = __log_SCPreferences();
    v19 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = &v34[-((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = __error();
      v32 = strerror(*v31);
      *v30 = 136315138;
      *(v30 + 4) = v32;
      __SC_log_send(5, v18, v19, v28);
    }

LABEL_10:
    if (*a1)
    {
      result = 0;
    }

    else
    {
      result = v35;
    }

    goto LABEL_13;
  }

  v5 = __log_SCPreferences();
  v6 = _SC_syslog_os_log_mapping(5);
  result = __SC_log_enabled(5, v5, v6);
  if (result)
  {
    v8 = _os_log_pack_size();
    v16 = &v34[-((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v17 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(5, v5, v6, v16);
    result = 0;
  }

LABEL_13:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void _SCHelperClose(mach_port_t *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!_SCHelperExec(*a1, 9999, 0, 0, 0))
  {
    v2 = __log_SCPreferences();
    v3 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v2, v3))
    {
      v4 = _os_log_pack_size();
      v12 = v15 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v2, v3, v12);
    }
  }

  if (*a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *a1);
    *a1 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _SCSecKeychainCopySystemKeychain()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCSecKeychainPasswordItemCopy()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCSecKeychainPasswordItemExists()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCSecKeychainPasswordItemRemove()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCSecKeychainPasswordItemSet()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCPreferencesSystemKeychainPasswordItemCopy()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCPreferencesSystemKeychainPasswordItemExists()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCPreferencesSystemKeychainPasswordItemRemove()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _SCPreferencesSystemKeychainPasswordItemSet()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1003);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

const void *SCNetworkSignatureCopyActiveIdentifierForAddress(uint64_t a1, uint64_t a2)
{
  cf[1] = *MEMORY[0x1E69E9840];
  NetworkServiceEntity = 0;
  cf[0] = 0;
  if (!a2 || *(a2 + 1) != 2 || *a2 != 16 || *(a2 + 4))
  {
    _SCErrorSet(1002);
    v2 = 0;
    v3 = 0;
LABEL_6:
    _SCErrorSet(1001);
    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  cf[0] = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"IPv4");
  v8 = MEMORY[0x1E695E9C0];
  v2 = CFArrayCreate(0, cf, 1, MEMORY[0x1E695E9C0]);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv4");
  v3 = CFArrayCreate(0, &NetworkServiceEntity, 1, v8);
  v9 = SCDynamicStoreCopyMultiple(0, v2, v3);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  if (!CFDictionaryGetCount(v9) || (Value = CFDictionaryGetValue(v10, cf[0]), TypeID = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID || (v13 = CFDictionaryGetValue(Value, @"PrimaryService"), v14 = CFStringGetTypeID(), !v13) || CFGetTypeID(v13) != v14)
  {
    v5 = 0;
LABEL_31:
    _SCErrorSet(1001);
    v4 = 0;
    goto LABEL_32;
  }

  v5 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", v13, @"IPv4");
  v15 = CFDictionaryGetValue(v10, v5);
  v16 = CFDictionaryGetTypeID();
  if (!v15)
  {
    goto LABEL_31;
  }

  if (CFGetTypeID(v15) != v16)
  {
    goto LABEL_31;
  }

  if (!CFDictionaryGetCount(v15))
  {
    goto LABEL_31;
  }

  v4 = CFDictionaryGetValue(v15, @"NetworkSignature");
  v17 = CFStringGetTypeID();
  if (!v4 || CFGetTypeID(v4) != v17)
  {
    goto LABEL_31;
  }

  CFRetain(v4);
LABEL_32:
  CFRelease(v10);
LABEL_7:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFArray *SCNetworkSignatureCopyActiveIdentifiers()
{
  v50 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *v45 = 0u;
  v0 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  values = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"Setup:", @"IPv4");
  v2 = CFArrayCreate(0, &values, 1, v0);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv4");
  CFArrayAppendValue(Mutable, NetworkServiceEntity);
  v4 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", @"IPv6");
  CFArrayAppendValue(Mutable, v4);
  v5 = SCDynamicStoreCopyMultiple(0, v2, Mutable);
  if (!v5)
  {
    v26 = 0;
    v13 = 0;
    goto LABEL_42;
  }

  MutableCopy = v5;
  if (CFDictionaryGetCount(v5))
  {
    v41 = v2;
    v37 = Mutable;
    v7 = MutableCopy;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
    CFDictionaryRemoveValue(MutableCopy, values);
    cf = v7;
    Value = CFDictionaryGetValue(v7, values);
    TypeID = CFDictionaryGetTypeID();
    v43 = v4;
    if (Value && CFGetTypeID(Value) == TypeID && (v10 = CFDictionaryGetValue(Value, @"ServiceOrder"), v11 = CFArrayGetTypeID(), v10) && CFGetTypeID(v10) == v11)
    {
      Count = CFArrayGetCount(v10);
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v40 = Count;
      if (Count >= 1)
      {
        v14 = 0;
        range = 0;
        v38 = v10;
        v39 = NetworkServiceEntity;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
          v16 = CFStringGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v16)
          {
            v17 = 1;
            v18 = @"IPv4";
            do
            {
              v19 = v17;
              v20 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", ValueAtIndex, v18);
              v21 = CFDictionaryGetValue(MutableCopy, v20);
              v22 = CFDictionaryGetTypeID();
              if (v21 && CFGetTypeID(v21) == v22)
              {
                v23 = CFDictionaryGetValue(v21, @"NetworkSignature");
                v24 = CFStringGetTypeID();
                if (v23)
                {
                  if (CFGetTypeID(v23) == v24)
                  {
                    v51.location = 0;
                    v51.length = range;
                    if (!CFArrayContainsValue(v13, v51, v23))
                    {
                      CFArrayAppendValue(v13, v23);
                      ++range;
                    }
                  }
                }

                CFDictionaryRemoveValue(MutableCopy, v20);
              }

              CFRelease(v20);
              v17 = 0;
              v18 = @"IPv6";
            }

            while ((v19 & 1) != 0);
          }

          ++v14;
          NetworkServiceEntity = v39;
          v4 = v43;
          v10 = v38;
        }

        while (v14 != v40);
        v25 = range;
LABEL_25:
        v27 = CFDictionaryGetCount(MutableCopy);
        v2 = v41;
        if (!v27)
        {
          v26 = 0;
          goto LABEL_40;
        }

        v28 = v27;
        if (v27 < 11)
        {
          v26 = v45;
          CFDictionaryGetKeysAndValues(MutableCopy, 0, v45);
          if (v28 < 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v26 = malloc_type_malloc(8 * v27, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(MutableCopy, 0, v26);
        }

        for (i = 0; i != v28; ++i)
        {
          v30 = v26[i];
          v31 = CFDictionaryGetTypeID();
          if (v30)
          {
            if (CFGetTypeID(v30) == v31)
            {
              v32 = CFDictionaryGetValue(v30, @"NetworkSignature");
              v33 = CFStringGetTypeID();
              if (v32)
              {
                if (CFGetTypeID(v32) == v33)
                {
                  v52.location = 0;
                  v52.length = v25;
                  if (!CFArrayContainsValue(v13, v52, v32))
                  {
                    CFArrayAppendValue(v13, v32);
                    ++v25;
                  }
                }
              }
            }
          }
        }

        v2 = v41;
        v4 = v43;
LABEL_40:
        CFRelease(cf);
        Mutable = v37;
        if (!MutableCopy)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    v25 = 0;
    goto LABEL_25;
  }

  v26 = 0;
  v13 = 0;
LABEL_41:
  CFRelease(MutableCopy);
LABEL_42:
  if (values)
  {
    CFRelease(values);
  }

  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v26 && v26 != v45)
  {
    free(v26);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v13)
  {
    goto LABEL_58;
  }

  if (!CFArrayGetCount(v13))
  {
    CFRelease(v13);
LABEL_58:
    _SCErrorSet(1001);
    v13 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}