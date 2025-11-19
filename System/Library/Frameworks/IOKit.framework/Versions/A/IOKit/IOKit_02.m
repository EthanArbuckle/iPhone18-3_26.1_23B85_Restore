void _IOHIDServiceTerminate(void *a1)
{
  CFRetain(a1);
  v2 = a1[10];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___IOHIDServiceTerminate_block_invoke;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = a1;
  dispatch_async(v2, block);
}

void _IOHIDEventSystemUnregisterEventFilter(uint64_t a1, CFSetRef *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Count = CFArrayGetCount(*(a1 + 80));
  if (Count < 1)
  {
LABEL_8:
    v9 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v6);
      if (ValueAtIndex && ValueAtIndex == a2)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    v9 = ValueAtIndex;
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(a1 + 80), v6);
  }

  os_unfair_recursive_lock_unlock();
  v10 = _IOHIDEventSystemConnectionCopyServices(a2);
  v11 = v10;
  if (v10)
  {
    CFSetApplyFunction(v10, __IOHIDEventSystemFilterEventServiceUnregister, a2);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

CFSetRef _IOHIDEventSystemConnectionCopyServices(CFSetRef *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v2, a1[10]);
  os_unfair_recursive_lock_unlock();
  return Copy;
}

uint64_t __IOHIDServiceNotification(uint64_t result, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  _IOHIDDebugTrace(8260, 0, result, a3, 0, 0);
  if (pthread_mutex_lock((*(v4 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v17, v18);
  }

  ++**(v4 + 72);
  switch(a3)
  {
    case 0xE0000010:
      Count = CFSetGetCount(*(v4 + 104));
      __IOHIDServiceCompleteInProgressEvents(v4);
      *(v4 + 224) |= 1u;
      if (Count)
      {
        v11 = CFGetAllocator(*(v4 + 104));
        Copy = CFSetCreateCopy(v11, *(v4 + 104));
        if (Copy)
        {
          v13 = Copy;
          CFRetain(v4);
          global_queue = dispatch_get_global_queue(0, 0);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 0x40000000;
          v15[2] = ____IOHIDServiceNotification_block_invoke_2;
          v15[3] = &__block_descriptor_tmp_285;
          v15[4] = v13;
          v15[5] = v4;
          v9 = v15;
          goto LABEL_13;
        }
      }

      break;
    case 0xE0000100:
      __IOHIDServiceCompleteInProgressEvents(v4);
      break;
    case 0xE0000130:
      if (CFSetGetCount(*(v4 + 112)))
      {
        v5 = CFGetAllocator(*(v4 + 112));
        v6 = CFSetCreateCopy(v5, *(v4 + 112));
        if (v6)
        {
          v7 = v6;
          CFRetain(v4);
          global_queue = dispatch_get_global_queue(0, 0);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 0x40000000;
          v16[2] = ____IOHIDServiceNotification_block_invoke;
          v16[3] = &__block_descriptor_tmp_284;
          v16[4] = v7;
          v16[5] = v4;
          v9 = v16;
LABEL_13:
          dispatch_async(global_queue, v9);
        }
      }

      break;
  }

  result = *(v4 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v17, v18);
    }
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOHIDServiceCompleteInProgressEvents(CFTypeRef *cf)
{
  if (*(cf + 72))
  {
    CFGetAllocator(cf);
    mach_absolute_time();
    IOHIDEventCreateScrollEvent();
    if (v2)
    {
      v3 = v2;
      IOHIDEventSetScrollMomentum(v2, 4);
      __IOHIDServiceEventCallback(cf, v4, v5, v3);
      CFRelease(v3);
    }
  }

  if (*(cf + 73))
  {
    v6 = CFGetAllocator(cf);
    v7 = mach_absolute_time();
    DigitizerEvent = IOHIDEventCreateDigitizerEvent(v6, v7, 0, 0, 0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0x800000);
    if (DigitizerEvent)
    {
      v11 = DigitizerEvent;
      __IOHIDServiceEventCallback(cf, v9, v10, DigitizerEvent);
      CFRelease(v11);
    }
  }

  v12 = CFGetAllocator(cf[33]);
  Copy = CFSetCreateCopy(v12, cf[33]);
  if (Copy)
  {
    v14 = Copy;
    CFSetApplyFunction(Copy, __IOHIDServiceCompleteEventsInProgressApplier, cf);
    CFRelease(v14);
  }

  if (cf[34])
  {
    for (i = 0; i != 64; ++i)
    {
      if ((cf[34] >> i))
      {
        v16 = CFGetAllocator(cf);
        v17 = mach_absolute_time();
        v18 = IOHIDEventCreate(v16, i, v17, 0x800000);
        if (v18)
        {
          v21 = v18;
          __IOHIDServiceEventCallback(cf, v19, v20, v18);
          CFRelease(v21);
        }
      }
    }
  }

  v22 = CFGetAllocator(cf);
  v23 = mach_absolute_time();
  v24 = IOHIDEventCreate(v22, 0, v23, 0x800000);
  if (v24)
  {
    v27 = v24;
    __IOHIDServiceEventCallback(cf, v25, v26, v24);

    CFRelease(v27);
  }
}

uint64_t ServiceDictClientFunctionRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    result = _IOHIDServiceRemoveConnection(a2, *(a3 + 8), i);
  }

  return result;
}

const void **IOHIDNotificationSignalWithBlock(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = (result + 9);
  if ((atomic_fetch_add(result + 18, 1u) & 0x80000000) == 0)
  {
    result = (*(a2 + 16))(a2, result[7], result[8], result[3], result[4], result[5]);
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == -2147483647)
  {

    return __IOHIDNotificationInvalidateCompletion(v2);
  }

  return result;
}

uint64_t _IOHIDServiceRemovePropertiesForClient(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v7, v8);
  }

  ++**(a1 + 72);
  CFDictionaryRemoveValue(*(a1 + 240), a2);
  result = *(a1 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v7, v8);
    }
  }

  if ((*(a1 + 296) & 2) != 0)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __IOHIDServiceUpdateIntervals(a1, a2);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t __SetNumPropertyForService(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  valuePtr = a3;
  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 32);
    if (v10 && (v11 = *(*v10 + 56)) != 0)
    {
      v12 = v11();
    }

    else
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        v14 = *(*v13 + 56);
        if (v14)
        {
          v14();
          v15 = 1;
LABEL_15:
          CFRelease(v9);
          return v15;
        }
      }

      v16 = *(a1 + 360);
      if (v16 && (v17 = *(v16 + 32)) != 0)
      {
        v12 = v17(*(a1 + 344), *(a1 + 352), a2, v9);
      }

      else
      {
        v18 = *(a1 + 480);
        if (!v18)
        {
          v15 = 0;
          goto LABEL_15;
        }

        v12 = [v18 *(a1 + 504)];
      }
    }

    v15 = v12;
    goto LABEL_15;
  }

  return 0;
}

BOOL __IOHIDServiceVirtualSetPropertyCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  _IOHIDServiceGetSenderID(a1);
  HIDWORD(v31) = 0;
  *keys = xmmword_1E74A9410;
  values[0] = a3;
  values[1] = a4;
  v7 = CFGetAllocator(a2);
  v8 = CFDictionaryCreate(v7, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], v8);
  v10 = v9;
  if (v9)
  {
    if (!*(a2 + 456))
    {
      v11 = *(a2 + 40);
      CFDataGetBytePtr(v9);
      CFDataGetLength(v10);
      v12 = OUTLINED_FUNCTION_13_2();
      v18 = iohideventsystem_client_dispatch_virtual_service_set_property(v12, v13, v14, v15, v16, v17);
      if (v18)
      {
        v19 = v18;
        v20 = _IOHIDLogCategory(9u);
        if (OUTLINED_FUNCTION_20_0(v20))
        {
          v21 = *(a2 + 168);
          OUTLINED_FUNCTION_2_11();
          OUTLINED_FUNCTION_8_3();
          OUTLINED_FUNCTION_12_1(&dword_197195000, v22, v23, "%s: HIDVS ID:%llx: iohideventsystem_client_dispatch_virtual_service_set_property:%x", v24, v25, v26, v27, v30, v31, v32);
        }

        __IOHIDEventSystemConnectionCheckServerStatus(v19, a2);
      }
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  result = HIDWORD(v31) != 0;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDServiceNotificationRelease(void *a1, uint64_t a2, const void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((a1[9] + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v9, v10);
  }

  ++*a1[9];
  v5 = a1[14];
  if (v5)
  {
    CFSetRemoveValue(v5, a3);
  }

  v6 = a1[13];
  if (v6)
  {
    CFSetRemoveValue(v6, a3);
  }

  result = a1[9];
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v9, v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL OUTLINED_FUNCTION_20_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

uint64_t _IOHIDServiceGetSenderID(uint64_t a1)
{
  valuePtr = 0;
  CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, &valuePtr);
  return valuePtr;
}

uint64_t iohideventsystem_client_dispatch_virtual_service_set_property(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, mach_msg_timeout_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 1;
  v18 = a3;
  v19 = 16777472;
  v20 = a4;
  v21 = *MEMORY[0x1E69E99E0];
  v22 = a2;
  v23 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x124FF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162515, 0x40u, 0x30u, msgh_local_port, a6, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 75107)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a5 = v19;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void OUTLINED_FUNCTION_13_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void __UnregisterServiceFunction(const void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  CFRetain(a1);
  if (pthread_mutex_lock((*(a2 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(context, v9);
  }

  ++**(a2 + 32);
  context[0] = a1;
  context[1] = a2;
  v4 = *(a2 + 152);
  v11.length = CFArrayGetCount(v4);
  v11.location = 0;
  CFArrayApplyFunction(v4, v11, __FilterFunctionUnregisterService, context);
  v5 = *(a2 + 32);
  if (*v5)
  {
    --*v5;
    if (pthread_mutex_unlock((v5 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v7, v9);
    }
  }

  _IOHIDServiceUnscheduleAsync(a1);
  _IOHIDServiceClose(a1, a2, 0);
  CFRelease(a1);
  v6 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemConnectionCheckServerStatus(int a1, uint64_t a2)
{
  if (a1 == -308)
  {
    v3 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __IOHIDEventSystemConnectionCheckServerStatus_cold_1(a2);
    }

    *(a2 + 456) = 1;
  }
}

void __IOHIDServiceRequestTerminaitonNotificationRelease(uint64_t a1, uint64_t a2, const void *a3)
{
  os_unfair_lock_lock((a1 + 456));
  CFSetRemoveValue(*(a1 + 120), a3);

  os_unfair_lock_unlock((a1 + 456));
}

const void **__IOHIDServiceNotificationSetApplier(const void **result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ____IOHIDServiceNotificationSetApplier_block_invoke;
    v2[3] = &__block_descriptor_tmp_287;
    v2[4] = a2;
    return IOHIDNotificationSignalWithBlock(result, v2);
  }

  return result;
}

void __IOHIDEventSystemServiceRemoved(void *a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  CFRetain(a1);
  v5 = a1[18];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ____IOHIDEventSystemServiceRemoved_block_invoke;
  v6[3] = &__block_descriptor_tmp_60;
  v6[4] = cf;
  v6[5] = a1;
  dispatch_async(v5, v6);
}

uint64_t _IOHIDLog()
{
  if (_IOHIDLog_onceToken != -1)
  {
    _IOHIDLog_cold_1();
  }

  return _IOHIDLog_log;
}

uint64_t IOHIDSessionRemoveService(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v10, v11);
  }

  ++**(a1 + 32);
  v4 = 1;
  __IOHIDSessionSetStateBusy(a1, 1);
  if (CFSetContainsValue(*(a1 + 136), a2))
  {
    v5 = CFGetAllocator(*(a1 + 136));
    MutableCopy = CFSetCreateMutableCopy(v5, 0, *(a1 + 136));
    CFRelease(*(a1 + 136));
    *(a1 + 136) = MutableCopy;
    CFSetRemoveValue(MutableCopy, a2);
    v4 = *(a1 + 88) == 0;
  }

  v7 = *(a1 + 32);
  if (*v7)
  {
    --*v7;
    if (pthread_mutex_unlock((v7 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v10, v11);
    }
  }

  if (!v4)
  {
    __UnregisterServiceFunction(a2, a1);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(&v10, v11);
  }

  ++**(a1 + 32);
  pthread_cond_signal((a1 + 40));
  *(a1 + 92) = 0;
  result = *(a1 + 32);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v10, v11);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOHIDSessionSetStateBusy(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    if (*(result + 92))
    {
      v4 = *(result + 32);
      v5 = *v4 - 1;
      do
      {
        *v4 = v5;
        result = pthread_cond_wait((v3 + 40), (v4 + 8));
        v4 = *(v3 + 32);
        v5 = (*v4)++;
      }

      while (*(v3 + 92));
    }
  }

  else
  {
    result = pthread_cond_signal((result + 40));
  }

  *(v3 + 92) = a2;
  return result;
}

uint64_t _IOHIDVirtualServiceClientSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[8];
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    return v4(a1[9], a1[10], a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t iohideventsystem_client_dispatch_virtual_service_notification(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v8 = a4;
  v9 = 16777472;
  v10 = a5;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a2;
  v13 = a3;
  v14 = a5;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E1D0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v5 = mach_msg(msg, 129, 0x44u, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

void _IOHIDServiceClose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8261, 1, a1, a2, 0, 0);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v19, &context);
  }

  v6 = *(a1 + 72);
  v7 = *v6 + 1;
  *v6 = v7;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 == a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *(&context + 1) = a2;
    v21 = 0;
    *&context = a1;
    v10 = *(a1 + 256);
    v23.length = CFArrayGetCount(v10);
    v23.location = 0;
    CFArrayApplyFunction(v10, v23, __FilterFunctionClose, &context);
    v11 = *(a1 + 32);
    if (v11 && (v12 = *(*v11 + 40)) != 0 || (v13 = *(a1 + 24)) != 0 && (v12 = *(*v13 + 40)) != 0)
    {
      v12();
    }

    else
    {
      v16 = *(a1 + 360);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v17(*(a1 + 344), *(a1 + 352), a3);
        }
      }
    }

    _IOHIDServiceSetEventCallback(a1, 0, 0, 0);
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v6 = *(a1 + 72);
    v7 = *v6;
  }

  if (v7)
  {
    *v6 = v7 - 1;
    if (pthread_mutex_unlock((v6 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v19, &context);
    }
  }

  CFRetain(a1);
  v14 = *(a1 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___IOHIDServiceClose_block_invoke;
  block[3] = &__block_descriptor_tmp_86;
  block[4] = a1;
  dispatch_async(v14, block);
  _IOHIDDebugTrace(8261, 2, a1, a2, 0, 0);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t iohideventsystem_client_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 75013) >= 0xFFFFFFF3 && (v5 = *(&_iohideventsystem_client_subsystem + 5 * (v4 - 75000) + 5)) != 0)
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

uint64_t __IOHIDEventSystemClientMIGDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_1F0B92320 && v3 < unk_1F0B92324)
  {
    LOBYTE(result) = iohideventsystem_client_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t _Xiohideventsystem_client_dispatch_virtual_service_set_property(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 60)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _iohideventsystem_client_dispatch_virtual_service_set_property(*(result + 12), *(result + 52), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _iohideventsystem_client_dispatch_virtual_service_set_property(unsigned int a1, const void *a2, UInt8 *a3, unsigned int a4, _DWORD *a5)
{
  v9 = a4;
  TypeID = CFDictionaryGetTypeID();
  v11 = _IOHIDUnserializeAndVMDeallocWithTypeID(a3, v9, TypeID);
  if (!v11)
  {
    _iohideventsystem_client_dispatch_virtual_service_set_property_cold_4(a5);
    return 0;
  }

  v12 = v11;
  v13 = IOMIGMachPortCacheCopy(a1);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    v16 = __kIOHIDEventSystemClientTypeID;
    if (!__kIOHIDEventSystemClientTypeID)
    {
      pthread_once(&__systemTypeInit_0, __IOHIDEventSystemClientRegister);
      v16 = __kIOHIDEventSystemClientTypeID;
    }

    if (v15 == v16)
    {
      Value = CFDictionaryGetValue(v12, @"Key");
      v18 = CFDictionaryGetValue(v12, @"Value");
      if (Value)
      {
        v19 = v18;
        os_unfair_recursive_lock_lock_with_options();
        v20 = CFDictionaryGetValue(v14[13], a2);
        if (v20)
        {
          v21 = v20;
          CFRetain(v20);
          os_unfair_recursive_lock_unlock();
          *a5 = _IOHIDVirtualServiceClientSetProperty(v21, Value, v19);
          CFRelease(v21);
        }

        else
        {
          os_unfair_recursive_lock_unlock();
          *a5 = -536870208;
          v22 = _IOHIDLogCategory(0xDu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            _iohideventsystem_client_dispatch_virtual_service_set_property_cold_1();
          }
        }
      }

      else
      {
        _iohideventsystem_client_dispatch_virtual_service_set_property_cold_2(a5);
      }

      CFRelease(v12);
LABEL_12:
      CFRelease(v14);
      return 0;
    }
  }

  *a5 = -536870206;
  v24 = _IOHIDLogCategory(0xDu);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    _iohideventsystem_client_dispatch_virtual_service_set_property_cold_3();
  }

  CFRelease(v12);
  if (v14)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t iohideventsystem_client_dispatch_virtual_service_copy_property(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6, mach_msg_timeout_t a7)
{
  v18 = 1;
  v19 = a3;
  v20 = 16777472;
  v21 = a4;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a2;
  v24 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v17.msgh_bits = 2147489043;
  v17.msgh_remote_port = a1;
  v17.msgh_local_port = special_reply_port;
  *&v17.msgh_voucher_port = 0x124FE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v17);
    msgh_local_port = v17.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&v17, 3162515, 0x40u, 0x40u, msgh_local_port, a7, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (v17.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (v17.msgh_id == 75106)
      {
        if ((v17.msgh_bits & 0x80000000) == 0)
        {
          if (v17.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v19))
            {
              if (v17.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_27;
        }

        v14 = 4294966996;
        if (v18 == 1 && *&v17.msgh_size == 56 && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v14 = 0;
            *a5 = v19;
            *a6 = v15;
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v17);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((v17.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v17.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v14;
}

void OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  _IOHIDStringAppendIndendationAndFormat(v3, 0, a3);
}

void OUTLINED_FUNCTION_12_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_INFO, a4, &buf, 0x1Cu);
}

const __CFArray *OUTLINED_FUNCTION_8_0()
{

  return IOHIDEventGetEventWithOptions(v0, 11, 4026531840);
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(_DWORD *a1@<X0>, int a2@<W8>)
{
  *a1 = a2 - 1;
  v3 = (a1 + 2);

  return pthread_mutex_unlock(v3);
}

id IOHIDSessionFilterUnregisterService(id result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = *(*v3 + 96);
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

CFPropertyListRef __IOHIDServiceVirtualCopyPropertyCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  SenderID = _IOHIDServiceGetSenderID(a1);
  memset(length, 0, sizeof(length));
  if (!a3)
  {
    v18 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a2 + 168);
      OUTLINED_FUNCTION_2_11();
      v22 = SenderID;
      v23 = 2112;
      v24 = 0;
      _os_log_error_impl(&dword_197195000, v18, OS_LOG_TYPE_ERROR, "%s: HIDVS ID:%llx Invalid parameters: key:%@", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v6 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a3);
  if (!v6)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  if (*(a2 + 456))
  {
    v14 = 0;
  }

  else
  {
    v8 = *(a2 + 40);
    BytePtr = CFDataGetBytePtr(v6);
    v10 = CFDataGetLength(v7);
    v11 = iohideventsystem_client_dispatch_virtual_service_copy_property(v8, SenderID, BytePtr, v10, &length[1], length, 0x20u);
    if (v11)
    {
      v12 = v11;
      v13 = _IOHIDLogCategory(9u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a2 + 168);
        OUTLINED_FUNCTION_2_11();
        v22 = SenderID;
        v23 = 1024;
        LODWORD(v24) = v12;
        _os_log_error_impl(&dword_197195000, v13, OS_LOG_TYPE_ERROR, "%s: HIDVS ID:%llx iohideventsystem_client_dispatch_virtual_service_copy_property:%x", buf, 0x1Cu);
      }

      __IOHIDEventSystemConnectionCheckServerStatus(v12, a2);
    }

    v14 = _IOHIDUnserializeAndVMDealloc(*&length[1], length[0]);
  }

  CFRelease(v7);
LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

double OUTLINED_FUNCTION_2_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  _IOHIDStringAppendIndendationAndFormat(v3, 0, a3);
}

void OUTLINED_FUNCTION_2_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void _IOHIDServiceUnscheduleAsync(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  _IOHIDDebugTrace(8262, 1, a1, 0, 0, 0);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v22, v23);
  }

  ++**(a1 + 72);
  if ((*(a1 + 444) || *(a1 + 440) == 1) && !*(a1 + 448))
  {
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 80));
    *(a1 + 448) = v2;
    v3 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_set_context(*(a1 + 448), a1);
    dispatch_source_set_event_handler_f(*(a1 + 448), __IOHIDServiceHandleCancelTimerTimeout);
    CFRetain(a1);
    v4 = *(a1 + 448);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___IOHIDServiceUnscheduleAsync_block_invoke;
    handler[3] = &__block_descriptor_tmp_90_0;
    handler[4] = a1;
    dispatch_source_set_cancel_handler(v4, handler);
    dispatch_activate(*(a1 + 448));
  }

  if (*(a1 + 8))
  {
    v5 = *(a1 + 256);
    v25.length = CFArrayGetCount(v5);
    v25.location = 0;
    CFArrayApplyFunction(v5, v25, __FilterFunctionUnscheduleAsync, 0);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(*v6 + 80);
      if (v7)
      {
        v8 = *(a1 + 80);
        v7();
        goto LABEL_19;
      }
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(*v9 + 80);
      if (v10)
      {
        v11 = qword_1EAF1D008;
        v12 = qword_1EAF1D010;
LABEL_16:
        v10(v9, v11, v12);
        goto LABEL_19;
      }
    }

    v13 = *(a1 + 360);
    if (v13)
    {
      v10 = *(v13 + 56);
      if (v10)
      {
        v9 = *(a1 + 344);
        v11 = *(a1 + 352);
        v12 = *(a1 + 80);
        goto LABEL_16;
      }
    }

    v14 = *(a1 + 480);
    if (v14)
    {
      [v14 *(a1 + 544)];
    }
  }

LABEL_19:
  IONotificationPortSetDispatchQueue(*(a1 + 88), 0);
  v15 = *(a1 + 72);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v22, v23);
    }
  }

  CFRetain(a1);
  v16 = *(a1 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___IOHIDServiceUnscheduleAsync_block_invoke_91;
  block[3] = &__block_descriptor_tmp_92_0;
  block[4] = a1;
  dispatch_async(v16, block);
  v17 = *(a1 + 24);
  if (v17 && *(*v17 + 80))
  {
    CFRetain(a1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___IOHIDServiceUnscheduleAsync_block_invoke_93;
    v19[3] = &__block_descriptor_tmp_94;
    v19[4] = a1;
    CFRunLoopPerformBlock(qword_1EAF1D008, qword_1EAF1D010, v19);
    CFRunLoopWakeUp(qword_1EAF1D008);
  }

  _IOHIDDebugTrace(8262, 2, a1, 0, 0, 0);
  v18 = *MEMORY[0x1E69E9840];
}

id IOHIDServiceFilterUnschedule(id result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(*v1 + 80);
    if (v2)
    {
      return v2(*(result + 2), *(result + 4));
    }
  }

  if (*(result + 12))
  {
    return [*(result + 12) *(result + 19)];
  }

  return result;
}

uint64_t __IOHIDServiceVirtualUnscheduleFromDispatchQueueCallback(uint64_t a1)
{
  _IOHIDServiceGetSenderID(a1);
  v1 = OUTLINED_FUNCTION_15_2();

  return _IOHIDEventSystemConnectionVirtualServiceNotify(v1, v2, 3, 0);
}

uint64_t _IOHIDEventSystemConnectionVirtualServiceNotify(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a4);
  v8 = v7;
  if (!*(a1 + 456))
  {
    v9 = *(a1 + 40);
    if (v7)
    {
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v8);
    }

    else
    {
      BytePtr = 0;
      Length = 0;
    }

    v12 = iohideventsystem_client_dispatch_virtual_service_notification(v9, a2, a3, BytePtr, Length);
    if (!v12)
    {
      v15 = 1;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v13 = v12;
    v14 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 168);
      OUTLINED_FUNCTION_5();
      v20 = 2048;
      v21 = a2;
      v22 = 1024;
      v23 = v13;
      _os_log_error_impl(&dword_197195000, v14, OS_LOG_TYPE_ERROR, "%s: HIDVS ID:%llx iohideventsystem_client_dispatch_virtual_service_notification:%x", v19, 0x1Cu);
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v13, a1);
  }

  v15 = 0;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

const __CFArray *OUTLINED_FUNCTION_15()
{

  return IOHIDEventGetEventWithOptions(v0, 43, 4026531840);
}

uint64_t OUTLINED_FUNCTION_15_0(_DWORD *a1)
{
  *a1 = -536870206;

  return _IOHIDLogCategory(0xDu);
}

float *OUTLINED_FUNCTION_15_3(float *result, int a2, _DWORD *a3, float a4)
{
  *result = a4;
  *a3 = a2;
  return result;
}

kern_return_t IOServiceGetMatchingServices(mach_port_t mainPort, CFDictionaryRef matching, io_iterator_t *existing)
{
  v3 = -536870206;
  if (!matching)
  {
    return v3;
  }

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

  v7 = IOCFSerialize(matching, gIOKitLibSerializeOptions);
  CFRelease(matching);
  if (!v7)
  {
    return -536870201;
  }

  Length = CFDataGetLength(v7);
  v9 = Length;
  if (gIOKitLibSerializeOptions)
  {
    if (Length <= 0xFFF)
    {
      CFDataGetBytePtr(v7);
      matching_services_bin = io_service_get_matching_services_bin();
      goto LABEL_13;
    }
  }

  else if (Length <= 0x1FF)
  {
    BytePtr = CFDataGetBytePtr(v7);
    matching_services_bin = io_service_get_matching_services(v6, BytePtr);
LABEL_13:
    v3 = matching_services_bin;
    goto LABEL_17;
  }

  v12 = CFDataGetBytePtr(v7);
  matching_services_ool = io_service_get_matching_services_ool(v6, v12, v9);
  if (matching_services_ool)
  {
    v3 = matching_services_ool;
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  CFRelease(v7);
  if (v6 && v6 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  }

  return v3;
}

uint64_t io_service_get_matching_services_bin()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v40 = *MEMORY[0x1E69E9840];
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (v1 <= 0x1000)
  {
    v3 = v1;
    v4 = v0;
    __memcpy_chk();
    LODWORD(v10) = v3;
    reply_port[0] = 5395;
    reply_port[1] = ((v3 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v4);
    *&v9 = 0xB4100000000;
    v5 = mach_msg2_internal();
    v2 = v5;
    if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v5)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v2 = 4294966989;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

io_object_t IOIteratorNext(io_iterator_t iterator)
{
  if (io_iterator_next(iterator))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t io_iterator_next(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF200000000;
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

uint64_t getPMQueue()
{
  result = getPMQueue_pmQueue;
  if (!getPMQueue_pmQueue)
  {
    if (getPMQueue_pmQueue_pred != -1)
    {
      getPMQueue_cold_1();
    }

    result = getPMQueue_pmQueue;
    if (!getPMQueue_pmQueue)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        getPMQueue_cold_2();
      }

      return 0;
    }
  }

  return result;
}

io_service_t IOServiceGetMatchingService(mach_port_t mainPort, CFDictionaryRef matching)
{
  if (!matching)
  {
    return 0;
  }

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

  v5 = IOCFSerialize(matching, gIOKitLibSerializeOptions);
  CFRelease(matching);
  if (!v5)
  {
    return 0;
  }

  Length = CFDataGetLength(v5);
  v7 = Length;
  if (gIOKitLibSerializeOptions)
  {
    if (Length <= 0xFFF)
    {
      CFDataGetBytePtr(v5);
      io_service_get_matching_service_bin();
      goto LABEL_14;
    }

LABEL_13:
    BytePtr = CFDataGetBytePtr(v5);
    io_service_get_matching_service_ool(v4, BytePtr, v7);
    goto LABEL_14;
  }

  if (Length > 0x1FF)
  {
    goto LABEL_13;
  }

  v8 = CFDataGetBytePtr(v5);
  io_service_get_matching_service(v4, v8);
LABEL_14:
  CFRelease(v5);
  if (v4)
  {
    if (v4 != mainPort)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }
  }

  return 0;
}

__CFDictionary *MakeOneStringProp(const void *a1, const char *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = CFStringCreateWithCString(v4, a2, 0);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    else
    {
      v7 = Mutable;
      Mutable = 0;
    }

    CFRelease(v7);
  }

  return Mutable;
}

uint64_t io_service_get_matching_service_bin()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v40 = *MEMORY[0x1E69E9840];
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (v1 <= 0x1000)
  {
    v3 = v1;
    v4 = v0;
    __memcpy_chk();
    LODWORD(v10) = v3;
    reply_port[0] = 5395;
    reply_port[1] = ((v3 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v4);
    *&v9 = 0xB4000000000;
    v5 = mach_msg2_internal();
    v2 = v5;
    if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v5)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v2 = 4294966989;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_registry_entry_get_property_bin_buf(unsigned int a1, const char *a2, const char *a3, int a4, uint64_t a5, void *a6, void *a7, _DWORD *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v50 = 0;
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
  v33 = 0u;
  *reply_port = 0u;
  memset(v32, 0, sizeof(v32));
  *(&v32[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v15 = mig_strncpy_zerofill(&v32[1] + 8, a2, 128);
  }

  else
  {
    v15 = mig_strncpy(&v32[1] + 8, a2, 128);
  }

  LODWORD(v32[1]) = 0;
  DWORD1(v32[1]) = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  v17 = v16 + 68;
  v18 = reply_port + v16;
  v19 = v18 - 128;
  v20 = v18 + 48;
  if (MEMORY[0x1EEE9AC40])
  {
    v21 = mig_strncpy_zerofill(v20, a3, 128);
  }

  else
  {
    v21 = mig_strncpy(v20, a3, 128);
  }

  *(v19 + 42) = 0;
  *(v19 + 43) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v17 + v22;
  v24 = &v19[v22];
  *(v24 + 44) = a4;
  *(v24 + 180) = a5;
  *(v24 + 188) = *a6;
  v25 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v23;
  *&reply_port[2] = __PAIR64__(v25, a1);
  *&v32[0] = 0xB4900000000;
  v26 = mach_msg2_internal();
  v27 = v26;
  if ((v26 - 268435458) <= 0xE && ((1 << (v26 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v26)
    {
      if (DWORD1(v32[0]) == 71)
      {
        v27 = 4294966988;
      }

      else if (DWORD1(v32[0]) == 2989)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v27 = 4294966996;
          if (DWORD2(v32[0]) == 1 && reply_port[1] == 64 && !reply_port[2] && BYTE7(v32[1]) == 1)
          {
            v28 = DWORD2(v32[1]);
            if (DWORD2(v32[1]) == HIDWORD(v33))
            {
              v27 = 0;
              *a6 = *(&v33 + 4);
              *a7 = *(v32 + 12);
              *a8 = v28;
              goto LABEL_30;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v27 = 4294966996;
          if (LODWORD(v32[1]))
          {
            if (reply_port[2])
            {
              v27 = 4294966996;
            }

            else
            {
              v27 = LODWORD(v32[1]);
            }
          }
        }

        else
        {
          v27 = 4294966996;
        }
      }

      else
      {
        v27 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_30;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_30:
  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

IONotificationPortRef IONotificationPortCreate(mach_port_t mainPort)
{
  if (mainPort)
  {
    v1 = mainPort;
    IOObjectRetain(mainPort);
  }

  else
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v1 = 0;
    }

    else
    {
      v1 = mainPorta;
    }
  }

  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040E39C8550uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = v1;
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, v2 + 1))
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

void IONotificationPortDestroy(IONotificationPortRef notify)
{
  v2 = *(notify + 1);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    CFRelease(*(notify + 1));
  }

  v3 = *(notify + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(notify + 3);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(notify + 3));
  }

  IONotificationPortRelease(notify);
}

CFTypeRef IOHIDServiceClientCopyProperty(IOHIDServiceClientRef service, CFStringRef key)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(service + 12), key);
  os_unfair_recursive_lock_unlock();
  if (!Value)
  {
    v6 = _IOHIDServiceClientCopyUsageProp(service, key);
    if (v6)
    {
      Value = v6;
      os_unfair_recursive_lock_lock_with_options();
      v7 = *(service + 12);
      v8 = key;
      v9 = Value;
    }

    else
    {
      Value = _IOHIDEventSystemClientCopyPropertyForService(*(service + 1), service, key);
      if (!CFSetContainsValue(__serviceKeysSet, key))
      {
        return Value;
      }

      os_unfair_recursive_lock_lock_with_options();
      v7 = *(service + 12);
      v10 = *MEMORY[0x1E695E738];
      if (Value)
      {
        v9 = Value;
      }

      else
      {
        v9 = *MEMORY[0x1E695E738];
      }

      v8 = key;
    }

    CFDictionarySetValue(v7, v8, v9);
    os_unfair_recursive_lock_unlock();
    return Value;
  }

  if (CFEqual(Value, *MEMORY[0x1E695E738]))
  {
    return 0;
  }

  CFRetain(Value);
  return Value;
}

CFNumberRef _IOHIDServiceClientCopyUsageProp(uint64_t a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"PrimaryUsagePage"))
  {
    v4 = 128;
LABEL_5:
    v5 = *MEMORY[0x1E695E480];

    return CFNumberCreate(v5, kCFNumberSInt32Type, (a1 + v4));
  }

  if (CFEqual(cf1, @"PrimaryUsage"))
  {
    v4 = 132;
    goto LABEL_5;
  }

  if (!CFEqual(cf1, @"DeviceUsagePairs"))
  {
    return 0;
  }

  if (!*(a1 + 136))
  {
    return 0;
  }

  v7 = *(a1 + 144);
  if (!v7)
  {
    return 0;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v7, MEMORY[0x1E695E9C0]);
  if (Mutable && *(a1 + 144))
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E695E9D8];
    v13 = MEMORY[0x1E695E9E8];
    do
    {
      v14 = CFDictionaryCreateMutable(v8, 2, v12, v13);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = *(a1 + 136);
      v17 = OUTLINED_FUNCTION_6_2();
      v20 = CFNumberCreate(v17, v18, v19);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v15, @"DeviceUsagePage", v20);
        CFRelease(v21);
      }

      v22 = *(a1 + 136) + v10;
      v23 = OUTLINED_FUNCTION_6_2();
      v26 = CFNumberCreate(v23, v24, v25);
      if (v26)
      {
        v27 = v26;
        CFDictionarySetValue(v15, @"DeviceUsage", v26);
        CFRelease(v27);
      }

      CFArrayAppendValue(Mutable, v15);
      CFRelease(v15);
      ++v11;
      v10 += 8;
    }

    while (v11 < *(a1 + 144));
  }

  return Mutable;
}

void logAsyncAssertionActivity(unsigned int a1, unsigned int a2)
{
  Value = CFDictionaryGetValue(gAssertionsDict, (HIWORD(a2) & 0x7FFF));
  if (!Value)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        logAsyncAssertionActivity_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      logAsyncAssertionActivity_cold_2();
    }

    return;
  }

  if (a1 > 6)
  {
    return;
  }

  v4 = Value;
  v5 = off_1E74A99D0[a1];
  if (!gAsyncAssertionActivityLog_1)
  {
    gAsyncAssertionActivityLog_1 = CFArrayCreateMutable(0, 24, MEMORY[0x1E695E9C0]);
    if (!gAsyncAssertionActivityLog_1)
    {
      return;
    }

    gAsyncAssertionActivityLog_2 = 0;
    v23 = assertions_log;
    if (assertions_log)
    {
      if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      v27 = 0;
      v24 = &v27;
      v25 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      v26 = 0;
      v25 = MEMORY[0x1E69E9C10];
      v24 = &v26;
    }

    _os_log_impl(&dword_197195000, v25, OS_LOG_TYPE_DEFAULT, "Async sssertion bufffer initialized.", v24, 2u);
  }

LABEL_4:
  Count = CFArrayGetCount(gAsyncAssertionActivityLog_1);
  v7 = gAsyncAssertionActivityLog_0 % 0x18u;
  if (Count <= v7)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return;
    }
  }

  else
  {
    Mutable = CFArrayGetValueAtIndex(gAsyncAssertionActivityLog_1, v7);
    CFRetain(Mutable);
    CFDictionaryRemoveAllValues(Mutable);
    if (!Mutable)
    {
      return;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = CFDateCreate(0, Current);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(Mutable, @"ActivityTime", v10);
    CFRelease(v11);
    CFDictionarySetValue(Mutable, @"Action", v5);
    v12 = CFDictionaryGetValue(v4, @"AssertStartWhen");
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"AssertStartWhen", v12);
    }

    v13 = CFDictionaryGetValue(v4, @"AssertType");
    if (v13)
    {
      CFDictionarySetValue(Mutable, @"AssertType", v13);
    }

    v14 = CFDictionaryGetValue(v4, @"AssertName");
    if (v14)
    {
      CFDictionarySetValue(Mutable, @"AssertName", v14);
    }

    v15 = CFDictionaryGetValue(v4, @"GlobalUniqueID");
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"GlobalUniqueID", v15);
    }

    v16 = CFDictionaryGetValue(v4, @"AssertionOnBehalfOfPID");
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfPID", v16);
    }

    v17 = CFDictionaryGetValue(v4, @"AssertionOnBehalfOfPIDReason");
    if (v17)
    {
      CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfPIDReason", v17);
    }

    v18 = CFDictionaryGetValue(v4, @"AssertionOnBehalfOfBundleID");
    if (v18)
    {
      CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfBundleID", v18);
    }

    v19 = CFDictionaryGetValue(v4, @"FrameworkBundleID");
    if (v19)
    {
      CFDictionarySetValue(Mutable, @"FrameworkBundleID", v19);
    }

    v20 = CFDictionaryGetValue(v4, @"InstanceMetadata");
    if (v20)
    {
      CFDictionarySetValue(Mutable, @"InstanceMetadata", v20);
    }

    v21 = CFDictionaryGetValue(v4, @"Category");
    if (v21)
    {
      CFDictionarySetValue(Mutable, @"Category", v21);
    }

    v22 = CFDictionaryGetValue(v4, @"IsCoalesced");
    if (v22)
    {
      CFDictionarySetValue(Mutable, @"IsCoalesced", v22);
    }

    CFArraySetValueAtIndex(gAsyncAssertionActivityLog_1, gAsyncAssertionActivityLog_0 % 0x18u, Mutable);
    ++gAsyncAssertionActivityLog_0;
    if (gAsyncAssertionActivityLog_2 != -1)
    {
      ++gAsyncAssertionActivityLog_2;
    }
  }

  CFRelease(Mutable);
}

uint64_t io_hideventsystem_copy_property_for_service(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8)
{
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
  *&v18.msgh_bits = 2147489043;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = special_reply_port;
  *&v18.msgh_voucher_port = 0x1117B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&v18, 3162115, 0x4Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 70111)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (v18.msgh_remote_port)
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

          goto LABEL_27;
        }

        v15 = 4294966996;
        if (v19 == 1 && *&v18.msgh_size == 60 && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a6 = v20;
            *a7 = v16;
            *a8 = v25;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((v18.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v18.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v15;
}

uint64_t releaseAsyncAssertion(int a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  PMQueue = getPMQueue();
  if (!PMQueue)
  {
    *(v8 + 6) = -536870199;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __releaseAsyncAssertion_block_invoke;
  v5[3] = &unk_1E74A97E0;
  v5[4] = &v7;
  v6 = a1;
  dispatch_sync(PMQueue, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

IOReturn IOPMAssertionRelease(IOPMAssertionID AssertionID)
{
  v1 = -536870199;
  v7 = -536870212;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (!AssertionID)
  {
    return -536870206;
  }

  if (AssertionID < 0x10000 || !gAssertionsDict)
  {
    if (!pm_connect_init(&v6))
    {
      if (io_pm_assertion_retain_release(v6, AssertionID, -1, &v4, &v5 + 1, &v5, &v7))
      {
        v7 = -536870199;
      }

      if (v4)
      {
        entr_act_modify();
      }

      else
      {
        entr_act_end();
      }

      _pm_disconnect();
      return v7;
    }

    return v1;
  }

  return releaseAsyncAssertion(AssertionID);
}

void removeFromTimedList(int a1)
{
  if (CFArrayGetCount(gTimedAssertionsList) >= 1)
  {
    v2 = 0;
    v3 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(gTimedAssertionsList, v3);
      Value = CFDictionaryGetValue(ValueAtIndex, @"AsyncClientAssertionId");
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == a1)
      {
        break;
      }

      ++v3;
      v2 += 0x100000000;
      if (CFArrayGetCount(gTimedAssertionsList) <= v3)
      {
        return;
      }
    }

    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        removeFromTimedList_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      removeFromTimedList_cold_2();
    }

    CFArrayRemoveValueAtIndex(gTimedAssertionsList, v2 >> 32);
  }
}

uint64_t __releaseAsyncAssertion_block_invoke(uint64_t a1)
{
  result = _releaseAsycnAssertion(*(a1 + 40), 1, 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _releaseAsycnAssertion(unsigned int a1, int a2, int a3)
{
  v6 = (HIWORD(a1) & 0x7FFF);
  value = 0;
  if (CFDictionaryGetValueIfPresent(gAssertionsDict, v6, &value))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = CFDateCreate(0, Current);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(value, @"AssertReleaseWhen", v8);
      CFRelease(v9);
    }

    if (a3)
    {
      logAsyncAssertionActivity(1u, a1);
    }

    if (CFDictionaryContainsKey(gActiveAssertionsDict, v6))
    {
      CFDictionaryRemoveValue(gActiveAssertionsDict, v6);
      if (CFArrayGetCount(gReleasedAssertionsList) <= 127)
      {
        CFArrayAppendValue(gReleasedAssertionsList, value);
      }
    }

    else if (CFDictionaryContainsKey(gInactiveAssertionsDict, v6))
    {
      CFDictionaryRemoveValue(gInactiveAssertionsDict, v6);
    }

    CFDictionaryRemoveValue(gAssertionsDict, v6);
    if (a2)
    {
      removeFromTimedList(a1);
    }

    if (CFDictionaryGetCount(gActiveAssertionsDict) <= 0 && gCurrentAssertion)
    {
      sendAsyncReleaseMsg(gCurrentRemoteAssertion, 1, gCurrentRemoteAssertionIsCoalesced);
      gCurrentAssertion = 0;
      gCurrentRemoteAssertion = 0;
      gCurrentRemoteAssertionIsCoalesced = 0;
      if (assertions_log)
      {
        result = os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        _releaseAsycnAssertion_cold_1();
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        _releaseAsycnAssertion_cold_2();
      }
    }

    else if (assertions_log)
    {
      result = os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      _releaseAsycnAssertion_cold_3();
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      _releaseAsycnAssertion_cold_4();
    }

    return 0;
  }

  else
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        _releaseAsycnAssertion_cold_5();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _releaseAsycnAssertion_cold_6();
    }

    return 3758096385;
  }
}

void sendAsyncReleaseMsg(unsigned int a1, int a2, BOOL a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    if (gAssertionConnection)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          sendAsyncReleaseMsg_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        sendAsyncReleaseMsg_cold_2();
      }

      xpc_dictionary_set_uint64(v7, "assertionRelease", a1);
      xpc_dictionary_set_BOOL(v7, "assertionWasCoalesced", a3);
      v8 = 0;
      if (a2 && gAsyncAssertionActivityLog_2)
      {
        if (CFArrayGetCount(gAsyncAssertionActivityLog_1))
        {
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
            {
              sendAsyncReleaseMsg_cold_3();
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            sendAsyncReleaseMsg_cold_4();
          }

          v8 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v7, "assertionActivityLog", v8);
        }

        else
        {
          v8 = 0;
        }
      }

      xpc_connection_send_message(gAssertionConnection, v7);
      if (a2)
      {
        CFArrayRemoveAllValues(gReleasedAssertionsList);
        gAsyncAssertionActivityLog_2 = 0;
        gAsyncAssertionActivityLog_0 = 0;
        if (gAsyncAssertionActivityLog_1)
        {
          CFArrayRemoveAllValues(gAsyncAssertionActivityLog_1);
        }
      }

      if (v8)
      {
        xpc_release(v8);
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        sendAsyncReleaseMsg_cold_5();
      }
    }

    else
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        sendAsyncReleaseMsg_cold_6(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    xpc_release(v7);
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      __fetchAssertionCategoryPolicies_block_invoke_cold_1();
    }
  }

  else
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      __fetchAssertionCategoryPolicies_block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

uint64_t io_registry_entry_get_registry_entry_id(unsigned int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3700000000;
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

CFDictionaryRef IOPSCopyExternalPowerAdapterDetails(void)
{
  PMQueue = getPMQueue();
  if (PMQueue)
  {
    v1 = PMQueue;
    mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
    if (mach_service)
    {
      v3 = mach_service;
      xpc_connection_set_target_queue(mach_service, v1);
      xpc_connection_set_event_handler(v3, &__block_literal_global_5);
      xpc_connection_resume(v3);
      v4 = xpc_dictionary_create(0, 0, 0);
      if (!v4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          IOPSCopyExternalPowerAdapterDetails_cold_1();
        }

        v7 = 0;
        goto LABEL_14;
      }

      v5 = v4;
      xpc_dictionary_set_string(v4, "adapterDetails", "true");
      v6 = xpc_connection_send_message_with_reply_sync(v3, v5);
      if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(v6, "adapterDetails"))
      {
        v7 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = 0;
        if (!v6)
        {
LABEL_7:
          xpc_release(v5);
LABEL_14:
          xpc_release(v3);
          return v7;
        }
      }

      xpc_release(v6);
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      IOPSCopyExternalPowerAdapterDetails_cold_2();
    }
  }

  return 0;
}

IOReturn IOPMAssertionSetProperty(IOPMAssertionID theAssertion, CFStringRef theProperty, CFTypeRef theValue)
{
  v20 = 0;
  v19 = 0;
  v18 = -1;
  if (!theAssertion)
  {
    v6 = -536870206;
    goto LABEL_6;
  }

  if (theAssertion >= 0x10000 && gAssertionsDict)
  {
    v21 = setAsyncAssertionProperties(theProperty, theValue, theAssertion);
    goto LABEL_8;
  }

  v21 = pm_connect_init(&v20);
  if (!v21)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionarySetValue(Mutable, theProperty, theValue);
      if (CFStringCompare(theProperty, @"AssertLevel", 0) == kCFCompareEqualTo)
      {
        TypeID = CFNumberGetTypeID();
        if (theValue)
        {
          if (CFGetTypeID(theValue) == TypeID)
          {
            valuePtr = 0;
            CFNumberGetValue(theValue, kCFNumberIntType, &valuePtr);
            if (!valuePtr)
            {
              v10 = 1;
              goto LABEL_14;
            }

            if (valuePtr == 255)
            {
              if (collectBackTrace)
              {
                saveBackTrace(v9);
              }

              v10 = 0;
              v11 = 1;
              goto LABEL_15;
            }
          }
        }
      }

      v10 = 0;
LABEL_14:
      v11 = 0;
LABEL_15:
      Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v9);
      v13 = v20;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      if (io_pm_assertion_set_properties(v13, theAssertion, BytePtr, Length, &v19 + 1, &v19, &v18, &v21))
      {
        v21 = -536870199;
      }

      else if (v18)
      {
        if (v11)
        {
          entr_act_begin();
        }

        else if (v10)
        {
          entr_act_end();
        }
      }

      if (Data)
      {
        CFRelease(Data);
      }

      goto LABEL_8;
    }

    v6 = -536870211;
LABEL_6:
    v21 = v6;
  }

LABEL_8:
  if (v20)
  {
    _pm_disconnect();
  }

  return v21;
}

uint64_t io_pm_assertion_set_properties(mach_port_t a1, int a2, uint64_t a3, int a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v22 = 1;
  v23 = a3;
  v24 = 16777472;
  v25 = a4;
  v26 = *MEMORY[0x1E69E99E0];
  v27 = a2;
  v28 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v21.msgh_bits = 2147489043;
  v21.msgh_remote_port = a1;
  v21.msgh_local_port = special_reply_port;
  *&v21.msgh_voucher_port = 0x11D3000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v21);
    msgh_local_port = v21.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v15 = mach_msg(&v21, 3162115, 0x3Cu, 0x3Cu, msgh_local_port, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v21.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (v21.msgh_id == 73108)
      {
        if ((v21.msgh_bits & 0x80000000) == 0)
        {
          if (v21.msgh_size == 52)
          {
            if (!v21.msgh_remote_port)
            {
              v16 = HIDWORD(v23);
              if (!HIDWORD(v23))
              {
                v19 = v25;
                *a5 = v24;
                *a6 = v19;
                v20 = HIDWORD(v26);
                *a7 = v26;
                *a8 = v20;
                return v16;
              }

              goto LABEL_23;
            }
          }

          else if (v21.msgh_size == 36)
          {
            if (v21.msgh_remote_port)
            {
              v17 = 1;
            }

            else
            {
              v17 = HIDWORD(v23) == 0;
            }

            if (v17)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = HIDWORD(v23);
            }

            goto LABEL_23;
          }
        }

        v16 = 4294966996;
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v21);
      return v16;
    }

    mig_dealloc_special_reply_port();
  }

  return v16;
}

kern_return_t IORegistryEntryGetRegistryEntryID(io_registry_entry_t entry, uint64_t *entryID)
{
  result = io_registry_entry_get_registry_entry_id(entry);
  if (result)
  {
    *entryID = 0;
  }

  return result;
}

kern_return_t IOConnectCallAsyncMethod(mach_port_t connection, uint32_t selector, mach_port_t wake_port, uint64_t *reference, uint32_t referenceCnt, const uint64_t *input, uint32_t inputCnt, const void *inputStruct, size_t inputStructCnt, uint64_t *output, uint32_t *outputCnt, void *outputStruct, size_t *outputStructCnt)
{
  v13 = inputStruct;
  v16 = outputCnt;
  v17 = inputStructCnt;
  v30 = 0;
  v29 = 0;
  if (inputStructCnt <= 0x1000)
  {
    v18 = inputStructCnt;
  }

  else
  {
    LODWORD(inputStruct) = 0;
    v18 = 0;
  }

  if (inputStructCnt <= 0x1000)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  if (inputStructCnt <= 0x1000)
  {
    v17 = 0;
  }

  if (!outputCnt)
  {
    v16 = &IOConnectCallAsyncMethod_zero;
  }

  if (outputStructCnt)
  {
    __dst = outputStruct;
    if (*outputStructCnt > 0x1000)
    {
      v21 = outputStruct;
      v29 = *outputStructCnt;
      __dst = 0;
    }

    else
    {
      v21 = 0;
      v30 = *outputStructCnt;
    }
  }

  else
  {
    __dst = 0;
    v21 = 0;
  }

  v22 = reference == 0;
  v23 = referenceCnt == 0;
  v24 = !v22 || !v23;
  if (v22 && v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = referenceCnt;
  }

  if (v24)
  {
    LODWORD(v26) = reference;
  }

  else
  {
    v26 = &IOConnectCallAsyncMethod_temp_reference;
  }

  result = io_connect_async_method(connection, wake_port, v26, v25, selector, input, inputCnt, inputStruct, v18, v19, v17, __dst, &v30, output, v16, v21, &v29);
  if (outputStructCnt)
  {
    if (*outputStructCnt > 0x1000)
    {
      v28 = v29;
    }

    else
    {
      v28 = v30;
    }

    *outputStructCnt = v28;
  }

  return result;
}

uint64_t io_connect_async_method(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, uint64_t a10, uint64_t a11, void *__dst, int *a13, void *a14, int *a15, uint64_t a16, void *a17)
{
  v17 = MEMORY[0x1EEE9AC00]();
  v88 = *MEMORY[0x1E69E9840];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *__n = 0u;
  v59 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v56 = 1;
  v57 = v23;
  HIDWORD(__n[0]) = 1310720;
  __n[1] = *MEMORY[0x1E69E99E0];
  if (v18 <= 8)
  {
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v29 = v17;
    v30 = 8 * v18;
    __memcpy_chk();
    LODWORD(v59) = v28;
    v31 = &reply_port + v30;
    *(&reply_port + v30 + 52) = v27;
    if (v25 <= 0x10)
    {
      v32 = v31 - 64;
      v33 = 8 * v25;
      memcpy(v31 + 60, v26, v33);
      *(v32 + 30) = v25;
      if (a9 <= 0x1000)
      {
        v37 = &v32[v33];
        v38 = (a9 + 3) & 0x3FFC;
        v39 = &v37[v38];
        v40 = v30 + v33 + v38;
        memcpy(v37 + 128, v24, a9);
        *(v37 + 31) = a9;
        *(v39 + 16) = a10;
        *(v39 + 17) = a11;
        v41 = *a13;
        if (*a13 >= 0x1000)
        {
          v41 = 4096;
        }

        *(v39 + 36) = v41;
        v42 = *a15;
        if (*a15 >= 0x10)
        {
          v42 = 16;
        }

        *(v39 + 37) = v42;
        *(v39 + 19) = a16;
        *(v39 + 20) = *a17;
        v43 = mig_get_reply_port();
        reply_port.msgh_bits = -2147478253;
        reply_port.msgh_size = v40 + 104;
        *&reply_port.msgh_remote_port = __PAIR64__(v43, v29);
        *&reply_port.msgh_voucher_port = 0xB3200000000;
        v44 = mach_msg2_internal();
        v34 = v44;
        if ((v44 - 268435458) <= 0xE && ((1 << (v44 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(reply_port.msgh_local_port);
          goto LABEL_5;
        }

        if (v44)
        {
          mig_dealloc_reply_port(reply_port.msgh_local_port);
          goto LABEL_5;
        }

        if (reply_port.msgh_id == 71)
        {
          v34 = 4294966988;
        }

        else if (reply_port.msgh_id == 2966)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          if (reply_port.msgh_size - 4277 <= 0xFFFFEF7E)
          {
            if (LODWORD(__n[0]))
            {
              v45 = reply_port.msgh_remote_port == 0;
            }

            else
            {
              v45 = 0;
            }

            if (v45 && reply_port.msgh_size == 36)
            {
              v34 = LODWORD(__n[0]);
            }

            else
            {
              v34 = 4294966996;
            }

            goto LABEL_32;
          }

          if (reply_port.msgh_remote_port)
          {
            goto LABEL_31;
          }

          v34 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_32;
          }

          v47 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) > 0x1000)
          {
LABEL_31:
            v34 = 4294966996;
          }

          else
          {
            v34 = 4294966996;
            if (reply_port.msgh_size - 52 >= HIDWORD(__n[0]))
            {
              v48 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port.msgh_size >= v48 + 52)
              {
                v49 = &reply_port + v48;
                v50 = *(v49 + 10);
                if (v50 <= 0x10 && v50 <= (reply_port.msgh_size - v48 - 52) >> 3)
                {
                  v51 = 8 * v50;
                  if (reply_port.msgh_size - v48 == 8 * v50 + 52)
                  {
                    v52 = *a13;
                    if (HIDWORD(__n[0]) <= v52)
                    {
                      v53 = v49 - 4096;
                      memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                      *a13 = v47;
                      v54 = *(v53 + 1034);
                      if (v54 <= *a15)
                      {
                        memcpy(a14, v53 + 4140, 8 * v54);
                        v34 = 0;
                        *a15 = *(v53 + 1034);
                        *a17 = *&v53[v51 + 4140];
                        goto LABEL_5;
                      }

                      memcpy(a14, v53 + 4140, (8 * *a15));
                      *a15 = *(v53 + 1034);
                    }

                    else
                    {
                      memcpy(__dst, &__n[1], v52);
                      *a13 = v47;
                    }

                    goto LABEL_4;
                  }
                }
              }
            }
          }
        }

        else
        {
          v34 = 4294966995;
        }

LABEL_32:
        mach_msg_destroy(&reply_port);
        goto LABEL_5;
      }
    }
  }

LABEL_4:
  v34 = 4294966989;
LABEL_5:
  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t ServiceClientFunctionRemove(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    result = _IOHIDServiceRemoveConnection(a1, *(a2 + 8), i);
  }

  return result;
}

void __IOHIDServiceComparePropertyFunction(const void *a1, const void *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return;
  }

  if (CFEqual(a1, @"DeviceUsagePairs"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a2);
      if (Count < 1)
      {
        v10 = 0;
      }

      else
      {
        v8 = Count;
        v9 = 0;
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
          TypeID = CFDictionaryGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == TypeID)
            {
              v13 = ValueAtIndex;
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

          v10 |= __IOHIDServiceCompareUsagePair(*a3, v13);
          ++v9;
        }

        while (v8 != v9);
      }

      *(a3 + 8) = v10;
      return;
    }
  }

  if (CFEqual(a1, @"DeviceUsagePage"))
  {
    *(a3 + 8) = __IOHIDServiceCompareUsagePair(*a3, *(a3 + 16));
    return;
  }

  if (!CFEqual(a1, @"DeviceUsage"))
  {
    if (CFEqual(a1, @"Built-In"))
    {
      if (*(*a3 + 284) == CFEqual(a2, *MEMORY[0x1E695E4D0]))
      {
        return;
      }

      goto LABEL_18;
    }

    if (CFEqual(a1, @"Hidden"))
    {
      if (CFEqual(a2, @"*"))
      {
        return;
      }

      v14 = CFEqual(a2, *MEMORY[0x1E695E4D0]);
      v15 = *(*a3 + 300);
      goto LABEL_28;
    }

    if (CFEqual(a1, @"Unregistered"))
    {
      if (CFEqual(a2, @"*"))
      {
        return;
      }

      v14 = CFEqual(a2, *MEMORY[0x1E695E4C0]);
      v15 = *(*a3 + 304);
LABEL_28:
      *(a3 + 8) = v15 == v14;
      return;
    }

    if (!a2)
    {
      return;
    }

    v16 = _IOHIDServiceCopyPropertyForClient(*a3, a1, *MEMORY[0x1E695E738]);
    if (!v16)
    {
LABEL_18:
      *(a3 + 8) = 0;
      return;
    }

    v17 = v16;
    if (!CFEqual(a2, @"*"))
    {
      *(a3 + 8) = CFEqual(a2, v17);
    }

    CFRelease(v17);
  }
}

uint64_t _IOHIDServiceAddConnection(uint64_t result, const void *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 > 2)
  {
    goto LABEL_17;
  }

  v5 = result;
  if (pthread_mutex_lock((*(result + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v19, v20);
  }

  ++**(v5 + 72);
  if ((*(v5 + 224) & 1) == 0)
  {
    v6 = *(v5 + 368);
    if (a3 != 1)
    {
      v10 = a3;
      v11 = *(v6 + 8 * a3);
      v12 = CFGetAllocator(v5);
      if (v11)
      {
        _IOHIDServiceAddConnection_cold_2((v5 + 368), v10, v12, v20);
        Mutable = *&v20[0];
      }

      else
      {
        Mutable = CFSetCreateMutable(v12, 0, MEMORY[0x1E695E9F8]);
        if (!Mutable)
        {
          goto LABEL_15;
        }
      }

      CFSetAddValue(Mutable, a2);
      *(*(v5 + 368) + 8 * v10) = Mutable;
LABEL_11:
      v14 = *(v5 + 480);
      if (v14)
      {
        v15 = *(v5 + 560);
        if (v15)
        {
          [v14 v15];
        }
      }

      v16 = *(v5 + 256);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___IOHIDServiceAddConnection_block_invoke;
      v18[3] = &__block_descriptor_tmp_130;
      v18[4] = a2;
      _IOHIDCFArrayApplyBlock(v16, v18);
      goto LABEL_15;
    }

    v7 = *(v6 + 8);
    v8 = CFGetAllocator(v5);
    if (v7)
    {
      _IOHIDServiceAddConnection_cold_3(v5 + 368, v8, v20);
      v9 = *&v20[0];
      goto LABEL_7;
    }

    v9 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    if (v9)
    {
LABEL_7:
      _IOHIDServiceAddConnection_cold_4(v9, a2, v5 + 368);
      goto LABEL_11;
    }
  }

LABEL_15:
  result = *(v5 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v19, v20);
    }
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void _IOHIDServiceAddConnection_cold_2(void *a1, uint64_t a2, const __CFAllocator *a3, CFMutableSetRef *a4)
{
  Count = CFSetGetCount(*(*a1 + 8 * a2));
  *a4 = CFSetCreateMutableCopy(a3, Count + 1, *(*a1 + 8 * a2));
  v9 = *(*a1 + 8 * a2);

  CFRelease(v9);
}

void __IOHIDEventSystemClientServiceReplaceCallback(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {

    CFDictionarySetValue(theDict, key, a2);
  }
}

IOCFPlugInInterface **IOHIDServiceClientFastPathInvalidate(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 40))(v2, 0);
    (*(**(a1 + 104) + 24))(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  result = *(a1 + 112);
  if (result)
  {
    result = IODestroyPlugInInterface(result);
    *(a1 + 112) = 0;
  }

  return result;
}

kern_return_t IORegistryCreateIterator(mach_port_t mainPort, const io_name_t plane, IOOptionBits options, io_iterator_t *iterator)
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

  v9 = io_registry_create_iterator(v8, plane, options, iterator);
  if (v8 && v8 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
  }

  return v9;
}

uint64_t io_registry_create_iterator(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 140);
  *reply_port = 0u;
  v16 = 0u;
  *(&v16 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v17 + 8, a2, 128);
  }

  else
  {
    v7 = mig_strncpy(v17 + 8, a2, 128);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = v8 + 44;
  *(v17 + v8 + 8) = a3;
  v10 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v9;
  *&reply_port[2] = __PAIR64__(v10, a1);
  *&v16 = 0xAF600000000;
  v11 = mach_msg2_internal();
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v11)
    {
      if (DWORD1(v16) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16) == 2906)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (DWORD2(v16) == 1 && reply_port[1] == 40 && !reply_port[2] && WORD3(v17[0]) << 16 == 1114112)
          {
            v12 = 0;
            *a4 = HIDWORD(v16);
            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          v12 = 4294966996;
          if (LODWORD(v17[0]))
          {
            if (reply_port[2])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v17[0]);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _IOHIDServiceClientRefresh_cold_1(uint64_t a1, __IOHIDServiceClient *a2, const void *a3)
{
  os_unfair_recursive_lock_unlock();
  IOHIDServiceClientSetProperty(a2, @"ReportInterval", a3);

  return os_unfair_recursive_lock_lock_with_options();
}

Boolean IOHIDServiceClientSetProperty(IOHIDServiceClientRef service, CFStringRef key, CFTypeRef property)
{
  if (CFEqual(key, @"ReportInterval") || CFEqual(key, @"BatchInterval"))
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = *(service + 12);
    if (!v6)
    {
      return v6;
    }

    CFDictionarySetValue(v6, key, property);
    os_unfair_recursive_lock_unlock();
  }

  v7 = *(service + 1);

  LOBYTE(v6) = _IOHIDEventSystemClientSetPropertyForService(v7, service, key, property);
  return v6;
}

uint64_t _IOHIDEventSystemClientSetPropertyForService(uint64_t a1, IOHIDServiceClientRef service, void *a3, void *a4)
{
  v4 = 0;
  values = a4;
  keys = a3;
  if (a1 && service && a3 && a4)
  {
    v6 = *MEMORY[0x1E695E480];
    RegistryID = IOHIDServiceClientGetRegistryID(service);
    v8 = _IOHIDCreateBinaryData(v6, RegistryID);
    if (v8)
    {
      v9 = v8;
      v4 = 1;
      v10 = CFDictionaryCreate(v6, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v10)
      {
LABEL_25:
        CFRelease(v9);
        return v4;
      }

      v11 = v10;
      v12 = _IOHIDCreateBinaryData(v6, v10);
      if (!v12)
      {
        v4 = 1;
LABEL_24:
        CFRelease(v11);
        goto LABEL_25;
      }

      v13 = v12;
      v27 = 0;
      if (CFSetContainsValue(__restrictedRemapKeys, keys) && _IOHIDIsRestrictedRemappingProperty(values) && IOHIDCheckAccess(kIOHIDRequestTypeListenEvent))
      {
        IOHIDRequestAccess(kIOHIDRequestTypeListenEvent);
      }

      os_unfair_recursive_lock_lock_with_options();
      v14 = *(a1 + 32);
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v9);
      v17 = CFDataGetBytePtr(v13);
      v18 = CFDataGetLength(v13);
      v19 = io_hideventsystem_set_properties_for_service(v14, BytePtr, Length, v17, v18, &v27);
      if (v19 == 268435459)
      {
        if (*(a1 + 384) || *(a1 + 400))
        {
          os_unfair_recursive_lock_unlock();
          v20 = 0;
LABEL_20:
          if (v27)
          {
            v4 = 0;
          }

          else
          {
            v4 = v20;
          }

          CFRelease(v13);
          goto LABEL_24;
        }

        __IOHIDEventSystemClientTerminationCallback();
        v21 = *(a1 + 32);
        v22 = CFDataGetBytePtr(v9);
        v23 = CFDataGetLength(v9);
        v24 = CFDataGetBytePtr(v13);
        v25 = CFDataGetLength(v13);
        v19 = io_hideventsystem_set_properties_for_service(v21, v22, v23, v24, v25, &v27);
      }

      os_unfair_recursive_lock_unlock();
      v20 = v19 == 0;
      goto LABEL_20;
    }

    return 1;
  }

  return v4;
}

uint64_t io_hideventsystem_set_properties_for_service(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = 2;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = a4;
  v21 = 16777472;
  v22 = a5;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = a3;
  v25 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1117A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x4Cu, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 70110)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_26;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _io_hideventsystem_set_properties_for_service(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5, int *a6)
{
  v10 = -536870206;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = -536870212;
  v11 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFDictionaryGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v14 = v13;
  if (v11 && v13)
  {
    v15 = IOMIGMachPortCacheCopy(a1);
    if (!v15)
    {
      *(v25 + 6) = -536870185;
      *a6 = -536870185;
      v16 = v11;
      goto LABEL_11;
    }

    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == IOHIDEventSystemConnectionGetTypeID())
    {
      System = _IOHIDEventSystemConnectionGetSystem(v16);
      if (!System)
      {
LABEL_15:
        *(v25 + 6) = v10;
        *a6 = v10;
        v21 = v14;
LABEL_10:
        CFRelease(v21);
        v14 = v11;
LABEL_11:
        CFRelease(v14);
        v11 = v16;
LABEL_12:
        CFRelease(v11);
        goto LABEL_13;
      }

      v19 = IOHIDEventSystemCopyService(System, v11);
      if (v19)
      {
        v20 = v19;
        if (CFDictionaryGetCount(v14))
        {
          *(v25 + 6) = 0;
          context[0] = MEMORY[0x1E69E9820];
          context[1] = 0x40000000;
          context[2] = ___io_hideventsystem_set_properties_for_service_block_invoke;
          context[3] = &unk_1E74A95A8;
          context[4] = &v24;
          context[5] = v16;
          context[6] = v20;
          _IOHIDCFDictionaryApplyBlock(v14, context);
          v10 = *(v25 + 6);
        }

        else
        {
          *(v25 + 6) = -536870206;
        }

        *a6 = v10;
        CFRelease(v14);
        v21 = v20;
        goto LABEL_10;
      }
    }

    v10 = -536870185;
    goto LABEL_15;
  }

  *(v25 + 6) = -536870206;
  *a6 = -536870206;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  _Block_object_dispose(&v24, 8);
  return 0;
}

uint64_t _Xio_hideventsystem_set_properties_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = _io_hideventsystem_set_properties_for_service(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t ___io_hideventsystem_set_properties_for_service_block_invoke(void *a1, const void *a2, const __CFArray *a3)
{
  if (IOHIDEventSystemConnectionGetType(a1[5]) == 4)
  {
    result = CFSetContainsValue(__whiteListSet, a2);
    if (!result)
    {
      v7 = -536870206;
      goto LABEL_7;
    }
  }

  result = _IOHIDEventSystemConnectionSetProperty(a1[5], a2, a3);
  if (!result)
  {
    result = _IOHIDServiceSetPropertyForClient(a1[6], a2, a3, a1[5]);
    if (!result)
    {
      v7 = -536870212;
LABEL_7:
      *(*(a1[4] + 8) + 24) = v7;
    }
  }

  return result;
}

const void *__IOHIDServiceCreateAndCopyConnectionCache(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v10, v11);
  }

  ++**(a1 + 72);
  Value = CFDictionaryGetValue(*(a1 + 240), a2);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
  }

  else if (_IOHIDEventSystemConnectionIsValid(a2))
  {
    CFGetAllocator(a1);
    IOHIDServiceConnectionCacheCreate();
    v5 = v6;
    if (v6)
    {
      CFDictionaryAddValue(*(a1 + 240), a2, v6);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 72);
  if (*v7)
  {
    --*v7;
    if (pthread_mutex_unlock((v7 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v10, v11);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _IOHIDServiceSetReportIntervalForClient(uint64_t a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v11, v13);
  }

  ++**(a1 + 72);
  v6 = __IOHIDServiceCreateAndCopyConnectionCache(a1, a2);
  if (v6)
  {
    v7 = v6;
    IOHIDServiceConnectionCacheSetValueForKey(v6, @"ReportInterval", a3);
    context = 0;
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v11, v13);
    }

    ++**(a1 + 72);
    CFDictionaryApplyFunction(*(a1 + 240), __ConnectionFunctionContainsReportInterval, &context);
    *(a1 + 220) = context;
    v8 = *(a1 + 72);
    if (*v8)
    {
      --*v8;
      if (pthread_mutex_unlock((v8 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v11, v13);
      }
    }

    CFRelease(v7);
  }

  result = *(a1 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v11, v13);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void IOHIDServiceConnectionCacheSetValueForKey(void *a1, const void *a2, const void *a3)
{
  if (CFEqual(@"ReportInterval", a2))
  {
    v6 = a1[3];
    if (v6)
    {
      CFRelease(v6);
    }

    if (a3)
    {
      v7 = CFRetain(a3);
    }

    else
    {
      v7 = 0;
    }

    a1[3] = v7;
  }

  else if (CFEqual(@"BatchInterval", a2))
  {
    v8 = a1[4];
    if (v8)
    {
      CFRelease(v8);
    }

    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    a1[4] = v9;
  }

  else
  {
    Mutable = a1[5];
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (a1[5] = Mutable) != 0))
    {

      CFDictionarySetValue(Mutable, a2, a3);
    }
  }
}

const __CFDictionary *__ConnectionFunctionContainsReportInterval(uint64_t a1, void *a2, _DWORD *a3)
{
  result = IOHIDServiceConnectionCacheContainsKey(a2, @"ReportInterval");
  *a3 |= result;
  return result;
}

uint64_t _IOHIDServiceSetBatchIntervalForClient(uint64_t a1, const void *a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v10, v11);
  }

  ++**(a1 + 72);
  v6 = __IOHIDServiceCreateAndCopyConnectionCache(a1, a2);
  if (v6)
  {
    v7 = v6;
    IOHIDServiceConnectionCacheSetValueForKey(v6, @"BatchInterval", a3);
    CFRelease(v7);
  }

  result = *(a1 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v10, v11);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef IOHIDEventSystemClientCopyServices(IOHIDEventSystemClientRef client)
{
  v8[1] = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  Count = CFDictionaryGetCount(*(client + 12));
  v3 = Count;
  if (Count)
  {
    v4 = 8 * Count;
    MEMORY[0x1EEE9AC00]();
    if (v4 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = 8 * v3;
    }

    bzero(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    bzero(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v3);
    CFDictionaryGetKeysAndValues(*(client + 12), 0, (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)), v3, MEMORY[0x1E695E9C0]);
  }

  os_unfair_recursive_lock_unlock();
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t io_registry_entry_get_name(unsigned int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAFA00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) <= 0xE && ((1 << (v1 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  else if (v1)
  {
    mig_dealloc_reply_port(v5.msgh_local_port);
  }

  else
  {
    v2 = 4294966995;
    mach_msg_destroy(&v5);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

CFStringRef IOHIDServiceCopyDescription(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(name, 0, 128);
  IORegistryEntryGetName(*(a1 + 16), name);
  if (!name[0])
  {
    IOObjectGetClass(*(a1 + 16), name);
  }

  v2 = CFGetAllocator(a1);
  valuePtr = 0;
  CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, &valuePtr);
  result = CFStringCreateWithFormat(v2, 0, @"IOHIDService name:%s id:0x%llx primaryUsagePage:0x%x primaryUsage:0x%x transport:%s locationID:%@ reportInterval:%d batchInterval:%d events:%d mask:0x%llx sensorcontrols:%d", name, valuePtr, *(a1 + 176), *(a1 + 180), a1 + 184, *(a1 + 56), *(a1 + 160), *(a1 + 164), *(a1 + 228), *(a1 + 232), *(a1 + 296));
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOObjectGetClass(io_registry_entry_t entry, char a2, char *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = IORegistryEntrySearchCFProperty(entry, 0, @"IOClassNameOverride", *MEMORY[0x1E695E480], 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        CString = CFStringGetCString(v6, a3, 128, 0x8000100u);
        CFRelease(v6);
        if (CString)
        {
          return 0;
        }
      }

      else
      {
        CFRelease(v6);
      }
    }
  }

  return io_object_get_class(entry);
}

uint64_t io_object_get_class(unsigned int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF000000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) <= 0xE && ((1 << (v1 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  else if (v1)
  {
    mig_dealloc_reply_port(v5.msgh_local_port);
  }

  else
  {
    v2 = 4294966995;
    mach_msg_destroy(&v5);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void __IOHIDEventSystemConnectionCheckServerStatus_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v1, v2, "%s: Server died, preventing any future MIG calls", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return _IOHIDLogCategory(0xDu);
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 168);
  return result;
}

void IONotificationPortRelease(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 32), 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    v3 = MEMORY[0x1E69E9A60];
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 4), 1u, -1);
    mach_port_deallocate(*v3, *a1);

    free(a1);
  }
}

uint64_t __IOHIDServiceVirtualCloseCallback(uint64_t a1)
{
  _IOHIDServiceGetSenderID(a1);
  v1 = OUTLINED_FUNCTION_15_2();

  return _IOHIDEventSystemConnectionVirtualServiceNotify(v1, v2, 1, 0);
}

void IONotificationPortSetDispatchQueue(IONotificationPortRef notify, dispatch_queue_t queue)
{
  v4 = *(notify + 3);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(notify + 3));
    *(notify + 3) = 0;
  }

  if (queue)
  {
    atomic_fetch_add_explicit(notify + 8, 1u, memory_order_relaxed);
    v5 = dispatch_source_create(MEMORY[0x1E69E96D8], *(notify + 1), 0, queue);
    dispatch_set_context(v5, notify);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __IONotificationPortSetDispatchQueue_block_invoke;
    handler[3] = &__block_descriptor_tmp_6;
    handler[4] = v5;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_source_set_cancel_handler_f(v5, IONotificationPortRelease);
    *(notify + 3) = v5;
    dispatch_activate(v5);
  }
}

uint64_t __FilterFunctionClose(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  return IOHIDServiceFilterClose(a1);
}

uint64_t IOHIDServiceFilterClose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = *(*result + 64);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t _IOHIDServiceSetEventCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  context[0] = __IOHIDServiceEventCallback;
  context[1] = a1;
  context[2] = a4;
  if (pthread_mutex_lock((a1[9] + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v16, v18);
  }

  ++*a1[9];
  a1[17] = a4;
  a1[18] = a2;
  a1[16] = a3;
  v8 = a1[4];
  if (v8 && (v9 = *(*v8 + 64)) != 0 || (v10 = a1[3]) != 0 && (v9 = *(*v10 + 64)) != 0)
  {
    v9();
  }

  else
  {
    v14 = a1[45];
    if (v14)
    {
      v15 = *(v14 + 40);
      if (v15)
      {
        v15(a1[43], a1[44], __IOHIDServiceEventCallback, a1, 0);
      }
    }
  }

  v11 = a1[32];
  v20.length = CFArrayGetCount(v11);
  v20.location = 0;
  CFArrayApplyFunction(v11, v20, __FilterFunctionSetEventCallback, context);
  result = a1[9];
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v16, v18);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDServiceFilterSetEventCallback(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = *(*result + 112);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t __FilterFunctionSetEventCallback(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  return IOHIDServiceFilterSetEventCallback(a1);
}

__CFString *IOHIDEventTypeGetName(unsigned int a1)
{
  if (a1 > 0x2B)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E74A8348 + a1);
  }
}

CFMutableDictionaryRef _IOHIDServiceCopyEventCounts(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((a1[9] + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v9, v10);
  }

  ++*a1[9];
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = 0; i != 44; ++i)
    {
      if (*(a1[52] + 8 * i))
      {
        Name = IOHIDEventTypeGetName(i);
        _IOHIDDictionaryAddSInt64(Mutable, Name, *(a1[52] + 8 * i));
      }
    }

    if (!CFDictionaryGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v6 = a1[9];
  if (*v6)
  {
    --*v6;
    if (pthread_mutex_unlock((v6 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v9, v10);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __IOHIDServiceFilterRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {

    _Block_release(v8);
  }
}

uint64_t _IOHIDEventSystemConnectionRemoveService(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFGetAllocator(a1);
  RegistryID = IOHIDServiceGetRegistryID(a2);
  v6 = _IOHIDCreateBinaryData(v4, RegistryID);
  if (v6)
  {
    v7 = v6;
    if (!*(a1 + 456))
    {
      v8 = *(a1 + 40);
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      v11 = iohideventsystem_client_dispatch_service_removal(v8, BytePtr, Length, 0);
      v12 = v11;
      if ((v11 - 268435459) < 2)
      {
LABEL_8:
        __IOHIDEventSystemConnectionCheckServerStatus(v12, a1);
        goto LABEL_9;
      }

      if (v11)
      {
        if (v11 != 268451843)
        {
          v13 = _IOHIDLogCategory(9u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            _IOHIDEventSystemConnectionRemoveService_cold_1(a1);
          }
        }

        goto LABEL_8;
      }
    }

LABEL_9:
    CFRelease(v7);
  }

  CFSetRemoveValue(*(a1 + 80), a2);
  return os_unfair_recursive_lock_unlock();
}

IOReturn IOPMAssertionCreateWithProperties(CFDictionaryRef AssertionProperties, IOPMAssertionID *AssertionID)
{
  v50 = 0;
  v51 = -536870212;
  v48 = -1;
  v49 = 0;
  if (!AssertionProperties || !AssertionID)
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      IOPMAssertionCreateWithProperties_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(AssertionProperties, @"AssertType");
  v5 = CFDictionaryGetValue(AssertionProperties, @"AssertName");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (v7 = CFStringGetTypeID(), !v5) || CFGetTypeID(v5) != v7)
  {
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      IOPMAssertionCreateWithProperties_cold_6(v25, v26, v27, v28, v29, v30, v31, v32);
    }

LABEL_15:
    v16 = 0;
LABEL_16:
    v51 = -536870206;
    goto LABEL_17;
  }

  if (pm_connect_init(&v50))
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      IOPMAssertionCreateWithProperties_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }

LABEL_10:
    v16 = 0;
    v51 = -536870199;
    goto LABEL_17;
  }

  v34 = CFStringGetTypeID();
  if (CFGetTypeID(Value) == v34 && CFEqual(Value, @"EnableIdleSleep") && !IOPMAssertionCreateWithProperties_resyncToken)
  {
    IOPMAssertionCreateWithProperties_resyncCopy = CFDictionaryCreateMutableCopy(0, 0, AssertionProperties);
    notify_register_dispatch("com.apple.system.powermanagement.assertionresync", &IOPMAssertionCreateWithProperties_resyncToken, MEMORY[0x1E69E96A0], &__block_literal_global_203);
  }

  v35 = CFDictionaryGetValue(AssertionProperties, @"AssertLevel");
  v36 = CFNumberGetTypeID();
  if (v35 && CFGetTypeID(v35) == v36)
  {
    valuePtr = 0;
    CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
    v37 = valuePtr == 0;
  }

  else
  {
    v37 = 0;
  }

  v16 = 0;
  if (collectBackTrace && !v37)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, AssertionProperties);
    if (!MutableCopy)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        IOPMAssertionCreateWithProperties_cold_3();
      }

      goto LABEL_10;
    }

    v16 = MutableCopy;
    saveBackTrace(MutableCopy);
  }

  v39 = CFStringGetTypeID();
  if (CFGetTypeID(Value) == v39 && (CFEqual(Value, @"PreventUserIdleSystemSleep") || CFEqual(Value, @"NoIdleSleepAssertion") || CFEqual(Value, @"SystemIsActive")))
  {
    if (!v16)
    {
      v16 = CFDictionaryCreateMutableCopy(0, 0, AssertionProperties);
    }

    if (!CFDictionaryContainsKey(v16, @"AllowsDeviceRestart"))
    {
      CFDictionarySetValue(v16, @"AllowsDeviceRestart", *MEMORY[0x1E695E4D0]);
    }
  }

  if (v16)
  {
    v40 = v16;
  }

  else
  {
    v40 = AssertionProperties;
  }

  Data = CFPropertyListCreateData(0, v40, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    goto LABEL_16;
  }

  v42 = Data;
  if (createAsyncAssertion(v40, AssertionID))
  {
    v51 = 0;
    v48 = 0x10000;
  }

  else
  {
    v44 = v50;
    BytePtr = CFDataGetBytePtr(v42);
    Length = CFDataGetLength(v42);
    if (io_pm_assertion_create(v44, BytePtr, Length, AssertionID, &v49, &v48, &v51))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        IOPMAssertionCreateWithProperties_cold_4();
      }

      v51 = -536870199;
      goto LABEL_54;
    }

    if (v51 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      IOPMAssertionCreateWithProperties_cold_5();
    }
  }

  if (v48 != 0 && !v37)
  {
    v43 = *AssertionID;
    entr_act_begin();
  }

LABEL_54:
  CFRelease(v42);
LABEL_17:
  if (v50)
  {
    _pm_disconnect();
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v51;
}

uint64_t createAsyncAssertion(const __CFDictionary *a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  if (gAsyncModeDisableOverride == 1)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        createAsyncAssertion_cold_2();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      createAsyncAssertion_cold_3();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a1, @"AssertType");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFEqual(Value, @"PreventUserIdleSystemSleep") && !CFEqual(Value, @"NoIdleSleepAssertion"))
  {
    goto LABEL_15;
  }

  if ((gAsyncMode & 1) == 0)
  {
    if (checkFeatureEnabled_onceToken == -1)
    {
      v7 = 0;
      goto LABEL_16;
    }

    createAsyncAssertion_cold_1();
    goto LABEL_15;
  }

  if (CFDictionaryContainsKey(a1, @"ResourcesUsed") || (PMQueue = getPMQueue()) == 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __createAsyncAssertion_block_invoke;
  block[3] = &unk_1E74A97B8;
  block[4] = &v10;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(PMQueue, block);
  v7 = *(v11 + 24);
LABEL_16:
  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

uint64_t io_pm_assertion_create(mach_port_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  msg.msgh_id = 0;
  v25 = 0;
  v26 = 0;
  *&msg.msgh_size = 0u;
  v21 = 1;
  v22 = a2;
  v23 = 16777472;
  v24 = a3;
  v25 = *MEMORY[0x1E69E99E0];
  LODWORD(v26) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x11D2F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x38u, 0x3Cu, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 73107)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 52)
          {
            if (!msg.msgh_remote_port)
            {
              v15 = HIDWORD(v22);
              if (!HIDWORD(v22))
              {
                v18 = v24;
                *a4 = v23;
                *a5 = v18;
                v19 = HIDWORD(v25);
                *a6 = v25;
                *a7 = v19;
                return v15;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v16 = 1;
            }

            else
            {
              v16 = HIDWORD(v22) == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v22);
            }

            goto LABEL_23;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

uint64_t io_pm_assertion_retain_release(int a1, int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  *&msg[20] = 0u;
  v21 = 0u;
  v22 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LODWORD(v21) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D3100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(msg, 3162115, 0x28u, 0x3Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 73109)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 52)
          {
            if (!*&msg[8])
            {
              v15 = *&msg[32];
              if (!*&msg[32])
              {
                v18 = DWORD1(v21);
                *a4 = v21;
                *a5 = v18;
                v19 = HIDWORD(v21);
                *a6 = DWORD2(v21);
                *a7 = v19;
                return v15;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v16 = 1;
            }

            else
            {
              v16 = *&msg[32] == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

CFTypeRef IOCFUnserialize(const char *buffer, CFAllocatorRef allocator, CFOptionFlags options, CFStringRef *errorString)
{
  if (errorString)
  {
    *errorString = 0;
  }

  v7 = 0;
  if (buffer && !options)
  {
    v8 = malloc_type_malloc(0x40uLL, 0x10F0040CDBDF800uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = buffer;
      v8[1] = 0x100000000;
      v8[3] = 0;
      v8[4] = 0;
      v8[2] = allocator;
      v8[5] = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
      v9[6] = errorString;
      v9[7] = 0;
      IOCFUnserializeparse();
      v7 = v9[7];
      v10 = v9[3];
      if (v10)
      {
        do
        {
          v11 = v10[3];
          if (v11)
          {
            CFRelease(v11);
          }

          v12 = v10[6];
          if (v12)
          {
            free(v12);
          }

          v13 = v10[4];
          if (v13)
          {
            CFRelease(v13);
          }

          v14 = v10[7];
          if (v14)
          {
            free(v14);
          }

          v15 = v10[1];
          free(v10);
          v10 = v15;
        }

        while (v15);
      }

      CFRelease(v9[5]);
      free(v9);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t IOCFUnserializeparse()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v88 = 0;
  v1 = 0u;
  v99[4] = *MEMORY[0x1E69E9840];
  __src = v94;
  v2 = 200;
  memset(v94, 0, 512);
  v3 = *MEMORY[0x1E695E4D0];
  v86 = *MEMORY[0x1E695E4D0];
  v87 = *MEMORY[0x1E695E4C0];
  v4 = v95;
  v5 = v95;
  v6 = v94;
  v7 = -2;
  while (1)
  {
    *v5 = v1;
    if (&v4[2 * v2 - 2] <= v5)
    {
      if (v2 >> 4 > 0x270 || ((2 * v2) >= 0x2710 ? (v2 = 10000) : (v2 *= 2), (v8 = malloc_type_malloc(10 * v2 + 7, 0x1000040BDFB0063uLL)) == 0))
      {
        IOCFUnserializeerror(v0, "memory exhausted");
        v80 = 2;
        goto LABEL_210;
      }

      v9 = v8;
      v10 = ((v5 - v4) >> 1) + 1;
      memcpy(v8, v4, 2 * v10);
      memcpy(&v9[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8], __src, 8 * v10);
      if (v4 != v95)
      {
        free(v4);
      }

      if (v2 <= v10)
      {
        v80 = 1;
        v4 = v9;
        goto LABEL_210;
      }

      v5 = &v9[2 * v10 - 2];
      v6 = &v9[8 * v10 - 8 + ((2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8)];
      __src = &v9[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8];
      v4 = v9;
    }

    if (((0xFEB5FFC3FEuLL >> v1) & 1) == 0)
    {
      v11 = yypact[v1];
      if (v7 != -2)
      {
        goto LABEL_116;
      }

      v93 = 0;
      while (1)
      {
        do
        {
          while (1)
          {
            v12 = *(v0 + 8);
            v7 = *(*v0 + v12);
            if (v7 == 32 || v7 == 9)
            {
              v14 = (*v0 + v12 + 1);
              do
              {
                do
                {
                  *(v0 + 8) = ++v12;
                  v15 = *v14++;
                  v7 = v15;
                }

                while (v15 == 9);
              }

              while (v7 == 32);
              if (!v7)
              {
                goto LABEL_116;
              }
            }

            if (v7 != 10)
            {
              break;
            }

            v23 = *(v0 + 12) + 1;
            *(v0 + 8) = v12 + 1;
            *(v0 + 12) = v23;
          }

          if (!v7)
          {
            goto LABEL_116;
          }

          Tag = getTag(v0, v99, &v93, __s1, __str);
        }

        while (Tag == 4);
        v17 = Tag;
        if (!Tag)
        {
          goto LABEL_115;
        }

        v85 = v11;
        v89 = v4;
        newObject(v0);
        v88 = v18;
        *(v18 + 72) = -1;
        v84 = v93;
        if (v93 >= 1)
        {
          v19 = __str;
          v20 = v98;
          for (i = v93; i; --i)
          {
            if (*(v20 - 2) == 73 && *(v20 - 1) == 68)
            {
              if (*v20)
              {
                if (*v20 == 82 && v20[1] == 69 && v20[2] == 70)
                {
                  v7 = 267;
                  if (v17 == 3 && !v20[3])
                  {
                    *(v88 + 72) = strtol(v19, 0, 0);
                    v7 = 0x106u;
                  }
                }

                else
                {
                  v7 = 267;
                }

LABEL_50:
                v4 = v89;
LABEL_51:
                v11 = v85;
                goto LABEL_116;
              }

              *(v88 + 72) = strtol(v19, 0, 0);
            }

            v19 += 32;
            v20 += 32;
          }
        }

        if (LOBYTE(v99[0]) != 112)
        {
          break;
        }

        v22 = LODWORD(v99[0]) == 1936288880 && WORD2(v99[0]) == 116;
        v4 = v89;
        v11 = v85;
        if (!v22)
        {
          goto LABEL_115;
        }

        *v88 = *(v0 + 32);
        *(v0 + 32) = v88;
      }

      v7 = 267;
      v4 = v89;
      v11 = v85;
      if (LOBYTE(v99[0]) > 0x68u)
      {
        if (LOBYTE(v99[0]) <= 0x72u)
        {
          if (LOBYTE(v99[0]) == 105)
          {
            if (v99[0] != 0x72656765746E69)
            {
              goto LABEL_116;
            }

            *(v88 + 40) = 64;
            if (v84 >= 1)
            {
              v29 = __str;
              v30 = __s1;
              do
              {
                if (!strcmp(v30, "size"))
                {
                  *(v88 + 40) = strtoul(v29, 0, 0);
                }

                v29 += 32;
                v30 += 32;
                --v84;
              }

              while (v84);
            }

            if (v17 == 3)
            {
              *(v88 + 64) = 0;
              v7 = 0x108u;
              goto LABEL_50;
            }

            *(v88 + 64) = getNumber(v0);
            v4 = v89;
            v11 = v85;
            if (getTag(v0, v99, &v93, __s1, __str) != 2)
            {
LABEL_115:
              v7 = 0x10Bu;
              goto LABEL_116;
            }

            v25 = v99[0] == 0x72656765746E69;
            v26 = 264;
          }

          else
          {
            if (LOBYTE(v99[0]) != 107)
            {
              goto LABEL_116;
            }

            if (v17 == 3)
            {
              goto LABEL_116;
            }

            if (LODWORD(v99[0]) != 7955819)
            {
              goto LABEL_116;
            }

            String = getString(v0);
            *(v88 + 56) = String;
            if (!String || getTag(v0, v99, &v93, __s1, __str) != 2)
            {
              goto LABEL_116;
            }

            v25 = LODWORD(v99[0]) == 7955819;
            v26 = 263;
          }

          if (v25)
          {
            v7 = v26;
          }

          else
          {
            v7 = 267;
          }

          goto LABEL_116;
        }

        if (LOBYTE(v99[0]) != 115)
        {
          if (LOBYTE(v99[0]) != 116 || v17 != 3 || LODWORD(v99[0]) ^ 0x65757274 | BYTE4(v99[0]))
          {
            goto LABEL_116;
          }

          *(v88 + 64) = 1;
          goto LABEL_78;
        }

        if (LODWORD(v99[0]) != 1769108595 || *(v99 + 3) != 6778473)
        {
          if (LODWORD(v99[0]) == 7628147)
          {
            if (v17 == 1)
            {
              v7 = 0x5Bu;
            }

            else if (v17 == 3)
            {
              *(v88 + 16) = 0;
              v7 = 0x109u;
            }

            else
            {
              v7 = 0x5Du;
            }
          }

          goto LABEL_116;
        }

        if (v17 == 3)
        {
          v33 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          *(v88 + 56) = v33;
          *v33 = 0;
          v7 = 0x10Au;
          goto LABEL_116;
        }

        v76 = getString(v0);
        *(v88 + 56) = v76;
        if (!v76 || getTag(v0, v99, &v93, __s1, __str) != 2)
        {
          goto LABEL_116;
        }

        v77 = (LODWORD(v99[0]) ^ 0x69727473 | *(v99 + 3) ^ 0x676E69) == 0;
        v78 = 266;
LABEL_194:
        if (v77)
        {
          v7 = v78;
        }

        else
        {
          v7 = v78 + 1;
        }

        goto LABEL_116;
      }

      if (LOBYTE(v99[0]) == 97)
      {
        if (LODWORD(v99[0]) != 1634890337 || WORD2(v99[0]) != 121)
        {
          goto LABEL_116;
        }

        if (v17 == 3)
        {
          *(v88 + 16) = 0;
          v7 = 0x102u;
          goto LABEL_116;
        }

        v77 = v17 == 1;
        v78 = 40;
        goto LABEL_194;
      }

      if (LOBYTE(v99[0]) != 100)
      {
        if (LOBYTE(v99[0]) != 102)
        {
          goto LABEL_116;
        }

        v27 = LODWORD(v99[0]) == 1936482662 && WORD2(v99[0]) == 101;
        v28 = !v27;
        if (v17 != 3 || v28)
        {
          goto LABEL_116;
        }

        *(v88 + 64) = 0;
LABEL_78:
        v7 = 0x103u;
        goto LABEL_116;
      }

      if (LODWORD(v99[0]) ^ 0x74636964 | BYTE4(v99[0]))
      {
        if (!(LODWORD(v99[0]) ^ 0x61746164 | BYTE4(v99[0])))
        {
          v92 = 0;
          if (v17 == 3)
          {
            *(v88 + 48) = 0;
            *(v88 + 40) = 0;
            v7 = 0x104u;
          }

          else
          {
            *(v88 + 48) = getCFEncodedData(v0, &v92);
            *(v88 + 40) = v92;
            if (getTag(v0, v99, &v93, __s1, __str) == 2)
            {
              if (LODWORD(v99[0]) ^ 0x61746164 | BYTE4(v99[0]))
              {
                v7 = 267;
              }

              else
              {
                v7 = 260;
              }
            }
          }
        }

        goto LABEL_51;
      }

      v11 = v85;
      if (v17 == 3)
      {
        *(v88 + 16) = 0;
        v7 = 0x105u;
      }

      else
      {
        v7 = v17 == 1 ? 123 : 125;
      }

LABEL_116:
      if (v7 < 1)
      {
        v34 = 0;
        v7 = 0u;
      }

      else
      {
        v34 = v7 > 0x10B ? 2 : yytranslate[v7];
      }

      v35 = v34 + v11;
      if ((v34 + v11) <= 0x6C && v34 == yycheck[v35])
      {
        v1 = yytable[v35];
        if (!yytable[v35])
        {
          break;
        }

        if (v35 == 10)
        {
          v80 = 0;
          goto LABEL_210;
        }

        if (v7)
        {
          v7 = -2;
        }

        else
        {
          v7 = 0;
        }

        v6[1] = v88;
        ++v6;
        goto LABEL_189;
      }
    }

    v36 = v1;
    if ((0x14A003C00uLL >> v1))
    {
      break;
    }

    v37 = yydefact[v1];
    v38 = yyr2[yydefact[v36]];
    v39 = v6[1 - v38];
    switch(v37)
    {
      case 2u:
        v79 = "unexpected end of buffer";
        goto LABEL_207;
      case 3u:
        v80 = 0;
        *(v0 + 56) = *(*v6 + 24);
        *(*v6 + 24) = 0;
        v83 = *v6;
        *v83 = *(v0 + 32);
        *(v0 + 32) = v83;
        goto LABEL_210;
      case 4u:
        goto LABEL_206;
      case 5u:
        v39 = *v6;
        v48 = *(*v6 + 16);
        v90 = v4;
        if (v48)
        {
          v49 = 0;
          v50 = 0;
          do
          {
            v51 = v48;
            v48 = *v48;
            *v51 = v50;
            ++v49;
            v50 = v51;
          }

          while (v48);
        }

        else
        {
          v51 = 0;
          v49 = 0;
        }

        *(v39 + 16) = v51;
        Mutable = CFDictionaryCreateMutable(*(v0 + 16), v49, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v64 = *(v39 + 72);
        if ((v64 & 0x80000000) == 0)
        {
          CFDictionarySetValue(*(v0 + 40), v64, Mutable);
        }

        v65 = *(v39 + 16);
        if (v65)
        {
          do
          {
            CFDictionarySetValue(Mutable, v65[4], v65[3]);
            CFRelease(v65[4]);
            CFRelease(v65[3]);
            v65[3] = 0;
            v65[4] = 0;
            v66 = *v65;
            *v65 = *(v0 + 32);
            *(v0 + 32) = v65;
            v65 = v66;
          }

          while (v66);
        }

        goto LABEL_184;
      case 6u:
        v39 = *v6;
        v52 = *(*v6 + 16);
        v90 = v4;
        if (v52)
        {
          v53 = 0;
          v54 = 0;
          do
          {
            v55 = v52;
            v52 = *v52;
            *v55 = v54;
            ++v53;
            v54 = v55;
          }

          while (v52);
        }

        else
        {
          v55 = 0;
          v53 = 0;
        }

        *(v39 + 16) = v55;
        Mutable = CFArrayCreateMutable(*(v0 + 16), v53, MEMORY[0x1E695E9C0]);
        v67 = *(v39 + 72);
        if ((v67 & 0x80000000) == 0)
        {
          CFDictionarySetValue(*(v0 + 40), v67, Mutable);
        }

        v68 = *(v39 + 16);
        if (v68)
        {
          do
          {
            CFArrayAppendValue(Mutable, v68[3]);
            CFRelease(v68[3]);
            v68[3] = 0;
            v69 = *v68;
            *v68 = *(v0 + 32);
            *(v0 + 32) = v68;
            v68 = v69;
          }

          while (v69);
        }

        goto LABEL_184;
      case 7u:
        v39 = *v6;
        v58 = *(*v6 + 16);
        v90 = v4;
        if (v58)
        {
          v59 = 0;
          v60 = 0;
          do
          {
            v61 = v58;
            v58 = *v58;
            *v61 = v60;
            ++v59;
            v60 = v61;
          }

          while (v58);
        }

        else
        {
          v61 = 0;
          v59 = 0;
        }

        *(v39 + 16) = v61;
        Mutable = CFSetCreateMutable(*(v0 + 16), v59, MEMORY[0x1E695E9F8]);
        v70 = *(v39 + 72);
        if ((v70 & 0x80000000) == 0)
        {
          CFDictionarySetValue(*(v0 + 40), v70, Mutable);
        }

        v71 = *(v39 + 16);
        if (v71)
        {
          do
          {
            CFSetAddValue(Mutable, v71[3]);
            CFRelease(v71[3]);
            v71[3] = 0;
            v72 = *v71;
            *v71 = *(v0 + 32);
            *(v0 + 32) = v71;
            v71 = v72;
          }

          while (v72);
        }

LABEL_184:
        *(v39 + 24) = Mutable;
        v4 = v90;
        goto LABEL_185;
      case 8u:
      case 0x13u:
        v39 = *v6;
        buildString(v0, *v6);
        goto LABEL_185;
      case 9u:
        v40 = v4;
        v39 = *v6;
        v46 = CFDataCreate(*(v0 + 16), *(*v6 + 48), *(*v6 + 40));
        v57 = *(v39 + 72);
        if ((v57 & 0x80000000) == 0)
        {
          CFDictionarySetValue(*(v0 + 40), v57, v46);
        }

        if (*(v39 + 40))
        {
          free(*(v39 + 48));
        }

        *(v39 + 48) = 0;
        goto LABEL_156;
      case 0xAu:
        v40 = v4;
        v39 = *v6;
        if (*(*v6 + 40) < 33)
        {
          v45 = kCFNumberSInt32Type;
        }

        else
        {
          v45 = kCFNumberSInt64Type;
        }

        v46 = CFNumberCreate(*(v0 + 16), v45, (v39 + 64));
        v47 = *(v39 + 72);
        if ((v47 & 0x80000000) == 0)
        {
          CFDictionarySetValue(*(v0 + 40), v47, v46);
        }

LABEL_156:
        *(v39 + 24) = v46;
        goto LABEL_157;
      case 0xBu:
        v39 = *v6;
        if (*(*v6 + 64))
        {
          v62 = v86;
        }

        else
        {
          v62 = v87;
        }

        *(v39 + 24) = CFRetain(v62);
        goto LABEL_185;
      case 0xCu:
        v40 = v4;
        Value = CFDictionaryGetValue(*(v0 + 40), *(*v6 + 72));
        if (!Value)
        {
          IOCFUnserializeerror(v0, "forward reference detected");
          v80 = 1;
          goto LABEL_210;
        }

        v42 = Value;
        newObject(v0);
        v39 = v43;
        *(v43 + 24) = v42;
        CFRetain(v42);
        v44 = *v6;
        *v44 = *(v0 + 32);
        *(v0 + 32) = v44;
LABEL_157:
        v4 = v40;
LABEL_185:
        v73 = &v6[-v38];
        v5 -= 2 * v38;
        v73[1] = v39;
        v6 = v73 + 1;
        v74 = yyr1[v37] - 19;
        v75 = *v5 + yypgoto[v74];
        if (v75 <= 0x6C && *v5 == yycheck[v75])
        {
          v1 = yytable[v75];
        }

        else
        {
          v1 = yydefgoto[v74];
        }

        break;
      case 0xDu:
      case 0x14u:
      case 0x17u:
        v39 = *(v6 - 1);
        *(v39 + 16) = 0;
        goto LABEL_185;
      case 0xEu:
      case 0x15u:
      case 0x18u:
        v39 = *(v6 - 2);
        *(v39 + 16) = *(v6 - 1);
        goto LABEL_185;
      case 0x11u:
      case 0x1Bu:
        v39 = *v6;
        **v6 = *(v6 - 1);
        goto LABEL_185;
      case 0x12u:
        v39 = *(v6 - 1);
        *(v39 + 32) = *(v39 + 24);
        *(v39 + 24) = *(*v6 + 24);
        *v39 = 0;
        *(*v6 + 24) = 0;
        v56 = *v6;
        *v56 = *(v0 + 32);
        *(v0 + 32) = v56;
        goto LABEL_185;
      case 0x1Au:
        v39 = *v6;
        **v6 = 0;
        goto LABEL_185;
      default:
        goto LABEL_185;
    }

LABEL_189:
    v5 += 2;
  }

LABEL_206:
  v79 = "syntax error";
LABEL_207:
  IOCFUnserializeerror(v0, v79);
  v80 = 1;
LABEL_210:
  if (v4 != v95)
  {
    free(v4);
  }

  v81 = *MEMORY[0x1E69E9840];
  return v80;
}

uint64_t getTag(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + *(a1 + 8));
  *a3 = 0;
  if (v6 != 60)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  LODWORD(v8) = v7 + 1;
  *(a1 + 8) = v7 + 1;
  LODWORD(v9) = *(v5 + v7 + 1);
  switch(v9)
  {
    case '!':
      LODWORD(v13) = v7 + 2;
      *(a1 + 8) = v7 + 2;
      v14 = *(v5 + v7 + 2);
      if (v14 == 45)
      {
        LODWORD(v13) = v7 + 3;
        *(a1 + 8) = v7 + 3;
        v14 = *(v5 + v7 + 3);
        v15 = v14 == 45;
        v16 = v14 == 0;
        if (!*(v5 + v7 + 3))
        {
          v14 = 0;
        }

        if (v16)
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v20 = (v14 - 65) < 0x1A || v15;
      v21 = (v14 - 123) < 0xFFFFFFE6;
      v22 = v14 == 0;
      if (!v20)
      {
        v22 = v21;
      }

      if (v22)
      {
        return 0;
      }

      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v23 = v13;
              v13 = v13 + 1;
              *(a1 + 8) = v13;
              v24 = *(v5 + v13);
              if (v24 != 10)
              {
                break;
              }

              ++*(a1 + 12);
              if (!v15)
              {
                LODWORD(v24) = 10;
                goto LABEL_45;
              }
            }

            if (!*(v5 + v13))
            {
              return v24;
            }

            if (v15)
            {
              break;
            }

LABEL_44:
            if (v24 == 62)
            {
              v27 = v13 + 1;
              goto LABEL_51;
            }

LABEL_45:
            if (v24)
            {
              v25 = v15;
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              return 0;
            }
          }
        }

        while (v24 != 45);
        v13 = v23 + 2;
        *(a1 + 8) = v13;
        v24 = *(v5 + v13);
        if (v24 == 45)
        {
          LODWORD(v13) = v23 + 3;
          *(a1 + 8) = v23 + 3;
          LODWORD(v24) = *(v5 + v23 + 3);
          goto LABEL_44;
        }

        if (!*(v5 + v13))
        {
          return v24;
        }
      }

    case '/':
      *(a1 + 8) = v7 + 2;
      LOBYTE(v9) = *(v5 + v7 + 2);
      v12 = 2;
      break;
    case '?':
      do
      {
        while (1)
        {
          while (1)
          {
            v10 = v8;
            v8 = v8 + 1;
            *(a1 + 8) = v8;
            v11 = *(v5 + v8);
            if (v11 != 10)
            {
              break;
            }

            ++*(a1 + 12);
          }

          if (v11 == 63)
          {
            break;
          }

          if (!*(v5 + v8))
          {
            return 0;
          }
        }

        v8 = v10 + 2;
        *(a1 + 8) = v8;
      }

      while (*(v5 + v8) != 62);
      v27 = v10 + 3;
LABEL_51:
      v24 = 4;
LABEL_52:
      *(a1 + 8) = v27;
      return v24;
    default:
      v12 = 1;
      break;
  }

  if (((v9 & 0xDF) - 65) > 0x19u)
  {
    return 0;
  }

  v17 = 0;
  while (((v9 & 0xDF) - 65) < 0x1Au || v9 == 45 || (v9 - 48) <= 9u)
  {
    *(a2 + v17) = v9;
    v18 = v17 + 1;
    v19 = *a1;
    v9 = *(a1 + 8) + 1;
    *(a1 + 8) = v9;
    LOBYTE(v9) = *(v19 + v9);
    v17 = v18;
    if (v18 == 31)
    {
      return 0;
    }
  }

  *(a2 + v17) = 0;
  do
  {
    if (v9 == 47)
    {
      v49 = *a1;
      v50 = *(a1 + 8) + 1;
      *(a1 + 8) = v50;
      if (*(v49 + v50) == 62)
      {
        v12 = 3;
        goto LABEL_88;
      }

      return 0;
    }

    if (v9 == 62)
    {
      LODWORD(v50) = *(a1 + 8);
LABEL_88:
      v27 = v50 + 1;
      v24 = v12;
      goto LABEL_52;
    }

    while (v9 == 9 || v9 == 32)
    {
      v28 = *a1;
      v9 = *(a1 + 8) + 1;
      *(a1 + 8) = v9;
      LOBYTE(v9) = *(v28 + v9);
    }

    v29 = 30;
    for (i = a4; ; ++i)
    {
      v31 = v9;
      if ((v9 & 0xFFFFFFDF) - 65 <= 0x19)
      {
        v32 = *a3;
        goto LABEL_65;
      }

      v32 = *a3;
      if (v9 != 45 && (v9 - 48) > 9)
      {
        break;
      }

LABEL_65:
      *(i + 32 * v32) = v9;
      if (!v29)
      {
        return 0;
      }

      v9 = *a1;
      v33 = *(a1 + 8) + 1;
      *(a1 + 8) = v33;
      LOBYTE(v9) = *(v9 + v33);
      --v29;
    }

    *(i + 32 * v32) = 0;
    while (v31 == 9 || v31 == 32)
    {
      v34 = *a1;
      v35 = *(a1 + 8) + 1;
      *(a1 + 8) = v35;
      v31 = *(v34 + v35);
    }

    if (v31 != 61)
    {
      return 0;
    }

    v36 = *a1;
    v37 = *(a1 + 8);
    v38 = (*a1 + v37 + 1);
    for (j = v37 + 2; ; ++j)
    {
      *(a1 + 8) = j - 1;
      v41 = *v38++;
      v40 = v41;
      if (v41 != 9 && v40 != 32)
      {
        break;
      }
    }

    if (v40 != 34)
    {
      return 0;
    }

    *(a1 + 8) = j;
    v42 = *(v36 + j);
    if (v42 != 34)
    {
      v44 = 0;
      v45 = a5;
      while (1)
      {
        *(v45 + 32 * *a3) = v42;
        if (v44 == -30)
        {
          return 0;
        }

        v46 = *a1;
        v47 = *(a1 + 8) + 1;
        *(a1 + 8) = v47;
        v42 = *(v46 + v47);
        --v44;
        ++v45;
        if (v42 == 34)
        {
          v43 = -v44;
          goto LABEL_83;
        }
      }
    }

    v43 = 0;
LABEL_83:
    v24 = 0;
    *(a5 + 32 * *a3 + v43) = 0;
    v9 = *a1;
    v48 = *(a1 + 8) + 1;
    *(a1 + 8) = v48;
    LOBYTE(v9) = *(v9 + v48);
    LODWORD(v48) = (*a3)++;
  }

  while (v48 <= 30);
  return v24;
}

double newObject(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 32) = *v2;
  }

  else
  {
    v3 = malloc_type_malloc(0x50uLL, 0x10F00409B684ADEuLL);
    result = 0.0;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 1) = *(a1 + 24);
    *(a1 + 24) = v3;
  }

  return result;
}

_BYTE *getString(uint64_t *a1)
{
  v2 = 0;
  v3 = *(a1 + 2);
  v4 = *a1 + v3;
  while (1)
  {
    v5 = *(v4 + v2);
    if (v5 == 10)
    {
      ++*(a1 + 3);
      goto LABEL_7;
    }

    if (!*(v4 + v2))
    {
      return 0;
    }

    if (v5 == 60)
    {
      break;
    }

LABEL_7:
    *(a1 + 2) = v3 + 1 + v2++;
  }

  result = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (!result)
  {
    puts("IOCFUnserialize: can't alloc temp memory");
    return 0;
  }

  if (v2 < 1)
  {
    v17 = 0;
LABEL_34:
    result[v17] = 0;
    return result;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = v3 + 3;
  v10 = result;
  while (2)
  {
    v11 = *a1;
    v12 = v8;
    v13 = v8 + 1;
    v14 = *(*a1 + v3 + v8);
    if (v14 != 38)
    {
      LODWORD(v8) = v8 + 1;
      goto LABEL_28;
    }

    v8 = v8 + 4;
    if (v12 + 4 > v2)
    {
      break;
    }

    v15 = v12 + 2;
    v16 = *(v11 + v13 + v3);
    if (v16 != 103)
    {
      if (v16 == 108)
      {
        if (*(v11 + v15 + v3) != 116 || *(v11 + v9 + v12) != 59)
        {
          break;
        }

        LOBYTE(v14) = 60;
      }

      else
      {
        if (v12 + 5 > v2 || v16 != 97 || *(v11 + v3 + v15) != 109 || *(v11 + v9 + v12) != 112 || *(v11 + v8 + v3) != 59)
        {
          break;
        }

        LOBYTE(v14) = 38;
        LODWORD(v8) = v12 + 5;
      }

      goto LABEL_28;
    }

    if (*(v11 + v3 + v15) == 116 && *(v11 + v9 + v12) == 59)
    {
      LOBYTE(v14) = 62;
LABEL_28:
      *v10++ = v14;
      v7 += 0x100000000;
      if (v8 >= v2)
      {
        v17 = v7 >> 32;
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  free(result);
  return 0;
}

uint64_t buildString(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithCString(*(a1 + 16), *(a2 + 56), 0x8000100u);
  if (!v4)
  {
    syslog(3, "FIXME: IOUnserialize has detected a string that is not valid UTF-8, %s.", *(a2 + 56));
    v4 = CFStringCreateWithCString(*(a1 + 16), *(a2 + 56), 0);
  }

  v5 = *(a2 + 72);
  if ((v5 & 0x80000000) == 0)
  {
    CFDictionarySetValue(*(a1 + 40), v5, v4);
  }

  free(*(a2 + 56));
  *(a2 + 56) = 0;
  *(a2 + 24) = v4;
  return a2;
}

uint64_t getNumber(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(*a1 + v2);
  if (v3 != 48)
  {
    LODWORD(v4) = *(a1 + 2);
    goto LABEL_18;
  }

  v4 = v2 + 1;
  *(a1 + 2) = v4;
  v3 = *(v1 + v4);
  if (v3 != 120)
  {
LABEL_18:
    if (v3 == 45)
    {
      v4 = v4 + 1;
      *(a1 + 2) = v4;
      v15 = *(v1 + v4);
    }

    else
    {
      v15 = v3;
    }

    v16 = v15;
    if ((v15 - 48) > 9)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = (v1 + v4 + 1);
      v19 = v4 + 1;
      do
      {
        v17 = 10 * v17 + v16 - 48;
        *(a1 + 2) = v19;
        v20 = *v18++;
        v16 = v20;
        ++v19;
      }

      while (v20 - 48 < 0xA);
    }

    if (v3 == 45)
    {
      return -v17;
    }

    else
    {
      return v17;
    }
  }

  *(a1 + 2) = v2 + 2;
  v5 = *(v1 + v2 + 2);
  v6 = v5 - 48 < 0xA;
  v7 = 0;
  if (v5 - 48 < 0xA || v5 - 97 <= 5)
  {
    v9 = (v2 + 2 + v1 + 1);
    v10 = v2 + 3;
    do
    {
      if (v6)
      {
        v11 = -48;
      }

      else
      {
        v11 = -87;
      }

      v7 = v11 + 16 * v7 + v5;
      *(a1 + 2) = v10;
      v12 = *v9++;
      v5 = v12;
      v13 = v12 - 97;
      v6 = v12 - 48 < 0xA;
      ++v10;
    }

    while (v12 - 48 < 0xA || v13 < 6);
  }

  return v7;
}

uint64_t IOPSRequestBatteryUpdate(int a1)
{
  connect = 0;
  input = a1;
  v1 = IOServiceMatching("AppleSmartBatteryManager");
  MatchingService = IOServiceGetMatchingService(0, v1);
  if (!MatchingService)
  {
    return 3758097136;
  }

  v3 = MatchingService;
  v4 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (!v4)
  {
    IOConnectCallMethod(connect, 4u, &input, 1u, 0, 0, 0, 0, 0, 0);
    IOServiceClose(connect);
  }

  IOObjectRelease(v3);
  return v4;
}

kern_return_t IOServiceClose(io_connect_t connect)
{
  v2 = io_service_close(connect);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], connect);
  return v2;
}

uint64_t io_service_close(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0000000000;
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

kern_return_t IORegistryEntryCreateCFProperties(io_registry_entry_t entry, CFMutableDictionaryRef *properties, CFAllocatorRef allocator, IOOptionBits options)
{
  size_4[256] = *MEMORY[0x1E69E9840];
  size = 0;
  errorString = 0;
  address = 0;
  bufferSize = 2048;
  if (gIOKitLibSerializeOptions)
  {
    result = io_registry_entry_get_properties_bin_buf(entry, size_4, &bufferSize);
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = io_registry_entry_get_properties(entry);
    if (result)
    {
      goto LABEL_18;
    }
  }

  v7 = address;
  if (address)
  {
    v8 = size;
  }

  else
  {
    v8 = bufferSize;
    v7 = size_4;
  }

  v9 = IOCFUnserializeWithSize(v7, v8, allocator, 0, &errorString);
  *properties = v9;
  if (!v9 && errorString)
  {
    CStringPtr = CFStringGetCStringPtr(errorString, 0);
    if (CStringPtr)
    {
      puts(CStringPtr);
    }

    CFRelease(errorString);
  }

  if (address)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
  }

  if (*properties)
  {
    result = 0;
  }

  else
  {
    result = -536870199;
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t io_registry_entry_get_properties_bin_buf(unsigned int a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  v10 = *a3;
  v11 = 0;
  *&v7.msgh_bits = 0x3000001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB4800000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOPSCopyPowerSourcesByTypePrecise(int a1, uint64_t *a2)
{
  uint64 = 3758097084;
  PMQueue = getPMQueue();
  if (a2)
  {
    v6 = PMQueue;
    if (PMQueue)
    {
      mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
      if (mach_service)
      {
        v8 = mach_service;
        xpc_connection_set_target_queue(mach_service, v6);
        xpc_connection_set_event_handler(v8, &__block_literal_global_106);
        xpc_connection_resume(v8);
        v9 = xpc_dictionary_create(0, 0, 0);
        if (v9)
        {
          v10 = v9;
          xpc_dictionary_set_uint64(v9, "powerInfoPrecise", a1);
          v11 = xpc_connection_send_message_with_reply_sync(v8, v10);
          if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
          {
            uint64 = xpc_dictionary_get_uint64(v11, "returnCode");
            if (!uint64)
            {
              xpc_dictionary_get_value(v11, "powerInfoPrecise");
              *a2 = _CFXPCCreateCFObjectFromXPCObject();
            }
          }

          if (v11)
          {
            xpc_release(v11);
          }

          xpc_release(v10);
        }

        else
        {
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          uint64 = 3758097086;
          if (v20)
          {
            IOPSGaugingMitigationGetState_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
          }
        }

        xpc_release(v8);
      }

      else
      {
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        uint64 = 3758097087;
        if (v12)
        {
          IOPSGaugingMitigationGetState_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
        }
      }
    }
  }

  return uint64;
}

CFArrayRef IOPSCopyPowerSourcesByType(int a1)
{
  v9 = 0;
  if (_pm_connect(&v9))
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v7 = 0;
  v8 = 0;
  v6 = 0;
  io_ps_copy_powersources_info(v9, a1, &v8, &v7, &v6);
  v3 = CFDataCreate(0, v8, v7);
  if (v3)
  {
    v4 = v3;
    v2 = CFPropertyListCreateWithData(0, v3, 0, 0, 0);
    CFRelease(v4);
  }

  else
  {
    v2 = 0;
  }

  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v8, v7);
  if (!v2)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  return v2;
}

uint64_t io_ps_copy_powersources_info(int a1, int a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  v18 = 0u;
  v17 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D3E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v10 = *&msg[12];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(msg, 3162115, 0x24u, 0x44u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&msg[20] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg[20] == 73122)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v12 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = *&msg[32];
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_25;
        }

        v12 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v17) == 1)
        {
          v13 = DWORD1(v17);
          if (DWORD1(v17) == v18)
          {
            v12 = 0;
            *a3 = *&msg[28];
            *a4 = v13;
            *a5 = DWORD1(v18);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

CFArrayRef IOPSCopyPowerSourcesList(CFTypeRef blob)
{
  TypeID = CFArrayGetTypeID();
  if (!blob || CFGetTypeID(blob) != TypeID)
  {
    return 0;
  }

  return CFArrayCreateCopy(0, blob);
}

uint64_t IOPSGetPercentRemaining(int *a1, BOOL *a2, _BYTE *a3)
{
  v6 = 3758097089;
  out_token = 0;
  v13 = 0;
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      if (!CFStringHasPrefix(Identifier, @"com.apple."))
      {
        return v6;
      }
    }
  }

  if (!a1)
  {
    return 3758097090;
  }

  if (notify_register_check("com.apple.system.powersources.percent", &out_token))
  {
    v6 = 3758097097;
    goto LABEL_10;
  }

  notify_get_state(out_token, &v13);
  notify_cancel(out_token);
  v9 = v13;
  if ((v13 & 0x80000) == 0)
  {
    v6 = 3758097112;
LABEL_10:
    *a1 = 100;
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      LOBYTE(v10) = 1;
LABEL_14:
      *a3 = v10;
      return v6;
    }

    return v6;
  }

  v12 = v13;
  if (v13 >= 0x64uLL)
  {
    v12 = 100;
  }

  *a1 = v12;
  if (a2)
  {
    *a2 = (v9 & 0x20000) != 0;
  }

  v6 = 0;
  if (a3)
  {
    v10 = (v9 >> 21) & 1;
    goto LABEL_14;
  }

  return v6;
}

uint64_t IOHIDServiceCopyEventForClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v10 = mach_absolute_time();
  *&valuePtr[0] = 0;
  CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, valuePtr);
  _IOHIDDebugTrace(8263, 1, *&valuePtr[0], a2, 0, 0);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v29, valuePtr);
  }

  ++**(a1 + 72);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(*v11 + 88);
    if (v12)
    {
      v13 = v12();
LABEL_11:
      v31[3] = v13;
      goto LABEL_12;
    }
  }

  v14 = *(a1 + 360);
  if (v14)
  {
    v15 = *(v14 + 64);
    if (v15)
    {
      v13 = v15(*(a1 + 344), *(a1 + 352), a2, a3, a4);
      goto LABEL_11;
    }
  }

  v16 = *(a1 + 480);
  if (v16)
  {
    v17 = *(a1 + 568);
    if (v17)
    {
      v13 = [v16 v17];
      goto LABEL_11;
    }
  }

LABEL_12:
  v18 = *(a1 + 72);
  if (*v18)
  {
    --*v18;
    if (pthread_mutex_unlock((v18 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v29, valuePtr);
    }
  }

  v19 = v31[3];
  if (v19)
  {
    if (!IOHIDEventGetSenderID(v19))
    {
      v20 = *(a1 + 48);
      *&valuePtr[0] = 0;
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberSInt64Type, valuePtr);
        v21 = *&valuePtr[0];
      }

      else
      {
        v21 = 0;
      }

      IOHIDEventSetSenderID(v31[3], v21);
    }

    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v29, valuePtr);
    }

    ++**(a1 + 72);
    v22 = *(a1 + 248);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = __IOHIDServiceCopyEventForClient_block_invoke;
    v28[3] = &unk_1E74A89C0;
    v28[4] = &v30;
    v28[5] = a5;
    _IOHIDCFArrayApplyBlock(v22, v28);
    v23 = *(a1 + 72);
    if (*v23)
    {
      --*v23;
      if (pthread_mutex_unlock((v23 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v29, valuePtr);
      }
    }
  }

  *&valuePtr[0] = 0;
  CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, valuePtr);
  _IOHIDDebugTrace(8263, 2, *&valuePtr[0], a2, 0, 0);
  v24 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v24, v10, 0x3E8u);
  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  v25 = v31[3];
  _Block_object_dispose(&v30, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

IOReturn IOPMAssertionCreateWithName(CFStringRef AssertionType, IOPMAssertionLevel AssertionLevel, CFStringRef AssertionName, IOPMAssertionID *AssertionID)
{
  v4 = -536870212;
  valuePtr = AssertionLevel;
  if (AssertionType && AssertionName && AssertionID)
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    TypeID = CFNumberGetTypeID();
    if (v8)
    {
      if (CFGetTypeID(v8) == TypeID)
      {
        Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v11 = Mutable;
          CFDictionarySetValue(Mutable, @"AssertType", AssertionType);
          CFDictionarySetValue(v11, @"AssertName", AssertionName);
          CFDictionarySetValue(v11, @"AssertLevel", v8);
          CFRelease(v8);
          v4 = IOPMAssertionCreateWithProperties(v11, AssertionID);
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v4 = -536870206;
    if (v12)
    {
      IOPMAssertionCreateWithName_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return v4;
}

uint64_t __IOHIDManagerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDManagerTypeID = result;
  return result;
}

IOHIDManagerRef IOHIDManagerCreate(CFAllocatorRef allocator, IOOptionBits options)
{
  v4 = __kIOHIDManagerTypeID;
  if (!__kIOHIDManagerTypeID)
  {
    pthread_once(&__sessionTypeInit, __IOHIDManagerRegister);
    v4 = __kIOHIDManagerTypeID;
  }

  Instance = _IOHIDObjectCreateInstance(allocator, v4, 0xF8uLL);
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 0;
    *(Instance + 160) = 0;
    *(Instance + 152) = options;
    if ((options & 3) == 1)
    {
      __IOHIDManagerLoadProperties(Instance);
    }

    v7 = dispatch_queue_create("IOHIDManagerStateQueue", 0);
    *(v6 + 32) = v7;
    if (v7)
    {
      *(v6 + 31) = os_state_add_handler();
    }
  }

  return v6;
}

void IOHIDManagerSetDeviceMatchingMultiple(IOHIDManagerRef manager, CFArrayRef multiple)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  v5 = *(manager + 4);
  if (v5)
  {
    if ((*(manager + 38) & 5) == 1)
    {
      __IOHIDManagerSaveProperties();
      v5 = *(manager + 4);
    }

    CFSetRemoveAllValues(v5);
  }

  v6 = *(manager + 6);
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  v7 = *(manager + 5);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  v8 = *(manager + 8);
  if (v8)
  {
    CFDictionaryRemoveAllValues(v8);
  }

  v9 = *(manager + 15);
  if (v9)
  {
    CFRelease(v9);
    *(manager + 15) = 0;
  }

  if (multiple)
  {
    Count = CFArrayGetCount(multiple);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(multiple, i);
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(ValueAtIndex))
        {
          __IOHIDManagerSetDeviceMatching(manager, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    __IOHIDManagerSetDeviceMatching(manager, 0);
  }

  if (*(manager + 4))
  {
    v15 = *(manager + 15);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = CFGetAllocator(manager);
    *(manager + 15) = CFSetCreateCopy(v16, *(manager + 4));
  }

  os_unfair_recursive_lock_unlock();
}

void __IOHIDManagerSetDeviceMatching(uint64_t a1, const __CFDictionary *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (!*(a1 + 72))
  {
    v9 = IONotificationPortCreate(0);
    *(a1 + 72) = v9;
    if (*(a1 + 80))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v9);
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(a1 + 80), RunLoopSource, *(a1 + 88));
      }
    }
  }

  os_unfair_recursive_lock_unlock();
  v4 = IOServiceMatching("IOHIDDevice");
  if (v4)
  {
    v5 = v4;
    notification = 0;
    __IOHIDManagerMergeDictionaries(a2, v4);
    v6 = IOServiceAddMatchingNotification(*(a1 + 72), "IOServiceFirstMatch", v5, __IOHIDManagerDeviceAdded, a1, &notification);
    if (v6)
    {
      v7 = v6;
      v8 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __IOHIDManagerSetDeviceMatching_cold_1(v7, v8);
      }
    }

    else
    {
      os_unfair_recursive_lock_lock_with_options();
      v11 = *(a1 + 40);
      if (v11 || (v13.version = 0, memset(&v13.copyDescription, 0, 24), v13.retain = _IOObjectCFRetain, v13.release = _IOObjectCFRelease, v12 = CFGetAllocator(a1), v11 = CFSetCreateMutable(v12, 0, &v13), (*(a1 + 40) = v11) != 0))
      {
        CFSetAddValue(v11, notification);
        IOObjectRelease(notification);
        os_unfair_recursive_lock_unlock();
        __IOHIDManagerDeviceAdded(a1, notification);
      }

      else
      {
        os_unfair_recursive_lock_unlock();
      }
    }
  }
}

uint64_t __ApplyToDevices(CFSetRef *a1)
{
  v2 = 3758097084;
  OUTLINED_FUNCTION_3_1();
  if (a1[4])
  {
    v3 = CFGetAllocator(a1);
    Copy = CFSetCreateCopy(v3, a1[4]);
    os_unfair_recursive_lock_unlock();
    if (Copy)
    {
      OUTLINED_FUNCTION_0_6();
      CFSetApplyFunction(Copy, v5, v6);
      v2 = 0;
      CFRelease(Copy);
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    return 3758097088;
  }

  return v2;
}

CFSetRef IOHIDManagerCopyDevices(IOHIDManagerRef manager)
{
  OUTLINED_FUNCTION_3_1();
  if (*(manager + 4))
  {
    v2 = CFGetAllocator(manager);
    Copy = CFSetCreateCopy(v2, *(manager + 4));
  }

  else
  {
    Copy = 0;
  }

  os_unfair_recursive_lock_unlock();
  return Copy;
}

kern_return_t IOObjectRetain(io_object_t object)
{
  v2 = MEMORY[0x1E69E9A60];
  result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], object, 0, 1);
  if (result == 17)
  {
    v4 = *v2;

    return mach_port_mod_refs(v4, object, 4u, 1);
  }

  return result;
}

void __IOHIDManagerMergeDictionaries(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  Count = CFDictionaryGetCount(a1);
  v5 = Count;
  if (!Count)
  {
    return;
  }

  v6 = 8 * Count;
  v7 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
  v8 = malloc_type_malloc(v6, 0x6004044C4A2DFuLL);
  v9 = v8;
  if (v7 && v8)
  {
    CFDictionaryGetKeysAndValues(a1, v8, v7);
    v10 = v7;
    v11 = v9;
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = *v10++;
      CFDictionarySetValue(a2, v12, v14);
      --v5;
    }

    while (v5);
  }

  else if (!v7)
  {
    goto LABEL_11;
  }

  free(v7);
LABEL_11:
  if (v9)
  {

    free(v9);
  }
}

uint64_t InternalIOServiceAddNotification(mach_port_t a1, const char *a2, CFTypeRef object, int a4, const void *a5, unsigned int a6, _DWORD *a7)
{
  v7 = 3758097090;
  if (!object)
  {
    return v7;
  }

  v14 = a1;
  if (!a1)
  {
    mainPort = 0;
    if (IOMasterPort(0, &mainPort))
    {
      v14 = 0;
    }

    else
    {
      v14 = mainPort;
    }
  }

  v15 = IOCFSerialize(object, gIOKitLibSerializeOptions);
  CFRelease(object);
  if (!v15)
  {
    return 3758097095;
  }

  Length = CFDataGetLength(v15);
  v17 = Length;
  if (gIOKitLibSerializeOptions)
  {
    if (Length <= 0xFFF)
    {
      CFDataGetBytePtr(v15);
      v19 = io_service_add_notification_bin();
      goto LABEL_13;
    }
  }

  else if (Length <= 0x1FF)
  {
    BytePtr = CFDataGetBytePtr(v15);
    v19 = io_service_add_notification(v14, a2, BytePtr, a4, a5, a6, a7);
LABEL_13:
    v7 = v19;
    goto LABEL_17;
  }

  v24 = 0;
  v20 = CFDataGetBytePtr(v15);
  v21 = io_service_add_notification_ool(v14, a2, v20, v17, a4, a5, a6, &v24, a7);
  if (v21)
  {
    v7 = v21;
  }

  else
  {
    v7 = v24;
  }

LABEL_17:
  CFRelease(v15);
  if (v14 && v14 != a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v14);
  }

  return v7;
}

kern_return_t IOServiceAddMatchingNotification(IONotificationPortRef notifyPort, const io_name_t notificationType, CFDictionaryRef matching, IOServiceMatchingCallback callback, void *refCon, io_iterator_t *notification)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = callback;
  v8[2] = refCon;
  result = InternalIOServiceAddNotification(*notifyPort, notificationType, matching, *(notifyPort + 1), v8, 3u, notification);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t io_service_add_notification_bin()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  memset(v27, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v24 = 1;
  v25 = v13;
  DWORD1(v26) = 1310720;
  *(&v26 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v14 = mig_strncpy_zerofill(v27 + 8, v1, 128);
  }

  else
  {
    v14 = mig_strncpy(v27 + 8, v1, 128);
  }

  LODWORD(v27[0]) = 0;
  DWORD1(v27[0]) = v14;
  if (v9 <= 0x1000 && (v15 = (v14 + 3) & 0xFFFFFFFC, memcpy(v27 + v15 + 12, v11, v9), *(v27 + v15 + 8) = v9, v5 <= 8))
  {
    v19 = (v9 + 3) & 0x3FFC;
    v20 = &reply_port + v15 + v19 - 128;
    memcpy(v20 + 192, v7, 8 * v5);
    *(v20 + 47) = v5;
    v21 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v19 + 8 * v5 + v15 + 64;
    *&reply_port.msgh_remote_port = __PAIR64__(v21, v12);
    *&reply_port.msgh_voucher_port = 0xB4400000000;
    v22 = mach_msg2_internal();
    v16 = v22;
    if ((v22 - 268435458) <= 0xE && ((1 << (v22 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v22)
      {
        if (reply_port.msgh_id == 71)
        {
          v16 = 4294966988;
        }

        else if (reply_port.msgh_id == 2984)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v16 = 4294966996;
            if (v24 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v26) << 16 == 1114112)
            {
              v16 = 0;
              *v3 = v25;
              goto LABEL_7;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v16 = 4294966996;
            if (v26)
            {
              if (reply_port.msgh_remote_port)
              {
                v16 = 4294966996;
              }

              else
              {
                v16 = v26;
              }
            }
          }

          else
          {
            v16 = 4294966996;
          }
        }

        else
        {
          v16 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_7;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v16 = 4294966989;
  }

LABEL_7:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _IOObjectCFRetain(int a1, uint64_t object)
{
  if (IOObjectRetain(object))
  {
    return 0;
  }

  else
  {
    return object;
  }
}

uint64_t __IOHIDManagerDeviceAdded(uint64_t a1, io_iterator_t iterator)
{
  v28 = *MEMORY[0x1E69E9840];
  notification = 0;
  result = IOIteratorNext(iterator);
  if (!result)
  {
    goto LABEL_34;
  }

  v5 = result;
  v6 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E695E9E8];
  do
  {
    v9 = CFGetAllocator(a1);
    v10 = IOHIDDeviceCreate(v9, v5);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    os_unfair_recursive_lock_lock_with_options();
    if (!*(a1 + 32))
    {
      v12 = CFGetAllocator(a1);
      *(a1 + 32) = CFSetCreateMutable(v12, 0, MEMORY[0x1E695E9F8]);
      if (*(a1 + 144))
      {
        v13 = CFGetAllocator(a1);
        *(a1 + 136) = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], 0);
      }

      v6 = 1;
    }

    v14 = IOServiceAddInterestNotification(*(a1 + 72), v5, "IOGeneralInterest", __IOHIDManagerDeviceRemoved, a1, &notification);
    Mutable = *(a1 + 48);
    if (!Mutable)
    {
      v16 = *(v8 + 16);
      *&valueCallBacks.version = *v8;
      *&valueCallBacks.retain = v16;
      valueCallBacks.copyDescription = *(v8 + 32);
      valueCallBacks.info = _IOObjectCFRetain;
      valueCallBacks.retain = _IOObjectCFRelease;
      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], &valueCallBacks);
      *(a1 + 48) = Mutable;
    }

    if (!v14)
    {
      CFDictionarySetValue(Mutable, v11, notification);
      IOObjectRelease(notification);
      v18 = *(a1 + 32);
      if (v18)
      {
        CFSetAddValue(v18, v11);
      }

      os_unfair_recursive_lock_unlock();
      os_unfair_recursive_lock_lock_with_options();
      *(a1 + 240);
      *(a1 + 176);
      *(a1 + 192);
      *(a1 + 200);
      *(a1 + 104);
      os_unfair_recursive_lock_unlock();
      os_unfair_recursive_lock_lock_with_options();
      *(a1 + 144);
      if (*(a1 + 80) && !v6)
      {
        *(a1 + 216);
      }

      if (*(a1 + 96) && *(a1 + 216))
      {
        atomic_load((a1 + 116));
      }

      atomic_load((a1 + 116));
      os_unfair_recursive_lock_unlock();
      __IOHIDManagerDeviceApplier();
      if ((*(a1 + 152) & 3) == 1)
      {
        __IOHIDDeviceLoadProperties(v11);
      }

      os_unfair_recursive_lock_lock_with_options();
      v19 = *(a1 + 56);
      if (v19)
      {
        CFDictionaryApplyFunction(v19, __IOHIDApplyPropertiesToDeviceFromDictionary, v11);
      }

      os_unfair_recursive_lock_unlock();
      CFRelease(v11);
LABEL_27:
      IOObjectRelease(v5);
      goto LABEL_28;
    }

    v17 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(valueCallBacks.version) = 67109120;
      HIDWORD(valueCallBacks.version) = v14;
      _os_log_error_impl(&dword_197195000, v17, OS_LOG_TYPE_ERROR, "IOServiceAddInterestNotification: 0x%x", &valueCallBacks, 8u);
    }

    CFRelease(v11);
    IOObjectRelease(v5);
    os_unfair_recursive_lock_unlock();
LABEL_28:
    result = IOIteratorNext(iterator);
    v5 = result;
  }

  while (result);
  if (v6)
  {
    memset(&valueCallBacks, 0, 72);
    os_unfair_recursive_lock_lock_with_options();
    valueCallBacks.info = a1;
    valueCallBacks.perform = __IOHIDManagerInitialEnumCallback;
    v20 = CFGetAllocator(a1);
    *(a1 + 120) = CFSetCreateCopy(v20, *(a1 + 32));
    v21 = CFGetAllocator(a1);
    v22 = CFRunLoopSourceCreate(v21, 0, &valueCallBacks);
    *(a1 + 128) = v22;
    v23 = *(a1 + 80);
    if (v23)
    {
      v24 = *(a1 + 88);
      if (v24)
      {
        CFRunLoopAddSource(v23, v22, v24);
        CFRunLoopSourceSignal(*(a1 + 128));
        CFRunLoopWakeUp(*(a1 + 80));
      }
    }

    result = os_unfair_recursive_lock_unlock();
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void IOHIDManagerScheduleWithRunLoop(IOHIDManagerRef manager, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 10) | *(manager + 12))
  {
    manager = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(manager + 10) = runLoop;
  *(manager + 11) = runLoopMode;
  if (runLoop)
  {
    if (*(manager + 15))
    {
      v7 = *(manager + 16);
      if (v7)
      {
        CFRunLoopAddSource(runLoop, v7, runLoopMode);
        CFRunLoopSourceSignal(*(manager + 16));
        CFRunLoopWakeUp(*(manager + 10));
      }
    }

    v8 = *(manager + 9);
    if (v8)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v8);
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(manager + 10), RunLoopSource, *(manager + 11));
      }
    }

    os_unfair_recursive_lock_unlock();
    v10 = *MEMORY[0x1E69E9840];

    __ApplyToDevices(manager);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    os_unfair_recursive_lock_unlock();
  }
}

CFRunLoopSourceRef IONotificationPortGetRunLoopSource(IONotificationPortRef notify)
{
  v10 = *MEMORY[0x1E69E9840];
  shouldFreeInfo = 0;
  result = *(notify + 2);
  if (!result)
  {
    context.version = 1;
    context.info = notify;
    memset(&context.retain, 0, 24);
    result = CFMachPortCreateWithPort(0, *(notify + 1), IODispatchCalloutFromCFMessage, &context, &shouldFreeInfo);
    *(notify + 1) = result;
    if (result)
    {
      if (shouldFreeInfo)
      {
        v4 = CFCopyDescription(result);
        if (v4)
        {
          v5 = v4;
          v6 = buffer;
          CFStringGetCString(v4, buffer, 255, 0x8000100u);
          CFRelease(v5);
        }

        else
        {
          v6 = "No Description";
        }

        asl_log(0, 0, 3, "IOKit.framework:IONotificationPortGetRunLoopSource bad CFMachPort, %s\n", v6);
        CFRelease(*(notify + 1));
        *(notify + 1) = 0;
        result = *(notify + 2);
      }

      else
      {
        result = CFMachPortCreateRunLoopSource(0, result, 0);
        *(notify + 2) = result;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *_IOHIDEventSystemClientCopyEventForService(uint64_t a1, IOHIDServiceClientRef service, int a3, const __CFData *a4, int a5)
{
  v5 = 0;
  if (a1 && service)
  {
    v10 = *MEMORY[0x1E695E480];
    RegistryID = IOHIDServiceClientGetRegistryID(service);
    v12 = _IOHIDCreateBinaryData(v10, RegistryID);
    if (v12)
    {
      v13 = v12;
      v30 = 0;
      v29 = 0;
      BytePtr = CFDataGetBytePtr(v12);
      Length = CFDataGetLength(v13);
      if (a4)
      {
        DataInternal = IOHIDEventCreateDataInternal(v10, a4);
        if (DataInternal)
        {
          v16 = DataInternal;
          v17 = _IOHIDCreateBinaryData(v10, DataInternal);
          a4 = v17;
          if (v17)
          {
            v18 = CFDataGetBytePtr(v17);
            v19 = CFDataGetLength(a4);
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          CFRelease(v16);
LABEL_13:
          os_unfair_recursive_lock_lock_with_options();
          v20 = io_hideventsystem_copy_event_for_service(*(a1 + 32), BytePtr, Length, a3, v18, v19, a5, &v30, &v29);
          v21 = v20;
          if (v20 == 268435459)
          {
            if (*(a1 + 384) || *(a1 + 400))
            {
              os_unfair_recursive_lock_unlock();
              goto LABEL_19;
            }

            __IOHIDEventSystemClientTerminationCallback(v20, a1, 0);
            v21 = io_hideventsystem_copy_event_for_service(*(a1 + 32), BytePtr, Length, a3, v18, v19, a5, &v30, &v29);
          }

          os_unfair_recursive_lock_unlock();
          if (!v21)
          {
            v23 = v30;
            v24 = v29;
            TypeID = CFDataGetTypeID();
            v26 = _IOHIDUnserializeAndVMDeallocWithTypeID(v23, v24, TypeID);
            if (v26)
            {
              v27 = v26;
              v5 = IOHIDEventCreateWithDataInternal(v10, v26);
              CFRelease(v27);
              if (!a4)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }
          }

LABEL_19:
          v5 = 0;
          if (!a4)
          {
LABEL_21:
            CFRelease(v13);
            return v5;
          }

LABEL_20:
          CFRelease(a4);
          goto LABEL_21;
        }

        a4 = 0;
      }

      v18 = 0;
      v19 = 0;
      goto LABEL_13;
    }

    return 0;
  }

  return v5;
}

uint64_t io_hideventsystem_copy_event_for_service(mach_port_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, void *a8, _DWORD *a9)
{
  v18 = 2;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a5;
  v23 = 16777472;
  v24 = a6;
  v25 = *MEMORY[0x1E69E99E0];
  v26 = a3;
  v27 = a4;
  v28 = a6;
  v29 = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1117700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x54u, 0x40u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 70107)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v19))
            {
              if (msg.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_28;
        }

        v14 = 4294966996;
        if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v14 = 0;
            *a8 = v19;
            *a9 = v15;
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_28;
  }

  return v14;
}

uint64_t _io_hideventsystem_copy_event_for_service(unsigned int a1, UInt8 *a2, CFIndex a3, uint64_t a4, UInt8 *a5, unsigned int a6, uint64_t a7, vm_offset_t *a8, _DWORD *a9)
{
  *a9 = 0;
  v15 = OUTLINED_FUNCTION_6_4(a3, a2);
  TypeID = CFDataGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a5, a6, TypeID);
  if (v15)
  {
    v18 = IOMIGMachPortCacheCopy(a1);
    v19 = v18;
    if (v18 && (v20 = CFGetTypeID(v18), v20 == IOHIDEventSystemConnectionGetTypeID()))
    {
      if (v17)
      {
        v21 = CFGetAllocator(v19);
        v22 = IOHIDEventCreateWithDataInternal(v21, v17);
      }

      else
      {
        v22 = 0;
      }

      if (IOHIDEventSystemConnectionGetType(v19) == 2 || IOHIDEventSystemConnectionGetType(v19) == 4 || (System = _IOHIDEventSystemConnectionGetSystem(v19)) == 0)
      {
        v25 = 0;
        if (v22)
        {
LABEL_16:
          CFRelease(v22);
        }
      }

      else
      {
        v24 = IOHIDEventSystemCopyService(System, v15);
        v25 = v24;
        if (v24)
        {
          v26 = IOHIDServiceCopyEvent(v24, a4, v22, a7);
          if (v26)
          {
            v27 = v26;
            v28 = CFGetAllocator(v19);
            DataInternal = IOHIDEventCreateDataInternal(v28, v27);
            if (DataInternal)
            {
              v30 = DataInternal;
              *a9 = _IOHIDSerialize(DataInternal, a8);
              CFRelease(v30);
            }

            CFRelease(v27);
          }
        }

        if (v22)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v19 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return 0;
}

uint64_t _Xio_hideventsystem_copy_event_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 84)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 76))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_event_for_service(*(result + 12), *(result + 28), *(result + 40), *(result + 72), *(result + 44), *(result + 56), *(result + 80), (a2 + 28), (a2 + 52));
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
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t io_connect_method_var_output(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__dst, int *a10, void *a11, int *a12, void *a13, _DWORD *a14)
{
  v14 = MEMORY[0x1EEE9AC00]();
  v78 = *MEMORY[0x1E69E9840];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *&v48[16] = 0u;
  *__n = 0u;
  *reply_port = 0u;
  *v48 = 0u;
  *&v48[8] = *MEMORY[0x1E69E99E0];
  *&v48[16] = v20;
  if (v15 <= 0x10)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    v27 = 2 * v15;
    __memcpy_chk();
    *&v48[20] = v25;
    if (v23 <= 0x1000)
    {
      v31 = &reply_port[v27];
      v32 = (v23 + 3) & 0x3FFC;
      v33 = &reply_port[v27] + v32;
      v34 = v27 * 4 + v32;
      memcpy(v31 + 11, v24, v23);
      v31[10] = v23;
      *(v33 + 44) = v22;
      *(v33 + 52) = v21;
      v35 = *a10;
      if (*a10 >= 0x1000)
      {
        v35 = 4096;
      }

      *(v33 + 15) = v35;
      v36 = *a12;
      if (*a12 >= 0x10)
      {
        v36 = 16;
      }

      *(v33 + 16) = v36;
      v37 = mig_get_reply_port();
      reply_port[0] = 5395;
      reply_port[1] = v34 + 68;
      *&reply_port[2] = __PAIR64__(v37, v26);
      *v48 = 0xB3800000000;
      v38 = mach_msg2_internal();
      v28 = v38;
      if ((v38 - 268435458) <= 0xE && ((1 << (v38 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (v38)
      {
        mig_dealloc_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (*&v48[4] == 71)
      {
        v28 = 4294966988;
      }

      else if (*&v48[4] == 2972)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v28 = 4294966996;
          if (*&v48[8] == 1 && reply_port[1] - 64 <= 0x1080 && !reply_port[2] && v48[23] == 1)
          {
            v39 = HIDWORD(__n[0]);
            if (HIDWORD(__n[0]) <= 0x1000 && reply_port[1] - 64 >= HIDWORD(__n[0]))
            {
              v40 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port[1] >= v40 + 64)
              {
                v41 = reply_port + v40;
                v42 = *(v41 + 14);
                if (v42 <= 0x10 && v42 <= (reply_port[1] - v40 - 64) >> 3 && reply_port[1] - v40 == 8 * v42 + 64)
                {
                  v43 = v41 - 4096;
                  v44 = &v41[8 * v42 - 4096];
                  if (*&v48[24] == *(v44 + 4156))
                  {
                    v45 = *a10;
                    if (HIDWORD(__n[0]) <= v45)
                    {
                      memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                      *a10 = v39;
                      v46 = *(v43 + 1038);
                      if (v46 <= *a12)
                      {
                        memcpy(a11, v43 + 4156, 8 * v46);
                        v28 = 0;
                        *a12 = *(v43 + 1038);
                        *a13 = *&v48[12];
                        *a14 = *(v44 + 4156);
                        goto LABEL_4;
                      }

                      memcpy(a11, v43 + 4156, (8 * *a12));
                      *a12 = *(v43 + 1038);
                    }

                    else
                    {
                      memcpy(__dst, &__n[1], v45);
                      *a10 = v39;
                    }

                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v28 = 4294966996;
          if (*&v48[16])
          {
            if (reply_port[2])
            {
              v28 = 4294966996;
            }

            else
            {
              v28 = *&v48[16];
            }
          }
        }

        else
        {
          v28 = 4294966996;
        }
      }

      else
      {
        v28 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_4;
    }
  }

LABEL_3:
  v28 = 4294966989;
LABEL_4:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t iohideventsystem_client_dispatch_service_removal(mach_port_t a1, uint64_t a2, int a3, mach_msg_timeout_t a4)
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
  *&v12.msgh_voucher_port = 0x124F900000000;
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

  if (v12.msgh_id != 75101)
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

uint64_t _IOHIDServiceClientDispatchServiceRemoval(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[6], a1[7], a1);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      v3(a1[6], a1[7], a1);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

__CFString *IOHIDServiceClientCopyDescription(uint64_t a1)
{
  v146 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  if (Mutable)
  {
    OUTLINED_FUNCTION_2_10(Mutable, v3, @"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
    v5 = *(a1 + 16);
    if (v5 && (v6 = CFGetTypeID(v5), v6 == CFNumberGetTypeID()))
    {
      Value = CFNumberGetValue(*(a1 + 16), kCFNumberSInt64Type, &valuePtr);
    }

    else
    {
      v9 = _IOHIDLog();
      Value = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (Value)
      {
        HIDWORD(v145) = HIDWORD(*(a1 + 16));
        OUTLINED_FUNCTION_7_2(&dword_197195000, v8, v10, "Unable to get serviceID for IOHIDServiceClient: %@", v11, v12, v13, v14, v138, v141, v143, valuePtr, 2u);
      }
    }

    v139 = "SenderID:";
    v142 = valuePtr;
    OUTLINED_FUNCTION_2_10(Value, v8, @"%-20.20s 0x%016llx\n");
    if (*(a1 + 64))
    {
      v17 = @"%-20.20s True\n";
    }

    else
    {
      v18 = IOHIDServiceClientCopyProperty(a1, @"Built-In");
      if (v18)
      {
        v19 = v18;
        v20 = CFEqual(v18, *MEMORY[0x1E695E4D0]);
        v22 = "True";
        if (!v20)
        {
          v22 = "False";
        }

        v139 = "BuiltIn:";
        v142 = v22;
        OUTLINED_FUNCTION_2_10(v20, v21, @"%-20.20s %s\n");
        CFRelease(v19);
      }

      v23 = IOHIDServiceClientCopyProperty(a1, @"Manufacturer");
      if (v23)
      {
        v25 = v23;
        v139 = "Manufacturer:";
        v142 = v23;
        OUTLINED_FUNCTION_2_10(v23, v24, @"%-20.20s %@\n");
        CFRelease(v25);
      }

      v26 = IOHIDServiceClientCopyProperty(a1, @"Product");
      if (v26)
      {
        v28 = v26;
        v139 = "Product:";
        v142 = v26;
        OUTLINED_FUNCTION_2_10(v26, v27, @"%-20.20s %@\n");
        CFRelease(v28);
      }

      v29 = IOHIDServiceClientCopyProperty(a1, @"Transport");
      if (v29)
      {
        v31 = v29;
        v139 = "Transport:";
        v142 = v29;
        OUTLINED_FUNCTION_2_10(v29, v30, @"%-20.20s %@\n");
        CFRelease(v31);
      }

      v32 = IOHIDServiceClientCopyProperty(a1, @"LocationID");
      if (v32)
      {
        v34 = v32;
        OUTLINED_FUNCTION_4_5(v32, v33, "LocationID:");
        CFRelease(v34);
      }

      v35 = IOHIDServiceClientCopyProperty(a1, @"VendorID");
      if (v35)
      {
        v37 = v35;
        OUTLINED_FUNCTION_4_5(v35, v36, "VendorID:");
        CFRelease(v37);
      }

      v38 = IOHIDServiceClientCopyProperty(a1, @"ProductID");
      if (v38)
      {
        v40 = v38;
        OUTLINED_FUNCTION_4_5(v38, v39, "ProductID:");
        CFRelease(v40);
      }

      v41 = IOHIDServiceClientCopyProperty(a1, @"CountryCode");
      if (v41)
      {
        v43 = v41;
        OUTLINED_FUNCTION_4_5(v41, v42, "CountryCode:");
        CFRelease(v43);
      }

      v44 = IOHIDServiceClientCopyProperty(a1, @"StandardType");
      if (v44)
      {
        v46 = v44;
        OUTLINED_FUNCTION_4_5(v44, v45, "StandardType:");
        CFRelease(v46);
      }

      v47 = IOHIDServiceClientCopyProperty(a1, @"ReportInterval");
      if (v47)
      {
        v48 = v47;
        v49 = CFGetTypeID(v47);
        TypeID = CFNumberGetTypeID();
        if (v49 == TypeID)
        {
          v58 = OUTLINED_FUNCTION_5_4(TypeID, v51, v52, v53, v54, v55, v56, v57, v139, v142, v143, valuePtr);
          v139 = "ReportInterval:";
          v142 = valuePtr;
          v60 = @"%-20.20s %llu us\n";
        }

        else
        {
          v61 = _IOHIDLog();
          v58 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
          if (v58)
          {
            HIDWORD(v145) = HIDWORD(v48);
            OUTLINED_FUNCTION_1_13(&dword_197195000, v59, v62, "Invalid ReportInterval: %@", v63, v64, v65, v66, v139, v142, v143, valuePtr, 2u);
          }

          v139 = "ReportInterval:";
          v60 = @"%-20.20s ERROR\n";
        }

        OUTLINED_FUNCTION_2_10(v58, v59, v60);
        CFRelease(v48);
      }

      v67 = IOHIDServiceClientCopyProperty(a1, @"SampleInterval");
      if (v67)
      {
        v68 = v67;
        v69 = CFGetTypeID(v67);
        v70 = CFNumberGetTypeID();
        if (v69 == v70)
        {
          v78 = OUTLINED_FUNCTION_5_4(v70, v71, v72, v73, v74, v75, v76, v77, v139, v142, v143, valuePtr);
          v139 = "SampleInterval:";
          v142 = valuePtr;
          v80 = @"%-20.20s %llu us\n";
        }

        else
        {
          v81 = _IOHIDLog();
          v78 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
          if (v78)
          {
            HIDWORD(v145) = HIDWORD(v68);
            OUTLINED_FUNCTION_1_13(&dword_197195000, v79, v82, "Invalid SampleInterval: %@", v83, v84, v85, v86, v139, v142, v143, valuePtr, 2u);
          }

          v139 = "SampleInterval:";
          v80 = @"%-20.20s ERROR\n";
        }

        OUTLINED_FUNCTION_2_10(v78, v79, v80);
        CFRelease(v68);
      }

      v87 = IOHIDServiceClientCopyProperty(a1, @"BatchInterval");
      if (v87)
      {
        v88 = v87;
        v89 = CFGetTypeID(v87);
        v90 = CFNumberGetTypeID();
        if (v89 == v90)
        {
          v98 = OUTLINED_FUNCTION_5_4(v90, v91, v92, v93, v94, v95, v96, v97, v139, v142, v143, valuePtr);
          v139 = "BatchInterval:";
          v142 = valuePtr;
          v100 = @"%-20.20s %llu us\n";
        }

        else
        {
          v101 = _IOHIDLog();
          v98 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);
          if (v98)
          {
            HIDWORD(v145) = HIDWORD(v88);
            OUTLINED_FUNCTION_1_13(&dword_197195000, v99, v102, "Invalid BatchInterval: %@", v103, v104, v105, v106, v139, v142, v143, valuePtr, 2u);
          }

          v139 = "BatchInterval:";
          v100 = @"%-20.20s ERROR\n";
        }

        OUTLINED_FUNCTION_2_10(v98, v99, v100);
        CFRelease(v88);
      }

      v107 = IOHIDServiceClientCopyProperty(a1, @"PrimaryUsagePage");
      if (v107)
      {
        v109 = v107;
        OUTLINED_FUNCTION_4_5(v107, v108, "PrimaryUsagePage:");
        CFRelease(v109);
      }

      v110 = IOHIDServiceClientCopyProperty(a1, @"PrimaryUsage");
      if (v110)
      {
        v112 = v110;
        OUTLINED_FUNCTION_4_5(v110, v111, "PrimaryUsage:");
        CFRelease(v112);
      }

      v113 = IOHIDServiceClientCopyProperty(a1, @"DeviceUsagePairs");
      if (v113)
      {
        v114 = CFArrayGetTypeID();
        v115 = CFGetTypeID(v113);
        if (v114 == v115)
        {
          v140 = "DeviceUsagePairs:";
          OUTLINED_FUNCTION_2_10(v115, v116, @"%-20.20s\n");
          Count = CFArrayGetCount(v113);
          if (Count >= 1)
          {
            v118 = Count;
            for (i = 0; i != v118; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v113, i);
              if (ValueAtIndex)
              {
                v121 = ValueAtIndex;
                if (i)
                {
                  _IOHIDStringAppendIndendationAndFormat(v4, 1, @"---------------------------\n", v140);
                }

                v122 = CFDictionaryGetValue(v121, @"DeviceUsagePage");
                if (v122)
                {
                  v123 = v122;
                  v124 = CFGetTypeID(v122);
                  if (v124 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v123, kCFNumberSInt64Type, &valuePtr);
                    _IOHIDStringAppendIndendationAndFormat(v4, 1, @"%-20.20s %llu\n", "DeviceUsagePage:", valuePtr);
                  }
                }

                v125 = CFDictionaryGetValue(v121, @"DeviceUsage");
                if (v125)
                {
                  v126 = v125;
                  v127 = CFGetTypeID(v125);
                  if (v127 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v126, kCFNumberSInt64Type, &valuePtr);
                    _IOHIDStringAppendIndendationAndFormat(v4, 1, @"%-20.20s %llu\n", "DeviceUsage:", valuePtr);
                  }
                }
              }
            }
          }

          CFRelease(v113);
          goto LABEL_73;
        }
      }

      v130 = _IOHIDLog();
      v15 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        HIDWORD(v145) = HIDWORD(v113);
        OUTLINED_FUNCTION_7_2(&dword_197195000, v16, v131, "Failed to get DeviceUsagePairs: %@", v132, v133, v134, v135, v139, v142, v143, valuePtr, 2u);
      }

      v17 = @"%-20.20s ERROR\n";
    }

    OUTLINED_FUNCTION_2_10(v15, v16, v17);
LABEL_73:
    OUTLINED_FUNCTION_2_10(v128, v129, @"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
  }

  v136 = *MEMORY[0x1E69E9840];
  return v4;
}

void _IOHIDStringAppendIndendationAndFormat(CFMutableStringRef theString, int a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2)
  {
    v5 = a2;
    do
    {
      CFStringAppend(theString, @"    ");
      --v5;
    }

    while (v5);
  }

  CFStringAppendFormatAndArguments(theString, 0, format, va);
}

void AppendUnsignedIntOrCFType(__CFString *a1, CFTypeRef cf, uint64_t a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
    _IOHIDStringAppendIndendationAndFormat(a1, 0, @"%-20.20s %llu\n", a3, valuePtr);
  }

  else
  {
    _IOHIDStringAppendIndendationAndFormat(a1, 0, @"%-20.20s %@\n", a3, cf);
  }
}

uint64_t _iohideventsystem_client_dispatch_service_removal(int a1, UInt8 *a2, CFIndex a3)
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
        os_unfair_recursive_lock_lock_with_options();
        Value = CFDictionaryGetValue(v7[12], v5);
        if (Value)
        {
          v11 = Value;
          CFRetain(Value);
          CFDictionaryRemoveValue(v7[12], v5);
          os_unfair_recursive_lock_unlock();
          _IOHIDServiceClientDispatchServiceRemoval(v11);
          CFRelease(v11);
        }

        else
        {
          os_unfair_recursive_lock_unlock();
        }
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }

  return 0;
}

CFPropertyListRef OUTLINED_FUNCTION_17_0(int a1, UInt8 *bytes, CFIndex length)
{

  return _IOHIDUnserializeAndVMDealloc(bytes, length);
}

uint64_t _Xiohideventsystem_client_dispatch_service_removal(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 52)))
    {
      result = _iohideventsystem_client_dispatch_service_removal(*(a1 + 12), *(a1 + 28), v3);
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

void __createAsyncAssertion_block_invoke(uint64_t a1)
{
  v18 = 0;
  initialSetup();
  if (gAsyncModeDisableOverride == 1)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        createAsyncAssertion_cold_2();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      createAsyncAssertion_cold_3();
    }

    goto LABEL_21;
  }

  LODWORD(v2) = createAsyncAssertion_gNextAssertionIdx;
  while (1)
  {
    v3 = v2;
    if (CFDictionaryContainsKey(gAssertionsDict, v2) != 1)
    {
      break;
    }

    v2 = (v2 + 1) & 0x7F;
    if (v2 == createAsyncAssertion_gNextAssertionIdx)
    {
      v3 = v2;
      break;
    }
  }

  if (CFDictionaryContainsKey(gAssertionsDict, v3) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __createAsyncAssertion_block_invoke_cold_7();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __createAsyncAssertion_block_invoke_cold_8();
    }

    return;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  if (!MutableCopy || (v5 = MutableCopy, Current = CFAbsoluteTimeGetCurrent(), (v7 = CFDateCreate(0, Current)) == 0))
  {
LABEL_21:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v8 = v7;
  CFDictionarySetValue(v5, @"AssertStartWhen", v7);
  CFRelease(v8);
  CFDictionarySetValue(gAssertionsDict, v3, v5);
  createAsyncAssertion_gNextAssertionIdx = (v2 + 1) & 0x7F;
  v10 = *(a1 + 48);
  v9 = (a1 + 48);
  *v10 = (v2 << 16) | 0x80000000;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, v10);
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      __createAsyncAssertion_block_invoke_cold_1(v9);
      if (!v11)
      {
        goto LABEL_28;
      }

LABEL_27:
      CFDictionarySetValue(v5, @"AsyncClientAssertionId", v11);
      CFRelease(v11);
      goto LABEL_28;
    }

LABEL_26:
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_26;
  }

  __createAsyncAssertion_block_invoke_cold_2(v9);
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_28:
  valuePtr = 255;
  Value = CFDictionaryGetValue(v5, @"AssertLevel");
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr), !valuePtr))
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __createAsyncAssertion_block_invoke_cold_3(v9);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __createAsyncAssertion_block_invoke_cold_4(v9);
    }

    CFDictionarySetValue(gInactiveAssertionsDict, v3, v5);
    MonotonicTime = getMonotonicTime();
    v18 = (getpid() << 16) | (MonotonicTime << 32) | *(*v9 + 1);
    v15 = CFNumberCreate(0, kCFNumberSInt64Type, &v18);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(v5, @"GlobalUniqueID", v15);
      CFRelease(v16);
    }
  }

  else
  {
    activateAsyncAssertion(**v9, 0);
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      __createAsyncAssertion_block_invoke_cold_5(v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __createAsyncAssertion_block_invoke_cold_6(v9);
  }

  CFRelease(v5);
}

void initialSetup()
{
  if ((gAsyncModeSetupDone & 1) == 0)
  {
    if (setupLogging_onceToken != -1)
    {
      setupLogging_cold_1();
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 0;
    PMQueue = getPMQueue();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __initialSetup_block_invoke;
    handler[3] = &unk_1E74A9690;
    handler[4] = &v30;
    if (notify_register_dispatch("com.apple.powerd.assertionoffloadtimer", &initialSetup_notify_token, PMQueue, handler))
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          initialSetup_cold_2();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        initialSetup_cold_3();
      }
    }

    else
    {
      notify_get_state(initialSetup_notify_token, v31 + 3);
      handleAsyncAssertionDisableOverride(*(v31 + 6));
    }

    v1 = getPMQueue();
    if (notify_register_dispatch("com.apple.system.powermanagement.assertionresync", &initialSetup_resync_token, v1, &__block_literal_global_28))
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          initialSetup_cold_4();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        initialSetup_cold_5();
      }
    }

    if (gAssertionsDict || (gAssertionsDict = CFDictionaryCreateMutable(0, 128, 0, MEMORY[0x1E695E9E8])) != 0)
    {
      if (!gReleasedAssertionsList)
      {
        gReleasedAssertionsList = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      if (!gTimedAssertionsList)
      {
        gTimedAssertionsList = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      if (!gActiveAssertionsDict)
      {
        gActiveAssertionsDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 128, 0, MEMORY[0x1E695E9E8]);
      }

      if (!gInactiveAssertionsDict)
      {
        gInactiveAssertionsDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 128, 0, MEMORY[0x1E695E9E8]);
      }

      if (gAssertionConnection)
      {
        goto LABEL_28;
      }

      mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
      gAssertionConnection = mach_service;
      if (mach_service)
      {
        v6 = mach_service;
        v7 = getPMQueue();
        xpc_connection_set_target_queue(v6, v7);
        xpc_connection_set_event_handler(gAssertionConnection, &__block_literal_global_32);
        xpc_connection_resume(gAssertionConnection);
        v8 = xpc_dictionary_create(0, 0, 0);
        if (v8)
        {
          v9 = v8;
          xpc_dictionary_set_BOOL(v8, "assertionInitialConnection", 1);
          xpc_connection_send_message(gAssertionConnection, v9);
          v10 = assertions_log;
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
            {
              *v28 = 0;
              v11 = v10;
LABEL_47:
              _os_log_impl(&dword_197195000, v11, OS_LOG_TYPE_DEFAULT, "Sending initial message to powerd for async assertions", v28, 2u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            v11 = MEMORY[0x1E69E9C10];
            goto LABEL_47;
          }

          xpc_release(v9);
LABEL_28:
          v2 = gAssertionsOffloader;
          if (gAssertionsOffloader || (v3 = getPMQueue(), v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3), (gAssertionsOffloader = v2) != 0))
          {
            dispatch_source_set_event_handler(v2, &__block_literal_global_37);
            dispatch_source_set_cancel_handler(gAssertionsOffloader, &__block_literal_global_40);
          }

          gAsyncModeSetupDone = 1;
          v4 = getPMQueue();
          dispatch_async(v4, &__block_literal_global_43);
LABEL_63:
          _Block_object_dispose(&v30, 8);
          return;
        }
      }

      else if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          __checkFeatureEnabled_block_invoke_2_cold_1();
        }
      }

      else
      {
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v20)
        {
          __checkFeatureEnabled_block_invoke_2_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        initialSetup_cold_8();
      }
    }

    else
    {
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v12)
      {
        initialSetup_cold_9(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    gAsyncModeSetupDone = 0;
    if (gAssertionsDict)
    {
      CFRelease(gAssertionsDict);
      gAssertionsDict = 0;
    }

    if (gReleasedAssertionsList)
    {
      CFRelease(gReleasedAssertionsList);
      gReleasedAssertionsList = 0;
    }

    if (gAssertionsOffloader)
    {
      dispatch_resume(gAssertionsOffloader);
      dispatch_source_cancel(gAssertionsOffloader);
    }

    if (gInactiveAssertionsDict)
    {
      CFRelease(gInactiveAssertionsDict);
      gInactiveAssertionsDict = 0;
    }

    if (gActiveAssertionsDict)
    {
      CFRelease(gActiveAssertionsDict);
      gActiveAssertionsDict = 0;
    }

    if (gAssertionConnection)
    {
      xpc_connection_cancel(gAssertionConnection);
    }

    goto LABEL_63;
  }
}

void activateAsyncAssertion(unsigned int a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  valuePtr = 0;
  v4 = (HIWORD(a1) & 0x7FFF);
  Value = CFDictionaryGetValue(gAssertionsDict, v4);
  if (Value)
  {
    v6 = Value;
    CFDictionarySetValue(gActiveAssertionsDict, v4, Value);
    MonotonicTime = getMonotonicTime();
    valuePtr = HIWORD(a1) | (MonotonicTime << 32) | (getpid() << 16);
    v8 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v6, @"GlobalUniqueID", v8);
      CFRelease(v9);
    }

    logAsyncAssertionActivity(a2, a1);
    if (gCurrentRemoteAssertion && (gCurrentRemoteAssertionIsCoalesced & 1) == 0 && CFDictionaryGetCount(gActiveAssertionsDict) >= 2)
    {
      gCurrentRemoteAssertionIsCoalesced = 1;
    }

    v10 = CFDictionaryGetValue(v6, @"TimeoutSeconds");
    TypeID = CFNumberGetTypeID();
    if (v10 && CFGetTypeID(v10) == TypeID)
    {
      *buf = 0;
      CFNumberGetValue(v10, kCFNumberSInt64Type, buf);
      v12 = 1000 * *buf;
    }

    else
    {
      v12 = 0;
    }

    if (CFDictionaryContainsKey(v6, @"Category"))
    {
      v13 = CFDictionaryGetValue(v6, @"Category");
      *buf = 0;
      CFNumberGetValue(v13, kCFNumberIntType, buf);
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          activateAsyncAssertion_cold_1(v13, buf);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        activateAsyncAssertion_cold_2(v13, buf);
      }

      TimeoutForAssertionCategory = getTimeoutForAssertionCategory(*buf);
      v14 = TimeoutForAssertionCategory > 0;
      if (TimeoutForAssertionCategory < 1)
      {
        if (assertions_log)
        {
          if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
          {
            activateAsyncAssertion_cold_3();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          activateAsyncAssertion_cold_4();
        }

        v15 = 0;
        if (v12)
        {
LABEL_35:
          v33 = getMonotonicTime() + v12;
          v17 = CFNumberCreate(0, kCFNumberSInt64Type, &v33);
          if (v17)
          {
            v18 = v17;
            CFDictionarySetValue(v6, @"TimeoutTimeStamp", v17);
            CFRelease(v18);
          }

          if (!v14)
          {
LABEL_53:
            insertIntoTimedList(v6);
            v24 = gOffloadDelay;
            if (v12 - 1 < gOffloadDelay)
            {
LABEL_55:
              if (gCurrentAssertion || nextOffload_ts && (!v33 || v33 >= nextOffload_ts))
              {
                goto LABEL_68;
              }

              v26 = assertions_log;
              if (assertions_log)
              {
                if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = v12;
                  v27 = v26;
LABEL_64:
                  _os_log_impl(&dword_197195000, v27, OS_LOG_TYPE_DEFAULT, "Setting gAssertionsOffloader timeout to %llu\n", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v12;
                v27 = MEMORY[0x1E69E9C10];
                goto LABEL_64;
              }

              v28 = gAssertionsOffloader;
              v29 = dispatch_time(0, 1000000 * v12);
              dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
              if (!nextOffload_ts)
              {
                dispatch_resume(gAssertionsOffloader);
              }

              nextOffload_ts = getMonotonicTime() + v12;
              goto LABEL_68;
            }

LABEL_54:
            v33 = getMonotonicTime() + v24;
            v12 = v24;
            goto LABEL_55;
          }

LABEL_43:
          if (v33 - 1 < v15)
          {
            goto LABEL_53;
          }

          v19 = CFNumberCreate(0, kCFNumberSInt64Type, &v32);
          if (!v19)
          {
            goto LABEL_53;
          }

          v20 = v19;
          v21 = assertions_log;
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
            {
              v22 = getMonotonicTime();
              *buf = 138412546;
              *&buf[4] = v20;
              v35 = 2048;
              v36 = v22;
              v23 = v21;
LABEL_51:
              _os_log_impl(&dword_197195000, v23, OS_LOG_TYPE_DEFAULT, "Setting category timeout timestamp to %@, monotonic time %llu", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v25 = getMonotonicTime();
            *buf = 138412546;
            *&buf[4] = v20;
            v35 = 2048;
            v36 = v25;
            v23 = MEMORY[0x1E69E9C10];
            goto LABEL_51;
          }

          CFDictionarySetValue(v6, @"TimeoutTimeStamp", v20);
          CFRelease(v20);
          goto LABEL_53;
        }
      }

      else
      {
        if (assertions_log)
        {
          if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
          {
            activateAsyncAssertion_cold_5();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          activateAsyncAssertion_cold_6();
        }

        v15 = getMonotonicTime() + (1000 * TimeoutForAssertionCategory);
        v32 = v15;
        if (v12)
        {
          goto LABEL_35;
        }
      }

      if (TimeoutForAssertionCategory >= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v12)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_35;
    }

    v24 = gOffloadDelay;
    goto LABEL_54;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      activateAsyncAssertion_cold_7();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    activateAsyncAssertion_cold_8();
  }

LABEL_68:
  v30 = *MEMORY[0x1E69E9840];
}