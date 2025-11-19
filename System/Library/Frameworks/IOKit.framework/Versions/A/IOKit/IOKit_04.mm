void __IOHIDEventSystemMatchNotifyFunction(const void **a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3000000000;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ____IOHIDEventSystemMatchNotifyFunction_block_invoke;
    v8[3] = &unk_1E74A8658;
    v8[4] = &v9;
    IOHIDNotificationSignalWithBlock(a1, v8);
    CFDictionaryApplyFunction(*(a2 + 8), __IOHIDEventSystemCompareServiceFunction, v10 + 3);
    v4 = v10;
    v5 = v10[3];
    if (v5)
    {
      if (CFArrayGetCount(v5))
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 0x40000000;
        v7[2] = ____IOHIDEventSystemMatchNotifyFunction_block_invoke_2;
        v7[3] = &unk_1E74A8680;
        v7[4] = &v9;
        v7[5] = a2;
        IOHIDNotificationSignalWithBlock(a1, v7);
      }

      CFRelease(v10[3]);
      v4 = v10;
    }

    v6 = v4[4];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t iohideventsystem_client_dispatch_notification_results(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, mach_msg_timeout_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 2;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a3;
  v24 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x124F800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162515, 0x4Cu, 0x2Cu, msgh_local_port, a6, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v11 - 268435459) > 1)
    {
      goto LABEL_21;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    goto LABEL_21;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 75100)
  {
    v11 = 4294966995;
    goto LABEL_20;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v11 = HIDWORD(v16);
  if (HIDWORD(v16))
  {
    goto LABEL_20;
  }

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void OUTLINED_FUNCTION_9_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

unsigned int *OUTLINED_FUNCTION_9_2(unsigned int **a1)
{
  result = *a1;
  v2 = *result;
  return result;
}

uint64_t _iohideventsystem_client_dispatch_notification_results_cold_1(uint64_t a1, const __CFArray *a2, void *a3)
{
  __IOHIDEventSystemClientCacheServices(a1, a2);
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 168) || *(a1 + 176))
  {
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 0x40000000;
    a3[2] = ___iohideventsystem_client_dispatch_notification_results_block_invoke;
    a3[3] = &__block_descriptor_tmp_39;
    a3[4] = a1;
    _IOHIDCFArrayApplyBlock(a2, a3);
    return os_unfair_recursive_lock_unlock();
  }

  else
  {

    return os_unfair_recursive_lock_unlock();
  }
}

uint64_t _Xiohideventsystem_client_dispatch_notification_results(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 68)) && (v4 = *(a1 + 56), v4 == *(a1 + 72)))
    {
      result = _iohideventsystem_client_dispatch_notification_results(*(a1 + 12), *(a1 + 28), v3, *(a1 + 44), v4);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _iohideventsystem_client_dispatch_notification_results(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5)
{
  v8 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFArrayGetTypeID();
  v10 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v11 = v10;
  if (v8 && v10)
  {
    v12 = IOMIGMachPortCacheCopy(a1);
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      v15 = __kIOHIDEventSystemClientTypeID;
      if (!__kIOHIDEventSystemClientTypeID)
      {
        pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
        v15 = __kIOHIDEventSystemClientTypeID;
      }

      if (v14 == v15)
      {
        os_unfair_recursive_lock_lock_with_options();
        Value = CFDictionaryGetValue(v13[11], v8);
        os_unfair_recursive_lock_unlock();
        if (Value)
        {
          _iohideventsystem_client_dispatch_notification_results_cold_1(v13, v11, v18);
        }
      }

      CFRelease(v13);
    }

    goto LABEL_10;
  }

  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

void __IOHIDEventSystemClientCacheServices(uint64_t a1, const __CFArray *a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ____IOHIDEventSystemClientCacheServices_block_invoke;
    v2[3] = &__block_descriptor_tmp_132;
    v2[4] = a1;
    _IOHIDCFArrayApplyBlock(a2, v2);
  }
}

id IOHIDServiceGetProperty(uint64_t a1, const void *a2)
{
  v2 = __IOHIDServiceCopyPropertyForClient(a1, a2, *MEMORY[0x1E695E738], 0);

  return v2;
}

id IOHIDSessionFilterRegisterService(id result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = *(*v3 + 88);
    if (v4)
    {
      return v4(*(result + 2), a2);
    }
  }

  if (*(result + 7))
  {
    v5 = *(result + 13);
    if (v5)
    {
      return [*(result + 7) v5];
    }
  }

  return result;
}

void _IOHIDServiceScheduleAsync(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8262, 1, a1, 1, 0, 0);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v6, v7);
  }

  v2 = *(a1 + 80);
  ++**(a1 + 72);
  IONotificationPortSetDispatchQueue(*(a1 + 88), v2);
  if (*(a1 + 8))
  {
    _IOHIDServiceScheduleAsync_cold_2(a1, v5, (a1 + 80));
  }

  v3 = *(a1 + 72);
  if (*v3)
  {
    --*v3;
    if (pthread_mutex_unlock((v3 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v6, v7);
    }
  }

  _IOHIDDebugTrace(8262, 2, a1, 1, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
}

void _IOHIDServiceScheduleAsync_cold_2(CFTypeRef cf, void *a2, void *a3)
{
  v6 = *(cf + 4);
  if (v6)
  {
    v7 = *(*v6 + 72);
    if (v7)
    {
      v8 = *a3;
      v7();
      goto LABEL_17;
    }
  }

  v9 = *(cf + 45);
  if (v9)
  {
    v10 = *(v9 + 48);
    if (v10)
    {
      v11 = *(cf + 43);
      v12 = *(cf + 44);
      v13 = *a3;
LABEL_10:
      v10(v11, v12, v13);
      goto LABEL_17;
    }
  }

  v11 = *(cf + 3);
  if (v11)
  {
    v10 = *(*v11 + 72);
    if (v10)
    {
      v12 = qword_1EAF1D008;
      v13 = qword_1EAF1D010;
      goto LABEL_10;
    }
  }

  if (*(cf + 60))
  {
    *(cf + 440) = 1;
    CFRetain(cf);
    [*(cf + 60) *(cf + 66)];
    [*(cf + 60) *(cf + 65)];
    v14 = *(cf + 73);
    if (v14)
    {
      [*(cf + 60) v14];
    }

    v15 = *(cf + 69);
    if (v15)
    {
      [*(cf + 60) v15];
    }

    [*(cf + 60) *(cf + 67)];
  }

LABEL_17:
  v16 = *(cf + 32);
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 0x40000000;
  a2[2] = ___IOHIDServiceScheduleAsync_block_invoke;
  a2[3] = &__block_descriptor_tmp_88;
  a2[4] = cf;
  _IOHIDCFArrayApplyBlock(v16, a2);
  v17 = *(cf + 32);
  v18.length = CFArrayGetCount(v17);
  v18.location = 0;
  CFArrayApplyFunction(v17, v18, __FilterFunctionScheduleAsync, 0);
}

id IOHIDServiceFilterSchedule(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (v3 = *(*v2 + 72)) != 0)
  {
    v4 = *(a1 + 32);

    return v3();
  }

  else
  {
    result = *(a1 + 96);
    if (result)
    {
      v6 = *(a1 + 168);
      if (v6)
      {
        [result v6];
        result = *(a1 + 96);
      }

      v7 = *(a1 + 160);
      if (v7)
      {
        [result v7];
        result = *(a1 + 96);
      }

      *(a1 + 72) |= 1u;
      v8 = *(a1 + 144);

      return [result v8];
    }
  }

  return result;
}

void __CheckForNewProperties(void *key, const void *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(*a3, key);
  if (!Value || !CFEqual(Value, a2))
  {
    v7 = a3[1];

    CFDictionaryAddValue(v7, key, a2);
  }
}

const void *___iohideventsystem_client_dispatch_notification_results_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"ServiceID");
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);
    os_unfair_recursive_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(*(a1 + 32) + 96), v4);
    v7 = *(a1 + 32);
    os_unfair_recursive_lock_unlock();
    v8 = *(a1 + 32);
    v9 = v8[22];
    if (v9)
    {
      v10 = v8[23];
      v11 = v8[24];
      v12 = *(v9 + 16);

      return v12();
    }

    else
    {
      v13 = v8[21];
      v14 = v8[23];
      v15 = v8[24];

      return v13(v14, v15, Value);
    }
  }

  return result;
}

void *_IOHIDVirtualServiceClientNotification(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[8];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      return v4(result[9], result[10], result, a2, a3);
    }
  }

  return result;
}

void *IOHIDServiceCreateRequestTerminationNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CFGetAllocator(a1);
  v9 = IOHIDNotificationCreate(v8, __IOHIDServiceRequestTerminaitonNotificationRelease, a1, 0, a2, a3, a4);
  if (v9)
  {
    os_unfair_lock_lock((a1 + 456));
    CFSetAddValue(*(a1 + 120), v9);
    os_unfair_lock_unlock((a1 + 456));
  }

  return v9;
}

uint64_t __IOHIDServiceOpenedByEventSystem(uint64_t a1)
{
  result = _IOHIDServiceSetPropertyForClient(a1, @"DeviceOpenedByEventSystem", *MEMORY[0x1E695E4D0], *MEMORY[0x1E695E738]);
  if (*(a1 + 336))
  {
    valuePtr = 0;
    CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, &valuePtr);
    return _IOHIDEventSystemConnectionVirtualServiceNotify(*(a1 + 336), valuePtr, 4, 0);
  }

  return result;
}

uint64_t _Xiohideventsystem_client_dispatch_virtual_service_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 68)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 64))
      {
        result = _iohideventsystem_client_dispatch_virtual_service_notification(*(result + 12), *(result + 52), *(result + 60), *(result + 28), v3);
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

uint64_t _iohideventsystem_client_dispatch_virtual_service_notification(unsigned int a1, const void *a2, uint64_t a3, UInt8 *a4, unsigned int a5)
{
  v9 = a5;
  TypeID = CFDictionaryGetTypeID();
  v11 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, v9, TypeID);
  v12 = IOMIGMachPortCacheCopy(a1);
  v13 = v12;
  if (v12)
  {
    v14 = CFGetTypeID(v12);
    v15 = __kIOHIDEventSystemClientTypeID;
    if (!__kIOHIDEventSystemClientTypeID)
    {
      pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
      v15 = __kIOHIDEventSystemClientTypeID;
    }

    if (v14 == v15)
    {
      os_unfair_recursive_lock_lock_with_options();
      Value = CFDictionaryGetValue(v13[13], a2);
      if (Value)
      {
        v17 = Value;
        CFRetain(Value);
        os_unfair_recursive_lock_unlock();
        _IOHIDVirtualServiceClientNotification(v17, a3, v11);
        CFRelease(v17);
      }

      else
      {
        os_unfair_recursive_lock_unlock();
        v18 = _IOHIDLogCategory(0xDu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          _iohideventsystem_client_dispatch_virtual_service_set_property_cold_1();
        }
      }

      goto LABEL_9;
    }
  }

  if ((_iohideventsystem_client_dispatch_virtual_service_notification_cold_2(a2, v13 == 0) & 1) == 0)
  {
LABEL_9:
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

const __CFData *_IOHIDSimpleQueueCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 1;
  v5 = (a3 + 1) * a2 + 32;
  Mutable = CFDataCreateMutable(a1, v5);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v5);
    BytePtr = CFDataGetBytePtr(v7);
    *BytePtr = v4;
    *(BytePtr + 1) = a2;
    *(BytePtr + 2) = 0;
    *(BytePtr + 3) = 0;
  }

  return v7;
}

uint64_t iohideventsystem_client_dispatch_properties_changed(mach_port_t a1, uint64_t a2, int a3, mach_msg_timeout_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = *MEMORY[0x1E69E99E0];
  v18 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v12.msgh_bits = 2147489043;
  v12.msgh_remote_port = a1;
  v12.msgh_local_port = special_reply_port;
  *&v12.msgh_voucher_port = 0x124FA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162515, 0x38u, 0x2Cu, msgh_local_port, a4, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v9 - 268435459) > 1)
    {
      goto LABEL_20;
    }

    if ((v12.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v12.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v12);
    goto LABEL_20;
  }

  if (v12.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_19;
  }

  if (v12.msgh_id != 75102)
  {
    v9 = 4294966995;
    goto LABEL_19;
  }

  v9 = 4294966996;
  if ((v12.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v12.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v9 = HIDWORD(v14);
  if (HIDWORD(v14))
  {
    goto LABEL_19;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _Xiohideventsystem_client_dispatch_properties_changed(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 52)))
    {
      result = _iohideventsystem_client_dispatch_properties_changed(*(a1 + 12), *(a1 + 28), v3);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _iohideventsystem_client_dispatch_properties_changed(int a1, UInt8 *a2, CFIndex a3)
{
  v4 = OUTLINED_FUNCTION_17_0(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = IOMIGMachPortCacheCopy(v3);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = __kIOHIDEventSystemClientTypeID;
      if (!__kIOHIDEventSystemClientTypeID)
      {
        OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
        v9 = __kIOHIDEventSystemClientTypeID;
      }

      if (v8 == v9)
      {
        _IOHIDEventSystemClientDispatchPropertiesChanged(v7, v5);
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t _IOHIDEventSystemClientDispatchPropertiesChanged(uint64_t a1, uint64_t a2)
{
  os_unfair_recursive_lock_lock_with_options();
  gettimeofday((a1 + 496), 0);
  ++*(a1 + 512);
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1 + 120);
  if (v4)
  {
    v6[0] = a1;
    v6[1] = a2;
    CFDictionaryApplyFunction(v4, __IOHIDEventSystemClientRegisterPropertyCallbackApplyFunction, v6);
  }

  return os_unfair_recursive_lock_unlock();
}

void __IOHIDEventSystemClientRegisterPropertyCallbackApplyFunction(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = a2;
  CFDictionaryApplyFunction(v3, _IOHIDEventSystemClientDispatchPropertiesChangedFunction, v4);
}

uint64_t IOHIDEventCreateVendorDefinedEvent(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, const void *a6, size_t a7, int a8)
{
  v13 = a2;
  v14 = _IOHIDEventCreate(a1, a7 + 28, 1, a2, a8 | 1u);
  if (v14)
  {
    if (_MergedGlobals[0] && _MergedGlobals[0]() && off_1ED446908)
    {
      v13 = off_1ED446908(v13);
    }

    *(v14 + 8) = v13;
    v15 = *(v14 + 96);
    *(v15 + 16) = a3;
    *(v15 + 18) = a4;
    *(v15 + 20) = a5;
    *(v15 + 24) = a7;
    memmove((v15 + 28), a6, a7);
  }

  return v14;
}

uint64_t _IOHIDEventSystemClientDispatchPropertiesChangedFunction(const void *a1, uint64_t a2, uint64_t a3)
{
  result = CFEqual(a1, **(a3 + 8));
  if (result)
  {
    v7 = *(a3 + 8);
    v9 = v7[1];
    v8 = v7[2];
    v10 = v7[3];

    return v9(v8, v10, a1, a2);
  }

  return result;
}

void *__IOHIDServiceVirtualCopyEventCallback(uint64_t a1, uint64_t a2, int a3, __CFData *DataInternal, int a5)
{
  v37 = *MEMORY[0x1E69E9840];
  SenderID = _IOHIDServiceGetSenderID(a1);
  v35 = 0;
  HIDWORD(v34) = 0;
  if (DataInternal && (v10 = CFGetAllocator(a2), (DataInternal = IOHIDEventCreateDataInternal(v10, DataInternal)) != 0))
  {
    v11 = CFGetAllocator(a2);
    v12 = _IOHIDCreateBinaryData(v11, DataInternal);
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 456))
  {
    goto LABEL_13;
  }

  v13 = *(a2 + 40);
  if (v12)
  {
    BytePtr = CFDataGetBytePtr(v12);
    Length = CFDataGetLength(v12);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v16 = iohideventsystem_copy_event_from_virtual_service(v13, SenderID, a3, BytePtr, Length, a5, &v35, &v34 + 1, 0x20u);
  if (v16)
  {
    v17 = v16;
    v18 = _IOHIDLogCategory(9u);
    if (OUTLINED_FUNCTION_20_0(v18))
    {
      v19 = *(a2 + 168);
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_12_1(&dword_197195000, v20, v21, "%s: HIDVS ID:%llx _iohideventsystem_copy_event_from_virtual_service:%x", v22, v23, v24, v25, v34, v35, v36);
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v17, a2);
LABEL_13:
    v26 = 0;
    if (!DataInternal)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v29 = v35;
  v30 = HIDWORD(v34);
  TypeID = CFDataGetTypeID();
  v32 = _IOHIDUnserializeAndVMDeallocWithTypeID(v29, v30, TypeID);
  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = v32;
  v26 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v32);
  CFRelease(v33);
  if (DataInternal)
  {
LABEL_14:
    CFRelease(DataInternal);
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t iohideventsystem_copy_event_from_virtual_service(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, void *a7, _DWORD *a8, mach_msg_timeout_t a9)
{
  v19 = 1;
  v20 = a4;
  v21 = 16777472;
  v22 = a5;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = a2;
  v25 = a3;
  v26 = a5;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1250100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162515, 0x48u, 0x40u, msgh_local_port, a9, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 75109)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (msg.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_28;
        }

        v15 = 4294966996;
        if (v19 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a7 = v20;
            *a8 = v16;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_28:
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

    goto LABEL_28;
  }

  return v15;
}

uint64_t _Xiohideventsystem_copy_event_from_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 64))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = _iohideventsystem_copy_event_from_virtual_service(*(result + 12), *(result + 52), *(result + 60), *(result + 28), *(result + 40), *(result + 68), (a2 + 28), (a2 + 52));
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
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _iohideventsystem_copy_event_from_virtual_service(unsigned int a1, const void *a2, uint64_t a3, UInt8 *a4, unsigned int a5, uint64_t a6, vm_offset_t *a7, _DWORD *a8)
{
  v15 = a5;
  TypeID = CFDataGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, v15, TypeID);
  if (v17)
  {
    v18 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = IOMIGMachPortCacheCopy(a1);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_26;
  }

  v21 = CFGetTypeID(v19);
  v22 = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
    v22 = __kIOHIDEventSystemClientTypeID;
  }

  if (v21 != v22)
  {
LABEL_26:
    _iohideventsystem_copy_event_from_virtual_service_cold_2();
    if (!v18)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(v18);
    goto LABEL_21;
  }

  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(v20[13], a2);
  if (Value)
  {
    v24 = Value;
    CFRetain(Value);
    os_unfair_recursive_lock_unlock();
    v25 = _IOHIDVirtualServiceClientCopyEvent(v24, a3, v18, a6);
    if (v25)
    {
      v26 = CFGetAllocator(v24);
      DataInternal = IOHIDEventCreateDataInternal(v26, v25);
    }

    else
    {
      DataInternal = 0;
    }

    *a8 = _IOHIDSerialize(DataInternal, a7);
    CFRelease(v24);
    if (v25)
    {
      CFRelease(v25);
    }

    if (DataInternal)
    {
      CFRelease(DataInternal);
    }

LABEL_19:
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  os_unfair_recursive_lock_unlock();
  v28 = _IOHIDLogCategory(0xDu);
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

  _iohideventsystem_output_event_to_virtual_service_cold_1();
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

CFStringRef IOPSGetProvidingPowerSourceType(CFTypeRef snapshot)
{
  v4 = 0;
  v1 = IOPSGetSupportedPowerSources(&v4, 0, 0);
  result = @"AC Power";
  if (!v1)
  {
    v3 = @"Battery Power";
    if (v4 != 2)
    {
      v3 = @"AC Power";
    }

    if (v4 == 3)
    {
      return @"UPS Power";
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t _IOHIDVirtualServiceClientCopyEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[8];
  if (v4 && (v5 = *(v4 + 32)) != 0)
  {
    return v5(a1[9], a1[10], a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t IOPSGetSupportedPowerSources(_DWORD *a1, BOOL *a2, BOOL *a3)
{
  out_token = 0;
  v7 = 0;
  if (notify_register_check("com.apple.system.powersources.timeremaining", &out_token))
  {
    return 3758097084;
  }

  notify_get_state(out_token, &v7);
  notify_cancel(out_token);
  if (a2)
  {
    *a2 = (v7 & 0x400000) != 0;
  }

  if (a3)
  {
    *a3 = (v7 & 0x800000) != 0;
  }

  result = 0;
  if (a1)
  {
    *a1 = HIBYTE(v7);
  }

  return result;
}

CFRunLoopSourceRef doCreatePSRLS(const char *a1, uint64_t a2, uint64_t a3)
{
  *out_token = 0;
  shouldFreeInfo = 0;
  if (notify_register_mach_port(a1, out_token, 0, &out_token[1]))
  {
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040E9DA1FB1uLL);
  *v6 = a2;
  v6[1] = a3;
  *(v6 + 4) = out_token[1];
  context.version = 0;
  context.retain = 0;
  context.info = v6;
  context.release = IOPSRLSMachPortRelease;
  context.copyDescription = 0;
  v7 = 5;
  do
  {
    v8 = CFMachPortCreateWithPort(0, out_token[0], IOPSRLSMachPortCallback, &context, &shouldFreeInfo);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = shouldFreeInfo == 0;
    }
  }

  while (!v9 && v7-- > 1);
  v11 = v8;
  if (!v8)
  {
    return 0;
  }

  if (shouldFreeInfo)
  {
    RunLoopSource = 0;
  }

  else
  {
    v6[3] = v8;
    RunLoopSource = CFMachPortCreateRunLoopSource(0, v8, 0);
  }

  CFRelease(v11);
  return RunLoopSource;
}

CFTimeInterval IOPSGetTimeRemainingEstimate(void)
{
  out_token = 0;
  v2 = 0;
  v0 = -2.0;
  if (!notify_register_check("com.apple.system.powersources.timeremaining", &out_token))
  {
    notify_get_state(out_token, &v2);
    notify_cancel(out_token);
    if ((v2 & 0x90000) == 0x80000)
    {
      v0 = -1.0;
      if ((v2 & 0x40000) == 0)
      {
        return (60 * v2);
      }
    }
  }

  return v0;
}

uint64_t IOHIDEventCreateProximtyProbabilityEvent()
{
  OUTLINED_FUNCTION_20();
  result = IOHIDEventCreate(v3, 14, v4, v2 | 1u);
  if (result)
  {
    v6 = *(result + 96);
    *(v6 + 16) = v1;
    *(v6 + 18) = 1;
    *(v6 + 20) = v0;
  }

  return result;
}

uint64_t IOHIDEventCreateProximtyEvent()
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v1, 14, v2, v3);
  if (result)
  {
    v5 = *(result + 96);
    *(v5 + 16) = v0;
    *(v5 + 18) = 0;
  }

  return result;
}

uint64_t IOPSCopyChargeStatus(uint64_t *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  uint64 = 3758097085;
  PMQueue = getPMQueue();
  valuePtr = 1;
  if (!a1)
  {
    uint64 = 3758097090;
    goto LABEL_21;
  }

  v4 = PMQueue;
  if (!PMQueue)
  {
LABEL_10:
    uint64 = 0;
    goto LABEL_21;
  }

  values = 0;
  keys[0] = 0;
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
  if (!mach_service)
  {
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      IOPSGaugingMitigationGetState_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_10;
  }

  v6 = mach_service;
  xpc_connection_set_target_queue(mach_service, v4);
  xpc_connection_set_event_handler(v6, &__block_literal_global_84);
  xpc_connection_resume(v6);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    keys[0] = @"batteryChargingIconoGraphyAction";
    v9 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
    v10 = CFDictionaryCreate(v9, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    CFRelease(v10);
    CFRelease(values);
    values = 0;
    xpc_dictionary_set_value(v8, "batteryChargingIconoGraphy", v11);
    v12 = xpc_connection_send_message_with_reply_sync(v6, v8);
    if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
    {
      uint64 = xpc_dictionary_get_uint64(v12, "returnCode");
      if (!uint64)
      {
        xpc_dictionary_get_value(v12, "batteryChargingIconoGraphyState");
        *a1 = _CFXPCCreateCFObjectFromXPCObject();
      }
    }

    else
    {
      uint64 = 3758097084;
    }

    if (v11)
    {
      xpc_release(v11);
    }

    if (v12)
    {
      xpc_release(v12);
    }

    xpc_release(v8);
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      IOPSGaugingMitigationGetState_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  xpc_release(v6);
LABEL_21:
  v29 = *MEMORY[0x1E69E9840];
  return uint64;
}

uint64_t IOHIDServiceFilterFilterCopyEvent(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_10:
    result = 0;
    goto LABEL_12;
  }

  v4 = a1[2];
  if (!v4 || (v5 = *(*v4 + 48)) == 0)
  {
    v6 = a1[3];
    if (!v6 || (v5 = *(*v6 + 48)) == 0)
    {
      result = a2;
      goto LABEL_12;
    }
  }

  result = v5();
  if (!result)
  {
    v8 = _IOHIDEventDebugInfo(a2);
    v9 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      Type = IOHIDEventGetType(a2);
      SenderID = _IOHIDServiceGetSenderID(a1[6]);
      v13 = a1[11];
      v14[0] = 67109890;
      v14[1] = Type;
      v15 = 2048;
      v16 = SenderID;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_debug_impl(&dword_197195000, v9, OS_LOG_TYPE_DEBUG, "Copy Event filtered type:%d sender:0x%llx eventInfo:(%@) service filter:%@", v14, 0x26u);
    }

    CFRelease(v8);
    goto LABEL_10;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDServiceCopyEventForClient_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  result = IOHIDServiceFilterFilterCopyEvent(a2, *(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t getTimeoutForAssertionCategory(int a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (gAssertionCategoryPolicies)
  {
    valuePtr = a1;
    v21 = -1;
    v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v2 = convertCFNumberToCFStringRef(v1);
    v3 = assertions_log;
    if (assertions_log)
    {
      if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v23 = v2;
      v4 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v23 = v2;
      v4 = MEMORY[0x1E69E9C10];
    }

    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Checking getTimeout for string %@", buf, 0xCu);
LABEL_11:
    if (CFDictionaryContainsKey(gAssertionCategoryPolicies, v2))
    {
      Value = CFDictionaryGetValue(gAssertionCategoryPolicies, v2);
      v6 = CFDictionaryGetValue(Value, @"timeout");
      TypeID = CFNumberGetTypeID();
      if (v6 && CFGetTypeID(v6) == TypeID)
      {
        CFNumberGetValue(v6, kCFNumberIntType, &v21);
      }

      v8 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v6;
          v24 = 2112;
          v25 = v2;
          v9 = v8;
          goto LABEL_24;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v2;
        v9 = MEMORY[0x1E69E9C10];
LABEL_24:
        _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_DEFAULT, "Found timeout %@ for category string %@", buf, 0x16u);
        if (!v1)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        getTimeoutForAssertionCategory_cold_1();
        if (!v1)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      getTimeoutForAssertionCategory_cold_2();
      if (!v1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (!v1)
    {
LABEL_32:
      if (v2)
      {
        CFRelease(v2);
      }

      result = v21;
      goto LABEL_35;
    }

LABEL_31:
    CFRelease(v1);
    goto LABEL_32;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      getTimeoutForAssertionCategory_cold_3();
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      getTimeoutForAssertionCategory_cold_4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_35:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef convertCFNumberToCFStringRef(const __CFNumber *a1)
{
  v2 = CFLocaleCopyCurrent();
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberFormatterCreate(*MEMORY[0x1E695E480], v2, kCFNumberFormatterDecimalStyle);
  StringWithNumber = CFNumberFormatterCreateStringWithNumber(v3, v4, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return StringWithNumber;
}

void getTimeoutForAssertionCategory_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

uint32_t IOObjectGetKernelRetainCount(io_object_t object)
{
  if (io_object_get_retain_count(object))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t io_object_get_retain_count(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0E00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t IOPMGetLastWakeTime(double *a1, void *a2)
{
  v2 = 3758097090;
  v6 = 16;
  if (a1)
  {
    if (a2)
    {
      v7 = 0;
      v8 = 0;
      *a1 = 0.0;
      *a2 = 0;
      v2 = 3758097112;
      if (!sysctlbyname("kern.waketime", &v7, &v6, 0, 0))
      {
        if (v7)
        {
          v2 = 0;
          *a1 = v8 / 1000000.0 + v7 - *MEMORY[0x1E695E468];
          *a2 = 0;
        }
      }
    }
  }

  return v2;
}

uint64_t _copySleepPreventersList(const __CFString *a1, void *a2)
{
  v4 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v4)
  {
    return 3758097097;
  }

  v5 = v4;
  CFProperty = IORegistryEntryCreateCFProperty(v4, a1, *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v5);
  result = 0;
  *a2 = CFProperty;
  return result;
}

uint64_t IOPMCopySleepPreventersListWithID(int a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      v2 = @"IdleSleepPreventersWithID";
      return _copySleepPreventersList(v2, a2);
    }

    if (a1 == 1)
    {
      v2 = @"SystemSleepPreventersWithID";
      return _copySleepPreventersList(v2, a2);
    }
  }

  return 3758097090;
}

IOReturn IOPMSchedulePowerEvent(CFDateRef time_to_wake, CFStringRef my_id, CFStringRef type)
{
  v20 = 0;
  v21 = -536870212;
  cf = 0;
  if (inputsValid(time_to_wake, type))
  {
    if (CFEqual(type, @"MaintenanceImmediate"))
    {
      v6 = time_to_wake;
      v7 = 1;
LABEL_8:
      v8 = 0;
      v21 = doAMaintenanceWake(v6, v7);
      goto LABEL_9;
    }

    if (CFEqual(type, @"SleepServiceImmediate"))
    {
      v6 = time_to_wake;
      v7 = 2;
      goto LABEL_8;
    }

    if (CFEqual(type, @"WakeImmediate"))
    {
      v10 = @"wake";
LABEL_20:
      tellClockController(v10, time_to_wake);
      v8 = 0;
      v21 = 0;
      goto LABEL_9;
    }

    if (CFEqual(type, @"PowerOnImmediate"))
    {
      v10 = @"poweron";
      goto LABEL_20;
    }

    if (CFEqual(type, @"WakeRelativeToSleep") || CFEqual(type, @"PowerRelativeToShutdown"))
    {
      if (time_to_wake)
      {
        Current = CFAbsoluteTimeGetCurrent();
        valuePtr = MEMORY[0x19A8DA8D0](time_to_wake) - Current;
        if (valuePtr < 1)
        {
          return -536870162;
        }
      }

      else
      {
        valuePtr = 0;
      }

      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v12)
      {
        v13 = v12;
        v21 = _setRootDomainProperty(type, v12);
        CFRelease(v13);
      }

LABEL_29:
      v8 = 0;
      goto LABEL_9;
    }

    if (_pm_connect(&v20))
    {
      v8 = 0;
      v21 = -536870199;
      goto LABEL_9;
    }

    v21 = _IOPMCreatePowerOnDictionary(time_to_wake, my_id, type, &cf);
    if (v21)
    {
      goto LABEL_29;
    }

    Data = CFPropertyListCreateData(0, cf, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v8 = Data;
    if (Data)
    {
      v15 = v20;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(v8);
      if (io_pm_schedule_power_event(v15, BytePtr, Length, 1, &v21))
      {
        v21 = -536870199;
      }

      notify_post("com.apple.system.IOPMSchedulePowerEventNotification");
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = -536870206;
LABEL_9:
  if (v20)
  {
    _pm_disconnect();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v21;
}

void tellClockController(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  valuePtr = 0;
  Mutable = CFDataCreateMutable(0, 12);
  CFDataSetLength(Mutable, 12);
  BytePtr = CFDataGetBytePtr(Mutable);
  *BytePtr = 0;
  *(BytePtr + 2) = 0;
  if (a2)
  {
    v6 = BytePtr;
    v7 = MEMORY[0x19A8DA8D0](a2);
    v8 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
    GregorianDate = CFAbsoluteTimeGetGregorianDate(v7, v8);
    CFRelease(v8);
    v10 = llround(GregorianDate.second);
    if (v10 == 60)
    {
      v10 = 59;
    }

    v6[8] = v10;
    v6[7] = GregorianDate.minute;
    v6[6] = GregorianDate.hour;
    v6[5] = GregorianDate.day;
    v6[4] = GregorianDate.month;
    *v6 = GregorianDate.year;
  }

  if (CFEqual(a1, @"wake"))
  {
    v11 = @"WakeByCalendarDate";
  }

  else
  {
    v11 = @"PowerByCalendarDate";
  }

  if (_setRootDomainProperty(v11, Mutable))
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    valuePtr = 0;
LABEL_15:
    v12 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (v12)
    {
      if (CFEqual(a1, @"wake"))
      {
        v14 = @"wake";
      }

      else
      {
        v14 = @"poweron";
      }

      _setRootDomainProperty(v14, v12);
    }

    goto LABEL_20;
  }

  Current = CFAbsoluteTimeGetCurrent();
  valuePtr = llround(MEMORY[0x19A8DA8D0](a2) - Current);
  if ((valuePtr & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v12 = 0;
LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

IOReturn IOAllowPowerChange(io_connect_t kernelPort, intptr_t notificationID)
{
  input = notificationID;
  if (IOConnectCallScalarMethod(kernelPort, 3u, &input, 1u, 0, 0))
  {
    return -536870212;
  }

  else
  {
    return 0;
  }
}

uint64_t _setRootDomainProperty(const __CFString *a1, const void *a2)
{
  v4 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v4)
  {
    return 3758097084;
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperty(v4, a1, a2);
  IOObjectRelease(v5);
  return v6;
}

uint64_t _copyPMServerObject(unsigned int a1, unsigned int a2, const __CFData *a3, CFPropertyListRef *a4)
{
  v16 = 0;
  memset(length, 0, sizeof(length));
  *a4 = 0;
  v17 = pm_connect_init(&v16);
  if (v17)
  {
    return 3758097136;
  }

  if (a3 && (Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0), (a3 = Data) != 0))
  {
    BytePtr = CFDataGetBytePtr(Data);
    v11 = CFDataGetLength(a3);
  }

  else
  {
    BytePtr = 0;
    v11 = 0;
  }

  v12 = io_pm_assertion_copy_details(v16, a2, a1, BytePtr, v11, &length[1], length, &v17);
  if (!(v12 | v17))
  {
    v13 = CFDataCreate(0, *&length[1], length[0]);
    if (v13)
    {
      v14 = v13;
      *a4 = CFPropertyListCreateWithData(0, v13, 0, 0, 0);
      CFRelease(v14);
    }

    if (*&length[1] && length[0])
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], *&length[1], length[0]);
    }
  }

  if (a3)
  {
    CFRelease(a3);
  }

  result = v16;
  if (v16)
  {
    _pm_disconnect();
    return 0;
  }

  return result;
}

uint64_t IOPMCopyDeviceRestartPreventers(__CFArray **a1)
{
  v2 = 0;
  Mutable = 0;
  v4 = 1;
  v5 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v6 = v4;
    theArray = 0;
    result = _copyPMServerObject(6u, 0, off_1E74A9908[v2], &theArray);
    if (result)
    {
      break;
    }

    v8 = theArray;
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        for (i = 0; i < CFArrayGetCount(v8); ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          Value = CFDictionaryGetValue(ValueAtIndex, @"AllowsDeviceRestart");
          if (!Value || !CFBooleanGetValue(Value))
          {
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, v5);
              if (!Mutable)
              {
                CFRelease(v8);
                goto LABEL_16;
              }
            }

            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }

      CFRelease(v8);
    }

    v4 = 0;
    v2 = 1;
    if ((v6 & 1) == 0)
    {
LABEL_16:
      result = 0;
      break;
    }
  }

  *a1 = Mutable;
  return result;
}

uint64_t io_pm_assertion_copy_details(mach_port_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  msg.msgh_id = 0;
  v23 = 0;
  v24 = 0u;
  *&msg.msgh_size = 0u;
  v19 = 1;
  v20 = a4;
  v21 = 16777472;
  v22 = a5;
  v23 = *MEMORY[0x1E69E99E0];
  *&v24 = __PAIR64__(a3, a2);
  DWORD2(v24) = a5;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x11D3200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x40u, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 73110)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (msg.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_25;
        }

        v15 = 4294966996;
        if (v19 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a6 = v20;
            *a7 = v16;
            *a8 = DWORD1(v24);
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

CFTypeRef IOPMSleepWakeCopyUUID()
{
  v0 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"SleepWakeUUID", *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v1);
  return CFProperty;
}

uint64_t IOPMCopySleepPreventersList(int a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      v2 = @"IdleSleepPreventers";
      return _copySleepPreventersList(v2, a2);
    }

    if (a1 == 1)
    {
      v2 = @"SystemSleepPreventers";
      return _copySleepPreventersList(v2, a2);
    }
  }

  return 3758097090;
}

CFTypeRef OSKextCopyUUIDForAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  valuePtr = a1;
  theDict = 0;
  OSKextLog(0, 69, "Reading kext UUID for Address\n.", a4, a5, a6, a7, a8, v36);
  v8 = __OSKextCreateKextRequest(@"Get Kext UUID by Address", 0, &theDict);
  if (!v8)
  {
    OSKextLog(0, 65, "Failed to create kext request.", v9, v10, v11, v12, v13, v37);
    return 0;
  }

  v14 = v8;
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
    OSKextLog(0, 65, "Failed to create lookup address object.", v16, v17, v18, v19, v20, v37);
    CFRelease(v14);
    return 0;
  }

  v21 = v15;
  CFDictionarySetValue(theDict, @"Kext Request Lookup Address", v15);
  v22 = __OSKextSendKextRequest(0, v14, &cf, 0, 0);
  if (v22)
  {
    v28 = mach_error_string(v22);
    v34 = "(unknown)";
    if (v28)
    {
      LOBYTE(v34) = v28;
    }

    OSKextLog(0, 65, "Failed to lookup uuid with address from kernel - %s.", v29, v30, v31, v32, v33, v34);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
  }

  else if (!cf)
  {
    OSKextLog(0, 65, "Kernel request call returned no data.", v23, v24, v25, v26, v27, v37);
  }

  CFRelease(v14);
  CFRelease(v21);
  return cf;
}

__CFDictionary *__OSKextCreateKextRequest(const void *a1, unint64_t a2, __CFDictionary **a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Kext Request Predicate", a1);
    if (a2 | a3)
    {
      v14 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v14)
      {
        v20 = v14;
        CFDictionarySetValue(v13, @"Kext Request Arguments", v14);
        if (a3)
        {
          *a3 = v20;
        }

        if (a2)
        {
          CFDictionarySetValue(v20, @"CFBundleIdentifier", a2);
        }

        CFRelease(v20);
      }

      else
      {
        OSKextLog(0, 17, "Memory allocation failure.", v15, v16, v17, v18, v19, v22);
        CFRelease(v13);
        return 0;
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v8, v9, v10, v11, v12, v22);
  }

  return v13;
}

uint64_t __OSKextSendKextRequest(uint64_t a1, const void *a2, void *a3, vm_offset_t *a4, mach_msg_type_number_t *a5)
{
  v47 = -603979775;
  response_data = 0;
  response_dataCnt = 0;
  log_data = 0;
  log_dataCnt = 0;
  cf = 0;
  v10 = MEMORY[0x19A8DBAE0]();
  v11 = IOCFSerialize(a2, 0);
  if (v11)
  {
    v17 = v11;
    if (__sOSKextLogOutputFunction)
    {
      v18 = __sKernelLogFilter;
    }

    else
    {
      v18 = 0;
    }

    BytePtr = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v17);
    v21 = kext_request(v10, v18, BytePtr, Length, &response_data, &response_dataCnt, &log_data, &log_dataCnt, &v47);
    v22 = __OSKextProcessKextRequestResults(a1, v21, v47, log_data, log_dataCnt);
    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = 1;
      if (response_data)
      {
        v26 = response_dataCnt;
        if (response_dataCnt)
        {
          if (a3)
          {
            v27 = IOCFUnserialize(response_data, *MEMORY[0x1E695E480], 0, &cf);
            *a3 = v27;
            if (v27)
            {
              v22 = 0;
            }

            else
            {
              if (cf)
              {
                UTF8CStringForCFString = createUTF8CStringForCFString(cf);
                v39 = UTF8CStringForCFString;
                v40 = "unknown error";
                if (UTF8CStringForCFString)
                {
                  LOBYTE(v40) = UTF8CStringForCFString;
                }

                OSKextLog(a1, 65, "Can't unserialize kext request response: %s", v34, v35, v36, v37, v38, v40);
                if (v39)
                {
                  free(v39);
                }
              }

              else
              {
                OSKextLog(a1, 65, "Can't unserialize kext request response: %s", v28, v29, v30, v31, v32, "unknown error");
              }

              if (cf)
              {
                CFRelease(cf);
              }

              v22 = 3691020296;
              cf = 0;
            }
          }

          else
          {
            v22 = 0;
            if (a4 && a5)
            {
              v22 = 0;
              v23 = 0;
              *a4 = response_data;
              *a5 = v26;
            }
          }
        }
      }
    }

    CFRelease(v17);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v22 = 3691020296;
    OSKextLog(a1, 65, "Failed to serialize kext request.", v12, v13, v14, v15, v16, op_result);
    v23 = 1;
  }

  v24 = MEMORY[0x1E69E9A60];
  if (v23 && response_data && response_dataCnt)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], response_data, response_dataCnt);
  }

  if (log_data)
  {
    mach_vm_deallocate(*v24, log_data, log_dataCnt);
  }

  if (v10)
  {
    mach_port_deallocate(*v24, v10);
  }

  return v22;
}

uint64_t DoIdrefScan(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    DoIdrefScan_cold_1();
  }

  recordObjectInIDRefDictionary(a1, a2);
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(a1);
    if (Count)
    {
      v6 = Count;
      v7 = 8 * Count;
      v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v9 = malloc_type_malloc(v7, 0x80040B8603338uLL);
      if (!v8)
      {
        return 0;
      }

      v10 = v9;
      if (!v9)
      {
        return 0;
      }

      CFDictionaryGetKeysAndValues(a1, v8, v9);
      if (v6 >= 1)
      {
        for (i = 0; i < v6; ++i)
        {
          v12 = DoIdrefScan(v10[i], a2);
          if ((v12 & 1) == 0)
          {
            break;
          }
        }

        free(v8);
        free(v10);
        return (v12 & 1) != 0;
      }

      free(v8);
LABEL_30:
      free(v10);
      return 1;
    }

    return 1;
  }

  if (v4 != CFArrayGetTypeID())
  {
    if (v4 != CFSetGetTypeID())
    {
      return 1;
    }

    v18 = CFSetGetCount(a1);
    if (!v18)
    {
      return 1;
    }

    v19 = v18;
    v20 = malloc_type_malloc(8 * v18, 0x80040B8603338uLL);
    if (!v20)
    {
      return 0;
    }

    v10 = v20;
    CFSetGetValues(a1, v20);
    if (v19 >= 1)
    {
      v21 = 0;
      do
      {
        v22 = DoIdrefScan(v10[v21++], a2);
        if (v22)
        {
          v23 = v21 < v19;
        }

        else
        {
          v23 = 0;
        }
      }

      while (v23);
      v24 = v22;
      free(v10);
      return v24 != 0;
    }

    goto LABEL_30;
  }

  v13 = CFArrayGetCount(a1);
  if (v13 < 1)
  {
    return 1;
  }

  v14 = v13;
  for (j = 0; j != v14; ++j)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
    result = DoIdrefScan(ValueAtIndex, a2);
    if (!result)
    {
      break;
    }
  }

  return result;
}

void recordObjectInIDRefDictionary(const void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = idRefDictionaryForObject(a1, a2);
      if (v3)
      {
        v4 = v3;
        if (CFDictionaryGetValue(v3, a1))
        {
          v5 = *MEMORY[0x1E695E4D0];

          CFDictionarySetValue(v4, a1, v5);
        }

        else
        {
          v6 = *MEMORY[0x1E695E4C0];

          CFDictionaryAddValue(v4, a1, v6);
        }
      }
    }
  }
}

uint64_t idRefDictionaryForObject(const void *a1, uint64_t a2)
{
  CFNullGetTypeID();
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    v5 = 40;
    return *(a2 + v5);
  }

  if (v4 == CFStringGetTypeID())
  {
    v5 = 16;
    return *(a2 + v5);
  }

  if (v4 == CFArrayGetTypeID())
  {
    v5 = 48;
    return *(a2 + v5);
  }

  if (v4 == CFNumberGetTypeID())
  {
    v5 = 24;
    return *(a2 + v5);
  }

  if (v4 == CFDataGetTypeID())
  {
    v5 = 32;
    return *(a2 + v5);
  }

  if (v4 == CFSetGetTypeID())
  {
    v5 = 56;
    return *(a2 + v5);
  }

  return 0;
}

uint64_t DoCFSerialize(const __CFString *a1, CFMutableDataRef *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    DoCFSerialize_cold_1();
  }

  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    if (!previouslySerialized(v3, a2))
    {
      addStartTag(v3, 0, a2);
      Count = CFDictionaryGetCount(v3);
      if (!Count)
      {
        v9 = 1;
        goto LABEL_68;
      }

      v6 = Count;
      result = malloc_type_malloc(16 * Count, 0x80040B8603338uLL);
      if (result)
      {
        v8 = result;
        v40 = v3;
        v43 = (result + 8 * v6);
        CFDictionaryGetKeysAndValues(v3, v43, result);
        if (v6 >= 1)
        {
          v9 = 0;
          v10 = 0;
          alloc = *MEMORY[0x1E695E480];
          v42 = v8;
          while (1)
          {
            v11 = v43[v10];
            CFDataAppendBytes(*a2, "<key>", 5);
            ExternalRepresentation = CFStringCreateExternalRepresentation(alloc, v11, 0x8000100u, 0x3Fu);
            v13 = ExternalRepresentation;
            if (ExternalRepresentation)
            {
              Length = CFDataGetLength(ExternalRepresentation);
              BytePtr = CFDataGetBytePtr(v13);
            }

            else
            {
              Length = 0;
              BytePtr = "";
            }

            if (!strncmp(BytePtr, "AppleLSIFusionFC", Length))
            {
              v19 = 1;
            }

            else
            {
              v16 = 0;
              do
              {
                v17 = v16;
                if (v16 == 6)
                {
                  break;
                }

                v18 = strncmp(BytePtr, off_1E74A7818[v16 + 1], Length);
                v16 = v17 + 1;
              }

              while (v18);
              v19 = v17 < 6;
            }

            if (Length >= 1)
            {
              do
              {
                v21 = *BytePtr++;
                v20 = v21;
                if (v21 == 38)
                {
                  v22 = *a2;
                  v23 = "&amp;";
                  v24 = 5;
                }

                else
                {
                  if (v20 == 62)
                  {
                    v22 = *a2;
                    v23 = "&gt;";
                  }

                  else
                  {
                    if (v20 != 60)
                    {
                      bytes[0] = v20;
                      v22 = *a2;
                      v23 = bytes;
                      v24 = 1;
                      goto LABEL_26;
                    }

                    v22 = *a2;
                    v23 = "&lt;";
                  }

                  v24 = 4;
                }

LABEL_26:
                CFDataAppendBytes(v22, v23, v24);
                --Length;
              }

              while (Length);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            CFDataAppendBytes(*a2, "</key>", 6);
            v8 = v42;
            if (v19)
            {
              CFDataAppendBytes(*a2, "<!-- 🤦 -->", 13);
            }

            if (!DoCFSerialize(*(v42 + v10), a2))
            {
              break;
            }

            v9 = ++v10 >= v6;
            if (v10 == v6)
            {
              goto LABEL_67;
            }
          }

          free(v42);
          goto LABEL_69;
        }

        v9 = 1;
LABEL_67:
        free(v8);
        v3 = v40;
LABEL_68:
        addEndTag(v3, a2);
LABEL_69:
        result = v9;
      }

LABEL_84:
      v39 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_83:
    result = 1;
    goto LABEL_84;
  }

  if (v4 == CFStringGetTypeID())
  {
    DoCFSerializeString(v3, a2);
    goto LABEL_83;
  }

  if (v4 == CFArrayGetTypeID())
  {
    if (previouslySerialized(v3, a2))
    {
      goto LABEL_83;
    }

    addStartTag(v3, 0, a2);
    v25 = CFArrayGetCount(v3);
    if (v25 >= 1)
    {
      v26 = v25;
      for (i = 0; i < v26; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        result = DoCFSerialize(ValueAtIndex, a2);
        if (!result)
        {
          break;
        }
      }

      if (!result)
      {
        goto LABEL_84;
      }
    }

LABEL_82:
    addEndTag(v3, a2);
    goto LABEL_83;
  }

  if (v4 == CFNumberGetTypeID())
  {
    if (previouslySerialized(v3, a2))
    {
      goto LABEL_83;
    }

    valuePtr = 0;
    result = CFNumberGetValue(v3, kCFNumberLongLongType, &valuePtr);
    if (!result)
    {
      goto LABEL_84;
    }

    v29 = CFNumberGetType(v3) - 1;
    if (v29 <= 8 && ((0x1C7u >> v29) & 1) != 0)
    {
      snprintf(bytes, 0x20uLL, "size=%d", dword_19723D390[v29]);
      addStartTag(v3, bytes, a2);
      snprintf(bytes, 0x20uLL, "0x%lx");
    }

    else
    {
      snprintf(bytes, 0x20uLL, "size=%d", 64);
      addStartTag(v3, bytes, a2);
      snprintf(bytes, 0x20uLL, "0x%qx");
    }

    v36 = strlen(bytes);
    v37 = *a2;
    goto LABEL_81;
  }

  if (v4 == CFDataGetTypeID())
  {
    if (previouslySerialized(v3, a2))
    {
      goto LABEL_83;
    }

    v30 = CFDataGetLength(v3);
    v31 = CFDataGetBytePtr(v3);
    addStartTag(v3, 0, a2);
    if (v30 < 1)
    {
      goto LABEL_82;
    }

    v32 = 0;
    v33 = v30;
    do
    {
      if (v32 % 3 == 2)
      {
        bytes[0] = __CFPLDataEncodeTable[((*v31 | (*(v31 - 1) << 8)) >> 6) & 0x3F];
        CFDataAppendBytes(*a2, bytes, 1);
        v34 = *v31 & 0x3F;
      }

      else if (v32 % 3 == 1)
      {
        v34 = ((*v31 | (*(v31 - 1) << 8)) >> 4) & 0x3F;
      }

      else
      {
        v34 = *v31 >> 2;
      }

      bytes[0] = __CFPLDataEncodeTable[v34];
      CFDataAppendBytes(*a2, bytes, 1);
      ++v32;
      ++v31;
      --v33;
    }

    while (v33);
    if (v30 % 3uLL == 2)
    {
      bytes[0] = __CFPLDataEncodeTable[4 * (*(v31 - 1) & 0xF)];
      CFDataAppendBytes(*a2, bytes, 1);
      bytes[0] = 61;
    }

    else
    {
      if (v30 % 3uLL != 1)
      {
        goto LABEL_82;
      }

      bytes[0] = __CFPLDataEncodeTable[16 * (*(v31 - 1) & 3)];
      CFDataAppendBytes(*a2, bytes, 1);
      bytes[0] = 61;
      CFDataAppendBytes(*a2, bytes, 1);
      bytes[0] = 61;
    }

    v37 = *a2;
    v36 = 1;
LABEL_81:
    CFDataAppendBytes(v37, bytes, v36);
    goto LABEL_82;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    DoCFSerializeBoolean(v3, a2);
    goto LABEL_83;
  }

  if (v4 != CFSetGetTypeID())
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<string>typeID 0x%x not serializable</string>", v4);
    if (!result)
    {
      goto LABEL_84;
    }

    v38 = result;
    DoCFSerializeString(result, a2);
    CFRelease(v38);
    goto LABEL_83;
  }

  v35 = *MEMORY[0x1E69E9840];

  return DoCFSerializeSet(v3, a2);
}

uint64_t previouslySerialized(const void *a1, CFMutableDataRef *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CFNullGetTypeID();
  result = 0;
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      result = idRefDictionaryForObject(a1, a2);
      if (result)
      {
        result = CFDictionaryGetValue(result, a1);
        if (result)
        {
          v5 = result;
          v6 = CFGetTypeID(result);
          if (v6 == CFBooleanGetTypeID() || v6 != CFNumberGetTypeID())
          {
            result = 0;
          }

          else
          {
            result = CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
            if (result)
            {
              TagString = getTagString(a1);
              snprintf(__str, 0x40uLL, "<%s IDREF=%d/>", TagString, valuePtr);
              v8 = strlen(__str);
              CFDataAppendBytes(*a2, __str, v8);
              result = 1;
            }
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void addStartTag(const void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = idRefDictionaryForObject(a1, a3);
  v7 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a1);
  }

  if (Value == *MEMORY[0x1E695E4D0])
  {
    v8 = *(a3 + 8);
    *(a3 + 8) = v8 + 1;
    valuePtr = v8;
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (!v9)
    {
      addStartTag_cold_1();
    }

    v10 = v9;
    CFDictionarySetValue(v7, a1, v9);
    CFRelease(v10);
    getTagString(a1);
    if (a2)
    {
      snprintf(__str, 0x80uLL, "<%s ID=%d %s>");
    }

    else
    {
      snprintf(__str, 0x80uLL, "<%s ID=%d>");
    }
  }

  else
  {
    getTagString(a1);
    if (a2)
    {
      snprintf(__str, 0x80uLL, "<%s %s>");
    }

    else
    {
      snprintf(__str, 0x80uLL, "<%s>");
    }
  }

  v11 = strlen(__str);
  CFDataAppendBytes(*a3, __str, v11);
  v12 = *MEMORY[0x1E69E9840];
}

const char *getTagString(const void *a1)
{
  if (!a1)
  {
    getTagString_cold_1();
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return "string";
  }

  if (v1 == CFNumberGetTypeID())
  {
    return "integer";
  }

  if (v1 == CFDataGetTypeID())
  {
    return "data";
  }

  if (v1 == CFDictionaryGetTypeID())
  {
    return "dict";
  }

  if (v1 == CFArrayGetTypeID())
  {
    return "array";
  }

  if (v1 == CFSetGetTypeID())
  {
    return "set";
  }

  return "internal error";
}

void DoCFSerializeString(const __CFString *a1, CFMutableDataRef *a2)
{
  if (!previouslySerialized(a1, a2))
  {
    addStartTag(a1, 0, a2);
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a1, 0x8000100u, 0x3Fu);
    if (ExternalRepresentation)
    {
      v5 = ExternalRepresentation;
      Length = CFDataGetLength(ExternalRepresentation);
      BytePtr = CFDataGetBytePtr(v5);
      if (Length >= 1)
      {
        v8 = BytePtr;
        do
        {
          v10 = *v8++;
          v9 = v10;
          if (v10 == 38)
          {
            v11 = *a2;
            p_bytes = "&amp;";
            v13 = 5;
          }

          else
          {
            if (v9 == 62)
            {
              v11 = *a2;
              p_bytes = "&gt;";
            }

            else
            {
              if (v9 != 60)
              {
                bytes = v9;
                v11 = *a2;
                p_bytes = &bytes;
                v13 = 1;
                goto LABEL_13;
              }

              v11 = *a2;
              p_bytes = "&lt;";
            }

            v13 = 4;
          }

LABEL_13:
          CFDataAppendBytes(v11, p_bytes, v13);
          --Length;
        }

        while (Length);
      }

      CFRelease(v5);
    }

    addEndTag(a1, a2);
  }
}

void addEndTag(const void *a1, CFMutableDataRef *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  TagString = getTagString(a1);
  snprintf(__str, 0x80uLL, "</%s>", TagString);
  v4 = strlen(__str);
  CFDataAppendBytes(*a2, __str, v4);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __OSKextProcessKextRequestResults(uint64_t a1, uint64_t error_value, uint64_t a3, char *buffer, int a5)
{
  errorString = 0;
  if (error_value)
  {
    v6 = error_value;
    v7 = mach_error_string(error_value);
    v13 = "(unknown)";
    if (v7)
    {
      LOBYTE(v13) = v7;
    }

    OSKextLog(a1, 65, "Error communicating with kernel - %s.", v8, v9, v10, v11, v12, v13);
    v14 = 0;
    goto LABEL_16;
  }

  v16 = 0;
  v14 = 0;
  if (buffer && a5)
  {
    v16 = IOCFUnserialize(buffer, *MEMORY[0x1E695E480], 0, &errorString);
    if (!v16)
    {
      UTF8CStringForCFString = createUTF8CStringForCFString(errorString);
      v14 = UTF8CStringForCFString;
      v31 = "(unknown)";
      if (UTF8CStringForCFString)
      {
        LOBYTE(v31) = UTF8CStringForCFString;
      }

      OSKextLog(a1, 65, "Failed to parse kernel log messages: %s.", v26, v27, v28, v29, v30, v31);
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    __OSKextLogKernelMessages(a1, v16);
    v14 = 0;
  }

  if (a3)
  {
LABEL_10:
    v17 = mach_error_string(a3);
    v23 = "(unknown)";
    if (v17)
    {
      LOBYTE(v23) = v17;
    }

    OSKextLog(a1, 71, "Kernel error handling kext request - %s.", v18, v19, v20, v21, v22, v23);
  }

LABEL_13:
  if (v16)
  {
    CFRelease(v16);
  }

  v6 = a3;
LABEL_16:
  if (errorString)
  {
    CFRelease(errorString);
  }

  if (v14)
  {
    free(v14);
  }

  return v6;
}

void __OSKextLogKernelMessages(int a1, CFTypeRef cf)
{
  if (__sOSKextLogOutputFunction)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID() && CFArrayGetCount(cf) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
      v6 = CFArrayGetValueAtIndex(cf, 1);
      v7 = CFGetTypeID(ValueAtIndex);
      if (v7 == CFArrayGetTypeID())
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(ValueAtIndex);
          if (Count == CFArrayGetCount(v6))
          {
            v10 = CFArrayGetCount(v6);
            if (v10 >= 1)
            {
              v11 = v10;
              for (i = 0; i != v11; ++i)
              {
                v13 = CFArrayGetValueAtIndex(ValueAtIndex, i);
                valuePtr = 0;
                v14 = CFArrayGetValueAtIndex(v6, i);
                if (CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr))
                {
                  UTF8CStringForCFString = createUTF8CStringForCFString(v14);
                  if (UTF8CStringForCFString)
                  {
                    v16 = UTF8CStringForCFString;
                    __sOSKextLogOutputFunction(a1, valuePtr, "(kernel) %s", UTF8CStringForCFString);
                    free(v16);
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

void *getCFEncodedData(uint64_t *a1, _DWORD *a2)
{
  result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  v5 = *a1;
  v6 = *(*a1 + *(a1 + 2));
  *a2 = 0;
  if (v6 == 60)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v6 & 0x7F;
    switch(v12)
    {
      case 0xA:
        v11 = 0;
        ++*(a1 + 3);
        break;
      case 0x3D:
        ++v11;
        break;
      case 0:
        goto LABEL_22;
      default:
        v11 = 0;
        break;
    }

    v13 = __CFPLDataDecodeTable[v12];
    if ((v13 & 0x80000000) == 0)
    {
      ++v9;
      v10 = v13 + (v10 << 6);
      if ((v9 & 3) == 0)
      {
        v15 = v8 + 2;
        if (v7 <= v15)
        {
          v16 = v7 + 4096;
          result = malloc_type_realloc(result, v7 + 4096, 0x100004077774924uLL);
          v7 = v16;
        }

        *(result + v8) = BYTE2(v10);
        if (v11 > 1)
        {
          ++v8;
        }

        else
        {
          *(result + v8 + 1) = BYTE1(v10);
          if (v11 == 1)
          {
            v8 += 2;
          }

          else
          {
            v8 += 3;
            *(result + v15) = v10;
          }
        }
      }

      v5 = *a1;
    }

    v14 = *(a1 + 2) + 1;
    *(a1 + 2) = v14;
    v6 = *(v5 + v14);
  }

  while (v6 != 60);
  *a2 = v8;
  if (!v8)
  {
LABEL_22:
    free(result);
    return 0;
  }

  return result;
}

CFTypeRef OSKextCopyLoadedKextInfoByUUID(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  cf = 0;
  OSKextLog(0, 69, "Reading loaded kext info from kernel.", a4, a5, a6, a7, a8, v40);
  v10 = __OSKextCreateKextRequest(@"Get Loaded Kext Info By UUID", a1, &theDict);
  if (!v10)
  {
    OSKextLog(0, 65, "Failed to create kext request.", v11, v12, v13, v14, v15, v41);
    return cf;
  }

  v16 = v10;
  if (a2 && CFArrayGetCount(a2))
  {
    CFDictionarySetValue(theDict, @"Kext Request Info Keys", a2);
  }

  v17 = __OSKextSendKextRequest(0, v16, &cf, 0, 0);
  if (v17)
  {
    v23 = mach_error_string(v17);
    v29 = "(unknown)";
    if (v23)
    {
      LOBYTE(v29) = v23;
    }

    OSKextLog(0, 65, "Failed to read loaded kext info from kernel - %s.", v24, v25, v26, v27, v28, v29);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    goto LABEL_25;
  }

  if (!cf)
  {
    v38 = "Kernel request call returned no data.";
LABEL_24:
    OSKextLog(0, 65, v38, v18, v19, v20, v21, v22, v41);
LABEL_25:
    CFRelease(v16);
    return cf;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(cf))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    v38 = "Loaded kext info from kernel is wrong type.";
    goto LABEL_24;
  }

  if ((~__sUserLogFilter & 7) != 0 || (__sUserLogFilter & 0x60) == 0)
  {
    goto LABEL_25;
  }

  CFStringForPlist_new = createCFStringForPlist_new(cf, 1);
  UTF8CStringForCFString = createUTF8CStringForCFString(CFStringForPlist_new);
  OSKextLog(0, 103, "Loaded kext info:\n%s", v33, v34, v35, v36, v37, UTF8CStringForCFString);
  CFRelease(v16);
  if (CFStringForPlist_new)
  {
    CFRelease(CFStringForPlist_new);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  return cf;
}

uint64_t IOPMAssertionDeclareSystemActivity(const void *a1, int *a2, int *a3)
{
  v3 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"AssertName", a1);
        v3 = IOPMAssertionDeclareSystemActivityWithProperties(Mutable, a2, a3);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }

  return v3;
}

uint64_t IOPMConnectionGetSystemCapabilities()
{
  v0 = 31;
  v3 = 31;
  v4 = 0;
  v2 = _pm_connect(&v4);
  if (v4)
  {
    io_pm_get_capability_bits(v4, &v3, &v2);
    return v3;
  }

  return v0;
}

uint64_t io_pm_get_capability_bits(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 73130)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                v12 = DWORD1(v14);
                *a2 = v14;
                *a3 = v12;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
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
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t io_registry_entry_get_path(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB0A00000000;
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

kern_return_t IOKitWaitQuietWithOptions(mach_port_t mainPort, mach_timespec_t *waitTime, IOOptionBits options)
{
  v6 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v6 = 0;
    }

    else
    {
      v6 = mainPorta;
    }
  }

  v7 = io_registry_entry_from_path(v6, "IOService:/");
  if (!v7)
  {
    v8 = &unk_19723D780;
    if (waitTime)
    {
      v8 = waitTime;
    }

    v7 = io_service_wait_quiet_with_options(0, *v8, options);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], 0);
  }

  if (v6 && v6 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  }

  return v7;
}

uint64_t io_service_wait_quiet_with_options(unsigned int a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  v10 = a3;
  *&v7.msgh_bits = 0x2C00001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB4A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
    }

    else
    {
      v4 = 4294966995;
      mach_msg_destroy(&v7);
    }
  }

  else
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  return v4;
}

uint64_t IOPMCopyCurrentScheduledWake(uint64_t a1, uint64_t a2)
{
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  if (mach_service)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      copyBatteryData_cold_1();
    }
  }

  PMQueue = getPMQueue();
  xpc_connection_set_target_queue(mach_service, PMQueue);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_155);
  xpc_connection_resume(mach_service);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_uint64(v7, "wakeData", 0);
    v9 = getPMQueue();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __IOPMCopyCurrentScheduledWake_block_invoke_157;
    handler[3] = &unk_1E74A7FC0;
    handler[4] = a2;
    handler[5] = a1;
    handler[6] = mach_service;
    xpc_connection_send_message_with_reply(mach_service, v8, v9, handler);
    xpc_release(v8);
    if (!mach_service)
    {
      return v5;
    }

    goto LABEL_10;
  }

  v5 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    copyBatteryData_cold_2();
    if (!mach_service)
    {
      return v5;
    }

    goto LABEL_10;
  }

  if (mach_service)
  {
LABEL_10:
    xpc_release(mach_service);
  }

  return v5;
}

void __IOPMCopyCurrentScheduledWake_block_invoke_157(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x19A8DC620](a2) == MEMORY[0x1E69E9E80])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __IOPMCopyCurrentScheduledWake_block_invoke_2;
    v5[3] = &unk_1E74A7F98;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(v4, v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPMCopyCurrentScheduledWake_block_invoke_157_cold_1();
  }

  xpc_connection_cancel(*(a1 + 48));
}

uint64_t _IOHIDValueCreateWithElementValuePtr(uint64_t a1, const void *a2, uint64_t a3)
{
  Private = 0;
  if (a2 && a3)
  {
    Length = _IOHIDElementGetLength(a2);
    v8 = (*(a3 + 4) >> 8) - 20;
    if (Length < v8)
    {
      LODWORD(v8) = _IOHIDElementGetLength(a2);
    }

    Private = __IOHIDValueCreatePrivate(a1, v8);
    if (Private)
    {
      *(Private + 16) = CFRetain(a2);
      *(Private + 32) = *(a3 + 8);
      *(Private + 44) = *(a3 + 4);
      *(Private + 40) = v8;
      if (*(a3 + 4))
      {
        v10 = *(a3 + 20);
        v9 = (Private + 56);
      }

      else
      {
        v9 = (Private + 56);
        v10 = (a3 + 20);
      }

      memmove(v9, v10, v8);
    }
  }

  return Private;
}

const UInt8 *__IOHIDDeviceInputReportApplier(const UInt8 *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      result = CFDataGetBytePtr(result);
      if (result)
      {
        v3 = result;
        v4 = *(result + 1);
        if (v4)
        {
          result = v4(*result, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 28), *(a2 + 32), *(a2 + 40));
        }

        v5 = *(v3 + 2);
        if (v5)
        {
          v6 = *v3;
          v7 = *(a2 + 8);
          v8 = *(a2 + 16);
          v9 = *(a2 + 24);
          v10 = *(a2 + 28);
          v11 = *(a2 + 32);
          v12 = *(a2 + 40);
          v13 = *(a2 + 48);

          return v5(v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }
    }
  }

  return result;
}

void __IOHIDValueRelease(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      CFRelease(v2);
    }
  }
}

uint64_t IOHIDValueGetTimeStamp(IOHIDValueRef value)
{
  if (!dynLinkrosetta_is_current_process_translated[0] || !dynLinkrosetta_is_current_process_translated[0]())
  {
    return *(value + 4);
  }

  result = *(value + 4);
  v3 = dynLinkrosetta_convert_to_rosetta_absolute_time[0];
  if (dynLinkrosetta_convert_to_rosetta_absolute_time[0])
  {

    return v3(result);
  }

  return result;
}

uint64_t __IOHIDValueCreatePrivate(uint64_t a1, int a2)
{
  v2 = a2 + 40;
  if (!__valueTypeID)
  {
    pthread_once(&__valueTypeInit, __IOHIDValueRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v2);
  }

  return v4;
}

uint64_t __IOHIDDeviceInputReportWithTimeStampCallback(CFSetRef *a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_unfair_recursive_lock_lock_with_options();
  if (CFSetGetCount(a1[38]))
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = a1;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    v21 = a8;
    CFRetain(a1);
    CFSetApplyFunction(a1[38], __IOHIDDeviceInputReportApplier, context);
    CFRelease(a1);
  }

  return os_unfair_recursive_lock_unlock();
}

unint64_t _IOHIDElementGetLength(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[13];
  if (v1[19] && *(a1 + 40))
  {
    v2 = v1[14];
  }

  return (v2 + 7) >> 3;
}

CFComparisonResult compare_assertion(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"TimeoutTimeStamp");
  v5 = CFDictionaryGetValue(a2, @"TimeoutTimeStamp");
  if (Value)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    CFDictionaryGetValue(a1, @"PolicyTimeoutTimeStamp");
    CFDictionaryGetValue(a2, @"PolicyTimeoutTimeStamp");
    return 0;
  }

  else
  {

    return CFNumberCompare(Value, v5, 0);
  }
}

IOReturn IOHIDUserDeviceHandleReportWithTimeStamp(IOHIDUserDeviceRef device, uint64_t timestamp, const uint8_t *report, CFIndex reportLength)
{
  if (dynLinkrosetta_is_current_process_translated_0 && dynLinkrosetta_is_current_process_translated_0() && dynLinkrosetta_convert_to_system_absolute_time_0[0])
  {
    timestamp = (dynLinkrosetta_convert_to_system_absolute_time_0[0])(timestamp);
  }

  input = timestamp;
  _IOHIDDebugTrace(8201, 0, timestamp, device, reportLength, 0);
  ++*(device + 72);
  v8 = IOConnectCallMethod(*(device + 7), 2u, &input, 1u, report, reportLength, 0, 0, 0, 0);
  if (v8)
  {
    v9 = _IOHIDLogCategory(5u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      IOHIDUserDeviceHandleReportWithTimeStamp_cold_1(device, v8, v9);
    }
  }

  return v8;
}

const __CFArray *IOHIDEventSetDoubleValueWithOptions(const __CFArray *result, int a2, uint64_t a3, double a4)
{
  v6 = HIWORD(a2);
  if (!result || a2 >= 0x10000)
  {
    result = IOHIDEventGetEventWithOptions(result, HIWORD(a2), a3);
    if (!result)
    {
      return result;
    }
  }

  v7 = *(result + 12);
  switch(v6)
  {
    case 0u:
      if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v8 = *(v7 + 8) & 0xFD | (2 * (a4 != 0.0));
          }

          else
          {
            if (a2 != 2)
            {
              return result;
            }

            v8 = *(v7 + 8) & 0xFB | (4 * (a4 != 0.0));
          }
        }

        else
        {
          v8 = *(v7 + 8) & 0xFE;
          if (a4 != 0.0)
          {
            ++v8;
          }
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v8 = *(v7 + 8) & 0xDF | (32 * (a4 != 0.0));
        }

        else
        {
          if (a2 != 6)
          {
            return result;
          }

          v8 = *(v7 + 8) & 0xBF | ((a4 != 0.0) << 6);
        }
      }

      else if (a2 == 3)
      {
        v8 = *(v7 + 8) & 0xF7 | (8 * (a4 != 0.0));
      }

      else
      {
        v8 = *(v7 + 8) & 0xEF | (16 * (a4 != 0.0));
      }

      *(v7 + 8) = v8;
      return result;
    case 1u:
      switch(a2)
      {
        case 65538:
          goto LABEL_339;
        case 65537:
          *(v7 + 18) = a4;
          break;
        case 65536:
          *(v7 + 16) = a4;
          break;
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_263;
        }

        if (a2 == 131073)
        {
LABEL_259:
          *(v7 + 24) = a4;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_306:
        *(v7 + 25) = a4;
        return result;
      }

      if (a2 == 131075)
      {
        goto LABEL_336;
      }

      v14 = 131076;
      goto LABEL_272;
    case 3u:
      if (a2 <= 196612)
      {
        if (a2 <= 196609)
        {
          if (a2 == 196608)
          {
            goto LABEL_325;
          }

          if (a2 == 196609)
          {
LABEL_324:
            *(v7 + 18) = a4;
          }
        }

        else
        {
          if (a2 == 196610)
          {
            goto LABEL_321;
          }

          if (a2 == 196611)
          {
LABEL_353:
            v35 = *(v7 + 8) & 0xFFFEFFFF | ((a4 != 0.0) << 16);
LABEL_426:
            *(v7 + 8) = v35;
          }

          else
          {
            *(v7 + 28) = a4;
          }
        }
      }

      else
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v18 = *(v7 + 24) & 0xFFFFFFDF | (32 * (a4 != 0.0));
              break;
            case 196617:
              v18 = *(v7 + 24) & 0xFFFFFE3F | ((a4 & 7) << 6);
              break;
            case 196618:
              v18 = *(v7 + 24) & 0xFFFFF9FF | ((a4 & 3) << 9);
              break;
            default:
              return result;
          }

          goto LABEL_366;
        }

        if (a2 != 196613)
        {
          if (a2 == 196614)
          {
            v18 = *(v7 + 24) & 0xFFFFFFF9 | (2 * (a4 & 3));
          }

          else
          {
            v18 = *(v7 + 24) & 0xFFFFFFE7 | (8 * (a4 & 3));
          }

LABEL_366:
          *(v7 + 24) = v18;
          return result;
        }

        v27 = *(v7 + 24) & 0xFFFFFFFE;
        if (a4 != 0.0)
        {
          ++v27;
        }

LABEL_283:
        *(v7 + 24) = v27;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          goto LABEL_223;
        case 262145:
          goto LABEL_238;
        case 262144:
LABEL_81:
          *(v7 + 16) = a4;
          break;
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_282;
      }

      if (a2 == 327681)
      {
        goto LABEL_336;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_333;
    case 6u:
      v10 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_261;
        }

        goto LABEL_333;
      }

      if (a2 == 393218)
      {
        goto LABEL_282;
      }

      if (a2 == 393219)
      {
        *(v7 + 8) = *(v7 + 8) & 0xFB | (4 * (a4 != 0.0));
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_282;
      }

      if (a2 == 458753)
      {
        goto LABEL_336;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_333;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_282;
      }

      if (a2 == 589825)
      {
        goto LABEL_336;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_333;
    case 0xAu:
      if ((a2 - 655364) >= 8 && (a2 - 655360) > 2)
      {
        return result;
      }

      v15 = *(v7 + 32);
      if (v15 <= 1)
      {
        if (v15)
        {
          if (v15 == 1 && a2 == 655364)
          {
            goto LABEL_263;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_282;
            case 655361:
              goto LABEL_336;
            case 655360:
              goto LABEL_333;
          }
        }

        return result;
      }

      if (v15 != 3)
      {
        if (v15 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_282;
        }

        if (a2 == 655366)
        {
          goto LABEL_336;
        }

        v22 = 655365;
        goto LABEL_229;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_333;
        }

        v10 = 655369;
        goto LABEL_261;
      }

      if (a2 == 655370)
      {
        goto LABEL_282;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_204;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          goto LABEL_81;
        case 720897:
          goto LABEL_238;
        case 720898:
          goto LABEL_223;
        case 720899:
          v39 = a4;
          goto LABEL_419;
        case 720900:
          goto LABEL_352;
        case 720901:
          goto LABEL_355;
        case 720902:
          goto LABEL_354;
        case 720903:
          v41 = a4;
          goto LABEL_421;
        case 720904:
          goto LABEL_353;
        case 720905:
          v35 = *(v7 + 8) & 0xFFFDFFFF | ((a4 != 0.0) << 17);
          goto LABEL_426;
        case 720906:
          goto LABEL_315;
        case 720907:
          goto LABEL_301;
        case 720908:
          goto LABEL_416;
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
          v19 = *(v7 + 88);
          if (!v19)
          {
            if (a2 == 720910)
            {
              goto LABEL_381;
            }

            if (a2 != 720909)
            {
              return result;
            }

            goto LABEL_375;
          }

          if (v19 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v20 = 19;
LABEL_371:
                  if (a2 == (v20 | 0xB0000))
                  {
                    *(v7 + 112) = a4;
                  }

                  return result;
                }

LABEL_381:
                *(v7 + 104) = a4;
                return result;
              }

LABEL_375:
              *(v7 + 96) = a4;
              return result;
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v37 = 26;
                goto LABEL_388;
              }

LABEL_429:
              *(v7 + 128) = a4;
              return result;
            }

LABEL_428:
            *(v7 + 120) = a4;
            return result;
          }

          if (v19 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v20 = 17;
                goto LABEL_371;
              }

              goto LABEL_381;
            }

            goto LABEL_375;
          }

          if (a2 == 720914)
          {
            goto LABEL_428;
          }

          if (a2 == 720916)
          {
            goto LABEL_429;
          }

          v37 = 21;
LABEL_388:
          if (a2 == (v37 | 0xB0000))
          {
            *(v7 + 136) = a4;
          }

          return result;
        case 720918:
          v35 = *(v7 + 8) & 0xFFFFFFFD | (2 * (a4 != 0.0));
          goto LABEL_426;
        case 720919:
          if (!*(v7 + 44))
          {
LABEL_416:
            *(v7 + 80) = a4;
          }

          return result;
        case 720920:
          v38 = a4;
          goto LABEL_414;
        case 720921:
          v35 = *(v7 + 8) & 0xFFF7FFFF | ((a4 != 0.0) << 19);
          goto LABEL_426;
        case 720923:
          *(v7 + 144) = a4;
          return result;
        case 720924:
          *(v7 + 148) = a4;
          return result;
        case 720925:
          *(v7 + 152) = a4;
          return result;
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
            goto LABEL_293;
          }

          if (a2 != 786436)
          {
            *(v7 + 36) = a4 != 0.0;
            return result;
          }

          goto LABEL_295;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_239;
          case 786433:
            goto LABEL_339;
          case 786434:
            goto LABEL_205;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          goto LABEL_302;
        }

        if (a2 != 786442)
        {
          v24 = 786443;
          goto LABEL_300;
        }

        goto LABEL_315;
      }

      if (a2 == 786438)
      {
        *(v7 + 37) = a4;
        return result;
      }

      if (a2 == 786439)
      {
        goto LABEL_314;
      }

      v25 = 786440;
      goto LABEL_312;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_293;
        }

        if (a2 != 851972)
        {
          v23 = 851973;
          goto LABEL_200;
        }

LABEL_295:
        v11 = a4;
        goto LABEL_296;
      }

      switch(a2)
      {
        case 851968:
          goto LABEL_333;
        case 851969:
          goto LABEL_336;
        case 851970:
          goto LABEL_282;
      }

      return result;
    case 0xEu:
      v21 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_324;
        }

        v21 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_325;
      }

      if (a2 != v21)
      {
        return result;
      }

      if (*(v7 + 18) == 1)
      {
        if (a2 != 917507)
        {
          return result;
        }
      }

      else if (a2 != 917505 || *(v7 + 18))
      {
        return result;
      }

LABEL_321:
      v33 = a4;
      goto LABEL_340;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_333;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_273;
        }

        if (a2 != 1048577)
        {
          v9 = 1048578;
          goto LABEL_253;
        }

        goto LABEL_256;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_333;
        }

        v10 = 1048580;
        goto LABEL_261;
      }

      if (a2 == 1048581)
      {
        goto LABEL_284;
      }

      v12 = 1048582;
      goto LABEL_281;
    case 0x11u:
      v13 = 1114113;
      if (a2 <= 1114113)
      {
        if (a2 != 1114112)
        {
          goto LABEL_151;
        }

        *(v7 + 16) = a4;
        return result;
      }

      if (a2 == 1114114)
      {
        *(v7 + 32) = a4;
        return result;
      }

      if (a2 != 1114115)
      {
        return result;
      }

      v30 = a4;
      goto LABEL_356;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_336;
      }

      if (a2 != 1179648)
      {
        return result;
      }

      goto LABEL_239;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_333;
        }

        if (a2 != 1245185)
        {
          v12 = 1245186;
          goto LABEL_281;
        }

        goto LABEL_336;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v9 = 1245188;
          goto LABEL_253;
        }

LABEL_37:
        v11 = vcvtd_n_s64_f64(a4, 0x10uLL);
        goto LABEL_296;
      }

      if (a2 == 1245189)
      {
LABEL_344:
        v30 = vcvtd_n_s64_f64(a4, 0x10uLL);
LABEL_356:
        *(v7 + 40) = v30;
        return result;
      }

      v14 = 1245190;
LABEL_272:
      if (a2 != v14)
      {
        return result;
      }

      goto LABEL_273;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_333;
        }

        if (a2 != 1310721)
        {
          v12 = 1310722;
          goto LABEL_281;
        }

        goto LABEL_336;
      }

      if (a2 == 1310723)
      {
        goto LABEL_273;
      }

      if (a2 != 1310724)
      {
        v26 = 1310725;
        goto LABEL_218;
      }

      goto LABEL_266;
    case 0x15u:
      if (a2 > 1376258)
      {
        if (a2 == 1376259)
        {
LABEL_293:
          v29 = a4;
          goto LABEL_294;
        }

        if (a2 == 1376260)
        {
LABEL_266:
          v11 = a4;
LABEL_296:
          *(v7 + 32) = v11;
        }

        else
        {
          v26 = 1376261;
LABEL_218:
          if (a2 == v26)
          {
LABEL_219:
            v28 = a4;
            goto LABEL_255;
          }
        }
      }

      else
      {
        switch(a2)
        {
          case 1376256:
            goto LABEL_333;
          case 1376257:
            goto LABEL_336;
          case 1376258:
            goto LABEL_282;
        }
      }

      return result;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_273;
        }

        if (a2 != 1507329)
        {
          v9 = 1507330;
          goto LABEL_253;
        }

        goto LABEL_256;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_333;
        }

        v10 = 1507332;
        goto LABEL_261;
      }

      if (a2 == 1507333)
      {
        goto LABEL_284;
      }

      v12 = 1507334;
LABEL_281:
      if (a2 == v12)
      {
LABEL_282:
        v27 = vcvtd_n_s64_f64(a4, 0x10uLL);
        goto LABEL_283;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_239;
      }

      if (a2 == 1572865)
      {
        *(v7 + 8) = *(v7 + 8) & 0x7FFF | ((a4 != 0.0) << 15);
      }

      return result;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_293;
        case 1638401:
          goto LABEL_205;
        case 1638400:
          goto LABEL_333;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_194;
      }

      if (a2 == 1703937)
      {
        goto LABEL_265;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_263;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_273;
        }

        if (a2 != 1769473)
        {
          v9 = 1769474;
          goto LABEL_253;
        }

        goto LABEL_256;
      }

      if (a2 == 1769477)
      {
        goto LABEL_284;
      }

      if (a2 != 1769476)
      {
        v22 = 1769475;
        goto LABEL_229;
      }

      goto LABEL_336;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_273:
          v29 = a4;
          goto LABEL_294;
        }

        if (a2 == 1835009)
        {
LABEL_256:
          *(v7 + 32) = a4;
        }

        else
        {
          v9 = 1835010;
LABEL_253:
          if (a2 == v9)
          {
LABEL_254:
            v28 = vcvtd_n_s64_f64(a4, 0x10uLL);
            goto LABEL_255;
          }
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_284:
        *(v7 + 34) = a4;
        return result;
      }

      if (a2 == 1835012)
      {
        goto LABEL_336;
      }

      v22 = 1835011;
LABEL_229:
      if (a2 != v22)
      {
        return result;
      }

      goto LABEL_333;
    case 0x1Du:
      v10 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            *(v7 + 24) = a4;
            break;
          case 1900547:
            *(v7 + 26) = a4;
            break;
          case 1900548:
            *(v7 + 32) = a4;
            break;
        }

        return result;
      }

      if (a2 == 1900544)
      {
        goto LABEL_263;
      }

LABEL_261:
      if (a2 == v10)
      {
        goto LABEL_336;
      }

      return result;
    case 0x1Eu:
      if (a2 == 1966082)
      {
LABEL_194:
        v27 = a4;
        goto LABEL_283;
      }

      if (a2 == 1966081)
      {
        goto LABEL_336;
      }

      if (a2 != 1966080)
      {
        return result;
      }

LABEL_263:
      v31 = a4;
      goto LABEL_334;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_321;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_333;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_205:
          v27 = a4;
          goto LABEL_283;
        }

        if (a2 == 2097155)
        {
LABEL_204:
          v29 = vcvtd_n_s64_f64(a4, 0x10uLL);
LABEL_294:
          *(v7 + 28) = v29;
        }
      }

      else
      {
        if (a2 == 0x200000)
        {
          goto LABEL_239;
        }

        if (a2 == 2097153)
        {
          goto LABEL_336;
        }
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_336;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_263;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_336;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_239;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_239;
        case 2293761:
          goto LABEL_336;
        case 2293762:
          goto LABEL_282;
        case 2293763:
          goto LABEL_204;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v34 = vcvtd_n_s64_f64(a4, 0x10uLL);
          goto LABEL_402;
        case 2293766:
          v36 = vcvtd_n_s64_f64(a4, 0x10uLL);
          goto LABEL_406;
        case 2293767:
          goto LABEL_254;
        case 2293768:
          goto LABEL_344;
        case 2293769:
          *(v7 + 68) = vcvtd_n_s64_f64(a4, 0x10uLL);
          return result;
        case 2293770:
          *(v7 + 76) = vcvtd_n_s64_f64(a4, 0x10uLL);
          return result;
        case 2293771:
          *(v7 + 72) = vcvtd_n_s64_f64(a4, 0x10uLL);
          return result;
        case 2293772:
          *(v7 + 80) = vcvtd_n_s64_f64(a4, 0x10uLL);
          return result;
        case 2293773:
          v41 = vcvtd_n_s64_f64(a4, 0x10uLL);
LABEL_421:
          *(v7 + 52) = v41;
          return result;
        case 2293774:
          v38 = vcvtd_n_s64_f64(a4, 0x10uLL);
LABEL_414:
          *(v7 + 56) = v38;
          return result;
        case 2293775:
          v39 = vcvtd_n_s64_f64(a4, 0x10uLL);
LABEL_419:
          *(v7 + 60) = v39;
          return result;
        case 2293776:
          *(v7 + 64) = vcvtd_n_s64_f64(a4, 0x10uLL);
          return result;
        case 2293777:
          v40 = *(v7 + 84) & 0xFE;
          if (a4 != 0.0)
          {
            ++v40;
          }

          goto LABEL_408;
        case 2293778:
          v40 = *(v7 + 84) & 0xFD | (2 * (a4 != 0.0));
LABEL_408:
          *(v7 + 84) = v40;
          break;
        case 2293779:
          *(v7 + 88) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        case 2293780:
          *(v7 + 92) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        case 2293781:
          *(v7 + 96) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        case 2293782:
          *(v7 + 100) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        case 2293783:
          *(v7 + 104) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        case 2293784:
          *(v7 + 108) = vcvtd_n_s64_f64(a4, 0x10uLL);
          break;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_321;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_333;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          LOBYTE(v32) = a4 != 0.0;
          goto LABEL_305;
        case 2424833:
          goto LABEL_324;
        case 2424832:
          goto LABEL_325;
      }

      return result;
    case 0x26u:
      if (a2 == 2490370)
      {
        *(v7 + 24) = a4;
        return result;
      }

      if (a2 == 2490369)
      {
        goto LABEL_336;
      }

      if (a2 != 2490368)
      {
        return result;
      }

LABEL_333:
      v31 = vcvtd_n_s64_f64(a4, 0x10uLL);
      goto LABEL_334;
    case 0x27u:
      if ((a2 - 2555905) > 1)
      {
        return result;
      }

      v17 = *(v7 + 16);
      if (v17 == 1)
      {
        if (a2 != 2555906)
        {
          return result;
        }

LABEL_336:
        v33 = vcvtd_n_s64_f64(a4, 0x10uLL);
      }

      else
      {
        if (v17)
        {
          if (a2 != 2555905 || v17 != 2)
          {
            return result;
          }
        }

        else if (a2 != 2555905)
        {
          return result;
        }

LABEL_339:
        v33 = a4;
      }

LABEL_340:
      *(v7 + 20) = v33;
      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          *(v7 + 64) = a4;
          break;
        case 2621441:
          *(v7 + 66) = a4;
          break;
        case 2621442:
          goto LABEL_81;
        case 2621443:
          goto LABEL_259;
        case 2621444:
          goto LABEL_306;
        case 2621445:
          goto LABEL_293;
        case 2621446:
          goto LABEL_295;
        case 2621447:
          goto LABEL_219;
        case 2621448:
          *(v7 + 44) = a4;
          break;
        case 2621449:
LABEL_354:
          v36 = a4;
LABEL_406:
          *(v7 + 48) = v36;
          break;
        case 2621450:
          *(v7 + 56) = a4;
          break;
        case 2621451:
          *(v7 + 26) = a4;
          break;
        case 2621452:
LABEL_355:
          v30 = a4;
          goto LABEL_356;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          goto LABEL_239;
        }

        if (a2 == 2686977)
        {
LABEL_265:
          v32 = a4;
LABEL_305:
          *(v7 + 20) = v32;
          return result;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        goto LABEL_238;
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          goto LABEL_223;
        }

LABEL_314:
        *(v7 + 40) = a4;
        return result;
      }

      if (a2 == 2686981)
      {
        goto LABEL_313;
      }

      if (a2 != 2686982)
      {
        return result;
      }

      goto LABEL_302;
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_352:
            v34 = a4;
LABEL_402:
            *(v7 + 44) = v34;
          }

          else
          {
            v25 = 2752518;
LABEL_312:
            if (a2 == v25)
            {
LABEL_313:
              *(v7 + 48) = a4;
            }
          }
        }

        else if (a2 == 2752519)
        {
LABEL_302:
          *(v7 + 56) = a4;
        }

        else if (a2 == 2752520)
        {
LABEL_315:
          *(v7 + 64) = a4;
        }

        else
        {
          v24 = 2752521;
LABEL_300:
          if (a2 == v24)
          {
LABEL_301:
            *(v7 + 72) = a4;
          }
        }
      }

      else if (a2 <= 2752513)
      {
        if (a2 == 2752512)
        {
LABEL_325:
          *(v7 + 16) = a4;
        }

        else if (a2 == 2752513)
        {
          goto LABEL_324;
        }
      }

      else if (a2 == 2752514)
      {
LABEL_238:
        *(v7 + 24) = a4;
      }

      else if (a2 == 2752515)
      {
LABEL_223:
        *(v7 + 32) = a4;
      }

      else
      {
        *(v7 + 40) = a4 != 0.0;
      }

      return result;
    case 0x2Bu:
      v13 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
          *(v7 + 32) = a4;
        }

        else
        {
          v23 = 2818051;
LABEL_200:
          if (a2 == v23)
          {
            v28 = a4;
LABEL_255:
            *(v7 + 36) = v28;
          }
        }
      }

      else if (a2 == 2818048)
      {
LABEL_239:
        v31 = a4;
LABEL_334:
        *(v7 + 16) = v31;
      }

      else
      {
LABEL_151:
        if (a2 == v13)
        {
          *(v7 + 24) = a4;
        }
      }

      return result;
    default:
      return result;
  }
}

CFDictionaryRef IOPSGetPowerSourceDescription(CFTypeRef blob, CFTypeRef ps)
{
  if (blob)
  {
    return ps;
  }

  else
  {
    return 0;
  }
}

void __IOHIDEventSystemConnectionDispatchEvent_block_invoke(uint64_t a1)
{
  _IOHIDEventSystemConnectionQueueStop(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

IOReturn IOPMAssertionCreateWithDescription(CFStringRef AssertionType, CFStringRef Name, CFStringRef Details, CFStringRef HumanReadableReason, CFStringRef LocalizationBundlePath, CFTimeInterval Timeout, CFStringRef TimeoutAction, IOPMAssertionID *AssertionID)
{
  result = -536870206;
  if (AssertionType && Name && AssertionID)
  {
    AssertionDescription = createAssertionDescription(AssertionType, Name, Details, HumanReadableReason, LocalizationBundlePath, TimeoutAction, Timeout);
    if (AssertionDescription)
    {
      v12 = AssertionDescription;
      v13 = IOPMAssertionCreateWithProperties(AssertionDescription, AssertionID);
      CFRelease(v12);
      return v13;
    }

    else
    {
      return -536870212;
    }
  }

  return result;
}

__CFDictionary *createAssertionDescription(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, double a7)
{
  valuePtr = a7;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"AssertName", a2);
    CFDictionarySetValue(v15, @"AssertType", a1);
    if (a3)
    {
      CFDictionarySetValue(v15, @"Details", a3);
    }

    if (a4)
    {
      CFDictionarySetValue(v15, @"HumanReadableReason", a4);
    }

    if (a5)
    {
      CFDictionarySetValue(v15, @"BundlePath", a5);
    }

    if (a7 != 0.0)
    {
      v16 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      CFDictionarySetValue(v15, @"TimeoutSeconds", v16);
      CFRelease(v16);
    }

    if (a6)
    {
      CFDictionarySetValue(v15, @"TimeoutAction", a6);
    }
  }

  return v15;
}

void processAssertionTimeout(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(a1, "assertionTimeout");
  v2 = gCurrentRemoteAssertion;
  v3 = assertions_log;
  if (gCurrentRemoteAssertion == uint64)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109376;
        v12 = uint64;
        v13 = 1024;
        v14 = gCurrentAssertion;
        v4 = v3;
LABEL_10:
        _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Current assertion has been released by powerd gCurrentRemoteAssertion 0x%x gCurrentAssertion 0x%x", &v11, 0xEu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109376;
      v12 = uint64;
      v13 = 1024;
      v14 = gCurrentAssertion;
      v4 = MEMORY[0x1E69E9C10];
      goto LABEL_10;
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processAssertionTimeout_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    processAssertionTimeout_cold_2();
  }

  v5 = (HIWORD(gCurrentAssertion) & 0x7FFF);
  Value = CFDictionaryGetValue(gAssertionsDict, v5);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    removeFromTimedList(gCurrentAssertion);
    if (CFDictionaryContainsKey(gActiveAssertionsDict, v5))
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          processAssertionTimeout_cold_3();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processAssertionTimeout_cold_4();
      }

      CFDictionaryRemoveValue(gActiveAssertionsDict, v5);
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        processAssertionTimeout_cold_5();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      processAssertionTimeout_cold_6();
    }

    if (CFDictionaryContainsValue(Value, @"TimeoutAction"))
    {
      v8 = CFDictionaryGetValue(Value, @"TimeoutAction");
    }

    else
    {
      v8 = @"TimeoutActionTurnOff";
    }

    if (CFStringCompare(v8, @"TimeoutActionRelease", 0))
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          processAssertionTimeout_cold_7();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processAssertionTimeout_cold_8();
      }

      CFDictionarySetValue(gInactiveAssertionsDict, v5, Value);
    }

    else
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          processAssertionTimeout_cold_9();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processAssertionTimeout_cold_10();
      }

      CFDictionaryRemoveValue(gAssertionsDict, v5);
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      processAssertionTimeout_cold_11();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    processAssertionTimeout_cold_12();
  }

  if (v2 == uint64)
  {
    gCurrentAssertion = 0;
    gCurrentRemoteAssertion = 0;
    gCurrentRemoteAssertionIsCoalesced = 0;
  }

  PMQueue = getPMQueue();
  dispatch_async(PMQueue, &__block_literal_global_129);
  v10 = *MEMORY[0x1E69E9840];
}

void __registerForAssertionPolicy_block_invoke(int a1, int token)
{
  v8 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(token, &state64);
  v2 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = state64;
      v3 = v2;
LABEL_6:
      _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "Update assertion policy %llu", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = state64;
    v3 = MEMORY[0x1E69E9C10];
    goto LABEL_6;
  }

  evaluateAssertionCategoryPolicies(state64);
  v4 = *MEMORY[0x1E69E9840];
}

void evaluateAssertionCategoryPolicies(int a1)
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (!gAssertionCategoryPolicies)
  {
    goto LABEL_39;
  }

  if (a1)
  {
    gAssertionPolicyActive = a1;
  }

  else
  {
    gAssertionPolicyActive = 0;
    undoCategoryPolicyTimers();
  }

  v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v2 = convertCFNumberToCFStringRef(v1);
  v3 = 0;
  v4 = MEMORY[0x1E69E9C10];
  do
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v3, &value))
    {
      goto LABEL_34;
    }

    v5 = value;
    TypeID = CFDictionaryGetTypeID();
    if (v5 && CFGetTypeID(v5) == TypeID)
    {
      if (!CFDictionaryContainsKey(value, @"Category"))
      {
        v11 = assertions_log;
        if (assertions_log)
        {
          if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          *buf = 0;
          v12 = v11;
          v13 = "No category";
        }

        else
        {
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          *buf = 0;
          v12 = v4;
          v13 = "No category";
        }

        v16 = 2;
        goto LABEL_33;
      }

      v7 = value;
      v8 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v7;
          v9 = v8;
LABEL_23:
          _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_DEFAULT, "Assertion has a category %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v7;
        v9 = v4;
        goto LABEL_23;
      }

      v14 = CFDictionaryGetValue(value, @"Category");
      getPolicyTimeout(v14, v1);
      v15 = assertions_log;
      if (assertions_log)
      {
        if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *buf = 138412546;
        v21 = v1;
        v22 = 2112;
        v23 = v2;
        v12 = v15;
        v13 = "No timeout for category %@ for policy %@";
      }

      else
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        *buf = 138412546;
        v21 = v1;
        v22 = 2112;
        v23 = v2;
        v12 = v4;
        v13 = "No timeout for category %@ for policy %@";
      }

      v16 = 22;
LABEL_33:
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v16);
      goto LABEL_34;
    }

    v10 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v21) = v3;
        _os_log_error_impl(&dword_197195000, v10, OS_LOG_TYPE_ERROR, "Not a dictinary for 0x%x", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      offloadAssertions_cold_8(&v24, v3, &v25);
    }

LABEL_34:
    ++v3;
  }

  while (v3 != 128);
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

LABEL_39:
  v17 = *MEMORY[0x1E69E9840];
}

CFTypeRef OSKextCopyLoadedKextInfo(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  cf = 0;
  OSKextLog(0, 69, "Reading loaded kext info from kernel.", a4, a5, a6, a7, a8, v34);
  v10 = __OSKextCreateKextRequest(@"Get Loaded Kext Info", a1, &theDict);
  if (a2 && CFArrayGetCount(a2))
  {
    CFDictionarySetValue(theDict, @"Kext Request Info Keys", a2);
  }

  v11 = __OSKextSendKextRequest(0, v10, &cf, 0, 0);
  if (v11)
  {
    v17 = mach_error_string(v11);
    v23 = "(unknown)";
    if (v17)
    {
      LOBYTE(v23) = v17;
    }

    OSKextLog(0, 65, "Failed to read loaded kext info from kernel - %s.", v18, v19, v20, v21, v22, v23);
    if (cf)
    {
      CFRelease(cf);
    }

    CFStringForPlist_new = 0;
    UTF8CStringForCFString = 0;
    cf = 0;
    goto LABEL_20;
  }

  if (!cf)
  {
    v32 = "Kernel request call returned no data.";
LABEL_19:
    OSKextLog(0, 65, v32, v12, v13, v14, v15, v16, v35);
    CFStringForPlist_new = 0;
    UTF8CStringForCFString = 0;
    goto LABEL_20;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(cf))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    v32 = "Loaded kext info from kernel is wrong type.";
    goto LABEL_19;
  }

  CFStringForPlist_new = 0;
  UTF8CStringForCFString = 0;
  if ((~__sUserLogFilter & 7) == 0 && (__sUserLogFilter & 0x60) != 0)
  {
    CFStringForPlist_new = createCFStringForPlist_new(cf, 1);
    UTF8CStringForCFString = createUTF8CStringForCFString(CFStringForPlist_new);
    OSKextLog(0, 103, "Loaded kext info:\n%s", v27, v28, v29, v30, v31, UTF8CStringForCFString);
  }

LABEL_20:
  if (v10)
  {
    CFRelease(v10);
  }

  if (CFStringForPlist_new)
  {
    CFRelease(CFStringForPlist_new);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  return cf;
}

const char *IOHIDEventGetTypeString(unsigned int a1)
{
  Name = IOHIDEventTypeGetName(a1);
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringGetCStringPtr(Name, SystemEncoding);
}

uint64_t __IOPMScheduleUserActiveChangedNotification_block_invoke(uint64_t result, char a2)
{
  v2 = a2 & 1;
  if (gIOPMUserIsActive != v2)
  {
    gIOPMUserIsActive = v2;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __IOPMScheduleUserActivityLevelNotification_block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    if (*(a1 + 40))
    {
      return (*(*(a1 + 32) + 16))();
    }
  }

  return result;
}

const uint8_t *__cdecl IOHIDValueGetBytePtr(IOHIDValueRef value)
{
  if (*(value + 6))
  {
    return *(value + 6);
  }

  else
  {
    return value + 56;
  }
}

uint64_t IOHIDEventSystemClientUnscheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  __IOHIDEventSystemClientUnscheduleWithRunLoop(a1, a2, a3);
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;

  return os_unfair_recursive_lock_unlock();
}

uint64_t __IOHIDEventSystemClientUnscheduleWithRunLoop(uint64_t result, __CFRunLoop *a2, const __CFString *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    os_unfair_recursive_lock_lock_with_options();
    v6 = *(v5 + 64);
    if (v6)
    {
      CFRunLoopRemoveSource(a2, v6, a3);
    }

    v7 = *(v5 + 40);
    if (v7)
    {
      IOMIGMachPortUnscheduleFromRunLoop(v7, a2, a3);
    }

    v8 = *(v5 + 32);
    if (v8)
    {
      io_hideventsystem_queue_stop(v8);
    }

    v9 = *(v5 + 288);
    if (v9)
    {
      CFRunLoopRemoveSource(a2, v9, a3);
    }

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

void IOMIGMachPortUnscheduleFromRunLoop(uint64_t a1, __CFRunLoop *cf1, const __CFString *a3)
{
  if (cf1)
  {
    if (a3)
    {
      v7 = (a1 + 16);
      v6 = *(a1 + 16);
      if (v6)
      {
        if (*(a1 + 24))
        {
          if (CFEqual(cf1, v6))
          {
            if (CFEqual(a3, *(a1 + 24)))
            {
              *v7 = 0;
              v7[1] = 0;
              v8 = *(a1 + 56);
              if (v8)
              {

                CFRunLoopRemoveSource(cf1, v8, a3);
              }
            }
          }
        }
      }
    }
  }
}

CFStringRef _IOHIDCreateTimeString(const __CFAllocator *a1, time_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  *v8 = 0u;
  v9 = 0u;
  v4 = localtime_r(a2, &v7);
  if (v4 || (v4 = gmtime_r(a2, &v7)) != 0)
  {
    strftime(v8, 0x20uLL, "%F %H:%M:%S", v4);
  }

  result = CFStringCreateWithFormat(a1, 0, @"%s.%06d", v8, *(a2 + 2));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _IOHIDEventSystemConnectionReleasePrivate_cold_1(uint64_t a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v16, v18, v19, v20);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v9, v10, "%s: mach_port_request_notification(MACH_PORT_NULL):%s", v11, v12, v13, v14, v17);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDEventDataAppendFromLegacyEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  switch(v2)
  {
    case 4:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
      __IOHIDEventPopulateTranslationLegacyData(a2, a1);
      return 28;
    case 17:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      __IOHIDEventPopulatePointerLegacyData(a2, a1);
      return 32;
    case 11:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      __IOHIDEventPopulateDigitizerLegacyData(a2, a1);
      return 104;
    default:
      return 0;
  }
}

double __IOHIDEventPopulateDigitizerLegacyData(uint64_t a1, uint64_t a2)
{
  v2 = 104;
  v3 = *(a2 + 4);
  *a1 = 104;
  *(a1 + 4) = v3;
  v4 = *(a1 + 8) & 0xFFFFFFFE | *(a2 + 8) & 1;
  *(a1 + 8) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 8) >> 1) & 1));
  *(a1 + 8) = v5;
  v6 = v5 & 0xFFFF0003 | (4 * ((*(a2 + 8) >> 2) & 0x3FFF));
  *(a1 + 8) = v6;
  v7 = v6 & 0xFFFEFFFF | ((HIWORD(*(a2 + 8)) & 1) << 16);
  *(a1 + 8) = v7;
  v8 = v7 & 0xFFFDFFFF | (((*(a2 + 8) >> 17) & 1) << 17);
  *(a1 + 8) = v8;
  v9 = v8 & 0xFFFBFFFF | (((*(a2 + 8) >> 18) & 1) << 18);
  *(a1 + 8) = v9;
  *(a1 + 8) = v9 & 0xFFF7FFFF | (((*(a2 + 8) >> 19) & 1) << 19);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 44) = *(a2 + 56);
  *(a1 + 28) = *(a2 + 40);
  *(a1 + 16) = vbsl_s8(vmovn_s64(vmvnq_s8(vceqq_f64(*(a2 + 16), *(a2 + 16)))), 0x8000000080000000, vmovn_s64(vcvtq_n_s64_f64(*(a2 + 16), 0x10uLL)));
  *(a1 + 24) = vcvtd_n_s64_f64(*(a2 + 32), 0x10uLL);
  *(a1 + 52) = vbsl_s8(vmovn_s64(vmvnq_s8(vceqq_f64(*(a2 + 64), *(a2 + 64)))), 0x8000000080000000, vmovn_s64(vcvtq_n_s64_f64(*(a2 + 64), 0x10uLL)));
  *(a1 + 60) = vcvtd_n_s64_f64(*(a2 + 80), 0x10uLL);
  *(a1 + 60) = vcvtd_n_s64_f64(*(a2 + 80), 0x10uLL);
  v10 = *(a2 + 88);
  *(a1 + 64) = v10;
  if ((v10 - 1) < 2)
  {
    *(a1 + 68) = vcvtd_n_s64_f64(*(a2 + 96), 0x10uLL);
    *(a1 + 72) = vcvtd_n_s64_f64(*(a2 + 104), 0x10uLL);
    *(a1 + 76) = vcvtd_n_s64_f64(*(a2 + 112), 0x10uLL);
    *(a1 + 80) = vcvtd_n_s64_f64(*(a2 + 120), 0x10uLL);
    v11 = 88;
    v2 = 136;
    v12 = 84;
    v13 = 128;
LABEL_5:
    *(a1 + v12) = vcvtd_n_s64_f64(*(a2 + v13), 0x10uLL);
    *(a1 + v11) = vcvtd_n_s64_f64(*(a2 + v2), 0x10uLL);
    goto LABEL_6;
  }

  if (!v10)
  {
    v11 = 72;
    v12 = 68;
    v13 = 96;
    goto LABEL_5;
  }

LABEL_6:
  result = *(a2 + 144);
  *(a1 + 92) = result;
  *(a1 + 100) = *(a2 + 152);
  return result;
}

uint64_t __IOHIDEventPopulatePointerLegacyData(uint64_t result, uint64_t a2)
{
  *result = 32;
  *(result + 4) = *(a2 + 4);
  *(result + 12) = *(a2 + 12);
  *(result + 13) = *(a2 + 13);
  *(result + 14) = *(a2 + 14);
  *(result + 15) = *(a2 + 15);
  *(result + 16) = vbsl_s8(vmovn_s64(vmvnq_s8(vceqq_f64(*(a2 + 16), *(a2 + 16)))), 0x8000000080000000, vmovn_s64(vcvtq_n_s64_f64(*(a2 + 16), 0x10uLL)));
  v2 = *(a2 + 40);
  *(result + 24) = vcvtd_n_s64_f64(*(a2 + 32), 0x10uLL);
  *(result + 28) = v2;
  return result;
}

uint64_t __IOHIDEventPopulateTranslationLegacyData(uint64_t result, uint64_t a2)
{
  *result = 28;
  *(result + 4) = *(a2 + 4);
  *(result + 12) = *(a2 + 12);
  *(result + 13) = *(a2 + 13);
  *(result + 14) = *(a2 + 14);
  *(result + 15) = *(a2 + 15);
  *(result + 16) = vbsl_s8(vmovn_s64(vmvnq_s8(vceqq_f64(*(a2 + 16), *(a2 + 16)))), 0x8000000080000000, vmovn_s64(vcvtq_n_s64_f64(*(a2 + 16), 0x10uLL)));
  *(result + 24) = vcvtd_n_s64_f64(*(a2 + 32), 0x10uLL);
  return result;
}

void __IOHIDEventPopulateCurrentEventData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  switch(v2)
  {
    case 4:
      __IOHIDEventPopulateTranslationCurrentData(a1, a2);
      break;
    case 17:
      __IOHIDEventPopulatePointerCurrentData(a1, a2);
      break;
    case 11:
      __IOHIDEventPopulateDigitizerCurrentData(a1, a2);
      break;
  }
}

double __IOHIDEventPopulateDigitizerCurrentData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  *a2 = 160;
  *(a2 + 4) = v2;
  v3 = *(a2 + 8) & 0xFFFFFFFE | *(a1 + 8) & 1;
  *(a2 + 8) = v3;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a1 + 8) >> 1) & 1));
  *(a2 + 8) = v4;
  v5 = v4 & 0xFFFF0003 | (4 * ((*(a1 + 8) >> 2) & 0x3FFF));
  *(a2 + 8) = v5;
  v6 = v5 & 0xFFFEFFFF | ((HIWORD(*(a1 + 8)) & 1) << 16);
  *(a2 + 8) = v6;
  v7 = v6 & 0xFFFDFFFF | (((*(a1 + 8) >> 17) & 1) << 17);
  *(a2 + 8) = v7;
  v8 = v7 & 0xFFFBFFFF | (((*(a1 + 8) >> 18) & 1) << 18);
  *(a2 + 8) = v8;
  *(a2 + 8) = v8 & 0xFFF7FFFF | (((*(a1 + 8) >> 19) & 1) << 19);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 13) = *(a1 + 13);
  *(a2 + 14) = *(a1 + 14);
  *(a2 + 15) = *(a1 + 15);
  *(a2 + 56) = *(a1 + 44);
  *(a2 + 40) = *(a1 + 28);
  v9 = *(a1 + 16);
  v10 = vceq_s32(v9, 0x8000000080000000);
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v12 = v11;
  v11.i64[0] = v9.i32[0];
  v11.i64[1] = v9.i32[1];
  v13 = vdupq_n_s64(0x3EF0000000000000uLL);
  v14 = vdupq_n_s64(0x7FF8000000000000uLL);
  v15 = vbslq_s8(v12, v14, vmulq_f64(vcvtq_f64_s64(v11), v13));
  v16 = *(a1 + 24);
  v17 = vcvtd_n_f64_s32(v16, 0x10uLL);
  *(a2 + 16) = v15;
  v18 = NAN;
  if (v16 == 0x80000000)
  {
    v17 = NAN;
  }

  *(a2 + 32) = v17;
  v19 = *(a1 + 52);
  v20 = vceq_s32(v19, 0x8000000080000000);
  v21.i64[0] = v20.i32[0];
  v21.i64[1] = v20.i32[1];
  v22 = v21;
  v21.i64[0] = v19.i32[0];
  v21.i64[1] = v19.i32[1];
  *(a2 + 64) = vbslq_s8(v22, v14, vmulq_f64(vcvtq_f64_s64(v21), v13));
  v23 = *(a1 + 60);
  v24 = vcvtd_n_f64_s32(v23, 0x10uLL);
  if (v23 == 0x80000000)
  {
    v24 = NAN;
  }

  *(a2 + 80) = v24;
  v25 = *(a1 + 60);
  v26 = vcvtd_n_f64_s32(v25, 0x10uLL);
  if (v25 != 0x80000000)
  {
    v18 = v26;
  }

  *(a2 + 80) = v18;
  v27 = *(a1 + 64);
  *(a2 + 88) = v27;
  if ((v27 - 1) >= 2)
  {
    if (v27)
    {
      goto LABEL_24;
    }

    v36 = 104;
    v37 = 72;
    v38 = 96;
    v39 = 68;
  }

  else
  {
    v28 = *(a1 + 68);
    v29 = vcvtd_n_f64_s32(v28, 0x10uLL);
    if (v28 == 0x80000000)
    {
      v29 = NAN;
    }

    *(a2 + 96) = v29;
    v30 = *(a1 + 72);
    v31 = vcvtd_n_f64_s32(v30, 0x10uLL);
    if (v30 == 0x80000000)
    {
      v31 = NAN;
    }

    *(a2 + 104) = v31;
    v32 = *(a1 + 76);
    v33 = vcvtd_n_f64_s32(v32, 0x10uLL);
    if (v32 == 0x80000000)
    {
      v33 = NAN;
    }

    *(a2 + 112) = v33;
    v34 = *(a1 + 80);
    v35 = vcvtd_n_f64_s32(v34, 0x10uLL);
    if (v34 == 0x80000000)
    {
      v35 = NAN;
    }

    *(a2 + 120) = v35;
    v36 = 136;
    v37 = 88;
    v38 = 128;
    v39 = 84;
  }

  v40 = *(a1 + v39);
  v41 = vcvtd_n_f64_s32(v40, 0x10uLL);
  if (v40 == 0x80000000)
  {
    v41 = NAN;
  }

  *(a2 + v38) = v41;
  v42 = *(a1 + v37);
  v43 = vcvtd_n_f64_s32(v42, 0x10uLL);
  if (v42 == 0x80000000)
  {
    v43 = NAN;
  }

  *(a2 + v36) = v43;
LABEL_24:
  result = *(a1 + 92);
  *(a2 + 144) = result;
  *(a2 + 152) = *(a1 + 100);
  return result;
}

uint64_t __IOHIDEventPopulatePointerCurrentData(uint64_t result, uint64_t a2)
{
  *a2 = 48;
  *(a2 + 4) = *(result + 4);
  *(a2 + 12) = *(result + 12);
  *(a2 + 13) = *(result + 13);
  *(a2 + 14) = *(result + 14);
  *(a2 + 15) = *(result + 15);
  v2 = *(result + 16);
  v3 = vceq_s32(v2, 0x8000000080000000);
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  v5 = v4;
  v4.i64[0] = v2.i32[0];
  v4.i64[1] = v2.i32[1];
  *(a2 + 16) = vbslq_s8(v5, vdupq_n_s64(0x7FF8000000000000uLL), vmulq_f64(vcvtq_f64_s64(v4), vdupq_n_s64(0x3EF0000000000000uLL)));
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v8 = NAN;
  }

  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  return result;
}

uint64_t __IOHIDEventPopulateTranslationCurrentData(uint64_t result, uint64_t a2)
{
  *a2 = 40;
  *(a2 + 4) = *(result + 4);
  *(a2 + 12) = *(result + 12);
  *(a2 + 13) = *(result + 13);
  *(a2 + 14) = *(result + 14);
  *(a2 + 15) = *(result + 15);
  v2 = *(result + 16);
  v3 = vceq_s32(v2, 0x8000000080000000);
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  v5 = v4;
  v4.i64[0] = v2.i32[0];
  v4.i64[1] = v2.i32[1];
  v6 = vbslq_s8(v5, vdupq_n_s64(0x7FF8000000000000uLL), vmulq_f64(vcvtq_f64_s64(v4), vdupq_n_s64(0x3EF0000000000000uLL)));
  v7 = *(result + 24);
  v8 = vcvtd_n_f64_s32(v7, 0x10uLL);
  *(a2 + 16) = v6;
  v9 = NAN;
  if (v7 != 0x80000000)
  {
    v9 = v8;
  }

  *(a2 + 32) = v9;
  return result;
}

void IOHIDPreferencesSet(const __CFString *a1, const void *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v10 = __setPtr;
  if (__setPtr)
  {
    v11 = *MEMORY[0x1E69E9840];

    v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v12 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_INFO, "Failed to find %s for set, switch to default CFPreferences", &v14, 0xCu);
    }

    CFPreferencesSetValue(a1, a2, a5, a3, a4);
    v13 = *MEMORY[0x1E69E9840];
  }
}

void IOHIDPreferencesSetMultiple(const __CFDictionary *a1, const __CFArray *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v10 = __setMultiplePtr;
  if (__setMultiplePtr)
  {
    v11 = *MEMORY[0x1E69E9840];

    v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v12 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_INFO, "Failed to find %s for set multiple , switch to default CFPreferences", &v14, 0xCu);
    }

    CFPreferencesSetMultiple(a1, a2, a5, a3, a4);
    v13 = *MEMORY[0x1E69E9840];
  }
}

CFPropertyListRef IOHIDPreferencesCopy(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v8 = __copyPtr;
  if (__copyPtr)
  {
    v9 = *MEMORY[0x1E69E9840];

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v11, OS_LOG_TYPE_INFO, "Failed to find %s for copy, switch to default CFPreferences", &v13, 0xCu);
    }

    result = CFPreferencesCopyValue(a1, a4, a2, a3);
    v12 = *MEMORY[0x1E69E9840];
  }

  return result;
}

CFDictionaryRef IOHIDPreferencesCopyMultiple(const __CFArray *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v8 = __copyMultiplePtr;
  if (__copyMultiplePtr)
  {
    v9 = *MEMORY[0x1E69E9840];

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v11, OS_LOG_TYPE_INFO, "Failed to find %s for copy multiple, switch to default CFPreferences", &v13, 0xCu);
    }

    result = CFPreferencesCopyMultiple(a1, a4, a2, a3);
    v12 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t IOHIDPreferencesSynchronize(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v6 = __synchronizePtr;
  if (__synchronizePtr)
  {
    v7 = *MEMORY[0x1E69E9840];

    return v6(a1, a2, a3);
  }

  else
  {
    v9 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "Failed to find %s for synchronize, switch to default CFPreferences", &v11, 0xCu);
    }

    result = CFPreferencesSynchronize(a3, a1, a2);
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

CFPropertyListRef IOHIDPreferencesCopyDomain(const __CFString *a1, const __CFString *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v4 = __copyDomainPtr;
  if (__copyDomainPtr)
  {
    v5 = *MEMORY[0x1E69E9840];

    return v4(a1, a2);
  }

  else
  {
    v7 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_INFO, "Failed to find %s for copy domain, switch to default CFPreferences", &v9, 0xCu);
    }

    result = CFPreferencesCopyAppValue(a1, a2);
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void IOHIDPreferencesSetDomain(const __CFString *a1, const void *a2, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v6 = __setDomainPtr;
  if (__setDomainPtr)
  {
    v7 = *MEMORY[0x1E69E9840];

    v6(a1, a2, a3);
  }

  else
  {
    v8 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_INFO, "Failed to find %s for set domain, switch to default CFPreferences", &v10, 0xCu);
    }

    CFPreferencesSetAppValue(a1, a2, a3);
    v9 = *MEMORY[0x1E69E9840];
  }
}

uint64_t IOHIDPreferencesCreateInstance(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v2 = __createPtr;
  if (__createPtr)
  {
    v3 = *MEMORY[0x1E69E9840];

    return v2(a1);
  }

  else
  {
    v5 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_INFO, "Failed to find %s for create", &v7, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

void IOHIDPreferencesSetForInstance(uint64_t a1, const __CFString *a2, const void *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v12 = __setForInstancePtr;
  if (__setForInstancePtr)
  {
    v13 = *MEMORY[0x1E69E9840];

    v12(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v14 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v14, OS_LOG_TYPE_INFO, "Failed to find %s for set, switch to default CFPreferences", &v16, 0xCu);
    }

    CFPreferencesSetValue(a2, a3, a6, a4, a5);
    v15 = *MEMORY[0x1E69E9840];
  }
}

void IOHIDPreferencesSetMultipleForInstance(uint64_t a1, const __CFDictionary *a2, const __CFArray *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v12 = __setMultipleForInstancePtr;
  if (__setMultipleForInstancePtr)
  {
    v13 = *MEMORY[0x1E69E9840];

    v12(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v14 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v14, OS_LOG_TYPE_INFO, "Failed to find %s for set multiple , switch to default CFPreferences", &v16, 0xCu);
    }

    CFPreferencesSetMultiple(a2, a3, a6, a4, a5);
    v15 = *MEMORY[0x1E69E9840];
  }
}

CFPropertyListRef IOHIDPreferencesCopyForInstance(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v10 = __copyForInstancePtr;
  if (__copyForInstancePtr)
  {
    v11 = *MEMORY[0x1E69E9840];

    return v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v13 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_INFO, "Failed to find %s for copy, switch to default CFPreferences", &v15, 0xCu);
    }

    result = CFPreferencesCopyValue(a2, a5, a3, a4);
    v14 = *MEMORY[0x1E69E9840];
  }

  return result;
}

CFDictionaryRef IOHIDPreferencesCopyMultipleForInstance(uint64_t a1, const __CFArray *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v10 = __copyMultipleForInstancePtr;
  if (__copyMultipleForInstancePtr)
  {
    v11 = *MEMORY[0x1E69E9840];

    return v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v13 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_INFO, "Failed to find %s for copy multiple, switch to default CFPreferences", &v15, 0xCu);
    }

    result = CFPreferencesCopyMultiple(a2, a5, a3, a4);
    v14 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t IOHIDPreferencesSynchronizeForInstance(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v8 = __synchronizeForInstancePtr;
  if (__synchronizeForInstancePtr)
  {
    v9 = *MEMORY[0x1E69E9840];

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v11, OS_LOG_TYPE_INFO, "Failed to find %s for synchronize, switch to default CFPreferences", &v13, 0xCu);
    }

    result = CFPreferencesSynchronize(a4, a2, a3);
    v12 = *MEMORY[0x1E69E9840];
  }

  return result;
}

CFPropertyListRef IOHIDPreferencesCopyDomainForInstance(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v6 = __copyDomainForInstancePtr;
  if (__copyDomainForInstancePtr)
  {
    v7 = *MEMORY[0x1E69E9840];

    return v6(a1, a2, a3);
  }

  else
  {
    v9 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "Failed to find %s for copy domain, switch to default CFPreferences", &v11, 0xCu);
    }

    result = CFPreferencesCopyAppValue(a2, a3);
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void IOHIDPreferencesSetDomainForInstance(uint64_t a1, const __CFString *a2, const void *a3, const __CFString *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (__loadFramework_haOnce != -1)
  {
    IOHIDPreferencesSet_cold_1();
  }

  v8 = __setDomainForInstancePtr;
  if (__setDomainForInstancePtr)
  {
    v9 = *MEMORY[0x1E69E9840];

    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
      _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_INFO, "Failed to find %s for set domain, switch to default CFPreferences", &v12, 0xCu);
    }

    CFPreferencesSetAppValue(a2, a3, a4);
    v11 = *MEMORY[0x1E69E9840];
  }
}

void ____loadFramework_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences", 1);
  __loadFramework_haHandle = v0;
  if (v0)
  {
    __setPtr = dlsym(v0, "HIDPreferencesSet");
    if (__loadFramework_haHandle)
    {
      __setMultiplePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSetMultiple");
      if (__loadFramework_haHandle)
      {
        __copyPtr = dlsym(__loadFramework_haHandle, "HIDPreferencesCopy");
        if (__loadFramework_haHandle)
        {
          __copyMultiplePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesCopyMultiple");
          if (__loadFramework_haHandle)
          {
            __synchronizePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSynchronize");
            if (__loadFramework_haHandle)
            {
              __copyDomainPtr = dlsym(__loadFramework_haHandle, "HIDPreferencesCopyDomain");
              if (__loadFramework_haHandle)
              {
                __setDomainPtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSetDomain");
                if (__loadFramework_haHandle)
                {
                  __setForInstancePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSetForInstance");
                  if (__loadFramework_haHandle)
                  {
                    __setMultipleForInstancePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSetMultipleForInstance");
                    if (__loadFramework_haHandle)
                    {
                      __copyForInstancePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesCopyForInstance");
                      if (__loadFramework_haHandle)
                      {
                        __copyMultipleForInstancePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesCopyMultipleForInstance");
                        if (__loadFramework_haHandle)
                        {
                          __synchronizeForInstancePtr = dlsym(__loadFramework_haHandle, "HIDPreferencesSynchronizeForInstance");
                          if (__loadFramework_haHandle)
                          {
                            v1 = dlsym(__loadFramework_haHandle, "HIDPreferencesCopyDomainForInstance");
                            v2 = __loadFramework_haHandle;
                            __copyDomainForInstancePtr = v1;
                            if (__loadFramework_haHandle)
                            {
                              v3 = dlsym(__loadFramework_haHandle, "HIDPreferencesSetDomainForInstance");
                              v2 = __loadFramework_haHandle;
                              __setDomainForInstancePtr = v3;
                              if (__loadFramework_haHandle)
                              {
                                v2 = dlsym(__loadFramework_haHandle, "HIDPreferencesCreateInstance");
                              }

                              goto LABEL_32;
                            }

LABEL_31:
                            __setDomainForInstancePtr = 0;
LABEL_32:
                            __createPtr = v2;
                            goto LABEL_33;
                          }

LABEL_30:
                          v2 = 0;
                          __copyDomainForInstancePtr = 0;
                          goto LABEL_31;
                        }

LABEL_29:
                        __synchronizeForInstancePtr = 0;
                        goto LABEL_30;
                      }

LABEL_28:
                      __copyMultipleForInstancePtr = 0;
                      goto LABEL_29;
                    }

LABEL_27:
                    __copyForInstancePtr = 0;
                    goto LABEL_28;
                  }

LABEL_26:
                  __setMultipleForInstancePtr = 0;
                  goto LABEL_27;
                }

LABEL_25:
                __setForInstancePtr = 0;
                goto LABEL_26;
              }

LABEL_24:
              __setDomainPtr = 0;
              goto LABEL_25;
            }

LABEL_23:
            __copyDomainPtr = 0;
            goto LABEL_24;
          }

LABEL_22:
          __synchronizePtr = 0;
          goto LABEL_23;
        }

LABEL_21:
        __copyMultiplePtr = 0;
        goto LABEL_22;
      }
    }

    else
    {
      __setMultiplePtr = 0;
    }

    __copyPtr = 0;
    goto LABEL_21;
  }

  v4 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "/System/Library/PrivateFrameworks/HIDPreferences.framework/HIDPreferences";
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Failed to load %s", &v6, 0xCu);
  }

LABEL_33:
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDEventRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventTypeID = result;
  return result;
}

uint64_t IOHIDEventGetTypeID()
{
  result = __kIOHIDEventTypeID;
  if (!__kIOHIDEventTypeID)
  {
    pthread_once(&__eventTypeInit, __IOHIDEventRegister);
    return __kIOHIDEventTypeID;
  }

  return result;
}

uint64_t _IOHIDSessionCreatePrivate(uint64_t a1)
{
  v1 = [HIDSession allocWithZone:a1];

  return [(HIDSession *)v1 init];
}

uint64_t setCrossLinkPageSize(uint64_t a1)
{
  if ((a1 ^ (a1 - 1)) <= a1 - 1)
  {
    return 0;
  }

  __sCrossLinkPageSize = a1;
  result = 1;
  __sCrossLinkEnabled = 1;
  return result;
}

uint64_t getEffectivePageSize()
{
  if (__sCrossLinkEnabled)
  {
    v0 = &__sCrossLinkPageSize;
  }

  else
  {
    v0 = MEMORY[0x1E69E9AC8];
  }

  return *v0;
}

uint64_t roundPageCrossSafe(uint64_t a1)
{
  if (__sCrossLinkEnabled)
  {
    v1 = &__sCrossLinkPageSize;
  }

  else
  {
    v1 = MEMORY[0x1E69E9AC8];
  }

  return (a1 + *v1 - 1) & -*v1;
}

uint64_t roundPageCrossSafeFixedWidth(uint64_t a1)
{
  if (__sCrossLinkEnabled == 1)
  {
    return (a1 + __sCrossLinkPageSize - 1) & -__sCrossLinkPageSize;
  }

  else
  {
    return ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + a1);
  }
}

void DoCFSerializeBoolean(const __CFBoolean *a1, __CFData **a2)
{
  Value = CFBooleanGetValue(a1);
  if (Value)
  {
    v4 = "<true/>";
  }

  else
  {
    v4 = "<false/>";
  }

  if (Value)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  v6 = *a2;

  CFDataAppendBytes(v6, v4, v5);
}

uint64_t DoCFSerializeSet(const void *a1, CFMutableDataRef *a2)
{
  if (!previouslySerialized(a1, a2))
  {
    addStartTag(a1, 0, a2);
    Count = CFSetGetCount(a1);
    if (Count)
    {
      v5 = Count;
      result = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (!result)
      {
        return result;
      }

      v7 = result;
      CFSetGetValues(a1, result);
      if (v5 < 1)
      {
        free(v7);
      }

      else
      {
        v8 = 0;
        do
        {
          v9 = DoCFSerialize(*(v7 + v8++), a2);
          if (v9)
          {
            v10 = v8 < v5;
          }

          else
          {
            v10 = 0;
          }
        }

        while (v10);
        v11 = v9;
        free(v7);
        if (!v11)
        {
          return 0;
        }
      }
    }

    addEndTag(a1, a2);
  }

  return 1;
}

CFStringRef IOCFUnserializeerror(CFStringRef result, uint64_t a2)
{
  if (result[1].data)
  {
    v2 = result;
    result = CFStringCreateWithFormat(result->data, 0, @"IOCFUnserialize: %s near line %d", a2, HIDWORD(result->info));
    *v2[1].data = result;
  }

  return result;
}

uint64_t IOCircularDataQueueCreateWithConnection()
{
  MEMORY[0x1EEE9AC00]();
  v50 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (v2)
  {
    v4 = v2;
    v5 = v1;
    v6 = v0;
    *v2 = 0;
    if ((_get_cpu_capabilities() & 0x40000000000000) != 0)
    {
      v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040E0D71B6FuLL);
      v17 = v7;
      if (v7)
      {
        v8 = v7;
        v7[14] = v6;
        v7[15] = v5;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v14 = 0;
        v15 = 0;
        v16 = 4096;
        v9 = io_connect_map_shared_memory(v6, v5, *MEMORY[0x1E69E9A60], &v15, &v14, 0, "IOCircularQueueDescription", &v18, &v16);
        printf("%x, %lx, 0x%llx, 0x%llx\n", v16, 32, v15, v14);
        if (v16 != 32)
        {
          IOCircularDataQueueCreateWithConnection_cold_1();
        }

        v10 = v19;
        *(v8 + 6) = v18;
        *(v8 + 10) = v10;
        printf("sentinel %qx\n", *(v8 + 3));
        if (v14 != v8[8])
        {
          IOCircularDataQueueCreateWithConnection_cold_2();
        }

        if (v15)
        {
          v11 = v15;
        }

        else
        {
          v11 = 0;
        }

        *(v8 + 2) = v11;
        if (*v11 == *(v8 + 3))
        {
          *v8 = -1;
          *(v8 + 1) = -1;
          *v4 = v8;
          v3 = v9;
        }

        else
        {
          IOCircularDataQueueDestroy(&v17);
        }
      }

      else
      {
        v3 = 3758097085;
      }
    }

    else
    {
      v3 = 3758097095;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOCircularDataQueueDestroy(uint64_t *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 16);
    IOConnectUnmapMemory(*(v2 + 56), *(v2 + 60), *MEMORY[0x1E69E9A60], v3);
  }

  free(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t IOCircularDataQueueGetLatest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return _getLatestInQueueMemInternal(a1, a2, a3, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueCopyLatest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 3758097090;
  }

  v6[1] = v3;
  v6[2] = v4;
  v6[0] = a2;
  return _getLatestInQueueMemInternal(a1, v6, a3, 1);
}

uint64_t IOCircularDataQueueGetNext(uint64_t a1)
{
  if (a1)
  {
    return _getNextInQueueMemInternal(a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueCopyNext(uint64_t a1)
{
  if (a1)
  {
    return _getNextInQueueMemInternal(a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueGetPrevious(uint64_t a1)
{
  if (a1)
  {
    return _getPrevInQueueMemInternal(a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueCopyPrevious(uint64_t a1)
{
  if (a1)
  {
    return _getPrevInQueueMemInternal(a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueGetCurrent(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a1)
  {
    return _getCurrentInQueueMemInternal(a1, a2, a3, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOCircularDataQueueCopyCurrent(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 3758097090;
  }

  v6[1] = v3;
  v6[2] = v4;
  v6[0] = a2;
  return _getCurrentInQueueMemInternal(a1, v6, a3, 1);
}

kern_return_t IOCreateReceivePort(uint32_t msgType, mach_port_t *recvPort)
{
  if (msgType == 57 || msgType == 53)
  {
    return mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, recvPort);
  }

  else
  {
    return -536870206;
  }
}

CFStringRef _IOObjectCopyClass(io_registry_entry_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    _IOObjectGetClass(a1, a2, v4);
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef IOObjectCopySuperclassForClass(CFStringRef classname)
{
  v1 = classname;
  v11 = *MEMORY[0x1E69E9840];
  if (classname)
  {
    memset(cStr, 0, sizeof(cStr));
    v2 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    CFStringGetCString(v1, v2, 128, 0x8000100u);
    v3 = strncpy(__dst, v2, 0x80uLL);
    mainPort = 0;
    if (IOMasterPort(v3, &mainPort))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPort;
    }

    superclass = io_object_get_superclass(v4, __dst);
    if (v4)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }

    if (superclass)
    {
      v1 = 0;
    }

    else
    {
      v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
    }

    free(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

CFStringRef IOObjectCopyBundleIdentifierForClass(CFStringRef classname)
{
  v1 = classname;
  v11 = *MEMORY[0x1E69E9840];
  if (classname)
  {
    memset(cStr, 0, sizeof(cStr));
    v2 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
    CFStringGetCString(v1, v2, 128, 0x8000100u);
    v3 = strncpy(__dst, v2, 0x80uLL);
    mainPort = 0;
    if (IOMasterPort(v3, &mainPort))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPort;
    }

    bundle_identifier = io_object_get_bundle_identifier(v4, __dst);
    if (v4)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }

    if (bundle_identifier)
    {
      v1 = 0;
    }

    else
    {
      v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
    }

    free(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

uint32_t IOObjectGetRetainCount(io_object_t object)
{
  if (io_object_get_retain_count(object))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOLean_t IOIteratorIsValid(io_iterator_t iterator)
{
  if (io_iterator_is_valid(iterator))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

kern_return_t IOServiceMatchPropertyTable(io_service_t service, CFDictionaryRef matching, BOOLean_t *matches)
{
  v3 = -536870206;
  if (matching)
  {
    v5 = IOCFSerialize(matching, gIOKitLibSerializeOptions);
    if (v5)
    {
      v6 = v5;
      Length = CFDataGetLength(v5);
      v8 = Length;
      if (gIOKitLibSerializeOptions)
      {
        if (Length <= 0xFFF)
        {
          CFDataGetBytePtr(v6);
          matched = io_service_match_property_table_bin();
          goto LABEL_9;
        }
      }

      else if (Length <= 0x1FF)
      {
        BytePtr = CFDataGetBytePtr(v6);
        matched = io_service_match_property_table(service, BytePtr);
LABEL_9:
        v3 = matched;
LABEL_13:
        CFRelease(v6);
        return v3;
      }

      v11 = CFDataGetBytePtr(v6);
      v12 = io_service_match_property_table_ool(service, v11, v8);
      if (v12)
      {
        v3 = v12;
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_13;
    }

    return -536870201;
  }

  return v3;
}

kern_return_t IONotificationPortSetImportanceReceiver(IONotificationPortRef notify)
{
  result = MEMORY[0x19A8DBBA0](*MEMORY[0x1E69E9A60], *(notify + 1), 5, 0, 0);
  if (result)
  {
    IONotificationPortSetImportanceReceiver_cold_1();
  }

  return result;
}

CFMutableDictionaryRef IOOpenFirmwarePathMatching(mach_port_t mainPort, uint32_t options, const char *path)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  __strlcpy_chk();
  if (strlen(path) <= 498)
  {
    __strlcpy_chk();
    result = MakeOneStringProp(@"IOPathMatch", v6);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t OSGetNotificationFromMessage(mach_msg_header_t *msg, uint32_t index, uint32_t *type, uintptr_t *reference, void **content, vm_size_t *size)
{
  v6 = -536870210;
  if (msg->msgh_id != 53)
  {
    return -536870202;
  }

  if (!index && msg->msgh_size >= 0x60)
  {
    if (type)
    {
      *type = msg[1].msgh_size & 0xFFF;
    }

    if (reference)
    {
      *reference = *&msg[1].msgh_remote_port;
    }

    if (size)
    {
      *size = msg[1].msgh_bits;
    }

    v6 = 0;
    if (content)
    {
      if (msg[1].msgh_bits)
      {
        v7 = msg + 4;
      }

      else
      {
        v7 = 0;
      }

      *content = v7;
    }
  }

  return v6;
}

uint64_t IOServiceGetBusyStateAndTime(unsigned int a1, void *a2, _DWORD *a3, void *a4)
{
  result = io_service_get_state(a1);
  if (result)
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  return result;
}

kern_return_t IOServiceGetBusyState(io_service_t service, uint32_t *busyState)
{
  result = io_service_get_state(service);
  if (result)
  {
    *busyState = 0;
  }

  return result;
}

uint64_t IOServiceGetState(unsigned int a1, void *a2)
{
  result = io_service_get_state(a1);
  if (result)
  {
    *a2 = 0;
  }

  return result;
}

kern_return_t IOKitGetBusyState(mach_port_t mainPort, uint32_t *busyState)
{
  v4 = mainPort;
  if (!mainPort)
  {
    mainPorta[0] = 0;
    if (IOMasterPort(0, mainPorta))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPorta[0];
    }
  }

  v5 = io_registry_entry_from_path(v4, "IOService:/");
  if (v5)
  {
    state = v5;
    *busyState = 0;
    if (!v4)
    {
      return state;
    }

    goto LABEL_11;
  }

  *mainPorta = 0;
  state = io_service_get_state(0);
  if (state)
  {
    *busyState = 0;
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], 0);
  if (v4)
  {
LABEL_11:
    if (v4 != mainPort)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }
  }

  return state;
}

kern_return_t IOServiceWaitQuiet(io_service_t service, mach_timespec_t *waitTime)
{
  v2 = &unk_19723D780;
  if (waitTime)
  {
    v2 = waitTime;
  }

  return io_service_wait_quiet(service, *v2);
}

kern_return_t IOKitWaitQuiet(mach_port_t mainPort, mach_timespec_t *waitTime)
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

  v5 = io_registry_entry_from_path(v4, "IOService:/");
  if (!v5)
  {
    v6 = &unk_19723D780;
    if (waitTime)
    {
      v6 = waitTime;
    }

    v5 = io_service_wait_quiet(0, *v6);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], 0);
  }

  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return v5;
}

kern_return_t IOServiceAuthorize(io_service_t service, uint32_t options)
{
  uint64 = -536870211;
  if (io_registry_entry_get_registry_entry_id(service))
  {
    return -536870206;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, "options", options);
    xpc_dictionary_set_uint64(v5, "service", 0);
    v6 = xpc_connection_create("com.apple.iokit.IOServiceAuthorizeAgent", 0);
    if (v6)
    {
      v7 = v6;
      xpc_connection_set_event_handler(v6, &__block_literal_global_0);
      xpc_connection_resume(v7);
      v8 = xpc_connection_send_message_with_reply_sync(v7, v5);
      if (v8)
      {
        v9 = v8;
        if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
        {
          uint64 = xpc_dictionary_get_uint64(v9, "status");
        }

        else
        {
          uint64 = -536870202;
        }

        xpc_release(v9);
      }

      else
      {
        uint64 = -536870207;
      }

      xpc_release(v7);
    }

    else
    {
      uint64 = -536870201;
    }

    xpc_release(v5);
  }

  return uint64;
}

int IOServiceOpenAsFileDescriptor(io_service_t service, int oflag)
{
  if (io_registry_entry_get_registry_entry_id(service))
  {
    v3 = -1;
    uint64 = 49174;
    goto LABEL_3;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "oflag", oflag);
    xpc_dictionary_set_uint64(v7, "service", 0);
    v8 = xpc_connection_create("com.apple.iokit.ioserviceauthorized", 0);
    if (v8)
    {
      v9 = v8;
      xpc_connection_set_event_handler(v8, &__block_literal_global_34);
      xpc_connection_resume(v9);
      v10 = xpc_connection_send_message_with_reply_sync(v9, v7);
      if (!v10)
      {
        uint64 = 49165;
        v3 = -1;
        goto LABEL_17;
      }

      v11 = v10;
      if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
      {
        uint64 = xpc_dictionary_get_uint64(v11, "status");
        if (!uint64)
        {
          v3 = xpc_dictionary_dup_fd(v11, "fd");
          goto LABEL_16;
        }
      }

      else
      {
        uint64 = 49246;
      }

      v3 = -1;
LABEL_16:
      xpc_release(v11);
LABEL_17:
      xpc_release(v9);
      xpc_release(v7);
      if (!uint64)
      {
        return v3;
      }

      goto LABEL_3;
    }

    xpc_release(v7);
    v3 = -1;
    uint64 = 49197;
  }

  else
  {
    v3 = -1;
    uint64 = 49164;
  }

LABEL_3:
  if ((uint64 & 0x3FFF | 0xC000) == uint64)
  {
    *__error() = uint64 & 0x3FFF;
  }

  return v3;
}

io_registry_entry_t IORegistryEntryCopyFromPath(mach_port_t mainPort, CFStringRef path)
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

  CStringPtr = CFStringGetCStringPtr(path, 0x8000100u);
  if (CStringPtr)
  {
    v6 = CStringPtr;
    v7 = 0;
    goto LABEL_7;
  }

  Length = CFStringGetLength(path);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0xABC17BFBuLL);
  if (!v11)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v11;
  CString = CFStringGetCString(path, v11, MaximumSizeForEncoding + 4, 0x8000100u);
  v7 = v6;
  if (!CString)
  {
LABEL_18:
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_7:
  strlen(v6);
  if (io_registry_entry_from_path_ool())
  {
    goto LABEL_18;
  }

  if (v7)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return 0;
}

BOOLean_t IORegistryEntryInPlane(io_registry_entry_t entry, const io_name_t plane)
{
  if (io_registry_entry_in_plane(entry, plane))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

kern_return_t IORegistryEntryGetNameInPlane(io_registry_entry_t entry, const io_name_t plane, io_name_t name)
{
  if (!plane)
  {
    plane = "";
  }

  return io_registry_entry_get_name_in_plane(entry, plane);
}

kern_return_t IORegistryEntryGetLocationInPlane(io_registry_entry_t entry, const io_name_t plane, io_name_t location)
{
  if (!plane)
  {
    plane = "";
  }

  return io_registry_entry_get_location_in_plane(entry, plane);
}

kern_return_t IORegistryEntryGetChildEntry(io_registry_entry_t entry, const io_name_t plane, io_registry_entry_t *child)
{
  result = io_registry_entry_get_child_iterator(entry, plane);
  if (!result)
  {
    io_iterator_next(0);
    *child = 0;
    mach_port_deallocate(*MEMORY[0x1E69E9A60], 0);
    if (*child)
    {
      return 0;
    }

    else
    {
      return -536870208;
    }
  }

  return result;
}

kern_return_t IOServiceOFPathToBSDName(mach_port_t mainPort, const io_name_t openFirmwarePath, io_name_t bsdName)
{
  existing = 0;
  *bsdName = 0;
  v5 = IOOpenFirmwarePathMatching(mainPort, openFirmwarePath, openFirmwarePath);
  MatchingServices = IOServiceGetMatchingServices(mainPort, v5, &existing);
  if (!MatchingServices)
  {
    v14 = 0;
    v7 = io_iterator_next(existing);
    v8 = v14;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v14 == 0;
    }

    v10 = MEMORY[0x1E69E9A60];
    if (v9)
    {
      MatchingServices = 5;
    }

    else
    {
      property_bytes = io_registry_entry_get_property_bytes();
      MatchingServices = property_bytes;
      if (property_bytes)
      {
        *bsdName = 0;
      }

      mach_port_deallocate(*v10, v8);
    }

    mach_port_deallocate(*v10, existing);
  }

  return MatchingServices;
}

kern_return_t IOCatalogueSendData(mach_port_t mainPort, uint32_t flag, const char *buffer, uint32_t size)
{
  v8 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v8 = 0;
    }

    else
    {
      v8 = mainPorta;
    }
  }

  v9 = io_catalog_send_data(v8, flag, buffer, size);
  if (v8 && v8 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

kern_return_t IOCatalogueTerminate(mach_port_t mainPort, uint32_t flag, io_name_t description)
{
  v6 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v6 = 0;
    }

    else
    {
      v6 = mainPorta;
    }
  }

  v7 = io_catalog_terminate(v6, flag, description);
  if (v6 && v6 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  }

  return v7;
}

kern_return_t IOCatalogueGetData(mach_port_t mainPort, uint32_t flag, char **buffer, uint32_t *size)
{
  v6 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v6 = 0;
    }

    else
    {
      v6 = mainPorta;
    }
  }

  data = io_catalog_get_data(v6, flag);
  if (v6 && v6 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  }

  return data;
}

uint64_t IOCatlogueGetGenCount(mach_port_t a1)
{
  v2 = a1;
  if (!a1)
  {
    mainPort = 0;
    if (IOMasterPort(0, &mainPort))
    {
      v2 = 0;
    }

    else
    {
      v2 = mainPort;
    }
  }

  gen_count = io_catalog_get_gen_count(v2);
  if (v2 && v2 != a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  return gen_count;
}

kern_return_t IOCatalogueModuleLoaded(mach_port_t mainPort, io_name_t name)
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

  v5 = io_catalog_module_loaded(v4, name);
  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return v5;
}

kern_return_t IOCatalogueReset(mach_port_t mainPort, uint32_t flag)
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

  v5 = io_catalog_reset(v4, flag);
  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return v5;
}

uint64_t IORegistryCreateEnumerator(mach_port_t a1, _DWORD *a2)
{
  v4 = a1;
  if (!a1)
  {
    mainPort = 0;
    if (IOMasterPort(0, &mainPort))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPort;
    }
  }

  iterator = io_registry_create_iterator(v4, "IOService", 1, a2);
  if (v4 && v4 != a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return iterator;
}

uint64_t IORegistryEnumeratorNextConforming(unsigned int a1)
{
  io_iterator_next(a1);
  lastRegIter = 0;
  return 3758097088;
}

uint64_t IOOpenConnection(uint64_t a1, int a2, int a3)
{
  v3 = io_service_open_extended(lastRegIter, a2, a3, *MEMORY[0x1E69E99E0], 0, 0);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], lastRegIter);
  return v4;
}

uint64_t readFile(const char *a1, void *a2, off_t *a3)
{
  memset(&v11, 0, sizeof(v11));
  *a2 = 0;
  *a3 = 0;
  v5 = open(a1, 0, *&v11.st_dev, *&v11.st_uid, *&v11.st_atimespec, *&v11.st_mtimespec, *&v11.st_ctimespec, *&v11.st_birthtimespec);
  if (v5 != -1)
  {
    v6 = v5;
    if (fstat(v5, &v11) != -1)
    {
      if ((v11.st_mode & 0x80000000) == 0)
      {
        *a2 = 0;
        *a3 = 0;
        v7 = 3758097102;
LABEL_10:
        close(v6);
        return v7;
      }

      st_size = v11.st_size;
      *a3 = v11.st_size;
      v9 = mmap(0, (st_size + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1, 2, v6, 0);
      *a2 = v9;
      if (v9)
      {
        v7 = 0;
        goto LABEL_10;
      }

      *a3 = 0;
    }

    v7 = *__error();
    goto LABEL_10;
  }

  return *__error();
}

CFPropertyListRef readPlist(const char *a1)
{
  v8 = 0;
  v9 = 0;
  v1 = 0;
  if (!readFile(a1, &v9, &v8))
  {
    v2 = *MEMORY[0x1E695E480];
    v4 = v8;
    v3 = v9;
    v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v9, v8, *MEMORY[0x1E695E498]);
    if (v5)
    {
      v6 = v5;
      v1 = CFPropertyListCreateFromXMLData(v2, v5, 1uLL, 0);
      CFRelease(v6);
    }

    else
    {
      v1 = 0;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v3, v4);
  }

  return v1;
}

BOOL writePlist(const char *a1, const void *a2)
{
  XMLData = CFPropertyListCreateXMLData(*MEMORY[0x1E695E480], a2);
  if (!XMLData)
  {
    return 0;
  }

  v4 = XMLData;
  v5 = open(a1, 1537, 420);
  if (v5 < 0)
  {
    v10 = 0;
  }

  else
  {
    v6 = v5;
    Length = CFDataGetLength(v4);
    if (Length)
    {
      v8 = Length;
      BytePtr = CFDataGetBytePtr(v4);
      v10 = v8 == write(v6, BytePtr, v8);
    }

    else
    {
      v10 = 1;
    }

    close(v6);
  }

  CFRelease(v4);
  return v10;
}

uint64_t IOServiceCopySystemStateNotificationService(mach_port_t a1, io_service_t *a2)
{
  OneStringProp = MakeOneStringProp(@"IOProviderClass", "IOSystemStateNotification");
  MatchingService = IOServiceGetMatchingService(a1, OneStringProp);
  *a2 = MatchingService;
  if (MatchingService)
  {
    return 0;
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOServiceStateNotificationItemCreate(io_registry_entry_t a1, const void *a2, const __CFDictionary *a3)
{
  if (!a2 || !a3)
  {
    return 3758097090;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
  CFDictionarySetValue(MutableCopy, @"com.apple.iokit.statenotification.name", a2);
  v6 = IORegistryEntrySetCFProperty(a1, @"com.apple.iokit.statenotification.create", MutableCopy);
  CFRelease(MutableCopy);
  return v6;
}

uint64_t IOServiceStateNotificationItemSet(io_registry_entry_t a1, const void *a2, const __CFDictionary *a3)
{
  if (!a2 || !a3)
  {
    return 3758097090;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
  CFDictionarySetValue(MutableCopy, @"com.apple.iokit.statenotification.name", a2);
  v6 = IORegistryEntrySetCFProperty(a1, @"com.apple.iokit.statenotification.set", MutableCopy);
  CFRelease(MutableCopy);
  return v6;
}

uint64_t IOServiceStateNotificationItemCopy(io_registry_entry_t a1, const void *a2, void *a3, IOOptionBits a4)
{
  properties = 0;
  result = IORegistryEntryCreateCFProperties(a1, &properties, *MEMORY[0x1E695E480], a4);
  if (!result)
  {
    Value = CFDictionaryGetValue(properties, a2);
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
      result = 0;
    }

    else
    {
      result = 3758097136;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t _IOReadBytesFromFile(uint64_t result, char *a2, void **a3, off_t *a4, off_t a5)
{
  if (result)
  {
    v8 = result;
    *a3 = 0;
    v9 = open(a2, 0, 438);
    if (v9 < 0)
    {
      return 0;
    }

    v10 = v9;
    memset(&v17, 0, sizeof(v17));
    if (fstat(v9, &v17) < 0)
    {
      v14 = *__error();
      close(v10);
      v15 = __error();
      result = 0;
      *v15 = v14;
    }

    else if ((v17.st_mode & 0xF000) == 0x8000)
    {
      if (v17.st_size)
      {
        if (v17.st_size >= a5)
        {
          st_size = a5;
        }

        else
        {
          st_size = v17.st_size;
        }

        if (a5)
        {
          v12 = st_size;
        }

        else
        {
          v12 = v17.st_size;
        }

        v13 = MEMORY[0x19A8DA570](v8, v12, 3622298151, 0);
        *a3 = v13;
        if (read(v10, v13, v12) < 0)
        {
          CFAllocatorDeallocate(v8, *a3);
          *a3 = 0;
          close(v10);
          return 0;
        }
      }

      else
      {
        v12 = 0;
        *a3 = MEMORY[0x19A8DA570](v8, 4, 1738813705, 0);
      }

      *a4 = v12;
      close(v10);
      return 1;
    }

    else
    {
      close(v10);
      v16 = __error();
      result = 0;
      *v16 = 13;
    }
  }

  return result;
}

uint64_t _IOWriteBytesToFile(const char *a1, const void *a2, size_t a3)
{
  memset(&v12, 0, sizeof(v12));
  v6 = umask(0);
  umask(v6);
  if (stat(a1, &v12) && *__error() != 2)
  {
    return 0;
  }

  v7 = open(a1, 1537, 438);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  if (a3 && write(v7, a2, a3) != a3)
  {
    v10 = *__error();
    close(v8);
    v11 = __error();
    result = 0;
    *v11 = v10;
  }

  else
  {
    fsync(v8);
    close(v8);
    return 1;
  }

  return result;
}

uint64_t IODPHDMIControllerPortGetTypeID()
{
  result = __kIODPHDMIControllerPortTypeID;
  if (!__kIODPHDMIControllerPortTypeID)
  {
    pthread_once(&__portTypeInit, __IODPHDMIControllerPortRegister);
    return __kIODPHDMIControllerPortTypeID;
  }

  return result;
}

uint64_t __IODPHDMIControllerPortRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIODPHDMIControllerPortTypeID = result;
  return result;
}

uint64_t IODPHDMIControllerPortCreate(uint64_t a1, int a2, int a3)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IODPCopyFirstMatchingPort("IODPHDMIControllerPort", IODPHDMIControllerPortCreateWithService, a2, a3, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPHDMIControllerPortGetAddress(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 24);
  *a3 = *(result + 28);
  return result;
}

uint64_t IODPHDMIControllerPortSetPortEnable(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPHDMIControllerPortSetHDMIHPD(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IODPHDMIControllerPortFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

IOReturn IODataQueueSetNotificationPort(IODataQueueMemory *dataQueue, mach_port_t notifyPort)
{
  if (!dataQueue)
  {
    return -536870206;
  }

  result = 0;
  v4 = dataQueue + dataQueue->queueSize;
  *(v4 + 2) = 0x1800000013;
  *(v4 + 6) = notifyPort;
  *(v4 + 7) = 0;
  *(v4 + 9) = 0;
  return result;
}

uint64_t __IOCFPlugInLog()
{
  if (__IOCFPlugInLog_onceToken != -1)
  {
    __IOCFPlugInLog_cold_1();
  }

  return __IOCFPlugInLog_log;
}

uint64_t __IOHIDServiceConnectionCacheGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __serviceConnectionCacheTypeID = result;
  return result;
}

void __IOHIDServiceConnectionCacheFree(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

io_connect_t IOPMFindPowerManagement(mach_port_t master_device_port)
{
  result = IORegistryEntryFromPath(master_device_port, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (result)
  {
    v2 = result;
    connect = 0;
    v3 = IOServiceOpen(result, *MEMORY[0x1E69E9A60], 0, &connect);
    IOObjectRelease(v2);
    if (v3)
    {
      return 0;
    }

    else
    {
      return connect;
    }
  }

  return result;
}

IOReturn IOPMGetAggressiveness(io_connect_t fb, unint64_t type, unint64_t *aggressiveness)
{
  output = 0;
  input = type;
  outputCnt = 1;
  v4 = IOConnectCallScalarMethod(fb, 1u, &input, 1u, &output, &outputCnt);
  *aggressiveness = output;
  if (v4)
  {
    return -536870212;
  }

  else
  {
    return 0;
  }
}

IOReturn IOPMSetAggressiveness(io_connect_t fb, unint64_t type, unint64_t aggressiveness)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = type;
  input[1] = aggressiveness;
  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(fb, 0, input, 2u, &output, &outputCnt))
  {
    result = -536870212;
  }

  else
  {
    result = output;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

IOReturn IOPMSleepSystem(io_connect_t fb)
{
  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(fb, 2u, 0, 0, &output, &outputCnt))
  {
    return -536870212;
  }

  else
  {
    return output;
  }
}

uint64_t IOPMSleepSystemWithOptions(mach_port_t connection, CFTypeRef object)
{
  v9 = 4;
  outputStruct = 0;
  if (object)
  {
    v3 = IOCFSerialize(object, 0);
    if (v3)
    {
      v4 = v3;
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v4);
      v7 = IOConnectCallStructMethod(connection, 7u, BytePtr, Length, &outputStruct, &v9);
      CFRelease(v4);
      if (!v7)
      {
        return outputStruct;
      }
    }

    else
    {
      return 3758097097;
    }
  }

  else
  {
    output = 0;
    outputCnt = 1;
    if (IOConnectCallScalarMethod(connection, 2u, 0, 0, &output, &outputCnt))
    {
      return 3758097084;
    }

    else
    {
      return output;
    }
  }

  return v7;
}

IOReturn IOPMCopyBatteryInfo(mach_port_t masterPort, CFArrayRef *info)
{
  v3 = -536870201;
  *info = 0;
  v4 = IORegistryEntryFromPath(masterPort, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v4)
  {
    return -536870201;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E695E480];
  *info = IORegistryEntryCreateCFProperty(v4, @"IOBatteryInfo", *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v5);
  result = 0;
  if (*info)
  {
    return result;
  }

  existing = 0;
  Mutable = CFArrayCreateMutable(v6, 1, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return -536870211;
  }

  v9 = Mutable;
  v10 = IOServiceMatching("IOPMPowerSource");
  if (!IOServiceGetMatchingServices(0, v10, &existing))
  {
    v11 = IOIteratorNext(existing);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v12, @"LegacyBatteryInfo", v6, 0);
        if (CFProperty)
        {
          v15 = CFProperty;
          ++v13;
          CFArrayAppendValue(v9, CFProperty);
          CFRelease(v15);
          IOObjectRelease(v12);
        }

        v12 = IOIteratorNext(existing);
      }

      while (v12);
      IOObjectRelease(existing);
      if (v13 >= 1)
      {
        v3 = 0;
        *info = v9;
        return v3;
      }
    }

    else
    {
      IOObjectRelease(existing);
    }

    CFRelease(v9);
    return v3;
  }

  CFRelease(v9);
  return -536870212;
}

io_connect_t IORegisterApp(void *refcon, io_service_t theDriver, IONotificationPortRef *thePortRef, IOServiceInterestCallback callback, io_object_t *notifier)
{
  connect = 0;
  *notifier = 0;
  if (!theDriver)
  {
    return 0;
  }

  v10 = IOServiceOpen(theDriver, *MEMORY[0x1E69E9A60], 0, &connect);
  result = connect;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = connect == 0;
  }

  if (v12 || (v13 = IOServiceAddInterestNotification(*thePortRef, theDriver, "IOAppPowerStateInterest", callback, refcon, notifier), result = connect, v13))
  {
    if (result)
    {
      IOServiceClose(result);
    }

    result = *notifier;
    if (*notifier)
    {
      IOObjectRelease(result);
      return 0;
    }
  }

  return result;
}

IOReturn IODeregisterApp(io_object_t *notifier)
{
  v2 = *notifier;
  if (v2)
  {
    IOObjectRelease(v2);
    *notifier = 0;
  }

  return 0;
}

IOReturn IOCancelPowerChange(io_connect_t kernelPort, intptr_t notificationID)
{
  input = notificationID;
  if (IOConnectCallScalarMethod(kernelPort, 4u, &input, 1u, 0, 0))
  {
    return -536870212;
  }

  else
  {
    return 0;
  }
}

BOOLean_t IOPMSleepEnabled(void)
{
  v0 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"IOSleepSupported", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    CFRelease(CFProperty);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  IOObjectRelease(v1);
  return v3;
}

IOSystemLoadAdvisoryLevel IOGetSystemLoadAdvisory(void)
{
  out_token = 0;
  v1 = 0;
  if (notify_register_check("com.apple.system.powermanagement.SystemLoadAdvisory", &out_token))
  {
    return 2;
  }

  notify_get_state(out_token, &v1);
  notify_cancel(out_token);
  return v1;
}

CFDictionaryRef IOCopySystemLoadAdvisoryDetailed(void)
{
  v0 = *MEMORY[0x1E695E480];
  v1 = _io_SCDynamicStoreKeyCreate(*MEMORY[0x1E695E480], @"%@%@", @"State:", @"/IOKit/PowerManagement/SystemLoad/Detailed");
  v2 = _io_SCDynamicStoreCreate(v0, @"IOKit IOGetSystemLoadAdvisoryDetailed", 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = _io_SCDynamicStoreCopyValue(v2, v1);
    v5 = v7;
    if (v7)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v5) != TypeID)
      {
        CFRelease(v5);
        v5 = 0;
      }
    }

LABEL_13:
    CFRelease(v1);
    if (!v3)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (v1)
  {
    goto LABEL_13;
  }

  if (v2)
  {
LABEL_8:
    CFRelease(v3);
  }

  return v5;
}

void *IOPMRegisterPrefsChangeNotification(NSObject *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4 && notify_register_dispatch("com.apple.system.powermanagement.prefschange", v4, a1, a2))
  {
    free(v4);
    return 0;
  }

  return v4;
}

void IOPMUnregisterPrefsChangeNotification(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      notify_cancel(v2);
    }

    *a1 = 0;

    free(a1);
  }
}

uint64_t getHostPrefsPath()
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = xmmword_19723D7D0;
  v0 = getHostPrefsPath_uuidStr;
  TypeID = CFStringGetTypeID();
  if (!v0 || CFGetTypeID(v0) != TypeID)
  {
    memset(v9, 0, sizeof(v9));
    v2 = gethostuuid(v9, &v6);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = v3;
        _os_log_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get UUID. rc=%d\n", buf, 8u);
      }
    }

    else
    {
      snprintf(buf, 0x64uLL, "%s.%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X", "com.apple.PowerManagement", v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]);
      getHostPrefsPath_uuidStr = CFStringCreateWithCString(*MEMORY[0x1E695E480], buf, 0);
    }
  }

  result = getHostPrefsPath_uuidStr;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFSet *isA_GenericPref(void *value)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[4] = xmmword_1E74A7950;
  v4[5] = *off_1E74A7960;
  v5 = @"VAC-T";
  v4[0] = xmmword_1E74A7910;
  v4[1] = *&off_1E74A7920;
  v4[2] = xmmword_1E74A7930;
  v4[3] = *&off_1E74A7940;
  result = isA_GenericPref_genericSet;
  if (isA_GenericPref_genericSet || (result = CFSetCreate(0, v4, 13, MEMORY[0x1E695E9F8]), (isA_GenericPref_genericSet = result) != 0))
  {
    result = (CFSetContainsValue(result, value) != 0);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *copyPreferencesForSrc(__CFString *a1)
{
  HostPrefsPath = getHostPrefsPath();
  v3 = IOPMCopyFromPrefs(@"com.apple.PowerManagement", a1);
  TypeID = CFDictionaryGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
  }

  else
  {
    MutableCopy = 0;
  }

  v6 = IOPMCopyFromPrefs(HostPrefsPath, a1);
  v7 = CFDictionaryGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
LABEL_9:
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (MutableCopy)
  {
    mergeDictIntoMutable(MutableCopy, v6, 0);
    goto LABEL_9;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
  if (v3)
  {
LABEL_10:
    CFRelease(v3);
  }

LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return MutableCopy;
}

CFPropertyListRef IOPMCopyFromPrefs(__CFString *a1, __CFString *value)
{
  HostPrefsPath = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  if (isA_GenericPref(value))
  {
    HostPrefsPath = @"com.apple.PowerManagement";
LABEL_4:
    TypeID = CFStringGetTypeID();
    goto LABEL_5;
  }

  HostPrefsPath = getHostPrefsPath();
  TypeID = CFStringGetTypeID();
  if (!HostPrefsPath)
  {
    return 0;
  }

LABEL_5:
  if (CFGetTypeID(HostPrefsPath) != TypeID)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E8A0];
  v6 = *MEMORY[0x1E695E8B0];

  return CFPreferencesCopyValue(value, HostPrefsPath, v5, v6);
}

void mergeDictIntoMutable(__CFDictionary *a1, CFDictionaryRef theDict, int a3)
{
  Count = CFDictionaryGetCount(theDict);
  v7 = Count;
  if (!Count)
  {
    return;
  }

  v8 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v9 = malloc_type_malloc(8 * v7, 0xC0040B8AA526DuLL);
  v10 = v9;
  if (v8 && v9)
  {
    CFDictionaryGetKeysAndValues(theDict, v8, v9);
    if (v7 >= 1)
    {
      v11 = v7 & 0x7FFFFFFF;
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v12;
        v15 = *v13;
        if (a3)
        {
          CFDictionarySetValue(a1, v14, v15);
        }

        else
        {
          CFDictionaryAddValue(a1, v14, v15);
        }

        ++v13;
        ++v12;
        --v11;
      }

      while (v11);
    }
  }

  else if (!v8)
  {
    goto LABEL_13;
  }

  free(v8);
LABEL_13:
  if (v10)
  {

    free(v10);
  }
}

uint64_t setPreferencesForSrc(__CFString *a1, const __CFDictionary *a2, int a3)
{
  HostPrefsPath = getHostPrefsPath();
  if (!a2)
  {
    CFPreferencesSetValue(a1, 0, @"com.apple.PowerManagement", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
    goto LABEL_26;
  }

  Count = CFDictionaryGetCount(a2);
  if (!Count)
  {
LABEL_26:
    v9 = 0;
    v12 = 0;
    v15 = 0;
    v11 = 0;
    goto LABEL_27;
  }

  v7 = Count;
  v8 = 8 * Count;
  v9 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v10 = malloc_type_malloc(v8, 0xC0040B8AA526DuLL);
  v11 = v10;
  v12 = 0;
  v13 = 1;
  if (!v9 || !v10)
  {
    v15 = 0;
    goto LABEL_32;
  }

  CFDictionaryGetKeysAndValues(a2, v9, v10);
  if (v7 >= 1)
  {
    v14 = 0;
    v12 = 0;
    v15 = 0;
    while (1)
    {
      if (isA_GenericPref(v9[v14]))
      {
        if (v15)
        {
          MutableCopy = v15;
        }

        else
        {
          v17 = IOPMCopyFromPrefs(@"com.apple.PowerManagement", a1);
          if (v17)
          {
            v18 = v17;
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
            CFRelease(v18);
            if (!MutableCopy)
            {
              goto LABEL_22;
            }
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!MutableCopy)
            {
LABEL_22:
              v15 = 0;
              goto LABEL_19;
            }
          }

          v15 = MutableCopy;
        }
      }

      else if (v12)
      {
        MutableCopy = v12;
      }

      else
      {
        v19 = IOPMCopyFromPrefs(HostPrefsPath, a1);
        if (v19)
        {
          v20 = v19;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v19);
          CFRelease(v20);
          if (!MutableCopy)
          {
            goto LABEL_24;
          }
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!MutableCopy)
          {
LABEL_24:
            v12 = 0;
            goto LABEL_19;
          }
        }

        v12 = MutableCopy;
      }

      CFDictionarySetValue(MutableCopy, v9[v14], v11[v14]);
LABEL_19:
      if (v7 == ++v14)
      {
        if (v15)
        {
          CFPreferencesSetValue(a1, v15, @"com.apple.PowerManagement", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
          v13 = 0;
          goto LABEL_32;
        }

LABEL_27:
        v13 = 1;
        goto LABEL_32;
      }
    }
  }

  v12 = 0;
  v15 = 0;
LABEL_32:
  if (a3)
  {
    v21 = CFPreferencesSynchronize(@"com.apple.PowerManagement", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]) != 0;
    if (!HostPrefsPath)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v21 = 0;
    if (!HostPrefsPath)
    {
      goto LABEL_42;
    }
  }

  if (v12)
  {
    v22 = *MEMORY[0x1E695E8A0];
    v23 = *MEMORY[0x1E695E8B0];
    v24 = a1;
    v25 = v12;
LABEL_38:
    CFPreferencesSetValue(v24, v25, HostPrefsPath, v22, v23);
    goto LABEL_40;
  }

  if (!a2)
  {
    v22 = *MEMORY[0x1E695E8A0];
    v23 = *MEMORY[0x1E695E8B0];
    v24 = a1;
    v25 = 0;
    goto LABEL_38;
  }

LABEL_40:
  if (a3)
  {
    v21 = (v21 & CFPreferencesSynchronize(HostPrefsPath, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]));
  }

LABEL_42:
  if (v9)
  {
    free(v9);
  }

  if (v11)
  {
    free(v11);
  }

  if ((v13 & 1) == 0)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v21;
}