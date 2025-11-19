uint64_t __SCPreferencesCommitChanges_helper(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v37[0] = 0;
  v36 = 0;
  v35 = 0;
  v2 = *(a1 + 320);
  if (v2)
  {
    v3 = (a1 + 320);
    if (*(a1 + 305))
    {
      if (!_SCSerialize(*(a1 + 280), v37, 0, 0))
      {
        v36 = 1001;
        if (_sc_verbose)
        {
          v7 = __log_SCPreferences();
          v8 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v7, v8))
          {
            v9 = _os_log_pack_size();
            v17 = &v35 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
            v18 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(5, v7, v8, v17);
          }

          v19 = __log_SCPreferences();
          v20 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v19, v20))
          {
            v21 = _os_log_pack_size();
            v29 = &v35 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
            v30 = *__error();
            v31 = _os_log_pack_fill();
            v32 = *(a1 + 104);
            *v31 = 136315138;
            *(v31 + 4) = v32;
            __SC_log_send(5, v19, v20, v29);
          }
        }

        goto LABEL_22;
      }

      v2 = *v3;
      v4 = v37[0];
    }

    else
    {
      v4 = 0;
    }

    v5 = _SCHelperExec(v2, 104, v4, &v36, &v35);
    if (v37[0])
    {
      CFRelease(v37[0]);
    }

    if (v5)
    {
      if (!v36)
      {
        if (*(a1 + 305))
        {
          v6 = *(a1 + 144);
          if (v6)
          {
            CFRelease(v6);
          }

          *(a1 + 144) = v35;
        }

        else if (v35)
        {
          CFRelease(v35);
        }

        *(a1 + 305) = 0;
        result = 1;
        goto LABEL_25;
      }
    }

    else if (*v3)
    {
      _SCHelperClose((a1 + 320));
    }
  }

  else
  {
    v36 = 1003;
  }

LABEL_22:
  if (v35)
  {
    CFRelease(v35);
  }

  _SCErrorSet(v36);
  result = 0;
LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

size_t writen(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  v10 = *MEMORY[0x1E69E9840];
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      v7 = write(__fd, __buf, v6);
      if (v7 == -1)
      {
        if (*__error() != 4)
        {
          v3 = -1;
          break;
        }

        v7 = 0;
      }

      __buf += v7;
      v6 -= v7;
    }

    while (v6);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t SCNetworkInterfaceProviderCreate(const void *a1, const void *a2, uint64_t a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!a1 || !a2 || a3)
  {
    v11 = 1002;
LABEL_11:
    _SCErrorSet(v11);
LABEL_12:
    Instance = 0;
    goto LABEL_13;
  }

  v5 = IPMonitorControlCreate();
  if (!v5)
  {
    v11 = 1001;
    goto LABEL_11;
  }

  v6 = v5;
  values[0] = IPMonitorControlCopyInterfaceAdvisoryNotificationKey(@"[^/]+");
  v7 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
  CFRelease(values[0]);
  v8 = dispatch_queue_create("SCNetworkInterfaceProvider", 0);
  if (__SCNetworkInterfaceProviderRegisterClass_once != -1)
  {
    SCNetworkInterfaceProviderCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  v10 = StoreObjectWrapperAllocate(Instance, v7, v8, &v14);
  CFRelease(v7);
  if (!v10)
  {
    dispatch_release(v8);
    CFRelease(Instance);
    CFRelease(v6);
    goto LABEL_12;
  }

  *(Instance + 16) = v6;
  *(Instance + 24) = v10;
  *(Instance + 32) = v14;
  *(Instance + 40) = v8;
  *(Instance + 56) = CFRetain(a2);
  *(Instance + 64) = CFRetain(a1);
LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return Instance;
}

const __SCDynamicStore *StoreObjectWrapperAllocate(uint64_t a1, const __CFArray *a2, NSObject *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  context.version = xmmword_1F22559E0;
  *&context.retain = *off_1F22559F0;
  context.copyDescription = qword_1F2255A00;
  v8 = malloc_type_malloc(0x10uLL, 0x10C0040AE459949uLL);
  *v8 = a1;
  v8[2] = 1;
  context.info = v8;
  v9 = SCDynamicStoreCreate(0, @"SCNetworkInterfaceProvider", StoreHandleChanges, &context);
  if (!v9)
  {
    v13 = __log_SCNetworkConfiguration();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      v15 = _os_log_pack_size();
      v23 = &context - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 138412290;
      *(v25 + 4) = @"SCNetworkInterfaceProvider";
      __SC_log_send(5, v13, v14, v23);
    }

    goto LABEL_12;
  }

  v10 = v9;
  if (!SCDynamicStoreSetNotificationKeys(v9, 0, a2))
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
LABEL_10:
      v26 = _os_log_pack_size();
      v34 = &context - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      *v36 = 138412290;
      *(v36 + 4) = @"SCNetworkInterfaceProvider";
      __SC_log_send(5, v11, v12, v34);
    }

LABEL_11:
    CFRelease(v10);
LABEL_12:
    ObjectWrapperRelease(v8);
    v10 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  if (a3 && !SCDynamicStoreSetDispatchQueue(v10, a3))
  {
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v11, v12))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_13:
  *a4 = v8;
  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t StoreHandleChanges(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  result = *a3;
  if (*a3)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];

    return SCNetworkInterfaceProviderCheck(result);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void SCNetworkInterfaceProviderSetEventHandler(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SCNetworkInterfaceProviderSetEventHandler_block_invoke;
    block[3] = &unk_1E79BD6B8;
    block[4] = a2;
    block[5] = a1;
    dispatch_sync(v2, block);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __SCNetworkInterfaceProviderSetEventHandler_block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 72))
  {
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v2, v3))
    {
LABEL_6:
      v4 = v8 - ((_os_log_pack_size() + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 136315138;
      *(v6 + 4) = "SCNetworkInterfaceProviderSetEventHandler_block_invoke";
      __SC_log_send(5, v2, v3, v4);
    }
  }

  else
  {
    if (!*(v1 + 48))
    {
      *(*(a1 + 40) + 48) = _Block_copy(*(a1 + 32));
      goto LABEL_8;
    }

    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v2, v3))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

void SCNetworkInterfaceProviderResume(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SCNetworkInterfaceProviderResume_block_invoke;
  v3[3] = &__block_descriptor_tmp_3;
  v3[4] = a1;
  dispatch_async(v1, v3);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkInterfaceProviderResume_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 72))
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(result + 72) = 1;
    v4 = *MEMORY[0x1E69E9840];

    return SCNetworkInterfaceProviderCheck(result);
  }

  return result;
}

uint64_t SCNetworkInterfaceProviderCheck(uint64_t result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(result + 72))
  {
    v1 = result;
    if (*(result + 48))
    {
      result = IPMonitorControlAnyInterfaceAdvisoryIsSet(*(result + 16));
      if (*(v1 + 73) != result)
      {
        v2 = result;
        result = (*(*(v1 + 48) + 16))();
        *(v1 + 73) = v2;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkInterfaceProviderDeallocate(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ____SCNetworkInterfaceProviderDeallocate_block_invoke;
    v4[3] = &__block_descriptor_tmp_5;
    v4[4] = a1;
    dispatch_sync(v1, v4);
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    SCNetworkInterfaceProviderDeallocate(a1);
  }
}

__CFString *__SCNetworkInterfaceProviderCopyDebugDesc(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkInterfaceProvider %@ %@ <%p>", a1[8], a1[7], a1);
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void SCNetworkInterfaceProviderDeallocate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *v3 = 0;
    ObjectWrapperRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void ObjectWrapperRelease(atomic_uint *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1)
  {
    v2 = *MEMORY[0x1E69E9840];

    free(a1);
  }

  else
  {
    if (add_explicit <= 1)
    {
      ObjectWrapperRelease_cold_1();
    }

    v3 = *MEMORY[0x1E69E9840];
  }
}

uint64_t ObjectWrapperRetain(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathCreateUniqueChild(SCPreferencesRef prefs, CFStringRef prefix)
{
  theDict[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v4 = 3001;
    goto LABEL_6;
  }

  theDict[0] = 0;
  if (getPath(prefs, prefix, theDict))
  {
    if (CFDictionaryContainsKey(theDict[0], @"__LINK__"))
    {
      v4 = 1001;
LABEL_6:
      _SCErrorSet(v4);
LABEL_7:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else if (SCError() != 1004)
  {
    goto LABEL_7;
  }

  v6 = CFUUIDCreate(0);
  v7 = CFUUIDCreateString(0, v6);
  v5 = CFStringCreateWithFormat(0, 0, @"%@/%@", prefix, v7);
  CFRelease(v7);
  CFRelease(v6);
  v8 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    SCPreferencesPathCreateUniqueChild_cold_1();
  }

  v9 = v8;
  if (!setPath(prefs, v5, v8))
  {
    CFRelease(v5);
    v5 = 0;
  }

  CFRelease(v9);
LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t getPath(const __SCPreferences *a1, const __CFString *a2, const __CFDictionary **a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = normalizePath(a2);
  if (!v5)
  {
    _SCErrorSet(1004);
    v20 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  v23[0] = 0;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v18 = v6;
    goto LABEL_22;
  }

  v8 = 0;
  v9 = 0;
  while (2)
  {
    v10 = 0;
    v11 = Count - 1;
    v12 = Count - 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
      if (v10)
      {
        Value = CFDictionaryGetValue(v8, ValueAtIndex);
      }

      else
      {
        v15 = CFArrayGetValueAtIndex(v6, 0);
        Value = SCPreferencesGetValue(a1, v15);
      }

      v8 = Value;
      if (!Value)
      {
        goto LABEL_19;
      }

      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) != TypeID)
      {
        goto LABEL_19;
      }

      if (v10 < v11 && CFDictionaryGetValueIfPresent(v8, @"__LINK__", v23))
      {
        break;
      }

      ++v10;
      if (--v12 == -1)
      {
        *a3 = v8;
        v20 = 1;
        goto LABEL_23;
      }
    }

    if (v9 == 8)
    {
      v19 = 3006;
      goto LABEL_20;
    }

    v17 = normalizePath(v23[0]);
    if (!v17)
    {
LABEL_19:
      v19 = 1004;
LABEL_20:
      _SCErrorSet(v19);
      v20 = 0;
      goto LABEL_23;
    }

    v18 = v17;
    ++v9;
    v24.location = v10 + 1;
    v24.length = v12;
    CFArrayAppendArray(v17, v6, v24);
    CFRelease(v6);
    Count = CFArrayGetCount(v18);
    v6 = v18;
    if (Count >= 1)
    {
      continue;
    }

    break;
  }

LABEL_22:
  __SCPreferencesAccess(a1);
  *a3 = *(a1 + 35);
  v20 = 1;
  v6 = v18;
LABEL_23:
  CFRelease(v6);
LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t setPath(uint64_t a1, const __CFString *a2, const void *a3)
{
  v3 = a3;
  value[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) != TypeID)
    {
      v22 = 1002;
LABEL_24:
      _SCErrorSet(v22);
      v23 = 0;
      goto LABEL_55;
    }
  }

  v7 = normalizePath(a2);
  if (!v7)
  {
    v22 = 1004;
    goto LABEL_24;
  }

  v8 = v7;
  value[0] = 0;
  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    v21 = v8;
LABEL_26:
    __SCPreferencesAccess(a1);
    v24 = *(a1 + 280);
    if (v24)
    {
      CFRelease(v24);
    }

    if (v3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    *(a1 + 280) = MutableCopy;
    v23 = 1;
    *(a1 + 305) = 1;
    goto LABEL_54;
  }

  v10 = Count;
  v11 = 0;
  v40 = 0;
  v12 = MEMORY[0x1E695E9C0];
LABEL_6:
  v13 = v10 - 1;
  Mutable = CFArrayCreateMutable(0, v10 - 1, v12);
  v15 = v10 - 2;
  if (v10 < 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v10 - 1);
    v29 = SCPreferencesGetValue(a1, ValueAtIndex);
    goto LABEL_33;
  }

  v16 = 0;
  do
  {
    v17 = CFArrayGetValueAtIndex(v8, v16);
    if (v16)
    {
      v18 = CFDictionaryGetValue(v11, v17);
    }

    else
    {
      v18 = SCPreferencesGetValue(a1, v17);
    }

    v11 = v18;
    if (v18)
    {
      CFArrayAppendValue(Mutable, v18);
      v19 = CFDictionaryGetTypeID();
    }

    else
    {
      v11 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      v19 = CFDictionaryGetTypeID();
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    if (CFGetTypeID(v11) != v19)
    {
      goto LABEL_30;
    }

    if (CFDictionaryGetValueIfPresent(v11, @"__LINK__", value))
    {
      if (v40 == 8)
      {
        v26 = 3006;
LABEL_31:
        _SCErrorSet(v26);
        v23 = 0;
        if (Mutable)
        {
LABEL_52:
          CFRelease(Mutable);
        }

        goto LABEL_53;
      }

      v20 = normalizePath(value[0]);
      if (!v20)
      {
LABEL_30:
        v26 = 1004;
        goto LABEL_31;
      }

      v21 = v20;
      ++v40;
      v42.length = v13 - v16;
      v42.location = v16 + 1;
      CFArrayAppendArray(v20, v8, v42);
      CFRelease(v8);
      CFRelease(Mutable);
      v10 = CFArrayGetCount(v21);
      v8 = v21;
      v12 = MEMORY[0x1E695E9C0];
      if (v10 < 1)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    ++v16;
  }

  while (v13 != v16);
  v27 = CFArrayGetValueAtIndex(v8, v13);
  v28 = CFArrayGetValueAtIndex(Mutable, v15);
  v29 = CFDictionaryGetValue(v28, v27);
LABEL_33:
  v30 = v29;
  if (v29)
  {
    v31 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v30) != v31)
    {
      v26 = 1002;
      goto LABEL_31;
    }
  }

  if (v3)
  {
    v3 = CFRetain(v3);
  }

  while (1)
  {
    v32 = CFArrayGetValueAtIndex(v8, v13);
    if (!v13)
    {
      break;
    }

    v33 = CFArrayGetValueAtIndex(Mutable, --v13);
    v34 = CFDictionaryCreateMutableCopy(0, 0, v33);
    v35 = v34;
    if (v3)
    {
      CFDictionarySetValue(v34, v32, v3);
      CFRelease(v3);
    }

    else
    {
      CFDictionaryRemoveValue(v34, v32);
      if (!CFDictionaryGetCount(v35))
      {
        CFRelease(v35);
        v3 = 0;
        goto LABEL_42;
      }
    }

    v3 = v35;
LABEL_42:
    if (v13 + 1 <= 0)
    {
      v36 = 0;
      v23 = 0;
      if (v3)
      {
LABEL_50:
        CFRelease(v3);
        v23 = v36;
      }

      if (!Mutable)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  if (v3)
  {
    v36 = SCPreferencesSetValue(a1, v32, v3);
    goto LABEL_50;
  }

  v23 = SCPreferencesRemoveValue(a1, v32);
  if (Mutable)
  {
    goto LABEL_52;
  }

LABEL_53:
  v21 = v8;
LABEL_54:
  CFRelease(v21);
LABEL_55:
  v37 = *MEMORY[0x1E69E9840];
  return v23;
}

CFDictionaryRef SCPreferencesPathGetValue(SCPreferencesRef prefs, CFStringRef path)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
    goto LABEL_10;
  }

  value = 0;
  v8[0] = 0;
  if (!getPath(prefs, path, v8))
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = v8[0];
  TypeID = CFDictionaryGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID && CFDictionaryGetValueIfPresent(v3, @"__LINK__", &value))
  {
    if (getPath(prefs, value, v8))
    {
      v3 = v8[0];
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

CFStringRef SCPreferencesPathGetLink(SCPreferencesRef prefs, CFStringRef path)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  value = 0;
  v7[0] = 0;
  if (!getPath(prefs, path, v7))
  {
    goto LABEL_9;
  }

  v2 = v7[0];
  TypeID = CFDictionaryGetTypeID();
  if (!v2 || CFGetTypeID(v2) != TypeID)
  {
    goto LABEL_9;
  }

  if (CFDictionaryGetValueIfPresent(v2, @"__LINK__", &value))
  {
    result = value;
  }

  else
  {
    result = 0;
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesPathSetValue(SCPreferencesRef prefs, CFStringRef path, CFDictionaryRef value)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v14 = 3001;
LABEL_20:
    _SCErrorSet(v14);
    v22 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (CFEqual(path, @"/CurrentSet"))
  {
    TypeID = CFStringGetTypeID();
    if (!value)
    {
      CFDictionaryGetTypeID();
LABEL_19:
      SCPrint(1, *MEMORY[0x1E69E9848], @"SCPreferencesPathSetValue(, %@,) called with non-dictionary value\n", v16, v17, v18, v19, v20, path);
      v14 = 1002;
      goto LABEL_20;
    }

    if (CFGetTypeID(value) == TypeID)
    {
      if ((SCPreferencesPathSetValue_warned & 1) == 0)
      {
        SCPrint(1, *MEMORY[0x1E69E9848], @"SCPreferencesPathSetValue(, %@,) called with non-dictionary value\n", v7, v8, v9, v10, v11, path);
        SCPreferencesPathSetValue_warned = 1;
      }

      v12 = *MEMORY[0x1E69E9840];

      return SCPreferencesSetValue(prefs, @"CurrentSet", value);
    }

    v15 = CFDictionaryGetTypeID();
  }

  else
  {
    v15 = CFDictionaryGetTypeID();
    if (!value)
    {
      goto LABEL_19;
    }
  }

  if (CFGetTypeID(value) != v15)
  {
    goto LABEL_19;
  }

  v21 = *MEMORY[0x1E69E9840];

  return setPath(prefs, path, value);
}

Boolean SCPreferencesPathSetLink(SCPreferencesRef prefs, CFStringRef path, CFStringRef link)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v11 = 3001;
    goto LABEL_8;
  }

  TypeID = CFStringGetTypeID();
  if (!link || CFGetTypeID(link) != TypeID)
  {
    v11 = 1002;
LABEL_8:
    _SCErrorSet(v11);
    goto LABEL_9;
  }

  if (getPath(prefs, link, v13))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"__LINK__", link);
    v8 = setPath(prefs, path, Mutable);
    CFRelease(Mutable);
    v9 = *MEMORY[0x1E69E9840];
    return v8;
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

Boolean SCPreferencesPathRemoveValue(SCPreferencesRef prefs, CFStringRef path)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v9 = 3001;
LABEL_7:
    _SCErrorSet(v9);
    goto LABEL_8;
  }

  if (getPath(prefs, path, v11))
  {
    v4 = normalizePath(path);
    if (v4)
    {
      v5 = v4;
      v6 = setPath(prefs, path, 0);
      CFRelease(v5);
      v7 = *MEMORY[0x1E69E9840];
      return v6;
    }

    v9 = 1004;
    goto LABEL_7;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

const __CFArray *normalizePath(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    _SCErrorSet(1002);
    goto LABEL_11;
  }

  if (!CFStringHasPrefix(a1, @"/"))
  {
LABEL_11:
    MutableCopy = 0;
    goto LABEL_12;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
  MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
  CFRelease(ArrayBySeparatingStrings);
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v6 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v6 - 2);
      if (!CFStringGetLength(ValueAtIndex))
      {
        CFArrayRemoveValueAtIndex(MutableCopy, v6 - 2);
      }

      --v6;
    }

    while (v6 > 1);
  }

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

Boolean SCPreferencesApplyChanges(SCPreferencesRef prefs)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
LABEL_10:
    LOBYTE(v5) = 0;
    goto LABEL_25;
  }

  v2 = *(prefs + 112);
  if (!*(prefs + 112) && !SCPreferencesLock(prefs, 1u))
  {
    v32 = __log_SCPreferences();
    v33 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v32, v33))
    {
      v34 = _os_log_pack_size();
      v42 = &v47[-((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v43 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v32, v33, v42);
    }

    goto LABEL_10;
  }

  if (!*(prefs + 39))
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = &v47[-((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = *(prefs + 13);
      *v18 = 136315138;
      *(v18 + 4) = v19;
      __SC_log_send(6, v6, v7, v16);
    }

    v5 = SCDynamicStoreNotifyValue(0, *(prefs + 24));
    if (v5)
    {
      goto LABEL_23;
    }

    v20 = __log_SCPreferences();
    v21 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v20, v21))
    {
      v22 = _os_log_pack_size();
      v30 = &v47[-((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v31 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v20, v21, v30);
    }

    v4 = 1001;
    goto LABEL_22;
  }

  v48 = 0;
  v3 = *(prefs + 80);
  if (!v3)
  {
    goto LABEL_21;
  }

  if (!_SCHelperExec(v3, 105, 0, &v48, 0))
  {
    if (*(prefs + 80))
    {
      _SCHelperClose(prefs + 80);
    }

LABEL_21:
    v4 = 1003;
    v48 = 1003;
    goto LABEL_22;
  }

  v4 = v48;
  if (!v48)
  {
    LOBYTE(v5) = 1;
    goto LABEL_23;
  }

LABEL_22:
  _SCErrorSet(v4);
  LOBYTE(v5) = 0;
LABEL_23:
  if (!v2)
  {
    v44 = SCError();
    SCPreferencesUnlock(prefs);
    _SCErrorSet(v44);
  }

LABEL_25:
  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

const void *_SCPreferencesCopyComputerName(const __SCPreferences *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (!a1)
  {
    v4 = SCPreferencesCreate(0, @"_SCPreferencesCopyComputerName", 0);
    if (!v4)
    {
      v8 = 0;
      goto LABEL_16;
    }
  }

  v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
  Value = SCPreferencesPathGetValue(v4, v5);
  CFRelease(v5);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_8;
    }

    v8 = CFDictionaryGetValue(Value, @"ComputerName");
    v9 = CFStringGetTypeID();
    if (!v8)
    {
      goto LABEL_9;
    }

    if (CFGetTypeID(v8) == v9)
    {
      CFRetain(v8);
    }

    else
    {
LABEL_8:
      v8 = 0;
    }

LABEL_9:
    if (a2)
    {
      *a2 = getNameEncoding(Value);
    }

    if (a1)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (!a1)
  {
LABEL_18:
    CFRelease(v4);
  }

LABEL_12:
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1004;
  }

  _SCErrorSet(v10);
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void report_missing_entitlement(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_SC_isAppleInternal_once_2 != -1)
  {
    report_missing_entitlement_cold_1();
  }

  if (_SC_isAppleInternal_isInternal_2)
  {
    v2 = get_contact_string_contact;
    if (!get_contact_string_contact)
    {
      v3 = SCPreferencesCreate(0, @"UserDefinedDeviceNameContact", @"/AppleInternal/Library/SystemConfiguration/PrivateStrings.plist");
      if (v3)
      {
        v4 = v3;
        Value = SCPreferencesGetValue(v3, @"UserDefinedDeviceNameContact");
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          CFRetain(Value);
          CFRelease(v4);
          get_contact_string_contact = _SC_cfstring_to_cstring(Value, 0, 0, 0x8000100u);
          CFRelease(Value);
          v2 = get_contact_string_contact;
          goto LABEL_11;
        }

        CFRelease(v4);
      }

      v2 = 0;
    }

LABEL_11:
    if (!v2)
    {
      v2 = "privacy";
    }

    snprintf(__str, 0x100uLL, "%s() requires an entitlement, please contact %s", a1, v2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_1;
    block[3] = &__block_descriptor_tmp_9;
    block[5] = 0;
    block[6] = 0;
    block[4] = __str;
    if (_SC_crash_once_once_1 != -1)
    {
      dispatch_once(&_SC_crash_once_once_1, block);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

Boolean SCPreferencesSetComputerName(SCPreferencesRef prefs, CFStringRef name, CFStringEncoding nameEncoding)
{
  v40 = *MEMORY[0x1E69E9840];
  valuePtr = nameEncoding;
  if (!name)
  {
    v6 = 0;
LABEL_7:
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
    Value = SCPreferencesPathGetValue(prefs, v7);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v11 = MutableCopy;
    if (v6 && CFStringGetLength(v6) >= 1)
    {
      CFDictionarySetValue(v11, @"ComputerName", v6);
      v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v11, @"ComputerNameEncoding", v12);
      CFRelease(v12);
      CFDictionaryRemoveValue(v11, @"ComputerNameRegion");
      if (!valuePtr)
      {
        *&v38[12] = 0;
        _CFStringGetUserDefaultEncoding();
      }
    }

    else
    {
      CFDictionaryRemoveValue(v11, @"ComputerName");
      CFDictionaryRemoveValue(v11, @"ComputerNameEncoding");
      CFDictionaryRemoveValue(v11, @"ComputerNameRegion");
    }

    v10 = __SCNetworkConfigurationSetValue(prefs, v7, v11, 0);
    if (!v10 || !__SCPreferencesUsingDefaultPrefs(prefs))
    {
      goto LABEL_24;
    }

    v13 = __log_SCPreferences();
    v14 = _SC_syslog_os_log_mapping(5);
    v15 = __SC_log_enabled(5, v13, v14);
    if (v6)
    {
      if (v15)
      {
        v16 = _os_log_pack_size();
        v24 = &v38[-((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v25 = *__error();
        v26 = _os_log_pack_fill();
        *v26 = 138412290;
        *(v26 + 4) = v6;
LABEL_23:
        __SC_log_send(5, v13, v14, v24);
      }
    }

    else if (v15)
    {
      v27 = _os_log_pack_size();
      v24 = &v38[-((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v35 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_23;
    }

LABEL_24:
    CFRelease(v7);
    CFRelease(v11);
    goto LABEL_25;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) == TypeID)
  {
    if (CFStringGetLength(name))
    {
      v6 = name;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_7;
  }

  _SCErrorSet(1002);
  LOBYTE(v10) = 0;
LABEL_25:
  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

const void *SCPreferencesGetHostName(const __SCPreferences *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
  Value = SCPreferencesPathGetValue(a1, v2);
  CFRelease(v2);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (v5 = CFDictionaryGetValue(Value, @"HostName"), v6 = CFStringGetTypeID(), !v5) || CFGetTypeID(v5) != v6)
  {
    _SCErrorSet(1004);
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t SCPreferencesSetHostName(const __SCPreferences *a1, const __CFString *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = 0;
LABEL_7:
    v6 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
    Value = SCPreferencesPathGetValue(a1, v6);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    if (v5)
    {
      CFDictionarySetValue(MutableCopy, @"HostName", v5);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"HostName");
    }

    v9 = __SCNetworkConfigurationSetValue(a1, v6, v10, 0);
    if (!v9 || !__SCPreferencesUsingDefaultPrefs(a1))
    {
      goto LABEL_22;
    }

    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(5);
    v13 = __SC_log_enabled(5, v11, v12);
    if (v5)
    {
      if (v13)
      {
        v14 = _os_log_pack_size();
        v22 = v36 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 138412290;
        *(v24 + 4) = v5;
LABEL_21:
        __SC_log_send(5, v11, v12, v22);
      }
    }

    else if (v13)
    {
      v25 = _os_log_pack_size();
      v22 = v36 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_21;
    }

LABEL_22:
    CFRelease(v6);
    CFRelease(v10);
    goto LABEL_23;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(a2) == TypeID)
  {
    if (CFStringGetLength(a2))
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_7;
  }

  _SCErrorSet(1002);
  v9 = 0;
LABEL_23:
  v34 = *MEMORY[0x1E69E9840];
  return v9;
}

const void *_SCPreferencesCopyLocalHostName(const __SCPreferences *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!a1)
  {
    v2 = SCPreferencesCreate(0, @"_SCPreferencesCopyLocalHostName", 0);
    if (!v2)
    {
      Value = 0;
      goto LABEL_15;
    }
  }

  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"System", @"Network", @"HostNames");
  Value = SCPreferencesPathGetValue(v2, v3);
  CFRelease(v3);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_8;
    }

    Value = CFDictionaryGetValue(Value, @"LocalHostName");
    v6 = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v6)
      {
        CFRetain(Value);
        goto LABEL_9;
      }

LABEL_8:
      Value = 0;
    }
  }

LABEL_9:
  if (!a1)
  {
    CFRelease(v2);
  }

  if (Value)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1004;
  }

  _SCErrorSet(v7);
LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return Value;
}

CFStringRef SCDynamicStoreKeyCreateHostNames(CFAllocatorRef allocator)
{
  result = SCDynamicStoreKeyCreate(allocator, @"%@/%@/%@", @"Setup:", @"Network", @"HostNames", *MEMORY[0x1E69E9840]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCPreferencesSetLocalHostName(SCPreferencesRef prefs, CFStringRef name)
{
  v2 = name;
  v37[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    goto LABEL_8;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(v2) == TypeID)
  {
    Length = CFStringGetLength(v2);
    if (Length < 1)
    {
      v2 = 0;
    }

    else
    {
      v6 = Length;
      if (!_SC_CFStringIsValidDNSName(v2))
      {
        goto LABEL_6;
      }

      v38.location = 0;
      v38.length = v6;
      if (CFStringFindWithOptions(v2, @".", v38, 0, 0))
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v8 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"System", @"Network", @"HostNames");
    Value = SCPreferencesPathGetValue(prefs, v8);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v11 = MutableCopy;
    if (v2)
    {
      CFDictionarySetValue(MutableCopy, @"LocalHostName", v2);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"LocalHostName");
    }

    v7 = __SCNetworkConfigurationSetValue(prefs, v8, v11, 0);
    if (!v7 || !__SCPreferencesUsingDefaultPrefs(prefs))
    {
      goto LABEL_22;
    }

    v12 = __log_SCPreferences();
    v13 = _SC_syslog_os_log_mapping(5);
    v14 = __SC_log_enabled(5, v12, v13);
    if (v2)
    {
      if (v14)
      {
        v15 = _os_log_pack_size();
        v23 = v37 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 138412290;
        *(v25 + 4) = v2;
LABEL_21:
        __SC_log_send(5, v12, v13, v23);
      }
    }

    else if (v14)
    {
      v26 = _os_log_pack_size();
      v23 = v37 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_21;
    }

LABEL_22:
    CFRelease(v8);
    CFRelease(v11);
    goto LABEL_23;
  }

LABEL_6:
  _SCErrorSet(1002);
  LOBYTE(v7) = 0;
LABEL_23:
  v35 = *MEMORY[0x1E69E9840];
  return v7;
}

CFStringRef SCDynamicStoreKeyCreateLocation(CFAllocatorRef allocator)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CFRetain(@"Setup:");
}

CFTypeID SCNetworkConnectionGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
  }

  result = __kSCNetworkConnectionTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableArrayRef SCNetworkConnectionCopyAvailableServices(const __SCNetworkSet *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v3 = a1;
    goto LABEL_3;
  }

  v12 = SCPreferencesCreate(0, @"SCNetworkConnectionCopyAvailableServices", 0);
  if (v12)
  {
    v13 = v12;
    v3 = SCNetworkSetCopyCurrent(v12);
    CFRelease(v13);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v3)
    {
LABEL_17:
      v14 = *MEMORY[0x1E69E9840];
      return Mutable;
    }

LABEL_3:
    v4 = SCNetworkSetCopyServices(v3);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
            if (CFEqual(InterfaceType, @"PPP") || CFEqual(InterfaceType, @"VPN") || CFEqual(InterfaceType, @"IPSec"))
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
            }
          }
        }
      }

      CFRelease(v5);
    }

    if (!a1)
    {
      CFRelease(v3);
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E695E9C0];

  return CFArrayCreateMutable(0, 0, v17);
}

uint64_t SCNetworkConnectionCreateWithService(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkServiceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v21 = 1002;
LABEL_10:
    _SCErrorSet(v21);
    Private = 0;
    goto LABEL_11;
  }

  if (__SCNetworkServiceIsPPTP(a2))
  {
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v9, v10))
    {
      v11 = _os_log_pack_size();
      v19 = v38 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v9, v10, v19);
    }

    v21 = 5002;
    goto LABEL_10;
  }

  Private = __SCNetworkConnectionCreatePrivate(a1, a2, a3, a4);
  if (Private)
  {
    v25 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v25 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v25;
    }

    v26 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v25, v26))
    {
      v27 = _os_log_pack_size();
      v35 = v38 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      *v37 = 136315394;
      *(v37 + 4) = Private + 88;
      *(v37 + 12) = 2112;
      *(v37 + 14) = a2;
      __SC_log_send(7, v25, v26, v35);
    }
  }

LABEL_11:
  v23 = *MEMORY[0x1E69E9840];
  return Private;
}

uint64_t __SCNetworkConnectionCreatePrivate(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_23;
  }

  v8 = Instance;
  pthread_mutex_init((Instance + 16), 0);
  if (a2)
  {
    *(v8 + 80) = CFRetain(a2);
  }

  *(v8 + 160) = geteuid();
  *(v8 + 164) = getegid();
  *(v8 + 168) = getpid();
  *(v8 + 232) = a3;
  if (a4)
  {
    v9 = *a4;
    v10 = a4[1];
    *(v8 + 272) = *(a4 + 4);
    *(v8 + 240) = v9;
    *(v8 + 256) = v10;
    v11 = *(a4 + 2);
    if (v11)
    {
      *(v8 + 248) = v11(*(a4 + 1));
    }
  }

  *(v8 + 304) = 0;
  if (_sc_log >= 1)
  {
    snprintf((v8 + 88), 0x20uLL, "[%p] ", v8);
  }

  if (ne_session_use_as_system_vpn() && *(v8 + 80))
  {
    _SCErrorSet(0);
    if (_SCNetworkServiceIsVPN(*(v8 + 80)))
    {
      goto LABEL_14;
    }

    if (SCError() != 1002)
    {
      goto LABEL_24;
    }

    ServiceID = SCNetworkServiceGetServiceID(*(v8 + 80));
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], @"Setup:", ServiceID, @"Interface");
    v31 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (v31)
    {
      if (CFGetTypeID(v31) == TypeID)
      {
        Value = CFDictionaryGetValue(v31, @"Type");
        v34 = CFStringGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v34)
          {
            if (!CFEqual(Value, @"PPP"))
            {
              if (!CFEqual(Value, @"VPN"))
              {
                v36 = &kSCNetworkInterfaceTypeIPSec;
LABEL_45:
                v51 = CFEqual(Value, *v36);
                CFRelease(v31);
                CFRelease(NetworkServiceEntity);
                if (!v51)
                {
                  goto LABEL_24;
                }

LABEL_14:
                v12 = SCNetworkServiceGetServiceID(*(v8 + 80));
                v13 = v12;
                if (v12)
                {
                  *buffer = 0u;
                  memset(v54, 0, sizeof(v54));
                  if (CFStringGetCString(v12, buffer, 37, 0x8000100u))
                  {
                    memset(uu, 0, sizeof(uu));
                    if (!uuid_parse(buffer, uu))
                    {
                      v37 = ne_session_create();
                      *(v8 + 344) = v37;
                      if (v37)
                      {
                        v38 = __log_SCNetworkConnection_log;
                        if (!__log_SCNetworkConnection_log)
                        {
                          v38 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                          __log_SCNetworkConnection_log = v38;
                        }

                        v39 = _SC_syslog_os_log_mapping(7);
                        if (__SC_log_enabled(7, v38, v39))
                        {
                          v40 = _os_log_pack_size();
                          v48 = &uu[-((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0)];
                          v49 = *__error();
                          v50 = _os_log_pack_fill();
                          *v50 = 136315138;
                          *(v50 + 4) = v8 + 88;
                          __SC_log_send(7, v38, v39, v48);
                        }
                      }
                    }
                  }
                }

                if (!*(v8 + 344))
                {
                  v14 = __log_SCNetworkConnection_log;
                  if (!__log_SCNetworkConnection_log)
                  {
                    v14 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                    __log_SCNetworkConnection_log = v14;
                  }

                  v15 = _SC_syslog_os_log_mapping(5);
                  if (__SC_log_enabled(5, v14, v15))
                  {
                    v16 = _os_log_pack_size();
                    v24 = &uu[-((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0)];
                    v25 = *__error();
                    v26 = _os_log_pack_fill();
                    *v26 = 138412290;
                    *(v26 + 4) = v13;
                    __SC_log_send(5, v14, v15, v24);
                  }

                  CFRelease(v8);
LABEL_23:
                  _SCErrorSet(1001);
                  v8 = 0;
                  goto LABEL_24;
                }

                goto LABEL_24;
              }

LABEL_43:
              CFRelease(v31);
              CFRelease(NetworkServiceEntity);
              goto LABEL_14;
            }

            Value = CFDictionaryGetValue(v31, @"SubType");
            v35 = CFStringGetTypeID();
            if (Value && CFGetTypeID(Value) == v35)
            {
              if (!CFEqual(Value, @"PPTP"))
              {
                v36 = &kSCValNetInterfaceSubTypeL2TP;
                goto LABEL_45;
              }

              goto LABEL_43;
            }
          }
        }
      }

      CFRelease(v31);
    }

    CFRelease(NetworkServiceEntity);
  }

LABEL_24:
  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

SCNetworkConnectionRef SCNetworkConnectionCreateWithServiceID(CFAllocatorRef allocator, CFStringRef serviceID, SCNetworkConnectionCallBack callout, SCNetworkConnectionContext *context)
{
  v27[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!serviceID || CFGetTypeID(serviceID) != TypeID)
  {
    _SCErrorSet(1002);
    goto LABEL_10;
  }

  v9 = _SCNetworkServiceCopyActive(0, serviceID);
  if (!v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = SCNetworkConnectionCreateWithService(allocator, v9, callout, &context->version);
  CFRelease(v10);
  if (v11)
  {
    v12 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v12 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v12;
    }

    v13 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v12, v13))
    {
      v14 = _os_log_pack_size();
      v22 = v27 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136315394;
      *(v24 + 4) = v11 + 88;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v10;
      __SC_log_send(7, v12, v13, v22);
    }
  }

LABEL_11:
  v25 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SCNetworkConnectionCreate(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  Private = __SCNetworkConnectionCreatePrivate(a1, 0, a2, a3);
  if (Private)
  {
    v4 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v4;
    }

    v5 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v4, v5))
    {
      v6 = _os_log_pack_size();
      v14 = v19 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315138;
      *(v16 + 4) = Private + 88;
      __SC_log_send(7, v4, v5, v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return Private;
}

CFStringRef SCNetworkConnectionCopyServiceID(SCNetworkConnectionRef connection)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_10:
      v7 = 1002;
      goto LABEL_11;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_10;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_10;
  }

  v3 = *(connection + 10);
  if (!v3)
  {
    v7 = 5001;
LABEL_11:
    _SCErrorSet(v7);
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  ServiceID = SCNetworkServiceGetServiceID(v3);
  v5 = *MEMORY[0x1E69E9840];

  return CFRetain(ServiceID);
}

uint64_t SCNetworkConnectionSetClientInfo(mach_port_name_t *cf, mach_port_name_t a2, mach_port_name_t a3, mach_port_name_t a4, mach_port_name_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_10:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_11;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  v10 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v10)
  {
    goto LABEL_10;
  }

  v11 = cf[30];
  v12 = MEMORY[0x1E69E9A60];
  if (v11)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v11);
  }

  cf[30] = a2;
  if (a2)
  {
    mach_port_mod_refs(*v12, a2, 0, 1);
  }

  cf[40] = a3;
  cf[41] = a4;
  result = 1;
  cf[42] = a5;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionSetClientAuditInfo(uint64_t a1, void *a2, mach_port_name_t a3, mach_port_name_t a4, pid_t a5, const unsigned __int8 *a6, const char *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0uLL;
  v29 = 0uLL;
  if (*a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2[1] == 0;
  }

  if (v13 && a2[2] == 0 && a2[3] == 0)
  {
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v16 = *(a2 + 1);
    *v27.val = *a2;
    *&v27.val[4] = v16;
    v17 = audit_token_to_euid(&v27);
    v18 = *(a2 + 1);
    *v27.val = *a2;
    *&v27.val[4] = v18;
    v19 = audit_token_to_egid(&v27);
    v20 = *(a2 + 1);
    *v27.val = *a2;
    *&v27.val[4] = v20;
    a5 = audit_token_to_pid(&v27);
  }

  result = SCNetworkConnectionSetClientInfo(a1, a3, v17, v19, a5);
  if (result)
  {
    v22 = *(a1 + 156);
    v23 = MEMORY[0x1E69E9A60];
    if (v22)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v22);
    }

    *(a1 + 156) = a4;
    if (a4)
    {
      mach_port_mod_refs(*v23, a4, 0, 1);
    }

    v24 = *a2;
    *(a1 + 140) = *(a2 + 1);
    *(a1 + 124) = v24;
    if (a6 && !uuid_is_null(a6))
    {
      uuid_copy((a1 + 172), a6);
    }

    v25 = *(a1 + 192);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 192) = 0;
    }

    if (a7)
    {
      *(a1 + 192) = CFStringCreateWithCString(*MEMORY[0x1E695E480], a7, 0x8000100u);
    }

    result = 1;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef SCNetworkConnectionCopyStatistics(SCNetworkConnectionRef connection)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v19 = 1001;
  v20 = 0;
  v18 = 0;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_28:
      _SCErrorSet(1002);
      v4 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_28;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_28;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v3 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    if (v15[3])
    {
      v4 = _CFXPCCreateCFObjectFromXPCObject();
      xpc_release(v15[3]);
    }

    else
    {
      _SCErrorSet(1001);
      v4 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    while (1)
    {
      v5 = __SCNetworkConnectionSessionPort(connection);
      if (!v5)
      {
        break;
      }

      v6 = pppcontroller_copystatistics(v5, v21, &v20, &v19);
      if (!__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyStatistics()", v6, &v19))
      {
        if (!v21[0])
        {
          goto LABEL_16;
        }

        v7 = _SCUnserialize(&v18, 0, v21[0], v20);
        v8 = v19;
        if (!v7 && v19)
        {
          v8 = SCError();
          v19 = v8;
        }

        if (v8 || (v10 = v18, TypeID = CFDictionaryGetTypeID(), v10) && CFGetTypeID(v10) == TypeID)
        {
LABEL_16:
          v9 = v19;
          if (!v19)
          {
            break;
          }
        }

        else
        {
          v9 = 1001;
          v19 = 1001;
        }

        if (v18)
        {
          CFRelease(v18);
          v18 = 0;
          v9 = v19;
        }

        _SCErrorSet(v9);
        break;
      }
    }

    pthread_mutex_unlock((connection + 16));
    v4 = v18;
  }

LABEL_29:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

intptr_t __SCNetworkConnectionCopyStatistics_block_invoke(void *a1, xpc_object_t object)
{
  v7 = *MEMORY[0x1E69E9840];
  if (object)
  {
    *(*(a1[4] + 8) + 24) = xpc_retain(object);
  }

  v3 = a1[5];
  ne_session_release();
  v4 = a1[6];
  v5 = *MEMORY[0x1E69E9840];

  return dispatch_semaphore_signal(v4);
}

uint64_t __SCNetworkConnectionSessionPort(uint64_t a1)
{
  v1 = a1;
  v170[1] = *MEMORY[0x1E69E9840];
  v169 = 0;
  v170[0] = 0;
  *name = 0;
  v168 = 0;
  v166 = 1001;
  v3 = (a1 + 200);
  result = *(a1 + 200);
  if (result)
  {
    goto LABEL_122;
  }

  v4 = *(v1 + 80);
  if (!v4)
  {
    v12 = 0;
    v166 = 5001;
    goto LABEL_95;
  }

  v5 = 0x1EB591000uLL;
  v6 = scnc_server;
  ServiceID = SCNetworkServiceGetServiceID(v4);
  if (!_SCSerializeString(ServiceID, v170, &v169, &v168))
  {
    v12 = 0;
    goto LABEL_95;
  }

  v8 = *(v1 + 208);
  v9 = MEMORY[0x1E69E9A60];
  if (v8)
  {
    Port = CFMachPortGetPort(v8);
    CFMachPortInvalidate(*(v1 + 208));
    CFRelease(*(v1 + 208));
    *(v1 + 208) = 0;
    mach_port_mod_refs(*v9, Port, 1u, -1);
  }

  v11 = audit_session_self();
  v12 = 0;
  v161 = 0;
  *&v13 = 136315138;
  v164 = v13;
  v163 = v1;
  v162 = v11;
  while (1)
  {
    if (*(v1 + 232))
    {
      v14 = name[1] == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = mach_port_allocate(*v9, 1u, &name[1]);
      if (v15)
      {
        v59 = v15;
        v60 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v60 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v60;
        }

        v61 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v60, v61))
        {
          v62 = _os_log_pack_size();
          v70 = &v161 - ((MEMORY[0x1EEE9AC00](v62, v63, v64, v65, v66, v67, v68, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
          v71 = *__error();
          v72 = _os_log_pack_fill();
          v73 = mach_error_string(v59);
          *v72 = v164;
          *(v72 + 4) = v73;
          v74 = v70;
          v9 = MEMORY[0x1E69E9A60];
          __SC_log_send(3, v60, v61, v74);
        }

        v166 = v59;
        v12 = 1;
        if (v11)
        {
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      inserted = mach_port_insert_right(*v9, name[1], name[1], 0x14u);
      if (inserted)
      {
        v75 = inserted;
        v76 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v76 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v76;
        }

        v77 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v76, v77))
        {
          v78 = _os_log_pack_size();
          v86 = &v161 - ((MEMORY[0x1EEE9AC00](v78, v79, v80, v81, v82, v83, v84, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
          v87 = *__error();
          v88 = _os_log_pack_fill();
          v89 = mach_error_string(v75);
          *v88 = v164;
          *(v88 + 4) = v89;
          v90 = v86;
          v9 = MEMORY[0x1E69E9A60];
          __SC_log_send(5, v76, v77, v90);
        }

        v12 = 1;
        mach_port_mod_refs(*v9, name[1], 1u, -1);
        v166 = v75;
        if (v11)
        {
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      v12 = 0;
    }

    if (v6)
    {
      break;
    }

LABEL_38:
    pthread_mutex_lock(&scnc_lock);
    version = *(v5 + 2512);
    if (!version)
    {
      goto LABEL_41;
    }

    if (version == v6)
    {
      scnc_server_name = 0;
      mach_port_deallocate(*v9, v6);
LABEL_41:
      LODWORD(sp.version) = 0;
      v40 = *MEMORY[0x1E69E99F8];
      ControllerPortName = __SCNetworkConnectionGetControllerPortName();
      v166 = bootstrap_look_up(v40, ControllerPortName, &sp);
      if (v166)
      {
        version = 0;
        scnc_server_name = 0;
      }

      else
      {
        version = sp.version;
      }

      *(v5 + 2512) = version;
    }

    pthread_mutex_unlock(&scnc_lock);
    v6 = version;
    if (!version)
    {
      if (v166 != 1102)
      {
        goto LABEL_80;
      }

      v42 = v161;
      if (v161)
      {
        if (v161 > 0x991)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v43 = SCDynamicStoreCreate(0, @"SCNetworkConnection connect", 0, 0);
        if (v43)
        {
          CFRelease(v43);
        }
      }

      v161 = v42 + 50;
      usleep(0xC350u);
      v6 = 0;
    }
  }

  if (!*(v1 + 120) && !*(v1 + 156) && (v17 = *(v1 + 160), v17 == geteuid()) && (v18 = *(v1 + 164), v18 == getegid()) && (v19 = *(v1 + 168), v19 == getpid()))
  {
    v20 = pppcontroller_attach(v6, v169, v168, *MEMORY[0x1E69E99F8], name[1], v11, v3, &v166);
  }

  else
  {
    if (*(v1 + 120))
    {
      v21 = *(v1 + 120);
    }

    else
    {
      v21 = v11;
    }

    if (*(v1 + 156))
    {
      v22 = *(v1 + 156);
    }

    else
    {
      v22 = *MEMORY[0x1E69E99F8];
    }

    v20 = pppcontroller_attach_proxy(v6, v169, v168, v22, name[1], v21, *(v1 + 160), *(v1 + 164), *(v1 + 168), v3, &v166);
  }

  v12 = v20;
  if (v20)
  {
    v23 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v23 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v23;
    }

    v24 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v23, v24))
    {
      v25 = _os_log_pack_size();
      v26 = v5;
      v27 = v3;
      v35 = &v161 - ((MEMORY[0x1EEE9AC00](v25, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = SCErrorString(v12);
      *v37 = v164;
      *(v37 + 4) = v38;
      v3 = v27;
      v5 = v26;
      __SC_log_send(6, v23, v24, v35);
      v11 = v162;
      v1 = v163;
    }

    if (v12 == 268435459)
    {
      v9 = MEMORY[0x1E69E9A60];
    }

    else
    {
      v9 = MEMORY[0x1E69E9A60];
      if (v12 != -308)
      {
        v166 = v12;
        goto LABEL_80;
      }

      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name[1], 1u, -1);
      name[1] = 0;
    }

    goto LABEL_38;
  }

  if (v166)
  {
    v44 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v44 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v44;
    }

    v45 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v44, v45))
    {
      v46 = _os_log_pack_size();
      v54 = &v161 - ((MEMORY[0x1EEE9AC00](v46, v47, v48, v49, v50, v51, v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = *__error();
      v56 = _os_log_pack_fill();
      v57 = SCErrorString(v166);
      v58 = ", w/session_port!=MACH_PORT_NULL";
      if (!*v3)
      {
        v58 = "";
      }

      *v56 = 136315394;
      *(v56 + 4) = v57;
      *(v56 + 12) = 2080;
      *(v56 + 14) = v58;
      __SC_log_send(7, v44, v45, v54);
    }

    if (*v3)
    {
      mach_port_deallocate(*v9, *v3);
      *v3 = 0;
    }

    if (name[1])
    {
      mach_port_mod_refs(*v9, name[1], 1u, -1);
      v12 = 0;
      goto LABEL_92;
    }

    v12 = 0;
    if (!v11)
    {
      goto LABEL_95;
    }

LABEL_94:
    mach_port_deallocate(*v9, v11);
    goto LABEL_95;
  }

  v12 = 0;
LABEL_80:
  if (!name[1])
  {
LABEL_93:
    if (!v11)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (!*v3)
  {
    mach_port_mod_refs(*v9, name[1], 1u, -1);
    mach_port_deallocate(*v9, name[1]);
LABEL_92:
    name[1] = 0;
    goto LABEL_93;
  }

  sp.version = 0;
  sp.info = v1;
  sp.retain = MEMORY[0x1E695D7C8];
  sp.release = MEMORY[0x1E695D7C0];
  sp.copyDescription = pppMPCopyDescription;
  v12 = mach_port_request_notification(*v9, name[1], 70, 1u, name[1], 0x15u, name);
  if (v12)
  {
    v91 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v91 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v91;
    }

    v92 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v91, v92))
    {
      v93 = _os_log_pack_size();
      v101 = &v161 - ((MEMORY[0x1EEE9AC00](v93, v94, v95, v96, v97, v98, v99, v100) + 15) & 0xFFFFFFFFFFFFFFF0);
      v102 = *__error();
      v103 = _os_log_pack_fill();
      v104 = mach_error_string(v12);
      *v103 = v164;
      *(v103 + 4) = v104;
      v105 = v101;
      v9 = MEMORY[0x1E69E9A60];
      __SC_log_send(5, v91, v92, v105);
    }

    mach_port_mod_refs(*v9, name[1], 1u, -1);
    v166 = v12;
    if (v11)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (name[0])
    {
      v148 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v148 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v148;
      }

      v149 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v148, v149))
      {
        v150 = _os_log_pack_size();
        v158 = &v161 - ((MEMORY[0x1EEE9AC00](v150, v151, v152, v153, v154, v155, v156, v157) + 15) & 0xFFFFFFFFFFFFFFF0);
        v159 = *__error();
        *_os_log_pack_fill() = 0;
        v160 = v158;
        v9 = MEMORY[0x1E69E9A60];
        __SC_log_send(5, v148, v149, v160);
      }
    }

    *(v1 + 208) = _SC_CFMachPortCreateWithPort("SCNetworkConnection", name[1], __SCNetworkConnectionMachCallBack, &sp);
    *(v1 + 216) = 0;
    if (v11)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  if (v170[0])
  {
    CFRelease(v170[0]);
  }

  v106 = __log_SCNetworkConnection_log;
  if (v166 == 1102)
  {
    if (!__log_SCNetworkConnection_log)
    {
      v106 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v106;
    }

    if (v12)
    {
      v123 = 3;
    }

    else
    {
      v123 = 5;
    }

    v124 = _SC_syslog_os_log_mapping(v123);
    if (!__SC_log_enabled(v123, v106, v124))
    {
      goto LABEL_119;
    }

    v125 = _os_log_pack_size();
    v133 = &v161 - ((MEMORY[0x1EEE9AC00](v125, v126, v127, v128, v129, v130, v131, v132) + 15) & 0xFFFFFFFFFFFFFFF0);
    v134 = *__error();
    v135 = _os_log_pack_fill();
    *v135 = 136315138;
    *(v135 + 4) = v1 + 88;
  }

  else
  {
    if (!v166)
    {
      if (!__log_SCNetworkConnection_log)
      {
        v106 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v106;
      }

      v107 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v106, v107))
      {
        v108 = _os_log_pack_size();
        v116 = &v161 - ((MEMORY[0x1EEE9AC00](v108, v109, v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
        v117 = *__error();
        v118 = _os_log_pack_fill();
        *v118 = 136315138;
        *(v118 + 4) = v1 + 88;
        v119 = 7;
        v120 = v106;
        v121 = v107;
        v122 = v116;
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    if (!__log_SCNetworkConnection_log)
    {
      v106 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v106;
    }

    if (v12)
    {
      v123 = 3;
    }

    else
    {
      v123 = 5;
    }

    v124 = _SC_syslog_os_log_mapping(v123);
    if (!__SC_log_enabled(v123, v106, v124))
    {
      goto LABEL_119;
    }

    v136 = _os_log_pack_size();
    v133 = &v161 - ((MEMORY[0x1EEE9AC00](v136, v137, v138, v139, v140, v141, v142, v143) + 15) & 0xFFFFFFFFFFFFFFF0);
    v144 = *__error();
    v145 = _os_log_pack_fill();
    v146 = SCErrorString(v166);
    *v145 = 136315394;
    *(v145 + 4) = v1 + 88;
    *(v145 + 12) = 2080;
    *(v145 + 14) = v146;
  }

  v119 = v123;
  v120 = v106;
  v121 = v124;
  v122 = v133;
LABEL_118:
  __SC_log_send(v119, v120, v121, v122);
LABEL_119:
  if (v166)
  {
    _SCErrorSet(v166);
  }

  result = *v3;
LABEL_122:
  v147 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkConnectionNeedsRetry(uint64_t a1, uint64_t a2, mach_error_t a3, mach_error_t *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 268435459:
      goto LABEL_4;
    case 0:
      result = 0;
      goto LABEL_19;
    case -308:
LABEL_4:
      v7 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v7 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v7;
      }

      v8 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v7, v8))
      {
        v9 = _os_log_pack_size();
        v17 = v37 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        *v19 = 136315138;
        *(v19 + 4) = a1 + 88;
        __SC_log_send(7, v7, v8, v17);
      }

      mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 200));
      break;
    default:
      v22 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v22 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v22;
      }

      v23 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v22, v23))
      {
        v24 = _os_log_pack_size();
        v32 = v37 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = mach_error_string(a3);
        *v34 = 136315650;
        *(v34 + 4) = a1 + 88;
        *(v34 + 12) = 2080;
        *(v34 + 14) = a2;
        *(v34 + 22) = 2080;
        *(v34 + 24) = v35;
        __SC_log_send(5, v22, v23, v32);
      }

      break;
  }

  *(a1 + 200) = 0;
  if ((a3 == 268435459 || a3 == -308) && __SCNetworkConnectionSessionPort(a1))
  {
    result = 1;
  }

  else
  {
    result = 0;
    *a4 = a3;
  }

LABEL_19:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionGetService(CFTypeRef cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_6:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_6;
  }

  result = *(cf + 10);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

SCNetworkConnectionStatus SCNetworkConnectionGetStatus(SCNetworkConnectionRef connection)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 1001;
  v19 = -1;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_27:
      v8 = 1002;
      goto LABEL_28;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_27;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_27;
  }

  v3 = *(connection + 10);
  if (!v3 || (ServiceID = SCNetworkServiceGetServiceID(v3), !CFStringGetLength(ServiceID)))
  {
    v8 = 5001;
LABEL_28:
    _SCErrorSet(v8);
    v7 = kSCNetworkConnectionInvalid;
    goto LABEL_29;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v5 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_status();
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v6 = *(v15 + 6) - 1;
    if (v6 > 4)
    {
      v7 = kSCNetworkConnectionInvalid;
    }

    else
    {
      v7 = dword_1AD329728[v6];
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    for (i = 0; ; i += 10)
    {
      do
      {
        v10 = __SCNetworkConnectionSessionPort(connection);
        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = pppcontroller_getstatus(v10, &v19, &v18);
      }

      while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionGetStatus()", v11, &v18));
      if (*(connection + 216) || v18 != 5001 || i > 0xEF)
      {
        break;
      }

      usleep(0x2710u);
    }

    if (v18)
    {
      _SCErrorSet(v18);
LABEL_23:
      v19 = -1;
      goto LABEL_24;
    }

    *(connection + 216) = 1;
LABEL_24:
    pthread_mutex_unlock((connection + 16));
    v7 = v19;
  }

LABEL_29:
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

intptr_t __SCNetworkConnectionGetStatus_block_invoke(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v3 = a1[5];
  *(*(v4 + 8) + 24) = a2;
  ne_session_release();
  v5 = a1[6];
  v6 = *MEMORY[0x1E69E9840];

  return dispatch_semaphore_signal(v5);
}

uint64_t SCNetworkConnectionGetStatusFromNEStatus(int a1)
{
  if ((a1 - 1) > 4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = dword_1AD329728[a1 - 1];
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef SCNetworkConnectionCopyExtendedStatus(SCNetworkConnectionRef connection)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v24 = 0;
  v23 = 0;
  v22 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_35:
      v7 = 1002;
      goto LABEL_36;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_35;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_35;
  }

  v3 = *(connection + 10);
  if (!v3 || (ServiceID = SCNetworkServiceGetServiceID(v3), !CFStringGetLength(ServiceID)))
  {
    v7 = 5001;
LABEL_36:
    _SCErrorSet(v7);
    v6 = 0;
    goto LABEL_37;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v5 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v6 = v19[3];
    if (!v6)
    {
      _SCErrorSet(1001);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = __SCNetworkConnectionSessionPort(connection);
      if (!v9)
      {
        break;
      }

      v10 = pppcontroller_copyextendedstatus(v9, v25, &v24, &v22);
      if (!__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyExtendedStatus()", v10, &v22))
      {
        if (v25[0])
        {
          v11 = _SCUnserialize(&v23, 0, v25[0], v24);
          v12 = v22;
          if (!v11 && v22)
          {
            v12 = SCError();
            v22 = v12;
          }

          if (!v12)
          {
            v13 = v23;
            TypeID = CFDictionaryGetTypeID();
            if (!v13 || CFGetTypeID(v13) != TypeID)
            {
              v15 = 1001;
              v22 = 1001;
LABEL_30:
              if (v23)
              {
                CFRelease(v23);
                v23 = 0;
                v15 = v22;
              }

              _SCErrorSet(v15);
              break;
            }
          }
        }

        v15 = v22;
        if (*(connection + 216) || v22 != 5001 || v8 > 0xEF)
        {
          if (!v22)
          {
            *(connection + 216) = 1;
            break;
          }

          goto LABEL_30;
        }

        v8 += 10;
        usleep(0x2710u);
      }
    }

    pthread_mutex_unlock((connection + 16));
    v6 = v23;
  }

LABEL_37:
  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

intptr_t __SCNetworkConnectionCopyExtendedStatus_block_invoke(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(a1[4] + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    v3 = a1[5];
    ne_session_release();
    v4 = a1[6];
    v5 = *MEMORY[0x1E69E9840];

    return dispatch_semaphore_signal(v4);
  }

  else
  {
    v7 = a1[5];
    if (__SCNetworkConnectionQueue_once != -1)
    {
      __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1();
    }

    v9 = *(a1 + 2);
    v10 = a1[6];
    result = ne_session_get_status();
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

intptr_t __SCNetworkConnectionCopyExtendedStatus_block_invoke_2(uint64_t a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 5)
  {
    valuePtr = -1;
  }

  else
  {
    valuePtr = dword_1AD329728[a2 - 1];
    keys[0] = @"Status";
    v3 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
  }

  v4 = *(a1 + 40);
  ne_session_release();
  result = dispatch_semaphore_signal(*(a1 + 48));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCNetworkConnectionStart(SCNetworkConnectionRef connection, CFDictionaryRef userOptions, Boolean linger)
{
  v3 = linger;
  v83[1] = *MEMORY[0x1E69E9840];
  v82 = 0;
  v83[0] = 0;
  v81 = 0;
  v80 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
      goto LABEL_71;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_71;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v6)
  {
    goto LABEL_71;
  }

  if (!userOptions)
  {
    userOptions = *(connection + 40);
    goto LABEL_10;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(userOptions) != TypeID)
  {
LABEL_71:
    _SCErrorSet(1002);
    v76 = 0;
    goto LABEL_72;
  }

  if (*(connection + 40))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, userOptions);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      CFDictionaryApplyFunction(*(connection + 40), _SCNetworkConnectionMergeDictionaries, MutableCopy);
      CFRelease(*(connection + 40));
      *(connection + 40) = v9;
      userOptions = v9;
    }
  }

LABEL_10:
  if (debug >= 1)
  {
    v10 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v10;
    }

    v11 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = &v79[-((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136315138;
      *(v22 + 4) = connection + 88;
      __SC_log_send(6, v10, v11, v20);
    }

    if (userOptions)
    {
      v23 = CFDictionaryCreateMutableCopy(0, 0, userOptions);
      Value = CFDictionaryGetValue(v23, @"PPP");
      v25 = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v25)
        {
          v26 = CFDictionaryGetValue(Value, @"AuthPasswordEncryption");
          v27 = CFStringGetTypeID();
          if (!v26 || CFGetTypeID(v26) != v27 || !CFEqual(v26, @"Keychain"))
          {
            v28 = CFDictionaryCreateMutableCopy(0, 0, Value);
            CFDictionaryReplaceValue(v28, @"AuthPassword", @"******");
            CFDictionarySetValue(v23, @"PPP", v28);
            CFRelease(v28);
          }
        }
      }

      v29 = CFDictionaryGetValue(v23, @"L2TP");
      v30 = CFDictionaryGetTypeID();
      if (v29)
      {
        if (CFGetTypeID(v29) == v30)
        {
          v31 = CFDictionaryGetValue(v29, @"IPSecSharedSecretEncryption");
          v32 = CFStringGetTypeID();
          if (!v31 || CFGetTypeID(v31) != v32 || !CFEqual(v31, @"Keychain"))
          {
            v33 = CFDictionaryCreateMutableCopy(0, 0, v29);
            CFDictionaryReplaceValue(v33, @"IPSecSharedSecret", @"******");
            CFDictionarySetValue(v23, @"L2TP", v33);
            CFRelease(v33);
          }
        }
      }

      v34 = CFDictionaryGetValue(v23, @"IPSec");
      v35 = CFDictionaryGetTypeID();
      if (v34)
      {
        if (CFGetTypeID(v34) == v35)
        {
          v36 = CFDictionaryGetValue(v34, @"SharedSecretEncryption");
          v37 = CFStringGetTypeID();
          if (!v36 || CFGetTypeID(v36) != v37 || !CFEqual(v36, @"Keychain"))
          {
            v38 = CFDictionaryCreateMutableCopy(0, 0, v34);
            CFDictionaryReplaceValue(v38, @"SharedSecret", @"******");
            CFDictionarySetValue(v23, @"IPSec", v38);
            CFRelease(v38);
          }
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v39 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v39 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v39;
    }

    v40 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v39, v40))
    {
      v41 = _os_log_pack_size();
      v49 = &v79[-((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v50 = *__error();
      v51 = _os_log_pack_fill();
      *v51 = 138412290;
      *(v51 + 4) = v23;
      __SC_log_send(6, v39, v40, v49);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  pthread_mutex_lock((connection + 16));
  v52 = *(connection + 42);
  if (v52)
  {
    CFRelease(v52);
    *(connection + 42) = 0;
  }

  if (*(connection + 43))
  {
    if (userOptions)
    {
      v53 = _CFXPCCreateXPCObjectFromCFObject();
    }

    else
    {
      v53 = 0;
    }

    v70 = *(connection + 43);
    if (*(connection + 39))
    {
      v71 = *(connection + 30);
      v72 = *(connection + 40);
      v73 = *(connection + 41);
      v74 = *(connection + 42);
      ne_session_start_on_behalf_of();
    }

    else
    {
      ne_session_start_with_options();
    }

    v75 = *(connection + 43);
    ne_session_send_barrier();
    if (v53)
    {
      xpc_release(v53);
    }
  }

  else
  {
    if (userOptions && !_SCSerialize(userOptions, v83, &v82, &v81))
    {
LABEL_68:
      v76 = 0;
      goto LABEL_69;
    }

    do
    {
      v54 = __SCNetworkConnectionSessionPort(connection);
      if (!v54)
      {
        if (v83[0])
        {
          CFRelease(v83[0]);
        }

        goto LABEL_68;
      }

      v55 = pppcontroller_start(v54, v82, v81, v3, &v80);
    }

    while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionStart()", v55, &v80));
    if (v83[0])
    {
      CFRelease(v83[0]);
    }

    if (debug >= 1)
    {
      v56 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v56 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v56;
      }

      v57 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v56, v57))
      {
        v58 = _os_log_pack_size();
        v66 = &v79[-((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v67 = *__error();
        v68 = _os_log_pack_fill();
        v69 = v80;
        *v68 = 136315394;
        *(v68 + 4) = connection + 88;
        *(v68 + 12) = 1024;
        *(v68 + 14) = v69;
        __SC_log_send(6, v56, v57, v66);
      }
    }

    if (v80)
    {
      _SCErrorSet(v80);
      goto LABEL_68;
    }
  }

  v76 = 1;
LABEL_69:
  pthread_mutex_unlock((connection + 16));
LABEL_72:
  v77 = *MEMORY[0x1E69E9840];
  return v76;
}

void _SCNetworkConnectionMergeDictionaries(void *key, void *value, CFMutableDictionaryRef theDict)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  CFDictionaryAddValue(theDict, key, value);
}

Boolean SCNetworkConnectionStop(SCNetworkConnectionRef connection, Boolean forceDisconnect)
{
  v2 = forceDisconnect;
  v40 = *MEMORY[0x1E69E9840];
  v39 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_24:
      _SCErrorSet(1002);
      v19 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_24;
    }
  }

  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v4)
  {
    goto LABEL_24;
  }

  if (debug >= 1)
  {
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = &v38[-((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136315138;
      *(v17 + 4) = connection + 88;
      __SC_log_send(6, v5, v6, v15);
    }
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    ne_session_stop();
    v18 = *(connection + 43);
    ne_session_send_barrier();
  }

  else
  {
    do
    {
      v20 = __SCNetworkConnectionSessionPort(connection);
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = pppcontroller_stop(v20, v2, &v39);
    }

    while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionStop()", v21, &v39));
    if (debug >= 1)
    {
      v22 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v22 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v22;
      }

      v23 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v22, v23))
      {
        v24 = _os_log_pack_size();
        v32 = &v38[-((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v33 = *__error();
        v34 = _os_log_pack_fill();
        v35 = v39;
        *v34 = 136315394;
        *(v34 + 4) = connection + 88;
        *(v34 + 12) = 1024;
        *(v34 + 14) = v35;
        __SC_log_send(6, v22, v23, v32);
      }
    }

    if (v39)
    {
      _SCErrorSet(v39);
LABEL_21:
      v19 = 0;
      goto LABEL_22;
    }
  }

  v19 = 1;
LABEL_22:
  pthread_mutex_unlock((connection + 16));
LABEL_25:
  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t SCNetworkConnectionSuspend(char *cf)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      _SCErrorSet(1002);
      v32 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_23;
  }

  if (debug >= 1)
  {
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v35[-((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315138;
      *(v15 + 4) = cf + 88;
      __SC_log_send(6, v3, v4, v13);
    }
  }

  pthread_mutex_lock((cf + 16));
  do
  {
    v16 = __SCNetworkConnectionSessionPort(cf);
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = pppcontroller_suspend(v16, &v36);
  }

  while (__SCNetworkConnectionNeedsRetry(cf, "SCNetworkConnectionSuspend()", v17, &v36));
  if (debug >= 1)
  {
    v18 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v18 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v18;
    }

    v19 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = &v35[-((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = v36;
      *v30 = 136315394;
      *(v30 + 4) = cf + 88;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v31;
      __SC_log_send(6, v18, v19, v28);
    }
  }

  if (v36)
  {
    _SCErrorSet(v36);
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v32 = 1;
LABEL_20:
  pthread_mutex_unlock((cf + 16));
LABEL_24:
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t SCNetworkConnectionResume(char *cf)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      _SCErrorSet(1002);
      v16 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_23;
  }

  if (debug >= 1)
  {
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v13 = &v35[-((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315138;
      *(v15 + 4) = cf + 88;
      __SC_log_send(6, v3, v4, v13);
    }
  }

  pthread_mutex_lock((cf + 16));
  if (!*(cf + 43))
  {
    do
    {
      v17 = __SCNetworkConnectionSessionPort(cf);
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = pppcontroller_resume(v17, &v36);
    }

    while (__SCNetworkConnectionNeedsRetry(cf, "SCNetworkConnectionResume()", v18, &v36));
    if (debug >= 1)
    {
      v19 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v19 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v19;
      }

      v20 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v19, v20))
      {
        v21 = _os_log_pack_size();
        v29 = &v35[-((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v30 = *__error();
        v31 = _os_log_pack_fill();
        v32 = v36;
        *v31 = 136315394;
        *(v31 + 4) = cf + 88;
        *(v31 + 12) = 1024;
        *(v31 + 14) = v32;
        __SC_log_send(6, v19, v20, v29);
      }
    }

    if (v36)
    {
      _SCErrorSet(v36);
LABEL_20:
      v16 = 0;
      goto LABEL_21;
    }
  }

  v16 = 1;
LABEL_21:
  pthread_mutex_unlock((cf + 16));
LABEL_24:
  v33 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t SCNetworkConnectionRefreshOnDemandState()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

CFDictionaryRef SCNetworkConnectionCopyUserOptions(SCNetworkConnectionRef connection)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v19 = 1001;
  v20 = 0;
  v18 = 0;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_35:
      _SCErrorSet(1002);
      v4 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_35;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_35;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v3 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    if (v15[3] && MEMORY[0x1B26F5920]() == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(v15[3], "SessionLegacyUserConfiguration"))
      {
        v4 = _CFXPCCreateCFObjectFromXPCObject();
      }

      else
      {
        v4 = 0;
      }

      xpc_release(v15[3]);
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v14, 8);
    goto LABEL_36;
  }

  do
  {
    v5 = __SCNetworkConnectionSessionPort(connection);
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = pppcontroller_copyuseroptions(v5, v21, &v20, &v19);
  }

  while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyUserOptions()", v6, &v19));
  if (!v21[0])
  {
    v9 = 0;
LABEL_23:
    v8 = v19;
    goto LABEL_24;
  }

  v7 = _SCUnserialize(&v18, 0, v21[0], v20);
  v8 = v19;
  if (!v7 && v19)
  {
    v8 = SCError();
    v19 = v8;
  }

  v9 = v18;
  if (!v8 && v18)
  {
    TypeID = CFDictionaryGetTypeID();
    v11 = CFGetTypeID(v9);
    v9 = v18;
    if (v11 != TypeID)
    {
      v8 = 1001;
      v19 = 1001;
LABEL_25:
      if (v9)
      {
        CFRelease(v9);
        v18 = 0;
        v8 = v19;
      }

      _SCErrorSet(v8);
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (v8)
  {
    goto LABEL_25;
  }

  if (!v9)
  {
    v18 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_30:
  pthread_mutex_unlock((connection + 16));
  v4 = v18;
LABEL_36:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

intptr_t __SCNetworkConnectionCopyUserOptions_block_invoke(void *a1, xpc_object_t object)
{
  v7 = *MEMORY[0x1E69E9840];
  if (object)
  {
    *(*(a1[4] + 8) + 24) = xpc_retain(object);
  }

  v3 = a1[5];
  ne_session_release();
  v4 = a1[6];
  v5 = *MEMORY[0x1E69E9840];

  return dispatch_semaphore_signal(v4);
}

Boolean SCNetworkConnectionScheduleWithRunLoop(SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (connection)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!connection)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCNetworkConnectionTypeID;
  v7 = CFGetTypeID(connection);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69E9840];

  return __SCNetworkConnectionScheduleWithRunLoop(connection, runLoop, runLoopMode, 0);
}

uint64_t __SCNetworkConnectionScheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3, NSObject *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v53 = 1001;
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 232) || *(a1 + 288))
  {
    goto LABEL_3;
  }

  v12 = *(a1 + 217);
  if (!a4)
  {
    if (!*(a1 + 217))
    {
      goto LABEL_11;
    }

LABEL_27:
    if (!_SC_isScheduled(a1, a2, a3, *(a1 + 280)))
    {
      CFRunLoopAddSource(a2, *(a1 + 224), a3);
    }

    _SC_schedule(a1, a2, a3, *(a1 + 280));
    goto LABEL_30;
  }

  if (*(a1 + 217))
  {
LABEL_3:
    v8 = 1002;
    goto LABEL_4;
  }

  do
  {
LABEL_11:
    if (*(a1 + 344))
    {
      if (!a2)
      {
        goto LABEL_20;
      }

      v52.version = 0;
      v52.info = a1;
      v52.retain = MEMORY[0x1E695D7C8];
      v52.release = MEMORY[0x1E695D7C0];
      memset(&v52.copyDescription, 0, 40);
      v52.perform = __SCNetworkConnectionCallBack;
      RunLoopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v52);
      goto LABEL_19;
    }

    v13 = __SCNetworkConnectionSessionPort(a1);
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = pppcontroller_notification(v13, 1, &v53);
  }

  while (__SCNetworkConnectionNeedsRetry(a1, "__SCNetworkConnectionScheduleWithRunLoop()", v14, &v53));
  v8 = v53;
  if (v53)
  {
    goto LABEL_4;
  }

  if (a2)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(0, *(a1 + 208), 0);
LABEL_19:
    *(a1 + 224) = RunLoopSource;
    *(a1 + 280) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

LABEL_20:
  *(a1 + 217) = 1;
  if (!a4)
  {
    goto LABEL_27;
  }

  *(a1 + 288) = a4;
  dispatch_retain(a4);
  if (*(a1 + 344))
  {
LABEL_30:
    if (*(a1 + 344))
    {
      CFRetain(a1);
      v22 = *(a1 + 344);
      if (__SCNetworkConnectionQueue_once != -1)
      {
        SCNetworkConnectionCopyStatistics_cold_2();
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v48[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_3;
      v48[3] = &__block_descriptor_tmp_137;
      v48[4] = a1;
      v48[5] = a1;
      ne_session_set_event_handler();
    }

    v23 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v23 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v23;
    }

    v24 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v23, v24))
    {
      v25 = _os_log_pack_size();
      v33 = v48 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 136315138;
      *(v35 + 4) = a1 + 88;
      __SC_log_send(7, v23, v24, v33);
    }

    v9 = 1;
    goto LABEL_6;
  }

  v16 = *(a1 + 208);
  Port = CFMachPortGetPort(v16);
  if (Port)
  {
    v18 = Port;
    v19 = Port;
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    v20 = dispatch_source_create(MEMORY[0x1E69E96D8], v19, 0, __SCNetworkConnectionQueue_q);
    if (v20)
    {
      v21 = v20;
      CFRetain(a1);
      dispatch_set_context(v21, a1);
      dispatch_set_finalizer_f(v21, dispatch_CFRelease_0);
      CFRetain(v16);
      dispatch_retain(a4);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 0x40000000;
      v50[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke;
      v50[3] = &__block_descriptor_tmp_133;
      v51 = v18;
      v50[4] = a1;
      v50[5] = a4;
      dispatch_source_set_event_handler(v21, v50);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 0x40000000;
      v49[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_2;
      v49[3] = &__block_descriptor_tmp_134;
      v49[4] = v16;
      v49[5] = v21;
      v49[6] = a4;
      dispatch_source_set_cancel_handler(v21, v49);
      *(a1 + 296) = v21;
      dispatch_resume(v21);
      goto LABEL_30;
    }

    v36 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v36 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v36;
    }

    v37 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v36, v37))
    {
      v38 = _os_log_pack_size();
      v46 = v48 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v36, v37, v46);
    }
  }

  dispatch_release(*(a1 + 288));
  *(a1 + 288) = 0;
  v8 = 1001;
LABEL_4:
  _SCErrorSet(v8);
LABEL_5:
  v9 = 0;
LABEL_6:
  pthread_mutex_unlock((a1 + 16));
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

Boolean SCNetworkConnectionUnscheduleFromRunLoop(SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (connection)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!connection)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCNetworkConnectionTypeID;
  v7 = CFGetTypeID(connection);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69E9840];

  return __SCNetworkConnectionUnscheduleFromRunLoop(connection, runLoop, runLoopMode);
}

uint64_t __SCNetworkConnectionUnscheduleFromRunLoop(uint64_t a1, void *a2, const __CFString *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  HIDWORD(v27) = 1001;
  CFRetain(a1);
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    if (*(a1 + 217) && !*(a1 + 288))
    {
      if (!_SC_unschedule(a1, a2, a3, *(a1 + 280), 0))
      {
        v22 = 1001;
        goto LABEL_20;
      }

      if (CFArrayGetCount(*(a1 + 280)))
      {
        if (!_SC_isScheduled(a1, a2, a3, *(a1 + 280)))
        {
          CFRunLoopRemoveSource(a2, *(a1 + 224), a3);
        }

        goto LABEL_14;
      }

      v7 = (a1 + 224);
      CFRunLoopRemoveSource(a2, *(a1 + 224), a3);
      CFRelease(*(a1 + 280));
      *(a1 + 280) = 0;
      CFRunLoopSourceInvalidate(*(a1 + 224));
      CFRelease(*(a1 + 224));
      goto LABEL_11;
    }

LABEL_19:
    v22 = 1002;
    goto LABEL_20;
  }

  v6 = *(a1 + 288);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = (a1 + 288);
  if (*(a1 + 344) || !*(a1 + 296) || (dispatch_source_cancel(*(a1 + 296)), *(a1 + 296) = 0, (v6 = *(a1 + 288)) != 0))
  {
    dispatch_release(v6);
LABEL_11:
    *v7 = 0;
  }

  *(a1 + 217) = 0;
  if (!*(a1 + 344))
  {
    v25 = __SCNetworkConnectionSessionPort(a1);
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = pppcontroller_notification(v25, 0, &v27 + 1);
    if (__SCNetworkConnectionNeedsRetry(a1, "__SCNetworkConnectionUnscheduleFromRunLoop pppcontroller_notification()", v26, &v27 + 1))
    {
      v22 = 0;
      HIDWORD(v27) = 0;
      goto LABEL_33;
    }

    v22 = HIDWORD(v27);
    if (!v26)
    {
LABEL_33:
      if (!v22)
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    _SCErrorSet(v22);
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  ne_session_cancel();
LABEL_14:
  v8 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v8 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v8;
  }

  v9 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v8, v9))
  {
    v10 = _os_log_pack_size();
    v18 = &v27 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = a1 + 88;
    __SC_log_send(7, v8, v9, v18);
  }

  v21 = 1;
LABEL_22:
  pthread_mutex_unlock((a1 + 16));
  CFRelease(a1);
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

Boolean SCNetworkConnectionSetDispatchQueue(SCNetworkConnectionRef connection, dispatch_queue_t queue)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_12:
      _SCErrorSet(1002);
      v8 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_12;
    }
  }

  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v4)
  {
    goto LABEL_12;
  }

  if (queue)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __SCNetworkConnectionScheduleWithRunLoop(connection, 0, 0, queue);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    return __SCNetworkConnectionUnscheduleFromRunLoop(connection, 0, 0);
  }
}

uint64_t SCNetworkConnectionIsOnDemandSuspended(const __CFDictionary **cf)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_12:
      v7 = 1002;
      goto LABEL_13;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_12;
  }

  v3 = cf[39];
  if (!v3 || (valuePtr = 0, Value = CFDictionaryGetValue(v3, @"OnDemandSuspended"), TypeID = CFNumberGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) || !valuePtr)
  {
    v7 = 0;
LABEL_13:
    _SCErrorSet(v7);
    result = 0;
    goto LABEL_14;
  }

  result = 1;
LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionTriggerOnDemandIfNeeded()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t SCNetworkConnectionCopyOnDemandInfo(CFDictionaryRef *cf, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_22:
      v13 = 1002;
      goto LABEL_23;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_22;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_22;
  }

  if (!cf[10])
  {
    v13 = 5001;
LABEL_23:
    _SCErrorSet(v13);
    result = 0;
    goto LABEL_24;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = -1;
  }

  v7 = cf[39];
  if (v7)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(v7, @"RemoteAddress");
      TypeID = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          *a2 = Value;
          CFRetain(Value);
        }
      }
    }

    if (a3)
    {
      valuePtr = 0;
      v10 = CFDictionaryGetValue(cf[39], @"Status");
      v11 = CFNumberGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11 && CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
        {
          *a3 = valuePtr;
        }
      }
    }
  }

  result = *(cf + 308);
LABEL_24:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionGetReachabilityInfo(CFDictionaryRef *cf, _DWORD *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      v13 = 1002;
      goto LABEL_24;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_23;
  }

  if (!cf[10])
  {
    v13 = 5001;
LABEL_24:
    _SCErrorSet(v13);
    result = 0;
    goto LABEL_25;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = cf[39];
  if (v7)
  {
    if (a2)
    {
      valuePtr = 0;
      Value = CFDictionaryGetValue(v7, @"ReachFlags");
      TypeID = CFNumberGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID && CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
        {
          *a2 = valuePtr;
        }
      }
    }

    if (a3)
    {
      valuePtr = 0;
      v10 = CFDictionaryGetValue(cf[39], @"ReachInterfaceIndex");
      v11 = CFNumberGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11 && CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
        {
          *a3 = valuePtr;
        }
      }
    }
  }

  result = 1;
LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionGetType(unsigned int *cf)
{
  v6 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      v4 = 1002;
      goto LABEL_9;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  if (!*(cf + 10))
  {
    v4 = 5001;
LABEL_9:
    _SCErrorSet(v4);
    result = 0;
    goto LABEL_10;
  }

  _SCErrorSet(0);
  result = cf[76];
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkConnectionCopyFlowDivertToken()
{
  v2 = *MEMORY[0x1E69E9840];
  _SCErrorSet(1001);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t SCNetworkConnectionGetServiceIdentifier(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    valuePtr = 0;
    result = *(a1 + 312);
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"ServiceIdentifier");
      TypeID = CFNumberGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        result = valuePtr;
      }

      else
      {
        result = 0;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SC_domainEndsWithDomain(const __CFString *a1, const __CFString *cf1)
{
  v2 = cf1;
  v12 = *MEMORY[0x1E69E9840];
  if (CFEqual(cf1, @"*"))
  {
    v4 = 1;
    goto LABEL_22;
  }

  HasSuffix = CFStringHasSuffix(a1, @".");
  if (HasSuffix)
  {
    v13.length = CFStringGetLength(a1) - 1;
    v13.location = 0;
    a1 = CFStringCreateWithSubstring(0, a1, v13);
    if (!a1)
    {
      v4 = 0;
      goto LABEL_22;
    }
  }

  v6 = CFStringHasSuffix(v2, @".");
  if (v6)
  {
    v14.length = CFStringGetLength(v2) - 1;
    v14.location = 0;
    v2 = CFStringCreateWithSubstring(0, v2, v14);
    if (!v2)
    {
      v4 = 0;
      v7 = 0;
      if (!HasSuffix)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (!CFStringHasPrefix(v2, @"*."))
  {
    v9 = v2;
    goto LABEL_16;
  }

  v15.length = CFStringGetLength(v2) - 2;
  v15.location = 2;
  v8 = CFStringCreateWithSubstring(0, v2, v15);
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      CFRelease(v2);
    }

    v7 = 1;
LABEL_16:
    v4 = CFStringHasSuffix(a1, v9);
    v2 = v9;
    if (!HasSuffix)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(a1);
    goto LABEL_20;
  }

  v4 = 0;
  if (HasSuffix)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v7)
  {
    CFRelease(v2);
  }

LABEL_22:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _SC_hostMatchesDomain(const __CFString *a1, const __CFString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (v5 = CFStringGetTypeID(), a2) && CFGetTypeID(a2) == v5)
  {
    StringByTrimmingDotsAndStars = _SC_createStringByTrimmingDotsAndStars(a1);
    v7 = _SC_createStringByTrimmingDotsAndStars(a2);
    v8 = CFStringGetTypeID();
    if (StringByTrimmingDotsAndStars)
    {
      if (CFGetTypeID(StringByTrimmingDotsAndStars) != v8 || (v9 = CFStringGetTypeID(), !v7) || CFGetTypeID(v7) != v9)
      {
        v13 = 0;
        goto LABEL_14;
      }

      CountOfStringInString = _SC_getCountOfStringInString(StringByTrimmingDotsAndStars);
      v11 = _SC_getCountOfStringInString(v7);
      if (CountOfStringInString == v11)
      {
        HasSuffix = CFEqual(StringByTrimmingDotsAndStars, v7);
      }

      else
      {
        v13 = 0;
        if (v11 < 1 || v11 >= CountOfStringInString)
        {
LABEL_14:
          CFRelease(StringByTrimmingDotsAndStars);
          if (!v7)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }

        v17.location = 0;
        v17.length = 0;
        CFStringReplace(v7, v17, @".");
        HasSuffix = CFStringHasSuffix(StringByTrimmingDotsAndStars, v7);
      }

      v13 = HasSuffix;
      goto LABEL_14;
    }

    v13 = 0;
    if (v7)
    {
LABEL_17:
      CFRelease(v7);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

CFMutableStringRef _SC_createStringByTrimmingDotsAndStars(CFStringRef theString)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  if (!_SC_getNotDotOrStarCharacterSet_notDotOrStar)
  {
    v3 = CFCharacterSetCreateWithCharactersInString(v2, @".*");
    if (v3)
    {
      v4 = v3;
      _SC_getNotDotOrStarCharacterSet_notDotOrStar = CFCharacterSetCreateInvertedSet(v2, v3);
      CFRelease(v4);
    }
  }

  v5 = _SC_getNotDotOrStarCharacterSet_notDotOrStar;
  Length = CFStringGetLength(theString);
  MutableCopy = CFStringCreateMutableCopy(v2, Length, theString);
  result.location = 0;
  result.length = 0;
  v13.location = Length;
  v13.length = 0;
  v17.location = 0;
  v17.length = Length;
  if (CFStringFindCharacterFromSet(theString, v5, v17, 0, &result))
  {
    v18.location = 0;
    v18.length = Length;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, v5, v18, 4uLL, &v13);
    location = v13.location;
    if (CharacterFromSet && (result.location == -1 || v13.location == -1 || result.location > v13.location))
    {
      CFRelease(MutableCopy);
      MutableCopy = 0;
      goto LABEL_15;
    }
  }

  else
  {
    location = Length;
  }

  if (Length > location + 1)
  {
    v16.location = location + 1;
    v16.length = Length - (location + 1);
    CFStringReplace(MutableCopy, v16, &stru_1F22591E8);
  }

  v10.length = result.location;
  if (result.location >= 1)
  {
    v10.location = 0;
    CFStringReplace(MutableCopy, v10, &stru_1F22591E8);
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

CFIndex _SC_getCountOfStringInString(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v10.length = CFStringGetLength(a1);
  v10.location = 0;
  Results = CFStringCreateArrayWithFindResults(v2, a1, @".", v10, 0);
  if (Results)
  {
    v4 = Results;
    Count = CFArrayGetCount(Results);
    CFRelease(v4);
    v6 = *MEMORY[0x1E69E9840];
    return Count;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCNetworkConnectionCopyOnDemandInfoWithName(uint64_t a1, const __CFString *a2, int a3, CFTypeRef *a4, _DWORD *a5, CFTypeRef *a6)
{
  v73 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v11 = __SCNetworkConnectionCopyOnDemandConfiguration();
  if (!v11)
  {
    goto LABEL_60;
  }

  v12 = v11;
  v13 = __SCNetworkConnectionCopyMatchingTriggerWithName(v11, a2, 0, a3, 0, &v72, 0);
  v14 = v13;
  if (!v13 || !v72)
  {
    if (!v13)
    {
      CFRelease(v12);
      v36 = 0;
      goto LABEL_59;
    }

    v36 = 0;
    goto LABEL_55;
  }

  value = 0;
  valuePtr = 0;
  if (!CFDictionaryGetValueIfPresent(v13, @"Status", &value) || (v15 = value, TypeID = CFNumberGetTypeID(), !v15) || CFGetTypeID(v15) != TypeID || !CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
  {
    valuePtr = 0;
  }

  if (a5)
  {
    *a5 = valuePtr;
  }

  if (!a4)
  {
LABEL_16:
    v19 = 0;
    if (!a6)
    {
      goto LABEL_17;
    }

LABEL_35:
    v51 = CFDictionaryGetValue(v14, @"RemoteAddress");
    *a6 = v51;
    v52 = CFStringGetTypeID();
    if (v51 && CFGetTypeID(v51) == v52)
    {
      *a6 = v51;
      if (CFStringGetLength(v51) >= 1)
      {
        CFRetain(*a6);
        if (!v19)
        {
          goto LABEL_18;
        }

        goto LABEL_48;
      }
    }

    else
    {
      *a6 = 0;
    }

    v53 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v53 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v53;
    }

    v54 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v53, v54))
    {
      v55 = _os_log_pack_size();
      v63 = &v69[-((MEMORY[0x1EEE9AC00](v55, v56, v57, v58, v59, v60, v61, v62) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v64 = *__error();
      v65 = _os_log_pack_fill();
      v66 = " (on retry)";
      if (!a3)
      {
        v66 = "";
      }

      *v65 = 136315138;
      *(v65 + 4) = v66;
      __SC_log_send(6, v53, v54, v63);
    }

    *a6 = 0;
LABEL_48:
    if (a4 && *a4)
    {
      CFRelease(*a4);
      *a4 = 0;
    }

    if (a6 && *a6)
    {
      CFRelease(*a6);
      *a6 = 0;
    }

    v36 = 1001;
LABEL_55:
    v35 = 1;
    goto LABEL_56;
  }

  v17 = CFDictionaryGetValue(v14, @"ServiceID");
  *a4 = v17;
  v18 = CFStringGetTypeID();
  if (v17 && CFGetTypeID(v17) == v18)
  {
    *a4 = v17;
    if (CFStringGetLength(v17) >= 1)
    {
      CFRetain(*a4);
      goto LABEL_16;
    }
  }

  else
  {
    *a4 = 0;
  }

  v37 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v37 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v37;
  }

  v38 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v37, v38))
  {
    v39 = _os_log_pack_size();
    v47 = &v69[-((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v48 = *__error();
    v49 = _os_log_pack_fill();
    v50 = " (on retry)";
    if (!a3)
    {
      v50 = "";
    }

    *v49 = 136315138;
    *(v49 + 4) = v50;
    __SC_log_send(6, v37, v38, v47);
  }

  *a4 = 0;
  v19 = 1;
  if (a6)
  {
    goto LABEL_35;
  }

LABEL_17:
  if (v19)
  {
    goto LABEL_48;
  }

LABEL_18:
  v20 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v20 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v20;
  }

  v21 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v20, v21))
  {
    v22 = _os_log_pack_size();
    v30 = &v69[-((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v31 = *__error();
    v32 = _os_log_pack_fill();
    v33 = " (on retry)";
    v34 = valuePtr;
    if (!a3)
    {
      v33 = "";
    }

    *v32 = 136315394;
    *(v32 + 4) = v33;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v34;
    __SC_log_send(6, v20, v21, v30);
  }

  v35 = 0;
  v36 = 0;
LABEL_56:
  CFRelease(v14);
  CFRelease(v12);
  if (v35)
  {
LABEL_59:
    LODWORD(v11) = v36;
LABEL_60:
    _SCErrorSet(v11);
    result = 0;
    goto LABEL_61;
  }

  result = 1;
LABEL_61:
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef __SCNetworkConnectionCopyOnDemandConfiguration()
{
  v64 = *MEMORY[0x1E69E9840];
  check = 1;
  state64 = 0;
  pthread_mutex_lock(&onDemand_notify_lock);
  v0 = onDemand_notify_token;
  if (onDemand_notify_token == -1)
  {
    v16 = notify_register_check("com.apple.system.SCNetworkConnectionOnDemand", &onDemand_notify_token);
    if (v16)
    {
      v17 = v16;
      v18 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v18 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v18;
      }

      v19 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v18, v19))
      {
        v20 = _os_log_pack_size();
        v28 = &v61 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        *v30 = 67109120;
        v30[1] = v17;
        __SC_log_send(5, v18, v19, v28);
      }

      goto LABEL_14;
    }

    v0 = onDemand_notify_token;
    if (onDemand_notify_token == -1)
    {
      goto LABEL_15;
    }
  }

  v1 = notify_check(v0, &check);
  if (v1)
  {
    v2 = v1;
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_8;
    }

    v5 = _os_log_pack_size();
    v13 = &v61 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *__error();
LABEL_7:
    v15 = _os_log_pack_fill();
    *v15 = 67109120;
    v15[1] = v2;
    __SC_log_send(5, v3, v4, v13);
LABEL_8:
    notify_cancel(onDemand_notify_token);
LABEL_14:
    onDemand_notify_token = -1;
    goto LABEL_15;
  }

  if (check)
  {
    if (onDemand_notify_token != -1)
    {
      state = notify_get_state(onDemand_notify_token, &state64);
      if (state)
      {
        v2 = state;
        v3 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v3;
        }

        v4 = _SC_syslog_os_log_mapping(5);
        if (!__SC_log_enabled(5, v3, v4))
        {
          goto LABEL_8;
        }

        v52 = _os_log_pack_size();
        v13 = &v61 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
        v60 = *__error();
        goto LABEL_7;
      }
    }
  }

LABEL_15:
  if (check || onDemand_force_refresh)
  {
    v31 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v31 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v31;
    }

    v32 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v31, v32))
    {
      v33 = _os_log_pack_size();
      v41 = &v61 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = *__error();
      v43 = _os_log_pack_fill();
      if (onDemand_configuration)
      {
        v44 = "updated";
      }

      else
      {
        v44 = "fetched";
      }

      *v43 = 136315138;
      *(v43 + 4) = v44;
      __SC_log_send(6, v31, v32, v41);
    }

    if (onDemand_configuration)
    {
      CFRelease(onDemand_configuration);
      onDemand_configuration = 0;
    }

    if (state64 || onDemand_force_refresh)
    {
      NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"OnDemand");
      onDemand_configuration = SCDynamicStoreCopyValue(0, NetworkGlobalEntity);
      CFRelease(NetworkGlobalEntity);
      v46 = onDemand_configuration;
      if (onDemand_configuration)
      {
        TypeID = CFDictionaryGetTypeID();
        if (CFGetTypeID(v46) != TypeID)
        {
          CFRelease(onDemand_configuration);
          onDemand_configuration = 0;
        }
      }
    }

    onDemand_force_refresh = 0;
  }

  if (onDemand_configuration)
  {
    v48 = CFRetain(onDemand_configuration);
  }

  else
  {
    v48 = 0;
  }

  pthread_mutex_unlock(&onDemand_notify_lock);
  v49 = *MEMORY[0x1E69E9840];
  return v48;
}

const void *__SCNetworkConnectionCopyMatchingTriggerWithName(const __CFDictionary *a1, const __CFString *a2, int a3, int a4, CFTypeRef *a5, _BYTE *a6, CFTypeRef *a7)
{
  v8 = a6;
  v9 = a5;
  v62 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  Value = CFDictionaryGetValue(a1, @"Triggers");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFArrayGetCount(Value), Count < 1))
  {
    ValueAtIndex = 0;
    v15 = 0;
    goto LABEL_76;
  }

  v54 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  allocator = *MEMORY[0x1E695E480];
  v17 = *MEMORY[0x1E695E4C0];
  v49 = *MEMORY[0x1E695E4C0];
  v50 = *MEMORY[0x1E695E4D0];
  v53 = a4;
  v58 = Value;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v16);
    v19 = CFDictionaryGetTypeID();
    if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v19)
    {
      goto LABEL_19;
    }

    v20 = CFDictionaryGetValue(ValueAtIndex, @"Action");
    v21 = CFStringGetTypeID();
    if (v20 && CFGetTypeID(v20) == v21 && CFEqual(v20, @"Connect"))
    {
      if (__SCNetworkConnectionShouldNeverMatch(ValueAtIndex, a2, v54))
      {
        ValueAtIndex = v14;
LABEL_16:
        Value = v58;
        goto LABEL_20;
      }

      v55 = v15;
      Match = 0;
      v36 = 0;
      v37 = 0;
      Value = v58;
    }

    else
    {
      Value = v58;
      if (__SCNetworkConnectionShouldIgnoreTrigger(ValueAtIndex))
      {
        v15 = 5002;
LABEL_19:
        ValueAtIndex = v14;
        goto LABEL_20;
      }

      v22 = CFDictionaryGetValue(ValueAtIndex, @"Action");
      v23 = CFDictionaryGetValue(ValueAtIndex, @"ActionParameters");
      if (v22 && v23)
      {
        cf = v23;
        if (!CFEqual(v22, @"EvaluateConnection"))
        {
          goto LABEL_19;
        }

        v52 = v8;
        v24 = CFArrayGetTypeID();
        if (CFGetTypeID(cf) != v24 || (v56 = CFArrayGetCount(cf), v56 < 1))
        {
          ValueAtIndex = v14;
          goto LABEL_20;
        }

        v55 = v15;
        v47 = v9;
        v48 = a7;
        v25 = 0;
        while (1)
        {
          v26 = CFArrayGetValueAtIndex(cf, v25);
          v27 = CFDictionaryGetTypeID();
          if (v26)
          {
            if (CFGetTypeID(v26) == v27)
            {
              v28 = CFDictionaryGetValue(v26, @"Domains");
              v29 = CFArrayGetTypeID();
              if (v28)
              {
                if (CFGetTypeID(v28) == v29)
                {
                  v30 = CFArrayGetCount(v28);
                  if (v30 >= 1)
                  {
                    break;
                  }
                }
              }
            }
          }

LABEL_38:
          if (++v25 == v56)
          {
            goto LABEL_39;
          }
        }

        v31 = v30;
        v32 = 0;
        while (1)
        {
          Match = CFArrayGetValueAtIndex(v28, v32);
          v34 = CFStringGetTypeID();
          if (Match)
          {
            if (CFGetTypeID(Match) == v34 && _SC_domainEndsWithDomain(a2, Match))
            {
              break;
            }
          }

          if (v31 == ++v32)
          {
            goto LABEL_38;
          }
        }

        v43 = CFDictionaryGetValue(v26, @"DomainAction");
        v44 = CFStringGetTypeID();
        if (v43 && CFGetTypeID(v43) == v44 && CFEqual(v43, @"NeverConnect"))
        {
LABEL_39:
          ValueAtIndex = v14;
          v8 = v52;
          v9 = v47;
          a7 = v48;
          a4 = v53;
          goto LABEL_16;
        }

        v37 = CFDictionaryGetValue(v26, @"RequiredURLStringProbe");
        v36 = 1;
        v8 = v52;
        v9 = v47;
        a7 = v48;
        Value = v58;
      }

      else
      {
        v55 = v15;
        if (!a4 && (v35 = __SCNetworkConnectionDomainGetMatch(ValueAtIndex, a2, 0), v35 | v14))
        {
          Match = v35;
          v36 = 0;
          if (!v35)
          {
LABEL_45:
            ValueAtIndex = v14;
            a4 = v53;
            v15 = v55;
            goto LABEL_20;
          }
        }

        else
        {
          v36 = 1;
          Match = __SCNetworkConnectionDomainGetMatch(ValueAtIndex, a2, 1);
          if (!Match)
          {
            goto LABEL_45;
          }
        }

        v37 = 0;
      }

      if (__SCNetworkConnectionShouldNeverMatch(ValueAtIndex, a2, v54))
      {
        goto LABEL_45;
      }
    }

    if (v9)
    {
      valuePtr = 2;
      if (*v9)
      {
        CFRelease(*v9);
        *v9 = 0;
      }

      v38 = v9;
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v40 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, @"OnDemandMatchInfoVPNType", v40);
      CFRelease(v40);
      if (Match)
      {
        CFDictionarySetValue(Mutable, @"OnDemandMatchInfoDomain", Match);
      }

      if (v36)
      {
        v41 = v50;
      }

      else
      {
        v41 = v49;
      }

      CFDictionarySetValue(Mutable, @"OnDemandMatchInfoOnRetry", v41);
      v9 = v38;
      *v38 = Mutable;
      Value = v58;
    }

    a4 = v53;
    if (a7)
    {
      if (*a7)
      {
        CFRelease(*a7);
        *a7 = 0;
      }

      if (v37)
      {
        *a7 = CFRetain(v37);
      }
    }

    v42 = v53 ? 0 : v36;
    if (v8 && (v42 & 1) == 0)
    {
      break;
    }

    v15 = v55;
    if (!v42)
    {
      goto LABEL_78;
    }

LABEL_20:
    ++v16;
    v14 = ValueAtIndex;
    if (v16 == Count)
    {
      goto LABEL_78;
    }
  }

  *v8 = 1;
  v15 = v55;
LABEL_78:
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

LABEL_76:
  _SCErrorSet(v15);
  v45 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

Boolean SCNetworkConnectionCopyUserPreferences(CFDictionaryRef selectionOptions, CFStringRef *serviceID, CFDictionaryRef *userOptions)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (selectionOptions)
    {
      goto LABEL_3;
    }

LABEL_19:
    result = __SCNetworkConnectionCopyUserPreferencesInternal(selectionOptions, serviceID, userOptions);
    goto LABEL_20;
  }

  if (!selectionOptions)
  {
    goto LABEL_19;
  }

LABEL_3:
  Value = CFDictionaryGetValue(selectionOptions, @"OnDemandHostName");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_19;
  }

  v32[0] = 0;
  v31 = -1;
  v8 = CFDictionaryGetValue(selectionOptions, @"OnDemandRetry");
  v9 = CFBooleanGetTypeID();
  if (v8 && (v10 = v9, v9 = CFGetTypeID(v8), v9 == v10))
  {
    v9 = CFBooleanGetValue(v8);
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = __SCNetworkConnectionCopyOnDemandInfoWithName(v9, Value, v11, v32, &v31, 0);
  if (debug >= 2)
  {
    v13 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v13;
    }

    v14 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v13, v14))
    {
      v15 = _os_log_pack_size();
      v30 = &v30;
      v23 = &v30 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = v31;
      *v25 = 67109376;
      *(v25 + 4) = v12;
      *(v25 + 8) = 1024;
      *(v25 + 10) = v26;
      __SC_log_send(6, v13, v14, v23);
    }
  }

  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  result = v32[0];
  if (v31 != 2)
  {
    *serviceID = v32[0];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *userOptions = Mutable;
    CFDictionarySetValue(Mutable, @"OnDemandHostName", Value);
    result = 1;
    goto LABEL_20;
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
LABEL_21:
    result = 0;
  }

LABEL_20:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkConnectionCopyUserPreferencesInternal(const __CFDictionary *a1, CFStringRef *a2, CFDictionaryRef *a3)
{
  v177 = *MEMORY[0x1E69E9840];
  check = 1;
  v6 = notify_userprefs_token;
  if (notify_userprefs_token != -1)
  {
    goto LABEL_2;
  }

  v21 = notify_register_check("com.apple.networkConnect", &notify_userprefs_token);
  if (v21)
  {
    v8 = v21;
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
      goto LABEL_13;
    }

    v22 = _os_log_pack_size();
    v19 = &v159 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    goto LABEL_12;
  }

  notify_check(notify_userprefs_token, &check);
  check = 1;
  v6 = notify_userprefs_token;
  if (notify_userprefs_token != -1)
  {
LABEL_2:
    v7 = notify_check(v6, &check);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
LABEL_13:
      notify_cancel(notify_userprefs_token);
      notify_userprefs_token = -1;
LABEL_14:
      if (!check)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v11 = _os_log_pack_size();
    v19 = &v159 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
LABEL_12:
    v31 = _os_log_pack_fill();
    *v31 = 67109120;
    v31[1] = v8;
    __SC_log_send(5, v9, v10, v19);
    goto LABEL_13;
  }

LABEL_15:
  CFPreferencesAppSynchronize(@"com.apple.networkConnect");
LABEL_16:
  *a2 = 0;
  *a3 = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"OnDemandHostName");
    if (Value)
    {
      v33 = Value;
      TypeID = CFStringGetTypeID();
    }

    else
    {
      v33 = CFDictionaryGetValue(a1, @"OnDemandHostName");
      TypeID = CFStringGetTypeID();
      if (!v33)
      {
        goto LABEL_67;
      }
    }

    if (CFGetTypeID(v33) == TypeID)
    {
      v40 = CFDictionaryGetValue(a1, @"OnDemandPriority");
      v41 = CFStringGetTypeID();
      if (!v40 || CFGetTypeID(v40) != v41)
      {
        v40 = @"Default";
      }

      v171 = v40;
      v42 = *MEMORY[0x1E695E8B8];
      v43 = *MEMORY[0x1E695E8B0];
      v44 = CFPreferencesCopyKeyList(@"com.apple.networkConnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      v45 = CFArrayGetTypeID();
      if (v44)
      {
        if (CFGetTypeID(v44) != v45 || (v46 = CFPreferencesCopyMultiple(v44, @"com.apple.networkConnect", v42, v43), v47 = CFDictionaryGetTypeID(), !v46))
        {
          v74 = 0;
          v97 = v44;
          goto LABEL_100;
        }

        v170 = v46;
        if (CFGetTypeID(v46) == v47)
        {
          Count = CFArrayGetCount(v44);
          if (Count >= 1)
          {
            v159 = @"OnDemandPriority";
            v160 = a2;
            v164 = a3;
            v165 = 0;
            v161 = 0;
            v162 = 0;
            v48 = 0;
            v172 = @"PPP";
            v168 = @"OnDemandEnabled";
            v169 = v44;
            v163 = @"OnDemandDomains";
            v173 = a1;
            do
            {
              valuePtr = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v44, v48);
              v50 = CFStringGetTypeID();
              if (ValueAtIndex)
              {
                if (CFGetTypeID(ValueAtIndex) == v50)
                {
                  v51 = CFDictionaryGetValue(v170, ValueAtIndex);
                  v52 = CFArrayGetTypeID();
                  if (v51)
                  {
                    if (CFGetTypeID(v51) == v52)
                    {
                      v53 = CFArrayGetCount(v51);
                      if (v53 >= 1)
                      {
                        v54 = v53;
                        for (i = 0; i != v54; ++i)
                        {
                          v56 = CFArrayGetValueAtIndex(v51, i);
                          v57 = CFDictionaryGetTypeID();
                          if (v56)
                          {
                            if (CFGetTypeID(v56) == v57)
                            {
                              v58 = CFDictionaryGetValue(v56, v172);
                              v59 = CFDictionaryGetTypeID();
                              if (v58)
                              {
                                if (CFGetTypeID(v58) == v59)
                                {
                                  v60 = CFDictionaryGetValue(v58, v168);
                                  v61 = CFNumberGetTypeID();
                                  if (v60 && CFGetTypeID(v60) == v61)
                                  {
                                    CFNumberGetValue(v60, kCFNumberIntType, &valuePtr);
                                    v44 = v169;
                                    if (valuePtr)
                                    {
                                      v62 = CFDictionaryGetValue(v58, v163);
                                      v63 = CFArrayGetTypeID();
                                      if (v62)
                                      {
                                        if (CFGetTypeID(v62) == v63)
                                        {
                                          v167 = CFArrayGetCount(v62);
                                          if (v167 >= 1)
                                          {
                                            v64 = 0;
                                            v166 = v62;
                                            do
                                            {
                                              v65 = CFArrayGetValueAtIndex(v62, v64);
                                              v66 = CFStringGetTypeID();
                                              if (v65 && CFGetTypeID(v65) == v66)
                                              {
                                                v44 = v169;
                                                if (!v165)
                                                {
                                                  if (CFStringCompare(v65, &stru_1F22591E8, 0) && CFStringCompare(v65, @".", 0))
                                                  {
                                                    v165 = 0;
                                                  }

                                                  else
                                                  {
                                                    v165 = 1;
                                                    v161 = v48;
                                                    v162 = i;
                                                  }
                                                }

                                                if (_SC_domainEndsWithDomain(v33, v65))
                                                {
                                                  v156 = v160;
                                                  *v160 = ValueAtIndex;
                                                  CFRetain(ValueAtIndex);
                                                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v56);
                                                  v158 = v164;
                                                  *v164 = MutableCopy;
                                                  CFDictionarySetValue(MutableCopy, @"OnDemandHostName", v33);
                                                  CFDictionarySetValue(*v158, v159, v171);
                                                  addPasswordFromKeychain(*v156, v158);
                                                  v74 = 1;
                                                  a1 = v173;
LABEL_99:
                                                  CFRelease(v44);
                                                  v97 = v170;
LABEL_100:
                                                  CFRelease(v97);
LABEL_101:
                                                  if (debug >= 2)
                                                  {
                                                    v99 = __log_SCNetworkConnection_log;
                                                    if (!__log_SCNetworkConnection_log)
                                                    {
                                                      v99 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                                                      __log_SCNetworkConnection_log = v99;
                                                    }

                                                    v100 = _SC_syslog_os_log_mapping(6);
                                                    if (__SC_log_enabled(6, v99, v100))
                                                    {
                                                      v101 = _os_log_pack_size();
                                                      v109 = &v159 - ((MEMORY[0x1EEE9AC00](v101, v102, v103, v104, v105, v106, v107, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
                                                      v110 = *__error();
                                                      v111 = _os_log_pack_fill();
                                                      v112 = "succeeded";
                                                      if (!v74)
                                                      {
                                                        v112 = "failed";
                                                      }

                                                      *v111 = 136315138;
                                                      *(v111 + 4) = v112;
                                                      __SC_log_send(6, v99, v100, v109);
                                                    }

                                                    v113 = __log_SCNetworkConnection_log;
                                                    if (!__log_SCNetworkConnection_log)
                                                    {
                                                      v113 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                                                      __log_SCNetworkConnection_log = v113;
                                                    }

                                                    v114 = _SC_syslog_os_log_mapping(6);
                                                    if (__SC_log_enabled(6, v113, v114))
                                                    {
                                                      v115 = _os_log_pack_size();
                                                      v123 = &v159 - ((MEMORY[0x1EEE9AC00](v115, v116, v117, v118, v119, v120, v121, v122) + 15) & 0xFFFFFFFFFFFFFFF0);
                                                      v124 = *__error();
                                                      v125 = _os_log_pack_fill();
                                                      *v125 = 138412290;
                                                      *(v125 + 4) = a1;
                                                      v126 = v113;
                                                      v127 = v114;
                                                      goto LABEL_129;
                                                    }
                                                  }

                                                  goto LABEL_130;
                                                }
                                              }

                                              else
                                              {
                                                v44 = v169;
                                              }

                                              ++v64;
                                              v62 = v166;
                                            }

                                            while (v167 != v64);
                                          }
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v44 = v169;
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

              ++v48;
              a1 = v173;
            }

            while (v48 != Count);
            if (v165)
            {
              v67 = CFArrayGetValueAtIndex(v44, v161);
              v68 = CFDictionaryGetValue(v170, v67);
              v69 = CFArrayGetValueAtIndex(v68, v162);
              v70 = v160;
              *v160 = v67;
              CFRetain(v67);
              v71 = CFDictionaryCreateMutableCopy(0, 0, v69);
              v72 = v164;
              *v164 = v71;
              CFDictionarySetValue(v71, @"OnDemandHostName", v33);
              CFDictionarySetValue(*v72, v159, v171);
              v73 = *v70;
              v44 = v169;
              addPasswordFromKeychain(v73, v72);
              v74 = 1;
              goto LABEL_99;
            }
          }
        }

        v74 = 0;
        goto LABEL_99;
      }
    }

LABEL_67:
    v74 = 0;
    goto LABEL_101;
  }

  v35 = *MEMORY[0x1E695E8B8];
  v36 = CFPreferencesCopyValue(@"ServiceID", @"com.apple.internetconnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v36)
  {
    v37 = v36;
    if (SCNetworkConnectionPrivateIsPPPService(v36, @"PPPSerial", @"PPPoE"))
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", v37, @"Interface");
      v39 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
      CFRelease(NetworkServiceEntity);
      if (v39)
      {
        CFRelease(v39);
        *a2 = CFRetain(v37);
        CFRelease(v37);
        goto LABEL_84;
      }
    }

    CFRelease(v37);
  }

  *a2 = 0;
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"Setup:", @"IPv4");
  if (!NetworkGlobalEntity)
  {
    v98 = 1;
    fwrite("Error, Setup Key == NULL!\n", 0x1AuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v74 = 0;
    goto LABEL_122;
  }

  v76 = NetworkGlobalEntity;
  v77 = SCDynamicStoreCopyValue(0, NetworkGlobalEntity);
  v78 = CFDictionaryGetTypeID();
  if (!v77 || CFGetTypeID(v77) != v78)
  {
    fwrite("no global IPv4 entity\n", 0x16uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v86 = 0;
    goto LABEL_82;
  }

  v79 = CFDictionaryGetValue(v77, @"ServiceOrder");
  v80 = CFArrayGetTypeID();
  if (!v79 || CFGetTypeID(v79) != v80)
  {
    fwrite("service order not specified\n", 0x1CuLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_119;
  }

  v81 = CFArrayGetCount(v79);
  if (v81 < 1)
  {
LABEL_119:
    CFRelease(v76);
    v86 = 0;
    goto LABEL_120;
  }

  v82 = v81;
  v83 = a2;
  v164 = a3;
  v84 = 0;
  while (1)
  {
    v85 = CFArrayGetValueAtIndex(v79, v84);
    if (SCNetworkConnectionPrivateIsPPPService(v85, @"PPPSerial", @"PPPoE"))
    {
      break;
    }

    if (v82 == ++v84)
    {
      v86 = 0;
      a3 = v164;
      a2 = v83;
      goto LABEL_82;
    }
  }

  v155 = CFRetain(v85);
  a2 = v83;
  *v83 = v155;
  v86 = 1;
  a3 = v164;
LABEL_82:
  CFRelease(v76);
  if (!v77)
  {
    if (v86)
    {
      goto LABEL_84;
    }

LABEL_121:
    v74 = 0;
    v98 = 1;
    goto LABEL_122;
  }

LABEL_120:
  CFRelease(v77);
  if (!v86)
  {
    goto LABEL_121;
  }

LABEL_84:
  if (*a2)
  {
    v87 = CFPreferencesCopyValue(*a2, @"com.apple.networkConnect", v35, *MEMORY[0x1E695E8B0]);
    if (v87)
    {
      v88 = v87;
      v89 = CFArrayGetTypeID();
      if (CFGetTypeID(v88) == v89)
      {
        v90 = CFArrayGetCount(v88);
        if (v90 >= 1)
        {
          v91 = v90;
          v92 = 0;
          while (1)
          {
            v93 = CFArrayGetValueAtIndex(v88, v92);
            v94 = CFDictionaryGetTypeID();
            if (v93)
            {
              if (CFGetTypeID(v93) == v94)
              {
                v95 = CFDictionaryGetValue(v93, @"ConnectByDefault");
                v96 = CFBooleanGetTypeID();
                if (v95)
                {
                  if (CFGetTypeID(v95) == v96 && CFBooleanGetValue(v95))
                  {
                    break;
                  }
                }
              }
            }

            if (v91 == ++v92)
            {
              goto LABEL_95;
            }
          }

          *a3 = CFDictionaryCreateCopy(0, v93);
        }

LABEL_95:
        addPasswordFromKeychain(*a2, a3);
      }

      else
      {
        v128 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v128 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v128;
        }

        v129 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v128, v129))
        {
          v130 = _os_log_pack_size();
          v138 = &v159 - ((MEMORY[0x1EEE9AC00](v130, v131, v132, v133, v134, v135, v136, v137) + 15) & 0xFFFFFFFFFFFFFFF0);
          v139 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v128, v129, v138);
        }
      }

      CFRelease(v88);
    }
  }

  v98 = 0;
  v74 = 1;
LABEL_122:
  if (debug >= 2)
  {
    v140 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v140 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v140;
    }

    v141 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v140, v141))
    {
      v142 = _os_log_pack_size();
      v123 = &v159 - ((MEMORY[0x1EEE9AC00](v142, v143, v144, v145, v146, v147, v148, v149) + 15) & 0xFFFFFFFFFFFFFFF0);
      v150 = *__error();
      v151 = _os_log_pack_fill();
      v152 = @"succeeded";
      if (v98)
      {
        v152 = @"failed";
      }

      *v151 = 138412290;
      *(v151 + 4) = v152;
      v126 = v140;
      v127 = v141;
LABEL_129:
      __SC_log_send(6, v126, v127, v123);
    }
  }

LABEL_130:
  v153 = *MEMORY[0x1E69E9840];
  return v74;
}

uint64_t SCNetworkConnectionOnDemandShouldRetryOnFailure(CFDictionaryRef *cf)
{
  v13 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_16:
      v11 = 1002;
      goto LABEL_17;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_16;
  }

  if (!cf[10])
  {
    v11 = 5001;
LABEL_17:
    _SCErrorSet(v11);
LABEL_18:
    v12 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v3 = cf[40];
  TypeID = CFDictionaryGetTypeID();
  if (!v3)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(v3) != TypeID)
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(cf[40], @"OnDemandMatchInfo");
  v6 = CFDictionaryGetTypeID();
  if (!Value)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(Value) != v6)
  {
    goto LABEL_18;
  }

  v7 = CFDictionaryGetValue(Value, @"OnDemandMatchInfoOnRetry");
  v8 = CFBooleanGetTypeID();
  if (!v7 || CFGetTypeID(v7) != v8)
  {
    goto LABEL_18;
  }

  v9 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(v7);
}

uint64_t SCNetworkConnectionCanTunnelAddress(void *cf, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6 != 30 && v6 != 2)
    {
      goto LABEL_46;
    }

    if (__SCNetworkConnectionInitialize_initialized == -1)
    {
      if (!cf)
      {
        goto LABEL_44;
      }
    }

    else
    {
      SCNetworkConnectionGetTypeID_cold_1();
      if (!cf)
      {
        goto LABEL_44;
      }
    }

    v8 = __kSCNetworkConnectionTypeID;
    if (CFGetTypeID(cf) == v8)
    {
      v9 = cf[10];
      if (v9)
      {
        ServiceID = SCNetworkServiceGetServiceID(v9);
        TypeID = CFStringGetTypeID();
        if (ServiceID)
        {
          if (CFGetTypeID(ServiceID) == TypeID)
          {
            v12 = __SCNetworkConnectionCopyOnDemandConfiguration();
            if (v12)
            {
              v13 = v12;
              v14 = __SCNetworkConnectionCopyTriggerWithService(v12, ServiceID);
              if (v14)
              {
                v15 = v14;
                v16 = cf[41];
                v17 = CFStringGetTypeID();
                if (v16 && CFGetTypeID(v16) == v17 && ((Value = CFDictionaryGetValue(v15, @"ProbeResults"), v19 = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != v19 || (v20 = CFDictionaryGetValue(Value, v16), v21 = CFBooleanGetTypeID(), v20) && CFGetTypeID(v20) == v21 && !CFBooleanGetValue(v20)) || __SCNetworkConnectionAddressMatchesRedirectedDNS(v15, v4))
                {
                  v4 = 1;
                  if (a3)
                  {
                    *a3 = 1;
                  }

                  goto LABEL_42;
                }

                v23 = CFDictionaryGetValue(v15, @"TunneledNetworks");
                v24 = CFDictionaryGetTypeID();
                if (v23 && CFGetTypeID(v23) == v24)
                {
                  if (v6 == 2)
                  {
                    v25 = CFDictionaryGetValue(v23, @"IPv4");
                    v26 = CFDictionaryGetTypeID();
                    if (v25)
                    {
                      if (CFGetTypeID(v25) == v26)
                      {
                        v27 = CFDictionaryGetValue(v25, @"IncludedRoutes");
                        if (__SCNetworkConnectionIPv4AddressMatchesRoutes(v4, v27))
                        {
                          v28 = CFDictionaryGetValue(v25, @"ExcludedRoutes");
                          if (!__SCNetworkConnectionIPv4AddressMatchesRoutes(v4, v28))
                          {
LABEL_48:
                            v4 = 1;
                            goto LABEL_42;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v29 = CFDictionaryGetValue(v23, @"IPv6");
                    v30 = CFDictionaryGetTypeID();
                    if (v29)
                    {
                      if (CFGetTypeID(v29) == v30)
                      {
                        v31 = CFDictionaryGetValue(v29, @"IncludedRoutes");
                        if (__SCNetworkConnectionIPv6AddressMatchesRoutes(v4, v31))
                        {
                          v32 = CFDictionaryGetValue(v29, @"ExcludedRoutes");
                          if (!__SCNetworkConnectionIPv6AddressMatchesRoutes(v4, v32))
                          {
                            goto LABEL_48;
                          }
                        }
                      }
                    }
                  }
                }

                v4 = 0;
LABEL_42:
                CFRelease(v13);
                CFRelease(v15);
                goto LABEL_47;
              }

              CFRelease(v13);
            }
          }
        }

LABEL_46:
        v4 = 0;
        goto LABEL_47;
      }

      v22 = 5001;
LABEL_45:
      _SCErrorSet(v22);
      goto LABEL_46;
    }

LABEL_44:
    v22 = 1002;
    goto LABEL_45;
  }

LABEL_47:
  v33 = *MEMORY[0x1E69E9840];
  return v4;
}

const __CFDictionary *__SCNetworkConnectionCopyTriggerWithService(const __CFDictionary *a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"Triggers");
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
          v10 = CFDictionaryGetValue(ValueAtIndex, @"ServiceID");
          v11 = CFStringGetTypeID();
          if (v10)
          {
            if (CFGetTypeID(v10) == v11 && CFEqual(v10, a2))
            {
              break;
            }
          }
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_11;
      }
    }

    CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_11:
    ValueAtIndex = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

uint64_t __SCNetworkConnectionAddressMatchesRedirectedDNS(const __CFDictionary *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"DNSRedirectDetected");
  TypeID = CFBooleanGetTypeID();
  if (!Value)
  {
    goto LABEL_11;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_11;
  }

  if (!CFBooleanGetValue(Value))
  {
    goto LABEL_11;
  }

  v6 = CFDictionaryGetValue(a1, @"DNSRedirectedAddresses");
  v7 = CFDictionaryGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 1);
  if (v8 != 30)
  {
    if (v8 == 2)
    {
      v9 = CFDictionaryGetValue(v6, @"IPv4");
      v10 = *MEMORY[0x1E69E9840];

      return __SCNetworkConnectionIPv4AddressMatchesRoutes(a2, v9);
    }

LABEL_11:
    v12 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v13 = CFDictionaryGetValue(v6, @"IPv6");
  v14 = *MEMORY[0x1E69E9840];

  return __SCNetworkConnectionIPv6AddressMatchesRoutes(a2, v13);
}

uint64_t __SCNetworkConnectionIPv4AddressMatchesRoutes(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    goto LABEL_11;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a2, @"Addresses");
  v6 = CFDictionaryGetValue(a2, @"Masks");
  v7 = CFDataGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v8 = CFDataGetTypeID();
    if (CFGetTypeID(v6) != v8)
    {
      goto LABEL_11;
    }

    Length = CFDataGetLength(Value);
    if (Length != CFDataGetLength(v6))
    {
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(Value);
    v6 = CFDataGetBytePtr(v6);
  }

  else
  {
    BytePtr = CFDataGetBytePtr(Value);
  }

  v11 = CFDataGetLength(Value);
  if (v11 >= 4)
  {
    v14 = v11 >> 2;
    while (1)
    {
      v15 = *BytePtr;
      if (v6)
      {
        v16 = *v6++;
        if (((*(a1 + 4) ^ v15) & v16) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (*(a1 + 4) == v15)
        {
LABEL_21:
          result = 1;
          goto LABEL_12;
        }

        v6 = 0;
      }

      result = 0;
      BytePtr += 4;
      if (!--v14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_11:
  result = 0;
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkConnectionIPv6AddressMatchesRoutes(uint64_t a1, const void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    goto LABEL_11;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a2, @"Addresses");
  v6 = CFDictionaryGetValue(a2, @"Masks");
  v7 = CFDataGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v8 = CFDataGetTypeID();
    if (CFGetTypeID(v6) != v8)
    {
      goto LABEL_11;
    }

    Length = CFDataGetLength(Value);
    if (Length != CFDataGetLength(v6))
    {
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(Value);
    v11 = CFDataGetBytePtr(v6);
  }

  else
  {
    BytePtr = CFDataGetBytePtr(Value);
    v11 = 0;
  }

  v12 = CFDataGetLength(Value);
  if (v12 >= 0x10)
  {
    v15 = 0;
    v16 = v12 >> 4;
    while (1)
    {
      if (v6)
      {
        v17 = 0;
        v18 = *(a1 + 8);
        v22 = *BytePtr;
        v23 = v18;
        do
        {
          *(&v22 + v17) &= v11[v17];
          ++v17;
        }

        while (v17 != 16);
        for (i = 0; i != 16; ++i)
        {
          *(&v23 + i) &= v11[i];
        }

        if (v22 == v23 && *(&v22 + 1) == *(&v23 + 1))
        {
          goto LABEL_30;
        }

        v11 += 16;
      }

      else if (*BytePtr == *(a1 + 8) && *(BytePtr + 1) == *(a1 + 16))
      {
LABEL_30:
        result = 1;
        goto LABEL_12;
      }

      result = 0;
      BytePtr += 16;
      if (++v15 == v16)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_11:
  result = 0;
LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SCNetworkConnectionSelectServiceWithOptions(char *cf, const __CFDictionary *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  valuePtr = -1;
  cfa = 0;
  v48 = 0;
  v46 = 0;
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_5:
    _SCErrorSet(1002);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!cf)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v4 || *(cf + 10))
  {
    goto LABEL_5;
  }

  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    v12 = CFDictionaryGetValue(a2, @"NoUserPrefs");
    v13 = CFDictionaryGetValue(a2, @"OnDemandRetry");
    v14 = CFDictionaryGetValue(a2, @"OnDemandAccountIdentifier");
    v15 = CFDictionaryGetValue(a2, @"OnDemandHostName");
    v16 = CFBooleanGetTypeID();
    v17 = !v12 || CFGetTypeID(v12) != v16 || CFBooleanGetValue(v12) == 0;
    v19 = CFBooleanGetTypeID();
    if (v13 && CFGetTypeID(v13) == v19)
    {
      v18 = CFBooleanGetValue(v13);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v18 = 1;
    v17 = 1;
  }

  v8 = __SCNetworkConnectionCopyOnDemandConfiguration();
  v20 = *(cf + 42);
  v21 = *(cf + 24);
  v22 = *(cf + 140);
  *value = *(cf + 124);
  v52 = v22;
  v23 = VPNAppLayerCopyMatchingService(value, v20, cf + 172, v21, v15, v14);
  cfa = v23;
  v24 = CFDictionaryGetTypeID();
  if (v23)
  {
    if (v8 && CFGetTypeID(v8) == v24)
    {
      v25 = __SCNetworkConnectionCopyTriggerWithService(v8, v23);
      v7 = v25;
      if (v25)
      {
        value[0] = 0;
        if (!CFDictionaryGetValueIfPresent(v25, @"Status", value) || (v26 = value[0], v27 = CFNumberGetTypeID(), !v26) || CFGetTypeID(v26) != v27 || !CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr))
        {
          valuePtr = -1;
        }

        if (__SCNetworkConnectionShouldIgnoreTrigger(v7) && (valuePtr - 3) < 0xFFFFFFFE)
        {
          CFRelease(v23);
          cfa = 0;
          if (v50)
          {
            CFRelease(v50);
            v50 = 0;
          }

          CFRelease(v7);
          v24 = CFDictionaryGetTypeID();
          goto LABEL_54;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 1;
    if (!v18)
    {
      if (v50)
      {
        if ((valuePtr - 3) <= 0xFFFFFFFD)
        {
          v28 = CFDictionaryGetValue(v50, @"OnDemandMatchInfoOnRetry");
          if (v28)
          {
            v6 = CFBooleanGetValue(v28) == 0;
          }
        }
      }
    }

    *(cf + 76) = 3;
    goto LABEL_77;
  }

  if (!v8)
  {
    v29 = 1;
    goto LABEL_61;
  }

LABEL_54:
  v29 = 0;
  if (CFGetTypeID(v8) == v24 && v15)
  {
    LOBYTE(value[0]) = 0;
    v30 = __SCNetworkConnectionCopyMatchingTriggerWithName(v8, v15, *(cf + 42), v18, &v50, value, &v48);
    v7 = v30;
    if (v30)
    {
      v31 = CFDictionaryGetValue(v30, @"ServiceID");
      cfa = v31;
      v32 = CFStringGetTypeID();
      if (v31 && CFGetTypeID(v31) == v32)
      {
        CFRetain(v31);
        *(cf + 76) = 2;
      }

      else
      {
        cfa = 0;
      }

      v6 = LOBYTE(value[0]) != 0;
      goto LABEL_77;
    }

    if (!v18)
    {
LABEL_72:
      v6 = 1;
      goto LABEL_77;
    }

    if (v50)
    {
      CFRelease(v50);
      v50 = 0;
    }

    v29 = 0;
    if (!v17)
    {
LABEL_71:
      v7 = 0;
      goto LABEL_72;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v17)
  {
    goto LABEL_71;
  }

LABEL_62:
  if (!__SCNetworkConnectionCopyUserPreferencesInternal(a2, &cfa, &v46))
  {
    goto LABEL_71;
  }

  v33 = CFDictionaryGetTypeID();
  if (v29)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (CFGetTypeID(v8) == v33 && v8)
    {
      v7 = __SCNetworkConnectionCopyTriggerWithService(v8, cfa);
    }
  }

  v6 = 1;
  *(cf + 76) = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, cf + 304);
  CFDictionarySetValue(Mutable, @"OnDemandMatchInfoVPNType", v35);
  CFRelease(v35);
  v50 = Mutable;
LABEL_77:
  if (cfa)
  {
    v36 = _SCNetworkServiceCopyActive(0, cfa);
    *(cf + 10) = v36;
    if (!v36)
    {
      _SCErrorSet(0);
      v5 = 0;
      v6 = 0;
      goto LABEL_6;
    }

    if (v7)
    {
      v37 = *(cf + 39);
      if (v37)
      {
        CFRelease(v37);
      }

      *(cf + 39) = v7;
      CFRetain(v7);
      v38 = valuePtr;
      if (valuePtr == -1)
      {
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(v7, @"Status", value) && (v39 = value[0], v40 = CFNumberGetTypeID(), v39) && CFGetTypeID(v39) == v40 && CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr))
        {
          v38 = valuePtr;
        }

        else
        {
          v38 = -1;
          valuePtr = -1;
        }
      }

      if (v38 == 2)
      {
        goto LABEL_100;
      }

      if (*(cf + 76) == 3)
      {
        v41 = CFDictionaryGetValue(v7, @"OnDemandMatchAppEnabled");
        v42 = CFBooleanGetTypeID();
        if (!v41 || CFGetTypeID(v41) != v42 || !CFBooleanGetValue(v41))
        {
          goto LABEL_100;
        }
      }
    }

    else if (*(cf + 76) != 1)
    {
      goto LABEL_100;
    }

    cf[308] = 1;
LABEL_100:
    v43 = *MEMORY[0x1E695E480];
    if (v46)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v43, 0, v46);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v43, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v5 = MutableCopy;
    if (v15)
    {
      CFDictionarySetValue(MutableCopy, @"OnDemandHostName", v15);
    }

    if (cf[308] && v50)
    {
      CFDictionarySetValue(v5, @"OnDemandMatchInfo", v50);
    }

    *(cf + 40) = v5;
    CFRetain(v5);
    v45 = v48;
    if (v48)
    {
      *(cf + 41) = v48;
      CFRetain(v45);
    }

LABEL_6:
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  _SCErrorSet(0);
  v6 = 0;
  v5 = 0;
  if (v8)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL __SCNetworkConnectionShouldIgnoreTrigger(const __CFDictionary *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"Action");
  TypeID = CFStringGetTypeID();
  result = Value && CFGetTypeID(Value) == TypeID && (CFEqual(Value, @"Ignore") || CFEqual(Value, @"Disconnect"));
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const char *__SCNetworkConnectionGetControllerPortName()
{
  v3 = *MEMORY[0x1E69E9840];
  result = scnc_server_name;
  if (!scnc_server_name)
  {
    getpid();
    v1 = *MEMORY[0x1E69E9BD0];
    if (sandbox_check())
    {
      result = "com.apple.SystemConfiguration.PPPController";
    }

    else
    {
      result = "com.apple.SystemConfiguration.PPPController-priv";
    }

    scnc_server_name = result;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void childForkHandler_0()
{
  v1 = *MEMORY[0x1E69E9840];
  scnc_server = 0;
  scnc_server_name = 0;
  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __SCNetworkConnectionDeallocate(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v2 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v2;
  }

  v3 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v2, v3))
  {
    v4 = _os_log_pack_size();
    v12 = v33 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = a1 + 88;
    __SC_log_send(7, v2, v3, v12);
  }

  pthread_mutex_destroy((a1 + 16));
  v15 = *(a1 + 120);
  v16 = MEMORY[0x1E69E9A60];
  if (v15)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
  }

  v17 = *(a1 + 156);
  if (v17)
  {
    mach_port_deallocate(*v16, v17);
  }

  v18 = *(a1 + 192);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 224);
  if (v19)
  {
    CFRunLoopSourceInvalidate(v19);
    CFRelease(*(a1 + 224));
  }

  v20 = *(a1 + 280);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 208);
  if (v21)
  {
    Port = CFMachPortGetPort(v21);
    CFMachPortInvalidate(*(a1 + 208));
    CFRelease(*(a1 + 208));
    mach_port_mod_refs(*v16, Port, 1u, -1);
  }

  v23 = *(a1 + 200);
  if (v23)
  {
    mach_port_deallocate(*v16, v23);
  }

  v24 = *(a1 + 264);
  if (v24)
  {
    v24(*(a1 + 248));
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 312);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 320);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 328);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 336);
  if (v29)
  {
    CFRelease(v29);
  }

  result = *(a1 + 344);
  if (result)
  {
    ne_session_set_event_handler();
    v31 = *(a1 + 344);
    result = ne_session_release();
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__SCNetworkConnectionCopyDescription(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkConnection, %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %p", *(a1 + 80));
  if (*(a1 + 200))
  {
    CFStringAppendFormat(Mutable, 0, @", server port = 0x%x", *(a1 + 200));
  }

  if (*(a1 + 344))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @"using NetworkExtension = %s", v4);
  CFStringAppendFormat(Mutable, 0, @"}");
  v5 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef pppMPCopyDescription(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = CFStringCreateWithFormat(0, 0, @"<SCNetworkConnection MP %p> {service = %@, callout = %p}", a1, v1, *(a1 + 232), *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkConnectionMachCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 70)
  {
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = v18 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v5, v6, v15);
    }

    __SCNetworkConnectionReconnectNotifications(a4);
  }

  __SCNetworkConnectionCallBack(a4);
  v17 = *MEMORY[0x1E69E9840];
}

void __SCNetworkConnectionReconnectNotifications(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 280) = 0;
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    CFRelease(*(a1 + 224));
    *(a1 + 224) = 0;
  }

  v4 = *(a1 + 296);
  if (v4)
  {
    dispatch_source_cancel(v4);
    *(a1 + 296) = 0;
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    *(a1 + 288) = 0;
    dispatch_retain(v5);
    *(a1 + 217) = 0;
    pthread_mutex_unlock((a1 + 16));
    if (!v2)
    {
      if (SCNetworkConnectionSetDispatchQueue(a1, v5))
      {
        v6 = 1;
      }

      else
      {
        if (SCError() != 1102)
        {
          v41 = __log_SCNetworkConnection_log;
          if (!__log_SCNetworkConnection_log)
          {
            v41 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
            __log_SCNetworkConnection_log = v41;
          }

          v42 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v41, v42))
          {
            v43 = _os_log_pack_size();
            v51 = v53 - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
            v52 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(5, v41, v42, v51);
          }
        }

        v6 = 0;
      }

      goto LABEL_25;
    }

LABEL_12:
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      v6 = 1;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v9 + 1);
        v11 = CFArrayGetValueAtIndex(v2, v9 + 2);
        v12 = SCNetworkConnectionScheduleWithRunLoop(a1, ValueAtIndex, v11);
        if (!v12)
        {
          break;
        }

        v6 = v12;
        v9 += 3;
        if (v9 >= v8)
        {
          goto LABEL_24;
        }
      }

      if (SCError() != 1102)
      {
        v13 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v13;
        }

        v14 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v13, v14))
        {
          v15 = _os_log_pack_size();
          v23 = v53 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
          v24 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(5, v13, v14, v23);
        }
      }

      v6 = 0;
    }

LABEL_24:
    CFRelease(v2);
    if (!v5)
    {
LABEL_26:
      if (v6)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

LABEL_25:
    dispatch_release(v5);
    goto LABEL_26;
  }

  *(a1 + 217) = 0;
  pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_27:
  v25 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v25 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v25;
  }

  v26 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v25, v26))
  {
    v27 = _os_log_pack_size();
    v35 = v53 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = *__error();
    v37 = _os_log_pack_fill();
    v38 = SCError();
    v39 = "failed";
    if (v38 == 1102)
    {
      v39 = "shutdown";
    }

    *v37 = 136315138;
    *(v37 + 4) = v39;
    __SC_log_send(5, v25, v26, v35);
  }

LABEL_33:
  v40 = *MEMORY[0x1E69E9840];
}

void __SCNetworkConnectionCallBack(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 217))
  {
    v6 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = block - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 136315138;
      *(v18 + 4) = a1 + 88;
      __SC_log_send(6, v6, v7, v16);
    }

    pthread_mutex_unlock((a1 + 16));
    goto LABEL_11;
  }

  v2 = *(a1 + 232);
  if (v2)
  {
    v4 = *(a1 + 248);
    v3 = *(a1 + 256);
    if (v3 && v4)
    {
      v4 = v3(*(a1 + 248));
      v5 = *(a1 + 264);
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 344))
    {
LABEL_14:
      pthread_mutex_unlock((a1 + 16));
      Status = SCNetworkConnectionGetStatus(a1);
      __SCNetworkConnectionNotify(a1, v2, Status, v5, v4);
      v21 = *MEMORY[0x1E69E9840];

      CFRelease(a1);
      return;
    }

    CFRetain(a1);
    if (*(a1 + 280))
    {
      Current = CFRunLoopGetCurrent();
      if (!Current)
      {
        __SCNetworkConnectionCallBack_cold_2();
      }

      v24 = Current;
      if (Current != CFRunLoopGetMain())
      {
        goto LABEL_14;
      }

      CFRetain(v24);
      v25 = CFRunLoopCopyCurrentMode(v24);
      pthread_mutex_unlock((a1 + 16));
      if (__SCNetworkConnectionQueue_once != -1)
      {
        __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ____SCNetworkConnectionCallBack_block_invoke;
      block[3] = &__block_descriptor_tmp_126;
      block[4] = a1;
      block[5] = v24;
      block[6] = v25;
      block[7] = v2;
      block[8] = v5;
      block[9] = v4;
      dispatch_async(__SCNetworkConnectionQueue_q, block);
    }

    else
    {
      v26 = *(a1 + 288);
      if (!v26)
      {
        __SCNetworkConnectionCallBack_cold_3();
      }

      pthread_mutex_unlock((a1 + 16));
      v27 = SCNetworkConnectionGetStatus(a1);
      CFRetain(a1);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = ____SCNetworkConnectionCallBackPerformDispatch_block_invoke;
      v29[3] = &__block_descriptor_tmp_129;
      v29[4] = a1;
      v29[5] = v2;
      v30 = v27;
      v29[6] = v5;
      v29[7] = v4;
      dispatch_async(v26, v29);
      CFRelease(a1);
    }

LABEL_11:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v22 = *MEMORY[0x1E69E9840];

  pthread_mutex_unlock((a1 + 16));
}

uint64_t __SCNetworkConnectionNotify(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v10;
  }

  v11 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v10, v11))
  {
    v12 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = a1 + 88;
    *(v22 + 12) = 1024;
    *(v22 + 14) = a3;
    __SC_log_send(7, v10, v11, v20);
  }

  result = a2(a1, a3, a5);
  if (a4 && a5)
  {
    result = a4(a5);
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkConnectionShouldNeverMatch(const __CFDictionary *a1, const __CFString *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"OnDemandMatchDomainsNever");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
          v12 = CFStringGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == v12 && _SC_domainEndsWithDomain(a2, ValueAtIndex))
            {
              break;
            }
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }

        v22 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v22 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v22;
        }

        v23 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v22, v23))
        {
          v24 = _os_log_pack_size();
          v32 = &v34 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
          v33 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v22, v23, v32);
          result = 1;
          goto LABEL_20;
        }

LABEL_25:
        result = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_9:
  if (a3)
  {
    v13 = CFDictionaryGetValue(a1, @"PluginPIDs");
    v14 = CFArrayGetTypeID();
    if (v13)
    {
      if (CFGetTypeID(v13) == v14)
      {
        v15 = CFArrayGetCount(v13);
        if (v15 >= 1)
        {
          v16 = v15;
          v17 = 0;
          do
          {
            HIDWORD(v34) = 0;
            v18 = CFArrayGetValueAtIndex(v13, v17);
            v19 = CFNumberGetTypeID();
            if (v18)
            {
              if (CFGetTypeID(v18) == v19 && CFNumberGetValue(v18, kCFNumberIntType, &v34 + 4) && HIDWORD(v34) == a3)
              {
                goto LABEL_25;
              }
            }
          }

          while (v16 != ++v17);
        }
      }
    }
  }

  result = 0;
LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFString *__SCNetworkConnectionDomainGetMatch(const __CFDictionary *a1, const __CFString *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = @"OnDemandMatchDomainsOnRetry";
  }

  else
  {
    v4 = @"OnDemandMatchDomainsAlways";
  }

  Value = CFDictionaryGetValue(a1, v4);
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (Count = CFArrayGetCount(Value), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
      v11 = CFStringGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v11 && _SC_domainEndsWithDomain(a2, ValueAtIndex))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    ValueAtIndex = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

void addPasswordFromKeychain(const __CFString *a1, CFDictionaryRef *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a2 && (Value = CFDictionaryGetValue(*a2, @"UniqueIdentifier"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && SCNetworkConnectionPrivateIsPPPService(a1, @"L2TP", 0))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, Value);
    CFStringAppend(MutableCopy, @".SS");
    v6 = *MEMORY[0x1E69E9840];

    CFRelease(MutableCopy);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

BOOL SCNetworkConnectionPrivateIsPPPService(CFStringRef serviceID, const void *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", serviceID, @"Interface");
  if (NetworkServiceEntity)
  {
    v6 = NetworkServiceEntity;
    v7 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    if (v7)
    {
      v8 = v7;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        Value = CFDictionaryGetValue(v8, @"Type");
        v11 = CFStringGetTypeID();
        v12 = Value && CFGetTypeID(Value) == v11 && CFEqual(Value, @"PPP") != 0;
        v14 = CFDictionaryGetValue(v8, @"SubType");
        v15 = CFStringGetTypeID();
        if (v14 && CFGetTypeID(v14) == v15)
        {
          v16 = CFEqual(v14, a2);
          if (a3 && !v16)
          {
            v16 = CFEqual(v14, a3);
          }
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SCUserPreferencesGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
  }

  result = __kSCUserPreferencesTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCUserPreferencesGetUniqueID(CFTypeRef cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_6:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_6;
  }

  result = *(cf + 3);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCUserPreferencesIsForced(const __CFString **cf)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v6 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = cf[2];
  v4 = *MEMORY[0x1E69E9840];

  return CFPreferencesAppValueIsForced(v3, @"com.apple.networkConnect");
}

uint64_t SCUserPreferencesRemove(CFTypeRef cf)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v7 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = *(cf + 2);
  v4 = *(cf + 3);
  v5 = *MEMORY[0x1E69E9840];

  return processPreferences(v3, removeCallout, v4, 0, 0);
}

uint64_t processPreferences(const __CFString *a1, uint64_t (*a2)(const __CFString *, const void *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  CFPreferencesAppSynchronize(@"com.apple.networkConnect");
  v9 = CFPreferencesCopyAppValue(a1, @"com.apple.networkConnect");
  if (v9)
  {
    v10 = v9;
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v10) == TypeID)
    {
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
          if (!ValueAtIndex)
          {
            processPreferences_cold_1();
          }

          v17 = ValueAtIndex;
          v18 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v17) != v18)
          {
            break;
          }

          v19 = a2(a1, v17, a3, a4, a5);
          if (v19)
          {
            goto LABEL_10;
          }

          v15 = 1;
LABEL_13:
          if (v13 == ++v14)
          {
            v20 = v15 == 0;
            goto LABEL_16;
          }
        }

        v19 = CFRetain(v17);
LABEL_10:
        if (!CFEqual(v17, v19))
        {
          v15 = 1;
        }

        addKey(cf, v19);
        CFRelease(v19);
        goto LABEL_13;
      }
    }

    v20 = 1;
LABEL_16:
    CFRelease(v10);
  }

  else
  {
    v20 = 1;
  }

  v21 = a2(a1, 0, a3, a4, a5);
  if (v21)
  {
    v22 = v21;
    addKey(cf, v21);
    CFRelease(v22);
    v23 = cf[0];
  }

  else
  {
    v23 = cf[0];
    if (v20)
    {
      v24 = 1;
      if (!cf[0])
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if (!CFPreferencesAppValueIsForced(a1, @"com.apple.networkConnect"))
  {
    logCFPreferencesChange(a1, v23);
    v27 = *MEMORY[0x1E695E8B8];
    v28 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(a1, v23, @"com.apple.networkConnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v24 = CFPreferencesSynchronize(@"com.apple.networkConnect", v27, v28);
    notify_post("com.apple.networkConnect");
    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v24 = 0;
  if (v23)
  {
LABEL_25:
    CFRelease(v23);
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

CFTypeRef removeCallout(int a1, CFDictionaryRef theDict, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return CFRetain(theDict);
  }
}

uint64_t SCUserPreferencesSetCurrent(CFTypeRef cf)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v7 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = *(cf + 2);
  v4 = *(cf + 3);
  v5 = *MEMORY[0x1E69E9840];

  return processPreferences(v3, setCurrentCallout, v4, 0, 0);
}

__CFDictionary *setCurrentCallout(int a1, CFDictionaryRef theDict, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    CFDictionaryRemoveValue(MutableCopy, @"ConnectByDefault");
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      CFDictionarySetValue(MutableCopy, @"ConnectByDefault", *MEMORY[0x1E695E4D0]);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyName(CFTypeRef cf)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      goto LABEL_9;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = processPreferences(*(cf + 2), copyNameCallout, *(cf + 3), 0, cfa);
  result = cfa[0];
  if (!v3 && cfa[0])
  {
    CFRelease(cfa[0]);
LABEL_9:
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef copyNameCallout(int a1, CFDictionaryRef theDict, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v13 = *MEMORY[0x1E69E9840];
    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }

    v10 = CFDictionaryGetValue(theDict, @"UserDefinedName");
    *a5 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = CFStringGetTypeID();
    }

    else
    {
      v16 = CFDictionaryGetValue(theDict, @"PPP");
      v17 = CFDictionaryGetTypeID();
      if (v16 && CFGetTypeID(v16) == v17)
      {
        v11 = CFDictionaryGetValue(v16, @"UserDefinedName");
        *a5 = v11;
      }

      else
      {
        v11 = *a5;
      }

      v12 = CFStringGetTypeID();
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (CFGetTypeID(v11) == v12)
    {
      *a5 = v11;
      CFRetain(v11);
      goto LABEL_18;
    }

LABEL_17:
    *a5 = 0;
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];

  return CFRetain(theDict);
}

uint64_t SCUserPreferencesSetName(CFTypeRef cf, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!cf)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(a2) != TypeID)
    {
      goto LABEL_10;
    }
  }

  v6 = *(cf + 2);
  v7 = *(cf + 3);
  v8 = *MEMORY[0x1E69E9840];

  return processPreferences(v6, setNameCallout, v7, a2, 0);
}

__CFDictionary *setNameCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      if (a4)
      {
        CFDictionarySetValue(MutableCopy, @"UserDefinedName", a4);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
      }

      v12 = CFDictionaryGetValue(MutableCopy, @"PPP");
      v13 = CFDictionaryGetTypeID();
      if (v12)
      {
        if (CFGetTypeID(v12) == v13)
        {
          v14 = CFDictionaryCreateMutableCopy(0, 0, v12);
          v15 = v14;
          if (a4)
          {
            CFDictionarySetValue(v14, @"UserDefinedName", a4);
          }

          else
          {
            CFDictionaryRemoveValue(v14, @"UserDefinedName");
          }

          CFDictionarySetValue(MutableCopy, @"PPP", v15);
          CFRelease(v15);
        }
      }
    }
  }

  else
  {
    MutableCopy = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyInterfaceConfiguration(const void *a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && (DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2)) != 0)
  {
    v6 = *MEMORY[0x1E69E9840];

    return SCUserPreferencesCopyInterfaceTypeConfiguration(a1, DefaultConfigurationType);
  }

  else
  {
    _SCErrorSet(1002);
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFTypeRef SCUserPreferencesCopyInterfaceTypeConfiguration(CFTypeRef cf, uint64_t a2)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      goto LABEL_9;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  v5 = processPreferences(*(cf + 2), copyInterfaceConfigurationCallout, *(cf + 3), a2, cfa);
  result = cfa[0];
  if (!v5 && cfa[0])
  {
    CFRelease(cfa[0]);
LABEL_9:
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef copyInterfaceConfigurationCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4, CFTypeRef *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      if (*a5)
      {
        CFRelease(*a5);
        *a5 = 0;
      }

      v11 = CFDictionaryGetValue(theDict, a4);
      *a5 = v11;
      v12 = CFDictionaryGetTypeID();
      if (v11 && CFGetTypeID(v11) == v12)
      {
        *a5 = v11;
        CFRetain(v11);
      }

      else
      {
        *a5 = 0;
      }
    }

    v16 = *MEMORY[0x1E69E9840];

    return CFRetain(theDict);
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];
    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCUserPreferencesSetInterfaceConfiguration(const void *a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && (DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2)) != 0)
  {
    v8 = *MEMORY[0x1E69E9840];

    return SCUserPreferencesSetInterfaceTypeConfiguration(a1, DefaultConfigurationType, a3);
  }

  else
  {
    _SCErrorSet(1002);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCUserPreferencesSetInterfaceTypeConfiguration(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v11 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_8;
  }

  v7 = *(cf + 2);
  v8 = *(cf + 3);
  v9 = *MEMORY[0x1E69E9840];

  return processPreferences(v7, setInterfaceConfigurationCallout, v8, a2, a3);
}

__CFDictionary *setInterfaceConfigurationCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4, const void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      if (a5)
      {
        CFDictionarySetValue(MutableCopy, a4, a5);
        if (CFEqual(a4, @"PPP"))
        {
          v12 = CFDictionaryGetValue(a5, @"UserDefinedName");
          if (v12)
          {
            CFDictionarySetValue(MutableCopy, @"UserDefinedName", v12);
          }

          else
          {
            v15 = CFDictionaryGetValue(MutableCopy, @"UserDefinedName");
            if (v15)
            {
              v16 = v15;
              v17 = CFDictionaryCreateMutableCopy(0, 0, a5);
              CFDictionarySetValue(v17, @"UserDefinedName", v16);
              CFDictionarySetValue(MutableCopy, a4, v17);
              CFRelease(v17);
            }
          }
        }
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, a4);
      }
    }
  }

  else
  {
    MutableCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyExtendedInterfaceConfiguration(CFTypeRef cf, const void *a2, const void *a3)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    goto LABEL_12;
  }

  if (!cf)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !__SCNetworkInterfaceIsValidExtendedConfigurationType(a2, a3, 0))
  {
    goto LABEL_11;
  }

  v8 = processPreferences(*(cf + 2), copyInterfaceConfigurationCallout, *(cf + 3), a3, cfa);
  result = cfa[0];
  if (!v8 && cfa[0])
  {
    CFRelease(cfa[0]);
LABEL_12:
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCUserPreferencesSetExtendedInterfaceConfiguration(CFTypeRef cf, const void *a2, const void *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (!cf)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v8)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !__SCNetworkInterfaceIsValidExtendedConfigurationType(a2, a3, 0))
  {
    goto LABEL_11;
  }

  v10 = *(cf + 2);
  v11 = *(cf + 3);
  v12 = *MEMORY[0x1E69E9840];

  return processPreferences(v10, setInterfaceConfigurationCallout, v11, a3, a4);
}

CFTypeRef SCNetworkConnectionCopyAllUserPreferences(const __SCNetworkConnection *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v1 = SCNetworkConnectionCopyServiceID(a1);
  if (!processPreferences(v1, copyAllCallout, 0, 0, cf) && cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  CFRelease(v1);
  result = cf[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef copyAllCallout(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, __CFArray **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        Private = __SCUserPreferencesCreatePrivate(a1, Value);
        if (Private)
        {
          v11 = Private;
          Mutable = *a5;
          if (!*a5)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            *a5 = Mutable;
          }

          CFArrayAppendValue(Mutable, v11);
          CFRelease(v11);
        }
      }
    }

    v13 = *MEMORY[0x1E69E9840];

    return CFRetain(theDict);
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];
    v16 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFTypeRef SCNetworkConnectionCopyCurrentUserPreferences(const __SCNetworkConnection *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v1 = SCNetworkConnectionCopyServiceID(a1);
  if (!processPreferences(v1, copyCurrentCallout, 0, 0, cf) && cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  CFRelease(v1);
  result = cf[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef copyCurrentCallout(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v10 = CFDictionaryGetValue(theDict, @"ConnectByDefault");
        v11 = CFBooleanGetTypeID();
        if (v10)
        {
          if (CFGetTypeID(v10) == v11 && CFBooleanGetValue(v10))
          {
            *a5 = __SCUserPreferencesCreatePrivate(a1, Value);
          }
        }
      }
    }

    v12 = *MEMORY[0x1E69E9840];

    return CFRetain(theDict);
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
    v15 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkConnectionCreateUserPreferences(const __SCNetworkConnection *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = SCNetworkConnectionCopyServiceID(a1);
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);
  Private = __SCUserPreferencesCreatePrivate(v1, v3);
  if (Private)
  {
    processPreferences(v1, createCallout, v3, 0, 0);
  }

  CFRelease(v3);
  CFRelease(v1);
  v5 = *MEMORY[0x1E69E9840];
  return Private;
}

uint64_t __SCUserPreferencesCreatePrivate(const __CFString *a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a1);
    *(Instance + 24) = CFStringCreateCopy(0, a2);
  }

  v5 = *MEMORY[0x1E69E9840];
  return Instance;
}

__CFDictionary *createCallout(int a1, CFTypeRef cf, const void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v3 = *MEMORY[0x1E69E9840];
    v4 = *MEMORY[0x1E69E9840];

    return CFRetain(cf);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"UniqueIdentifier", a3);
    v8 = *MEMORY[0x1E69E9840];
    return Mutable;
  }
}

CFDictionaryRef SCUserPreferencesCopyStartOptions(CFTypeRef cf)
{
  theDict[1] = *MEMORY[0x1E69E9840];
  theDict[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_49:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_50;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_49;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_49;
  }

  processPreferences(*(cf + 2), copyOptionsCallout, *(cf + 3), 0, theDict);
  if (!theDict[0])
  {
    goto LABEL_47;
  }

  Value = CFDictionaryGetValue(theDict[0], @"PPP");
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v5 = CFDictionaryGetValue(Value, @"AuthPasswordEncryption");
    v6 = v5 ? v5 : @"Keychain";
    v7 = CFStringGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == v7 && CFEqual(v6, @"Keychain"))
      {
        UniqueID = CFDictionaryGetValue(Value, @"AuthPassword");
        v9 = CFStringGetTypeID();
        if (UniqueID)
        {
          if (CFGetTypeID(UniqueID) == v9)
          {
            goto LABEL_20;
          }

          v10 = CFDataGetTypeID();
          if (CFGetTypeID(UniqueID) == v10 && (CFDataGetLength(UniqueID) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          CFDataGetTypeID();
        }

        UniqueID = SCUserPreferencesGetUniqueID(cf);
LABEL_20:
        if (_SCSecKeychainPasswordItemExists())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
          CFDictionarySetValue(MutableCopy, @"AuthPassword", UniqueID);
          CFDictionarySetValue(MutableCopy, @"AuthPasswordEncryption", @"Keychain");
          v12 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
          CFDictionarySetValue(v12, @"PPP", MutableCopy);
          CFRelease(MutableCopy);
          CFRelease(theDict[0]);
          theDict[0] = v12;
        }
      }
    }
  }

LABEL_22:
  v13 = CFDictionaryGetValue(theDict[0], @"IPSec");
  v14 = CFDictionaryGetTypeID();
  if (v13)
  {
    if (CFGetTypeID(v13) == v14)
    {
      v15 = CFDictionaryGetValue(v13, @"AuthenticationMethod");
      v16 = CFStringGetTypeID();
      if (v15)
      {
        if (CFGetTypeID(v15) == v16 && CFEqual(v15, @"SharedSecret"))
        {
          v17 = CFDictionaryGetValue(v13, @"SharedSecretEncryption");
          v18 = v17 ? v17 : @"Keychain";
          v19 = CFStringGetTypeID();
          if (v18)
          {
            if (CFGetTypeID(v18) == v19 && CFEqual(v18, @"Keychain"))
            {
              v20 = CFDictionaryGetValue(v13, @"SharedSecret");
              v21 = CFStringGetTypeID();
              if (!v20)
              {
                CFDataGetTypeID();
                goto LABEL_39;
              }

              if (CFGetTypeID(v20) == v21)
              {
                CFRetain(v20);
LABEL_40:
                v24 = _SCSecKeychainPasswordItemCopy();
                if (v24)
                {
                  v25 = v24;
                  v26 = CFDictionaryCreateMutableCopy(0, 0, v13);
                  BytePtr = CFDataGetBytePtr(v25);
                  Length = CFDataGetLength(v25);
                  v29 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0);
                  CFRelease(v25);
                  CFDictionarySetValue(v26, @"SharedSecret", v29);
                  CFRelease(v29);
                  CFDictionaryRemoveValue(v26, @"SharedSecretEncryption");
                  v30 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
                  CFDictionarySetValue(v30, @"IPSec", v26);
                  CFRelease(v26);
                  CFRelease(theDict[0]);
                  theDict[0] = v30;
                }

                else
                {
                  v31 = _SCSecKeychainCopySystemKeychain();
                  if (v31)
                  {
                    v32 = v31;
                    if (_SCSecKeychainPasswordItemExists())
                    {
                      v33 = CFDictionaryCreateMutableCopy(0, 0, v13);
                      CFDictionarySetValue(v33, @"SharedSecret", v20);
                      CFDictionarySetValue(v33, @"SharedSecretEncryption", @"Keychain");
                      v34 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
                      CFDictionarySetValue(v34, @"IPSec", v33);
                      CFRelease(v33);
                      CFRelease(theDict[0]);
                      theDict[0] = v34;
                    }

                    CFRelease(v32);
                  }
                }

                CFRelease(v20);
                goto LABEL_47;
              }

              v22 = CFDataGetTypeID();
              if (CFGetTypeID(v20) != v22 || (CFDataGetLength(v20) & 1) != 0)
              {
LABEL_39:
                v23 = SCUserPreferencesGetUniqueID(cf);
                v20 = CFStringCreateMutableCopy(0, 0, v23);
                CFStringAppend(v20, @".SS");
                goto LABEL_40;
              }
            }
          }
        }
      }
    }
  }

LABEL_47:
  result = theDict[0];
LABEL_50:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef copyOptionsCallout(int a1, CFDictionaryRef theDict, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      if (*a5)
      {
        CFRelease(*a5);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      *a5 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"UniqueIdentifier");
      CFDictionaryRemoveValue(*a5, @"ConnectByDefault");
    }

    v11 = *MEMORY[0x1E69E9840];

    return CFRetain(theDict);
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];
    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkConnectionStartWithUserPreferences(const __SCNetworkConnection *a1, CFTypeRef cf, Boolean a3)
{
  v9 = *MEMORY[0x1E69E9840];
  started = SCUserPreferencesCopyStartOptions(cf);
  v6 = SCNetworkConnectionStart(a1, started, a3);
  if (started)
  {
    CFRelease(started);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t SCUserPreferencesCheckInterfacePassword(const void *a1, const void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    goto LABEL_10;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      v8 = @"XAuthPassword";
      v9 = @"XAuthPasswordEncryption";
      v10 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      goto LABEL_9;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = kSCValNetVPNAuthPasswordEncryptionKeychain;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v7 = copyUserSharedSecretID(v6, a1);
        v8 = @"SharedSecret";
        v9 = @"SharedSecretEncryption";
        v10 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_15:
        password = __extract_password(0, v6, v8, v9, *v10, v7, 0);
        if (v6)
        {
          CFRelease(v6);
        }

        v15 = v7;
        goto LABEL_18;
      }

LABEL_9:
      _SCErrorSet(1002);
LABEL_10:
      password = 0;
      goto LABEL_19;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
  }

  password = __extract_password(0, v11, @"AuthPassword", @"AuthPasswordEncryption", *v13, UserPasswordID, 0);
  if (v11)
  {
    v15 = v11;
LABEL_18:
    CFRelease(v15);
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return password;
}

uint64_t checkUserPreferencesPassword(CFTypeRef cf, const void *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_21;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_21;
  }

  result = 1;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        InterfaceType = SCNetworkInterfaceGetInterfaceType(a2);
        if (!CFEqual(InterfaceType, @"PPP"))
        {
          goto LABEL_21;
        }

        Interface = SCNetworkInterfaceGetInterface(a2);
        if (!Interface)
        {
          goto LABEL_21;
        }

        v9 = SCNetworkInterfaceGetInterfaceType(Interface);
        v10 = &kSCNetworkInterfaceTypeL2TP;
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    v9 = SCNetworkInterfaceGetInterfaceType(a2);
    v10 = &kSCNetworkInterfaceTypePPP;
LABEL_18:
    if (CFEqual(v9, *v10))
    {
      result = 1;
      goto LABEL_22;
    }

LABEL_21:
    _SCErrorSet(1002);
    result = 0;
    goto LABEL_22;
  }

  switch(a3)
  {
    case 3:
      goto LABEL_21;
    case 4:
      v9 = SCNetworkInterfaceGetInterfaceType(a2);
      v10 = &kSCNetworkInterfaceTypeIPSec;
      goto LABEL_18;
    case 5:
      v9 = SCNetworkInterfaceGetInterfaceType(a2);
      v10 = kSCNetworkInterfaceTypeVPN;
      goto LABEL_18;
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}