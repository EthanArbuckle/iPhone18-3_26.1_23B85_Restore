uint64_t __IOHIDServiceEventCallback_cold_5(uint64_t result, uint64_t a2)
{
  if (*(result + 472))
  {
    v3 = mach_absolute_time();
    _IOHIDGetTimestampDelta(v3, a2, 0x3E8u);
    return IOHIDAnalyticsHistogramEventSetIntegerValue();
  }

  return result;
}

uint64_t __IOHIDServiceQueueDidExecute(uint64_t result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceQueueDidExecute_cold_1(&v2, v3);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef IORegistryEntrySearchCFProperty(io_registry_entry_t entry, const io_name_t plane, CFStringRef key, CFAllocatorRef allocator, IOOptionBits options)
{
  size_4[256] = *MEMORY[0x1E69E9840];
  size = 0;
  errorString = 0;
  address = 0;
  bufferSize = 2048;
  CStringPtr = CFStringGetCStringPtr(key, 0);
  if (CStringPtr)
  {
    v11 = CStringPtr;
    v12 = 0;
  }

  else
  {
    Length = CFStringGetLength(key);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0);
    v17 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0xB2CB5BB5uLL);
    if (!v17)
    {
LABEL_17:
      v19 = 0;
      goto LABEL_28;
    }

    v12 = v17;
    if (!CFStringGetCString(key, v17, MaximumSizeForEncoding + 4, 0))
    {
      v18 = -536870212;
LABEL_15:
      free(v12);
      goto LABEL_16;
    }

    v11 = v12;
  }

  if (gIOKitLibSerializeOptions)
  {
    if (options)
    {
      v14 = plane;
    }

    else
    {
      v14 = &unk_19723D790;
    }

    property_bin_buf = io_registry_entry_get_property_bin_buf(entry, v14, v11, options, size_4, &bufferSize, &address, &size);
  }

  else if (options)
  {
    property_bin_buf = io_registry_entry_get_property_recursively(entry, plane, v11, options, &address, &size);
  }

  else
  {
    property_bin_buf = io_registry_entry_get_property(entry, v11);
  }

  v18 = property_bin_buf;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v18)
  {
    goto LABEL_17;
  }

  v20 = address;
  if (address)
  {
    v21 = size;
  }

  else
  {
    v21 = bufferSize;
    v20 = size_4;
  }

  v19 = IOCFUnserializeWithSize(v20, v21, allocator, 0, &errorString);
  if (!v19 && errorString)
  {
    v22 = CFStringGetCStringPtr(errorString, 0);
    if (v22)
    {
      puts(v22);
    }

    CFRelease(errorString);
  }

  if (address)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
  }

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t _IOHIDEventSystemConnectionSetProperty(uint64_t a1, CFTypeRef cf1, const __CFArray *a3)
{
  if (*MEMORY[0x1E695E738] == a1)
  {
    return 0;
  }

  v6 = *(a1 + 448);
  if (v6 && (IOHIDConnectionFilterSetProperty(v6, cf1, a3) & 1) != 0)
  {
    return 1;
  }

  if (CFEqual(cf1, @"ClientEventFilter"))
  {
    _IOHIDEventSystemConnectionSetProperty_cold_3(a3, a1);
    return 1;
  }

  if (CFEqual(cf1, @"ClientSuspend"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      _IOHIDEventSystemConnectionSetProperty_cold_5(a3, a1, &valuePtr);
      return valuePtr;
    }
  }

  result = CFEqual(cf1, @"IdleNotificationTime");
  if (!result)
  {
    return result;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
  v10 = valuePtr;
  if (*(a1 + 416) != valuePtr)
  {
    *(a1 + 416) = valuePtr;
    if (!*(a1 + 424))
    {
      v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 96));
      *(a1 + 424) = v11;
      if (!v11)
      {
        v15 = _IOHIDLogCategory(9u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionSetProperty_cold_2(a1);
        }

        return 1;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___IOHIDEventSystemConnectionSetProperty_block_invoke;
      v16[3] = &__block_descriptor_tmp_146;
      v16[4] = a1;
      dispatch_source_set_event_handler(v11, v16);
      dispatch_source_set_timer(*(a1 + 424), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_activate(*(a1 + 424));
      v10 = *(a1 + 416);
    }

    if (v10)
    {
      Session = _IOHIDEventSystemGetSession(*(a1 + 8));
      if (*(a1 + 432) || (ActivityNotification = _IOHIDSessionCreateActivityNotification(Session, __IOHIDEventSystemConnectionActivityNotification, a1, 0), (*(a1 + 432) = ActivityNotification) != 0))
      {
        _IOHIDEventSystemConnectionSetProperty_cold_6(a1, (a1 + 416));
      }

      else
      {
        v14 = _IOHIDLogCategory(9u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionSetProperty_cold_1(a1);
        }
      }
    }

    else
    {
      _IOHIDEventSystemConnectionSetProperty_cold_4(a1, (a1 + 424));
    }
  }

  return 1;
}

uint64_t _IOHIDServiceSetPropertyForClient(uint64_t a1, const void *a2, const void *a3, CFTypeRef cf)
{
  v70 = *MEMORY[0x1E69E9840];
  if (cf && (v8 = CFGetTypeID(cf), v8 == IOHIDEventSystemConnectionGetTypeID()))
  {
    UUID = IOHIDEventSystemConnectionGetUUID(cf);
    v10 = 0;
    v11 = cf;
  }

  else
  {
    v11 = 0;
    UUID = 0;
    v10 = 1;
  }

  v12 = mach_absolute_time();
  v56 = 0;
  v57 = &v56;
  v58 = 0x3000000000;
  v59 = a2;
  v60 = a3;
  v61 = v11;
  if ((v10 & 1) == 0 && !IOHIDServiceCheckEntitlements(a1, v11))
  {
    goto LABEL_31;
  }

  if (cf && CFEqual(cf, *MEMORY[0x1E695E738]))
  {
    os_unfair_lock_lock((a1 + 456));
    CFDictionaryReplaceValue(*(a1 + 312), a2, a3);
    os_unfair_lock_unlock((a1 + 456));
  }

  if (!a3)
  {
LABEL_31:
    updated = 0;
    goto LABEL_69;
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v55, buf);
  }

  ++**(a1 + 72);
  v13 = *(a1 + 256);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 0x40000000;
  v54[2] = ___IOHIDServiceSetPropertyForClient_block_invoke;
  v54[3] = &unk_1E74A8970;
  v54[4] = &v56;
  v54[5] = a2;
  v54[6] = v11;
  v54[7] = a3;
  _IOHIDCFArrayApplyBlock(v13, v54);
  if (v57[4])
  {
    v14 = *(a1 + 256);
    v71.length = CFArrayGetCount(v14);
    v71.location = 0;
    CFArrayApplyFunction(v14, v71, __FilterFunctionSetPropertyForClient, v57 + 3);
  }

  v15 = *(a1 + 72);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v55, buf);
    }
  }

  if (!v57[4])
  {
    updated = 1;
    goto LABEL_69;
  }

  if ((*(a1 + 296) & 2) == 0)
  {
    if (CFEqual(a2, @"ReportInterval"))
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFNumberGetTypeID())
      {
        if (pthread_mutex_lock((*(a1 + 72) + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v55, buf);
        }

        ++**(a1 + 72);
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 160));
        v17 = *(a1 + 72);
        if (*v17)
        {
          --*v17;
          if (pthread_mutex_unlock((v17 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v55, buf);
          }
        }
      }
    }

    else if (CFEqual(a2, @"BatchInterval"))
    {
      v25 = CFGetTypeID(a3);
      if (v25 == CFNumberGetTypeID())
      {
        if (pthread_mutex_lock((*(a1 + 72) + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v55, buf);
        }

        ++**(a1 + 72);
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 164));
        v26 = *(a1 + 72);
        if (*v26)
        {
          --*v26;
          if (pthread_mutex_unlock((v26 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v55, buf);
          }
        }
      }
    }

LABEL_47:
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v55, buf);
    }

    ++**(a1 + 72);
    v35 = *(a1 + 32);
    if (v35)
    {
      v36 = *(*v35 + 56);
      if (v36)
      {
        v37 = v57[4];
        v38 = v36();
LABEL_59:
        updated = v38;
LABEL_61:
        v45 = *(a1 + 72);
        if (*v45)
        {
          --*v45;
          if (pthread_mutex_unlock((v45 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v55, buf);
          }
        }

        goto LABEL_63;
      }
    }

    v39 = *(a1 + 24);
    if (v39 && (v40 = *(*v39 + 56)) != 0)
    {
      v41 = v57[4];
      v40();
    }

    else
    {
      v42 = *(a1 + 360);
      if (v42)
      {
        v43 = *(v42 + 32);
        if (v43)
        {
          v38 = v43(*(a1 + 344), *(a1 + 352), a2, v57[4]);
          goto LABEL_59;
        }
      }

      v44 = *(a1 + 480);
      if (v44)
      {
        v38 = [v44 *(a1 + 504)];
        goto LABEL_59;
      }
    }

    updated = 1;
    goto LABEL_61;
  }

  v18 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v52 = *(a1 + 400);
    v53 = v57[4];
    *buf = 134218754;
    v63 = v52;
    v64 = 2112;
    v65 = a2;
    v66 = 2112;
    v67 = v53;
    v68 = 2112;
    v69 = UUID;
    _os_log_debug_impl(&dword_197195000, v18, OS_LOG_TYPE_DEBUG, "0x%llx: set property:%@ value:%@ client:%@", buf, 0x2Au);
  }

  if (CFEqual(a2, @"ReportInterval"))
  {
    _IOHIDServiceSetReportIntervalForClient(a1, cf, v57[4]);
    v19 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 400);
      v21 = v57[4];
      *buf = 134218498;
      v63 = v20;
      v64 = 2112;
      v65 = v21;
      v66 = 2112;
      v67 = UUID;
      _os_log_impl(&dword_197195000, v19, OS_LOG_TYPE_DEFAULT, "0x%llx: set report interval:%@ client:%@", buf, 0x20u);
    }

    if (v57[4])
    {
      v22 = mach_absolute_time();
      ReportIntervalForClient = _IOHIDServiceGetReportIntervalForClient(a1, cf, 0);
      _IOHIDServiceSetEventDeadlineForClient(a1, cf, v22, ReportIntervalForClient, 0);
    }
  }

  else if (CFEqual(a2, @"BatchInterval"))
  {
    _IOHIDServiceSetBatchIntervalForClient(a1, cf, v57[4]);
    v27 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 400);
      v29 = v57[4];
      *buf = 134218498;
      v63 = v28;
      v64 = 2112;
      v65 = v29;
      v66 = 2112;
      v67 = UUID;
      _os_log_impl(&dword_197195000, v27, OS_LOG_TYPE_DEFAULT, "0x%llx: set batch interval:%@ client:%@", buf, 0x20u);
    }
  }

  else
  {
    if (!CFEqual(a2, @"IOHIDEventSystemClientIsUnresponsive"))
    {
      goto LABEL_47;
    }

    v30 = _IOHIDServiceCopyConnectionCache(a1, cf);
    if (!v30)
    {
      updated = 1;
      goto LABEL_63;
    }

    v31 = v30;
    v32 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 400);
      v34 = v57[4];
      *buf = 134218498;
      v63 = v33;
      v64 = 2112;
      v65 = v34;
      v66 = 2112;
      v67 = UUID;
      _os_log_impl(&dword_197195000, v32, OS_LOG_TYPE_DEFAULT, "0x%llx: unresponsive:%@ client:%@", buf, 0x20u);
    }

    CFRelease(v31);
  }

  updated = __IOHIDServiceUpdateIntervals(a1, cf);
LABEL_63:
  v46 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v46, v12, 0x3E8u);
  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  v47 = mach_absolute_time();
  v48 = _IOHIDGetTimestampDelta(v47, v12, 1u);
  if (v48 > *(a1 + 376))
  {
    *(a1 + 376) = v48;
  }

  v49 = v57[4];
  if (v49 != a3)
  {
    CFRelease(v49);
  }

LABEL_69:
  _Block_object_dispose(&v56, 8);
  v50 = *MEMORY[0x1E69E9840];
  return updated;
}

uint64_t __SetPropertyForObjectFunction(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  result = IOHIDServiceGetTypeID();
  if (v4 == result)
  {
    result = _IOHIDServiceSetPropertyForClient(a1, *a2, *(a2 + 8), *(a2 + 24));
    if (result)
    {
      *(a2 + 16) = 1;
    }
  }

  return result;
}

void __IOMIGMachPortChannelCallback_cold_1(void *a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  msg = dispatch_mach_msg_get_msg();
  __IOMIGMachPortPortCallback(msg, msg, v5, a3);
}

uint64_t IOHIDServiceCheckEntitlements(uint64_t a1, uint64_t a2)
{
  Entitlements = IOHIDEventSystemConnectionGetEntitlements(a2);
  v5 = Entitlements;
  if (*(a1 + 308))
  {
    return (*Entitlements & 0x11) != 0;
  }

  if (!*(a1 + 64))
  {
    return 1;
  }

  v9 = 0;
  if (os_variant_allows_internal_security_policies())
  {
    if ((*v5 & 0x40) != 0)
    {
      return 1;
    }
  }

  v8 = a2;
  v7 = *(a1 + 64);
  v10.length = CFArrayGetCount(v7);
  v10.location = 0;
  CFArrayApplyFunction(v7, v10, EntitlementCheckApplier, &v8);
  return v9;
}

uint64_t IOHIDAnalyticsEventSetIntegerValueForField()
{
  if (setIntegerValueForFieldFuncPtr)
  {
    return setIntegerValueForFieldFuncPtr();
  }

  return result;
}

void __IOMIGMachPortChannelCallback(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (a2 == 8)
  {

    CFRelease(cf);
  }

  else if (a2 == 2)
  {
    v5[1] = v3;
    v5[2] = v4;
    __IOMIGMachPortChannelCallback_cold_1(v5, a3, cf);
  }
}

uint64_t _IOHIDLogCategory(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    _IOHIDLogCategory_cold_2();
  }

  if (_IOHIDLogCategory_onceToken != -1)
  {
    _IOHIDLogCategory_cold_1();
  }

  return _IOHIDLogCategory_log[a1];
}

void __IOMIGMachPortPortCallback(int a1, mach_msg_header_t *a2, int a3, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  v6 = MEMORY[0x19A8DA570](0, *(cf + 8), 4041900246, 0);
  if (v6)
  {
    v7 = v6;
    msgh_remote_port = a2->msgh_remote_port;
    *v6 = a2->msgh_bits & 0x1F;
    *(v6 + 4) = 36;
    *(v6 + 8) = msgh_remote_port;
    *(v6 + 20) = a2->msgh_id + 100;
    if (a2->msgh_id == 70)
    {
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 32) = 0;
      v9 = (v6 + 32);
      v10 = *(cf + 11);
      if (!v10)
      {
        goto LABEL_22;
      }

      v10(cf, *(cf + 12));
    }

    else
    {
      v11 = *MEMORY[0x1E69E99E0];
      *(v6 + 32) = -303;
      v9 = (v6 + 32);
      *(v6 + 24) = v11;
      v12 = *(cf + 9);
      if (!v12)
      {
        goto LABEL_21;
      }

      v12(cf, a2, v6, *(cf + 10));
    }

    if ((v7->msgh_bits & 0x80000000) == 0 && *v9)
    {
      if (*v9 == -305)
      {
        goto LABEL_22;
      }

      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }

    if (v7->msgh_remote_port)
    {
      if ((v7->msgh_bits & 0x1F) == 0x12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 17;
      }

      if ((mach_msg(v7, v13, v7->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
      {
        goto LABEL_22;
      }

      msgh_local_port = v7->msgh_local_port;
      a2 = v7;
      if (msgh_local_port - 1 <= 0xFFFFFFFD)
      {
        a2 = v7;
        if (((v7->msgh_bits >> 8) & 0x1F) - 17 <= 1)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
          a2 = v7;
        }
      }

      goto LABEL_21;
    }

    a2 = v7;
    if ((v7->msgh_bits & 0x80000000) != 0)
    {
LABEL_21:
      mach_msg_destroy(a2);
    }

LABEL_22:
    CFAllocatorDeallocate(0, v7);
  }

  CFRelease(cf);
}

uint64_t __IOHIDEventSystemConnectionPortDemuxCallback(uint64_t (*a1)(CFTypeRef, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t (**cf)(CFTypeRef, uint64_t, uint64_t, uint64_t))
{
  CFRetain(cf);
  os_unfair_recursive_lock_lock_with_options();
  v8 = cf[6];
  if (v8 && cf[4] == a1)
  {
    v10 = cf[7];
    os_unfair_recursive_lock_unlock();
    v9 = v8(cf, a2, a3, v10);
    os_unfair_recursive_lock_lock_with_options();
  }

  else
  {
    v9 = 0;
  }

  os_unfair_recursive_lock_unlock();
  CFRelease(cf);
  return v9;
}

uint64_t __IOHIDEventSystemConnectionDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_1F0B91E78 && v3 < unk_1F0B91E7C)
  {
    LOBYTE(result) = iohideventsystem_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t iohideventsystem_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 70029) >= 0xFFFFFFE3 && (v5 = *(&_iohideventsystem_subsystem + 5 * (v4 - 70000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

const void *IOMIGMachPortCacheCopy(unsigned int a1)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  Value = CFDictionaryGetValue(__ioPortCache, a1);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock(&__ioPortCacheLock);
  return v3;
}

uint64_t _IOHIDObjectRetainCount(uint64_t a1, char *cf, int a3)
{
  v3 = cf;
  v17 = *MEMORY[0x1E69E9840];
  v4 = 20;
  if (!a3)
  {
    v4 = 16;
  }

  if (a1 == -1)
  {
    add = atomic_fetch_add(&cf[v4], 0xFFFFFFFF);
    if (add == 1)
    {
      CFGetTypeID(cf);
      ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
      v9 = 104;
      if (!a3)
      {
        v9 = 32;
      }

      v10 = *(ClassWithTypeID + v9);
      if (v10)
      {
        v10(v3);
      }

      if (a3)
      {
        v11 = CFGetAllocator(v3);
        v12 = v11;
        if (*MEMORY[0x1E695E4A8] != v11)
        {
          if (v11 && *MEMORY[0x1E695E480] != v11 || (v13 = *MEMORY[0x1E695E4A8], v13 != CFAllocatorGetDefault()))
          {
            v3 -= 16;
          }
        }

        CFAllocatorDeallocate(v12, v3);
      }

      else
      {
        _IOHIDObjectInternalRelease(v3);
      }
    }

    else if (!add)
    {
      _IOHIDObjectRetainCount_cold_1(&v15, v16);
    }

    goto LABEL_24;
  }

  if (a1)
  {
    if (a1 == 1 && atomic_fetch_add(&cf[v4], 1u) == -1)
    {
      _IOHIDObjectRetainCount_cold_2(&v15, v16);
    }

LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  result = atomic_load(&cf[v4]);
LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef _IOHIDCreateBinaryData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v2 = a2;
  errorString = 0;
  if (a2)
  {
    v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
    if (v3)
    {
      v4 = v3;
      if (CFWriteStreamOpen(v3))
      {
        CFPropertyListWriteToStream(v2, v4, kCFPropertyListBinaryFormat_v1_0, &errorString);
        CFWriteStreamClose(v4);
        v2 = CFWriteStreamCopyProperty(v4, *MEMORY[0x1E695E900]);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
      if (errorString)
      {
        v5 = _IOHIDLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          _IOHIDCreateBinaryData_cold_1(&errorString, v5);
        }

        CFRelease(errorString);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFPropertyListRef _IOHIDUnserializeAndVMDealloc(UInt8 *bytes, mach_vm_size_t length)
{
  v2 = 0;
  if (bytes && length)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      if (CFReadStreamOpen(v6))
      {
        format = kCFPropertyListBinaryFormat_v1_0;
        v2 = CFPropertyListCreateFromStream(v5, v7, length, 2uLL, &format, 0);
        CFReadStreamClose(v7);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v2 = 0;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], bytes, length);
  }

  return v2;
}

const void *_IOHIDObjectInternalRetain(const void *a1)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (ClassWithTypeID)
  {
    (*(ClassWithTypeID + 96))(1, a1);
  }

  return a1;
}

uint64_t IOHIDEventSystemClientCancel(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(result + 400))
  {
    v1 = *(result + 384) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    result = _os_crash_msg();
    __break(1u);
  }

  v2 = result;
  if ((atomic_fetch_or((result + 312), 2u) & 2) != 0)
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v3 = *(v2 + 296);
    dispatch_mach_cancel();
    v4 = *(v2 + 72);
    dispatch_mach_cancel();
    v5 = *(v2 + 40);
    if (v5)
    {
      IOMIGMachPortUnscheduleFromDispatchQueue(v5, *(v2 + 400));
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      io_hideventsystem_queue_stop(v6);
    }

    v7 = *MEMORY[0x1E69E9840];

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

void IOMIGMachPortUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 32) == a2)
  {
    *(a1 + 32) = 0;
    if (*(a1 + 40))
    {
      dispatch_mach_cancel();
      dispatch_release(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

uint64_t io_hideventsystem_queue_stop(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

void __IOHIDEventSystemClientExtRelease(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = __IOHIDEventSystemClientStateSerialize(a1);
  if (*(a1 + 400))
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      v3 = atomic_load((a1 + 312));
      if (v3 != 3)
      {
        __IOHIDManagerExtRelease_cold_1(&v10, buf, (a1 + 312));
      }
    }
  }

  v4 = _IOHIDLogCategory(0xEu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CStringPtr = CFStringGetCStringPtr(*(a1 + 440), 0x8000100u);
    *buf = 136315394;
    v12 = CStringPtr;
    v13 = 2114;
    v14 = v2;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Released connection: %s\n%{public}@", buf, 0x16u);
  }

  CFRelease(v2);
  if (*(a1 + 456))
  {
    os_state_remove_handler();
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFMachPortInvalidate(v6);
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    CFMachPortInvalidate(v7);
  }

  if (*(a1 + 408) == 1)
  {
    IOHIDEventSystemClientCancel(a1);
  }

  v8 = *(a1 + 384);
  if (v8 && (IOHIDEventSystemClientUnscheduleWithRunLoop(a1, v8, *(a1 + 392)), *(a1 + 384)) || !*(a1 + 400))
  {
    dispatch_release(*(a1 + 488));
  }

  v9 = *MEMORY[0x1E69E9840];
}

CFMutableDictionaryRef __IOHIDEventSystemClientStateSerialize(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = *(a1 + 480);
    if (v4)
    {
      _IOHIDDictionaryAddSInt64(Mutable, @"MaxEventLatency", v4);
      v5 = CFGetAllocator(a1);
      v6 = _IOHIDCreateTimeString(v5, (a1 + 464));
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(Mutable, @"LastEventTime", v6);
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 512);
    if (v8)
    {
      _IOHIDDictionaryAddSInt64(Mutable, @"PropertyNotificationCount", v8);
      v9 = CFGetAllocator(a1);
      v10 = _IOHIDCreateTimeString(v9, (a1 + 496));
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"LastPropertyNotificationTime", v10);
        CFRelease(v11);
      }
    }

    v12 = *(a1 + 432);
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"caller", v12);
    }

    v13 = *(a1 + 440);
    if (v13)
    {
      CFDictionarySetValue(Mutable, @"UUID", v13);
    }

    _IOHIDDictionaryAddSInt32(Mutable, @"port", *(a1 + 32));
    _IOHIDDictionaryAddSInt32(Mutable, @"resetCount", *(a1 + 144));
    _IOHIDDictionaryAddSInt32(Mutable, @"eventCount", *(a1 + 148));
    _IOHIDDictionaryAddSInt64(Mutable, @"eventMask", *(a1 + 152));
    v14 = *MEMORY[0x1E695E4D0];
    v15 = *MEMORY[0x1E695E4C0];
    if (*(a1 + 400))
    {
      v16 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v16 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"dispatchQueue", v16);
    if (*(a1 + 392))
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    CFDictionarySetValue(Mutable, @"runloop", v17);
    Count = CFDictionaryGetCount(*(a1 + 96));
    v19 = CFArrayCreateMutable(v2, Count, MEMORY[0x1E695E9C0]);
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + 96);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = ____IOHIDEventSystemClientStateSerialize_block_invoke;
      context[3] = &__block_descriptor_tmp_108;
      context[4] = v20;
      _IOHIDCFDictionaryApplyBlock(v21, context);
      CFDictionarySetValue(Mutable, @"services", v20);
      CFRelease(v20);
    }

    v22 = CFDictionaryGetCount(*(a1 + 104));
    v23 = CFArrayCreateMutable(v2, v22, MEMORY[0x1E695E9C0]);
    if (v23)
    {
      v24 = v23;
      v25 = *(a1 + 104);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = ____IOHIDEventSystemClientStateSerialize_block_invoke_2;
      v30[3] = &__block_descriptor_tmp_112;
      v30[4] = v24;
      _IOHIDCFDictionaryApplyBlock(v25, v30);
      CFDictionarySetValue(Mutable, @"virtualServices", v24);
      CFRelease(v24);
    }

    v26 = *(a1 + 272);
    if (v26)
    {
      v27 = _IOHIDEventQueueSerializeState(v26);
      if (v27)
      {
        v28 = v27;
        CFDictionarySetValue(Mutable, @"eventQueue", v27);
        CFRelease(v28);
      }
    }

    os_unfair_recursive_lock_unlock();
  }

  return Mutable;
}

void _IOHIDDictionaryAddSInt32(void *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a1, a2, v6);
    CFRelease(v7);
  }
}

void _IOHIDDictionaryAddSInt64(void *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a1, a2, v6);
    CFRelease(v7);
  }
}

uint64_t _io_hideventsystem_queue_stop(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      v4 = _IOHIDEventSystemConnectionCopyQueue(v2);
      if (v4)
      {
        v5 = v4;
        _IOHIDEventSystemConnectionQueueStop(v2);
        IOHIDEventQueueStop(v5);
        CFRelease(v5);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_queue_stop(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_queue_stop(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionQueueStop(uint64_t result)
{
  v1 = result;
  v33 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E738] == result || (*(result + 264) & 1) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    v2 = *(v1 + 8);
    v3 = *(v1 + 24);
    if (v3 && *(v1 + 128))
    {
      if (*(v1 + 104))
      {
        previous = 0;
        v4 = MEMORY[0x1E69E9A60];
        v5 = *MEMORY[0x1E69E9A60];
        NotificationPort = IOHIDEventQueueGetNotificationPort(v3);
        v7 = mach_port_request_notification(v5, NotificationPort, 66, 1u, *(v1 + 104), 0x15u, &previous);
        if (v7)
        {
          v8 = v7;
          v9 = _IOHIDLogCategory(9u);
          v10 = v9;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            _IOHIDEventSystemConnectionQueueStop_cold_1(v1, v8, v10, v11, v12, v13, v14, v15);
          }

          __IOHIDEventSystemConnectionCheckServerStatus(v8, v1);
        }

        else if (previous)
        {
          v17 = _IOHIDLogCategory(9u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v1 + 168);
            *buf = 136315394;
            v30 = v18;
            v31 = 1024;
            v32 = previous;
            _os_log_impl(&dword_197195000, v17, OS_LOG_TYPE_DEFAULT, "%s: mach_port_request_notification(notify) unexpected old notify port %#x", buf, 0x12u);
          }

          v19 = mach_port_deallocate(*v4, previous);
          if (v19)
          {
            v20 = v19;
            v21 = _IOHIDLogCategory(9u);
            v22 = v21;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              _IOHIDEventSystemConnectionQueueStop_cold_2(v1, v20, v22, v23, v24, v25, v26, v27);
            }
          }
        }
      }

      *(v1 + 128) = 0;
    }

    *(v1 + 264) |= 2u;
    os_unfair_recursive_lock_unlock();
    result = _IOHIDEventSystemSetPropertyForConnection(v2, @"IOHIDEventSystemClientIsUnresponsive", *MEMORY[0x1E695E4D0], v1);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDEventQueueGetNotificationPort(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 96);
  os_unfair_recursive_lock_unlock();
  return v2;
}

void _IOHIDArrayAppendSInt64(void *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFNumberCreate(v3, kCFNumberSInt64Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(a1, v4);
    CFRelease(v5);
  }
}

CFMutableDictionaryRef _IOHIDEventQueueSerializeState(uint64_t a1)
{
  v16 = 0;
  *port_info_out = 0u;
  v15 = 0u;
  port_info_outCnt = 10;
  v2 = *MEMORY[0x1E69E9A60];
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 96);
  os_unfair_recursive_lock_unlock();
  attributes = mach_port_get_attributes(v2, v3, 2, port_info_out, &port_info_outCnt);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      _IOHIDDictionaryAddSInt32(Mutable, @"tail", v7[2]);
      _IOHIDDictionaryAddSInt32(v6, @"head", v7[1]);
      _IOHIDDictionaryAddSInt32(v6, @"size", *v7);
      _IOHIDDictionaryAddSInt32(v6, @"droppedEvents", *(a1 + 168));
      if (!attributes)
      {
        _IOHIDDictionaryAddSInt32(v6, @"msgCount", v15);
      }

      _IOHIDDictionaryAddSInt64(v6, @"lastNotifyTime", *(a1 + 128));
      _IOHIDDictionaryAddSInt64(v6, @"lastNotifyEventTimeStamp", *(a1 + 120));
      _IOHIDDictionaryAddSInt64(v6, @"notificationCount", *(a1 + 136));
      v8 = *MEMORY[0x1E695E4D0];
      v9 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 148))
      {
        v10 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(v6, @"active", v10);
      if (*(a1 + 152))
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      CFDictionaryAddValue(v6, @"suspended", v11);
    }
  }

  return v6;
}

uint64_t _IOHIDEventSystemSetPropertyForConnection(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v7 = *(a1 + 128);
  if (_IOHIDEventSystemConnectionSetProperty(a4, a2, a3))
  {
    return 1;
  }

  else
  {
    return _IOHIDSessionSetPropertyForClient(v7, a2, a3, a4);
  }
}

uint64_t _IOHIDSessionSetPropertyForClient(uint64_t a1, CFTypeRef cf1, const void *a3, const void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!cf1)
  {
LABEL_5:
    v9 = 1;
    goto LABEL_44;
  }

  if (CFEqual(cf1, @"HIDParameters"))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDictionaryGetTypeID())
    {
      *context = a1;
      *&context[8] = a4;
      CFDictionaryApplyFunction(a3, __FunctionApplierForParameters, context);
    }

    goto LABEL_5;
  }

  if (CFEqual(cf1, @"LogLevel"))
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFNumberGetTypeID())
    {
      *context = *(a1 + 128);
      CFNumberGetValue(a3, kCFNumberIntType, context);
      if (*(a1 + 128) != *context)
      {
        *(a1 + 128) = *context;
      }
    }
  }

  if (CFEqual(cf1, @"HIDDebug"))
  {
    v11 = CFGetTypeID(a3);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a3, kCFNumberIntType, &gIOHIDDebugConfig);
    }
  }

  v12 = CFEqual(cf1, @"CASecureLayerOnScreen");
  if (v12 && (*IOHIDEventSystemConnectionGetEntitlements(a4) & 2) == 0 && (*IOHIDEventSystemConnectionGetEntitlements(a4) & 1) == 0)
  {
    _IOHIDSessionSetPropertyForClient_cold_1(a4, context);
    v9 = context[0];
    goto LABEL_44;
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v29, context);
  }

  ++**(a1 + 32);
  CFDictionarySetValue(*(a1 + 120), cf1, a3);
  v28[0] = a1;
  v28[1] = cf1;
  v28[2] = a3;
  if (a4 && CFEqual(a4, *MEMORY[0x1E695E738]))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v28[3] = v13;
  v14 = *(a1 + 152);
  v33.length = CFArrayGetCount(v14);
  v33.location = 0;
  CFArrayApplyFunction(v14, v33, __FilterFunctionSetPropertyForClient_0, v28);
  v15 = 0;
  if (!v12)
  {
    v15 = CFRetain(*(a1 + 136));
  }

  v16 = *(a1 + 32);
  if (*v16)
  {
    --*v16;
    if (pthread_mutex_unlock((v16 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v29, context);
    }
  }

  if (v12)
  {
    v9 = 1;
  }

  else
  {
    *context = cf1;
    *&context[8] = a3;
    *&context[16] = 0;
    v31 = a4;
    CFSetApplyFunction(v15, __SetPropertyForObjectFunction, context);
    v9 = context[16];
    CFRelease(v15);
  }

  v17 = *(a1 + 8);
  v18 = _IOHIDLogCategory(2u);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *context = 138412802;
    *&context[4] = cf1;
    *&context[12] = 2112;
    *&context[14] = a3;
    *&context[22] = 2112;
    v31 = a4;
    _os_log_debug_impl(&dword_197195000, v18, OS_LOG_TYPE_DEBUG, "SetProperty called %@=%@ caller=%@", context, 0x20u);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v29, context);
  }

  v19 = *(a1 + 32);
  v20 = *v19;
  v21 = *v19 + 1;
  *v19 = v21;
  if (v20 == -1)
  {
    _IOHIDEventSystemPropertyChanged(v17, a4, cf1, a3);
    v22 = *(a1 + 32);
    goto LABEL_42;
  }

  v23 = v20 + 1;
  do
  {
    v24 = *(a1 + 32);
    if (*v24)
    {
      --*v24;
      if (pthread_mutex_unlock((v24 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v29, context);
      }
    }

    --v23;
  }

  while (v23);
  _IOHIDEventSystemPropertyChanged(v17, a4, cf1, a3);
  v22 = *(a1 + 32);
  if (!v21)
  {
LABEL_42:
    v25 = *v22;
    if (!*v22)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  do
  {
    if (pthread_mutex_lock((v22 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v29, context);
    }

    v22 = *(a1 + 32);
    v25 = *v22 + 1;
    *v22 = v25;
    --v21;
  }

  while (v21);
  if (v25)
  {
LABEL_43:
    *v22 = v25 - 1;
    if (pthread_mutex_unlock((v22 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v29, context);
    }
  }

LABEL_44:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

id IOHIDSessionFilterSetPropertyForClient(id result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = *(*v3 + 128);
    if (v4)
    {
      return v4(*(result + 2), a2);
    }
  }

  if (*(result + 7))
  {
    return [*(result + 7) *(result + 9)];
  }

  return result;
}

const __CFArray *IOHIDEventGetDataValueWithOptions(const __CFArray *result, unsigned int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  if (result && a2 < 0x10000 || (result = IOHIDEventGetEventWithOptions(result, HIWORD(a2), a3)) != 0)
  {
    v5 = *(result + 12) + 28;
    if (a2 == 1966083)
    {
      v6 = *(result + 12) + 28;
    }

    else
    {
      v6 = 0;
    }

    if (a2 != 65540)
    {
      v5 = 0;
    }

    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4 == 30)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

__n64 IOHIDEventGetDoubleValueWithOptions(const __CFArray *EventWithOptions, int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  if (!EventWithOptions || a2 >= 0x10000)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(EventWithOptions, HIWORD(a2), a3);
    if (!EventWithOptions)
    {
      result.n64_f64[0] = 0.0;
      return result;
    }
  }

  result.n64_f64[0] = 0.0;
  v6 = *(EventWithOptions + 12);
  switch(v4)
  {
    case 0u:
      if (a2 > 2)
      {
        if (a2 > 4)
        {
          if (a2 == 5)
          {
            v23 = v6[1].n64_u8[0];
            goto LABEL_347;
          }

          if (a2 != 6)
          {
            return result;
          }

          v7 = (v6[1].n64_u8[0] >> 6) & 1;
        }

        else if (a2 == 3)
        {
          v7 = (v6[1].n64_u8[0] >> 3) & 1;
        }

        else
        {
          v7 = (v6[1].n64_u8[0] >> 4) & 1;
        }

        goto LABEL_393;
      }

      if (!a2)
      {
        LOBYTE(v6) = v6[1].n64_u8[0];
        goto LABEL_379;
      }

      if (a2 == 1)
      {
        v24 = v6[1].n64_u8[0];
LABEL_392:
        v7 = (v24 >> 1) & 1;
        goto LABEL_393;
      }

      if (a2 != 2)
      {
        return result;
      }

      goto LABEL_241;
    case 1u:
      if (a2 > 65537)
      {
        if (a2 == 65538)
        {
          goto LABEL_327;
        }

        if (a2 == 65539)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (a2 == 0x10000)
        {
          result.n64_u16[0] = v6[2].n64_u16[0];
          goto LABEL_328;
        }

        if (a2 == 65537)
        {
          goto LABEL_314;
        }
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_261;
        }

        if (a2 == 131073)
        {
LABEL_257:
          result.n64_u8[0] = v6[3].n64_u8[0];
          goto LABEL_328;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_298:
        result.n64_u8[0] = v6[3].n64_u8[1];
        goto LABEL_328;
      }

      if (a2 == 131075)
      {
        goto LABEL_260;
      }

      v13 = 131076;
      goto LABEL_267;
    case 3u:
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v23 = v6[3].n64_u32[0];
LABEL_347:
              v7 = (v23 >> 5) & 1;
              break;
            case 196617:
              v7 = (v6[3].n64_u32[0] >> 6) & 7;
              break;
            case 196618:
              v7 = (v6[3].n64_u32[0] >> 9) & 3;
              break;
            default:
              return result;
          }
        }

        else if (a2 == 196613)
        {
          LODWORD(v6) = v6[3].n64_u32[0];
LABEL_379:
          v7 = v6 & 1;
        }

        else if (a2 == 196614)
        {
          v7 = (v6[3].n64_u32[0] >> 1) & 3;
        }

        else
        {
          v7 = (v6[3].n64_u32[0] >> 3) & 3;
        }

        goto LABEL_393;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          goto LABEL_327;
        }

        if (a2 != 196611)
        {
          result.n64_u8[0] = v6[3].n64_u8[4];
          goto LABEL_328;
        }

LABEL_338:
        v7 = HIWORD(v6[1].n64_u32[0]) & 1;
        goto LABEL_393;
      }

      if (a2 == 196608)
      {
        goto LABEL_315;
      }

      if (a2 == 196609)
      {
        goto LABEL_314;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          return v6[4];
        case 262145:
          return v6[3];
        case 262144:
          return v6[2];
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_277;
      }

      if (a2 == 327681)
      {
        goto LABEL_260;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_254;
    case 6u:
      v9 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_259;
        }

        goto LABEL_254;
      }

      if (a2 == 393218)
      {
        goto LABEL_277;
      }

      if (a2 == 393219)
      {
LABEL_241:
        v7 = (v6[1].n64_u8[0] >> 2) & 1;
LABEL_393:
        result.n64_f64[0] = v7;
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_277;
      }

      if (a2 == 458753)
      {
        goto LABEL_260;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_254;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_277;
      }

      if (a2 == 589825)
      {
        goto LABEL_260;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_254;
    case 0xAu:
      if ((a2 - 655360) > 0xB)
      {
        return result;
      }

      if (a2 == 655363)
      {
        goto LABEL_291;
      }

      v14 = v6[4].n64_i32[0];
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 == 1 && a2 == 655364)
          {
            goto LABEL_261;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_277;
            case 655361:
              goto LABEL_260;
            case 655360:
              goto LABEL_254;
          }
        }

        return result;
      }

      if (v14 != 3)
      {
        if (v14 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_277;
        }

        if (a2 == 655366)
        {
          goto LABEL_260;
        }

        v19 = 655365;
        goto LABEL_253;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_254;
        }

        v9 = 655369;
        goto LABEL_259;
      }

      if (a2 == 655370)
      {
        goto LABEL_277;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_201;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          return v6[2];
        case 720897:
          return v6[3];
        case 720898:
          return v6[4];
        case 720899:
          result.n64_u32[0] = v6[7].n64_u32[1];
          goto LABEL_328;
        case 720900:
          goto LABEL_337;
        case 720901:
          goto LABEL_207;
        case 720902:
          goto LABEL_339;
        case 720903:
          result.n64_u32[0] = v6[6].n64_u32[1];
          goto LABEL_328;
        case 720904:
          goto LABEL_338;
        case 720905:
          v7 = (v6[1].n64_u32[0] >> 17) & 1;
          goto LABEL_393;
        case 720906:
          return v6[8];
        case 720907:
          return v6[9];
        case 720908:
          return v6[10];
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v16 = v6[11].n64_u32[0];
          if (!v16)
          {
            if (a2 == 720910)
            {
              return v6[13];
            }

            if (a2 != 720909)
            {
              return result;
            }

            return v6[12];
          }

          if (v16 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v17 = 19;
LABEL_352:
                  if (a2 == (v17 | 0xB0000))
                  {
                    return v6[14];
                  }

                  return result;
                }

                return v6[13];
              }

              return v6[12];
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v25 = 26;
                goto LABEL_369;
              }

              return v6[16];
            }

            return v6[15];
          }

          if (v16 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v17 = 17;
                goto LABEL_352;
              }

              return v6[13];
            }

            return v6[12];
          }

          if (a2 == 720914)
          {
            return v6[15];
          }

          if (a2 == 720916)
          {
            return v6[16];
          }

          v25 = 21;
LABEL_369:
          if (a2 == (v25 | 0xB0000))
          {
            return v6[17];
          }

          return result;
        case 720918:
          v24 = v6[1].n64_u32[0];
          goto LABEL_392;
        case 720919:
          if (!v6[5].n64_u32[1])
          {
            return v6[10];
          }

          return result;
        case 720920:
          result.n64_u32[0] = v6[7].n64_u32[0];
          goto LABEL_328;
        case 720921:
          v7 = (v6[1].n64_u32[0] >> 19) & 1;
          goto LABEL_393;
        case 720923:
          result.n64_u32[0] = v6[18].n64_u32[0];
          goto LABEL_328;
        case 720924:
          result.n64_u32[0] = v6[18].n64_u32[1];
          goto LABEL_328;
        case 720925:
          result.n64_u32[0] = v6[19].n64_u32[0];
          goto LABEL_328;
        case 720927:
          result.n64_u32[0] = v6[11].n64_u32[0];
          goto LABEL_328;
        default:
          return result;
      }

    case 0xCu:
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            goto LABEL_290;
          }

          if (a2 != 786436)
          {
            result.n64_u8[0] = v6[4].n64_u8[4];
            goto LABEL_328;
          }

          goto LABEL_291;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_261;
          case 786433:
            goto LABEL_327;
          case 786434:
            goto LABEL_202;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          return v6[7];
        }

        if (a2 != 786442)
        {
          v21 = 786443;
          goto LABEL_295;
        }

        return v6[8];
      }

      if (a2 == 786438)
      {
        result.n64_u8[0] = v6[4].n64_u8[5];
        goto LABEL_328;
      }

      if (a2 == 786439)
      {
        return v6[5];
      }

      v22 = 786440;
      goto LABEL_304;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_290;
        }

        if (a2 != 851972)
        {
          v20 = 851973;
          goto LABEL_218;
        }

        goto LABEL_291;
      }

      switch(a2)
      {
        case 851968:
          goto LABEL_254;
        case 851969:
          goto LABEL_260;
        case 851970:
          goto LABEL_277;
      }

      return result;
    case 0xEu:
      v18 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_314;
        }

        v18 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_315;
      }

      if (a2 != v18)
      {
        return result;
      }

      if (v6[2].n64_u16[1] == 1)
      {
        if (a2 == 917507)
        {
          goto LABEL_327;
        }
      }

      else if (a2 == 917505 && !v6[2].n64_u16[1])
      {
        goto LABEL_327;
      }

      return result;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_254;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_290;
        }

        if (a2 != 1048577)
        {
          v8 = 1048578;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_254;
        }

        v9 = 1048580;
        goto LABEL_259;
      }

      if (a2 == 1048581)
      {
        goto LABEL_281;
      }

      v11 = 1048582;
      goto LABEL_276;
    case 0x11u:
      v12 = 1114113;
      if (a2 > 1114113)
      {
        if (a2 == 1114114)
        {
          return v6[4];
        }

        if (a2 == 1114115)
        {
LABEL_207:
          result.n64_u32[0] = v6[5].n64_u32[0];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 != 1114112)
        {
          goto LABEL_148;
        }

        return v6[2];
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_260;
      }

      if (a2 != 1179648)
      {
        return result;
      }

      goto LABEL_261;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_254;
        }

        if (a2 != 1245185)
        {
          v11 = 1245186;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v8 = 1245188;
          goto LABEL_245;
        }

LABEL_37:
        v10 = v6[4].n64_u32[0];
        goto LABEL_278;
      }

      if (a2 == 1245189)
      {
LABEL_332:
        v10 = v6[5].n64_u32[0];
        goto LABEL_278;
      }

      v13 = 1245190;
LABEL_267:
      if (a2 != v13)
      {
        return result;
      }

      goto LABEL_290;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_254;
        }

        if (a2 != 1310721)
        {
          v11 = 1310722;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1310723)
      {
        goto LABEL_290;
      }

      if (a2 != 1310724)
      {
        v20 = 1310725;
        goto LABEL_218;
      }

      goto LABEL_291;
    case 0x15u:
      if (a2 <= 1376258)
      {
        if (a2 == 1376256)
        {
          goto LABEL_254;
        }

        if (a2 != 1376257)
        {
          v11 = 1376258;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1376259)
      {
        goto LABEL_290;
      }

      if (a2 != 1376260)
      {
        v20 = 1376261;
        goto LABEL_218;
      }

LABEL_291:
      result.n64_u32[0] = v6[4].n64_u32[0];
      goto LABEL_328;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_290;
        }

        if (a2 != 1507329)
        {
          v8 = 1507330;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_254;
        }

        v9 = 1507332;
        goto LABEL_259;
      }

      if (a2 == 1507333)
      {
        goto LABEL_281;
      }

      v11 = 1507334;
LABEL_276:
      if (a2 == v11)
      {
LABEL_277:
        v10 = v6[3].n64_u32[0];
        goto LABEL_278;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_261;
      }

      if (a2 != 1572865)
      {
        return result;
      }

      v7 = v6[1].n64_u16[0] >> 15;
      goto LABEL_393;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_290;
        case 1638401:
          goto LABEL_202;
        case 1638400:
          goto LABEL_254;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_202;
      }

      if (a2 == 1703937)
      {
        goto LABEL_231;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_290;
        }

        if (a2 != 1769473)
        {
          v8 = 1769474;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 == 1769477)
      {
        goto LABEL_281;
      }

      if (a2 != 1769476)
      {
        v19 = 1769475;
        goto LABEL_253;
      }

      goto LABEL_260;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_290:
          result.n64_u32[0] = v6[3].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 1835009)
        {
          goto LABEL_247;
        }

        v8 = 1835010;
LABEL_245:
        if (a2 == v8)
        {
LABEL_246:
          v10 = v6[4].n64_u32[1];
          goto LABEL_278;
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_281:
        result.n64_u16[0] = v6[4].n64_u16[1];
        goto LABEL_328;
      }

      if (a2 == 1835012)
      {
        goto LABEL_260;
      }

      v19 = 1835011;
LABEL_253:
      if (a2 != v19)
      {
        return result;
      }

      goto LABEL_254;
    case 0x1Du:
      v9 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            result.n64_u16[0] = v6[3].n64_u16[0];
            break;
          case 1900547:
            result.n64_u16[0] = v6[3].n64_u16[1];
            break;
          case 1900548:
            result.n64_u8[0] = v6[4].n64_u8[0];
            break;
          default:
            return result;
        }

        goto LABEL_328;
      }

      if (a2 == 1900544)
      {
        goto LABEL_261;
      }

LABEL_259:
      if (a2 == v9)
      {
        goto LABEL_260;
      }

      return result;
    case 0x1Eu:
      if (a2 == 1966082)
      {
        goto LABEL_202;
      }

      if (a2 == 1966081)
      {
        goto LABEL_260;
      }

      if (a2 != 1966080)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_327;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_254;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_202:
          result.n64_u32[0] = v6[3].n64_u32[0];
          goto LABEL_328;
        }

        if (a2 != 2097155)
        {
          return result;
        }

LABEL_201:
        v10 = v6[3].n64_u32[1];
        goto LABEL_278;
      }

      if (a2 == 0x200000)
      {
        goto LABEL_261;
      }

      if (a2 == 2097153)
      {
        goto LABEL_260;
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_260;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_261;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_260;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_261;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_261;
        case 2293761:
          goto LABEL_260;
        case 2293762:
          goto LABEL_277;
        case 2293763:
          goto LABEL_201;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v10 = v6[5].n64_u32[1];
          goto LABEL_278;
        case 2293766:
          v10 = v6[6].n64_u32[0];
          goto LABEL_278;
        case 2293767:
          goto LABEL_246;
        case 2293768:
          goto LABEL_332;
        case 2293769:
          v10 = v6[8].n64_u32[1];
          goto LABEL_278;
        case 2293770:
          v10 = v6[9].n64_u32[1];
          goto LABEL_278;
        case 2293771:
          v10 = v6[9].n64_u32[0];
          goto LABEL_278;
        case 2293772:
          v10 = v6[10].n64_u32[0];
          goto LABEL_278;
        case 2293773:
          v10 = v6[6].n64_u32[1];
          goto LABEL_278;
        case 2293774:
          v10 = v6[7].n64_u32[0];
          goto LABEL_278;
        case 2293775:
          v10 = v6[7].n64_u32[1];
          goto LABEL_278;
        case 2293776:
          v10 = v6[8].n64_u32[0];
          goto LABEL_278;
        case 2293777:
          LOBYTE(v6) = v6[10].n64_u8[4];
          goto LABEL_379;
        case 2293778:
          v24 = v6[10].n64_u8[4];
          goto LABEL_392;
        case 2293779:
          v10 = v6[11].n64_u32[0];
          goto LABEL_278;
        case 2293780:
          v10 = v6[11].n64_u32[1];
          goto LABEL_278;
        case 2293781:
          v10 = v6[12].n64_u32[0];
          goto LABEL_278;
        case 2293782:
          v10 = v6[12].n64_u32[1];
          goto LABEL_278;
        case 2293783:
          v10 = v6[13].n64_u32[0];
          goto LABEL_278;
        case 2293784:
          v10 = v6[13].n64_u32[1];
          goto LABEL_278;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_327;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_254;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          goto LABEL_231;
        case 2424833:
          goto LABEL_314;
        case 2424832:
          goto LABEL_315;
      }

      return result;
    case 0x26u:
      switch(a2)
      {
        case 2490370:
          result.n64_u64[0] = v6[3].n64_u64[0];
          goto LABEL_328;
        case 2490369:
          goto LABEL_260;
        case 2490368:
LABEL_254:
          v10 = v6[2].n64_u32[0];
          goto LABEL_278;
      }

      return result;
    case 0x27u:
      if ((a2 - 2555905) >= 2)
      {
        if (a2 != 2555904)
        {
          return result;
        }

LABEL_261:
        result.n64_u32[0] = v6[2].n64_u32[0];
LABEL_328:
        result.n64_f64[0] = result.n64_u64[0];
      }

      else
      {
        v15 = v6[2].n64_u32[0];
        if (v15 != 1)
        {
          if (v15)
          {
            if (a2 != 2555905 || v15 != 2)
            {
              return result;
            }
          }

          else if (a2 != 2555905)
          {
            return result;
          }

LABEL_327:
          result.n64_u32[0] = v6[2].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 2555906)
        {
LABEL_260:
          v10 = v6[2].n64_u32[1];
LABEL_278:
          result.n64_f64[0] = vcvtd_n_f64_s32(v10, 0x10uLL);
          if (v10 == 0x80000000)
          {
            result.n64_f64[0] = NAN;
          }
        }
      }

      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          result.n64_u16[0] = v6[8].n64_u16[0];
          goto LABEL_328;
        case 2621441:
          result.n64_u16[0] = v6[8].n64_u16[1];
          goto LABEL_328;
        case 2621442:
          return v6[2];
        case 2621443:
          goto LABEL_257;
        case 2621444:
          goto LABEL_298;
        case 2621445:
          goto LABEL_290;
        case 2621446:
          goto LABEL_291;
        case 2621447:
          goto LABEL_219;
        case 2621448:
          result.n64_u8[0] = v6[5].n64_u8[4];
          goto LABEL_328;
        case 2621449:
LABEL_339:
          result.n64_u32[0] = v6[6].n64_u32[0];
          goto LABEL_328;
        case 2621450:
          result.n64_u64[0] = v6[7].n64_u64[0];
          goto LABEL_328;
        case 2621451:
          result.n64_u8[0] = v6[3].n64_u8[2];
          goto LABEL_328;
        case 2621452:
          goto LABEL_207;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          goto LABEL_261;
        }

        if (a2 == 2686977)
        {
LABEL_231:
          result.n64_u8[0] = v6[2].n64_u8[4];
          goto LABEL_328;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        return v6[3];
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          return v6[4];
        }

        return v6[5];
      }

      if (a2 == 2686981)
      {
        return v6[6];
      }

      if (a2 != 2686982)
      {
        return result;
      }

      return v6[7];
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_337:
            result.n64_u32[0] = v6[5].n64_u32[1];
            goto LABEL_328;
          }

          v22 = 2752518;
LABEL_304:
          if (a2 == v22)
          {
            return v6[6];
          }
        }

        else if (a2 == 2752519)
        {
          return v6[7];
        }

        else if (a2 == 2752520)
        {
          return v6[8];
        }

        else
        {
          v21 = 2752521;
LABEL_295:
          if (a2 == v21)
          {
            return v6[9];
          }
        }

        return result;
      }

      if (a2 > 2752513)
      {
        if (a2 == 2752514)
        {
          return v6[3];
        }

        if (a2 != 2752515)
        {
          result.n64_u8[0] = v6[5].n64_u8[0];
          goto LABEL_328;
        }

        return v6[4];
      }

      if (a2 == 2752512)
      {
LABEL_315:
        result.n64_u16[0] = v6[2].n64_u16[0];
      }

      else
      {
        if (a2 != 2752513)
        {
          return result;
        }

LABEL_314:
        result.n64_u16[0] = v6[2].n64_u16[1];
      }

      goto LABEL_328;
    case 0x2Bu:
      v12 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
LABEL_247:
          result.n64_u16[0] = v6[4].n64_u16[0];
          goto LABEL_328;
        }

        v20 = 2818051;
LABEL_218:
        if (a2 == v20)
        {
LABEL_219:
          result.n64_u32[0] = v6[4].n64_u32[1];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 == 2818048)
        {
          goto LABEL_261;
        }

LABEL_148:
        if (a2 == v12)
        {
          return v6[3];
        }
      }

      return result;
    default:
      return result;
  }
}

uint64_t _io_hideventsystem_copy_property_for_service(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, _DWORD *a8)
{
  *a7 = 0;
  LODWORD(v14) = -536870206;
  v15 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFStringGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v18 = v17;
  if (v17 && v15)
  {
    v19 = IOMIGMachPortCacheCopy(a1);
    v20 = v19;
    if (v19)
    {
      v21 = CFGetTypeID(v19);
      v22 = IOHIDEventSystemConnectionGetTypeID();
      if (a6)
      {
        if (v21 == v22)
        {
          System = _IOHIDEventSystemConnectionGetSystem(v20);
          if (System)
          {
            v24 = IOHIDEventSystemCopyService(System, v15);
            if (v24)
            {
              v25 = v24;
              if (IOHIDEventSystemConnectionGetType(v20) != 4 || CFSetContainsValue(__whiteListSet, v18))
              {
                v14 = _IOHIDServiceCopyPropertyForClient(v25, v18, v20);
                *a7 = _IOHIDSerialize(v14, a6);
                if (v14)
                {
                  CFRelease(v14);
                  LODWORD(v14) = 0;
                }
              }

              CFRelease(v18);
              CFRelease(v25);
              CFRelease(v15);
LABEL_13:
              CFRelease(v20);
              goto LABEL_14;
            }

            LODWORD(v14) = -536870160;
          }

          else
          {
            LODWORD(v14) = -536870185;
          }
        }
      }
    }

    CFRelease(v18);
    CFRelease(v15);
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v20 = v15;
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a8 = v14;
  return 0;
}

uint64_t _Xio_hideventsystem_copy_property_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_property_for_service(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

const void *IOHIDEventSystemCopyService(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
    os_unfair_recursive_lock_unlock();
    if (_IOHIDServiceIsInactive(v5))
    {
      CFRelease(v5);
      return 0;
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

CFTypeRef __IOHIDServiceCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = mach_absolute_time();
  if (a3 && (v9 = CFGetTypeID(a3), v9 == IOHIDEventSystemConnectionGetTypeID()))
  {
    Type = IOHIDEventSystemConnectionGetType(a3);
  }

  else
  {
    Type = 5;
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v32, v33);
  }

  ++**(a1 + 72);
  if (!a4)
  {
    if (CFEqual(a2, @"ReportInterval") || CFEqual(a2, @"BatchInterval"))
    {
      if (Type >= 2 && Type != 5)
      {
        v14 = _IOHIDServiceCopyConnectionCache(a1, a3);
        v15 = v14;
        if (v14)
        {
          v16 = IOHIDServiceConnectionCacheCopyValueForKey(v14, a2);
          CFRelease(v15);
LABEL_40:
          LOBYTE(v15) = 1;
          goto LABEL_41;
        }

        goto LABEL_53;
      }

      if (CFEqual(a2, @"ReportInterval"))
      {
        v11 = CFGetAllocator(a1);
        v12 = (a1 + 160);
      }

      else
      {
        if (!CFEqual(a2, @"BatchInterval"))
        {
          v16 = 0;
          goto LABEL_40;
        }

        v11 = CFGetAllocator(a1);
        v12 = (a1 + 164);
      }
    }

    else if (CFEqual(a2, @"QueueSize") && Type == 2)
    {
      v11 = CFGetAllocator(a1);
      v12 = (a1 + 216);
    }

    else
    {
      if (!CFEqual(a2, @"HIDDefaultSensorControlOptions"))
      {
        goto LABEL_7;
      }

      v11 = CFGetAllocator(a1);
      v12 = (a1 + 296);
    }

    v13 = kCFNumberSInt32Type;
    goto LABEL_38;
  }

LABEL_7:
  if (CFEqual(a2, @"LastActivityTimestamp"))
  {
    v11 = CFGetAllocator(a1);
    v12 = (a1 + 328);
    v13 = kCFNumberSInt64Type;
LABEL_38:
    v19 = CFNumberCreate(v11, v13, v12);
    goto LABEL_39;
  }

  if (CFEqual(a2, @"ServiceRecord"))
  {
    v19 = _IOHIDServiceCopyServiceRecordForClient(a1, a3);
    goto LABEL_39;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(*v17 + 48);
    if (v18)
    {
      v19 = v18();
LABEL_39:
      v16 = v19;
      goto LABEL_40;
    }
  }

  v20 = *(a1 + 24);
  if (!v20 || (v21 = *(*v20 + 48)) == 0)
  {
    v22 = *(a1 + 360);
    if (v22)
    {
      v23 = *(v22 + 24);
      if (v23)
      {
        v19 = v23(*(a1 + 344), *(a1 + 352), a2);
        goto LABEL_39;
      }
    }

    v24 = *(a1 + 480);
    if (v24)
    {
      v25 = [v24 *(a1 + 496)];
      v16 = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      goto LABEL_40;
    }

    LOBYTE(v15) = 0;
LABEL_53:
    v16 = 0;
    goto LABEL_41;
  }

  v16 = v21();
  LOBYTE(v15) = 0;
LABEL_41:
  v26 = *(a1 + 72);
  if (*v26)
  {
    --*v26;
    if (pthread_mutex_unlock((v26 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v32, v33);
    }
  }

  if (v16)
  {
    v27 = v15;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    CFRetain(v16);
  }

  v28 = mach_absolute_time();
  v29 = _IOHIDGetTimestampDelta(v28, v8, 1u);
  if (v29 > *(a1 + 384))
  {
    *(a1 + 384) = v29;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

__CFDictionary *__FilterFunctionCopyPropertyForClient(__CFDictionary *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    result = IOHIDServiceFilterCopyPropertyForClient(result, *a2, *(a2 + 16));
    *(a2 + 8) = result;
  }

  return result;
}

__CFDictionary *IOHIDServiceFilterCopyPropertyForClient(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  if (!CFEqual(cf1, @"HIDObjectUUID"))
  {
    v8 = *(a1 + 16);
    if (v8 && (v9 = *(*v8 + 88)) != 0)
    {
      v10 = v9();
    }

    else
    {
      v12 = *(a1 + 96);
      if (v12)
      {
        v13 = [v12 *(a1 + 104)];
        v10 = v13;
        if (v13)
        {
          CFRetain(v13);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    if (!CFEqual(cf1, @"ServiceFilterDebug"))
    {
      return v10;
    }

    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return v10;
    }

    v11 = Mutable;
    if (v10)
    {
      if (_IOHIDIsSerializable(v10))
      {
        v16 = v11;
        v17 = v10;
      }

      else
      {
        v18 = _IOHIDLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          IOHIDServiceFilterCopyPropertyForClient_cold_1(a1, v10, v18);
        }

        v17 = @"not serializable";
        v16 = v11;
      }

      CFDictionaryAddValue(v16, @"plugin", v17);
      CFRelease(v10);
    }

    v19 = CFGetAllocator(a1);
    v20 = CFUUIDCreateString(v19, *(a1 + 88));
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(v11, @"uuid", v20);
      CFRelease(v21);
    }

    v22 = *(a1 + 80);
    if (v22)
    {
      CFDictionaryAddValue(v11, @"name", v22);
    }

    _IOHIDDictionaryAddSInt32(v11, @"score", *(a1 + 40));
    _IOHIDDictionaryAddSInt32(v11, @"type", *(a1 + 16) == 0);
    return v11;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    return 0;
  }

  return CFRetain(v6);
}

const __CFData *_IOHIDEventSystemClientCopyPropertyForService(uint64_t a1, IOHIDServiceClientRef service, const void *a3)
{
  result = 0;
  length = 0;
  bytes = 0;
  if (a1)
  {
    if (service)
    {
      if (a3)
      {
        v6 = *MEMORY[0x1E695E480];
        RegistryID = IOHIDServiceClientGetRegistryID(service);
        result = _IOHIDCreateBinaryData(v6, RegistryID);
        if (result)
        {
          v8 = result;
          BytePtr = CFDataGetBytePtr(result);
          v10 = CFDataGetLength(v8);
          v11 = _IOHIDCreateBinaryData(v6, a3);
          if (v11)
          {
            v12 = v11;
            v13 = CFDataGetBytePtr(v11);
            v14 = CFDataGetLength(v12);
            os_unfair_recursive_lock_lock_with_options();
            v15 = io_hideventsystem_copy_property_for_service(*(a1 + 32), BytePtr, v10, v13, v14, &bytes, &length + 1, &length);
            v16 = v15;
            if (v15 == 268435459)
            {
              if (*(a1 + 384))
              {
                v16 = 268435459;
              }

              else
              {
                v16 = 268435459;
                if (!*(a1 + 400))
                {
                  __IOHIDEventSystemClientTerminationCallback(v15, a1, 0);
                  v16 = io_hideventsystem_copy_property_for_service(*(a1 + 32), BytePtr, v10, v13, v14, &bytes, &length + 1, &length);
                }
              }
            }

            os_unfair_recursive_lock_unlock();
            CFRelease(v12);
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          CFRelease(v8);
          result = 0;
          if (v17 && !length)
          {
            return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
          }
        }
      }
    }
  }

  return result;
}

io_registry_entry_t IORegistryEntryFromPath(mach_port_t mainPort, const io_string_t path)
{
  v4 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPorta;
    }
  }

  io_registry_entry_from_path(v4, path);
  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return 0;
}

uint64_t io_server_version(unsigned int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3D00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __IOMasterPort_block_invoke(uint64_t a1)
{
  result = io_server_version(**(a1 + 32));
  if (result)
  {
    gIOKitLibServerVersion = 0;
  }

  else if (gIOKitLibServerVersion > 0x1335184)
  {
    return result;
  }

  gIOKitLibSerializeOptions &= ~1uLL;
  return result;
}

uint64_t io_registry_entry_from_path(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF900000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

kern_return_t IOServiceOpen(io_service_t service, task_port_t owningTask, uint32_t type, io_connect_t *connect)
{
  result = io_service_open_extended(service, owningTask, type, *MEMORY[0x1E69E99E0], 0, 0);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t io_service_open_extended(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 2;
  v11 = a2;
  v12 = 0x13000000000000;
  v13 = a5;
  v14 = 0x1000000;
  v15 = a6;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  *&v9.msgh_bits = 0x5080001513;
  *&v9.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v9.msgh_voucher_port = 0xB2E00000000;
  v6 = mach_msg2_internal();
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v9.msgh_local_port);
  }

  else if (v6)
  {
    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  else
  {
    v7 = 4294966995;
    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t _IOHIDObjectInternalRelease(const void *a1)
{
  CFGetTypeID(a1);
  result = _CFRuntimeGetClassWithTypeID();
  if (result)
  {
    v3 = *(result + 96);

    return v3(-1, a1);
  }

  return result;
}

uint64_t __IOHIDEventSystemClientSetDispatchQueue_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 8)
  {
    dispatch_release(*(*(result + 32) + 72));
    *(*(v2 + 32) + 72) = 0;
    v4 = *(v2 + 32);

    return _IOHIDObjectInternalRelease(v4);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    return __IOHIDEventSystemClientTerminationCallback(msg, *(v2 + 32), 0);
  }

  return result;
}

void __IOHIDEventSystemClientIntRelease(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E9A60];
  if (v3)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 280);
  if (v6)
  {
    v7 = *v4;
    Port = CFMachPortGetPort(v6);
    mach_port_mod_refs(v7, Port, 1u, -1);
    CFRelease(*(a1 + 280));
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    notify_cancel(v12);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = IOMIGMachPortGetPort(v13);
    IOMIGMachPortCacheRemove(v14);
    CFRelease(*(a1 + 40));
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 96);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 104);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 120);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 128);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 136);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 416);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 432);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 440);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 176);
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(a1 + 208);
  if (v26)
  {

    _Block_release(v26);
  }
}

void __IOHIDNotificationExtFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v2(a1[7], a1[8], a1);
  }

  _IOHIDObjectInternalRetain(a1);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ____IOHIDNotificationExtFinalize_block_invoke;
  v3[3] = &__block_descriptor_tmp_2;
  v3[4] = a1;
  IOHIDNotificationInvalidate(a1, v3);
}

void __IOHIDEventSystemClientMatchNotifyRelease(uint64_t a1, const __CFDictionary *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 88))
  {
    Value = CFDictionaryGetValue(a2, @"id");
    if (Value)
    {
      v5 = Value;
      v6 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], Value);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 32);
        BytePtr = CFDataGetBytePtr(v6);
        Length = CFDataGetLength(v7);
        io_hideventsystem_release_notification(v8, BytePtr, Length);
        CFRelease(v7);
      }

      CFDictionaryRemoveValue(*(a1 + 88), v5);
    }
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {

    CFRelease(a2);
  }
}

uint64_t io_hideventsystem_release_notification(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E110;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

void IOHIDNotificationInvalidate(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v8 = dispatch_semaphore_create(0);
    if (!v8)
    {
      IOHIDNotificationInvalidate_cold_2(&v12, v13);
    }

    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __IOHIDNotificationInvalidate_block_invoke;
    v11[3] = &__block_descriptor_tmp_15;
    v11[4] = v8;
    IOHIDNotificationInvalidate(a1, v11);
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v9);
    goto LABEL_9;
  }

  v4 = CFGetAllocator(a1);
  v5 = MEMORY[0x19A8DA570](v4, 16, 0xA0040AFF93C70, 0);
  if (!v5)
  {
    IOHIDNotificationInvalidate_cold_1(&v12, v13);
  }

  v6 = v5;
  *(v5 + 8) = _Block_copy(a2);
  OSAtomicEnqueue((a1 + 80), v6, 0);
  if ((atomic_fetch_or((a1 + 72), 0x80000000) & 0x7FFFFFFF) != 0)
  {
LABEL_9:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  __IOHIDNotificationInvalidateCompletion(a1);
}

const void **__IOHIDNotificationInvalidateCompletion(OSQueueHead *a1)
{
  v2 = CFGetAllocator(a1);
  result = OSAtomicDequeue(a1 + 5, 0);
  if (result)
  {
    v4 = result;
    do
    {
      (*(v4[1] + 2))();
      _Block_release(v4[1]);
      CFAllocatorDeallocate(v2, v4);
      result = OSAtomicDequeue(a1 + 5, 0);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void IOHIDServiceFilterFilterSetPropertyForClient(void *a1, uint64_t a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a1[12];
  if (v4)
  {
    v6 = a1[23];
    if (v6)
    {
      v8 = *a3;
      [v4 v6];
      if (v8 != *a3)
      {
        v9 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *a3;
          v11 = a1[11];
          v13 = 138413058;
          v14 = a2;
          v15 = 2112;
          v16 = v8;
          v17 = 2112;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "IOHIDServiceFilterFilterSetPropertyForClient %@  %@ -> %@ filter:%@", &v13, 0x2Au);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id IOHIDServiceFilterSetPropertyForClient(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 2);
  if (v4)
  {
    v5 = *(*v4 + 96);
    if (v5)
    {
      return v5(*(result + 2), a2, a3, a4);
    }
  }

  if (*(result + 12))
  {
    return [*(result + 12) *(result + 14)];
  }

  return result;
}

uint64_t IOHIDEventQueueStop(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 148) = 0;
  while (!_IODataQueueDequeue(*(a1 + 16), *(a1 + 56), 0))
  {
    ++*(a1 + 168);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventQueueIsActive(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 148);
  os_unfair_recursive_lock_unlock();
  return v2;
}

void _IOHIDEventSystemPropertyChanged(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v8, *(a1 + 48));
  if (*(a1 + 32))
  {
    v10 = CFGetAllocator(a1);
    v11 = CFSetCreateCopy(v10, *(a1 + 32));
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (v13 && v11 && CFSetContainsValue(v11, a3))
  {
    v13[2](v13, a3, a4);
  }

  if (Copy)
  {
    context[0] = a3;
    context[1] = a4;
    context[2] = a2;
    CFSetApplyFunction(Copy, __PropertyChangedFunction, context);
    CFRelease(Copy);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    _Block_release(v13);
  }
}

uint64_t __PropertyChangedFunction(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) != result)
  {
    return _IOHIDEventSystemConnectionPropertyChanged(result, *a2, *(a2 + 8));
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionPropertyChanged(uint64_t a1, void *a2, const void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = a3;
  keys = a2;
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(a1 + 136);
  if (v5 && CFSetContainsValue(v5, a2))
  {
    v6 = mach_absolute_time();
    v7 = CFGetAllocator(a1);
    v8 = CFDictionaryCreate(v7, &keys, &v25, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetAllocator(a1);
      v11 = _IOHIDCreateBinaryData(v10, v9);
      if (v11)
      {
        v12 = v11;
        if (!*(a1 + 456))
        {
          v13 = *(a1 + 40);
          BytePtr = CFDataGetBytePtr(v11);
          Length = CFDataGetLength(v12);
          v16 = iohideventsystem_client_dispatch_properties_changed(v13, BytePtr, Length, 0);
          if (v16)
          {
            v17 = v16;
            if (v16 == 268451843)
            {
              v18 = _IOHIDLogCategory(9u);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = *(a1 + 168);
                *buf = 136315394;
                v28 = v19;
                v29 = 1024;
                v30 = 268451843;
                _os_log_impl(&dword_197195000, v18, OS_LOG_TYPE_INFO, "%s: iohideventsystem_client_dispatch_properties_changed:0x%x", buf, 0x12u);
              }
            }

            else
            {
              v20 = _IOHIDLogCategory(9u);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                _IOHIDEventSystemConnectionPropertyChanged_cold_1(a1);
              }
            }

            __IOHIDEventSystemConnectionCheckServerStatus(v17, a1);
          }
        }

        CFRelease(v12);
      }

      CFRelease(v9);
    }

    v21 = mach_absolute_time();
    v22 = _IOHIDGetTimestampDelta(v21, v6, 1u);
    if (v22 > *(a1 + 384))
    {
      *(a1 + 384) = v22;
    }
  }

  result = os_unfair_recursive_lock_unlock();
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef IOHIDEventSystemConnectionCopyDescription(time_t *cf)
{
  if (*(cf + 76))
  {
    v2 = CFGetAllocator(cf);
    v3 = _IOHIDCreateTimeString(v2, cf + 42);
  }

  else
  {
    v3 = @"NONE";
  }

  v4 = CFGetAllocator(cf);
  v5 = *(cf + 44);
  if (v5 > 4)
  {
    v6 = "Invalid";
  }

  else
  {
    v6 = off_1E74A9440[v5];
  }

  v7 = CFStringCreateWithFormat(v4, 0, @"IOHIDEventSystemConnection uuid:%@ pid:%d process:%@ type:%s entitlements:0x%x caller:%@ attributes:%@ state:0x%x events:%d mask:0x%llx dropped:%d dropStatus:%d droppedMask:0x%llx lastDroppedTime:%@", cf[20], *(cf + 22), cf[19], v6, *cf[30], cf[18], cf[23], *(cf + 66), *(cf + 80), cf[41], *(cf + 76), *(cf + 94), cf[39], v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

CFTypeRef _IOHIDServiceCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  os_unfair_lock_lock((a1 + 456));
  Value = CFDictionaryGetValue(*(a1 + 312), a2);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
    os_unfair_lock_unlock((a1 + 456));
    ++*(a1 + 320);
    if (CFEqual(v8, *MEMORY[0x1E695E738]))
    {
      CFRelease(v8);
      v9 = 0;
      goto LABEL_21;
    }

    if (v8 != defaultPropertyKeyValue)
    {
      v9 = v8;
      goto LABEL_21;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 456));
    ++*(a1 + 324);
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v21, v22);
  }

  ++**(a1 + 72);
  context = a2;
  v19 = 0;
  if (a3 && CFEqual(a3, *MEMORY[0x1E695E738]))
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v20 = v10;
  v11 = *(a1 + 256);
  v24.length = CFArrayGetCount(v11);
  v24.location = 0;
  CFArrayApplyFunction(v11, v24, __FilterFunctionCopyPropertyForClient, &context);
  v12 = *(a1 + 72);
  if (*v12)
  {
    --*v12;
    if (pthread_mutex_unlock((v12 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v21, v22);
    }
  }

  v9 = v19;
  if (!v19)
  {
    v9 = __IOHIDServiceCopyPropertyForClient(a1, a2, a3, 0);
  }

  if (v8 == defaultPropertyKeyValue)
  {
    os_unfair_lock_lock((a1 + 456));
    v13 = *MEMORY[0x1E695E738];
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(*(a1 + 312), a2, v14);
    os_unfair_lock_unlock((a1 + 456));
    CFRelease(v8);
  }

LABEL_21:
  v15 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v15, v6, 0x3E8u);
  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

CFTypeRef _IOHIDSerialize(CFTypeRef result, vm_offset_t *a2)
{
  if (result)
  {
    result = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], result);
    if (result)
    {
      v3 = result;
      dataCnt = 0;
      Length = CFDataGetLength(result);
      v5 = *MEMORY[0x1E69E9A60];
      BytePtr = CFDataGetBytePtr(v3);
      LODWORD(Length) = vm_read(v5, BytePtr, Length, a2, &dataCnt);
      CFRelease(v3);
      if (Length)
      {
        result = 0;
        *a2 = 0;
      }

      else
      {
        return dataCnt;
      }
    }
  }

  return result;
}

uint64_t _Xio_hideventsystem_queue_create(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 52)
  {
    v3 = -304;
LABEL_8:
    *(a2 + 32) = v3;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x13000000000000;
  result = _io_hideventsystem_queue_create(*(result + 12), *(result + 28), *(result + 48), (a2 + 28));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_9:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

const void *_IOHIDUnserializeAndVMDeallocWithTypeID(UInt8 *a1, mach_vm_size_t a2, uint64_t a3)
{
  v4 = _IOHIDUnserializeAndVMDealloc(a1, a2);
  v5 = v4;
  if (v4 && CFGetTypeID(v4) != a3)
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t IOMIGMachPortRegisterTerminationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

void _IOHIDEventSystemRemoveServicesForConnection(uint64_t a1, const void *a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFGetTypeID(a2);
  if (v4 == CFArrayGetTypeID())
  {
    v5 = CFGetAllocator(a2);
    Copy = CFArrayCreateCopy(v5, a2);
    os_unfair_recursive_lock_unlock();
    if (!Copy)
    {
      return;
    }

    v15.length = CFArrayGetCount(a2);
    v15.location = 0;
    CFArrayApplyFunction(Copy, v15, ServiceClientFunctionRemove, v13);
    v7 = Copy;
    goto LABEL_11;
  }

  v8 = CFGetTypeID(a2);
  if (v8 == CFSetGetTypeID())
  {
    v9 = CFGetAllocator(a2);
    v10 = CFSetCreateCopy(v9, a2);
    os_unfair_recursive_lock_unlock();
    if (!v10)
    {
      return;
    }

    CFSetApplyFunction(v10, ServiceClientFunctionRemove, v13);
LABEL_10:
    v7 = v10;
LABEL_11:
    CFRelease(v7);
    return;
  }

  v11 = CFGetTypeID(a2);
  if (v11 == CFDictionaryGetTypeID())
  {
    v12 = CFGetAllocator(a2);
    v10 = CFDictionaryCreateCopy(v12, a2);
    os_unfair_recursive_lock_unlock();
    if (!v10)
    {
      return;
    }

    CFDictionaryApplyFunction(v10, ServiceDictClientFunctionRemove, v13);
    goto LABEL_10;
  }

  os_unfair_recursive_lock_unlock();
}

CFTypeID EntitlementCheckApplier(CFTypeID result, uint64_t a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 == result)
    {
      result = IOHIDEventSystemConnectionHasEntitlement(*a2, v3);
      *(a2 + 8) = result != 0;
    }
  }

  return result;
}

BOOL IOHIDEventSystemConnectionHasEntitlement(uint64_t a1, CFStringRef theString)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  return xpc_dictionary_get_value(v2, CStringPtr) == MEMORY[0x1E69E9E10];
}

unint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return _IOHIDGetTimestampDelta(a1, v1, 0x3E8u);
}

BOOL OUTLINED_FUNCTION_6_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

char *OUTLINED_FUNCTION_6_3(uint64_t a1, mach_error_t error_value, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a1 + 168);

  return mach_error_string(error_value);
}

CFPropertyListRef OUTLINED_FUNCTION_6_4@<X0>(CFIndex length@<X2>, UInt8 *a2@<X8>)
{

  return _IOHIDUnserializeAndVMDealloc(a2, length);
}

void OUTLINED_FUNCTION_4()
{
  *v2 = v0;
  *(v2 + 4) = v1;
  *(v2 + 8) = v3;
  v4 = *(v2 + 36);
}

void OUTLINED_FUNCTION_4_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

void OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  AppendUnsignedIntOrCFType(v3, v4, a3);
}

const void *OUTLINED_FUNCTION_4_7()
{

  return IOMIGMachPortCacheCopy(v0);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, void *a3)
{

  return CFNumberGetValue(v3, kCFNumberIntType, a3);
}

uint64_t IOHIDEventQueueCreate(uint64_t a1, int a2, uint64_t a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    goto LABEL_29;
  }

  Private = __IOHIDEventQueueCreatePrivate();
  v6 = Private;
  if (!Private)
  {
    goto LABEL_22;
  }

  *(Private + 144) = a2;
  if (a2 == 1)
  {
    size = (a3 + *MEMORY[0x1E69E9AC8] + 39) & -*MEMORY[0x1E69E9AC8];
    v7 = MEMORY[0x1E69E9A60];
    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, 0, 393219, (Private + 84), 0);
    if (memory_entry_64)
    {
      v30 = memory_entry_64;
      v31 = _IOHIDLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      LODWORD(v38) = 67109120;
      DWORD1(v38) = v30;
      v33 = "unable to make mach memory entry. (%08x)";
    }

    else
    {
      *(v6 + 24) = size;
      v9 = *v7;
      v10 = *MEMORY[0x1E69E9AB8];
      v11 = *(v6 + 84);
      OUTLINED_FUNCTION_0_12();
      v16 = mach_vm_map(v12, (v6 + 16), v13, v14, 1, v15, 0, 0, v35, SHIDWORD(v35), v36);
      if (!v16)
      {
        goto LABEL_6;
      }

      v34 = v16;
      v31 = _IOHIDLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        CFRelease(v6);
LABEL_29:
        v6 = 0;
        goto LABEL_22;
      }

      LODWORD(v38) = 67109120;
      DWORD1(v38) = v34;
      v33 = "Unable to map event queue: (%08x)";
    }

    OUTLINED_FUNCTION_1_10(&dword_197195000, v31, v32, v33, &v38);
    goto LABEL_28;
  }

LABEL_6:
  v17 = *(v6 + 16);
  if (!v17)
  {
    goto LABEL_28;
  }

  *(v6 + 56) = a3;
  *v17 = a3;
  v17[1] = 0;
  v17[2] = 0;
  v38 = xmmword_19723DAC0;
  v18 = *MEMORY[0x1E695E480];
  v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v6 + 24));
  v20 = *(v6 + 144) ? @"userEventQueue" : @"kernelEventQueue";
  size = v19;
  v40[0] = v20;
  v21 = CFDictionaryCreate(v18, &__IOHIDEventQueueSetupAnalytics_keys, &size, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v21)
  {
    v22 = IOHIDAnalyticsHistogramEventCreate(@"com.apple.hid.queueUsage", v21, @"UsagePercent", &v38, 1);
    *(v6 + 160) = v22;
    if (v22)
    {
      goto LABEL_15;
    }

    v23 = _IOHIDLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197195000, v23, OS_LOG_TYPE_DEFAULT, "Unable to create queue analytics", buf, 2u);
    }

    if (*(v6 + 160))
    {
LABEL_15:
      IOHIDAnalyticsEventActivate();
    }

    CFRelease(v21);
  }

  else
  {
    v29 = _IOHIDLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_197195000, v29, OS_LOG_TYPE_ERROR, "Unable to create analytics description", buf, 2u);
    }
  }

  p_size = &size;
  v25 = 1;
  do
  {
    v26 = v25;
    if (*p_size)
    {
      CFRelease(*p_size);
    }

    v25 = 0;
    p_size = v40;
  }

  while ((v26 & 1) != 0);
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_22:
  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __IOHIDEventQueueCreatePrivate()
{
  IOHIDEventQueueGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 40) = 0;
  }

  else
  {
    __IOHIDEventQueueCreatePrivate_cold_1();
  }

  return v1;
}

uint64_t IOHIDEventQueueGetTypeID()
{
  result = __kIOHIDEventQueueTypeID;
  if (!__kIOHIDEventQueueTypeID)
  {
    if (__queueTypeInit_0 != -1)
    {
      IOHIDEventQueueGetTypeID_cold_1();
    }

    return __kIOHIDEventQueueTypeID;
  }

  return result;
}

uint64_t IOHIDAnalyticsHistogramEventCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__loadFramework_haOnce_0 != -1)
  {
    IOHIDAnalyticsEventCreate_cold_1();
  }

  v10 = createHistogramEventFuncPtr;
  if (!createHistogramEventFuncPtr)
  {
    return 0;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t IOHIDAnalyticsEventActivate()
{
  if (activateEventFuncPtr)
  {
    return activateEventFuncPtr();
  }

  return result;
}

uint64_t IOHIDEventQueueSetNotificationPort(uint64_t a1, int a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 144) == 1)
  {
    *(a1 + 60) = 0x1800000013;
    *(a1 + 68) = a2;
  }

  *(a1 + 96) = a2;

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemConnectionSetQueue(uint64_t a1, uint64_t a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = a2;
  if (a2)
  {
    v6 = (a1 + 104);
    v5 = *(a1 + 104);
    if (v5)
    {
      goto LABEL_10;
    }

    v7 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (a1 + 104));
    if (v7)
    {
      v8 = v7;
      v9 = _IOHIDLogCategory(9u);
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionReleasePrivate_cold_3(a1, v8, v10, v11, v12, v13, v14, v15);
      }

      __IOHIDEventSystemConnectionCheckServerStatus(v8, a1);
    }

    v5 = *v6;
    if (*v6)
    {
LABEL_10:
      v16 = dispatch_source_create(MEMORY[0x1E69E96D8], v5, 0, *(a1 + 96));
      *(a1 + 112) = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = *(a1 + 112);
      if (!v16)
      {
LABEL_12:
        *(a1 + 128) = 1;
        v18 = *(a1 + 24);
        if (v18)
        {
          CFRetain(v18);
        }

        return os_unfair_recursive_lock_unlock();
      }
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___IOHIDEventSystemConnectionSetQueue_block_invoke;
    handler[3] = &__block_descriptor_tmp_23_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v16, handler);
    CFRetain(a1);
    v17 = *(a1 + 112);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___IOHIDEventSystemConnectionSetQueue_block_invoke_24;
    v20[3] = &__block_descriptor_tmp_25_1;
    v20[4] = a1;
    dispatch_source_set_cancel_handler(v17, v20);
    dispatch_resume(*(a1 + 112));
    goto LABEL_12;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventQueueGetMemoryHandle(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 84);
  os_unfair_recursive_lock_unlock();
  return v2;
}

uint64_t IOHIDEventQueueCreateWithVM(uint64_t a1, mem_entry_name_port_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    v14 = _IOHIDLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 1024;
      v23 = a3;
      _os_log_error_impl(&dword_197195000, v14, OS_LOG_TYPE_ERROR, "Invalid ptr=%p size=%d.", buf, 0x12u);
    }

    goto LABEL_12;
  }

  Private = __IOHIDEventQueueCreatePrivate();
  v6 = Private;
  if (Private)
  {
    *(Private + 24) = ~*MEMORY[0x1E69E9AB8] & (a3 + *MEMORY[0x1E69E9AB8] + 40);
    *(Private + 84) = a2;
    v7 = *MEMORY[0x1E69E9A60];
    OUTLINED_FUNCTION_0_12();
    v11 = mach_vm_map(v8, (v6 + 16), v9, v10, 1, a2, 0, 0, v18, SHIDWORD(v18), v19);
    if (!v11)
    {
      *(v6 + 144) = 1;
      goto LABEL_6;
    }

    v15 = v11;
    v16 = _IOHIDLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = v15;
      OUTLINED_FUNCTION_1_10(&dword_197195000, v16, v17, "Unable to map event queue: (%08x)", buf);
    }

    CFRelease(v6);
LABEL_12:
    v6 = 0;
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __IOHIDEventQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventQueueTypeID = result;
  return result;
}

void IOMIGMachPortScheduleWithRunLoop(CFTypeRef cf, CFRunLoopRef rl, CFRunLoopMode mode)
{
  *(cf + 2) = rl;
  *(cf + 3) = mode;
  if (rl)
  {
    if (mode)
    {
      RunLoopSource = *(cf + 7);
      if (RunLoopSource || (v7 = CFGetAllocator(cf), RunLoopSource = CFMachPortCreateRunLoopSource(v7, *(cf + 6), 1), (*(cf + 7) = RunLoopSource) != 0))
      {

        CFRunLoopAddSource(rl, RunLoopSource, mode);
      }
    }
  }
}

uint64_t IOHIDEventSystemClientRegisterEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  if ((*(a1 + 408) & 1) == 0)
  {
    if (atomic_load((a1 + 312)))
    {
      IOHIDEventSystemClientRegisterEventCallback_cold_1();
    }
  }

  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 200) = a2;
  *(a1 + 216) = a3;
  *(a1 + 224) = a4;
  os_unfair_recursive_lock_unlock();

  return __IOHIDEventSystemClientStartQueue(a1);
}

uint64_t io_hideventsystem_queue_start(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _io_hideventsystem_queue_start(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      v4 = _IOHIDEventSystemConnectionCopyQueue(v2);
      if (v4)
      {
        v5 = v4;
        _IOHIDEventSystemConnectionQueueStart(v2);
        IOHIDEventQueueStart(v5);
        CFRelease(v5);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_queue_start(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_queue_start(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionQueueStart(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 8);
  if (*(a1 + 24))
  {
    *(a1 + 128) = 1;
  }

  *(a1 + 264) &= ~2u;
  os_unfair_recursive_lock_unlock();
  v3 = *MEMORY[0x1E695E4C0];

  return _IOHIDEventSystemSetPropertyForConnection(v2, @"IOHIDEventSystemClientIsUnresponsive", v3, a1);
}

uint64_t IOHIDEventQueueStart(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 148) = 1;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientCreateWithType(const __CFAllocator *a1, int a2, const __CFDictionary *a3)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v6 = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
    v6 = __kIOHIDEventSystemClientTypeID;
  }

  Instance = _IOHIDObjectCreateInstance(a1, v6, 0x1F8uLL);
  if (Instance)
  {
    v8 = CFUUIDCreate(a1);
    if (v8)
    {
      v9 = v8;
      *(Instance + 440) = CFUUIDCreateString(a1, v8);
      CFRelease(v9);
    }

    v52 = qword_1F0B91170;
    v50 = xmmword_1F0B91150;
    v51 = *&off_1F0B91160;
    *(Instance + 24) = 0;
    *(Instance + 160) = 0;
    v10 = OUTLINED_FUNCTION_8_1();
    Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
    *(Instance + 88) = Mutable;
    if (!Mutable)
    {
      goto LABEL_37;
    }

    v15 = OUTLINED_FUNCTION_8_1();
    v18 = CFSetCreateMutable(v15, v16, v17);
    *(Instance + 112) = v18;
    if (!v18)
    {
      goto LABEL_37;
    }

    v19 = OUTLINED_FUNCTION_8_1();
    v23 = CFDictionaryCreateMutable(v19, v20, v21, v22);
    *(Instance + 96) = v23;
    if (!v23)
    {
      goto LABEL_37;
    }

    v24 = OUTLINED_FUNCTION_8_1();
    v27 = CFDictionaryCreateMutable(v24, v25, 0, v26);
    *(Instance + 104) = v27;
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = CFDictionaryCreateMutable(a1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(Instance + 128) = v28;
    if (!v28)
    {
      goto LABEL_37;
    }

    if (a3 != 1635017576 && a3)
    {
      Copy = CFDictionaryCreateCopy(a1, a3);
      *(Instance + 416) = Copy;
      if (Copy)
      {
        Value = CFDictionaryGetValue(Copy, @"HighFrequency");
        v31 = *MEMORY[0x1E695E4D0];
        *(Instance + 448) = Value == *MEMORY[0x1E695E4D0];
        *(Instance + 449) = CFDictionaryGetValue(*(Instance + 416), @"SupportsCollectionEvents") == v31;
      }
    }

    else
    {
      *(Instance + 416) = 0;
    }

    *(Instance + 424) = a2;
    memset(v53, 0, 24);
    memset(&v49, 0, sizeof(v49));
    backtrace(v53, 3);
    if (a3 == 1635017576)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (!dladdr(v53[v32], &v49))
    {
      if (*(Instance + 432))
      {
        goto LABEL_33;
      }

LABEL_32:
      *(Instance + 432) = @"***UNKOWN***";
      CFRetain(@"***UNKOWN***");
LABEL_33:
      v42 = dispatch_queue_create("hideventsystemclient.default.queue", 0);
      *(Instance + 488) = v42;
      if (v42)
      {
        dispatch_set_context(v42, Instance);
        dispatch_set_finalizer_f(*(Instance + 488), __IOHIDEventSystemClientFinalizeStateHandler);
        _IOHIDObjectInternalRetain(Instance);
        v43 = *(Instance + 488);
        *(Instance + 456) = os_state_add_handler();
        __IOHIDEventSystemClientRefresh(Instance, 0);
        goto LABEL_35;
      }

LABEL_37:
      CFRelease(Instance);
      Instance = 0;
      goto LABEL_35;
    }

    dli_fname = v49.dli_fname;
    if (v49.dli_fname)
    {
      v34 = strrchr(v49.dli_fname, 47);
      if (v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = dli_fname;
      }

      dli_sname = v49.dli_sname;
      if (!v49.dli_sname)
      {
        v37 = (v53[v32] - v49.dli_fbase);
        dli_sname = v35;
        goto LABEL_31;
      }
    }

    else
    {
      dli_sname = v49.dli_sname;
      if (!v49.dli_sname)
      {
        v37 = v53[v32];
        dli_sname = "0x0";
        v35 = "???";
LABEL_31:
        v47 = dli_sname;
        v48 = v37;
        v46 = v35;
        v38 = OUTLINED_FUNCTION_8_1();
        v41 = CFStringCreateWithFormat(v38, v39, v40, v46, v47, v48);
        *(Instance + 432) = v41;
        if (v41)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v35 = "???";
    }

    v37 = (v53[v32] - v49.dli_saddr);
    goto LABEL_31;
  }

LABEL_35:
  v44 = *MEMORY[0x1E69E9840];
  return Instance;
}

void OUTLINED_FUNCTION_0_1()
{
  v1 = *v0;
  v2 = v0[1];
  __dmb(9u);
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_0_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_0_11(pthread_once_t *a1)
{

  return pthread_once(a1, __IOHIDEventSystemClientRegister);
}

uint64_t __IOHIDEventSystemClientRegister()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E530];
  __propertyCache = CFSetCreate(*MEMORY[0x1E695E480], &propertyCacheList, 2, MEMORY[0x1E695E530]);
  __restrictedRemapKeys = CFSetCreate(v0, &restrictedRemapKeyList, 3, v1);
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventSystemClientTypeID = result;
  return result;
}

uint64_t _IOHIDObjectCreateInstance(uint64_t a1, uint64_t a2, size_t a3)
{
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a3);
    *(v5 + 16) = 1;
    *(v5 + 20) = 1;
  }

  return v5;
}

const __CFArray *OUTLINED_FUNCTION_7()
{

  return IOHIDEventGetEventWithOptions(v0, 19, 4026531840);
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *v0;

  return _os_crash_msg();
}

void OUTLINED_FUNCTION_7_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void __IOHIDEventSystemClientRefresh(uint64_t a1, char a2)
{
  v56 = *MEMORY[0x1E69E9840];
  *special_port = 0;
  v53 = 0;
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x1E69E9840];

    os_unfair_recursive_lock_unlock();
    return;
  }

  memset(v52, 0, sizeof(v52));
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = getpid();
    if (proc_name(v7, buffer, 0x400u))
    {
      v8 = CFStringCreateWithCString(v5, buffer, 0);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 432);
    if (v9)
    {
      CFDictionarySetValue(Mutable, @"caller", v9);
    }

    if (v8)
    {
      CFDictionarySetValue(Mutable, @"procName", v8);
    }

    v10 = *(a1 + 440);
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"UUID", v10);
    }
  }

  else
  {
    v8 = 0;
  }

  __IOHIDEventSystemClientInitReplyPort(a1);
  v11 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  if (v11)
  {
    v12 = MEMORY[0x1E69E9A60];
    if (!task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]))
    {
      if (xpc_user_sessions_enabled())
      {
        tn[1] = 0;
        xpc_user_sessions_get_foreground_uid();
        v34 = bootstrap_look_up_per_user();
        if (v34)
        {
          v35 = _IOHIDLogCategory(0xDu);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            __IOHIDEventSystemClientRefresh_cold_2(v34);
          }
        }
      }

      v13 = bootstrap_look_up2();
      v14 = mach_port_deallocate(*v12, special_port[1]);
      if (v13)
      {
        __IOHIDEventSystemClientRefresh_cold_3(v13);
      }

      else
      {
        if (!v14)
        {
          v50 = v8;
          v15 = _IOHIDCreateBinaryData(v5, Mutable);
          v16 = v15;
          v48 = a2;
          if (v15)
          {
            BytePtr = CFDataGetBytePtr(v15);
            Length = CFDataGetLength(v16);
          }

          else
          {
            Length = 0;
            BytePtr = 0;
          }

          v19 = Mutable;
          v20 = _IOHIDCreateBinaryData(v5, *(a1 + 416));
          cf = v20;
          if (v20)
          {
            v21 = v20;
            v22 = v16;
            v23 = CFDataGetBytePtr(v20);
            v24 = CFDataGetLength(v21);
          }

          else
          {
            v22 = v16;
            v24 = 0;
            v23 = 0;
          }

          tn[0] = 0;
          v25 = *v12;
          v26 = getpid();
          if (task_name_for_pid(v25, v26, tn))
          {
            __IOHIDEventSystemClientRefresh_cold_5();
          }

          os_unfair_recursive_lock_lock_with_options();
          Port = IOMIGMachPortGetPort(*(a1 + 40));
          os_unfair_recursive_lock_unlock();
          v28 = io_hideventsystem_open(v53, tn[0], *(a1 + 424), BytePtr, Length, v23, v24, Port, special_port, v52);
          v29 = special_port[0];
          v30 = mach_port_deallocate(*v12, v53);
          if (v28 || !v29)
          {
            __IOHIDEventSystemClientRefresh_cold_7();
            v8 = v50;
          }

          else
          {
            v8 = v50;
            if (!v30)
            {
              os_unfair_recursive_lock_lock_with_options();
              *(a1 + 32) = special_port[0];
              v31 = v22;
              if (v48)
              {
                Copy = 0;
                Mutable = v19;
              }

              else
              {
                v33 = *(a1 + 80);
                Mutable = v19;
                if (v33)
                {
                  Copy = CFArrayCreateCopy(v5, v33);
                }

                else
                {
                  Copy = 0;
                }

                IOHIDEventSystemClientSetMatchingMultiple(a1, Copy);
              }

              if (CFDictionaryGetCount(*(a1 + 104)))
              {
                v36 = CFDictionaryCreateCopy(v5, *(a1 + 104));
                v37 = v36;
                if (v36)
                {
                  CFDictionaryApplyFunction(v36, __VirtualServiceNotifier, a1);
                }

                CFDictionaryRemoveAllValues(*(a1 + 104));
              }

              else
              {
                v37 = 0;
              }

              if ((*(a1 + 384) || *(a1 + 400)) && (__IOHIDEventSystemClientSetupAsyncSupport(a1), (v46 = *(a1 + 384)) != 0) && (v47 = *(a1 + 392)) != 0)
              {
                IOHIDEventSystemClientScheduleWithRunLoop(a1, v46, v47);
              }

              else if (*(a1 + 400))
              {
                v38 = atomic_load((a1 + 312));
                if ((v38 & 2) == 0)
                {
                  IOMIGMachPortScheduleWithDispatchQueue(*(a1 + 40), *(a1 + 400));
                }
              }

              os_unfair_recursive_lock_unlock();
              __IOHIDEventSystemClientStartQueue(a1);
              __IOHIDEventSystemClientStartFilter(a1);
              os_unfair_recursive_lock_lock_with_options();
              if (*(a1 + 360) || *(a1 + 352))
              {
                io_hideventsystem_register_record_service_changed_notification(*(a1 + 32));
              }

              if (*(a1 + 328) || *(a1 + 320))
              {
                io_hideventsystem_register_record_client_changed_notification(*(a1 + 32));
              }

              os_unfair_recursive_lock_unlock();
              os_unfair_recursive_lock_lock_with_options();
              v39 = CFGetAllocator(a1);
              v40 = CFDictionaryCreateCopy(v39, *(a1 + 128));
              os_unfair_recursive_lock_unlock();
              if (v40)
              {
                CFDictionaryApplyFunction(v40, __IOHIDEventSystemClientConnectionPropertyFunction, a1);
                CFRelease(v40);
              }

              os_unfair_recursive_lock_lock_with_options();
              v41 = *(a1 + 120);
              if (v41)
              {
                CFDictionaryApplyFunction(v41, __IOHIDEventSystemClientRegisterPropertyCallbackRegisterFunction, a1);
              }

              os_unfair_recursive_lock_unlock();
              v42 = IOHIDEventSystemClientCopyProperty(a1, @"HIDDebug");
              if (v42)
              {
                v43 = v42;
                v44 = CFGetTypeID(v42);
                if (v44 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v43, kCFNumberSInt32Type, &gIOHIDDebugConfig);
                }

                CFRelease(v43);
              }

              if (v37)
              {
                CFRelease(v37);
              }

              if (Copy)
              {
                CFRelease(Copy);
              }

              if (!v31)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            __IOHIDEventSystemClientRefresh_cold_6(v30);
          }

          v31 = v22;
          Mutable = v19;
          if (!v31)
          {
LABEL_71:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_73;
          }

LABEL_70:
          CFRelease(v31);
          goto LABEL_71;
        }

        __IOHIDEventSystemClientRefresh_cold_4(v14);
      }
    }
  }

LABEL_73:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDEventSystemClientInitReplyPort(uint64_t *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = 1;
  if (!a1[5])
  {
    port_info_out = 0;
    port_info_outCnt = 1;
    v3 = IOMIGMachPortCreate(*MEMORY[0x1E695E480], dword_1F0B92328, 0);
    a1[5] = v3;
    if (v3)
    {
      v4 = MEMORY[0x1E69E9A60];
      v5 = *MEMORY[0x1E69E9A60];
      Port = IOMIGMachPortGetPort(v3);
      if (mach_port_get_attributes(v5, Port, 1, &port_info_out, &port_info_outCnt))
      {
        __IOHIDEventSystemClientInitReplyPort_cold_1();
      }

      else
      {
        port_info_out = 64;
        v7 = *v4;
        v8 = IOMIGMachPortGetPort(a1[5]);
        if (!MEMORY[0x19A8DBBA0](v7, v8, 1, &port_info_out, port_info_outCnt))
        {
          IOMIGMachPortRegisterDemuxCallback(a1[5], __IOHIDEventSystemClientMIGDemuxCallback, a1);
          IOMIGMachPortRegisterTerminationCallback(a1[5], __IOHIDEventSystemClientTerminationCallback, a1);
          v9 = IOMIGMachPortGetPort(a1[5]);
          IOMIGMachPortCacheAdd(v9, a1);
          v2 = 1;
          goto LABEL_6;
        }

        __IOHIDEventSystemClientInitReplyPort_cold_2();
      }
    }

    else
    {
      __IOHIDEventSystemClientInitReplyPort_cold_3();
    }

    v11 = a1[5];
    if (v11)
    {
      CFRelease(v11);
      v2 = 0;
      a1[5] = 0;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_6:
  os_unfair_recursive_lock_unlock();
  return v2;
}

void *IOMIGMachPortCreate(const __CFAllocator *a1, uint64_t a2, mach_port_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (!__IOMIGMachPortTypeID)
  {
    pthread_once(&__IOMIGMachPortTypeInit, __IOMIGMachPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 96) = 0;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 48) = 0u;
    v10.version = 0;
    memset(&v10.retain, 0, 24);
    v10.info = Instance;
    if (a3)
    {
      v8 = CFMachPortCreateWithPort(a1, a3, __IOMIGMachPortPortCallback, &v10, 0);
    }

    else
    {
      v8 = CFMachPortCreate(a1, __IOMIGMachPortPortCallback, &v10, 0);
    }

    v7[6] = v8;
    if (v8)
    {
      v7[8] = a2;
      return v7;
    }

    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t __IOMIGMachPortRegister()
{
  __ioPortCache = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = _CFRuntimeRegisterClass();
  __IOMIGMachPortTypeID = result;
  return result;
}

uint64_t IOMIGMachPortRegisterDemuxCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

uint64_t IOMIGMachPortCacheAdd(unsigned int a1, const void *a2)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  CFDictionarySetValue(__ioPortCache, a1, a2);

  return pthread_mutex_unlock(&__ioPortCacheLock);
}

uint64_t io_hideventsystem_open(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, _DWORD *a9, _OWORD *a10)
{
  *&msg[20] = 0u;
  *v23 = 0x13000000000000;
  *&v23[8] = 0u;
  v24 = 0;
  *&msg[4] = 0u;
  *&msg[24] = 4;
  *&msg[28] = a2;
  v18 = 1245184;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  *v22 = a6;
  *&v22[8] = 16777472;
  *&v22[12] = a7;
  *&v22[16] = a8;
  *&v23[8] = *MEMORY[0x1E69E99E0];
  *&v23[16] = a3;
  *&v23[20] = a5;
  LODWORD(v24) = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x1117000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v12 = *&msg[12];
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(msg, 53493763, 0x68u, 0x6Cu, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (*&msg[20] == 71)
      {
        v14 = 4294966988;
      }

      else if (*&msg[20] == 70100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v14 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = *&msg[32];
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_29;
        }

        v14 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v18) << 16 == 1114112)
        {
          if (v19 || HIDWORD(v19) < 0x20)
          {
            return 4294966987;
          }

          v14 = 0;
          *a9 = *&msg[28];
          v16 = *v23;
          *a10 = *&v22[4];
          a10[1] = v16;
          return v14;
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v14;
}

uint64_t _io_hideventsystem_open(unsigned int a1, mach_port_name_t a2, unsigned int a3, UInt8 *a4, unsigned int a5, UInt8 *a6, unsigned int a7, mach_port_name_t a8, _DWORD *a9, _OWORD *a10)
{
  pidp = -1;
  v18 = a10[1];
  *atoken.val = *a10;
  *&atoken.val[4] = v18;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  TypeID = CFDictionaryGetTypeID();
  v20 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v21 = CFDictionaryGetTypeID();
  v22 = _IOHIDUnserializeAndVMDeallocWithTypeID(a6, a7, v21);
  v23 = IOMIGMachPortCacheCopy(a1);
  v24 = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

  v25 = CFGetTypeID(v23);
  v26 = __kIOHIDEventServerTypeID;
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
    v26 = __kIOHIDEventServerTypeID;
  }

  if (v25 == v26)
  {
    v27 = CFGetAllocator(v24);
    v28 = v24[2];
    v29 = a10[1];
    *atoken.val = *a10;
    *&atoken.val[4] = v29;
    v30 = _IOHIDEventSystemConnectionCreate(v27, v28, a3, v20, v22, pidp, a2, a8, &atoken);
    if (v30)
    {
      _IOHIDEventSystemAddConnection(v24[2], v30);
      Port = _IOHIDEventSystemConnectionGetPort(v30);
      IOMIGMachPortCacheAdd(Port, v30);
      _IOHIDEventSystemConnectionRegisterTerminationCallback(v30, __IOHIDEventSystemConnectionDiedCallback, v24);
      _IOHIDEventSystemConnectionRegisterDemuxCallback(v30, __IOHIDEventSystemConnectionDemuxCallback, v24);
      _IOHIDEventSystemConnectionScheduleAsync(v30);
      v32 = _IOHIDEventSystemConnectionGetPort(v30);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
LABEL_16:
    v32 = 0;
    v30 = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *a9 = v32;
  return 0;
}

uint64_t _IOHIDEventSystemConnectionCreate(const __CFAllocator *a1, const void *a2, unsigned int a3, const __CFDictionary *a4, const __CFDictionary *a5, uint64_t a6, mach_port_name_t a7, mach_port_name_t a8, _OWORD *a9)
{
  v84 = *MEMORY[0x1E69E9840];
  name = 0;
  previous = 0;
  Private = _IOHIDEventSystemConnectionCreatePrivate(a1);
  v18 = Private;
  v19 = MEMORY[0x1E69E9A60];
  if (a3 > 4 || !Private)
  {
    if (a3 >= 5 && (v71 = _IOHIDLog(), os_log_type_enabled(v71, OS_LOG_TYPE_ERROR)))
    {
      _IOHIDEventSystemConnectionCreate_cold_2();
      if (!a7)
      {
LABEL_88:
        if (a8)
        {
          mach_port_deallocate(*v19, a8);
        }

        v50 = 0;
        v73 = 0;
        if (!v18)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else if (!a7)
    {
      goto LABEL_88;
    }

    mach_port_deallocate(*v19, a7);
    goto LABEL_88;
  }

  *(Private + 40) = a8;
  *(Private + 192) = a7;
  mach_port_allocate(*v19, 1u, &name);
  if (mach_port_request_notification(*v19, name, 70, 1u, name, 0x15u, &previous) || mach_port_insert_right(*v19, name, name, 0x14u))
  {
    v50 = 0;
    v73 = 0;
    goto LABEL_57;
  }

  v73 = name;
  v20 = IOMIGMachPortCreate(a1, dword_1F0B91E80, name);
  *(v18 + 32) = v20;
  if (!v20)
  {
    goto LABEL_83;
  }

  v74 = a2;
  v75 = a5;
  name = 0;
  *(v18 + 456) = 0;
  v21 = a9[1];
  *(v18 + 196) = *a9;
  *(v18 + 212) = v21;
  v22 = a9[1];
  v77 = *a9;
  v78 = v22;
  v23 = xpc_copy_entitlement_for_token();
  empty = xpc_dictionary_create_empty();
  v25 = empty;
  if (v23)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = ____IOHIDEventSystemConnectionCreateConnectionEntitlements_block_invoke;
    v82 = &__block_descriptor_tmp_150;
    v83 = empty;
    xpc_dictionary_apply(v23, applier);
    xpc_release(v23);
  }

  *(v18 + 248) = v25;
  if (!v25)
  {
LABEL_83:
    v50 = 0;
    goto LABEL_57;
  }

  v26 = *(v18 + 168);
  v27 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v27)
  {
    v50 = 0;
    *(v18 + 240) = 0;
    goto LABEL_57;
  }

  v28 = v27;
  v29 = a6;
  *v27 = 0;
  value = xpc_dictionary_get_value(v25, "com.apple.private.hid.client.admin");
  v31 = MEMORY[0x1E69E9E10];
  v72 = (v18 + 168);
  if (value == MEMORY[0x1E69E9E10])
  {
    v32 = 1;
  }

  else
  {
    v32 = __IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.admin.internal", v26);
  }

  *v28 = *v28 & 0xFE | v32;
  v33 = 2;
  if (xpc_dictionary_get_value(v25, "com.apple.private.hid.client.event-monitor") != v31)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.event-monitor.internal", v26))
    {
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }
  }

  *v28 = *v28 & 0xFD | v33;
  v34 = 4;
  if (xpc_dictionary_get_value(v25, "com.apple.private.hid.client.event-filter") != v31)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.event-filter.internal", v26))
    {
      v34 = 4;
    }

    else
    {
      v34 = 0;
    }
  }

  *v28 = *v28 & 0xFB | v34;
  v35 = 8;
  if (xpc_dictionary_get_value(v25, "com.apple.private.hid.client.event-dispatch") != v31)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.event-dispatch.internal", v26))
    {
      v35 = 8;
    }

    else
    {
      v35 = 0;
    }
  }

  *v28 = *v28 & 0xF7 | v35;
  v36 = 16;
  if (xpc_dictionary_get_value(v25, "com.apple.private.hid.client.service-protected") != v31)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.service-protected.internal", v26))
    {
      v36 = 16;
    }

    else
    {
      v36 = 0;
    }
  }

  *v28 = *v28 & 0xEF | v36;
  v37 = 32;
  if (xpc_dictionary_get_value(v25, "com.apple.private.hid.client.motion-event-privileged") != v31)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.motion-event-privileged.internal", v26))
    {
      v37 = 32;
    }

    else
    {
      v37 = 0;
    }
  }

  *v28 = *v28 & 0xDF | v37;
  if (__IOHIDValidateInternalBuildEntitlement(v25, "com.apple.private.hid.client.debug-tool.internal", v26))
  {
    v38 = 64;
  }

  else
  {
    v38 = 0;
  }

  *v28 = *v28 & 0xBF | v38;
  *(v18 + 240) = v28;
  if (a4)
  {
    v39 = CFDictionaryGetValue(a4, @"caller");
    v40 = CFDictionaryGetValue(a4, @"procName");
    v41 = CFDictionaryGetValue(a4, @"UUID");
    if (v39)
    {
      Copy = CFStringCreateCopy(a1, v39);
    }

    else
    {
      Copy = 0;
    }

    *(v18 + 144) = Copy;
    v44 = v74;
    v43 = v75;
    if (v40)
    {
      v46 = CFStringCreateCopy(a1, v40);
    }

    else
    {
      v46 = 0;
    }

    *(v18 + 152) = v46;
    if (v41)
    {
      v41 = CFStringCreateCopy(a1, v41);
    }

    *(v18 + 160) = v41;
    if (v41)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v41 = *(v18 + 160);
    v44 = v74;
    v43 = v75;
    if (v41)
    {
LABEL_48:
      SystemEncoding = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v41, SystemEncoding);
      goto LABEL_49;
    }
  }

  CStringPtr = 0;
LABEL_49:
  *(v18 + 168) = CStringPtr;
  *(v18 + 8) = v44;
  CFRetain(v44);
  *(v18 + 176) = a3;
  if (v43)
  {
    v48 = CFDictionaryCreateCopy(a1, v43);
  }

  else
  {
    v48 = 0;
  }

  *(v18 + 184) = v48;
  *(v18 + 88) = v29;
  *(v18 + 288) = -1;
  *(v18 + 228) = 0;
  *(v18 + 232) = 0;
  *(v18 + 268) = 0;
  *(v18 + 256) = (**(v18 + 240) & 0x13) == 0;
  v49 = *(v18 + 160);
  v50 = CFStringCreateWithFormat(a1, 0, @"IOHIDConnection process:%@ pid:%d uuid:%@ caller:%@", *(v18 + 152), v29, v49, *(v18 + 144));
  if (!v50)
  {
    goto LABEL_57;
  }

  if (!a3 && (**(v18 + 240) & 1) == 0)
  {
    v51 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemConnectionCreate_cold_1(v72);
    }

    goto LABEL_57;
  }

  IOMIGMachPortRegisterTerminationCallback(*(v18 + 32), __IOHIDEventSystemConnectionPortTerminateCallback, v18);
  IOMIGMachPortRegisterDemuxCallback(*(v18 + 32), __IOHIDEventSystemConnectionPortDemuxCallback, v18);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v18 + 16) = Mutable;
  if (!Mutable)
  {
    goto LABEL_57;
  }

  v53 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(v18 + 80) = v53;
  if (!v53)
  {
    goto LABEL_57;
  }

  v54 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
  *(v18 + 280) = v54;
  if (!v54)
  {
    goto LABEL_57;
  }

  v55 = malloc_type_calloc(0x2CuLL, 8uLL, 0x100004000313F17uLL);
  *(v18 + 400) = v55;
  if (!v55)
  {
    goto LABEL_57;
  }

  v56 = _os_feature_enabled_impl();
  v57 = CFStringGetSystemEncoding();
  v58 = CFStringGetCStringPtr(v50, v57);
  v59 = v56 ? hid_workloop_create(v58, 63, 2, 0) : hid_dispatch_queue_create(v58, 0, kIOHIDServerConnectionRootQueue, 0, 0, 0);
  *(v18 + 96) = v59;
  if (!v59 || (*(v18 + 408) = 2, (v60 = _IOHIDLoadConnectionPluginBundles()) == 0))
  {
LABEL_57:
    CFRelease(v18);
LABEL_58:
    if (name)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    }

    if (v73)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v73);
    }

    v18 = 0;
    goto LABEL_79;
  }

  v61 = v60;
  if (CFArrayGetCount(v60) < 1)
  {
LABEL_80:
    CFRelease(v50);
    goto LABEL_81;
  }

  v62 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v61, v62);
    v64 = CFGetAllocator(v18);
    v65 = IOHIDConnectionFilterCreate(v64, ValueAtIndex, v18);
    if (v65)
    {
      break;
    }

    if (++v62 >= CFArrayGetCount(v61))
    {
      goto LABEL_79;
    }
  }

  v66 = v65;
  CFRetain(v18);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 0x40000000;
  v76[2] = ___IOHIDEventSystemConnectionCreate_block_invoke;
  v76[3] = &__block_descriptor_tmp_25;
  v76[4] = v18;
  IOHIDConnectionFilterSetCancelHandler(v66, v76);
  *(v18 + 448) = v66;
  v67 = _IOHIDLogCategory(9u);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = *v72;
    *applier = 136315394;
    *&applier[4] = v68;
    *&applier[12] = 2112;
    *&applier[14] = v66;
    _os_log_impl(&dword_197195000, v67, OS_LOG_TYPE_DEFAULT, "%s: Connection filter added:%@", applier, 0x16u);
  }

LABEL_79:
  if (v50)
  {
    goto LABEL_80;
  }

LABEL_81:
  v69 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __IOHIDValidateInternalBuildEntitlement(void *a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = os_variant_allows_internal_security_policies();
  v7 = xpc_dictionary_get_value(a1, a2) == MEMORY[0x1E69E9E10];
  result = v7 & v6;
  if (v7 && (v6 & 1) == 0)
  {
    v9 = _IOHIDLogCategory(9u);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v12 = 136315394;
      v13 = a3;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_DEFAULT, "[%s] Process has entitlement %s on Non-Internal build", &v12, 0x16u);
      result = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDEventServerDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_1F0B91E78 && v3 < unk_1F0B91E7C)
  {
    LOBYTE(result) = iohideventsystem_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t _Xio_hideventsystem_open(uint64_t result, _DWORD *a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 104)
  {
    v3 = -304;
    goto LABEL_14;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1 || *(result + 82) << 16 != 1114112 || *(result + 52) != *(result + 96) || *(result + 68) != *(result + 100))
  {
    v3 = -300;
    goto LABEL_14;
  }

  if (*(result + 104) || *(result + 108) <= 0x1Fu)
  {
    v3 = -309;
LABEL_14:
    a2[8] = v3;
    goto LABEL_15;
  }

  *(a2 + 4) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 92);
  v7 = *(result + 40);
  v8 = *(result + 52);
  v9 = *(result + 56);
  v10 = *(result + 68);
  v11 = *(result + 72);
  v12 = *(result + 140);
  v13[0] = *(result + 124);
  v13[1] = v12;
  result = _io_hideventsystem_open(v4, v5, v6, v7, v8, v9, v10, v11, a2 + 7, v13);
  if (!result)
  {
    *a2 |= 0x80000000;
    a2[1] = 40;
    a2[6] = 1;
    return result;
  }

  a2[8] = result;
LABEL_15:
  *(a2 + 3) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _IOHIDEventSystemConnectionCreatePrivate(uint64_t a1)
{
  v1 = [HIDConnection allocWithZone:a1];

  return [(HIDConnection *)v1 init];
}

NSObject *hid_dispatch_queue_create_with_context_destructor(const char *a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v11 = dispatch_queue_create_with_target_V2(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    if (!(a4 | a5))
    {
      return v12;
    }

    v13 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
    if (v13)
    {
      *v13 = a4;
      v13[1] = a5;
      v13[2] = a6;
      v13[3] = a7;
      dispatch_queue_set_specific(v12, &sHIDExecutionCallbacksKey, v13, __hid_dispatch_queue_context_destructor);
      return v12;
    }

    dispatch_release(v12);
  }

  if (a7)
  {
    a7(a6);
  }

  return 0;
}

uint64_t _IOHIDLoadConnectionPluginBundles()
{
  if (_IOHIDLoadConnectionPluginBundles_onceToken != -1)
  {
    _IOHIDLoadConnectionPluginBundles_cold_1();
  }

  return __hidConnectionPluginBundles;
}

CFTypeRef IOHIDConnectionFilterCreate(uint64_t a1, __CFBundle *a2, NSObject *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!__kIOHIDConnectionFilterTypeID)
  {
    pthread_once(&__connectionFilterClientTypeInit, __IOHIDConnectionFilterRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v20 = 0;
    goto LABEL_17;
  }

  v6 = Instance;
  Instance[1] = 0u;
  v7 = Instance + 1;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[2] = 0u;
  InfoDictionary = CFBundleGetInfoDictionary(a2);
  if (!InfoDictionary || (v9 = InfoDictionary, (Value = CFDictionaryGetValue(InfoDictionary, @"NSPrincipalClass")) == 0) || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()) || (v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"OBJC_CLASS_$_%@", v11)) == 0)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  DataPointerForName = CFBundleGetDataPointerForName(a2, v13);
  if (!DataPointerForName)
  {
    v23 = _IOHIDLogCategory(0);
    if (OUTLINED_FUNCTION_0_8(v23))
    {
      *buf = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = v9;
      v24 = "IOHIDConnectionFilterCreate failed to find symbol %@ for bundle %@";
      v25 = a3;
      v26 = 22;
LABEL_29:
      _os_log_error_impl(&dword_197195000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v16 = DataPointerForName;
  if (![DataPointerForName getUid("matchConnection:a3")])
  {
    goto LABEL_30;
  }

  v17 = [v16 getUid("alloc")];
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = v17;
  if (![v17 getUid("initWithConnection:a3")])
  {
    v27 = _IOHIDLogCategory(0);
    if (!OUTLINED_FUNCTION_0_8(v27))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v24 = "IOHIDConnectionFilterCreate Failed to initialize plugin";
LABEL_28:
    v25 = a3;
    v26 = 2;
    goto LABEL_29;
  }

  *v7 = v18;
  Protocol = objc_getProtocol("HIDConnectionPlugin");
  if (!Protocol)
  {
    v28 = _IOHIDLogCategory(0);
    if (!OUTLINED_FUNCTION_0_8(v28))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v24 = "IOHIDConnectionFilterCreate Failed to find HIDConnectionPlugin protocol";
    goto LABEL_28;
  }

  if (!class_conformsToProtocol(v16, Protocol))
  {
    v29 = _IOHIDLogCategory(0);
    if (OUTLINED_FUNCTION_0_8(v29))
    {
      *buf = 0;
      v24 = "IOHIDConnectionFilterCreate class does not conform to HIDConnectionPlugin protocol";
      goto LABEL_28;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_15;
  }

  v6[3] = sel_getUid("propertyForKey:");
  v6[4] = sel_getUid("setProperty:forKey:");
  v6[9] = sel_getUid("filterEvent:");
  v6[5] = sel_getUid("setCancelHandler:");
  v6[8] = sel_getUid("setDispatchQueue:");
  v6[6] = sel_getUid("activate");
  v6[7] = sel_getUid("cancel");
  v20 = CFRetain(v6);
LABEL_15:
  CFRelease(v14);
LABEL_16:
  CFRelease(v6);
LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

const __CFDictionary *IOHIDEventSystemConnectionGetAttribute(uint64_t a1, const void *a2)
{
  result = *(a1 + 184);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void __IOHIDConnectionFilterRelease(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t _IOHIDEventSystemConnectionRegisterDemuxCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;

  return os_unfair_recursive_lock_unlock();
}

void _IOHIDEventSystemAddConnection(CFMutableSetRef *a1, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Type = IOHIDEventSystemConnectionGetType(a2);
  v5 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = a2;
    _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "Connection added: %{public}@", &v13, 0xCu);
  }

  os_unfair_recursive_lock_lock_with_options();
  v6 = &a1[3 * Type];
  v7 = v6[23];
  v8 = v6[24];
  v9 = v6[25];
  CFSetAddValue(a1[6], a2);
  if (Type <= 4)
  {
    CFSetAddValue(*(a1 + qword_19723DA40[Type]), a2);
  }

  v10 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v10, a1[53]);
  os_unfair_recursive_lock_unlock();
  if (Copy)
  {
    CFSetApplyFunction(Copy, _IOHIDEventSystemConnectionRecordClientChanged, 0);
    CFRelease(Copy);
  }

  if (v8)
  {
    v8(v7, v9, a2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

id _IOHIDEventSystemConnectionScheduleAsync(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E96E0], *(a1 + 40), 8uLL, *(a1 + 96));
  *(a1 + 120) = v2;
  if (v2)
  {
    CFRetain(a1);
    dispatch_source_set_registration_handler(*(a1 + 120), &__block_literal_global_15);
    v3 = *(a1 + 120);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_15_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v4 = *(a1 + 120);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_3;
    v7[3] = &__block_descriptor_tmp_16;
    v7[4] = a1;
    dispatch_source_set_cancel_handler(v4, v7);
    dispatch_resume(*(a1 + 120));
  }

  else
  {
    v5 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemConnectionScheduleAsync_cold_1(a1);
    }
  }

  IOMIGMachPortScheduleWithDispatchQueue(*(a1 + 32), *(a1 + 96));
  result = *(a1 + 448);
  if (result)
  {
    IOHIDConnectionFilterSetDispatchQueue(result, *(a1 + 96));
    return IOHIDConnectionFilterActivate(*(a1 + 448));
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterTerminationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOMIGMachPortScheduleWithDispatchQueue(uint64_t a1, NSObject *a2)
{
  result = CFMachPortGetPort(*(a1 + 48));
  *(a1 + 32) = a2;
  if (a2)
  {
    if (!*(a1 + 40))
    {
      dispatch_queue_get_label(a2);
      result = dispatch_mach_create_f();
      if (result)
      {
        *(a1 + 40) = result;
        CFRetain(a1);

        return dispatch_mach_connect();
      }
    }
  }

  return result;
}

void IOHIDEventSystemClientSetMatchingMultiple(uint64_t a1, const __CFArray *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 96));
  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  CFSetRemoveAllValues(*(a1 + 112));
  CFDictionaryRemoveAllValues(*(a1 + 96));
  if (io_hideventsystem_clear_service_cache(*(a1 + 32)) == 268435459 && !*(a1 + 384) && !*(a1 + 400))
  {
    __IOHIDEventSystemClientTerminationCallback();
    io_hideventsystem_clear_service_cache(*(a1 + 32));
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {
    os_unfair_recursive_lock_lock_with_options();
    *(a1 + 80) = CFArrayCreateCopy(v4, a2);
    os_unfair_recursive_lock_unlock();
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFDictionaryGetTypeID())
        {
          __IOHIDEventSystemClientCacheMatchingServices(a1, ValueAtIndex, &value);
          if (value)
          {
            os_unfair_recursive_lock_lock_with_options();
            CFSetAddValue(*(a1 + 112), value);
            os_unfair_recursive_lock_unlock();
            CFRelease(value);
          }
        }
      }
    }
  }

  else
  {
    value = 0;
    __IOHIDEventSystemClientCacheMatchingServices(a1, 0, &value);
    if (value)
    {
      os_unfair_recursive_lock_lock_with_options();
      CFSetAddValue(*(a1 + 112), value);
      os_unfair_recursive_lock_unlock();
      CFRelease(value);
    }
  }

  if (Copy)
  {
    os_unfair_recursive_lock_lock_with_options();
    CFDictionaryApplyFunction(Copy, __IOHIDEventSystemClientServiceReplaceCallback, *(a1 + 96));
    v12 = CFGetAllocator(a1);
    v13 = CFDictionaryCreateCopy(v12, *(a1 + 96));
    os_unfair_recursive_lock_unlock();
    __IOHIDEventSystemClientHandleServiceCacheRefresh(a1, Copy, v13);
    CFRelease(v13);
    CFRelease(Copy);
  }
}

uint64_t io_hideventsystem_clear_service_cache(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1117300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

void __IOHIDEventSystemClientCacheMatchingServices(uint64_t a1, const void *a2, const void **a3)
{
  memset(length, 0, sizeof(length));
  v25 = 0;
  v24 = 0;
  if (a3)
  {
    v6 = &length[1];
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = length;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a2);
    v9 = v8;
    if (v8)
    {
      BytePtr = CFDataGetBytePtr(v8);
      v11 = CFDataGetLength(v9);
    }

    else
    {
      v11 = 0;
      BytePtr = 0;
    }
  }

  else
  {
    v11 = 0;
    BytePtr = 0;
    v9 = 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  v12 = io_hideventsystem_copy_matching_services(*(a1 + 32), BytePtr, v11, v6, v7, &v25, &v24);
  if (v12 == 268435459)
  {
    if (*(a1 + 384))
    {
      os_unfair_recursive_lock_unlock();
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    __IOHIDEventSystemClientTerminationCallback();
    v12 = io_hideventsystem_copy_matching_services(*(a1 + 32), BytePtr, v11, v6, v7, &v25, &v24);
  }

  os_unfair_recursive_lock_unlock();
  if (v12)
  {
    goto LABEL_17;
  }

  v14 = v25;
  v15 = v24;
  TypeID = CFArrayGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(v14, v15, TypeID);
  v17 = _IOHIDUnserializeAndVMDealloc(*&length[1], length[0]);
  if (v17)
  {
    v18 = v17;
    if (a3)
    {
      v19 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v21 = Mutable;
        CFDictionarySetValue(Mutable, @"id", v18);
        if (a2)
        {
          Copy = CFDictionaryCreateCopy(v19, a2);
          CFDictionarySetValue(v21, @"matching", Copy);
          CFRelease(Copy);
        }

        v23 = IOHIDNotificationCreate(v19, __IOHIDEventSystemClientMatchNotifyRelease, a1, v21, 0, 0, 0);
        *a3 = v23;
        if (v23)
        {
          os_unfair_recursive_lock_lock_with_options();
          CFDictionaryAddValue(*(a1 + 88), v18, *a3);
          os_unfair_recursive_lock_unlock();
        }
      }
    }

    CFRelease(v18);
  }

LABEL_18:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ____IOHIDEventSystemClientCacheServices_block_invoke;
    v27[3] = &__block_descriptor_tmp_132;
    v27[4] = a1;
    _IOHIDCFArrayApplyBlock(v13, v27);
    CFRelease(v13);
  }
}

uint64_t io_hideventsystem_copy_matching_services(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5, void *a6, _DWORD *a7)
{
  msg.msgh_id = 0;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  *&msg.msgh_size = 0u;
  v20 = 1;
  v21 = a2;
  v22 = 16777472;
  v23 = a3;
  v24 = *MEMORY[0x1E69E99E0];
  LODWORD(v25) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1117100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x38u, 0x54u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 70101)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
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

          goto LABEL_30;
        }

        v15 = 4294966996;
        if (v20 == 2 && msg.msgh_size == 76 && !msg.msgh_remote_port && HIBYTE(v22) == 1 && BYTE3(v25) == 1)
        {
          v16 = v23;
          if (v23 == v26)
          {
            v17 = DWORD1(v25);
            if (DWORD1(v25) == DWORD1(v26))
            {
              v15 = 0;
              *a4 = v21;
              *a5 = v16;
              *a6 = v24;
              *a7 = v17;
              return v15;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v15;
}

uint64_t _io_hideventsystem_clear_service_cache(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionRemoveAllServices(v2);
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_clear_service_cache(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_clear_service_cache(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

void _IOHIDEventSystemConnectionRemoveAllServices(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 8);
  v3 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v3, *(a1 + 80));
  CFSetRemoveAllValues(*(a1 + 80));
  os_unfair_recursive_lock_unlock();
  if (v2 && Copy)
  {
    _IOHIDEventSystemRemoveServicesForConnection(v2, Copy, a1);
  }

  else if (!Copy)
  {
    return;
  }

  CFRelease(Copy);
}

uint64_t _Xio_hideventsystem_copy_matching_services(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  *(a2 + 52) = 16777473;
  result = _io_hideventsystem_copy_matching_services(*(result + 12), *(result + 28), *(result + 40), a2 + 28, a2 + 68, a2 + 44, a2 + 72);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(a2 + 72);
  *(a2 + 40) = *(a2 + 68);
  *(a2 + 56) = v4;
  *(a2 + 60) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 76;
  *(a2 + 24) = 2;
  return result;
}

void __IOHIDEventSystemCopyMatchingServices(CFDictionaryRef *cf, const __CFDictionary *a2, uint64_t a3, CFTypeRef a4, uint64_t a5, void *a6, void *a7)
{
  MutableCopy = a2;
  if (a2)
  {
    v14 = CFGetAllocator(cf);
    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, MutableCopy);
  }

  if (a4)
  {
    v15 = CFGetTypeID(a4);
    if (v15 == IOHIDEventSystemConnectionGetTypeID())
    {
      v16 = a4;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  context[0] = 0;
  context[1] = MutableCopy;
  context[2] = v16;
  os_unfair_recursive_lock_lock_with_options();
  if (a3)
  {
    if (a6)
    {
      v17 = CFGetAllocator(cf);
      v18 = IOHIDNotificationCreate(v17, __IOHIDEventSystemMatchNotifyRelease, cf, MutableCopy, a3, a4, a5);
      if (v18)
      {
        v19 = v18;
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        CFSetAddValue(cf[5], v19);
        *a6 = v19;
      }
    }
  }

  if (a7 && CFDictionaryGetCount(cf[2]))
  {
    v20 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v20, cf[2]);
    os_unfair_recursive_lock_unlock();
    if (Copy)
    {
      CFDictionaryApplyFunction(Copy, __IOHIDEventSystemCompareServiceFunction, context);
      CFRelease(Copy);
      v22 = context[0];
    }

    else
    {
      v22 = 0;
    }

    *a7 = v22;
    os_unfair_recursive_lock_lock_with_options();
  }

  os_unfair_recursive_lock_unlock();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

uint64_t IOHIDEventSystemCopyMatchingServices(CFDictionaryRef *a1, const __CFDictionary *a2, uint64_t a3, const void *a4, uint64_t a5, void *a6)
{
  v7 = 0;
  __IOHIDEventSystemCopyMatchingServices(a1, a2, a3, a4, a5, a6, &v7);
  return v7;
}

void *IOHIDNotificationCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __kIOHIDNotificationTypeID;
  if (!__kIOHIDNotificationTypeID)
  {
    pthread_once(&__notificationTypeInit, __IOHIDNotificationRegister);
    v14 = __kIOHIDNotificationTypeID;
  }

  result = _IOHIDObjectCreateInstance(a1, v14, 0x50uLL);
  if (result)
  {
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    result[6] = a2;
    result[7] = a3;
    result[8] = a4;
    result[10] = 0;
    result[11] = 0;
  }

  return result;
}

void __IOHIDEventSystemCompareServiceFunction(uint64_t a1, const void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 == IOHIDEventSystemConnectionGetTypeID())
    {
      v7 = *(a3 + 16);
      if (v7)
      {
        UUID = IOHIDEventSystemConnectionGetUUID(*(a3 + 16));
        if (_IOHIDServiceIsProtected(a2) && !IOHIDServiceCheckEntitlements(a2, v7))
        {
          v13 = _IOHIDLogCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 138412546;
            v15 = UUID;
            v16 = 2112;
            RegistryID = IOHIDServiceGetRegistryID(a2);
            _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_DEFAULT, "Connection: %@ not entitled to match protected service: %@", &v14, 0x16u);
          }

          goto LABEL_7;
        }
      }
    }
  }

  if (_IOHIDServiceIsInactive(a2) || !IOHIDServiceMatchPropertyTable(a2, *(a3 + 8)) || (Mutable = *a3) == 0 && (v11 = CFGetAllocator(a2), Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]), (*a3 = Mutable) == 0))
  {
LABEL_7:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = *MEMORY[0x1E69E9840];

  CFArrayAppendValue(Mutable, a2);
}

uint64_t _IOHIDServiceMatchPropertyTable(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = theDict;
  context = a1;
  v10 = 1;
  if (*(a1 + 224))
  {
    goto LABEL_16;
  }

  if (!a3 && *(a1 + 300))
  {
    if (!theDict)
    {
      goto LABEL_16;
    }

    result = CFDictionaryContainsKey(theDict, @"Hidden");
    if (!result)
    {
      goto LABEL_17;
    }
  }

  if (!*(a1 + 304))
  {
    if (theDict && CFDictionaryContainsKey(theDict, @"Unregistered"))
    {
      goto LABEL_12;
    }

    v6 = _IOHIDLogCategory(0);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_17;
    }

    v7 = *(a1 + 400);
    *buf = 134217984;
    v13 = v7;
    _os_log_impl(&dword_197195000, v6, OS_LOG_TYPE_DEFAULT, "Service:0x%llx  is unregistered, not matching", buf, 0xCu);
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (!theDict)
  {
    result = 1;
    goto LABEL_17;
  }

LABEL_12:
  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    CFDictionaryApplyFunction(theDict, __IOHIDServiceComparePropertyFunction, &context);
    result = v10;
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOHIDEventSystemConnectionAddNotification(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryAddValue(*(a1 + 16), a2, a3);

  return os_unfair_recursive_lock_unlock();
}

const __CFArray *_IOHIDCopyServiceClientInfo(const __CFArray *cf)
{
  v1 = cf;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (cf)
  {
    v2 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    v7[3] = Mutable;
    if (Mutable)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = ___IOHIDCopyServiceClientInfo_block_invoke;
      v5[3] = &unk_1E74A90E8;
      v5[4] = &v6;
      _IOHIDCFArrayApplyBlock(v1, v5);
      v1 = v7[3];
    }

    else
    {
      v1 = 0;
    }
  }

  _Block_object_dispose(&v6, 8);
  return v1;
}

BOOL _IOHIDEventSystemConnectionContainsService(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFSetContainsValue(*(a1 + 80), a2) != 0;
  os_unfair_recursive_lock_unlock();
  return v4;
}

uint64_t _IOHIDEventSystemAddServiceForConnection(CFSetRef *a1, uint64_t a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = CFSetContainsValue(a1[7], a3);
  v7 = CFSetContainsValue(a1[8], a3);
  v8 = a1[10];
  v12.length = CFArrayGetCount(v8);
  v12.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v12, a3);
  result = os_unfair_recursive_lock_unlock();
  if (v6)
  {
    result = _IOHIDServiceAddConnection(a2, a3, 0);
  }

  if (v7)
  {
    result = _IOHIDServiceAddConnection(a2, a3, 2);
  }

  if (FirstIndexOfValue != -1)
  {

    return _IOHIDServiceAddConnection(a2, a3, 1);
  }

  return result;
}

void *_IOHIDServiceClientCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (_IOHIDServiceClientCreate_onceToken == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  _IOHIDServiceClientCreate_cold_1();
  if (!a2)
  {
    return 0;
  }

LABEL_3:
  Private = _IOHIDServiceClientCreatePrivate();
  v9 = Private;
  if (Private)
  {
    *(Private + 8) = a4;
    *(Private + 16) = CFRetain(a2);
    v9[12] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9[11] = 0;
    v9[3] = 0;
    _IOHIDServiceClientCacheProperties(v9, a3);
  }

  return v9;
}

void _IOHIDServiceClientCacheProperties(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    LODWORD(v23) = 0;
    Value = CFDictionaryGetValue(theDict, @"PrimaryUsagePage");
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()))
    {
      v6 = OUTLINED_FUNCTION_6_2();
      CFNumberGetValue(v6, v7, v8);
      v9 = v23;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 128) = v9;
    LODWORD(v23) = 0;
    v10 = CFDictionaryGetValue(theDict, @"PrimaryUsage");
    if (v10 && (v11 = CFGetTypeID(v10), v11 == CFNumberGetTypeID()))
    {
      v12 = OUTLINED_FUNCTION_6_2();
      CFNumberGetValue(v12, v13, v14);
      v15 = v23;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 132) = v15;
    v16 = CFDictionaryGetValue(theDict, @"DeviceUsagePairs");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFArrayGetTypeID())
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        Count = CFArrayGetCount(v17);
        v19 = *(v24 + 6);
        if (v19)
        {
          v20 = malloc_type_calloc(1uLL, 8 * v19, 0x100004000313F17uLL);
          *(a1 + 136) = v20;
          if (v20)
          {
            v21 = v24;
            *(a1 + 144) = *(v24 + 6);
            *(v21 + 6) = 0;
            OUTLINED_FUNCTION_0_15();
            v22[1] = 0x40000000;
            v22[2] = ___IOHIDServiceClientCacheProperties_block_invoke;
            v22[3] = &unk_1E74A9130;
            v22[4] = &v23;
            v22[5] = a1;
            _IOHIDCFArrayApplyBlock(v17, v22);
          }
        }

        _Block_object_dispose(&v23, 8);
      }
    }
  }
}

const __CFDictionary *_IOHIDServiceClientRefresh(CFDictionaryRef *a1)
{
  result = os_unfair_recursive_lock_lock_with_options();
  if (a1)
  {
    result = a1[12];
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"ReportInterval");
      if (Value)
      {
        _IOHIDServiceClientRefresh_cold_1((a1 + 11), a1, Value);
      }

      v4 = CFDictionaryGetValue(a1[12], @"BatchInterval");
      result = os_unfair_recursive_lock_unlock();
      if (v4)
      {

        return IOHIDServiceClientSetProperty(a1, @"BatchInterval", v4);
      }
    }
  }

  return result;
}

uint64_t __IOHIDNotificationRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDNotificationTypeID = result;
  return result;
}

uint64_t __IOHIDEventSystemClientStartQueue(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = 0;
  if (!*(a1 + 200))
  {
    v2 = *(a1 + 208) == 0;
  }

  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (v3 && !v2 && (*(a1 + 384) || *(a1 + 400)))
  {
    if (io_hideventsystem_queue_start(v3))
    {
      v4 = _IOHIDLogCategory(0xDu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __IOHIDEventSystemClientStartQueue_cold_1();
      }
    }
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t __IOHIDEventSystemClientStartFilter(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 232) || *(a1 + 240)) && (*(a1 + 384) || *(a1 + 400)))
  {
    io_hideventsystem_register_event_filter(v2, *(a1 + 264));
  }

  return os_unfair_recursive_lock_unlock();
}

CFTypeRef IOHIDEventSystemClientCopyProperty(IOHIDEventSystemClientRef client, CFStringRef key)
{
  result = 0;
  length = 0;
  bytes = 0;
  if (client && key)
  {
    v4 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], key);
    if (!v4)
    {
      return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
    }

    v5 = v4;
    BytePtr = CFDataGetBytePtr(v4);
    v7 = CFDataGetLength(v5);
    os_unfair_recursive_lock_lock_with_options();
    v8 = io_hideventsystem_copy_property(*(client + 8), BytePtr, v7, &bytes, &length + 1, &length);
    if (v8 == 268435459)
    {
      if (*(client + 48))
      {
        v8 = 268435459;
      }

      else
      {
        v8 = 268435459;
        if (!*(client + 50))
        {
          __IOHIDEventSystemClientTerminationCallback();
          v8 = io_hideventsystem_copy_property(*(client + 8), BytePtr, v7, &bytes, &length + 1, &length);
        }
      }
    }

    os_unfair_recursive_lock_unlock();
    CFRelease(v5);
    if (v8 | length)
    {
      return 0;
    }

    else
    {
      return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
    }
  }

  return result;
}

uint64_t io_hideventsystem_copy_property(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  msg.msgh_id = 0;
  v21 = 0;
  v22 = 0u;
  *&msg.msgh_size = 0u;
  v17 = 1;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = *MEMORY[0x1E69E99E0];
  LODWORD(v22) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1117E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x38u, 0x44u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 70114)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (msg.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_28;
        }

        v13 = 4294966996;
        if (v17 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a4 = v18;
            *a5 = v14;
            *a6 = DWORD1(v22);
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_28;
  }

  return v13;
}

uint64_t _Xio_hideventsystem_copy_property(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_property(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _io_hideventsystem_copy_property(unsigned int a1, UInt8 *a2, unsigned int a3, vm_offset_t *a4, _DWORD *a5, int *a6)
{
  *a5 = 0;
  v11 = a3;
  TypeID = CFStringGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(a2, v11, TypeID);
  if (v13)
  {
    v14 = v13;
    v15 = IOMIGMachPortCacheCopy(a1);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == IOHIDEventSystemConnectionGetTypeID() && (System = _IOHIDEventSystemConnectionGetSystem(v16), a4) && ((v19 = System, IOHIDEventSystemConnectionGetType(v16) != 4) || CFSetContainsValue(__whiteListSet, v14)))
      {
        v20 = _IOHIDEventSystemCopyPropertyForConnection(v19, v14, v16);
        if (v20)
        {
          v21 = v20;
          *a5 = _IOHIDSerialize(v20, a4);
          CFRelease(v21);
        }

        v22 = 0;
      }

      else
      {
        v22 = -536870206;
      }

      *a6 = v22;
      CFRelease(v14);
      v23 = v16;
    }

    else
    {
      *a6 = -536870206;
      v23 = v14;
    }

    CFRelease(v23);
  }

  else
  {
    *a6 = -536870206;
  }

  return 0;
}

__CFArray *_IOHIDEventSystemCopyPropertyForConnection(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 128);
  result = _IOHIDEventSystemConnectionCopyProperty(a3, a2);
  if (!result)
  {

    return _IOHIDSessionCopyPropertyForClient(v5, a2, a3);
  }

  return result;
}

__CFDictionary *IOHIDSessionFilterGetPropertyForClient(uint64_t a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"HIDObjectUUID"))
  {
    return *(a1 + 32);
  }

  v5 = *(a1 + 16);
  if (v5 && (v6 = *(*v5 + 120)) != 0)
  {
    v7 = v6();
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v7 = [v8 *(a1 + 64)];
      if (CFEqual(cf1, @"SessionFilterDebug") && v7)
      {
        CFRetain(v7);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (!CFEqual(cf1, @"SessionFilterDebug"))
  {
    return v7;
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return v7;
  }

  v4 = Mutable;
  if (v7)
  {
    if (_IOHIDIsSerializable(v7))
    {
      v11 = v4;
      v12 = v7;
    }

    else
    {
      v13 = _IOHIDLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        IOHIDSessionFilterGetPropertyForClient_cold_1(a1, v13);
      }

      v12 = @"not serializable";
      v11 = v4;
    }

    CFDictionaryAddValue(v11, @"plugin", v12);
    CFRelease(v7);
  }

  v14 = CFGetAllocator(a1);
  v15 = CFUUIDCreateString(v14, *(a1 + 32));
  if (v15)
  {
    v16 = v15;
    CFDictionaryAddValue(v4, @"uuid", v15);
    CFRelease(v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFDictionaryAddValue(v4, @"name", v17);
  }

  return v4;
}

CFNumberRef _IOHIDEventSystemConnectionCopyProperty(void *a1, CFTypeRef cf2)
{
  if (*MEMORY[0x1E695E738] == a1)
  {
    return 0;
  }

  v4 = a1[56];
  if (v4)
  {
    result = IOHIDConnectionFilterCopyProperty(v4, cf2);
    if (result)
    {
      return result;
    }
  }

  if (!CFEqual(@"HIDActivityState", cf2))
  {
    if (CFEqual(cf2, @"IdleNotificationTime"))
    {
      v6 = kCFNumberSInt64Type;
      v7 = 52;
      goto LABEL_8;
    }

    return 0;
  }

  v6 = kCFNumberSInt32Type;
  v7 = 51;
LABEL_8:
  v8 = CFGetAllocator(a1);

  return CFNumberCreate(v8, v6, &a1[v7]);
}

__CFArray *_IOHIDSessionCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3)
{
  v5 = a1;
  v68[2] = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(v68, valuePtr);
  }

  ++**(v5 + 32);
  if (CFEqual(a2, @"LastActivityTimestamp"))
  {
    v6 = CFGetAllocator(v5);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, (v5 + 168));
    CFDictionarySetValue(*(v5 + 120), a2, v7);
    CFRelease(v7);
  }

  if (CFEqual(a2, @"LastActivityTime"))
  {
    *valuePtr = *(v5 + 176) | (*(v5 + 184) << 32);
    v8 = CFGetAllocator(v5);
    v9 = CFNumberCreate(v8, kCFNumberSInt64Type, valuePtr);
    CFDictionarySetValue(*(v5 + 120), a2, v9);
    CFRelease(v9);
  }

  if (CFEqual(a2, @"HIDIdleTimeMicroseconds"))
  {
    v10 = mach_continuous_time();
    *valuePtr = _IOHIDGetTimestampDelta(v10, *(v5 + 168), 0x3E8u);
    v11 = CFGetAllocator(v5);
    v12 = CFNumberCreate(v11, kCFNumberSInt64Type, valuePtr);
    CFDictionarySetValue(*(v5 + 120), a2, v12);
    CFRelease(v12);
  }

  if (CFEqual(a2, @"ServiceRecords"))
  {
    if (a3)
    {
      v13 = *(v5 + 8);
      if (v13)
      {
        v14 = IOHIDEventSystemCopyServices(v13, 0);
        if (v14)
        {
          v15 = v14;
          v60 = v5;
          v16 = *MEMORY[0x1E695E480];
          Count = CFArrayGetCount(v14);
          Mutable = CFArrayCreateMutable(v16, Count, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v19 = CFArrayGetCount(v15);
            if (v19 >= 1)
            {
              v20 = v19;
              v21 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v21);
                if (!ValueAtIndex)
                {
                  goto LABEL_32;
                }

                v23 = ValueAtIndex;
                v24 = _IOHIDServiceCopyServiceRecordForClient(ValueAtIndex, a3);
                if (v24)
                {
                  break;
                }

LABEL_28:
                if (v20 == ++v21)
                {
                  goto LABEL_32;
                }
              }

              v25 = v24;
              v26 = _IOHIDLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v23;
                _os_log_impl(&dword_197195000, v26, OS_LOG_TYPE_INFO, "Creating deep copy of record belonging to service: %@", valuePtr, 0xCu);
              }

              DeepCopy = CFPropertyListCreateDeepCopy(v16, v25, 0);
              v28 = DeepCopy;
              if (DeepCopy && (v29 = CFGetTypeID(DeepCopy), v29 == CFDictionaryGetTypeID()))
              {
                CFArrayAppendValue(Mutable, v28);
              }

              else
              {
                v30 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v30)
                {
                  v31 = v30;
                  RegistryID = IOHIDServiceGetRegistryID(v23);
                  CFDictionarySetValue(v31, @"ServiceID", RegistryID);
                  CFArrayAppendValue(Mutable, v31);
                  CFRelease(v31);
                }

                v33 = _IOHIDLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  _IOHIDSessionCopyPropertyForClient_cold_2(v68, v23, (v68 + 4), v33);
                  if (!v28)
                  {
                    goto LABEL_27;
                  }
                }

                else if (!v28)
                {
LABEL_27:
                  CFRelease(v25);
                  goto LABEL_28;
                }
              }

              CFRelease(v28);
              goto LABEL_27;
            }
          }

LABEL_32:
          v34 = v15;
LABEL_33:
          CFRelease(v34);
LABEL_34:
          v5 = v60;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_82;
  }

  if (CFEqual(a2, @"ClientRecords"))
  {
    if (a3)
    {
      v62 = *(v5 + 8);
      if (v62)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          goto LABEL_35;
        }

        v60 = v5;
        cf = 0;
        for (i = 0; i != 5; ++i)
        {
          v39 = IOHIDEventSystemCopyConnections(v62, i);
          v40 = v39 == 0;
          if (!v39)
          {
            break;
          }

          if (!i)
          {
            v41 = _IOHIDEventSystemCopyRecord(v62);
            if (!v41)
            {
              goto LABEL_75;
            }

            cf = v41;
            CFArrayAppendValue(Mutable, v41);
          }

          v42 = CFArrayGetCount(v39);
          if (v42 >= 1)
          {
            v43 = v42;
            v44 = 0;
            while (1)
            {
              v45 = CFArrayGetValueAtIndex(v39, v44);
              if (!v45)
              {
                break;
              }

              v46 = v45;
              if (v45 != a3)
              {
                v47 = _IOHIDEventSystemConnectionCopyRecord(v45);
                if (!v47)
                {
                  break;
                }

                v48 = v47;
                if (_IOHIDIsSerializable(v47))
                {
                  CFArrayAppendValue(Mutable, v48);
                }

                else
                {
                  v49 = _IOHIDLog();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 138412290;
                    *&valuePtr[4] = v46;
                    _os_log_error_impl(&dword_197195000, v49, OS_LOG_TYPE_ERROR, "Client record is not serializable for %@", valuePtr, 0xCu);
                  }
                }

                CFRelease(v48);
              }

              if (v43 == ++v44)
              {
                goto LABEL_58;
              }
            }

            v40 = 0;
            break;
          }

LABEL_58:
          CFRelease(v39);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (!v40)
        {
LABEL_75:
          v34 = v39;
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

LABEL_82:
    Mutable = 0;
    goto LABEL_35;
  }

  if (CFEqual(a2, @"SessionFilterDebug"))
  {
    if (!a3)
    {
      goto LABEL_82;
    }

    v50 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v51 = CFArrayGetCount(*(v5 + 152));
      if (v51 >= 1)
      {
        v52 = v51;
        v53 = 0;
        v54 = MEMORY[0x1E695E9D8];
        v55 = MEMORY[0x1E695E9E8];
        while (1)
        {
          v56 = CFArrayGetValueAtIndex(*(v5 + 152), v53);
          PropertyForClient = IOHIDSessionFilterGetPropertyForClient(v56, @"SessionFilterDebug");
          if (PropertyForClient)
          {
            goto LABEL_68;
          }

          v58 = CFDictionaryCreateMutable(v50, 0, v54, v55);
          if (v58)
          {
            break;
          }

LABEL_69:
          if (v52 == ++v53)
          {
            goto LABEL_35;
          }
        }

        PropertyForClient = v58;
        CFDictionaryAddValue(v58, @"Class", @"Unknown");
LABEL_68:
        CFArrayAppendValue(Mutable, PropertyForClient);
        CFRelease(PropertyForClient);
        goto LABEL_69;
      }
    }
  }

  else
  {
    context[0] = v5;
    context[1] = a2;
    v65 = 0;
    if (a3 && CFEqual(a3, *MEMORY[0x1E695E738]))
    {
      a3 = 0;
    }

    v66 = a3;
    v59 = *(v5 + 152);
    v69.length = CFArrayGetCount(v59);
    v69.location = 0;
    CFArrayApplyFunction(v59, v69, __FilterFunctionGetPropertyForClient, context);
    Mutable = v65;
    if (v65 || (Mutable = CFDictionaryGetValue(*(v5 + 120), a2)) != 0)
    {
      CFRetain(Mutable);
    }
  }

LABEL_35:
  v35 = *(v5 + 32);
  if (*v35)
  {
    --*v35;
    if (pthread_mutex_unlock((v35 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v63, valuePtr);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFDictionary *__FilterFunctionGetPropertyForClient(__CFDictionary *result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v3 = *(a2 + 24);
    result = IOHIDSessionFilterGetPropertyForClient(result, *(a2 + 8));
    *(a2 + 16) = result;
  }

  return result;
}

CFRunLoopSourceRef IOHIDEventSystemClientScheduleWithRunLoop(CFRunLoopSourceRef result, __CFRunLoop *a2, const __CFString *a3)
{
  *(result + 48) = a2;
  *(result + 49) = a3;
  if (!a2)
  {
    return result;
  }

  v5 = result;
  __IOHIDEventSystemClientSetupAsyncSupport(result);
  os_unfair_recursive_lock_lock_with_options();
  RunLoopSource = v5[36];
  if (RunLoopSource)
  {
    goto LABEL_3;
  }

  v9 = v5[35];
  if (!v9)
  {
LABEL_4:
    v7 = v5[8];
    if (!v7)
    {
      v10 = v5[7];
      if (!v10)
      {
        goto LABEL_6;
      }

      result = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v10, 0);
      v7 = result;
      v5[8] = result;
      if (!result)
      {
        return result;
      }
    }

    CFRunLoopAddSource(a2, v7, a3);
LABEL_6:
    v8 = v5[5];
    if (v8)
    {
      IOMIGMachPortScheduleWithRunLoop(v8, a2, a3);
    }

    os_unfair_recursive_lock_unlock();
    __IOHIDEventSystemClientStartQueue(v5);

    return __IOHIDEventSystemClientStartFilter(v5);
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v9, 0);
  v5[36] = RunLoopSource;
  if (RunLoopSource)
  {
LABEL_3:
    CFRunLoopAddSource(a2, RunLoopSource, a3);
    goto LABEL_4;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t __IOHIDEventSystemClientSetupAsyncSupport(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v24.version = 0;
  memset(&v24.retain, 0, 24);
  v24.info = a1;
  os_unfair_recursive_lock_lock_with_options();
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 280) || (NotificationPort = IODataQueueAllocateNotificationPort()) != 0 && (v4 = CFMachPortCreateWithPort(*v2, NotificationPort, __IOHIDEventSystemClientQueueCallback, &v24, 0), (*(a1 + 280) = v4) != 0))
  {
    if (!*(a1 + 56))
    {
      HIDWORD(v25) = 0;
      if (notify_register_mach_port("com.apple.iohideventsystem.available", &v25 + 1, 0, (a1 + 48)))
      {
        v5 = _IOHIDLogCategory(0);
        if (OUTLINED_FUNCTION_12(v5))
        {
          OUTLINED_FUNCTION_18_0(&dword_197195000, v6, v7, "Failed to register for server availability: %d", v8, v9, v10, v11, v24.version, v24.info, v24.retain, v24.release, v24.copyDescription, v25, 0);
        }
      }

      else
      {
        v12 = CFMachPortCreateWithPort(*v2, HIDWORD(v25), __IOHIDEventSystemClientAvailabilityCallback, &v24, 0);
        *(a1 + 56) = v12;
        if (!v12)
        {
          goto LABEL_21;
        }

        __IOHIDEventSystemClientRefresh(a1, 0);
      }
    }

    if (!*(a1 + 272))
    {
      if (*(a1 + 448))
      {
        v13 = 0x20000;
      }

      else if (*(a1 + 424) == 2)
      {
        v13 = 0x4000;
      }

      else
      {
        v13 = 0x8000;
      }

      Port = CFMachPortGetPort(*(a1 + 280));
      HIDWORD(v25) = 0;
      if (io_hideventsystem_queue_create(*(a1 + 32), Port, v13, &v25 + 1))
      {
        v15 = _IOHIDLogCategory(0xDu);
        if (OUTLINED_FUNCTION_12(v15))
        {
          OUTLINED_FUNCTION_18_0(&dword_197195000, v16, v17, "Unable to create event queue via hidd: (%08x)", v18, v19, v20, v21, v24.version, v24.info, v24.retain, v24.release, v24.copyDescription, v25, 0);
        }

        *(a1 + 272) = 0;
      }

      else
      {
        *(a1 + 272) = IOHIDEventQueueCreateWithVM(*v2, HIDWORD(v25), v13);
      }
    }
  }

LABEL_21:
  result = os_unfair_recursive_lock_unlock();
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

mach_port_t IODataQueueAllocateNotificationPort(void)
{
  *name = 0;
  v0 = MEMORY[0x1E69E9A60];
  v1 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name[1]);
  result = 0;
  if (!v1)
  {
    port_info_outCnt = 1;
    if (mach_port_get_attributes(*v0, name[1], 1, name, &port_info_outCnt) || (name[0] = 1, MEMORY[0x19A8DBBA0](*v0, name[1], 1, name, 1)))
    {
      mach_port_mod_refs(*v0, name[1], 1u, -1);
      return 0;
    }

    else
    {
      return name[1];
    }
  }

  return result;
}

uint64_t io_hideventsystem_queue_create(int a1, int a2, int a3, _DWORD *a4)
{
  memset(&msg[4], 0, 32);
  *&msg[24] = 1;
  *&msg[28] = a2;
  v12 = 1310720;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x1117F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x34u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 70115)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v9 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg[32];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_27;
        }

        v9 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v12) << 16 == 1114112)
        {
          v9 = 0;
          *a4 = *&msg[28];
          return v9;
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_27;
  }

  return v9;
}

uint64_t _io_hideventsystem_queue_create(unsigned int a1, int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v7 = IOMIGMachPortCacheCopy(a1);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == IOHIDEventSystemConnectionGetTypeID())
    {
      v10 = _IOHIDEventSystemConnectionCopyQueue(v8);
      if (v10)
      {
        v11 = v10;
        _IOHIDEventSystemConnectionSetQueue(v8, 0);
        CFRelease(v11);
      }

      v12 = CFGetAllocator(v8);
      v13 = IOHIDEventQueueCreate(v12, 1, a3);
      if (v13)
      {
        v14 = v13;
        IOHIDEventQueueSetNotificationPort(v13, a2);
        *a4 = IOHIDEventQueueGetMemoryHandle(v14);
        _IOHIDEventSystemConnectionSetQueue(v8, v14);
        CFRelease(v14);
      }
    }

    CFRelease(v8);
  }

  return 0;
}

uint64_t _IOHIDServiceRemoveConnection(uint64_t result, const void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 > 2)
  {
    goto LABEL_14;
  }

  v5 = result;
  if (pthread_mutex_lock((*(result + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v14, v15);
  }

  ++**(v5 + 72);
  if (*(*(v5 + 368) + 8 * a3))
  {
    v6 = CFGetAllocator(v5);
    v7 = *(*(v5 + 368) + 8 * a3);
    if (a3 != 1)
    {
      MutableCopy = CFSetCreateMutableCopy(v6, 0, v7);
      CFSetRemoveValue(MutableCopy, a2);
LABEL_8:
      CFRelease(*(*(v5 + 368) + 8 * a3));
      *(*(v5 + 368) + 8 * a3) = MutableCopy;
      v9 = *(v5 + 480);
      if (v9)
      {
        v10 = *(v5 + 560);
        if (v10)
        {
          [v9 v10];
        }
      }

      v11 = *(v5 + 256);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___IOHIDServiceRemoveConnection_block_invoke;
      v13[3] = &__block_descriptor_tmp_129;
      v13[4] = a2;
      _IOHIDCFArrayApplyBlock(v11, v13);
      goto LABEL_12;
    }

    if (CFArrayCreateMutableCopy(v6, 0, v7))
    {
      _IOHIDServiceRemoveConnection_cold_2();
      MutableCopy = *&v15[0];
      goto LABEL_8;
    }
  }

LABEL_12:
  result = *(v5 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v14, v15);
    }
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _io_hideventsystem_release_notification(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  if (OUTLINED_FUNCTION_6_4(a3, a2))
  {
    v4 = OUTLINED_FUNCTION_4_7();
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == IOHIDEventSystemConnectionGetTypeID())
      {
        System = _IOHIDEventSystemConnectionGetSystem(v5);
        if (System)
        {
          _IOHIDEventSystemRemoveNotificationForConnection(System, v5, v3);
        }
      }

      CFRelease(v3);
    }

    else
    {
      v5 = v3;
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t _Xio_hideventsystem_release_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 52))
      {
        result = _io_hideventsystem_release_notification(*(result + 12), *(result + 28), v3);
        *(a2 + 32) = result;
        return result;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _IOHIDEventSystemRemoveNotificationForConnection(uint64_t a1, CFDictionaryRef *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = _IOHIDEventSystemConnectionCopyNotification(a2, a3);
  _IOHIDEventSystemConnectionRemoveNotification(a2, a3);
  if (v6)
  {
    CFSetRemoveValue(*(a1 + 40), v6);
    CFRelease(v6);
  }

  return os_unfair_recursive_lock_unlock();
}

const void *_IOHIDEventSystemConnectionCopyNotification(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  os_unfair_recursive_lock_unlock();
  return v5;
}

void _IOHIDEventSystemConnectionRemoveNotification(CFDictionaryRef *a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(a1[2], a2);
  os_unfair_recursive_lock_unlock();
  if (Value)
  {
    CFRetain(Value);
    CFRetain(a2);
    CFRetain(a1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___IOHIDEventSystemConnectionRemoveNotification_block_invoke;
    v5[3] = &__block_descriptor_tmp_26_1;
    v5[4] = a1;
    v5[5] = a2;
    v5[6] = Value;
    IOHIDNotificationInvalidate(Value, v5);
  }
}

void __IOHIDEventSystemMatchNotifyRelease(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a1 + 40);
  if (v6)
  {
    CFSetRemoveValue(v6, a3);
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {

    CFRelease(a2);
  }
}

void __ConnectionFunctionPickBatchInterval(uint64_t a1, void *a2, unsigned int *a3)
{
  valuePtr = 0;
  v4 = IOHIDServiceConnectionCacheCopyValueForKey(a2, @"BatchInterval");
  if (v4)
  {
    v5 = v4;
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v5);
    if (valuePtr < *a3)
    {
      *a3 = valuePtr;
    }
  }
}

uint64_t IOMIGMachPortCacheRemove(unsigned int a1)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  CFDictionaryRemoveValue(__ioPortCache, a1);

  return pthread_mutex_unlock(&__ioPortCacheLock);
}

void _IOHIDServiceClientReleasePrivate(void *a1)
{
  IOHIDServiceClientFastPathInvalidate(a1);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    CFRelease(v3);
    a1[12] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[17];
  if (v7)
  {

    free(v7);
  }
}

id IOHIDServiceFilterClientNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 96);
  if (result)
  {
    v7 = *(a1 + 176);
    if (v7)
    {
      return [result v7];
    }
  }

  return result;
}

uint64_t __IOHIDServiceUpdateIntervals(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&context, buf);
  }

  ++**(a1 + 72);
  context = 0;
  v4 = *(a1 + 168);
  CFDictionaryApplyFunction(*(a1 + 240), __ConnectionFunctionPickReportInterval, &context);
  if (CFDictionaryGetCount(*(a1 + 240)))
  {
    LODWORD(v5) = HIDWORD(context);
    v6 = v5;
    v7 = context * 1.25 < v6;
    if (context * 1.75 <= v6)
    {
      v7 = 0;
    }

    v4 = context >> v7;
  }

  v8 = *(a1 + 72);
  if (*v8)
  {
    --*v8;
    if (pthread_mutex_unlock((v8 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v21, buf);
    }
  }

  v9 = __IOHIDServicePickBatchInterval(a1);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&context, buf);
  }

  ++**(a1 + 72);
  if (v4 == *(a1 + 160))
  {
    v10 = 1;
  }

  else
  {
    v10 = __SetNumPropertyForService(a1, @"ReportInterval", v4, a2);
    v11 = _IOHIDServiceCopyEventCounts(a1);
    v12 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 400);
      v14 = *(a1 + 160);
      *buf = 134219010;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_INFO, "0x%llx: Set report interval current:%d new:%d result:%d events:%@", buf, 0x28u);
    }

    if (v10)
    {
      *(a1 + 160) = v4;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v9 != *(a1 + 164))
  {
    v10 = __SetNumPropertyForService(a1, @"BatchInterval", v9, a2);
    v15 = _IOHIDLogCategory(6u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 400);
      v17 = *(a1 + 164);
      *buf = 134218752;
      v24 = v16;
      v25 = 1024;
      v26 = v17;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_197195000, v15, OS_LOG_TYPE_INFO, "0x%llx: Set batch interval current:%d new:%d result:%d", buf, 0x1Eu);
    }

    if (v10)
    {
      *(a1 + 164) = v9;
    }
  }

  v18 = *(a1 + 72);
  if (*v18)
  {
    --*v18;
    if (pthread_mutex_unlock((v18 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&context, buf);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __IOHIDServicePickBatchInterval(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  context = -1;
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v5, v7);
  }

  ++**(a1 + 72);
  CFDictionaryApplyFunction(*(a1 + 240), __ConnectionFunctionPickBatchInterval, &context);
  v2 = *(a1 + 72);
  if (*v2)
  {
    --*v2;
    if (pthread_mutex_unlock((v2 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v5, v7);
    }
  }

  result = context;
  if (context == -1)
  {
    result = *(a1 + 172);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __ConnectionFunctionPickReportInterval(uint64_t a1, void *a2, unsigned int *a3)
{
  valuePtr = 0;
  if (_IOHIDEventSystemConnectionIsResponsive(a1))
  {
    v5 = IOHIDServiceConnectionCacheCopyValueForKey(a2, @"ReportInterval");
    if (v5)
    {
      v6 = v5;
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v6);
      v7 = valuePtr;
      if (valuePtr)
      {
        v8 = *a3;
        if (*a3)
        {
          if (valuePtr < v8)
          {
            a3[1] = v8;
LABEL_10:
            *a3 = v7;
            return;
          }
        }

        else
        {
          *a3 = valuePtr;
          a3[1] = v7;
          v8 = v7;
        }

        v10 = a3[1];
        ++a3;
        v9 = v10;
        if (v8 == v10 || v7 < v9)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void __IOHIDEventQueueRelease(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 144) == 1)
    {
      v3 = MEMORY[0x1E69E9A60];
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v2, *(a1 + 24));
      v4 = *(a1 + 84);
      if (v4)
      {
        mach_port_deallocate(*v3, v4);
      }
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (*(a1 + 160))
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(*(a1 + 160));
    *(a1 + 160) = 0;
  }
}

void __IOHIDEventSystemConnectionPortTerminateCallback(uint64_t a1, uint64_t *cf)
{
  CFRetain(cf);
  os_unfair_recursive_lock_lock_with_options();
  v4 = cf[8];
  if (v4)
  {
    v5 = cf[4];
    if (v5 == a1)
    {
      v6 = cf[9];
      if (a1)
      {
        IOMIGMachPortRegisterTerminationCallback(v5, 0, 0);
      }

      os_unfair_recursive_lock_unlock();
      v4(cf, v6);
      os_unfair_recursive_lock_lock_with_options();
    }
  }

  os_unfair_recursive_lock_unlock();

  CFRelease(cf);
}

void __IOHIDEventServerKillClient(uint64_t a1, uint64_t *a2)
{
  _IOHIDEventSystemConnectionInvalidate(a2);
  _IOHIDEventSystemConnectionUnscheduleAsync(a2);
  Port = _IOHIDEventSystemConnectionGetPort(a2);
  IOMIGMachPortCacheRemove(Port);
  v5 = *(a1 + 16);

  _IOHIDEventSystemRemoveConnection(v5, a2);
}

void __IOHIDEventSystemConnectionDiedCallback(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    __IOHIDEventServerKillClient(a2, a1);
  }
}

void _IOHIDEventSystemConnectionInvalidate(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 280)) >= 1)
  {
    v2 = CFGetAllocator(a1);
    Copy = CFDictionaryCreateCopy(v2, *(a1 + 280));
    CFDictionaryRemoveAllValues(*(a1 + 280));
    CFRetain(a1);
    EnumerationQueue = _IOHIDEventSystemGetEnumerationQueue(*(a1 + 8));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___IOHIDEventSystemConnectionInvalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = Copy;
    block[5] = a1;
    dispatch_async(EnumerationQueue, block);
  }

  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryApplyFunction(*(a1 + 16), __NotificationApplier, a1);
  os_unfair_recursive_lock_unlock();
  v5 = *(a1 + 432);
  if (v5)
  {
    IOHIDNotificationInvalidate(v5, 0);
  }

  CFRetain(a1);
  v6 = *(a1 + 96);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___IOHIDEventSystemConnectionInvalidate_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_18_2;
  v7[4] = a1;
  dispatch_async(v6, v7);
  *(a1 + 264) |= 1u;
}

uint64_t _IOHIDEventSystemConnectionUnscheduleAsync(uint64_t *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1[14];
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = a1[53];
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  IOMIGMachPortUnscheduleFromDispatchQueue(a1[4], a1[12]);
  v5 = a1[56];
  if (v5)
  {
    IOHIDConnectionFilterCancel(v5);
  }

  return os_unfair_recursive_lock_unlock();
}

void _IOHIDEventSystemRemoveConnection(CFDictionaryRef *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Type = IOHIDEventSystemConnectionGetType(a2);
  CFRetain(a2);
  v6 = _IOHIDLogCategory(0);
  if (OUTLINED_FUNCTION_5_1(v6))
  {
    v16 = 138543362;
    v17 = a2;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "Connection removed: %{public}@", &v16, 0xCu);
  }

  _IOHIDEventSystemUnregisterEventFilter(a1, a2);
  os_unfair_recursive_lock_lock_with_options();
  v7 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v7, a1[2]);
  v9 = &a1[3 * Type];
  v10 = v9[38];
  v11 = v9[39];
  v12 = v9[40];
  CFSetRemoveValue(a1[7], a2);
  CFSetRemoveValue(a1[8], a2);
  CFSetRemoveValue(a1[9], a2);
  CFSetRemoveValue(a1[6], a2);
  v13 = CFGetAllocator(a1);
  v14 = CFSetCreateCopy(v13, a1[53]);
  os_unfair_recursive_lock_unlock();
  _IOHIDEventSystemRemoveServicesForConnection(a1, Copy, a2);
  if (v14)
  {
    CFSetApplyFunction(v14, _IOHIDEventSystemConnectionRecordClientChanged, 0);
    CFRelease(v14);
  }

  if (Copy)
  {
    CFDictionaryApplyFunction(Copy, __RemoveServiceConnectionPropertyFunction, a2);
    CFRelease(Copy);
  }

  if (v11)
  {
    v11(v10, v12, a2);
  }

  CFRelease(a2);
  v15 = *MEMORY[0x1E69E9840];
}

BOOL OUTLINED_FUNCTION_5_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

double OUTLINED_FUNCTION_5_3()
{
  *v0 = 0;
  result = 0.0;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char valuePtr)
{

  return CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr);
}

void OUTLINED_FUNCTION_5_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void __IOMIGMachPortRelease(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    v3 = *MEMORY[0x1E69E9A60];
    Port = CFMachPortGetPort(*(a1 + 48));
    v5 = mach_port_mod_refs(v3, Port, 1u, -1);
    if (v5)
    {
      v6 = v5;
      if (__IOMIGMachPortLog_onceToken != -1)
      {
        __IOMIGMachPortRelease_cold_1();
      }

      v7 = __IOMIGMachPortLog_log;
      if (os_log_type_enabled(__IOMIGMachPortLog_log, OS_LOG_TYPE_ERROR))
      {
        __IOMIGMachPortRelease_cold_2(v6, v7);
      }
    }

    CFRelease(*(a1 + 48));
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  if (*(a1 + 40))
  {
    dispatch_mach_cancel();
    dispatch_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }
}